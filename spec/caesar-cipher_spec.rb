require_relative "../caesar-cipher"

describe "#caesar_cipher" do
  it "works with a small positive number as shift" do
    string = "cde"
    shift = 2
    new_string = caesar_cipher(string, shift)
    expect(new_string).to eql("abc")
  end

  it "works with a small negative number as shift" do
    string = "abc"
    shift = -2
    new_string = caesar_cipher(string, shift)
    expect(new_string).to eql("cde")
  end

  it "works with a large positive number as shift" do
    string = "cde"
    shift = 28
    new_string = caesar_cipher(string, shift)
    expect(new_string).to eql("abc")
  end

  it "works with a large negative number as shift" do
    string = "abc"
    shift = -28
    new_string = caesar_cipher(string, shift)
    expect(new_string).to eql("cde")
  end

  it "works with a punctuation" do
    string = "a,b.c!"
    shift = -2
    new_string = caesar_cipher(string, shift)
    expect(new_string).to eql("c,d.e!")
  end

  it "mantains upper/lowercase" do
    string = "AbC"
    shift = -2
    new_string = caesar_cipher(string, shift)
    expect(new_string).to eql("CdE")
  end
end
