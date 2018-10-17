User.destroy_all

u1 = User.create name: "Linna", email: "linna@ga.co", password: "chicken", image: "/assets/bg.jpeg"
u2 = User.create name: "Bob", email: "bob@ga.co", password: "chicken", image: "/assets/bg.jpeg"
u3 = User.create name: "Patrick", email: "patrick@ga.co", password: "chicken", image: "/assets/car2.jpg"
u4 = User.create name: "Peter", email: "peter@ga.co", password: "chicken", image: "/assets/car.jpeg"
u5 = User.create name: "Gary", email: "gary@ga.co", password: "chicken", image: "/assets/car2.jpg"
u6 = User.create name: "Elizabeth", email: "elizabeth@ga.co", password: "chicken", image: "/assets/car.jpg"

puts "#{User.all.length} users"

Cuisine.destroy_all

Restaurant.destroy_all

re1 = Restaurant.create name: "Est.", address: "Level 1, Establishment, 252 George Street, CBD, Sydney, NSW", open_hrs: "12noon – 2:30pm, 6pm – 10pm", cost_two: 320, phone:"+61291147312", image:"/assets/est.jpg", year:2013, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque erat lacus, maximus id volutpat sagittis, cursus id justo. Cras blandit risus eget pellentesque molestie. Sed volutpat orci at neque finibus vestibulum. Morbi magna lectus, semper sed interdum ac, posuere quis orci. Morbi ultricies diam ac mi fermentum tempus. Vestibulum sapien urna, commodo eu dolor vel, commodo blandit eros. Mauris non metus bibendum, accumsan augue a, ullamcorper quam."



re2 = Restaurant.create name: "Momofuku Seiōbo", address: "80 Pyrmont Street, The Star, Pyrmont, Pyrmont, Sydney", open_hrs: "6:30pm – 10pm", cost_two: 370, phone:"+61296579169", image:"/assets/momofuku.jpg", year:2019, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque erat lacus, maximus id volutpat sagittis, cursus id justo. Cras blandit risus eget pellentesque molestie. Sed volutpat orci at neque finibus vestibulum. Morbi magna lectus, semper sed interdum ac, posuere quis orci. Morbi ultricies diam ac mi fermentum tempus. Vestibulum sapien urna, commodo eu dolor vel, commodo blandit eros. Mauris non metus bibendum, accumsan augue a, ullamcorper quam."

re3 = Restaurant.create name: "Quay", address: "Upper Level, Overseas Passenger Terminal 5 Hickson Road, The Rocks, Sydney, NSW", open_hrs: "6pm – 10pm", cost_two: 500, phone:"+61292515600", image:"/assets/quay.jpg", year:2019, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque erat lacus, maximus id volutpat sagittis, cursus id justo. Cras blandit risus eget pellentesque molestie. Sed volutpat orci at neque finibus vestibulum. Morbi magna lectus, semper sed interdum ac, posuere quis orci. Morbi ultricies diam ac mi fermentum tempus. Vestibulum sapien urna, commodo eu dolor vel, commodo blandit eros. Mauris non metus bibendum, accumsan augue a, ullamcorper quam."

re4 = Restaurant.create name: "Rockpool", address: "66 Hunter Street, CBD, Sydney, NSW", open_hrs: "6pm – 10pm", cost_two: 150, phone:"+61280781900", image:"/assets/rockpool.jpg", year:2016, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque erat lacus, maximus id volutpat sagittis, cursus id justo. Cras blandit risus eget pellentesque molestie. Sed volutpat orci at neque finibus vestibulum. Morbi magna lectus, semper sed interdum ac, posuere quis orci. Morbi ultricies diam ac mi fermentum tempus. Vestibulum sapien urna, commodo eu dolor vel, commodo blandit eros. Mauris non metus bibendum, accumsan augue a, ullamcorper quam."

re5 = Restaurant.create name: "Sepia", address: "Darling Park, 201 Sussex Street, Darling Harbour, Sydney", open_hrs: "6pm – 10pm", cost_two: 500, phone:"+61292831990", image:"/assets/sepia.jpg", year:2019, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque erat lacus, maximus id volutpat sagittis, cursus id justo. Cras blandit risus eget pellentesque molestie. Sed volutpat orci at neque finibus vestibulum. Morbi magna lectus, semper sed interdum ac, posuere quis orci. Morbi ultricies diam ac mi fermentum tempus. Vestibulum sapien urna, commodo eu dolor vel, commodo blandit eros. Mauris non metus bibendum, accumsan augue a, ullamcorper quam."

re6 = Restaurant.create name: "The Bridge Room", address: "Ground Level, 44 Bridge Street, Circular Quay, Sydney", open_hrs: "12noon – 3pm, 6pm – 10pm", cost_two: 150, phone:"+61292477000", image:"/assets/bridge_room.jpg", year:2017, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque erat lacus, maximus id volutpat sagittis, cursus id justo. Cras blandit risus eget pellentesque molestie. Sed volutpat orci at neque finibus vestibulum. Morbi magna lectus, semper sed interdum ac, posuere quis orci. Morbi ultricies diam ac mi fermentum tempus. Vestibulum sapien urna, commodo eu dolor vel, commodo blandit eros. Mauris non metus bibendum, accumsan augue a, ullamcorper quam."

re7 = Restaurant.create name: "Sixpenny", address: "83 Percival Rd, Stanmore", open_hrs: "6pm – 10pm", cost_two: 280, phone:"+61295726666", image:"/assets/sixpenny.jpg", year: 2019, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque erat lacus, maximus id volutpat sagittis, cursus id justo. Cras blandit risus eget pellentesque molestie. Sed volutpat orci at neque finibus vestibulum. Morbi magna lectus, semper sed interdum ac, posuere quis orci. Morbi ultricies diam ac mi fermentum tempus. Vestibulum sapien urna, commodo eu dolor vel, commodo blandit eros. Mauris non metus bibendum, accumsan augue a, ullamcorper quam."

re8 = Restaurant.create name: "Tetsuya's", address: "529 Kent Street, CBD, Sydney, NSW", open_hrs: "6pm – 10pm", cost_two: 440, phone:"+61292672900", image:"/assets/tetsuya.png", year: 2010, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque erat lacus, maximus id volutpat sagittis, cursus id justo. Cras blandit risus eget pellentesque molestie. Sed volutpat orci at neque finibus vestibulum. Morbi magna lectus, semper sed interdum ac, posuere quis orci. Morbi ultricies diam ac mi fermentum tempus. Vestibulum sapien urna, commodo eu dolor vel, commodo blandit eros. Mauris non metus bibendum, accumsan augue a, ullamcorper quam."




puts "#{Restaurant.all.length} restaurants"


Review.destroy_all

r1 = Review.create content: "It was really good.", rating: 3, user_id: u1.id, restaurant_id: re1.id, image: "http://placekitten.com/250/250"

r2 = Review.create content: "Amazing! Had an excellent time", rating: 4, user_id: u3.id, restaurant_id: re2.id, image: "http://placekitten.com/250/250"

r3 = Review.create content: "It was really bad!! Never coming again!", rating: 1, user_id: u2.id, restaurant_id: re2.id, image: "http://placekitten.com/250/250"

r4 = Review.create content: "It was really good!! Always coming again!", rating: 5, user_id: u5.id, restaurant_id: re3.id, image: "http://placekitten.com/250/250"

r5 = Review.create content: "WOW SO good! Always coming again!", rating: 3, user_id: u2.id, restaurant_id: re6.id, image: "http://placekitten.com/250/250"

r6 = Review.create content: "It was really good!! Always coming again!", rating: 5, user_id: u3.id, restaurant_id: re1.id, image: "http://placekitten.com/250/250"

r7 = Review.create content: "It was really good!! Always so GOOD", rating: 2, user_id: u4.id, restaurant_id: re3.id, image: "http://placekitten.com/250/250"

r8 = Review.create content: "It was really good!! Always coming again!", rating: 5, user_id: u2.id, restaurant_id: re3.id, image: "http://placekitten.com/250/250"

r9 = Review.create content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Always coming again!", rating: 5, user_id: u6.id, restaurant_id: re4.id, image: "http://placekitten.com/250/250"

r10 = Review.create content: "It was really good!! Always coming again!", rating: 5, user_id: u3.id, restaurant_id: re4.id, image: "http://placekitten.com/250/250"

r11 = Review.create content: "It was really good!! Always coming again!", rating: 5, user_id: u4.id, restaurant_id: re5.id, image: "http://placekitten.com/250/250"

r12 = Review.create content: "It was really good!! Always coming again!", rating: 5, user_id: u4.id, restaurant_id: re2.id, image: "http://placekitten.com/250/250"

r13 = Review.create content: "It was really good!! Always coming again!", rating: 5, user_id: u6.id, restaurant_id: re1.id, image: "http://placekitten.com/250/250"

r14 = Review.create content: "It was really good!! Always coming again!", rating: 5, user_id: u3.id, restaurant_id: re8.id, image: "http://placekitten.com/250/250"

r15 = Review.create content: "It was really good!! Always coming again!", rating: 3, user_id: u5.id, restaurant_id: re8.id, image: "http://placekitten.com/250/250"

r16 = Review.create content: "It was really good!! Always coming again!", rating: 2, user_id: u4.id, restaurant_id: re1.id, image: "http://placekitten.com/250/250"

r17 = Review.create content: "It was really good!! Always coming again!", rating: 5, user_id: u1.id, restaurant_id: re5.id, image: "http://placekitten.com/250/250"

r18 = Review.create content: "Amazing! Had an excellent time", rating: 1, user_id: u3.id, restaurant_id: re7.id, image: "http://placekitten.com/250/250"

puts "#{Review.all.length} reviews"
