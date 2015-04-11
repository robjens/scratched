#!/usr/bin/env coffee
#

Cldr = require 'cldrjs'


Cldr.load(
  require('./node_modules/cldr-data/supplemental/likelySubtags') # JSON data from supplemental/likelySubtags.json
  require('./node_modules/cldr-data/main/en/ca-gregorian')       # JSON data from main/en-US/ca-gregorian.json
  require('./node_modules/cldr-data/main/nl/ca-gregorian')       # JSON data from main/nl-NL/ca-gregorian.json
  require('./node_modules/cldr-data/main/sr-Cyrl/ca-gregorian')  # JSON data from main/nl-NL/ca-gregorian.json
)

# American English
enUs = new Cldr('en-US')
console.log enUs.attributes.bundle # 'en-US'
console.log enUs.main('dates/calendars/gregorian/dateFormats/short') # 'M/d/yy'

# Dutch
nlNl = new Cldr('nl-NL')
console.log nlNl.attributes.bundle # 'nl-NL'
console.log nlNl.main('dates/calendars/gregorian/dateFormats/short') # 'dd/MM/y'

# Cyrilic Russian
#srRs = new Cldr('sr-Cyrl')
#console.log srRs.attributes.bundle # 'sr-Cyrl'
#console.log srRs.main('numbers/decimalFormats-numberSystem-latn/short/decimalFormat/1000-count-one')




