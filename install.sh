echo "Making all scripts executable..."
chmod +x helpme*
echo "...done"

echo

echo "Moving scripts to /usr/local/bin/ ..."
cp helpme.py /usr/local/bin/helpme
cp helpme-edit.py /usr/local/bin/helpme-edit
cp helpme-delete.py /usr/local/bin/helpme-delete
cp helpme-create.py /usr/local/bin/helpme-create
cp helpme-completions.py /usr/local/bin/helpme-completions
cp helpme-list.sh /usr/local/bin/helpme-list
echo "...done"

echo

echo "Moving completion script into ~/.bash_completion.d ..."
mkdir ~/.bash_completion.d
cp helpme_complete.sh ~/.bash_completion.d/
echo "...done"

echo

echo "Installed"
