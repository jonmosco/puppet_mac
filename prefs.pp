# Change some preferences
# Borrowed from Boxen
#
exec { 'Unhide ~/Library':
  command => "/usr/bin/chflags nohidden ${home}/Library",
  onlyif  => "/bin/ls -Ol ${home} | grep Library | grep Hidden";
}

exec { 'HiddenFiles':
  command => 'defaults write com.Apple.Finder AppleShowAllFiles TRUE',
  onlyif  => 'Not sure what to put here yet';
}
