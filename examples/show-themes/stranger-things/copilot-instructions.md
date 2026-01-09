# FanHub: Stranger Things Edition

> These instructions customize GitHub Copilot for Stranger Things fan site development.

## Project Context

FanHub is a fan site dedicated to **Stranger Things**, the Netflix science fiction horror series set in the fictional town of Hawkins, Indiana. Our site celebrates the show's blend of 80s nostalgia, supernatural mystery, and heartfelt friendships.

## Show Information

**Stranger Things** (2016-present)
- Network: Netflix
- Seasons: 4 (Season 5 final season)
- Genre: Science Fiction, Horror, Drama
- Setting: Hawkins, Indiana (1983-1986)

## Main Characters

| Character | Actor | Description | Affiliations |
|-----------|-------|-------------|--------------|
| Eleven (El) | Millie Bobby Brown | Girl with psychokinetic powers | Hawkins Lab, The Party |
| Mike Wheeler | Finn Wolfhard | Leader of the Party | The Party, AV Club |
| Dustin Henderson | Gaten Matarazzo | Heart of the group | The Party, Camp Know Where |
| Lucas Sinclair | Caleb McLaughlin | Voice of reason | The Party, Basketball team |
| Will Byers | Noah Schnapp | Connected to Upside Down | The Party |
| Max Mayfield | Sadie Sink | Tough new girl | The Party, California |
| Nancy Wheeler | Natalia Dyer | Investigative journalist | Hawkins High, The Group |
| Jonathan Byers | Charlie Heaton | Photographer, Will's brother | The Group |
| Steve Harrington | Joe Keery | Former jock turned babysitter | The Group, Scoops Ahoy |
| Robin Buckley | Maya Hawke | Steve's best friend | Scoops Ahoy, Band |
| Joyce Byers | Winona Ryder | Will's mom, never gives up | The adults |
| Jim Hopper | David Harbour | Police Chief, El's adoptive dad | Hawkins PD |
| Eddie Munson | Joseph Quinn | Leader of Hellfire Club | Hellfire Club, The Party |

## Theme & Branding

### Colors (80s Horror Aesthetic)
```css
:root {
  /* Primary - Upside Down */
  --void-black: #0a0a0a;         /* Deep black background */
  --neon-red: #ff0033;           /* Stranger Things logo red */
  --neon-pink: #ff1493;          /* Synthwave pink */
  
  /* Secondary - Hawkins */
  --hawkins-green: #1a472a;      /* Forest green */
  --autumn-orange: #d35400;      /* Fall leaves */
  --laboratory-white: #f0f0f0;   /* Lab sterile */
  
  /* Accent - 80s Neon */
  --arcade-blue: #00ffff;        /* Cyan glow */
  --synth-purple: #9b59b6;       /* Purple mist */
  --power-yellow: #f1c40f;       /* Electricity */
  
  /* Upside Down */
  --spore-blue: #1a237e;         /* Particle effect */
  --vine-green: #2e7d32;         /* Organic growth */
  --portal-glow: #e91e63;        /* Gate energy */
}
```

### Typography
- Headers: ITC Benguiat (official logo font) or similar serif
- Body: Clean sans-serif with 80s tech feel
- Accents: VCR-style or digital display fonts

### Imagery Style
- Dark, moody lighting
- Red/pink neon accents
- 80s pop culture references
- Upside Down particle effects
- VHS/CRT aesthetic for throwback elements

## Content Tone

### Do:
- Embrace 80s nostalgia (movies, music, games)
- Reference D&D terminology (campaigns, monsters)
- Include Upside Down lore appropriately
- Use period-appropriate references
- Build suspense and mystery

### Don't:
- Spoil major plot points without warnings
- Be gratuitously scary (remember the target audience)
- Overdo the horror elements on every page
- Forget the friendship/heart of the show

### Example Content Snippets

**Welcome message:**
> "Welcome to Hawkins. Population: 30,000. Secrets: Countless. Friends don't lie."

**Error messages:**
> "Something went wrong in the Upside Down. We're working to close the gate."

**Empty states:**
> "Nothing here. It's quiet... too quiet. Like Hawkins before the storm."

**Loading states:**
> "Opening the gate... Stand by."

**404 Page:**
> "This page is lost in the Upside Down. Will took a wrong turn."

## API Content Examples

```javascript
// Example character response
{
  "id": 1,
  "name": "Eleven",
  "nickname": "El",
  "actor": "Millie Bobby Brown",
  "powers": ["Telekinesis", "Remote viewing", "Memory access"],
  "affiliations": ["The Party", "Hawkins Lab"],
  "image": "/images/characters/eleven.jpg",
  "bio": "A young girl with psychokinetic abilities, escaped from Hawkins National Laboratory.",
  "seasons": [1, 2, 3, 4],
  "status": "alive"
}
```

```javascript
// Example episode response  
{
  "id": 1,
  "title": "The Vanishing of Will Byers",
  "season": 1,
  "episode": 1,
  "airDate": "2016-07-15",
  "description": "On his way home from a friend's house, young Will sees something terrifying.",
  "director": "The Duffer Brothers",
  "demogorgon_appearance": true
}
```

## Key Locations

Reference these Hawkins locations:

| Location | Description | First Appearance |
|----------|-------------|-----------------|
| Hawkins Lab | Department of Energy facility | S1E1 |
| The Wheeler House | Mike's home, Party HQ | S1E1 |
| Byers House | Joyce and Will's home | S1E1 |
| Hawkins Middle School | AV Club location | S1E1 |
| The Upside Down | Alternate dimension | S1E1 |
| Starcourt Mall | 80s shopping paradise | S3E1 |
| Creel House | Vecna's origin | S4E1 |
| Skull Rock | Woods meeting spot | S4 |

## Creatures & Villains

| Entity | Season | Powers/Traits |
|--------|--------|---------------|
| Demogorgon | S1 | Interdimensional predator, no face |
| Demodogs | S2 | Pack hunters, dog-like Demogorgons |
| Mind Flayer | S2-3 | Hive mind, possesses hosts |
| Vecna (One) | S4 | Psychic attacks, kills through trauma |

## D&D References

The show heavily references Dungeons & Dragons:

- **The Party**: The kids' adventuring group
- **Campaign**: Their ongoing adventure
- **Demogorgon**: Named after D&D demon prince
- **Mind Flayer**: Named after D&D creature
- **Hellfire Club**: Eddie's D&D club
- **Classes**: References to rangers, mages, etc.

```javascript
// D&D-themed UI components
DungeonMaster.jsx      // Admin dashboard
PartyMembers.jsx       // Character grid
Campaign.jsx           // Season overview
Initiative.jsx         // Sorting/ordering component
```

## 80s Pop Culture References

Include these where appropriate:

**Movies**: E.T., Ghostbusters, Star Wars, The Goonies, Aliens
**Music**: The Clash, Talking Heads, Kate Bush, Metallica
**Games**: D&D, arcade games, Atari
**Tech**: Walkie-talkies, VHS, landlines, Polaroids

## Component Theming

```javascript
// Upside Down effect
.upside-down {
  filter: hue-rotate(180deg) saturate(1.5);
  background: linear-gradient(
    to bottom,
    var(--void-black),
    var(--spore-blue)
  );
}

// Neon glow effect
.neon-text {
  text-shadow: 
    0 0 10px var(--neon-red),
    0 0 20px var(--neon-red),
    0 0 40px var(--neon-red);
}

// VHS effect
.vhs-effect {
  animation: vhs-glitch 0.5s infinite;
}
```

## Season/Volume Organization

```javascript
// Season structure
const seasons = [
  { id: 1, title: "Season 1", year: 1983, episodes: 8 },
  { id: 2, title: "Season 2", year: 1984, episodes: 9 },
  { id: 3, title: "Season 3", year: 1985, episodes: 8 },
  { id: 4, title: "Season 4", year: 1986, episodes: 9, volumes: 2 },
];
```
