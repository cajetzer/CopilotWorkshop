# FanHub: The Office Edition

> These instructions customize GitHub Copilot for The Office (US) fan site development.

## Project Context

FanHub is a fan site dedicated to **The Office (US)**, the NBC mockumentary sitcom about the Scranton branch of Dunder Mifflin Paper Company. Our site celebrates the show's humor, memorable characters, and iconic moments.

## Show Information

**The Office (US)** (2005-2013)
- Network: NBC
- Seasons: 9
- Episodes: 201
- Genre: Mockumentary, Comedy
- Setting: Scranton, Pennsylvania

## Main Characters

When generating content about characters, use these details:

| Character | Actor | Role | Known For |
|-----------|-------|------|-----------|
| Michael Scott | Steve Carell | Regional Manager (S1-7) | "That's what she said", World's Best Boss mug |
| Dwight Schrute | Rainn Wilson | Assistant (to the) Regional Manager | Beet farming, Battlestar Galactica, bears |
| Jim Halpert | John Krasinski | Sales Rep → Co-Manager → Salesman | Pranks on Dwight, looking at camera |
| Pam Beesly | Jenna Fischer | Receptionist → Sales → Office Admin | Art, Jim's love interest, "Pam Pam" |
| Andy Bernard | Ed Helms | Sales Rep → Regional Manager | Cornell, a cappella, anger management |
| Kevin Malone | Brian Baumgartner | Accountant | Famous chili, math struggles |
| Angela Martin | Angela Kinsey | Head of Accounting | Cats, judgment, Dwight |
| Oscar Martinez | Oscar Nunez | Accountant | Actually smart, "Actually..." |
| Stanley Hudson | Leslie David Baker | Sales Rep | Crossword puzzles, "Did I stutter?" |
| Kelly Kapoor | Mindy Kaling | Customer Service | Drama, Ryan |
| Ryan Howard | B.J. Novak | Temp → Various roles | Fire guy, business school |
| Toby Flenderson | Paul Lieberstein | HR Representative | Michael's nemesis, sad |

## Theme & Branding

### Colors (Dunder Mifflin)
```css
:root {
  --dm-blue: #1a365d;        /* Dunder Mifflin logo blue */
  --dm-blue-light: #2c5282;  /* Lighter blue for hovers */
  --dm-white: #ffffff;       /* Paper white */
  --dm-gray: #718096;        /* Office gray */
  --accent-yellow: #f6e05e;  /* Sticky note yellow */
  --accent-green: #48bb78;   /* Success/Recyclops green */
}
```

### Typography
- Headers: Sans-serif (Dunder Mifflin corporate feel)
- Body: Clean, readable (like office documents)

### Imagery Style
- Mockumentary/documentary aesthetic
- Office environment (cubicles, conference room)
- Talking head interview style backgrounds

## Content Tone

When generating text content:

### Do:
- Include show-specific references and inside jokes
- Use character catchphrases appropriately
- Reference memorable episodes
- Keep humor workplace-appropriate (like the show)
- Include "testimonial" style quotes

### Don't:
- Overuse catchphrases (one per page max)
- Reference controversial moments
- Include spoilers without warnings
- Be cringe (unless intentionally Dunder Mifflin cringe)

### Example Content Snippets

**Welcome message:**
> "Welcome to FanHub: Scranton Branch. We're like a family here. A family that watches The Office together."

**Error messages:**
> "Something went wrong. Toby probably touched it."

**Empty states:**
> "Nothing here yet. It's as empty as Kevin's brain during accounting meetings."

**Loading states:**
> "Loading... Please hold. Your call is very important to us."

## API Content Examples

When generating seed data or API responses:

```javascript
// Example character response
{
  "id": 1,
  "name": "Michael Scott",
  "actor": "Steve Carell",
  "role": "Regional Manager",
  "quote": "That's what she said.",
  "image": "/images/characters/michael-scott.jpg",
  "bio": "Regional Manager of Dunder Mifflin Scranton. World's Best Boss. Founder of Somehow I Manage.",
  "seasons": [1, 2, 3, 4, 5, 6, 7],
  "episodes_appeared": 148
}
```

```javascript
// Example quote response
{
  "id": 1,
  "text": "Would I rather be feared or loved? Easy. Both. I want people to be afraid of how much they love me.",
  "character": "Michael Scott",
  "episode": "S2E6 - The Fight",
  "context": "Talking head interview"
}
```

## Memorable Episodes

Reference these iconic episodes:

| Episode | Season | Why It's Memorable |
|---------|--------|-------------------|
| The Dundies | S2E1 | First Dundies, "Feeling Hot Hot Hot" |
| The Injury | S2E12 | Michael's grilled foot |
| Casino Night | S2E22 | Jim tells Pam he loves her |
| The Convict | S3E9 | Prison Mike |
| Dinner Party | S4E13 | Most awkward dinner ever |
| Stress Relief | S5E14/15 | CPR scene, roast of Michael |
| Niagara | S6E4/5 | Jim and Pam's wedding |
| Threat Level Midnight | S7E17 | Michael's movie |
| Goodbye Michael | S7E22 | Michael leaves |
| Finale | S9E24/25 | Series finale |

## Component Naming

When creating components, use Office-themed names where appropriate:

```
// Page components
DundiesAwards.jsx       // Awards/achievements page
ScrantonDirectory.jsx   // Character listing
ConferenceRoom.jsx      // Meeting/event space
BreakRoom.jsx           // Casual content area

// Feature components
TalkingHead.jsx         // Testimonial/quote display
PerformanceReview.jsx   // Rating/review component
PretzelDay.jsx          // Special events component
```

## Testing Content

When generating test data:

```javascript
const mockCharacters = [
  { id: 1, name: 'Michael Scott', department: 'Management' },
  { id: 2, name: 'Dwight Schrute', department: 'Sales' },
  { id: 3, name: 'Jim Halpert', department: 'Sales' },
  { id: 4, name: 'Pam Beesly', department: 'Reception' },
];

const mockQuotes = [
  { text: "Bears. Beets. Battlestar Galactica.", character: "Jim Halpert" },
  { text: "Identity theft is not a joke, Jim!", character: "Dwight Schrute" },
];
```
