## Q3. Store the string "Two 6-packs for $12.99". Then do the following:
#      i. Use a check for equality to confirm that the sub-string beginning with character 5
#         and ending with character 10 is "6-pack".
#      ii. Make it a better deal by changing the price to $10.99.

# Solution :
string <- "Two 6-packs for $12.99"

# i.
print(substr(x = string, start = 5, stop = 10) == "6-pack")
print(substring(text = string, first = 5, last = 10) == "6-pack")

# ii.
len <- nchar(string)
# substr(x = string, start = len-5, stop = len) <- "$10.99"
# Or Better way to do is using the sub() builtin function.
string <- sub(pattern = "\\$12.99", replacement = "$10.99", x = string)
print(string)
