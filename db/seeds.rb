# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: 'admin@admin.com', nome: 'admin', admin: 1, password: '123123')
User.create(email: 'teste@teste.com', nome: 'teste', admin: 0, password: '123123')
Category.create(name: 'Saladas')
Category.create(name: 'Entradas')
Category.create(name: 'Pratos Principais')
Category.create(name: 'Sobremesas')
Meal.create(title: 'Salada Simples', text: 'Salada bem simples na moral, só pra quem é fit poser', price: 20, category_id: Category.find_by_id(1).id, image:Rails.root.join("app/assets/images/imgrefeicoes/ssimples.jpg").open)
Meal.create(title: 'Salada Azeitona', text: 'Salada bem simples na moral, mas com azeitona', price: 25, category_id: Category.find_by_id(1).id, image:Rails.root.join("app/assets/images/imgrefeicoes/sazeitona.jpg").open)
Meal.create(title: 'Salada Salmão', text: 'Salada pra quem quer ficar monstrão, com salmão', price: 30, category_id: Category.find_by_id(1).id, image:Rails.root.join("app/assets/images/imgrefeicoes/ssalmao.jpg").open)
Meal.create(title: 'Canapé mt loco', text: 'Canapé boladíssimo, só pra quem é burgues', price: 30, category_id: Category.find_by_id(2).id, image:Rails.root.join("app/assets/images/imgrefeicoes/epetiscos.jpg").open)
Meal.create(title: 'Canapé abobrinha', text: 'Esse canapé é só pra quem é burguês e fit', price: 40, category_id: Category.find_by_id(2).id, image:Rails.root.join("app/assets/images/imgrefeicoes/echuchu.jpg").open)
Meal.create(title: 'Sashimi', text: 'Esse aqui é pra comprar pra minazinha(o)', price: 20, category_id: Category.find_by_id(2).id, image:Rails.root.join("app/assets/images/imgrefeicoes/esashimi.jpg").open, available: false)
Meal.create(title: 'Almondega', text: 'Armonga boladíssima', price: 50, category_id: Category.find_by_id(3).id, image:Rails.root.join("app/assets/images/imgrefeicoes/ppalmondega.jpeg").open)
Meal.create(title: 'Caviar', text: 'Nunca vi nem ouvi, eu só ouço falar', price: 200, category_id: Category.find_by_id(3).id, image:Rails.root.join("app/assets/images/imgrefeicoes/ppcaviar.jpg").open)
Meal.create(title: 'Galeto', text: 'Nem sei o que é, mas parece coisa de morador do lago sul', price: 80, category_id: Category.find_by_id(3).id, image:Rails.root.join("app/assets/images/imgrefeicoes/ppgaleto.jpeg").open)
Meal.create(title: 'Strogonoff', text: 'Comida do povo, comida que enche pra depois ir labutar.', price: 20, category_id: Category.find_by_id(3).id, image:Rails.root.join("app/assets/images/imgrefeicoes/ppstrogonof.jpg").open)
Meal.create(title: 'Pudim', text: 'É parceiro, quem não curte um pudim?', price: 10, category_id: Category.find_by_id(4).id, image:Rails.root.join("app/assets/images/imgrefeicoes/sobpudim.jpg").open)
Meal.create(title: 'Pavê', text: 'É pavê, ou pra fazer o trabalho bem feito? Fica aí a dúvida.', price: 25, category_id: Category.find_by_id(4).id, image:Rails.root.join("app/assets/images/imgrefeicoes/sobpave.jpg").open)
Meal.create(title: 'Sorvete', text: 'Sorvetão pica que a gente pede do outback e revende mais caro.', price: 30, category_id: Category.find_by_id(4).id, image:Rails.root.join("app/assets/images/imgrefeicoes/sobsorvete.jpg").open)
