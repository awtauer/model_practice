class QuestionsController < ApplicationController
  def question_1
    # What is the most recent movie on the list that the second actor appeared in?

    #@second_actor = Actor.second
    
    
    @most_recent_movie_for_second_actor = Actor.second.movies.order("year DESC").first.title
    

  end

  def question_2
    # Who directed the longest movie on the list?

    @director_of_longest_movie = Movie.order("duration DESC").first.director.name
    
  end

  def question_3
    # Which director has the most movies on the list?

    movie_counts = []

    Director.all.each do |the_director|
    movie_counts.push(Movie.where(:director_id => the_director.id).count)
    end

    @director_with_the_most_movies = movie_counts.max
  end

  def question_4
    # Which actor has been in the most movies on the list?
    # (If there's a tie, any one of them is fine)

    the_leader = Actor.new

     Actor.all.each do |the_actor|
       if the_actor.movies.count > the_leader.movies.count
         the_leader = the_actor
        end
      end
 
      @actor_with_the_most_movies = the_leader

    

    # @actor_with_the_most_movies = ???
  end

  def question_5
    # This one is hard. Work on it after all your other review is complete.

    # Which actor/director pair has the most movies on the list?
    # (If there's a tie, any pair of them is fine)

    # Your Ruby goes here.

    # @actor = ???
    # @director = ???
    # @movies_together = ???
  end
end
