require "dojefiy/version"
require 'engtagger'

class Dojefiy

  ADJECTIVES = %w[so much many very such]

  def initialize
    @tagger = EngTagger.new
  end

  def process( str )
    str.downcase
    tagged_str = @tagger.add_tags( str )
    nouns = @tagger.get_nouns( tagged_str ).keys
    phrases = nouns.each_with_index.map do |noun, index|
      "#{adjective(index)} #{noun}."
    end
    phrases << "wow."
    phrases.join(" ").downcase
  end

  private 

  def adjective index
    ADJECTIVES[ index % ADJECTIVES.size ]
  end

end
