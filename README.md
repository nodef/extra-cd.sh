Change to directories with shortcut names in Linux Terminal.
> 1. Download [bash script](https://github.com/bashf/extra-cd/releases/download/1.0.0/ecd).
> 2. Set execute permission on the `bash script`, and copy to `~/scripts`.
> 3. Source the script in .bashrc: `echo "source <path to ecd>" >> ~/.bashrc`.


```bash
$ ecd [- | [+<shortcut> [path] | -<shortcut> | =<shortcut>]]

# [] -> optional argument
# <> -> argument value
```

```bash
# change to workspace directory
$ ecd /local/mnt/workspace

# change to up one directory
$ ecd ..

# stay at current directory (list contents)
$ ecd .

# change to previous directory
$ ecd -

# add current directory as shortcut
$ ecd +work

# change to root directory
$ ecd /

# change to workspace directory using shortcut
$ ecd =work

# remove workspace shortcut
$ ecd -work

# add relative path shortcut
$ ecd +up3 ../../..

# go up 3 directories
$ ecd =up3

# remove relative path shortcut
$ ecd -up3
```


[![Merferry](https://i.imgur.com/Ki9lyzP.jpg)](https://merferry.github.io)
