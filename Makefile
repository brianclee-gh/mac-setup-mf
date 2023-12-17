install-git:
	# git aliases
	@echo "Installing git aliases..."
	@git config --global alias.co checkout
	@git config --global alias.a "add ."
	@git config --global alias.br branch
	@git config --global alias.ci commit
	@git config --global alias.st status
	@git config --global alias.nb "checkout -b"
	@git config --global alias.lg "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
	@echo "Git aliases have been set up."

uninstall-git:
	# git aliases
	@echo "Uninstalling git aliases..."
	@git config --global --unset alias.co
	@git config --global --unset alias.a
	@git config --global --unset alias.br
	@git config --global --unset alias.ci
	@git config --global --unset alias.st
	@git config --global --unset alias.nb
	@git config --global --unset alias.lg
	@echo "Git aliases have been removed."

install:
	make install-git

uninstall:
	make uninstall-git

.PHONY: install uninstall

