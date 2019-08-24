const { assert } = require("chai");

const decrypt = require("../5_/5_decrypt.school.cipher").decrypt;

describe("Fixed tests", function() {
  it("Testing for Alice", function() {
    assert.strictEqual(decrypt("'101''99''105''108''65'"), "Alice");
  });

  it("Testing for Bob", function() {
    assert.strictEqual(decrypt("'98''111''66'"), "Bob");
  });
  it("Testing for numbers", function() {
    assert.strictEqual(decrypt("30 71"), "17 03");
  });

  it("Testing for 9Hi Alice4", function() {
    //
    assert.strictEqual(
      decrypt("4'101''99''105''108''65' '105''72'9"),
      "9Hi Alice4"
    );
  });
});
