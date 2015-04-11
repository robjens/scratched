#!/usr/bin/env coffee
#
#
#


pos = require 'pos'

words = new pos.Lexer().lex """
This is some sample text. This text can contain multiple sentences.
"""

taggedWords = new pos.Tagger().tag words


#for i in taggedWords
    #taggedWord = taggedWords[i]
    #word = taggedWord[0]
    #tag = taggedWord[1]
    #console.log word + " /" + tag







