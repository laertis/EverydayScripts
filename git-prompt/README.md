git-prompt
==========

> Copied and edited from git-bash.

1. Add the following line in your `.bashrc`
  - `# Fixup git-bash in non login env`
  - `shopt -q login_shell || . /etc/profile.d/git-prompt.sh`
2. Copy `git-prompt` to /etc/profile.d
3. Copy git directory under `/usr/share`
