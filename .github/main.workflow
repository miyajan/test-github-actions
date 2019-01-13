workflow "New workflow" {
  on = "push"
  resolves = ["ACTION1"]
}

action "ACTION1" {
  uses = "./action-a"
  args = "Hello world, $(curl -s -X GET -H \"Authorization: token ${GITHUB_TOKEN}\" https://api.github.com/repos/miyajan/test-github-actions/commits)"
  secrets = ["GITHUB_TOKEN"]
}
