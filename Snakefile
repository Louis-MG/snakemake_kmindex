"""
Pipeline for META-DIFF
"""

configfile: "./config.yaml"
ruleorder : kmindex_build

##########################################################
############            MAIN RULE            #############
##########################################################

rule all:
    input:
        config["project_path"] + "G/index.json"

##########################################################
###########            OTHER RULES            ############
##########################################################

include: f"{config['src_path']}/kmindex.snk"
