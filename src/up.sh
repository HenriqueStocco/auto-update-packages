#!/usr/bin/env zsh

echo "Start update packages: \n"
sudo apt update 

echo "Upgrade packages: \n"
sudo apt full-upgrade -y

echo "Auto clear memory: \n"
sudo apt autoclean -y

echo "Auto remove unnecessary packages: \n"
sudo apt autoremove --purge

echo "All updated. Congratulations: \n"

echo "Source .zshrc resources"
source ~/.zshrc

echo "Source .vimrc editor resources"
source ~/.vimrc

echo "Verify if nodejs has updates and upgraded it"

function update_node() {
    # Get current version
    local curent_version=$(nvm current)
    local latest_lts_version=$(nvm version-remote --lts)

    # Checks if an update is needed
    if [ "$curent_version" != "$latest_lts_version" ]; then
        echo "Updating Node.js from $curent_version to $latest_lts_version..."

        # Install the latest LTS version
        nvm install --lts
        
        # Reinstall global packages from the previous version
        nvm reinstall-packages-from "$curent_version"

        # Uninstall the old version
        nvm uninstall "$curent_version"

        # Clean NVM cache
        nvm .cache clear 

        echo "Node.js has been updated successfully"

    else 
        echo "You're already using the latest LTS version $curent_version."
    fi

}

# Update Node.js
update_node
clear 
