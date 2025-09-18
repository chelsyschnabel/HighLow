# High Low Card Game - R Programming Assignment

An introductory R programming exercise that teaches loops and conditional statements through a probability-based card game simulation.

## Overview

This educational project provides comprehensive materials for teaching fundamental R programming concepts through the development of a "High Low" card game. Students progress from understanding basic game mechanics with physical cards to implementing increasingly sophisticated versions in R code, covering selection structures (conditionals) and iteration structures (loops) along the way.

## Game Description

**High Low** is a probability-based card game where:
- The dealer draws a card (1-9) and reveals it to the player
- The player must guess whether their card will be higher or lower than the dealer's card
- The player draws a card to test their prediction
- The game can be played for single rounds, multiple rounds, or until certain conditions are met
- Advanced versions explore concepts like sampling without replacement and probability calculations

## Learning Progression

The assignment is designed as a multi-day lesson that builds complexity:

1. **Physical Card Game**: Students play with actual numbered cards (1-9) to understand game mechanics
2. **Single Round Programming**: Implement one round using conditionals (`if`/`else`)
3. **Multiple Rounds**: Add iteration using `for` loops and `while` loops
4. **Advanced Features**: Incorporate probability calculations, score tracking, and game variations
5. **Extensions**: Explore sampling without replacement and alternative game rules

## Requirements

### Physical Materials
- Deck of cards numbered 1-9 for each student (different colors recommended for visual distinction)
- Computer with R access for each student

### Software
- R (version 4.0 or higher)
- RStudio (recommended for .Rmd file handling)

### R Packages
**None required!** This assignment uses only base R functions, making it perfect for introductory students.

## Files Structure

- `Loops and Conditions with the High Low Game.Rmd`: **Instructor's complete guide**
  - Detailed lesson plan with pedagogical notes
  - Complete code implementations for all game variations
  - Discussion prompts and teaching strategies
  - Multiple loop implementations (for-loop vs while-loop examples)
  - Probability extensions and adaptations

- `Loops Assignment.Rmd`: **Student worksheet**
  - Guided exercises with scaffolded coding prompts
  - Step-by-step progression from simple to complex implementations
  - Space for student experimentation and reflection

- Supporting R files (referenced in teacher edition):
  - `highLowGame.R`: Complete game implementation
  - `highLowCode.R`: Code components and functions

## For Instructors

### Prerequisites
Students should have prior experience with:
- Basic R syntax and mathematical computations
- Creating and manipulating vectors
- Understanding of functions (both built-in and user-created)
- Basic concept of object assignment and memory

### Learning Objectives
By completion, students will be able to:
- Implement conditional logic using `if`, `else`, and nested conditions
- Create iterative processes using `for` loops and `while` loops
- Use the `sample()` function for random selection
- Handle user input with `readline()`
- Understand and apply data type conversion
- Debug common syntax errors (missing braces, parentheses)
- Apply basic probability concepts in programming contexts

### Teaching Approach
1. **Hands-on Introduction**: Physical card game (5+ minutes)
2. **Collaborative Code Building**: Step-by-step development with class discussion
3. **Conceptual Reinforcement**: Walking through code logic with physical cards
4. **Progressive Complexity**: Single round → multiple rounds → advanced features
5. **Peer Learning**: Pair programming and group discussions encouraged

### Key Programming Concepts Covered
- **Selection Structures**: Conditional decision-making
- **Iteration Structures**: `for` loops (known repetitions) vs `while` loops (condition-based repetitions)
- **Function Usage**: Built-in functions (`sample()`, `readline()`) and custom functions
- **Data Types**: Character vs numeric conversion and type forcing
- **Nesting**: Combining conditional and iterative structures
- **Debugging**: Common syntax error identification and resolution

## For Students

### Getting Started
1. Begin by playing the physical card game with a partner
2. Open the student assignment file (`Loops Assignment.Rmd`)
3. Follow the guided prompts to build your game step-by-step
4. Test your code frequently and debug any issues
5. Experiment with variations and extensions

### Skills You'll Develop
- Writing clean, functional R code
- Understanding program flow and logic
- Problem-solving through code debugging
- Statistical thinking through probability applications
- Code organization and documentation

## Extensions and Variations

The project includes discussion of several advanced topics:
- **Sampling without replacement**: Single deck gameplay with no ties
- **Probability calculations**: Computing odds and expected outcomes
- **Multi-card variations**: Games involving multiple cards and sum comparisons
- **User choice implementation**: Allowing players to select game variants
- **Score tracking**: Maintaining wins/losses across multiple rounds

## Adaptations

### For Non-Statistics Classes
- Omit probability calculations and focus purely on programming logic
- Emphasize algorithmic thinking over mathematical concepts

### For Advanced Students
- Include comprehensive probability analysis
- Explore more complex game variations
- Implement additional user interface features

### Time Modifications
- Core lesson can be completed in 2-3 class periods
- Extensions can add 1-2 additional periods
- Suitable for both intensive workshops and distributed learning

## Difficulty Level

**Beginner to Intermediate** - Designed for students with minimal programming experience but progresses to more sophisticated concepts.

## Author

Chelsy Schnabel  
Original development: June 2023

## License

This work is licensed under a [Creative Commons Attribution-NonCommercial 4.0 International License](https://creativecommons.org/licenses/by-nc/4.0/).

[![CC BY-NC 4.0][cc-by-nc-image]][cc-by-nc]

[cc-by-nc]: https://creativecommons.org/licenses/by-nc/4.0/
[cc-by-nc-image]: https://licensebuttons.net/l/by-nc/4.0/88x31.png

### What this means:
- **Share**: You may copy and redistribute this material in any medium or format
- **Adapt**: You may remix, transform, and build upon this material
- **Attribution Required**: You must give appropriate credit to Chelsy Schnabel
- **Non-Commercial**: You may not use this material for commercial purposes
- **No Additional Restrictions**: You may not apply legal terms or technological measures that legally restrict others from doing anything the license permits

### For Educators
This material is designed for educational purposes. Instructors are encouraged to adapt and modify content to suit their specific classroom needs and student populations. When sharing or adapting this work, please maintain attribution to the original author.
