require 'pry'

def get_first_name_of_season_winner(data, season)
  data[season].each do |hash|
    if hash["status"] == "Winner"
      return hash["name"].split(" ")[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, hash|
    hash.each do |details|
      if details["occupation"] == occupation
        return details["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  hometown_count = 0 
  data.each do |season, hash|
    hash.each do |details|
      if details["hometown"] == hometown
        hometown_count += 1 
      end
    end
  end
   return hometown_count
end

def get_occupation(data, hometown)
  data.each do |season, hash|
    hash.each do |details|
      if details["hometown"] == hometown
        return details["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  ages = []
  data[season].each do |hash|
    ages << hash["age"].to_f
  end
  return (ages.sum / ages.length).round
end
