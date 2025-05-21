resource "local_file" "pet" {
  filename = "pet.txt"
  content = "We love pets!"
}

resource "random_pet" "my-pet" {
  prefix = "Mrs"
  separator = "."
  length = 1
}
