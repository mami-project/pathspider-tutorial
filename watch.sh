#! /bin/bash
DIRECTORY_TO_OBSERVE="/home/irl/mami/pathspider-tutorial"      // might want to change this
function block_for_change {
  inotifywait -r \
    -e modify,move,create,delete \
    pathspider-tutorial.tex
}
function build {
  make
}
build
while block_for_change; do
  build
done
