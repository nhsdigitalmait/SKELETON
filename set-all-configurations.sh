#/bin/bash
configDirectory=$PWD
if [ -z "$1" ]
  then
	echo "No config directory supplied. Assuming '" $configDirectory "' as config directory."
  else
    configDirectory=$1
fi

# Update all instances of local dir with docker image directories for all config/contrib entries
#sed -i -e 's|TKW_ROOT/|/home/service/TKW/|g' ${configDirectory}/tkw-x.properties

# Update all output directories with docker image volume directories
#sed -i -e "/^tks.validator.reports/c\tks.validator.reports /home/service/data/all_evidence" ${configDirectory}/tkw-x.properties
#sed -i -e "/^tks.savedmessages/c\tks.savedmessages /home/service/data/all_evidence" ${configDirectory}/tkw-x.properties

# Update Simulator ruleset with docker image directories
#sed -i -e 's|TKW_ROOT/|/home/service/TKW/|g' ${configDirectory}/simulator_config/test_tks_rule_config.txt
# Update Validator ruleset with docker image directories
#sed -i -e 's|TKW_ROOT/|/home/service/TKW/|g' ${configDirectory}/validator_config/validator.conf
