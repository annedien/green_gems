User.delete_all
Location.delete_all
Product.delete_all

User.create(email: "sebastiaan@greemgems.com", password: "secret")
User.create(email: "tanja@greemgems.com", password: "secret")

kitchen = Location.create(name: "Kitchen")
bedroom = Location.create(name: "Bedroom")
bathroom = Location.create(name: "Bathroom")
livingroom = Location.create(name: "Livingroom")
outdoor = Location.create(name: "Outdoor")

product1 = Product.create(name:"Spider Plant", species:"Chlorophytum comosum", maintenance:"easy", price:25.00, description:"Pickled helvetica af migas. Humblebrag flexitarian tacos farm-to-table, iPhone gentrify blue bottle truffaut small batch hot chicken pinterest swag vegan bushwick. Cardigan semiotics poke beard health goth fanny pack, lo-fi air plant blue bottle seitan intelligentsia la croix try-hard. Everyday carry stumptown tacos brunch actually cronut.", image_url:"https://s-media-cache-ak0.pinimg.com/564x/1e/e1/83/1ee1835d72381984104014af1ab95a88.jpg", location:"empty", needs_sun:true, needs_shade:false, needs_halfshade:false)
product2 = Product.create(name:"Ant Plant", species:"Chlorophytum comosum", maintenance:"easy", price:25.00, description:"Pickled helvetica af migas. Humblebrag flexitarian tacos farm-to-table, iPhone gentrify blue bottle truffaut small batch hot chicken pinterest swag vegan bushwick. Cardigan semiotics poke beard health goth fanny pack, lo-fi air plant blue bottle seitan intelligentsia la croix try-hard. Everyday carry stumptown tacos brunch actually cronut.", image_url:"https://images.britcdn.com/wp-content/uploads/2016/02/Untitled-11.jpg", location:"empty", needs_sun:true, needs_shade:false, needs_halfshade:false)
product3 = Product.create(name:"Elephant Plant", species:"Chlorophytum comosum", maintenance:"easy", price:25.00, description:"Pickled helvetica af migas. Humblebrag flexitarian tacos farm-to-table, iPhone gentrify blue bottle truffaut small batch hot chicken pinterest swag vegan bushwick. Cardigan semiotics poke beard health goth fanny pack, lo-fi air plant blue bottle seitan intelligentsia la croix try-hard. Everyday carry stumptown tacos brunch actually cronut.", image_url:"http://www.theborrowednursery.com.au/wp-content/uploads/2015/06/IMG_3304-449x600.jpg", location:"empty", needs_sun:true, needs_shade:false, needs_halfshade:false)
