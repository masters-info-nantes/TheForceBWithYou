Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(pgcd_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(pgcd_i))==(Machine(pgcd));
  Level(Implementation(pgcd_i))==(1);
  Upper_Level(Implementation(pgcd_i))==(Machine(pgcd))
END
&
THEORY LoadedStructureX IS
  Implementation(pgcd_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(pgcd_i))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(pgcd_i))==(?);
  Inherited_List_Includes(Implementation(pgcd_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(pgcd_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(pgcd_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(pgcd_i))==(?);
  Context_List_Variables(Implementation(pgcd_i))==(?);
  Abstract_List_Variables(Implementation(pgcd_i))==(?);
  Local_List_Variables(Implementation(pgcd_i))==(?);
  List_Variables(Implementation(pgcd_i))==(?);
  External_List_Variables(Implementation(pgcd_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(pgcd_i))==(?);
  Abstract_List_VisibleVariables(Implementation(pgcd_i))==(?);
  External_List_VisibleVariables(Implementation(pgcd_i))==(?);
  Expanded_List_VisibleVariables(Implementation(pgcd_i))==(?);
  List_VisibleVariables(Implementation(pgcd_i))==(?);
  Internal_List_VisibleVariables(Implementation(pgcd_i))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(pgcd_i))==(btrue);
  Expanded_List_Invariant(Implementation(pgcd_i))==(btrue);
  Abstract_List_Invariant(Implementation(pgcd_i))==(btrue);
  Context_List_Invariant(Implementation(pgcd_i))==(btrue);
  List_Invariant(Implementation(pgcd_i))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(pgcd_i))==(btrue);
  Abstract_List_Assertions(Implementation(pgcd_i))==(btrue);
  Context_List_Assertions(Implementation(pgcd_i))==(btrue);
  List_Assertions(Implementation(pgcd_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(pgcd_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(pgcd_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(pgcd_i))==(skip);
  Context_List_Initialisation(Implementation(pgcd_i))==(skip);
  List_Initialisation(Implementation(pgcd_i))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(pgcd_i))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(pgcd_i))==(btrue);
  List_Context_Constraints(Implementation(pgcd_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(pgcd_i))==(pgcd_calc);
  List_Operations(Implementation(pgcd_i))==(pgcd_calc)
END
&
THEORY ListInputX IS
  List_Input(Implementation(pgcd_i),pgcd_calc)==(xx,yy)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(pgcd_i),pgcd_calc)==(rr)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(pgcd_i),pgcd_calc)==(rr <-- pgcd_calc(xx,yy))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(pgcd_i),pgcd_calc)==(btrue);
  List_Precondition(Implementation(pgcd_i),pgcd_calc)==(xx: INT & xx>=1 & xx<MAXINT & yy: INT & yy>=1 & yy<MAXINT)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(pgcd_i),pgcd_calc)==(xx: INT & xx>=1 & xx<MAXINT & yy: INT & yy>=1 & yy<MAXINT | @(cd,rx,ry,cr).(cd:=1;WHILE cd<xx & cd<yy DO (xx/cd: INT & xx: INT & cd: INT & not(cd = 0) & xx/cd*cd: INT & xx-xx/cd*cd: INT | rx:=xx-xx/cd*cd);(yy/cd: INT & yy: INT & cd: INT & not(cd = 0) & yy/cd*cd: INT & yy-yy/cd*cd: INT | ry:=yy-yy/cd*cd);(rx = 0 & ry = 0 ==> cr:=cd [] not(rx = 0 & ry = 0) ==> skip);(cd+1: INT & cd: INT & 1: INT | cd:=cd+1) INVARIANT xx: INT & yy: INT & rx: INT & rx<MAXINT & ry: INT & ry<MAXINT & cd<MAXINT & xx = cr*(xx/cr)+rx & yy = cr*(yy/cr)+ry VARIANT xx-cd END));
  List_Substitution(Implementation(pgcd_i),pgcd_calc)==(VAR cd,rx,ry,cr IN cd:=1;WHILE cd<xx & cd<yy DO rx:=xx-xx/cd*cd;ry:=yy-yy/cd*cd;IF rx = 0 & ry = 0 THEN cr:=cd END;cd:=cd+1 INVARIANT xx: INT & yy: INT & rx: INT & rx<MAXINT & ry: INT & ry<MAXINT & cd<MAXINT & xx = cr*(xx/cr)+rx & yy = cr*(yy/cr)+ry VARIANT xx-cd END END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(pgcd_i))==(?);
  Inherited_List_Constants(Implementation(pgcd_i))==(?);
  List_Constants(Implementation(pgcd_i))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(pgcd_i))==(?);
  Context_List_Defered(Implementation(pgcd_i))==(?);
  Context_List_Sets(Implementation(pgcd_i))==(?);
  List_Own_Enumerated(Implementation(pgcd_i))==(?);
  List_Valuable_Sets(Implementation(pgcd_i))==(?);
  Inherited_List_Enumerated(Implementation(pgcd_i))==(?);
  Inherited_List_Defered(Implementation(pgcd_i))==(?);
  Inherited_List_Sets(Implementation(pgcd_i))==(?);
  List_Enumerated(Implementation(pgcd_i))==(?);
  List_Defered(Implementation(pgcd_i))==(?);
  List_Sets(Implementation(pgcd_i))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(pgcd_i))==(?);
  Expanded_List_HiddenConstants(Implementation(pgcd_i))==(?);
  List_HiddenConstants(Implementation(pgcd_i))==(?);
  External_List_HiddenConstants(Implementation(pgcd_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(pgcd_i))==(btrue);
  Context_List_Properties(Implementation(pgcd_i))==(btrue);
  Inherited_List_Properties(Implementation(pgcd_i))==(btrue);
  List_Properties(Implementation(pgcd_i))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(pgcd_i))==(aa: aa);
  List_Values(Implementation(pgcd_i))==(?)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  Operations(Implementation(pgcd_i))==(Type(pgcd_calc) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(pgcd_i)) == (? | ? | ? | ? | pgcd_calc | ? | ? | ? | pgcd_i);
  List_Of_HiddenCst_Ids(Implementation(pgcd_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(pgcd_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(pgcd_i)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(pgcd_i)) == (?: ?)
END
&
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(pgcd_i),pgcd_calc, 1) == (Type(cd) == Lvl(btype(INTEGER,?,?));Type(rx) == Lvl(btype(INTEGER,?,?));Type(ry) == Lvl(btype(INTEGER,?,?));Type(cr) == Lvl(btype(INTEGER,?,?)))
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
&
THEORY ListLocalOperationsX IS
  List_Local_Operations(Implementation(pgcd_i))==(?)
END
&
THEORY ListLocalInputX END
&
THEORY ListLocalOutputX END
&
THEORY ListLocalHeaderX END
&
THEORY ListLocalPreconditionX END
&
THEORY ListLocalSubstitutionX END
&
THEORY TypingPredicateX IS
  TypingPredicate(Implementation(pgcd_i))==(btrue)
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
