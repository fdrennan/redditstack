#!/bin/bash
git clone https://github.com/fdrennan/redditstack.git
rm -rf redditstack/.git
cd redditstack && make clean
