% Definisanje globalnih varijabli

global bc be bcpe bsskpc bsskpe kc pe kmipp optnc

fprintf(fid, '--------------------------------------------------------------------------------------\r\n');
fprintf(fid, '                       ******** ISPIS ULAZNIH PODATAKA ********\r\n');
fprintf(fid, '--------------------------------------------------------------------------------------\r\n');

% Ispis koordinata �vorova

fprintf(fid, '--------------------------------------------------------------------------------------\r\n');
fprintf(fid, '%49s\r\n', 'Osnovni podaci');
fprintf(fid, '--------------------------------------------------------------------------------------\r\n');
fprintf(fid, 'Broj �vorova:                        %g\r\n', bc);
fprintf(fid, 'Broj elemenata:                      %g\r\n', be);
fprintf(fid, 'Broj �vorova po elementu:            %g\r\n', bcpe);
fprintf(fid, 'Broj stepeni slobode po �voru:       %g\r\n', bsskpc);
fprintf(fid, 'Broj stepeni slobode po elementu:    %g\r\n', bsskpe);
fprintf(fid, '--------------------------------------------------------------------------------------\r\n');
fprintf(fid, '--------------------------------------------------------------------------------------\r\n');
fprintf(fid, '%50s\r\n', 'Koordinate �vorova');
fprintf(fid, '--------------------------------------------------------------------------------------\r\n');
fprintf(fid, '%28s %14s %15s\r\n', '�vor','X[m]', 'Y[m]');
fprintf(fid, '--------------------------------------------------------------------------------------\r\n');
for i = 1:bc
    fprintf(fid, '%27g %15.2f %15.2f\r\n', i, kc(i, 1), kc(i, 2));
end

% Ispis povezanosti elemenata

fprintf(fid, '--------------------------------------------------------------------------------------\r\n');
fprintf(fid, '--------------------------------------------------------------------------------------\r\n');
fprintf(fid, '%52s\r\n', 'Povezanost elemenata');
fprintf(fid, '--------------------------------------------------------------------------------------\r\n');
fprintf(fid, '%30s %15s %15s\r\n', 'Element','�vor_1','�vor_2');
fprintf(fid, '--------------------------------------------------------------------------------------\r\n');
for i = 1:be
    fprintf(fid, '%27g %15g %15g\r\n', i, pe(i,1), pe(i,2));
end

% Ispis karakteristika elementa

fprintf(fid, '--------------------------------------------------------------------------------------\r\n');
fprintf(fid, '--------------------------------------------------------------------------------------\r\n');
fprintf(fid, '%53s\r\n', 'Karakteristike elemenata');
fprintf(fid, '--------------------------------------------------------------------------------------\r\n');
fprintf(fid, '%23s %12s %16s %14s\r\n', 'Element','E[MPa]','A[m^2]', 'I[m^4]');
fprintf(fid, '--------------------------------------------------------------------------------------\r\n');
for i = 1:be
    fprintf(fid, '%20g %15g %15g %15g\r\n', i, kmipp(i,1), kmipp(i,2), kmipp(i,3));
end
fprintf(fid, '--------------------------------------------------------------------------------------\r\n');

% Ispis �vornog optere�enja

fprintf(fid, '--------------------------------------------------------------------------------------\r\n');
fprintf(fid, '%51s\r\n', '�vorno optere�enje');
fprintf(fid, '--------------------------------------------------------------------------------------\r\n');
fprintf(fid, '%21s %16s %15s %15s\r\n', '�vor','Fx[kN]','Fy[kN]', 'M[kNm]');
fprintf(fid, '--------------------------------------------------------------------------------------\r\n');
for i = 1:bc
    fprintf(fid, '%20g %15g %15g %15g\r\n', i, optnc(i,1), optnc(i,2), optnc(i,3));
end
fprintf(fid, '--------------------------------------------------------------------------------------\r\n');
fprintf(fid, '--------------------------------------------------------------------------------------\r\n');
fprintf(fid, '                      ******** ISPIS REZULTATA PRORA�UNA ********\r\n');
fprintf(fid, '--------------------------------------------------------------------------------------\r\n');

