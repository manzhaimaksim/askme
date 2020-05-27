# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Question.destroy_all
User.destroy_all

neo = User.create(id: 1, name: 'Новичок', username: 'Neo', email: 'neo@matrix.com', password: '12345', avatar_url: 'Neo.jpg', avatar_color: 'yellow')
trinity = User.create(id: 2, name: 'Троица', username: 'Trinity', email: 'trinity@matrix.com', password: '12345', avatar_url: 'Trinityfull.jpg', avatar_color: 'green')
morpheus = User.create(id: 3, name: 'Морфей', username: 'Morpheus', email: 'morpheus@matrix.com', password: '12345', avatar_url: 'Morpheus1.jpg', avatar_color: 'red')

Question.create(user_id: morpheus.id, text: 'Как дела?', created_at: Date.parse('21.05.2020'))

Question.create(user_id: trinity.id, text: 'Какова твоя профессия?', created_at: Date.parse('21.05.2020'))
Question.create(user_id: trinity.id, text: 'Сколько тебе лет?', created_at: Date.parse('22.05.2020'))

Question.create(user_id: neo.id, text: 'Сколько ты зарабатываешь?', created_at: Date.parse('22.05.2020'))
Question.create(user_id: neo.id, text: 'Твой любимый цвет?', created_at: Date.parse('22.05.2020'))
Question.create(user_id: neo.id, text: 'Когда ты последний раз ходил на концерт?', created_at: Date.parse('22.05.2020'))
Question.create(user_id: neo.id, text: 'Твоя любимая хоккейная команда?', created_at: Date.parse('22.05.2020'))
Question.create(user_id: neo.id, text: 'Во сколько ты возвращаешься с работы?', created_at: Date.parse('22.05.2020'))
