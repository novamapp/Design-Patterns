# Design-Patterns
Repo to take notes on and practice design patterns
---
*[Game Programming Patterns by Robert Nystrom notes (GPP)](https://gameprogrammingpatterns.com/)*
- Good software architecture is designed to expect change
- A design is good if it can easily accomodate change
- The cycle of changing code: 
  - Get Problem
  - Learn Code
  - Code Solution
  - Clean Up
  - Repeat -------^
- Decoupling: writing code such that one area of code can be learned, isolated, and changed without another area
  - A change to a segment of code should not mean having to change another
  - Changes should not ripple to require other changes in the code base
  - Introduce abstraction where decoupling is most needed
- It's a guess where abstraction should be added in code
- Abstraction is a layer of complexity that needs to be managed
- Flexibility of abstraction can mean a sacrifice in a program's performance
- The simplest solutions are such that a little logic covers many use cases

Tools for Clean Code:
- abstraction
- modularity
- design patterns
- software architecture

Flexibile software architecture is one that makes few assumptions in the program

---

Code Smells: indications of bad code
*[notes based on Code Smells, Refactoring Guru](https://refactoring.guru/refactoring/smells)*
- Bloaters: section of code that increasing over time to size past recommended:
  - method / function: around 10+ lines, start to worry.
  - classes: should have as little responsibilities as possible
