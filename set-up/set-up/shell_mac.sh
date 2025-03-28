#!/bin/bash
echo $(which fish) | sudo tee -a /etc/shells
chsh -s $(which fish)
