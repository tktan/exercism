module BookKeeping
  VERSION = 2
end

class FoodChain
  def self.i_know_an_old_lady(animal, aux="")
    s = "I know an old lady who swallowed a #{ animal }.\n"
    s += "#{ aux }\n" if not aux.empty?
    s += self.send(animal) + "\n"
  end

  def self.fly
    "I don't know why she swallowed the fly. Perhaps she'll die."
  end

  def self.swallowed_to_catch(x, y)
    "She swallowed the #{ x } to catch the #{ y }.\n"
  end

  def self.spider
    s = swallowed_to_catch("spider", "fly")
    s += fly
  end

  def self.bird
    s = swallowed_to_catch("bird", "spider that wriggled and jiggled and tickled inside her")
    s += spider
  end

  def self.cat
    s = swallowed_to_catch("cat", "bird")
    s += bird
  end

  def self.dog
    s = swallowed_to_catch("dog", "cat")
    s += cat
  end

  def self.goat
    s = swallowed_to_catch("goat", "dog")
    s += dog
  end

  def self.cow
    s = swallowed_to_catch("cow", "goat")
    s += goat
  end

  def self.horse
    "She's dead, of course!"
  end

  def self.song
    s = i_know_an_old_lady(:fly) + "\n"
    s += i_know_an_old_lady(:spider, "It wriggled and jiggled and tickled inside her.") + "\n"
    s += i_know_an_old_lady(:bird, "How absurd to swallow a bird!") + "\n"
    s += i_know_an_old_lady(:cat, "Imagine that, to swallow a cat!") + "\n"
    s += i_know_an_old_lady(:dog, "What a hog, to swallow a dog!") + "\n"
    s += i_know_an_old_lady(:goat, "Just opened her throat and swallowed a goat!") + "\n"
    s += i_know_an_old_lady(:cow, "I don't know how she swallowed a cow!") + "\n"
    s += i_know_an_old_lady(:horse)
  end
end

puts FoodChain.song
