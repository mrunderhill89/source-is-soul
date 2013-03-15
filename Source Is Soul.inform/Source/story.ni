"Source Is Soul" by "Kevin Cameron, Casey Scheide"

Volume - Included Extensions

include Numbers by Krister Fundin.
include Player Experience Upgrade by Aaron Reed.
include Basic Screen Effects by Emily Short.
include Real-Time Delays by Erik Temple.
include Conversation Framework for Sand-dancer by Aaron Reed.

Volume - Debug Routines - NOT for release

[This is meant for finding stuff that still needs descriptions. We should remove it before turning it in.]
include Property Checking by Emily Short.


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
	say "-> (failure (inappropriate (access)))"

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

A thing has a number called corruption level. 
The corruption level of a thing is usually 0.

Definition: a thing is infected if the corruption level of the noun > 0.

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
	if the location is infected:
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
	if the item is infected:
		increment the corruption level of the examination module;
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
	add topic to goal topics of the player.

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

The white tower is a backdrop. The description is "You can see a massive cylindrical white tower rising over the horizon. The strange monolith seems to be featureless, its blank sides gleaming in the sunlight, providing a stark contrast to the burned-out husks of buildings that surround it."

The sky is a backdrop. The description is "The sky is mostly empty except for a few clouds. There seems to be no danger of inclement weather at this time."

Section - Birth Server Terminus

Birth Server Terminus is a room. The player's body is in Birth Server Terminus.
The description of Birth Server Terminus is "A large metallic cube rests dead center in a small room, enclosed by smooth, dark walls. Harsh sunlight spills through a jagged hole in the ceiling, illuminating the area and casting an eerie glow over the door to the east. A small computer terminal juts up from the floor to the side of the cube."

	The cube, tubes, computer terminal, and hole are scenery.

	The description of the cube is "The surface of the cube is unbroken and smooth to the touch, its deep black surface reflecting slightly purple in the sunlight. Thick tubes snake out from the base of the cube, disappearing into the floor in all directions. On the front of the cube, a thin seam traces the outline of a door. In the center of the door, green text pulses on and off. 'Fabricator Standing By'"
	
	The tubes are a part of the cube. The description of the tubes is "Rubber insulated tubing. Some of the tubes hum with energy, while others lie dormant."

	The description of the hole is "One of the room's upper corners has been smashed in by some powerful force, leaving a meter-wide hole."

	Door BT-1 is a door. It is east of Birth Server Terminus and west of Road SR-1.
	The initial appearance is "There is a door to the east that leads outside the terminus room.".
		
Section  - Road SR-1

Road SR-1 is a room. The description is "The ruins of what was once a long, enclosed hallway extend before you. The ceiling has almost entirely collapsed, littering the floor with rubble. The center of the south wall has been smashed inward, revealing the front half of a long-since disabled hover tank. The main gun barrel of the damaged tank extends across the hallway, and appears to have collided with the northward door, ripping it from its frame. Doors stand to the east and west."

	The rubble, the south wall, the hover tank, and the gun barrel are scenery in Road SR-1.
	
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
The description is "Each sign sports a meticulously etched message.[Paragraph Break]North: (Home)[Paragraph Break]South: (Power)[Paragraph Break]East: (Legacy)[Paragraph Break]West: (Birth)"

Road SR-2 is east of Road SR-1.

Chapter - Data Repository 1

Road DR 1-1 is a room. The description is "The lights in this corridor have ceased to function, leaving the door to the south as the only source of light. Otherwise, this area seems structurally sound and free from debris. Several meters ahead, the hall makes a sharp turn to the west."

Road DR 1-1 is east of Road DR 1-2.

Road DR 1-2 is a room. The description is "Without functional lights, the hallway is almost entirely devoid of visible light. An opening looms to the south, silhouetted in false-color by the infrared spotlight of your night vision system. To the east, the hallway curves back out of sight."

Data Repository DR-1 is a room. The description is "Upturned desks and abandoned hardware lie scattered on the floor of a medium-sized room."
	The personal data recorder is an object in DR-1. The description is "The PDR is a small electronic device used for recording secure audio logs."
	The upturned desks and abandoned hardware are scenery in DR-1.

	Instead of using, taking, or listening to the personal data recorder, say "As you reach for the PDR, it detects your presence and automatically begins playback of the last recorded message…" [Backstory here if there's time]

Data Repository DR-1 is south of Road DR 1-2.

Part - Refugee Camp

Chapter - Refuge R-1

Refuge R-1 is a room. The description is "You stand in a large room, surrounded by heavily-armored walls. Orange holographic letters float in a tight circle over the center of the area, flickering the message (welcome home). An energy shield covers the area, distorting your view of the sky. One corner of the refuge contains several universal charging stations and an AMS-5 repair node. To the east you can see a building labelled 'Art Gallery'." It is north of Road SR-2.

The Welcome Home Sign is a backdrop in Refuge R-1. The description is "The letters are being projected in the air from a gray central cylinder, with various wires and components dangling precariously off to the sides.".

The Camp Energy Shield is a backdrop in Refuge R-1. The description is "A pale gold energy shield that keeps out the elements as well as forcing any intruders to first go through the main gate. You detect rows of primary and backup projectors that occasionally cycle on-and-off. It gives off a stark contrast to the blue sky you saw overhead as you came here."

Some charging stations are a backdrop in Refuge R-1. The description is "Simple power receptacles with a variety of connectors for different models. You spot one that corresponds with your own power supply."

A camp repair node is a backdrop in Refuge R-1. The description is
"A large red box containing various power tools and fabrication systems. Used for repairing physical damage to robot systems."

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
	say "You approach the damaged robot, but do not get within close proximity. Wireless transmitters begin flickering as your peer tries to communicate.[add Identify ask suggestion][add Identify to goal topics]";
	now Identify is familiar.

After saying goodbye to the guide:
	now Security Door RP is unlocked.

Identify is a thing.

Instead of doing anything to the Guide when Arrival is not happening:
	say "You detect no further processing signals coming from the robot."

Chapter - Art Gallery

The Refuge Art Gallery is a room. It is east of Refuge R-1. The description is "A small room with several constructs elevated on metal crates as exhibits."

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

Road RP-1 is a room. The description is "A long dirt road leads from north to south, flanked on either side by piles of debris. The power plant is visible to the south.".

The piles of debris are a backdrop. They are in RP-1. The description is "The mixed contents of these piles suggest they were moved here manually."
	
The dirt road is a backdrop. It is in RP-1. The description is "The dirt road is relatively undisturbed, showing no signs of recent travel besides your own footprints."

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

Power Plant Grounds is a region.

Power Plant Vicinity PP-1 is a room. It is south of Road RP-2. The description is "You are directly outside the power plant (to the west). The dirt road back to the refuge is to the north."
	The power plant is in PP-1.


Power Plant Central PP-2 is a room. It is west of PP-1. The description is "You stand in the main control area of the power plant. Almost every surface in the room is covered in status readouts, gauges, and warning lights."

The status readouts, gauges, pipes, warning lights, plant schematics, and core access terminal are scenery in PP-2.
The safety override system is a switched off device in PP-2. It is fixed in place.
	[The description of the status readouts is "[if the core is unstable]'CRITICAL TEMPERATURE WARNING! CORE UNSTABLE! MANUAL OVERRIDE REQUIRED![else]'Temperature nominal. Core levels are within expected parameters.'[end if]'"
	
	The description of the gauges is "[if the core is unstable]Dials throughout the room indicate impending doom, their needles firmly fixed in the red.[else]"]

Section - Status Readouts

The description of the status readouts is "The fuel draw sign indicates an abnormally high amount of hydrogen fuel is present in the reactor.[if plant schematics are examined] This seems to run contrary to what the schematics indicated would happen in the case of a regular malfunction.[end if]".
The corrupted description of the status readouts is "The warning signs seem to have faded for now. All systems are reporting normally.".

Section - Plant Schematics

The description of the plant schematics is "You take in the digital form of the plant's schematics and process them within a few minutes. The plant is a Wildcat-Class fusion reactor that runs on pressurized hydrogen fuel. You find a reference to emergency procedures in case of plasma containment failure. Though not quite an 'explosion,' the plant's core can potentially build up an excess of plasma that could vaporize approximately 20 cubic kilometers from the origin if the containment were to fail." 

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

The fuel injector is a thing in PPC-1. The description is "The fuel injector for the power plant core. [if the examination module is corrupted]Push the control rods further into the reactor to stabilize the core. [else if the plant schematics are examined]The schematics said that the injector can be closed off manually to stop the fusion reaction.[end if]".

Instead of closing the fuel injector:
	say "You find the manual control for the fuel injector and close it off. The reactor shuts down for a moment before emergency power comes back online. The computer terminals continue to protest that the reactor is going critical before shutting down. Was this the virus the damaged robot was talking about?";
	now the fusion reactor is stable.

Instead of pushing the fuel injector:
	say "You struggle to push the control rods in... only to remember that fusion reactors don't have control rods. Where did you hear that idea?"

[Objects in power plant core: malfunctioning fuel injector, neutron shielding]

Part - Refuge-City Road

Security Door RC is a door. It is east of Road SR-2 and west of Road C-1.
The initial appearance is "[if the player is in Road SR-2][else]The security door back to the refuge is to the west.[end if]"

Road C-1 is a room. The description is "A long paved road runs from the facility at the west to the ruined city to the east. To either side, a seemingly endless desert stretches to the horizon."

The ruined city is a backdrop in C-1.
The desert is a backdrop in C-1.

Part - The Human City Ruins

City Grid CG-1 is a room. It is east of C-1. The description is "You stand on the cracked asphalt of a road that leads through what must have once been a great city. Burned-out husks of buildings spread out around you, in various stages of collapse. The white tower dominates the skyline, rising high above the east side of the city.".

	The white tower is in C-1.
	The husks of buildings are backdrops in C-1.

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
The description is "At first glance, it seems as if the interior of the tower has no walls. The tower courtyard, defensive wall, and the tops of buildings are still perfectly visible, holographically displayed on the inside of the tower by a ring of minuscule projectors that inscribe the edges of the ceiling, giving the effect that you are standing below a floating block of marble. Another statue stands on a pedestal in the center of the room, its outstretched hands cupped together as if begging for something. There is a plaque affixed to the front of the pedestal."

Before entering GA-1, say "As you cross the threshold, lights snap on, filling the room with harsh blue-white light."

	The defensive walls, marble statues, stone path, and husks of buildings are in GA-1.

	The statue, pedestal, and minuscule projectors are scenery in GA-1.
	The plaque is part of the pedestal.

[This room should work like an elevator. Once activated (by giving the statue an item?), the door closes and it begins to move upward. As it moves, the view outside changes, "rewinding" back to a view from when the tower was first constructed. By the time it reaches the top, the view shows a thriving utopian metropolis.

"With a sudden jolt, the room begins to accelerate upward. From your holographic viewpoint, you can see the courtyard slip away below you, the line of statues becoming smaller and smaller as the room rises.
[paragraph break]
For several moments, the only thing you can see is the surface of the external defensive wall.
[paragraph break]
Suddenly, the elevator clears the top of the wall, bringing the city in to view. With a start, you realize that something is very off about the landscape that pans out around you. As the room gains speed… (In progress)

"

]

Genesis Overlook is a room. It is above GA-1.
The description is "The elevator has reached its final stop at the pinnacle of the Genesis Tower. At this great hight, you can feel the tower sway slightly in the wind."

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
	now the Observation Module is in Internal System IS-1;
	now the Examination Module is in Internal System IS-2;
	now the player's terminal is in AI Core;
	now the player's terminal is closed.

AI Core is a room in Infected Body.

Internal System IS-1 is a room. It is northeast of AI Core. It is in Infected Body.

Internal System IS-2 is a room. It is southeast of AI Core. It is in Infected Body.

Internal System IS-3 is a room. It is southwest of AI Core. It is in Infected Body.

Internal System IS-4 is a room. It is northwest of AI Core. It is in Infected Body.

Antivirus Coprocessor is a room. It is in Infected Body. It is up from AI Core.
The description is "The area seems impossibly small and cramped, leaving you barely any room to move in any direction. Every movement feels labored and slow, as if you are pushing through a thick viscous liquid. Even thinking feels difficult here."

[AI retreats to Coprocessor to escape virus]

Part - Conclusion