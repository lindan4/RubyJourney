class BMI

  puts "Welcome to the BMI calculator?"

  puts "Enter your weight in kg: "

  weightKg = Float(gets.chomp)

  puts "Enter your height in metres: "

  heightMetres = Float(gets.chomp)


  result = weightKg / (heightMetres * heightMetres)

  puts "Your BMI is #{result.round(2)}"






end