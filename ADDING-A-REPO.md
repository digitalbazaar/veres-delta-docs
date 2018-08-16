Here are the instructions for adding a new repo to this documentation set:

1. git submodule add https://github.com/digitalbazaar/[repo-name] [folder-name]
2. edit `.jsdoc-conf.json` and add the folder(s) containing the source files to the `include` array
3. if you want to change the title, edit `index/index.json`