def translate phrase
    vowel = ["a","e","i","o","u","y"]
    phrase = phrase.split(" ")
    phrase.map! do |word|
        if vowel.include?(word[0])
            word = word << "ay"
        else
            if vowel.include?(word[1])
                if word[0] == "q" && word[1] == "u"
                    word = word[2..-1] + word[0..1] + "ay"
                else
                    word = word[1..-1] + word[0] + "ay"
                end
            else
                if vowel.include?(word[2])
                    if word[1] == "q" && word[2] == "u"
                        word = word[3..-1] + word[0..2] + "ay"
                    else 
                        word = word[2..-1] + word[0..1] + "ay"
                    end
                else word = word[3..-1] + word[0..2] + "ay"
                end
            end
        end
    end
    phrase.join(' ')
end