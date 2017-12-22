import os

cur = dir(os)
for i, f in enumerate(cur, start=1):
    print("%d: %s" % (i, f))