#Users
User.create(name: "Diana", email: "diana@mail.com", password: "manolo1")
User.create(name:"Chuy", email: "chuy@mail.com", password: "manolo2")
User.create(name:"Mayra", email: "may@mail.com", password: "manolo3")

#decks
Deck.create(name: "Capitales de Mexico")

#cards
Card.create(deck_id: 1, question: "México", answer1: "Toluca", answer2: "DF" , answer3: "México", correct_answer: "Toluca")
Card.create(deck_id: 1, question: "Michoacan", answer1: "Patzcuaro", answer2: "Morelia", answer3: "Janitzio", correct_answer: "Morelia")
Card.create(deck_id: 1, question: "Nuevo León", answer1: "Monterrey" , answer2: "Apodaca" , answer3: "Santa Lucia", correct_answer: "Monterrey")

#Game
Game.create(user_id: 1, deck_id: 1, correct_answer: 2)
