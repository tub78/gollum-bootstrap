

# Gollum Bootstrap
## Requirements

 1. Ruby (in particular, the `gem` command)
 2. Repository hosted on GitHub
 3. Wiki has been initialized on GitHub



# Your Project Wiki
## 1. Clone Your Project Repository

_On your local system:_

``` bash
  git clone https://github.com/USER/PROJECT.git PROJECT-REPO
```

## 2. Clone Your Wiki

_From your project repository:_

Run [clone-wiki.sh][clone-wiki.sh] to clone your repository's wiki using the following commands^1:

``` bash
  REMOTE=$(git config --get remote.origin.url)
  WIKIREMOTE=$(dirname $REMOTE)/$(basename $REMOTE .git).wiki.git
  git clone $WIKIREMOTE wiki
  echo "wiki/" >> .gitignore
```

After cloning, look for the default `Home.md` file under `wiki/`.


## 3. Edit/Publish Your Wiki

_From your wiki repository:_

``` bash
  echo "" >> Home.md
  echo "Hello world" >> Home.md
  git commit -a -m "Test"
  git push -u origin master
```


# Local Previews
## 1. Clone **Gollum Bootstrap**

_From your project repository:_

``` bash
  git clone https://github.com/tub78/gollum-bootstrap.git gollum-bootstrap
  echo "gollum-bootstrap" >> .gitignore
```


## 2. Install Gollum

The recommended way to install the Ruby framework [Gollum][Gollum] is with [Bundler][Bundler].  Bundler is a Ruby package manager that installs Gollum via a set of Gems listed in [Gemfile][Gemfile].

[Bundler]: http://gembundler.com/
[Gollum]: https://github.com/github/gollum

_From the gollum-bootstrap directory:_

 1. Run [install-bundler.sh][install-bundler.sh] to install Bundler.  This just executes the following command:

``` bash
  gem install bundler
```

 2. Run [install-gollum.sh][install-gollum.sh] to install Gollum.  This executes the following commands:

``` bash
  bundle install --path vendor/bundle
  bundle install --binstubs bin
```


## Browsing

_From your project repository:_

 1. Run Gollum ...

``` bash
  gollum-bootstrap/bin/gollum wiki/
```

 2. Navigate to [http://localhost:4567](http://localhost:4567)


**[1]**:
You will get an error if you have not clicked on the "Wiki" tab under your GitHub repository.

 > fatal: https://github.com/USER/PROJECT.wiki.git/info/refs not found: did you run git update-server-info on the server?




