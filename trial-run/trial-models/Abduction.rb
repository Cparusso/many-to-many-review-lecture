class Abduction
  attr_reader :human, :alien, :date

  @@all = []

  def initialize(human, alien, date)
    @human = human
    @alien = alien
    @date = date

    human.been_abducted = true
    human.alien_overlord = alien
    human.current_planet = alien.home_planet

    @@all << self
  end

  def self.all
    @@all
  end
end # end abduction class
