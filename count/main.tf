resource "local_file" "test" {
  filename = var.filename[count.index]
  count = length(var.filename)
}