# Speed Painting
Name: Ava Byrne Kavanagh

Student Number: C24384981

This is my 2D artistic shooter game for Games Programming MED9016: 2024-25
# Video
https://www.youtube.com/watch?v=rH2WzIFX7mc

# Screenshots
![Screenshot 2025-05-08 185949](https://github.com/user-attachments/assets/a03de126-511c-4ea4-91e6-bbc8ad527662) 
![Screenshot 2025-05-08 190059](https://github.com/user-attachments/assets/68ba0b93-264d-4c6a-b38c-a41ee58b681e)
![Screenshot 2025-05-08 190119](https://github.com/user-attachments/assets/5571cc81-0546-4ad5-9d6e-f1719aa223e2)
![Screenshot 2025-05-08 190132](https://github.com/user-attachments/assets/7253250c-cafd-48cb-8fff-1d0361c418ee)

# Description
You play as an upcoming painter as you start off your day completing commissions for consumers.

The more paintings you complete, the faster the requests come in and the demand gets higher. The people want more and FAST!

Paint as fast as you can but be careful, if you miss too many requests, they will get mad...
# Instructions for Use
Move = WASD / Left + Right Arrow Keys

Paint = Left Mouse Button

Jump (for fun!) = Spacebar
# How It Works
When you start the game, you're put into a room and blank canvas panels will start to procedurally spawn in using an array and move towards you. There is a wall that is placed in front of you so you won't know where the paintings will be coming from until they enter the room.

You can "shoot" a splatter of paint from your paintbrush that will shoot forward and if it collides with a blank canvas, the mesh will change into a coloured painting which will shoot out a confetti particle effect and will slowly float down out of the room.

Each painting you complete give you 50 points and for every 250 points you gain, the speed that the canvas panels moves increases to help keep it engaging and challenging.

If you miss a canvas or if you get hit by one, you lose one heart and once you reach zero health, the game will switch to the game over scene that displays how many painting you had completed and your final score count.
# List of Classes/Assets in the Project
| Class/Assets |  Source  |
|:-----|:--------:|
| character_body_3d.gd   | Self-written, Shooting code from reference 1 |
| game_over.gd   |  Self-written  |
| Global.gd   | Modified from reference 2 |
| level.gd  | From reference 3 |
| modules.gd  | Modified from reference 3 and 4 |
| paint.gd  | From reference 3 |
| paintbrush_anim.gd  | From reference 5 |
| painting_one.gd | Self-written, Particle emitting from reference 6 |
| start_screen.gd | Self-written |

# References
1. https://youtu.be/6bbPHsB9TtI?si=cZwI8TbJSqEvehzA
2. https://youtu.be/sc-tEPdLZhk?si=eTp-Su8KP8y53hnK
3. https://youtu.be/oFK3fElaxbU?si=yTzWCANYgOPDQE4A
4. https://youtu.be/iEmiLN9twqA?si=BLpIwY98cgAou9v0
5. https://youtu.be/V9kshvtj6s0?si=Twuk86FnCBJIcTSY
6. https://youtu.be/yWIH7hHfWyU?si=s5hYbJn4RR-EbAwi
# What I Am Most Proud of in the Assignment
After completing this assignment and being able to see the final product, I'm proud of what I was able to achieve with my little knowledge of making 3D games in Godot.

What I am most proud of in this assignment would be my ability to solve the problems that I encountered throughout this project by breaking down the code myself and being able to find solutions without fully relying on Youtube videos or going onto forums on Google. This defiently helped me learn many different components that I can use for future projects, like using Array lists and creating packed scenes to help save up space in the hierarchy.
# What I Have Learned
I have learned loads of new information and built upon my skills from doing this assignment.

I was able to successfully created an array loop that procedurally spawns in blank canvas panels at random intervals. I was also successful at using a global script in order to keep track of the players health, score, the speed the canvas panels move at, what level the player is currently on, and having a target that increases every time the player reaches the target amount - the target at the start is set to 250 points and once the player gains that score, the target variable increases by another 250 while also increasing the speed by 1 and this continues until the player runs out of health.
# Game Design Document
