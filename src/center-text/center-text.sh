#!/usr/bin/env bash

# -------------------------------------------------------------------------------- #
# Description                                                                      #
# -------------------------------------------------------------------------------- #
# This is a simple script to display some text in the center of the screen.        #
# -------------------------------------------------------------------------------- #

# -------------------------------------------------------------------------------- #
# Center text                                                                      #
# -------------------------------------------------------------------------------- #
# This is a simple function that will center text on a screen, be calculating the  #
# correct amount of padding based on the 'screen_width' and the length of the      #
# text supplied to the function.                                                   #
# -------------------------------------------------------------------------------- #

function center_text()
{
    textsize=${#1}
    span=$(((screen_width + textsize) / 2))

    printf '%*s\n' "${span}" "$1"
}

# -------------------------------------------------------------------------------- #
# Get Screen Width                                                                 #
# -------------------------------------------------------------------------------- #
# A very simple wrapper which can dynamically get the screen width using tput.     #
# -------------------------------------------------------------------------------- #

function get_screen_width()
{
    screen_width=$(tput cols)
    declare -g screen_width
}

# -------------------------------------------------------------------------------- #
# Test                                                                             #
# -------------------------------------------------------------------------------- #
# A VERY simple test function to ensure that it all works                          #
# -------------------------------------------------------------------------------- #

function run_tests()
{
    get_screen_width

    center_text "This is an example"
}

# -------------------------------------------------------------------------------- #
# Main()                                                                           #
# -------------------------------------------------------------------------------- #
# This is the actual 'script' and the functions/sub routines are called in order.  #
# -------------------------------------------------------------------------------- #

run_tests

# -------------------------------------------------------------------------------- #
# End of Script                                                                    #
# -------------------------------------------------------------------------------- #
# This is the end - nothing more to see here.                                      #
# -------------------------------------------------------------------------------- #

