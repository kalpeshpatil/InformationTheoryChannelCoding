#!/bin/sh
export VOLK_GENERIC=1
export GR_DONT_LOAD_PREFS=1
export srcdir=/home/kalpesh/sem8/ee708/project/InformationTheoryChannelCoding/gaussian_codebook/gr-gaussian_codebook/python
export GR_CONF_CONTROLPORT_ON=False
export PATH=/home/kalpesh/sem8/ee708/project/InformationTheoryChannelCoding/gaussian_codebook/gr-gaussian_codebook/build/python:$PATH
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH
export PYTHONPATH=/home/kalpesh/sem8/ee708/project/InformationTheoryChannelCoding/gaussian_codebook/gr-gaussian_codebook/build/swig:$PYTHONPATH
/usr/bin/python2 /home/kalpesh/sem8/ee708/project/InformationTheoryChannelCoding/gaussian_codebook/gr-gaussian_codebook/python/qa_gaussian_codebook_ff.py 
