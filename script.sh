#!/usr/bin/bash
rm -Rf ~/repo1/*
rm -Rf ~/repo1/.git
rm -Rf ~/repo2/*
rm -Rf ~/repo2/.git
git clone -b main https://gitlab.com/staskuznetsov/site.git ~/repo1
git clone -b dev https://gitlab.com/staskuznetsov/site.git ~/repo2
ansible-playbook prod1.yml
ansible-playbook prod2.yml
