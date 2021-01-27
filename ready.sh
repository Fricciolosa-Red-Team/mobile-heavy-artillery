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

if [ -d "$DIR" ]; then
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

mkdir $DIR
cd $DIR

sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get install -y git
sudo apt-get install -y python3-pip
sudo apt-get install -y python-pip

# ================= RECON ====================
echo
echo "================= RECON ===================="
echo 
echo -n "[!] Do you want to install reconaissance tools? (y/n)"
read recon_decision
if [ "$recon_decision" = "y" ] || [ "$recon_decision" = "Y" ] || [ "$recon_decision" = "Yes" ] || [ "$recon_decision" = "yes" ]; then
    echo "[*] Installing recon tools..."

    # NMAP
    sudo apt install -y nmap
    echo "[+] nmap installed!"
    
    # GOBUSTER
    sudo apt install -y gobuster
    echo "[+] gobuster installed!"

    # SUBLIST3R
    git clone https://github.com/aboul3la/Sublist3r.git
    cd Sublist3r*
    pip install -r requirements.txt
    cd ~/$DIR
    echo "[+] Sublist3r installed!"

    # MASSDNS
    git clone https://github.com/blechschmidt/massdns.git
    cd ~/$DIR/massdns
    make
    cd ~/$DIR/
    echo "[+] massdns installed!"

else
    $RECON = "N"
fi
# ================= OSINT ====================
echo
echo "================= OSINT ===================="
echo
echo -n "[!] Do you want to install OSINT tools? (y/n)"
read osint_decision
if [ "$osint_decision" = "y" ] || [ "$osint_decision" = "Y" ] || [ "$osint_decision" = "Yes" ] || [ "$osint_decision" = "yes" ]; then
    echo "[*] Installing OSINT tools..."
else
    $OSINT = "N"
fi
# ================= PHISHING ====================
echo
echo "================= PHISHING ===================="
echo
echo -n "[!] Do you want to install OSINT tools? (y/n)"
read osint_decision
if [ "$osint_decision" = "y" ] || [ "$osint_decision" = "Y" ] || [ "$osint_decision" = "Yes" ] || [ "$osint_decision" = "yes" ]; then
    echo "[*] Installing OSINT tools..."
else
    $OSINT = "N"
fi
# ================= WEBSEC ====================
echo
echo "================= WEBSEC ===================="
echo
echo -n "[!] Do you want to install WEBSEC tools? (y/n)"
read websec_decision
if [ "$websec_decision" = "y" ] || [ "$websec_decision" = "Y" ] || [ "$websec_decision" = "Yes" ] || [ "$websec_decision" = "yes" ]; then
    echo "[*] Installing WEBSEC tools..."
else
    $WEBSEC = "N"
fi
# ================= EXPLOITATION ====================
echo
echo "================= EXPLOITATION ===================="
echo
echo -n "[!] Do you want to install EXPLOITATION tools? (y/n)"
read explo_decision
if [ "$explo_decision" = "y" ] || [ "$explo_decision" = "Y" ] || [ "$explo_decision" = "Yes" ] || [ "$explo_decision" = "yes" ]; then
    echo "[*] Installing EXPLOITATION tools..."
else
    $EXPLOITATION = "N"
fi
# ================= PRIVILEGE ESCALATION ====================
echo
echo "================= PRIVILEGE ESCALATION ===================="
echo
echo -n "[!] Do you want to install PRIVILEGE ESCALATION tools? (y/n)"
read priv_decision
if [ "$priv_decision" = "y" ] || [ "$priv_decision" = "Y" ] || [ "$priv_decision" = "Yes" ] || [ "$priv_decision" = "yes" ]; then
    echo "[*] Installing PRIVILEGE ESCALATION tools..."
else
    $PRIVILEGE = "N"
fi
# ================= MISCELLANEOUS ====================
echo
echo "================= MISCELLANEOUS ===================="
echo
echo -n "[!] Do you want to install MISCELLANEOUS tools? (y/n)"
read misc_decision
if [ "$misc_decision" = "y" ] || [ "$misc_decision" = "Y" ] || [ "$misc_decision" = "Yes" ] || [ "$misc_decision" = "yes" ]; then
    echo "[*] Installing MISCELLANEOUS tools..."
else
    $MISCELLANEOUS = "N"
fi

cd $OLDDIR