timeflow
========

issue tracking system 
---


git checkout master
git pull origin master

git checkout -b (the new feature branch name)

---- (do your coding)

git add .
git commit -a -m 'your commit info '

git checkout master
git pull origin master

git checkout (the new feature branch name)
git rebase master
git push -u origin (the new feature branch name)
