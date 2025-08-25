---
title: Re-Designing Devfolio's Hackathon Application Flow
date: 2025-08-19
---

Devfolio's hackathon application flow was losing about 75% of users before they even started. We redesigned it to cut drop-offs in half and boost completion rates across the board.
<br>
<br>

---

## Context

Devfolio is the leading platform for builder economic opportunities through hackathons, fellowships, and grants – commanding ~60% market share in Web3 and blockchain communities.

Our hackathon application flow processes 50,000+ monthly participants. But we were hemorrhaging opportunity: 75% abandoned before even starting – roughly 37,500 builders lost each month.

Hackathons drive 70% of our platform engagement, and successful participants have 3x higher lifetime value. Every abandoned application meant losing potential project contributors, mentors, and future organizers. Poor completion rates also risked our standing with event organizers who needed robust applicant pools.

While competitors treated applications as simple Google Forms, we saw our biggest differentiation opportunity: turn our application flow into a competitive moat that would make Devfolio the obvious choice for serious hackathon organizers.

Applying for a hackathon requires the participants to fill up a few details about them as per the organizers, here is a complete list:

- Details like name, gender, T-shirt size.
- Links to online profiles like GitHub, LinkedIn, Medium, personal website etc.
- Work experience to understand the domain expertise and skills.
- Education background
- Contact information including emergency contact details
- Ethereum wallet connect for Web3 hackathons
- Choose solo or team participation
- Additional questions by the organizers

![[Pasted image 20250811160315.png]]
<br>

![[Pasted image 20250811160346.png]]
<br>

![[Pasted image 20250811160352.png]]

What information captured through the application flow is in complete control of the organizers of a hackathon, they choose and define the fields and information points that should be collected from the participants. Devfolio also stores certain responses of these fields for the participant and auto-fills them for the next hackathon they apply to. This feature, meant to save time, would become the source of our biggest problem.

Organizers have the ability to add custom questions for the participants to answer and evaluate their application. Like, short answer text, long answer text, file upload, radio button, multi-select, true-false checkbox & true-only checkbox.

As we scaled and started expanding onboarding diverse hackathons throughout the globe, we started hearing feedback from participants who found it hard to navigate around the interface and submit their application.

Devfolio was undergoing a re-brand across the board, as we adopted the new design system across the platform, we decided to tackle these issues.

---

## Role

I was the sole designer responsible for end-to-end product design. From uncovering the problem through user research, to defining the information architecture, prototyping multiple flows, and validating with users. I collaborated closely with the Support and Operations teams to identify pain points, and with Engineering to refine edge cases, micro-interactions, and responsive behaviors.

Beyond design execution, I drove cross-team alignment, prioritized design decisions based on data, and ensured the final experience was both user-friendly and feasible to implement.

---

## Discovering the problem

A. Discovery calls with support team:

Devfolio pre-fills a lot of information for the users applying to a hackathon to save their time. These fields would not be visible to the user while filling their application. Instead, only the fields which could not be auto-filled would be present & the additional questions by the organizers would be visible on the application.

The invisible profile trap: Users were unknowingly submitting outdated information because Devfolio pre-filled their profile data invisibly. The fields stored by Devfolio is also used to create a public Devfolio profile for a user which they can edit and maintain. Although users could edit the information which was not visible in the application by editing their profile, it was not obvious for the users. The initial reasoning to not show the pre-filled fields was to reduce the cognitive load of a user while filling a form which tend to be long.

We also discovered a lot of users would only come to Devfolio to apply to hackathons and were not aware of their profile which they can edit. This caused a bigger problem: users were unknowingly submitting outdated information - a junior developer title from 2 years ago, an old university email, skills they'd long since surpassed.
<br>
<br>

B. Watching the User Recordings:

While the initial purpose for this was to get more visibility on how the users interacted with the interface, we quickly discovered more & broader issues which increased the scope for the project.

The shocking numbers we couldn't ignore:

- Users would struggle to find the submit button (the most important action was playing hide-and-seek)

- About 75% of the users would drop off from the webpage after getting to the application flow.

- The remaining users who stick, would take ~20 seconds before they started filling details into the application.

- Only ~10% of the users would stick around to complete the application in one go (~90% needed multiple attempts)

- About 40% of users filled their applications on a mobile device (on a non-responsive website - we were setting them up to fail)
  <br>
  <br>

C. User Interviews

To identify and gather more information on how participants approached applying to a hackathon, we setup a total of 6 user interviews, 3 seasoned hackathon participants on Devfolio and 3 users who were relatively newer to the platform and had participated in only 1-2 hackathons.

What they told us & we observed changed everything:

- They would only come to Devfolio to apply to hackathons and were not aware of their Devfolio profile where they can edit their information. ("Wait, I have a profile?")

- All 3 new users felt overwhelmed by the application interface and struggled to find a clear starting point.

- They preferred using their mobile device to apply to hackathons as they got to know about these hackathons through Twitter on their mobile device. ("I find it on my phone, but it is so tedious to apply on my phone")

- They would fill up their application over a period of few days and referenced the public microsite to not miss details and increase their chances of acceptance.

---

## From Problems to Possibilities

From the comprehensive research above, our priorities became clear. We needed to figure out:

1. How might we reduce the initial ~75% drop-off rate in the application flow?

   The data shows users spending ~10-15 seconds before abandoning the page, with new users feeling overwhelmed and unable to find a clear starting point. This massive drop-off represents ~32,500 potential participants lost each month.
   <br>
   <br>

2. How might we create a mobile-first responsive experience?

   With ~40% of users applying via mobile devices (often coming from Twitter) but facing a non-responsive interface, we're forcing ~20,000 users monthly to "come back later on desktop." Most never did.
   <br>
   <br>

3. How might we surface pre-filled information transparently while maintaining efficiency?

   Users are unaware of auto-filled data from their profiles, leading to outdated or incorrect information being submitted without their knowledge. We need to make the invisible visible without overwhelming.
   <br>
   <br>

4. How might we create clearer navigation and action hierarchy?

   Users struggle to find critical elements like the submit button and don't understand where to begin, suggesting that our information architecture had become a maze, not a map.
   <br>
   <br>

Compressing the information we got during the research:

Who's using the application flow?

- The Power Users (30%) Seasoned hackathon participants who apply to multiple events regularly. They wanted speed and efficiency above all.

- The Newcomers (45%) First-time participants discovering hackathons via social media. They needed clear guidance and mobile-friendly experiences.

- The Returners (25%) Users coming back after months, likely with outdated profile information. They needed transparency about what data was being submitted.

<br>

What are their motives for visiting the application page?

- To quickly apply to a hackathon they discovered

- To complete a partially filled application

- To review hackathon requirements before submitting

- To check/update their application status (addressed in Dashboard)

- To form or join teams for the hackathon

---

## Solution Design

Based on the approach evaluation, we had identified the core problems to tackle, but determining the optimal way to solve them required extensive exploration. The application flow had become a Gordian knot - we needed to untangle it without breaking what worked.

We explored numerous directions through rapid prototyping:

- Should pre-filled data be shown inline or in a separate review step?
- Would a multi-step application perform better than a single scrollable form?
- How much information could we reasonably display on mobile without overwhelming users?

After multiple design sprints and rounds of internal feedback, we converged on an approach. The support team's insights about user confusion and the operations team's data on drop-off patterns helped us identify which solutions to prioritize for testing.

Through this iterative process, we developed several hypotheses that would guide our first testable prototype:

1. If we break the application into clear sections with an overall progress indicator visible at all times, then users will understand where to start and be able to visualize their progress, reducing the initial paralysis period, because clear structure and visual milestones eliminate ambiguity about the application scope and starting point.

2. If we show the pre-filled fields within the sections, then users will be able to review and make changes wherever necessary, because surfacing hidden data gives users control over their information while maintaining the efficiency of auto-fill.

3. If we show only one section at a time, users will feel less overwhelmed and completion rates will increase because they're only processing one decision set at a time.

4. If we implement a mobile responsive design then mobile completion rates will increase from 5% to match desktop rates (~15-20%), because users can complete applications on their preferred device.

5. If we implement a sticky sidebar with "Submit" button always visible, then users won't struggle to find critical actions and the percentage of submissions will increase, because removing the navigation hunt for important actions eliminates a key point of user frustration.

6. If we implement auto-save, then users can confidently complete applications across multiple sessions or devices, because they no longer fear losing progress and can fill applications during natural breaks in their schedule.

---

## What we built

We implemented the following changes:

1. Section-based navigation

   - Divided the application into clear sections: About, Links, Work Experience, Education, Contact, Ethereum wallet, Team participation, and Additional questions
   - Added overall progress indicator showing percentage completion
   - Sequential section progression with navigation controls

2. Full field visibility

   - All fields visible including pre-filled ones
   - Users can review and edit any information before submission
   - Clear indication of which fields are required vs optional

3. Integrated application experience

   - New application tab within the hackathon microsite
   - Keeps all hackathon information in one place
   - Eliminates context switching between application and event details

4. Persistent information sidebar

   - Adopted established microsite design pattern
   - Always-visible hackathon details: dates, venue, social links
   - Countdown timer for application deadline
   - Sticky submit button that activates upon completion

![[Pasted image 20250813165311.png]]
<br>

![[Pasted image 20250813173210.png]]

---

## First approach (what worked, what didn’t)

We showed a prototype of the above designs to a few seasoned & new hackers to get their unbiased perspective and feedback. What they told us was both validating and humbling.
<br>
<br>

What Worked (Our Victory Lap):

- Users appreciated seeing all form fields, even when pre-populated with data. This transparency helped them understand exactly what information was being submitted and allowed them to make precise corrections where needed.

- The division of the application into multiple sections provided clear entry points that reduced initial overwhelm. Users could immediately engage with the form (within ~5-10 seconds).

- The countdown timer showing application deadline was highly valued by users. This addresses a common pain point confirmed by our support team - organizers were drowning in "can I still submit?" emails from participants who missed the window.

- Housing the application within the hackathon microsite allowed users to easily reference event details while completing their submissions.

<br>

What didn’t work (and what we learned):

- Users felt lost in their own application. They felt disoriented when moving between sections and lacked confidence in their progress. While the percentage completion indicator was helpful, it didn't answer the critical question: "Where am I?"

- We'd taken away their agency. Participants had no overview of all available sections and couldn't choose which section to complete first, turning them into passengers, not drivers of their own application.

<br>

This feedback challenged our core hypothesis:

> If we show only one section at a time, users will feel less overwhelmed and completion rates can increase because they're only processing one decision set at a time.

We'd solved one problem but created another.

---

## The insights we gained

After receiving this feedback, we tested the prototype with a few more people to see if patterns emerged. What we discovered was a universal behavior we hadn't anticipated:

- We successfully solved the problem of user paralysis - participants had clear starting points and began engaging immediately. However, the new interface created spatial amnesia - users lost sense of where they were in the journey.

- Many users navigated back and forth between sections before beginning to fill out the form, wanting to scout the entire territory before settling in to complete it.

- Even users who followed the intended linear sequence often returned to previous sections when they noticed their completion percentage wasn't at 100% after finishing what they thought was the final section.

- Users who trusted the interface and filled sections sequentially still went back and forth between sections, playing a frustrating game of "find the missing field" when the percentage didn't hit 100%.

- While exposing all pre-filled fields increased user confidence and accuracy in their submissions, it approximately doubled the completion time compared to our previous approach.

<br>

The Critical Insight:

Our single-section approach successfully reduced initial overwhelm but introduced navigation challenges that hindered user confidence and efficiency. Users need both focused task presentation AND a clear map of the journey - it's not an either/or, it's a both/and.

---

## Solution: Finding the Middle Path

Based on the user feedback, we had identified a critical tension to resolve, but determining how to balance both needs required careful exploration. We had solved the paralysis problem but created a navigation problem - we needed to provide orientation without reintroducing overwhelm.

But there was another tension lurking in our data: the transparency tax. While users loved seeing all their pre-filled information, it almost doubled their completion time. We'd given them control but stolen their time.

We explored numerous directions:

- Should we show all sections upfront or reveal them progressively?
- Would a stepped indicator with preview capabilities maintain focus while providing overview?
- How could we allow non-linear navigation while still encouraging completion?
- How might we indicate which sections are already complete via pre-filled data?
- How could we visually differentiate "review-only" sections from "action-required" sections?

After multiple design sprints and rounds of internal feedback, we converged on a approach. The user research showing the "scout before settler" behavior and the insights about users hunting for missing fields helped us identify which navigation patterns to prioritize.

Through this iterative process, we developed several new hypotheses that would guide our refined prototype:

1. If we provide a visual map of all sections at the start, users will feel in control even when focused on a single section, because they've already scouted the territory.

2. If we mark sections with pre-filled data as "completed" from the start, users can focus only on sections needing attention - maintaining confidence without re-evaluating every field, potentially reducing completion time while preserving transparency.

3. If we visually distinguish between "complete" and "incomplete" sections, users will immediately know where to focus, ending the exhaustive hunt for missing fields.

4. If we enable direct navigation to any section while displaying each section's completion status, users can work in their preferred order without missing requirements.

5. If we show section summaries in the navigation but full details only in the active section, we provide overview without overwhelm.

6. If we show both section completion indicators and overall percentage filled, users gain micro and macro progress visibility - instantly identifying which sections are pre-filled versus incomplete.

We started iterating to figure out how a new user interface built around our hypothesis of providing our users a visual map of all the sections at the start, i was instantly reminded of the first screen a user sees when they click on 'Apply now' (current implementation)

![[Pasted image 20250811160315.png]]

The solution was starring right at my face, i knew instantly what direction i would be taking this into.

---

## The refined approach (what we built, again)

1. Upfront section overview with completion status

   - All sections visible from the start, giving users a complete map of their journey
   - Visual checkmarks indicate which sections are filled
   - Sections expand/collapse to show details only when user wants it to
   - Users can immediately identify where action is required vs. what's filled

2. Non-linear navigation with visual progress

   - Users can click any section in any order - becoming drivers, not passengers
   - Each section shows completion status independently
   - Overall percentage updates dynamically as fields are filled
   - Eliminates the "hunt for missing fields" problem

3. Progressive disclosure design

   - Collapsed view shows section name and completion status
   - Expanded view reveals full form fields for that section only
   - Maintains focus while preventing spatial disorientation
   - Users can scout the territory before settling in to complete

4. Persistent progress and action visibility

   - Fields are auto-saved as they are filled
   - Completion percentage always visible in sidebar
   - Submit button remains accessible throughout the journey

5. Visual hierarchy through state indicators

   - Relevant grey icons for incomplete sections requiring attention
   - Green checkmarks for completed sections
   - Clear differentiation helps users prioritize their effort
   - Subtle descriptions under each section title provide additional context of the fields inside the sections.

This approach successfully balances our competing needs: providing users with both a clear map of their journey AND focused task presentation, while maintaining transparency without doubling completion time.

![[Pasted image 20250816172405.png]]
<br>
![[Pasted image 20250816180908.png]]

---

## The Moment of Truth: Round Two

We returned to our testing group with equal parts confidence and trepidation. We'd taken their feedback to heart, but had we overcorrected? Sometimes fixing one problem creates three new ones.

This time, we expanded our testing pool to 12 participants - the original testers plus new users who hadn't seen our previous iterations. We wanted both fresh eyes and the perspective of those who'd experienced our evolution.

What we found:

The Scout-and-Settle Pattern Emerged Naturally

Within seconds of seeing the interface, users did exactly what we'd observed them wanting to do - they scanned the entire form structure before diving in. But this time, instead of clicking blindly through sections, they could see the whole landscape at a glance.

- Average time to first interaction dropped from ~20 seconds to ~5 seconds
- Some users spent 5-10 seconds reviewing all sections, then confidently chose where to begin
- 9 out of 12 users started with incomplete sections, skipping over pre-filled ones entirely

"Oh, I can see what I need to do and what's already done. This is much clearer!" - a returning tester who'd struggled with our previous iteration.

From Passengers to Pilots

Users weren't just filling out a form anymore - they were strategizing their approach:

- Some tackled quick sections first to build momentum (contact info, links)
- Others dove into complex sections when they had more time (work experience, additional questions)

The completion patterns told the story: instead of 90% following our prescribed linear path, we saw users creating distinct navigation patterns based on their personal preferences and circumstances.

The Transparency Tax... Disappeared

Here's where we got our biggest surprise. Remember how showing all pre-filled fields almost doubled completion time in our first iteration? The visual checkmarks changed things:

- Users trusted the green checkmarks and only reviewed pre-filled sections if they knew something had changed
- Average completion time for returning users & new users dropped drastically

We understood, the cognitive load wasn't from seeing the fields - it was from not knowing which fields needed attention.

---

## Final Designs and Flows

1. For a new participant
   ![[Pasted image 20250818180935.png]]

2. For a seasoned participant
   ![[Pasted image 20250818183249.png]]

3. Submitting application as a solo participant
   ![[Pasted image 20250818183307.png]]

4. Submitting application in a team
   ![[Pasted image 20250818183324.png]]

5. Applying after a long time
   ![[Pasted image 20250818183353.png]]

6. Mobile interface
   ![[Pasted image 20250818190454.png]]

---

## The Details That Mattered

While our core navigation solution solved the major problems, shipping a production-ready experience meant addressing dozens of edge cases and micro-interactions. These decisions would determine whether our solution actually worked in the wild.

1. Team Formation: The Collaboration Challenge

Hackathons aren't solo endeavors for most participants - about 80% apply as teams. Our previous system treated team formation as an afterthought, causing chaos: duplicate applications, missing teammates, and confused organizers receiving partial team submissions.

We designed a new team flow with clear ownership and visibility:
<br>
<br>

The Team Card

![[Pasted image 20250818230821.png]]

The team card became the central hub for coordination. At a glance, teams could see:

- All team members displayed with profile pictures and name / username / admin actions on hover
- Clearly highlighting the admin (who holds submission power)
- Individual progress for each member showing their application completion percentage
- Real-time updates as teammates fill their sections
- Admin can only submit when all the team members have filled their applications to 100%.

This transparency transformed team dynamics. Instead of awkward "did you finish your application?" messages, teams had instant visibility.
<br>
<br>

Inviting Hackers

![[Pasted image 20250818230832.png]]

We democratized the invite process - any team member could share an invite code. This seemingly small decision had major impact:

- Teams could parallelize recruitment (no bottleneck on one person)
- The invite code system worked universally - paste it anywhere from Discord/Telegram/WhatsApp etc.
- Team size limits enforced automatically
  <br>
  <br>
  <br>

The Submission Gate

![[Pasted image 20250818231250.png]]

The admin-only submission created interesting dynamics. The submit button would show different states:

- For admin: Active when all members complete, with clear messaging about who's pending
- For members: "Only team admin can submit" with admin name visible
- Handling for instances members have not finished their applications or the team does not meet the hackathon requirements

This wasn't just about preventing errors - it was about creating clear ownership and accountability in the chaos of hackathon preparation.

## 2. One Section at a Time

After testing, we made a decisive choice: only one section expands at a time. When users click a new section, the previous one automatically collapses.

This wasn't our initial instinct - we worried about taking away user control. But watching users interact with multiple open sections revealed the truth: unlimited expansion created endless scroll and decision paralysis. Users would expand everything, get overwhelmed by the page height, then lose their place.

The single-expansion pattern:

- Brings the section opened in the viewport with a smooth scroll
- Creates a natural rhythm: review, complete, move forward
- Reduces cognitive load by presenting one decision set
- Still preserves the overview through our persistent navigation

## 3. Mobile Interface

![[Pasted image 20250818231645.png]]

With 40% of our users trying to fill in the application via mobile in the first try, we couldn't just shrink the desktop experience. Mobile needed its own interaction model while maintaining conceptual consistency.

**The Mobile Pattern:**

- Sections open as full-screen overlays rather than inline expansion
- Each section becomes its own focused space with a clear header showing section name and progress
- Dedicated "Save" button at the bottom - thumb-friendly and always visible
- Auto-save triggers on section exit, preventing data loss from accidental back buttons

This wasn't responsive design - it was adaptive design. Same mental model, platform-appropriate execution.

## 4. Adding Delight with Claude

One of the small but impactful details we wanted to get right was how users experienced their application progress. Rather than a static percentage, I designed a playful clipboard animation that fills up line by line as progress increases.

I used Claude to quickly prototype the animation. By providing the base SVG for the clipboard graphic and describing how each of the four lines should animate in 25% increments, I was able to generate working code in under five minutes, something that would have taken much longer if handled directly by engineering.

- Line 1: 0–25%
- Line 2: 25–50%
- Line 3: 50–75%
- Line 4: 75–100%

![[Pasted image 20250818175729.png]]

After refining the motion with easing for a smoother finish, we had an interaction that felt both functional and delightful. The engineering team could drop the code straight into production, making it one of the fastest wins of the project.

https://www.youtube.com/watch?v=6K3ceMfCkew

This small touch didn’t just visualize progress, it added a sense of momentum and reward that kept users engaged through the application journey.

## 5. Sneak peak of what happens when you submit

![[Pasted image 20250820191307.png]]

---

## The Verdict

We decided to hide the new interface under a feature flag and only enable it for selected hackathons at the start so we can pay close attention to a larger group of users interact with it. Here is what we found:

Drop-off rate: 75% → 31%

- Users no longer bounced immediately upon seeing the interface
- The clear section structure with visual progress indicators kept them engaged

Mobile completion rate: 5% → 22%

- Not quite desktop parity, but a great improvement
- Users could now realistically complete applications on their phones

Single-session completion: 10% → 42%

- The visual map helped users gauge time commitment upfront
- Auto-save meant they could confidently return if needed

The 44% reduction in drop-off rate translated to approximately 22,000 additional completed applications monthly. For organizers, this meant fuller events and better participant diversity. For Devfolio, each completed application strengthened our network effects - more participants meant more attractive events, which brought more organizers, creating a virtuous cycle.

We also saw the support requests related to the application flow drop majorly. We worked towards slowly expanding it hackathon to hackathon over the course of about a month.

We saw some bug reports and issues that popped up as we opened the flood gates but also, similar upward number trends. We made this the primary way to apply for all hackathons on Devfolio. It was a huge success!

This redesign wasn't just about fixing a form - it was about positioning Devfolio for our next phase of growth. By creating a parallel mobile experience, we were betting on the future of hackathon discovery happening through social channels. By making team formation seamless, we were investing in Devfolio becoming the collaboration layer for the builder economy, not just an application portal.

---

## Looking Forward: Building on the Foundation

Solving the 75% drop-off was only the first step. In redesigning the application flow, we also uncovered new opportunities to expand how Devfolio supports hackers beyond the form itself.

### From Functional Teams to Social Teams

Our invite-code system fixed coordination for existing groups, but hackathons are also where thousands of solo developers come to find collaborators. There’s a chance to evolve team formation from purely transactional to genuinely social:

- A discovery interface where individuals can browse or join teams seeking specific skills
- “Looking for” cards that make team needs visible at a glance (e.g. “Need a React developer”)
- Skill-based matching that suggests teammates based on profile data and past experience
- Lightweight request-to-join flows that make it easy for solo builders to pitch themselves

### Richer Collaboration Tools

We also see room to make inviting and managing teammates less brittle:

- Shareable links alongside codes, so joining works seamlessly across platforms
- Previews that show team composition before accepting an invite
- A dashboard for managing invites, pending requests, and confirmations

### Beyond Application: The Hackathon Journey

Submitting an application is just one part of participating. With the new design foundations in place, we’re excited to reimagine what happens after submission - from tracking application status to preparing for the event itself. This will form the basis of a more complete “Hackathon Dashboard” that carries participants from application to check-in and beyond.
