# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
u1 = User.create(user_name:'Sunny')
u2 = User.create(user_name:'Tony')
u3 = User.create(user_name:'Hope')
u4 = User.create(user_name:'Luis')

Poll.destroy_all
p1 = Poll.create(author: u1.id, title: 'Analyzing TA''s patience')
p2 = Poll.create(author: u1.id, title: 'Analyzing TA''s happiness')
p3 = Poll.create(author: u1.id, title: 'Analyzing TA''s sadness')

Question.destroy_all
q1 = Question.create(text: "Whose the best TA?", poll_id: p1.id)
q2 = Question.create(text: "Whose your favorite?", poll_id: p1.id)

AnswerChoice.destroy_all
ac1 = AnswerChoice.create(text: "Luke", question_id:q1.id)
ac2 = AnswerChoice.create(text: "Louis", question_id: q1.id)
ac3 = AnswerChoice.create(text: "Hope", question_id: q1.id)

Response.destroy_all
r1 = Response.create(answer_choice_id: ac1.id, user_id: u1.id)
r2 = Response.create(answer_choice_id: ac1.id, user_id: u2.id )
r3 = Response.create(answer_choice_id: ac1.id, user_id: u3.id )
