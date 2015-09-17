# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
z = Zombie.create(name: 'ash', graveyard: 'glen haven memorial');
Tweet.create(status: "Where can I get a good bit", zombie: z);
z = Zombie.create(name: 'bob', graveyard: 'chapel hill cemetery');
Tweet.create(status: "my left arm is missing but i", zombie: z);
z = Zombie.create(name: 'jim', graveyard: 'my fathers basement');
Tweet.create(status: "i just ate some delicious brain", zombie: z);
z = Zombie.find(1);
Tweet.create(status: "omg my fingers turned green", zombie: z);



