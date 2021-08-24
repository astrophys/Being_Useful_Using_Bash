# Author : Ali Snedden
# Date   : 8/24/2021
# Purpose: Create some complex data... to illustrate find on
# Debug  : Did some cursory tests. Should work..
# To Run : `python generate-fake-files.py`
#
#import os  ## os.popen has been deprecated
import sys
import os
import random
import string

random.seed(42)


def exit_w_error(String):
    """ 
    ARGS:
    RETURN:
    DESCRIPTION:
    DEBUG:
    FUTURE:
        1. Test if I could instead send an email, then die when error occurs
    """
    sys.stderr.write("ERROR!!! {}\n".format(String))
    sys.exit(1)


def rand_str(NChar=None):
    """ 
    ARGS:
    RETURN:
    DESCRIPTION:
    DEBUG:
    FUTURE:
        1. Test if I could instead send an email, then die when error occurs
    """
    rndStr= ''.join(random.choice(string.ascii_lowercase + string.digits) for _ in range(NChar))
    return(rndStr)


def main():
    """ 
    ARGS:
    RETURN:
    DESCRIPTION:
    DEBUG:
    """
    dirname="fake-data"
    os.mkdir(dirname)
    nFiles=11
    nLines=100
    for i in range(nFiles):
        # https://stackoverflow.com/a/2257449/4021436
        rndStr= rand_str(6)
        fname="{}/file_{}_{}.txt".format(dirname,i,rndStr)
        print("Writing....{}".format(fname))
        fout = open(fname,"w+")
        for n in range(nLines):
            rndStr= rand_str(70)
            fout.write("{}\n".format(rndStr))
        fout.close()
            

    ### Finish
    sys.exit(0)

if __name__ == "__main__":
    main() 
