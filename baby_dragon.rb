class Dragon
  def initialize(name)
    @name = name
    @tummy = 10
    @bowels = 0
    @asleep = false
    @actions = {
      "feed" => :feed
      "walk" => :walk
      "put to bed" => :put_to_bed


    }
    puts "Welcome to the world #{@name}!!"
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
      puts @tummy
      puts @bowels
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

pet = Dragon.new 'Norbert'
pet.feed
pet.walk
pet.put_to_bed
pet.rock
pet.put_to_bed
pet.put_to_bed
pet.put_to_bed
pet.put_to_bed
pet.put_to_bed
