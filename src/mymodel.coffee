Backbone = require 'backbone'

class MyModel extends Backbone.Model
    defaults:
        name: 'no-name'
    initialize: () -> @count = 0
    incr: () -> @count += 1
    decr: () -> @count -= 1
    currentCount: () -> @count

module.exports =
    model: MyModel
