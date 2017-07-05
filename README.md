Git Learning and Shortcuts Scratchpad
======================================

Anything I learn about Git which I think will be of future use (particularly if I can adapt it into a Bash alias / function) here:

| CLI Alias               | Description                                                                   |
| :---------------------: |:------------------------------------------------------------------------------|
| GIT1                    | Does a `git config --global user.name "Jaran F"`                              |
| GIT2                    | Does a `git config --global user.email "me@myEmailAddress.com"`               |
| GIT3                    | Does a `git config credential.helper cache`                                   |
| GIT4                    | Does a `git config credential.helper 'cache --timeout=7200'                   |
| gs                      | Does a `git status`                                                           |
| ga                      | Does a `git add .`                                                            |
| gpull                   | Does a `git pull origin master`                                               |
| gpush                   | Does a `git push origin master`                                               |
| gls                     | **Usage:** **`gls`**<br> Lists all the internal hash representations Git makes for itself internally in<br> your git project. You have to be in the root of your Git project for it to work. |
|                         |                                   |
| gac                     | **Usage:** **`gac` `<`*commit_msg*`>`**<br>Does a `git add .` and then a `git commit -m <msg>` all in one fell swoop |
| gar                     | **Usage:** **`gar` `<`*remote_repo_path*`>`**<br>Does a `git add remote`           |

## Notes
The `gls` command is useful if you are just starting to learn git or want a quick refresher on how it organises things internally (i.e. Blobs, Trees and Commits etc.)

The usefulness of `gar` is if you are in the habit of frequently making new repos (obviosuly a different sub-directory for each one) on the *SAME* server via<br>
`git init --bare --shared`<br>
`git update-server-info `<br>
Obviously, the first part of the argument won't change that much i.e. `ssh://GIT_USERNAME@HOST:__PORT__/common_repo_path` so to save you from having to type all that you can use this command and just supply the sub-directory path to the new repo. 

