import string

def palindrome(s):
  s = s.translate(str.maketrans('', '', string.punctuation)).lower()
  return s == s[::-1]

print(palindrome("Live on time, emit no evil")) # true