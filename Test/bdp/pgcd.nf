Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(pgcd))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(pgcd))==(Machine(pgcd));
  Level(Machine(pgcd))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(pgcd)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(pgcd))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(pgcd))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(pgcd))==(?);
  List_Includes(Machine(pgcd))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(pgcd))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(pgcd))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(pgcd))==(?);
  Context_List_Variables(Machine(pgcd))==(?);
  Abstract_List_Variables(Machine(pgcd))==(?);
  Local_List_Variables(Machine(pgcd))==(?);
  List_Variables(Machine(pgcd))==(?);
  External_List_Variables(Machine(pgcd))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(pgcd))==(?);
  Abstract_List_VisibleVariables(Machine(pgcd))==(?);
  External_List_VisibleVariables(Machine(pgcd))==(?);
  Expanded_List_VisibleVariables(Machine(pgcd))==(?);
  List_VisibleVariables(Machine(pgcd))==(?);
  Internal_List_VisibleVariables(Machine(pgcd))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(pgcd))==(btrue);
  Gluing_List_Invariant(Machine(pgcd))==(btrue);
  Expanded_List_Invariant(Machine(pgcd))==(btrue);
  Abstract_List_Invariant(Machine(pgcd))==(btrue);
  Context_List_Invariant(Machine(pgcd))==(btrue);
  List_Invariant(Machine(pgcd))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(pgcd))==(btrue);
  Abstract_List_Assertions(Machine(pgcd))==(btrue);
  Context_List_Assertions(Machine(pgcd))==(btrue);
  List_Assertions(Machine(pgcd))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(pgcd))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(pgcd))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(pgcd))==(skip);
  Context_List_Initialisation(Machine(pgcd))==(skip);
  List_Initialisation(Machine(pgcd))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(pgcd))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(pgcd))==(btrue);
  List_Constraints(Machine(pgcd))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(pgcd))==(pgcd_calc);
  List_Operations(Machine(pgcd))==(pgcd_calc)
END
&
THEORY ListInputX IS
  List_Input(Machine(pgcd),pgcd_calc)==(xx,yy)
END
&
THEORY ListOutputX IS
  List_Output(Machine(pgcd),pgcd_calc)==(rr)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(pgcd),pgcd_calc)==(rr <-- pgcd_calc(xx,yy))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(pgcd),pgcd_calc)==(xx: INT & xx>=1 & xx<MAXINT & yy: INT & yy>=1 & yy<MAXINT)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(pgcd),pgcd_calc)==(xx: INT & xx>=1 & xx<MAXINT & yy: INT & yy>=1 & yy<MAXINT | @dd.(dd: INT & xx-xx/dd*dd = 0 & yy-yy/dd*dd = 0 & !dx.(dx: INT & dx<MAXINT & xx-xx/dx*dx = 0 & yy-yy/dx*dx = 0 => dx<dd) ==> rr:=dd));
  List_Substitution(Machine(pgcd),pgcd_calc)==(ANY dd WHERE dd: INT & xx-xx/dd*dd = 0 & yy-yy/dd*dd = 0 & !dx.(dx: INT & dx<MAXINT & xx-xx/dx*dx = 0 & yy-yy/dx*dx = 0 => dx<dd) THEN rr:=dd END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(pgcd))==(?);
  Inherited_List_Constants(Machine(pgcd))==(?);
  List_Constants(Machine(pgcd))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(pgcd))==(?);
  Context_List_Defered(Machine(pgcd))==(?);
  Context_List_Sets(Machine(pgcd))==(?);
  List_Valuable_Sets(Machine(pgcd))==(?);
  Inherited_List_Enumerated(Machine(pgcd))==(?);
  Inherited_List_Defered(Machine(pgcd))==(?);
  Inherited_List_Sets(Machine(pgcd))==(?);
  List_Enumerated(Machine(pgcd))==(?);
  List_Defered(Machine(pgcd))==(?);
  List_Sets(Machine(pgcd))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(pgcd))==(?);
  Expanded_List_HiddenConstants(Machine(pgcd))==(?);
  List_HiddenConstants(Machine(pgcd))==(?);
  External_List_HiddenConstants(Machine(pgcd))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(pgcd))==(btrue);
  Context_List_Properties(Machine(pgcd))==(btrue);
  Inherited_List_Properties(Machine(pgcd))==(btrue);
  List_Properties(Machine(pgcd))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(pgcd),pgcd_calc)==(Var(dd) == btype(INTEGER,?,?))
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(pgcd)) == (? | ? | ? | ? | pgcd_calc | ? | ? | ? | pgcd);
  List_Of_HiddenCst_Ids(Machine(pgcd)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(pgcd)) == (?);
  List_Of_VisibleVar_Ids(Machine(pgcd)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(pgcd)) == (?: ?)
END
&
THEORY OperationsEnvX IS
  Operations(Machine(pgcd)) == (Type(pgcd_calc) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)));
  Observers(Machine(pgcd)) == (Type(pgcd_calc) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)))
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
