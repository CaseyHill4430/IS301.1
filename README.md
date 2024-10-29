# IS301.1 Set up a remote Git repository
Week 4 Assignment

## Steps

### 1. Create a New Repository on GitHub

1. Go to [GitHub](https://github.com).
2. Click on the plus sign in the upper-right corner.
3. Select **New Repository**
4. Create a name for your repository.
5. Set visibility: **Public** or **Private**.
6. Click **Create repository**.

> Always initialize the repository with a `README.md` for accessibility.

### 2. Link Your Local Project to the Remote Repository

To link your existing project with the new GitHub repository, use the following commands while in your local dir:

```bash
git init
git add .
git commit -m "Initial commit"
```

Add your GitHub repository as the remote origin
```bash
git remote add origin <repository_url>
```

Push your code from your local repository to your remote repo (using the '-u' to set the upstream branch which will avoid having to specify the remote branch every time you push or pull).
```bash
git push -u origin main
```

You can also use the following if you would rather not set main or the selected branch as the default upstream:
```bash
git push origin <branch name>
```

### Here is a cute image

<img src="https://i.kym-cdn.com/photos/images/newsfeed/001/157/768/f98.png" alt="pokemon raichu looking overwhelmed" width="150" height="150">
