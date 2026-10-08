import SwiftUI

let sampleRecipes: [Recipe] = [
    Recipe(
        name: "Shakshuka",
        category: "BREAKFAST",
        cookingTimeMinutes: 25,
        baseServings: 2,
        description: "Poached eggs in a rich, spiced tomato and pepper sauce topped with fresh herbs.",
        emoji: "🍳",
        accentColor: .orange,
        ingredients: [
            Ingredient(baseAmount: 4, name: "eggs"),
            Ingredient(baseAmount: 2, name: "tomatoes"),
            Ingredient(baseAmount: 1, name: "red pepper"),
            Ingredient(baseAmount: 1, unit: "tsp", name: "cumin"),
            Ingredient(baseAmount: 1, unit: "tbsp", name: "olive oil"),
        ],
        steps: [
            MethodStep(stepNumber: 1, description: "Heat olive oil in a pan over medium heat. Add diced peppers and cook until soft.", timerMinutes: 5),
            MethodStep(stepNumber: 2, description: "Add tomatoes, cumin, and simmer until the sauce thickens.", timerMinutes: 8),
            MethodStep(stepNumber: 3, description: "Make wells in the sauce and crack in the eggs. Cover and cook until whites are set.", timerMinutes: 6),
        ]
    ),
    Recipe(
        name: "Salmon Eggs Benedict",
        category: "BREAKFAST",
        cookingTimeMinutes: 20,
        baseServings: 2,
        description: "Perfectly poached eggs and smoked salmon on toasted English muffins with hollandaise.",
        emoji: "🥚",
        accentColor: .pink,
        ingredients: [
            Ingredient(baseAmount: 4, name: "eggs"),
            Ingredient(baseAmount: 2, name: "English muffins"),
            Ingredient(baseAmount: 120, unit: "g", name: "smoked salmon"),
            Ingredient(baseAmount: 3, unit: "tbsp", name: "hollandaise sauce"),
            Ingredient(baseAmount: 1, unit: "tbsp", name: "white vinegar"),
        ],
        steps: [
            MethodStep(stepNumber: 1, description: "Toast the English muffins until golden. Layer with smoked salmon."),
            MethodStep(stepNumber: 2, description: "Bring a pan of water with vinegar to a gentle simmer. Poach eggs for 3 minutes.", timerMinutes: 3),
            MethodStep(stepNumber: 3, description: "Place poached eggs on the muffins and drizzle with hollandaise. Season and serve."),
        ]
    ),
    Recipe(
        name: "Fluffy Pancakes",
        category: "BREAKFAST",
        cookingTimeMinutes: 20,
        baseServings: 2,
        description: "Thick and pillowy American-style pancakes served with maple syrup and fresh berries.",
        emoji: "🥞",
        accentColor: .yellow,
        ingredients: [
            Ingredient(baseAmount: 200, unit: "g", name: "flour"),
            Ingredient(baseAmount: 2, name: "eggs"),
            Ingredient(baseAmount: 250, unit: "ml", name: "milk"),
            Ingredient(baseAmount: 1, unit: "tsp", name: "baking powder"),
            Ingredient(baseAmount: 2, unit: "tbsp", name: "maple syrup"),
        ],
        steps: [
            MethodStep(stepNumber: 1, description: "Whisk together flour, baking powder, eggs, and milk into a smooth batter."),
            MethodStep(stepNumber: 2, description: "Heat a non-stick pan over medium heat. Pour in small ladlefuls of batter.", timerMinutes: 2),
            MethodStep(stepNumber: 3, description: "Flip when bubbles form on the surface and cook the other side until golden.", timerMinutes: 1),
        ]
    ),
    Recipe(
        name: "Salmon Avocado Salad",
        category: "LUNCH",
        cookingTimeMinutes: 15,
        baseServings: 2,
        description: "Crisp-skinned salmon over rocket and avocado with a sharp lemon dressing.",
        emoji: "🥗",
        accentColor: .green,
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
            MethodStep(stepNumber: 3, description: "Slice avocado and toss with rocket, lemon juice, and olive oil. Top with the salmon."),
        ]
    ),
    Recipe(
        name: "Chickpea Fajitas",
        category: "DINNER",
        cookingTimeMinutes: 25,
        baseServings: 2,
        description: "Smoky spiced chickpeas and colourful peppers in warm tortillas with fresh salsa.",
        emoji: "🌮",
        accentColor: .orange,
        ingredients: [
            Ingredient(baseAmount: 400, unit: "g", name: "canned chickpeas"),
            Ingredient(baseAmount: 2, name: "bell peppers"),
            Ingredient(baseAmount: 1, name: "red onion"),
            Ingredient(baseAmount: 4, name: "small tortillas"),
            Ingredient(baseAmount: 1, unit: "tsp", name: "smoked paprika"),
        ],
        steps: [
            MethodStep(stepNumber: 1, description: "Slice peppers and onion. Toss drained chickpeas in paprika and a pinch of salt."),
            MethodStep(stepNumber: 2, description: "Cook peppers and onion in a hot pan until charred edges form.", timerMinutes: 7),
            MethodStep(stepNumber: 3, description: "Add chickpeas and stir until warmed through. Serve in warm tortillas.", timerMinutes: 3),
        ]
    ),
    Recipe(
        name: "Spicy Arrabiata Penne",
        category: "DINNER",
        cookingTimeMinutes: 25,
        baseServings: 2,
        description: "Al dente penne in a fiery garlic and tomato sauce finished with fresh basil.",
        emoji: "🍝",
        accentColor: .red,
        ingredients: [
            Ingredient(baseAmount: 200, unit: "g", name: "penne pasta"),
            Ingredient(baseAmount: 400, unit: "g", name: "crushed tomatoes"),
            Ingredient(baseAmount: 3, name: "garlic cloves"),
            Ingredient(baseAmount: 1, unit: "tsp", name: "chili flakes"),
            Ingredient(baseAmount: 2, unit: "tbsp", name: "olive oil"),
        ],
        steps: [
            MethodStep(stepNumber: 1, description: "Cook penne in salted boiling water according to package directions.", timerMinutes: 11),
            MethodStep(stepNumber: 2, description: "Fry garlic and chili in olive oil until fragrant. Add tomatoes and simmer.", timerMinutes: 10),
            MethodStep(stepNumber: 3, description: "Drain pasta, toss with the sauce, and finish with torn fresh basil."),
        ]
    ),
]
