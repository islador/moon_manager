### Features

1. Moon Database
 - The Moon Database contains columns for: | Region | Constellation | System | Security Level | Planet | Moon | Tower Corporation | Tower Type | Tower State | State Ends | Resource 1 | Resource 1 Abundance | Resource 2 | Resource 2 Abundance | Resource 3 | Resource 3 Abundance | Resource 4 | Resource 4 Abundance | Resource 5 | Resource 5 Abundance | Scan Date | Tower Check Date | Scanner Name | Tower Update Name |
 - The Tower Type column is a Hash Value comprised of Tower Race, Tower Size, Explosive Hardener Count, Kinetic Hardener Count, Em Hardener Count and Thermal Hardener Count.
 - The Moon Database is searchable by any combination of the above filters.
 - The Moon Database takes input from known APIs

2. The Submission Form
 - The Submission Form requires a user be authenticated and have a valid API.
 - The Submision Form has forms for each column in the database except Scan Date, Tower Check Date and Submitting User.
 - The Submission Form only accepts new moon scans.
 - The Submission Form can take a CSV file as well.

3. The Tower Update Form
 - The Tower Update Form requires a user be authenticated and have a valid API.
 - The Tower Update Form accepts uploaded images.
 - The Tower Update Form has forms for Tower Corporation, and drop down selections for System, Planet, Moon, Tower Race, Tower Size, Explosive Hardener, Kinetic Hardener, Em Hardener and Thermal Hardener. These are stored as a hash within the Tower Type column.
 - The Tower Update Form uses the signed in user to update the Tower Update Name column when submitted.
 - The Tower Update Form uses the current time to update the Tower Check Date column when submitted.

4. Tower APIs
 - CEOs and Directors may submit a Key and VerCode with accesss to the Starbase Details and Starbase List APIs.
 - The Starbase List APIs routinely updates the Moon Database table with the following maps  
 | API |  | Moon Database |  
 | typeID | -> | Tower Type's Tower Race & Size values |
 | locationID | -> | System |  
 | moonID | -> | Planet & Moon |  
 | state | -> | Tower State |  
 | stateTimestamp | -> | State Ends |  

 - The Starbase Details API updates the 

7. POS Details Table
 - The POS Details Table is a headless database table used for dashboards.
 - It is used in conjunction with the Moon Database.
 - It is populated almost exclusively by the API.
 - It contains columns with a complete 1 to 1 of the Starbase Detail API.
 - It contains a column called 'name'
 - It contains columns 'corporationReaction' and 'allianceReaction'
 - It contains column 'service'  
 Service Defitions: Reactions, Cyno Beacon, Cyno Jammer, Jump Bridge, CSAA, TCU


6. Corporation Dashboard
 - The Corporation Dashboard requires a user to be authenticated with a valid API.
 - The Corporation Dashboard is only visible to members of the owning corporation.
 - The Corporation Dashboard displays all Towers owned by the corporation.
 - The Corporation Dashboard displays the state of each tower. (Online/Offline/Reinforced)
 - The Corporation Dashboard displays the location of each tower (Region/System/Planet/Moon).
 - The Corporation Dashboard displays fuel levels of each tower.
 - The Corporation Dashboard displays each tower's current stront level in units and hours.
 - The Corporation Dashboard displays time remaining for each reinforced tower and the EVE Time (UTC) the tower exits at.
 - The Corporation Dashboard has an editable name field for each tower, saved in the POS Details Table 'name' column.
 - It has an editable text field for each tower's reaction saved in the POS Details Table 'corporationReaction' column.
 - It has a drop down field for the service provided by the tower.

7. Alliance Dashboard
 - The Alliance Dashboard requires a user to be authenticated with a valid API.
 - The Alliance Dashboard is only accessible to members of alliance leadership.
 - The Alliance Dashboard contains all the functionality of the Corporation Dashboard.
 - The Alliance Dashboard displays details for all towers owned by the alliance, not just a specific corporation.
 - It is search and filterable via drop down menus.
 - It contains an editable field for 'allianceReaction'
 - It displays the service field and allows it to be edited, but displays a warning for doing so.
 - It displays the 'corporationReaction', but it is not editable.

8. Fleet Commander Dashboard
 - Displays all offline and reinforced towers owned by the alliance.
 - Displays all the details available through the alliance dashboard about each reinforced and offline tower.

9. Upgrade to Include Sov Structures?

## Basic Feature List
 - Moon Database
 - Submission Form
 - Tower Update Form
 - Tower APIs

This establishes a basic application that provides a searchable, dated list of all known moons.

My database implementation and understanding is terrible. Must learn more.