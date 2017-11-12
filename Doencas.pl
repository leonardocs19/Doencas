% Relacionados a febre abaixo de 1 ano

doenca(febre1,menorque6,'Sintoma serio,nao e comum bebes com menos que 6 meses ter febre, procurar um medico imediatamente!').
doenca(febre1,erupcao,'Provavel Causa Dermatite com febre').
doenca(febre1,puxaorelha,'Provavel Causa Otite Interna').
doenca(febre1,resprapida,'Provavel Causa Pneumonia, procurar o medico imediatamente!').
doenca(febre1,tossecoriza,'Resfriado ou gripe, raramente sarampo').
doenca(febre1,varios,'Meningite ou infeccao de urina, procurar um medico imediatamente!').
doenca(febre1,rejeita,'Infeccao de garganta').
doenca(febre1,vomitodia,'Possivel causa Gastroenterite').
doenca(febre1,aquecido,'Possivel causa superaquecimento\nResfriar o ambiente ou retirar excesso de roupas do bebe').
doenca(febre1,sair,'Realize mais exames ou procure um medico').

% Relacionados a febre acima de 1 ano

doenca(febre2,erupcao,'Provavel Dermatite com febre').
doenca(febre2,varios,'Meningite, levar ao médico imediatamente!').
doenca(febre2,rejeita,'Possivel infeccao de garganta').
doenca(febre2,tossecorizaruido,'Crupe viral ou bronquite, procure um medico imediatamente!').
doenca(febre2,tossecorizarapida,'Pneumonia, levar ao medico imediatamente!').
doenca(febre2,tossecoriza,'Resfriado ou gripe').
doenca(febre2,urina,'Possível infeccao do sistema urinario').
doenca(febre2,vomito,'Gastroenterite').
doenca(febre2,puxaorelha,'Possivel causa Otite Interna').
doenca(febre2,aquecido,'Possivel causa superaquecimento\nResfriar o ambiente ou retirar excesso de roupas da crianca\n').
doenca(febre2,inchaco,'Caxumba, procurar um medico!').
doenca(febre2,sair,'Realize mais exames ou procure um medico').

% Relacionados a Manchas e Dermatites

doenca(manchas,febre,'Possivel causa dermatite com febre').
doenca(manchas,pelevermelha,'Eczema').
doenca(manchas,peleinflamada, 'Micose').
doenca(manchas,manchaspequenas,'Picadas de insetos').
doenca(manchas,bocainchada,'Reacao alergica a picada de inseto ou alimentos').
doenca(manchas,manchavermelhabrilha,'Urticaria').
doenca(manchas,medicacao,'Reacao a medicacao, procure um medico imediatamente').
doenca(manchas,carocos,'Molusco contagioso').
doenca(manchas,pus,'Impetigo').
doenca(manchas,carocosfirmes,'Verruga').
doenca(manchas,carocosdolorido,'Furunculo').
doenca(manchas,bolhas,'Broteja').
doenca(manchas,sair,'Realize mais exames ou procure um medico').

% Relacionados a garganta inflamada

doenca(garganta,corizatosse,'Resfriado ou rinite alergica').
doenca(garganta,erupcaovomito,'Escarlatina, procurar um medico imediatamente!').
doenca(garganta,naoengole,'Infeccao de garganta').
doenca(garganta,febre,'Inflamacao causada por pequena infeccao de garganta ou irritacao, procure orientacao medica se persistir apos 48 horas').
doenca(garganta,semsintomas,'Inflamacao causada por pequena infeccao de garganta ou irritacao, procure orientacao medica se persistir apos 48 horas').
doenca(garganta,sair,'Realize mais exames ou procure um medico').

% Relacionados a vomito

doenca(vomito,tosse,'Possivel causa Bronquiolite').
doenca(vomito,diarreia,'Gastroenterite').
doenca(vomito,febre,'Regurgitacao que pode vir de flatulencia ou de refluxo').
doenca(vomito,rejeita,'Roseola ou meningite ou infeccao de urina, busca um medico imediatamente').
doenca(vomito,varios,'Infeccao do sistema urinario').
doenca(vomito,verde,'Obstrucao intestinal, procurar um medico imediatamente!').
doenca(vomito,semsintoma,'Se a crianca voltar a vomitar procurar orientacao medica').


 :- begin_tests(diag).

test(t0) :- doenca(vomito,diarreia ,'Gastroenterite').
test(t1) :- doenca(manchas,peleinflamada,'Micose').
test(t2) :- doenca(errado, errado,'Errado').
test(t3) :- doenca(garganta,febre,'Inflamacao causada por pequena infeccao de garganta ou irritacao, procure orientacao medica se persistir apos 48 horas').
test(t4) :- doenca(febre1,rejeita,'Infeccao de garganta').

 :- end_tests(diag).

diagnostico(X):-
	write('Bem - Vindo ao diagnostico de doencas infantis!\n'),
	write('Escolha um sintoma principal:\n'),
	write('- Febre alta, bebe menor que 1 ano. (febre1) \n'),
	write('- Febre alta, bebe maior ou igual a 1 ano. (febre2) \n'),
	write('- Maschas e Dermatites. (manchas)\n'),
	write('- Infeccao de garganta. (garganta)\n'),
	write('- Vomito. (vomito)\n'),
	write('Apos escolher escreva o sintoma na forma entre pareteses mais . (ponto) e tecle Enter\n'),
	read(Sintoma),


	write(' Agora escolha um segundo sintoma:\n'),
	write('Se escolheu febre1 selecione:\n'),
	write('- O bebe possui menos que 6 meses. (menorque6)\n'),
	write('- O bebe possui erupcoes na pele. (erupcao)\n'),
	write('- O bebe fica puxando a orelha. (puxaorelha)\n'),
	write('- O bebe fica respirando rapidamente. (resprapida)\n'),
	write('- O bebe apresenta tosse ou coriza, (tossecoriza)\n'),
	write('- O bebe apresenta vomito sem diarreia, sonolencia anormal ou irritabilidade incomum. (varios)\n'),
	write('- O bebe rejeita comida solida. (rejeita)\n'),
	write('- O bebe vomita e tem diarreia. (vomitodia)\n'),
	write('- O bebe esta com muito roupa ou o lugar esta bem aquecido (aquecido)\n'),


	write('\n\nSe escolheu febre2 selecione:\n'),
	write('- A crianca possui erupcoes na pele. (erupcao)\n'),
	write('- A crianca fica puxando a orelha. (puxaorelha)\n'),
	write('- A crianca esta com pesco duro, sonolencia anormal, irritabilidade incomum, dor nos bracos ou pernas, maos e pes frios. (varios)\n'),
	write('- A crianca rejeita comida solida. (rejeita)\n'),
	write('- A crianca tem tosse ou coriza leve. (tossecoriza)\n'),
	write('- A crianca tem tosse ou coriza, respiracao rapida. (tossecorizaresp)\n'),
	write('- A crianca tem tosse ou coriza, com respiracao ruidosa. (tossecorizaruido)\n'),
	write('- A crianca esta com um inchaco em uma lado da face. (inchaco)\n'),
	write('- A crianca urina bastante ou se queixa de dor ao urinar. (urina) \n'),
	write('- A crianca esta vomitando. (vomito) \n'),
	write('- A crianca esta com muito roupa ou o lugar esta bem aquecido (aquecido)\n'),

	write('\n\nSe escolheu Manchas e Dermatites selecione: \n'),

	write('- A crianca esta com febre. (febre)\n'),
	write('- A crianca esta com coceira, pele vermelha e inflamada, principalmente no rosto e em torno das juntas. (pelevermelha)\n'),
	write('- A crianca esta com pele vermelha e inflamada, com extremidades claramente definidos e com escamas. (peleinflamada)\n'),
	write('- A crianca esta com manchas pequenas e inflamadas. (manchaspequenas) \n'),
	write('- A crianca esta com a boca inchada. (bocainchada)'),
	write('- A crianca apresenta manchas vermelhas levemente reluzentes. (manchavermelhabrilha)\n'),
	write('- A crianca tomou medicacao. (medicacao)'),
	write('- A crianca esta com um caroco dolorido vermelho com pico amarelo. (carocos)\n'),
	write('- A crianca ter areas cheias de pus no rosto. (pus)\n'),
	write('- A crianca apresenta carocos firme. (carocosfirmes)'),
	write('- A crianca apresenta carocos doloridos. (carocosdoloridos)'),
	write('- A crianca apresenta bolhas no rosto. (bolhas)'),

	write('\n\nSe escolheu Infeccao de garganta selecione: \n'),


	write('A crianca apresenta coriza ou tosse. (corizatosse)\n'),
	write('A crianca apresenta vomito, erupcao na pele e lingua e a garganta brilhantes e vermelhas. (erupcaovomito)\n'),
	write('A crianca sente dor ao engolir ou nao quer comer. (naoengole) \n'),
	write('A crianca esta com febre. (febre)\n'),
	write('A criancao nao apresenta mais sintomas. (semsintomas)'),

	write('\n\nSe escolheu Vomito selecione: \n'),


	write('A crianca tosse. (tosse)\n'),
	write('A crianca esta com diarreia. (diarreia)\n'),
	write('A crianca apresenta febre. (febre)\n'),
	write('A crianca rejeita alimentos e esta sonolento. (rejeita)\n'),
	write('A crianca tem febre, dor ao urinar, dor abdominal, faz xixi na cama. (varios)\n'),
	write('A crianca vomito uma especie de cor verde. (verde)\n'),
	write('A crianca nao apresenta mais sintomas. (semsintoma)\n'),




	write('Escreva o segundo sintoma na forma entre parenteses mais . (ponto) e tecle Enter\n'),
	write('\nSe nao possuir nenhum destes sintomas realizar mais exames ou procurar um medico\n'),


	read(Subsintoma),
	doenca(Sintoma,Subsintoma,X).


