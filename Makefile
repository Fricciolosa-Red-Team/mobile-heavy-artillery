ready:
	@chmod +x artillery.sh
	@./artillery.sh

retreat:
	@sudo rm -rf ~/artillery
	@sudo apt purge -y nmap
	@sudo apt purge -y gobuster
	@sudo apt purge -y hydra hydra-gtk
	@sudo apt purge -y john
	@sudo apt purge -y hashcat
	@sudo apt purge -y nikto
	@sudo apt -y autoremove
	@sudo apt clean