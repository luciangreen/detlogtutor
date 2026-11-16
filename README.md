# detlogtutor

exercises in turning nondeterministic Prolog into deterministic code, graded automatically. Each exercise has a nondeterministic reference (its solutions, in order, are the expected answer); a student's answer must give that list as its one and only solution, on every input up to a size bound. Grades are pass, wrong(Input, Expected, Got), or nondeterministic(Input, Solutions).

## Use

```prolog
?- use_module(prolog/detlogtutor).
?- exercise(big_members, Task, _), grade(big_members, [L, O]>>include([X]>>(X > 2), L, O), G).   % G = pass
?- grade(big_members, [L, O]>>(member(O, L), O > 2), G).      % G = wrong(...): one element is not the list
?- grade(pairs, [L, O]>>findall(X-Y, (member(X, L), member(Y, L)), O), G).   % G = pass
```

## Proofs

`proofs/theorems.pl` proves 6 theorems by exhaustion: each one is checked for every case in a finite domain that covers every branch of the definitions. every exercise, its model answer and every planted mistake, on every list of up to 3 of 1, 3 and 4.

1. Every model answer passes its exercise.
2. Every planted mistake is caught.
3. A wrong grade is genuine: on that input the answer's one solution really differs from the expected list.
4. A nondeterministic answer is reported as such, with more than one solution.
5. Grading is deterministic: one grade per answer.
6. The model answer equals the expected list on every input (the reference and answer agree).

```sh
swipl -g main -t halt proofs/theorems.pl
```

## 200 inputs and outputs

`io/ios.txt` lists 200 inputs and outputs from real runs, and `io/ios.pl` has the same as Prolog facts. The inputs come from a fixed seed (`io/cases.pl`). `swipl -g check -t halt io/run.pl` runs them again. It fails if any output changes, or if a predicate doesn't confirm its own recorded output, which checks steadfastness. GitHub Actions runs the proofs and the examples on every push, and records the examples on the first push.

Licence: BSD-3-Clause.
