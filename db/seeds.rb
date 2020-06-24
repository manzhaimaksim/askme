Question.destroy_all
User.destroy_all

neo = User.create(id: 1, name: 'Новичок', username: 'Neo', email: 'neo@matrix.com', password: '12345', avatar_url: 'Neo.jpg', avatar_color: '#FF0000')
trinity = User.create(id: 2, name: 'Троица', username: 'Trinity', email: 'trinity@matrix.com', password: '12345', avatar_url: 'Trinityfull.jpg', avatar_color: '#FF6600')
morpheus = User.create(id: 3, name: 'Морфей', username: 'Morpheus', email: 'morpheus@matrix.com', password: '12345', avatar_url: 'Morpheus1.jpg', avatar_color: '#FFFF00')

users_count = User.count

# добавим 1 к автору вопроса, для создания вопросов от анонима
Question.create(user_id: rand(1..users_count), text: 'Как твои #дела?', created_at: Date.today + rand(0..1440).minutes, author_id: rand(1..users_count + 1))
Question.create(user_id: rand(1..users_count), text: 'Какова твоя #профессия?', created_at: Date.today + rand(0..1440).minutes, author_id: rand(1..users_count + 1))
Question.create(user_id: rand(1..users_count), text: '#Сколько тебе лет?', created_at: Date.today + rand(0..1440).minutes, author_id: rand(1..users_count + 1))
Question.create(user_id: rand(1..users_count), text: '#Сколько ты зарабатываешь?', created_at: Date.today + rand(0..1440).minutes, author_id: rand(1..users_count + 1))
Question.create(user_id: rand(1..users_count), text: 'Твой любимый цвет?', created_at: Date.today + rand(0..1440).minutes, author_id: rand(1..users_count + 1))
Question.create(user_id: rand(1..users_count), text: 'Когда ты последний раз ходил на #концерт?', created_at: Date.today + rand(0..1440).minutes, author_id: rand(1..users_count + 1))

Question.create(user_id: rand(1..users_count), text: 'На чей #концерт ты ходил последний раз?', created_at: Date.today + rand(0..1440).minutes, author_id: rand(1..users_count + 1),
                answer: 'Последний раз я ходил на #концерт Rammstein')

Question.create(user_id: rand(1..users_count), text: 'Твоя любимая хоккейная #команда?', created_at: Date.today + rand(0..1440).minutes, author_id: rand(1..users_count + 1),
                answer: 'Моя любимая #команда #Динамо #Минск')

Question.create(user_id: rand(1..users_count), text: 'Во #сколько ты возвращаешься с #работы?', created_at: Date.today + rand(0..1440).minutes, author_id: rand(1..users_count + 1))
Question.create(user_id: rand(1..users_count), text: 'Твое любимое #животное?', created_at: Date.today + rand(0..1440).minutes, author_id: rand(1..users_count + 1))
Question.create(user_id: rand(1..users_count), text: '#Сколько у тебя #ракет?', created_at: Date.today + rand(0..1440).minutes, author_id: rand(1..users_count + 1))
Question.create(user_id: rand(1..users_count), text: 'Как ты #отдыхаешь?', created_at: Date.today + rand(0..1440).minutes, author_id: rand(1..users_count + 1))
Question.create(user_id: rand(1..users_count), text: 'Какая твоя первая #машина?', created_at: Date.today + rand(0..1440).minutes, author_id: rand(1..users_count + 1))

Question.create(user_id: rand(1..users_count), text: 'Где ты #трудишься?', created_at: Date.today + rand(0..1440).minutes, author_id: rand(1..users_count + 1),
                answer: 'Я работаю в #команда Выходные Вместе')

Question.create(user_id: rand(1..users_count), text: 'Привет! Как #дела?', created_at: Date.today + rand(0..1440).minutes, author_id: rand(1..users_count + 1))
Question.create(user_id: rand(1..users_count), text: 'Привет! Как #дела?', created_at: Date.today + rand(0..1440).minutes, author_id: rand(1..users_count + 1))
