#!/bin/bash

song="$(spt playback)"

function show_spt_current_song(){
  printf "| %s " "$song"
}

function show_ip(){
  printf "| %s " "$(hostname -I | awk '{printf $2}')"
}

function kernel(){
  printf "| %s " "$(uname -s)"
}

function main(){
  show_ip
  kernel
  show_spt_current_song
}

main
