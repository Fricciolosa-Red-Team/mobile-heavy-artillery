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

DIR="mobile-heavy-artillery"
BLOCK="N"

if [ -d "$DIR" ]; then
    echo -n "[!] Previous installation of Mobile Heavy Artillery found. Do you want to overwrite? (y/n)"
    read decision
    if [ "$decision" = "y" ] || [ "$decision" = "Y" ] || [ "$decision" = "Yes" ] || [ "$decision" = "yes" ]; then
        echo "[*] Overwriting..."
    else
        $BLOCK = "Y"
    fi
fi

if [ "$BLOCK" = "Y" ]; then
    exit 1
fi

# ================= RECON ====================
echo
echo "================= RECON ===================="
echo 
# ================= OSINT ====================
echo
echo "================= OSINT ===================="
echo
# ================= PHISHING ====================
echo
echo "================= PHISHING ===================="
echo
# ================= WEBSEC ====================
echo
echo "================= WEBSEC ===================="
echo
# ================= EXPLOITATION ====================
echo
echo "================= EXPLOITATION ===================="
echo
# ================= PRIVILEGE ESCALATION ====================
echo
echo "================= PRIVILEGE ESCALATION ===================="
echo
