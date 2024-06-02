str1=input('Enter the string: ')
cv=0
cc=0
cs=0
cd=0
for i in str1:
    if(i=='a' or i=='e' or i=='i' or i=='o' or i=='u' or i=='A' or i=='E' or i=='I' or i=='O' or i=='U'):
        cv+=1
    elif(i==' ' or i=='!' or i=='@' or i=='#' or i=='$' or i=='%' or i=='^' or i=='&' or i=='*' or i=='(' or i==')' or i=='+' or i=='-' or i=='=' or i=='/' or i=='?' or i=='.' or i==',' or i=='<' or i=='>' or i==':' or i==':' or i=='{' or i=='}' or i=='[' or i==']' or i=='~' or i=='`' or i=='|'):
        cs+=1
    elif(i=='0' or i=='1' or i=='2' or i=='3' or i=='4' or i=='5' or i=='6' or i=='7' or i=='8' or i=='9'):
        cd+=1
    else:
        cc+=1
print('No.of vowels in the given text:',cv)
print('No.of consonants in the given text:',cc)
print('No.of speial characters in the given text:',cs)
print('No.of digits in the given text:',cd)
