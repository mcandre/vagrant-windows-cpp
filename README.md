# vagrant-windows-cpp: a Vagrant box for building C/C++ binaries for Windows

# VAGRANT CLOUD

* https://app.vagrantup.com/mcandre/boxes/vagrant-windows-cpp-amd64
* https://app.vagrantup.com/mcandre/boxes/vagrant-windows-cpp-i386

# EXAMPLE

```console
$ cd amd64/test
$ vagrant up
$ vagrant ssh --no-tty -c "powershell -Command \"cd C:\\vagrant; C:\\Users\\vagrant\\vsexec.bat cl /Fehello.exe /EHsc hello.cpp; .\hello\""
...
Hello World!
```

# RUNTIME REQUIREMENTS

* [Vagrant](https://www.vagrantup.com)
* The [VirtualBox](https://www.virtualbox.org) hypervisor provider

## Recommended

* [vagrant-rsync-back](https://github.com/smerrill/vagrant-rsync-back) assists in copying artifacts from the guest to the host

# BUILDTIME REQUIREMENTS

* [Vagrant](https://www.vagrantup.com)
* The [VirtualBox](https://www.virtualbox.org) hypervisor provider
* [make](https://www.gnu.org/software/make/)

# EXPORT

```console
$ sh -c "cd amd64 && make vagrant-windows-cpp-amd64.box"
$ sh -c "cd i386 && make vagrant-windows-cpp-i386.box"
```
