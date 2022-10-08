#!/bin/bash
git config --global user.name "Ankur Srivastava"
git config --global user.email "201b049@juetguna.in"
echo "Enter reponame"
read reponame
#mkdir ${reponame}
#cd `dirname $(type -p reponame)`
curl -i -H "Authorization: token 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" -d '{"name": "'$reponame'","private": true}' https://api.gi>git init
git checkout -b main
echo "Enter commit mssg"
read msg
touch README.md
git add README.md
git commit -m "$msg"
git remote add origin https://github.com/Unknown-9015/$reponame.git
echo "paste access token as password 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"
git push origin main
