workflow "New workflow" {
  on = "push"
  resolves = ["ACTION2"]
}

action "ACTION1" {
  uses = "./action-a"
  args = "\"Hello world, I'm Action1!\""
}

action "ACTION2" {
  needs = "ACTION1"
  uses = "./action-a"
  args = "\"Hello world, I'm Action2!\""
}
