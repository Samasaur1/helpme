echo "Making all scripts executable..."
chmod +x helpme*
echo "   done"

echo

echo "Moving scripts to /usr/local/bin/ ..."
mv helpme.py /usr/local/bin/helpme
mv helpme-edit.py /usr/local/bin/helpme-edit
mv helpme-delete.py /usr/local/bin/helpme-delete
mv helpme-create.py /usr/local/bin/helpme-create
mv helpme-completions.py /usr/local/bin/helpme-completions
mv helpme-list.sh /usr/local/bin/helpme-list
echo "   done"

echo

echo "Moving completion script into ~/.bash_completion.d ..."
mkdir ~/.bash_completion.d
mv helpme_complete.sh ~/.bash_completion.d/
echo "   done"

echo

echo "Installed"
