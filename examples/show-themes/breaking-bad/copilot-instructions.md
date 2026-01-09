# FanHub: Breaking Bad Edition

> These instructions customize GitHub Copilot for Breaking Bad fan site development.

## Project Context

FanHub is a fan site dedicated to **Breaking Bad**, the AMC crime drama about a high school chemistry teacher turned methamphetamine manufacturer. Our site explores the show's themes of transformation, morality, and consequence.

## Show Information

**Breaking Bad** (2008-2013)
- Network: AMC
- Seasons: 5 (62 episodes)
- Genre: Crime, Drama, Thriller
- Setting: Albuquerque, New Mexico

**Better Call Saul** (2015-2022) - Prequel series
- Seasons: 6
- Overlapping characters and locations

## Main Characters

| Character | Actor | Role | Alias |
|-----------|-------|------|-------|
| Walter White | Bryan Cranston | Chemistry teacher → Kingpin | Heisenberg |
| Jesse Pinkman | Aaron Paul | Former student, partner | Cap'n Cook |
| Skyler White | Anna Gunn | Walt's wife | - |
| Hank Schrader | Dean Norris | DEA Agent, Walt's brother-in-law | - |
| Marie Schrader | Betsy Brandt | Hank's wife, Skyler's sister | - |
| Walter White Jr. | RJ Mitte | Walt's son | Flynn |
| Saul Goodman | Bob Odenkirk | Criminal lawyer | Jimmy McGill |
| Mike Ehrmantraut | Jonathan Banks | Fixer, enforcer | - |
| Gus Fring | Giancarlo Esposito | Drug kingpin, restaurant owner | - |
| Tuco Salamanca | Raymond Cruz | Cartel distributor | - |
| Hector Salamanca | Mark Margolis | Cartel patriarch | Tio |
| Todd Alquist | Jesse Plemons | Neo-Nazi cook | - |

## Theme & Branding

### Colors (Desert Southwest Palette)
```css
:root {
  /* Breaking Bad Brand */
  --bb-green: #4a7c59;           /* Iconic green (money, chemistry) */
  --bb-yellow: #ffc107;          /* Hazmat suit yellow */
  --crystal-blue: #00bcd4;       /* Blue meth */
  
  /* Desert Southwest */
  --desert-tan: #d4a574;         /* Sand, adobe */
  --mesa-red: #bf360c;           /* Red rocks */
  --sunset-orange: #ff6f00;      /* New Mexico sunset */
  --cactus-green: #558b2f;       /* Desert plants */
  
  /* Dark Heisenberg */
  --heisenberg-black: #1a1a1a;   /* Hat, dark themes */
  --shadow-gray: #424242;        /* Moral ambiguity */
  --meth-lab-white: #f5f5f5;     /* Sterile lab */
  
  /* Los Pollos Hermanos */
  --pollos-yellow: #ffca28;      /* Chicken logo */
  --pollos-red: #d32f2f;         /* Restaurant accent */
}
```

### Typography
- Headers: Bold, authoritative (reflects power dynamics)
- Body: Clean, professional (Walter's teacher persona)
- Accents: Chemical formulas, periodic table styling

### Imagery Style
- Desert landscapes, wide shots
- Yellow-tinted cinematography
- Chemical/scientific imagery
- Contrast between suburban normalcy and criminal underworld

## Content Tone

### Do:
- Explore the show's moral complexity
- Reference the chemistry/science elements
- Include iconic quotes and moments
- Acknowledge the transformation arc
- Reference New Mexico culture and locations

### Don't:
- Glorify drug use or manufacture
- Include gratuitous violence descriptions
- Spoil major deaths without warnings
- Oversimplify characters as "good" or "bad"

### Example Content Snippets

**Welcome message:**
> "Welcome. Say my name. You're goddamn right this is FanHub."

**Error messages:**
> "I am the one who knocks... but no one's answering. Error 404."

**Empty states:**
> "This area is as empty as the desert outside Albuquerque."

**Loading states:**
> "Cooking up your content... Chemistry takes time."

**404 Page:**
> "This page is in Belize. We had to send it there."

## API Content Examples

```javascript
// Example character response
{
  "id": 1,
  "name": "Walter White",
  "alias": "Heisenberg",
  "actor": "Bryan Cranston",
  "occupation": ["High School Teacher", "Methamphetamine Manufacturer"],
  "image": "/images/characters/walter-white.jpg",
  "bio": "A high school chemistry teacher diagnosed with cancer who turns to manufacturing methamphetamine to secure his family's future.",
  "seasons": [1, 2, 3, 4, 5],
  "status": "deceased",
  "affiliations": ["White Family", "Gray Matter", "Gus Fring Organization", "Heisenberg Empire"]
}
```

```javascript
// Example quote response
{
  "id": 1,
  "text": "I am not in danger, Skyler. I am the danger. A guy opens his door and gets shot, and you think that of me? No! I am the one who knocks!",
  "character": "Walter White",
  "episode": "S4E6 - Cornered",
  "context": "Walt to Skyler about his transformation"
}
```

## Key Locations

| Location | Description | Significance |
|----------|-------------|--------------|
| White Residence | 308 Negra Arroyo Lane | Family home, pizza roof |
| Los Pollos Hermanos | Fast food restaurant | Gus's front operation |
| Superlab | Underground meth lab | Under industrial laundry |
| Desert | New Mexico desert | Cook sites, burials |
| Car Wash | A1A Car Wash | Money laundering |
| Saul's Office | Strip mall law office | Criminal lawyer |
| DEA Office | Albuquerque field office | Hank's workplace |
| RV | 1986 Fleetwood Bounder | Original mobile lab |

## Chemistry/Science Elements

Incorporate chemistry references appropriately:

```javascript
// Periodic table styling for initials
const elementStyle = {
  Br: { number: 35, color: '#a52a2a' }, // Bromine - "Br"eaking
  Ba: { number: 56, color: '#4a7c59' }, // Barium - "Ba"d
};

// Chemical formula references
const blueProduct = {
  name: "Blue Sky",
  purity: "99.1%",
  formula: "C₁₀H₁₅N", // Methamphetamine
  color: "crystal-blue"
};
```

## Iconic Episodes

| Episode | Season | Why It's Memorable |
|---------|--------|-------------------|
| Pilot | S1E1 | Walt's diagnosis, first cook |
| ...And the Bag's in the River | S1E3 | First major moral choice |
| Peekaboo | S2E6 | Jesse's humanity |
| One Minute | S3E7 | Hank vs. Cousins |
| Half Measures | S3E12 | "Run." |
| Face Off | S4E13 | Gus's fate |
| Dead Freight | S5E5 | Train heist |
| Ozymandias | S5E14 | Everything falls apart |
| Felina | S5E16 | Series finale |

## Character Arcs

The show is about transformation. Reference these arcs:

```javascript
const characterArcs = {
  walter: {
    start: "Mild-mannered teacher",
    end: "Drug kingpin",
    theme: "Pride and ego"
  },
  jesse: {
    start: "Small-time dealer",
    end: "Traumatized survivor",
    theme: "Conscience and redemption"
  },
  hank: {
    start: "Macho DEA agent",
    end: "Determined investigator",
    theme: "Obsession with justice"
  }
};
```

## Component Naming

```javascript
// Breaking Bad themed components
Heisenberg.jsx         // Main profile/hero component
CrystalBlue.jsx        // Product/feature showcase
LosPollos.jsx          // Navigation/menu component
Superlab.jsx           // Main workspace/dashboard
CarWash.jsx            // Data processing/filtering
BetterCallSaul.jsx     // Help/support component
ElementCard.jsx        // Periodic table style cards
```

## Color Transitions (Reflecting Tone)

The show's color palette shifts with the narrative:

```css
/* Season 1-2: Suburban warmth */
.early-seasons {
  --primary: var(--desert-tan);
  --accent: var(--sunset-orange);
}

/* Season 3-4: Industrial cold */
.middle-seasons {
  --primary: var(--meth-lab-white);
  --accent: var(--crystal-blue);
}

/* Season 5: Dark conclusion */
.final-season {
  --primary: var(--heisenberg-black);
  --accent: var(--bb-green);
}
```

## Testing Content

```javascript
const mockCharacters = [
  { id: 1, name: 'Walter White', alias: 'Heisenberg', status: 'deceased' },
  { id: 2, name: 'Jesse Pinkman', alias: 'Cap\'n Cook', status: 'alive' },
  { id: 3, name: 'Gus Fring', alias: 'The Chicken Man', status: 'deceased' },
  { id: 4, name: 'Saul Goodman', alias: 'Jimmy McGill', status: 'alive' },
];

const mockQuotes = [
  { text: "Say my name.", character: "Walter White", response: "Heisenberg." },
  { text: "Yeah, science!", character: "Jesse Pinkman" },
  { text: "I will kill your wife. I will kill your son. I will kill your infant daughter.", character: "Gus Fring" },
];
```
