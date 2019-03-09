require "pry"

def get_first_name_of_season_winner(data, season)
  data[season].each do |bio|
    if bio["status"].downcase == "winner"
      return bio["name"].split(" ").first
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season_num, array_of_hashes|
  array_of_hashes.each do |bio|
    if bio["occupation"] == occupation
      return bio["name"]
    end 
  end 
end 
end 
  


def count_contestants_by_hometown(data, hometown)
  counter = 0 
  data.each do |season_num, array_of_hashes|
    array_of_hashes.each do |bio,stats|
      bio.each do |names_age, info|
        if info == hometown
          counter += 1 
        end 
      end 
    end 
  end 
  counter 
end

  def get_occupation(data, hometown)
  occupation = []
  data.each do |season_num,array_of_hashes|
    array_of_hashes.each do |bio,stats|
      bio.each do |names_age,info|
         if info == hometown 
          return bio["occupation"]
        end 
      end 
      end 
    end
end

def get_average_age_for_season(data, season)
  total=[]
  data[season].each do |season_data| 
      total.push(season_data.values_at("age").join.to_f)
      binding.pry
    end   
  average = total.sum / total.size.to_f
  average
 end

