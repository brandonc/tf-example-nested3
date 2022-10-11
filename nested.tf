

terraform {
  required_providers {
    nested = {
      source = "alisdair/nested"
    }
  }
}

resource "nested_single" "example" {
  name = "my_nested_single"

  sensitive_value = {
    bool = true
    string = "maybe bools aren't sensitive"
  }
}

resource "nested_list" "example" {
  name = "my_nested_list"

  sensitive_values = [
    {
      bool = true
      string = "maybe bools aren't sensitive"
    }
  ]
}
