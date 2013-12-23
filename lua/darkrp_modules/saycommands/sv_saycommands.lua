--[[
	Author: Koz
	Steam: http://steamcommunity.com/id/drunkenkoz
	Contact: mybbkoz@gmail.com

	License:
	You are free to use this software however you like; however,
	you cannot redistribute this code in any way without consent
	from the original author, Koz.
]]--

local emote = "** " -- Keeps people from faking outcome with /me command.

local function RollTheDice( ply, args )
	local DoSay = function( text )
		local roll = math.random( 0, 100 )
		DarkRP.talkToRange( ply, emote .. ply:Nick() .. " threw his dice and rolled a " .. roll .. " out of 100.", "", 350 )
	end
	return args, DoSay
end
DarkRP.defineChatCommand( "roll", RollTheDice )

local function DoubleDice( ply, args )
	local DoSay = function( text )
		local roll = math.random( 1, 6 )
		local rolltwo = math.random( 1, 6 )
		local rolltotal = roll + rolltwo
		DarkRP.talkToRange( ply, emote .. ply:Nick() .. " rolled his dungeon dice and got a " .. rolltotal .. " ( " .. roll .. " and " .. rolltwo .. " )", "", 350 )
	end
	return args, DoSay
end
DarkRP.defineChatCommand( "dungeondice", DoubleDice )

local function SlotsGame( ply, args )
	local DoSay = function( text )
		local slots = {
			"Charry",
			"Bar",
			"Seven"
		}
		local slotsr = table.Random( slots ) .. " " .. table.Random( slots ) .. " " .. table.Random( slots )
		DarkRP.talkToRange( ply, emote .. ply:Nick() .. " has spun the slots and got " .. slotsr, "", 350 )
	end
	return args, DoSay
end
DarkRP.defineChatCommand( "slots", SlotsGame )

local function RandomCard( ply, args )
	local DoSay = function( text )
		local cards = {
			"Ace of Clubs",
			"Two of Clubs",
			"Three of Clubs",
			"Four of Clubs",
			"Five of Clubs",
			"Six of Clubs",
			"Seven of Clubs",
			"Eight of Clubs",
			"Nine of Clubs",
			"Ten of Clubs",
			"Jack of Clubs",
			"Queen of Clubs",
			"King of Clubs",
			"Ace of Diamonds",
			"Two of Diamonds",
			"Three of Diamonds",
			"Four of Diamonds",
			"Five of Diamonds",
			"Six of Diamonds",
			"Seven of Diamonds",
			"Eight of Diamonds",
			"Nine of Diamonds",
			"Ten of Diamonds",
			"Jack of Diamonds",
			"Queen of Diamonds",
			"King of Diamonds",
			"Ace of Hearts",
			"Two of Hearts",
			"Three of Hearts",
			"Four of Hearts",
			"Five of Hearts",
			"Six of Hearts",
			"Seven of Hearts",
			"Eight of Hearts",
			"Nine of Hearts",
			"Ten of Hearts",
			"Jack of Hearts",
			"Queen of Hearts",
			"King of Hearts",
			"Ace of Spades",
			"Two of Spades",
			"Three of Spades",
			"Four of Spades",
			"Five of Spades",
			"Six of Spades",
			"Seven of Spades",
			"Eight of Spades",
			"Nine of Spades",
			"Ten of Spades",
			"Jack of Spades",
			"Queen of Spades",
			"King of Spades"
		}
		
		DarkRP.talkToRange( ply, emote .. ply:Nick() .. " drew a card from his deck. That card was a " .. table.Random( cards ) .. ".", "", 350 )
	end
	return args, DoSay
end
DarkRP.defineChatCommand( "card", RandomCard )