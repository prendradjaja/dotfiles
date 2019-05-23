import sys
import os

assert len(sys.argv) == 2

raw_url = sys.argv[1]

class FORMATS:
    BITBUCKET = 'https://bitbucket.org'
    GITHUB = 'https://github.com'

def fix(raw_url, format):
    """
    >>> fix('https://bitbucket.org/prendradjaja/foo', \
            FORMATS.BITBUCKET)
    'https://prendradjaja@bitbucket.org/prendradjaja/foo.git'
    >>> fix('https://github.com/prendradjaja/foo', \
            FORMATS.GITHUB)
    'https://github.com/prendradjaja/foo.git'
    """
    if format == FORMATS.BITBUCKET:
        _, _, _, user, repo, _ = raw_url.split('/')
        return 'https://{user}@bitbucket.org/{user}/{repo}.git'.format(**{
            'user': user,
            'repo': repo })
    elif format == FORMATS.GITHUB:
        _, _, _, user, repo = raw_url.split('/')
        return 'https://github.com/{user}/{repo}.git'.format(**{
            'user': user,
            'repo': repo })
    else:
        print('Whatcha doin')
        exit(1)

if raw_url.startswith(FORMATS.BITBUCKET):
    url = fix(raw_url, FORMATS.BITBUCKET)
elif raw_url.startswith(FORMATS.GITHUB):
    url = fix(raw_url, FORMATS.GITHUB)
else:
    print('Failed: URL format not recognized. URL should start with one of:')
    all_prefixes = (getattr(FORMATS, attr) for attr in dir(FORMATS)
            if not attr.startswith('_'))
    for each in all_prefixes:
        print(each)
    exit(1)

os.system('git remote add origin {} && git push -u origin master'.format(url))
