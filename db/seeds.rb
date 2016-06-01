# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# category: { chinese: 0, italian: 1, japanese: 2, french: 3, belgian: 4}

Restaurant.destroy_all


restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    phone_number:  "0601232151",
    category:        3
  },
  {
    name:         "La truffière",
    address:      "4 rue Blainville 75005 Paris",
    phone_number:  "2123101723",
    category:        4
  },
  {
    name:         "Le pré catelan",
    address:      "route de Suresnes 75016 Paris",
    phone_number:  "624522454",
    category:        1
  },
    {
    name:         "Shan Shan",
    address:      "3straat, Den Haag",
    phone_number:  "62455633422454",
    category:        2
  },
    {
    name:         "Thousand Autumns",
    address:      "Rue David Mitchell, Neo-Seoul",
    phone_number:  "52013578",
    category:        0
  },
    {
    name:         "Caesar",
    address:      "Imperial Avenue",
    phone_number:  "624345555555",
    category:        1
  }
]
restaurants_attributes.each { |params| Restaurant.create!(params) }

