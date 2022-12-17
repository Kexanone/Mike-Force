__CREDITS__
The orginal concept and a working example was by Larrow
His original post 
https://forums.bohemia.net/forums/topic/169501-link-to-website-in-briefing/?do=findComment&comment=3277456
He is the one that deserves the credit for this.

__MY CHANGES__
His original version only had one button and only displayed after the mission started when you opened the map
My version has 4 linkable buttons and does display both in the original briefing screen and when the map is opened later


__WHAT IS THIS__
This is a working example mission, easily integrated into your missions that
1) Adds a custom Briefing entry
2) Adds 4 buttons to that briefing entry
   Each button can be configured with an external URL link
   Example useage
   A) TEAMSPEAK
   	If a client has teamspeak installed, it will
	a) Start his teamspeak client
	b) Join him to your teamspeak server
	c) Add a bookmark to his TS client (Configurable parameter)
   Example useage
   B) WEB PAGE
	Opens up a web prowser with a user defined  page
   Example useage
   C) DOWNLOAD LINK
	Opens up a web browser to download a file
	Useful for your clientside addon pack etc
   D) DISCORD
	Untested but no reason to see why it couldnt connect someone to a discord server
	Example link: https://discord.gg/ZednE8 (BI's scripting channel)

__HOW TO INTEGRATE__

1) Copy the Txu_Info folder into your mission root
2) Add the following code to your Description.ext

	#include "Txu_Info\CfgControls.hpp"
	class cfgFunctions
	{
		#include "Txu_Info\cfgfunctions.hpp"
	};

3) Open up the TXU_info\CfgControls.hpp
Edit the 4 button classes url and text entries to suit your needs

	text = "Click to join Teamspeak";
	url="ts3server://teamspeak.zeus-community.net:9987?addbookmark=ZEUS-COMMUNITY.NET";

and your good to go


____TEAMSPEAK URL LINK PARAMETERS___
Complete format:
ts3server://ts9.teamspeak.cc?port=9987
&nickname=UserNickname
&password=serverPassword
&channel=MyDefaultChannel
&channelpassword=defaultChannelPassword
&token=TokenKey
&addbookmark=SomeBookmarkText

Parameters are optional. In most cases, specifiying the host and port should be sufficient. Nicknames usually should not be specified, leave this to be configured by the users in the client. So a common URL would look like this: ts3server://ts9.teamspeak.cc?port=9987

Or simplified if only the port is given: ts3server://ts9.teamspeak.cc:9987

	
 




