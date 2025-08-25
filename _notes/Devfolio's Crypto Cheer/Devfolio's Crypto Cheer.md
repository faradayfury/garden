---
title: Devfolio's Crypto Cheer
date: 2025-08-10
---

Cheering is a way of supporting the projects and builders you love on Devfolio. We turned hackathon projects into investable ideas. Since launch, Crypto Cheer has processed over 2 ETH in direct builder support.

---

## Context

Devfolio hosts 800k+ builders who've submitted 75k+ projects across 1,300+ hackathons. But our data revealed a sobering truth: less than 10% of projects showed any activity 30 days post-event. Even prize-winning projects, validated by judges, lost momentum.

The creator economy had already solved this. GitHub Sponsors hit $100M+ in developer sponsorships. Buy Me a Coffee processed millions. The model worked, but hackathon projects fell through the cracks because:

- Too nascent for GitHub Sponsors (which favors established libraries)
- Not content creators for Buy Me a Coffee
- Team-based, not just solo creators
- Building from 100+ countries with varying payment access

Our quadratic funding/voting experiments at InOut2020 and ETHforAll proved demand—₹2.9L across 3,300 micro-transactions. But these were one-time events. We needed something permanent.

- <a href="https://devfolio.co/blog/funding-for-every-inout-7-0-project/" style="text-decoration: underline;">Funding for every InOut 7.0 project</a>
- <a href="https://devfolio.co/blog/introooducing-quadratic-voting-on-devfolio/" style="text-decoration: underline;">Introducing Quadratic Voting on Devfolio</a>

## My Contribution

As the solo product designer on this initiative, I helped with the strategic vision and shaped the execution details:

- 20+ interviews with builders, judges, and mentors that revealed the progressive validation gap
- Helped creating the sticker visual language, working with an external illustrator
- Partnered directly with the CEO on positioning and with engineering on technical constraints around wallet integration
- Monitored user behavior and gathered feedback that informed our roadmap

## The Signals

It was not just us wanting to solve this problem, here is what we had been observing through multiple channels.

Support tickets & IRL conversations with builders:

- "How can we keep getting feedback after the hackathon?"
- "Is there a way to share my ETH address on the project page?"
- "How do I know if people are still interested in my project?"
<br>
<br>

Community (Discord/Telegram) & Project pages:

- Builders adding their crypto addresses to project descriptions
- Showcase channels turning into pseudo-fundraising threads

(We'd seen this pattern so many times, even caught ourselves doing it as organizers wanting to support teams)
<br>
<br>

Post-Hackathon Survey: We surveyed about 1,200 builders 30 days after their hackathons:

- 73% wanted to continue building on their projects but felt "no community validation"
- 61% said supportive comments mattered more than winning prizes
- 89% would want to continue if they knew "even 10 people genuinely wanted it"
<br>
<br>

Judge & Partner Feedback: We interviewed about 20 hackathon judges/mentors and discovered a hidden frustration:

- "I wanted to personally back 3-4 projects but had no mechanism" - ETHIndia Judge
- "I gave feedback but wished I could put $100 behind it to show I'm serious" - Mentor from Polygon Fellowship
<br>
<br>


The real insight came from one of the IRL conversations:

> "Winning $500 is cool, but having 50 people put $10 behind my idea? That tells me people actually want this to exist." - A hackathon participant

---
## The Hidden Problem

It wasn't just about money. Builders needed progressive validation, a bridge between "hackathon project" and "fundable startup." Traditionally, you either won prizes or you didn't. There was less middle ground for community-validated experiments.

How might we enable the community to progressively validate and financially support hackathon projects in a way that builds both momentum and credentials regardless of the timeline of the hackathon? (also, side projects?)

---
## Key Constraints

Technical Constraints

- 4-week sprint to launch at ETHIndia Fellowship 3.0
- Ethereum mainnet only (L2 integration out of scope)
- Limited to Metamask, Rainbow and WalletConnect SDKs
- No fiat payment rails available

User Constraints

- One of the first crypto features on Devfolio, most users without connected wallets
- Global audience with varying crypto adoption rates
- Teams of 1-5 members with different technical sophistication

Business Constraints

- No platform fees (100% to builders)
- Compliance with financial regulations across jurisdictions
- Need to avoid investment/returns language

---
## Design Process: Finding the Right Metaphor

We started with the obvious solution: direct tipping. But it felt wrong immediately—felt too transactional, like charity rather than genuine support. There was no emotional connection in sending $10 to a project; it reduced everything to a financial transaction when we knew builders needed something more.

So we pivoted to explore a kudos/badge system. This solved the emotional expression problem but created a new one: without skin in the game, these became just another form of meaningless internet points. Builders already had GitHub stars and Twitter likes—adding more weightless validation wouldn't solve their financial support needs.

We then considered micro-investments, thinking maybe we needed to be more formal about the financial relationship. But this quickly spiraled into legal complexity, created unrealistic expectations about returns, and would require extensive compliance infrastructure we didn't have time to build.

That's when we landed on digital stickers with attached value. It flipped the entire mental model: emotional expression first, money second. Everyone understands stickers from Telegram or Discord—they're fun, expressive, and personal. By attaching ETH to them, we created something that was low commitment but carried meaningful signal. You weren't "investing" or "donating"—you were cheering, and that cheer happened to have value attached.

---
## The Experiment Hypothesis

We believed that if we enabled micro-sponsorships through digital stickers, then builders would receive both financial and emotional validation to continue their projects, because the act of putting money behind an idea is the strongest signal of genuine interest.

---

## What We Built

### Core Concept

Digital stickers with attached ETH values. Not donations—cheers. The semantic difference mattered: you cheer for something you believe in, you donate to something that needs help.

### The Wallet Challenge

This was one of the first crypto-native features of Devfolio, and we discovered that less than 5% of our users had pre-connected wallets. Instead of seeing this as a problem to solve immediately, we made a strategic decision: focus on the 5% who could cheer today, learn from them, then expand.

<br>


Why We Accepted the Friction

We deliberately chose to:

- Validate the core hypothesis with crypto-native users first
- Avoid building complex fiat-to-crypto bridges before proving demand
- Learn from the most engaged early adopters
- Keep the experiment scope manageable for a 4-week sprint
<br>
<br>

Approach

- For crypto-natives: Seamless one-click wallet connection
- For everyone else: Clear educational CTA about creating a wallet, but no hand-holding
- Future roadmap: UPI integration and fiat rails (after validation)

If people with crypto wouldn't cheer, adding payment complexity wouldn't fix that. If they would cheer, we could then invest in reducing friction for everyone else.

<br>

### Key Design Decisions

Smart Contract Design

Equal Splits Philosophy:
We made the deliberate choice for automatic equal splits among team members. No voting, no percentages, no disputes.

- This prevented team friction over contribution percentages
- Simplified the smart contract logic
- Also aligned with hackathon culture of collaborative building

Transparency Mechanisms

- Every transaction visible on Etherscan
- Team member addresses public on through the splitting smart contract
- Running total of support displayed prominently

The Sticker System

- Good Job: 0.0025 ETH
- Rooting for You: 0.0050 ETH
- Keep Shipping: 0.0250 ETH
- Never Stop Building: 0.0500 ETH

![[assets/Pasted image 20250824144744.png]]

<br>

Basket Model

- Collect multiple stickers for a project
- Single transaction at checkout
- Reduced gas fee instead compared to individual transactions

![[assets/Pasted image 20250824150959.png]]
<br>


Team-Centric Distribution

- Auto-split equally among all team members
- On-chain transparency via smart contracts
- No platform fees—100% to builders

<br>

Social Proof Layer

- Cheers visible on project page (Cheer card & Cheered comment)
- Social sharing for Twitter/Farcaster
- EAS attestations for credential building

![[assets/Pasted image 20250824165017.png]]

---

## Final Designs & Flows

### Making Cheering Discoverable

We positioned the Cheer CTA directly alongside the like button on project pages—giving it equal visual weight to signal this was a core interaction, not a hidden feature. The rocket icon was deliberate: while hearts and thumbs-up felt passive, rockets symbolize momentum, growth, and helping something take off. This aligned perfectly with our mission of helping projects get off the ground.

Below the project description, we added a dedicated "Cheer Project" section that served as both a call-to-action and social proof display. This dual purpose was key—builders could see who believed in them while visitors understood this was a community-backed project encouraging them to also cheer for this project.

![[assets/Pasted image 20250824153910.png]]

<br>

### The Sticker Selection Experience

The carousel interface let users browse through our four sticker options, each with its message and value clearly displayed. We intentionally made this feel playful and light—more like choosing the perfect emoji reaction than making a financial decision. Users could add multiple stickers to their basket all for the project they wanted to show support.

![[assets/Pasted image 20250824162851.png]]

<br>

### Checkout with Meaning

The summary screen showed all selected stickers with the total ETH cost, maintaining transparency about the transaction. But here's where we added unexpected depth: after wallet connection, users could add a personal message. This wasn't in our original sprint plan, but we squeezed it in after early testers said cheering felt incomplete without being able to say _why_ they were cheering.

These messages became "cheered comments" on project pages—not just financial support but specific feedback about what resonated. It transformed each cheer from a transaction into a relationship.

![[assets/Pasted image 20250824162902.png]]

<br>

### Building Reputation Through Cheers

The completion flow celebrated both the cheerer and the builder. A cheer card appeared on the project page showing the cumulative support amount and a history of supporters. Each cheer generated an on-chain attestation through EAS (Ethereum Attestation Service), creating a permanent, verifiable record of community support.

This wasn't just about the money—it was about creating a visible trail of belief. When builders looked at their project page, they didn't just see a number; they saw faces, names, and messages from people who wanted them to succeed.

![[assets/Pasted image 20250824165906.png]]

<br>

If a user tries to cheer for a project who's builders do not have their wallets linked, they would receive a platform notification & an email, notifying them of someone wanting to cheer for their project. Clicking on the CTA would allow them to connect their wallets to Devfolio.

![[assets/Pasted image 20250825124059.png]]

---
## The Pilot: ETHIndia Fellowship 3.0

We didn't launch Crypto Cheer broadly, we ran a controlled experiment with specific parameters:

- Only fellowship projects could receive cheers (35 projects from ETHIndia Fellowship 3.0)
- All builders pre-verified: We required wallet connection during fellowship application
- Contained ecosystem: 40 builders who understood crypto + their immediate network

<br>

By limiting who could receive cheers, we:

- Ensured 100% of recipients could actually claim their funds
- Avoided the frustration of cheers going to old wallets
- Created scarcity that drove engagement ("only these special projects")
- Maintained quality control during the experiment phase

<br>

Pre-Launch Verification Before enabling cheers, we verified:

- All 40 fellowship participants had valid ETH addresses
- Team compositions were locked and agreed upon
- Wallet addresses were tested and confirmed
- Builders understood how splits would work

This was like running a laboratory experiment with perfect conditions. If cheering didn't work here, with crypto-native builders and pre-connected wallets, it wouldn't work anywhere.

<br>

Even though only fellowship projects could receive cheers, anyone could send them. This asymmetry was intentional:

- Builders' friends and family could support them
- Judges and mentors could back projects they believed in
- The broader Devfolio community could participate
- We could measure organic spread beyond the core group

The result: 151 cheers from both within and outside the fellowship cohort, proving the concept had appeal beyond just the participants themselves.

---
## Success Metrics?

Here's the honest truth: we didn't define rigorous success metrics. This wasn't a carefully orchestrated A/B test with statistical significance calculations.

We built Crypto Cheer because we wanted to cheer for projects. We'd been organizers, judges, mentors, and participants. We'd felt that frustration of wanting to back a team with more than just words.
<br>


The plan was:

- Ship it fast for EIF3.0
- Be the loudest users ourselves
- Make as much noise as possible
- See if it resonates

This way we would be supporting 40 builders and the projects they built along with a new feature which would enable others to also support these builders.

<br>

### What We Actually Cared About Measuring

While we didn't set formal KPIs, we were curious about:

- Would anyone actually attach money to a sticker?
- Would builders feel good receiving cheers?
- Would the community organically adopt it without us pushing everytime?
- Could we personally resist cheering for cool projects? (Spoiler: we couldn't)

---
## What Happened

### What Worked

- A total of 151 cheers across 35 projects
- 82% of projects received at least one cheer
- Average contribution: $25 per project
- "Good Job" accounted for 60% of all cheers

We couldn't help ourselves, we were among the most active cheerleaders

<br>

### What Didn't Work

- Wallet connection dropout: 34% abandoned at Wallet connect prompt
- Mobile experience: This was a desktop only experiment due to limitations in bandwidth

The 34% dropout at wallet connection was expected and acceptable. The 66% who completed the flow were our true test cohort, people with both the means and motivation to support builders. Their behavior would tell us if Crypto Cheer had a future worth building for.

This constraint turned out to be a feature: our early cheerleaders were sophisticated enough to understand they were participating in something experimental, making their feedback more valuable than a broader but less engaged audience.

<br>

### What Surprised Us

Builders cheering each other: 30% of cheers came from other participants.

<br>

### The Unexpected Signal

Three projects included their cheer counts in accelerator applications. This wasn't a metric we tracked but builders told us. They were using community backing as credibility signals for investors. That's when we knew we'd built something real.

We also find people using cheer day to day support builders and projects which they believe in by putting in their money and a word out on their socials organically!

![[assets/Pasted image 20250825130227.png]]

---
## Final Results & Decision

### Quantitative Outcomes

- $1,000+ in cheers during 1-week preview
- 56% of cheered projects showed activity after 30 days (vs. 10% baseline)
- Marketing: $0 (purely organic)
- Platform validation: 3 projects cited cheers in accelerator applications

The Verdict: Ship with expanded rollout

The hunger for validation in the builder community runs deeper than prizes. Micro-sponsorships aren't just about money—they're about creating a thousand small yes votes that collectively say Never Stop Building.

---
## Future updates

- L2 support, popular chains like Base, Optimism, Arbitrum, Polygon etc.
- Parallel mobile experience
- A new sticker with a lower barrier to entry, LFG at 0.00025 ETH
- Cheer for builders, not just projects

![[assets/Pasted image 20250825123410.png]]
