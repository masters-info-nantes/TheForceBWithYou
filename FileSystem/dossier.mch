/* dossier
 * Author: Woohyunnie
 * Creation date: 18/11/2015
 */
MACHINE
    dossier
SETS
    EMPLOYE
DEFINITIONS
    DOSSIER==NAT ;
    DATE==NAT
VARIABLES
    dossiers,
    employes,
    dates,
    nb_dossier,
    proprietaire,
    date_creation
INVARIANT
    dossiers <: DOSSIER &
    nb_dossier : INT &
    employes <: EMPLOYE &
    dates <: DATE &
    proprietaire : dossiers --> employes & /*definit la relation dossier createur */
    date_creation : dossiers --> dates 
INITIALISATION 
    dossiers:={} ||
    employes:={} ||
    dates:={} ||
    nb_dossier:=0 ||
    proprietaire := {} ||
    date_creation := {}
OPERATIONS
    creerDossier(id_c,date_c)=
    PRE id_c : EMPLOYE & date_c : DATE
    THEN
        ANY nouvd 
        WHERE nouvd: DOSSIER & nouvd = nb_dossier + 1
        THEN
            proprietaire := proprietaire \/ {nouvd |-> id_c} ||
            date_creation := date_creation \/ {nouvd |-> date_c}
        END
    END
    
    
END

