import 'package:flutter/material.dart';
import 'package:flutter_animal_app/models/animal_model.dart';

List<Animal> animalList() {
  List<Animal> data = [
    Animal(
        name: 'Aardvark',
        scientificName: 'Orycteropus afer',
        location: ['Africa'],
        colors: [Colors.brown, Colors.grey, Colors.yellow],
        skinType: 'Hair',
        topspeed: '25',
        lifespan: '23',
        weight: '60kg - 80kg',
        length: '1.05m - 2.20m',
        group: 'Mammal',
        habitat: ['Sandy', 'Clay soil'],
        habitatImageUrl: [],
        lifeStyle: 'Nocturnal',
        food: ['Termites', 'Ants'],
        foodImageUrl: ['assets/food/termites.png', 'assets/food/ants.png'],
        imageUrl:
            'https://a-z-animals.com/media/animals/images/original/aardvark_3.jpg',
        population: 'Unknown',
        fact: 'Can move up to 2ft of soil in just 15 seconds!'),
    Animal(
        name: 'African Bush Elephant',
        scientificName: 'Loxodonta africana africana',
        location: ['Africa'],
        colors: [Colors.brown, Colors.grey],
        skinType: 'Leather',
        topspeed: '25',
        lifespan: '60 - 70',
        weight: '3,600kg - 5,400kg',
        length: '3m - 3.5m',
        group: 'Mammal',
        habitat: ['Forest', 'Savannah', 'Flood plains'],
        habitatImageUrl: [],
        lifeStyle: 'Diurnal',
        food: ['Grass', 'Fruits', 'Roots'],
        foodImageUrl: [
          'assets/food/grass.png',
          'assets/food/fruits.png',
          'assets/food/roots.png'
        ],
        imageUrl:
            'https://a-z-animals.com/media/animals/images/original/african_bush_elephant.jpg',
        population: '300,000',
        fact: 'Can drink up to 50 gallons a day!'),
    Animal(
        name: 'African Forest Elephant',
        scientificName: 'Loxodonta cyclotis',
        location: ['Africa'],
        colors: [Colors.brown, Colors.grey],
        skinType: 'Leather',
        topspeed: '24',
        lifespan: '60 - 70',
        weight: '900kg - 3,000kg',
        length: '2m - 3m ',
        group: 'Mammal',
        habitat: ['Forest', 'Savannah', 'Flood plains'],
        habitatImageUrl: [],
        lifeStyle: 'Diurnal',
        food: ['Grass', 'Fruits', 'Roots'],
        foodImageUrl: [
          'assets/food/grass.png',
          'assets/food/fruits.png',
          'assets/food/roots.png'
        ],
        imageUrl:
            'https://a-z-animals.com/media/animals/images/original/african_elephant3.jpg',
        population: '200,000',
        fact: 'The largest known mammal on land!'),
    Animal(
        name: 'African Tree Toad',
        scientificName: 'Nectophryne afra',
        location: ['Africa'],
        colors: [Colors.brown, Colors.black54, Colors.white70, Colors.orange],
        skinType: 'Permeable',
        topspeed: '5',
        lifespan: '3 - 5',
        weight: '2g - 5g',
        length: '2.5cm - 3.8cm',
        group: 'Amphibians',
        habitat: [
          'Tropical lowland forest',
        ],
        habitatImageUrl: [],
        lifeStyle: 'Solitary',
        food: ['Insects', 'Worms', 'Snails'],
        foodImageUrl: [
          'assets/food/ants.png',
          'assets/food/worms.png',
          'assets/food/snails.png'
        ],
        imageUrl:
            'https://a-z-animals.com/media/animals/images/original/african_tree_toad.jpg',
        population: 'Unknown',
        fact: 'Found in tropical moist lowland forests!'),
    Animal(
        name: 'Albacore Tuna',
        scientificName: 'Thunnus alalunga',
        location: ['Ocean'],
        colors: [Colors.grey, Colors.blue, Colors.blueGrey],
        skinType: 'Smooth',
        topspeed: '50',
        lifespan: '10 - 12',
        weight: 'Up to 80lbs',
        length: '1.2m',
        group: 'Ray-finned fish',
        habitat: [
          'Oceans',
        ],
        habitatImageUrl: [],
        lifeStyle: 'School',
        food: ['Fish', 'Crustaceans', 'Cephalopods', 'Mollusks'],
        foodImageUrl: [
          'assets/food/fish.png',
          'assets/food/crab.png',
          'assets/food/octo.png',
          'assets/food/mollusks.png'
        ],
        imageUrl:
            'https://a-z-animals.com/media/2021/01/Tuna-Albacore-school-768x401.jpg',
        population: 'More than a million',
        fact: 'The albacore is a very fast swimmer'),
    Animal(
        name: 'Alligator',
        scientificName: 'Alligator mississippiensis',
        location: ['Asian', 'North-American', 'Ocean'],
        colors: [
          Colors.brown,
          Colors.grey,
          Colors.yellow,
          Colors.black,
          Colors.green
        ],
        skinType: 'Scales',
        topspeed: '15',
        lifespan: '30 - 60',
        weight: '181kg - 363kg',
        length: '2.5cm - 4.5m',
        group: 'Reptile',
        habitat: ['Marsh', 'Swampland'],
        habitatImageUrl: [],
        lifeStyle: 'Diurnal/Nocturnal',
        food: ['Fish', 'Snakes', 'Turtles'],
        foodImageUrl: [
          'assets/food/fish.png',
          'assets/food/snake.png',
          'assets/food/turlte.png',
        ],
        imageUrl:
            'https://a-z-animals.com/media/animals/images/original/alligator_8-768x512.jpg',
        population: '1 million',
        fact: 'They have two sets of eyelids!'),
    Animal(
        name: 'Amazon River Dolphin',
        scientificName: 'Platanistoidea',
        location: [
          'South-America',
        ],
        colors: [
          Colors.grey,
          Colors.pink,
        ],
        skinType: 'Smooth',
        topspeed: '18',
        lifespan: '12-18',
        weight: '100-200kg',
        length: '2.7m',
        group: 'Mammal',
        habitat: ['Rivers', 'Estuaries'],
        habitatImageUrl: [],
        lifeStyle: 'School',
        food: ['Fish', 'Prawns', 'Frogs'],
        foodImageUrl: [
          'assets/food/fish.png',
          'assets/food/shrimp.png',
          'assets/food/frog.png',
        ],
        imageUrl: 'https://a-z-animals.com/media/PinkDolphin1-768x512.jpg',
        population: '2,000',
        fact: "Also known as the 'Pink Dolphin'"),
    Animal(
        name: 'Pygmy Goat',
        scientificName: 'Capra aegagrus hircus',
        location: [
          'North-America',
        ],
        colors: [
          Colors.grey,
          Colors.black,
          Colors.white,
          Colors.orange.shade700
        ],
        skinType: 'Fur',
        topspeed: '10',
        lifespan: '8-12',
        weight: '13-40kg',
        length: '0.4m-0.8m',
        group: 'Mammal',
        habitat: ['Rocky terrain', 'Hillsides', 'Plains', 'Farmland'],
        habitatImageUrl: [],
        lifeStyle: 'Herd',
        food: [
          'Plant',
        ],
        foodImageUrl: [
          'assets/food/grass.png',
        ],
        imageUrl:
            'https://a-z-animals.com/media/2021/05/American-Pygmy-Goat-close-up-768x401.jpg',
        population: '450 million',
        fact: 'Can jump up to 5 feet'),
    Animal(
        name: 'American Toad',
        scientificName: 'Anaxyrus americanus',
        location: [
          'North-America',
        ],
        colors: [
          Colors.grey,
          Colors.brown,
          Colors.brown.shade200,
          Colors.green.shade700
        ],
        skinType: 'Permeable',
        topspeed: '5',
        lifespan: '1-2',
        weight: ' < 500gram',
        length: '50 - 100 mm',
        group: 'Amphibian',
        habitat: ['Pool or pond', 'Dense vegetation patches'],
        habitatImageUrl: [],
        lifeStyle: 'Solitary/Group',
        food: [
          'Aquatic Vegetation',
          'Algae',
          'Insects',
          'Snails',
          'Beetles',
          'Earthworms',
        ],
        foodImageUrl: [
          'assets/food/reed.png',
          'assets/food/algae.png',
          'assets/food/ants.png',
          'assets/food/snails.png',
          'assets/food/beetles.png',
          'assets/food/worms.png',
        ],
        imageUrl:
            'https://a-z-animals.com/media/2021/05/American-Toad-on-leaf-768x401.jpg',
        population: 'Unknown',
        fact:
            'They secrete a milky poisonous liquid that can make many animals sick.'),
    Animal(
        name: 'Anglerfish',
        scientificName: 'Lophiiformes',
        location: [
          'Ocean',
        ],
        colors: [
          Colors.grey,
          Colors.brown,
          Colors.yellow,
          Colors.black,
          Colors.green
        ],
        skinType: 'Skin',
        topspeed: '0.24',
        lifespan: '25',
        weight: ' 50kg',
        length: '1.2m',
        group: 'Fish',
        habitat: ['Ocean'],
        habitatImageUrl: [],
        lifeStyle: 'Solitary',
        food: [
          'Crustaceans ',
          'Fish',
        ],
        foodImageUrl: [
          'assets/food/shrimp.png',
          'assets/food/fish.png',
        ],
        imageUrl: 'https://a-z-animals.com/media/2021/07/Anglerfish.jpg',
        population: 'Unknown',
        fact:
            'The anglerfish has a glowing lure on its head to attract unsuspecting prey'),
    Animal(
        name: 'Antarctic Scale Worm',
        scientificName: 'Eulagisca gigantea',
        location: [
          'Ocean',
        ],
        colors: [
          Colors.yellow,
          Colors.yellow.shade700,
          Colors.grey,
          Colors.brown,
        ],
        skinType: 'Bristled Hairs',
        topspeed: '?',
        lifespan: '?',
        weight: '?',
        length: '20cm',
        group: 'Annelid',
        habitat: ['Antarctica', 'Southern Ocean'],
        habitatImageUrl: [],
        lifeStyle: 'Solitary',
        food: [
          'Spiders ',
          'Fish',
        ],
        foodImageUrl: [
          'assets/food/shrimp.png',
          'assets/food/fish.png',
        ],
        imageUrl:
            'https://a-z-animals.com/media/2021/09/Antarctic-Scale-Worm-preserved.jpg',
        population: 'Unknown',
        fact: 'Similar in length to a rat or squirrel'),
  ];
  return data;
}
