require "fileutils"

DOTFILES_DIR = File.expand_path File.dirname(__FILE__)
BACKUP_DIR = "/tmp/dotfiles-backup-#{Time.now.strftime('%Y%m%d%H%M%S')}"

class MyUtils
  def self.setup_dotfile(source_name, target_dir)
    puts "#{source_name}"

    FileUtils.mkdir_p BACKUP_DIR

    source_dir = File.expand_path(source_name, DOTFILES_DIR)
    backup_dir = File.expand_path(source_name, BACKUP_DIR)

    puts "  - source: #{source_dir}"
    puts "  - backup: #{backup_dir}"

    FileUtils.mv target_dir, backup_dir if File.exists? target_dir

    puts "  - target: #{target_dir}"

    FileUtils.ln_sf source_dir, target_dir
  end
end

task :setup do
  MyUtils.setup_dotfile "oh-my-zsh", File.expand_path("~/.oh-my-zsh/custom")

  (Dir["*"] - Dir["oh-my-zsh", "LICENSE", "README*", "Rakefile"]).each do |dotfile|
    MyUtils.setup_dotfile dotfile, File.expand_path("~/.#{dotfile}")
  end

  # `chsh -s /bin/zsh`
end

task :default => :setup
