resource "local_file" "test" {
  filename = "test.txt"
  content = "This is to test"
  file_permission = "0700"
}