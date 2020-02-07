# Git Terminal Commands

## Show The Status of Files in the Repo

```bash
git status
```

---

## Clone a Branch

```bash
git clone git@github.com:<GITHUB_USERNAME>/<GITHUB_REPO_NAME>[.git]
```

or

```bash
git clone https://www.github.com/code-warrior/github-test.git
```

Using the `https` protocol doesn’t require an SSH key; the `git` protocol does.

---

## Create a New Branch

```bash
git branch <NAME_OF_NEW_BRANCH>
```

---

## Set an Upstream Branch for the New Branch

```bash
git push origin --set-upstream <NAME_OF_NEW_BRANCH>
```

or

```bash
git push origin -u <NAME_OF_NEW_BRANCH>
```

---

## Switch Into a Branch

```bash
git checkout <NAME_OF_BRANCH>
```

---

## Create a New Branch and Switch to it

```bash
git checkout -b <NAME_OF_NEW_BRANCH>
```

---

## Delete a Local Branch

```bash
git branch -d <NAME_OF_BRANCH>
```

---

## Delete a Remote Branch

```bash
git push origin --delete <NAME_OF_BRANCH>
```

---

## Merge a Branch Into the Current Branch

```bash
git merge <OTHER_BRANCH>
```

---

## To Track New Files or to Stage Modified Files

```bash
git add <FILE_OR_FOLDER>
```

---

## Commit Changes

```bash
git commit -m '50-60-CHAR_MESSAGE_HERE'
```

Or, you can skip the staging area as follows:

```bash
git commit -a -m '50-60-CHAR_MESSAGE_HERE'
```

**Note**: This doesn’t apply to untracked files

---

## Show Changes Sitting in the Working Tree/Directory

```bash
git diff
```

---

## Show Changes Sitting in the Index

```bash
git diff --cached
```

---

## Check for Whitespace Errors Before Committing

```bash
git diff --check
```

---

## Discard Changes in The Working Tree/Directory

```bash
git checkout . # Discard everything in the current folder
```

Or

```bash
git checkout <SPECIFIC_FILE_OR_FOLDER>
```

---

## Move Changes from the Staging Area/Index to the Working Tree/Directory

```bash
git reset
```

---

## Push Changes to Remote

```bash
git push
```

---

## Pull Changes from Remote

```bash
git pull
```

---
