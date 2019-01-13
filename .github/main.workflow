workflow "New workflow" {
  on = "push"
  resolves = ["ACTION1"]
}

action "ACTION1" {
  uses = "./action-a"
  args = "\"Hello world, $SECRET_TEXT!\""
  secrets = ["SECRET_TEXT"]
}
