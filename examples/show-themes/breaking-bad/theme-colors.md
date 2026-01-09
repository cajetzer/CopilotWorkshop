# Breaking Bad Theme Colors

## Primary Palette

```css
:root {
  /* Brand Colors */
  --bb-green: #4a7c59;           /* Money, chemistry, Breaking title */
  --bb-green-dark: #2e5339;      /* Darker green for hover */
  --bb-yellow: #ffc107;          /* Hazmat, caution */
  --crystal-blue: #00bcd4;       /* Blue Sky purity */
  
  /* Heisenberg Dark */
  --heisenberg-black: #1a1a1a;   /* The hat, power */
  --shadow-gray: #2d2d2d;        /* Dark themes */
  --charcoal: #424242;           /* Secondary dark */
  
  /* Desert Southwest */
  --desert-tan: #d4a574;         /* Sand, adobe */
  --mesa-red: #bf360c;           /* Red rocks */
  --sunset-orange: #ff6f00;      /* NM sunset */
  --sunset-pink: #ff8a65;        /* Dusk glow */
  --cactus-green: #558b2f;       /* Desert flora */
  
  /* Sky Blue */
  --sky-blue: #87ceeb;           /* Albuquerque sky */
  --sky-blue-pale: #b3e0ff;      /* Daytime */
}
```

## Semantic Colors

```css
:root {
  /* Text - Dark Mode */
  --text-primary: #ffffff;
  --text-secondary: #b0b0b0;
  --text-muted: #757575;
  
  /* Text - Light Mode */
  --text-dark: #1a1a1a;
  --text-dark-secondary: #424242;
  
  /* Interactive */
  --link-color: #4a7c59;
  --link-hover: #6a9c79;
  --button-primary: #4a7c59;
  --button-primary-hover: #5a8c69;
  
  /* States */
  --success: #4caf50;
  --warning: #ff9800;
  --error: #f44336;
  --info: #00bcd4;
  
  /* Backgrounds */
  --bg-dark: #121212;
  --bg-dark-elevated: #1e1e1e;
  --bg-light: #fafafa;
  --bg-desert: #f5f0e8;
}
```

## Los Pollos Hermanos

```css
:root {
  /* Restaurant Branding */
  --pollos-yellow: #ffca28;      /* Primary yellow */
  --pollos-yellow-light: #ffe082;
  --pollos-red: #d32f2f;         /* Accent red */
  --pollos-red-dark: #b71c1c;
  --pollos-brown: #5d4037;       /* Chicken/wood */
  --pollos-cream: #fff8e1;       /* Background */
}

.los-pollos-theme {
  --primary: var(--pollos-yellow);
  --secondary: var(--pollos-red);
  --background: var(--pollos-cream);
  --text: var(--pollos-brown);
}
```

## Character Colors

```css
:root {
  /* Main Characters */
  --walter-green: #4a7c59;       /* Mr. White's chemistry */
  --heisenberg-black: #1a1a1a;   /* Heisenberg's hat */
  --jesse-yellow: #ffc107;       /* Jesse's energy */
  --skyler-blue: #64b5f6;        /* Skyler's coldness */
  --hank-orange: #ff9800;        /* Hank's DEA vest */
  --marie-purple: #9c27b0;       /* Marie's obsession */
  --gus-brown: #5d4037;          /* Gus's composure */
  --saul-red: #f44336;           /* Saul's flair */
  --mike-gray: #607d8b;          /* Mike's stoicism */
}
```

## Periodic Table Element Styling

```css
/* Element card styling (like Br Ba logo) */
.element-card {
  display: inline-flex;
  flex-direction: column;
  align-items: center;
  padding: 8px 12px;
  border: 2px solid var(--bb-green);
  border-radius: 4px;
  background: var(--heisenberg-black);
  font-family: 'Roboto Mono', monospace;
}

.element-number {
  font-size: 0.7rem;
  color: var(--text-secondary);
}

.element-symbol {
  font-size: 2rem;
  font-weight: bold;
  color: var(--bb-green);
}

.element-name {
  font-size: 0.6rem;
  color: var(--text-secondary);
  text-transform: uppercase;
}
```

## Usage Examples

### Dark Theme (Default)
```css
body {
  background: var(--bg-dark);
  color: var(--text-primary);
}

.header {
  background: linear-gradient(
    180deg,
    var(--heisenberg-black) 0%,
    transparent 100%
  );
}
```

### Desert Theme (Light Mode)
```css
body.desert-theme {
  background: var(--bg-desert);
  color: var(--text-dark);
}

.card {
  background: white;
  border-left: 4px solid var(--sunset-orange);
  box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
}
```

### Cards
```css
.character-card {
  background: var(--bg-dark-elevated);
  border: 1px solid var(--charcoal);
  border-radius: 8px;
  overflow: hidden;
}

.character-card:hover {
  border-color: var(--bb-green);
  transform: translateY(-2px);
}

.character-card.deceased {
  opacity: 0.7;
  border-left: 4px solid var(--error);
}
```

### Buttons
```css
.btn-heisenberg {
  background: var(--heisenberg-black);
  color: var(--bb-green);
  border: 2px solid var(--bb-green);
  font-weight: bold;
  text-transform: uppercase;
  letter-spacing: 1px;
}

.btn-heisenberg:hover {
  background: var(--bb-green);
  color: var(--heisenberg-black);
}

.btn-pollos {
  background: var(--pollos-yellow);
  color: var(--pollos-brown);
  border: none;
}

.btn-pollos:hover {
  background: var(--pollos-yellow-light);
}
```

### Badges
```css
.badge-alive {
  background: var(--success);
  color: white;
}

.badge-deceased {
  background: var(--charcoal);
  color: var(--text-secondary);
  text-decoration: line-through;
}

.badge-unknown {
  background: var(--shadow-gray);
  color: var(--text-muted);
}

.badge-dea {
  background: var(--hank-orange);
  color: white;
}

.badge-cartel {
  background: var(--mesa-red);
  color: white;
}
```

## Special Effects

```css
/* Crystal Blue shimmer */
.crystal-blue {
  background: linear-gradient(
    135deg,
    var(--crystal-blue) 0%,
    #80deea 50%,
    var(--crystal-blue) 100%
  );
  background-size: 200% 200%;
  animation: shimmer 3s ease infinite;
}

@keyframes shimmer {
  0% { background-position: 0% 50%; }
  50% { background-position: 100% 50%; }
  100% { background-position: 0% 50%; }
}

/* Desert heat effect */
.desert-haze {
  background: linear-gradient(
    180deg,
    rgba(255, 111, 0, 0.1) 0%,
    transparent 100%
  );
}

/* Danger zone */
.danger-zone {
  background: repeating-linear-gradient(
    45deg,
    var(--bb-yellow),
    var(--bb-yellow) 10px,
    var(--heisenberg-black) 10px,
    var(--heisenberg-black) 20px
  );
}
```

## Typography Suggestions

```css
/* Periodic table headers */
h1, h2, h3 {
  font-family: 'Oswald', 'Impact', sans-serif;
  font-weight: 700;
  text-transform: uppercase;
  letter-spacing: 2px;
}

/* Breaking Bad title style */
.title-breaking {
  font-family: serif;
  color: var(--bb-green);
}

.title-breaking .highlight {
  display: inline-block;
  padding: 2px 6px;
  border: 2px solid var(--bb-green);
  margin-right: 4px;
}
```
