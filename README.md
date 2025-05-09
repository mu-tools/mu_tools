# mu_tools

## dev notes

### Submodules

#### To add a submodule to mu_tools:

```
r@MacBookPro mu_tools % git submodule add git@github.com:mu-tools/mu_string.git
Cloning into '/Users/r/Projects/mu_tools/git/mu_tools/mu_string'...
remote: Enumerating objects: 18, done.
remote: Counting objects: 100% (18/18), done.
remote: Compressing objects: 100% (17/17), done.
remote: Total 18 (delta 1), reused 18 (delta 1), pack-reused 0 (from 0)
Receiving objects: 100% (18/18), 64.02 KiB | 851.00 KiB/s, done.
Resolving deltas: 100% (1/1), done.

% git commit -m "added submodules"
% git push origin main
```

#### To update all submodules:

```
git submodule update --remote --merge
```

#### Adding a new submodule:

```
git submodule update --init --recursive
```

#### When cloning the meta repository:

```
git clone --recurse-submodules git@github.com:mu-tools/mu_tools.git
```

### SSH authentication


