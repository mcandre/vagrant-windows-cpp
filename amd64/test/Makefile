.PHONY: clean-vm clean-vagrant-metadata

all: test

test: test-boot test-compile

test-boot:
	vagrant up

test-compile: test-boot
	vagrant ssh --no-tty -c "powershell -Command \"cd C:\\vagrant; C:\\Users\\vagrant\\vsexec.bat cl /Fehello.exe /EHsc hello.cpp; .\hello\""

clean-vm:
	-vagrant destroy -f

clean-vagrant-metadata:
	-rm -rf .vagrant

clean: clean-vm clean-vagrant-metadata
