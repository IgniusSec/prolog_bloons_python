% =========================
% TORRES
% =========================

% Primary
torre(1, 'Dart Monkey').
torre(2, 'Boomerang Monkey').
torre(3, 'Bomb Shooter').
torre(4, 'Tack Shooter').
torre(5, 'Ice Monkey').
torre(6, 'Glue Gunner').
torre(25, 'Desperado').

% Military
torre(7, 'Sniper Monkey').
torre(8, 'Monkey Sub').
torre(9, 'Monkey Buccaneer').
torre(10, 'Monkey Ace').
torre(11, 'Heli Pilot').
torre(12, 'Mortar Monkey').
torre(13, 'Dartling Gunner').

% Magic
torre(14, 'Wizard Monkey').
torre(15, 'Super Monkey').
torre(16, 'Ninja Monkey').
torre(17, 'Alchemist').
torre(18, 'Druid').
torre(19, 'Mermonkey').

% Support
torre(20, 'Banana Farm').
torre(21, 'Spike Factory').
torre(22, 'Monkey Village').
torre(23, 'Engineer Monkey').
torre(24, 'Beast Handler').

% =========================
% TIPOS
% =========================

tipo(1, primary).
tipo(2, primary).
tipo(3, primary).
tipo(4, primary).
tipo(5, primary).
tipo(6, primary).

tipo(7, military).
tipo(8, military).
tipo(9, military).
tipo(10, military).
tipo(11, military).
tipo(12, military).
tipo(13, military).

tipo(14, magic).
tipo(15, magic).
tipo(16, magic).
tipo(17, magic).
tipo(18, magic).
tipo(19, magic).

tipo(20, support).
tipo(21, support).
tipo(22, support).
tipo(23, support).
tipo(24, support).

% =========================
% PROPRIEDADES DAS TORRES
% =========================

alcance_global(7).
alcance_global(10).
alcance_global(11).
alcance_global(12).
alcance_global(13).

alcance_curto(4).
alcance_curto(5).
alcance_curto(6).

dano_area(3).
dano_area(12).

ataque_rapido(15).
ataque_rapido(16).
ataque_rapido(13).

multi_direcional(4).

congela(5).
retarda(6).

% =========================
% GERAÇÃO DE DINHEIRO (RENDA)
% =========================

gera_dinheiro(20, '0-0-0', 80).
gera_dinheiro(20, '1-0-0', 120).
gera_dinheiro(20, '2-0-0', 160).
gera_dinheiro(20, '3-0-0', 320).
gera_dinheiro(20, '4-0-0', 1500).
gera_dinheiro(20, '5-0-0', 6000).

gera_dinheiro(20, '0-2-0', 100).
gera_dinheiro(20, '1-2-0', 150).
gera_dinheiro(20, '2-2-0', 200).
gera_dinheiro(20, '3-2-0', 400).
gera_dinheiro(20, '4-2-0', 1875).
gera_dinheiro(20, '5-2-0', 7500).

gera_dinheiro(20, '0-3-0', 115).
gera_dinheiro(20, '1-3-0', 187).
gera_dinheiro(20, '2-4-0', 250).

gera_dinheiro(20, '0-0-3', 320).
gera_dinheiro(20, '0-0-4', 1120).
gera_dinheiro(20, '0-0-5', 5120).

gera_dinheiro(20, '1-0-3', 360).
gera_dinheiro(20, '1-0-4', 1260).
gera_dinheiro(20, '1-0-5', 5260).

gera_dinheiro(20, '2-0-3', 400).
gera_dinheiro(20, '2-0-4', 1400).
gera_dinheiro(20, '2-0-5', 5400).

gera_dinheiro(7, '0-4-0', 1500).
gera_dinheiro(7, '0-5-0', 3000).

gera_dinheiro(9, '0-0-3', 200).
gera_dinheiro(9, '0-0-4', 500).

gera_dinheiro(11, '0-4-0', 1800).
gera_dinheiro(11, '0-5-0', 4500).

gera_dinheiro(18, '0-4-0', 240). 
gera_dinheiro(18, '0-5-0', 1000). 

buffa(22).
buffa(17).
buffa(23).

% =========================
% CAPACIDADES
% =========================

% =========================
% CAMUFLADO (DETECÇÃO)
% =========================

camuflado(16, '0-0-0').
camuflado(21, '0-0-0').
camuflado(1, '0-0-2').
camuflado(5, '2-0-0').
camuflado(7, '0-1-0').
camuflado(25, '0-1-0').
camuflado(8, '3-0-0').
camuflado(9, '0-0-2').
camuflado(10, '0-2-0').
camuflado(11, '0-2-0').
camuflado(12, '0-0-3').
camuflado(13, '0-1-0').
camuflado(14, '0-0-2').
camuflado(15, '0-0-2').
camuflado(18, '1-0-0').
camuflado(23, '0-2-0').
camuflado(19, '0-0-1').
camuflado(24, '0-0-2').

camuflado(22, '0-2-0'). % Village (Monkey Village)
camuflado(23, '0-3-0').

% =========================
% LEAD
% =========================

lead(3, '0-0-0').
lead(12, '0-0-0').
lead(17, '0-0-0').

lead(1, '4-0-0').
lead(2, '0-0-2').
lead(4, '3-0-0').
lead(5, '2-0-0').
lead(6, '2-0-0').
lead(7, '1-0-0').
lead(25, '0-3-0').
lead(8, '0-2-0').
lead(9, '0-2-0').
lead(10, '0-0-4').
lead(11, '3-0-0').
lead(13, '0-3-0').
lead(14, '0-1-0').
lead(15, '2-0-0').
lead(16, '0-0-3').
lead(18, '1-0-0').
lead(21, '2-0-0').
lead(23, '0-3-0').
lead(24, '3-0-0').
lead(22, '0-3-0').

% =========================
% FROZEN
% =========================

frozen(3, '0-0-0').
frozen(12, '0-0-0').
frozen(14, '0-0-0').
frozen(17, '0-0-0').

frozen(1, '4-0-0').
frozen(2, '0-0-2').
frozen(4, '3-0-0').
frozen(6, '2-0-0').
frozen(7, '1-0-0').
frozen(8, '0-2-0').
frozen(9, '0-2-0').
frozen(10, '0-1-0').
frozen(11, '3-0-0').
frozen(13, '3-0-0').
frozen(15, '2-0-0').
frozen(16, '0-0-3').
frozen(18, '1-0-0').
frozen(21, '2-0-0').
frozen(23, '0-3-0').
frozen(22, '0-3-0').

dano_alto_custo_baixo(7, '3-0-2').
dano_alto_custo_baixo(10, '3-0-2').
dano_alto_custo_baixo(13, '3-0-2').
dano_alto_custo_baixo(14, '3-2-0').
dano_alto_custo_baixo(15, '3-2-0').

dano_alto_custo_medio(7, '4-0-2').
dano_alto_custo_medio(10, '4-0-2').
dano_alto_custo_medio(13, '4-0-2').
dano_alto_custo_medio(14, '4-2-0').
dano_alto_custo_medio(15, '4-2-0').

dano_alto_custo_alto(7, '5-0-2').
dano_alto_custo_alto(10, '5-0-2').
dano_alto_custo_alto(13, '5-0-2').
dano_alto_custo_alto(14, '5-2-0').
dano_alto_custo_alto(15, '5-2-0').

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

fase('inicial').
fase('middle').
fase('late').

aparece('Camo Bloon', 'middle').
aparece('Lead Bloon', 'middle').
aparece('Purple Bloon', 'middle').
aparece('MOAB', 'middle').
aparece('BFB', 'late').
aparece('ZOMG', 'late').
aparece('DDT', 'late').
aparece('BAD', 'late').
    
% =========================
% REGRA Queries
% =========================

% =========================
% Basicas
% =========================
tipo_torre(Torre, Tipo):-
  tipo(Id, Tipo),
  torre(Id, Torre).

tipo_gera_dinheiro(Torre, Path, Dinheiro):-
  torre(Id, Torre),
  gera_dinheiro(Id, Path, Dinheiro).

gerados(Gera, Gerados) :-
  setof(V, gera(Gera, V), Gerados).


% =========================

lista_bloons_fase('inicial', Lista_Bloons):-
  findall(B, (bloon(B), \+aparece(B, _)), Lista_Bloons), !.

lista_bloons_fase(Fase, Lista_Bloons):-
  findall(B, (bloon(B), aparece(B, Fase)), Lista_Bloons),!.

estouro_especial(Macaco, Path, Estouro):-
  torre(Id, Macaco),
  (frozen(Id, Path), Estouro = 'frozen' ; lead(Id, Path), Estouro = 'lead' ; camuflado(Id, Path), Estouro = 'camuflado').

bloons_especiais(Bloon, Propriedade):-
    ((rapido(Bloon), Propriedade = 'rapido');(camuflado(Bloon), Propriedade = 'camuflado');
    (regenera(Bloon), Propriedade = 'regenera');(resistente(Bloon), Propriedade = 'resistente');
    (imune_explosao(Bloon), Propriedade = 'imune_explosao');(imune_congelamento(Bloon), Propriedade = 'imune_congelamento');
    (imune_magia(Bloon), Propriedade = 'imune_magia')).

% tipo_necessario_macaco([], _).
% tipo_necessario_macaco([H|T], Tipo):-
%
%
%
% % lista de macacos possiveis, 
% macaco_fase([], []).
% macaco_fase(Macaco, [H|T]):-
%
%   \+
%
%
%
% passa_fase(Fase, Macacos):-
%   lista_bloons_fase(Fase, Bloons),
%   macaco_fase(Macacos, Bloons).

% Regras economia 
renda_fixa_cada_torre_por_rodada_em_cada_nivel(Nome, Nivel, Valor) :-
    torre(Id, Nome),
    gera_dinheiro(Id, Nivel, Valor).


max_dinheiro_por_torre_por_rodada(Nome, ValorMaximo) :-
    torre(Id, Nome),
    findall(Valor, (gera_dinheiro(Id, _, Valor), number(Valor)), ListaValores),
    ListaValores \= [],
    maior_da_lista(ListaValores, ValorMaximo).

maior_da_lista([UnicoElemento], UnicoElemento) :- !.

maior_da_lista([Cabeca | Cauda], Maximo) :-
    maior_da_lista(Cauda, MaxCauda),
    (Cabeca > MaxCauda -> Maximo = Cabeca ; Maximo = MaxCauda).


listar_torres_dinheiro(NomesUnicos) :-
    findall(Nome, (torre(Id, Nome), gera_dinheiro(Id, _, _)), ListaComRepeticao),
    remove_duplicatas(ListaComRepeticao, NomesUnicos).

remove_duplicatas([], []).

remove_duplicatas([H | T], ListaSemDuplicata) :-
    pertence(H, T), 
    !,
    remove_duplicatas(T, ListaSemDuplicata).

remove_duplicatas([H | T], [H | Resto]) :-
    remove_duplicatas(T, Resto).

pertence(X, [X | _]) :- !.
pertence(X, [_ | T]) :- pertence(X, T).

primeiro_militar_anti_chumbo(Nome) :-
    tipo(Id, military),
    lead(Id, _),
    torre(Id, Nome),
    !.

% ==========================================
% SISTEMA ESPECIALISTA: RECOMENDAÇÃO DE TIMES (COM NÍVEIS BASES)
% ==========================================

exige_habilidade(Bloon, camuflado) :- camuflado(Bloon).
exige_habilidade('Lead Bloon', chumbo).
exige_habilidade('DDT', chumbo). 
exige_habilidade(Bloon, dano_bruto) :- resistente(Bloon), \+ Bloon = 'Lead Bloon'. 

macaco_cobre_habilidade(macaco(Nome, Nivel), camuflado, _) :- 
    torre(Id, Nome), camuflado(Id, Nivel).
    
macaco_cobre_habilidade(macaco(Nome, Nivel), chumbo, _) :- 
    torre(Id, Nome), lead(Id, Nivel).

macaco_cobre_habilidade(macaco(Nome, Nivel), dano_bruto, inicial) :- 
    torre(Id, Nome), dano_alto_custo_baixo(Id, Nivel).

macaco_cobre_habilidade(macaco(Nome, Nivel), dano_bruto, middle) :- 
    torre(Id, Nome), dano_alto_custo_medio(Id, Nivel).

macaco_cobre_habilidade(macaco(Nome, Nivel), dano_bruto, late) :- 
    torre(Id, Nome), dano_alto_custo_alto(Id, Nivel).

lista_necessidades([], []).
lista_necessidades([B | T], [Hab | Resto]) :-
    exige_habilidade(B, Hab),
    !,
    lista_necessidades(T, Resto).

lista_necessidades([_ | T], Resto) :- 
    lista_necessidades(T, Resto).

time_tem_habilidade(Hab, [Macaco | _], Fase) :- 
    macaco_cobre_habilidade(Macaco, Hab, Fase), 
    !.
time_tem_habilidade(Hab, [_ | T], Fase) :- 
    time_tem_habilidade(Hab, T, Fase).

time_atende_necessidades([], _, _).
time_atende_necessidades([Hab | T], Time, Fase) :-
    time_tem_habilidade(Hab, Time, Fase),
    time_atende_necessidades(T, Time, Fase).

gera_esquadrao([macaco(M1, _), macaco(M2, _), macaco(M3, _)]) :-
    torre(Id1, M1),
    torre(Id2, M2), Id1 < Id2,
    torre(Id3, M3), Id2 < Id3.

preenche_niveis_vazios([]).
preenche_niveis_vazios([macaco(_, Nivel) | T]) :-
    (var(Nivel) -> Nivel = '0-0-0' ; true),
    preenche_niveis_vazios(T).

% ==========================================
% REGRA PRINCIPAL: PASSA FASE
% ==========================================
passa_fase(Fase, Macacos) :-
    lista_bloons_fase(Fase, Bloons),
    lista_necessidades(Bloons, NecessidadesSujas),
    remove_duplicatas(NecessidadesSujas, NecessidadesLimpas),
    gera_esquadrao(Macacos),
    time_atende_necessidades(NecessidadesLimpas, Macacos, Fase),
    preenche_niveis_vazios(Macacos).
