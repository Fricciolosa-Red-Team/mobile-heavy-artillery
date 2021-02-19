ready:
	@chmod +x artillery.sh
	@./artillery.sh

retreat:
	@sudo rm -rf ~/artillery
	@sudo apt purge nmap
	@sudo apt purge gobuster
	@sudo apt purge hydra hydra-gtk
	@sudo apt purge john
	@sudo apt purge hashcat
	@sudo apt autoremove
	@sudo apt clean