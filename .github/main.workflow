workflow "New workflow" {
  on = "push"
  resolves = ["ACTION2"]
}

action "ACTION1" {
  uses = "./action-a"
  env = {
    MY_NAME = "Mona"
  }
  args = "\"Hello world, I'm $MY_NAME!\""
}

action "ACTION2" {
  uses = "./action-a"
  args = "\"Hello world, I'm $(cat /github/home/test.txt)!\""
  needs = ["ACTION1"]
}
