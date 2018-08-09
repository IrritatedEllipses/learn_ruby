class Book

    attr_accessor :title

    def title
        @title = titleizer(@title)
    end

    def titleizer str 
        @title.capitalize!
        little = ["and", "or", "the", "vs", "over", "a", "but", "in", "of", "an"]
        str = str.split
        str.each do |word|
            word.capitalize! unless little.include?(word)
        end
        str[0].capitalize!
        return str.join(" ")
    end

end
