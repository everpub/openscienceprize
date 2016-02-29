#! /bin/bash
echo 'proposal.md contains'
cat proposal.md | tr -d " \t\n\r#" | wc -m
echo 'characters'
echo 'abstract.md contains'
wc -w abstract.md 
echo 'words'
