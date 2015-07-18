Address.create(name: "Golden Thread Productions", street: "2325 Third Street, Suite #320", city: "San Francisco", state: "CA", zip: 94107)

Company.create(name: "Golden Thread Productions", style: "Middle Eastern", description: "Founded in 1996, is the first American theatre company focused on the Middle East. We produce passionate and provocative plays from and about the Middle East that celebrate the multiplicity of its perspectives and identities. We are a developmental catalyst and vibrant artistic home to artists at various stages of their career. We bring the Middle East to the American stage, creating treasured cultural experiences for audiences of all ages and backgrounds. We believe that immersing yourself in someone else’s experience is the best way to appreciate their point of view.", phone: 4156264061, url: "http://www.goldenthread.org", address_id: 1, email: "information@goldenthread.org", image: "goldenthread.png")

Production.create(company_id: 1, title: "Fairytale Players Double-Bill", writer: "various", director: "various", genre: "Children's Theatre", description: 'Princess Tamar Rescues Nazar the Brave and 21 Days That Change the Year: Two beloved family-friendly productions, inspired by Iranian and Armenian fairytales will be presented in one afternoon.', url: "http://www.goldenthread.org/reorient2015/", email: "information@goldenthread.org", image: "fairytale.jpg" )

Address.create(name: "Z Space", street: "450 Florida St.", city: "San Francisco", state: "CA", zip: 94110)

Performance.create(address_id: 2, production_id: 1, date_and_time: DateTime.parse('Oct 4 2015 14:00'), price: 20)

Production.create(company_id: 1, title: "Arab Folk Song Recital", writer: "Saousan Jarjour", director: "n/a", genre: "Music", description: "Acclaimed Syrian-American soprano presents a repertoire of Arab folk songs, reimagined.", url: "http://www.goldenthread.org/reorient2015/", email: "information@goldenthread.org", image: "music.jpg")

Performance.create(address_id: 2, production_id: 2, date_and_time: DateTime.parse('Oct 3 2015 14:00'), price: 20)

VoteType.create(criteria: "Venue", description: "How was the atmosphere? Was the staff helpful? How were concessions? Lines? Bathroom cleanliness?")

VoteType.create(criteria: "Design", description: "How was the lighting? Sound? Costumes? Set? Special effects?")

VoteType.create(criteria: "Story", description: "How was storytelling? The direction? The writing of the piece?")

VoteType.create(criteria: "Acting", description: "Were the performers believable? How were their skills during the piece?")