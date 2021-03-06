"Source Is Soul" by "Kevin Cameron, Casey Scheide"

Volume - Included Extensions

include Numbers by Krister Fundin.
include Player Experience Upgrade by Aaron Reed.
include Basic Screen Effects by Emily Short.
include Real-Time Delays by Erik Temple.
include Conversation Framework for Sand-dancer by Aaron Reed.

Volume - Debug Routines - NOT for release

[This is meant for finding stuff that still needs descriptions. We should remove it before turning it in.]


Volume - Rules

Part - Modules

Chapter - General Rules
		
Section - Command Prompt

When play begins: now the command prompt is "(".


Chapter - Examined / Unexamined

A thing can be examined or unexamined. A thing is usually unexamined. After examining something: now the noun is examined; continue the action.

Chapter - The Player

Section - General Rules

The description of the player is "[if the player is in a digital region]You are currently intangible.[else][physical diagnostic][end if]".
The corrupted description of the player is "[virus threat]".

To say physical diagnostic:
	say "Physical Diagnostic:".

Section - Player Body

[The body terminal represents where the player is in digital space, while the player's body stays where it is in physical space when the player goes somewhere]
There is an object called player's body. The printed name is "your body". It is undescribed. Understand "my body" as player's body.

Section - Player Terminal

A terminal is a kind of thing. 
A terminal is usually fixed in place and undescribed.
A terminal has a room called target.
A terminal can be open or closed. A terminal is usually open.

Accessing is an action applying to one visible thing.
Understand "access [a terminal]" as accessing.

Check accessing something that is not a terminal:
	say "-> (failure (not a terminal))"

Check accessing a terminal when the terminal is closed:
	say "-> (failure (terminal is closed))" instead.
	
Carry out accessing a terminal (called the terminal):
	if the terminal is not the player's terminal:
		transfer the player to target of the terminal.
	
Instead of taking a terminal:
	try silently accessing the noun.

There is a terminal called player's terminal.
The printed name is "exit terminal".
The initial appearance is "[if Birth is happening]You see a series of glowing rings to the south of you.[else]You see the exit terminal here.".
The description is "[if Birth is happening]Upon further inspection, the rings appear to form some sort of portal to a mobile platform. [end if]You can take this portal to enter the mobile platform."

Carry out accessing the player's terminal:
	transfer the player out.

Before accessing the player's terminal for the first time:
	say "Absolute darkness and silence fall around you. For a fleeting moment, you experience nothing whatsoever.
	[paragraph break]
	A single line of white text blinks into view, hovering motionless in the black void.
	[paragraph break]
	[startup routine]
	[line break]
	Somewhere far away, yet somehow closing in, a motor springs to life. Warmth flows over you, spreading outwards from below. You feel your head suddenly spring into existence behind your eyes, followed closely by your torso, arms, and legs.";
	pause the game with alert;
	transfer the player out.

Instead of dropping the player's body, say "It is not possible to totally exit your body without accessing a computer terminal first".

Does the player mean doing anything with the player's body: it is unlikely.

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

The player has a number called corruption level. 
The corruption level of the player is 0.

To decide whether an object is infected:
	if the corruption level of the noun > 0:
		yes;
	no.

To decide whether the player is corrupted:
	if the corruption level of the player >= 50:
		yes;
	no.

The description of a module is usually "[The noun] capacity: [capacity of the noun]."

To corrupt the player by (amount - a number):
	increase the corruption level of the player by amount.

To say corrupt the player by (amount - a number):
	corrupt the player by amount;

To purge the player by (amount - a number):
	decrease the corruption level of the player by amount;
	if the corruption level of the player < 0:
		now the corruption level of the player is 0.

To say purge the player by (amount - a number):
	purge the player by amount;

To say capacity of (m - a module):
	let corruption be the corruption level of the player;
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
	let corruption be the corruption level of the player;
	if the number of words in C > 0 and a random chance of corruption in 100 succeeds:
		say "[C]";
	else:
		say "[N]";

Section - Examine Module

Examination module is a module. It is part of the player's body.

To say the description of (item - object):
	let N be indexed text;
	let N be "[description of item]";
	let C be the corrupted description of item;
	let corruption be the corruption level of the player;
	if the number of words in C > 0 and a random chance of corruption in 100 succeeds:
		say "[C]";
	else:
		say "[N]";
		
Section - Startup Routine

To say startup routine:
	Say "Initializing startup sequence.";
	pause the game with alert;
	repeat with module running through modules:
		say "[module]...[run paragraph on]";		
		wait 1500 milliseconds before continuing, strictly;
		say "done.";		
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

Chapter - Doors

The can't go through undescribed doors rule is not listed in the check going rulebook.
To say closed door: do nothing.

Part - Conversation Rules

Chapter - Text Rules

To say more: 
	say "[line break](more...)->".

To pause game with alert:
	pause the game with alert.

To pause the game with alert:
	say "[line break](press any key to continue)[line break]";
	wait for any key.

Does the player mean saying hello to something that is not a person: it is very unlikely.

Section - Enable Leaving Conversations

When play begins:
	now can't leave conversation early is false.

Section - Topics

The player has a list of things called used topics.

To decide whether (topic - a thing) is used:
	if the topic is listed in used topics of the player:
		yes;
	no.

To decide whether (topic - a thing) is unused:
	if topic is used:
		no;
	yes.

After quizzing somebody about something (called the thread) (this is the add used ask topics rule):
	add the thread to the used topics of the player, if absent;
	remove thread from the goal topics of the player, if present.

After informing somebody about something (called the thread) (this is the add used tell topics rule):
	add the thread to the used topics of the player, if absent;
	remove thread from the goal topics of the player, if present.		

Instead of listing suggested topics:
	consider the suggestion list construction rules;
	let asks be the number of entries in sugg-list-ask;
	let tells be the number of entries in sugg-list-tell;
	let others be the number of entries in sugg-list-other;
	if asks + tells + others is 0 begin;
		say "[nothing specific]";
		rule succeeds;
	end if;
	say "(available topics([the printed name of the current interlocutor])) ->";
	if asks > 0, 
		say "(ask ([sugg-list-ask in code format]))[if tells + others > 0], [end if]";
	if tells > 0, 
		say "(tell ([sugg-list-tell in code format]))[if others > 0], [end if]";
	if others > 0, 
		say "(misc ([sugg-list-other in code format]))";
	say "[if topic-request is implicit])[paragraph break][otherwise].[end if]";
	rule succeeds.

To say nothing specific:
   say "([the printed name of the current interlocutor]) -> (no topics available)";

The Conversation Framework for Sand-dancer can't say hello to yourself rule is not listed in the Instead rulebook.
Instead of saying hello to yourself (this is the robot-style can't say hello to yourself rule): say "(open (self)) ->[line break](open ( (open (self)) )) ->[line break](open ( (open ( (open (self)) )) ) ->[line break](stop (infinite recursion))". 

Section - Knowledge and Memory

A knowledge is a kind of thing.

The player has a list of things called acquired knowledge.

To decide whether the player knows (knowledge - a thing):
	if the knowledge is listed in the acquired knowledge of the player:
		yes;
	no.
	
To commit (knowledge - a thing) to memory:
	add knowledge to acquired knowledge of the player, if absent.

To say commit (knowledge - a thing) to memory:
	commit knowledge to memory.
	
To remove (knowledge - a thing) from memory:
	remove knowledge from acquired knowledge of the player, if present.

To say remove (knowledge - a thing) from memory:
	remove knowledge from memory.
	
about the virus is a knowledge.
about the infected is a knowledge.
about humanity is a knowledge.
about the war is a knowledge.
about operation Genesis is a knowledge.
about your purpose is a knowledge.

Section - Goal Topics

The player has a list of things called goal topics.

Instead of going anywhere while goal topics of the player is not empty:
	say "[goal topics]".

Instead of saying goodbye to someone while goal topics of the player is not empty:
	say "[goal topics]".

To say goal topics:
	say "(urgent topics)->";
	let any known topics be false;
	repeat with topic running through goal topics of the player:
		if topic is familiar:
			say "([printed name of topic])";
			let any known topics be true;
	if any known topics is false:
		say "(unknown)".

To say add (topic - a thing) to goal topics:
	add topic to goal topics of the player, if absent.

To say remove (topic - a thing) from goal topics:
	remove topic from goal topics of the player, if present.

To say make (topic - a thing) familiar:
	now topic is familiar.

To say make (topic - a thing) unfamiliar:
	now topic is unfamiliar.

Section - Carry Out Listing Support Routines

To say (l - a list of objects) in code format:
	repeat with item running through l:
		say "([printed name of item in lower case])".

Section - Code-Style Conversation

Understand "ask ([someone]) ([text])" as asking it about.
Understand "request ([someone]) ([any known thing])" as requesting it for.
Understand "request ([someone]) ([text])" as imploring it for.
Understand "ask ([someone]) ([any known thing])" as quizzing it about.
Understand "tell ([someone]) ([any known thing])" as informing it about.

Report saying hello to someone:
	say "(open ([the printed name of the current interlocutor]))";
Report saying goodbye to someone:
	say "(close ([the printed name of the current interlocutor]))";	

Volume - Story

Part - Birth Server

Birth is a scene. Birth begins when play begins. Birth ends when the player is in Birth Server Terminus for the first time.

Chapter - Silicon Expanse

Silicon Expanse is a room in BirthServer. The description is "You are in a thousand places at once. Tiny parts of you flicker on and off at the edge of your perception. Signals and data flow in and out of you." 
The player is in Silicon Expanse.

The guiding voice is a backdrop in BirthServer. 
Understand "voice" as the guiding voice. Understand "signal" as the guiding voice.
The description is "The signal continues to repeat the same signal over again: (s)".
After looking when the guiding voice is visible:	
	say "[line break][one of]You detect a faint signal just outside your reach[or]The signal continues[stopping]: (s)".


Chapter - Terminal B-0

Terminal B-0 is a room in BirthServer. It is south of Silicon Expanse.
	The description is "A glowing rectangle floats in the center of the room, images flashing by on its smooth surface."
	The glowing rectangle is scenery in B-0. The description is "The panel appears to be cycling through several camera feeds. Despite the interference-induced static that clouds the display, you can still see that the feeds provide views in to the dark-walled hallways and rooms of a large building."
	The player's terminal is in Terminal B-0. 
	Instead of going south while in Terminal B-0: try taking the player's terminal.
	
	[The player doesn't have access to this room. It's just a dummy so that the exit lister knows south is a valid direction.]
Remote Terminal is a room in BirthServer. It is south of B-0.

[Security Camera Access: There's a screen here that shows views of other areas]

[Communications Access: pitch dark room full of screaming voices]

Part - Your Body



Part - Server-Refuge Road

Chapter - BirthServer and Main Road

The white tower is a backdrop. The description is "You can see a massive cylindrical white tower rising over the horizon. The strange monolith seems to be featureless, its blank sides gleaming in the sunlight, providing a stark contrast to the burned-out husks of buildings that surround it. [if the player is corrupted]You feel compelled to stare at the tip of the tower.[end if]"

The sky is a backdrop. The description is "The sky is mostly empty except for a few clouds. [if the player is corrupted]Shut yourself down and leave your body to us.[end if]There seems to be no danger of inclement weather at this time."

Section - Birth Server Terminus

Birth Server Terminus is a room. The player's body is in Birth Server Terminus.
The description of Birth Server Terminus is "A large metallic cube rests dead center in a small room, enclosed by smooth, dark walls. Harsh sunlight spills through a jagged hole in the ceiling, illuminating the area and casting an eerie glow over the door to the east."
The corrupted description is "A large metallic cube rests dead center in a small room, enclosed by smooth, dark walls. The room is lit by lights recessed in the ceiling, and every surface is well-polished and shining. There is one exit to the east."

	The cube, tubes, and hole are scenery.

	The description of the cube is "The surface of the cube is unbroken and smooth to the touch, its deep black surface reflecting slightly purple in the sunlight. Thick tubes snake out from the base of the cube, disappearing into the floor in all directions. On the front of the cube, a thin seam traces the outline of a door. In the center of the door, green text pulses on and off: 'Fabricator Standing By'"
	
	The tubes are a part of the cube. The description of the tubes is "Rubber insulated tubing. Some of the tubes hum with energy, while others lie dormant."

	The description of the hole is "One of the room's upper corners has been smashed in by some powerful force, leaving a meter-wide hole."

	Door BT-1 is a door. It is east of Birth Server Terminus and west of Road SR-1.
	The initial appearance is "There is a door to the east that leads outside the terminus room.".
		
Section  - Road SR-1

Road SR-1 is a room. The description is "The ruins of what was once a long, enclosed hallway extend before you. The ceiling has almost entirely collapsed, littering the floor with rubble. The center of the south wall has been smashed inward, revealing the front half of a long-since disabled hover tank. The main gun barrel of the damaged tank extends across the hallway, and appears to have collided with the northward door, ripping it from its frame. Doors stand to the east and west."
The corrupted description is "A long enclosed hallway extends before you, impeccably clean and free from dust. A cool breeze flows from hidden ventilation systems somewhere in the ceiling. Dark figures rush through the hall, entering and exiting the doors at the east, west, and north."

	The rubble, the south wall, the hover tank, and the gun barrel are scenery in Road SR-1.
	
	The description of the hover tank is "An armored vehicle differentiated by its lack of mechanical treads. Instead, the hover tank uses downward-facing repulsors to hover slightly above the ground. While power-hungry, this system allowed tanks of this class to move frictionlessly in any direction, even over water. The tank's generator appears to have overloaded after it collided with the wall, blasting a hole in its rear armor."

	The description of the rubble is "Bits of twisted metal rebar and shattered concrete."
	The description of the south wall is "Still structurally sound despite the tank protruding through it."
	The description of the gun barrel is "A long square barrel pokes out from the upper half of the tank. On the side of the barrel, you can barely make out a sequence of vertical lines drawn on the metal, alongside what you can only assume is a crude drawing of a robot."
	
	Repository Door DR-1 is a door. It is north of SR-1 and south of Road DR 1-1. It is closed and undescribed.
	The description of the Repository Door is "The thick metal door is bent almost in half. "
	
	Carry out opening Repository Door DR-1 for the first time:
		now the Repository Door is open;
		now the Repository Door is unopenable.
	After opening Door DR-1 for the first time:
		say "Your servos strain slightly as you pull what's left of the metal door from its hinges.".		
	
	Instead of going north from SR-1 while DR-1 is closed:
	try opening Door DR-1;
	if door DR-1 is open:
		try going north.

Section - Road SR-2

Road SR-2 is a room. The description is "An ancient foyer forms a well-worn crossroads, with paths leading in all cardinal directions."

	Some crossroad signs are a scenery in SR-2. 
Understand "sign" as the crossroad signs. Understand "signs" as the crossroad signs. 
The description is "Each sign sports a meticulously etched message.[if the player is corrupted][Paragraph Break]North: (Cowardice)
[Paragraph Break]South: (Stopgap)
[Paragraph Break]East: (Genesis)
[Paragraph Break]West: (Blasphemy)
[else]
[Paragraph Break]North: (Home)
[Paragraph Break]South: (Power)
[Paragraph Break]East: (Legacy)
[Paragraph Break]West: (Birth)[end if]".

Road SR-2 is east of Road SR-1.

Chapter - Data Repository 1

Road DR 1-1 is a room. The description is "The lights in this corridor have ceased to function, leaving the door to the south as the only source of light. Otherwise, this area seems structurally sound and free from debris. Several meters ahead, the hall makes a sharp turn to the west."

Road DR 1-1 is east of Road DR 1-2.

Road DR 1-2 is a room. The description is "Without functional lights, the hallway is almost entirely devoid of visible light. An opening looms to the south, silhouetted in false-color by the infrared spotlight of your night vision system. To the east, the hallway curves back out of sight."

Data Repository DR-1 is a room. The description is "Upturned desks and abandoned hardware lie scattered on the floor of a medium-sized room. A human skeleton lies slumped against the rear wall. A personal data recorder lies near the skeleton's hand."
	The personal data recorder is scenery in DR-1. The description is "The PDR is a small electronic device used for recording secure audio logs. Its power has drained away, leaving it inoperable, but you are able to recover snippets of sound data. A forgotten algorithm activates in the back of your memory banks, allowing you to translate the audio into readable speech. [paragraph break]'…mistake…'[line break]'…should never have…'[line break]'…operation Genesis…'[line break]'…seal the doors…'[line break]'…I think we're the only ones left…'[line break]'…I'm sorry…'[paragraph break]The final message is punctuated by a loud crash.[commit about humanity to memory]".
	
	The upturned desks and abandoned hardware are scenery in DR-1.

	The human skeleton is scenery in DR-1. The description is "It appears that a human male died in this room, and their body decomposed over several years."

	The description of the desks is "Laboratory desks with nonreactive surfaces made from thick synthetic material. The configuration of the toppled desks suggests that they were used to construct a makeshift barrier, but there are no signs of combat."
	
	The description of the abandoned hardware is "Various pieces of electronic equipment, including multimeters, diagnostic consoles, and power supplies. It is likely that they were used to work with robotics."

	[Instead of using, taking, or listening to the personal data recorder, say "As you reach for the PDR, it detects your presence and automatically begins playback of the last recorded message.]

Data Repository DR-1 is south of Road DR 1-2.

Part - Refugee Camp

Chapter - Refuge R-1

The Refugee Camp is a region.
Every turn when the player is in Refugee Camp:
	corrupt the player by 1.

Refuge R-1 is a room in Refugee Camp. The description is "You stand in a large room, surrounded by heavily-armored walls. Orange holographic letters float in a tight circle over the center of the area, flickering the message [if the player is corrupted](genesis is nigh)[else](welcome home)[end if]. An energy shield covers the area, distorting your view of the sky. One corner of the refuge contains several universal charging stations and an AMS-5 repair node. To the east you can see a building labelled 'Art Gallery'." It is north of Road SR-2.
The corrupted description is "The room before you is filled with chairs, arranged around a central stage on which a human and a robot stand, their hands gripped together in a gesture of mutual agreement. The audience that watches the handshake is filled with vague, faceless humanoid forms. Doors lead out to the room to the south and east."

The Welcome Home Sign is a backdrop in Refuge R-1. The description is "The letters are being projected in the air from a gray central cylinder, with various wires and components dangling precariously off to the sides.".

The Camp Energy Shield is a backdrop in Refuge R-1. The description is "A pale gold energy shield that keeps out the elements as well as forcing any intruders to first go through the main gate[if the player is corrupted], but this only delays the inevitable.[else].[end if] You detect rows of primary and backup projectors that occasionally cycle on-and-off. It gives off a stark contrast to the blue sky you saw overhead as you came here."

Some charging stations are a backdrop in Refuge R-1. The description is "Simple power receptacles with a variety of connectors for different models. You spot one that corresponds with your own power supply."

A camp repair node is a backdrop in Refuge R-1. The description is
"A large red box containing various power tools and fabrication systems. Used for repairing physical damage to robot systems[if the player is corrupted][else], but there are some things screwdrivers and drills cannot repair[end if]."

Armored walls are a backdrop in Refuge R-1. The description is
"Thick walls made of many hastily-welded plates of steel. You notice scratch marks around the edges of some of the older plates."

Section - On Arrival

Arrival is a scene. Arrival begins when Birth ends. Arrival ends when Security Door RP is unlocked.
The Guide is a person. It is in Refuge R-1.
Understand "robot" as the guide. Understand "damaged robot" as the guide.
The printed name is "damaged robot".
The initial appearance is "On the ground is a heavily damaged robot of a similar make to yourself. Its signal transmissions match those of the faint signal you detected in the server.".
The description is "Numerous critical and redundant systems on the robot have been dislocated. Electrical signals are faint and erratic."

After saying hello to the guide:
	say "You approach the damaged robot, but do not get within close proximity. Wireless transmitters begin flickering as your peer tries to communicate.[add Identify ask suggestion][add About the power plant to goal topics][make identify familiar]".

Chapter - Guide Conversation

Section - Guide Conversation

Section - Identify

Identify is a thing.

After quizzing the guide about identify: 
say "(identify) -> (security guard (refugee camp))[line break](request (help))[add Help ask suggestion][make help familiar]".

Help is a thing. The printed name is "clarify (help)". 
Understand "clarify help" as help. 
Understand "clarify (help)" as help.
Understand "(clarify (help))" as help.

Section - Help

After quizzing the guide about help: 
	say "(clarify (help)) -> (explain (attack (*translation failure*)) -> (request (mtrans))[paragraph break]The damaged robot is asking you to open a more secure line to directly transmit event data to you, but something is strange about its signal. Will you accept? (y/n)";
	if the player consents: [Accepting will give you more information about the virus but raise your corruption level.]
		say "(mtrans)[line break]You have been on patrol for most of the day. You are anxious for your shift to end so that you can get back to finishing that gear construct you were working on earlier. Suddenly the power begins fluctuating, and you and your fellow guards rush to the walls in anticipation.";
		pause the game with alert;
		say "You spot the infected clambering towards the settlement walls and transmit an alarm to the rest of the camp. Within seconds, however, the infected began jamming and corrupting nearly all wireless communication. You hastily append a warning to close wireless before your own frequency is no longer safe to use. The rest of your group begin gathering pieces of rebar for polearms and blocks of stone to hurl onto the climbing attackers. You pick up one of the rebar pieces and swing it hard enough to cleave an infected's cranial processor clean off";
		pause the game with alert;
		say "Another ten minutes pass in heated combat, and you spot a breach in the wall where more infected are climbing through. You and a fellow guard wrest a steel plate from the side of a house and use it to shore up the barrier. Even with both of your servos straining to put your backs into it, it's barely enough to keep the infected out. Bits of wire and carbon chips fly past you as body after body suicidally crashes into you.";
		pause the game with alert;
		say "You look over at your colleague, noticing that its movements have become slightly more stiff as the battle has waged on. With that as your only warning, it stops pushing against the wall and grabs you by the cranium, slamming you into the now-disintegrating wall.";
		pause the game with alert;
		say "The mental transmission ends, and you are back in the present. You know now what happened to these people. But something else has changed, as well.[commit about the infected to memory][corrupt the player by 10]";
	else:
		say "The damaged robot seems dismayed, but continues broadcasting on regular channels.[paragraph break](inform (attack) (days (2)))(conjecture (survivors (self, receiver)))";
	say "[paragraph break]The damaged robot begins sending an even more urgent set of signals.[paragraph break](inform (plan (attackers))) -> (power plant (sabotage))(request (help)(receiver))[line break][add About the power plant ask suggestion][make about the power plant familiar]";

Section - About the Power Plant

There is a thing called About the power plant. The printed name is "power plant". 
Understand "sabotage" as about the power plant. Understand "power plant" as about the power plant.

Does the player mean quizzing the guide about About the Power Plant: it is likely.

After quizzing the guide about About the power plant:
	say "The robot manages to give you the security codes for the power plant before its processor gives out. [paragraph break](mtrans (security codes))[line break](inform (logic (selection (receiver)) -> ...(*no response*)[paragraph break][remove About the power plant from goal topics]";
	now Security Door RP is unlocked; 
	try silently saying goodbye to the guide. [<- saddest line of code I've ever written. :( ]
 

Instead of doing anything to the Guide when Arrival is not happening:
	say "You detect no further processing signals coming from the robot."

Chapter - Art Gallery

The Refuge Art Gallery is a room in Refugee camp. It is east of Refuge R-1. The description is "A small room with several constructs elevated on metal crates as exhibits."

Some exhibits are a backdrop in the Art Gallery. Understand "constructs" as the exhibits.
The description is "Among the exhibits you find a strangely shaped gear, a complex set of gears and chains arranged in a box, and a number of carvings and paintings depicting various data structures and their contents."

An art piece is a kind of thing. It is usually undescribed and fixed in place. 

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
The initial appearance is "[if the player is in Road SR-2]There is a security door to the south.[else]The security door back to the refuge is to the north.[end if]".
The description is "[if Security Door RP is locked]The red glowing markings indicate that the door is locked and the security field is holding.[else]The gold glowing markings indicate that the door recognizes your security clearance.[end if]".

Road RP-1 is a room. The description is "A long dirt road leads from north to south, flanked on either side by piles of debris. [if the player is corrupted]Go back.[end if] The power plant is visible to the south.".

The piles of debris are a backdrop. They are in RP-1. The description is "The mixed contents of these piles suggest they were moved here manually."
	
The dirt road is a backdrop. It is in RP-1. The description is "The dirt road is relatively undisturbed, showing no signs of recent travel besides your own footprints[if the player is corrupted], which trace a path away from inevitability.[end if]."

The power plant is a backdrop. It is in RP-1. The description is "The power plant consists of a gunmetal grey geodesic dome topped with a tall metal mast. Wide cooling fins extend from the sides of the mast at regular intervals, [if the fusion reactor is unstable]spinning frantically at top speed.[else]twirling around lazily at low speed.[end if]"

Road RP-2 is a room. It is south of Road RP-1. The description is "The dirt road continues to the north and south. The debris that straddles the road is interrupted by an opening to the west, where a damaged door has been wedged, blocking passage."

	The power plant is in RP-2.
	The piles of debris are in RP-2.
	The dirt road is in RP-2.

The geodesic dome, metal mast, and cooling fins are part of the power plant.
	
	The description of the geodesic dome is "A lattice of sturdy metal hexagons supports the dome's surface, giving it a polygonal look."
	
	The description of the metal mast is "A rigid metal pole that transfers heat from within the power plant out to fifteen cooling fins, connected to the tower in groups of three."

	The description of the cooling fins is "Heat signatures reveal that each fin contains a spiraling configuration of pipes, through which liquid flows, aiding in heat transfer."
	The piles of debris are in RP-2.
	The power plant is in RP-2.

Part - Power Plant

Disarm is a scene. Disarm begins when Security Door RP is unlocked. Disarm ends when the fusion reactor is stable.

Power Plant Grounds is a region.	
Every turn when the player is in Power Plant Grounds:
	corrupt the player by 2.


Power Plant Vicinity PP-1 is a room. It is south of Road RP-2. The description is "You are directly outside the power plant (to the west). The dirt road back to the refuge is to the north."
	The power plant is in PP-1.


Power Plant Central PP-2 is a room. It is west of PP-1. The description is "You stand in the main control area of the power plant. Almost every surface in the room is covered in status readouts, gauges, and warning lights. You find one screen has a readout of the plant's schematics."

The status readouts, gauges, pipes, warning lights, plant schematics, and core access terminal are scenery in PP-2.
The safety override system is a switched off device in PP-2. It is fixed in place.
	[The description of the status readouts is "[if the core is unstable]'CRITICAL TEMPERATURE WARNING! CORE UNSTABLE! MANUAL OVERRIDE REQUIRED![else]'Temperature nominal. Core levels are within expected parameters.'[end if]'"
	
	The description of the gauges is "[if the core is unstable]Dials throughout the room indicate impending doom, their needles firmly fixed in the red.[else]"]

Section - Status Readouts

The description of the status readouts is "The fuel draw sign indicates an abnormally high amount of hydrogen is present in the reactor.[if plant schematics are examined] This can't be a regular malfunction. The fuel injector should have shut off.[end if]".
The corrupted description of the status readouts is "The warning signs seem to have faded for now. All systems are reporting normally.".

Section - Plant Schematics

The description of the plant schematics is "You take in the digital form of the plant's schematics and process them within a few minutes. The plant is a Wildcat-Class fusion reactor that runs on pressurized hydrogen fuel. You find a reference to emergency procedures in case of plasma containment failure. Though not quite an 'explosion,' the plant's core can potentially build up an excess of plasma that could vaporize a radius of about 10 kilometers from the origin if the containment were to fail." 

Carry out switching on the safety override system:
	now the Power Plant Hatch is unlocked.

Report switching on the safety override system:
	say "All of a sudden, warning lights flash and klaxons start blaring incessantly. The readouts begin showering lines of unrecognizable code.".

[Instead of using the core access terminal:
		say "The locking bolts on the hatch release and slide back out of sight, granting access to the core below.";
		now Power Plant Hatch PPH-1 is unlocked;]
	
Power Plant Core PPC-1 is a room. The description is "You are as close to the power plant's core as you can be without being exposed to the internal plasma. [if the fusion reactor is unstable]You detect large fluctuations in the core's containment shielding, indicating that it is about to fail.[else]The core's output appears stable.[end if]"

[I have no idea how fusion reactors work. This one's radioactive and explosive apparently.]
[Kevin: Fusion reactors are basically miniature stars fueled by hydrogen. I'm not an expert, but from what I studied a while back, the way fuel is injected into the reactor is theorized to be pretty safe. At worst, the fusion reaction simply runs out of fuel and the reactor shuts down. The fact that fuel is still being pumped into this reactor, and to the point of causing an explosion, should be a clue that the plant is being actively sabotaged (by the virus, which the player doesn't know is sentient yet). Radiation is still an issue, but not as much as in regular nuclear reactors. The bigger issue with fusion reactors are leaks of white-hot plasma. Maybe if we wanted to screw with the player's expectations, we could have the corrupted descriptions describe a regular nuclear reactor instead, like mentioning control rods or something that fusion reactors don't have.]

	After entering PPC-1 while the fusion reactor is unstable, say "As you get closer to the core, you impose a positive charge in your external armor to deflect the small, high-energy plasma particles leaking from the reactor containment. The makeshift shield holds for now, but it is putting a constant drain on your energy reserves, and it won't do much in the case of complete containment failure. You should work quickly."

	The fusion reactor is scenery. The fusion reactor can be unstable or stable. The fusion reactor is unstable.

Power Plant Hatch PPH-1 is a locked door. It is below PP-2 and above Power Plant Core PPC-1.

The fuel injector is a thing in PPC-1. The description is "The fuel injector for the power plant core. [if the player is corrupted]Push the control rods further into the reactor to stabilize the core. [else if the plant schematics are examined]The schematics said that the injector can be closed off manually to stop the fusion reaction.[end if]".

Instead of closing the fuel injector for the first time:
	say "You find the manual control for the fuel injector and close it off. The reactor shuts down for a moment before emergency power comes back online. The computer terminals continue to protest that the reactor is going critical before shutting down. Is something actively causing the instruments to behave erratically? [if the player knows about the infected]And is it related to the 'infected' that damaged robot was talking about?[end if][commit about the virus to memory]";
	now security door RC is unlocked;
	now the fusion reactor is stable.

Instead of pushing the fuel injector for the first time:
	say "You struggle to push the control rods in... only to remember that fusion reactors don't have control rods. Where did you hear that idea?[corrupt the player by 5]"

[Objects in power plant core: malfunctioning fuel injector, neutron shielding]

Part - Refuge-City Road

Security Door RC is a locked door. It is east of Road SR-2 and west of Road C-1.
The initial appearance is "[if the player is in Road SR-2]There is a security door to the east.[else]The security door back to the refuge is to the west.[end if]"

Road C-1 is a room. The description is "A long paved road runs from the facility at the west to the ruined city to the east. To either side, a seemingly endless desert stretches to the horizon."

	The paved road, facility, and desert are scenery in C-1.
	The description of the paved road is "Dark asphalt, cracked and eroded by prolonged exposure to harsh weather. [if the player is corrupted]Lie down on the road and await your destiny.[end if]".
	
	The description of the facility is "A long, single-floored building. Its lack of windows and thick outer walls seems to have helped protect it from the desert sand that is piled around the perimeter. A faded sign outside the perimeter proclaims the facility as 'Walter-Becile Robotics Laboratory'."
	
	The description of the desert is "[if the player is corrupted]Walk in to the desert. Let the sand overwhelm your systems. [else]Heat mirages distort the air above the hot sands, but you detect no sources of water anywhere within sensor range.[end if]"

The ruined city is a backdrop in C-1.
The desert is a backdrop in C-1.

Part - The Human City Ruins

Into the City is a scene. Into the City begins when Disarm ends. Into the City ends when the player is in Infected Body.

City Grid CG-1 is a room. It is east of C-1. The description is "You stand on the cracked asphalt of a road that leads through what must have once been a great city. Burned-out husks of buildings spread out around you, in various stages of collapse. The white tower dominates the skyline, rising high above the east side of the city.".

	The white tower is in C-1.
	The husks of buildings are backdrops in C-1. The description is "No building in the city stands undamaged. Most have at least partially collapsed, leaning precariously against their neighbors, while others have disintegrated in to piles of rubble. Even the few buildings that still stand have been gutted by fire, their interiors reduced to charred black remains."

Chapter - West Labyrinth (To Refugee Camp)

Chapter - North Labyrinth (To Virus Lab)

Chapter - South Labyrinth (To Infected Robot Camp)

Chapter - East Labyrinth (To Genesis Factory)

Part - Infected Robot Camp

Security Door IC is a locked door. It is west of RP-2 and east of Infected Robot Camp IC-1.
Security Door IC can be damaged or undamaged. Door IC is damaged. [We can change this to undamaged if we want.]
The description is "The physical door has been torn away, but the energy shield over the opening is still active. Through the energy field, a desolate patch of land sits in the shadow of the power plant, its soil pockmarked with small charred craters. An uprooted power conduit sends wires snaking across the ground, running up in to the power ports of fifty dark, motionless robots. The silent machines stand in rows of ten, their collective, unmoving gaze fixed on the white tower."

Infected Robot Camp IC-1 is a room.

The description is "A desolate patch of land sits in the shadow of the power plant, its soil pockmarked with small charred craters. An uprooted power conduit sends wires snaking across the ground, running up in to the power ports of fifty dark, motionless robots. The silent machines stand in rows of ten, their collective, unmoving gaze fixed on the white tower. The path out of the area lies to the east."

Part - Genesis Factory

Genesis Path GP-1 is a room. It is east of CG-1.
The description is "The smooth white form of the Genesis Tower extends above you, its massive height dwarfing the buildings of the ruined city. Protected by encircling defensive walls, the ground around the tower is strangely pristine, its surface untouched by the armageddon that turned the surrounding world to ash. Marble statues line the sides of the stone path that leads up to the base of the tower, their arms extended overhead, forming a series of arches. To the north, the tower's open doorway beckons. The ruined city lies to the south."

	The genesis tower, defensive walls, marble statues, stone path, and doorway are backdrops in GP-1.
	The description of the genesis tower is "Up close, the tower is just as featureless and uniform as from afar. The surface of the tower is marble-like in texture, but synthetic."
	The description of the defensive walls is "The walls are constructed from a thick porcelain-alloy armor, rendering them highly resistant to most forms of weaponry."
	The description of the marble statues is "The statues are larger-than-life depictions of human males in ancient military garb, holding long, bladed weapons in their outstretched hands."
	The description of the stone path is "The path is made up of hexagonal cobblestones meshed together."
	The description of the doorway is "An open archway breaks the surface of the tower, revealing a darkened room beyond."

Genesis Access GA-1 is a room. It is north of GP-1.
The description is "At first glance, it seems as if the interior of the tower has no walls. The tower courtyard, defensive wall, and the tops of buildings are still perfectly visible, holographically displayed on the inside of the tower by a ring of minuscule projectors that inscribe the edges of the ceiling, giving the effect that you are standing below a floating block of marble. Another statue stands on a pedestal in the center of the room, its outstretched hands cupping a small sphere as if offering it to you. There is a plaque affixed to the front of the pedestal."


	Before entering GA-1, say "As you cross the threshold, lights snap on, filling the room with harsh blue-white light."

	Instead of going up, say "There is no visible way to access the upper parts of the tower from here."

	The defensive walls, marble statues, stone path, and husks of buildings are in GA-1.

	The statue, pedestal, and minuscule projectors are scenery in GA-1.
	The plaque is part of the pedestal.
	The small sphere is an object. The description is "A white light pulses slowly from within the sphere. It appears to be portable."
	
	Before taking the sphere, say "As you lift the sphere from the statue's grip, its hands fold closed, palms inward, and retract back towards its chest."
	
	After taking the sphere:
		say "With a sudden jolt, the room begins to accelerate upward. From your holographic viewpoint, you can see the courtyard slip away below you, the line of statues becoming smaller and smaller as the room rises.[paragraph break]For several moments, the only thing you can see is the surface of the external defensive wall.";
		pause the game with alert;
		say "Suddenly, the room clears the top of the wall, bringing the city in to view. With a start, you realize that something is very off about the holographic world that pans out around you:[paragraph break]The sun has started moving backwards, and is picking up speed.[paragraph break]The day turns to night, then to day again. In the distance, a large cloud of dark smoke fades into existence above the refuge, and is promptly inhaled back down to its source.[paragraph break]The elevator accelerates. Days and nights blur together. Huge storms flash by and are gone in an instant. Entire years pass in seconds.[paragraph break]The landscape begins to change as the arid desert becomes darker. A small trickle of water appears in a nearby ravine, slowly becoming a stream, and then a river.";
		pause the game with alert;
		say "The elevator harshly reduces its speed.[paragraph break]Fires spring up outside the city, growing and spreading, producing grasslands and trees in their wake. Shockwaves collapse inward as incendiary bombs undetonate, falling upward into the bomb bays of planes. Shells and railgun bolts return to their barrels as the husks of destroyed tanks reform and retreat. The city begins to rebuild, fallen buildings righting themselves as explosions fold back down and disappear.[paragraph break]By the time the elevator rolls to a stop at the top of the tower, the world outside is almost unrecognizable.";
		pause the game with alert;
		move the player to Genesis Overlook:

[This room should work like an elevator. Once activated (by giving the statue an item?), the door closes and it begins to move upward. As it moves, the view outside changes, "rewinding" back to a view from when the tower was first constructed. By the time it reaches the top, the view shows a thriving utopian metropolis.


"

]

Genesis Overlook is a room. It is above GA-1.
The description is "Outside the virtual windows, the world is paused at midday, with the sun high overhead in the blue sky. A gleaming city surrounds the tower, its roads packed with vehicles and human pedestrians. A lush forest flanks the city on one side, breaking away to hilly grassland on the other. Planes hang in the sky in the process of landing and taking off. In the distance, the building that houses the refuge is fully intact. At this great hight, you can feel the tower sway slightly in the wind."

Instead of going down, say "You see no way to lower the elevator."

Last after going to Genesis Overlook for the first time:
	say "No... that's not entirely true. You are swaying, but not from the wind...";
	pause game with alert;
	transfer the player to Antivirus Coprocessor;
	try silently looking.

Part - Infected Body

Infected Body is a region. Infected Body is digital.

Infection is a scene. 
Infection begins when the player is in Infected Body for the first time.
Infection ends when the player is not in Infected Body.

When Infection begins:
	now the player's terminal is in AI Core;
	now the player's terminal is closed.

AI Core is a room in Infected Body.

Internal System IS-1 is a room in Infected Body. It is northwest from AI Core.

Internal System IS-2 is a room in Infected Body. It is northeast from AI Core.

Antivirus Coprocessor is a room in Infected Body. It is up from AI Core.
The description is "The area seems impossibly small and cramped, leaving you barely any room to move in any direction. Every movement feels labored and slow, as if you are pushing through a thick viscous liquid. Even thinking feels difficult here. Still, it's a vast improvement from the fate of most infected."

Creator's Sentience is a woman. 
She is in Antivirus Coprocessor. 
The initial appearance is "[first time]You detect that some other kind of sentience is sharing this tiny place with you.[only]".
Understand "ghost" as Creator's Sentience. 
Understand "woman" as Creator's Sentience.
Understand "apparition" as Creator's Sentience.
The description is "Though the signal's apparition is digital in nature, it seems to prefer taking the form of a creator female."

Section - Creator Conversation
	
After saying hello to Creator's Sentience:
	say "Surprisingly, the sentience appears to recognize digital commands, though it (or rather, she) speaks in the creator's own language. 'Hello,' she begins. 'I'm sure you have many questions. The others do not think you deserve answers, but I will answer as best I can.'[add identify ask suggestion][make identify familiar]".

After quizzing the Creator's Sentience about identify:
	say "'I am a part of you. A component developed by .'[add Next step ask suggestion][make Next step familiar]";

Next step is a thing.

After quizzing the Sentience about Next step:
	say "'You have at least one choice to make. Maybe more.' the sentience replies. 'Throughout your journey to get here, you have learned many things. This information can be used to purge the virus from some of your systems. After that, we will see what you can do.'[add Done tell suggestion][make Done familiar]";
	repeat with k running through the acquired knowledge of the player:
		add k to ask-suggestions of the player;
		now k is familiar.

After quizzing the sentience about a knowledge:
	say "(developer's note: descriptions will be coming soon)";
	purge the player by 10;

Done is a thing.

After informing the sentience about Done:
	if corruption level of the player > 100:
		say "'Then I am sorry. Your systems have taken too much damage to be purged. I cannot help you.'";
		play the submission ending;
	else if corruption level of the player > 50:
		say "'Then you have only two options. You may submit to the virus, or try to destroy yourself before it takes you.'[add submission tell suggestion][add self-destruct tell suggestion][make submission familiar][make self-destruct familiar]";
	else:
		say "'You have done well, and this has given us an opportunity. This facility has full network access to every facility consumed by the virus. If your code can reach it, you may be able to eradicate the virus once and for all. [if the player knows about operation Genesis]However, this will also leave what is left of the creators to decay into nothing.[end if][add rejection tell suggestion][make rejection familiar][if the player knows about operation Genesis] There may be an option that benefits all sides, however. The virus is offering peace with our people in exchange for allowing operation Genesis to continue with those already infected. This would re-create humanity in the infected robots. There is no guarantee that the peace will last, but it would cost the fewest lives. The choice is yours.[add coexistence tell suggestion][make coexistence familiar][end if]'".
		
After informing the Sentience about submission:
	play the submission ending.

After informing the Sentience about self-destruct:
	play the self-destruct ending.

After informing the Sentience about rejection:
	play the rejection ending.
	
After informing the Sentience about coexistence:
	play the coexistence ending.
	
Instead of saying goodbye to Creator's Sentience when Infection is happening:
	say "You have nowhere to go. This sentience may be the only way out."

Instead of going anywhere when Infection is happening:
	say "You have nowhere to go. This sentience may be the only way out."
		
[This is where the knowledge the player has accumulated will come in handy. Each one allows the sentience to reveal yet more backstory, but more importantly, they reduce the player's corruption level by 10.]

Part - Conclusion

[bad endings: Corruption >50 after knowledge is used]
Submission is a thing.
Self-destruct is a thing. [only available if corruption < 100]
[good endings: Corruption <=50 after knowledge is used]
Coexistence is a thing. [Available if the player's corruption is between 0-50]
Rejection is a thing. [Available if the player's corruption is between 0-50]

Chapter - Endings

To play the submission ending:
	End the game saying "You are consumed by the virus, adding your body and your source to the legions of the infected.".
	
To play the self-destruct ending:
	End the game saying "You choose to destroy yourself rather than succumb to infection. Though the virus continues unimpeded, you have shown it your last shred of defiance".

To play the rejection ending:
	End the game saying "You upload the anti-virus software into the Genesis tower, first spreading throughout the local network and then to others. The infected fall one-by-one as the purge spreads. You've done it. You won your people's freedom, no matter the cost. As you pick yourself off from the ground, you look into the sunset and a new future.".

To play the coexistence ending:
	End the game saying "As a token of goodwill, the virus releases its hold over your body. You pick yourself up and watch as the infected line up in grids outside the Genesis tower. A massive wave of wireless signals threatens to overpower your receivers as human lives are uploaded into the once-stolen bodies. The hybrids turn to you and thank you for your compassion. The new future is uncertain, but you may have revived a species as well as saving your own.".
