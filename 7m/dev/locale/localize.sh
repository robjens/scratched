#! /bin/sh
#
# localize.sh
# Copyright (C) 2015 susy <susy@simbad>
#
# Distributed under terms of the MIT license.
#


npm i -g cldr cldr-data i18next-conv i18next-parser 

npm i globalize i18next cldr

i18next web/views #-> locales/(en|fr)/..json + old,

[ '!.git', '!node_modules' ] includes all directories except the '.git' and 'node_modules'.''''



npm npm install pos

