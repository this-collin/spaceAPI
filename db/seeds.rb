# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

questions = [
  { difficulty: "easy", category: "Astronomy", question: "What planet is known as the Red Planet?", correct_answer: "Mars", incorrect_answers: ["Venus", "Jupiter", "Mercury"] },
  { difficulty: "easy", category: "Astronomy", question: "How many planets are in our solar system?", correct_answer: "8", incorrect_answers: ["7", "9", "10"] },
  { difficulty: "easy", category: "Astronomy", question: "What is Earth's only natural satellite?", correct_answer: "The Moon", incorrect_answers: ["Mars", "Europa", "Phobos"] },
  { difficulty: "easy", category: "Aerospace", question: "Who was the first human to walk on the Moon?", correct_answer: "Neil Armstrong", incorrect_answers: ["Buzz Aldrin", "Yuri Gagarin", "John Glenn"] },
  { difficulty: "easy", category: "Astronomy", question: "What galaxy is Earth located in?", correct_answer: "Milky Way", incorrect_answers: ["Andromeda", "Whirlpool", "Sombrero"] },
  { difficulty: "easy", category: "Astronomy", question: "Which planet is closest to the Sun?", correct_answer: "Mercury", incorrect_answers: ["Venus", "Earth", "Mars"] },
  { difficulty: "easy", category: "Astronomy", question: "What star is at the center of our solar system?", correct_answer: "The Sun", incorrect_answers: ["Sirius", "Alpha Centauri", "Betelgeuse"] },
  { difficulty: "easy", category: "Astronomy", question: "Which planet is famous for its rings?", correct_answer: "Saturn", incorrect_answers: ["Jupiter", "Neptune", "Uranus"] },
  { difficulty: "easy", category: "Aerospace", question: "Which country launched the first satellite into space?", correct_answer: "Soviet Union", incorrect_answers: ["USA", "China", "Germany"] },
  { difficulty: "easy", category: "Astronomy", question: "Which dwarf planet is located in the Kuiper belt?", correct_answer: "Pluto", incorrect_answers: ["Ceres", "Europa", "Charon"] },
  { difficulty: "easy", category: "Astronomy", question: "What is the largest planet in our solar system?", correct_answer: "Jupiter", incorrect_answers: ["Saturn", "Neptune", "Uranus"] },
  { difficulty: "easy", category: "Aerospace", question: "What was the first spacecraft to land on the Moon?", correct_answer: "Luna 2", incorrect_answers: ["Apollo 11", "Viking 1", "Luna 9"] },
  { difficulty: "easy", category: "Astronomy", question: "Which planet has the most moons?", correct_answer: "Saturn", incorrect_answers: ["Jupiter", "Mars", "Neptune"] },
  { difficulty: "easy", category: "Aerospace", question: "What is the name of the first artificial satellite launched into Earth's orbit?", correct_answer: "Sputnik 1", incorrect_answers: ["Explorer 1", "Vanguard 1", "Luna 1"] },
  { difficulty: "easy", category: "Astronomy", question: "Which planet is known for having a Great Red Spot?", correct_answer: "Jupiter", incorrect_answers: ["Saturn", "Mars", "Neptune"] },
  { difficulty: "easy", category: "Aerospace", question: "What is the name of the first space station launched by the United States?", correct_answer: "Skylab", incorrect_answers: ["Mir", "International Space Station", "Almaz"] },
  { difficulty: "easy", category: "Astronomy", question: "Who was the first woman in space?", correct_answer: "Valentina Tereshkova", incorrect_answers: ["Sally Ride", "Mae Jemison", "Eileen Collins"] },
  { difficulty: "easy", category: "Aerospace", question: "What is the name of the first reusable spacecraft?", correct_answer: "Space Shuttle", incorrect_answers: ["Soyuz", "Apollo Command Module", "X-15"] },
  { difficulty: "easy", category: "Astronomy", question: "Which planet has the longest day?", correct_answer: "Venus", incorrect_answers: ["Mercury", "Earth", "Mars"] },
  { difficulty: "easy", category: "Aerospace", question: "What is the name of the first spacecraft to land on a comet?", correct_answer: "Rosetta's Philae Lander", incorrect_answers: ["Viking 1", "Cassini", "New Horizons"] },
  {
    difficulty: "medium",
    category: "Astrophysics",
    question: "What is the name of the boundary around a black hole where nothing can escape?",
    correct_answer: "Event Horizon",
    incorrect_answers: ["Singularity", "Photon Sphere", "Accretion Disk"]
  },
  {
    difficulty: "medium",
    category: "Astronomy",
    question: "What type of galaxy is the Milky Way?",
    correct_answer: "Spiral",
    incorrect_answers: ["Elliptical", "Irregular", "Lenticular"]
  },
  {
    difficulty: "medium",
    category: "Aerospace",
    question: "Which spacecraft carried the first humans to the Moon?",
    correct_answer: "Apollo 11",
    incorrect_answers: ["Gemini 8", "Sputnik 1", "Challenger"]
  },
  {
    difficulty: "medium",
    category: "Astrophysics",
    question: "What phenomenon explains the redshift seen in distant galaxies?",
    correct_answer: "Doppler Effect",
    incorrect_answers: ["Compton Scattering", "Gravitational Lensing", "Zeeman Effect"]
  },
  {
    difficulty: "medium",
    category: "Astronomy",
    question: "Which planet has the most moons?",
    correct_answer: "Saturn",
    incorrect_answers: ["Jupiter", "Mars", "Neptune"]
  },
  {
    difficulty: "medium",
    category: "Aerospace",
    question: "What is the name of NASA’s most powerful space telescope launched in 2021?",
    correct_answer: "James Webb Space Telescope",
    incorrect_answers: ["Hubble", "Spitzer", "Kepler"]
  },
  {
    difficulty: "medium",
    category: "Astronomy",
    question: "What causes a lunar eclipse?",
    correct_answer: "Earth casting a shadow on the Moon",
    incorrect_answers: ["The Moon passing behind the Sun", "The Moon blocking the Sun", "Sun casting a shadow on the Earth"]
  },
  {
    difficulty: "medium",
    category: "Aerospace",
    question: "Which NASA rover successfully landed on Mars in 2021?",
    correct_answer: "Perseverance",
    incorrect_answers: ["Curiosity", "Opportunity", "Spirit"]
  },
  {
    difficulty: "medium",
    category: "Astrophysics",
    question: "Which force keeps planets in orbit around the Sun?",
    correct_answer: "Gravity",
    incorrect_answers: ["Magnetism", "Inertia", "Centrifugal Force"]
  },
  {
    difficulty: "medium",
    category: "Astronomy",
    question: "What is the name of the dark, flat plains on the Moon formed by ancient volcanic eruptions?",
    correct_answer: "Maria",
    incorrect_answers: ["Craters", "Regolith", "Highlands"]
  },
  {
    difficulty: "medium",
    category: "Astrophysics",
    question: "Which part of the Sun is visible during a total solar eclipse?",
    correct_answer: "Corona",
    incorrect_answers: ["Photosphere", "Chromosphere", "Core"]
  },
  {
    difficulty: "medium",
    category: "Astronomy",
    question: "What is the main component of the Sun’s core where fusion occurs?",
    correct_answer: "Hydrogen",
    incorrect_answers: ["Helium", "Carbon", "Iron"]
  },
  {
    difficulty: "medium",
    category: "Aerospace",
    question: "Which country was the third to send a human into space?",
    correct_answer: "China",
    incorrect_answers: ["Japan", "France", "Germany"]
  },
  {
    difficulty: "medium",
    category: "Astronomy",
    question: "Which planet rotates on its side, with an axial tilt of about 98 degrees?",
    correct_answer: "Uranus",
    incorrect_answers: ["Neptune", "Venus", "Saturn"]
  },
  {
    difficulty: "medium",
    category: "Astrophysics",
    question: "What is the most common type of star in the Milky Way galaxy?",
    correct_answer: "Red dwarf",
    incorrect_answers: ["Yellow dwarf", "White dwarf", "Blue giant"]
  },
  {
    difficulty: "medium",
    category: "Astronomy",
    question: "What term describes a moon that always shows the same face to its planet?",
    correct_answer: "Tidally locked",
    incorrect_answers: ["Retrograde", "Geosynchronous", "Elliptical"]
  },
  {
    difficulty: "medium",
    category: "Aerospace",
    question: "Which spacecraft took the famous 'Pale Blue Dot' photo of Earth?",
    correct_answer: "Voyager 1",
    incorrect_answers: ["Voyager 2", "Cassini", "New Horizons"]
  },
  {
    difficulty: "medium",
    category: "Astronomy",
    question: "Which planet experiences the most extreme seasons due to its axial tilt?",
    correct_answer: "Uranus",
    incorrect_answers: ["Mars", "Neptune", "Saturn"]
  },
  {
    difficulty: "medium",
    category: "Astrophysics",
    question: "What is the term for the theoretical smallest possible unit of space and time?",
    correct_answer: "Planck length",
    incorrect_answers: ["Quark scale", "Atomic radius", "String length"]
  },
  {
    difficulty: "medium",
    category: "Aerospace",
    question: "Which private company became the first to send humans into orbit in 2020?",
    correct_answer: "SpaceX",
    incorrect_answers: ["Blue Origin", "Virgin Galactic", "Boeing"]
  },
  {
    difficulty: "hard",
    category: "Astrophysics",
    question: "What is the name of the process by which stars generate energy through nuclear fusion?",
    correct_answer: "Nuclear Fusion",
    incorrect_answers: ["Nuclear Fission", "Gravitational Collapse", "Thermal Convection"]
  },
  {
    difficulty: "hard",
    category: "Astronomy",
    question: "What is the name of the largest volcano in the solar system, located on Mars?",
    correct_answer: "Olympus Mons",
    incorrect_answers: ["Vesuvius", "Mauna Loa", "Mount Everest"]
  },
  {
    difficulty: "hard",
    category: "Aerospace",
    question: "Which spacecraft was the first to land on a comet in 2014?",
    correct_answer: "Rosetta’s Philae Lander",
    incorrect_answers: ["Viking 1", "Luna 9", "New Horizons"]
  },
  {
    difficulty: "hard",
    category: "Astrophysics",
    question: "What type of astronomical object is thought to be responsible for gamma-ray bursts?",
    correct_answer: "Supernova Explosions or Collapsing Neutron Stars",
    incorrect_answers: ["Black Holes", "Neutron Stars", "White Dwarfs"]
  },
  {
    difficulty: "hard",
    category: "Astronomy",
    question: "What is the term for the hypothetical boundary surrounding a black hole, beyond which no light or matter can escape?",
    correct_answer: "Event Horizon",
    incorrect_answers: ["Singularity", "Accretion Disk", "Photon Sphere"]
  },
  {
    difficulty: "hard",
    category: "Aerospace",
    question: "Which astronaut was the first to perform a spacewalk in 1965?",
    correct_answer: "Alexei Leonov",
    incorrect_answers: ["EVA", "Yuri Gagarin", "Neil Armstrong"]
  },
  {
    difficulty: "hard",
    category: "Astrophysics",
    question: "What is the name of the theory describing the formation of the universe from an extremely hot and dense state?",
    correct_answer: "Big Bang Theory",
    incorrect_answers: ["Steady State Theory", "Inflationary Theory", "Holographic Principle"]
  },
  {
    difficulty: "hard",
    category: "Astronomy",
    question: "What is the name of the first exoplanet discovered orbiting a Sun-like star?",
    correct_answer: "51 Pegasi b",
    incorrect_answers: ["Proxima b", "Kepler-452b", "HD 209458 b"]
  },
  {
    difficulty: "hard",
    category: "Aerospace",
    question: "What is the name of the first space probe to cross the boundary of the solar system and enter interstellar space?",
    correct_answer: "Voyager 1",
    incorrect_answers: ["Voyager 2", "Parker Solar Probe", "New Horizons"]
  },
  {
    difficulty: "hard",
    category: "Astronomy",
    question: "What is the name of the largest known structure in the universe, made of galaxies?",
    correct_answer: "Hercules–Corona Borealis Great Wall",
    incorrect_answers: ["Virgo Supercluster", "Laniakea Supercluster", "Great Attractor"]
  },
  {
    difficulty: "hard",
    category: "Astrophysics",
    question: "Which phenomenon occurs when two neutron stars collide and produce gravitational waves?",
    correct_answer: "Kiln Nova",
    incorrect_answers: ["Gamma-Ray Burst", "Type Ia Supernova", "Solar Flare"]
  },
  {
    difficulty: "hard",
    category: "Aerospace",
    question: "What was the name of the first successful Mars rover mission by NASA that lasted over a decade?",
    correct_answer: "Opportunity Rover",
    incorrect_answers: ["Spirit Rover", "Curiosity Rover", "Perseverance Rover"]
  },
  {
    difficulty: "hard",
    category: "Astronomy",
    question: "Which phenomenon is responsible for the strange magnetic field observed on Uranus?",
    correct_answer: "Axial Tilt",
    incorrect_answers: ["Solar Wind", "Gravitational Pull", "Magnetic Reversal"]
  },
  {
    difficulty: "hard",
    category: "Aerospace",
    question: "What is the name of the first private company to send a spacecraft to the International Space Station?",
    correct_answer: "SpaceX",
    incorrect_answers: ["Blue Origin", "Virgin Galactic", "Sierra Nevada Corporation"]
  },
  {
    difficulty: "hard",
    category: "Astrophysics",
    question: "What is the term used for the radiation emitted by a rotating neutron star?",
    correct_answer: "Pulsar Radiation",
    incorrect_answers: ["Quasar Radiation", "Supernova Radiation", "X-Ray Bursts"]
  },
  {
    difficulty: "hard",
    category: "Astronomy",
    question: "Which element makes up the majority of a star's composition?",
    correct_answer: "Hydrogen",
    incorrect_answers: ["Helium", "Carbon", "Oxygen"]
  },
  {
    difficulty: "hard",
    category: "Astronomy",
    question: "What is the name of the largest moon of Saturn?",
    correct_answer: "Titan",
    incorrect_answers: ["Rhea", "Iapetus", "Enceladus"]
  },
  {
    difficulty: "hard",
    category: "Astrophysics",
    question: "What is the name of the phenomenon where space-time itself stretches, causing galaxies to move apart?",
    correct_answer: "Cosmic Inflation",
    incorrect_answers: ["Gravitational Lensing", "Dark Matter Expansion", "Time Dilation"]
  },
  {
    difficulty: "hard",
    category: "Astronomy",
    question: "What is the term for the bright trails of particles released from comets as they approach the Sun?",
    correct_answer: "Cometary Tails",
    incorrect_answers: ["Solar Winds", "Meteor Showers", "Asteroid Belts"]
  },
  {
    difficulty: "hard",
    category: "Aerospace",
    question: "What was the name of the space mission that returned samples from an asteroid to Earth in 2020?",
    correct_answer: "OSIRIS-REx",
    incorrect_answers: ["Hayabusa2", "Stardust", "Rosetta"]
  },
  {
    difficulty: "hard",
    category: "Astrophysics",
    question: "What is the name of the theory that suggests that our universe may exist as a 'hologram'?",
    correct_answer: "Holographic Principle",
    incorrect_answers: ["String Theory", "Quantum Loop Gravity", "Multiverse Theory"]
  }

]

questions.each do |question_data|
  Question.create!(question_data)
rescue ActiveRecord::RecordInvalid => e
  puts "Failed to create question: #{e.message}"
end