/* dossier
 * Author: Woohyunnie
 * Creation date: 18/11/2015
 */
MACHINE
    dossier
SETS
    EMPLOYE ;
    LIBELLE_TRAITEMENT = { creation , modification , suppression } ;
    ETAT_TRAITEMENT = { commence , en_cours , termine }
CONCRETE_CONSTANTS
    max_op
PROPERTIES
    max_op : 1 .. 5
DEFINITIONS
    DOSSIER == NAT ;
    DATE == NAT
ABSTRACT_VARIABLES
    dossiers ,
    employes ,
    dates ,
    nb_dossier ,
    proprietaire ,
    date_creation ,
    modification_etat ,
    traitement_lib ,
    traitement_etat ,
    historique
INVARIANT
    dossiers <: DOSSIER & /*ensemble des numéros de dossiers*/
    nb_dossier : NAT & /*nombre de dossiers*/
    employes <: EMPLOYE & /*ensemble des employes*/
    dates <: DATE & /*ensemble des dates de création de dossier*/
    proprietaire : dossiers --> employes & /* ensemble qui definit la relation dossier createur */
    date_creation : dossiers --> dates & /*ensemble qui definit la relation dossier date de creation*/
    modification_etat : ( dossiers * dates ) +-> ETAT_TRAITEMENT & /*ensemble qui definit la relation entre libele et etat*/
    traitement_lib : ( dates * employes ) --> LIBELLE_TRAITEMENT & /*ensemble qui definit la relation entre la date de modification et l'intitulé de la modification */
    traitement_etat : ( dates * employes ) --> ETAT_TRAITEMENT & /*ensemble qui définit la relation entre la date de modification et l'état de la modification*/
    historique : dossiers --> ( ( dates * employes ) +-> ( LIBELLE_TRAITEMENT * ETAT_TRAITEMENT ) ) & /*ensemble qui definit la relation dossier traitement */
    card ( historique ) <= max_op * card ( dossiers ) &
    dom ( traitement_lib ) = dom ( traitement_etat )
INITIALISATION
    dossiers := {} ||
    employes := {} ||
    dates := {} ||
    nb_dossier := 0 ||
    proprietaire := {} ||
    date_creation := {} ||
    modification_etat := {} ||
    traitement_lib := {} ||
    traitement_etat := {} ||
    historique := {}
OPERATIONS
    creerDossier ( id_c , date_c ) =
    PRE id_c : EMPLOYE & date_c : DATE
        & card ( historique ) < max_op * card ( dossiers )
    THEN
        ANY nouvd , tmp
        WHERE nouvd : DOSSIER & nouvd = nb_dossier + 1
            & tmp : ( DATE * EMPLOYE ) +-> ( LIBELLE_TRAITEMENT * ETAT_TRAITEMENT )
            & tmp = { ( date_c |-> id_c ) |-> ( creation |-> commence ) }
        THEN
            proprietaire ( nouvd ) := id_c ||
            date_creation ( nouvd ) := date_c ||
            historique ( nouvd ) := tmp ||
            nb_dossier := nouvd
        END
    END ;

    tracerOperation ( id_d , id_e , date , lib_op , etat_op ) =
    PRE id_d : DOSSIER & id_e : EMPLOYE & date : DATE
        & lib_op : LIBELLE_TRAITEMENT & etat_op : ETAT_TRAITEMENT
        & card ( historique ( id_d ) ) < max_op
    THEN
        ANY tmp
        WHERE tmp : ( DATE * EMPLOYE ) +-> ( LIBELLE_TRAITEMENT * ETAT_TRAITEMENT )
            & tmp = { ( date |-> id_e ) |-> ( lib_op |-> etat_op ) }
        THEN
            modification_etat ( id_d , date ) := etat_op ||
            traitement_lib ( date , id_e ) := lib_op ||
            traitement_etat ( date , id_e ) := etat_op ||
            historique ( id_d ) := historique ( id_d ) \/ tmp
        END
    END ;

    modifierEtatTraitement ( id_d , ordre_m , nouv_etat ) =
    PRE id_d : DOSSIER & ordre_m : DATE & nouv_etat : ETAT_TRAITEMENT
    THEN
        historique ( id_d ) ( ordre_m , proprietaire ( id_d ) ) := ( traitement_lib ( ordre_m , proprietaire ( id_d ) ) |-> nouv_etat )
    END

END
