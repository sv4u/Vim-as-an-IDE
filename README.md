# Vim as an IDE

*By Mohammed Hashim, Yizhe Liu, Kevan Dohia, and Sasank Vishnubhatla*

## Table of Contents

1. Introduction
2. Basic History of Vim
3. Why Should I use Vim?
4. How to Use Vim
	* Modes
	* Verbs and Modifiers
	* Searching and Modifiers
	* Searching
	* Saving and Exiting
	* Make and Running Code
5. Creating the Vimrc file
6. Mouse Support
7. Color Scheme
8. Handy Settings
9. Introduction to plugins
	* Vundle
	* Syntastic
	* Vim-c0 (specifically for 15-122)
	* Airline
10. Vim Cheatsheet

## Introduction

### What is Vim?
Vim is a text editor found in the terminal. If you’re used to using Notepad, Sublime Text or any text editor, Vim is just another way to write and edit text. Vim’s basics are very simple, but in combination the simple commands become very powerful to reveal a great deal useful features.

### Who/What is this guide for?
This guide is for anyone interested in learning how to use Vim! However, parts of this guide are specifically geared towards students at Carnegie Mellon University taking 15-122, Principles of Imperative Programming. The overarching goal is for the reader to learn something about using Vim, whether they just started or have been using Vim for a long time.

### A Brief History of Vim
Vim was created by Bram Moolenaar as a text editor for the Amiga System.  was first publicly released in 1991  The name "Vim" stands for "Vi iMproved"  because Vim is an extended version of the vi editor, with many additional features designed to be helpful in editing program source code. Over the years Vim has become the most popular text editor for programmers, as well as one of the most popular integrated development environment (IDE) for developers.

### Why Should I Use Vim?

Compared to other text editors, Vim stands out for a couple reasons. The core to Vim’s belief is that most people spend more time editing existing text than writing new text. Thus, Vim allows you to be efficient while editing text by optimizing your keyboard use. Vim gives you the ability to use existing keyboard shortcuts as well as create and customize new ones to complete repetitive tasks efficiently. This ability to customize Vim to suit your personalized typing needs is what makes Vim so powerful. Vim is also available on most platforms including, Mac, Windows and Linux.

## How to Use Vim

### Accessing Vim
On the Andrew AFS server, Vim is already installed. If you are downloading Vim on your own device, run the following commands from a Unix terminal:

```bash
sudo apt-get update
sudo apt-get install vim
```

Then, to open a file, run the following command from the terminal you are in:

```bash
vim <filename>
```

### Modes
In Vim, there are four major modes you will need to be familiar with. The most important of those is Normal mode.

**Normal Mode**

Normal mode is the default mode for Vim. you can access text commands for editing your file. Whenever you open up vim, you will automatically be in Normal mode. Here's what an empty file opened in Normal mode looks like:

![Normal mode](images/normal-mode.png)

**Insert Mode**

From Normal mode, you can enter Insert mode by typing `i`. Now, you can insert text where ever you want in your file. Here's an empty file in insert mode:

![Insert mode](images/insert-mode.png)

**Visual Mode**

For Visual mode, you can enter it from Normal mode by typing in `v`. This will highlight text while you move the text cursor with the arrow keys. All commands in Normal mode still work in Visual mode. Here's what Visual mode looks like:

![Visual mode](images/visual-mode.png)

**Visual Block Mode**

Visual Block mode is similar to Visual mode in the fact that it highlights text. However, instead of highlighting character by character, Visual Block mode highlights line by line. To enter it, type in `V` from Normal mde. Here's what Visual Block mode looks like from an empty file:

![Visual Block mode](images/visual-block-mode.png)

### Verbs and Modifiers

Vim is like a language. There are verbs which allows you do to certain actions. Here is a table of the most important verbs and what they do:

| Verb | Action |
| `v`  | Enter Visual mode |
| `c`  | Change whatever is being modified |
| `d`  | Delete whatever is being modified |
| `y`  | Yank (copy) whatever is being modified |

Notice how the verbs need something to modify. So, in the Vim language, we have verbs ***and*** modifiers. Here's the important modifiers:

| Keystroke | Modifier |
| `i`       | Inside   |
| `a`       | Around   |
| `w`       | Word     |
| `s`       | Sentence |
| `p`       | Paragraph |
| `b`       | Block/Parenthesis |

So, some complete sentences in Vim (i.e. some actions) are:
* `diw`: delete the current (inside) word
* `dw`: delete the current word
* `dd`: delete current line
* `ds`: delete the current sentence
* `yw`: yank the current word
* `yiw`: yank the current (inside) word
* `yy`: yank the current line
* `ys`: yank the current sentence

By using modifiers and verbs together, we're able to do complex actions in Vim.

### Searching

Searching in Vim is fairly straightforward. Type / followed by the term you want to search in the Normal mode. Vim will search for all occurrences of the term in the file. For instance if you wanted to search for all occurrences of "Hello" in a file, you would simply type  n l mode and press enter:

```vim
/Hello
```

You can then use the following commands to navigate the search items:
-   Press `n` to search forwards for the next occurrence.
-   Press `N` to search backwards for the previous occurrence.
-   Type `gnn` to jump to the first match.
-   Type `GNN` to jump to the last match.

### Saving and Exiting

If you are currently in insert or append mode, press ESC to enter Normal mode. Then type `:wq` and press enter. This will quit the editor, and all changes you have made to the document will be saved.

To simply save a file without exiting, enter Normal mode, type `:w` and press enter. To exit the file without saving changes, enter Normal mode, type `:q!` and press enter.

### Make and Running Code
Vim allows you to run shell commands without closing the editor. To run a shell command in Vim you type `:!` followed by the shell command in NormalCommand mode. This allows you to run and test your code without exiting Vim.

If you have a Makefile then Vim can run it for you. Typing `:make` in Normal command mode will run the Makefile. In addition, using `:make` to compile a program allows you to use the command `:copen` to open a window with a list of all the compilation errors. To close that window, simply type `:cclose` in Normal command mode.

## Creating the Vimrc File

Customizing in Vim is done through the `~/.vimrc` file. To open it, run the following in your Unix terminal:

```bash
vim ~/.vimrc
```

## Mouse Spport
To enable Mouse Support in Vim, open the `~/.vimrc` file and add the following line:

```vim
set mouse=a
```

This allows you to use the Mouse to interact with Vim.

## Color Scheme

Vim has several different Color Schemes that you can switch between. To change the Color Scheme, switch to Normal mode and type `:colorscheme [name]`, where [name] should be replaced by the name of a Color Scheme. For example, `:colorscheme default` resets Vim to the default colorscheme.

If you do not know the available Color Schemes, you can type `:colorscheme ` in Normal mode and then press `Ctrl+D` without hitting Enter. This will display a list of all the available Color Schemes.

![Colorscheme list](images/colorschemes.png)

If you like a specific Color Scheme and you want it to be the default option when using Vim, then replace “default” in the following line and add it to the `~/.vimrc` file:

```vim
colorscheme default
```

## Handy Settings

Here are a few handy settings. They pertain to line numbers, the window ruler, indenting, showing commands, searching, and letting Vim highlight certain syntax in multiple languages:

```vim
set ruler
set number
set showcmd
set audoindent
set incsearch
set hlsearch
syntax on
```

## Introduction to Plugins

The way to add plugins is to edit the Vim source file: `~/.vimrc`. To open it, run the following in your Unix terminal:

```bash
vim ~/.vimrc
```

Now we can add the first plugin, Vundle.

### Vundle

Vundle, short for Vim bundle, is a plugin manager for Vim. It allows you to keep track of and configure your plugins among other features. To install Vundle, we need to use Git to download it. The Andrew AFS servers have Git already installed on them.

If you do not have Git installed, run the following command in your terminal:

```bash
sudo apt-get update
sudo apt-get install git
```

Now that you have Git installed, we can download Vundle with the following command in your terminal.

```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

Now that we have downloaded Vundle, we need to set it up in our `vimrc` file. Opening our `vimrc` file, we need to add the following code to the top:

```vim
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

call vundle#end()

filetype plugin indent on
```

Now that we have Vundle installed and working, we can start adding other plugins.

### Syntastic

An important part of an IDE is efficient code syntax checking. Syntastic is a plugin which does syntax checking for a multitude of languages including C, SML, Python, and TeX. To install it, we need to add one line to our `vimrc`. The line we add is `Plugin ‘vim-syntastic/syntastic’`. So, our complete `vimrc` looks like this:

```vim
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin ‘vim-syntastic/syntastic’

call vundle#end()

filetype plugin indent on
```

Finally, we will install it by running the following command in Vim itself:

```
:PluginInstall
```

Now, we have our syntax checker installed.

### Vim-c0 (Specifically for 15-122)

In 15-122, you learn the C0 language. However, Syntastic does not include syntax checking for C0. However, there is a plugin for C0, so let’s install it. To install it, let’s add `Plugin ‘cmugpi/vim-c0’` to our plugin list. So, our `vimrc` file looks as follows:

```vim
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin ‘vim-syntastic/syntastic’
Plugin ‘cmugpi/vim-c0’

call vundle#end()

filetype plugin indent on
```

Finally, we will install it by running the following command in Vim itself:

```
:PluginInstall
```

### Airline

An important part of an IDE is letting the user know information about the file that the user is editing. Most times, this information is placed into a statusbar. Airline is an extremely lightweight statusbar plugin for Vim. To install it, we add the line `Plugin ‘vim-airline/vim-airline’` to the plugin list in our `vimrc`. So, our `vimrc` should look like:

```vim
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin ‘vim-syntastic/syntastic’
Plugin ‘cmugpi/vim-c0’
Plugin ‘vim-airline/vim-airline’

call vundle#end()

filetype plugin indent on
```

Finally, we install our plugin by running this command in Vim:

```
:PluginInstall
```

For additional customization, visit Airline’s Github page: <https://github.com/vim-airline/vim-airline>

## Vim Command Cheatsheet

Here is a table of command and useful commands.

| Description | Command |
| ----------- | ------- |
| Enter Insert mode | `i` |
| Enter Visual mode | `V` |
| Exit to Normal mode | `Escape key` |
| Cut current line | `dd` |
| Cut current word | `dw` |
| Cut current character | `x` |
| Yank current line | `yy` |
| Yank current word | `yw` |
| Move cursor to beginning of line | `0` |
| Move cursor to end of line | `$` |
| Move cursor right one word | `w` |
| Move cursor left one word | `b` |
| Move cursor up one line | `k` |
| Move cursor down one line | `j` |
| Move cursor to the beginning of the file | `gg` |
| Move cursor to the end of the file | `G` |

## Example Vimrc

We've added an example `vimrc` file for you to look at [here](.vimrc).
