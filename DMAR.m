function Red = DMAR(trandata, lambda) %带标签的数据

Dis_M = 1 - ele_Sim(trandata, lambda);
Red = reduceDis_M_Ez(Dis_M)

end