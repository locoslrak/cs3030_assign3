#Make sure you "\" your special characters
#group your matches with \( \)
# repetition with \{ \}
# takes subfields from records and changes them accordingly
s/\([0-9]\{1,2\}\)[/]\([0-9]\{1,2\}\)[/]\([0-9]\{2,4\}\)/\1.\2.\3/g

# first field is grouped 0-9 one or two places followed by a - or / or .

# second field is grouped 0-9 one or two places followed by a - or / or .

# third field is grouped 0-9 two or four places

# 'g' at end is to make it global
