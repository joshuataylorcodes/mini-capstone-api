# product = Product.new({ name: "Nike Airforce 1", price: 15, description: "Fresh shoes" })
# product.save
# product = Product.new({ name: "Adidas Sambas", price: 20, description: "Indoor Soccer shoes" })
# product.save
# product = Product.new({ name: "Puma Cortez", price: 10, description: "Casual Shoes" })
# product.save

# supplier = Supplier.new(name: "Nike", email: "Nike@example.co", phone_number: "123-234-3456")
# supplier.save
# supplier = Supplier.new(name: "Adidas", email: "Adidas@example.co", phone_number: "123-789-3456")
# supplier.save
# supplier = Supplier.new(name: "Puma", email: "Puma@example.co", phone_number: "123-321-3456")
# supplier.save

# image = Image.new(url: "https://images.complex.com/complex/image/upload/c_fill,dpr_auto,f_auto,fl_lossy,g_face,q_auto,w_1280/iot1dbjmzr7z6kfkoxrb.png")
# image.save
# image = Image.new(url: "https://media.gq.com/photos/603ffdf7fa4169891572a186/master/pass/Samba.jpg")
# image.save
# image = Image.new(url: "https://i.pinimg.com/736x/de/f3/c2/def3c21bc2a660b5b3d7e111dbccb79d--men-clothes-pumas.jpg")
# image.save

User.create!([
  { name: "Josh Taylor", email: "josh.t@example.com", password: "password" },
])
