
# GIT REPOSITORY HOW-TO GUIDE 
### git init/ git clone / git config

A *[git repository](https://git-scm.com/book/en/v2/Git-Basics-Getting-a-Git-Repository)* is a virtual storage of your project, allowing to save versions of your code and to acess when needed.

## SETTING UP A REPOSITORY (Repo) UNDER THE GIT VERSION CONTROL

### Initializing a new repository: **git init**
To create a new repo, you'll use the **git init** command. git init is a one-time command you use during the initial setup of a new repo. Executing this command will create a new **.git**   subdirectory in your current working directory. This will also create a new branch called master. 

### Versioning an existing project with a new git repository
Assuming you already have a project directory and you would like to create a repo within it:

* First cd into root project directory 
* execute **git init** 
This will as mentioned above create same **.git** subdirectory but scoped to that project dir.
