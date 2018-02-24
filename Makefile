BOX=vagrant-windows-cpp.box

.PHONY: launch-vm clean-vm clean-boxes clean-vagrant-metadata

launch-vm: Vagrantfile bootstrap.ps1
	vagrant up

test: launch-vm
	vagrant ssh --no-tty -c "powershell -Command \"cd C:\\vagrant; C:\\Users\\vagrant\\vsexec.bat cl /Fehello.exe hello.cpp; .\hello\""

clean-vm:
	-vagrant destroy -f

clean-boxes:
	-rm -rf *.box

clean-vagrant-metadata:
	-rm -rf .vagrant

clean: clean-boxes clean-vm clean-vagrant-metadata

$(BOX): export.Vagrantfile clean launch-vm
	vagrant package --output $(BOX) --vagrantfile export.Vagrantfile
