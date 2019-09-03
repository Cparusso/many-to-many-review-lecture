class Alien_Overlord
  attr_accessor :consistency, :captives
  attr_reader :name, :num_of_antennae, :consistency, :home_planet

  @@all = []

  def initialize(name, num_of_antennae, consistency, home_planet)
    @name = name
    @num_of_antennae = num_of_antennae
    @consistency = consistency
    @home_planet = home_planet

    @captives = []

    @@all << self
  end # end initialize

  def abduct(human, date)
    @captives << human
    Abduction.new(human, self, date)
  end

  def play(human, trait, modification)
    if self.captives.include?(human)
      human.send("#{trait}=".to_sym, modification)
    end

    return ":)"
  end # end play instance method

  def release_captives
    if self.captives.length > 0
      self.captives.each do |captive|
        captive.current_planet = "Earth"
        puts "Releasing #{captive.name}"
      end

      self.captives = []

      "Be free, my friends!"
    else
      "What the hell am I doing?"
    end
  end # end release captives instance method

  def self.all
    @@all
  end

  def self.find_by_name(name)
    Alien_Overlord.all.find do |alien|
      alien.name == name
    end
  end # end find_by_name class method

  def self.implode_colony
    Alien_Overlord.all.each do |alien|
      alien.release_captives
    end
  end
end # end alien overlord class
