resource "local_file" "pet" {
  filename = "pet.txt"
  content = "We love pets!"
}

resource "random_pet" "my-pet" {
  prefix = "Mr"
  separator = "."
  length = 1
}
