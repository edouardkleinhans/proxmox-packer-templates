# renovate: datasource=custom.debianLinuxRelease
name           = "debian-12-template"
iso_file       = "debian-12.6.0-amd64-netinst.iso"
iso_url        = "https://cdimage.debian.org/mirror/cdimage/archive/12.6.0/amd64/iso-cd/debian-12.6.0-amd64-netinst.iso"
iso_checksum   = "file:https://cdimage.debian.org/mirror/cdimage/archive/12.6.0/amd64/iso-cd/SHA256SUMS"
http_directory = "./http/debian"
boot_wait      = "30s"
boot_command = [
  "<esc><wait>",
  "install ",
  " preseed/url=http://{{ .HTTPIP }}:{{ .HTTPPort }}/preseed.cfg ",
  "auto ", "locale=fr_FR.UTF-8 ",
  "kbd-chooser/method=fr ",
  "keyboard-configuration/xkb-keymap=fr ",
  "netcfg/get_hostname=debian ",
  "netcfg/get_domain=local ",
  "fb=false ",
  "debconf/frontend=noninteractive ",
  "console-setup/ask_detect=false ",
  "console-keymaps-at/keymap=fr ",
  "grub-installer/bootdev=/dev/sda ",
  "passwd/username=packer ",
  "passwd/user-fullname=packer ",
  "passwd/user-password=packer ",
  "passwd/user-password-again=packer ",
  "<enter>"
]
provisioner = [
  "userdel --remove --force packer"
]
