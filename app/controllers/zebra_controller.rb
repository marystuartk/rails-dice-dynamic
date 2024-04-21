class ZebraController < ApplicationController
  
  def rules
    render({ :template => "game_templates/homepage" })
  end


  def giraffe
    @rolls = [rand(1..6), rand(1..6)]
    render({ :template => "game_templates/two_six" })
  end


  def lion
    @rolls = [rand(1..10), rand(1..10)]
    render({ :template => "game_templates/two_ten" })
  end


  def hippo
    @rolls = [rand(1..20), rand(1..20)]
    render({ :template => "game_templates/one_twenty" })
  end


  def snake
    @rolls = [rand(1..4), rand(1..4), rand(1..4), rand(1..4), rand(1..4)]
    render({ :template => "game_templates/five_four" })
  end


  def koala
    @num_dice = params.fetch("number_of_dice").to_i
    @num_sides = params.fetch("number_of_sides").to_i
  
    @rolls = Array.new(@num_dice) { rand(1..@num_sides) }
    render({ :template => "game_templates/dynamic" })
  end

end
