class Human
  attr_accessor :been_abducted, :current_planet, :eye_color, :alien_overlord
  attr_reader :name

  @@all = []

  def initialize(name, eye_color)
    @name = name
    @eye_color = eye_color

    @been_abducted = false
    @current_planet = "Earth"
    @alien_overlord

    @@all << self
  end # end initialize

  def travel_through_space(planet)
    self.current_planet = planet
  end

  def tell_a_lie
    if self.been_abducted
      "No, I've never been abducted by aliens. They're not real. I am a normal human bean."
    else
      "I've been abducted hundreds of time. I practically know all the aliens by name."
    end
  end # end tell_a_lie instance method

  def self.all
    @@all
  end

  def self.find_by_name(name)
    Human.all.find do |human|
      human.name == name
    end
  end # end find_by_name class method

  def self.free_humans
    Human.all.select do |human_bean|
      !human_bean.been_abducted
    end
  end # end free_humans class method

  def self.do_a_war
    Alien_Overlord.all.each do |alien|
      alien.release_captives
    end
  end # end do a war class method
end # end human class
