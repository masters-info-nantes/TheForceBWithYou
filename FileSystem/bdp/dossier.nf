Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(dossier))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(dossier))==(Machine(dossier));
  Level(Machine(dossier))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(dossier)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(dossier))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(dossier))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(dossier))==(?);
  List_Includes(Machine(dossier))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(dossier))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(dossier))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(dossier))==(?);
  Context_List_Variables(Machine(dossier))==(?);
  Abstract_List_Variables(Machine(dossier))==(?);
  Local_List_Variables(Machine(dossier))==(historique,traitement_etat,traitement_lib,modification_etat,date_creation,proprietaire,nb_dossier,dates,employes,dossiers);
  List_Variables(Machine(dossier))==(historique,traitement_etat,traitement_lib,modification_etat,date_creation,proprietaire,nb_dossier,dates,employes,dossiers);
  External_List_Variables(Machine(dossier))==(historique,traitement_etat,traitement_lib,modification_etat,date_creation,proprietaire,nb_dossier,dates,employes,dossiers)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(dossier))==(?);
  Abstract_List_VisibleVariables(Machine(dossier))==(?);
  External_List_VisibleVariables(Machine(dossier))==(?);
  Expanded_List_VisibleVariables(Machine(dossier))==(?);
  List_VisibleVariables(Machine(dossier))==(?);
  Internal_List_VisibleVariables(Machine(dossier))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(dossier))==(btrue);
  Gluing_List_Invariant(Machine(dossier))==(btrue);
  Expanded_List_Invariant(Machine(dossier))==(btrue);
  Abstract_List_Invariant(Machine(dossier))==(btrue);
  Context_List_Invariant(Machine(dossier))==(btrue);
  List_Invariant(Machine(dossier))==(dossiers <: NAT & nb_dossier: NAT & employes <: EMPLOYE & dates <: NAT & proprietaire: dossiers --> employes & date_creation: dossiers --> dates & modification_etat: dossiers*dates +-> ETAT_TRAITEMENT & traitement_lib: dates*employes --> LIBELLE_TRAITEMENT & traitement_etat: dates*employes --> ETAT_TRAITEMENT & historique: dossiers --> (dates*employes +-> LIBELLE_TRAITEMENT*ETAT_TRAITEMENT) & card(historique)<=max_op*card(dossiers) & dom(traitement_lib) = dom(traitement_etat))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(dossier))==(btrue);
  Abstract_List_Assertions(Machine(dossier))==(btrue);
  Context_List_Assertions(Machine(dossier))==(btrue);
  List_Assertions(Machine(dossier))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(dossier))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(dossier))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(dossier))==(dossiers,employes,dates,nb_dossier,proprietaire,date_creation,modification_etat,traitement_lib,traitement_etat,historique:={},{},{},0,{},{},{},{},{},{});
  Context_List_Initialisation(Machine(dossier))==(skip);
  List_Initialisation(Machine(dossier))==(dossiers:={} || employes:={} || dates:={} || nb_dossier:=0 || proprietaire:={} || date_creation:={} || modification_etat:={} || traitement_lib:={} || traitement_etat:={} || historique:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(dossier))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(dossier))==(btrue);
  List_Constraints(Machine(dossier))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(dossier))==(creerDossier,tracerOperation,modifierEtatTraitement);
  List_Operations(Machine(dossier))==(creerDossier,tracerOperation,modifierEtatTraitement)
END
&
THEORY ListInputX IS
  List_Input(Machine(dossier),creerDossier)==(id_c,date_c);
  List_Input(Machine(dossier),tracerOperation)==(id_d,id_e,date,lib_op,etat_op);
  List_Input(Machine(dossier),modifierEtatTraitement)==(id_d,ordre_m,nouv_etat)
END
&
THEORY ListOutputX IS
  List_Output(Machine(dossier),creerDossier)==(?);
  List_Output(Machine(dossier),tracerOperation)==(?);
  List_Output(Machine(dossier),modifierEtatTraitement)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(dossier),creerDossier)==(creerDossier(id_c,date_c));
  List_Header(Machine(dossier),tracerOperation)==(tracerOperation(id_d,id_e,date,lib_op,etat_op));
  List_Header(Machine(dossier),modifierEtatTraitement)==(modifierEtatTraitement(id_d,ordre_m,nouv_etat))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(dossier),creerDossier)==(id_c: EMPLOYE & date_c: NAT & card(historique)<max_op*card(dossiers));
  List_Precondition(Machine(dossier),tracerOperation)==(id_d: NAT & id_e: EMPLOYE & date: NAT & lib_op: LIBELLE_TRAITEMENT & etat_op: ETAT_TRAITEMENT & card(historique(id_d))<max_op);
  List_Precondition(Machine(dossier),modifierEtatTraitement)==(id_d: NAT & ordre_m: NAT & nouv_etat: ETAT_TRAITEMENT)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(dossier),modifierEtatTraitement)==(id_d: NAT & ordre_m: NAT & nouv_etat: ETAT_TRAITEMENT | historique:=historique<+{id_d|->(historique(id_d)<+{(ordre_m,proprietaire(id_d))|->(traitement_lib(ordre_m,proprietaire(id_d))|->nouv_etat)})});
  Expanded_List_Substitution(Machine(dossier),tracerOperation)==(id_d: NAT & id_e: EMPLOYE & date: NAT & lib_op: LIBELLE_TRAITEMENT & etat_op: ETAT_TRAITEMENT & card(historique(id_d))<max_op | @tmp.(tmp: NAT*EMPLOYE +-> LIBELLE_TRAITEMENT*ETAT_TRAITEMENT & tmp = {date|->id_e|->(lib_op|->etat_op)} ==> modification_etat,traitement_lib,traitement_etat,historique:=modification_etat<+{(id_d,date)|->etat_op},traitement_lib<+{(date,id_e)|->lib_op},traitement_etat<+{(date,id_e)|->etat_op},historique<+{id_d|->(historique(id_d)\/tmp)}));
  Expanded_List_Substitution(Machine(dossier),creerDossier)==(id_c: EMPLOYE & date_c: NAT & card(historique)<max_op*card(dossiers) | @(nouvd,tmp).(nouvd: NAT & nouvd = nb_dossier+1 & tmp: NAT*EMPLOYE +-> LIBELLE_TRAITEMENT*ETAT_TRAITEMENT & tmp = {date_c|->id_c|->(creation|->commence)} ==> proprietaire,date_creation,historique,nb_dossier:=proprietaire<+{nouvd|->id_c},date_creation<+{nouvd|->date_c},historique<+{nouvd|->tmp},nouvd));
  List_Substitution(Machine(dossier),creerDossier)==(ANY nouvd,tmp WHERE nouvd: NAT & nouvd = nb_dossier+1 & tmp: NAT*EMPLOYE +-> LIBELLE_TRAITEMENT*ETAT_TRAITEMENT & tmp = {date_c|->id_c|->(creation|->commence)} THEN proprietaire(nouvd):=id_c || date_creation(nouvd):=date_c || historique(nouvd):=tmp || nb_dossier:=nouvd END);
  List_Substitution(Machine(dossier),tracerOperation)==(ANY tmp WHERE tmp: NAT*EMPLOYE +-> LIBELLE_TRAITEMENT*ETAT_TRAITEMENT & tmp = {date|->id_e|->(lib_op|->etat_op)} THEN modification_etat(id_d,date):=etat_op || traitement_lib(date,id_e):=lib_op || traitement_etat(date,id_e):=etat_op || historique(id_d):=historique(id_d)\/tmp END);
  List_Substitution(Machine(dossier),modifierEtatTraitement)==(historique(id_d)(ordre_m,proprietaire(id_d)):=traitement_lib(ordre_m,proprietaire(id_d))|->nouv_etat)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(dossier))==(max_op);
  Inherited_List_Constants(Machine(dossier))==(?);
  List_Constants(Machine(dossier))==(max_op)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(dossier),EMPLOYE)==(?);
  Context_List_Enumerated(Machine(dossier))==(?);
  Context_List_Defered(Machine(dossier))==(?);
  Context_List_Sets(Machine(dossier))==(?);
  List_Valuable_Sets(Machine(dossier))==(EMPLOYE);
  Inherited_List_Enumerated(Machine(dossier))==(?);
  Inherited_List_Defered(Machine(dossier))==(?);
  Inherited_List_Sets(Machine(dossier))==(?);
  List_Enumerated(Machine(dossier))==(LIBELLE_TRAITEMENT,ETAT_TRAITEMENT);
  List_Defered(Machine(dossier))==(EMPLOYE);
  List_Sets(Machine(dossier))==(EMPLOYE,LIBELLE_TRAITEMENT,ETAT_TRAITEMENT);
  Set_Definition(Machine(dossier),LIBELLE_TRAITEMENT)==({creation,modification,suppression});
  Set_Definition(Machine(dossier),ETAT_TRAITEMENT)==({commence,en_cours,termine})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(dossier))==(?);
  Expanded_List_HiddenConstants(Machine(dossier))==(?);
  List_HiddenConstants(Machine(dossier))==(?);
  External_List_HiddenConstants(Machine(dossier))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(dossier))==(btrue);
  Context_List_Properties(Machine(dossier))==(btrue);
  Inherited_List_Properties(Machine(dossier))==(btrue);
  List_Properties(Machine(dossier))==(max_op: 1..5 & EMPLOYE: FIN(INTEGER) & not(EMPLOYE = {}) & LIBELLE_TRAITEMENT: FIN(INTEGER) & not(LIBELLE_TRAITEMENT = {}) & ETAT_TRAITEMENT: FIN(INTEGER) & not(ETAT_TRAITEMENT = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(dossier),creerDossier)==((Var(nouvd) == btype(INTEGER,?,?)),(Var(tmp) == SetOf(btype(INTEGER,?,?)*atype(EMPLOYE,?,?)*(etype(LIBELLE_TRAITEMENT,?,?)*etype(ETAT_TRAITEMENT,?,?)))));
  List_ANY_Var(Machine(dossier),tracerOperation)==(Var(tmp) == SetOf(btype(INTEGER,?,?)*atype(EMPLOYE,?,?)*(etype(LIBELLE_TRAITEMENT,?,?)*etype(ETAT_TRAITEMENT,?,?))));
  List_ANY_Var(Machine(dossier),modifierEtatTraitement)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(dossier)) == (max_op,EMPLOYE,LIBELLE_TRAITEMENT,ETAT_TRAITEMENT,creation,modification,suppression,commence,en_cours,termine | ? | historique,traitement_etat,traitement_lib,modification_etat,date_creation,proprietaire,nb_dossier,dates,employes,dossiers | ? | creerDossier,tracerOperation,modifierEtatTraitement | ? | ? | ? | dossier);
  List_Of_HiddenCst_Ids(Machine(dossier)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(dossier)) == (max_op);
  List_Of_VisibleVar_Ids(Machine(dossier)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(dossier)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(dossier)) == (Type(EMPLOYE) == Cst(SetOf(atype(EMPLOYE,"[EMPLOYE","]EMPLOYE")));Type(LIBELLE_TRAITEMENT) == Cst(SetOf(etype(LIBELLE_TRAITEMENT,0,2)));Type(ETAT_TRAITEMENT) == Cst(SetOf(etype(ETAT_TRAITEMENT,0,2))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(dossier)) == (Type(creation) == Cst(etype(LIBELLE_TRAITEMENT,0,2));Type(modification) == Cst(etype(LIBELLE_TRAITEMENT,0,2));Type(suppression) == Cst(etype(LIBELLE_TRAITEMENT,0,2));Type(commence) == Cst(etype(ETAT_TRAITEMENT,0,2));Type(en_cours) == Cst(etype(ETAT_TRAITEMENT,0,2));Type(termine) == Cst(etype(ETAT_TRAITEMENT,0,2));Type(max_op) == Cst(btype(INTEGER,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(dossier)) == (Type(historique) == Mvl(SetOf(btype(INTEGER,?,?)*SetOf(btype(INTEGER,?,?)*atype(EMPLOYE,?,?)*(etype(LIBELLE_TRAITEMENT,?,?)*etype(ETAT_TRAITEMENT,?,?)))));Type(traitement_etat) == Mvl(SetOf(btype(INTEGER,?,?)*atype(EMPLOYE,?,?)*etype(ETAT_TRAITEMENT,0,2)));Type(traitement_lib) == Mvl(SetOf(btype(INTEGER,?,?)*atype(EMPLOYE,?,?)*etype(LIBELLE_TRAITEMENT,0,2)));Type(modification_etat) == Mvl(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)*etype(ETAT_TRAITEMENT,?,?)));Type(date_creation) == Mvl(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)));Type(proprietaire) == Mvl(SetOf(btype(INTEGER,?,?)*atype(EMPLOYE,?,?)));Type(nb_dossier) == Mvl(btype(INTEGER,?,?));Type(dates) == Mvl(SetOf(btype(INTEGER,?,?)));Type(employes) == Mvl(SetOf(atype(EMPLOYE,?,?)));Type(dossiers) == Mvl(SetOf(btype(INTEGER,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(dossier)) == (Type(modifierEtatTraitement) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*etype(ETAT_TRAITEMENT,?,?));Type(tracerOperation) == Cst(No_type,btype(INTEGER,?,?)*atype(EMPLOYE,?,?)*btype(INTEGER,?,?)*etype(LIBELLE_TRAITEMENT,?,?)*etype(ETAT_TRAITEMENT,?,?));Type(creerDossier) == Cst(No_type,atype(EMPLOYE,?,?)*btype(INTEGER,?,?)))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)
