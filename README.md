# helpme
Run `sh install.sh` to install all the parts of helpme. Then run `helpme-create [TOPIC]` to create helpmes, `helpme [TOPIC]` to read it, `helpme-delete` and `helpme-edit` are obvious. You should never need to manually run either of the completion scripts.

If you don't have anything in `~/.bash_completion.d/`, you may need to add `source .bash_completion` to `.bash_profile` and add this script to your home directory:
```bash
for bcfile in ~/.bash_completion.d/* ; do
  source $bcfile
done
```
as `.bash_completion`
