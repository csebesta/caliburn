Caliburn
========

**Caliburn** is a lightweight linux distribution designed for recovery and analysis.

Features
--------

- Resource light
- Configured with useful software packages

Installation
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

License
-------

This project is licensed under the MIT license.
