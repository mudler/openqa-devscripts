# openQA development script

This repo contains scripts that i found useful during the openQA development

## Git hooks
Clone the repository in the same directory where you cloned your openQA/os-autoinst repo

    git clone https://github.com/mudler/openqa-devscripts.git
    cd ..

Install the githook in openQA/os-autoinst repo
    cd openQA
    ln -s ../../../openqa-devscripts/git_hooks/pre-commit.sh .git/hooks/pre-commit
    cd ../os-autoinst
    ln -s ../../../openqa-devscripts/git_hooks/pre-commit.sh .git/hooks/pre-commit
