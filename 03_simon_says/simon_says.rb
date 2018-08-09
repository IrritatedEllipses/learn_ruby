def echo(input)
    input
end

def shout(input)
    input.upcase
end

def repeat(input, times=2)
    extra = " #{input}" * (times -1)
    return input + extra
end

def start_of_word(str, num)
    str[0...num]
end

def first_word(str)
    answ = str.split(" ")
    return answ[0]
end

def titleize(str)
    little = ["and", "or", "the", "vs", "over"]
    str = str.split
    str.each do |word|
        word.capitalize! unless little.include?(word)
    end
    str[0].capitalize!
    return str.join(" ")
end
