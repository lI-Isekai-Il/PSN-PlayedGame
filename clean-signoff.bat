@echo off
echo Removing Signed-off-by lines from history...
git filter-repo --message-callback "import re; return re.sub(br'Signed-off-by:.*', b'', message)" --force
git push --force --all
git push --force --tags
echo Done.
pause
