import Foundation

let sampleRecipes: [Recipe] = [
    Recipe(
        name: "Shakshuka",
        category: "Breakfast",
        cookingTimeMinutes: 25,
        baseServings: 2,
        description: "Eggs poached in a spiced tomato and pepper sauce, finished with crumbled feta.",
        imageName: "shakshuka",
        ingredients: [
            Ingredient(baseAmount: 4, name: "eggs"),
            Ingredient(baseAmount: 400, unit: "g", name: "crushed tomatoes"),
            Ingredient(baseAmount: 1, name: "red pepper"),
            Ingredient(baseAmount: 1, name: "onion"),
            Ingredient(baseAmount: 3, unit: "cloves", name: "garlic"),
            Ingredient(baseAmount: 1, unit: "tsp", name: "ground cumin"),
            Ingredient(baseAmount: 60, unit: "g", name: "feta"),
        ],
        steps: [
            MethodStep(stepNumber: 1, description: "Warm the olive oil in a wide pan over medium heat."),
            MethodStep(stepNumber: 2, description: "Add the pepper and onion. Cook until soft and just starting to colour.", timerMinutes: 8),
            MethodStep(stepNumber: 3, description: "Stir in the garlic and cumin, then the tomatoes. Simmer until thick.", timerMinutes: 10),
            MethodStep(stepNumber: 4, description: "Make four wells, crack in the eggs, cover and cook until the whites set.", timerMinutes: 6),
        ]
    ),
    Recipe(
        name: "Salmon Eggs Benedict",
        category: "Breakfast",
        cookingTimeMinutes: 20,
        baseServings: 2,
        description: "Toasted muffins, smoked salmon and poached eggs under a quick lemon hollandaise.",
        imageName: "benedict",
        ingredients: [
            Ingredient(baseAmount: 2, name: "english muffins"),
            Ingredient(baseAmount: 150, unit: "g", name: "smoked salmon"),
            Ingredient(baseAmount: 6, name: "eggs"),
            Ingredient(baseAmount: 100, unit: "g", name: "butter"),
            Ingredient(baseAmount: 1, name: "lemon"),
            Ingredient(baseAmount: 1, unit: "bunch", name: "chives"),
        ],
        steps: [
            MethodStep(stepNumber: 1, description: "Melt the butter and keep it warm."),
            MethodStep(stepNumber: 2, description: "Whisk 2 yolks with lemon juice over simmering water, then slowly add the butter.", timerMinutes: 5),
            MethodStep(stepNumber: 3, description: "Poach the remaining eggs in barely simmering water.", timerMinutes: 3),
            MethodStep(stepNumber: 4, description: "Toast the muffins, then top with salmon, eggs and sauce."),
        ]
    ),
    Recipe(
        name: "Fluffy Pancakes",
        category: "Breakfast",
        cookingTimeMinutes: 20,
        baseServings: 2,
        description: "Thick, soft pancakes stacked high with berries and maple syrup.",
        imageName: "pancakes",
        ingredients: [
            Ingredient(baseAmount: 150, unit: "g", name: "flour"),
            Ingredient(baseAmount: 200, unit: "ml", name: "milk"),
            Ingredient(baseAmount: 1, name: "egg"),
            Ingredient(baseAmount: 2, unit: "tsp", name: "baking powder"),
            Ingredient(baseAmount: 20, unit: "g", name: "butter"),
            Ingredient(baseAmount: 125, unit: "g", name: "blueberries"),
            Ingredient(baseAmount: 3, unit: "tbsp", name: "maple syrup"),
        ],
        steps: [
            MethodStep(stepNumber: 1, description: "Whisk the flour and baking powder, then beat in the milk and egg."),
            MethodStep(stepNumber: 2, description: "Rest the batter while the pan heats.", timerMinutes: 5),
            MethodStep(stepNumber: 3, description: "Cook ladlefuls in butter until bubbles form, then flip.", timerMinutes: 4),
            MethodStep(stepNumber: 4, description: "Stack and top with berries and syrup."),
        ]
    ),
    Recipe(
        name: "Salmon Avocado Salad",
        category: "Lunch",
        cookingTimeMinutes: 15,
        baseServings: 2,
        description: "Crisp-skinned salmon over rocket and avocado with a sharp lemon dressing.",
        imageName: "salmon-salad",
        ingredients: [
            Ingredient(baseAmount: 2, name: "salmon fillets"),
            Ingredient(baseAmount: 1, name: "avocado"),
            Ingredient(baseAmount: 70, unit: "g", name: "rocket"),
            Ingredient(baseAmount: 1, name: "lemon"),
            Ingredient(baseAmount: 2, unit: "tbsp", name: "olive oil"),
        ],
        steps: [
            MethodStep(stepNumber: 1, description: "Season the salmon and start it skin-side down in a hot pan.", timerMinutes: 6),
            MethodStep(stepNumber: 2, description: "Flip and cook for one more minute.", timerMinutes: 1),
            MethodStep(stepNumber: 3, description: "Toss the rocket and avocado with lemon and oil, then top with the salmon."),
        ]
    ),
    Recipe(
        name: "Chickpea Fajitas",
        category: "Lunch",
        cookingTimeMinutes: 25,
        baseServings: 2,
        description: "Smoky roasted chickpeas and peppers in warm tortillas with lime guacamole.",
        imageName: "fajitas",
        ingredients: [
            Ingredient(baseAmount: 1, unit: "can", name: "chickpeas"),
            Ingredient(baseAmount: 1, name: "red pepper"),
            Ingredient(baseAmount: 1, name: "onion"),
            Ingredient(baseAmount: 1, unit: "tsp", name: "smoked paprika"),
            Ingredient(baseAmount: 4, name: "tortillas"),
            Ingredient(baseAmount: 1, name: "avocado"),
            Ingredient(baseAmount: 1, name: "lime"),
        ],
        steps: [
            MethodStep(stepNumber: 1, description: "Toss the chickpeas, pepper and onion with paprika and oil."),
            MethodStep(stepNumber: 2, description: "Roast at 200°C until crisp at the edges.", timerMinutes: 20),
            MethodStep(stepNumber: 3, description: "Mash the avocado with lime and a pinch of salt."),
            MethodStep(stepNumber: 4, description: "Warm the tortillas and fill."),
        ]
    ),
    Recipe(
        name: "Spicy Arrabiata Penne",
        category: "Dinner",
        cookingTimeMinutes: 25,
        baseServings: 2,
        description: "Penne in a garlicky tomato sauce with plenty of chilli.",
        imageName: "penne",
        ingredients: [
            Ingredient(baseAmount: 200, unit: "g", name: "penne"),
            Ingredient(baseAmount: 400, unit: "g", name: "crushed tomatoes"),
            Ingredient(baseAmount: 3, unit: "cloves", name: "garlic"),
            Ingredient(baseAmount: 1, unit: "tsp", name: "chilli flakes"),
            Ingredient(baseAmount: 1, unit: "bunch", name: "basil"),
            Ingredient(baseAmount: 30, unit: "g", name: "parmesan"),
        ],
        steps: [
            MethodStep(stepNumber: 1, description: "Boil the penne in well-salted water.", timerMinutes: 10),
            MethodStep(stepNumber: 2, description: "Fry garlic and chilli in olive oil, add the tomatoes and simmer.", timerMinutes: 10),
            MethodStep(stepNumber: 3, description: "Toss the pasta through the sauce with basil and parmesan."),
        ]
    ),
    Recipe(
        name: "Spinach & Ricotta Cannelloni",
        category: "Dinner",
        cookingTimeMinutes: 50,
        baseServings: 4,
        description: "Pasta tubes filled with spinach and ricotta, baked under tomato and mozzarella.",
        imageName: "cannelloni",
        ingredients: [
            Ingredient(baseAmount: 12, name: "cannelloni tubes"),
            Ingredient(baseAmount: 300, unit: "g", name: "spinach"),
            Ingredient(baseAmount: 250, unit: "g", name: "ricotta"),
            Ingredient(baseAmount: 400, unit: "g", name: "crushed tomatoes"),
            Ingredient(baseAmount: 125, unit: "g", name: "mozzarella"),
            Ingredient(baseAmount: 1, unit: "pinch", name: "nutmeg"),
        ],
        steps: [
            MethodStep(stepNumber: 1, description: "Wilt the spinach, squeeze it dry and mix with ricotta and nutmeg."),
            MethodStep(stepNumber: 2, description: "Fill the tubes and lay them in a baking dish."),
            MethodStep(stepNumber: 3, description: "Cover with tomatoes and torn mozzarella."),
            MethodStep(stepNumber: 4, description: "Bake at 190°C until bubbling.", timerMinutes: 30),
        ]
    ),
    Recipe(
        name: "Honey Teriyaki Salmon",
        category: "Dinner",
        cookingTimeMinutes: 30,
        baseServings: 2,
        description: "Glossy honey-soy glazed salmon, great with rice and greens.",
        imageName: "teriyaki",
        ingredients: [
            Ingredient(baseAmount: 2, name: "salmon fillets"),
            Ingredient(baseAmount: 3, unit: "tbsp", name: "soy sauce"),
            Ingredient(baseAmount: 2, unit: "tbsp", name: "honey"),
            Ingredient(baseAmount: 1, unit: "thumb", name: "ginger"),
            Ingredient(baseAmount: 2, unit: "cloves", name: "garlic"),
            Ingredient(baseAmount: 150, unit: "g", name: "rice"),
        ],
        steps: [
            MethodStep(stepNumber: 1, description: "Start the rice.", timerMinutes: 15),
            MethodStep(stepNumber: 2, description: "Mix soy, honey, grated ginger and garlic."),
            MethodStep(stepNumber: 3, description: "Sear the salmon, pour in the glaze and reduce until sticky.", timerMinutes: 8),
            MethodStep(stepNumber: 4, description: "Serve over rice with sesame seeds."),
        ]
    ),
]
