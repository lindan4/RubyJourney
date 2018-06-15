class Formatting


  formatter = "%{first} %{second} %{third} %{fourth}"

  puts formatter % {first: 1, second: 2, third: 3, fourth: 4}

  puts formatter % {first: "My", second: "day", third: "went", fourth: "great"}

  puts """Spicy"""
end