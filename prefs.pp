# Change some preferences
# Borrowed from Boxen
#
exec { 'Unhide ~/Library':
  command => "/usr/bin/chflags nohidden ${home}/Library",
  onlyif  => "/bin/ls -Ol ${home} | grep Library | grep Hidden";
}
