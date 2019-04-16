locals {
  uri = "https://MyUser:SecterPass@evil.com:666/path/to/hell"
  parts = "${split("/", local.uri)}"
  userdomain1 = "${element(local.parts, 2)}"
  userdomain = "${split("@", local.userdomain1)}"
  userpass1 = "${element(local.userdomain, 0)}"
  userpass = "${split(":", local.userpass1)}"
  username = "${element(local.userpass, 0)}"
  password = "${element(local.userpass, 1)}"
}

output "username" {
  value = "${local.username}"
}

output "password" {
  value = "${local.password}"
}
