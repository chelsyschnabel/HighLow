# Facilitator Guide: High Low Live Workshop

Oct 21, 2026 · @Zyelda

## Session at a glance

This guide adapts the High Low Card Game lesson, originally built as a multi-day classroom assignment, into a single live virtual workshop that a trained presenter can run.

- **Audience:** adult beginners learning R, such as educators, analysts, or new data learners, with mixed experience levels.
- **Format:** live virtual workshop, 75 minutes, with a main session and breakout pairs.
- **Group size:** 8 to 30 participants, with one presenter and one co-host who manages chat and breakout rooms.
- **Prerequisites:** basic R syntax, creating vectors, assigning objects, and calling a function.
- **Session goal:** participants leave able to write a short program that uses conditionals and loops, and can explain when to use a for loop versus a while loop.

**Learning outcomes.** By the end of the session, participants can:

1. Use `if` and `else` to make a decision in code.
2. Use `sample()` to draw a random card and `readline()` to take player input.
3. Convert user input from character to numeric, and explain why it's needed.
4. Repeat a game with a `for` loop for a set number of rounds and a `while` loop until a condition is met.
5. Find and fix common errors, such as missing braces and type mismatches.

## Before the session

**One week before**

- Send the registration confirmation with the date, time, join link, and what to install: R 4.0 or newer, and RStudio.
- Share the starter file and a one-page setup check, so technical problems surface before the session, not during it.
- Ask one registration question: "How comfortable are you writing R code today?" (new, some practice, comfortable). Use the answers to plan breakout pairs.

**Two days before**

- Send a reminder with the join link and a short setup checklist.
- Ask participants to have a pen and paper handy, or a deck of cards if they have one, for the opening game.

**Presenter rehearsal (30 minutes, two to three days before)**

- Run the opening game and the first live-coding segment out loud, with the co-host as the audience.
- Time each segment against the run of show, and mark what to cut if the session runs long. The extension choice is the first thing to trim.
- Practice the two most common errors live (a missing brace, and comparing character input to a number), so fixing them on screen feels natural.
- Agree on roles: the presenter teaches, and the co-host watches chat, manages breakout rooms, and flags questions.

**Day of**

- Open the session 10 minutes early, with the starter code visible and a welcome slide on screen.
- Have a backup copy of the completed code ready to paste if live coding stalls.
- Start the recording once the welcome begins.

## Run of show

| Time | Segment | What happens | Who |
| --- | --- | --- | --- |
| 0:00-0:05 | Welcome | Goals for the session, a quick chat poll on R experience, and how to ask questions. | Presenter |
| 0:05-0:15 | Play the game | The presenter "deals" a card from 1 to 9 on screen. Participants guess higher or lower in chat, then see their card. Play three rounds and ask what decisions the game makes each time. | Presenter, co-host tracks chat |
| 0:15-0:30 | Build one round | Live-code a single round together: `sample()` to draw cards, `readline()` for the guess, and `if`/`else` to decide win or lose. Participants code along. | Presenter |
| 0:30-0:35 | Quick check | Show a short code snippet and ask participants to predict the output in chat before running it. | Presenter |
| 0:35-0:50 | Multiple rounds | Explain `for` loops (a set number of rounds) versus `while` loops (play until a condition is met). Pairs extend their game in breakout rooms. | Pairs, presenter and co-host visit rooms |
| 0:50-1:00 | Debug clinic | Back in the main room, walk through the most common errors from breakouts, including missing braces and character-versus-numeric input. | Presenter |
| 1:00-1:10 | Choose an extension | Participants pick one: track the score, deal without replacement so there are no ties, or calculate the odds of winning a given guess. | Individuals |
| 1:10-1:15 | Wrap up | Exit task, survey link, and a clear next step. | Presenter |

If the session runs long, shorten the extension choice first, then the quick check. Protect the breakout time, since that's where participants practice.

## Facilitation notes

**Start with the game, not the code.** Playing first gives everyone, including complete beginners, a concrete picture of the logic before any syntax appears. Refer back to it often: "Remember when you guessed higher? That's this `if` line."

**Mixed experience levels**

- Pair a newer participant with a more experienced one in breakouts, using the registration answers.
- Give experienced participants the extensions early, so they stay engaged without pulling the pace forward for everyone.
- Keep the completed code for each step in a shared file, so anyone who falls behind can catch up and keep going.

**Handling questions**

- The co-host collects questions in chat and raises them at natural pauses rather than interrupting live coding.
- Answer questions that help the whole group live. Take individual troubleshooting into a breakout room or follow up after the session.
- If you don't know an answer, say so, note it, and include it in the follow-up email.

**Common errors to expect**

- **Missing braces or parentheses:** pause and count opening and closing braces aloud together.
- **Comparing character input to a number:** `readline()` always returns text, so the comparison behaves unexpectedly. Show the bug first, then fix it with `as.numeric()`. Seeing it break makes the lesson stick.
- **Infinite while loops:** show how to stop a running loop, then check that the loop condition can actually change.

**Coaching notes for new presenters**

- Narrate your thinking while you code. Participants learn as much from hearing why you type something as from what you type.
- Make mistakes visible and fix them calmly. It shows participants that errors are a normal part of programming.
- Check for understanding with a prediction ("What will this print?") rather than "Any questions?", which rarely gets answers in a virtual room.

**Planned support: a visual version for participants who struggle.** Before running this session, I would build a Scratch version of the High Low game, played as on-screen cards with Higher and Lower buttons, so participants who get stuck on R syntax can see the same logic as visual blocks first. Each block maps to a line of R:

| Scratch block | R equivalent |
| --- | --- |
| pick random 1 to 9 | `sample(1:9, 1)` |
| ask and wait, or a button click | `readline()` |
| if / else | `if () { } else { }` |
| repeat 5 | `for (i in 1:5)` |
| repeat until | `while (!condition)` |

Use it during the debug clinic or in a breakout room: have the participant play a round, point to the matching block, then find the same step in their R code. Seeing the logic first and the syntax second helps learners realize the concepts are the same and only the notation differs. The Scratch version also gives everyone a shared, visual way to play the opening game without seeing any code.

## After the session

**Exit task (in the last five minutes).** Participants post one line in chat: "I'd use a while loop when..." This gives a quick, visible check of the session's key idea.

**Within 24 hours**

- Send a follow-up email with the recording, the completed code for each step, answers to any open questions, and a link to the survey.
- Include one clear next step, such as a short practice challenge that adds score tracking, or the next session in the series.

**Recording handoff**

- Trim the recording and add chapter markers for each segment, so people can jump straight to the part they need.
- Make sure captions are on and accurate before publishing.
- Pull the debug clinic into a short standalone clip. It's the segment most people will look for later.
- Publish it to the recording library with a clear title, the prerequisites, and the starter files.

**Survey (three questions)**

1. How confident are you writing a loop on your own? (1 to 5)
2. What was most useful?
3. What would you change?

**Measuring impact**

| Measure | What it tells you |
| --- | --- |
| Registration and attendance rate | Whether the session reached the people who signed up |
| Chat participation during the game and quick check | Whether the format kept people engaged |
| Exit task responses | Whether participants grasped the key concept |
| Practice challenge submissions | Whether participants applied the skill after the session |
| Survey confidence and feedback | What to keep, change, or cut next time |

After each session, the presenter and co-host spend 10 minutes reviewing these together and note one change for the next run.
