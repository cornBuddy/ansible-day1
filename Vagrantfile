Vagrant.configure("2") do |config|
  config.vm.define "control" do |control|
    control.vm.box = "centos/7"
    control.vm.provision :shell, path: "chore/bootstrap-ansible.sh",
      run: "always"
  end

  config.vm.define "target" do |target|
    control.vm.box = "centos/7"
  end
end
