
[Bundler]: http://gembundler.com/
[Gollum]: https://github.com/github/gollum
[rbenv]: https://github.com/sstephenson/rbenv

[clone-wiki.sh]: https://github.com/tub78/gollum-bootstrap/blob/master/clone-wiki.sh
[install-bundler.sh]: https://github.com/tub78/gollum-bootstrap/blob/master/install-bundler.sh
[install-gollum.sh]: https://github.com/tub78/gollum-bootstrap/blob/master/install-gollum.sh
[commit.sh]: https://github.com/tub78/gollum-bootstrap/blob/master/commit.sh 
[publish.sh]: https://github.com/tub78/gollum-bootstrap/blob/master/publish.sh 
[Gemfile]: https://github.com/tub78/gollum-bootstrap/blob/master/Gemfile

# Accessing Your GitHub Repository Wiki
## Requirements

 1. Repository hosted on GitHub
 2. Wiki initialized on GitHub

## 1. Clone Your Project Repository

_On your local system:_

``` bash
  git clone https://github.com/USER/PROJECT.git PROJECT-REPO
```

## 2. Clone **Gollum Bootstrap**

_From your **project repo**:_

``` bash
  git clone https://github.com/tub78/gollum-bootstrap.git gb
  echo "gb" >> .gitignore
```


## 3. Clone Your Wiki

_From your **project repo**:_

Run the following commands to clone the GitHub wiki. These commands are included in [clone-wiki.sh][clone-wiki.sh], which you can run instead. *[1]*

``` bash
  REMOTE=$(git config --get remote.origin.url)
  WIKIREMOTE=$(dirname $REMOTE)/$(basename $REMOTE .git).wiki.git
  git clone $WIKIREMOTE wiki
  echo "wiki/" >> .gitignore
```

After cloning, look for the default `Home.md` file under `wiki/`.


## 4. Edit & Publish Your Wiki

_From your **wiki** repository:_

Try this:

``` bash
  echo "" >> Home.md
  echo "Hello world" >> Home.md
```

then run [commit.sh][commit.sh]:

``` bash
  git commit -a -m "Test"
```

and publish the page with [publish.sh][publish.sh]:

``` bash
  git push -u origin master
```



# Local Previews
## Requirements

 1. Ruby installation including `gem` executable

## 1. Install Gollum

The recommended way to install the Ruby framework [Gollum][Gollum] is with [Bundler][Bundler].  Bundler is a Ruby package manager that installs Gollum via a set of Gems listed in [Gemfile][Gemfile].  Knowledge of Ruby and installation of gems is required.  I recommend configuring your Ruby installation with [rbenv][rbenv].

_From the **gb** directory:_

Run [install-bundler.sh](https://github.com/tub78/gollum-bootstrap/blob/master/install-bundler.sh) to install Bundler.  This just executes the following command:

``` bash
  gem install bundler
```

Next, run [install-gollum.sh][install-gollum.sh] to install Gollum, executing the following commands:

``` bash
  bundle install --path ../vendor/bundle
  bundle install --binstubs ../bin
  echo "vendor/" >> ../.gitignore
  echo "bin/" >> ../.gitignore
```


## 2. View

To view a local instance of your wiki, run gollum.  Once the Gollum server is initialized, navigate to [http://localhost:4567](http://localhost:4567).  Gollum only serves pages that have been committed to the repository.

_From your **project repo**:_

``` bash
  bin/gollum wiki/
```


### Notes

**[1]**:
You will get an error if you have not clicked on the "Wiki" tab under your GitHub repository.

    fatal: https://github.com/USER/PROJECT.wiki.git/info/refs not found: did you run git update-server-info on the server?




