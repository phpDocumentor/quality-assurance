# phpDocumentor QA tools

This repository contains the docker definitions for the images used in
phpDocumentor repositories to run github [workflows]. 

All images defined in this repository can be used as is. 

Any folder with a "Makefile" is considered adocker-based action that can be built. 
To build the actions you can use `make build` command, this will build all actions locally.

This way you can test your new action, and when you are ready to push them you can either invoke `make publish`, or
push these changes to the repository; in this case the images get built and pushed automatically. 

[workflows]: https://help.github.com/en/articles/creating-a-workflow-with-github-actions
