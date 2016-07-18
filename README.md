# ocd

Change to directories with shortcut names in Linux Terminal.


## install

```bash
# source the script in .bashrc to install
$ echo "source <path to ocd.sh>" >> ~/.bashrc
```


## usage

```bash
$ ocd [-|[-|+|=]<path>]

# [] -> optional argument
# <> -> argument value
```

```bash
# change to workspace directory
$ ocd /local/mnt/workspace

# change to up one directory
$ ocd ..

# stay at current directory (list contents)
$ ocd .

# change to previous directory
$ ocd -

# add current directory as shortcut
$ ocd +work

# change to root directory
$ ocd /

# change to workspace directory using shortcut
$ ocd =work

# remove workspace shortcut
> ocd -work
```


## license

Are you Anonymous? That's enough!
