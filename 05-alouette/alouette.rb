require 'pry'

class Alouette
  def self.lines_for_verse(verse_num)
    verses =  ["Et la tête!", "Et le bec!", "Et les yeux!", "Et le cou!", "Et les ailes!", "Et les pattes!",  "Et la queue!", "Et le dos!"]

    return verses[0..verse_num].reverse
  end

  def self.verse(verse_num)

    finish = "Alouette!\nAlouette!\nA-a-a-ah"
    verses = self.lines_for_verse(verse_num)
    num_of_letters = verses[0].length - 2
    current_verse = verses[0][3..num_of_letters]

    start = "Je te plumerai #{current_verse}."
    repeated_verses = []
    verses.each do |a|
      repeated_verses << a
      repeated_verses << a
    end

    result = "#{start}\n#{start}\n#{repeated_verses.join("\n")}\n#{finish}"
    return result
  end

  def self.sing
    repeat = "Alouette, gentille alouette,\nAlouette, je te plumerai."
    count = 0
    all_verses = []
# binding.pry
    while count < 8
      all_verses << "#{repeat}\n\n"
      all_verses << "#{self.verse(count)}\n\n"

      count += 1

    end

    return "#{all_verses.join("")}#{repeat}"
  end
end
