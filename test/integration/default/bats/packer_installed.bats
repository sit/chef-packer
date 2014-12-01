#!/usr/bin/env bats

@test "packer binary is found in PATH" {
  run which packer
  [ "$status" -eq 0 ]
}
