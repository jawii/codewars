var expect = require("chai").expect;
var should = require("chai").should;

var isValidIP = require("../3_ipvalidation/3_ipvalidation").isValidIP;

describe("tortoiceRaceTets", function() {
  it("does not work with empty", function() {
    expect(isValidIP("")).to.be.false;
  });
  it("works with four numbers", function() {
    expect(isValidIP("0.0.0.0")).to.be.true;
    expect(isValidIP("12.255.56.1")).to.be.true;
  });

  it("does not work with letters", function() {
    expect(isValidIP("abc.def.ghi.jkl")).to.be.false;
  });

  it("does not count negative numbers", function() {
    expect(isValidIP("-1.0.0.0")).to.be.false;
  });

  it("return false if contains leading zeros", function() {
    expect(isValidIP("01.2.3.4")).to.be.false;
    expect(isValidIP("1.002.3.4")).to.be.false;
  });

  it("return false if contains odd characters", function() {
    expect(isValidIP("\n1.2.3.4")).to.be.false;
  });

  it("return false if contains whitespaces", function() {
    expect(isValidIP(" 1.2.3.4")).to.be.false;
  });

  it("return false if contains exponents", function() {
    expect(isValidIP("1e2.2.3.4")).to.be.false;
  });

  it("return false if contains dots at in the end or start or multiple dots adjacent", function() {
    expect(isValidIP("238..36.2")).to.be.false;
    expect(isValidIP(".1.2.3.4.")).to.be.false;
    expect(isValidIP("251.86.119.")).to.be.false;
  });
});
