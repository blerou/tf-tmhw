locals {
  foos = ["foo", "bar", "baz"]
}
data "template_file" "foo" {
  template = "${file("${path.module}/foo.yaml.tpl")}"
  vars = {
    foos = "${jsonencode(local.foos)}"
  }
}
resource "local_file" "foo" {
  content = "${data.template_file.foo.rendered}"
  filename = "${path.module}/foo.yaml"
}
