Vagrant.configure("2") do |config|
  config.vm.box = "mcandre/windows"
  config.vm.box_version = "0.0.1"

  # Fix vagrant package
  config.ssh.insert_key = false

  config.vm.provision "file", source: "vsexec.bat", destination: "C:\\Users\\vagrant\\vsexec.bat"
  config.vm.provision "shell", path: "bootstrap.ps1"
end
