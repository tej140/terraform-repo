variable "filename" {
  default = "/root/pets.txt"
  type = string
}

variable "content" {
  default = "We love pets!"
  type = string
}

variable "prefix" {
  default = ["Mrs","Mr","Sir"]
  type = list
}

variable "separator" {
  default = "."
  type = string
}

variable "length" {
  default = "1"
  type = string
}

variable "file-content" {
  type = map
  default = {
    "statement1" = "We love pets!"
    "statement2" = "We love animals!"
  }
}

variable "bella" {
  type = object({
    name = string
    color = string
    age = number
    food = list(string)
    favorite_pet = bool
  })
  default = {
    name = "bella"
    color = "blue"
    age = 24
    food = [ "fish" , "chicken" , "turkey" ]
    favorite_pet = true
  }
}

variable "kitty" {
  type = tuple([ string ,number , bool ])
  default = [ "cat", 0, false ]
}