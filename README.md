# PaperServerHelpers
A few scripts to help setting up and maintaining a minecraftserver with papermc

The startup script is based of https://startmc.sh/ using "Aikar's flags"
for optimizing how java handles the minecraft server.

## Note
Pregeneration of chunks in advance is highly recommended for performance reasons.
A plugin like Chunky (https://github.com/pop4959/Chunky) is able to do this properly.

Don't forget to regularly backup your world(s) and use some kind of whitelist. ;)
You might want to create a nice motd: https://mctools.org/motd-creator

## Dependencies
curl, wget, jq, java(Minecraft 1.18 Pre Release 2 and above require the use of Java 17)

## Disclaimer
I am not affiliated to https://papermc.io/. 
I just think they're doing a great job.