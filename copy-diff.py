#!/usr/bin/env python

from __future__ import print_function
from __future__ import with_statement

import os
import shutil
import sys

BUFFER_SIZE = 1024

def is_file_different(a, b):
    if os.path.getsize(a) != os.path.getsize(b):
        # If the file size is different, the content must be different.
        return True

    # Read the content of the files, and compare them.
    with open(a, 'rb') as fa:
        with open(b, 'rb') as fb:
            while True:
                buff_a = fa.read(BUFFER_SIZE)
                buff_b = fb.read(BUFFER_SIZE)

                if buff_a != buff_b:
                    # File is different in this block.
                    return True

                if len(buff_a) < BUFFER_SIZE:
                    # Finished
                    break

    # File is the same.
    return False

def copyfile(src, dest):
    if not os.path.exists(src):
        raise ValueError('Source file not found')

    # Make parent directory (if necessary)
    destdir = os.path.dirname(dest)
    if not os.path.exists(destdir):
        try:
            os.makedirs(destdir)
        except os.error as e:
            raise ValueError('Unable to create directory ' + destdir)
    elif not os.path.isdir(destdir):
        raise ValueError(destdir + ' is not a directory')

    if not os.path.exists(dest) or is_file_different(src, dest):
        # If the destination file does not exist or the source file is
        # different from the destination file, then we copy the file.
        shutil.copyfile(src, dest)

def main():
    if len(sys.argv) < 3:
        print('USAGE:', sys.argv[0], '<srcfile> <destfile>', file=sys.stderr)
        sys.exit(1)

    srcfile = os.path.abspath(sys.argv[1])
    destfile = os.path.abspath(sys.argv[2])

    if srcfile == destfile:
        print('WARNING: <srcfile> is equal to <destfile>', file=sys.stderr)
    else:
        try:
            copyfile(srcfile, destfile)
        except ValueError as e:
            print('ERROR:', e, file=sys.stderr)
            sys.exit(1)

if __name__ == '__main__':
    main()
