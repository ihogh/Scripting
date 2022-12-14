#!/bin/bash
#Author: Phil
#A guide for the automation
read -p "please enter your source repoURL: " srepoURL
read -p "please enter your source repoName: " srepoName
read -p "please enter your destination repoURL: " drepoURL
read -p "please enter your destination repoName: " drepoName
read -p "please enter your working directory: " dir
sudo mkdir $dir
sudo chmod 777 $(pwd)/$dir
cd $dir
git clone $srepoURL
git clone $drepoURL
cp -R $srepoName/* $drepoName
cd $drepoName
git status
git add .
git commit -m "$USER is adding new file"
git push
echo "Thank you"
