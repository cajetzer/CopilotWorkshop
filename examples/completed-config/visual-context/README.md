# Visual Context Examples

> Visual context lets you use images to guide Copilot's suggestions. This is particularly useful for theming, design implementation, and understanding existing UI patterns.

## How Visual Context Works

In VS Code with Copilot Chat, you can:
1. Drag and drop images into the chat
2. Use the paperclip icon to attach images
3. Reference images in your prompts

Copilot (with Claude) will analyze the images and incorporate visual details into its suggestions.

---

## Use Case 1: Theme Extraction

### Scenario
You have a show's promotional image and want to extract a color palette.

### Prompt Example
```
I've attached the official poster for [show name]. 

Please analyze this image and:
1. Extract the dominant colors (provide hex codes)
2. Suggest CSS variables for a theme based on these colors
3. Recommend which colors to use for:
   - Primary background
   - Text colors
   - Accent/highlight colors
   - Button states
```

### What to Attach
- Official show posters
- Key promotional images
- Screenshots from memorable scenes

### Expected Output
Copilot will provide CSS like:
```css
:root {
  --primary-dark: #1a1a2e;    /* From the dark background */
  --accent-gold: #d4af37;     /* From the title lettering */
  --text-light: #f5f5f5;      /* Readable on dark backgrounds */
  /* etc. */
}
```

---

## Use Case 2: Component Recreation

### Scenario
You have a mockup or screenshot and want to recreate it in code.

### Prompt Example
```
I've attached a mockup of our character card design.

Please create a React component that matches this design:
- Use CSS Modules for styling
- Make it responsive
- Include hover states similar to what's shown
- Follow our existing patterns from copilot-instructions.md
```

### What to Attach
- Figma exports
- Hand-drawn wireframes
- Screenshots of existing UI to match

### Tips
- Annotate images if specific parts need attention
- Mention what's flexible vs. must-match exactly
- Reference your coding standards for implementation details

---

## Use Case 3: Design System Analysis

### Scenario
You're inheriting a codebase and want to understand the existing design patterns.

### Prompt Example
```
I've attached screenshots of 5 different pages from our app.

Please analyze these and identify:
1. Common UI patterns being used
2. Color palette in use
3. Typography patterns (headings, body, etc.)
4. Spacing/layout patterns
5. Inconsistencies that should be addressed
```

### What to Attach
- Multiple screenshots showing variety
- Both desktop and mobile views if available
- Examples of good AND problematic UI

---

## Use Case 4: Accessibility Review

### Scenario
You want to check if your UI meets accessibility standards.

### Prompt Example
```
I've attached a screenshot of our current homepage.

Please review this for accessibility concerns:
1. Color contrast issues
2. Missing visual hierarchy
3. Elements that might need ARIA labels
4. Touch target size concerns (mobile)
5. Suggestions for improvement
```

---

## Use Case 5: Show-Specific Theming

### Scenario (FanHub Workshop)
You've chosen your TV show and want to create a theme based on visual references.

### Prompt Example
```
I've attached 3 images:
1. The show's logo
2. A key scene screenshot
3. A character promotional image

Based on these, create a complete theme for my FanHub site:
1. CSS custom properties for all colors
2. Font recommendations that match the show's vibe
3. Suggested imagery style guidelines
4. Component theming suggestions (cards, buttons, headers)
```

---

## Best Practices for Visual Context

### Do:
- ✅ Use high-quality images (clear, not blurry)
- ✅ Crop to relevant areas when possible
- ✅ Provide multiple images for comprehensive analysis
- ✅ Combine with text context for better results
- ✅ Mention specific elements you want analyzed

### Don't:
- ❌ Use copyrighted images you don't have rights to
- ❌ Attach huge files (resize if needed)
- ❌ Expect pixel-perfect recreation without iteration
- ❌ Forget to specify your tech stack/constraints

---

## Sample Images to Use (FanHub)

For your chosen show, gather:

| Image Type | Purpose | Example |
|------------|---------|---------|
| Official Poster | Primary color extraction | Netflix/HBO promo images |
| Logo | Typography and brand colors | Show title treatment |
| Scene Screenshot | Mood and atmosphere | Iconic moment from the show |
| Character Photos | Secondary palette, character cards | Promotional headshots |
| Set/Location | Background textures, environmental colors | Recognizable locations |

---

## Integration with Other Features

Visual context works best when combined with:

1. **Repository Instructions**: "Follow patterns in copilot-instructions.md when implementing"
2. **Custom Prompts**: Create a `theme-from-image.prompt.md` for reusable theming workflow
3. **Custom Agents**: Have your Design Reviewer agent reference visual standards

### Example Combined Prompt
```
Using the attached show poster and following our patterns from 
copilot-instructions.md, create a themed Header component.

Use the create-component-tests.prompt.md pattern for the test file.
```
