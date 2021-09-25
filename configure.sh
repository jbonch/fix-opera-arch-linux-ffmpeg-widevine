#!/bin/bash

if [[ $(whoami) != "root" ]]; then
  printf 'Try to run it with sudo\n'
  exit 1
fi

echo -en "(1)Create hook, (2)Create alias\nEnter number [1-2]: "
read -r OPTION

function copy_script() {
  mkdir -p /root/.scripts
  cp ./fix-opera.sh /root/.scripts
}

function create_hook() {
  copy_script
  cp ./fix-opera-video.hook /usr/share/libalpm/hooks
}

function create_alias() {
  copy_script
  echo "alias fix-opera='sudo /root/.scripts/fix-opera.sh' # Opera fix HTML5 media" >> ~/.bashrc
}

case $OPTION in
  1)
    create_hook
    ;;
  2)
    create_alias
    ;;
  *)
    echo "Not an option: $OPTION"
    ;;
esac