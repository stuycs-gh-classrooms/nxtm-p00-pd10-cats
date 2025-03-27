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
  - If the orbs have collided, boolean collision check will become true and the custom force will be triggered.

- Does this force interact with other `Orbs`, or is it applied based on the environment?
  - Yes, this force is triggered when two orbs collide and only depends on other orbs. When the orbs collide, the custom force will be triggered, and the orbs will bounce off of each other with their new final velocities, which will be calculated based on the formula.

- In order to calculate this force, do you need to perform extra intermediary calculations? If so, what?
  - No, you can just calculate this force with the initial mass and velocity of the orbs.

--- 

### Simulation 1: Gravity
Describe how you will attempt to simulate orbital motion.
- Create a fixedOrb at the center of the simulation and have the other orbs orbit the fixedOrb.
- Requires gravity, inertia, centripetal force

--- 

### Simulation 2: Spring
Describe what your spring simulation will look like. Explain how it will be setup, and how it should behave while running.

- The simulation will only have two orbs connected by a spring that will start at random positions on the screen. There will be an equal chance of having the spring start compressed or extended beyond normal length. The orbs will then experience spring force and either push each other away or attract each other.

--- 

### Simulation 3: Drag
Describe what your drag simulation will look like. Explain how it will be setup, and how it should behave while running.

- The bottom half of the simulation will be affected by drag, with the force of drag being represented by the color of the bottom half: if the drag coefficient is high the bottom half will be red, if it is medium it will be yellow, and if it is low it will be green. There will be options to change the force of the drag on the bottom of the screen, as well as an option to remove drag from the bottom of the screen.
- We will have to ensure that the mass of the orbs are not too high, as orbs with too high of a mass will sometimes be flung upwards as a result of experiencing drag force.
  
--- 

### Simulation 4: Custom force
Describe what your Custom force simulation will look like. Explain how it will be setup, and how it should behave while running.

- A random number of orbs (not connected by springs) that have different masses and different velocities will be created in the simulation. When the simulation is running, the orbs will begin moving around the screen in random directions, and will bounce off the edges of the screen without losing energy as the simulation will be run in a gas container. When the orbs collide with each other, the custom force will be triggered and the orbs will fly away from each other with their new velocities, which would have depended on the intial velocity and initial mass of the two orbs. The direction that the orbs move in after collision will be the opposite of the original direction that they were traveling in.


--- 

### Simulation 5: Combination
Describe what your combination simulation will look like. Explain how it will be setup, and how it should behave while running.

- Combination of drag, gravity, and custom force
- Similarly to the custom force simulation, the simulation will start with a random number of orbs that aren't connected by springs. The orbs will have random masses and random initial velocities. However, the bottom fourth of the screen will be affected by drag, and all the orbs will experience gravity in the downwards direction, similar to Earth gravity. When the orbs collide, they will fly away from each other with final velocities determined by the custom force.

