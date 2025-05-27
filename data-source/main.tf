resource "local_file" "pet" {
  filename = var.resource_filename
  content  = data.local_file.dog.content
}

data "local_file" "dog" {
  filename = var.data_source_filename
}