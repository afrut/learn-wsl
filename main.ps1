# Commands for wsl
# https://learn.microsoft.com/en-us/windows/wsl/basic-commands

# Check the version of wsl
wsl --version

# List installed distributions
wsl --list --verbose

# List distributions available for install
wsl --list --online

# Install default Linux distribution "Ubuntu"
wsl --install

# Run a wsl distribution
$DISTRIBUTION="Ubuntu"
$USER="Me"
wsl --distribution "$DISTRIBUTION" --user "$USER"

# Export a distribution to a local file so that it's data can be moved/imported
# into another location on disk
$DISTRIBUTION_FILE_PATH="D:\wsl_distributions\Ubuntu.tar"
wsl --export "$DISTRIBUTION" "$DISTRIBUTION_FILE_PATH"

# Import a distribution from a local into a location on disk
$INSTALL_LOCATION="D:\wsl_distributions\$DISTRIBUTION"
wsl --import "$DISTRIBUTION" "$INSTALL_LOCATION" "$DISTRIBUTION_FILE_PATH"

# Remove an installed distribution
$DISTRIBUTION="Ubuntu"
wsl --unregister "$DISTRIBUTION"

# Stop running a distribution
wsl --terminate

# Shutdown the virtual machine running wsl2
wsl --shutdown