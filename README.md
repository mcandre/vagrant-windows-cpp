# vagrant-windows-cpp: a Vagrant box for building C/C++ binaries for Windows

# VAGRANT CLOUD

https://app.vagrantup.com/mcandre/boxes/vagrant-windows-cpp

# EXAMPLE

```console
$ vagrant up
$ vagrant ssh --no-tty -c "powershell -Command \"cd C:\\vagrant; C:\\Users\\vagrant\\vsexec.bat cl /Fehello.exe /EHsc hello.cpp; .\hello\""
...
Hello World!
```

# RUNTIME REQUIREMENTS

* [Vagrant](https://www.vagrantup.com)
* The [VirtualBox](https://www.virtualbox.org) hypervisor provider

# BUILDTIME REQUIREMENTS

* [Vagrant](https://www.vagrantup.com)
* The [VirtualBox](https://www.virtualbox.org) hypervisor provider
* [make](https://www.gnu.org/software/make/)

# EXPORT

```console
$ make vagrant-windows-cpp.box
```
