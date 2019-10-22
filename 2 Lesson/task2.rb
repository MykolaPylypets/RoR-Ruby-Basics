class Pet
  attr_accessor :occasion, :species, :name

  def initialize name
    @name = name
    @species = "horse"
    @age = 5
    @stuff_in_belly = 10
    @asleep = false
    @mood = 10
    @predictable = 6
    @adroit = 3
#    @state = Array.new(10, 'is good to go') << 'has high temperature' << 'one horseshoe got loose' << 'has an injury'

    @occasion = Array.new(3, 'is good to go') << 'has high temperature' << 'has got one loose horseshoe' << 'has an injury' << ' is smelling tree blossom' << ' is grazing grass' << ' is kicking hooves impatiently'

    @environment = 10
#    @occasion = [' is smelling tree blossom', ' is grazing grass', ' is kicking hooves impatiently']
    @auto_system = false

    puts '~' * 40
    puts "Horse #{@name} is born!"
  end

  def feed
    puts '~' * 40
    puts "You feed #{@name} crunchy hay."
    @stuff_in_belly = 10
    time_passed
  end

  def training
    puts '~' * 40
    puts "You train Kylie to walk, trot, canter."
    @adroit += 1
    time_passed
  end

  def sleep
    puts '~' * 40
    puts "The night comes and Kylie is ready to sleep."
    @tired = 0
    3.times do
      if @asleep
        time_passed
      end
      if @asleep
        puts "... z Z z Z z Z z ..."
      end
    end
    if @asleep
      @asleep = false
      puts "Kylie woke up."
    end
  end

  def watch_it
    puts '~' * 40
    puts "You are watching #{@name}."
    puts @name + @occasion[6..8].sample + "."
    time_passed
  end

  def visual_check
    puts '~' * 40
    occasion = @occasion[0..5].sample
    puts "The visual check showed that #{@name} #{occasion}."
    if occasion == @occasion[3]
      eliminate_wind
      seeing_vet
      stable_redesign
    end
    hoove_care if occasion == @occasion[4]
    if occasion == @occasion[5]
      first_aiding
      fix_fence
    end

  end

  def take_manure_out
    puts '~' * 40
    if @auto_system == false
      puts "You clean #{@name}'s stable."
      if @environment < 10
      @environment += 1
      end
    else
      puts "The manure has already been removed automatically."
    end
  end

  def compete
    puts '~' * 40
    puts ("Today Kylie and you arrived to horse competition.".center(110))
    puts (               "We hope you will show best of you.".center(110))
    puts (                                   "And Good Luck!".center(110))
    if @adroit >= 8
      higher_chance = rand(5)
      if higher_chance  == 0
        puts "Congratulations! Kylie won the first place."
      elsif higher_chance == 1
        puts "Congratulations! Kylie won the second place."
      elsif higher_chance == 2
        puts "Congratulations! Kylie won the third place."
      end
    elsif @adroit < 8
      lower_chance = rand(9)
      if lower_chance == 0
        puts "Congratulations! Kylie won the first place."
      elsif lower_chance == 1
        puts "Congratulations! Kylie won the second place."
      elsif lower_chance == 2
        puts "Congratulations! Kylie won the third place."
      else
      puts "Among 30 horses #{@name} was ranked number " + rand(4..31).to_s + "."
      end
    end
  end

  def teeth_check
    puts '~' * 40
    puts "Time to visit the dentist and have #{@name}'s teeth checked."
    puts "Now that was easy :D"
  end

  def scrub_buckets
    puts '~' * 40
    puts "You scrubbed off leftover food of #{@name}'s buckets."
    puts "It is good for her health."
    if @environment < 10
      @environment += 1
    end
  end

  def vaccinate
    puts '~' * 40
    puts "Vaccinating #{@name}."
    if @environment < 10
      @environment += 1
    end
  end

  def warm_up
    puts '~' * 40
    puts "It seems like #{@name} is freezing."
    puts "Let's switch on the heating to warm her up."
    if @environment < 10
      @environment += 1
    end
  end

  def eliminate_flies
    puts @name + " got bothered by flies recently. You had to apply insecticide."
  end

  def first_aiding
    puts "Today #{@name} was quite nervous."
    puts "Unfortunately, she ran into a fence, damaging it as well as herself."
    puts "Using first aid kit was quite timely."
  end

  def eliminate_wind
    puts "It is quite windy outside. You had to close all doors and windows for #{@name}."
  end

  def fix_fence
    puts "The fence was fixed."
  end

  def seeing_vet
    puts "After thorough examination by the vet #{@name} received treatment."
    puts "Lots of rest is recommended."
    puts "Also #{@name}'s stable redesign needed for her better comfort."
  end

  def stable_redesign
    puts "#{@name}'s very happy today! Thanks to you her home got a decent overhaul."
    puts "She now enjoys more room than before."
    puts "But the idea to install automatic manure removal system beats all."
    puts "No more manual cleaning!"
    @auto_system = true
    take_manure_out
  end

  def hoove_care
    puts "Time to have #{@name}'s hooves trimmed and horseshoes reset."
    puts "Let's do it now."
  end

  private
  def perish
    puts @name + " has passed away."
  end

  def hungry?
    @stuff_in_belly <= 2
  end

  def wake_hungry
    puts = @name + " wakes up out of hunger."
  end

  def time_passed
    if @stuff_in_belly > 0
      @stuff_in_belly -= -1
    else
      if @asleep
        @asleep = false
        wake_hungry
      end
      puts @name + "'s diet was very poor."
      perish
      exit
    end
    if hungry?
      if @asleep
        @asleep = false
        wake_hungry
      end
      puts @name + " is feeling hungry."
    end
  end

end

pet_one = Pet.new "Kylie"; "horse"
require 'tty/prompt'
prompt = TTY::Prompt.new
help = "Welcome to Tamagochi. Here you can interact with the horse hero using a vertical navigation menu.\n
The menu offers 13 options to choose from. Be mindful of the horse's limited ability to go on without\n
proper sleep, feeding and such. Doing so will cut down on her chances of falling ill."
question = "Interact with #{pet_one.name}?"
choices = ["Quit", "Help", "Training", "Feed", "Watch It", "Sleep", "Visual Check", "Take Manure Out", "Compete", "Teeth Check", "Scrub Buckets", "Vaccinate", "Warm Up"]

while true
  item = prompt.select(question, choices)
  if item == "Training"
    pet_one.training
  elsif item == "Watch It"
    pet_one.watch_it
  elsif item == "Feed"
    pet_one.feed
  elsif item == "Sleep"
    pet_one.sleep
  elsif item == "Visual Check"
    pet_one.visual_check
  elsif item == "Take Manure Out"
    pet_one.take_manure_out
  elsif item == "Compete"
    pet_one.compete
  elsif item == "Teeth Check"
    pet_one.teeth_check
  elsif item == "Scrub Buckets"
    pet_one.scrub_buckets
  elsif item == "Vaccinate"
    pet_one.vaccinate
  elsif item == "Help"
    puts help
  elsif item == "Warm Up"
    pet_one.warm_up
  else
    item == "Quit"
    puts "Bye!"
    exit
  end
end
