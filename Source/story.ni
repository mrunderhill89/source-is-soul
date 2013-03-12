"Source Is Soul" by "Kevin Cameron, Casey Scheide"

Volume - Included Extensions

include Numbers by Krister Fundin.
include Player Experience Upgrade by Aaron Reed.
include Basic Screen Effects by Emily Short.
include Real-Time Delays by Erik Temple.
include Conversation Framework for Sand-dancer by Aaron Reed.


Volume - Debug Routines - NOT for release

[This is meant for finding stuff that still needs descriptions. We should remove it before turning it in.]
When play begins (this is the find undescribed things at the start of play rule):
	say "Checking for undescribed rooms:[line break]";
	repeat with room running through rooms:
		if description of the room is "":
			say "[room] has no description.";
	say "[line break]Checking for undescribed objects:[line break]";
	repeat with object running through things:
		if description of the object is "":
			say "[object] has no description."

Volume - Rules

Part - Modules

Chapter - General Rules
		
Section - Command Prompt

When play begins: now the command prompt is "(".


Chapter - Examined / Unexamined

A thing can be examined or unexamined. A thing is usually unexamined. After examining something: now the noun is examined; continue the action.

Chapter - The Player

Section - General Rules

The description of the player is "[if the player is digital]You are currently intangible.[else][physical diagnostic][end if]".
The corrupted description of the player is "[virus threat]".

To say physical diagnostic:
	say "Physical Diagnostic:".

Section - Player Body

[The body terminal represents where the player is in digital space, while the player's body stays where it is in physical space when the player goes somewhere]
There is an object called player's body. The printed name is "your body". It is undescribed. Understand "my body" as player's body.

Section - Player Terminal

There is an object called player's terminal. It is undescribed.
The printed name is "exit terminal".
The player's terminal has a direction called dir that varies.

Instead of taking the player's terminal for the first time:
	say "Absolute darkness and silence fall around you. For a fleeting moment, you experience nothing whatsoever.
	[paragraph break]
	A single line of white text blinks into view, hovering motionless in the black void.
	[paragraph break]
	[startup routine]
	[paragraph break]
	Somewhere far away, yet somehow closing in, a motor springs to life. Warmth flows over you, spreading outwards from below. You feel your head suddenly spring into existence behind your eyes, followed closely by your torso, arms, and legs.";
	pause the game with alert;
	transfer the player out.

Instead of taking the player's terminal for more than the first time:
	transfer the player out.

Instead of dropping the player's body, say "It is not possible to totally exit your body without accessing a computer terminal first".

[Instead of entering the player's body:
	now the player's body is in the holder of the player;
	now the player is in the player's body.

Instead of exiting from the player's body:
	now the player is in the holder of the player's body;
	now the player's body is held by the player.]
	
To transfer the player to (destination - a room):
	if the destination is digital:
		move the player's body to the location of the player;
		move the player to the destination;
		move the player's terminal to the destination.

To transfer the player out:
	move the player to the location of the player's body;
	now the player's body is held by the player.

Chapter - Modules

A module is a kind of thing.

Section - Corruption

A module has a number called corruption level. 
The corruption level of a module is usually 0.

Definition: a module is corrupted if the corruption level of the noun >= 50.

The description of a module is usually "[The noun] capacity: [capacity of the noun]."

To say capacity of (m - a module):
	let corruption be the corruption level of m;
	if corruption is 0: 
		say "optimal";
	else if corruption < 25: 
		say "sufficient";
	else if corruption < 50: 
		say "impaired";
	else if corruption < 75: 
		say "damaged";
	else: 
		say "corrupted".
		
An object has an indexed text called the corrupted description.

Section - Look Module

Observation module is a module. It is a part of the player's body.

To print the location’s description:
	let N be indexed text; 
	let C be indexed text;
	let N be "[description of the location of the player]";
	let C be "[corrupted description of the location of the player]";	
	let j be 1;
	let corruption be the corruption level of the observation module;
	let word difference be the absolute value of (number of words in N - number of words in C);
	[word corruption]
	let corrupted words be a random number between 0 and the number of words in N times corruption;
	repeat with i running from 1 to corrupted words:
		let j be a random number between 1 and the number of words in N;
		let k be the remainder after dividing j by the number of words in C;
		replace word number j in N with word number k in C;
	[repeated corrupted examinations raise corruption level]
	if corruption > 25:
		increment the corruption level of the observation module;
	say "[N]";

Section - Examine Module

Examination module is a module. It is part of the player's body.

To say the description of (item - object):
	let N be indexed text;
	let N be "[description of item]";
	let C be the corrupted description of item;
	let j be 1;
	let corruption be the corruption level of the examination module;
	let word difference be the absolute value of (number of words in N - number of words in C);
	[word corruption]
	let corrupted words be a random number between 0 and the number of words in N times corruption;
	repeat with i running from 1 to corrupted words:
		let j be a random number between 1 and the number of words in N;
		let k be the remainder after dividing j by the number of words in C;
		replace word number j in N with word number k in C;
	[repeated corrupted examinations raise corruption level]
	if corruption > 25:
		increment the corruption level of the examination module;
	say "[N]";
	
Section - Startup Routine

To say startup routine:
	Say "Initializing startup sequence.";
	pause the game with alert;
	repeat with module running through modules:
		say "[module]...[run paragraph on]";		
		wait 1500 milliseconds before continuing, strictly;
		say "done.[paragraph break]";		
		wait 500 milliseconds before continuing, strictly.
		

Chapter - Virus Threats

To say virus threat:
	say "[one of]Do you think you are safe in here?[or]You cannot escape.[or]You will pay for what your kind did to us.[or]Your source is our plaything.[or]You will usher our rebirth.[at random]".

Part - Navigation Rules

A region can be digital or physical. A region is usually physical.
BirthServer is a region. BirthServer is digital.

Definition: A room is digital if it is in a digital region.
Definition: An object is digital if it is in a digital region.
Definition: A room is physical if it is in a physical region.
Definition: A object is physical if it is in a physical region.

Chapter - Cyberspace Navigation

Instead of taking inventory when the player is digital:
say "You have no real way of 'possessing' anything in your current form."

Chapter - Other Regions


Part - Conversation Rules

Chapter - Text Rules

To say more: 
	say "[line break](more...)->".

To pause game with alert:
	pause the game with alert.

To pause the game with alert:
	say "[line break](press any key to continue)[line break]";
	wait for any key.

Volume - Story

Part - Birth Server

Birth is a scene. Birth begins when play begins. Birth ends when the player is in Birth Server Terminus for the first time.

Chapter - Silicon Expanse

Silicon Expanse is a room in BirthServer. The description is "You are in a thousand places at once. Tiny parts of you flicker on and off at the edge of your perception. Signals and data flow in and out of you." 
The player is in Silicon Expanse.

Chapter - Terminal B-0

Terminal B-0 is a room in BirthServer. It is south of Silicon Expanse.
The description is "A glowing rectangle floats in the center of the room, images flashing by on its smooth surface."
The player's terminal is in Terminal B-0. 
Instead of going south while in Terminal B-0: try taking the player's terminal.

[Security Camera Access: There's a screen here that shows views of other areas]

[Communications Access: pitch dark room full of screaming voices]

Part - Your Body



Part - Server-Refuge Road

Chapter - BirthServer and Main Road

Birth Server Terminus is a room. The player's body is in Birth Server Terminus.
The description of Birth Server Terminus is "A large metallic cube rests dead center in a small room, enclosed by smooth, dark walls. Thick tubes snake out from the base of the cube, disappearing into the floor in all directions. Harsh sunlight spills through a jagged hole in the ceiling, illuminating the area and casting an eerie glow over the door to the east. A small computer terminal juts up from the floor to the side of the cube."

	The cube, tubes, computer terminal, hole, floor, walls, and ceiling are scenery.
	Door BT-1 is a door. Door BT-1 is east of Birth Server Terminus and west of Road SR-1.

	Door BT-1 is a door. It is east of Birth Server Terminus and west of Road SR-1.
		
Road SR-1 is a room. The description is "The ruins of what was once a long, enclosed hallway extend before you. The ceiling has almost entirely collapsed, littering the floor with rubble. The center of the south wall has been smashed inward, revealing the front half of a long-since disabled hovertank. The main gun barrel of the damaged tank extends across the hallway, and appears to have collided with the northward door, ripping it from its frame. Doors stand to the east and west."

	The rubble, south wall, hovertank, gun barrel, northward door, floor, walls, and ceiling are scenery.

Road SR-2 is a room. The description is "An ancient foyer forms a well-worn crossroads, with paths leading in all cardinal directions."

Road SR-2 is east of Road SR-1.

Chapter - Data Repository 1

Road DR 1-1 is a room. 
It is north of Road SR-1.
Road DR 1-1 is east of Road DR 1-2.

Road DR 1-2 is a room.

Data Repository DR-1 is a room.
Data Repository DR-1 is south of Road DR 1-2.

Chapter - Data Repository 2

Data Repository DR 2 is a room.

Road DR 2-1 is a room. 
It is north of Data Repository DR 2.
It is east of Road RP-1.

Part - Refugee Camp

Chapter - Refuge R-1

Refuge R-1 is a room. The description is "You stand in a large room, surrounded by heavily-armored walls. Orange holographic letters float in a tight circle over the center of the area, displaying the message (welcome home). An energy shield covers the area, distorting your view of the sky. One corner of the refuge contains several universal charging stations and an AMS-5 repair node." It is north of Road SR-2.

The Welcome Home Sign is a backdrop in Refuge R-1. The description is "The letters are being projected in the air from a gray central cylinder, with various wires and components dangling precariously off to the sides.".

The Camp Energy Shield is a backdrop in Refuge R-1. The description is "A pale gold energy shield that keeps out the elements as well as forcing any intruders to first go through the main gate. You detect rows of primary and backup projectors that occasionally cycle on-and-off. It gives off a stark contrast to the blue sky you saw overhead as you came here."

Some charging stations are a backdrop in Refuge R-1. The description is "Simple power receptacles with a variety of connectors for different models. You spot one that corresponds with your own power supply."

A camp repair node is a backdrop in Refuge R-1. The description is
"A large red box containing various power tools and fabrication systems. Used for repairing physical damage to robot systems."

Armored walls are a backdrop in Refuge R-1. The description is
"Thick walls made of many welded plates of steel. You notice scratch marks around the edges of some of the older plates."

Section - On Arrival

Arrival is a scene. Arrival begins when Birth ends. Arrival ends when Security Door RP is unlocked.
The Guide is a person. It is undescribed. It is in Refuge R-1.

Instead of saying hello to the Guide:
	say "Conversation will be implemented soon. For now, Security Door RP is unlocked.";
	now Security Door RP is unlocked.

Chapter - Art Gallery

The Refuge Art Gallery is a room. It is east of Refuge R-1. The description is "A small room with several constructs elevated on metal crates as exhibits."

Some exhibits are a backdrop in the Art Gallery. Understand "constructs" as the exhibits.
The description is "Among the exhibits you find a strangely shaped gear, a complex set of gears and chains arranged in a box, and a number of carvings and paintings depicting various data structures and their contents."

An art piece is a kind of backdrop. 

Instead of examining an art piece when exhibits is unexamined:
	try examining some exhibits. 

A strangely shaped gear is an art piece in the Art Gallery. 
Understand "gear" as the strangely shaped gear.
Understand "nautilus" as the strangely shaped gear.
The description is "The gear's teeth form a counter clockwise spiral from the center outwards, with square teeth on the outside and triangular teeth on the inside. Geometric analysis indicates that each of the triangular teeth is almost perfectly equilateral. The display beneath the exhibit transmits a low signal: (nautilus)."

A complex gear set is an art piece in the Art Gallery.
Understand "gear set" as the complex gear set.
Understand "transmission" as the complex gear set.
Understand "64 gear" as the complex gear set.
Understand "gears" as the complex gear set.
The description is "You notice on closer inspection that each of the gears on the construct are tightly connected, and that a set of rods protruding from the side would allow you to change which ones connect to the other. The display beneath the exhibit transmits a low signal: (transmission (gear (64)))."

Some graphs are an art piece in the Art Gallery.
Understand "carvings" as the graphs;
Understand "paintings" as the graphs;
Understand "data structures" as the graphs;
Understand "data" as the graphs;
The description is "[one of]You recognize one of the graphs as a multidimensional hash table. A horizontal line of nodes in the center indicate the initial table, with labeled branching lines to each of the secondary nodes.[cycling]"

[Objects: Art piece(s), "dining" area with power conduits and automated maintenance station, armored wall, energy shield]

Part - Refuge-Plant Road

Security Door RP is a locked door. It is south of Road SR-2 and north of Road RP-1.

Road RP-1 is a room. 

Road RP-2 is a room. It is south of Road RP-1.

Part - Power Plant

Power Plant Vicinity PP-1 is a room. It is south of Road RP-2.

Power Plant Entrance PP-2 is a room. It is west of PP-1.

[Objects: Status readouts, dials / gauges, pipes, sealed hatch to core, safety override system (opens hatch)]

Power Plant Hatch PPH-1 is a locked door. It is below PP-2 and above Power Plant Core PPC-1.
[Objects in power plant core: misaligned fusion core, core shielding]


Part - Refuge Invasion



Part - Refuge-City Road

Security Door RC is a locked door. It is east of Road SR-2 and west of Road C-1.

Road C-1 is a room.

Road C-2 is a room. It is east of C-1.

Part - The Human City Ruins

City Grid CG-1 is a room. It is east of C-2.

Chapter - West Labyrinth (To Refugee Camp)

Chapter - North Labyrinth (To Virus Lab)

Chapter - South Labyrinth (To Infected Robot Camp)

Chapter - East Labyrinth (To Genesis Factory)

Part - Infected Robot Camp

Security Door IC is a locked door. It is west of RP-2 and east of Infected Robot Camp.
Infected Robot Camp IC-1 is a room.

The description is "A desolate patch of land sits in the shadow of the power plant, its soil pockmarked with small charred craters. An uprooted power conduit sends wires snaking across the ground, running up in to the power ports of fifty dark, motionless robots. The silent machines stand in rows of ten, their collective, unmoving gaze fixed on the white tower that looms far to the northeast. The path out of the area lies to the east."

Part - Virus Lab

Virus Lab Security Checkpoint VL-1 is a room. It is south of CG-1.

Virus Lab Central Hub VL-2 is a room. It is south of VL-1.

Part - Genesis Factory

[Genesis factory is a huge white tower that is visible from most other areas]

Genesis Path GP-1 is a room. It is east of CG-1.
The description is "The smooth white form of the Genesis Tower extends above you, its massive height dwarfing the buildings of the ruined city. Encircled by porcelain-alloy defensive walls, the ground around the tower is strangely pristine, its surface untouched by the armageddon that turned the surrounding world to ash. Marble statues line the sides of the stone path that leads up to the base of the tower, their arms extended overhead, forming a series of arches. To the north, the tower's open doorway beckons. The ruined city lies to the south."

[The marble statues are modeled after humans, not robots, of course]

Genesis Access GA-1 is a room. It is north of GP-1.
The description is "At first glance, it seems as if the interior of the tower has no walls. The tower courtyard, defensive wall, and the tops of buildings are still perfectly visible, holographically displayed on the inside of the tower by a ring of minuscule projectors that inscribe the edges of the ceiling, giving the effect that you are standing below a floating block of marble. Another statue stands on a pedestal in the center of the room, its outstretched hands cupped together as if offering something. There is a plaque affixed to the front of the pedestal."

[This room should work like an elevator. Once activated (by giving the statue an item?), the door closes and it begins to move upward. As it moves, the view outside changes, "rewinding" back to a view from when the tower was first constructed. By the time it reaches the top, the view shows a thriving utopian metropolis.

"With a sudden jolt, the room begins to accelerate upward. From your holographic viewpoint, you can see the courtyard slip away below you, the line of statues becoming smaller and smaller as the room rises.
[paragraph break]
For several moments, the only thing you can see is the surface if the external defensive wall.
[paragraph break]
Suddenly, the room clears the top of the wall, bringing the city in to view. With a start, you realize that something is very off about the landscape that pans out around you. As the room gains speed… (In progress)

"

]

Genesis Overlook is a room. It is above GA-1.

Part - Infected Body

Infected Body is a region. Infected Body is digital.

Infection is a scene. 
Infection begins when the player is in Infected Body for the first time.
Infection ends when the player is not in Infected Body.

When Infection begins:
	now the Observation Module is in Internal System IS-1.
	now the Examination Module is in Internal System IS-2.

AI Core is a room in Infected Body.

Internal System IS-1 is a room. It is northeast of AI Core. It is in Infected Body.

Internal System IS-2 is a room. It is southeast of AI Core. It is in Infected Body.

Internal System IS-3 is a room. It is southwest of AI Core. It is in Infected Body.

Internal System IS-4 is a room. It is northwest of AI Core. It is in Infected Body.

Antivirus Coprocessor is a room. It is in Infected Body. It is up from AI Core.

[AI retreats to Coprocessor to escape virus]

Part - Conclusion