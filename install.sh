echo "Making all scripts executable"
chmod +x helpme*

echo "Moving scripts to /usr/local/bin/"
mv helpme.py /usr/local/bin/helpme
mv helpme-edit.py /usr/local/bin/helpme-edit
mv helpme-delete.py /usr/local/bin/helpme-delete
mv helpme-create.py /usr/local/bin/helpme-create
mv helpme-completions.py /usr/local/bin/helpme-completions

echo "Moving completion script into ~/.bash_completion.d"
mkdir ~/.bash_completion.d || echo "~/.bash_completion.d already exists"
mv helpme_complete.sh ~/.bash_completion.d/

echo "Installed"
