require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team')

class TestSportsTeam <  Minitest::Test

  def setup

    @team = Team.new("Avengers", ["Iron Man", "Hulk", "Thor"], "Nick Fury")

  end

  def test_get_players
    assert_equal(["Iron Man", "Hulk", "Thor"], @team.players)
  end



def test_set_coach
  @team.coach = "Colin Bell"
  assert_equal("Colin Bell", @team.coach)
end

def test_add_player
  @team.add_player("Ant Man")
  assert_equal(["Iron Man", "Hulk", "Thor","Ant Man"], @team.players)

end

def test_find_player
  assert_equal(true, @team.find_player("Thor"))
end

def test_get_points
  assert_equal(0, @team.points)
end

def test_update_score__win
  @team.update_score("win")
  assert_equal(3, @team.points)
end

def
 test_update_score__loss
 @team.update_score("lose")
 assert_equal(0, @team.points)

end

end
