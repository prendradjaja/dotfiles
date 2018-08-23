import subprocess
import os
import re

branch = subprocess.check_output(['git', 'rev-parse', '--abbrev-ref', 'HEAD']).decode('utf-8').strip()

# feature/something
# prebase/something--N
# other/something/x
formats = [
    r'other/([^/]+)/[^/]*',
    r'feature/([^/]+)',
    r'prebase/([^/]+)--\d+',
]

for f in formats:
    match = re.fullmatch(f, branch)
    if match:
        core_branch = match.group(1)
        break
else:
    print('Could not find core branch name')
    exit(1)

print('Using core branch name:', core_branch)
print()
os.system('git stash list | grep {cb}'.format(cb=core_branch))
