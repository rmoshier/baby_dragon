class Dragon

  def initialize(name)
    @name = name
    @tummy = 10
    @bowels = 0
    @asleep = false
    @running = true
    @action = {
      "feed" => :feed,
      "walk" => :walk,
      "put to bed" => :put_to_bed,
      "rock" => :rock
      }
    puts "Welcome to the world #{@name}!!"
    puts "*" * 50
    puts "
                ______ __
              { - - , \  |             *
               '-__   \\ |  (\___     **
                    ` \\ | {/ ^ _) < ***
              - .^^^^^^^^^^^  /      **
            / /\\    )____,   /        *
        . _' /  \\<--       \\\<
      `^^^^^`    ^^^        ^^
    "
    run
  end

  def feed
    puts "You feed #{@name}."
    @tummy = 10
    time_elapses
  end

  def walk
    puts "You walk #{@name}."
    @bowels = 0
    time_elapses
  end

  def put_to_bed
    puts "You put #{@name} to bed."
    @asleep = true
    time_elapses
    3.times do
      if @asleep
        time_elapses
      end
      if @asleep
        puts "#{@name} is snoring gently, filling the room with smoke."
      end
      if @asleep
        @asleep = false
        puts "#{@name} wakes up slowly."
      end
    end
  end

  def rock
    puts "You rock #{@name} gently."
    @asleep = true
    puts "He briefly dozes off..."
    time_elapses
    if @asleep
      @asleep = false
      puts "...but wakes when you stop."
    end
  end

  private

  def run
    while @running == true
      puts "*" * 50
      puts "What would you like to do with #{@name}?"
      puts @action.keys.collect {|a| puts a.upcase + "?"}
      input = gets.chomp
      puts "*" * 50
      if @action.keys.include?(input)
        send @action[input]
      end
    end
  end

  def hungry?
    @tummy <= 2
  end

  def poopy?
   @bowels >= 8
  end

  def time_elapses
    if @tummy >= 0
      @tummy -= 1
      @bowels += 1
      # puts @tummy
      # puts @bowels
    else
      if @asleep
        @asleep = false
        puts "He is awake!"
      end
      puts "#{@name} is ravenous! In desperation, he ate YOU!"
      exit
    end
    if @bowels >= 10
      then @bowels = 0
      puts "#{@name} had an accident. Dragon poop EVERYWHERE."
      exit
    end
    if hungry?
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end
      puts "#{@name}\'s stomach grumbles."
    end
    if poopy?
      if @asleep
        ￼￼￼￼￼￼@asleep = false
        ￼￼￼puts "He wakes up suddenly!"
      end
        puts "#{@name} does the potty dance..."
    end
  end
end

puts "What would you like to name your baby dragon?"
name = gets.chomp
pet = Dragon.new name
