assert = require 'assert'

MyModel = require('../src/mymodel.coffee').model

describe 'mymodel', ->
    mymodel = undefined

    beforeEach (done) ->
        mymodel = new MyModel name: 'foo-bar'
        done()

    describe 'name', ->
        it 'should have name', (done) ->
            assert.equal 'foo-bar', mymodel.get 'name'
            done()

    describe 'count', ->
        it 'should have count', (done) ->
            assert.equal 0, mymodel.currentCount()
            done()
        it 'should increment count', (done) ->
            mymodel.incr()
            assert.equal 1, mymodel.currentCount()
            done()
        it 'should decrement count', (done) ->
            mymodel.decr()
            assert.equal -1, mymodel.currentCount()
            done()
