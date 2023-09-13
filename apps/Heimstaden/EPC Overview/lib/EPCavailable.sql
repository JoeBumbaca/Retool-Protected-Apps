select * from {{ EPCdatabaseConnect.data }} where EPC_available = True order by CASE
        WHEN End_Energy_EPC_rating   = 'A+' THEN 1
        WHEN End_Energy_EPC_rating   = 'A' THEN 2
        WHEN End_Energy_EPC_rating   = 'B' THEN 3
        WHEN End_Energy_EPC_rating   = 'C' THEN 4
        WHEN End_Energy_EPC_rating   = 'D' THEN 5
        WHEN End_Energy_EPC_rating   = 'E' THEN 6
        WHEN End_Energy_EPC_rating   = 'F' THEN 7
        WHEN End_Energy_EPC_rating   = 'G' THEN 8
        WHEN End_Energy_EPC_rating   = 'H' THEN 9
    END