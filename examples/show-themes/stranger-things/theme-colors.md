# Stranger Things Theme Colors

## Primary Palette

```css
:root {
  /* Core Brand - Logo Colors */
  --st-red: #ff0033;              /* Stranger Things logo red */
  --st-red-dark: #cc0029;         /* Darker red for hover */
  --st-black: #0a0a0a;            /* Deep black */
  
  /* Upside Down */
  --void-black: #0d0d0d;          /* Deepest background */
  --upside-blue: #1a237e;         /* Particle blue */
  --spore-teal: #004d40;          /* Organic teal */
  --vine-green: #1b5e20;          /* Growth green */
  --portal-pink: #e91e63;         /* Gate energy */
  
  /* Hawkins - Daytime */
  --hawkins-sky: #87ceeb;         /* Indiana sky */
  --autumn-orange: #e65100;       /* Fall colors */
  --forest-green: #2e7d32;        /* Woods green */
  --suburban-beige: #d7ccc8;      /* 80s homes */
  
  /* 80s Neon */
  --neon-pink: #ff1493;           /* Synthwave pink */
  --neon-cyan: #00ffff;           /* Arcade cyan */
  --neon-purple: #9c27b0;         /* Synth purple */
  --neon-yellow: #ffeb3b;         /* Electricity */
}
```

## Semantic Colors

```css
:root {
  /* Text */
  --text-primary: #ffffff;        /* Light text on dark */
  --text-secondary: #b0bec5;      /* Muted text */
  --text-dark: #212121;           /* Dark text on light */
  
  /* Interactive */
  --link-color: #ff1493;
  --link-hover: #ff69b4;
  --button-primary: #ff0033;
  --button-primary-hover: #ff3366;
  
  /* States */
  --success: #00e676;             /* Neon green success */
  --warning: #ffab00;             /* Amber warning */
  --error: #ff1744;               /* Red alert */
  --info: #00e5ff;                /* Cyan info */
  
  /* Backgrounds */
  --bg-dark: #0a0a0a;             /* Main dark bg */
  --bg-dark-elevated: #1a1a1a;    /* Cards, modals */
  --bg-dark-subtle: #262626;      /* Input fields */
  --bg-light: #fafafa;            /* Light mode fallback */
}
```

## Thematic Gradients

```css
:root {
  /* Upside Down Portal */
  --gradient-upside-down: linear-gradient(
    180deg,
    #0a0a0a 0%,
    #1a237e 50%,
    #e91e63 100%
  );
  
  /* Neon Glow */
  --gradient-neon: linear-gradient(
    90deg,
    #ff0033 0%,
    #ff1493 50%,
    #9c27b0 100%
  );
  
  /* Hawkins Autumn */
  --gradient-hawkins: linear-gradient(
    180deg,
    #87ceeb 0%,
    #e65100 100%
  );
  
  /* Mind Flayer */
  --gradient-mind-flayer: radial-gradient(
    ellipse at center,
    #4a148c 0%,
    #1a237e 50%,
    #0a0a0a 100%
  );
}
```

## Character Colors

```css
:root {
  --eleven-pink: #e91e63;         /* El's power glow */
  --mike-blue: #1976d2;           /* Party leader blue */
  --dustin-green: #388e3c;        /* Dustin's cap */
  --lucas-orange: #f57c00;        /* Lucas's bandana */
  --will-purple: #7b1fa2;         /* Will's connection */
  --max-red: #d32f2f;             /* Max's skateboard */
  --steve-teal: #00796b;          /* Scoops Ahoy */
  --robin-yellow: #fbc02d;        /* Robin's vest */
  --hopper-khaki: #8d6e63;        /* Chief's uniform */
  --eddie-black: #212121;         /* Hellfire black */
}
```

## Glow Effects

```css
/* Neon text glow */
.neon-glow {
  text-shadow: 
    0 0 5px var(--st-red),
    0 0 10px var(--st-red),
    0 0 20px var(--st-red),
    0 0 40px var(--st-red);
}

/* Soft glow for cards */
.card-glow:hover {
  box-shadow: 
    0 0 20px rgba(255, 0, 51, 0.3),
    0 0 40px rgba(255, 0, 51, 0.1);
}

/* Portal glow */
.portal-glow {
  box-shadow:
    0 0 30px var(--portal-pink),
    0 0 60px var(--neon-purple),
    inset 0 0 30px var(--upside-blue);
}
```

## Usage Examples

### Dark Mode (Default)
```css
body {
  background: var(--bg-dark);
  color: var(--text-primary);
}

.header {
  background: linear-gradient(
    180deg,
    var(--void-black) 0%,
    transparent 100%
  );
}
```

### Cards
```css
.character-card {
  background: var(--bg-dark-elevated);
  border: 1px solid rgba(255, 20, 147, 0.2);
  transition: all 0.3s ease;
}

.character-card:hover {
  border-color: var(--neon-pink);
  transform: translateY(-4px);
}
```

### Buttons
```css
.btn-primary {
  background: var(--st-red);
  color: var(--text-primary);
  border: none;
  box-shadow: 0 0 10px rgba(255, 0, 51, 0.5);
}

.btn-primary:hover {
  background: var(--st-red-dark);
  box-shadow: 0 0 20px rgba(255, 0, 51, 0.8);
}

.btn-outline {
  background: transparent;
  border: 2px solid var(--neon-pink);
  color: var(--neon-pink);
}
```

### Badges
```css
.badge-upside-down {
  background: var(--upside-blue);
  border: 1px solid var(--portal-pink);
}

.badge-hawkins {
  background: var(--hawkins-sky);
  color: var(--text-dark);
}

.badge-hellfire {
  background: var(--eddie-black);
  border: 1px solid var(--st-red);
}
```

## VHS/Retro Effects

```css
/* Scanline overlay */
.scanlines::after {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background: repeating-linear-gradient(
    0deg,
    rgba(0, 0, 0, 0.15),
    rgba(0, 0, 0, 0.15) 1px,
    transparent 1px,
    transparent 2px
  );
  pointer-events: none;
}

/* VHS glitch */
@keyframes vhs-glitch {
  0%, 100% { transform: translate(0); }
  20% { transform: translate(-2px, 2px); }
  40% { transform: translate(2px, -2px); }
  60% { transform: translate(-1px, 1px); }
}
```
