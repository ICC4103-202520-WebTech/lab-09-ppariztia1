# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb

# ===== Usuarios =====
User.create!([
  { email: "admin@example.com", password: "123456", role: :admin },
  { email: "juan@example.com",  password: "123456", role: :normal },
  { email: "maria@example.com", password: "123456", role: :normal }
])

puts "✅ Usuarios creados: #{User.count}"

# ===== Recetas =====
Recipe.create!([
  {
    title: "Spaghetti a la bolognesa",
    cook_time: 30,
    difficulty: "medium",
    instructions: "Cocina la pasta al dente. En otra olla, sofríe cebolla, ajo y carne molida. Agrega salsa de tomate y condimenta con sal y orégano. Mezcla con la pasta y sirve con queso rallado.",
    user: User.find_by(email: "juan@example.com")
  },
  {
    title: "Ensalada César",
    cook_time: 10,
    difficulty: "easy",
    instructions: "Lava y corta la lechuga romana. Prepara el aderezo con mayonesa, mostaza, ajo y jugo de limón. Agrega crutones y queso parmesano. Mezcla todo y sirve frío.",
    user: User.find_by(email: "maria@example.com")
  },
  {
    title: "Lomo al horno",
    cook_time: 60,
    difficulty: "hard",
    instructions: "Sella el lomo en sartén con aceite caliente. Luego hornéalo a 180°C por 45 minutos con vino tinto, cebolla y zanahoria. Deja reposar antes de cortar y servir.",
    user: User.find_by(email: "juan@example.com")
  },
  {
    title: "Papas doradas",
    cook_time: 25,
    difficulty: "easy",
    instructions: "Corta las papas en cubos. Fríelas hasta que estén doradas. Condimenta con sal, romero y ajo en polvo. Sirve calientes.",
    user: User.find_by(email: "maria@example.com")
  },
  {
    title: "Tiramisú",
    cook_time: 45,
    difficulty: "medium",
    instructions: "Prepara café fuerte. Mezcla queso mascarpone con azúcar y yemas. Remoja galletas de champaña en café y forma capas con la crema. Refrigera 3 horas y espolvorea cacao antes de servir.",
    user: User.find_by(email: "juan@example.com")
  }
])

puts "✅ Recetas creadas: #{Recipe.count}"
puts "🌱 Seed completado con éxito"
