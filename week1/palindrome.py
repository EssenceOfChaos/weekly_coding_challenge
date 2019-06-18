def palindrome(s):
  return s == s[::-1]

print(palindrome("racecar"))  # true
print(palindrome("superman")) # false
print(palindrome("abcdedcba"))  # true
print(palindrome("none")) # false