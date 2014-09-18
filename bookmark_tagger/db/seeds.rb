# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

links = ["http://guides.rubyonrails.org/association_basics.html#the-has-many-through-association", "https://dev.twitter.com/rest/tools/console", "http://www.wolframalpha.com/examples/TechnologicalWorld.html"]
names = ["rails associations", "twitter api console", "wolfram Technological World"]


links.each_with_index do |link, i|
  Bookmark.create(name: names[i], link: link)
end

Tag.create(name: "tech")
