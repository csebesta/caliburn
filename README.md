Caliburn
========

**Caliburn** is a lightweight linux distribution designed for recovery and analysis.

Features
--------

- Resource light
- Configured with useful software packages

Installation and Usage
------------

### Basic installation

```
git clone https://github.com/csebesta/caliburn; cd caliburn
sudo lb build
```

### Rebuilding after making changes

```
sudo lb clean
sudo lb build
```

### Writing image to usb

From the main project directory, and according to reccomendations on https://www.debian.org/CD/faq/#write-usb

```
dd if=<file> of=<device> bs=4M status=progress; sync
```

Configuration
-------------

Caliburn can be modified by changing or adding files in the config directory.

`config/package-lists/caliburn.list.chroot` The basic package list.
`config/includes.chroot/etc/modprobe.d/nobeep.conf` Disables system beep.

License
-------

This project is licensed under the MIT license.
