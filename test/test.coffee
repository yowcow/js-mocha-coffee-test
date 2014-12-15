assert = require 'assert'

myfunc = require '../src/myfunc.coffee'

describe 'myfunc', ->
    describe 'add', ->
        it 'should add two values', ->
            assert.equal 4, myfunc.add(2, 2)
        it 'should add multiple values', ->
            assert.equal 6, myfunc.add(3, 2, 1)
