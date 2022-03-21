# shgamer

### What?

A collection of Shell scripts to install gaming specific software.
Only the essentials. Bloat is not allowed.
The only application that will be installed is Lutris.
There is also an option to download some free games.

### How?

Find the script that matches your distribution and run it.
For example, run ubuntu.sh if you are using Ubuntu, Elementary or Linux Mint.

To download free games, run games.sh.
A prompt will appear asking which games you want to download.
The maximum download time for each game is 15 minutes.
Games downloaded are stored in ~/Games.

Available games:
* Armagetron Advanced
* Cataclysm: Dark Days Ahead
* Cube 2: Sauerbraten
* SuperTuxKart
* Teeworlds
* Warsow

### Example

```
git clone https://github.com/AlexandrosKap/shgamer.git
cd shgamer
sh ubuntu.sh # I'm a Ubuntu user btw.
sh games.sh # Sauerbraten is a good game.
```
