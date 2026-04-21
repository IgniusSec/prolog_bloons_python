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

% Support
torre('Banana Farm').
torre('Spike Factory').
torre('Monkey Village').
torre('Engineer Monkey').

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

tipo('Banana Farm', support).
tipo('Spike Factory', support).
tipo('Monkey Village', support).
tipo('Engineer Monkey', support).

% =========================
% PROPRIEDADES DAS TORRES
% =========================

alcance_global('Sniper Monkey').
alcance_global('Monkey Ace').
alcance_global('Heli Pilot').

alcance_curto('Tack Shooter').
alcance_curto('Ice Monkey').
alcance_curto('Glue Gunner').

dano_area('Bomb Shooter').
dano_area('Mortar Monkey').

ataque_rapido('Super Monkey').
ataque_rapido('Ninja Monkey').

multi_direcional('Tack Shooter').

congela('Ice Monkey').
retarda('Glue Gunner').

gera_dinheiro('Banana Farm').
buffa('Monkey Village').
buffa('Alchemist').

% =========================
% CAPACIDADES
% =========================

detecta_camuflado('Ninja Monkey').
detecta_camuflado('Monkey Sub').

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
bloon('Black Bloon').
bloon('White Bloon').
bloon('Lead Bloon').
bloon('Zebra Bloon').
bloon('Rainbow Bloon').
bloon('Ceramic Bloon').
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
imune_congelamento('White Bloon').

% =========================
% HIERARQUIA
% =========================

gera('MOAB', 'Ceramic Bloon').
gera('BFB', 'MOAB').
gera('ZOMG', 'BFB').
gera('BAD', 'ZOMG').

gera('Ceramic Bloon', 'Rainbow Bloon').
gera('Rainbow Bloon', 'Zebra Bloon').
gera('Zebra Bloon', 'Black Bloon').
gera('Zebra Bloon', 'White Bloon').

% =========================
% CONTEXTO
% =========================

fase(inicial).
fase(middle).
fase(late).

aparece('Camo Bloon', middle).
aparece('Lead Bloon', middle).
aparece('MOAB', middle).
aparece('BFB', late).
aparece('ZOMG', late).
aparece('BAD', late).
    
    
    