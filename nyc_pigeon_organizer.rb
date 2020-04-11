def nyc_pigeon_organizer(data)

#Step 1.  all pigeon names into an array
all_pigeons = data[:gender][:male] + data[:gender][:female]

#Step 2. turns pigeon names into a hash & each pigeon is name => nil
hashed_pigeons = Hash[all_pigeons.map do |birds| birds.split(":") end]

#Step 3. changes the name => nil to name => {:color,:gender,:lives} w/ string values
hoh_pigeons = hashed_pigeons.each do |k,v| hashed_pigeons[k] = Hash[:color => [],:gender => [], :lives =>[] ] end


#Step 4. map key value pairs with each attribute
### COLOR
color_pigeons = data[:color]
counter = 0

while counter <=  color_pigeons.length do

color_pigeons.each.map do |key,value| counter =< value.length? hoh_pigeons[value[counter]][:color] << key.to_s ::
hoh_pigeons[value[counter]][:color] << key.to_s end
end

counter += 1
end
pp hoh_pigeons


### PROBLEM STARTS HERE
### Abstract this... need luca & lola.... try something with value.length and a conditional

#if value.length > 2
#hoh_pigeons[value[2]][:color] << key.to_s

#if value.length > 3
#hoh_pigeons[value[3]][:color] << key.to_s

#if value.length > 4
#hoh_pigeons[value[4]][:color] << key.to_s
      #end
    #end



### GENDER
gender_pigeons = data[:gender]

gender_pigeons.map() do |key, value|
hoh_pigeons[value[0]][:gender] << key.to_s
hoh_pigeons[value[1]][:gender] << key.to_s

if value.length > 2
hoh_pigeons[value[2]][:gender] << key.to_s

if value.length > 3
hoh_pigeons[value[3]][:gender] << key.to_s
    
if value.length > 4
hoh_pigeons[value[4]][:gender] << key.to_s
      end   
    end
  end
end

### LIVES
lives_pigeons = data[:lives]

lives_pigeons.map() do |key, value|
hoh_pigeons[value[0]][:lives] << key.to_s

if value.length > 1
hoh_pigeons[value[1]][:lives] << key.to_s

if value.length > 2
hoh_pigeons[value[2]][:lives] << key.to_s
    end
  end
end
hoh_pigeons

end
