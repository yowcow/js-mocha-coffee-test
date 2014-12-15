module.exports =
    add: () ->
        sum = 0
        sum += v for v in arguments
        sum
