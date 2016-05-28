# stampy

![the-simpsons-s5e17_625x352](https://cloud.githubusercontent.com/assets/355756/15626807/398cb290-2512-11e6-9288-81e98ebe0605.jpg)

> Well, little girl, I've had lots of jobs in my day: whale-hunter, seal-clubber, president of the Fox network. And yes, like most people, I've dealt a little ivory.
> - Mr Blackheart in *Bart Gets An Elephant* (1994)

Stop forgetting things, maybe.

This is intended to be a spaced-repetition flashcard system that doesn't suck, satisfying the following requirements:

- Cards form a dependency graph of some sort. Use the graph to hone in on weaknesses.
- Every card has an explanation, and optionally a 'fact'
- Cards can be plugged into QuickCheck-style generators, testing more general properties.
- Supports markdown and LaTeX
- Custom response validation:
  - Hard validation: precise string or numeric match
  - Soft validation: reveal the answer and allow the user to interactively grade themselves low, medium, high
  - Validation function: I will burn these into the code for now and cook up a DSL if it seems useful
- Some kind of endless interactive loop

TODO cook up some examples where the dependency tree would be useful
