require 'pry'

def get_first_name_of_season_winner(data, season)
  data[season].each do |hash|
    hash.each do |detail, info|
    if detail == "Winner"
    binding.pry
      detail["name"].split(" ")[0]
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
