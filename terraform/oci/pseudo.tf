variable "samples" {
  type = map(any)
  default = {
    us   = ["New York", "San Francisco"],
    emea = ["London", "Paris"],
    apac = ["Sydney", "Singapore"],
  }
}

/*
resource "pseudo_resource" "psudo" {
  region_name = var.region_name
  city {
    city_name = var.city_name
  }
}

Ex) Using var.samples, create pseudo resources like - 
resource "pseudo_resource" "psudo" {
  region_name = "us"
  city {
    city_name = "New York"
  }
  city {
    city_name = "San Francisco"
  }
}
...
..
*/