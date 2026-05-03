% =========================
% TORRES
% =========================

% Primary
torre('Dart Monkey').
torre('Boomerang Monkey').
torre('Bomb Shooter').
torre('Tack Shooter').
torre('Ice Monkey').
torre('Glue Gunner').

% Military
torre('Sniper Monkey').
torre('Monkey Sub').
torre('Monkey Buccaneer').
torre('Monkey Ace').
torre('Heli Pilot').
torre('Mortar Monkey').
torre('Dartling Gunner').

% Magic
torre('Wizard Monkey').
torre('Super Monkey').
torre('Ninja Monkey').
torre('Alchemist').
torre('Druid').
torre('Mermonkey').

% Support
torre('Banana Farm').
torre('Spike Factory').
torre('Monkey Village').
torre('Engineer Monkey').
torre('Beast Handler').

% =========================
% TIPOS
% =========================

tipo('Dart Monkey', primary).
tipo('Boomerang Monkey', primary).
tipo('Bomb Shooter', primary).
tipo('Tack Shooter', primary).
tipo('Ice Monkey', primary).
tipo('Glue Gunner', primary).

tipo('Sniper Monkey', military).
tipo('Monkey Sub', military).
tipo('Monkey Buccaneer', military).
tipo('Monkey Ace', military).
tipo('Heli Pilot', military).
tipo('Mortar Monkey', military).
tipo('Dartling Gunner', military).

tipo('Wizard Monkey', magic).
tipo('Super Monkey', magic).
tipo('Ninja Monkey', magic).
tipo('Alchemist', magic).
tipo('Druid', magic).
tipo('Mermonkey', magic).

tipo('Banana Farm', support).
tipo('Spike Factory', support).
tipo('Monkey Village', support).
tipo('Engineer Monkey', support).
tipo('Beast Handler', support).

% =========================
% PROPRIEDADES DAS TORRES
% =========================

alcance_global('Sniper Monkey').
alcance_global('Monkey Ace').
alcance_global('Heli Pilot').
alcance_global('Mortar Monkey').
alcance_global('Dartling Gunner').

alcance_curto('Tack Shooter').
alcance_curto('Ice Monkey').
alcance_curto('Glue Gunner').

dano_area('Bomb Shooter').
dano_area('Mortar Monkey').

ataque_rapido('Super Monkey').
ataque_rapido('Ninja Monkey').
ataque_rapido('Dartling Gunner').

multi_direcional('Tack Shooter').

congela('Ice Monkey').
retarda('Glue Gunner').

gera_dinheiro('Banana Farm').
buffa('Monkey Village').
buffa('Alchemist').
buffa('Engineer Monkey').

% =========================
% CAPACIDADES
% =========================

detecta_camuflado('Ninja Monkey').
detecta_camuflado('Monkey Sub').
detecta_camuflado('Spike Factory').

quebra_lead('Bomb Shooter').
quebra_lead('Mortar Monkey').
quebra_lead('Alchemist').

dano_alto('Super Monkey').
dano_alto('Sniper Monkey').
dano_alto('Monkey Ace').

% =========================
% BLOONS
% =========================

bloon('Red Bloon').
bloon('Blue Bloon').
bloon('Green Bloon').
bloon('Yellow Bloon').
bloon('Pink Bloon').
bloon('Purple Bloon').
bloon('Black Bloon').
bloon('White Bloon').
bloon('Lead Bloon').
bloon('Zebra Bloon').
bloon('Rainbow Bloon').
bloon('Ceramic Bloon').
bloon('Camo Bloon').
bloon('MOAB').
bloon('BFB').
bloon('ZOMG').
bloon('DDT').
bloon('BAD').

% =========================
% PROPRIEDADES DOS BLOONS
% =========================

rapido('Yellow Bloon').
rapido('Pink Bloon').
rapido('DDT').

camuflado('DDT').
camuflado('Camo Bloon').

regenera('Rainbow Bloon').
regenera('Zebra Bloon').

resistente('Lead Bloon').
resistente('Ceramic Bloon').
resistente('MOAB').
resistente('BFB').
resistente('ZOMG').
resistente('BAD').

imune_explosao('Black Bloon').
imune_explosao('Zebra Bloon').

imune_congelamento('White Bloon').
imune_congelamento('Zebra Bloon').

imune_magia('Purple Bloon').

% =========================
% HIERARQUIA
% =========================

gera('BAD', 'ZOMG').
gera('BAD', 'DDT').
gera('ZOMG', 'BFB').
gera('BFB', 'MOAB').
gera('MOAB', 'Ceramic Bloon').
gera('DDT', 'Ceramic Bloon').

gera('Ceramic Bloon', 'Rainbow Bloon').
gera('Rainbow Bloon', 'Zebra Bloon').
gera('Zebra Bloon', 'Black Bloon').
gera('Zebra Bloon', 'White Bloon').

gera('Lead Bloon', 'Black Bloon').
gera('Purple Bloon', 'Pink Bloon').

gera('Black Bloon', 'Pink Bloon').
gera('White Bloon', 'Pink Bloon').
gera('Pink Bloon', 'Yellow Bloon').
gera('Yellow Bloon', 'Green Bloon').
gera('Green Bloon', 'Blue Bloon').
gera('Blue Bloon', 'Red Bloon').

% =========================
% CONTEXTO
% =========================

fase(inicial).
fase(middle).
fase(late).

aparece('Camo Bloon', middle).
aparece('Lead Bloon', middle).
aparece('Purple Bloon', middle).
aparece('MOAB', middle).
aparece('BFB', late).
aparece('ZOMG', late).
aparece('DDT', late).
aparece('BAD', late).
    
% =========================
% REGRA Queries
% =========================

lista_bloons_fase(inicial, X):-
  findall(B, (bloon(B), \+aparece(B, _)), X), !.

lista_bloons_fase(Fase, X):-
  findall(B, (bloon(B), aparece(B, Fase)), X),!.
