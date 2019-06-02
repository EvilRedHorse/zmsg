#!/usr/bin/env bash
git config --global gpg.program gpg2
git config user.name EvilRedHorse
git config user.email evilredhorse@gmail.com
git config user.signingkey 923F1CD1575F06DD
git config commit.gpgsign true
printf "author set to EvilRedHorse, this will commit\nCommit message: "
read MESSAGE
git add -A && git commit -m "$MESSAGE"
printf "now...\ngit push - Username & Password required\n\n"
# git push update
git push origin master
