Brand.destroy_all
Watch.destroy_all

Brand.create(name: "Rolex", country: "Switzerland")
Brand.create(name: "Omega", country: "Switzerland")

Watch.create(reference_number: "116500LN", model: "Daytona", price: 14000, movement: "Automatic", year_of_production: 2021, case_material: "Steel", case_diameter: "40mm", description: "Chronograph watch", bracelet: "Oystersteel", lug_to_lug: "47mm", lume: true, brand_id: 1)

Watch.create(reference_number: "310.30.42.50.01.001", model: "Speedmaster", price: 6100, movement: "Manual", year_of_production: 2020, case_material: "Steel", case_diameter: "42mm", description: "Moonwatch", bracelet: "Steel", lug_to_lug: "48mm", lume: true, brand_id: 2)
