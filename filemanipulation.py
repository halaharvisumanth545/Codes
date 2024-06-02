import string
with open('tttt.txt','r') as f:
    data=f.read()
    for word in data:
        word=word.strip(string.whitespace+string.punctuation)
print(
    
