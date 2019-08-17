var expect = require("chai").expect;
var should = require("chai").should;

var tortoiseRace = require("../2_TortoiseRacing/2_TortoiseRacing").race;

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

  it("testcase4", function() {
    expect(tortoiseRace(720, 850, 37)).is.eql([0, 17, 4]);
  });

  it("null if chaser has lower speed", function() {
    expect(tortoiseRace(2, 1, 10)).is.eql(null);
  });
});
