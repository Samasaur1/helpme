read -p "Are you sure you want to uninstall helpme? (y/N) " -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    echo "OK, not installing"
    exit 0
fi

echo "OK, removing scripts from /usr/local/bin/"
rm /usr/local/bin/helpme
rm /usr/local/bin/helpme-edit
rm /usr/local/bin/helpme-delete
rm /usr/local/bin/helpme-create
rm /usr/local/bin/helpme-completions
rm /usr/local/bin/helpme-list
echo "...done"

echo

echo "Reoving completion script from ~/.bash_completion.d"
rm ~/.bash_completion.d/helpme_complete.sh
echo "...done"

echo

read -p "Do you also want to delete your helpmes (stored in ~/.helpme)? (y/N) " -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    echo "OK, keeping them"
    echo "Uninstalled"
    exit 0
fi

echo "OK, removing helpmes"
rm -r ~/.helpme
echo "...done"

echo

echo "Uninstalled"