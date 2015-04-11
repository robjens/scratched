#! /bin/sh
#
# elastic.sh
# Copyright (C) 2015 susy <susy@simbad>
#
# Distributed under terms of the MIT license.
#

# assumes already set up and running Elasticsearch on your local machine, listening on port 9200

# Start replicating from MongoDB to Elasticsearch using the following command:

mongo-connector -m localhost:27017 -t localhost:9200 -d mongo_connector/doc_managers/elastic_doc_manager.py




