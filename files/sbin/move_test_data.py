#!/usr/bin/python
import os
import zipfile
import zlib
import datetime
import re
import time


TEST_PATH = '/local_rw/usr/local/wmd/test_data/'

compression = zipfile.ZIP_DEFLATED
now = datetime.datetime.now().strftime('%H_%M_%S')
zip_regex = re.compile('.*\.zip')

os.chdir(TEST_PATH)

zf = zipfile.ZipFile('%s.zip'%str(now), mode='w')

for f in os.listdir('./'):
  if os.stat(os.path.join('./',f)).st_mtime < (int(time.time()) - 43200):
    os.remove(os.path.join('./',f))
    print 'Removed %s' % f
    continue
  if re.match(zip_regex, f):
    print 'Skipping %s' % f
    continue
  try:
    zf.write(os.path.join('./',f), compress_type=compression)
    os.remove(os.path.join('./',f))
    print 'Compressed and removed %s' % f
  except:
    print 'Zipping archive broke'
zf.close()
