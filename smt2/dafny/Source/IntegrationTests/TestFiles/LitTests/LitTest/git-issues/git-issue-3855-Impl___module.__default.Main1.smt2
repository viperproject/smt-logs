(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :auto_config false)
(set-option :type_check true)
(set-option :smt.qi.eager_threshold 100)
(set-option :smt.delay_units true)
(set-option :model_evaluator.completion true)
(set-option :model.completion true)
(set-option :model.compact false)
(set-option :smt.case_split 3)
(set-option :smt.mbqi false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
(set-option :smt.arith.solver 2)
; done setting options


(set-info :category "industrial")
(declare-sort |T@U| 0)
(declare-sort |T@T| 0)
(declare-fun real_pow (Real Real) Real)
(declare-fun UOrdering2 (|T@U| |T@U|) Bool)
(declare-fun UOrdering3 (|T@T| |T@U| |T@U|) Bool)
(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-fun TBool () T@U)
(declare-fun TChar () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagChar () T@U)
(declare-fun TagSet () T@U)
(declare-fun TagSeq () T@U)
(declare-fun TagMap () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun Tagclass._module.Mode () T@U)
(declare-fun Tagclass._module.Object () T@U)
(declare-fun Tagclass._module.Region () T@U)
(declare-fun Tagclass._module.Memory () T@U)
(declare-fun Tagclass._module.Memory? () T@U)
(declare-fun Tagclass._module.Status () T@U)
(declare-fun Tagclass._module.Object? () T@U)
(declare-fun |##_module.Mode.Imm| () T@U)
(declare-fun |##_module.Mode.Iso| () T@U)
(declare-fun |##_module.Mode.Mut| () T@U)
(declare-fun |##_module.Mode.Tmp| () T@U)
(declare-fun |##_module.Mode.Sus| () T@U)
(declare-fun |##_module.Region.Frozen| () T@U)
(declare-fun |##_module.Region.Heap| () T@U)
(declare-fun |##_module.Region.Stack| () T@U)
(declare-fun |##_module.Region.Frame| () T@U)
(declare-fun |##_module.Region.Isolate| () T@U)
(declare-fun class._module.Object? () T@U)
(declare-fun |##_module.Edge.Edge| () T@U)
(declare-fun Tagclass._module.Edge () T@U)
(declare-fun class._module.Memory? () T@U)
(declare-fun |##_module.Status.Success| () T@U)
(declare-fun |##_module.Status.Failure| () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$Mode () T@U)
(declare-fun tytagFamily$Object () T@U)
(declare-fun tytagFamily$Region () T@U)
(declare-fun tytagFamily$Memory () T@U)
(declare-fun tytagFamily$Status () T@U)
(declare-fun tytagFamily$Edge () T@U)
(declare-fun field$fields () T@U)
(declare-fun field$objects () T@U)
(declare-fun Ctor (T@T) Int)
(declare-fun boolType () T@T)
(declare-fun intType () T@T)
(declare-fun realType () T@T)
(declare-fun bool_2_U (Bool) T@U)
(declare-fun U_2_bool (T@U) Bool)
(declare-fun int_2_U (Int) T@U)
(declare-fun U_2_int (T@U) Int)
(declare-fun real_2_U (Real) T@U)
(declare-fun U_2_real (T@U) Real)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.AssignmentCompatible (T@U T@U) Bool)
(declare-fun |_module.__default.AssignmentCompatible#canCall| (T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Object () T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Mode () T@U)
(declare-fun _module.Object.region (T@U) T@U)
(declare-fun _module.Mode.Imm_q (T@U) Bool)
(declare-fun _module.Region.Frozen_q (T@U) Bool)
(declare-fun _module.Mode.Iso_q (T@U) Bool)
(declare-fun _module.Region.Isolate_q (T@U) Bool)
(declare-fun _module.Mode.Mut_q (T@U) Bool)
(declare-fun _module.Region.Heap_q (T@U) Bool)
(declare-fun _module.Mode.Tmp_q (T@U) Bool)
(declare-fun _module.Region.Stack_q (T@U) Bool)
(declare-fun _module.Memory.ObjectsAreValid (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.Memory.ObjectsAreValid#canCall| (T@U T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun Tclass._module.Memory () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun _module.Object.Valid (Bool T@U T@U) Bool)
(declare-fun reveal__module.Object.Valid () Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |_module.Object.Valid#canCall| (T@U T@U) Bool)
(declare-fun _module.__default.VeniceReferenceOK (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |_module.__default.VeniceReferenceOK#canCall| (T@U T@U) Bool)
(declare-fun _module.Region.region (T@U) T@U)
(declare-fun FDim (T@U) Int)
(declare-fun Tag (T@U) T@U)
(declare-fun DeclName (T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |#_module.Edge.Edge| (T@U T@U T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun Tclass._module.Edge () T@U)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._module.Object? () T@U)
(declare-fun Tclass._module.Region () T@U)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun _module.Memory.refCountEdges (T@U T@U T@U) Int)
(declare-fun |_module.Memory.refCountEdges#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Memory.incomingEdges#canCall| (T@U T@U T@U) Bool)
(declare-fun |Set#Card| (T@U) Int)
(declare-fun _module.Memory.incomingEdges (T@U T@U T@U) T@U)
(declare-fun _module.Memory.Valid (Bool T@U T@U) Bool)
(declare-fun |_module.Memory.Valid#canCall| (T@U T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun _module.Memory.objects () T@U)
(declare-fun |_module.Memory.OutgoingReferencesAreInThisHeap#canCall| (T@U T@U T@U) Bool)
(declare-fun _module.Memory.OutgoingReferencesAreInThisHeap (T@U T@U T@U) Bool)
(declare-fun |_module.Memory.wholeEnchilada#canCall| (T@U T@U T@U) Bool)
(declare-fun _module.Memory.wholeEnchilada (T@U T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun |_module.Region#Equal| (T@U T@U) Bool)
(declare-fun _module.Region.Frame_q (T@U) Bool)
(declare-fun _module.Region.prev (T@U) T@U)
(declare-fun |#_module.Status.Failure| (T@U) T@U)
(declare-fun |lambda#54| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun |Map#Glue| (T@U T@U T@U) T@U)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun _module.Edge.f (T@U) T@U)
(declare-fun _module.Edge.n (T@U) T@U)
(declare-fun _module.Edge.t (T@U) T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun _module.Memory.Valid2 (Bool T@U T@U T@U) Bool)
(declare-fun _module.Object.fields () T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun _module.Memory.justHeapExternalEdges (T@U T@U) T@U)
(declare-fun |_module.Memory.justHeapExternalEdges#canCall| (T@U T@U) Bool)
(declare-fun |$IsA#_module.Region| (T@U) Bool)
(declare-fun _module.Edge.Edge_q (T@U) Bool)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun |lambda#76| (T@U T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun |_module.Memory.isosRefCountZeroOrOne#canCall| (T@U T@U T@U) Bool)
(declare-fun _module.Memory.isosRefCountZeroOrOne (T@U T@U T@U) Bool)
(declare-fun |_module.Memory.heapExternalsZeroOrOne#canCall| (T@U T@U T@U) Bool)
(declare-fun _module.Memory.heapExternalsZeroOrOne (T@U T@U T@U) Bool)
(declare-fun |Set#Intersection| (T@U T@U) T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |#_module.Mode.Imm| () T@U)
(declare-fun |#_module.Mode.Iso| () T@U)
(declare-fun |#_module.Mode.Mut| () T@U)
(declare-fun |#_module.Mode.Tmp| () T@U)
(declare-fun |#_module.Mode.Sus| () T@U)
(declare-fun |#_module.Region.Frozen| () T@U)
(declare-fun |#_module.Region.Isolate| () T@U)
(declare-fun |#_module.Status.Success| () T@U)
(declare-fun Tclass._module.Memory? () T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun _module.Memory.externalEdges (T@U T@U T@U) T@U)
(declare-fun |_module.Memory.externalEdges#canCall| (T@U T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun _module.Memory.heapExternalsZeroOrOneEdges (T@U T@U) Bool)
(declare-fun |_module.Memory.heapExternalsZeroOrOneEdges#canCall| (T@U T@U) Bool)
(declare-fun |lambda#52| (T@U T@U T@U) T@U)
(declare-fun |lambda#55| (T@U T@U) T@U)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun Tclass._module.Status () T@U)
(declare-fun _module.Object.fieldModes (T@U) T@U)
(declare-fun MapType () T@T)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun |_module.Memory.Valid2#canCall| (T@U T@U T@U) Bool)
(declare-fun reveal__module.Memory.Valid () Bool)
(declare-fun |_module.Memory.HeapObjectsAreMonotonic#canCall| (T@U T@U T@U) Bool)
(declare-fun _module.Memory.HeapObjectsAreMonotonic (T@U T@U T@U) Bool)
(declare-fun |_module.Memory.AllImmutablesAreImmutable#canCall| (T@U T@U T@U) Bool)
(declare-fun _module.Memory.AllImmutablesAreImmutable (T@U T@U T@U) Bool)
(declare-fun |_module.Mode#Equal| (T@U T@U) Bool)
(declare-fun _module.Object.outgoing (T@U T@U) T@U)
(declare-fun |_module.Object.outgoing#canCall| (T@U T@U) Bool)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun |Map#Equal| (T@U T@U) Bool)
(declare-fun |Map#Card| (T@U) Int)
(declare-fun |Map#Build| (T@U T@U T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun _module.Mode.Sus_q (T@U) Bool)
(declare-fun _module.Status.Success_q (T@U) Bool)
(declare-fun _module.Status.Failure_q (T@U) Bool)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun _module.Object.size (T@U T@U) Int)
(declare-fun |_module.Object.size#canCall| (T@U T@U) Bool)
(declare-fun |#_module.Region.Heap| (T@U) T@U)
(declare-fun |#_module.Region.Stack| (T@U) T@U)
(declare-fun |#_module.Region.Frame| (T@U) T@U)
(declare-fun _module.Memory.edges (T@U T@U T@U) T@U)
(declare-fun |_module.Memory.edges#canCall| (T@U T@U T@U) Bool)
(declare-fun _module.Memory.justTheIsos (T@U T@U T@U) T@U)
(declare-fun |_module.Memory.justTheIsos#canCall| (T@U T@U T@U) Bool)
(declare-fun |lambda#38| (T@U T@U) T@U)
(declare-fun |lambda#71| (T@U T@U T@U T@U) T@U)
(declare-fun |lambda#41| (T@U T@U T@U) T@U)
(declare-fun _module.Object.AllFieldsContentsConsistentWithTheirDeclaration (T@U T@U) Bool)
(declare-fun |_module.Object.AllFieldsContentsConsistentWithTheirDeclaration#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.AllFieldsAreDeclared (T@U T@U) Bool)
(declare-fun |Map#Empty| () T@U)
(declare-fun |Map#Values| (T@U) T@U)
(declare-fun _module.Object.AllOutgoingReferencesAreVenice (T@U T@U) Bool)
(declare-fun _module.__default.not (Bool) Bool)
(declare-fun |_module.__default.not#canCall| (Bool) Bool)
(declare-fun _module.Memory.betterCopyDynamicCheck (T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun |_module.Memory.betterCopyDynamicCheck#canCall| (T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun |$IsA#_module.Mode| (T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun |_module.Object.AllFieldsAreDeclared#canCall| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun charType () T@T)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun _module.Status.error (T@U) T@U)
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun BoxRank (T@U) Int)
(declare-fun |char#FromInt| (Int) T@U)
(declare-fun |char#ToInt| (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |Map#Items| (T@U) T@U)
(declare-fun |_module.Object.AllOutgoingReferencesAreVenice#canCall| (T@U T@U) Bool)
(declare-fun reveal__module.Memory.Valid2 () Bool)
(declare-fun |lambda#47| (T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= (Ctor boolType) 0) (= (Ctor intType) 1)) (= (Ctor realType) 2)) (forall ((arg0 Bool) ) (! (= (U_2_bool (bool_2_U arg0)) arg0)
 :qid |typeInv:U_2_bool|
 :pattern ( (bool_2_U arg0))
))) (forall ((x T@U) ) (! (= (bool_2_U (U_2_bool x)) x)
 :qid |cast:U_2_bool|
 :pattern ( (U_2_bool x))
))) (forall ((arg0@@0 Int) ) (! (= (U_2_int (int_2_U arg0@@0)) arg0@@0)
 :qid |typeInv:U_2_int|
 :pattern ( (int_2_U arg0@@0))
))) (forall ((x@@0 T@U) ) (! (= (int_2_U (U_2_int x@@0)) x@@0)
 :qid |cast:U_2_int|
 :pattern ( (U_2_int x@@0))
))) (forall ((arg0@@1 Real) ) (! (= (U_2_real (real_2_U arg0@@1)) arg0@@1)
 :qid |typeInv:U_2_real|
 :pattern ( (real_2_U arg0@@1))
))) (forall ((x@@1 T@U) ) (! (= (real_2_U (U_2_real x@@1)) x@@1)
 :qid |cast:U_2_real|
 :pattern ( (U_2_real x@@1))
))))
(assert (distinct TBool TChar TagBool TagChar TagSet TagSeq TagMap alloc allocName |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass._module.Mode Tagclass._module.Object Tagclass._module.Region Tagclass._module.Memory Tagclass._module.Memory? Tagclass._module.Status Tagclass._module.Object? |##_module.Mode.Imm| |##_module.Mode.Iso| |##_module.Mode.Mut| |##_module.Mode.Tmp| |##_module.Mode.Sus| |##_module.Region.Frozen| |##_module.Region.Heap| |##_module.Region.Stack| |##_module.Region.Frame| |##_module.Region.Isolate| class._module.Object? |##_module.Edge.Edge| Tagclass._module.Edge class._module.Memory? |##_module.Status.Success| |##_module.Status.Failure| |tytagFamily$_tuple#2| tytagFamily$Mode tytagFamily$Object tytagFamily$Region tytagFamily$Memory tytagFamily$Status tytagFamily$Edge field$fields field$objects)
)
(assert  (and (= (Ctor refType) 3) (= (Ctor DatatypeTypeType) 4)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|o#0| T@U) (|t#0| T@U) ) (!  (=> (or (|_module.__default.AssignmentCompatible#canCall| |o#0| |t#0|) (and (< 3 $FunctionContextHeight) (and ($Is refType |o#0| Tclass._module.Object) ($Is DatatypeTypeType |t#0| Tclass._module.Mode)))) (= (_module.__default.AssignmentCompatible |o#0| |t#0|) (let ((|r#0| (_module.Object.region |o#0|)))
(ite (_module.Mode.Imm_q |t#0|) (_module.Region.Frozen_q |r#0|) (ite (_module.Mode.Iso_q |t#0|) (_module.Region.Isolate_q |r#0|) (ite (_module.Mode.Mut_q |t#0|) (_module.Region.Heap_q |r#0|) (ite (_module.Mode.Tmp_q |t#0|) (_module.Region.Stack_q |r#0|)  (or (_module.Region.Heap_q |r#0|) (_module.Region.Stack_q |r#0|)))))))))
 :qid |gitissue3855dfy.63:32|
 :skolemid |597|
 :pattern ( (_module.__default.AssignmentCompatible |o#0| |t#0|))
))))
(assert (= (Ctor SetType) 5))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($Heap T@U) (this T@U) (|os#0| T@U) ) (!  (=> (or (|_module.Memory.ObjectsAreValid#canCall| $Heap this |os#0|) (and (< 6 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.Memory) ($IsAlloc refType this Tclass._module.Memory $Heap)))) ($Is SetType |os#0| (TSet Tclass._module.Object))))) (and (forall ((|o#0@@0| T@U) ) (!  (=> ($Is refType |o#0@@0| Tclass._module.Object) (=> (|Set#IsMember| |os#0| ($Box refType |o#0@@0|)) (|_module.Object.Valid#canCall| $Heap |o#0@@0|)))
 :qid |gitissue3855dfy.207:15|
 :skolemid |856|
 :pattern ( (_module.Object.Valid reveal__module.Object.Valid $Heap |o#0@@0|))
 :pattern ( (|Set#IsMember| |os#0| ($Box refType |o#0@@0|)))
)) (= (_module.Memory.ObjectsAreValid $Heap this |os#0|) (forall ((|o#0@@1| T@U) ) (!  (=> (and ($Is refType |o#0@@1| Tclass._module.Object) (|Set#IsMember| |os#0| ($Box refType |o#0@@1|))) (_module.Object.Valid reveal__module.Object.Valid $Heap |o#0@@1|))
 :qid |gitissue3855dfy.207:15|
 :skolemid |855|
 :pattern ( (_module.Object.Valid reveal__module.Object.Valid $Heap |o#0@@1|))
 :pattern ( (|Set#IsMember| |os#0| ($Box refType |o#0@@1|)))
)))))
 :qid |gitissue3855dfy.204:13|
 :skolemid |857|
 :pattern ( (_module.Memory.ObjectsAreValid $Heap this |os#0|) ($IsGoodHeap $Heap))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|f#0| T@U) (|t#0@@0| T@U) ) (!  (=> (or (|_module.__default.VeniceReferenceOK#canCall| (Lit refType |f#0|) (Lit refType |t#0@@0|)) (and (< 3 $FunctionContextHeight) (and ($Is refType |f#0| Tclass._module.Object) ($Is refType |t#0@@0| Tclass._module.Object)))) (= (_module.__default.VeniceReferenceOK (Lit refType |f#0|) (Lit refType |t#0@@0|)) (ite (_module.Region.Frozen_q (_module.Object.region (Lit refType |t#0@@0|))) true (ite (_module.Region.Heap_q (_module.Object.region (Lit refType |f#0|)))  (or (_module.Region.Isolate_q (_module.Object.region (Lit refType |t#0@@0|))) (and (_module.Region.Heap_q (_module.Object.region (Lit refType |t#0@@0|))) (= (_module.Region.region (_module.Object.region (Lit refType |t#0@@0|))) (_module.Region.region (_module.Object.region (Lit refType |f#0|)))))) (ite (_module.Region.Isolate_q (_module.Object.region (Lit refType |f#0|)))  (or (_module.Region.Isolate_q (_module.Object.region (Lit refType |t#0@@0|))) (and (_module.Region.Heap_q (_module.Object.region (Lit refType |t#0@@0|))) (= (_module.Region.region (_module.Object.region (Lit refType |t#0@@0|))) (Lit refType |f#0|)))) false)))))
 :qid |gitissue3855dfy.38:29|
 :weight 3
 :skolemid |594|
 :pattern ( (_module.__default.VeniceReferenceOK (Lit refType |f#0|) (Lit refType |t#0@@0|)))
))))
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TChar) TagChar))
(assert (= (DeclName alloc) allocName))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) (|a#6#2#0| T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| |a#6#1#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#6#1#0| i))) (DtRank (|#_module.Edge.Edge| |a#6#0#0| |a#6#1#0| |a#6#2#0|))))
 :qid |gitissue3855dfy.149:22|
 :skolemid |817|
 :pattern ( (|Seq#Index| |a#6#1#0| i) (|#_module.Edge.Edge| |a#6#0#0| |a#6#1#0| |a#6#2#0|))
)))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |129|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (= (Ctor SeqType) 6))
(assert (forall ((|a#2#0#0| T@U) (|a#2#1#0| T@U) (|a#2#2#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Edge.Edge| |a#2#0#0| |a#2#1#0| |a#2#2#0|) Tclass._module.Edge)  (and (and ($Is refType |a#2#0#0| Tclass._module.Object) ($Is SeqType |a#2#1#0| (TSeq TChar))) ($Is refType |a#2#2#0| Tclass._module.Object)))
 :qid |gitissue3855dfy.149:22|
 :skolemid |809|
 :pattern ( ($Is DatatypeTypeType (|#_module.Edge.Edge| |a#2#0#0| |a#2#1#0| |a#2#2#0|) Tclass._module.Edge))
)))
(assert  (=> (< 2 $FunctionContextHeight) (forall (($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) Tclass._module.Object?)) ($Is DatatypeTypeType (_module.Object.region $o) Tclass._module.Region))
 :qid |unknown.0:0|
 :skolemid |740|
 :pattern ( (_module.Object.region $o))
))))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |130|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (b T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| a@@1 y@@0) (|Set#IsMember| (|Set#Union| a@@1 b) y@@0))
 :qid |DafnyPreludebpl.708:15|
 :skolemid |134|
 :pattern ( (|Set#Union| a@@1 b) (|Set#IsMember| a@@1 y@@0))
)))
(assert (forall ((a@@2 T@U) (b@@0 T@U) (y@@1 T@U) ) (!  (=> (|Set#IsMember| b@@0 y@@1) (|Set#IsMember| (|Set#Union| a@@2 b@@0) y@@1))
 :qid |DafnyPreludebpl.712:15|
 :skolemid |135|
 :pattern ( (|Set#Union| a@@2 b@@0) (|Set#IsMember| b@@0 y@@1))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((this@@0 T@U) (|t#0@@1| T@U) (|edges#0| T@U) ) (!  (=> (or (|_module.Memory.refCountEdges#canCall| this@@0 |t#0@@1| |edges#0|) (and (< 3 $FunctionContextHeight) (and (and (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass._module.Memory)) ($Is refType |t#0@@1| Tclass._module.Object)) ($Is SetType |edges#0| (TSet Tclass._module.Edge))))) (and (|_module.Memory.incomingEdges#canCall| this@@0 |t#0@@1| |edges#0|) (= (_module.Memory.refCountEdges this@@0 |t#0@@1| |edges#0|) (|Set#Card| (_module.Memory.incomingEdges this@@0 |t#0@@1| |edges#0|)))))
 :qid |gitissue3855dfy.251:12|
 :skolemid |910|
 :pattern ( (_module.Memory.refCountEdges this@@0 |t#0@@1| |edges#0|))
))))
(assert (forall ((a@@3 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@3 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |128|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o))
)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 7)) (= (Ctor BoxType) 8)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 9)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@1 T@U) ) (!  (=> (or (|_module.Memory.Valid#canCall| $Heap@@0 this@@1) (and (< 7 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.Memory) ($IsAlloc refType this@@1 Tclass._module.Memory $Heap@@0)))))) (and (and (|_module.Memory.ObjectsAreValid#canCall| $Heap@@0 this@@1 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Memory.objects))) (=> (_module.Memory.ObjectsAreValid $Heap@@0 this@@1 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Memory.objects))) (and (|_module.Memory.OutgoingReferencesAreInThisHeap#canCall| $Heap@@0 this@@1 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Memory.objects))) (=> (_module.Memory.OutgoingReferencesAreInThisHeap $Heap@@0 this@@1 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Memory.objects))) (|_module.Memory.wholeEnchilada#canCall| $Heap@@0 this@@1 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Memory.objects))))))) (= (_module.Memory.Valid true $Heap@@0 this@@1)  (and (and (_module.Memory.ObjectsAreValid $Heap@@0 this@@1 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Memory.objects))) (_module.Memory.OutgoingReferencesAreInThisHeap $Heap@@0 this@@1 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Memory.objects)))) (_module.Memory.wholeEnchilada $Heap@@0 this@@1 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Memory.objects)))))))
 :qid |gitissue3855dfy.173:40|
 :skolemid |836|
 :pattern ( (_module.Memory.Valid true $Heap@@0 this@@1) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((a@@4 T@U) (b@@1 T@U) ) (!  (=> (and (_module.Region.Heap_q a@@4) (_module.Region.Heap_q b@@1)) (= (|_module.Region#Equal| a@@4 b@@1) (= (_module.Region.region a@@4) (_module.Region.region b@@1))))
 :qid |unknown.0:0|
 :skolemid |733|
 :pattern ( (|_module.Region#Equal| a@@4 b@@1) (_module.Region.Heap_q a@@4))
 :pattern ( (|_module.Region#Equal| a@@4 b@@1) (_module.Region.Heap_q b@@1))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) ) (!  (=> (and (_module.Region.Stack_q a@@5) (_module.Region.Stack_q b@@2)) (= (|_module.Region#Equal| a@@5 b@@2) (= (_module.Region.region a@@5) (_module.Region.region b@@2))))
 :qid |unknown.0:0|
 :skolemid |734|
 :pattern ( (|_module.Region#Equal| a@@5 b@@2) (_module.Region.Stack_q a@@5))
 :pattern ( (|_module.Region#Equal| a@@5 b@@2) (_module.Region.Stack_q b@@2))
)))
(assert (forall ((a@@6 T@U) (b@@3 T@U) ) (!  (=> (and (_module.Region.Frame_q a@@6) (_module.Region.Frame_q b@@3)) (= (|_module.Region#Equal| a@@6 b@@3) (= (_module.Region.prev a@@6) (_module.Region.prev b@@3))))
 :qid |unknown.0:0|
 :skolemid |735|
 :pattern ( (|_module.Region#Equal| a@@6 b@@3) (_module.Region.Frame_q a@@6))
 :pattern ( (|_module.Region#Equal| a@@6 b@@3) (_module.Region.Frame_q b@@3))
)))
(assert (forall ((|a#9#0#0| T@U) (i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| |a#9#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#9#0#0| i@@0))) (DtRank (|#_module.Status.Failure| |a#9#0#0|))))
 :qid |gitissue3855dfy.1230:11|
 :skolemid |1389|
 :pattern ( (|Seq#Index| |a#9#0#0| i@@0) (|#_module.Status.Failure| |a#9#0#0|))
)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|$w#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#54| |l#0| |l#1|) |$w#0|))  (and ($IsBox |$w#0| |l#0|) (|Set#IsMember| |l#1| |$w#0|)))
 :qid |gitissue3855dfy.19:10|
 :skolemid |1418|
 :pattern ( (MapType0Select BoxType boolType (|lambda#54| |l#0| |l#1|) |$w#0|))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) (t T@U) ) (! (= (|Map#Domain| (|Map#Glue| a@@7 b@@4 t)) a@@7)
 :qid |DafnyPreludebpl.1443:15|
 :skolemid |286|
 :pattern ( (|Map#Domain| (|Map#Glue| a@@7 b@@4 t)))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) (t@@0 T@U) ) (! (= (|Map#Elements| (|Map#Glue| a@@8 b@@5 t@@0)) b@@5)
 :qid |DafnyPreludebpl.1446:15|
 :skolemid |287|
 :pattern ( (|Map#Elements| (|Map#Glue| a@@8 b@@5 t@@0)))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) (|a#0#2#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Edge.Edge| |a#0#0#0| |a#0#1#0| |a#0#2#0|)) |##_module.Edge.Edge|)
 :qid |gitissue3855dfy.149:22|
 :skolemid |804|
 :pattern ( (|#_module.Edge.Edge| |a#0#0#0| |a#0#1#0| |a#0#2#0|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) (|a#4#2#0| T@U) ) (! (= (_module.Edge.f (|#_module.Edge.Edge| |a#4#0#0| |a#4#1#0| |a#4#2#0|)) |a#4#0#0|)
 :qid |gitissue3855dfy.149:22|
 :skolemid |815|
 :pattern ( (|#_module.Edge.Edge| |a#4#0#0| |a#4#1#0| |a#4#2#0|))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) (|a#5#2#0| T@U) ) (! (= (_module.Edge.n (|#_module.Edge.Edge| |a#5#0#0| |a#5#1#0| |a#5#2#0|)) |a#5#1#0|)
 :qid |gitissue3855dfy.149:22|
 :skolemid |816|
 :pattern ( (|#_module.Edge.Edge| |a#5#0#0| |a#5#1#0| |a#5#2#0|))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) (|a#8#2#0| T@U) ) (! (= (_module.Edge.t (|#_module.Edge.Edge| |a#8#0#0| |a#8#1#0| |a#8#2#0|)) |a#8#2#0|)
 :qid |gitissue3855dfy.149:22|
 :skolemid |819|
 :pattern ( (|#_module.Edge.Edge| |a#8#0#0| |a#8#1#0| |a#8#2#0|))
)))
(assert (forall ((a@@9 T@U) (b@@6 T@U) (y@@2 T@U) ) (!  (=> (|Set#IsMember| b@@6 y@@2) (not (|Set#IsMember| (|Set#Difference| a@@9 b@@6) y@@2)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |144|
 :pattern ( (|Set#Difference| a@@9 b@@6) (|Set#IsMember| b@@6 y@@2))
)))
(assert (forall (($reveal Bool) ($prevHeap T@U) ($h0 T@U) ($h1 T@U) (this@@2 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 Tclass._module.Memory))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@0 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (or (or (and (= $o@@0 this@@2) (= $f _module.Memory.objects)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 this@@2) _module.Memory.objects)) ($Box refType $o@@0))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 this@@2) _module.Memory.objects)) ($Box refType $o@@0)) (= $f _module.Object.fields)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@0) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@0) $f)))
 :qid |unknown.0:0|
 :skolemid |842|
)) (= (_module.Memory.Valid2 $reveal $prevHeap $h0 this@@2) (_module.Memory.Valid2 $reveal $prevHeap $h1 this@@2))))
 :qid |unknown.0:0|
 :skolemid |843|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.Memory.Valid2 $reveal $prevHeap $h1 this@@2))
)))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |468|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert  (=> (< 2 $FunctionContextHeight) (forall (($h T@U) ($o@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap $h) (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@1) alloc)))) ($IsAlloc DatatypeTypeType (_module.Object.region $o@@1) Tclass._module.Region $h))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |741|
 :pattern ( (_module.Object.region $o@@1) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@1) alloc)))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((this@@3 T@U) (|edges#0@@0| T@U) ) (!  (=> (or (|_module.Memory.justHeapExternalEdges#canCall| this@@3 |edges#0@@0|) (and (< 3 $FunctionContextHeight) (and (and (or (not (= this@@3 null)) (not true)) ($Is refType this@@3 Tclass._module.Memory)) ($Is SetType |edges#0@@0| (TSet Tclass._module.Edge))))) (and (forall ((|e#0| T@U) ) (!  (=> ($Is DatatypeTypeType |e#0| Tclass._module.Edge) (=> (|Set#IsMember| |edges#0@@0| ($Box DatatypeTypeType |e#0|)) (and (and (and (|$IsA#_module.Region| (_module.Object.region (_module.Edge.f |e#0|))) (|$IsA#_module.Region| (_module.Object.region (_module.Edge.t |e#0|)))) (and (_module.Edge.Edge_q |e#0|) (_module.Edge.Edge_q |e#0|))) (=> (not (|_module.Region#Equal| (_module.Object.region (_module.Edge.f |e#0|)) (_module.Object.region (_module.Edge.t |e#0|)))) (_module.Edge.Edge_q |e#0|)))))
 :qid |gitissue3855dfy.348:9|
 :skolemid |1012|
 :pattern ( (_module.Edge.t |e#0|))
 :pattern ( (_module.Edge.f |e#0|))
 :pattern ( (|Set#IsMember| |edges#0@@0| ($Box DatatypeTypeType |e#0|)))
)) (= (_module.Memory.justHeapExternalEdges this@@3 |edges#0@@0|) (|Set#FromBoogieMap| (|lambda#76| Tclass._module.Edge |edges#0@@0|)))))
 :qid |gitissue3855dfy.345:12|
 :skolemid |1013|
 :pattern ( (_module.Memory.justHeapExternalEdges this@@3 |edges#0@@0|))
))))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($Heap@@1 T@U) (this@@4 T@U) (|os#0@@0| T@U) ) (!  (=> (or (|_module.Memory.wholeEnchilada#canCall| $Heap@@1 this@@4 |os#0@@0|) (and (< 6 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@1) (and (or (not (= this@@4 null)) (not true)) (and ($Is refType this@@4 Tclass._module.Memory) ($IsAlloc refType this@@4 Tclass._module.Memory $Heap@@1)))) ($Is SetType |os#0@@0| (TSet Tclass._module.Object))))) (and (and (|_module.Memory.isosRefCountZeroOrOne#canCall| $Heap@@1 this@@4 |os#0@@0|) (=> (_module.Memory.isosRefCountZeroOrOne $Heap@@1 this@@4 |os#0@@0|) (|_module.Memory.heapExternalsZeroOrOne#canCall| $Heap@@1 this@@4 |os#0@@0|))) (= (_module.Memory.wholeEnchilada $Heap@@1 this@@4 |os#0@@0|)  (and (_module.Memory.isosRefCountZeroOrOne $Heap@@1 this@@4 |os#0@@0|) (_module.Memory.heapExternalsZeroOrOne $Heap@@1 this@@4 |os#0@@0|)))))
 :qid |gitissue3855dfy.265:13|
 :skolemid |930|
 :pattern ( (_module.Memory.wholeEnchilada $Heap@@1 this@@4 |os#0@@0|) ($IsGoodHeap $Heap@@1))
))))
(assert (forall ((a@@10 T@U) (b@@7 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Intersection| a@@10 b@@7) o@@1)  (and (|Set#IsMember| a@@10 o@@1) (|Set#IsMember| b@@7 o@@1)))
 :qid |DafnyPreludebpl.724:15|
 :skolemid |137|
 :pattern ( (|Set#IsMember| (|Set#Intersection| a@@10 b@@7) o@@1))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#_module.Mode.Imm|) |##_module.Mode.Imm|))
(assert (= (DatatypeCtorId |#_module.Mode.Iso|) |##_module.Mode.Iso|))
(assert (= (DatatypeCtorId |#_module.Mode.Mut|) |##_module.Mode.Mut|))
(assert (= (DatatypeCtorId |#_module.Mode.Tmp|) |##_module.Mode.Tmp|))
(assert (= (DatatypeCtorId |#_module.Mode.Sus|) |##_module.Mode.Sus|))
(assert (= (DatatypeCtorId |#_module.Region.Frozen|) |##_module.Region.Frozen|))
(assert (= (DatatypeCtorId |#_module.Region.Isolate|) |##_module.Region.Isolate|))
(assert (= (DatatypeCtorId |#_module.Status.Success|) |##_module.Status.Success|))
(assert (forall (($o@@2 T@U) ) (! (= ($Is refType $o@@2 Tclass._module.Object?)  (or (= $o@@2 null) (= (dtype $o@@2) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |738|
 :pattern ( ($Is refType $o@@2 Tclass._module.Object?))
)))
(assert (forall (($o@@3 T@U) ) (! (= ($Is refType $o@@3 Tclass._module.Memory?)  (or (= $o@@3 null) (= (dtype $o@@3) Tclass._module.Memory?)))
 :qid |unknown.0:0|
 :skolemid |824|
 :pattern ( ($Is refType $o@@3 Tclass._module.Memory?))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((this@@5 T@U) (|t#0@@2| T@U) (|edges#0@@1| T@U) ) (!  (=> (or (|_module.Memory.incomingEdges#canCall| this@@5 |t#0@@2| |edges#0@@1|) (and (< 2 $FunctionContextHeight) (and (and (and (or (not (= this@@5 null)) (not true)) ($Is refType this@@5 Tclass._module.Memory)) ($Is refType |t#0@@2| Tclass._module.Object)) ($Is SetType |edges#0@@1| (TSet Tclass._module.Edge))))) (and (|Set#Subset| (_module.Memory.incomingEdges this@@5 |t#0@@2| |edges#0@@1|) |edges#0@@1|) ($Is SetType (_module.Memory.incomingEdges this@@5 |t#0@@2| |edges#0@@1|) (TSet Tclass._module.Edge))))
 :qid |gitissue3855dfy.245:12|
 :skolemid |898|
 :pattern ( (_module.Memory.incomingEdges this@@5 |t#0@@2| |edges#0@@1|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((this@@6 T@U) (|o#0@@2| T@U) (|edges#0@@2| T@U) ) (!  (=> (or (|_module.Memory.externalEdges#canCall| this@@6 |o#0@@2| |edges#0@@2|) (and (< 3 $FunctionContextHeight) (and (and (and (or (not (= this@@6 null)) (not true)) ($Is refType this@@6 Tclass._module.Memory)) ($Is DatatypeTypeType |o#0@@2| Tclass._module.Region)) ($Is SetType |edges#0@@2| (TSet Tclass._module.Edge))))) (and (|Set#Subset| (_module.Memory.externalEdges this@@6 |o#0@@2| |edges#0@@2|) |edges#0@@2|) ($Is SetType (_module.Memory.externalEdges this@@6 |o#0@@2| |edges#0@@2|) (TSet Tclass._module.Edge))))
 :qid |gitissue3855dfy.336:12|
 :skolemid |999|
 :pattern ( (_module.Memory.externalEdges this@@6 |o#0@@2| |edges#0@@2|))
))))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@11 b@@8) b@@8) (|Set#Union| a@@11 b@@8))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |138|
 :pattern ( (|Set#Union| (|Set#Union| a@@11 b@@8) b@@8))
)))
(assert (forall ((a@@12 T@U) (b@@9 T@U) ) (! (= (|Set#Intersection| (|Set#Intersection| a@@12 b@@9) b@@9) (|Set#Intersection| a@@12 b@@9))
 :qid |DafnyPreludebpl.737:15|
 :skolemid |140|
 :pattern ( (|Set#Intersection| (|Set#Intersection| a@@12 b@@9) b@@9))
)))
(assert (forall ((a@@13 T@U) (b@@10 T@U) (o@@2 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@13 b@@10) o@@2)  (and (|Set#IsMember| a@@13 o@@2) (not (|Set#IsMember| b@@10 o@@2))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |143|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@13 b@@10) o@@2))
)))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Object $h@@0) ($IsAlloc refType |c#0| Tclass._module.Object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |803|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Object $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Object? $h@@0))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Memory $h@@1) ($IsAlloc refType |c#0@@0| Tclass._module.Memory? $h@@1))
 :qid |unknown.0:0|
 :skolemid |1378|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Memory $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Memory? $h@@1))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((this@@7 T@U) (|t#0@@3| T@U) (|edges#0@@3| T@U) ) (!  (=> (or (|_module.Memory.refCountEdges#canCall| this@@7 |t#0@@3| |edges#0@@3|) (and (< 3 $FunctionContextHeight) (and (and (and (or (not (= this@@7 null)) (not true)) ($Is refType this@@7 Tclass._module.Memory)) ($Is refType |t#0@@3| Tclass._module.Object)) ($Is SetType |edges#0@@3| (TSet Tclass._module.Edge))))) (<= (LitInt 0) (_module.Memory.refCountEdges this@@7 |t#0@@3| |edges#0@@3|)))
 :qid |gitissue3855dfy.251:12|
 :skolemid |908|
 :pattern ( (_module.Memory.refCountEdges this@@7 |t#0@@3| |edges#0@@3|))
))))
(assert (forall ((d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 Tclass._module.Edge) (_module.Edge.Edge_q d@@0))
 :qid |unknown.0:0|
 :skolemid |821|
 :pattern ( (_module.Edge.Edge_q d@@0) ($Is DatatypeTypeType d@@0 Tclass._module.Edge))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((this@@8 T@U) (|edges#0@@4| T@U) ) (!  (=> (or (|_module.Memory.heapExternalsZeroOrOneEdges#canCall| this@@8 (Lit SetType |edges#0@@4|)) (and (< 4 $FunctionContextHeight) (and (and (or (not (= this@@8 null)) (not true)) ($Is refType this@@8 Tclass._module.Memory)) ($Is SetType |edges#0@@4| (TSet Tclass._module.Edge))))) (and (and (|_module.Memory.justHeapExternalEdges#canCall| this@@8 (Lit SetType |edges#0@@4|)) (let ((|heapExternalEdges#1| (_module.Memory.justHeapExternalEdges this@@8 (Lit SetType |edges#0@@4|))))
 (and (forall ((|he#1| T@U) ) (!  (=> ($Is DatatypeTypeType |he#1| Tclass._module.Edge) (=> (|Set#IsMember| |heapExternalEdges#1| ($Box DatatypeTypeType |he#1|)) (_module.Edge.Edge_q |he#1|)))
 :qid |gitissue3855dfy.282:39|
 :skolemid |950|
 :pattern ( (_module.Edge.t |he#1|))
 :pattern ( (|Set#IsMember| |heapExternalEdges#1| ($Box DatatypeTypeType |he#1|)))
)) (let ((|allRelevantHeapRegions#1| (|Set#FromBoogieMap| (|lambda#52| Tclass._module.Edge |heapExternalEdges#1| |heapExternalEdges#1|))))
(forall ((|r#0@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |r#0@@0| Tclass._module.Region) (=> (|Set#IsMember| |allRelevantHeapRegions#1| ($Box DatatypeTypeType |r#0@@0|)) (|_module.Memory.externalEdges#canCall| this@@8 |r#0@@0| |heapExternalEdges#1|)))
 :qid |gitissue3855dfy.285:11|
 :skolemid |951|
 :pattern ( (_module.Memory.externalEdges this@@8 |r#0@@0| |heapExternalEdges#1|))
 :pattern ( (|Set#IsMember| |allRelevantHeapRegions#1| ($Box DatatypeTypeType |r#0@@0|)))
)))))) (= (_module.Memory.heapExternalsZeroOrOneEdges this@@8 (Lit SetType |edges#0@@4|)) (let ((|heapExternalEdges#1@@0| (_module.Memory.justHeapExternalEdges this@@8 (Lit SetType |edges#0@@4|))))
(let ((|allRelevantHeapRegions#1@@0| (|Set#FromBoogieMap| (|lambda#52| Tclass._module.Edge |heapExternalEdges#1@@0| |heapExternalEdges#1@@0|))))
(let ((|heapExternalEdgesPartitionedByRegion#1| (|Map#Glue| (|Set#FromBoogieMap| (|lambda#54| Tclass._module.Region |allRelevantHeapRegions#1@@0|)) (|lambda#55| this@@8 |heapExternalEdges#1@@0|) (TMap Tclass._module.Region (TSet Tclass._module.Edge)))))
(forall ((|hr#1| T@U) ) (!  (=> (and ($Is DatatypeTypeType |hr#1| Tclass._module.Region) (|Set#IsMember| (|Map#Domain| |heapExternalEdgesPartitionedByRegion#1|) ($Box DatatypeTypeType |hr#1|))) (<= (|Set#Card| ($Unbox SetType (MapType0Select BoxType BoxType (|Map#Elements| |heapExternalEdgesPartitionedByRegion#1|) ($Box DatatypeTypeType |hr#1|)))) (LitInt 1)))
 :qid |gitissue3855dfy.286:12|
 :skolemid |949|
 :pattern ( ($Unbox SetType (MapType0Select BoxType BoxType (|Map#Elements| |heapExternalEdgesPartitionedByRegion#1|) ($Box DatatypeTypeType |hr#1|))))
 :pattern ( (|Set#IsMember| (|Map#Domain| |heapExternalEdgesPartitionedByRegion#1|) ($Box DatatypeTypeType |hr#1|)))
))))))))
 :qid |gitissue3855dfy.280:13|
 :weight 3
 :skolemid |953|
 :pattern ( (_module.Memory.heapExternalsZeroOrOneEdges this@@8 (Lit SetType |edges#0@@4|)))
))))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0@@0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0@@0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |456|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert (forall (($reveal@@0 Bool) ($h0@@0 T@U) ($h1@@0 T@U) (this@@9 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@9 null)) (not true)) ($Is refType this@@9 Tclass._module.Memory))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@4 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (or (and (= $o@@4 this@@9) (= $f@@0 _module.Memory.objects)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 this@@9) _module.Memory.objects)) ($Box refType $o@@4)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@4) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@4) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |832|
)) (= (_module.Memory.Valid $reveal@@0 $h0@@0 this@@9) (_module.Memory.Valid $reveal@@0 $h1@@0 this@@9))))
 :qid |unknown.0:0|
 :skolemid |833|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.Memory.Valid $reveal@@0 $h1@@0 this@@9))
)))
(assert ($Is DatatypeTypeType |#_module.Mode.Imm| Tclass._module.Mode))
(assert ($Is DatatypeTypeType |#_module.Mode.Iso| Tclass._module.Mode))
(assert ($Is DatatypeTypeType |#_module.Mode.Mut| Tclass._module.Mode))
(assert ($Is DatatypeTypeType |#_module.Mode.Tmp| Tclass._module.Mode))
(assert ($Is DatatypeTypeType |#_module.Mode.Sus| Tclass._module.Mode))
(assert ($Is DatatypeTypeType |#_module.Region.Frozen| Tclass._module.Region))
(assert ($Is DatatypeTypeType |#_module.Region.Isolate| Tclass._module.Region))
(assert ($Is DatatypeTypeType |#_module.Status.Success| Tclass._module.Status))
(assert (forall ((s T@U) ) (!  (and (= (= (|Set#Card| s) 0) (= s |Set#Empty|)) (=> (or (not (= (|Set#Card| s) 0)) (not true)) (exists ((x@@5 T@U) ) (! (|Set#IsMember| s x@@5)
 :qid |DafnyPreludebpl.678:20|
 :skolemid |126|
 :pattern ( (|Set#IsMember| s x@@5))
))))
 :qid |DafnyPreludebpl.674:15|
 :skolemid |127|
 :pattern ( (|Set#Card| s))
)))
(assert (= (Ctor MapType) 10))
(assert  (=> (< 2 $FunctionContextHeight) (forall (($o@@5 T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) Tclass._module.Object?)) ($Is MapType (_module.Object.fieldModes $o@@5) (TMap (TSeq TChar) Tclass._module.Mode)))
 :qid |unknown.0:0|
 :skolemid |744|
 :pattern ( (_module.Object.fieldModes $o@@5))
))))
(assert (= (FDim _module.Object.fields) 0))
(assert (= (FieldOfDecl class._module.Object? field$fields) _module.Object.fields))
(assert  (not ($IsGhostField _module.Object.fields)))
(assert (= (FDim _module.Memory.objects) 0))
(assert (= (FieldOfDecl class._module.Memory? field$objects) _module.Memory.objects))
(assert  (not ($IsGhostField _module.Memory.objects)))
(assert (forall (($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) ($IsAlloc DatatypeTypeType |#_module.Region.Frozen| Tclass._module.Region $h@@2))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |699|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.Region.Frozen| Tclass._module.Region $h@@2))
)))
(assert (forall (($h@@3 T@U) ) (!  (=> ($IsGoodHeap $h@@3) ($IsAlloc DatatypeTypeType |#_module.Region.Isolate| Tclass._module.Region $h@@3))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |729|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.Region.Isolate| Tclass._module.Region $h@@3))
)))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($prevHeap@@0 T@U) ($Heap@@2 T@U) (this@@10 T@U) ) (!  (=> (or (|_module.Memory.Valid2#canCall| $prevHeap@@0 $Heap@@2 this@@10) (and (< 8 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@0) ($IsGoodHeap $Heap@@2)) ($HeapSucc $prevHeap@@0 $Heap@@2)) (and (or (not (= this@@10 null)) (not true)) (and ($Is refType this@@10 Tclass._module.Memory) ($IsAlloc refType this@@10 Tclass._module.Memory $prevHeap@@0)))))) (and (and (|_module.Memory.Valid#canCall| $Heap@@2 this@@10) (=> (_module.Memory.Valid reveal__module.Memory.Valid $Heap@@2 this@@10) (and (|_module.Memory.HeapObjectsAreMonotonic#canCall| $prevHeap@@0 $Heap@@2 this@@10) (=> (_module.Memory.HeapObjectsAreMonotonic $prevHeap@@0 $Heap@@2 this@@10) (|_module.Memory.AllImmutablesAreImmutable#canCall| $prevHeap@@0 $Heap@@2 this@@10))))) (= (_module.Memory.Valid2 true $prevHeap@@0 $Heap@@2 this@@10)  (and (and (_module.Memory.Valid reveal__module.Memory.Valid $Heap@@2 this@@10) (_module.Memory.HeapObjectsAreMonotonic $prevHeap@@0 $Heap@@2 this@@10)) (_module.Memory.AllImmutablesAreImmutable $prevHeap@@0 $Heap@@2 this@@10)))))
 :qid |gitissue3855dfy.192:51|
 :skolemid |846|
 :pattern ( (_module.Memory.Valid2 true $prevHeap@@0 $Heap@@2 this@@10) ($IsGoodHeap $Heap@@2))
))))
(assert (forall (($o@@6 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@6 Tclass._module.Object? $h@@4)  (or (= $o@@6 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@6) alloc)))))
 :qid |unknown.0:0|
 :skolemid |739|
 :pattern ( ($IsAlloc refType $o@@6 Tclass._module.Object? $h@@4))
)))
(assert (forall (($o@@7 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@7 Tclass._module.Memory? $h@@5)  (or (= $o@@7 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@7) alloc)))))
 :qid |unknown.0:0|
 :skolemid |825|
 :pattern ( ($IsAlloc refType $o@@7 Tclass._module.Memory? $h@@5))
)))
(assert  (=> (< 2 $FunctionContextHeight) (forall (($h@@6 T@U) ($o@@8 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@8) alloc)))) ($IsAlloc MapType (_module.Object.fieldModes $o@@8) (TMap (TSeq TChar) Tclass._module.Mode) $h@@6))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |745|
 :pattern ( (_module.Object.fieldModes $o@@8) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@8) alloc)))
))))
(assert (forall ((a@@14 T@U) (b@@11 T@U) ) (! (= (+ (|Set#Card| (|Set#Union| a@@14 b@@11)) (|Set#Card| (|Set#Intersection| a@@14 b@@11))) (+ (|Set#Card| a@@14) (|Set#Card| b@@11)))
 :qid |DafnyPreludebpl.745:15|
 :skolemid |142|
 :pattern ( (|Set#Card| (|Set#Union| a@@14 b@@11)))
 :pattern ( (|Set#Card| (|Set#Intersection| a@@14 b@@11)))
)))
(assert (forall ((a@@15 T@U) (b@@12 T@U) ) (! (= (|_module.Mode#Equal| a@@15 b@@12) (= a@@15 b@@12))
 :qid |unknown.0:0|
 :skolemid |696|
 :pattern ( (|_module.Mode#Equal| a@@15 b@@12))
)))
(assert (forall ((a@@16 T@U) (b@@13 T@U) ) (! (= (|_module.Region#Equal| a@@16 b@@13) (= a@@16 b@@13))
 :qid |unknown.0:0|
 :skolemid |737|
 :pattern ( (|_module.Region#Equal| a@@16 b@@13))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@3 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@3) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@3) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@3) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((this@@11 T@U) (|edges#0@@5| T@U) ) (!  (=> (or (|_module.Memory.justHeapExternalEdges#canCall| (Lit refType this@@11) (Lit SetType |edges#0@@5|)) (and (< 3 $FunctionContextHeight) (and (and (or (not (= this@@11 null)) (not true)) ($Is refType this@@11 Tclass._module.Memory)) ($Is SetType |edges#0@@5| (TSet Tclass._module.Edge))))) (and (forall ((|e#2| T@U) ) (!  (=> ($Is DatatypeTypeType |e#2| Tclass._module.Edge) (=> (|Set#IsMember| (Lit SetType |edges#0@@5|) ($Box DatatypeTypeType |e#2|)) (and (and (and (|$IsA#_module.Region| (_module.Object.region (_module.Edge.f |e#2|))) (|$IsA#_module.Region| (_module.Object.region (_module.Edge.t |e#2|)))) (and (_module.Edge.Edge_q |e#2|) (_module.Edge.Edge_q |e#2|))) (=> (not (|_module.Region#Equal| (_module.Object.region (_module.Edge.f |e#2|)) (_module.Object.region (_module.Edge.t |e#2|)))) (_module.Edge.Edge_q |e#2|)))))
 :qid |gitissue3855dfy.348:9|
 :skolemid |1016|
 :pattern ( (_module.Edge.t |e#2|))
 :pattern ( (_module.Edge.f |e#2|))
 :pattern ( (|Set#IsMember| |edges#0@@5| ($Box DatatypeTypeType |e#2|)))
)) (= (_module.Memory.justHeapExternalEdges (Lit refType this@@11) (Lit SetType |edges#0@@5|)) (|Set#FromBoogieMap| (|lambda#76| Tclass._module.Edge (Lit SetType |edges#0@@5|))))))
 :qid |gitissue3855dfy.345:12|
 :weight 3
 :skolemid |1017|
 :pattern ( (_module.Memory.justHeapExternalEdges (Lit refType this@@11) (Lit SetType |edges#0@@5|)))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@3 T@U) (this@@12 T@U) (|os#0@@1| T@U) ) (!  (=> (or (|_module.Memory.OutgoingReferencesAreInThisHeap#canCall| $Heap@@3 this@@12 |os#0@@1|) (and (< 2 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@3) (and (or (not (= this@@12 null)) (not true)) (and ($Is refType this@@12 Tclass._module.Memory) ($IsAlloc refType this@@12 Tclass._module.Memory $Heap@@3)))) ($Is SetType |os#0@@1| (TSet Tclass._module.Object))))) (and (forall ((|o#0@@3| T@U) ) (!  (=> ($Is refType |o#0@@3| Tclass._module.Object) (=> (|Set#IsMember| |os#0@@1| ($Box refType |o#0@@3|)) (|_module.Object.outgoing#canCall| $Heap@@3 |o#0@@3|)))
 :qid |gitissue3855dfy.215:14|
 :skolemid |867|
 :pattern ( (_module.Object.outgoing $Heap@@3 |o#0@@3|))
 :pattern ( (|Set#IsMember| |os#0@@1| ($Box refType |o#0@@3|)))
)) (= (_module.Memory.OutgoingReferencesAreInThisHeap $Heap@@3 this@@12 |os#0@@1|) (forall ((|o#0@@4| T@U) ) (!  (=> (and ($Is refType |o#0@@4| Tclass._module.Object) (|Set#IsMember| |os#0@@1| ($Box refType |o#0@@4|))) (|Set#Subset| (_module.Object.outgoing $Heap@@3 |o#0@@4|) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@12) _module.Memory.objects))))
 :qid |gitissue3855dfy.215:14|
 :skolemid |866|
 :pattern ( (_module.Object.outgoing $Heap@@3 |o#0@@4|))
 :pattern ( (|Set#IsMember| |os#0@@1| ($Box refType |o#0@@4|)))
)))))
 :qid |gitissue3855dfy.210:13|
 :skolemid |868|
 :pattern ( (_module.Memory.OutgoingReferencesAreInThisHeap $Heap@@3 this@@12 |os#0@@1|) ($IsGoodHeap $Heap@@3))
))))
(assert (forall ((x@@6 Int) ) (! (= (LitInt x@@6) x@@6)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@6))
)))
(assert (forall ((x@@7 T@U) (T T@T) ) (! (= (Lit T x@@7) x@@7)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@7))
)))
(assert (forall ((s@@0 T@U) (bx T@U) (t@@1 T@U) ) (!  (=> (and ($Is SeqType s@@0 (TSeq t@@1)) ($IsBox bx t@@1)) ($Is SeqType (|Seq#Build| s@@0 bx) (TSeq t@@1)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |258|
 :pattern ( ($Is SeqType (|Seq#Build| s@@0 bx) (TSeq t@@1)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($prevHeap@@1 T@U) ($Heap@@4 T@U) (this@@13 T@U) ) (!  (=> (or (|_module.Memory.AllImmutablesAreImmutable#canCall| $prevHeap@@1 $Heap@@4 this@@13) (and (< 3 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@1) ($IsGoodHeap $Heap@@4)) ($HeapSucc $prevHeap@@1 $Heap@@4)) (and (or (not (= this@@13 null)) (not true)) (and ($Is refType this@@13 Tclass._module.Memory) ($IsAlloc refType this@@13 Tclass._module.Memory $prevHeap@@1)))))) (= (_module.Memory.AllImmutablesAreImmutable $prevHeap@@1 $Heap@@4 this@@13) (forall ((|o#0@@5| T@U) ) (!  (=> (and ($Is refType |o#0@@5| Tclass._module.Object?) (|Set#IsMember| (|Set#Intersection| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@13) _module.Memory.objects)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@1 this@@13) _module.Memory.objects))) ($Box refType |o#0@@5|))) (=> (_module.Region.Frozen_q (_module.Object.region |o#0@@5|)) (|Map#Equal| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 |o#0@@5|) _module.Object.fields)) ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@1 |o#0@@5|) _module.Object.fields)))))
 :qid |gitissue3855dfy.230:15|
 :skolemid |882|
 :pattern ( ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@1 |o#0@@5|) _module.Object.fields)))
 :pattern ( ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 |o#0@@5|) _module.Object.fields)))
 :pattern ( (_module.Object.region |o#0@@5|))
 :pattern ( (|Set#IsMember| (|Set#Intersection| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@13) _module.Memory.objects)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@1 this@@13) _module.Memory.objects))) ($Box refType |o#0@@5|)))
))))
 :qid |gitissue3855dfy.227:22|
 :skolemid |883|
 :pattern ( (_module.Memory.AllImmutablesAreImmutable $prevHeap@@1 $Heap@@4 this@@13) ($IsGoodHeap $Heap@@4))
))))
(assert (forall ((m@@1 T@U) (u T@U) (v T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| m@@1) u) (= (|Map#Card| (|Map#Build| m@@1 u v)) (|Map#Card| m@@1)))
 :qid |DafnyPreludebpl.1469:15|
 :skolemid |291|
 :pattern ( (|Map#Card| (|Map#Build| m@@1 u v)))
)))
(assert (forall ((a@@17 T@U) (b@@14 T@U) (t0@@0 T@U) (t1@@0 T@U) ) (!  (=> (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| a@@17 bx@@0) (and ($IsBox bx@@0 t0@@0) ($IsBox (MapType0Select BoxType BoxType b@@14 bx@@0) t1@@0)))
 :qid |DafnyPreludebpl.1452:11|
 :skolemid |288|
)) ($Is MapType (|Map#Glue| a@@17 b@@14 (TMap t0@@0 t1@@0)) (TMap t0@@0 t1@@0)))
 :qid |DafnyPreludebpl.1449:15|
 :skolemid |289|
 :pattern ( (|Map#Glue| a@@17 b@@14 (TMap t0@@0 t1@@0)))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((this@@14 T@U) (|edges#0@@6| T@U) ) (!  (=> (or (|_module.Memory.heapExternalsZeroOrOneEdges#canCall| (Lit refType this@@14) (Lit SetType |edges#0@@6|)) (and (< 4 $FunctionContextHeight) (and (and (or (not (= this@@14 null)) (not true)) ($Is refType this@@14 Tclass._module.Memory)) ($Is SetType |edges#0@@6| (TSet Tclass._module.Edge))))) (and (and (|_module.Memory.justHeapExternalEdges#canCall| (Lit refType this@@14) (Lit SetType |edges#0@@6|)) (let ((|heapExternalEdges#2| (Lit SetType (_module.Memory.justHeapExternalEdges (Lit refType this@@14) (Lit SetType |edges#0@@6|)))))
 (and (forall ((|he#2| T@U) ) (!  (=> ($Is DatatypeTypeType |he#2| Tclass._module.Edge) (=> (|Set#IsMember| |heapExternalEdges#2| ($Box DatatypeTypeType |he#2|)) (_module.Edge.Edge_q |he#2|)))
 :qid |gitissue3855dfy.282:39|
 :skolemid |956|
 :pattern ( (_module.Edge.t |he#2|))
 :pattern ( (|Set#IsMember| |heapExternalEdges#2| ($Box DatatypeTypeType |he#2|)))
)) (let ((|allRelevantHeapRegions#2| (|Set#FromBoogieMap| (|lambda#52| Tclass._module.Edge |heapExternalEdges#2| |heapExternalEdges#2|))))
(forall ((|r#0@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |r#0@@1| Tclass._module.Region) (=> (|Set#IsMember| |allRelevantHeapRegions#2| ($Box DatatypeTypeType |r#0@@1|)) (|_module.Memory.externalEdges#canCall| (Lit refType this@@14) |r#0@@1| |heapExternalEdges#2|)))
 :qid |gitissue3855dfy.285:11|
 :skolemid |957|
 :pattern ( (_module.Memory.externalEdges this@@14 |r#0@@1| |heapExternalEdges#2|))
 :pattern ( (|Set#IsMember| |allRelevantHeapRegions#2| ($Box DatatypeTypeType |r#0@@1|)))
)))))) (= (_module.Memory.heapExternalsZeroOrOneEdges (Lit refType this@@14) (Lit SetType |edges#0@@6|)) (let ((|heapExternalEdges#2@@0| (Lit SetType (_module.Memory.justHeapExternalEdges (Lit refType this@@14) (Lit SetType |edges#0@@6|)))))
(let ((|allRelevantHeapRegions#2@@0| (|Set#FromBoogieMap| (|lambda#52| Tclass._module.Edge |heapExternalEdges#2@@0| |heapExternalEdges#2@@0|))))
(let ((|heapExternalEdgesPartitionedByRegion#2| (|Map#Glue| (|Set#FromBoogieMap| (|lambda#54| Tclass._module.Region |allRelevantHeapRegions#2@@0|)) (|lambda#55| (Lit refType this@@14) |heapExternalEdges#2@@0|) (TMap Tclass._module.Region (TSet Tclass._module.Edge)))))
(forall ((|hr#2| T@U) ) (!  (=> (and ($Is DatatypeTypeType |hr#2| Tclass._module.Region) (|Set#IsMember| (|Map#Domain| |heapExternalEdgesPartitionedByRegion#2|) ($Box DatatypeTypeType |hr#2|))) (<= (|Set#Card| ($Unbox SetType (MapType0Select BoxType BoxType (|Map#Elements| |heapExternalEdgesPartitionedByRegion#2|) ($Box DatatypeTypeType |hr#2|)))) (LitInt 1)))
 :qid |gitissue3855dfy.286:12|
 :skolemid |955|
 :pattern ( ($Unbox SetType (MapType0Select BoxType BoxType (|Map#Elements| |heapExternalEdgesPartitionedByRegion#2|) ($Box DatatypeTypeType |hr#2|))))
 :pattern ( (|Set#IsMember| (|Map#Domain| |heapExternalEdgesPartitionedByRegion#2|) ($Box DatatypeTypeType |hr#2|)))
))))))))
 :qid |gitissue3855dfy.280:13|
 :weight 3
 :skolemid |959|
 :pattern ( (_module.Memory.heapExternalsZeroOrOneEdges (Lit refType this@@14) (Lit SetType |edges#0@@6|)))
))))
(assert (forall ((a@@18 T@U) (b@@15 T@U) ) (! (= (|Set#Subset| a@@18 b@@15) (forall ((o@@4 T@U) ) (!  (=> (|Set#IsMember| a@@18 o@@4) (|Set#IsMember| b@@15 o@@4))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a@@18 o@@4))
 :pattern ( (|Set#IsMember| b@@15 o@@4))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a@@18 b@@15))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@1| T@U) (|a#2#1#0@@1| T@U) ($h@@7 T@U) ) (!  (=> ($IsGoodHeap $h@@7) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@1| |a#2#1#0@@1|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@7)  (and ($IsAllocBox |a#2#0#0@@1| |_System._tuple#2$T0@@1| $h@@7) ($IsAllocBox |a#2#1#0@@1| |_System._tuple#2$T1@@1| $h@@7))))
 :qid |unknown.0:0|
 :skolemid |457|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@1| |a#2#1#0@@1|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@7))
)))
(assert (forall ((|a#2#0#0@@2| T@U) (|a#2#1#0@@2| T@U) (|a#2#2#0@@0| T@U) ($h@@8 T@U) ) (!  (=> ($IsGoodHeap $h@@8) (= ($IsAlloc DatatypeTypeType (|#_module.Edge.Edge| |a#2#0#0@@2| |a#2#1#0@@2| |a#2#2#0@@0|) Tclass._module.Edge $h@@8)  (and (and ($IsAlloc refType |a#2#0#0@@2| Tclass._module.Object $h@@8) ($IsAlloc SeqType |a#2#1#0@@2| (TSeq TChar) $h@@8)) ($IsAlloc refType |a#2#2#0@@0| Tclass._module.Object $h@@8))))
 :qid |gitissue3855dfy.149:22|
 :skolemid |810|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Edge.Edge| |a#2#0#0@@2| |a#2#1#0@@2| |a#2#2#0@@0|) Tclass._module.Edge $h@@8))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@1) (= (DatatypeCtorId d@@1) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |449|
 :pattern ( (_System.Tuple2.___hMake2_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.Mode.Imm_q d@@2) (= (DatatypeCtorId d@@2) |##_module.Mode.Imm|))
 :qid |unknown.0:0|
 :skolemid |678|
 :pattern ( (_module.Mode.Imm_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (_module.Mode.Iso_q d@@3) (= (DatatypeCtorId d@@3) |##_module.Mode.Iso|))
 :qid |unknown.0:0|
 :skolemid |680|
 :pattern ( (_module.Mode.Iso_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (! (= (_module.Mode.Mut_q d@@4) (= (DatatypeCtorId d@@4) |##_module.Mode.Mut|))
 :qid |unknown.0:0|
 :skolemid |682|
 :pattern ( (_module.Mode.Mut_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (! (= (_module.Mode.Tmp_q d@@5) (= (DatatypeCtorId d@@5) |##_module.Mode.Tmp|))
 :qid |unknown.0:0|
 :skolemid |684|
 :pattern ( (_module.Mode.Tmp_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (! (= (_module.Mode.Sus_q d@@6) (= (DatatypeCtorId d@@6) |##_module.Mode.Sus|))
 :qid |unknown.0:0|
 :skolemid |686|
 :pattern ( (_module.Mode.Sus_q d@@6))
)))
(assert (forall ((d@@7 T@U) ) (! (= (_module.Region.Frozen_q d@@7) (= (DatatypeCtorId d@@7) |##_module.Region.Frozen|))
 :qid |unknown.0:0|
 :skolemid |697|
 :pattern ( (_module.Region.Frozen_q d@@7))
)))
(assert (forall ((d@@8 T@U) ) (! (= (_module.Region.Heap_q d@@8) (= (DatatypeCtorId d@@8) |##_module.Region.Heap|))
 :qid |unknown.0:0|
 :skolemid |701|
 :pattern ( (_module.Region.Heap_q d@@8))
)))
(assert (forall ((d@@9 T@U) ) (! (= (_module.Region.Stack_q d@@9) (= (DatatypeCtorId d@@9) |##_module.Region.Stack|))
 :qid |unknown.0:0|
 :skolemid |710|
 :pattern ( (_module.Region.Stack_q d@@9))
)))
(assert (forall ((d@@10 T@U) ) (! (= (_module.Region.Frame_q d@@10) (= (DatatypeCtorId d@@10) |##_module.Region.Frame|))
 :qid |unknown.0:0|
 :skolemid |719|
 :pattern ( (_module.Region.Frame_q d@@10))
)))
(assert (forall ((d@@11 T@U) ) (! (= (_module.Region.Isolate_q d@@11) (= (DatatypeCtorId d@@11) |##_module.Region.Isolate|))
 :qid |unknown.0:0|
 :skolemid |727|
 :pattern ( (_module.Region.Isolate_q d@@11))
)))
(assert (forall ((d@@12 T@U) ) (! (= (_module.Edge.Edge_q d@@12) (= (DatatypeCtorId d@@12) |##_module.Edge.Edge|))
 :qid |unknown.0:0|
 :skolemid |805|
 :pattern ( (_module.Edge.Edge_q d@@12))
)))
(assert (forall ((d@@13 T@U) ) (! (= (_module.Status.Success_q d@@13) (= (DatatypeCtorId d@@13) |##_module.Status.Success|))
 :qid |unknown.0:0|
 :skolemid |1379|
 :pattern ( (_module.Status.Success_q d@@13))
)))
(assert (forall ((d@@14 T@U) ) (! (= (_module.Status.Failure_q d@@14) (= (DatatypeCtorId d@@14) |##_module.Status.Failure|))
 :qid |unknown.0:0|
 :skolemid |1382|
 :pattern ( (_module.Status.Failure_q d@@14))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Equal| s0 s1)  (and (= (|Seq#Length| s0) (|Seq#Length| s1)) (forall ((j Int) ) (!  (=> (and (<= 0 j) (< j (|Seq#Length| s0))) (= (|Seq#Index| s0 j) (|Seq#Index| s1 j)))
 :qid |DafnyPreludebpl.1221:19|
 :skolemid |239|
 :pattern ( (|Seq#Index| s0 j))
 :pattern ( (|Seq#Index| s1 j))
))))
 :qid |DafnyPreludebpl.1217:15|
 :skolemid |240|
 :pattern ( (|Seq#Equal| s0 s1))
)))
(assert (forall ((x@@8 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@8)) x@@8)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@8))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((this@@15 T@U) (|t#0@@4| T@U) (|edges#0@@7| T@U) ) (!  (=> (or (|_module.Memory.refCountEdges#canCall| (Lit refType this@@15) (Lit refType |t#0@@4|) (Lit SetType |edges#0@@7|)) (and (< 3 $FunctionContextHeight) (and (and (and (or (not (= this@@15 null)) (not true)) ($Is refType this@@15 Tclass._module.Memory)) ($Is refType |t#0@@4| Tclass._module.Object)) ($Is SetType |edges#0@@7| (TSet Tclass._module.Edge))))) (and (|_module.Memory.incomingEdges#canCall| (Lit refType this@@15) (Lit refType |t#0@@4|) (Lit SetType |edges#0@@7|)) (= (_module.Memory.refCountEdges (Lit refType this@@15) (Lit refType |t#0@@4|) (Lit SetType |edges#0@@7|)) (|Set#Card| (Lit SetType (_module.Memory.incomingEdges (Lit refType this@@15) (Lit refType |t#0@@4|) (Lit SetType |edges#0@@7|)))))))
 :qid |gitissue3855dfy.251:12|
 :weight 3
 :skolemid |912|
 :pattern ( (_module.Memory.refCountEdges (Lit refType this@@15) (Lit refType |t#0@@4|) (Lit SetType |edges#0@@7|)))
))))
(assert (forall ((d@@15 T@U) ) (!  (=> (_module.Edge.Edge_q d@@15) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) (|a#1#2#0| T@U) ) (! (= d@@15 (|#_module.Edge.Edge| |a#1#0#0| |a#1#1#0| |a#1#2#0|))
 :qid |gitissue3855dfy.149:22|
 :skolemid |806|
)))
 :qid |unknown.0:0|
 :skolemid |807|
 :pattern ( (_module.Edge.Edge_q d@@15))
)))
(assert (forall ((a@@19 T@U) (b@@16 T@U) ) (! (= (|Set#Disjoint| a@@19 b@@16) (forall ((o@@5 T@U) ) (!  (or (not (|Set#IsMember| a@@19 o@@5)) (not (|Set#IsMember| b@@16 o@@5)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@19 o@@5))
 :pattern ( (|Set#IsMember| b@@16 o@@5))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@19 b@@16))
)))
(assert (forall ((m@@2 T@U) (bx@@1 T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@2) bx@@1) (U_2_bool (MapType0Select BoxType boolType m@@2 bx@@1)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |153|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@2) bx@@1))
)))
(assert (forall ((d@@16 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@16) (exists ((|a#1#0#0@@0| T@U) (|a#1#1#0@@0| T@U) ) (! (= d@@16 (|#_System._tuple#2._#Make2| |a#1#0#0@@0| |a#1#1#0@@0|))
 :qid |unknown.0:0|
 :skolemid |450|
)))
 :qid |unknown.0:0|
 :skolemid |451|
 :pattern ( (_System.Tuple2.___hMake2_q d@@16))
)))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|$y#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#76| |l#0@@0| |l#1@@0|) |$y#0|))  (and ($IsBox |$y#0| |l#0@@0|) (and (|Set#IsMember| |l#1@@0| |$y#0|) (and (not (|_module.Region#Equal| (_module.Object.region (_module.Edge.f ($Unbox DatatypeTypeType |$y#0|))) (_module.Object.region (_module.Edge.t ($Unbox DatatypeTypeType |$y#0|))))) (_module.Region.Heap_q (_module.Object.region (_module.Edge.t ($Unbox DatatypeTypeType |$y#0|))))))))
 :qid |gitissue3855dfy.149:10|
 :skolemid |1421|
 :pattern ( (MapType0Select BoxType boolType (|lambda#76| |l#0@@0| |l#1@@0|) |$y#0|))
)))
(assert (forall ((d@@17 T@U) ) (!  (=> (_module.Mode.Imm_q d@@17) (= d@@17 |#_module.Mode.Imm|))
 :qid |unknown.0:0|
 :skolemid |679|
 :pattern ( (_module.Mode.Imm_q d@@17))
)))
(assert (forall ((d@@18 T@U) ) (!  (=> (_module.Mode.Iso_q d@@18) (= d@@18 |#_module.Mode.Iso|))
 :qid |unknown.0:0|
 :skolemid |681|
 :pattern ( (_module.Mode.Iso_q d@@18))
)))
(assert (forall ((d@@19 T@U) ) (!  (=> (_module.Mode.Mut_q d@@19) (= d@@19 |#_module.Mode.Mut|))
 :qid |unknown.0:0|
 :skolemid |683|
 :pattern ( (_module.Mode.Mut_q d@@19))
)))
(assert (forall ((d@@20 T@U) ) (!  (=> (_module.Mode.Tmp_q d@@20) (= d@@20 |#_module.Mode.Tmp|))
 :qid |unknown.0:0|
 :skolemid |685|
 :pattern ( (_module.Mode.Tmp_q d@@20))
)))
(assert (forall ((d@@21 T@U) ) (!  (=> (_module.Mode.Sus_q d@@21) (= d@@21 |#_module.Mode.Sus|))
 :qid |unknown.0:0|
 :skolemid |687|
 :pattern ( (_module.Mode.Sus_q d@@21))
)))
(assert (forall ((d@@22 T@U) ) (!  (=> (_module.Region.Frozen_q d@@22) (= d@@22 |#_module.Region.Frozen|))
 :qid |unknown.0:0|
 :skolemid |698|
 :pattern ( (_module.Region.Frozen_q d@@22))
)))
(assert (forall ((d@@23 T@U) ) (!  (=> (_module.Region.Isolate_q d@@23) (= d@@23 |#_module.Region.Isolate|))
 :qid |unknown.0:0|
 :skolemid |728|
 :pattern ( (_module.Region.Isolate_q d@@23))
)))
(assert (forall ((d@@24 T@U) ) (!  (=> (_module.Status.Success_q d@@24) (= d@@24 |#_module.Status.Success|))
 :qid |unknown.0:0|
 :skolemid |1380|
 :pattern ( (_module.Status.Success_q d@@24))
)))
(assert (forall ((v@@0 T@U) (t0@@1 T@U) ) (! (= ($Is SetType v@@0 (TSet t0@@1)) (forall ((bx@@2 T@U) ) (!  (=> (|Set#IsMember| v@@0 bx@@2) ($IsBox bx@@2 t0@@1))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v@@0 bx@@2))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v@@0 (TSet t0@@1)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@5 T@U) (this@@16 T@U) ) (!  (=> (or (|_module.Object.size#canCall| $Heap@@5 this@@16) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@5) (and (or (not (= this@@16 null)) (not true)) (and ($Is refType this@@16 Tclass._module.Object) ($IsAlloc refType this@@16 Tclass._module.Object $Heap@@5)))))) (<= (LitInt 0) (_module.Object.size $Heap@@5 this@@16)))
 :qid |gitissue3855dfy.108:12|
 :skolemid |762|
 :pattern ( (_module.Object.size $Heap@@5 this@@16))
))))
(assert (forall ((d@@25 T@U) ) (!  (=> (_module.Region.Heap_q d@@25) (exists ((|a#25#0#0| T@U) ) (! (= d@@25 (|#_module.Region.Heap| |a#25#0#0|))
 :qid |gitissue3855dfy.19:33|
 :skolemid |702|
)))
 :qid |unknown.0:0|
 :skolemid |703|
 :pattern ( (_module.Region.Heap_q d@@25))
)))
(assert (forall ((d@@26 T@U) ) (!  (=> (_module.Region.Stack_q d@@26) (exists ((|a#30#0#0| T@U) ) (! (= d@@26 (|#_module.Region.Stack| |a#30#0#0|))
 :qid |gitissue3855dfy.19:58|
 :skolemid |711|
)))
 :qid |unknown.0:0|
 :skolemid |712|
 :pattern ( (_module.Region.Stack_q d@@26))
)))
(assert (forall ((d@@27 T@U) ) (!  (=> (_module.Region.Frame_q d@@27) (exists ((|a#35#0#0| T@U) ) (! (= d@@27 (|#_module.Region.Frame| |a#35#0#0|))
 :qid |gitissue3855dfy.19:84|
 :skolemid |720|
)))
 :qid |unknown.0:0|
 :skolemid |721|
 :pattern ( (_module.Region.Frame_q d@@27))
)))
(assert (forall ((d@@28 T@U) ) (!  (=> (_module.Status.Failure_q d@@28) (exists ((|a#5#0#0@@0| T@U) ) (! (= d@@28 (|#_module.Status.Failure| |a#5#0#0@@0|))
 :qid |gitissue3855dfy.1230:11|
 :skolemid |1383|
)))
 :qid |unknown.0:0|
 :skolemid |1384|
 :pattern ( (_module.Status.Failure_q d@@28))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@6 T@U) (this@@17 T@U) (|os#0@@2| T@U) ) (!  (=> (or (|_module.Memory.edges#canCall| $Heap@@6 this@@17 |os#0@@2|) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@6) (or (not (= this@@17 null)) (not true))) ($IsAlloc refType this@@17 Tclass._module.Memory $Heap@@6)) (and ($Is SetType |os#0@@2| (TSet Tclass._module.Object)) ($IsAlloc SetType |os#0@@2| (TSet Tclass._module.Object) $Heap@@6))))) ($IsAlloc SetType (_module.Memory.edges $Heap@@6 this@@17 |os#0@@2|) (TSet Tclass._module.Edge) $Heap@@6))
 :qid |gitissue3855dfy.256:12|
 :skolemid |918|
 :pattern ( ($IsAlloc SetType (_module.Memory.edges $Heap@@6 this@@17 |os#0@@2|) (TSet Tclass._module.Edge) $Heap@@6))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@7 T@U) (this@@18 T@U) (|os#0@@3| T@U) ) (!  (=> (or (|_module.Memory.justTheIsos#canCall| $Heap@@7 this@@18 |os#0@@3|) (and (< 3 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@7) (or (not (= this@@18 null)) (not true))) ($IsAlloc refType this@@18 Tclass._module.Memory $Heap@@7)) (and ($Is SetType |os#0@@3| (TSet Tclass._module.Object)) ($IsAlloc SetType |os#0@@3| (TSet Tclass._module.Object) $Heap@@7))))) ($IsAlloc SetType (_module.Memory.justTheIsos $Heap@@7 this@@18 |os#0@@3|) (TSet Tclass._module.Object) $Heap@@7))
 :qid |gitissue3855dfy.235:12|
 :skolemid |891|
 :pattern ( ($IsAlloc SetType (_module.Memory.justTheIsos $Heap@@7 this@@18 |os#0@@3|) (TSet Tclass._module.Object) $Heap@@7))
))))
(assert ($IsGhostField alloc))
(assert (forall ((s@@1 T@U) (v@@1 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@1 v@@1)) (+ 1 (|Seq#Length| s@@1)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s@@1 v@@1))
)))
(assert (forall ((|l#0@@1| T@U) (|l#1@@1| T@U) (|$y#0@@0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#38| |l#0@@1| |l#1@@1|) |$y#0@@0|))  (and ($IsBox |$y#0@@0| |l#0@@1|) (and (|Set#IsMember| |l#1@@1| |$y#0@@0|) (_module.Region.Isolate_q (_module.Object.region ($Unbox refType |$y#0@@0|))))))
 :qid |gitissue3855dfy.87:7|
 :skolemid |1414|
 :pattern ( (MapType0Select BoxType boolType (|lambda#38| |l#0@@1| |l#1@@1|) |$y#0@@0|))
)))
(assert (forall ((m@@3 T@U) (u@@0 T@U) (v@@2 T@U) ) (!  (=> (not (|Set#IsMember| (|Map#Domain| m@@3) u@@0)) (= (|Map#Card| (|Map#Build| m@@3 u@@0 v@@2)) (+ (|Map#Card| m@@3) 1)))
 :qid |DafnyPreludebpl.1471:15|
 :skolemid |292|
 :pattern ( (|Map#Card| (|Map#Build| m@@3 u@@0 v@@2)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((this@@19 T@U) (|o#0@@6| T@U) (|edges#0@@8| T@U) ) (!  (=> (or (|_module.Memory.externalEdges#canCall| this@@19 |o#0@@6| |edges#0@@8|) (and (< 3 $FunctionContextHeight) (and (and (and (or (not (= this@@19 null)) (not true)) ($Is refType this@@19 Tclass._module.Memory)) ($Is DatatypeTypeType |o#0@@6| Tclass._module.Region)) ($Is SetType |edges#0@@8| (TSet Tclass._module.Edge))))) (and (forall ((|e#0@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |e#0@@0| Tclass._module.Edge) (=> (|Set#IsMember| |edges#0@@8| ($Box DatatypeTypeType |e#0@@0|)) (and (and (and (|$IsA#_module.Region| (_module.Object.region (_module.Edge.t |e#0@@0|))) (|$IsA#_module.Region| |o#0@@6|)) (_module.Edge.Edge_q |e#0@@0|)) (=> (|_module.Region#Equal| (_module.Object.region (_module.Edge.t |e#0@@0|)) |o#0@@6|) (and (and (|$IsA#_module.Region| (_module.Object.region (_module.Edge.f |e#0@@0|))) (|$IsA#_module.Region| |o#0@@6|)) (_module.Edge.Edge_q |e#0@@0|))))))
 :qid |gitissue3855dfy.339:9|
 :skolemid |1002|
 :pattern ( (_module.Edge.f |e#0@@0|))
 :pattern ( (_module.Edge.t |e#0@@0|))
 :pattern ( (|Set#IsMember| |edges#0@@8| ($Box DatatypeTypeType |e#0@@0|)))
)) (= (_module.Memory.externalEdges this@@19 |o#0@@6| |edges#0@@8|) (|Set#FromBoogieMap| (|lambda#71| Tclass._module.Edge |edges#0@@8| |o#0@@6| |o#0@@6|)))))
 :qid |gitissue3855dfy.336:12|
 :skolemid |1003|
 :pattern ( (_module.Memory.externalEdges this@@19 |o#0@@6| |edges#0@@8|))
))))
(assert (forall ((|l#0@@2| T@U) (|l#1@@2| T@U) (|l#2| T@U) (|$y#0@@1| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#41| |l#0@@2| |l#1@@2| |l#2|) |$y#0@@1|))  (and ($IsBox |$y#0@@1| |l#0@@2|) (and (|Set#IsMember| |l#1@@2| |$y#0@@1|) (= (_module.Edge.t ($Unbox DatatypeTypeType |$y#0@@1|)) |l#2|))))
 :qid |gitissue3855dfy.149:10|
 :skolemid |1415|
 :pattern ( (MapType0Select BoxType boolType (|lambda#41| |l#0@@2| |l#1@@2| |l#2|) |$y#0@@1|))
)))
(assert (forall ((v@@3 T@U) (t@@2 T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@3) t@@2 h@@0) ($IsAlloc T@@1 v@@3 t@@2 h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@3) t@@2 h@@0))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|o#0@@7| T@U) (|t#0@@5| T@U) ) (!  (=> (or (|_module.__default.AssignmentCompatible#canCall| (Lit refType |o#0@@7|) (Lit DatatypeTypeType |t#0@@5|)) (and (< 3 $FunctionContextHeight) (and ($Is refType |o#0@@7| Tclass._module.Object) ($Is DatatypeTypeType |t#0@@5| Tclass._module.Mode)))) (= (_module.__default.AssignmentCompatible (Lit refType |o#0@@7|) (Lit DatatypeTypeType |t#0@@5|)) (let ((|r#1| (_module.Object.region (Lit refType |o#0@@7|))))
(ite (_module.Mode.Imm_q (Lit DatatypeTypeType |t#0@@5|)) (_module.Region.Frozen_q |r#1|) (ite (_module.Mode.Iso_q (Lit DatatypeTypeType |t#0@@5|)) (_module.Region.Isolate_q |r#1|) (ite (_module.Mode.Mut_q (Lit DatatypeTypeType |t#0@@5|)) (_module.Region.Heap_q |r#1|) (ite (_module.Mode.Tmp_q (Lit DatatypeTypeType |t#0@@5|)) (_module.Region.Stack_q |r#1|)  (or (_module.Region.Heap_q |r#1|) (_module.Region.Stack_q |r#1|)))))))))
 :qid |gitissue3855dfy.63:32|
 :weight 3
 :skolemid |598|
 :pattern ( (_module.__default.AssignmentCompatible (Lit refType |o#0@@7|) (Lit DatatypeTypeType |t#0@@5|)))
))))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@3 T@U) (t@@3 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@3 t@@3 h@@1) ($IsAllocBox bx@@3 t@@3 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@3 t@@3 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@4 T@U) (t@@4 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@4 t@@4 h@@2) ($IsAlloc T@@2 v@@4 t@@4 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@4 t@@4 h@@2))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@8 T@U) (this@@20 T@U) ) (!  (=> (or (|_module.Object.AllFieldsContentsConsistentWithTheirDeclaration#canCall| $Heap@@8 this@@20) (and (< 4 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@8) (and (or (not (= this@@20 null)) (not true)) (and ($Is refType this@@20 Tclass._module.Object) ($IsAlloc refType this@@20 Tclass._module.Object $Heap@@8)))) (_module.Object.AllFieldsAreDeclared $Heap@@8 this@@20)))) (and (forall ((|n#0| T@U) ) (!  (=> ($Is SeqType |n#0| (TSeq TChar)) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 this@@20) _module.Object.fields))) ($Box SeqType |n#0|)) (|_module.__default.AssignmentCompatible#canCall| ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 this@@20) _module.Object.fields))) ($Box SeqType |n#0|))) ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes this@@20)) ($Box SeqType |n#0|))))))
 :qid |gitissue3855dfy.128:14|
 :skolemid |784|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes this@@20)) ($Box SeqType |n#0|))))
 :pattern ( ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 this@@20) _module.Object.fields))) ($Box SeqType |n#0|))))
 :pattern ( (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 this@@20) _module.Object.fields))) ($Box SeqType |n#0|)))
)) (= (_module.Object.AllFieldsContentsConsistentWithTheirDeclaration $Heap@@8 this@@20) (forall ((|n#0@@0| T@U) ) (!  (=> (and ($Is SeqType |n#0@@0| (TSeq TChar)) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 this@@20) _module.Object.fields))) ($Box SeqType |n#0@@0|))) (_module.__default.AssignmentCompatible ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 this@@20) _module.Object.fields))) ($Box SeqType |n#0@@0|))) ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes this@@20)) ($Box SeqType |n#0@@0|)))))
 :qid |gitissue3855dfy.128:14|
 :skolemid |783|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes this@@20)) ($Box SeqType |n#0@@0|))))
 :pattern ( ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 this@@20) _module.Object.fields))) ($Box SeqType |n#0@@0|))))
 :pattern ( (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 this@@20) _module.Object.fields))) ($Box SeqType |n#0@@0|)))
)))))
 :qid |gitissue3855dfy.124:13|
 :skolemid |785|
 :pattern ( (_module.Object.AllFieldsContentsConsistentWithTheirDeclaration $Heap@@8 this@@20) ($IsGoodHeap $Heap@@8))
))))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.Mode) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@4)) bx@@4) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@4) Tclass._module.Mode)))
 :qid |unknown.0:0|
 :skolemid |585|
 :pattern ( ($IsBox bx@@4 Tclass._module.Mode))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.Object) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.Object)))
 :qid |unknown.0:0|
 :skolemid |590|
 :pattern ( ($IsBox bx@@5 Tclass._module.Object))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.Region) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@6)) bx@@6) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@6) Tclass._module.Region)))
 :qid |unknown.0:0|
 :skolemid |599|
 :pattern ( ($IsBox bx@@6 Tclass._module.Region))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.Memory) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.Memory)))
 :qid |unknown.0:0|
 :skolemid |600|
 :pattern ( ($IsBox bx@@7 Tclass._module.Memory))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.Memory?) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._module.Memory?)))
 :qid |unknown.0:0|
 :skolemid |601|
 :pattern ( ($IsBox bx@@8 Tclass._module.Memory?))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.Status) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@9)) bx@@9) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@9) Tclass._module.Status)))
 :qid |unknown.0:0|
 :skolemid |610|
 :pattern ( ($IsBox bx@@9 Tclass._module.Status))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass._module.Object?) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |622|
 :pattern ( ($IsBox bx@@10 Tclass._module.Object?))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 Tclass._module.Edge) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@11)) bx@@11) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@11) Tclass._module.Edge)))
 :qid |unknown.0:0|
 :skolemid |808|
 :pattern ( ($IsBox bx@@11 Tclass._module.Edge))
)))
(assert (forall ((|a#26#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Region.Heap| |a#26#0#0|) Tclass._module.Region) ($Is refType |a#26#0#0| Tclass._module.Object))
 :qid |gitissue3855dfy.19:33|
 :skolemid |704|
 :pattern ( ($Is DatatypeTypeType (|#_module.Region.Heap| |a#26#0#0|) Tclass._module.Region))
)))
(assert (forall ((|a#31#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Region.Stack| |a#31#0#0|) Tclass._module.Region) ($Is refType |a#31#0#0| Tclass._module.Object))
 :qid |gitissue3855dfy.19:58|
 :skolemid |713|
 :pattern ( ($Is DatatypeTypeType (|#_module.Region.Stack| |a#31#0#0|) Tclass._module.Region))
)))
(assert (forall ((|a#36#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Region.Frame| |a#36#0#0|) Tclass._module.Region) ($Is refType |a#36#0#0| Tclass._module.Object))
 :qid |gitissue3855dfy.19:84|
 :skolemid |722|
 :pattern ( ($Is DatatypeTypeType (|#_module.Region.Frame| |a#36#0#0|) Tclass._module.Region))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((this@@21 T@U) (|edges#0@@9| T@U) ) (!  (=> (or (|_module.Memory.justHeapExternalEdges#canCall| this@@21 |edges#0@@9|) (and (< 3 $FunctionContextHeight) (and (and (or (not (= this@@21 null)) (not true)) ($Is refType this@@21 Tclass._module.Memory)) ($Is SetType |edges#0@@9| (TSet Tclass._module.Edge))))) (and (|Set#Subset| (_module.Memory.justHeapExternalEdges this@@21 |edges#0@@9|) |edges#0@@9|) ($Is SetType (_module.Memory.justHeapExternalEdges this@@21 |edges#0@@9|) (TSet Tclass._module.Edge))))
 :qid |gitissue3855dfy.345:12|
 :skolemid |1009|
 :pattern ( (_module.Memory.justHeapExternalEdges this@@21 |edges#0@@9|))
))))
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass._module.Object)  (and ($Is refType |c#0@@1| Tclass._module.Object?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |802|
 :pattern ( ($Is refType |c#0@@1| Tclass._module.Object))
 :pattern ( ($Is refType |c#0@@1| Tclass._module.Object?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._module.Memory)  (and ($Is refType |c#0@@2| Tclass._module.Memory?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1377|
 :pattern ( ($Is refType |c#0@@2| Tclass._module.Memory))
 :pattern ( ($Is refType |c#0@@2| Tclass._module.Memory?))
)))
(assert (forall ((s@@2 T@U) (i@@1 Int) (v@@5 T@U) ) (!  (and (=> (= i@@1 (|Seq#Length| s@@2)) (= (|Seq#Index| (|Seq#Build| s@@2 v@@5) i@@1) v@@5)) (=> (or (not (= i@@1 (|Seq#Length| s@@2))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@2 v@@5) i@@1) (|Seq#Index| s@@2 i@@1))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@2 v@@5) i@@1))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@9 T@U) (this@@22 T@U) ) (!  (=> (or (|_module.Object.outgoing#canCall| $Heap@@9 this@@22) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@9) (and (or (not (= this@@22 null)) (not true)) (and ($Is refType this@@22 Tclass._module.Object) ($IsAlloc refType this@@22 Tclass._module.Object $Heap@@9)))))) ($Is SetType (_module.Object.outgoing $Heap@@9 this@@22) (TSet Tclass._module.Object)))
 :qid |gitissue3855dfy.106:12|
 :skolemid |752|
 :pattern ( (_module.Object.outgoing $Heap@@9 this@@22))
))))
(assert (forall ((m@@4 T@U) (|m'| T@U) ) (! (= (|Map#Equal| m@@4 |m'|)  (and (forall ((u@@1 T@U) ) (! (= (|Set#IsMember| (|Map#Domain| m@@4) u@@1) (|Set#IsMember| (|Map#Domain| |m'|) u@@1))
 :qid |DafnyPreludebpl.1498:35|
 :skolemid |297|
)) (forall ((u@@2 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| m@@4) u@@2) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@4) u@@2) (MapType0Select BoxType BoxType (|Map#Elements| |m'|) u@@2)))
 :qid |DafnyPreludebpl.1499:35|
 :skolemid |298|
))))
 :qid |DafnyPreludebpl.1496:15|
 :skolemid |299|
 :pattern ( (|Map#Equal| m@@4 |m'|))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@10 T@U) (this@@23 T@U) ) (!  (=> (or (|_module.Object.size#canCall| $Heap@@10 this@@23) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@10) (and (or (not (= this@@23 null)) (not true)) (and ($Is refType this@@23 Tclass._module.Object) ($IsAlloc refType this@@23 Tclass._module.Object $Heap@@10)))))) (and (|_module.Object.outgoing#canCall| $Heap@@10 this@@23) (= (_module.Object.size $Heap@@10 this@@23) (|Set#Card| (_module.Object.outgoing $Heap@@10 this@@23)))))
 :qid |gitissue3855dfy.108:12|
 :skolemid |764|
 :pattern ( (_module.Object.size $Heap@@10 this@@23) ($IsGoodHeap $Heap@@10))
))))
(assert (forall ((a@@20 T@U) (b@@17 T@U) (o@@6 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@20 b@@17) o@@6)  (or (|Set#IsMember| a@@20 o@@6) (|Set#IsMember| b@@17 o@@6)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@20 b@@17) o@@6))
)))
(assert (forall ((a@@21 T@U) (b@@18 T@U) ) (!  (=> (|Set#Disjoint| a@@21 b@@18) (and (= (|Set#Difference| (|Set#Union| a@@21 b@@18) a@@21) b@@18) (= (|Set#Difference| (|Set#Union| a@@21 b@@18) b@@18) a@@21)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@21 b@@18))
)))
(assert (forall ((m@@5 T@U) ) (! (= (= (|Map#Card| m@@5) 0) (= m@@5 |Map#Empty|))
 :qid |DafnyPreludebpl.1382:15|
 :skolemid |272|
 :pattern ( (|Map#Card| m@@5))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@11 T@U) (this@@24 T@U) ) (!  (=> (or (|_module.Object.outgoing#canCall| $Heap@@11 this@@24) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@11) (and (or (not (= this@@24 null)) (not true)) (and ($Is refType this@@24 Tclass._module.Object) ($IsAlloc refType this@@24 Tclass._module.Object $Heap@@11)))))) (= (_module.Object.outgoing $Heap@@11 this@@24) (|Map#Values| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@11 this@@24) _module.Object.fields)))))
 :qid |gitissue3855dfy.106:12|
 :skolemid |755|
 :pattern ( (_module.Object.outgoing $Heap@@11 this@@24) ($IsGoodHeap $Heap@@11))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((this@@25 T@U) (|t#0@@6| T@U) (|edges#0@@10| T@U) ) (!  (=> (or (|_module.Memory.incomingEdges#canCall| (Lit refType this@@25) (Lit refType |t#0@@6|) (Lit SetType |edges#0@@10|)) (and (< 2 $FunctionContextHeight) (and (and (and (or (not (= this@@25 null)) (not true)) ($Is refType this@@25 Tclass._module.Memory)) ($Is refType |t#0@@6| Tclass._module.Object)) ($Is SetType |edges#0@@10| (TSet Tclass._module.Edge))))) (and (forall ((|e#2@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |e#2@@0| Tclass._module.Edge) (=> (|Set#IsMember| (Lit SetType |edges#0@@10|) ($Box DatatypeTypeType |e#2@@0|)) (_module.Edge.Edge_q |e#2@@0|)))
 :qid |gitissue3855dfy.248:9|
 :skolemid |905|
 :pattern ( (_module.Edge.t |e#2@@0|))
 :pattern ( (|Set#IsMember| |edges#0@@10| ($Box DatatypeTypeType |e#2@@0|)))
)) (= (_module.Memory.incomingEdges (Lit refType this@@25) (Lit refType |t#0@@6|) (Lit SetType |edges#0@@10|)) (|Set#FromBoogieMap| (|lambda#41| Tclass._module.Edge (Lit SetType |edges#0@@10|) (Lit refType |t#0@@6|))))))
 :qid |gitissue3855dfy.245:12|
 :weight 3
 :skolemid |906|
 :pattern ( (_module.Memory.incomingEdges (Lit refType this@@25) (Lit refType |t#0@@6|) (Lit SetType |edges#0@@10|)))
))))
(assert (forall (($h@@9 T@U) ($o@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) Tclass._module.Memory?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@9) _module.Memory.objects)) (TSet Tclass._module.Object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |826|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@9) _module.Memory.objects)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((this@@26 T@U) (|t#0@@7| T@U) (|edges#0@@11| T@U) ) (!  (=> (or (|_module.Memory.incomingEdges#canCall| this@@26 |t#0@@7| |edges#0@@11|) (and (< 2 $FunctionContextHeight) (and (and (and (or (not (= this@@26 null)) (not true)) ($Is refType this@@26 Tclass._module.Memory)) ($Is refType |t#0@@7| Tclass._module.Object)) ($Is SetType |edges#0@@11| (TSet Tclass._module.Edge))))) (and (forall ((|e#0@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |e#0@@1| Tclass._module.Edge) (=> (|Set#IsMember| |edges#0@@11| ($Box DatatypeTypeType |e#0@@1|)) (_module.Edge.Edge_q |e#0@@1|)))
 :qid |gitissue3855dfy.248:9|
 :skolemid |901|
 :pattern ( (_module.Edge.t |e#0@@1|))
 :pattern ( (|Set#IsMember| |edges#0@@11| ($Box DatatypeTypeType |e#0@@1|)))
)) (= (_module.Memory.incomingEdges this@@26 |t#0@@7| |edges#0@@11|) (|Set#FromBoogieMap| (|lambda#41| Tclass._module.Edge |edges#0@@11| |t#0@@7|)))))
 :qid |gitissue3855dfy.245:12|
 :skolemid |902|
 :pattern ( (_module.Memory.incomingEdges this@@26 |t#0@@7| |edges#0@@11|))
))))
(assert (forall (($h@@10 T@U) ($o@@10 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) Tclass._module.Memory?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@10) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@10) _module.Memory.objects)) (TSet Tclass._module.Object) $h@@10))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |827|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@10) _module.Memory.objects)))
)))
(assert (forall (($h0@@1 T@U) ($h1@@1 T@U) (this@@27 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@1) ($IsGoodHeap $h1@@1)) (and (or (not (= this@@27 null)) (not true)) ($Is refType this@@27 Tclass._module.Object))) (and ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1))) (=> (forall (($o@@11 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) (and (= $o@@11 this@@27) (= $f@@1 _module.Object.fields))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@11) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@1 $o@@11) $f@@1)))
 :qid |unknown.0:0|
 :skolemid |774|
)) (= (_module.Object.AllFieldsAreDeclared $h0@@1 this@@27) (_module.Object.AllFieldsAreDeclared $h1@@1 this@@27))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |775|
 :pattern ( ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1) (_module.Object.AllFieldsAreDeclared $h1@@1 this@@27))
)))
(assert (forall (($h0@@2 T@U) ($h1@@2 T@U) (this@@28 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@2) ($IsGoodHeap $h1@@2)) (and (or (not (= this@@28 null)) (not true)) ($Is refType this@@28 Tclass._module.Object))) (and ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2))) (=> (forall (($o@@12 T@U) ($f@@2 T@U) ) (!  (=> (and (or (not (= $o@@12 null)) (not true)) (and (= $o@@12 this@@28) (= $f@@2 _module.Object.fields))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@12) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@2 $o@@12) $f@@2)))
 :qid |unknown.0:0|
 :skolemid |779|
)) (= (_module.Object.AllFieldsContentsConsistentWithTheirDeclaration $h0@@2 this@@28) (_module.Object.AllFieldsContentsConsistentWithTheirDeclaration $h1@@2 this@@28))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |780|
 :pattern ( ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2) (_module.Object.AllFieldsContentsConsistentWithTheirDeclaration $h1@@2 this@@28))
)))
(assert (forall (($h0@@3 T@U) ($h1@@3 T@U) (this@@29 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@3) ($IsGoodHeap $h1@@3)) (and (or (not (= this@@29 null)) (not true)) ($Is refType this@@29 Tclass._module.Object))) (and ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3))) (=> (forall (($o@@13 T@U) ($f@@3 T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) (and (= $o@@13 this@@29) (= $f@@3 _module.Object.fields))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@13) $f@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@3 $o@@13) $f@@3)))
 :qid |unknown.0:0|
 :skolemid |791|
)) (= (_module.Object.AllOutgoingReferencesAreVenice $h0@@3 this@@29) (_module.Object.AllOutgoingReferencesAreVenice $h1@@3 this@@29))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |792|
 :pattern ( ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3) (_module.Object.AllOutgoingReferencesAreVenice $h1@@3 this@@29))
)))
(assert (forall ((|l#0@@3| T@U) (|l#1@@3| T@U) (|l#2@@0| T@U) (|l#3| T@U) (|$y#0@@2| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#71| |l#0@@3| |l#1@@3| |l#2@@0| |l#3|) |$y#0@@2|))  (and ($IsBox |$y#0@@2| |l#0@@3|) (and (|Set#IsMember| |l#1@@3| |$y#0@@2|) (and (|_module.Region#Equal| (_module.Object.region (_module.Edge.t ($Unbox DatatypeTypeType |$y#0@@2|))) |l#2@@0|) (not (|_module.Region#Equal| (_module.Object.region (_module.Edge.f ($Unbox DatatypeTypeType |$y#0@@2|))) |l#3|))))))
 :qid |gitissue3855dfy.149:10|
 :skolemid |1420|
 :pattern ( (MapType0Select BoxType boolType (|lambda#71| |l#0@@3| |l#1@@3| |l#2@@0| |l#3|) |$y#0@@2|))
)))
(assert (forall (($h@@11 T@U) ($o@@14 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@14 null)) (not true)) (= (dtype $o@@14) Tclass._module.Object?))) ($Is MapType ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@14) _module.Object.fields)) (TMap (TSeq TChar) Tclass._module.Object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |742|
 :pattern ( ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@14) _module.Object.fields)))
)))
(assert (forall (($h@@12 T@U) ($o@@15 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@15 null)) (not true)) (= (dtype $o@@15) Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@15) alloc)))) ($IsAlloc MapType ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@15) _module.Object.fields)) (TMap (TSeq TChar) Tclass._module.Object) $h@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |743|
 :pattern ( ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@15) _module.Object.fields)))
)))
(assert (forall (($h0@@4 T@U) ($h1@@4 T@U) (this@@30 T@U) (|os#0@@4| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0@@4) ($IsGoodHeap $h1@@4)) (and (or (not (= this@@30 null)) (not true)) ($Is refType this@@30 Tclass._module.Memory))) (or (|_module.Memory.OutgoingReferencesAreInThisHeap#canCall| $h0@@4 this@@30 |os#0@@4|) ($Is SetType |os#0@@4| (TSet Tclass._module.Object)))) (and ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4))) (=> (forall (($o@@16 T@U) ($f@@4 T@U) ) (!  (=> (and (or (not (= $o@@16 null)) (not true)) (or (or (and (= $o@@16 this@@30) (= $f@@4 _module.Memory.objects)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 this@@30) _module.Memory.objects)) ($Box refType $o@@16))) (|Set#IsMember| |os#0@@4| ($Box refType $o@@16)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@16) $f@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@4 $o@@16) $f@@4)))
 :qid |unknown.0:0|
 :skolemid |862|
)) (= (_module.Memory.OutgoingReferencesAreInThisHeap $h0@@4 this@@30 |os#0@@4|) (_module.Memory.OutgoingReferencesAreInThisHeap $h1@@4 this@@30 |os#0@@4|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |863|
 :pattern ( ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4) (_module.Memory.OutgoingReferencesAreInThisHeap $h1@@4 this@@30 |os#0@@4|))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0| Bool) ) (!  (=> (or (|_module.__default.not#canCall| |x#0|) (< 0 $FunctionContextHeight)) (= (_module.__default.not |x#0|)  (not |x#0|)))
 :qid |gitissue3855dfy.1242:15|
 :skolemid |651|
 :pattern ( (_module.__default.not |x#0|))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@12 T@U) (this@@31 T@U) (|o#0@@8| T@U) (|n#0@@1| T@U) (|f#0@@0| T@U) (|m#0| T@U) ) (!  (=> (or (|_module.Memory.betterCopyDynamicCheck#canCall| $Heap@@12 this@@31 |o#0@@8| |n#0@@1| |f#0@@0| |m#0|) (and (< 4 $FunctionContextHeight) (and (and (and (and (and ($IsGoodHeap $Heap@@12) (and (or (not (= this@@31 null)) (not true)) (and ($Is refType this@@31 Tclass._module.Memory) ($IsAlloc refType this@@31 Tclass._module.Memory $Heap@@12)))) ($Is refType |o#0@@8| Tclass._module.Object)) ($Is SeqType |n#0@@1| (TSeq TChar))) ($Is refType |f#0@@0| Tclass._module.Object)) ($Is SeqType |m#0| (TSeq TChar))))) (and (=> (|Set#IsMember| (|Map#Domain| (_module.Object.fieldModes |f#0@@0|)) ($Box SeqType |m#0|)) (=> (|Set#IsMember| (|Map#Domain| (_module.Object.fieldModes |o#0@@8|)) ($Box SeqType |n#0@@1|)) (and (and (|$IsA#_module.Mode| ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes |o#0@@8|)) ($Box SeqType |n#0@@1|)))) (|$IsA#_module.Mode| ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes |f#0@@0|)) ($Box SeqType |m#0|))))) (=> (|_module.Mode#Equal| ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes |o#0@@8|)) ($Box SeqType |n#0@@1|))) ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes |f#0@@0|)) ($Box SeqType |m#0|)))) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@12 |f#0@@0|) _module.Object.fields))) ($Box SeqType |m#0|)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@12 this@@31) _module.Memory.objects)) (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@12 |f#0@@0|) _module.Object.fields))) ($Box SeqType |m#0|))) (=> (not (_module.Region.Frozen_q (_module.Object.region |o#0@@8|))) (|_module.__default.VeniceReferenceOK#canCall| |o#0@@8| ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@12 |f#0@@0|) _module.Object.fields))) ($Box SeqType |m#0|))))))))))) (= (_module.Memory.betterCopyDynamicCheck $Heap@@12 this@@31 |o#0@@8| |n#0@@1| |f#0@@0| |m#0|)  (and (and (and (and (and (and (and (|Set#IsMember| (|Map#Domain| (_module.Object.fieldModes |f#0@@0|)) ($Box SeqType |m#0|)) (|Set#IsMember| (|Map#Domain| (_module.Object.fieldModes |o#0@@8|)) ($Box SeqType |n#0@@1|))) (|_module.Mode#Equal| ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes |o#0@@8|)) ($Box SeqType |n#0@@1|))) ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes |f#0@@0|)) ($Box SeqType |m#0|))))) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@12 |f#0@@0|) _module.Object.fields))) ($Box SeqType |m#0|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@12 this@@31) _module.Memory.objects)) (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@12 |f#0@@0|) _module.Object.fields))) ($Box SeqType |m#0|)))) (not (_module.Region.Frozen_q (_module.Object.region |o#0@@8|)))) (_module.__default.VeniceReferenceOK |o#0@@8| ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@12 |f#0@@0|) _module.Object.fields))) ($Box SeqType |m#0|))))) (not (_module.Mode.Iso_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes |f#0@@0|)) ($Box SeqType |m#0|)))))))))
 :qid |gitissue3855dfy.880:11|
 :skolemid |1318|
 :pattern ( (_module.Memory.betterCopyDynamicCheck $Heap@@12 this@@31 |o#0@@8| |n#0@@1| |f#0@@0| |m#0|) ($IsGoodHeap $Heap@@12))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@13 T@U) (this@@32 T@U) (|os#0@@5| T@U) ) (!  (=> (or (|_module.Memory.edges#canCall| $Heap@@13 this@@32 |os#0@@5|) (and (< 2 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@13) (and (or (not (= this@@32 null)) (not true)) (and ($Is refType this@@32 Tclass._module.Memory) ($IsAlloc refType this@@32 Tclass._module.Memory $Heap@@13)))) (and ($Is SetType |os#0@@5| (TSet Tclass._module.Object)) ($IsAlloc SetType |os#0@@5| (TSet Tclass._module.Object) $Heap@@13))))) (and (and (forall ((|edge#0| T@U) ) (!  (=> (and ($Is DatatypeTypeType |edge#0| Tclass._module.Edge) (|Set#IsMember| (_module.Memory.edges $Heap@@13 this@@32 |os#0@@5|) ($Box DatatypeTypeType |edge#0|))) (and (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 (_module.Edge.f |edge#0|)) _module.Object.fields))) ($Box SeqType (_module.Edge.n |edge#0|))) (= ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 (_module.Edge.f |edge#0|)) _module.Object.fields))) ($Box SeqType (_module.Edge.n |edge#0|)))) (_module.Edge.t |edge#0|))))
 :qid |gitissue3855dfy.258:20|
 :skolemid |916|
 :pattern ( (_module.Edge.t |edge#0|))
 :pattern ( (_module.Edge.f |edge#0|))
 :pattern ( (_module.Edge.n |edge#0|))
 :pattern ( (|Set#IsMember| (_module.Memory.edges $Heap@@13 this@@32 |os#0@@5|) ($Box DatatypeTypeType |edge#0|)))
)) (=> (|Set#Equal| |os#0@@5| |Set#Empty|) (|Set#Equal| (_module.Memory.edges $Heap@@13 this@@32 |os#0@@5|) |Set#Empty|))) ($Is SetType (_module.Memory.edges $Heap@@13 this@@32 |os#0@@5|) (TSet Tclass._module.Edge))))
 :qid |gitissue3855dfy.256:12|
 :skolemid |917|
 :pattern ( (_module.Memory.edges $Heap@@13 this@@32 |os#0@@5|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@14 T@U) (this@@33 T@U) ) (!  (=> (or (|_module.Object.AllFieldsAreDeclared#canCall| $Heap@@14 this@@33) (and (< 3 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@14) (and (or (not (= this@@33 null)) (not true)) (and ($Is refType this@@33 Tclass._module.Object) ($IsAlloc refType this@@33 Tclass._module.Object $Heap@@14)))))) (= (_module.Object.AllFieldsAreDeclared $Heap@@14 this@@33) (|Set#Subset| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@14 this@@33) _module.Object.fields))) (|Map#Domain| (_module.Object.fieldModes this@@33)))))
 :qid |gitissue3855dfy.120:13|
 :skolemid |778|
 :pattern ( (_module.Object.AllFieldsAreDeclared $Heap@@14 this@@33) ($IsGoodHeap $Heap@@14))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@15 T@U) (this@@34 T@U) (|os#0@@6| T@U) ) (!  (=> (or (|_module.Memory.justTheIsos#canCall| $Heap@@15 this@@34 |os#0@@6|) (and (< 3 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@15) (and (or (not (= this@@34 null)) (not true)) (and ($Is refType this@@34 Tclass._module.Memory) ($IsAlloc refType this@@34 Tclass._module.Memory $Heap@@15)))) ($Is SetType |os#0@@6| (TSet Tclass._module.Object))))) (= (_module.Memory.justTheIsos $Heap@@15 this@@34 |os#0@@6|) (|Set#FromBoogieMap| (|lambda#38| Tclass._module.Object |os#0@@6|))))
 :qid |gitissue3855dfy.235:12|
 :skolemid |893|
 :pattern ( (_module.Memory.justTheIsos $Heap@@15 this@@34 |os#0@@6|) ($IsGoodHeap $Heap@@15))
))))
(assert (forall ((a@@22 T@U) (b@@19 T@U) ) (!  (=> (|Set#Equal| a@@22 b@@19) (= a@@22 b@@19))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@22 b@@19))
)))
(assert (forall ((a@@23 T@U) (b@@20 T@U) ) (!  (=> (|Seq#Equal| a@@23 b@@20) (= a@@23 b@@20))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |241|
 :pattern ( (|Seq#Equal| a@@23 b@@20))
)))
(assert (forall ((m@@6 T@U) (|m'@@0| T@U) ) (!  (=> (|Map#Equal| m@@6 |m'@@0|) (= m@@6 |m'@@0|))
 :qid |DafnyPreludebpl.1501:15|
 :skolemid |300|
 :pattern ( (|Map#Equal| m@@6 |m'@@0|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@16 T@U) (this@@35 T@U) ) (!  (=> (or (|_module.Object.outgoing#canCall| $Heap@@16 this@@35) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@16) (or (not (= this@@35 null)) (not true))) ($IsAlloc refType this@@35 Tclass._module.Object $Heap@@16)))) ($IsAlloc SetType (_module.Object.outgoing $Heap@@16 this@@35) (TSet Tclass._module.Object) $Heap@@16))
 :qid |gitissue3855dfy.106:12|
 :skolemid |753|
 :pattern ( ($IsAlloc SetType (_module.Object.outgoing $Heap@@16 this@@35) (TSet Tclass._module.Object) $Heap@@16))
))))
(assert (forall ((|a#26#0#0@@0| T@U) ($h@@13 T@U) ) (!  (=> ($IsGoodHeap $h@@13) (= ($IsAlloc DatatypeTypeType (|#_module.Region.Heap| |a#26#0#0@@0|) Tclass._module.Region $h@@13) ($IsAlloc refType |a#26#0#0@@0| Tclass._module.Object $h@@13)))
 :qid |gitissue3855dfy.19:33|
 :skolemid |705|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Region.Heap| |a#26#0#0@@0|) Tclass._module.Region $h@@13))
)))
(assert (forall ((|a#31#0#0@@0| T@U) ($h@@14 T@U) ) (!  (=> ($IsGoodHeap $h@@14) (= ($IsAlloc DatatypeTypeType (|#_module.Region.Stack| |a#31#0#0@@0|) Tclass._module.Region $h@@14) ($IsAlloc refType |a#31#0#0@@0| Tclass._module.Object $h@@14)))
 :qid |gitissue3855dfy.19:58|
 :skolemid |714|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Region.Stack| |a#31#0#0@@0|) Tclass._module.Region $h@@14))
)))
(assert (forall ((|a#36#0#0@@0| T@U) ($h@@15 T@U) ) (!  (=> ($IsGoodHeap $h@@15) (= ($IsAlloc DatatypeTypeType (|#_module.Region.Frame| |a#36#0#0@@0|) Tclass._module.Region $h@@15) ($IsAlloc refType |a#36#0#0@@0| Tclass._module.Object $h@@15)))
 :qid |gitissue3855dfy.19:84|
 :skolemid |723|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Region.Frame| |a#36#0#0@@0|) Tclass._module.Region $h@@15))
)))
(assert (forall (($h0@@5 T@U) ($h1@@5 T@U) (this@@36 T@U) (|os#0@@7| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0@@5) ($IsGoodHeap $h1@@5)) (and (or (not (= this@@36 null)) (not true)) ($Is refType this@@36 Tclass._module.Memory))) (or (|_module.Memory.ObjectsAreValid#canCall| $h0@@5 this@@36 |os#0@@7|) ($Is SetType |os#0@@7| (TSet Tclass._module.Object)))) (and ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5))) (=> (forall (($o@@17 T@U) ($f@@5 T@U) ) (!  (=> (and (or (not (= $o@@17 null)) (not true)) (|Set#IsMember| |os#0@@7| ($Box refType $o@@17))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 $o@@17) $f@@5) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@5 $o@@17) $f@@5)))
 :qid |unknown.0:0|
 :skolemid |851|
)) (= (_module.Memory.ObjectsAreValid $h0@@5 this@@36 |os#0@@7|) (_module.Memory.ObjectsAreValid $h1@@5 this@@36 |os#0@@7|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |852|
 :pattern ( ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5) (_module.Memory.ObjectsAreValid $h1@@5 this@@36 |os#0@@7|))
)))
(assert (forall (($h0@@6 T@U) ($h1@@6 T@U) (this@@37 T@U) (|os#0@@8| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0@@6) ($IsGoodHeap $h1@@6)) (and (or (not (= this@@37 null)) (not true)) ($Is refType this@@37 Tclass._module.Memory))) (or (|_module.Memory.wholeEnchilada#canCall| $h0@@6 this@@37 |os#0@@8|) ($Is SetType |os#0@@8| (TSet Tclass._module.Object)))) (and ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6))) (=> (forall (($o@@18 T@U) ($f@@6 T@U) ) (!  (=> (and (or (not (= $o@@18 null)) (not true)) (|Set#IsMember| |os#0@@8| ($Box refType $o@@18))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@18) $f@@6) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@6 $o@@18) $f@@6)))
 :qid |unknown.0:0|
 :skolemid |926|
)) (= (_module.Memory.wholeEnchilada $h0@@6 this@@37 |os#0@@8|) (_module.Memory.wholeEnchilada $h1@@6 this@@37 |os#0@@8|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |927|
 :pattern ( ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6) (_module.Memory.wholeEnchilada $h1@@6 this@@37 |os#0@@8|))
)))
(assert (forall (($h0@@7 T@U) ($h1@@7 T@U) (this@@38 T@U) (|os#0@@9| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0@@7) ($IsGoodHeap $h1@@7)) (and (or (not (= this@@38 null)) (not true)) ($Is refType this@@38 Tclass._module.Memory))) (or (|_module.Memory.heapExternalsZeroOrOne#canCall| $h0@@7 this@@38 |os#0@@9|) ($Is SetType |os#0@@9| (TSet Tclass._module.Object)))) (and ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7))) (=> (forall (($o@@19 T@U) ($f@@7 T@U) ) (!  (=> (and (or (not (= $o@@19 null)) (not true)) (|Set#IsMember| |os#0@@9| ($Box refType $o@@19))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@19) $f@@7) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@7 $o@@19) $f@@7)))
 :qid |unknown.0:0|
 :skolemid |933|
)) (= (_module.Memory.heapExternalsZeroOrOne $h0@@7 this@@38 |os#0@@9|) (_module.Memory.heapExternalsZeroOrOne $h1@@7 this@@38 |os#0@@9|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |934|
 :pattern ( ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7) (_module.Memory.heapExternalsZeroOrOne $h1@@7 this@@38 |os#0@@9|))
)))
(assert (forall (($h0@@8 T@U) ($h1@@8 T@U) (this@@39 T@U) (|os#0@@10| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0@@8) ($IsGoodHeap $h1@@8)) (and (or (not (= this@@39 null)) (not true)) ($Is refType this@@39 Tclass._module.Memory))) (or (|_module.Memory.isosRefCountZeroOrOne#canCall| $h0@@8 this@@39 |os#0@@10|) ($Is SetType |os#0@@10| (TSet Tclass._module.Object)))) (and ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8))) (=> (forall (($o@@20 T@U) ($f@@8 T@U) ) (!  (=> (and (or (not (= $o@@20 null)) (not true)) (|Set#IsMember| |os#0@@10| ($Box refType $o@@20))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@20) $f@@8) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@8 $o@@20) $f@@8)))
 :qid |unknown.0:0|
 :skolemid |978|
)) (= (_module.Memory.isosRefCountZeroOrOne $h0@@8 this@@39 |os#0@@10|) (_module.Memory.isosRefCountZeroOrOne $h1@@8 this@@39 |os#0@@10|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |979|
 :pattern ( ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8) (_module.Memory.isosRefCountZeroOrOne $h1@@8 this@@39 |os#0@@10|))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@17 T@U) (this@@40 T@U) (|edges#0@@12| T@U) ) (!  (=> (and (or (|_module.Memory.justHeapExternalEdges#canCall| this@@40 |edges#0@@12|) (and (< 3 $FunctionContextHeight) (and (and (or (not (= this@@40 null)) (not true)) ($IsAlloc refType this@@40 Tclass._module.Memory $Heap@@17)) (and ($Is SetType |edges#0@@12| (TSet Tclass._module.Edge)) ($IsAlloc SetType |edges#0@@12| (TSet Tclass._module.Edge) $Heap@@17))))) ($IsGoodHeap $Heap@@17)) ($IsAlloc SetType (_module.Memory.justHeapExternalEdges this@@40 |edges#0@@12|) (TSet Tclass._module.Edge) $Heap@@17))
 :qid |gitissue3855dfy.345:12|
 :skolemid |1010|
 :pattern ( ($IsAlloc SetType (_module.Memory.justHeapExternalEdges this@@40 |edges#0@@12|) (TSet Tclass._module.Edge) $Heap@@17))
))))
(assert (forall ((d@@29 T@U) ) (!  (=> ($Is DatatypeTypeType d@@29 Tclass._module.Status) (or (_module.Status.Success_q d@@29) (_module.Status.Failure_q d@@29)))
 :qid |unknown.0:0|
 :skolemid |1393|
 :pattern ( (_module.Status.Failure_q d@@29) ($Is DatatypeTypeType d@@29 Tclass._module.Status))
 :pattern ( (_module.Status.Success_q d@@29) ($Is DatatypeTypeType d@@29 Tclass._module.Status))
)))
(assert (forall ((a@@24 T@U) (b@@21 T@U) (c T@U) ) (!  (=> (or (not (= a@@24 c)) (not true)) (=> (and ($HeapSucc a@@24 b@@21) ($HeapSucc b@@21 c)) ($HeapSucc a@@24 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@24 b@@21) ($HeapSucc b@@21 c))
)))
(assert (forall (($h0@@9 T@U) ($h1@@9 T@U) (this@@41 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@9) ($IsGoodHeap $h1@@9)) (and (or (not (= this@@41 null)) (not true)) ($Is refType this@@41 Tclass._module.Object))) (and ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9))) (=> (forall (($o@@21 T@U) ($f@@9 T@U) ) (!  (=> (and (or (not (= $o@@21 null)) (not true)) (and (= $o@@21 this@@41) (= $f@@9 _module.Object.fields))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 $o@@21) $f@@9) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@9 $o@@21) $f@@9)))
 :qid |unknown.0:0|
 :skolemid |750|
)) (= (_module.Object.outgoing $h0@@9 this@@41) (_module.Object.outgoing $h1@@9 this@@41))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |751|
 :pattern ( ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9) (_module.Object.outgoing $h1@@9 this@@41))
)))
(assert (forall (($h0@@10 T@U) ($h1@@10 T@U) (this@@42 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@10) ($IsGoodHeap $h1@@10)) (and (or (not (= this@@42 null)) (not true)) ($Is refType this@@42 Tclass._module.Object))) (and ($IsHeapAnchor $h0@@10) ($HeapSucc $h0@@10 $h1@@10))) (=> (forall (($o@@22 T@U) ($f@@10 T@U) ) (!  (=> (and (or (not (= $o@@22 null)) (not true)) (and (= $o@@22 this@@42) (= $f@@10 _module.Object.fields))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@10 $o@@22) $f@@10) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@10 $o@@22) $f@@10)))
 :qid |unknown.0:0|
 :skolemid |760|
)) (= (_module.Object.size $h0@@10 this@@42) (_module.Object.size $h1@@10 this@@42))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |761|
 :pattern ( ($IsHeapAnchor $h0@@10) ($HeapSucc $h0@@10 $h1@@10) (_module.Object.size $h1@@10 this@@42))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((|l#0@@4| T@U) (|l#1@@4| T@U) (|l#2@@1| T@U) (|$y#1| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#52| |l#0@@4| |l#1@@4| |l#2@@1|) |$y#1|)) (exists ((|he#0| T@U) ) (!  (and (and ($Is DatatypeTypeType |he#0| |l#0@@4|) (|Set#IsMember| |l#1@@4| ($Box DatatypeTypeType |he#0|))) (= |$y#1| ($Box DatatypeTypeType (_module.Object.region (_module.Edge.t |he#0|)))))
 :qid |gitissue3855dfy.282:39|
 :skolemid |946|
 :pattern ( (_module.Edge.t |he#0|))
 :pattern ( (|Set#IsMember| |l#2@@1| ($Box DatatypeTypeType |he#0|)))
)))
 :qid |gitissue3855dfy.149:10|
 :skolemid |1417|
 :pattern ( (MapType0Select BoxType boolType (|lambda#52| |l#0@@4| |l#1@@4| |l#2@@1|) |$y#1|))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 TBool) (and (= ($Box boolType ($Unbox boolType bx@@12)) bx@@12) ($Is boolType ($Unbox boolType bx@@12) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@12 TBool))
)))
(assert (= (Ctor charType) 11))
(assert (forall ((bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 TChar) (and (= ($Box charType ($Unbox charType bx@@13)) bx@@13) ($Is charType ($Unbox charType bx@@13) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |30|
 :pattern ( ($IsBox bx@@13 TChar))
)))
(assert (forall ((a@@25 T@U) (b@@22 T@U) ) (!  (and (= (+ (+ (|Set#Card| (|Set#Difference| a@@25 b@@22)) (|Set#Card| (|Set#Difference| b@@22 a@@25))) (|Set#Card| (|Set#Intersection| a@@25 b@@22))) (|Set#Card| (|Set#Union| a@@25 b@@22))) (= (|Set#Card| (|Set#Difference| a@@25 b@@22)) (- (|Set#Card| a@@25) (|Set#Card| (|Set#Intersection| a@@25 b@@22)))))
 :qid |DafnyPreludebpl.761:15|
 :skolemid |145|
 :pattern ( (|Set#Card| (|Set#Difference| a@@25 b@@22)))
)))
(assert (forall ((v@@6 T@U) (t@@5 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@6) t@@5) ($Is T@@3 v@@6 t@@5))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@6) t@@5))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@18 T@U) (this@@43 T@U) (|os#0@@11| T@U) ) (!  (=> (or (|_module.Memory.heapExternalsZeroOrOne#canCall| $Heap@@18 this@@43 |os#0@@11|) (and (< 5 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@18) (and (or (not (= this@@43 null)) (not true)) (and ($Is refType this@@43 Tclass._module.Memory) ($IsAlloc refType this@@43 Tclass._module.Memory $Heap@@18)))) ($Is SetType |os#0@@11| (TSet Tclass._module.Object))))) (and (and (|_module.Memory.edges#canCall| $Heap@@18 this@@43 |os#0@@11|) (let ((|edges#0@@13| (_module.Memory.edges $Heap@@18 this@@43 |os#0@@11|)))
(|_module.Memory.heapExternalsZeroOrOneEdges#canCall| this@@43 |edges#0@@13|))) (= (_module.Memory.heapExternalsZeroOrOne $Heap@@18 this@@43 |os#0@@11|) (let ((|edges#0@@14| (_module.Memory.edges $Heap@@18 this@@43 |os#0@@11|)))
(_module.Memory.heapExternalsZeroOrOneEdges this@@43 |edges#0@@14|)))))
 :qid |gitissue3855dfy.273:13|
 :skolemid |937|
 :pattern ( (_module.Memory.heapExternalsZeroOrOne $Heap@@18 this@@43 |os#0@@11|) ($IsGoodHeap $Heap@@18))
))))
(assert (forall ((s@@3 T@U) ) (! (<= 0 (|Set#Card| s@@3))
 :qid |DafnyPreludebpl.664:15|
 :skolemid |124|
 :pattern ( (|Set#Card| s@@3))
)))
(assert (forall ((s@@4 T@U) ) (! (<= 0 (|Seq#Length| s@@4))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@4))
)))
(assert (forall ((m@@7 T@U) ) (! (<= 0 (|Map#Card| m@@7))
 :qid |DafnyPreludebpl.1380:15|
 :skolemid |271|
 :pattern ( (|Map#Card| m@@7))
)))
(assert (forall ((a@@26 T@U) (b@@23 T@U) ) (!  (=> (and (_module.Mode.Imm_q a@@26) (_module.Mode.Imm_q b@@23)) (|_module.Mode#Equal| a@@26 b@@23))
 :qid |unknown.0:0|
 :skolemid |691|
 :pattern ( (|_module.Mode#Equal| a@@26 b@@23) (_module.Mode.Imm_q a@@26))
 :pattern ( (|_module.Mode#Equal| a@@26 b@@23) (_module.Mode.Imm_q b@@23))
)))
(assert (forall ((a@@27 T@U) (b@@24 T@U) ) (!  (=> (and (_module.Mode.Iso_q a@@27) (_module.Mode.Iso_q b@@24)) (|_module.Mode#Equal| a@@27 b@@24))
 :qid |unknown.0:0|
 :skolemid |692|
 :pattern ( (|_module.Mode#Equal| a@@27 b@@24) (_module.Mode.Iso_q a@@27))
 :pattern ( (|_module.Mode#Equal| a@@27 b@@24) (_module.Mode.Iso_q b@@24))
)))
(assert (forall ((a@@28 T@U) (b@@25 T@U) ) (!  (=> (and (_module.Mode.Mut_q a@@28) (_module.Mode.Mut_q b@@25)) (|_module.Mode#Equal| a@@28 b@@25))
 :qid |unknown.0:0|
 :skolemid |693|
 :pattern ( (|_module.Mode#Equal| a@@28 b@@25) (_module.Mode.Mut_q a@@28))
 :pattern ( (|_module.Mode#Equal| a@@28 b@@25) (_module.Mode.Mut_q b@@25))
)))
(assert (forall ((a@@29 T@U) (b@@26 T@U) ) (!  (=> (and (_module.Mode.Tmp_q a@@29) (_module.Mode.Tmp_q b@@26)) (|_module.Mode#Equal| a@@29 b@@26))
 :qid |unknown.0:0|
 :skolemid |694|
 :pattern ( (|_module.Mode#Equal| a@@29 b@@26) (_module.Mode.Tmp_q a@@29))
 :pattern ( (|_module.Mode#Equal| a@@29 b@@26) (_module.Mode.Tmp_q b@@26))
)))
(assert (forall ((a@@30 T@U) (b@@27 T@U) ) (!  (=> (and (_module.Mode.Sus_q a@@30) (_module.Mode.Sus_q b@@27)) (|_module.Mode#Equal| a@@30 b@@27))
 :qid |unknown.0:0|
 :skolemid |695|
 :pattern ( (|_module.Mode#Equal| a@@30 b@@27) (_module.Mode.Sus_q a@@30))
 :pattern ( (|_module.Mode#Equal| a@@30 b@@27) (_module.Mode.Sus_q b@@27))
)))
(assert (forall ((a@@31 T@U) (b@@28 T@U) ) (!  (=> (and (_module.Region.Frozen_q a@@31) (_module.Region.Frozen_q b@@28)) (|_module.Region#Equal| a@@31 b@@28))
 :qid |unknown.0:0|
 :skolemid |732|
 :pattern ( (|_module.Region#Equal| a@@31 b@@28) (_module.Region.Frozen_q a@@31))
 :pattern ( (|_module.Region#Equal| a@@31 b@@28) (_module.Region.Frozen_q b@@28))
)))
(assert (forall ((a@@32 T@U) (b@@29 T@U) ) (!  (=> (and (_module.Region.Isolate_q a@@32) (_module.Region.Isolate_q b@@29)) (|_module.Region#Equal| a@@32 b@@29))
 :qid |unknown.0:0|
 :skolemid |736|
 :pattern ( (|_module.Region#Equal| a@@32 b@@29) (_module.Region.Isolate_q a@@32))
 :pattern ( (|_module.Region#Equal| a@@32 b@@29) (_module.Region.Isolate_q b@@29))
)))
(assert (forall ((v@@7 T@U) (t0@@2 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@7 (TSet t0@@2) h@@3) (forall ((bx@@14 T@U) ) (!  (=> (|Set#IsMember| v@@7 bx@@14) ($IsAllocBox bx@@14 t0@@2 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@7 bx@@14))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@7 (TSet t0@@2) h@@3))
)))
(assert (forall ((t@@6 T@U) (u@@3 T@U) ) (! (= (Inv0_TMap (TMap t@@6 u@@3)) t@@6)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |9|
 :pattern ( (TMap t@@6 u@@3))
)))
(assert (forall ((t@@7 T@U) (u@@4 T@U) ) (! (= (Inv1_TMap (TMap t@@7 u@@4)) u@@4)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |10|
 :pattern ( (TMap t@@7 u@@4))
)))
(assert (forall ((t@@8 T@U) (u@@5 T@U) ) (! (= (Tag (TMap t@@8 u@@5)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |11|
 :pattern ( (TMap t@@8 u@@5))
)))
(assert (forall ((|a#0#0#0@@0| T@U) (|a#0#1#0@@0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0@@0| |a#0#1#0@@0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |448|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0@@0| |a#0#1#0@@0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |453|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |454|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0@@0| T@U) (|a#4#1#0@@0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0@@0| |a#4#1#0@@0|)) |a#4#0#0@@0|)
 :qid |unknown.0:0|
 :skolemid |463|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0@@0| |a#4#1#0@@0|))
)))
(assert (forall ((|a#6#0#0@@0| T@U) (|a#6#1#0@@0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0@@0| |a#6#1#0@@0|)) |a#6#1#0@@0|)
 :qid |unknown.0:0|
 :skolemid |465|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0@@0| |a#6#1#0@@0|))
)))
(assert (forall ((v@@8 T@U) (t0@@3 T@U) (h@@4 T@U) ) (! (= ($IsAlloc SeqType v@@8 (TSeq t0@@3) h@@4) (forall ((i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| v@@8))) ($IsAllocBox (|Seq#Index| v@@8 i@@2) t0@@3 h@@4))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@8 i@@2))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@8 (TSeq t0@@3) h@@4))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) (|a#3#2#0| T@U) ) (! (= (|#_module.Edge.Edge| (Lit refType |a#3#0#0|) (Lit SeqType |a#3#1#0|) (Lit refType |a#3#2#0|)) (Lit DatatypeTypeType (|#_module.Edge.Edge| |a#3#0#0| |a#3#1#0| |a#3#2#0|)))
 :qid |gitissue3855dfy.149:22|
 :skolemid |814|
 :pattern ( (|#_module.Edge.Edge| (Lit refType |a#3#0#0|) (Lit SeqType |a#3#1#0|) (Lit refType |a#3#2#0|)))
)))
(assert (forall (($h0@@11 T@U) ($h1@@11 T@U) (this@@44 T@U) (|os#0@@12| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0@@11) ($IsGoodHeap $h1@@11)) (and (or (not (= this@@44 null)) (not true)) ($Is refType this@@44 Tclass._module.Memory))) (or (|_module.Memory.justTheIsos#canCall| $h0@@11 this@@44 |os#0@@12|) ($Is SetType |os#0@@12| (TSet Tclass._module.Object)))) (and ($IsHeapAnchor $h0@@11) ($HeapSucc $h0@@11 $h1@@11))) (=> (forall (($o@@23 T@U) ($f@@11 T@U) ) (!  (=> (and (or (not (= $o@@23 null)) (not true)) (|Set#IsMember| |os#0@@12| ($Box refType $o@@23))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@11 $o@@23) $f@@11) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@11 $o@@23) $f@@11)))
 :qid |unknown.0:0|
 :skolemid |886|
)) (= (_module.Memory.justTheIsos $h0@@11 this@@44 |os#0@@12|) (_module.Memory.justTheIsos $h1@@11 this@@44 |os#0@@12|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |887|
 :pattern ( ($IsHeapAnchor $h0@@11) ($HeapSucc $h0@@11 $h1@@11) (_module.Memory.justTheIsos $h1@@11 this@@44 |os#0@@12|))
)))
(assert (forall (($h0@@12 T@U) ($h1@@12 T@U) (this@@45 T@U) (|os#0@@13| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0@@12) ($IsGoodHeap $h1@@12)) (and (or (not (= this@@45 null)) (not true)) ($Is refType this@@45 Tclass._module.Memory))) (or (|_module.Memory.edges#canCall| $h0@@12 this@@45 |os#0@@13|) ($Is SetType |os#0@@13| (TSet Tclass._module.Object)))) (and ($IsHeapAnchor $h0@@12) ($HeapSucc $h0@@12 $h1@@12))) (=> (forall (($o@@24 T@U) ($f@@12 T@U) ) (!  (=> (and (or (not (= $o@@24 null)) (not true)) (|Set#IsMember| |os#0@@13| ($Box refType $o@@24))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@12 $o@@24) $f@@12) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@12 $o@@24) $f@@12)))
 :qid |unknown.0:0|
 :skolemid |914|
)) (= (_module.Memory.edges $h0@@12 this@@45 |os#0@@13|) (_module.Memory.edges $h1@@12 this@@45 |os#0@@13|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |915|
 :pattern ( ($IsHeapAnchor $h0@@12) ($HeapSucc $h0@@12 $h1@@12) (_module.Memory.edges $h1@@12 this@@45 |os#0@@13|))
)))
(assert (forall ((t@@9 T@U) ) (! (= (Inv0_TSet (TSet t@@9)) t@@9)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@9))
)))
(assert (forall ((t@@10 T@U) ) (! (= (Tag (TSet t@@10)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@10))
)))
(assert (forall ((t@@11 T@U) ) (! (= (Inv0_TSeq (TSeq t@@11)) t@@11)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@11))
)))
(assert (forall ((t@@12 T@U) ) (! (= (Tag (TSeq t@@12)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@12))
)))
(assert (forall ((|a#24#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Region.Heap| |a#24#0#0|)) |##_module.Region.Heap|)
 :qid |gitissue3855dfy.19:33|
 :skolemid |700|
 :pattern ( (|#_module.Region.Heap| |a#24#0#0|))
)))
(assert (forall ((|a#28#0#0| T@U) ) (! (= (_module.Region.region (|#_module.Region.Heap| |a#28#0#0|)) |a#28#0#0|)
 :qid |gitissue3855dfy.19:33|
 :skolemid |708|
 :pattern ( (|#_module.Region.Heap| |a#28#0#0|))
)))
(assert (forall ((|a#29#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Region.Stack| |a#29#0#0|)) |##_module.Region.Stack|)
 :qid |gitissue3855dfy.19:58|
 :skolemid |709|
 :pattern ( (|#_module.Region.Stack| |a#29#0#0|))
)))
(assert (forall ((|a#33#0#0| T@U) ) (! (= (_module.Region.region (|#_module.Region.Stack| |a#33#0#0|)) |a#33#0#0|)
 :qid |gitissue3855dfy.19:58|
 :skolemid |717|
 :pattern ( (|#_module.Region.Stack| |a#33#0#0|))
)))
(assert (forall ((|a#34#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Region.Frame| |a#34#0#0|)) |##_module.Region.Frame|)
 :qid |gitissue3855dfy.19:84|
 :skolemid |718|
 :pattern ( (|#_module.Region.Frame| |a#34#0#0|))
)))
(assert (forall ((|a#38#0#0| T@U) ) (! (= (_module.Region.prev (|#_module.Region.Frame| |a#38#0#0|)) |a#38#0#0|)
 :qid |gitissue3855dfy.19:84|
 :skolemid |726|
 :pattern ( (|#_module.Region.Frame| |a#38#0#0|))
)))
(assert (forall ((|a#4#0#0@@1| T@U) ) (! (= (DatatypeCtorId (|#_module.Status.Failure| |a#4#0#0@@1|)) |##_module.Status.Failure|)
 :qid |gitissue3855dfy.1230:11|
 :skolemid |1381|
 :pattern ( (|#_module.Status.Failure| |a#4#0#0@@1|))
)))
(assert (forall ((|a#8#0#0@@0| T@U) ) (! (= (_module.Status.error (|#_module.Status.Failure| |a#8#0#0@@0|)) |a#8#0#0@@0|)
 :qid |gitissue3855dfy.1230:11|
 :skolemid |1388|
 :pattern ( (|#_module.Status.Failure| |a#8#0#0@@0|))
)))
(assert (forall ((x@@9 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@9)) x@@9)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@9))
)))
(assert (forall ((v@@9 T@U) (t0@@4 T@U) (t1@@1 T@U) (h@@5 T@U) ) (! (= ($IsAlloc MapType v@@9 (TMap t0@@4 t1@@1) h@@5) (forall ((bx@@15 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@9) bx@@15) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@9) bx@@15) t1@@1 h@@5) ($IsAllocBox bx@@15 t0@@4 h@@5)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |75|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@9) bx@@15))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@9) bx@@15))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |76|
 :pattern ( ($IsAlloc MapType v@@9 (TMap t0@@4 t1@@1) h@@5))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) (|a#7#2#0| T@U) ) (! (< (|Seq#Rank| |a#7#1#0|) (DtRank (|#_module.Edge.Edge| |a#7#0#0| |a#7#1#0| |a#7#2#0|)))
 :qid |gitissue3855dfy.149:22|
 :skolemid |818|
 :pattern ( (|#_module.Edge.Edge| |a#7#0#0| |a#7#1#0| |a#7#2#0|))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@19 T@U) (this@@46 T@U) (|t#0@@8| T@U) (|edges#0@@15| T@U) ) (!  (=> (and (or (|_module.Memory.incomingEdges#canCall| this@@46 |t#0@@8| |edges#0@@15|) (and (< 2 $FunctionContextHeight) (and (and (and (or (not (= this@@46 null)) (not true)) ($IsAlloc refType this@@46 Tclass._module.Memory $Heap@@19)) (and ($Is refType |t#0@@8| Tclass._module.Object) ($IsAlloc refType |t#0@@8| Tclass._module.Object $Heap@@19))) (and ($Is SetType |edges#0@@15| (TSet Tclass._module.Edge)) ($IsAlloc SetType |edges#0@@15| (TSet Tclass._module.Edge) $Heap@@19))))) ($IsGoodHeap $Heap@@19)) ($IsAlloc SetType (_module.Memory.incomingEdges this@@46 |t#0@@8| |edges#0@@15|) (TSet Tclass._module.Edge) $Heap@@19))
 :qid |gitissue3855dfy.245:12|
 :skolemid |899|
 :pattern ( ($IsAlloc SetType (_module.Memory.incomingEdges this@@46 |t#0@@8| |edges#0@@15|) (TSet Tclass._module.Edge) $Heap@@19))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@20 T@U) (this@@47 T@U) (|o#0@@9| T@U) (|edges#0@@16| T@U) ) (!  (=> (and (or (|_module.Memory.externalEdges#canCall| this@@47 |o#0@@9| |edges#0@@16|) (and (< 3 $FunctionContextHeight) (and (and (and (or (not (= this@@47 null)) (not true)) ($IsAlloc refType this@@47 Tclass._module.Memory $Heap@@20)) (and ($Is DatatypeTypeType |o#0@@9| Tclass._module.Region) ($IsAlloc DatatypeTypeType |o#0@@9| Tclass._module.Region $Heap@@20))) (and ($Is SetType |edges#0@@16| (TSet Tclass._module.Edge)) ($IsAlloc SetType |edges#0@@16| (TSet Tclass._module.Edge) $Heap@@20))))) ($IsGoodHeap $Heap@@20)) ($IsAlloc SetType (_module.Memory.externalEdges this@@47 |o#0@@9| |edges#0@@16|) (TSet Tclass._module.Edge) $Heap@@20))
 :qid |gitissue3855dfy.336:12|
 :skolemid |1000|
 :pattern ( ($IsAlloc SetType (_module.Memory.externalEdges this@@47 |o#0@@9| |edges#0@@16|) (TSet Tclass._module.Edge) $Heap@@20))
))))
(assert (forall ((|a#5#0#0@@1| T@U) (|a#5#1#0@@0| T@U) ) (! (< (BoxRank |a#5#0#0@@1|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0@@1| |a#5#1#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |464|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0@@1| |a#5#1#0@@0|))
)))
(assert (forall ((|a#7#0#0@@0| T@U) (|a#7#1#0@@0| T@U) ) (! (< (BoxRank |a#7#1#0@@0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0@@0| |a#7#1#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |466|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0@@0| |a#7#1#0@@0|))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((this@@48 T@U) (|t#0@@9| T@U) (|edges#0@@17| T@U) ) (!  (=> (or (|_module.Memory.incomingEdges#canCall| this@@48 (Lit refType |t#0@@9|) (Lit SetType |edges#0@@17|)) (and (< 2 $FunctionContextHeight) (and (and (and (or (not (= this@@48 null)) (not true)) ($Is refType this@@48 Tclass._module.Memory)) ($Is refType |t#0@@9| Tclass._module.Object)) ($Is SetType |edges#0@@17| (TSet Tclass._module.Edge))))) (and (forall ((|e#1| T@U) ) (!  (=> ($Is DatatypeTypeType |e#1| Tclass._module.Edge) (=> (|Set#IsMember| (Lit SetType |edges#0@@17|) ($Box DatatypeTypeType |e#1|)) (_module.Edge.Edge_q |e#1|)))
 :qid |gitissue3855dfy.248:9|
 :skolemid |903|
 :pattern ( (_module.Edge.t |e#1|))
 :pattern ( (|Set#IsMember| |edges#0@@17| ($Box DatatypeTypeType |e#1|)))
)) (= (_module.Memory.incomingEdges this@@48 (Lit refType |t#0@@9|) (Lit SetType |edges#0@@17|)) (|Set#FromBoogieMap| (|lambda#41| Tclass._module.Edge (Lit SetType |edges#0@@17|) (Lit refType |t#0@@9|))))))
 :qid |gitissue3855dfy.245:12|
 :weight 3
 :skolemid |904|
 :pattern ( (_module.Memory.incomingEdges this@@48 (Lit refType |t#0@@9|) (Lit SetType |edges#0@@17|)))
))))
(assert (forall ((a@@33 T@U) (b@@30 T@U) ) (! (= (|Set#Union| a@@33 (|Set#Union| a@@33 b@@30)) (|Set#Union| a@@33 b@@30))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@33 (|Set#Union| a@@33 b@@30)))
)))
(assert (forall ((a@@34 T@U) (b@@31 T@U) ) (! (= (|Set#Intersection| a@@34 (|Set#Intersection| a@@34 b@@31)) (|Set#Intersection| a@@34 b@@31))
 :qid |DafnyPreludebpl.741:15|
 :skolemid |141|
 :pattern ( (|Set#Intersection| a@@34 (|Set#Intersection| a@@34 b@@31)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((this@@49 T@U) (|edges#0@@18| T@U) ) (!  (=> (or (|_module.Memory.justHeapExternalEdges#canCall| this@@49 (Lit SetType |edges#0@@18|)) (and (< 3 $FunctionContextHeight) (and (and (or (not (= this@@49 null)) (not true)) ($Is refType this@@49 Tclass._module.Memory)) ($Is SetType |edges#0@@18| (TSet Tclass._module.Edge))))) (and (forall ((|e#1@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |e#1@@0| Tclass._module.Edge) (=> (|Set#IsMember| (Lit SetType |edges#0@@18|) ($Box DatatypeTypeType |e#1@@0|)) (and (and (and (|$IsA#_module.Region| (_module.Object.region (_module.Edge.f |e#1@@0|))) (|$IsA#_module.Region| (_module.Object.region (_module.Edge.t |e#1@@0|)))) (and (_module.Edge.Edge_q |e#1@@0|) (_module.Edge.Edge_q |e#1@@0|))) (=> (not (|_module.Region#Equal| (_module.Object.region (_module.Edge.f |e#1@@0|)) (_module.Object.region (_module.Edge.t |e#1@@0|)))) (_module.Edge.Edge_q |e#1@@0|)))))
 :qid |gitissue3855dfy.348:9|
 :skolemid |1014|
 :pattern ( (_module.Edge.t |e#1@@0|))
 :pattern ( (_module.Edge.f |e#1@@0|))
 :pattern ( (|Set#IsMember| |edges#0@@18| ($Box DatatypeTypeType |e#1@@0|)))
)) (= (_module.Memory.justHeapExternalEdges this@@49 (Lit SetType |edges#0@@18|)) (|Set#FromBoogieMap| (|lambda#76| Tclass._module.Edge (Lit SetType |edges#0@@18|))))))
 :qid |gitissue3855dfy.345:12|
 :weight 3
 :skolemid |1015|
 :pattern ( (_module.Memory.justHeapExternalEdges this@@49 (Lit SetType |edges#0@@18|)))
))))
(assert (forall ((|l#0@@5| T@U) (|l#1@@5| T@U) (|$w#0@@0| T@U) ) (! (= (MapType0Select BoxType BoxType (|lambda#55| |l#0@@5| |l#1@@5|) |$w#0@@0|) ($Box SetType (_module.Memory.externalEdges |l#0@@5| ($Unbox DatatypeTypeType |$w#0@@0|) |l#1@@5|)))
 :qid |gitissue3855dfy.280:13|
 :skolemid |1419|
 :pattern ( (MapType0Select BoxType BoxType (|lambda#55| |l#0@@5| |l#1@@5|) |$w#0@@0|))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((this@@50 T@U) (|o#0@@10| T@U) (|edges#0@@19| T@U) ) (!  (=> (or (|_module.Memory.externalEdges#canCall| (Lit refType this@@50) (Lit DatatypeTypeType |o#0@@10|) (Lit SetType |edges#0@@19|)) (and (< 3 $FunctionContextHeight) (and (and (and (or (not (= this@@50 null)) (not true)) ($Is refType this@@50 Tclass._module.Memory)) ($Is DatatypeTypeType |o#0@@10| Tclass._module.Region)) ($Is SetType |edges#0@@19| (TSet Tclass._module.Edge))))) (and (forall ((|e#2@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |e#2@@1| Tclass._module.Edge) (=> (|Set#IsMember| (Lit SetType |edges#0@@19|) ($Box DatatypeTypeType |e#2@@1|)) (and (and (and (|$IsA#_module.Region| (_module.Object.region (_module.Edge.t |e#2@@1|))) (|$IsA#_module.Region| (Lit DatatypeTypeType |o#0@@10|))) (_module.Edge.Edge_q |e#2@@1|)) (=> (|_module.Region#Equal| (_module.Object.region (_module.Edge.t |e#2@@1|)) |o#0@@10|) (and (and (|$IsA#_module.Region| (_module.Object.region (_module.Edge.f |e#2@@1|))) (|$IsA#_module.Region| (Lit DatatypeTypeType |o#0@@10|))) (_module.Edge.Edge_q |e#2@@1|))))))
 :qid |gitissue3855dfy.339:9|
 :skolemid |1006|
 :pattern ( (_module.Edge.f |e#2@@1|))
 :pattern ( (_module.Edge.t |e#2@@1|))
 :pattern ( (|Set#IsMember| |edges#0@@19| ($Box DatatypeTypeType |e#2@@1|)))
)) (= (_module.Memory.externalEdges (Lit refType this@@50) (Lit DatatypeTypeType |o#0@@10|) (Lit SetType |edges#0@@19|)) (|Set#FromBoogieMap| (|lambda#71| Tclass._module.Edge (Lit SetType |edges#0@@19|) |o#0@@10| |o#0@@10|)))))
 :qid |gitissue3855dfy.336:12|
 :weight 3
 :skolemid |1007|
 :pattern ( (_module.Memory.externalEdges (Lit refType this@@50) (Lit DatatypeTypeType |o#0@@10|) (Lit SetType |edges#0@@19|)))
))))
(assert (forall ((u@@6 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@6))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |285|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@6))
)))
(assert (forall (($prevHeap@@2 T@U) ($h0@@13 T@U) ($h1@@13 T@U) (this@@51 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@13) ($IsGoodHeap $h1@@13)) (and (or (not (= this@@51 null)) (not true)) ($Is refType this@@51 Tclass._module.Memory))) (and ($IsHeapAnchor $h0@@13) ($HeapSucc $h0@@13 $h1@@13))) (=> (forall (($o@@25 T@U) ($f@@13 T@U) ) (!  (=> (and (or (not (= $o@@25 null)) (not true)) (or (or (and (= $o@@25 this@@51) (= $f@@13 _module.Memory.objects)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@13 this@@51) _module.Memory.objects)) ($Box refType $o@@25))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@13 this@@51) _module.Memory.objects)) ($Box refType $o@@25)) (= $f@@13 _module.Object.fields)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@13 $o@@25) $f@@13) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@13 $o@@25) $f@@13)))
 :qid |unknown.0:0|
 :skolemid |878|
)) (= (_module.Memory.AllImmutablesAreImmutable $prevHeap@@2 $h0@@13 this@@51) (_module.Memory.AllImmutablesAreImmutable $prevHeap@@2 $h1@@13 this@@51))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |879|
 :pattern ( ($IsHeapAnchor $h0@@13) ($HeapSucc $h0@@13 $h1@@13) (_module.Memory.AllImmutablesAreImmutable $prevHeap@@2 $h1@@13 this@@51))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@21 T@U) (this@@52 T@U) (|os#0@@14| T@U) ) (!  (=> (or (|_module.Memory.justTheIsos#canCall| $Heap@@21 this@@52 |os#0@@14|) (and (< 3 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@21) (and (or (not (= this@@52 null)) (not true)) (and ($Is refType this@@52 Tclass._module.Memory) ($IsAlloc refType this@@52 Tclass._module.Memory $Heap@@21)))) (and ($Is SetType |os#0@@14| (TSet Tclass._module.Object)) ($IsAlloc SetType |os#0@@14| (TSet Tclass._module.Object) $Heap@@21))))) (and (and (and (forall ((|r#0@@2| T@U) ) (!  (=> (and ($Is refType |r#0@@2| Tclass._module.Object) (|Set#IsMember| (_module.Memory.justTheIsos $Heap@@21 this@@52 |os#0@@14|) ($Box refType |r#0@@2|))) (_module.Region.Isolate_q (_module.Object.region |r#0@@2|)))
 :qid |gitissue3855dfy.237:20|
 :skolemid |888|
 :pattern ( (_module.Object.region |r#0@@2|))
 :pattern ( (|Set#IsMember| (_module.Memory.justTheIsos $Heap@@21 this@@52 |os#0@@14|) ($Box refType |r#0@@2|)))
)) (forall ((|o#0@@11| T@U) ) (!  (=> (and ($Is refType |o#0@@11| Tclass._module.Object) (|Set#IsMember| |os#0@@14| ($Box refType |o#0@@11|))) (=> (_module.Region.Isolate_q (_module.Object.region |o#0@@11|)) (|Set#IsMember| (_module.Memory.justTheIsos $Heap@@21 this@@52 |os#0@@14|) ($Box refType |o#0@@11|))))
 :qid |gitissue3855dfy.238:20|
 :skolemid |889|
 :pattern ( (|Set#IsMember| (_module.Memory.justTheIsos $Heap@@21 this@@52 |os#0@@14|) ($Box refType |o#0@@11|)))
 :pattern ( (_module.Object.region |o#0@@11|))
 :pattern ( (|Set#IsMember| |os#0@@14| ($Box refType |o#0@@11|)))
))) (=> (|Set#Equal| |os#0@@14| |Set#Empty|) (|Set#Equal| (_module.Memory.justTheIsos $Heap@@21 this@@52 |os#0@@14|) |Set#Empty|))) ($Is SetType (_module.Memory.justTheIsos $Heap@@21 this@@52 |os#0@@14|) (TSet Tclass._module.Object))))
 :qid |gitissue3855dfy.235:12|
 :skolemid |890|
 :pattern ( (_module.Memory.justTheIsos $Heap@@21 this@@52 |os#0@@14|))
))))
(assert (forall ((n Int) ) (!  (=> (or (and (<= 0 n) (< n 55296)) (and (<= 57344 n) (< n 1114112))) (= (|char#ToInt| (|char#FromInt| n)) n))
 :qid |DafnyPreludebpl.131:15|
 :skolemid |21|
 :pattern ( (|char#FromInt| n))
)))
(assert (forall ((bx@@16 T@U) (s@@5 T@U) (t@@13 T@U) ) (!  (=> ($IsBox bx@@16 (TMap s@@5 t@@13)) (and (= ($Box MapType ($Unbox MapType bx@@16)) bx@@16) ($Is MapType ($Unbox MapType bx@@16) (TMap s@@5 t@@13))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |36|
 :pattern ( ($IsBox bx@@16 (TMap s@@5 t@@13)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@17 T@U) ) (!  (=> ($IsBox bx@@17 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@17)) bx@@17) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@17) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |455|
 :pattern ( ($IsBox bx@@17 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((|a#10#0#0| T@U) ) (! (< (|Seq#Rank| |a#10#0#0|) (DtRank (|#_module.Status.Failure| |a#10#0#0|)))
 :qid |gitissue3855dfy.1230:11|
 :skolemid |1390|
 :pattern ( (|#_module.Status.Failure| |a#10#0#0|))
)))
(assert  (and (forall ((t0@@5 T@T) (t1@@2 T@T) (t2 T@T) (val@@1 T@U) (m@@8 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@5 t1@@2 t2 (MapType1Store t0@@5 t1@@2 t2 m@@8 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@9 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@9 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@9 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@10 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@10 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@10 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0@@6| T@U) (|l#1@@6| T@U) (|l#2@@2| T@U) (|l#3@@0| Bool) ($o@@26 T@U) ($f@@14 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@6| |l#1@@6| |l#2@@2| |l#3@@0|) $o@@26 $f@@14))  (=> (and (or (not (= $o@@26 |l#0@@6|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@6| $o@@26) |l#2@@2|)))) |l#3@@0|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1406|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@6| |l#1@@6| |l#2@@2| |l#3@@0|) $o@@26 $f@@14))
)))
(assert (forall ((d@@30 T@U) ) (!  (=> (|$IsA#_module.Mode| d@@30) (or (or (or (or (_module.Mode.Imm_q d@@30) (_module.Mode.Iso_q d@@30)) (_module.Mode.Mut_q d@@30)) (_module.Mode.Tmp_q d@@30)) (_module.Mode.Sus_q d@@30)))
 :qid |unknown.0:0|
 :skolemid |689|
 :pattern ( (|$IsA#_module.Mode| d@@30))
)))
(assert (forall ((d@@31 T@U) ) (!  (=> (|$IsA#_module.Region| d@@31) (or (or (or (or (_module.Region.Frozen_q d@@31) (_module.Region.Heap_q d@@31)) (_module.Region.Stack_q d@@31)) (_module.Region.Frame_q d@@31)) (_module.Region.Isolate_q d@@31)))
 :qid |unknown.0:0|
 :skolemid |730|
 :pattern ( (|$IsA#_module.Region| d@@31))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@3 T@U) ($Heap@@22 T@U) (this@@53 T@U) ) (!  (=> (or (|_module.Memory.HeapObjectsAreMonotonic#canCall| $prevHeap@@3 $Heap@@22 this@@53) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@3) ($IsGoodHeap $Heap@@22)) ($HeapSucc $prevHeap@@3 $Heap@@22)) (and (or (not (= this@@53 null)) (not true)) (and ($Is refType this@@53 Tclass._module.Memory) ($IsAlloc refType this@@53 Tclass._module.Memory $prevHeap@@3)))))) (= (_module.Memory.HeapObjectsAreMonotonic $prevHeap@@3 $Heap@@22 this@@53) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@3 this@@53) _module.Memory.objects)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@22 this@@53) _module.Memory.objects)))))
 :qid |gitissue3855dfy.220:22|
 :skolemid |877|
 :pattern ( (_module.Memory.HeapObjectsAreMonotonic $prevHeap@@3 $Heap@@22 this@@53) ($IsGoodHeap $Heap@@22))
))))
(assert (forall ((s@@6 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@6 val@@4)) s@@6) (= (|Seq#Build_inv1| (|Seq#Build| s@@6 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@6 val@@4))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |452|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0@@0| T@U) ) (!  (=> (or (|_module.__default.not#canCall| (U_2_bool (Lit boolType |x#0@@0|))) (< 0 $FunctionContextHeight)) (= (_module.__default.not (U_2_bool (Lit boolType |x#0@@0|)))  (not (U_2_bool (Lit boolType |x#0@@0|)))))
 :qid |gitissue3855dfy.1242:15|
 :weight 3
 :skolemid |652|
 :pattern ( (_module.__default.not (U_2_bool (Lit boolType |x#0@@0|))))
))))
(assert (forall ((m@@11 T@U) ) (!  (or (= m@@11 |Map#Empty|) (exists ((k@@2 T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@11) k@@2)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |273|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |274|
 :pattern ( (|Map#Domain| m@@11))
)))
(assert (forall ((m@@12 T@U) ) (!  (or (= m@@12 |Map#Empty|) (exists ((v@@10 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@12) v@@10)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |275|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |276|
 :pattern ( (|Map#Values| m@@12))
)))
(assert (forall ((m@@13 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@13) item)  (and (|Set#IsMember| (|Map#Domain| m@@13) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@13) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |284|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@13) item))
)))
(assert (forall ((m@@14 T@U) (v@@11 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@14) v@@11) (exists ((u@@7 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@14) u@@7) (= v@@11 (MapType0Select BoxType BoxType (|Map#Elements| m@@14) u@@7)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |282|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@14) u@@7))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@14) u@@7))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |283|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@14) v@@11))
)))
(assert (forall ((m@@15 T@U) (u@@8 T@U) (|u'| T@U) (v@@12 T@U) ) (!  (and (=> (= |u'| u@@8) (and (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@15 u@@8 v@@12)) |u'|) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@15 u@@8 v@@12)) |u'|) v@@12))) (=> (or (not (= |u'| u@@8)) (not true)) (and (= (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@15 u@@8 v@@12)) |u'|) (|Set#IsMember| (|Map#Domain| m@@15) |u'|)) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@15 u@@8 v@@12)) |u'|) (MapType0Select BoxType BoxType (|Map#Elements| m@@15) |u'|)))))
 :qid |DafnyPreludebpl.1463:15|
 :skolemid |290|
 :pattern ( (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@15 u@@8 v@@12)) |u'|))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@15 u@@8 v@@12)) |u'|))
)))
(assert (forall ((d@@32 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@32)) (DtRank d@@32))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@32)))
)))
(assert (forall ((m@@16 T@U) ) (! (= (|Set#Card| (|Map#Domain| m@@16)) (|Map#Card| m@@16))
 :qid |DafnyPreludebpl.1396:15|
 :skolemid |279|
 :pattern ( (|Set#Card| (|Map#Domain| m@@16)))
 :pattern ( (|Map#Card| m@@16))
)))
(assert (forall ((m@@17 T@U) ) (! (= (|Set#Card| (|Map#Items| m@@17)) (|Map#Card| m@@17))
 :qid |DafnyPreludebpl.1402:15|
 :skolemid |281|
 :pattern ( (|Set#Card| (|Map#Items| m@@17)))
 :pattern ( (|Map#Card| m@@17))
)))
(assert (forall ((m@@18 T@U) ) (! (<= (|Set#Card| (|Map#Values| m@@18)) (|Map#Card| m@@18))
 :qid |DafnyPreludebpl.1399:15|
 :skolemid |280|
 :pattern ( (|Set#Card| (|Map#Values| m@@18)))
 :pattern ( (|Map#Card| m@@18))
)))
(assert (forall ((bx@@18 T@U) (t@@14 T@U) ) (!  (=> ($IsBox bx@@18 (TSet t@@14)) (and (= ($Box SetType ($Unbox SetType bx@@18)) bx@@18) ($Is SetType ($Unbox SetType bx@@18) (TSet t@@14))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@18 (TSet t@@14)))
)))
(assert (forall ((bx@@19 T@U) (t@@15 T@U) ) (!  (=> ($IsBox bx@@19 (TSeq t@@15)) (and (= ($Box SeqType ($Unbox SeqType bx@@19)) bx@@19) ($Is SeqType ($Unbox SeqType bx@@19) (TSeq t@@15))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@19 (TSeq t@@15)))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((this@@54 T@U) (|edges#0@@20| T@U) ) (!  (=> (or (|_module.Memory.heapExternalsZeroOrOneEdges#canCall| this@@54 |edges#0@@20|) (and (< 4 $FunctionContextHeight) (and (and (or (not (= this@@54 null)) (not true)) ($Is refType this@@54 Tclass._module.Memory)) ($Is SetType |edges#0@@20| (TSet Tclass._module.Edge))))) (and (and (|_module.Memory.justHeapExternalEdges#canCall| this@@54 |edges#0@@20|) (let ((|heapExternalEdges#0| (_module.Memory.justHeapExternalEdges this@@54 |edges#0@@20|)))
 (and (forall ((|he#0@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |he#0@@0| Tclass._module.Edge) (=> (|Set#IsMember| |heapExternalEdges#0| ($Box DatatypeTypeType |he#0@@0|)) (_module.Edge.Edge_q |he#0@@0|)))
 :qid |gitissue3855dfy.282:39|
 :skolemid |944|
 :pattern ( (_module.Edge.t |he#0@@0|))
 :pattern ( (|Set#IsMember| |heapExternalEdges#0| ($Box DatatypeTypeType |he#0@@0|)))
)) (let ((|allRelevantHeapRegions#0| (|Set#FromBoogieMap| (|lambda#52| Tclass._module.Edge |heapExternalEdges#0| |heapExternalEdges#0|))))
(forall ((|r#0@@3| T@U) ) (!  (=> ($Is DatatypeTypeType |r#0@@3| Tclass._module.Region) (=> (|Set#IsMember| |allRelevantHeapRegions#0| ($Box DatatypeTypeType |r#0@@3|)) (|_module.Memory.externalEdges#canCall| this@@54 |r#0@@3| |heapExternalEdges#0|)))
 :qid |gitissue3855dfy.285:11|
 :skolemid |945|
 :pattern ( (_module.Memory.externalEdges this@@54 |r#0@@3| |heapExternalEdges#0|))
 :pattern ( (|Set#IsMember| |allRelevantHeapRegions#0| ($Box DatatypeTypeType |r#0@@3|)))
)))))) (= (_module.Memory.heapExternalsZeroOrOneEdges this@@54 |edges#0@@20|) (let ((|heapExternalEdges#0@@0| (_module.Memory.justHeapExternalEdges this@@54 |edges#0@@20|)))
(let ((|allRelevantHeapRegions#0@@0| (|Set#FromBoogieMap| (|lambda#52| Tclass._module.Edge |heapExternalEdges#0@@0| |heapExternalEdges#0@@0|))))
(let ((|heapExternalEdgesPartitionedByRegion#0| (|Map#Glue| (|Set#FromBoogieMap| (|lambda#54| Tclass._module.Region |allRelevantHeapRegions#0@@0|)) (|lambda#55| this@@54 |heapExternalEdges#0@@0|) (TMap Tclass._module.Region (TSet Tclass._module.Edge)))))
(forall ((|hr#0| T@U) ) (!  (=> (and ($Is DatatypeTypeType |hr#0| Tclass._module.Region) (|Set#IsMember| (|Map#Domain| |heapExternalEdgesPartitionedByRegion#0|) ($Box DatatypeTypeType |hr#0|))) (<= (|Set#Card| ($Unbox SetType (MapType0Select BoxType BoxType (|Map#Elements| |heapExternalEdgesPartitionedByRegion#0|) ($Box DatatypeTypeType |hr#0|)))) (LitInt 1)))
 :qid |gitissue3855dfy.286:12|
 :skolemid |943|
 :pattern ( ($Unbox SetType (MapType0Select BoxType BoxType (|Map#Elements| |heapExternalEdgesPartitionedByRegion#0|) ($Box DatatypeTypeType |hr#0|))))
 :pattern ( (|Set#IsMember| (|Map#Domain| |heapExternalEdgesPartitionedByRegion#0|) ($Box DatatypeTypeType |hr#0|)))
))))))))
 :qid |gitissue3855dfy.280:13|
 :skolemid |947|
 :pattern ( (_module.Memory.heapExternalsZeroOrOneEdges this@@54 |edges#0@@20|))
))))
(assert (forall ((a@@35 T@U) (x@@10 T@U) ) (!  (=> (|Set#IsMember| a@@35 x@@10) (= (|Set#Card| (|Set#UnionOne| a@@35 x@@10)) (|Set#Card| a@@35)))
 :qid |DafnyPreludebpl.694:15|
 :skolemid |131|
 :pattern ( (|Set#Card| (|Set#UnionOne| a@@35 x@@10)))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@23 T@U) (this@@55 T@U) (|os#0@@15| T@U) ) (!  (=> (or (|_module.Memory.isosRefCountZeroOrOne#canCall| $Heap@@23 this@@55 |os#0@@15|) (and (< 4 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@23) (and (or (not (= this@@55 null)) (not true)) (and ($Is refType this@@55 Tclass._module.Memory) ($IsAlloc refType this@@55 Tclass._module.Memory $Heap@@23)))) ($Is SetType |os#0@@15| (TSet Tclass._module.Object))))) (and (and (|_module.Memory.edges#canCall| $Heap@@23 this@@55 |os#0@@15|) (let ((|edges#0@@21| (_module.Memory.edges $Heap@@23 this@@55 |os#0@@15|)))
 (and (|_module.Memory.justTheIsos#canCall| $Heap@@23 this@@55 |os#0@@15|) (let ((|isos#0| (_module.Memory.justTheIsos $Heap@@23 this@@55 |os#0@@15|)))
(forall ((|i#0| T@U) ) (!  (=> ($Is refType |i#0| Tclass._module.Object) (=> (|Set#IsMember| |isos#0| ($Box refType |i#0|)) (|_module.Memory.refCountEdges#canCall| this@@55 |i#0| |edges#0@@21|)))
 :qid |gitissue3855dfy.320:12|
 :skolemid |983|
 :pattern ( (_module.Memory.refCountEdges this@@55 |i#0| |edges#0@@21|))
 :pattern ( (|Set#IsMember| |isos#0| ($Box refType |i#0|)))
)))))) (= (_module.Memory.isosRefCountZeroOrOne $Heap@@23 this@@55 |os#0@@15|) (let ((|edges#0@@22| (_module.Memory.edges $Heap@@23 this@@55 |os#0@@15|)))
(let ((|isos#0@@0| (_module.Memory.justTheIsos $Heap@@23 this@@55 |os#0@@15|)))
(forall ((|i#0@@0| T@U) ) (!  (=> (and ($Is refType |i#0@@0| Tclass._module.Object) (|Set#IsMember| |isos#0@@0| ($Box refType |i#0@@0|))) (<= (_module.Memory.refCountEdges this@@55 |i#0@@0| |edges#0@@22|) (LitInt 1)))
 :qid |gitissue3855dfy.320:12|
 :skolemid |982|
 :pattern ( (_module.Memory.refCountEdges this@@55 |i#0@@0| |edges#0@@22|))
 :pattern ( (|Set#IsMember| |isos#0@@0| ($Box refType |i#0@@0|)))
)))))))
 :qid |gitissue3855dfy.315:13|
 :skolemid |984|
 :pattern ( (_module.Memory.isosRefCountZeroOrOne $Heap@@23 this@@55 |os#0@@15|) ($IsGoodHeap $Heap@@23))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@24 T@U) (this@@56 T@U) ) (!  (=> (or (|_module.Object.Valid#canCall| $Heap@@24 this@@56) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@24) (and (or (not (= this@@56 null)) (not true)) (and ($Is refType this@@56 Tclass._module.Object) ($IsAlloc refType this@@56 Tclass._module.Object $Heap@@24)))))) (and (and (|_module.Object.AllFieldsAreDeclared#canCall| $Heap@@24 this@@56) (=> (_module.Object.AllFieldsAreDeclared $Heap@@24 this@@56) (and (|_module.Object.AllFieldsContentsConsistentWithTheirDeclaration#canCall| $Heap@@24 this@@56) (=> (_module.Object.AllFieldsContentsConsistentWithTheirDeclaration $Heap@@24 this@@56) (|_module.Object.AllOutgoingReferencesAreVenice#canCall| $Heap@@24 this@@56))))) (= (_module.Object.Valid true $Heap@@24 this@@56)  (and (and (_module.Object.AllFieldsAreDeclared $Heap@@24 this@@56) (_module.Object.AllFieldsContentsConsistentWithTheirDeclaration $Heap@@24 this@@56)) (_module.Object.AllOutgoingReferencesAreVenice $Heap@@24 this@@56)))))
 :qid |gitissue3855dfy.110:23|
 :skolemid |770|
 :pattern ( (_module.Object.Valid true $Heap@@24 this@@56) ($IsGoodHeap $Heap@@24))
))))
(assert (forall ((ch T@U) ) (!  (and (= (|char#FromInt| (|char#ToInt| ch)) ch) (or (and (<= 0 (|char#ToInt| ch)) (< (|char#ToInt| ch) 55296)) (and (<= 57344 (|char#ToInt| ch)) (< (|char#ToInt| ch) 1114112))))
 :qid |DafnyPreludebpl.136:15|
 :skolemid |22|
 :pattern ( (|char#ToInt| ch))
)))
(assert (forall ((v@@13 T@U) (t0@@6 T@U) (t1@@3 T@U) ) (! (= ($Is MapType v@@13 (TMap t0@@6 t1@@3)) (forall ((bx@@20 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@13) bx@@20) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@13) bx@@20) t1@@3) ($IsBox bx@@20 t0@@6)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |55|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@13) bx@@20))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@13) bx@@20))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |56|
 :pattern ( ($Is MapType v@@13 (TMap t0@@6 t1@@3)))
)))
(assert (forall ((d@@33 T@U) ($h@@16 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) ($Is DatatypeTypeType d@@33 Tclass._module.Mode)) ($IsAlloc DatatypeTypeType d@@33 Tclass._module.Mode $h@@16))
 :qid |unknown.0:0|
 :skolemid |688|
 :pattern ( ($IsAlloc DatatypeTypeType d@@33 Tclass._module.Mode $h@@16))
)))
(assert (forall ((d@@34 T@U) ($h@@17 T@U) ) (!  (=> (and ($IsGoodHeap $h@@17) ($Is DatatypeTypeType d@@34 Tclass._module.Status)) ($IsAlloc DatatypeTypeType d@@34 Tclass._module.Status $h@@17))
 :qid |unknown.0:0|
 :skolemid |1391|
 :pattern ( ($IsAlloc DatatypeTypeType d@@34 Tclass._module.Status $h@@17))
)))
(assert (= (Tag Tclass._module.Mode) Tagclass._module.Mode))
(assert (= (TagFamily Tclass._module.Mode) tytagFamily$Mode))
(assert (= (Tag Tclass._module.Object) Tagclass._module.Object))
(assert (= (TagFamily Tclass._module.Object) tytagFamily$Object))
(assert (= (Tag Tclass._module.Region) Tagclass._module.Region))
(assert (= (TagFamily Tclass._module.Region) tytagFamily$Region))
(assert (= (Tag Tclass._module.Memory) Tagclass._module.Memory))
(assert (= (TagFamily Tclass._module.Memory) tytagFamily$Memory))
(assert (= (Tag Tclass._module.Memory?) Tagclass._module.Memory?))
(assert (= (TagFamily Tclass._module.Memory?) tytagFamily$Memory))
(assert (= (Tag Tclass._module.Status) Tagclass._module.Status))
(assert (= (TagFamily Tclass._module.Status) tytagFamily$Status))
(assert (= (Tag Tclass._module.Object?) Tagclass._module.Object?))
(assert (= (TagFamily Tclass._module.Object?) tytagFamily$Object))
(assert (= (Tag Tclass._module.Edge) Tagclass._module.Edge))
(assert (= (TagFamily Tclass._module.Edge) tytagFamily$Edge))
(assert (= |#_module.Mode.Imm| (Lit DatatypeTypeType |#_module.Mode.Imm|)))
(assert (= |#_module.Mode.Iso| (Lit DatatypeTypeType |#_module.Mode.Iso|)))
(assert (= |#_module.Mode.Mut| (Lit DatatypeTypeType |#_module.Mode.Mut|)))
(assert (= |#_module.Mode.Tmp| (Lit DatatypeTypeType |#_module.Mode.Tmp|)))
(assert (= |#_module.Mode.Sus| (Lit DatatypeTypeType |#_module.Mode.Sus|)))
(assert (= |#_module.Region.Frozen| (Lit DatatypeTypeType |#_module.Region.Frozen|)))
(assert (= |#_module.Region.Isolate| (Lit DatatypeTypeType |#_module.Region.Isolate|)))
(assert (= |#_module.Status.Success| (Lit DatatypeTypeType |#_module.Status.Success|)))
(assert (forall ((|a#6#0#0@@1| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Status.Failure| |a#6#0#0@@1|) Tclass._module.Status) ($Is SeqType |a#6#0#0@@1| (TSeq TChar)))
 :qid |gitissue3855dfy.1230:11|
 :skolemid |1385|
 :pattern ( ($Is DatatypeTypeType (|#_module.Status.Failure| |a#6#0#0@@1|) Tclass._module.Status))
)))
(assert (forall (($h0@@14 T@U) ($h1@@14 T@U) (this@@57 T@U) (|o#0@@12| T@U) (|n#0@@2| T@U) (|f#0@@1| T@U) (|m#0@@0| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0@@14) ($IsGoodHeap $h1@@14)) (and (or (not (= this@@57 null)) (not true)) ($Is refType this@@57 Tclass._module.Memory))) (or (|_module.Memory.betterCopyDynamicCheck#canCall| $h0@@14 this@@57 |o#0@@12| |n#0@@2| |f#0@@1| |m#0@@0|) (and (and (and ($Is refType |o#0@@12| Tclass._module.Object) ($Is SeqType |n#0@@2| (TSeq TChar))) ($Is refType |f#0@@1| Tclass._module.Object)) ($Is SeqType |m#0@@0| (TSeq TChar))))) (and ($IsHeapAnchor $h0@@14) ($HeapSucc $h0@@14 $h1@@14))) (=> (forall (($o@@27 T@U) ($f@@15 T@U) ) (!  (=> (and (or (not (= $o@@27 null)) (not true)) (or (= $o@@27 |f#0@@1|) (and (= $o@@27 this@@57) (= $f@@15 _module.Memory.objects)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@14 $o@@27) $f@@15) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@14 $o@@27) $f@@15)))
 :qid |unknown.0:0|
 :skolemid |1314|
)) (= (_module.Memory.betterCopyDynamicCheck $h0@@14 this@@57 |o#0@@12| |n#0@@2| |f#0@@1| |m#0@@0|) (_module.Memory.betterCopyDynamicCheck $h1@@14 this@@57 |o#0@@12| |n#0@@2| |f#0@@1| |m#0@@0|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1315|
 :pattern ( ($IsHeapAnchor $h0@@14) ($HeapSucc $h0@@14 $h1@@14) (_module.Memory.betterCopyDynamicCheck $h1@@14 this@@57 |o#0@@12| |n#0@@2| |f#0@@1| |m#0@@0|))
)))
(assert (forall ((d@@35 T@U) ($h@@18 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (_module.Edge.Edge_q d@@35) ($IsAlloc DatatypeTypeType d@@35 Tclass._module.Edge $h@@18))) ($IsAlloc SeqType (_module.Edge.n d@@35) (TSeq TChar) $h@@18))
 :qid |unknown.0:0|
 :skolemid |812|
 :pattern ( ($IsAlloc SeqType (_module.Edge.n d@@35) (TSeq TChar) $h@@18))
)))
(assert (forall ((d@@36 T@U) ($h@@19 T@U) ) (!  (=> (and ($IsGoodHeap $h@@19) (and (_module.Status.Failure_q d@@36) ($IsAlloc DatatypeTypeType d@@36 Tclass._module.Status $h@@19))) ($IsAlloc SeqType (_module.Status.error d@@36) (TSeq TChar) $h@@19))
 :qid |unknown.0:0|
 :skolemid |1386|
 :pattern ( ($IsAlloc SeqType (_module.Status.error d@@36) (TSeq TChar) $h@@19))
)))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($reveal@@1 Bool) ($prevHeap@@4 T@U) ($Heap@@25 T@U) (this@@58 T@U) ) (!  (=> (or (|_module.Memory.Valid2#canCall| $prevHeap@@4 $Heap@@25 this@@58) (and (< 8 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@4) ($IsGoodHeap $Heap@@25)) ($HeapSucc $prevHeap@@4 $Heap@@25)) (and (or (not (= this@@58 null)) (not true)) (and ($Is refType this@@58 Tclass._module.Memory) ($IsAlloc refType this@@58 Tclass._module.Memory $prevHeap@@4)))))) (=> (_module.Memory.Valid2 reveal__module.Memory.Valid2 $prevHeap@@4 $Heap@@25 this@@58) (_module.Memory.Valid reveal__module.Memory.Valid $Heap@@25 this@@58)))
 :qid |gitissue3855dfy.192:51|
 :skolemid |844|
 :pattern ( (_module.Memory.Valid2 $reveal@@1 $prevHeap@@4 $Heap@@25 this@@58))
))))
(assert (forall ((d@@37 T@U) ) (!  (=> ($Is DatatypeTypeType d@@37 Tclass._module.Mode) (or (or (or (or (_module.Mode.Imm_q d@@37) (_module.Mode.Iso_q d@@37)) (_module.Mode.Mut_q d@@37)) (_module.Mode.Tmp_q d@@37)) (_module.Mode.Sus_q d@@37)))
 :qid |unknown.0:0|
 :skolemid |690|
 :pattern ( (_module.Mode.Sus_q d@@37) ($Is DatatypeTypeType d@@37 Tclass._module.Mode))
 :pattern ( (_module.Mode.Tmp_q d@@37) ($Is DatatypeTypeType d@@37 Tclass._module.Mode))
 :pattern ( (_module.Mode.Mut_q d@@37) ($Is DatatypeTypeType d@@37 Tclass._module.Mode))
 :pattern ( (_module.Mode.Iso_q d@@37) ($Is DatatypeTypeType d@@37 Tclass._module.Mode))
 :pattern ( (_module.Mode.Imm_q d@@37) ($Is DatatypeTypeType d@@37 Tclass._module.Mode))
)))
(assert (forall ((d@@38 T@U) ) (!  (=> ($Is DatatypeTypeType d@@38 Tclass._module.Region) (or (or (or (or (_module.Region.Frozen_q d@@38) (_module.Region.Heap_q d@@38)) (_module.Region.Stack_q d@@38)) (_module.Region.Frame_q d@@38)) (_module.Region.Isolate_q d@@38)))
 :qid |unknown.0:0|
 :skolemid |731|
 :pattern ( (_module.Region.Isolate_q d@@38) ($Is DatatypeTypeType d@@38 Tclass._module.Region))
 :pattern ( (_module.Region.Frame_q d@@38) ($Is DatatypeTypeType d@@38 Tclass._module.Region))
 :pattern ( (_module.Region.Stack_q d@@38) ($Is DatatypeTypeType d@@38 Tclass._module.Region))
 :pattern ( (_module.Region.Heap_q d@@38) ($Is DatatypeTypeType d@@38 Tclass._module.Region))
 :pattern ( (_module.Region.Frozen_q d@@38) ($Is DatatypeTypeType d@@38 Tclass._module.Region))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|f#0@@2| T@U) (|t#0@@10| T@U) ) (!  (=> (or (|_module.__default.VeniceReferenceOK#canCall| |f#0@@2| |t#0@@10|) (and (< 3 $FunctionContextHeight) (and ($Is refType |f#0@@2| Tclass._module.Object) ($Is refType |t#0@@10| Tclass._module.Object)))) (= (_module.__default.VeniceReferenceOK |f#0@@2| |t#0@@10|) (ite (_module.Region.Frozen_q (_module.Object.region |t#0@@10|)) true (ite (_module.Region.Heap_q (_module.Object.region |f#0@@2|))  (or (_module.Region.Isolate_q (_module.Object.region |t#0@@10|)) (and (_module.Region.Heap_q (_module.Object.region |t#0@@10|)) (= (_module.Region.region (_module.Object.region |t#0@@10|)) (_module.Region.region (_module.Object.region |f#0@@2|))))) (ite (_module.Region.Isolate_q (_module.Object.region |f#0@@2|))  (or (_module.Region.Isolate_q (_module.Object.region |t#0@@10|)) (and (_module.Region.Heap_q (_module.Object.region |t#0@@10|)) (= (_module.Region.region (_module.Object.region |t#0@@10|)) |f#0@@2|))) false)))))
 :qid |gitissue3855dfy.38:29|
 :skolemid |593|
 :pattern ( (_module.__default.VeniceReferenceOK |f#0@@2| |t#0@@10|))
))))
(assert (forall ((a@@36 T@U) (b@@32 T@U) ) (! (= (|Set#Equal| a@@36 b@@32) (forall ((o@@7 T@U) ) (! (= (|Set#IsMember| a@@36 o@@7) (|Set#IsMember| b@@32 o@@7))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@36 o@@7))
 :pattern ( (|Set#IsMember| b@@32 o@@7))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@36 b@@32))
)))
(assert (forall ((d@@39 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@20 T@U) ) (!  (=> (and ($IsGoodHeap $h@@20) (and (_System.Tuple2.___hMake2_q d@@39) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@39 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@20)
 :qid |unknown.0:0|
 :skolemid |458|
 :pattern ( ($IsAlloc DatatypeTypeType d@@39 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@20))
)))) ($IsAllocBox (_System.Tuple2._0 d@@39) |_System._tuple#2$T0@@6| $h@@20))
 :qid |unknown.0:0|
 :skolemid |459|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@39) |_System._tuple#2$T0@@6| $h@@20))
)))
(assert (forall ((d@@40 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@21 T@U) ) (!  (=> (and ($IsGoodHeap $h@@21) (and (_System.Tuple2.___hMake2_q d@@40) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@40 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@21)
 :qid |unknown.0:0|
 :skolemid |460|
 :pattern ( ($IsAlloc DatatypeTypeType d@@40 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@21))
)))) ($IsAllocBox (_System.Tuple2._1 d@@40) |_System._tuple#2$T1@@7| $h@@21))
 :qid |unknown.0:0|
 :skolemid |461|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@40) |_System._tuple#2$T1@@7| $h@@21))
)))
(assert (forall ((|l#0@@7| T@U) (|l#1@@7| T@U) (|l#2@@3| T@U) (|l#3@@1| T@U) (|l#4| T@U) (|l#5| T@U) (|l#6| T@U) (|l#7| T@U) (|l#8| T@U) (|l#9| T@U) (|l#10| T@U) (|$y#0@@3| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#47| |l#0@@7| |l#1@@7| |l#2@@3| |l#3@@1| |l#4| |l#5| |l#6| |l#7| |l#8| |l#9| |l#10|) |$y#0@@3|)) (exists ((|o#0@@13| T@U) (|n#0@@3| T@U) ) (!  (and (and (and ($Is refType |o#0@@13| |l#0@@7|) ($Is SeqType |n#0@@3| |l#1@@7|)) (and (|Set#IsMember| |l#2@@3| ($Box refType |o#0@@13|)) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#3@@1| |o#0@@13|) |l#4|))) ($Box SeqType |n#0@@3|)))) (= |$y#0@@3| ($Box DatatypeTypeType (|#_module.Edge.Edge| |o#0@@13| |n#0@@3| ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#5| |o#0@@13|) |l#6|))) ($Box SeqType |n#0@@3|)))))))
 :qid |gitissue3855dfy.261:10|
 :skolemid |920|
 :pattern ( ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#9| |o#0@@13|) |l#10|))) ($Box SeqType |n#0@@3|))))
 :pattern ( (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#7| |o#0@@13|) |l#8|))) ($Box SeqType |n#0@@3|)))
)))
 :qid |gitissue3855dfy.87:7|
 :skolemid |1416|
 :pattern ( (MapType0Select BoxType boolType (|lambda#47| |l#0@@7| |l#1@@7| |l#2@@3| |l#3@@1| |l#4| |l#5| |l#6| |l#7| |l#8| |l#9| |l#10|) |$y#0@@3|))
)))
(assert (forall ((d@@41 T@U) ($h@@22 T@U) ) (!  (=> (and ($IsGoodHeap $h@@22) (and (_module.Region.Heap_q d@@41) ($IsAlloc DatatypeTypeType d@@41 Tclass._module.Region $h@@22))) ($IsAlloc refType (_module.Region.region d@@41) Tclass._module.Object $h@@22))
 :qid |unknown.0:0|
 :skolemid |706|
 :pattern ( ($IsAlloc refType (_module.Region.region d@@41) Tclass._module.Object $h@@22))
)))
(assert (forall ((d@@42 T@U) ($h@@23 T@U) ) (!  (=> (and ($IsGoodHeap $h@@23) (and (_module.Region.Stack_q d@@42) ($IsAlloc DatatypeTypeType d@@42 Tclass._module.Region $h@@23))) ($IsAlloc refType (_module.Region.region d@@42) Tclass._module.Object $h@@23))
 :qid |unknown.0:0|
 :skolemid |715|
 :pattern ( ($IsAlloc refType (_module.Region.region d@@42) Tclass._module.Object $h@@23))
)))
(assert (forall ((d@@43 T@U) ($h@@24 T@U) ) (!  (=> (and ($IsGoodHeap $h@@24) (and (_module.Region.Frame_q d@@43) ($IsAlloc DatatypeTypeType d@@43 Tclass._module.Region $h@@24))) ($IsAlloc refType (_module.Region.prev d@@43) Tclass._module.Object $h@@24))
 :qid |unknown.0:0|
 :skolemid |724|
 :pattern ( ($IsAlloc refType (_module.Region.prev d@@43) Tclass._module.Object $h@@24))
)))
(assert (forall ((d@@44 T@U) ($h@@25 T@U) ) (!  (=> (and ($IsGoodHeap $h@@25) (and (_module.Edge.Edge_q d@@44) ($IsAlloc DatatypeTypeType d@@44 Tclass._module.Edge $h@@25))) ($IsAlloc refType (_module.Edge.f d@@44) Tclass._module.Object $h@@25))
 :qid |unknown.0:0|
 :skolemid |811|
 :pattern ( ($IsAlloc refType (_module.Edge.f d@@44) Tclass._module.Object $h@@25))
)))
(assert (forall ((d@@45 T@U) ($h@@26 T@U) ) (!  (=> (and ($IsGoodHeap $h@@26) (and (_module.Edge.Edge_q d@@45) ($IsAlloc DatatypeTypeType d@@45 Tclass._module.Edge $h@@26))) ($IsAlloc refType (_module.Edge.t d@@45) Tclass._module.Object $h@@26))
 :qid |unknown.0:0|
 :skolemid |813|
 :pattern ( ($IsAlloc refType (_module.Edge.t d@@45) Tclass._module.Object $h@@26))
)))
(assert (forall ((|a#3#0#0@@0| T@U) (|a#3#1#0@@0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0@@0|) (Lit BoxType |a#3#1#0@@0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0@@0| |a#3#1#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |462|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0@@0|) (Lit BoxType |a#3#1#0@@0|)))
)))
(assert (forall ((x@@11 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@11))) (Lit BoxType ($Box intType (int_2_U x@@11))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@11))))
)))
(assert (forall ((|a#27#0#0| T@U) ) (! (= (|#_module.Region.Heap| (Lit refType |a#27#0#0|)) (Lit DatatypeTypeType (|#_module.Region.Heap| |a#27#0#0|)))
 :qid |gitissue3855dfy.19:33|
 :skolemid |707|
 :pattern ( (|#_module.Region.Heap| (Lit refType |a#27#0#0|)))
)))
(assert (forall ((|a#32#0#0| T@U) ) (! (= (|#_module.Region.Stack| (Lit refType |a#32#0#0|)) (Lit DatatypeTypeType (|#_module.Region.Stack| |a#32#0#0|)))
 :qid |gitissue3855dfy.19:58|
 :skolemid |716|
 :pattern ( (|#_module.Region.Stack| (Lit refType |a#32#0#0|)))
)))
(assert (forall ((|a#37#0#0| T@U) ) (! (= (|#_module.Region.Frame| (Lit refType |a#37#0#0|)) (Lit DatatypeTypeType (|#_module.Region.Frame| |a#37#0#0|)))
 :qid |gitissue3855dfy.19:84|
 :skolemid |725|
 :pattern ( (|#_module.Region.Frame| (Lit refType |a#37#0#0|)))
)))
(assert (forall ((|a#7#0#0@@1| T@U) ) (! (= (|#_module.Status.Failure| (Lit SeqType |a#7#0#0@@1|)) (Lit DatatypeTypeType (|#_module.Status.Failure| |a#7#0#0@@1|)))
 :qid |gitissue3855dfy.1230:11|
 :skolemid |1387|
 :pattern ( (|#_module.Status.Failure| (Lit SeqType |a#7#0#0@@1|)))
)))
(assert (forall ((x@@12 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@12)) (Lit BoxType ($Box T@@5 x@@12)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@12)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@26 T@U) (this@@59 T@U) (|os#0@@16| T@U) ) (!  (=> (or (|_module.Memory.edges#canCall| $Heap@@26 this@@59 |os#0@@16|) (and (< 2 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@26) (and (or (not (= this@@59 null)) (not true)) (and ($Is refType this@@59 Tclass._module.Memory) ($IsAlloc refType this@@59 Tclass._module.Memory $Heap@@26)))) ($Is SetType |os#0@@16| (TSet Tclass._module.Object))))) (= (_module.Memory.edges $Heap@@26 this@@59 |os#0@@16|) (|Set#FromBoogieMap| (|lambda#47| Tclass._module.Object (TSeq TChar) |os#0@@16| $Heap@@26 _module.Object.fields $Heap@@26 _module.Object.fields $Heap@@26 _module.Object.fields $Heap@@26 _module.Object.fields))))
 :qid |gitissue3855dfy.256:12|
 :skolemid |921|
 :pattern ( (_module.Memory.edges $Heap@@26 this@@59 |os#0@@16|) ($IsGoodHeap $Heap@@26))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((this@@60 T@U) (|t#0@@11| T@U) (|edges#0@@23| T@U) ) (!  (=> (or (|_module.Memory.refCountEdges#canCall| this@@60 (Lit refType |t#0@@11|) (Lit SetType |edges#0@@23|)) (and (< 3 $FunctionContextHeight) (and (and (and (or (not (= this@@60 null)) (not true)) ($Is refType this@@60 Tclass._module.Memory)) ($Is refType |t#0@@11| Tclass._module.Object)) ($Is SetType |edges#0@@23| (TSet Tclass._module.Edge))))) (and (|_module.Memory.incomingEdges#canCall| this@@60 (Lit refType |t#0@@11|) (Lit SetType |edges#0@@23|)) (= (_module.Memory.refCountEdges this@@60 (Lit refType |t#0@@11|) (Lit SetType |edges#0@@23|)) (|Set#Card| (_module.Memory.incomingEdges this@@60 (Lit refType |t#0@@11|) (Lit SetType |edges#0@@23|))))))
 :qid |gitissue3855dfy.251:12|
 :weight 3
 :skolemid |911|
 :pattern ( (_module.Memory.refCountEdges this@@60 (Lit refType |t#0@@11|) (Lit SetType |edges#0@@23|)))
))))
(assert (forall ((s@@7 T@U) ) (!  (=> (= (|Seq#Length| s@@7) 0) (= s@@7 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@7))
)))
(assert (forall (($reveal@@2 Bool) ($h0@@15 T@U) ($h1@@15 T@U) (this@@61 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@15) ($IsGoodHeap $h1@@15)) (and (or (not (= this@@61 null)) (not true)) ($Is refType this@@61 Tclass._module.Object))) (and ($IsHeapAnchor $h0@@15) ($HeapSucc $h0@@15 $h1@@15))) (=> (forall (($o@@28 T@U) ($f@@16 T@U) ) (!  (=> (and (or (not (= $o@@28 null)) (not true)) (and (= $o@@28 this@@61) (= $f@@16 _module.Object.fields))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@15 $o@@28) $f@@16) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@15 $o@@28) $f@@16)))
 :qid |unknown.0:0|
 :skolemid |766|
)) (= (_module.Object.Valid $reveal@@2 $h0@@15 this@@61) (_module.Object.Valid $reveal@@2 $h1@@15 this@@61))))
 :qid |unknown.0:0|
 :skolemid |767|
 :pattern ( ($IsHeapAnchor $h0@@15) ($HeapSucc $h0@@15 $h1@@15) (_module.Object.Valid $reveal@@2 $h1@@15 this@@61))
)))
(assert (forall (($prevHeap@@5 T@U) ($h0@@16 T@U) ($h1@@16 T@U) (this@@62 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@16) ($IsGoodHeap $h1@@16)) (and (or (not (= this@@62 null)) (not true)) ($Is refType this@@62 Tclass._module.Memory))) (and ($IsHeapAnchor $h0@@16) ($HeapSucc $h0@@16 $h1@@16))) (=> (forall (($o@@29 T@U) ($f@@17 T@U) ) (!  (=> (and (or (not (= $o@@29 null)) (not true)) (and (= $o@@29 this@@62) (= $f@@17 _module.Memory.objects))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@16 $o@@29) $f@@17) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@16 $o@@29) $f@@17)))
 :qid |unknown.0:0|
 :skolemid |873|
)) (= (_module.Memory.HeapObjectsAreMonotonic $prevHeap@@5 $h0@@16 this@@62) (_module.Memory.HeapObjectsAreMonotonic $prevHeap@@5 $h1@@16 this@@62))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |874|
 :pattern ( ($IsHeapAnchor $h0@@16) ($HeapSucc $h0@@16 $h1@@16) (_module.Memory.HeapObjectsAreMonotonic $prevHeap@@5 $h1@@16 this@@62))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((this@@63 T@U) (|o#0@@14| T@U) (|edges#0@@24| T@U) ) (!  (=> (or (|_module.Memory.externalEdges#canCall| this@@63 (Lit DatatypeTypeType |o#0@@14|) (Lit SetType |edges#0@@24|)) (and (< 3 $FunctionContextHeight) (and (and (and (or (not (= this@@63 null)) (not true)) ($Is refType this@@63 Tclass._module.Memory)) ($Is DatatypeTypeType |o#0@@14| Tclass._module.Region)) ($Is SetType |edges#0@@24| (TSet Tclass._module.Edge))))) (and (forall ((|e#1@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |e#1@@1| Tclass._module.Edge) (=> (|Set#IsMember| (Lit SetType |edges#0@@24|) ($Box DatatypeTypeType |e#1@@1|)) (and (and (and (|$IsA#_module.Region| (_module.Object.region (_module.Edge.t |e#1@@1|))) (|$IsA#_module.Region| (Lit DatatypeTypeType |o#0@@14|))) (_module.Edge.Edge_q |e#1@@1|)) (=> (|_module.Region#Equal| (_module.Object.region (_module.Edge.t |e#1@@1|)) |o#0@@14|) (and (and (|$IsA#_module.Region| (_module.Object.region (_module.Edge.f |e#1@@1|))) (|$IsA#_module.Region| (Lit DatatypeTypeType |o#0@@14|))) (_module.Edge.Edge_q |e#1@@1|))))))
 :qid |gitissue3855dfy.339:9|
 :skolemid |1004|
 :pattern ( (_module.Edge.f |e#1@@1|))
 :pattern ( (_module.Edge.t |e#1@@1|))
 :pattern ( (|Set#IsMember| |edges#0@@24| ($Box DatatypeTypeType |e#1@@1|)))
)) (= (_module.Memory.externalEdges this@@63 (Lit DatatypeTypeType |o#0@@14|) (Lit SetType |edges#0@@24|)) (|Set#FromBoogieMap| (|lambda#71| Tclass._module.Edge (Lit SetType |edges#0@@24|) |o#0@@14| |o#0@@14|)))))
 :qid |gitissue3855dfy.336:12|
 :weight 3
 :skolemid |1005|
 :pattern ( (_module.Memory.externalEdges this@@63 (Lit DatatypeTypeType |o#0@@14|) (Lit SetType |edges#0@@24|)))
))))
(assert (forall ((h@@6 T@U) (v@@14 T@U) ) (! ($IsAlloc boolType v@@14 TBool h@@6)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@14 TBool h@@6))
)))
(assert (forall ((h@@7 T@U) (v@@15 T@U) ) (! ($IsAlloc charType v@@15 TChar h@@7)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |64|
 :pattern ( ($IsAlloc charType v@@15 TChar h@@7))
)))
(assert (forall ((v@@16 T@U) (t0@@7 T@U) ) (! (= ($Is SeqType v@@16 (TSeq t0@@7)) (forall ((i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| v@@16))) ($IsBox (|Seq#Index| v@@16 i@@3) t0@@7))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@16 i@@3))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@16 (TSeq t0@@7)))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@27 T@U) (this@@64 T@U) ) (!  (=> (or (|_module.Object.AllOutgoingReferencesAreVenice#canCall| $Heap@@27 this@@64) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@27) (and (or (not (= this@@64 null)) (not true)) (and ($Is refType this@@64 Tclass._module.Object) ($IsAlloc refType this@@64 Tclass._module.Object $Heap@@27)))))) (and (forall ((|n#0@@4| T@U) ) (!  (=> ($Is SeqType |n#0@@4| (TSeq TChar)) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 this@@64) _module.Object.fields))) ($Box SeqType |n#0@@4|)) (|_module.__default.VeniceReferenceOK#canCall| this@@64 ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 this@@64) _module.Object.fields))) ($Box SeqType |n#0@@4|))))))
 :qid |gitissue3855dfy.134:16|
 :skolemid |796|
 :pattern ( ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 this@@64) _module.Object.fields))) ($Box SeqType |n#0@@4|))))
 :pattern ( (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 this@@64) _module.Object.fields))) ($Box SeqType |n#0@@4|)))
)) (= (_module.Object.AllOutgoingReferencesAreVenice $Heap@@27 this@@64) (forall ((|n#0@@5| T@U) ) (!  (=> (and ($Is SeqType |n#0@@5| (TSeq TChar)) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 this@@64) _module.Object.fields))) ($Box SeqType |n#0@@5|))) (_module.__default.VeniceReferenceOK this@@64 ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 this@@64) _module.Object.fields))) ($Box SeqType |n#0@@5|)))))
 :qid |gitissue3855dfy.134:16|
 :skolemid |795|
 :pattern ( ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 this@@64) _module.Object.fields))) ($Box SeqType |n#0@@5|))))
 :pattern ( (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 this@@64) _module.Object.fields))) ($Box SeqType |n#0@@5|)))
)))))
 :qid |gitissue3855dfy.131:13|
 :skolemid |797|
 :pattern ( (_module.Object.AllOutgoingReferencesAreVenice $Heap@@27 this@@64) ($IsGoodHeap $Heap@@27))
))))
(assert (forall ((a@@37 T@U) (x@@13 T@U) ) (!  (=> (not (|Set#IsMember| a@@37 x@@13)) (= (|Set#Card| (|Set#UnionOne| a@@37 x@@13)) (+ (|Set#Card| a@@37) 1)))
 :qid |DafnyPreludebpl.698:15|
 :skolemid |132|
 :pattern ( (|Set#Card| (|Set#UnionOne| a@@37 x@@13)))
)))
(assert (forall ((m@@19 T@U) ) (!  (or (= m@@19 |Map#Empty|) (exists ((k@@3 T@U) (v@@17 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@19) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@3 v@@17)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |277|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |278|
 :pattern ( (|Map#Items| m@@19))
)))
(assert (forall ((s@@8 T@U) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length| s@@8))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@8 i@@4))) (|Seq#Rank| s@@8)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@8 i@@4))))
)))
(assert (forall ((v@@18 T@U) (t0@@8 T@U) (t1@@4 T@U) ) (!  (=> ($Is MapType v@@18 (TMap t0@@8 t1@@4)) (and (and ($Is SetType (|Map#Domain| v@@18) (TSet t0@@8)) ($Is SetType (|Map#Values| v@@18) (TSet t1@@4))) ($Is SetType (|Map#Items| v@@18) (TSet (Tclass._System.Tuple2 t0@@8 t1@@4)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |57|
 :pattern ( ($Is MapType v@@18 (TMap t0@@8 t1@@4)))
)))
(assert (forall ((v@@19 T@U) ) (! ($Is boolType v@@19 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@19 TBool))
)))
(assert (forall ((v@@20 T@U) ) (! ($Is charType v@@20 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |43|
 :pattern ( ($Is charType v@@20 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@28 () T@U)
(declare-fun call1formal@this () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun call1formal@this@0 () T@U)
(declare-fun |k##0@0| () T@U)
(declare-fun |ks##0@0| () T@U)
(declare-fun call3formal@this () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun call3formal@this@0 () T@U)
(declare-fun |k##1@0| () T@U)
(declare-fun |ks##1@0| () T@U)
(declare-fun call3formal@this@@0 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun call3formal@this@0@@0 () T@U)
(declare-fun |k##2@0| () T@U)
(declare-fun |ks##2@0| () T@U)
(declare-fun call3formal@this@@1 () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun call3formal@this@0@@1 () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun $Heap@6 () T@U)
(declare-fun |f##0@0| () T@U)
(declare-fun $Heap@7 () T@U)
(declare-fun |n##0@0| () T@U)
(declare-fun |m##0@0| () T@U)
(declare-fun |call6formal@r#0| () T@U)
(declare-fun $Heap@8 () T@U)
(declare-fun |call6formal@r#0@0| () T@U)
(declare-fun |##x#0@0| () Bool)
(declare-fun |defass#memory#0| () Bool)
(declare-fun |memory#0| () T@U)
(declare-fun |defass#i1#0| () Bool)
(declare-fun |i1#0| () T@U)
(declare-fun |defass#i2#0| () Bool)
(declare-fun |i2#0| () T@U)
(declare-fun |defass#m1#0| () Bool)
(declare-fun |m1#0| () T@U)
(declare-fun |r#0@@4| () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.Main1)
(set-option :timeout 10000)
(set-option :rlimit 0)
(set-option :auto_config false)
(set-option :type_check true)
(set-option :smt.qi.eager_threshold 100)
(set-option :smt.delay_units true)
(set-option :model_evaluator.completion true)
(set-option :model.completion true)
(set-option :model.compact false)
(set-option :smt.case_split 3)
(set-option :smt.mbqi false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
(set-option :smt.arith.solver 2)
(assert (not
 (=> (= (ControlFlow 0 0) 60) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@28 alloc false)) (=> (and (or (not (= call1formal@this null)) (not true)) (and ($Is refType call1formal@this Tclass._module.Memory) ($IsAlloc refType call1formal@this Tclass._module.Memory $Heap@@28))) (=> (and (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (or (not (= call1formal@this@0 null)) (not true)) (and ($Is refType call1formal@this@0 Tclass._module.Memory) ($IsAlloc refType call1formal@this@0 Tclass._module.Memory $Heap@0)))) (and (and (|_module.Memory.Valid#canCall| $Heap@0 call1formal@this@0) (_module.Memory.Valid reveal__module.Memory.Valid $Heap@0 call1formal@this@0)) (and (or (not (= call1formal@this@0 null)) (not true)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@28 call1formal@this@0) alloc))))))) (and (and (and (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call1formal@this@0) _module.Memory.objects)) |Set#Empty|) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@28 call1formal@this@0) alloc))))) (and (forall (($o@@30 T@U) ) (!  (=> (and (or (not (= $o@@30 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@28 $o@@30) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@30) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@28 $o@@30)))
 :qid |gitissue3855dfy.163:3|
 :skolemid |829|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@30))
)) ($HeapSucc $Heap@@28 $Heap@0))) (and (and (= |k##0@0| (Lit DatatypeTypeType |#_module.Region.Isolate|)) (= |ks##0@0| (Lit MapType (|Map#Build| |Map#Empty| ($Box SeqType (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 120))) ($Box charType (|char#FromInt| 49))))) ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.Mode.Mut|)))))) (and (or (not (= call3formal@this null)) (not true)) (and ($Is refType call3formal@this Tclass._module.Object) ($IsAlloc refType call3formal@this Tclass._module.Object $Heap@@28)))))) (=> (and (and (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (and (or (not (= call3formal@this@0 null)) (not true)) (and ($Is refType call3formal@this@0 Tclass._module.Object) ($IsAlloc refType call3formal@this@0 Tclass._module.Object $Heap@1)))) (and (and (|$IsA#_module.Region| (_module.Object.region call3formal@this@0)) (|$IsA#_module.Region| |k##0@0|)) (and (|_module.Region#Equal| (_module.Object.region call3formal@this@0) |k##0@0|) (|Map#Equal| (_module.Object.fieldModes call3formal@this@0) |ks##0@0|)))) (and (and (and (|Map#Equal| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call3formal@this@0) _module.Object.fields)) |Map#Empty|) (|_module.Object.Valid#canCall| $Heap@1 call3formal@this@0)) (and (_module.Object.Valid reveal__module.Object.Valid $Heap@1 call3formal@this@0) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call3formal@this@0) alloc)))))) (and (and (forall (($o@@31 T@U) ) (!  (=> (and (or (not (= $o@@31 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@31) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@31) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@31)))
 :qid |gitissue3855dfy.93:3|
 :skolemid |747|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@31))
)) ($HeapSucc $Heap@0 $Heap@1)) (and (= |k##1@0| (Lit DatatypeTypeType |#_module.Region.Isolate|)) (= |ks##1@0| (Lit MapType (|Map#Build| |Map#Empty| ($Box SeqType (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 120))) ($Box charType (|char#FromInt| 50))))) ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.Mode.Mut|))))))))) (and (and (and (and (or (not (= call3formal@this@@0 null)) (not true)) (and ($Is refType call3formal@this@@0 Tclass._module.Object) ($IsAlloc refType call3formal@this@@0 Tclass._module.Object $Heap@@28))) (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2))) (and (and (or (not (= call3formal@this@0@@0 null)) (not true)) (and ($Is refType call3formal@this@0@@0 Tclass._module.Object) ($IsAlloc refType call3formal@this@0@@0 Tclass._module.Object $Heap@2))) (and (|$IsA#_module.Region| (_module.Object.region call3formal@this@0@@0)) (|$IsA#_module.Region| |k##1@0|)))) (and (and (and (|_module.Region#Equal| (_module.Object.region call3formal@this@0@@0) |k##1@0|) (|Map#Equal| (_module.Object.fieldModes call3formal@this@0@@0) |ks##1@0|)) (and (|Map#Equal| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call3formal@this@0@@0) _module.Object.fields)) |Map#Empty|) (|_module.Object.Valid#canCall| $Heap@2 call3formal@this@0@@0))) (and (and (_module.Object.Valid reveal__module.Object.Valid $Heap@2 call3formal@this@0@@0) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call3formal@this@0@@0) alloc))))) (and (forall (($o@@32 T@U) ) (!  (=> (and (or (not (= $o@@32 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@32) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@32) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@32)))
 :qid |gitissue3855dfy.93:3|
 :skolemid |747|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@32))
)) ($HeapSucc $Heap@1 $Heap@2)))))) (and (=> (= (ControlFlow 0 2) (- 0 59)) true) (=> (and (= |k##2@0| (|#_module.Region.Heap| call3formal@this@0)) (= |ks##2@0| (Lit MapType |Map#Empty|))) (=> (and (and (and (and (or (not (= call3formal@this@@1 null)) (not true)) (and ($Is refType call3formal@this@@1 Tclass._module.Object) ($IsAlloc refType call3formal@this@@1 Tclass._module.Object $Heap@@28))) (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3))) (and (and (or (not (= call3formal@this@0@@1 null)) (not true)) (and ($Is refType call3formal@this@0@@1 Tclass._module.Object) ($IsAlloc refType call3formal@this@0@@1 Tclass._module.Object $Heap@3))) (and (|$IsA#_module.Region| (_module.Object.region call3formal@this@0@@1)) (|$IsA#_module.Region| |k##2@0|)))) (and (and (and (|_module.Region#Equal| (_module.Object.region call3formal@this@0@@1) |k##2@0|) (|Map#Equal| (_module.Object.fieldModes call3formal@this@0@@1) |ks##2@0|)) (and (|Map#Equal| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call3formal@this@0@@1) _module.Object.fields)) |Map#Empty|) (|_module.Object.Valid#canCall| $Heap@3 call3formal@this@0@@1))) (and (and (_module.Object.Valid reveal__module.Object.Valid $Heap@3 call3formal@this@0@@1) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call3formal@this@0@@1) alloc))))) (and (forall (($o@@33 T@U) ) (!  (=> (and (or (not (= $o@@33 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@33) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@33) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@33)))
 :qid |gitissue3855dfy.93:3|
 :skolemid |747|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@33))
)) ($HeapSucc $Heap@2 $Heap@3))))) (and (=> (= (ControlFlow 0 2) (- 0 58)) true) (and (=> (= (ControlFlow 0 2) (- 0 57)) (or (not (= call1formal@this@0 null)) (not true))) (=> (or (not (= call1formal@this@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 56)) true) (and (=> (= (ControlFlow 0 2) (- 0 55)) (forall (($o@@34 T@U) ($f@@18 T@U) ) (!  (=> (and (and (or (not (= $o@@34 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@34) alloc)))) (and (= $o@@34 call1formal@this@0) (= $f@@18 _module.Memory.objects))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@34 $f@@18)))
 :qid |gitissue3855dfy.1331:20|
 :skolemid |673|
))) (=> (forall (($o@@35 T@U) ($f@@19 T@U) ) (!  (=> (and (and (or (not (= $o@@35 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@35) alloc)))) (and (= $o@@35 call1formal@this@0) (= $f@@19 _module.Memory.objects))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@35 $f@@19)))
 :qid |gitissue3855dfy.1331:20|
 :skolemid |673|
)) (and (=> (= (ControlFlow 0 2) (- 0 54)) (_module.Memory.Valid reveal__module.Memory.Valid $Heap@3 call1formal@this@0)) (=> (_module.Memory.Valid reveal__module.Memory.Valid $Heap@3 call1formal@this@0) (and (=> (= (ControlFlow 0 2) (- 0 53)) (_module.Object.Valid reveal__module.Object.Valid $Heap@3 call3formal@this@0)) (=> (_module.Object.Valid reveal__module.Object.Valid $Heap@3 call3formal@this@0) (and (=> (= (ControlFlow 0 2) (- 0 52)) (= (_module.Object.size $Heap@3 call3formal@this@0) (LitInt 0))) (=> (= (_module.Object.size $Heap@3 call3formal@this@0) (LitInt 0)) (and (=> (= (ControlFlow 0 2) (- 0 51)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call1formal@this@0) _module.Memory.objects)) ($Box refType call3formal@this@0)))) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call1formal@this@0) _module.Memory.objects)) ($Box refType call3formal@this@0))) (=> (and (and (and (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (|_module.Memory.Valid2#canCall| $Heap@3 $Heap@4 call1formal@this@0)) (and (_module.Memory.Valid2 reveal__module.Memory.Valid2 $Heap@3 $Heap@4 call1formal@this@0) (forall (($o@@36 T@U) ($f@@20 T@U) ) (!  (=> (or (not (= $o@@36 null)) (not true)) (=> (= $o@@36 call3formal@this@0) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@36) $f@@20) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@36) $f@@20))))
 :qid |gitissue3855dfy.372:13|
 :skolemid |1022|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@36) $f@@20))
)))) (and (and (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call1formal@this@0) _module.Memory.objects)) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call1formal@this@0) _module.Memory.objects)) (|Set#UnionOne| |Set#Empty| ($Box refType call3formal@this@0)))) (forall (($o@@37 T@U) ) (!  (=> (and (or (not (= $o@@37 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@37) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@37) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@37)) (= $o@@37 call1formal@this@0)))
 :qid |gitissue3855dfy.365:10|
 :skolemid |1023|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@37))
))) (and (forall (($o@@38 T@U) ($f@@21 T@U) ) (!  (=> (and (or (not (= $o@@38 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@38) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@38) $f@@21) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@38) $f@@21)) (and (= $o@@38 call1formal@this@0) (= $f@@21 _module.Memory.objects))))
 :qid |gitissue3855dfy.365:10|
 :skolemid |1024|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@38) $f@@21))
)) ($HeapSucc $Heap@3 $Heap@4)))) (and (=> (= (ControlFlow 0 2) (- 0 50)) true) (and (=> (= (ControlFlow 0 2) (- 0 49)) (or (not (= call1formal@this@0 null)) (not true))) (=> (or (not (= call1formal@this@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 48)) true) (and (=> (= (ControlFlow 0 2) (- 0 47)) (forall (($o@@39 T@U) ($f@@22 T@U) ) (!  (=> (and (and (or (not (= $o@@39 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@39) alloc)))) (and (= $o@@39 call1formal@this@0) (= $f@@22 _module.Memory.objects))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@39 $f@@22)))
 :qid |gitissue3855dfy.1332:20|
 :skolemid |674|
))) (=> (forall (($o@@40 T@U) ($f@@23 T@U) ) (!  (=> (and (and (or (not (= $o@@40 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@40) alloc)))) (and (= $o@@40 call1formal@this@0) (= $f@@23 _module.Memory.objects))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@40 $f@@23)))
 :qid |gitissue3855dfy.1332:20|
 :skolemid |674|
)) (and (=> (= (ControlFlow 0 2) (- 0 46)) (_module.Memory.Valid reveal__module.Memory.Valid $Heap@4 call1formal@this@0)) (=> (_module.Memory.Valid reveal__module.Memory.Valid $Heap@4 call1formal@this@0) (and (=> (= (ControlFlow 0 2) (- 0 45)) (_module.Object.Valid reveal__module.Object.Valid $Heap@4 call3formal@this@0@@0)) (=> (_module.Object.Valid reveal__module.Object.Valid $Heap@4 call3formal@this@0@@0) (and (=> (= (ControlFlow 0 2) (- 0 44)) (= (_module.Object.size $Heap@4 call3formal@this@0@@0) (LitInt 0))) (=> (= (_module.Object.size $Heap@4 call3formal@this@0@@0) (LitInt 0)) (and (=> (= (ControlFlow 0 2) (- 0 43)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call1formal@this@0) _module.Memory.objects)) ($Box refType call3formal@this@0@@0)))) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call1formal@this@0) _module.Memory.objects)) ($Box refType call3formal@this@0@@0))) (=> (and (and (and (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)) (|_module.Memory.Valid2#canCall| $Heap@4 $Heap@5 call1formal@this@0)) (and (_module.Memory.Valid2 reveal__module.Memory.Valid2 $Heap@4 $Heap@5 call1formal@this@0) (forall (($o@@41 T@U) ($f@@24 T@U) ) (!  (=> (or (not (= $o@@41 null)) (not true)) (=> (= $o@@41 call3formal@this@0@@0) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@41) $f@@24) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@41) $f@@24))))
 :qid |gitissue3855dfy.372:13|
 :skolemid |1022|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@41) $f@@24))
)))) (and (and (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 call1formal@this@0) _module.Memory.objects)) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call1formal@this@0) _module.Memory.objects)) (|Set#UnionOne| |Set#Empty| ($Box refType call3formal@this@0@@0)))) (forall (($o@@42 T@U) ) (!  (=> (and (or (not (= $o@@42 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@42) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@42) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@42)) (= $o@@42 call1formal@this@0)))
 :qid |gitissue3855dfy.365:10|
 :skolemid |1023|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@42))
))) (and (forall (($o@@43 T@U) ($f@@25 T@U) ) (!  (=> (and (or (not (= $o@@43 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@43) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@43) $f@@25) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@43) $f@@25)) (and (= $o@@43 call1formal@this@0) (= $f@@25 _module.Memory.objects))))
 :qid |gitissue3855dfy.365:10|
 :skolemid |1024|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@43) $f@@25))
)) ($HeapSucc $Heap@4 $Heap@5)))) (and (=> (= (ControlFlow 0 2) (- 0 42)) true) (and (=> (= (ControlFlow 0 2) (- 0 41)) (or (not (= call1formal@this@0 null)) (not true))) (=> (or (not (= call1formal@this@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 40)) true) (and (=> (= (ControlFlow 0 2) (- 0 39)) (forall (($o@@44 T@U) ($f@@26 T@U) ) (!  (=> (and (and (or (not (= $o@@44 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@44) alloc)))) (and (= $o@@44 call1formal@this@0) (= $f@@26 _module.Memory.objects))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@44 $f@@26)))
 :qid |gitissue3855dfy.1334:20|
 :skolemid |675|
))) (=> (forall (($o@@45 T@U) ($f@@27 T@U) ) (!  (=> (and (and (or (not (= $o@@45 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@45) alloc)))) (and (= $o@@45 call1formal@this@0) (= $f@@27 _module.Memory.objects))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@45 $f@@27)))
 :qid |gitissue3855dfy.1334:20|
 :skolemid |675|
)) (and (=> (= (ControlFlow 0 2) (- 0 38)) (_module.Memory.Valid reveal__module.Memory.Valid $Heap@5 call1formal@this@0)) (=> (_module.Memory.Valid reveal__module.Memory.Valid $Heap@5 call1formal@this@0) (and (=> (= (ControlFlow 0 2) (- 0 37)) (_module.Object.Valid reveal__module.Object.Valid $Heap@5 call3formal@this@0@@1)) (=> (_module.Object.Valid reveal__module.Object.Valid $Heap@5 call3formal@this@0@@1) (and (=> (= (ControlFlow 0 2) (- 0 36)) (= (_module.Object.size $Heap@5 call3formal@this@0@@1) (LitInt 0))) (=> (= (_module.Object.size $Heap@5 call3formal@this@0@@1) (LitInt 0)) (and (=> (= (ControlFlow 0 2) (- 0 35)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 call1formal@this@0) _module.Memory.objects)) ($Box refType call3formal@this@0@@1)))) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 call1formal@this@0) _module.Memory.objects)) ($Box refType call3formal@this@0@@1))) (=> (and (and (and (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6)) (|_module.Memory.Valid2#canCall| $Heap@5 $Heap@6 call1formal@this@0)) (and (_module.Memory.Valid2 reveal__module.Memory.Valid2 $Heap@5 $Heap@6 call1formal@this@0) (forall (($o@@46 T@U) ($f@@28 T@U) ) (!  (=> (or (not (= $o@@46 null)) (not true)) (=> (= $o@@46 call3formal@this@0@@1) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@46) $f@@28) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@46) $f@@28))))
 :qid |gitissue3855dfy.372:13|
 :skolemid |1022|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@46) $f@@28))
)))) (and (and (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call1formal@this@0) _module.Memory.objects)) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 call1formal@this@0) _module.Memory.objects)) (|Set#UnionOne| |Set#Empty| ($Box refType call3formal@this@0@@1)))) (forall (($o@@47 T@U) ) (!  (=> (and (or (not (= $o@@47 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@47) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@47) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@47)) (= $o@@47 call1formal@this@0)))
 :qid |gitissue3855dfy.365:10|
 :skolemid |1023|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@47))
))) (and (forall (($o@@48 T@U) ($f@@29 T@U) ) (!  (=> (and (or (not (= $o@@48 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@48) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@48) $f@@29) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@48) $f@@29)) (and (= $o@@48 call1formal@this@0) (= $f@@29 _module.Memory.objects))))
 :qid |gitissue3855dfy.365:10|
 :skolemid |1024|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@48) $f@@29))
)) ($HeapSucc $Heap@5 $Heap@6)))) (and (=> (= (ControlFlow 0 2) (- 0 34)) true) (and (=> (= (ControlFlow 0 2) (- 0 33)) (or (not (= call1formal@this@0 null)) (not true))) (=> (or (not (= call1formal@this@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 32)) true) (=> (= |f##0@0| (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 120))) ($Box charType (|char#FromInt| 49))))) (and (=> (= (ControlFlow 0 2) (- 0 31)) true) (and (=> (= (ControlFlow 0 2) (- 0 30)) (forall (($o@@49 T@U) ($f@@30 T@U) ) (!  (=> (and (and (or (not (= $o@@49 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@49) alloc)))) (and (= $o@@49 call3formal@this@0) (= $f@@30 _module.Object.fields))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@49 $f@@30)))
 :qid |gitissue3855dfy.1335:21|
 :skolemid |676|
))) (=> (forall (($o@@50 T@U) ($f@@31 T@U) ) (!  (=> (and (and (or (not (= $o@@50 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@50) alloc)))) (and (= $o@@50 call3formal@this@0) (= $f@@31 _module.Object.fields))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@50 $f@@31)))
 :qid |gitissue3855dfy.1335:21|
 :skolemid |676|
)) (and (=> (= (ControlFlow 0 2) (- 0 29)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call1formal@this@0) _module.Memory.objects)) ($Box refType call3formal@this@0))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call1formal@this@0) _module.Memory.objects)) ($Box refType call3formal@this@0)) (and (=> (= (ControlFlow 0 2) (- 0 28)) (|Set#IsMember| (|Map#Domain| (_module.Object.fieldModes call3formal@this@0)) ($Box SeqType |f##0@0|))) (=> (|Set#IsMember| (|Map#Domain| (_module.Object.fieldModes call3formal@this@0)) ($Box SeqType |f##0@0|)) (and (=> (= (ControlFlow 0 2) (- 0 27)) (not (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call3formal@this@0) _module.Object.fields))) ($Box SeqType |f##0@0|)))) (=> (not (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call3formal@this@0) _module.Object.fields))) ($Box SeqType |f##0@0|))) (and (=> (= (ControlFlow 0 2) (- 0 26)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call1formal@this@0) _module.Memory.objects)) ($Box refType call3formal@this@0@@1))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call1formal@this@0) _module.Memory.objects)) ($Box refType call3formal@this@0@@1)) (and (=> (= (ControlFlow 0 2) (- 0 25)) (=> (_module.Region.Isolate_q (_module.Object.region call3formal@this@0@@1)) (= (_module.Memory.refCountEdges call1formal@this@0 call3formal@this@0@@1 (_module.Memory.edges $Heap@6 call1formal@this@0 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call1formal@this@0) _module.Memory.objects)))) (LitInt 0)))) (=> (=> (_module.Region.Isolate_q (_module.Object.region call3formal@this@0@@1)) (= (_module.Memory.refCountEdges call1formal@this@0 call3formal@this@0@@1 (_module.Memory.edges $Heap@6 call1formal@this@0 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call1formal@this@0) _module.Memory.objects)))) (LitInt 0))) (and (=> (= (ControlFlow 0 2) (- 0 24)) (|_module.Mode#Equal| ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes call3formal@this@0)) ($Box SeqType |f##0@0|))) |#_module.Mode.Mut|)) (=> (|_module.Mode#Equal| ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes call3formal@this@0)) ($Box SeqType |f##0@0|))) |#_module.Mode.Mut|) (and (=> (= (ControlFlow 0 2) (- 0 23)) (or (|_module.Region#Equal| (_module.Object.region call3formal@this@0) (_module.Object.region call3formal@this@0@@1)) (|_module.Region#Equal| (_module.Object.region call3formal@this@0@@1) |#_module.Region.Frozen|))) (=> (or (|_module.Region#Equal| (_module.Object.region call3formal@this@0) (_module.Object.region call3formal@this@0@@1)) (|_module.Region#Equal| (_module.Object.region call3formal@this@0@@1) |#_module.Region.Frozen|)) (and (=> (= (ControlFlow 0 2) (- 0 22)) (=> (|_module.__default.not#canCall| (_module.Region.Frozen_q (_module.Object.region call3formal@this@0))) (or (_module.__default.not (_module.Region.Frozen_q (_module.Object.region call3formal@this@0))) (not (_module.Region.Frozen_q (_module.Object.region call3formal@this@0)))))) (=> (=> (|_module.__default.not#canCall| (_module.Region.Frozen_q (_module.Object.region call3formal@this@0))) (or (_module.__default.not (_module.Region.Frozen_q (_module.Object.region call3formal@this@0))) (not (_module.Region.Frozen_q (_module.Object.region call3formal@this@0))))) (and (=> (= (ControlFlow 0 2) (- 0 21)) (=> (|_module.__default.VeniceReferenceOK#canCall| call3formal@this@0 call3formal@this@0@@1) (or (_module.__default.VeniceReferenceOK call3formal@this@0 call3formal@this@0@@1) (=> (_module.Region.Frozen_q (_module.Object.region call3formal@this@0@@1)) (U_2_bool (Lit boolType (bool_2_U true))))))) (=> (=> (|_module.__default.VeniceReferenceOK#canCall| call3formal@this@0 call3formal@this@0@@1) (or (_module.__default.VeniceReferenceOK call3formal@this@0 call3formal@this@0@@1) (=> (_module.Region.Frozen_q (_module.Object.region call3formal@this@0@@1)) (U_2_bool (Lit boolType (bool_2_U true)))))) (and (=> (= (ControlFlow 0 2) (- 0 20)) (=> (|_module.__default.VeniceReferenceOK#canCall| call3formal@this@0 call3formal@this@0@@1) (or (_module.__default.VeniceReferenceOK call3formal@this@0 call3formal@this@0@@1) (=> (not (_module.Region.Frozen_q (_module.Object.region call3formal@this@0@@1))) (=> (_module.Region.Heap_q (_module.Object.region call3formal@this@0)) (or (_module.Region.Isolate_q (_module.Object.region call3formal@this@0@@1)) (and (_module.Region.Heap_q (_module.Object.region call3formal@this@0@@1)) (= (_module.Region.region (_module.Object.region call3formal@this@0@@1)) (_module.Region.region (_module.Object.region call3formal@this@0)))))))))) (=> (=> (|_module.__default.VeniceReferenceOK#canCall| call3formal@this@0 call3formal@this@0@@1) (or (_module.__default.VeniceReferenceOK call3formal@this@0 call3formal@this@0@@1) (=> (not (_module.Region.Frozen_q (_module.Object.region call3formal@this@0@@1))) (=> (_module.Region.Heap_q (_module.Object.region call3formal@this@0)) (or (_module.Region.Isolate_q (_module.Object.region call3formal@this@0@@1)) (and (_module.Region.Heap_q (_module.Object.region call3formal@this@0@@1)) (= (_module.Region.region (_module.Object.region call3formal@this@0@@1)) (_module.Region.region (_module.Object.region call3formal@this@0))))))))) (and (=> (= (ControlFlow 0 2) (- 0 19)) (=> (|_module.__default.VeniceReferenceOK#canCall| call3formal@this@0 call3formal@this@0@@1) (or (_module.__default.VeniceReferenceOK call3formal@this@0 call3formal@this@0@@1) (=> (not (_module.Region.Frozen_q (_module.Object.region call3formal@this@0@@1))) (=> (not (_module.Region.Heap_q (_module.Object.region call3formal@this@0))) (=> (_module.Region.Isolate_q (_module.Object.region call3formal@this@0)) (or (_module.Region.Isolate_q (_module.Object.region call3formal@this@0@@1)) (and (_module.Region.Heap_q (_module.Object.region call3formal@this@0@@1)) (= (_module.Region.region (_module.Object.region call3formal@this@0@@1)) call3formal@this@0))))))))) (=> (=> (|_module.__default.VeniceReferenceOK#canCall| call3formal@this@0 call3formal@this@0@@1) (or (_module.__default.VeniceReferenceOK call3formal@this@0 call3formal@this@0@@1) (=> (not (_module.Region.Frozen_q (_module.Object.region call3formal@this@0@@1))) (=> (not (_module.Region.Heap_q (_module.Object.region call3formal@this@0))) (=> (_module.Region.Isolate_q (_module.Object.region call3formal@this@0)) (or (_module.Region.Isolate_q (_module.Object.region call3formal@this@0@@1)) (and (_module.Region.Heap_q (_module.Object.region call3formal@this@0@@1)) (= (_module.Region.region (_module.Object.region call3formal@this@0@@1)) call3formal@this@0)))))))) (and (=> (= (ControlFlow 0 2) (- 0 18)) (=> (|_module.__default.VeniceReferenceOK#canCall| call3formal@this@0 call3formal@this@0@@1) (or (_module.__default.VeniceReferenceOK call3formal@this@0 call3formal@this@0@@1) (=> (not (_module.Region.Frozen_q (_module.Object.region call3formal@this@0@@1))) (=> (not (_module.Region.Heap_q (_module.Object.region call3formal@this@0))) (=> (not (_module.Region.Isolate_q (_module.Object.region call3formal@this@0))) (U_2_bool (Lit boolType (bool_2_U false))))))))) (=> (=> (|_module.__default.VeniceReferenceOK#canCall| call3formal@this@0 call3formal@this@0@@1) (or (_module.__default.VeniceReferenceOK call3formal@this@0 call3formal@this@0@@1) (=> (not (_module.Region.Frozen_q (_module.Object.region call3formal@this@0@@1))) (=> (not (_module.Region.Heap_q (_module.Object.region call3formal@this@0))) (=> (not (_module.Region.Isolate_q (_module.Object.region call3formal@this@0))) (U_2_bool (Lit boolType (bool_2_U false)))))))) (and (=> (= (ControlFlow 0 2) (- 0 17)) (=> (|_module.__default.AssignmentCompatible#canCall| call3formal@this@0@@1 ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes call3formal@this@0)) ($Box SeqType |f##0@0|)))) (or (_module.__default.AssignmentCompatible call3formal@this@0@@1 ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes call3formal@this@0)) ($Box SeqType |f##0@0|)))) (let ((|r#0@@5| (_module.Object.region call3formal@this@0@@1)))
 (=> (_module.Mode.Imm_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes call3formal@this@0)) ($Box SeqType |f##0@0|)))) (_module.Region.Frozen_q |r#0@@5|)))))) (=> (=> (|_module.__default.AssignmentCompatible#canCall| call3formal@this@0@@1 ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes call3formal@this@0)) ($Box SeqType |f##0@0|)))) (or (_module.__default.AssignmentCompatible call3formal@this@0@@1 ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes call3formal@this@0)) ($Box SeqType |f##0@0|)))) (let ((|r#0@@6| (_module.Object.region call3formal@this@0@@1)))
 (=> (_module.Mode.Imm_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes call3formal@this@0)) ($Box SeqType |f##0@0|)))) (_module.Region.Frozen_q |r#0@@6|))))) (and (=> (= (ControlFlow 0 2) (- 0 16)) (=> (|_module.__default.AssignmentCompatible#canCall| call3formal@this@0@@1 ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes call3formal@this@0)) ($Box SeqType |f##0@0|)))) (or (_module.__default.AssignmentCompatible call3formal@this@0@@1 ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes call3formal@this@0)) ($Box SeqType |f##0@0|)))) (let ((|r#0@@7| (_module.Object.region call3formal@this@0@@1)))
 (=> (not (_module.Mode.Imm_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes call3formal@this@0)) ($Box SeqType |f##0@0|))))) (=> (_module.Mode.Iso_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes call3formal@this@0)) ($Box SeqType |f##0@0|)))) (_module.Region.Isolate_q |r#0@@7|))))))) (=> (=> (|_module.__default.AssignmentCompatible#canCall| call3formal@this@0@@1 ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes call3formal@this@0)) ($Box SeqType |f##0@0|)))) (or (_module.__default.AssignmentCompatible call3formal@this@0@@1 ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes call3formal@this@0)) ($Box SeqType |f##0@0|)))) (let ((|r#0@@8| (_module.Object.region call3formal@this@0@@1)))
 (=> (not (_module.Mode.Imm_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes call3formal@this@0)) ($Box SeqType |f##0@0|))))) (=> (_module.Mode.Iso_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes call3formal@this@0)) ($Box SeqType |f##0@0|)))) (_module.Region.Isolate_q |r#0@@8|)))))) (and (=> (= (ControlFlow 0 2) (- 0 15)) (=> (|_module.__default.AssignmentCompatible#canCall| call3formal@this@0@@1 ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes call3formal@this@0)) ($Box SeqType |f##0@0|)))) (or (_module.__default.AssignmentCompatible call3formal@this@0@@1 ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes call3formal@this@0)) ($Box SeqType |f##0@0|)))) (let ((|r#0@@9| (_module.Object.region call3formal@this@0@@1)))
 (=> (not (_module.Mode.Imm_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes call3formal@this@0)) ($Box SeqType |f##0@0|))))) (=> (not (_module.Mode.Iso_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes call3formal@this@0)) ($Box SeqType |f##0@0|))))) (=> (_module.Mode.Mut_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes call3formal@this@0)) ($Box SeqType |f##0@0|)))) (_module.Region.Heap_q |r#0@@9|)))))))) (=> (=> (|_module.__default.AssignmentCompatible#canCall| call3formal@this@0@@1 ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes call3formal@this@0)) ($Box SeqType |f##0@0|)))) (or (_module.__default.AssignmentCompatible call3formal@this@0@@1 ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes call3formal@this@0)) ($Box SeqType |f##0@0|)))) (let ((|r#0@@10| (_module.Object.region call3formal@this@0@@1)))
 (=> (not (_module.Mode.Imm_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes call3formal@this@0)) ($Box SeqType |f##0@0|))))) (=> (not (_module.Mode.Iso_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes call3formal@this@0)) ($Box SeqType |f##0@0|))))) (=> (_module.Mode.Mut_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes call3formal@this@0)) ($Box SeqType |f##0@0|)))) (_module.Region.Heap_q |r#0@@10|))))))) (and (=> (= (ControlFlow 0 2) (- 0 14)) (=> (|_module.__default.AssignmentCompatible#canCall| call3formal@this@0@@1 ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes call3formal@this@0)) ($Box SeqType |f##0@0|)))) (or (_module.__default.AssignmentCompatible call3formal@this@0@@1 ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes call3formal@this@0)) ($Box SeqType |f##0@0|)))) (let ((|r#0@@11| (_module.Object.region call3formal@this@0@@1)))
 (=> (not (_module.Mode.Imm_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes call3formal@this@0)) ($Box SeqType |f##0@0|))))) (=> (not (_module.Mode.Iso_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes call3formal@this@0)) ($Box SeqType |f##0@0|))))) (=> (not (_module.Mode.Mut_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes call3formal@this@0)) ($Box SeqType |f##0@0|))))) (=> (_module.Mode.Tmp_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes call3formal@this@0)) ($Box SeqType |f##0@0|)))) (_module.Region.Stack_q |r#0@@11|))))))))) (=> (=> (|_module.__default.AssignmentCompatible#canCall| call3formal@this@0@@1 ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes call3formal@this@0)) ($Box SeqType |f##0@0|)))) (or (_module.__default.AssignmentCompatible call3formal@this@0@@1 ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes call3formal@this@0)) ($Box SeqType |f##0@0|)))) (let ((|r#0@@12| (_module.Object.region call3formal@this@0@@1)))
 (=> (not (_module.Mode.Imm_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes call3formal@this@0)) ($Box SeqType |f##0@0|))))) (=> (not (_module.Mode.Iso_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes call3formal@this@0)) ($Box SeqType |f##0@0|))))) (=> (not (_module.Mode.Mut_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes call3formal@this@0)) ($Box SeqType |f##0@0|))))) (=> (_module.Mode.Tmp_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes call3formal@this@0)) ($Box SeqType |f##0@0|)))) (_module.Region.Stack_q |r#0@@12|)))))))) (and (=> (= (ControlFlow 0 2) (- 0 13)) (=> (|_module.__default.AssignmentCompatible#canCall| call3formal@this@0@@1 ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes call3formal@this@0)) ($Box SeqType |f##0@0|)))) (or (_module.__default.AssignmentCompatible call3formal@this@0@@1 ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes call3formal@this@0)) ($Box SeqType |f##0@0|)))) (let ((|r#0@@13| (_module.Object.region call3formal@this@0@@1)))
 (=> (not (_module.Mode.Imm_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes call3formal@this@0)) ($Box SeqType |f##0@0|))))) (=> (not (_module.Mode.Iso_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes call3formal@this@0)) ($Box SeqType |f##0@0|))))) (=> (not (_module.Mode.Mut_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes call3formal@this@0)) ($Box SeqType |f##0@0|))))) (=> (not (_module.Mode.Tmp_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes call3formal@this@0)) ($Box SeqType |f##0@0|))))) (or (_module.Region.Heap_q |r#0@@13|) (_module.Region.Stack_q |r#0@@13|)))))))))) (=> (=> (|_module.__default.AssignmentCompatible#canCall| call3formal@this@0@@1 ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes call3formal@this@0)) ($Box SeqType |f##0@0|)))) (or (_module.__default.AssignmentCompatible call3formal@this@0@@1 ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes call3formal@this@0)) ($Box SeqType |f##0@0|)))) (let ((|r#0@@14| (_module.Object.region call3formal@this@0@@1)))
 (=> (not (_module.Mode.Imm_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes call3formal@this@0)) ($Box SeqType |f##0@0|))))) (=> (not (_module.Mode.Iso_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes call3formal@this@0)) ($Box SeqType |f##0@0|))))) (=> (not (_module.Mode.Mut_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes call3formal@this@0)) ($Box SeqType |f##0@0|))))) (=> (not (_module.Mode.Tmp_q ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes call3formal@this@0)) ($Box SeqType |f##0@0|))))) (or (_module.Region.Heap_q |r#0@@14|) (_module.Region.Stack_q |r#0@@14|))))))))) (and (=> (= (ControlFlow 0 2) (- 0 12)) (_module.Memory.Valid reveal__module.Memory.Valid $Heap@6 call1formal@this@0)) (=> (_module.Memory.Valid reveal__module.Memory.Valid $Heap@6 call1formal@this@0) (=> (and (and ($IsGoodHeap $Heap@7) ($IsHeapAnchor $Heap@7)) (and (forall (($o@@51 T@U) ($f@@32 T@U) ) (!  (=> (or (not (= $o@@51 null)) (not true)) (=> (and (= $o@@51 call1formal@this@0) (or (= $f@@32 _module.Memory.objects) (= $f@@32 alloc))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@51) $f@@32) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@51) $f@@32))))
 :qid |gitissue3855dfy.447:13|
 :skolemid |1064|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@51) $f@@32))
)) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 call3formal@this@0) _module.Object.fields))) ($Box SeqType |f##0@0|)))) (=> (and (and (and (= ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 call3formal@this@0) _module.Object.fields))) ($Box SeqType |f##0@0|))) call3formal@this@0@@1) (forall (($o@@52 T@U) ($f@@33 T@U) ) (!  (=> (or (not (= $o@@52 null)) (not true)) (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 call1formal@this@0) _module.Memory.objects)) ($Box refType $o@@52)) (or (not (= $o@@52 call3formal@this@0)) (not true))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@52) $f@@33) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@52) $f@@33))))
 :qid |gitissue3855dfy.450:13|
 :skolemid |1065|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@52) $f@@33))
))) (and (|Map#Equal| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 call3formal@this@0) _module.Object.fields)) (|Map#Build| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call3formal@this@0) _module.Object.fields)) ($Box SeqType |f##0@0|) ($Box refType call3formal@this@0@@1))) (|_module.Memory.Valid2#canCall| $Heap@6 $Heap@7 call1formal@this@0))) (and (and (_module.Memory.Valid2 reveal__module.Memory.Valid2 $Heap@6 $Heap@7 call1formal@this@0) (forall (($o@@53 T@U) ) (!  (=> (and (or (not (= $o@@53 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@53) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@53) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@53)) (= $o@@53 call3formal@this@0)))
 :qid |gitissue3855dfy.417:26|
 :skolemid |1066|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@53))
))) (and (forall (($o@@54 T@U) ($f@@34 T@U) ) (!  (=> (and (or (not (= $o@@54 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@54) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@54) $f@@34) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@54) $f@@34)) (and (= $o@@54 call3formal@this@0) (= $f@@34 _module.Object.fields))))
 :qid |gitissue3855dfy.417:26|
 :skolemid |1067|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@54) $f@@34))
)) ($HeapSucc $Heap@6 $Heap@7)))) (and (=> (= (ControlFlow 0 2) (- 0 11)) true) (and (=> (= (ControlFlow 0 2) (- 0 10)) (or (not (= call1formal@this@0 null)) (not true))) (=> (or (not (= call1formal@this@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 9)) true) (=> (= |n##0@0| (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 120))) ($Box charType (|char#FromInt| 49))))) (and (=> (= (ControlFlow 0 2) (- 0 8)) true) (=> (= |m##0@0| (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 120))) ($Box charType (|char#FromInt| 50))))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (forall (($o@@55 T@U) ($f@@35 T@U) ) (!  (=> (and (and (or (not (= $o@@55 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@55) alloc)))) (or (and (= $o@@55 call3formal@this@0) (= $f@@35 _module.Object.fields)) (and (= $o@@55 call3formal@this@0@@0) (= $f@@35 _module.Object.fields)))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@55 $f@@35)))
 :qid |gitissue3855dfy.1337:26|
 :skolemid |677|
))) (=> (forall (($o@@56 T@U) ($f@@36 T@U) ) (!  (=> (and (and (or (not (= $o@@56 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@56) alloc)))) (or (and (= $o@@56 call3formal@this@0) (= $f@@36 _module.Object.fields)) (and (= $o@@56 call3formal@this@0@@0) (= $f@@36 _module.Object.fields)))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@56 $f@@36)))
 :qid |gitissue3855dfy.1337:26|
 :skolemid |677|
)) (=> (and ($Is DatatypeTypeType |call6formal@r#0| Tclass._module.Status) ($IsAlloc DatatypeTypeType |call6formal@r#0| Tclass._module.Status $Heap@@28)) (and (=> (= (ControlFlow 0 2) (- 0 6)) (not (|Seq#Equal| |n##0@0| |m##0@0|))) (=> (not (|Seq#Equal| |n##0@0| |m##0@0|)) (and (=> (= (ControlFlow 0 2) (- 0 5)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 call1formal@this@0) _module.Memory.objects)) ($Box refType call3formal@this@0))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 call1formal@this@0) _module.Memory.objects)) ($Box refType call3formal@this@0)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 call1formal@this@0) _module.Memory.objects)) ($Box refType call3formal@this@0@@0))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 call1formal@this@0) _module.Memory.objects)) ($Box refType call3formal@this@0@@0)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (_module.Memory.Valid reveal__module.Memory.Valid $Heap@7 call1formal@this@0)) (=> (_module.Memory.Valid reveal__module.Memory.Valid $Heap@7 call1formal@this@0) (=> (and (and (and ($IsGoodHeap $Heap@8) ($IsHeapAnchor $Heap@8)) (and ($Is DatatypeTypeType |call6formal@r#0@0| Tclass._module.Status) ($IsAlloc DatatypeTypeType |call6formal@r#0@0| Tclass._module.Status $Heap@8))) (and (and (forall (($o@@57 T@U) ($f@@37 T@U) ) (!  (=> (or (not (= $o@@57 null)) (not true)) (=> (and (= $o@@57 call1formal@this@0) (or (= $f@@37 _module.Memory.objects) (= $f@@37 alloc))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@57) $f@@37) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@57) $f@@37))))
 :qid |gitissue3855dfy.916:13|
 :skolemid |1323|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@57) $f@@37))
)) (=> (_module.Status.Success_q |call6formal@r#0@0|) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 call3formal@this@0) _module.Object.fields))) ($Box SeqType |n##0@0|)))) (and (=> (_module.Status.Success_q |call6formal@r#0@0|) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 call3formal@this@0@@0) _module.Object.fields))) ($Box SeqType |m##0@0|))) (=> (_module.Status.Success_q |call6formal@r#0@0|) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 call3formal@this@0@@0) _module.Object.fields))) ($Box SeqType |m##0@0|)))))) (=> (and (and (and (and (=> (_module.Status.Success_q |call6formal@r#0@0|) (= ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 call3formal@this@0) _module.Object.fields))) ($Box SeqType |n##0@0|))) ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 call3formal@this@0@@0) _module.Object.fields))) ($Box SeqType |m##0@0|))))) (=> (_module.Status.Success_q |call6formal@r#0@0|) (= ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 call3formal@this@0) _module.Object.fields))) ($Box SeqType |n##0@0|))) ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 call3formal@this@0@@0) _module.Object.fields))) ($Box SeqType |m##0@0|)))))) (and (|_module.Memory.betterCopyDynamicCheck#canCall| $Heap@7 call1formal@this@0 call3formal@this@0 |n##0@0| call3formal@this@0@@0 |m##0@0|) (= (_module.Status.Success_q |call6formal@r#0@0|) (_module.Memory.betterCopyDynamicCheck $Heap@7 call1formal@this@0 call3formal@this@0 |n##0@0| call3formal@this@0@@0 |m##0@0|)))) (and (and (|_module.Memory.Valid2#canCall| $Heap@7 $Heap@8 call1formal@this@0) (_module.Memory.Valid2 reveal__module.Memory.Valid2 $Heap@7 $Heap@8 call1formal@this@0)) (and (forall (($o@@58 T@U) ) (!  (=> (and (or (not (= $o@@58 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@58) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@58) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@58)) (or (= $o@@58 call3formal@this@0) (= $o@@58 call3formal@this@0@@0))))
 :qid |gitissue3855dfy.896:10|
 :skolemid |1324|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@58))
)) (forall (($o@@59 T@U) ($f@@38 T@U) ) (!  (=> (and (or (not (= $o@@59 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@59) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@59) $f@@38) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@59) $f@@38)) (or (and (= $o@@59 call3formal@this@0) (= $f@@38 _module.Object.fields)) (and (= $o@@59 call3formal@this@0@@0) (= $f@@38 _module.Object.fields)))))
 :qid |gitissue3855dfy.896:10|
 :skolemid |1325|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@59) $f@@38))
))))) (and (and (and ($HeapSucc $Heap@7 $Heap@8) (= |##x#0@0| (_module.Status.Success_q |call6formal@r#0@0|))) (and ($IsAlloc boolType (bool_2_U |##x#0@0|) TBool $Heap@8) (|_module.__default.not#canCall| (_module.Status.Success_q |call6formal@r#0@0|)))) (and (and (|_module.__default.not#canCall| (_module.Status.Success_q |call6formal@r#0@0|)) (= (ControlFlow 0 2) (- 0 1))) (|_module.__default.not#canCall| (_module.Status.Success_q |call6formal@r#0@0|))))) (or (_module.__default.not (_module.Status.Success_q |call6formal@r#0@0|)) (not (_module.Status.Success_q |call6formal@r#0@0|)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@28) ($IsHeapAnchor $Heap@@28)) (=> (and (and (and (and (=> |defass#memory#0| (and ($Is refType |memory#0| Tclass._module.Memory) ($IsAlloc refType |memory#0| Tclass._module.Memory $Heap@@28))) true) (and (=> |defass#i1#0| (and ($Is refType |i1#0| Tclass._module.Object) ($IsAlloc refType |i1#0| Tclass._module.Object $Heap@@28))) true)) (and (and (=> |defass#i2#0| (and ($Is refType |i2#0| Tclass._module.Object) ($IsAlloc refType |i2#0| Tclass._module.Object $Heap@@28))) true) (and (=> |defass#m1#0| (and ($Is refType |m1#0| Tclass._module.Object) ($IsAlloc refType |m1#0| Tclass._module.Object $Heap@@28))) true))) (and (and (and ($Is DatatypeTypeType |r#0@@4| Tclass._module.Status) ($IsAlloc DatatypeTypeType |r#0@@4| Tclass._module.Status $Heap@@28)) true) (and (= 11 $FunctionContextHeight) (= (ControlFlow 0 60) 2)))) anon0_correct))))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(pop 1)
; Timed out
