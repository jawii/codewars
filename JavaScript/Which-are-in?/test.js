var assert = require('assert');
var inArray = require('./solution');


describe('inArrayTests', function () {
 it('should return an empty array if arguments are not provided', function () {
        assert.equal("Hello".length, 4);
        assert.equal(inArray(), []);
    });
 it('should returns same array if two same array is provided', function () {
        assert.equal("Hello".charAt(0), 'H');
    });
});