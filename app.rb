require "sinatra"
require "sinatra/reloader"

get("/") do
 erb(:homepage)
end


get("/rock") do
  moves=["rock", "paper", "scissors"]
  @comp_move = moves.sample


  if @comp_move == "rock"
    @outcome = "tied"
  elsif @comp_move == "paper"
    @outcome = "lost"
  else
    @outcome = "won"
  end
erb(:rock)
end

get("/paper") do
  moves=["rock", "paper", "scissors"]
  @comp_move = moves.sample


  if @comp_move == "rock"
    @outcome = "win"
  elsif @comp_move == "paper"
    @outcome = "tied"
  else
    @outcome = "lost"
  end
erb(:paper)
end

get("/scissors") do
  moves=["rock", "paper", "scissors"]
  @comp_move = moves.sample


  if @comp_move == "rock"
    @outcome = "lose"
  elsif @comp_move == "paper"
    @outcome = "won"
  else
    @outcome = "tied"
  end
erb(:scissors)
end
