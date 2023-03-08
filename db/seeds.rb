product = Product.new({ name: "Nike Airforce 1", price: 15, image_url: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.flightclub.com%2Fnike%2Fnike-air-force&psig=AOvVaw0qdr4fb4EyRiGrUl5Jqp3S&ust=1677783930917000&source=images&cd=vfe&ved=0CBAQjhxqGAoTCND7kay2u_0CFQAAAAAdAAAAABDiAg", description: "Fresh shoes" })
product.save
product = Product.new({ name: "Adidas Sambas", price: 20, image_url: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fsoccerwearhouse.com%2Fproducts%2Fadidas-samba-classic-indoor-shoes-white-black&psig=AOvVaw3g2JDqM0JLubBsIDPAWgwI&ust=1677784062514000&source=images&cd=vfe&ved=0CBAQjhxqFwoTCND-0Oq2u_0CFQAAAAAdAAAAABAY", description: "Indoor Soccer shoes" })
product.save
product = Product.new({ name: "Puma Cortez", price: 10, image_url: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.amazon.com%2FPUMA-Mens-Turin-Fashion-Sneaker%2Fdp%2FB01EGVAS3C&psig=AOvVaw0EMR42wrhDxeSAGtIcUPJV&ust=1677784183320000&source=images&cd=vfe&ved=0CBAQjhxqFwoTCMDCmaS3u_0CFQAAAAAdAAAAABAF", description: "Casual Shoes" })
product.save

supplier = Supplier.new(name: "Nike", email: "Nike@example.co", phone_number: "123-234-3456")
supplier.save
supplier = Supplier.new(name: "Adidas", email: "Adidas@example.co", phone_number: "123-789-3456")
supplier.save
supplier = Supplier.new(name: "Puma", email: "Puma@example.co", phone_number: "123-321-3456")
supplier.save
