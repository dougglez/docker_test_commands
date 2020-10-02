#!/bin/bash

echo -e Is this for Release or Debug [r/d]?
read buildTemp
case $buildTemp in
    'r')
        echo r
        buildTemp = "Release"
        ;;
    'R')
        echo R
        $buildTemp = "Release"
        ;;
    'd')
        echo d
        $buildTemp = "Debug"
        ;;
    'D')
        echo D
        $buildTemp = "Debug"
        ;;
    *)
        echo WTF
        ;;
esac
# if [$buildTemp == 'r'] || [$buildTemp == 'R']
# then
#     echo You have chosen Release
#     build = 'Release'
# elif [$buildTemp == 'd'] || [$buildTemp == 'D']
# then
#     echo You have chosen Build
#     build = "Debug"
# fi
echo "You have chosen $buildTemp"