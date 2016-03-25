platform "ubuntu-16.04-amd64" do |plat|
  plat.servicedir "/etc/init.d"
  plat.defaultdir "/etc/default"
  plat.servicetype "systemd"
  plat.codename "xenial"

  plat.apt_repo "http://pl-build-tools.delivery.puppetlabs.net/debian/pl-build-tools-release-#{plat_get_codename}.deb"
  plat.provision_with "export DEBIAN_FRONTEND=noninteractive; apt-get update -qq; apt-get install -qy --no-install-recommends build-essential devscripts make quilt pkg-config debhelper rsync fakeroot"
  plat.install_build_dependencies_with "DEBIAN_FRONTEND=noninteractive; apt-get install -qy --no-install-recommends "
  plat.vmpooler_template "ubuntu-1604-x86_64"
end