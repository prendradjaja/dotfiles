import subprocess

def get_branch():
    return (subprocess.check_output('git rev-parse --abbrev-ref HEAD'.split())
            .decode('utf-8')
            .strip())
