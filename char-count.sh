#! /bin/bash
echo 'proposal.md contains'
cat proposal.md | tr -d " \t\n\r#" | wc -m
echo 'characters'
