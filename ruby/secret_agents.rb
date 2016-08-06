#Method declaration
def encrypt(a)
  index = 0

  while index < a.length
    x="abcdefghijklmnopqrstuvwxyz".index(a[index])
    x += 1 

    if x == 26
      x = 0
    end

    a[index]="abcdefghijklmnopqrstuvwxyz"[x]
    index += 1 

  end

  return a

end

#encrypt("abc")
#encrypt("zed")

def decrypt (b)
    index = 0

    while index < b.length
      x="abcdefghijklmnopqrstuvwxyz".index(b[index])
      x -= 1
      b[index]="abcdefghijklmnopqrstuvwxyz"[x]
      index += 1 
    end

    return b

end

#decrypt("bcd")
#decrypt("afe")

#our method works because our returning and storing values rather than just displaying information.

#Our driver code
puts "Would you like to encrypt or decrypt a password?"
input1 = gets.chomp

puts "What is your password?"
password = gets.chomp
   
if input1 == "encrypt"
   a = password 
   encrypt(a)
else 
   b=password
   decrypt(b)
end