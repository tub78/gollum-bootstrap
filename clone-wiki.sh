
REMOTE=$(git config --get remote.origin.url)
WIKIREMOTE=$(dirname $REMOTE)/$(basename $REMOTE .git).wiki.git

echo Running: git clone $WIKIREMOTE wiki
git clone $WIKIREMOTE wiki
echo "wiki/" >> .gitignore


