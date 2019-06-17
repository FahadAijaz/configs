# vim: filetype=sh
abbr h "cd ~/; and ls -a"
abbr d "cd ~/Documents; and ls -a"
abbr D "cd ~/Downloads; and ls -a"
abbr m "cd ~/Music; and ls -a"
abbr pp "cd ~/Pictures; and ls -a"
abbr vv "cd ~/Videos; and ls -a"
abbr cf "cd ~/.config; and ls -a"
abbr sc "cd ~/.scripts; and ls -a"
abbr mn "cd /mnt; and ls -a"
abbr cs "cd ~/Documents/computer-systems; and ls -a"
abbr ss "cd ~/Saamsaara; and ls -a"
abbr dse "cd ~/Documents/software-engineering; and ls -a"
abbr dai "cd /home/knight/Documents/aritificial-intelligence; and ls -a"
abbr bf "$EDITOR ~/.config/bmfiles"
abbr bd "$EDITOR ~/.config/bmdirs"
abbr cfb "$EDITOR ~/.bashrc"
abbr cfa "$EDITOR ~/.config/aliasrc"
abbr cfz "$EDITOR ~/.zshrc"
abbr cfv "$EDITOR ~/.config/nvim/init.vim"
abbr cfi "$EDITOR ~/.config/i3/config"
abbr cfm "$EDITOR ~/.config/mutt/muttrc"
abbr eb "$EDITOR ~/Documents/LaTeX/uni.bib"
abbr cv "$EDITOR ~/Documents/LaTeX/cv.tex"
abbr cfd "$EDITOR ~/.Xdefaults"
abbr cfu "$EDITOR ~/.config/newsboat/urls"
abbr cfn "$EDITOR ~/.config/newsboat/config"
abbr cfmb "$EDITOR ~/.config/ncmpcpp/bindings"
abbr cfmc "$EDITOR ~/.config/ncmpcpp/config"
abbr er "$EDITOR ~/Documents/referbib"
abbr cfB "$EDITOR ~/.config/i3blocks/config"
fenv source ~/.profile


begin
    set --local AUTOJUMP_PATH $HOME/.autojump/share/autojump/autojump.fish
    if test -e $AUTOJUMP_PATH
        source $AUTOJUMP_PATH
    end
end

## clipboard aliases

## to copy in clipboard
alias c="xsel -ib" \

## to operate on the clipboard item
alias co="xsel -ob" \

alias lsh="cat ~/.config/shortcutrc" \

alias bp="bpython"

alias p6="python3.6"

alias z="zathura" \



alias p2c="gcc -g crack.c -o crack -lm" \


alias keys="python ~/Documents/shell-scripts/key.py" \

function ov
	$argv  > /tmp/vimForTempDontTouch.en && nvim /tmp/vimForTempDontTouch.en
end

function cc
	echo  >> $argv ; co >> $argv
end

function ccc
	cc $argv; cat $argv
end

set -x PAGER /usr/local/bin/vimpager

alias less=$PAGER


function va
	for line in (keys $argv[1]);
		ag -G "$argv[2]" $line
	end
end

function css
	cd ~/Documents/computer-systems;
	ag -G ".l[1-3]\.en" $argv -C 4
	cd -
end



alias ccat="highlight --out-format=ansi" # Color cat - print file with syntax highlighting.

function csr
	set rf (random choice (fd \.en  ~/Documents/computer-systems/))
	echo -n $rf
	keys $rf
end




function csall
	cd ~/Documents/computer-systems;
	ag -G ".\.en" $argv -C 4
	cd -
end
