resource "local_file" "pet" {
  filename = var.filename
  content = "We love ${random_pet.my-pet.id}"
}

resource "random_pet" "my-pet" {
  prefix = var.prefix[0]
  separator = var.separator
  length = var.length
}

output "pet-name" {
  value = random_pet.my-pet.id
}