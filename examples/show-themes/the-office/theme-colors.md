# The Office Theme Colors

## Primary Palette

```css
:root {
  /* Dunder Mifflin Brand */
  --dm-blue: #1a365d;           /* Primary brand blue */
  --dm-blue-light: #2c5282;     /* Hover state */
  --dm-blue-dark: #1a202c;      /* Footer/dark sections */
  
  /* Paper & Office */
  --paper-white: #ffffff;       /* Primary background */
  --paper-cream: #fffdf7;       /* Secondary background */
  --office-gray: #718096;       /* Secondary text */
  --cubicle-gray: #e2e8f0;      /* Borders, dividers */
  
  /* Accents */
  --sticky-note-yellow: #faf089; /* Highlights, badges */
  --sticky-note-pink: #fed7e2;   /* Notifications */
  --whiteboard-green: #c6f6d5;   /* Success states */
  --red-stapler: #fc8181;        /* Errors, warnings */
}
```

## Semantic Colors

```css
:root {
  /* Text */
  --text-primary: #2d3748;
  --text-secondary: #718096;
  --text-inverse: #ffffff;
  
  /* Interactive */
  --link-color: #2c5282;
  --link-hover: #1a365d;
  --button-primary: #1a365d;
  --button-primary-hover: #2c5282;
  
  /* States */
  --success: #48bb78;
  --warning: #ed8936;
  --error: #e53e3e;
  --info: #4299e1;
  
  /* Backgrounds */
  --bg-primary: #ffffff;
  --bg-secondary: #f7fafc;
  --bg-accent: #ebf8ff;
}
```

## Character Colors

Each main character has an associated color for UI elements:

```css
:root {
  --michael-blue: #1a365d;      /* Manager blue */
  --dwight-brown: #744210;      /* Beet/farm brown */
  --jim-green: #276749;         /* Sales green */
  --pam-pink: #b83280;          /* Reception pink */
  --andy-cornell-red: #c53030;  /* Big Red */
  --kevin-orange: #dd6b20;      /* Chili orange */
  --angela-purple: #6b46c1;     /* Cat lady purple */
  --stanley-navy: #2a4365;      /* Crossword pen blue */
}
```

## Usage Examples

### Header
```css
.header {
  background: var(--dm-blue);
  color: var(--paper-white);
}
```

### Cards
```css
.character-card {
  background: var(--paper-white);
  border: 1px solid var(--cubicle-gray);
  box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
}

.character-card:hover {
  border-color: var(--dm-blue-light);
}
```

### Buttons
```css
.btn-primary {
  background: var(--dm-blue);
  color: var(--paper-white);
}

.btn-primary:hover {
  background: var(--dm-blue-light);
}

.btn-secondary {
  background: var(--paper-white);
  border: 1px solid var(--dm-blue);
  color: var(--dm-blue);
}
```

### Badges/Tags
```css
.badge-sales {
  background: var(--jim-green);
  color: white;
}

.badge-accounting {
  background: var(--kevin-orange);
  color: white;
}

.badge-management {
  background: var(--michael-blue);
  color: white;
}
```

## Dark Mode (Optional)

```css
[data-theme="dark"] {
  --bg-primary: #1a202c;
  --bg-secondary: #2d3748;
  --text-primary: #f7fafc;
  --text-secondary: #a0aec0;
  --cubicle-gray: #4a5568;
}
```
