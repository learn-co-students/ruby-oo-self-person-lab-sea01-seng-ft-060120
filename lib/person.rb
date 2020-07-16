require 'pry'

class Person 
    attr_reader :name 
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8       
    end
    
    def happiness=(number)
        @happiness = number # binding.pry
        if number > 10
            @happiness = 10
        end
        if number < 0
            @happiness = 0
        end
    end

    def hygiene=(number)
        @hygiene = number
        # binding.pry
        if number > 10
            @hygiene = 10
        end
        if number < 0
            @hygiene = 0
        end
    end

    def happy?
        if @happiness > 7
            return true
        else false
        end
    end

    def clean?
        if @hygiene > 7
            return true
        else false
        end
    end

    def get_paid(salary)
       @bank_account = salary + bank_account

        return "all about the benjamins"
    end

    def take_bath
       self.hygiene  = hygiene + 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness = happiness + 2
        self.hygiene = hygiene - 3
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness = happiness + 3
        friend.happiness +=3 
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person,topic)
        if topic == "politics"
            person.happiness = happiness - 2
            self.happiness = happiness - 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather" 
            person.happiness = happiness + 1
            self.happiness = happiness + 1
            return "blah blah sun blah rain"
        else return "blah blah blah blah blah"

        end

    end

end