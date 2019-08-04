var expect = require('chai').expect;
var should = require('chai').should;

var inArray = require('./solution').inArray;


describe('inArrayTests', function () {

    it('should return an empty array with no arguments', function () {    
        var expectedResult = [];
        var returnValue = inArray();

        expect(returnValue).is.eql(expectedResult);
    });

    it('should returns same array with two same arrays', function () {
        var a1 = ["2"];
        var a2 = ["2"];
        var result = ["2"];  

        var returnValue = inArray(a1, a2);

        expect(inArray(["2"], ["2"])).is.eql(["2"]);
    });

    it('should return items exact match', function() {
        let returnValue = inArray(["ok"], ["yep", "no", "ok"]);
        expect(returnValue).is.eql(["ok"]);
    });

    it('should return all substrings without duplicates', function() {
        var a1 = ["arp", "live", "nice"];
        var a2 = ["harp", "sharp", "lively"];
        var result = ["arp", "live"];  

        var returnValue = inArray(a1, a2);
        expect(returnValue).is.eql(result);
    });

    it('should return in right order', function() {
        var a1 = ["abc", "def", "ghj"];
        var a2 = ["abc", "ghj", "def"];
        var result = a1

        var returnValue = inArray(a1, a2);
        expect(returnValue).is.eql(result);
    })
});