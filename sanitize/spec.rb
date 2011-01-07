# Problem:
#
# Given a word, sanitize (replace with asterisks) all occurences of that word
# in a string.  Users are sneaky, however, and love to try to obfuscate nasty
# words.  In addition to satizing the word itself, your code must also sanitize
# the obfuscations of the word listed below
#

describe "sanitize" do
  it "sanitizes the given word" do
    sanitize("frak", "what the frak").should == "what the ****"
    sanitize("shingle", "you little shingle head!").should == "you little ******* head!"
  end

  it "sanitizes capitalizations of the word" do
    sanitize("frak", "what the FRAK").should == "what the ****"
    sanitize("shingle", "you little sHiNgLe head!").should == "you little ******* head!"
  end

  it "sanitizes punctuated versions of the word" do
    sanitize("frak", "what the f.r-a_k").should == "what the ****"
    sanitize("shingle", "you little //sh*-ingle\\ head!").should == "you little ******* head!"
  end
end
