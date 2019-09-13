resource "local_file" "foo" {
  filename = "${path.module}/foo.file"
  content = "and now for something completely different"
}

data "local_file" "foo" {
  filename = "${path.module}/foo.file"
}

output "local_content" {
  value = "${data.local_file.foo.content}"
}
