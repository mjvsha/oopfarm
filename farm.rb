#each field type produces a diff amount of food/hectare

#corn = 20
#wheat = 30
#add fields of choice by specifying their type and hectares
#
# harvesting:
# you must collect food from every field
# record how much food you have collected
#
# relaxing:
# you can visit each field without harvesting
#
# check field status:
# observe field status aka size and type
# and tell you the total food you have produced until this point
#
#
# i would want to have the following methods:
# this is in the class farmer
#
# add field
# harvest
# status
# relax

#why doesnt it make sense to have seoarate classes for the types of fields and inherit from field
#relax statements; what if the user could geenrate infinity amount of fields?



class Farm

  @@total_harvested=0
  @@total_fields = []

  def initialize (type, area)
  @field_type = type
  @area = area

  @@total_fields << self
  end

  def field_type
    @field_type
  end

  def area
    @area
  end

  def harvest
    if self.field_type == "blueberry"
      puts "Harvesting #{harvest=@area*70} food from #{area} hectare blueberry field"
      @@total_harvested += harvest
      puts "The farm has #{@@total_harvested} food so far. "
    end
    if self.field_type == "potato"
      puts "Harvesting #{@area*50} food from #{area} hectare potato field"
      @@total_harvested += harvest
      puts "The farm has #{@@total_harvested} food so far. "
    end

  end



  def self.status
    #iterate through your fields and then print out the field type and area
    @@total_fields.each do |field|
      puts "#{field.field_type} field is #{field.area} hectares."
    end

    puts "Total food produced is #{@@total_harvested}"

  end

  def self.relax

    @@total_fields.each do |field|

      if field.field_type == "blueberry"
      "A sweetness dances across the air. Blueish bushes rustle lazily in the afternoon wind. You smoke a fat joint"

    elsif field.field_type == "potato"
      "You came here to enjoy the view but you forgot that it's a potato field and you cant see anything"
    end
  end

  end



  def self.create

    puts "What type of field do you want, farmer? Blueberry or potato?"
    type = gets.chomp.strip
    puts "Nice! A #{type} field is always welcome. How large is this field going to be?"
    area = gets.chomp.strip.to_i
    field = Farm.new(type, area)
    @@total_fields << field
    "There! Your #{type} field of #{area} hectares has officially been created! "

  end



  def exit

    puts "Exiting..."

  end



end



puts farm = Farm.new("blueberry", 40)
puts farm2 = Farm.new("potato", 10)
puts farm3 = Farm.new("blueberry", 30)
puts farm4 = Farm.new("blueberry", 10)
puts farm.harvest
puts farm4.harvest
puts farm3.harvest


puts Farm.create

puts Farm.status


#i am creating a field class, where i will create instances
#of fields, and they are gonna have the behaviors of being able to relax, checking status, and creating a new field


#the farm status is not printing out my array
