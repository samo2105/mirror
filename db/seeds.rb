# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

BRAND_LIST = [
    "Ford",
    "Alfa Romeo",
    "Chevrolet",
    "Fiat",
    "Mercedes",
    "Lamborghini",
    "BMW",
    "Honda",
    "Hyundai",
    "Kia",
    "MG",
    "Mazda",
    "Nissan",
    "Porsche",
    "Peugeot",
    "Mitsubishi",
    "Renault",
    "Ssangyong",
    "Citroen",
    "Suzuki",
    "Mahindra",
    "Toyota",
    "Jeep",
    "Volkswagen",
    "Dodge",
    "Dongfeng",
    "Hafei",
    "Baic",
    "Chery",
    "Changan",
    "Foton",
    "Lifan",
    "JAC",
    "Maxus",
    "Opel",
    "Ram",
    "Samsung",
    "Volvo",
    "Subaru",
    "Audi",
    "Ferrari"
].freeze

automovil = VehicleType.create(name: "Automovil", wheels: 4) 
camion = VehicleType.create(name: "Camion", wheels: 8) 
moto = VehicleType.create(name: "Moto", wheels: 2) 
triciclo = VehicleType.create(name: "Triciclo", wheels: 3) 
bicicleta = VehicleType.create(name: "Bicicleta", wheels: 2) 

VEHICLE_SUB_TYPE = [
    [automovil, "Sedan"],
    [automovil, "SUV"],
    [automovil, "Hatchback"],
    [automovil, "Camioneta"],
    [automovil, "Coupe"],
    [automovil, "Station Wagon"],
    [automovil, "Pick Up"],
    [automovil, "MPV"],
]

TRACTIONS = [
    "4x2 FWD",
    "4x2 RWD",
    "4x4 4WD"
]


BRAND_LIST.each do |brand|
    Brand.create(name: brand)
end

VEHICLE_SUB_TYPE.each do |vehicle, name|
    vehicle.vehicle_sub_types.create(name: name)
end

TRACTIONS.each do |type|
    Traction.create(name: type)
end
