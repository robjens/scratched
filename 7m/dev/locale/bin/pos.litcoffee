#!/usr/bin/env coffee

Copyright (C) 2015 SevenMatches
Author: Rob Jentzema <rob@sevenmatches.com>

# pos.coffee

The `Scope` class regulates lexical scope in CoffeeScript. As code is
generated, a tree of scopes is created which are of the same shape as the
nested functions. Each scope knows about variables declared within, and, holds
a reference to parent. As such we can always tell when we have new variables
and if they need `var` declare.

Pull some handy math functions first.

	{round, log, max, sin, cos} = Math


    exports.Scope = class Scope


The `root` is top-level **Scope** object for a given file. 

    	@root: null

Initialize scope with parent for lookups up the chain, as well as reference
block node it belongs to, which is where it should declare its variables, and
a reference to the function it belongs to.

		constructor: (@parent, @expressions, @method) ->
			@variables = [{name: 'arguments', type: 'arguments'}]
			@positions = {}
			Scope.root = this unless @parent

	#result = (item.name for item in array)

    pos = require 'pos'
    txt = "New player added"

    words = new pos.Lexer().lex(txt)

    console.log words



