#!/usr/bin/env bash

rm -rf DiodorSirola_FotografiaKoncertowaJuwenalia2019
./compile_slides.sh
git add DiodorSirola_FotografiaKoncertowaJuwenalia2019
git commit -m "Compiled slides from rev $(git rev-parse --verify HEAD)"

# First time:
# git subtree push --prefix DiodorSirola_FotografiaKoncertowaJuwenalia2019 origin gh-pages
# and skip the rest

git subtree split --prefix DiodorSirola_FotografiaKoncertowaJuwenalia2019 -b publish_new
git checkout gh-pages
git cherry-pick publish_new --strategy-option theirs
git push
git checkout master
git reset HEAD^
git branch -D publish_new
