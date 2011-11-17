% settings.pl
% S/ren M/rk
% 100617
% the redundant settings for learn 

%:-set_prism_flag(data_source,data/1).

:-set_prism_flag(scaling,log_exp).
:-set_prism_flag(log_viterbi,on).

%:-set_prism_flag(init,random).
%:-set_prism_flag(max_iterate,2).
%:-set_prism_flag(epsilon,1.0e-4).
%:-set_prism_flag(restart,10).

%:-set_prism_flag(daem,on).
%:-set_prism_flag(itemp_init,0.1).
%:-set_prism_flag(itemp,rate,1.5).

:-set_prism_flag(learn_mode,both).
:-set_prism_flag(default_sw_h,uniform).
%:-set_prism_flag(params_after_vbem,max).
:-set_prism_flag(viterbi_mode,hparams).

prism_main([Sw_out_name]):-
        learn,
        parse_atom(Sw_out_name, Sw_out),
        save_sw(Sw_out).


prism_main([Sw_out_name,Sw_h_out_name]):-
        learn,
        parse_atom(Sw_out_name, Sw_out),
        parse_atom(Sw_h_out_name,Sw_h_out),
        save_sw(Sw_out),
        save_sw_h(Sw_h_out).


prism_main([Sw_in_name, Sw_h_in_name, Decoding_set_name,viterbif]):-
         parse_atom(Sw_in_name, Sw_in),
         restore_sw(Sw_in),
         parse_atom(Sw_h_in_name, Sw_h_in),
         restore_sw_h(Sw_h_in),
         parse_atom(Decoding_set_name, Decoding_set),
         viterbif_file(Decoding_set,Ps,Swis),
         writeln(Ps),
         writeln(Swis).

prism_main([Sw_in_name, Sw_h_in_name, Decoding_set_name,viterbi]):-
         parse_atom(Sw_in_name, Sw_in),
         restore_sw(Sw_in),
         parse_atom(Sw_h_in_name, Sw_h_in),
         restore_sw_h(Sw_h_in),
         parse_atom(Decoding_set_name, Decoding_set),
         viterbi_file(Decoding_set,Ps),
         writeln(Ps).

prism_main([Sw_in_name, Decoding_set_name,viterbi]):-
         parse_atom(Sw_in_name, Sw_in),
         restore_sw(Sw_in),
         parse_atom(Decoding_set_name, Decoding_set),
         viterbi_file(Decoding_set,Ps),
         writeln(Ps).

prism_main([Sw_in_name, Sw_h_in_name, Decoding_set_name,prob]):-
         parse_atom(Sw_in_name, Sw_in),
         restore_sw(Sw_in),
         parse_atom(Sw_h_in_name, Sw_h_in),
         restore_sw_h(Sw_h_in),
         parse_atom(Decoding_set_name, Decoding_set),
         prob_file(Decoding_set,Ps),
         writeln(Ps).

prism_main([Sw_in_name,Decoding_set_name,prob]):-
         parse_atom(Sw_in_name, Sw_in),
         restore_sw(Sw_in),
         parse_atom(Decoding_set_name, Decoding_set),
         prob_file(Decoding_set,Ps),
         writeln(Ps).

prism_main([Sw_in_name, Sw_h_in_name, Sample_size, sample]):-
         parse_atom(Sw_in_name, Sw_in),
         restore_sw(Sw_in),
         parse_atom(Sw_h_in_name, Sw_h_in),
         restore_sw_h(Sw_h_in),
         parse_atom(Sample_size, Size),
         get_samples(Size, model(S),Gs),
         writeln(Gs).

viterbif_file(F,Ps,Swis):-
         get_goals(F,Gs),
         viterbif_gs(Gs,Ps,Swis).
viterbi_file(F,Ps):-
         get_goals(F,Gs),
         viterbi_gs(Gs,Ps).

prob_file(F,Ps):-
         get_goals(F,Gs),
         prob_gs(Gs,Ps).

get_goals(F,Gs):-
         see(F),
         read(First),
         get_terms(First,Gs),
         seen.

get_terms(end_of_file,[]).

get_terms(G, [G|Gs]):-
         G \= end_of_file,
         read(Next),
         get_terms(Next,Gs).

viterbif_gs([],[],[]).
viterbi_gs([],[]).
prob_gs([],[]).

viterbif_gs([G|RGs],[P|Ps],[Swi|RSwi]):-
         viterbif(G,P,Expl),
         viterbi_switches(Expl,Swi),
         viterbif_gs(RGs,Ps,RSwi).

viterbi_gs([G|RGs],[P|Ps]):-
         viterbi(G,P),
         viterbi_gs(RGs,Ps).

prob_gs([G|RGs],[P|Ps]):-
         prob(G,P),
         prob_gs(RGs,Ps).






