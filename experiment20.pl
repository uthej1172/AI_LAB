% planet(Name, SizeInKm, DistanceFromSunInMillionKm, NumMoons, Atmosphere).

planet(mercury, 4879, 57.9, 0, no).
planet(venus, 12104, 108.2, 0, yes).
planet(earth, 12742, 149.6, 1, yes).
planet(mars, 6779, 227.9, 2, yes).
planet(jupiter, 139820, 778.5, 79, yes).
planet(saturn, 116460, 1434, 82, yes).
planet(uranus, 50724, 2871, 27, yes).
planet(neptune, 49244, 4495, 14, yes).
planet(pluto, 2376, 5906, 5, no).  % dwarf planet, included for interest

% Rule: is_inner_planet/1 (closer than 300 million km)
is_inner_planet(Name) :-
    planet(Name, _, Distance, _, _),
    Distance < 300.

% Rule: has_atmosphere/10
has_atmosphere(Name) :-
    planet(Name, _, _, _, yes).

% Rule: most_moons/1
most_moons(Name) :-
    findall(Moons, planet(_, _, _, Moons, _), MoonsList),
    max_member(Max, MoonsList),
    planet(Name, _, _, Max, _).
