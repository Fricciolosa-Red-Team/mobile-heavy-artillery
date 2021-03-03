#
# Fricciolosa Read Team presents:
#
#           MOBILE HEAVY ARTILLERY
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see http://www.gnu.org/licenses/.
#
#
#   @Repository:  https://github.com/fricciolosa-red-team/mobile-heavy-artillery
#
#   @Author:      Fricciolosa Red Team
#

echo " __  __       _     _ _        _   _"                        
echo "|  \/  | ___ | |__ (_) | ___  | | | | ___  __ ___   ___   _ "
echo "| |\/| |/ _ \| '_ \| | |/ _ \ | |_| |/ _ \/ _\` \ \ / / | | |"
echo "| |  | | (_) | |_) | | |  __/ |  _  |  __/ (_| |\ V /| |_| |"
echo "|_|  |_|\___/|_.__/|_|_|\___| |_| |_|\___|\__,_| \_/  \__, |"
echo "                                                      |___/ "
echo "    _         _   _ _ _                 "
echo "   / \   _ __| |_(_) | | ___ _ __ _   _ "
echo "  / _ \ | '__| __| | | |/ _ \ '__| | | |"
echo " / ___ \| |  | |_| | | |  __/ |  | |_| |"
echo "/_/   \_\_|   \__|_|_|_|\___|_|   \__, |"
echo "                                  |___/ "
echo ""
echo "        Fricciolosa Red Team"
echo "        https://github.com/fricciolosa-red-team/mobile-heavy-artillery"
echo ""
echo "[*] Deploying Mobile Heavy Artillery ... "

# ================= GLOBAL VARS, PREPROCESSING ====================

OLDDIR=$(pwd)
DIR="artillery"
BLOCK="N"
RECON="Y"
OSINT="Y"
PHISHING="Y"
WEBSEC="Y"
EXPLOITATION="Y"
PRIVILEGE="Y"
MISCELLANEOUS="Y"

if [ -d "~/$DIR" ]; then
    echo -n "[!] Previous installation of Mobile Heavy Artillery found. Do you want to overwrite? (y/n)"
    read decision
    if [ "$decision" = "y" ] || [ "$decision" = "Y" ] || [ "$decision" = "Yes" ] || [ "$decision" = "yes" ]; then
        echo "[*] Overwriting..."
        rm -rf $DIR
    else
        $BLOCK = "Y"
    fi
fi

if [ "$BLOCK" = "Y" ]; then
    exit 1
fi

cd ~
mkdir $DIR
cd $DIR

sudo apt -y update
sudo apt -y upgrade
sudo apt autoremove
sudo apt install wget
sudo apt install curl
sudo apt install -y python3-pip
sudo apt install -y python-pip
sudo apt install golang-go
# sudo apt install docker.io

# ================= RECON ====================
echo
echo "================= RECON ===================="
echo 
echo -n "[!] Do you want to install RECON tools? (y/n) "
read recon_decision
if [ "$recon_decision" = "y" ] || [ "$recon_decision" = "Y" ] || [ "$recon_decision" = "Yes" ] || [ "$recon_decision" = "yes" ]; then
    echo "[*] Installing recon tools..."

    mkdir recon
    cd recon

    # NMAP
    sudo apt install -y nmap
    echo "[+] nmap installed!"
    
    # GOBUSTER
    sudo apt install -y gobuster
    echo "[+] gobuster installed!"

    # SUBLIST3R
    git clone https://github.com/aboul3la/Sublist3r.git
    cd Sublist3r
    pip install -r requirements.txt
    cd ..
    echo "[+] Sublist3r installed!"

    # MASSDNS
    git clone https://github.com/blechschmidt/massdns.git
    cd massdns
    make
    cd ..
    echo "[+] massdns installed!"

    # SCILLA
    git clone https://github.com/edoardottt/scilla.git
    cd scilla
    go get
    sudo make linux
    cd ..
    echo "[+] scilla installed!"

    # SECRETFINDER
    git clone https://github.com/m4ll0k/SecretFinder.git secretfinder
    cd secretfinder
    pip install -r requirements.txt
    cd ..
    echo "[+] SecretFinder installed!"

    # GITJACKER
    curl -s "https://raw.githubusercontent.com/liamg/gitjacker/master/scripts/install.sh" | bash

    # GITDORKER
    git clone https://github.com/obheda12/GitDorker.git
    cd GitDorker
    pip3 install -r requirements.txt
    cd ..
    echo "[+] GitDorker installed!" 

    # HYDRA
    sudo apt install -y hydra hydra-gtk
    echo "[+] Hydra installed!"

    # JOHN THE RIPPER
    sudo apt install -y john
    echo "[+] John The Ripper installed!"

    # C-JWT-CRACKER
    sudo apt install -y libssl-dev
    git clone https://github.com/brendan-rius/c-jwt-cracker.git
    cd c-jwt-cracker
    make
    cd ..
    echo "[+] c-jwt-cracker installed!"

    # HASHCAT
    sudo apt install -y hashcat
    echo "[+] Hashcat installed!"

else
    $RECON = "N"
fi

cd ~/$DIR
# ================= OSINT ====================
echo
echo "================= OSINT ===================="
echo
echo -n "[!] Do you want to install OSINT tools? (y/n) "
read osint_decision
if [ "$osint_decision" = "y" ] || [ "$osint_decision" = "Y" ] || [ "$osint_decision" = "Yes" ] || [ "$osint_decision" = "yes" ]; then
    echo "[*] Installing OSINT tools..."

    mkdir osint
    cd osint

    # THE HARVESTER
    git clone https://github.com/laramies/theHarvester
    cd theHarvester
    #docker build -t theharvester .
    python3 -m pip install -r requirements/base.txt
    cd ..

    # MALTEGO
    wget https://maltego-downloads.s3.us-east-2.amazonaws.com/linux/Maltego.v4.2.15.13632.deb
    sudo dpkg -i Maltego.*
    sudo rm -rf Maltego.*

    # METAGOOFIL
    git clone https://github.com/laramies/metagoofil.git

    # RECON-NG
    git clone https://github.com/lanmaster53/recon-ng.git
    cd recon-ng
    pip install -r REQUIREMENTS
    cd ..

else
    $OSINT = "N"
fi

cd ~/$DIR
# ================= PHISHING ====================
echo
echo "================= PHISHING ===================="
echo
echo -n "[!] Do you want to install PHISHING tools? (y/n) "
read osint_decision
if [ "$osint_decision" = "y" ] || [ "$osint_decision" = "Y" ] || [ "$osint_decision" = "Yes" ] || [ "$osint_decision" = "yes" ]; then
    echo "[*] Installing PHISHING tools..."

    mkdir phishing
    cd phishing

    # GOPHISH
    mkdir gophish
    cd gophish
    wget https://github.com/gophish/gophish/releases/download/v0.11.0/gophish-v0.11.0-linux-64bit.zip
    unzip gophish*
    sudo rm -rf gophish-v0.11.0*
    cd ..

else
    $OSINT = "N"
fi

cd ~/$DIR
# ================= WEBSEC ====================
echo
echo "================= WEBSEC ===================="
echo
echo -n "[!] Do you want to install WEBSEC tools? (y/n) "
read websec_decision
if [ "$websec_decision" = "y" ] || [ "$websec_decision" = "Y" ] || [ "$websec_decision" = "Yes" ] || [ "$websec_decision" = "yes" ]; then
    echo "[*] Installing WEBSEC tools..."

    mkdir websec
    cd websec

    # wfuzz
    pip install wfuzz
    
    # XSStrike
    git clone https://github.com/s0md3v/XSStrike.git
    cd XSStrike
    pip3 install -r requirements.txt
    cd ..

    # xss-payload-list
    git clone https://github.com/payloadbox/xss-payload-list.git

    # Bolt
    git clone https://github.com/s0md3v/Bolt.git 
    cd Bolt
    pip3 install -r requirements.txt
    cd ..

else
    $WEBSEC = "N"
fi

cd ~/$DIR
# ================= EXPLOITATION ====================
echo
echo "================= EXPLOITATION ===================="
echo
echo -n "[!] Do you want to install EXPLOITATION tools? (y/n) "
read explo_decision
if [ "$explo_decision" = "y" ] || [ "$explo_decision" = "Y" ] || [ "$explo_decision" = "Yes" ] || [ "$explo_decision" = "yes" ]; then
    echo "[*] Installing EXPLOITATION tools..."

    mkdir exploitation
    cd exploitation

    # METASPLOIT
    curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb \
    > msfinstall && chmod 755 msfinstall && ./msfinstall


else
    $EXPLOITATION = "N"
fi

cd ~/$DIR
# ================= PRIVILEGE ESCALATION ====================
echo
echo "================= PRIVILEGE ESCALATION ===================="
echo
echo -n "[!] Do you want to install PRIVILEGE ESCALATION tools? (y/n) "
read priv_decision
if [ "$priv_decision" = "y" ] || [ "$priv_decision" = "Y" ] || [ "$priv_decision" = "Yes" ] || [ "$priv_decision" = "yes" ]; then
    echo "[*] Installing PRIVILEGE ESCALATION tools..."

    mkdir privilege-escalation
    cd privilege-escalation

    # PRIVESCCHECK
    git clone https://github.com/itm4n/PrivescCheck.git


    # PE-LINUX
    git clone https://github.com/WazeHell/PE-Linux.git

    # TRAITOR
    git clone https://github.com/liamg/traitor.git
    cd traitor
    make build
    cd ..

else
    $PRIVILEGE = "N"
fi

cd ~/$DIR
# ================= MISCELLANEOUS ====================
echo
echo "================= MISCELLANEOUS ===================="
echo
echo -n "[!] Do you want to install MISCELLANEOUS tools? (y/n) "
read misc_decision
if [ "$misc_decision" = "y" ] || [ "$misc_decision" = "Y" ] || [ "$misc_decision" = "Yes" ] || [ "$misc_decision" = "yes" ]; then
    echo "[*] Installing MISCELLANEOUS tools..."

    mkdir miscellaneous
    cd miscellaneous

    # SECLISTS
    git clone https://github.com/danielmiessler/SecLists.git

else
    $MISCELLANEOUS = "N"
fi

cd $OLDDIR