# openQA development script

This repo contains scripts that i found useful during the openQA development

## Git hooks
Clone the repository in the same directory where you cloned your openQA/os-autoinst repo

    git clone https://github.com/mudler/openqa-devscripts.git

Install the githook in openQA/os-autoinst repo

    cd openQA
    ln -s ../../../openqa-devscripts/git_hooks/pre-commit.sh .git/hooks/pre-commit
    cd ../os-autoinst
    ln -s ../../../openqa-devscripts/git_hooks/pre-commit.sh .git/hooks/pre-commit

## Bins

### Test local changes in your system instance (or copy the changed files to a new position)

This tiny scripts just copies the files that where modified in your local git instance to the system one.

*N.B. if you committed with git the changes already, this won't work.*

While overwriting system file is not considered safe, this is considered useful just for testing purposes.

#### Install

Create a symlink to the script in the root of your openQA git repo

     ln -s ../openqa-devscripts/bin/test_changes ./

Run `test_changes` to copy the modified files to your running instance
