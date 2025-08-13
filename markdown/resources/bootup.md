---
title: Boot the Course Tutorial
---

# Installing VS Code.

I recommend using VS Code as your editor, and I'm able to assist you with that
if you run into trouble. You can use whatever editor you like, but I will not be
able to support other editors. 

Go to the 
[VS Code Download Page](https://code.visualstudio.com/download). Install it! I
highly recommend also installing the command-line `code` command to open files
from the command line. Follow these steps to do that:

**Mac**

1. Open Visual Studio Code.
2. Press <kbd>⇧⌘P</kbd> to open the Command Palette.
3. Type `Shell Command: Install 'code' command in PATH` and select it.
4. Restart your terminal.
5. Use `code PATH_TO_FILE_OR_FOLDER` to open VS Code from the terminal.

---

**Windows (WSL)**

1. Open Visual Studio Code.
2. Press <kbd>Ctrl+Shift+P</kbd> to open the Command Palette.
3. Type `Shell Command: Install 'code' command in PATH` and select it.
4. Restart the terminal.
5. Use `code PATH_TO_FILE_OR_FOLDER` in your WSL terminal to open VS Code.

---

**Linux**

1. Open Visual Studio Code.
2. Press <kbd>Ctrl+Shift+P</kbd> to open the Command Palette.
3. Type `Shell Command: Install 'code' command in PATH` and select it.
4. Restart your terminal.
5. Use `code PATH_TO_FILE_OR_FOLDER` to open VS Code from the terminal.

# Installing and using Git

In this course you will be assigned a Git source-code repository (or
repo for short) that you will use to turn in all assignments.

## What is Git?

Git is a textfile revision system.  One uses it to manage revisions
of text files between multiple people using a single set of files.
Git will keep track of who made which changes and when (the revision
history), provide tools for undoing and redoing changes (handling
merging), allow remote access to the repository, and even support
multiple time lines of the files (branching).

In this short tutorial I'll go through everything you need to know in
order to use Git in this course.

## The difference between Git and Github

Git is a command-line tool that is installed on your computer to
manage Git repositories of textfiles.  When using Git on your computer
the repositories are local, but Git has the ability to share them
remotely with others.  This is where Github comes in.

Github is a hosting site for Git repositories.  If you want to share
your repo with a team of other people then you can host it on Github
and allow others to subscribe to it. Github allows them be able to
download your repositories, change it, and even submit changes back to
the repository on Github for you to have as well.

## Installing Git

First we need to get Git on your computer if it's not there already.
If you are running Linux, you are done, and can skip this section.
Otherwise, Mac OS X users need only open the Terminal app, and type
`git` at the command line.  If Git's not install already, then it will
tell you what you need to do.

So if you're a Windows user, then please install Git by opening the WSL (Windows
Subsystem for Linux) terminal, and run the commands:

```
sudo apt update
sudo apt install git
```

Then test that it is installed by running:

```
git --version
```

You should see an output similar to the following:

```
git version 2.39.5
```

If not, then something went wrong. Now that Git is installed please move on to
setting it up.

## Setting up Git

We now need to setup Git on your computer so that it knows who you
are. This is independent of your Github username and email, and is
setting up your local Git install to record your name and email when
telling Git about your revisions.

- Your name:

  ```
  > git config --global user.name "John Doe"
  ```

  Replace "John Doe" with your full name.  This is the name Git will
  use to record your changes in the revision history.
  
- Your email:

  ```
  > git config --global user.email jdoe@augusta.edu
  ```

  The revision history also records your email.  Set this to your AU
  email address.
  
This completes the Git basic setup.

## Cloning your repo

__At this point you have emailed me with your
[Github](https://www.github.com ) login and I have replied with the
link to your Git repo.  If not, then please do this step first.__

Now we will __clone__ your repo that I have created for you, and that
is hosted on Github, to your computer so that you can use it.  

First create a folder on your computer that you will use to keep
everything in this class in.  I'll call it `pl_dir` in this tutorial.
Then open the command line and navigate to `pl_dir`:

```
> cd path_to_pl_dir/pl_dir
```

At this point you have changed your working directory to `pl_dir`.
You can check that this worked by running the command:

```
> pwd
```

This stands for "present working directory".

Now that your working directory is `pl_dir` we can clone your course
repository using the following command:

```
> git clone URL
```

replace `URL` with the URL I sent you.

Now check to make sure that the clone was successful (if it weren't
you should have gotten an error message):

```
> ls 
```

This command is "list files" and simply lists all the files in your
working directory.  If you see your repo, then you are good to
go. Otherwise an error happened, and so try again, but if you can't
figure it out, then ask on Slack.

You only ever need to clone a repository once.  Unless you delete the
folder you will never have to clone this repository again.

## Editing files in your repo

A Git repo is just a special directory that Git knows about.  Once
it's cloned to your computer you can treat it as a standard folder on
your computer that is full of textfiles that are managed by Git.  The
only time you need to use the command line or Git is when you are ready
to tell Git about the changes you've made.

So to get an idea of how this works.  Using the file explorer (Finder
on Mac OS X) go and take a look at your repo in `pl_dir`.    The first
time you clone your repo it will contain the following files:

- `git_tutorial` : Some example files for this tutorial.

When you are working on your assignments you can use your computers
graphical based means of exploring files and folders, and simply treat
the files as normal files.  Open them with editors and save them, etc.

Let's do an example.  Open `git_tutorial/example.txt` in your favorite
text editor.  Answer the question and save it.

Now we are going to tell Git about your changes, commit them to the
revision history, and then push them to Github where I can see and get
your changes too.

Open the command line and move into the the `git_tutorial` folder:

```
> cd path_to_pl_dir/pl_dir/git_tutorial
```

Now tell Git about your changes by committing them:

```
> git commit -a -m 'Answered the question.'
```

This is adds all the changes you've made to the files in your working
directory to the revision history.  This is a completely local
operation, it doesn't communicate it to Github.

You can see the revision history using the command:

```
> git log
```

This lists all the changes by everyone who've made changes to the
files in your repo.  For example, you will see mine listed as well,
and I will see yours.  Notice your name and email are showing up, this
is the result of the setup we did earlier.

The command `git commit -a -m` says you want to commit each change to
the files in my working directory using the commit message provided;
we used `'Answered the question'`.  This message should be a detailed
description of the changes you have made.  As you can see in the
revision history when using `git log` this shows up in the history.
I'll read these to see what you have done.

You are now ready to share your changes with Github.  To do this,
__push__ your changes upstream:

```
> git push
```

This sends all of your recent commits to Github so that everyone who
subscribes to your repository can get your changes.

## Fetching changes from Github

The last Git operation you will need for this course is a means of
fetching or __pulling__ recent changes by people other than you from
Github.  For example, I'll be adding your assignments to your
repository throughout the semester, and so, you will need to get them
from Github into your repository.

First, move into your repository:

```
> cd path_to_pl_dir/pl_dir
```

Make sure you have no modified files Git doesn't know about, because
you have never committed them.  Do the following:

```
> git status

On branch main
Your branch is up to date with 'origin/main'.

nothing to commit, working tree clean
```

If you see the above message, then you are good to go, all changes
have been committed to your revision history. If you see something
that looks like:

```
On branch main
Your branch is up to date with 'origin/main'.

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
	modified:   markdown/git.md

no changes added to commit (use "git add" and/or "git commit -a")
```

Then you have untracked changes that need to be committed. Go back to
the previous section and commit your changes before proceeding.  There
can be no non-committed changes when we pull from Github, because Git
will merge all changes together.

To pull all changes from Github into your local repository do:

```
> git pull
```

within your repository.  Note that all Git commands must be within
your repository.  That is, your present working directory must be your
repository; in this tutorial it has been `pl_dir`.

# Docker and OCaml

Now we will install and use Docker to run OCaml.

## Docker Installation
First, regardless of your operating system go and install 
[Docker Desktop](https://www.docker.com/products/docker-desktop/).
This will install a graphical interface for docker as well as the commandline. I
will be using the commandline here, and I will only support the commandline. If
you use the graphical interface, then that's up to you to figure out. 

Make sure to open the Docker Desktop to finish installation.

After installation, open a terminal (Windows the WSL terminal), and type the
following command:
```
sudo docker --help
```
You should see the following output:
```
Usage:  docker [OPTIONS] COMMAND

A self-sufficient runtime for containers

Common Commands:
  run         Create and run a new container from an image
  exec        Execute a command in a running container
  ps          List containers
  build       Build an image from a Dockerfile
  bake        Build from a file
  pull        Download an image from a registry
  push        Upload an image to a registry
  images      List images
  login       Authenticate to a registry
  logout      Log out from a registry
  search      Search Docker Hub for images
  version     Show the Docker version information
  info        Display system-wide information

Management Commands:
  ai*         Docker AI Agent - Ask Gordon
  builder     Manage builds
  buildx*     Docker Buildx
  cloud*      Docker Cloud
  compose*    Docker Compose
  container   Manage containers
  context     Manage contexts
  debug*      Get a shell into any image or container
  desktop*    Docker Desktop commands
  extension*  Manages Docker extensions
  image       Manage images
  init*       Creates Docker-related starter files for your project
  manifest    Manage Docker image manifests and manifest lists
  mcp*        Docker MCP Plugin
  model*      Docker Model Runner (EXPERIMENTAL)
  network     Manage networks
  plugin      Manage plugins
  sbom*       View the packaged-based Software Bill Of Materials (SBOM) for an image
  scout*      Docker Scout
  system      Manage Docker
  trust       Manage trust on Docker images
  volume      Manage volumes

Swarm Commands:
  swarm       Manage Swarm

Commands:
  attach      Attach local standard input, output, and error streams to a running container
  commit      Create a new image from a container's changes
  cp          Copy files/folders between a container and the local filesystem
  create      Create a new container
  diff        Inspect changes to files or directories on a container's filesystem
  events      Get real time events from the server
  export      Export a container's filesystem as a tar archive
  history     Show the history of an image
  import      Import the contents from a tarball to create a filesystem image
  inspect     Return low-level information on Docker objects
  kill        Kill one or more running containers
  load        Load an image from a tar archive or STDIN
  logs        Fetch the logs of a container
  pause       Pause all processes within one or more containers
  port        List port mappings or a specific mapping for the container
  rename      Rename a container
  restart     Restart one or more containers
  rm          Remove one or more containers
  rmi         Remove one or more images
  save        Save one or more images to a tar archive (streamed to STDOUT by default)
  start       Start one or more stopped containers
  stats       Display a live stream of container(s) resource usage statistics
  stop        Stop one or more running containers
  tag         Create a tag TARGET_IMAGE that refers to SOURCE_IMAGE
  top         Display the running processes of a container
  unpause     Unpause all processes within one or more containers
  update      Update configuration of one or more containers
  wait        Block until one or more containers stop, then print their exit codes

Global Options:
      --config string      Location of client config files (default
                           "/Users/heades/.docker")
  -c, --context string     Name of the context to use to connect to the
                           daemon (overrides DOCKER_HOST env var and
                           default context set with "docker context use")
  -D, --debug              Enable debug mode
  -H, --host list          Daemon socket to connect to
  -l, --log-level string   Set the logging level ("debug", "info",
                           "warn", "error", "fatal") (default "info")
      --tls                Use TLS; implied by --tlsverify
      --tlscacert string   Trust certs signed only by this CA (default
                           "/Users/heades/.docker/ca.pem")
      --tlscert string     Path to TLS certificate file (default
                           "/Users/heades/.docker/cert.pem")
      --tlskey string      Path to TLS key file (default
                           "/Users/heades/.docker/key.pem")
      --tlsverify          Use TLS and verify the remote
  -v, --version            Print version information and quit

Run 'docker COMMAND --help' for more information on a command.

For more help on how to use Docker, head to https://docs.docker.com/go/guides/
```

## Running OCaml in Docker

We will now get OCaml up and running using Docker. First, open a terminal
(Windows the WSL terminal) and move into your course repo.

```
cd PATH_TO_YOUR_REPO
```

Then run the following command:

```
sudo docker compose build ocamlenv
```

This builds and sets up the Docker container with OCaml. This may take some time
to complete based on your internet speed and computer.

Next we can run the container using the following command:

```
sudo docker compose run ocamlenv
```

You should see a prompt similar to the following:

```
104b135fb4b4:/PL#
```

If we use the list files command `ls` then we can see the only files in the
container are your homework files. These are the exact some homework files as
the ones in your repo. So you run them using OCaml in the container, and still
edit them using VS Code on your actual computer.

We can also see that OCaml is installed by moving into a homework assignment,
and running `dune`:

```
7a56fd199bb0:/PL# cd hwk/1/
7a56fd199bb0:/PL/hwk/1# ls
README.md     dune-project  hwk1.opam     lib           test          test.ml
7a56fd199bb0:/PL/hwk/1# dune utop
───────────────────────────────────────────────────────┬─────────────────────────────────────────────────────────────┬────────────────────────────────────────────────────────
                                                       │ Welcome to utop version 2.16.0 (using OCaml version 5.3.0)! │                                                        
                                                       └─────────────────────────────────────────────────────────────┘                                                        

Type #utop_help for help about using utop.

─( 15:58:00 )─< command 0 >────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────{ counter: 0 }─
utop # 
┌──────────────┬──────────────┬───────────────┬─────┬────┬───┬──────────┬─────┬───────────┬──────┬────────────┬───────┬───────────┬──────────────┬──────────┬──────────────┬─┐
│Afl_instrument│Alias_analysis│Allocated_const│Annot│Arch│Arg│Arg_helper│Array│ArrayLabels│Asmgen│Asmlibrarian│Asmlink│Asmpackager│Assert_failure│Ast_helper│Ast_invariants│A│
└──────────────┴──────────────┴───────────────┴─────┴────┴───┴──────────┴─────┴───────────┴──────┴────────────┴───────┴───────────┴──────────────┴──────────┴──────────────┴─┘
```
If this worked, then you can now complete your homework assignments for this course.

# Recommended work flow

When completing your homework, I recommend using the following workflow:

1. Open the command line and move into your repository using the `cd`
   command.
   
2. Pull all new changes from Github using `git pull`.

3. Run `sudo docker compose run ocamlenv`.

4. Open your repo in VS Code and open the homework assignment you want to
   complete.

5. Edit some code, and then compile it using `dune` at the Docker prompt.

6. Repeat until you are done with the assignment.

7. Close the Docker container.

4. After you are done working commit your changes using `git commit -a
   -m 'MESSAGE'`. Commit after you work every time no matter if your
   done with your assignment or not.  This keeps your repository
   clean. 
   
5. After you commit push your changes to Github using `git push`.  Do
   this every time you're done working too.  You can push as many times
   as you like.  Committing and pushing every time your done working
   on your assignments keeps Git happy.
   
6. Bob's your uncle!

And that's all you need to know to complete all the assignments in this class.
