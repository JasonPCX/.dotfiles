# Dotfiles

## Background
In the past, I managed my dotfiles manually. This process was manageable but not without its challenges. However, as my work required me to frequently switch between different development environments within a short period of time, the need for a more efficient and automated solution became apparent. This led me to the decision to create and track a dedicated repository for my dotfiles. The goal was to make the setup process across multiple platforms more convenient and less time-consuming. 

## Instructions

Follow these steps to clone the repository and run the installation script:

1. Clone the repository into a new hidden directory at ~/.dotfiles.

```zsh
# SSH Method
git clone git@github.com:JasonPCX/.dotfiles.git ~/.dotfiles

# HTTPS Method.
git clone https://github.com/JasonPCX/.dotfiles.git ~/.dotfiles
```

2. Navigate to the cloned directory

```zsh
# Change your current directory to the newly cloned repository.
cd ~/.dotfiles
```

3. Run the installation script

```zsh
# The `install` script in the repository root is responsible for bootstrapping the new Linux installation with dotfiles and a list of utilities. It should be run directly from the repository root:
./install

```
