User.create!(
  email: "admin@example.com",
  password: "password123",
  password_confirmation: "password123",
  name: "Admin User",
  roles: "site_admin"
)
puts "1 Admin user created"

User.create!(
  email: "user@test.com",
  password: "password123",
  password_confirmation: "password123",
  name: "Regular User",
)
puts "1 regular user created"


3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

puts "3 topics created"

3.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Crash pad cold shut bi-pattern chains a tagline wall crack limestone aid.  Corner spire tips crux rope drag sequence and scary knife-blade slot creek.  Auto-block send the ‘biner crystal, anchor descent and equalette.
     Sandbag buttress puffy the carabiner bomber nut on number 3 splitter stem dihedral flare, clean choss solutions and Camalot whipper bolt.  Oldschool tape glove crush and slabby topo granite is coreshot redpoint.  Joshua Tree 5.9, manky offwidth guidebook and gnarly jumar clipping stance, pro tipped out sketchy bombproof loose block rap ring.  Quickdraw the flag crank, so trad deck harness a chalk bag stiff locker.  Dirt bag fist crack dyno crimp and spectra match pinch tuff project.  Match fit gneiss lobe and offset approach flake on crag dog bentgate, armbar butterfly pitch, fingerlock headjam.  Figure eight sticky rubber pendulum bucket and good ledge stone route elvis leg traverse. ",
    status: 0,
    topic_id: Topic.last.id
  )
end

puts "3 blog draft posts created"

7.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Joshua Tree 5.9, manky offwidth guidebook and gnarly jumar clipping stance, pro tipped out sketchy bombproof loose block rap ring.  Quickdraw the flag crank, so trad deck harness a chalk bag stiff locker.  Dirt bag fist crack dyno crimp and spectra match pinch tuff project.  Match fit gneiss lobe and offset approach flake on crag dog bentgate, armbar butterfly pitch, fingerlock headjam.  Figure eight sticky rubber pendulum bucket and good ledge stone route elvis leg traverse.  Spooky poop tube a crimp ladder daisy chain, etrier tower placement and hueco gri-gri chickenhead sling.  Lead piton rurp on klemheist layback bail.  Wagbag is mantle knot v-thread monstercam gear for verglase dome sandwiches.  Clifbar ice tool solo dike (prusik runout frontpoint pump) undercling barfie.
    Headwalls and nut-tools on belay dogbone sloper chalk, fixed piece thumbcatch gobie jug.  Chickenwing bootie hex chimney, classic RP portaledge.  Kingswing floss rock and tricam pocket trigger boulder.  Double axle el cap chockstones and wiregate frontpoint rand for access fund--cinch alien rappel device, a rope stretch brake hand cordalette master point.  Clove hitch wire locker roof bulge, toe hook edge smear, arete pig TC Pro, knee drop haul ascender.  Static top ropes fixed pins inversion valley. Lost arrow fist stack a cord double grapevine barndoor bashie rack.  But stopper campus grovel bong and thrutch mono munter proj.  Redpoint screamer burly z-clip open book seam and lockoff highball is gaston flash epic.
    ",
    status: 1,
    topic_id: Topic.first.id
  )
end

puts "7 blog published posts created"

5.times do |comment|
  Comment.create!(
    content: "Dirkaam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?",
    blog_id: 1,
    user_id: 1
  )
end
puts "5 comments created, 1 for each of the first 5 blogs"

5.times do |comment|
  Comment.create!(
    content: "Criosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil mole voluptas nulla pariatur?",
    blog_id: 2,
    user_id: 2
  )
end
puts "5 comments created, 1 for each of the first 5 blogs"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end

puts "5 skills created"

8.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "Ruby on Rails",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200"
  )
end

puts "9 portfolio items created"

2.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "Angular",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200"
  )
end

puts "9 portfolio items created"

3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "Example #{technology}"
  )
end

puts "3 technologies created"
