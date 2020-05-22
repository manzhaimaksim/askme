# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Question.destroy_all
User.destroy_all

neo = User.create(id: 1, name: 'Томас', username: 'Neo', email: 'neo@matrix.com', password: '12345', avatar_url: 'https://lh3.googleusercontent.com/proxy/t4VSk28SszACGvrJIf3fASqZppZy_Nd9Mx9AvODEqa9KBiFZzQeBR00skIA_U3xvn9Kkkp4y15ZtAlnkoKNBbmfqk84P0H5Hq0wbNiHgVlRBbegX6g9qOplOr90sLcIlBGWix4-Z-3GX4Z1aSNc')
trinity = User.create(id: 2, name: 'Троица', username: 'Trinity', email: 'trinity@matrix.com', password: '12345', avatar_url: 'https://lh3.googleusercontent.com/proxy/Chd_uIK2rxOGP_2VgLqPgCy3XB7dh_S3vYCZOGvkb9NCo1LAp0Gl4a0y4r8nQQRZRhfkEvVz5MHE1r225fHrpVlUh1MbIgcHOmBrbn6YC1hQJWJW7anNrhOiAN7EGMD_PVc3p2cnGsXjoSyeRAA')
morpheus = User.create(id: 3, name: 'Морфей', username: 'Morpheus', email: 'morpheus@matrix.com', password: '12345', avatar_url: 'https://pbs.twimg.com/profile_images/935940203239411712/Kq4moIYP.jpg')

Question.create(user_id: morpheus.id, text: 'Как дела?', created_at: Date.parse('21.05.2020'))

Question.create(user_id: trinity.id, text: 'Какова твоя профессия?', created_at: Date.parse('21.05.2020'))
Question.create(user_id: trinity.id, text: 'Сколько тебе лет?', created_at: Date.parse('22.05.2020'))

Question.create(user_id: neo.id, text: 'Сколько ты зарабатываешь?', created_at: Date.parse('22.05.2020'))
Question.create(user_id: neo.id, text: 'Твой любимый цвет?', created_at: Date.parse('22.05.2020'))
Question.create(user_id: neo.id, text: 'Когда ты последний раз ходил на концерт?', created_at: Date.parse('22.05.2020'))
Question.create(user_id: neo.id, text: 'Твоя любимая хоккейная команда?', created_at: Date.parse('22.05.2020'))
Question.create(user_id: neo.id, text: 'Во сколько ты возвращаешься с работы?', created_at: Date.parse('22.05.2020'))
