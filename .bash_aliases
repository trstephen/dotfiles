# Add some easy shortcuts for formatted directory listings and add a touch of color.
alias ll='ls -lFG'
alias la='ls -alFG'
alias ls='ls -FG'

# Slightly altered versions of our old friends
alias grep='grep --color=auto'


## Convenience
# Fixes the ".../recode_data.xml not found" error with bibtex + latex
alias fix-biber='rm -rf `biber cache`'

# Use colordiff by default
alias colordiff='colordiff -u'

# helpful reminder! add to .bashrc
# # Add bash aliases.
# if [ -f ~/.bash_aliases ]; then
#     source ~/.bash_aliases
# fi
