require 'pry'

def get_first_name_of_season_winner(data, season)
  data[season].each do |hash|
    if hash["status"] == "Winner"
      return hash["name"].split(" ")[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestant_hash|
    if contestant_hash["occupation"] == occupation
      binding.pry
      return contestant_hash["name"]
    end
  end
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
