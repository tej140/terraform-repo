resource "local_file" "test" {
  filename = "test.txt"
  content = "This is to test"
  file_permission = "0700"
}

resource "local_sensitive_file" "games" {
  filename     = "favorite-games"
  content  = "FIFA 21"
}