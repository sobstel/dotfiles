require "fileutils"

DOTFILES_DIR = File.expand_path File.dirname(__FILE__)

task :setup do
begin
  # backup dir for existing files
  backup_dir = "/tmp/dotfiles-backup-#{Time.now.strftime('%Y%m%d%H%M%S')}"
  mkdir backup_dir

  # oh-my-zsh
  oh_my_zsh_custom_dir = File.expand_path "~/.oh-my-zsh/custom"
  mv oh_my_zsh_custom_dir, "#{backup_dir}/oh-my-zsh" if File.exists?(oh_my_zsh_custom_dir)
  ln_s "#{DOTFILES_DIR}/oh-my-zsh", oh_my_zsh_custom_dir


  # (Dir["*"] + Dir[".*"] - [".", "..", "Rakefile", "LICENSE", "README.rdoc", ".git"]).each do |dotfile|
  #   `ln -nsf #{File.expand_path dotfile} ~/.#{dotfile}`
  # end

  # `chsh -s /bin/zsh`
rescue Exception => e
  puts e.message
end
end

task :default => :setup
