[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/gbHItYk9)
## Project 00
### NeXTCS
### Period: 10
## Name0: Sarah Yu
## Name1: Michelle Ye
---

This project will be completed in phases. The first phase will be to work on this document. Use github-flavoured markdown. (For more markdown help [click here](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) or [here](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax) )

All projects will require the following:
- Researching new forces to implement.
- Method for each new force, returning a `PVector`  -- similar to `getGravity` and `getSpring` (using whatever parameters are necessary).
- A distinct demonstration for each individual force (including gravity and the spring force).
- A visual menu at the top providing information about which simulation is currently active and indicating whether movement is on or off.
- The ability to toggle movement on/off
- The ability to toggle bouncing on/off
- The user should be able to switch _between_ simluations using the number keys as follows:
  - `1`: Gravity
  - `2`: Spring Force
  - `3`: Drag
  - `4`: Custom Force
  - `5`: Combination


## Phase 0: Force Selection, Analysis & Plan
---------- 

#### Custom Force: Orb-orb collsions with momentum conservation

### Forumla
What is the formula for your force? Including descriptions/definitions for the symbols. (You may include a picture of the formula if it is not easily typed.)

![image](https://github.com/user-attachments/assets/07aa6eb2-9f86-4543-86c6-bbc7baa8aca5)

- Note: this force is meant to be in a gas container, meaning no energy is lost when the orbs collide with the wall

### Custom Force
- What information that is already present in the `Orb` or `OrbNode` classes does this force use?
  - mass
  - velocity

- Does this force require any new constants, if so what are they and what values will you try initially?
  - No new constants

- Does this force require any new information to be added to the `Orb` class? If so, what is it and what data type will you use?
  - boolean Collision check

- Does this force interact with other `Orbs`, or is it applied based on the environment?
  - Yes, this force is triggered when two orbs collide and only depends on other orbs. 

- In order to calculate this force, do you need to perform extra intermediary calculations? If so, what?
  - No, you can just calculate the force with the initial mass and velocity of the orbs.

--- 

### Simulation 1: Gravity
Describe how you will attempt to simulate orbital motion.
- Create a fixedOrb at the center of the simulation and have the other orbs orbit the fixedOrb.
- I will create a fixed central object (fixedOrb) at the center of the simulation and apply gravitational forces to the orbiting objects to make them orbit around the fixedOrb, simulating orbital motion.

--- 

### Simulation 2: Spring
Describe what your spring simulation will look like. Explain how it will be setup, and how it should behave while running.

- The spring simulation will feature a mass attached to a spring, with the spring constantly pulling the mass towards its equilibrium position while oscillating back and forth based on Hooke's law.

--- 

### Simulation 3: Drag
Describe what your drag simulation will look like. Explain how it will be setup, and how it should behave while running.

- In the drag simulation, objects will experience a resistive force proportional to their velocity, slowing them down as they move through a medium, such as air or water.

--- 

### Simulation 4: Custom force
Describe what your Custom force simulation will look like. Explain how it will be setup, and how it should behave while running.

The custom force simulation will involve objects colliding with each other, where kinetic energy is not conserved, and the objects stick together or deform after impact, resulting in a loss of energy during the collision.

--- 

### Simulation 5: Combination
Describe what your combination simulation will look like. Explain how it will be setup, and how it should behave while running.

The combination simulation will involve multiple forces, such as gravity, drag, and spring forces, acting on objects that undergo inelastic collisions. During collisions, objects will lose kinetic energy and stick together or deform, while the other forces continue to affect their motion over time.

