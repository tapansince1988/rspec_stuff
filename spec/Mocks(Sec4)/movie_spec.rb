class Actor
    def initialize(name)
        @name = name
    end
    def ready?
        sleep(3)
        true
    end
    def act
        "I Love you, baby"
    end
    def fall_off_ladder
        "Call my agen! No way!"
    end
    def light_on_fire
        false
    end
end

class Movie
    attr_reader :actor
    def initialize(actor)
        @actor = actor
    end
    def start_shooting
        if actor.ready?
            puts actor.act
            puts actor.fall_off_ladder
            puts actor.light_on_fire
        end
    end
end

actor = Actor.new("Brad Pitt")
movie = Movie.new(actor)
movie.start_shooting

# movie is dependent on the actor class although there is no inheritence
# here is where mocking comes into play. 
# mocking the actor class to test the movie class