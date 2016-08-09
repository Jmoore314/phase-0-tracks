# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

"xXx_hEaDsHoT_KiNg_fOuR_tWeNtY_tHrEe_sIxTy_n0sCoPe_xXx".swapcase == "XxX_HeAdShOt_kInG_FoUr_TwEnTy_ThReE_SiXtY_N0ScOpE_XxX"

# "zom".insert(2, 'o')
# => “zoom”

"yo".insert(2, 'u') == "you"
"yo".replace('you') == "you"

# "enhance".center(15)
# => "    enhance    "

"hey buuuuuuuudy".center(100) == "                                          hey buuuuuuuudy                                           "

# "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

"we did it fam".upcase == "WE DID IT FAM"
"WE DID IT FAM".upcase! != "WE DID IT FAM"

# "the usual".ljust(18, ' suspects')
#=> "the usual suspects"

"yo".insert(2, 'u') == "you" #already used
"yo".replace('you') == "you" #meh
"yo".ljust(3, 'u') == "you" #correct one


# " suspects".rjust(18, 'the usual')
# => "the usual suspects"

"ou".insert(0, 'y') == "you" #already used
"ou".replace('you') == "you" #meh
"ou".rjust(3, 'u') == "you" #correct one

# "The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

"you".chop == "yo" #correct one
"you".replace('yo') == "yo" #meh

# "The mystery of the missing first letter"[1..-1]
# => "he mystery of the missing first letter"

"you".replace('ou') == "ou" #meh
"you"[1..-1] == "ou" #correct

# "Elementary,    my   dear        Watson!".split.join(' ')
# => "Elementary, my dear Watson!"

"oh        hey         der".split.join(' ') == "oh hey der" #correct
"oh        hey         der".replace('oh hey der') == "oh hey der" #meh

# "z".ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

"a".ord == 97
z (lowercase) is the 122nd character of ASCII (the ASCII code is alt + 122)

# "How many times does the letter 'a' appear in this string?".count('a')
# => 4

"asdlfkjas;ldkjfaaa".count('a') == 5
