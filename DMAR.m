function Red = DMAR(trandata, lambda) %����ǩ������

Dis_M = 1 - ele_Sim(trandata, lambda);
Red = reduceDis_M_Ez(Dis_M)

end