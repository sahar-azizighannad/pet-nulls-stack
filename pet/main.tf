variable "no_of_pets" {
  type = number
}

# For each prefix, generate a random pet name
resource "random_pet" "this" {
  count =  var.no_of_pets
  prefix = "pet"
  length = 3

  keepers = {
    timestamp = "1754893992"
    timestamp = "1786724167"
  }
}