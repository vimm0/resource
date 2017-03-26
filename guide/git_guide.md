# student_progress_index
Final year project

# Git command
First of  all install git in your computer
 [Install git in window](https://www.atlassian.com/git/tutorials/install-git#windows) and also available for other OS.Please find yourself there :P
1.  Navigate to directory to where you want to clone your git repo and clone repo from https://github.com/vimm0/student_progress_index.git remember project name , then start typing also $ sign signifies starts command

    ```
    $ git clone https://github.com/vimm0/student_progress_index.git
    ```

2. Now you have got git repo and if you wish to change file via editor now you are ready to push and also before pushing your stuff
   make sure to type,

    ```
          $ git pull origin master

    ```
    Reason to pull before pushing your code is to avoid conflict between contributors. But if you have up-to-date repo now you are ready to push
3. Check the status of the file you changed, but optional if you remember
    ```
          $ git status

    ```
4. See difference in your terminal if you got confused of what you changed and also it is important to know the changes you have made because you have to write clear message at commit command but optional Ofcorse.
    ```
       $ git diff "/path/to/file"

    ```
5. If you want to add every file at once "-A" signifies all.
    ```
          $ git add -A

    ```
6. If you want to add each file one-by-one,
    ```
          $ git add "/path/to/file"

    ```
7. Commiting the changes of file. "-m" signifies message,
    ```
          $ git commit -m "simple message to clear meaning of update in repo"

    ```
8. Finally, push your file by typing,
     ```
          $ git push origin master

    ```
    And after that you are required to type your git username and password (asked after every push)
          
### Example to clear things up:
This example commit files one-by-one and also we can commit all by ``git add -A``
 
### Check status:
```
  [vimm@ghost src]$ git status
	On branch master
	Your branch is up-to-date with 'origin/master'.
	Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

	modified:   requirements.txt
	modified:   templates/official/contact.html
no changes added to commit (use "git add" and/or "git commit -a")

```
### Add file and commit one-by-one:
```
          (awesome-project) [vimm@ghost src]$ git add "templates/official/contact.html"
	  (awesome-project) [vimm@ghost src]$ git commit -m "adding information about contact office"
	  [master 63f86d9] adding information about contact office
	  1 file changed, 1 insertion(+), 1 deletion(-)

    
          (awesome-project) [vimm@ghost src]$ git add "requirements.txt" 
          (awesome-project) [vimm@ghost src]$ git commit -m "adding info-based dependency text"
          [master f8490fd] adding info-based dependency text
          1 file changed, 18 insertions(+), 5 deletions(-)

```
### Push the changes:
```
          (awesome-project) [vimm@ghost src]$ git push origin master
		  Username for 'https://github.com': vimm0
		  Password for 'https://vimm0@github.com': 
		  Counting objects: 8, done.
		  Delta compression using up to 4 threads.
		  Compressing objects: 100% (8/8), done.
		  Writing objects: 100% (8/8), 1.09 KiB | 0 bytes/s, done.
		  Total 8 (delta 4), reused 0 (delta 0)
		  remote: Resolving deltas: 100% (4/4), completed with 3 local objects.
		  To https://github.com/vimm0/awesome-project.git
		   7394d23..f8490fd  master -> master

```
### Guide from experts no deep shit:
 [Git Guide](http://rogerdudler.github.io/git-guide/)
