% bird(Name, CanFly).
% CanFly is 'yes' or 'no'

bird(sparrow, yes).
bird(penguin, no).
bird(ostrich, no).
bird(eagle, yes).
bird(parrot, yes).
bird(kiwi, no).
bird(bat, no). % not a bird, included for interest

% Rule: flies(Name)
% True if the bird can fly

flies(Name) :-
    bird(Name, yes).

% Rule: cannot_fly(Name)
% True if the bird cannot fly

cannot_fly(Name) :-
    bird(Name, no).

 % Rule: check_flying_status(Name)
% Tells if the bird flies or not

check_flying_status(Name) :-
    bird(Name, yes),
    write(Name), write(' can fly.'), nl.

check_flying_status(Name) :-
    bird(Name, no),
    write(Name), write(' cannot fly.'), nl.
