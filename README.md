# Paardensprong Game
Simple paardensprong puzzle game made with SFML in c++

## "Paardensprong"?
"Paardensprong" is Dutch for a Knight's move (Chess). A Knight's movement is defined as: it may move two squares vertically and one square horizontally, or two squares horizontally and one square vertically (with both forming the shape of an L).

## The game
In a 3 x 3 grid, with an empty square at the center, you have to find the 8 letter word. The word can start at any random square and has to follow the pattern of a Knight's move. The direction can either be clockwise or counter clockwise.

## Use Premake to create target platform project (Visual Studio, Xcode etc.)
Use the included premake5.lua script to create a project for your current platform. More info on premake [over here](https://premake.github.io/).

IMPORTANT! Only windows (vs2019) is tested. Other platforms are untested.

## SFML
This project uses SFML for it's rendering, audio and window management. For more info go to [the SFML website](https://www.sfml-dev.org/).
