#!/bin/bash

cp firstboot.service ~/.config/systemd/user/
chown $USER: firstboot.service
systemctl --user start firstboot.service
