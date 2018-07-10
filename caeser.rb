message = "water is wet"

Cipher_Number = 5



def encrypt(message)
    output = ""
    message.split("").each do |i|
        
        if i != " " 
            i = i.ord + Cipher_Number
            if i > 122  
                i = 97 + (i - 122)
            end
        end
    
        output += i.chr
        
    
    end
    
    puts output
    return output

end

def decrypt(message)
        output = ""
    message.split("").each do |i|
        
        if i != " " 
            i = i.ord - Cipher_Number
            if i < 97  
                i = 122 - (97 - i)
            end
        end
    
        output += i.chr
        
    
    end
    
    puts output
    return output
end

encrypted = encrypt(message)
decrypt(encrypted)


    
