#!/usr/bin/env bash

# -------------------------------------------------------------------------------- #
# Description                                                                      #
# -------------------------------------------------------------------------------- #
# This is a simple script to check to see if an array contains a value.            #
# -------------------------------------------------------------------------------- #

# -------------------------------------------------------------------------------- #
# Array to string (string, substring)                                              #
# -------------------------------------------------------------------------------- #
# This is a simple function that will take an array and a seperator and create a   #
# string of values.                                                                #
# -------------------------------------------------------------------------------- #

array_to_string()
{
    separator="$1"
    local -n arr=$2

    regex="$( printf "${separator}%s" "${arr[@]}" )"
    regex="${regex:${#separator}}" # remove leading separator
    echo "${regex}"
}

# -------------------------------------------------------------------------------- #
# Test                                                                             #
# -------------------------------------------------------------------------------- #
# A VERY simple test function to ensure that it all works                          #
# -------------------------------------------------------------------------------- #

run_tests()
{
# shellcheck disable=SC2034
    array_of_numbers=( "1" "2" "3" )

    array_to_string ', ' array_of_numbers
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

