puts "🌱 Seeding spices..."

# Seed your database here


# users
steve = User.create(firstname:"steve", lastname:"jobs", email:"jobs@example.com",phone_number:"555-555-5555",password:"password",location:"palo alto")
elon = User.create(firstname:"elon",lastname:"musk",email:"musk@example.com",phone_number:"555-382-232",password:"password",location:"johannesburg")

#locations
palo_alto = Location.create(name:"palo alto",address:"37.4419° N, 122.1430° W")
johannesburg = Location.create(name:"johannesburg",address:"26.2041° S, 28.0473° E")

# Parcel.create(category:"Macbooks",weight:100,price:500,user_id:1,location_id:,parcel_destination:palo_alto)

puts "✅ Done seeding!"
