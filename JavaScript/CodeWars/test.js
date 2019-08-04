var expect = require("chai").expect;
var should = require("chai").should;

var tortoiseRace = require("./2_TortoiseRacing").race;
describe("tortoiceRaceTets", function() {
  it("should return an empty array with no arguments", function() {
    var expectedResult = [];
    var returnValue = tortoiseRace();

    expect(returnValue).is.eql(expectedResult);
  });

  it("testcase1", function() {
    var expectedResult = [0, 32, 18];
    var returnValue = tortoiseRace(720, 850, 70);
    expect(returnValue).is.eql(expectedResult);

    expectedResult = [3, 21, 49];
    returnValue = tortoiseRace(80, 91, 37);
    expect(returnValue).is.eql(expectedResult);
  });

  it("testcase2", function() {
    var expectedResult = [3, 21, 49];
    var returnValue = tortoiseRace(80, 91, 37);
    expect(returnValue).is.eql(expectedResult);
    //Test.assertSimilar(race(80, 100, 40), [2, 0, 0]);
  });

  it("testcase3", function() {
    expect(tortoiseRace(820, 850, 550)).is.eql([18, 20, 0]);
  });

  it("null if chaser has lower speed", function() {
    expect(tortoiseRace(2, 1, 10)).is.eql(null);
  });
});

/*
var inArray = require("./1_whicharein").inArray;
describe("inArrayTests", function() {
  it("should return an empty array with no arguments", function() {
    var expectedResult = [];
    var returnValue = inArray();

    expect(returnValue).is.eql(expectedResult);
  });

  it("should returns same array with two same arrays", function() {
    var a1 = ["2"];
    var a2 = ["2"];
    var result = ["2"];

    var returnValue = inArray(a1, a2);

    expect(inArray(["2"], ["2"])).is.eql(["2"]);
  });

  it("should return items exact match", function() {
    let returnValue = inArray(["ok"], ["yep", "no", "ok"]);
    expect(returnValue).is.eql(["ok"]);
  });

  it("should return all substrings without duplicates", function() {
    var a1 = ["arp", "live", "nice"];
    var a2 = ["harp", "sharp", "lively"];
    var result = ["arp", "live"];

    var returnValue = inArray(a1, a2);
    expect(returnValue).is.eql(result);
  });

  it("should return in right order", function() {
    var a1 = ["abc", "def", "ghj"];
    var a2 = ["abc", "ghj", "def"];
    var result = a1;

    var returnValue = inArray(a1, a2);
    expect(returnValue).is.eql(result);
  });
});
*/
