# Vagrant
Seeing as Vagrant is using VM providers, it's difficult to provide a 1-click solution for all install scenarios. Refer to official [documentation](https://www.vagrantup.com/docs/installation) for setup for your OS.

If you're on WSL as is common today, here's a rough idea of the setup:
1. Run the linux install comands for the vagrant in WSL
2. Install VirtualBox (or preferred VM provider) IN WINDOWS
3. Provide Windows access to the WSL-installed Vagrant via the export command here: [Vagrant WSL](https://www.vagrantup.com/docs/other/wsl)