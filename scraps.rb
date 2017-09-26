"apple... orange.. pear.....".split(".")
  #  => ["apple", "", "", " orange", "", " pear"]

  "apple..! orange..?.. pear.....".split("." || "?" || "!")
    #["apple", "", "! orange", "", "?", "", " pear"]

    #1) split
    #2) In each array element, delete all remaining (white space?) periods, question marks, and explamation points
    #3) Delete array elements with ""


"This, well, is a sentence. This is too!! And so is this, I think? Woo...".split("." || "?" || "!")
