#!/bin/bash
# A Bash Script to get greg ready to execute for user
git clone git@gitlab.com:zuora/projects/engineering/data-platform/greg.git
cd greg
go mod init greg
go mod tidy
go install
export PATH=$PATH:$(go env GOPATH)/bin
echo SUCCESS
