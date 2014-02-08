#!/bin/bash
#
# Run our web service
#

# working direct to set the path to our modules (not 
# the most efficient but it works)
export DOCC_HOME="$( cd "$( dirname "${BASH_SOURCE[0]}/"/)" && cd .. && pwd )"

echo -e "\n** starting service from $DOCC_HOME **\n"

# configuration
export PYTHONPATH=${DOCC_HOME}/docc:${PYTHONPATH}

# run
#python ${DOCC_HOME}/docc/service.py ${DOCC_HOME} ${DOCC_HOME}/conf/docc.conf
python ${DOCC_HOME}/docc/run.py ${DOCC_HOME} ${DOCC_HOME}/conf/docc.conf
