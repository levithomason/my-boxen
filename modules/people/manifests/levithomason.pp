# My personal manifest

class people::levithomason {
  include java                  # required by webstorm
  include webstorm
  include quicksilver
  include dropbox
  include onepassword
  include chrome
  include chrome::canary
  include spectacle

  # non project repos
  repository {
    '/Users/levithomason/.dotfiles':
      ensure    =>  'origin/HEAD',
      source    =>  'levithomason/dotfiles.git',
      provider  =>  'git';
  }

  # OSX defaults
  osx::recovery_message { 'If this Mac is found, please call 208-699-4042': }
}
