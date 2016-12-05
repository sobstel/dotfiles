#
# Create ssh tunnel.
#
# Arguments:
#    1. local port
#    2. remote port
#    3. remote host
# STDOUT:
#    none
# Return value:
#    none
#
function ssh-tunnel {
  lsof -i:$1 > /dev/null 2>&1 || ssh -fNg -L $1:127.0.0.1:$2 $3
}

