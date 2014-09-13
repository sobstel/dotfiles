# Load/unload service
# Example: `service memcached up`

function service {

  run_launchctl() {
    case "$3" in
      up|start )
        echo "Starting $2..."
        launchctl load -w $1
        echo "...done."
      ;;
      down|stop )
        echo "Stopping $2..."
        launchctl unload -w $1
        case "$2" in
          apache ) killall httpd ;;
          nginx ) killall nginx ;;
        esac
        echo "...done."
      ;;
      restart )
        run_launchctl $1 $2 stop
        run_launchctl $1 $2 start
      ;;
      * )
        echo "Action should be either up, start, down, stop or restart."
        #exit 2
      ;;
    esac
  }

  case $1 in
    memcached ) 
      run_launchctl ~/Library/LaunchAgents/homebrew.mxcl.memcached.plist $1 $2 
      ;;
    mongodb )
      run_launchctl ~/Library/LaunchAgents/homebrew.mxcl.mongodb.plist $1 $2
      ;;
    nginx )
      run_launchctl ~/Library/LaunchAgents/homebrew.mxcl.nginx.plist $1 $2
      ;;
    php )
      run_launchctl ~/Library/LaunchAgents/homebrew.mxcl.php55.plist $1 $2
      ;;
    * )
      echo "Service ($1) not found."
      #exit 1
      ;;
  esac

}
