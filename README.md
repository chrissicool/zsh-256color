256color ZSH Plugin
===================

This ZSH plugin enhances the terminal environment with 256 colors. It looks at
the chosen `TERM` environment variable and sees if there is respective ncurses'
terminfo with 256 colors available. The result is a multicolor terminal, if
available.

Plugin Installation
-------------------

If you use [Antigen](http://antigen.sharats.me/ "Antigen plugin manager for ZSH"),
add the following line to your plugins list:

> antigen bundle chrissicool/zsh-256color

If you use [Oh-My-Zsh](https://github.com/robbyrussell/oh-my-zsh "OMZ manager for ZSH"),
add `zsh-256color` to your `plugins` list and clone this repository to your
`$ZSH_CUSTOM/plugins` directory:

> $ ( cd $ZSH_CUSTOM/plugins && git clone https://github.com/chrissicool/zsh-256color )
