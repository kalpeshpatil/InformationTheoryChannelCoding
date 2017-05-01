#!/bin/sh
export VOLK_GENERIC=1
export GR_DONT_LOAD_PREFS=1
export srcdir=/home/kalpesh/sem8/ee708/project/InformationTheoryChannelCoding/gaussian_codebook_20/gr-gaussian_codebook_20/python
export GR_CONF_CONTROLPORT_ON=False
export PATH=/home/kalpesh/sem8/ee708/project/InformationTheoryChannelCoding/gaussian_codebook_20/gr-gaussian_codebook_20/build/python:$PATH
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH
export PYTHONPATH=/home/kalpesh/sem8/ee708/project/InformationTheoryChannelCoding/gaussian_codebook_20/gr-gaussian_codebook_20/build/swig:$PYTHONPATH
/usr/bin/python2 /home/kalpesh/sem8/ee708/project/InformationTheoryChannelCoding/gaussian_codebook_20/gr-gaussian_codebook_20/python/qa_gaussian_codebook_20_ff.py 
