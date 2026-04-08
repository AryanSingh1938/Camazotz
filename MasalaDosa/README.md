\# Camazotz
# Camazotz -- Design Documentation Template

Team Name: Masala Dosa
Team Members: Kartikey Chaudhary, Shambhavi Verma, Viveka Srivardhini, Anuj Parwal

# Phase 1 (Design Disaster)

## Objective
Explain the intent behind your intentionally flawed design.

Brief Description:
> Describe what your app does and what user flow you targeted.


## Intentional UX Issues Introduced

### Issue 1

Types: 
> Semantics

What was done:
> We made it so that each element is placed at a place as confusing as it can be, and made some colors coincide with background ones to confuse the user.

Why was this done?
> This was done so that the majority of the time is spent fixing the bad UI, and no functional errors are rectified within the given time.

Expected User Difficulty:
> Finding each element's current position, its color, etc., will challenge the user very much.

### Issue 2

Type:
> Hierarchy

What was done: 
> We made the visual hierarchy very messy and made texts that are unrelevant be more attention seeking.

Why was this done?  
> This was done as this makes the UI look very frustrating and slows down the fixing process.

Expected User Difficulty: 
> The user will use up a lot of time trying to fix the improper sequence of the app.

### Issue 3

Type: 
> Inappropriate frames.

What was done:  
> We made the frames out of proportion.

Why was this done: 
> This was done so that the frames look messed up.

Expected User Difficulty:  
> This will waste time of the user until he/she finds the right frame code.

### Issue 4

Type: 
> Cognitive load

What was done:  
> We made the screens filled with unnecessary elements.

Why was this done? 
> To make it harder to see and pinpoint parts to fix.

Expected User Difficulty:  
> This will mess up the user's understanding of the page and delay corrections.
### Issue 5

Type: 
> Unnecessary elements

What was done:  
> We added background images that were irrelevant to the page data and made it look unpleasant.

Why was this done? 
> So that each file has to be reviewed properly to find where the problem is.

Expected User Difficulty:  
> This will make the user read all the code to figure out where the bugs are.

### Issue 6

Type: 
> Inappropriate button redirection

What was done:  
> We added incorrect button redirections.

Why was this done? 
> This is a feature which is highly unprofessional and it also ruins the user's experience and increases frustration.

Expected User Difficulty:  
> The user will have to fix the improper redirection appropriately.

### Issue 7

Type: 
> Improper details

What was done:  
> We added improper details regarding some buttons and other user interactive elements.

Why was this done: 
> To make the user confused when using the app.

Expected User Difficulty:  
> The user would have to figure things out on his/her own, as most elements are misleading.



# Functional Bugs / Issues (If Any)

Note: App must remain functional

Bug 1:

- Description:
Improper extremities in temperature.
- Impact:
This made the extremities in temperature displayed wrong.
- Workaround (if any):
Review and fix the code relevant to the extremities.

Bug 2:
- Description:
Wrong/altered weather information.
- Impact:
This makes the app completely useless as it changes the weather information completely.
- Workaround (if any):
Reviewing code and api docs related to the part that has been altered.
# Design Anti-Patterns Used

- Multiple CTAs  
- Poor visual hierarchy  
- Hidden actions  
- Cognitive overload  
- Inconsistent components  

Explain which ones you used and where:

*************** DO NOT CONTINUE MODIFYING BEYOND THIS IF YOU ARE IN PHASE 1 **************************

# Phase 2 — Design Redemption

## UI/UX Improvements Made

### Improvement 1
What was broken: Logical extremity handling in temperature reporting. The app displayed a "Lowest" temperature of 26 and a "Highest" of 18 which is physically impossible and renders the data untrustworthy.

What was improved: The logic was corrected to ensure the Maximum value is always greater than or equal to the Minimum value.

Why is it better: Data integrity is the foundation of a utility app. Correcting this ensures the user receives accurate information rather than a logical paradox that destroys the app's credibility.

### Improvement 2

What was broken: Visual hierarchy and cognitive load. The login and main weather screens utilized irrelevant background images, unprofessional emojis (🤣🤣, 🥺❤️), and overlapping elements that obscured primary data.

What was improved: Removed all irrelevant imagery, including the "Hello Kitty" bow and face background. Standardized the font styles and removed unprofessional microcopy and emojis.

Why is it better: It reduces cognitive load by eliminating "noise." A weather app must prioritize legibility. Using professional typography and clean backgrounds allows the user to find information in under two seconds, which is the industry standard for utility tools.

### Improvement 3

What was broken: Frame proportions and element spacing. Specifically, the "Hourly Forecast" and "7-Day Forecast" blocks overlapped with the background and each other, while the search bar was poorly padded and misaligned.

What was improved: Implemented a structured layout using proper padding and standardized frame sizes.

Why is it better: Proper spacing (white space) prevents visual claustrophobia. It ensures that interactive elements like the "Get Today's Suggestion" button are distinct and accessible, following standard Fitts's Law principles for touch targets.

 ### Improvement 4
 
 What was broken: Color semantics and contrast. Using a neon pink background with pink text or green text on green backgrounds (Image 1 and 2) violated basic accessibility (WCAG) standards.

What was improved: Replaced the "clashing" color palette with a high-contrast theme. Text is now clearly distinguishable from the background containers.

Why is it better: Visual accessibility is not optional. High contrast ensures that the app remains usable in varied lighting conditions, such as direct sunlight, which is a primary use case for a weather application.

### Improvement 5

What was broken: Navigation logic and button redirection. The "Warning" screen used "call our tech support" as a placeholder for weather advice, and the "Forgot Password" link was formatted as an unprofessional joke.

What was improved: Restored semantic navigation. Buttons now lead to their logical destinations (e.g., "Forgot Password" leads to a recovery flow, not a joke).

Why is it better: Predictability is key to user retention. When a button performs the action its label suggests, it builds user trust and reduces frustration.

### Improvement 6

What was broken: Spelling and detail accuracy. The app featured "DAYLY FORECAST" instead of "DAILY" and displayed "Clear Skies" warnings on backgrounds showing storm clouds.

What was improved: Corrected all orthographic errors and synchronized the visual assets (backgrounds/icons) with the actual API data.

Why is it better: Spelling errors suggest a lack of quality control. Synchronizing the UI with the data ensures that the user's visual perception (seeing clouds) matches the textual information (forecasted rain), preventing cognitive dissonance.
 

# Before vs After Summary

| Area | Before | After |
|------|--------|-------|
| Navigation |Broken logic; "back" buttons and redirects led to irrelevant pages or "support" placeholders. | Restored standard linear flow; buttons now lead to logically expected destinations.|
| CTA | Obscured by overlapping frames; unprofessional/misleading text labels ("touch me pls").|High-contrast, clearly labeled buttons ("Get Today's Suggestion") placed in primary thumb zones. |
| Hierarchy |Non-existent; irrelevant background images and emojis competed with primary weather data. | Scaled typography; current temperature and location are prioritized; forecast data is contained in distinct modules.|
| Usability | Critical failure; impossible data and zero contrast made the app functionally invisible.| Logical data validation; WCAG-compliant color contrast; removed all visual noise to minimize cognitive load.|

---

# Usability Improvements

- Reduced cognitive load -> Stripped away all irrelevant "Hello Kitty" graphics and face backgrounds. A weather app is a tool, not a scrapbook. By removing visual clutter, the user can process the temperature in milliseconds.

- Clearer navigation  ->Deleted the "incorrect button redirection" sabotage. Users rely on mental models; when a button says "Login," it must log the user in, not trigger a "Warning" screen about clear skies.

- Improved hierarchy  ->Used font weight and size to distinguish between the current state (Lucknow, 19°C) and the future state (Hourly/7-Day forecasts).

- Better accessibility ->  Corrected the clashing color palettes (e.g., pink text on pink backgrounds). Text is now legible against its container, ensuring functionality in high-glare environments.

Explain briefly: The "Broken UI" was a case study in hostile design. By re-establishing basic Gestalt principles—specifically Proximity and Continuity—the interface was transformed from a confusing collection of shapes into a functional information dashboard.

# Lessons Learned

- What worked  ->Implementing a "mobile-first" grid system. Forcing elements into standardized frames immediately resolved the issues with overlapping text and obscured data.

- What failed -> The original design attempted to use "clever" or "humorous" microcopy. In utility apps, humor that interferes with task completion is a defect, not a feature.  
- What you learned about UX  -> Trust is the primary currency. The moment the app displayed a "Highest" temperature of 18°C and a "Lowest" of 26°C, the user’s trust was liquidated. Accuracy in data visualization is as important as the data itself. 

# Final Notes

- App remains functional  -> Logic flow was restored without breaking the backend API integration.

- No complete rewrite -> The fix focused on CSS/Layout properties and semantic cleanup rather than a total codebase overhaul.
  
- Core structure preserved -> The basic "Search-Current-Forecast" architecture remains, proved that the underlying logic was sound but buried under poor execution.  

# Screenshots

## Phase 1 — Broken UI



## Phase 2 — Improved UI

(Add screenshots)

---
