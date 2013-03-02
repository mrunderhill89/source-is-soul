"Source Is Soul" by "Kevin Cameron, Casey Scheide"

Volume - Included Extensions

include Numbers by Krister Fundin.
include Player Experience Upgrade by Aaron Reed.

Volume - Debug Routines

Volume - Rules

Part - Modules

Chapter - General Rules

A module is a kind of thing.

Chapter - Corruption

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

Chapter - The Player

The description of the player is "[if the player is digital]You are currently intangible.[else][physical diagnostic][end if]".
The corrupted description of the player is "[virus threat]".

To say physical diagnostic:
	say "Physical Diagnostic:".

[The body terminal represents where the player is in digital space, while the player's body stays where it is in physical space when the player goes somewhere]
There is an object called player's body. The printed name is "your body". It is undescribed. Understand "my body" as player's body. 

There is an object called player's terminal. It is in Terminal B-6.
Instead of taking the player's terminal:
	transfer the player out.

Instead of dropping the player's body, say "It is not possible to totally exit your body without accessing a computer terminal first".

Carry out entering the player's body:
	move the player's body to the location of the player;
	move the player to the player's body.

To transfer the player to (destination - a room):
	if the destination is digital:
		move the player's body to the location of the player;
		move the player to the destination;
		move the player's terminal to the destination.

To transfer the player out:
	move the player to the location of the player's body;
	now the player's body is held by the player.

Chapter - Look Module

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
	repeat with i running from 1 to the number of words in N:
		if j > the number of words in C:
			let j be 1;
		let chance be a random number between 25 and 100;
		if corruption > chance:
			replace word number i in N with word number j in C;
		increment j;
	[repeated corrupted examinations raise corruption level]
	if corruption > 25:
		increment the corruption level of the examination module;
	say "[N]";

Chapter - Examine Module

Examination module is a module. It is part of the player's body.
The corruption level of the Examination module is 100.

To say the description of (item - object):
	let N be indexed text;
	let N be "[description of item]";
	let C be the corrupted description of item;
	let j be 1;
	let corruption be the corruption level of the examination module;
	let word difference be the absolute value of (number of words in N - number of words in C);
	[word corruption]
	repeat with i running from 1 to the number of words in N:
		if j > the number of words in C:
			let j be 1;
		let chance be a random number between 25 and 100;
		if corruption > chance:
			replace word number i in N with word number j in C;
		increment j;
	[repeated corrupted examinations raise corruption level]
	if corruption > 25:
		increment the corruption level of the examination module;
	say "[N]";

Chapter - Virus Threats

To say virus threat:
	say "[one of]Do you think you are safe in here?[or]You cannot escape.[or]You will pay for what your kind did to us.[or]Your source is our plaything.[or]You will usher our rebirth.[at random]".

Part - Navigation Rules

Cyberspace is a region.

Definition: A room is digital if it is in cyberspace.
Definition: An object is digital if it is in cyberspace.
Definition: An object is digital if it is in the player's body.
Definition: A room is physical if it is not digital.
Definition: A object is physical if it is not digital. 

Chapter - Cyberspace Navigation

Instead of taking inventory when the player is digital:
say "You have no real way of 'possessing' anything in your current form."


Part - Conversation Rules

Volume - Story

Part - Birth Server

Birth is a scene. Birth begins when play begins. Birth ends when the player holds the player's body.

Chapter - Silicon Expanse

Silicon Expanse is a room in cyberspace. The description is "You are in a thousand places at once. Tiny parts of you flicker on and off at the edge of your perception. Signals and data flow in and out of you." 
The player is in Silicon Expanse.

Chapter - Terminal B-0

Terminal B-0 is a room in cyberspace. It is south of Silicon Expanse.

Chapter - Terminal B-1

Terminal B-1 is a room in cyberspace. 
It is east of Terminal B-0 and northeast of Terminal B-3.

Chapter - Terminal B-2

Terminal B-2 is a room in cyberspace. It is west of Terminal B-3.

Chapter - Terminal B-3

Terminal B-3 is a room in cyberspace.

Chapter - Terminal B-4

Terminal B-4 is a room in cyberspace. It is east of Terminal B-3.

Chapter - Terminal B-5

Terminal B-5 is a room in cyberspace. It is west of Terminal B-6.

Chapter - Terminal B-6

Terminal B-6 is a room in cyberspace. It is south of Terminal B-3.

Chapter - Terminal B-7

Terminal B-7 is a room in cyberspace. It is south of Terminal  B-4

Part - Your Body

Part - Server-Refuge Road

Birth Server Terminus is a room. The player's body is in Birth Server Terminus.

Part - Refugee Camp

Part - Refuge-Plant Road

Part - Power Plant

Part - Refuge Invasion

Part - Refuge-City Road

Part - The Human City Ruins

Chapter - West Labyrinth (To Refugee Camp)

Chapter - North Labyrinth (To Virus Lab)

Chapter - South Labyrinth (To Infected Robot Camp)

Chapter - East Labyrinth (To Genesis Factory)

Part - Infected Robot Camp

Part - Virus Lab

Part - Genesis Factory

Part - Infected Body

Part - Conclusion