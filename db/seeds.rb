Question.destroy_all
User.destroy_all

neo = User.create(id: 1, name: 'Новичок', username: 'Neo', email: 'neo@matrix.com', password: '12345', avatar_url: 'Neo.jpg', avatar_color: 'yellow')
trinity = User.create(id: 2, name: 'Троица', username: 'Trinity', email: 'trinity@matrix.com', password: '12345', avatar_url: 'Trinityfull.jpg', avatar_color: 'green')
morpheus = User.create(id: 3, name: 'Морфей', username: 'Morpheus', email: 'morpheus@matrix.com', password: '12345', avatar_url: 'Morpheus1.jpg', avatar_color: 'red')

Question.create(user_id: rand(1..User.all.count), text: 'Как дела?', created_at: Date.parse('21.05.2020'), author_id: rand(1..User.all.count))
Question.create(user_id: rand(1..User.all.count), text: 'Какова твоя профессия?', created_at: Date.parse('22.05.2020'), author_id: rand(1..User.all.count))
Question.create(user_id: rand(1..User.all.count), text: 'Сколько тебе лет?', created_at: Date.parse('23.05.2020'), author_id: rand(1..User.all.count))
Question.create(user_id: rand(1..User.all.count), text: 'Сколько ты зарабатываешь?', created_at: Date.parse('24.05.2020'), author_id: rand(1..User.all.count))
Question.create(user_id: rand(1..User.all.count), text: 'Твой любимый цвет?', created_at: Date.parse('25.05.2020'), author_id: rand(1..User.all.count))
Question.create(user_id: rand(1..User.all.count), text: 'Когда ты последний раз ходил на концерт?', created_at: Date.parse('26.05.2020'), author_id: rand(1..User.all.count))
Question.create(user_id: rand(1..User.all.count), text: 'Твоя любимая хоккейная команда?', created_at: Date.parse('27.05.2020'), author_id: rand(1..User.all.count))
Question.create(user_id: rand(1..User.all.count), text: 'Во сколько ты возвращаешься с работы?', created_at: Date.parse('28.05.2020'), author_id: rand(1..User.all.count))

Question.create(user_id: rand(1..User.all.count), text: 'Твое любимое животное?', created_at: Date.today + rand(0..1260).minutes, author_id: rand(1..User.all.count))
Question.create(user_id: rand(1..User.all.count), text: 'Сколько у тебя ракет?', created_at: Date.today + rand(0..1260).minutes, author_id: rand(1..User.all.count))
Question.create(user_id: rand(1..User.all.count), text: 'Как ты отдыхаешь?', created_at: Date.today + rand(0..1260).minutes, author_id: rand(1..User.all.count))
Question.create(user_id: rand(1..User.all.count), text: 'Какая твоя первая машина?', created_at: Date.today + rand(0..1260).minutes, author_id: rand(1..User.all.count))
Question.create(user_id: rand(1..User.all.count), text: 'Где ты трудишься?', created_at: Date.today + rand(0..1260).minutes, author_id: rand(1..User.all.count))

Question.create(user_id: rand(1..User.all.count), text: 'Привет! Как дела?', created_at: Date.today + rand(0..1260).minutes, author_id: rand(1..User.all.count))
Question.create(user_id: rand(1..User.all.count), text: 'Привет! Как дела?', created_at: Date.today + rand(0..1260).minutes, author_id: rand(1..User.all.count))
