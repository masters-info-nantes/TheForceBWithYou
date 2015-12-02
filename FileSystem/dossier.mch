/* dossier
 * Author: Woohyunnie
 * Creation date: 18/11/2015
 */
MACHINE
    dossier
SETS
    EMPLOYE;
    LIBELLE_TRAITEMENT = {creation,modification,suppression};
    ETAT_TRAITEMENT = {commence,en_cours,termine}
CONSTANTS
    max_op
PROPERTIES
    max_op: 1..5
DEFINITIONS
    DOSSIER==NAT ;
    DATE==NAT
VARIABLES
    lib_traitement,
    etat_traitement,
    dossiers,
    employes,
    dates,
    nb_dossier,
    proprietaire,
    date_creation,
    modification_etat,
    traitement_lib,
    traitement_etat,
    historique
INVARIANT
    lib_traitement <: LIBELLE_TRAITEMENT &
    etat_traitement <: ETAT_TRAITEMENT &
    dossiers <: DOSSIER & /*ensemble des numéros de dossiers*/
    nb_dossier : INT & /*nombre de dossiers*/
    employes <: EMPLOYE & /*ensemble des employes*/
    dates <: DATE & /*ensemble des dates de création de dossier*/
    proprietaire : dossiers --> employes & /* ensemble qui definit la relation dossier createur */
    date_creation : dossiers --> dates & /*ensemble qui definit la relation dossier date de creation*/
    modification_etat : (dossiers * dates) +-> etat_traitement  & /*ensemble qui definit la relation entre libele et etat*/
    traitement_lib : (dates * employes) --> lib_traitement & /*ensemble qui definit la relation entre la date de modification et l'intitulé de la modification */
    traitement_etat : (dates * employes) --> etat_traitement & /*ensemble qui définit la relation entre la date de modification et l'état de la modification*/
    historique : dossiers --> ((dates * employes) +-> (lib_traitement * etat_traitement)) &/*ensemble qui definit la relation dossier traitement */
    card(modification_etat) <= max_op &
    dom(traitement_lib) = dom(traitement_etat)
INITIALISATION
    lib_traitement:= {} ||
    etat_traitement:= {} ||
    dossiers:={} ||
    employes:={} ||
    dates:={} ||
    nb_dossier:=0 ||
    proprietaire := {} ||
    date_creation := {} ||
    modification_etat := {} ||
    traitement_lib := {} ||
    traitement_etat := {} ||
    historique := {}
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
    END ;
    
    tracerOperation(id_d,id_c,date,lib_op,etat_op)=
    PRE id_d : DOSSIER & id_c : EMPLOYE & date : DATE & lib_op : LIBELLE_TRAITEMENT & etat_op : ETAT_TRAITEMENT & id_c = proprietaire(id_d)
    THEN
        modification_etat(id_d,date) := etat_op ||
        traitement_lib(date,id_c) := lib_op ||
        traitement_etat(date,id_c) := etat_op ||
        historique(id_d)(date,id_c) := (lib_op,etat_op)
    END ;
    
    modifierEtatTraitement(id_d,ordre_m,nouv_etat)=
    PRE id_d : DOSSIER & ordre_m : DATE & nouv_etat : ETAT_TRAITEMENT
    THEN
        historique(id_d)(ordre_m,proprietaire(id_d)) := (traitement_lib(ordre_m,proprietaire(id_d)),nouv_etat)
    END ;
    
END

