# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Article.create(title: "House Passes One-Week Funding Extension for Homeland Security", author: "ASHLEY PARKER", publication: "New York Times", date: "FEB. 27, 2015",  url: "http://www.nytimes.com/2015/02/28/us/senate-house-homeland-security.html?ref=politics&_r=0", topic: "National")
Article.create(title: "House and Senate Prepare Measures to Keep Homeland Security Funded", author: "ASHLEY PARKER", publication: "New York Times", date: "FEB. 26, 2015",  url: "http://www.nytimes.com/2015/02/27/us/house-and-senate-near-differing-plans-to-avoid-homeland-security-shutdown.html?ref=politics", topic: "National")
Article.create(title: "Congress averts Homeland Security shutdown with one-week extension", author: "Sean Sullivan and Mike DeBonis", publication: "Washington Post", date: "FEB. 28, 2015", url: "http://www.washingtonpost.com/politics/house-gop-hopes-to-pass-stopgap-dhs-funding-before-midnight-shutdown/2015/02/27/22021530-be88-11e4-b274-e5209a3bc9a9_story.html", topic: "National")
Article.create(title: "Obama staying out of the GOP crossfire in shutdown fight", author: "David Nakamura", publication: "Washington Post", date: "FEB. 27, 2015", url: "http://www.washingtonpost.com/politics/obama-staying-out-of-the-gop-crossfire-in-shutdown-fight/2015/02/27/6630e1b6-be7c-11e4-bdfa-b8e8f594e6ee_story.html", topic: "National")
Article.create(title: "Democrats' climate probe brings ‘witch hunt’ accusations", author: "ALEX GUILLÉN", publication: "Politico", date: "FEB. 27, 2015", url: "http://www.politico.com/story/2015/02/climate-change-study-funding-raul-grijalva-115568.html?hp=b1_c1", topic: "National")
Article.create(title: "Congress passes one-week DHS fix", author: "Seung Min Kim, John Bresnahan and Anna Palmer", publication: "Politico", date: "FEB. 27, 2015", url: "http://www.politico.com/story/2015/02/john-boehner-republicans-homeland-security-funding-115588.html?hp=l1_3", topic: "National")
Article.create(title: "Congress averts homeland security shutdown", author: "Susan Davis and Erin Kelly", publication: "USA Today", date: "FEB. 28, 2015", url: "http://www.usatoday.com/story/news/politics/2015/02/27/congress-dhs-funding-votes/24112159/", topic: "National")
Article.create(title: "Fear Envelops Russia After Killing of Putin Critic Boris Y. Nemtsov", author: "ANDREW E. KRAMER", publication: "New York Times", date: "FEB. 28, 2015", url: "http://www.nytimes.com/2015/03/01/world/europe/killing-of-boris-nemtsov-putin-critic-breeds-fear-in-russia.html?hp&action=click&pgtype=Homepage&module=first-column-region&region=top-news&WT.nav=top-news", topic: "WORLD")

Group.create(title: "Homeland-Security Funding", content: "content talking about DHS funding facts here", editor_id: 1, articles: [1,2,3,4,6,7], topic: "National")

Editor.create(name: "Trey Jackson", location: "South-east", password: "password", username: "trey_jackson", admin: true)
