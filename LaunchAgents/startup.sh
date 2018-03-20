#!/bin/bash

# remove old downloads
find /Users/sobstel/Downloads -maxdepth 1 -mtime +5 -exec rm -rf {} \;

