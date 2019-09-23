class Team

attr_reader :name, :players, :points
attr_accessor :coach
  def initialize(name, players, coach)
    @team_name = name
    @players = players
    @coach = coach
    @points = 0
    # @players_name = players_name
  end

def add_player(player)
  @players << player
end

def find_player(players_name)
  # for player in @players
  #   if player == players_name
  #     return true
  #   end
  #   return false
return @players.include?(players_name)

  end

  def update_score(result)
    if result == "win"
      @points += 3
    end
  end
end

#   def get_players()
#     return @players
#   end
#
# def get_coach()
#   return @coach
# end
#
# def get_coach_name
#   return @coach_name
# end
# end

# def set_coach(new_coach)
#   return @coach = new_coach
# end
