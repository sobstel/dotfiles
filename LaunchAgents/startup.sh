#!/bin/bash

# remove old downloads
find /Users/sobstel/Downloads -maxdepth 1 -mtime +5 -exec rm -rf {} \;

# remove redundant xcode data
find /Users/sobstel/Library/Developer/Xcode/DerivedData -maxdepth 1 -mtime +14 -exec rm -rf {} \;
find /Users/sobstel/Library/Developer/CoreSimulator/Devices -maxdepth 1 -type d -mtime +30 -exec rm -rf {} \;

