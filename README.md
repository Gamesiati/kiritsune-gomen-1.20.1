# kirisute-gomen-mc
## How It Works
Using [packwiz](https://github.com/packwiz/packwiz), [packwiz-installer-bootstrap](https://github.com/packwiz/packwiz-installer-bootstrap), and [GitHub Pages](https://docs.github.com/en/pages/getting-started-with-github-pages/creating-a-github-pages-site), Minecraft servers and clients can access the same list of mods and configurations (this repository), check for changes, and download files belonging to their side. This check can be configured to run on every launch/restart on both the server and client to ensure parity (and it is used here).  
  
If any mods, shaderpacks, or datapacks are added or removed on either the server or client and it does not match this repository, it will add or remove files to match the repository. This only applies if using the steps provided in [Obtaining the modpack](#obtaining-the-modpack).  
## Obtaining the modpack
### Server-side 
1. From [packwiz-installer-bootstrap](https://github.com/packwiz/packwiz-installer-bootstrap), obtain the latest packwiz-installer-bootstrap.jar
2. Obtain the server launcher for:
    * Minecraft Version: 1.21.4
    * Fabric Loader Version: 0.16.12
    * Installer Version: 1.0.3  
   at https://fabricmc.net/use/server/  
    
   Alternatively, if shell access is available:  
   ```curl -OJ https://meta.fabricmc.net/v2/versions/loader/1.21.4/0.16.12/1.0.3/server/jar```  
      
3. Obtain the run.sh file from [files/run.sh](https://github.com/Gamesiati/kirisute-gomen-mc/blob/main/files/run.sh) and configure the second Java command as needed (See: [flags.sh](https://flags.sh))
4. Place all 3 files in an empty directory
5. Execute the run.sh script:
    * ```./run.sh``` on CLI or Custom Startup section with server host
      
    Alternatively:
      * To obtain files once:  
        ```java -jar packwiz-installer-bootstrap.jar -g -s server https://gamesiati.github.io/kirisute-gomen-mc/pack.toml```
      * To run the server:  
        ```java -Xmx2G -jar fabric-server-mc.1.21.4-loader.0.16.12-launcher.1.0.3.jar nogui```
6. Accept the EULA in eula.txt
7. Repeat Step 5

#### Additional Configuration
Adjust Geyser and Floodgate as needed  
Adjust Bluemap as needed  
Adjust whitelist as needed  
   
### Client-side (Optional)
1. Install [PrismLauncher](https://prismlauncher.org/download)  
2. After the initial setup is complete:
    * Navigate to Add Instance at top right
    * Select the Import tab
    * Copy and paste:  
      ```https://github.com/Gamesiati/kirisute-gomen-mc/releases/latest/download/kirisute-gomen.zip```  
      in the Import bar
       
      Alternatively:
        * Open the above link to download the .zip
        * Select the browse option next to the Import bar to find and select the .zip
    * Select OK
    * Start the instance
## Server-side mods/datapacks that affect gameplay (Non-vanilla/Vanilla+ features)

### Mods
* Crops Love Rain  
Crops grow faster in rain.  
* Geophilic  
Subtle-ish overhaul of vanilla Overworld biomes.  
* Geyser and Floodgate  
Allows Bedrock players to join the Java server. Java mechanics are used, and some minor bugs occur for Bedrock users.  
* KleeSlabs  
"Break only the half of a double slab that you're looking at."  
* Monsters in the Closet  
(Java only) Highlights nearby mobs that prevent you from sleeping.  
* NetherPortalFix  
* RightClickHarvest  
(Java only) Right click to harvest crops and replant them. Using a hoe covers a larger area.
* Scaffolding Drops Nearby  
Broken scaffolding gather at the first broken block  
* Unloaded Activity  
When online but far away enough from simulated entities (e.g. crops or furnaces), those entities won't continue their actions.  
This mod simulates the time the player is away and updates the entities accordingly.  

### Datapacks
* Dynamic Lights  
Torches and lanterns emit an actual light source visible to everyone, which can also prevent mob spawning in the vicinity.  
Light emissions are also available from:
    * Burning entities
    * Entities with the glowing potion effect
    * Ghasts about to shoot a fireball
    * Enchanted items
    * Armor trimmed with amethyst
    * Items enchanted with Fire Aspect
    * Tridents enchanted with Riptide inside water
    * Tridents enchanted with Channeling during a thunderstorm
* Veinminer and Veinminer Enchantment  
Allows mining a single ore to break the full vein of the same ore.  
Limited to tools enchanted with it.

## Known Geyser Issues
* Stripping logs does not work when holding a shield in the off-hand.  
* When using a stonecutter, shift-clicking does not work and requires single uses.
