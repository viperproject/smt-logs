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
(declare-fun TChar () T@U)
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
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$Mode () T@U)
(declare-fun tytagFamily$Object () T@U)
(declare-fun tytagFamily$Region () T@U)
(declare-fun tytagFamily$Memory () T@U)
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
(declare-fun Tclass._module.Edge () T@U)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._module.Object? () T@U)
(declare-fun Tclass._module.Region () T@U)
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
(declare-fun |lambda#54| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun |Map#Glue| (T@U T@U T@U) T@U)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun _module.Edge.f (T@U) T@U)
(declare-fun _module.Edge.n (T@U) T@U)
(declare-fun _module.Edge.t (T@U) T@U)
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
(declare-fun |Seq#Empty| () T@U)
(declare-fun |#_module.Mode.Imm| () T@U)
(declare-fun |#_module.Mode.Iso| () T@U)
(declare-fun |#_module.Mode.Mut| () T@U)
(declare-fun |#_module.Mode.Tmp| () T@U)
(declare-fun |#_module.Mode.Sus| () T@U)
(declare-fun |#_module.Region.Frozen| () T@U)
(declare-fun |#_module.Region.Isolate| () T@U)
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
(declare-fun _module.Object.fieldModes (T@U) T@U)
(declare-fun MapType () T@T)
(declare-fun _module.Object.fields () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.Object.outgoing (T@U T@U) T@U)
(declare-fun |_module.Object.outgoing#canCall| (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun _module.Mode.Sus_q (T@U) Bool)
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
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#4| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Map#Card| (T@U) Int)
(declare-fun |Map#Empty| () T@U)
(declare-fun |Map#Values| (T@U) T@U)
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
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun BoxRank (T@U) Int)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |Map#Items| (T@U) T@U)
(declare-fun |_module.Object.AllOutgoingReferencesAreVenice#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.AllOutgoingReferencesAreVenice (T@U T@U) Bool)
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
(assert (distinct TChar TagChar TagSet TagSeq TagMap alloc allocName |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass._module.Mode Tagclass._module.Object Tagclass._module.Region Tagclass._module.Memory Tagclass._module.Memory? Tagclass._module.Object? |##_module.Mode.Imm| |##_module.Mode.Iso| |##_module.Mode.Mut| |##_module.Mode.Tmp| |##_module.Mode.Sus| |##_module.Region.Frozen| |##_module.Region.Heap| |##_module.Region.Stack| |##_module.Region.Frame| |##_module.Region.Isolate| class._module.Object? |##_module.Edge.Edge| Tagclass._module.Edge class._module.Memory? |tytagFamily$_tuple#2| tytagFamily$Mode tytagFamily$Object tytagFamily$Region tytagFamily$Memory tytagFamily$Edge field$fields field$objects)
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
(assert (= (Tag TChar) TagChar))
(assert (= (DeclName alloc) allocName))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) (|a#6#2#0| T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| |a#6#1#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#6#1#0| i))) (DtRank (|#_module.Edge.Edge| |a#6#0#0| |a#6#1#0| |a#6#2#0|))))
 :qid |gitissue3855dfy.149:22|
 :skolemid |817|
 :pattern ( (|Seq#Index| |a#6#1#0| i) (|#_module.Edge.Edge| |a#6#0#0| |a#6#1#0| |a#6#2#0|))
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
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((this@@0 T@U) (|t#0@@1| T@U) (|edges#0| T@U) ) (!  (=> (or (|_module.Memory.refCountEdges#canCall| this@@0 |t#0@@1| |edges#0|) (and (< 3 $FunctionContextHeight) (and (and (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass._module.Memory)) ($Is refType |t#0@@1| Tclass._module.Object)) ($Is SetType |edges#0| (TSet Tclass._module.Edge))))) (and (|_module.Memory.incomingEdges#canCall| this@@0 |t#0@@1| |edges#0|) (= (_module.Memory.refCountEdges this@@0 |t#0@@1| |edges#0|) (|Set#Card| (_module.Memory.incomingEdges this@@0 |t#0@@1| |edges#0|)))))
 :qid |gitissue3855dfy.251:12|
 :skolemid |910|
 :pattern ( (_module.Memory.refCountEdges this@@0 |t#0@@1| |edges#0|))
))))
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
(assert (forall ((a T@U) (b T@U) ) (!  (=> (and (_module.Region.Heap_q a) (_module.Region.Heap_q b)) (= (|_module.Region#Equal| a b) (= (_module.Region.region a) (_module.Region.region b))))
 :qid |unknown.0:0|
 :skolemid |733|
 :pattern ( (|_module.Region#Equal| a b) (_module.Region.Heap_q a))
 :pattern ( (|_module.Region#Equal| a b) (_module.Region.Heap_q b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (and (_module.Region.Stack_q a@@0) (_module.Region.Stack_q b@@0)) (= (|_module.Region#Equal| a@@0 b@@0) (= (_module.Region.region a@@0) (_module.Region.region b@@0))))
 :qid |unknown.0:0|
 :skolemid |734|
 :pattern ( (|_module.Region#Equal| a@@0 b@@0) (_module.Region.Stack_q a@@0))
 :pattern ( (|_module.Region#Equal| a@@0 b@@0) (_module.Region.Stack_q b@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (and (_module.Region.Frame_q a@@1) (_module.Region.Frame_q b@@1)) (= (|_module.Region#Equal| a@@1 b@@1) (= (_module.Region.prev a@@1) (_module.Region.prev b@@1))))
 :qid |unknown.0:0|
 :skolemid |735|
 :pattern ( (|_module.Region#Equal| a@@1 b@@1) (_module.Region.Frame_q a@@1))
 :pattern ( (|_module.Region#Equal| a@@1 b@@1) (_module.Region.Frame_q b@@1))
)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|$w#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#54| |l#0| |l#1|) |$w#0|))  (and ($IsBox |$w#0| |l#0|) (|Set#IsMember| |l#1| |$w#0|)))
 :qid |gitissue3855dfy.19:10|
 :skolemid |1418|
 :pattern ( (MapType0Select BoxType boolType (|lambda#54| |l#0| |l#1|) |$w#0|))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) (t T@U) ) (! (= (|Map#Domain| (|Map#Glue| a@@2 b@@2 t)) a@@2)
 :qid |DafnyPreludebpl.1443:15|
 :skolemid |286|
 :pattern ( (|Map#Domain| (|Map#Glue| a@@2 b@@2 t)))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) (t@@0 T@U) ) (! (= (|Map#Elements| (|Map#Glue| a@@3 b@@3 t@@0)) b@@3)
 :qid |DafnyPreludebpl.1446:15|
 :skolemid |287|
 :pattern ( (|Map#Elements| (|Map#Glue| a@@3 b@@3 t@@0)))
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
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |468|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert  (=> (< 2 $FunctionContextHeight) (forall (($h T@U) ($o@@0 T@U) ) (!  (=> (and (and ($IsGoodHeap $h) (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@0) alloc)))) ($IsAlloc DatatypeTypeType (_module.Object.region $o@@0) Tclass._module.Region $h))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |741|
 :pattern ( (_module.Object.region $o@@0) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@0) alloc)))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((this@@2 T@U) (|edges#0@@0| T@U) ) (!  (=> (or (|_module.Memory.justHeapExternalEdges#canCall| this@@2 |edges#0@@0|) (and (< 3 $FunctionContextHeight) (and (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 Tclass._module.Memory)) ($Is SetType |edges#0@@0| (TSet Tclass._module.Edge))))) (and (forall ((|e#0| T@U) ) (!  (=> ($Is DatatypeTypeType |e#0| Tclass._module.Edge) (=> (|Set#IsMember| |edges#0@@0| ($Box DatatypeTypeType |e#0|)) (and (and (and (|$IsA#_module.Region| (_module.Object.region (_module.Edge.f |e#0|))) (|$IsA#_module.Region| (_module.Object.region (_module.Edge.t |e#0|)))) (and (_module.Edge.Edge_q |e#0|) (_module.Edge.Edge_q |e#0|))) (=> (not (|_module.Region#Equal| (_module.Object.region (_module.Edge.f |e#0|)) (_module.Object.region (_module.Edge.t |e#0|)))) (_module.Edge.Edge_q |e#0|)))))
 :qid |gitissue3855dfy.348:9|
 :skolemid |1012|
 :pattern ( (_module.Edge.t |e#0|))
 :pattern ( (_module.Edge.f |e#0|))
 :pattern ( (|Set#IsMember| |edges#0@@0| ($Box DatatypeTypeType |e#0|)))
)) (= (_module.Memory.justHeapExternalEdges this@@2 |edges#0@@0|) (|Set#FromBoogieMap| (|lambda#76| Tclass._module.Edge |edges#0@@0|)))))
 :qid |gitissue3855dfy.345:12|
 :skolemid |1013|
 :pattern ( (_module.Memory.justHeapExternalEdges this@@2 |edges#0@@0|))
))))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($Heap@@1 T@U) (this@@3 T@U) (|os#0@@0| T@U) ) (!  (=> (or (|_module.Memory.wholeEnchilada#canCall| $Heap@@1 this@@3 |os#0@@0|) (and (< 6 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@1) (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 Tclass._module.Memory) ($IsAlloc refType this@@3 Tclass._module.Memory $Heap@@1)))) ($Is SetType |os#0@@0| (TSet Tclass._module.Object))))) (and (and (|_module.Memory.isosRefCountZeroOrOne#canCall| $Heap@@1 this@@3 |os#0@@0|) (=> (_module.Memory.isosRefCountZeroOrOne $Heap@@1 this@@3 |os#0@@0|) (|_module.Memory.heapExternalsZeroOrOne#canCall| $Heap@@1 this@@3 |os#0@@0|))) (= (_module.Memory.wholeEnchilada $Heap@@1 this@@3 |os#0@@0|)  (and (_module.Memory.isosRefCountZeroOrOne $Heap@@1 this@@3 |os#0@@0|) (_module.Memory.heapExternalsZeroOrOne $Heap@@1 this@@3 |os#0@@0|)))))
 :qid |gitissue3855dfy.265:13|
 :skolemid |930|
 :pattern ( (_module.Memory.wholeEnchilada $Heap@@1 this@@3 |os#0@@0|) ($IsGoodHeap $Heap@@1))
))))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#_module.Mode.Imm|) |##_module.Mode.Imm|))
(assert (= (DatatypeCtorId |#_module.Mode.Iso|) |##_module.Mode.Iso|))
(assert (= (DatatypeCtorId |#_module.Mode.Mut|) |##_module.Mode.Mut|))
(assert (= (DatatypeCtorId |#_module.Mode.Tmp|) |##_module.Mode.Tmp|))
(assert (= (DatatypeCtorId |#_module.Mode.Sus|) |##_module.Mode.Sus|))
(assert (= (DatatypeCtorId |#_module.Region.Frozen|) |##_module.Region.Frozen|))
(assert (= (DatatypeCtorId |#_module.Region.Isolate|) |##_module.Region.Isolate|))
(assert (forall (($o@@1 T@U) ) (! (= ($Is refType $o@@1 Tclass._module.Object?)  (or (= $o@@1 null) (= (dtype $o@@1) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |738|
 :pattern ( ($Is refType $o@@1 Tclass._module.Object?))
)))
(assert (forall (($o@@2 T@U) ) (! (= ($Is refType $o@@2 Tclass._module.Memory?)  (or (= $o@@2 null) (= (dtype $o@@2) Tclass._module.Memory?)))
 :qid |unknown.0:0|
 :skolemid |824|
 :pattern ( ($Is refType $o@@2 Tclass._module.Memory?))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((this@@4 T@U) (|t#0@@2| T@U) (|edges#0@@1| T@U) ) (!  (=> (or (|_module.Memory.incomingEdges#canCall| this@@4 |t#0@@2| |edges#0@@1|) (and (< 2 $FunctionContextHeight) (and (and (and (or (not (= this@@4 null)) (not true)) ($Is refType this@@4 Tclass._module.Memory)) ($Is refType |t#0@@2| Tclass._module.Object)) ($Is SetType |edges#0@@1| (TSet Tclass._module.Edge))))) (and (|Set#Subset| (_module.Memory.incomingEdges this@@4 |t#0@@2| |edges#0@@1|) |edges#0@@1|) ($Is SetType (_module.Memory.incomingEdges this@@4 |t#0@@2| |edges#0@@1|) (TSet Tclass._module.Edge))))
 :qid |gitissue3855dfy.245:12|
 :skolemid |898|
 :pattern ( (_module.Memory.incomingEdges this@@4 |t#0@@2| |edges#0@@1|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((this@@5 T@U) (|o#0@@2| T@U) (|edges#0@@2| T@U) ) (!  (=> (or (|_module.Memory.externalEdges#canCall| this@@5 |o#0@@2| |edges#0@@2|) (and (< 3 $FunctionContextHeight) (and (and (and (or (not (= this@@5 null)) (not true)) ($Is refType this@@5 Tclass._module.Memory)) ($Is DatatypeTypeType |o#0@@2| Tclass._module.Region)) ($Is SetType |edges#0@@2| (TSet Tclass._module.Edge))))) (and (|Set#Subset| (_module.Memory.externalEdges this@@5 |o#0@@2| |edges#0@@2|) |edges#0@@2|) ($Is SetType (_module.Memory.externalEdges this@@5 |o#0@@2| |edges#0@@2|) (TSet Tclass._module.Edge))))
 :qid |gitissue3855dfy.336:12|
 :skolemid |999|
 :pattern ( (_module.Memory.externalEdges this@@5 |o#0@@2| |edges#0@@2|))
))))
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
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((this@@6 T@U) (|t#0@@3| T@U) (|edges#0@@3| T@U) ) (!  (=> (or (|_module.Memory.refCountEdges#canCall| this@@6 |t#0@@3| |edges#0@@3|) (and (< 3 $FunctionContextHeight) (and (and (and (or (not (= this@@6 null)) (not true)) ($Is refType this@@6 Tclass._module.Memory)) ($Is refType |t#0@@3| Tclass._module.Object)) ($Is SetType |edges#0@@3| (TSet Tclass._module.Edge))))) (<= (LitInt 0) (_module.Memory.refCountEdges this@@6 |t#0@@3| |edges#0@@3|)))
 :qid |gitissue3855dfy.251:12|
 :skolemid |908|
 :pattern ( (_module.Memory.refCountEdges this@@6 |t#0@@3| |edges#0@@3|))
))))
(assert (forall ((d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 Tclass._module.Edge) (_module.Edge.Edge_q d@@0))
 :qid |unknown.0:0|
 :skolemid |821|
 :pattern ( (_module.Edge.Edge_q d@@0) ($Is DatatypeTypeType d@@0 Tclass._module.Edge))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((this@@7 T@U) (|edges#0@@4| T@U) ) (!  (=> (or (|_module.Memory.heapExternalsZeroOrOneEdges#canCall| this@@7 (Lit SetType |edges#0@@4|)) (and (< 4 $FunctionContextHeight) (and (and (or (not (= this@@7 null)) (not true)) ($Is refType this@@7 Tclass._module.Memory)) ($Is SetType |edges#0@@4| (TSet Tclass._module.Edge))))) (and (and (|_module.Memory.justHeapExternalEdges#canCall| this@@7 (Lit SetType |edges#0@@4|)) (let ((|heapExternalEdges#1| (_module.Memory.justHeapExternalEdges this@@7 (Lit SetType |edges#0@@4|))))
 (and (forall ((|he#1| T@U) ) (!  (=> ($Is DatatypeTypeType |he#1| Tclass._module.Edge) (=> (|Set#IsMember| |heapExternalEdges#1| ($Box DatatypeTypeType |he#1|)) (_module.Edge.Edge_q |he#1|)))
 :qid |gitissue3855dfy.282:39|
 :skolemid |950|
 :pattern ( (_module.Edge.t |he#1|))
 :pattern ( (|Set#IsMember| |heapExternalEdges#1| ($Box DatatypeTypeType |he#1|)))
)) (let ((|allRelevantHeapRegions#1| (|Set#FromBoogieMap| (|lambda#52| Tclass._module.Edge |heapExternalEdges#1| |heapExternalEdges#1|))))
(forall ((|r#0@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |r#0@@0| Tclass._module.Region) (=> (|Set#IsMember| |allRelevantHeapRegions#1| ($Box DatatypeTypeType |r#0@@0|)) (|_module.Memory.externalEdges#canCall| this@@7 |r#0@@0| |heapExternalEdges#1|)))
 :qid |gitissue3855dfy.285:11|
 :skolemid |951|
 :pattern ( (_module.Memory.externalEdges this@@7 |r#0@@0| |heapExternalEdges#1|))
 :pattern ( (|Set#IsMember| |allRelevantHeapRegions#1| ($Box DatatypeTypeType |r#0@@0|)))
)))))) (= (_module.Memory.heapExternalsZeroOrOneEdges this@@7 (Lit SetType |edges#0@@4|)) (let ((|heapExternalEdges#1@@0| (_module.Memory.justHeapExternalEdges this@@7 (Lit SetType |edges#0@@4|))))
(let ((|allRelevantHeapRegions#1@@0| (|Set#FromBoogieMap| (|lambda#52| Tclass._module.Edge |heapExternalEdges#1@@0| |heapExternalEdges#1@@0|))))
(let ((|heapExternalEdgesPartitionedByRegion#1| (|Map#Glue| (|Set#FromBoogieMap| (|lambda#54| Tclass._module.Region |allRelevantHeapRegions#1@@0|)) (|lambda#55| this@@7 |heapExternalEdges#1@@0|) (TMap Tclass._module.Region (TSet Tclass._module.Edge)))))
(forall ((|hr#1| T@U) ) (!  (=> (and ($Is DatatypeTypeType |hr#1| Tclass._module.Region) (|Set#IsMember| (|Map#Domain| |heapExternalEdgesPartitionedByRegion#1|) ($Box DatatypeTypeType |hr#1|))) (<= (|Set#Card| ($Unbox SetType (MapType0Select BoxType BoxType (|Map#Elements| |heapExternalEdgesPartitionedByRegion#1|) ($Box DatatypeTypeType |hr#1|)))) (LitInt 1)))
 :qid |gitissue3855dfy.286:12|
 :skolemid |949|
 :pattern ( ($Unbox SetType (MapType0Select BoxType BoxType (|Map#Elements| |heapExternalEdgesPartitionedByRegion#1|) ($Box DatatypeTypeType |hr#1|))))
 :pattern ( (|Set#IsMember| (|Map#Domain| |heapExternalEdgesPartitionedByRegion#1|) ($Box DatatypeTypeType |hr#1|)))
))))))))
 :qid |gitissue3855dfy.280:13|
 :weight 3
 :skolemid |953|
 :pattern ( (_module.Memory.heapExternalsZeroOrOneEdges this@@7 (Lit SetType |edges#0@@4|)))
))))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0@@0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0@@0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |456|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert ($Is DatatypeTypeType |#_module.Mode.Imm| Tclass._module.Mode))
(assert ($Is DatatypeTypeType |#_module.Mode.Iso| Tclass._module.Mode))
(assert ($Is DatatypeTypeType |#_module.Mode.Mut| Tclass._module.Mode))
(assert ($Is DatatypeTypeType |#_module.Mode.Tmp| Tclass._module.Mode))
(assert ($Is DatatypeTypeType |#_module.Mode.Sus| Tclass._module.Mode))
(assert ($Is DatatypeTypeType |#_module.Region.Frozen| Tclass._module.Region))
(assert ($Is DatatypeTypeType |#_module.Region.Isolate| Tclass._module.Region))
(assert (forall ((s T@U) ) (!  (and (= (= (|Set#Card| s) 0) (= s |Set#Empty|)) (=> (or (not (= (|Set#Card| s) 0)) (not true)) (exists ((x@@2 T@U) ) (! (|Set#IsMember| s x@@2)
 :qid |DafnyPreludebpl.678:20|
 :skolemid |126|
 :pattern ( (|Set#IsMember| s x@@2))
))))
 :qid |DafnyPreludebpl.674:15|
 :skolemid |127|
 :pattern ( (|Set#Card| s))
)))
(assert (= (Ctor MapType) 10))
(assert  (=> (< 2 $FunctionContextHeight) (forall (($o@@3 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) Tclass._module.Object?)) ($Is MapType (_module.Object.fieldModes $o@@3) (TMap (TSeq TChar) Tclass._module.Mode)))
 :qid |unknown.0:0|
 :skolemid |744|
 :pattern ( (_module.Object.fieldModes $o@@3))
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
(assert (forall (($o@@4 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@4 Tclass._module.Object? $h@@4)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |739|
 :pattern ( ($IsAlloc refType $o@@4 Tclass._module.Object? $h@@4))
)))
(assert (forall (($o@@5 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@5 Tclass._module.Memory? $h@@5)  (or (= $o@@5 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@5) alloc)))))
 :qid |unknown.0:0|
 :skolemid |825|
 :pattern ( ($IsAlloc refType $o@@5 Tclass._module.Memory? $h@@5))
)))
(assert  (=> (< 2 $FunctionContextHeight) (forall (($h@@6 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@6) alloc)))) ($IsAlloc MapType (_module.Object.fieldModes $o@@6) (TMap (TSeq TChar) Tclass._module.Mode) $h@@6))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |745|
 :pattern ( (_module.Object.fieldModes $o@@6) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@6) alloc)))
))))
(assert (forall ((a@@4 T@U) (b@@4 T@U) ) (! (= (|_module.Region#Equal| a@@4 b@@4) (= a@@4 b@@4))
 :qid |unknown.0:0|
 :skolemid |737|
 :pattern ( (|_module.Region#Equal| a@@4 b@@4))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((this@@8 T@U) (|edges#0@@5| T@U) ) (!  (=> (or (|_module.Memory.justHeapExternalEdges#canCall| (Lit refType this@@8) (Lit SetType |edges#0@@5|)) (and (< 3 $FunctionContextHeight) (and (and (or (not (= this@@8 null)) (not true)) ($Is refType this@@8 Tclass._module.Memory)) ($Is SetType |edges#0@@5| (TSet Tclass._module.Edge))))) (and (forall ((|e#2| T@U) ) (!  (=> ($Is DatatypeTypeType |e#2| Tclass._module.Edge) (=> (|Set#IsMember| (Lit SetType |edges#0@@5|) ($Box DatatypeTypeType |e#2|)) (and (and (and (|$IsA#_module.Region| (_module.Object.region (_module.Edge.f |e#2|))) (|$IsA#_module.Region| (_module.Object.region (_module.Edge.t |e#2|)))) (and (_module.Edge.Edge_q |e#2|) (_module.Edge.Edge_q |e#2|))) (=> (not (|_module.Region#Equal| (_module.Object.region (_module.Edge.f |e#2|)) (_module.Object.region (_module.Edge.t |e#2|)))) (_module.Edge.Edge_q |e#2|)))))
 :qid |gitissue3855dfy.348:9|
 :skolemid |1016|
 :pattern ( (_module.Edge.t |e#2|))
 :pattern ( (_module.Edge.f |e#2|))
 :pattern ( (|Set#IsMember| |edges#0@@5| ($Box DatatypeTypeType |e#2|)))
)) (= (_module.Memory.justHeapExternalEdges (Lit refType this@@8) (Lit SetType |edges#0@@5|)) (|Set#FromBoogieMap| (|lambda#76| Tclass._module.Edge (Lit SetType |edges#0@@5|))))))
 :qid |gitissue3855dfy.345:12|
 :weight 3
 :skolemid |1017|
 :pattern ( (_module.Memory.justHeapExternalEdges (Lit refType this@@8) (Lit SetType |edges#0@@5|)))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@2 T@U) (this@@9 T@U) (|os#0@@1| T@U) ) (!  (=> (or (|_module.Memory.OutgoingReferencesAreInThisHeap#canCall| $Heap@@2 this@@9 |os#0@@1|) (and (< 2 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@2) (and (or (not (= this@@9 null)) (not true)) (and ($Is refType this@@9 Tclass._module.Memory) ($IsAlloc refType this@@9 Tclass._module.Memory $Heap@@2)))) ($Is SetType |os#0@@1| (TSet Tclass._module.Object))))) (and (forall ((|o#0@@3| T@U) ) (!  (=> ($Is refType |o#0@@3| Tclass._module.Object) (=> (|Set#IsMember| |os#0@@1| ($Box refType |o#0@@3|)) (|_module.Object.outgoing#canCall| $Heap@@2 |o#0@@3|)))
 :qid |gitissue3855dfy.215:14|
 :skolemid |867|
 :pattern ( (_module.Object.outgoing $Heap@@2 |o#0@@3|))
 :pattern ( (|Set#IsMember| |os#0@@1| ($Box refType |o#0@@3|)))
)) (= (_module.Memory.OutgoingReferencesAreInThisHeap $Heap@@2 this@@9 |os#0@@1|) (forall ((|o#0@@4| T@U) ) (!  (=> (and ($Is refType |o#0@@4| Tclass._module.Object) (|Set#IsMember| |os#0@@1| ($Box refType |o#0@@4|))) (|Set#Subset| (_module.Object.outgoing $Heap@@2 |o#0@@4|) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@9) _module.Memory.objects))))
 :qid |gitissue3855dfy.215:14|
 :skolemid |866|
 :pattern ( (_module.Object.outgoing $Heap@@2 |o#0@@4|))
 :pattern ( (|Set#IsMember| |os#0@@1| ($Box refType |o#0@@4|)))
)))))
 :qid |gitissue3855dfy.210:13|
 :skolemid |868|
 :pattern ( (_module.Memory.OutgoingReferencesAreInThisHeap $Heap@@2 this@@9 |os#0@@1|) ($IsGoodHeap $Heap@@2))
))))
(assert (forall ((x@@3 Int) ) (! (= (LitInt x@@3) x@@3)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@3))
)))
(assert (forall ((x@@4 T@U) (T T@T) ) (! (= (Lit T x@@4) x@@4)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@4))
)))
(assert (forall ((a@@5 T@U) (b@@5 T@U) (t0@@0 T@U) (t1@@0 T@U) ) (!  (=> (forall ((bx T@U) ) (!  (=> (|Set#IsMember| a@@5 bx) (and ($IsBox bx t0@@0) ($IsBox (MapType0Select BoxType BoxType b@@5 bx) t1@@0)))
 :qid |DafnyPreludebpl.1452:11|
 :skolemid |288|
)) ($Is MapType (|Map#Glue| a@@5 b@@5 (TMap t0@@0 t1@@0)) (TMap t0@@0 t1@@0)))
 :qid |DafnyPreludebpl.1449:15|
 :skolemid |289|
 :pattern ( (|Map#Glue| a@@5 b@@5 (TMap t0@@0 t1@@0)))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((this@@10 T@U) (|edges#0@@6| T@U) ) (!  (=> (or (|_module.Memory.heapExternalsZeroOrOneEdges#canCall| (Lit refType this@@10) (Lit SetType |edges#0@@6|)) (and (< 4 $FunctionContextHeight) (and (and (or (not (= this@@10 null)) (not true)) ($Is refType this@@10 Tclass._module.Memory)) ($Is SetType |edges#0@@6| (TSet Tclass._module.Edge))))) (and (and (|_module.Memory.justHeapExternalEdges#canCall| (Lit refType this@@10) (Lit SetType |edges#0@@6|)) (let ((|heapExternalEdges#2| (Lit SetType (_module.Memory.justHeapExternalEdges (Lit refType this@@10) (Lit SetType |edges#0@@6|)))))
 (and (forall ((|he#2| T@U) ) (!  (=> ($Is DatatypeTypeType |he#2| Tclass._module.Edge) (=> (|Set#IsMember| |heapExternalEdges#2| ($Box DatatypeTypeType |he#2|)) (_module.Edge.Edge_q |he#2|)))
 :qid |gitissue3855dfy.282:39|
 :skolemid |956|
 :pattern ( (_module.Edge.t |he#2|))
 :pattern ( (|Set#IsMember| |heapExternalEdges#2| ($Box DatatypeTypeType |he#2|)))
)) (let ((|allRelevantHeapRegions#2| (|Set#FromBoogieMap| (|lambda#52| Tclass._module.Edge |heapExternalEdges#2| |heapExternalEdges#2|))))
(forall ((|r#0@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |r#0@@1| Tclass._module.Region) (=> (|Set#IsMember| |allRelevantHeapRegions#2| ($Box DatatypeTypeType |r#0@@1|)) (|_module.Memory.externalEdges#canCall| (Lit refType this@@10) |r#0@@1| |heapExternalEdges#2|)))
 :qid |gitissue3855dfy.285:11|
 :skolemid |957|
 :pattern ( (_module.Memory.externalEdges this@@10 |r#0@@1| |heapExternalEdges#2|))
 :pattern ( (|Set#IsMember| |allRelevantHeapRegions#2| ($Box DatatypeTypeType |r#0@@1|)))
)))))) (= (_module.Memory.heapExternalsZeroOrOneEdges (Lit refType this@@10) (Lit SetType |edges#0@@6|)) (let ((|heapExternalEdges#2@@0| (Lit SetType (_module.Memory.justHeapExternalEdges (Lit refType this@@10) (Lit SetType |edges#0@@6|)))))
(let ((|allRelevantHeapRegions#2@@0| (|Set#FromBoogieMap| (|lambda#52| Tclass._module.Edge |heapExternalEdges#2@@0| |heapExternalEdges#2@@0|))))
(let ((|heapExternalEdgesPartitionedByRegion#2| (|Map#Glue| (|Set#FromBoogieMap| (|lambda#54| Tclass._module.Region |allRelevantHeapRegions#2@@0|)) (|lambda#55| (Lit refType this@@10) |heapExternalEdges#2@@0|) (TMap Tclass._module.Region (TSet Tclass._module.Edge)))))
(forall ((|hr#2| T@U) ) (!  (=> (and ($Is DatatypeTypeType |hr#2| Tclass._module.Region) (|Set#IsMember| (|Map#Domain| |heapExternalEdgesPartitionedByRegion#2|) ($Box DatatypeTypeType |hr#2|))) (<= (|Set#Card| ($Unbox SetType (MapType0Select BoxType BoxType (|Map#Elements| |heapExternalEdgesPartitionedByRegion#2|) ($Box DatatypeTypeType |hr#2|)))) (LitInt 1)))
 :qid |gitissue3855dfy.286:12|
 :skolemid |955|
 :pattern ( ($Unbox SetType (MapType0Select BoxType BoxType (|Map#Elements| |heapExternalEdgesPartitionedByRegion#2|) ($Box DatatypeTypeType |hr#2|))))
 :pattern ( (|Set#IsMember| (|Map#Domain| |heapExternalEdgesPartitionedByRegion#2|) ($Box DatatypeTypeType |hr#2|)))
))))))))
 :qid |gitissue3855dfy.280:13|
 :weight 3
 :skolemid |959|
 :pattern ( (_module.Memory.heapExternalsZeroOrOneEdges (Lit refType this@@10) (Lit SetType |edges#0@@6|)))
))))
(assert (forall ((a@@6 T@U) (b@@6 T@U) ) (! (= (|Set#Subset| a@@6 b@@6) (forall ((o@@0 T@U) ) (!  (=> (|Set#IsMember| a@@6 o@@0) (|Set#IsMember| b@@6 o@@0))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a@@6 o@@0))
 :pattern ( (|Set#IsMember| b@@6 o@@0))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a@@6 b@@6))
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
(assert (forall ((x@@5 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@5)) x@@5)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@5))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((this@@11 T@U) (|t#0@@4| T@U) (|edges#0@@7| T@U) ) (!  (=> (or (|_module.Memory.refCountEdges#canCall| (Lit refType this@@11) (Lit refType |t#0@@4|) (Lit SetType |edges#0@@7|)) (and (< 3 $FunctionContextHeight) (and (and (and (or (not (= this@@11 null)) (not true)) ($Is refType this@@11 Tclass._module.Memory)) ($Is refType |t#0@@4| Tclass._module.Object)) ($Is SetType |edges#0@@7| (TSet Tclass._module.Edge))))) (and (|_module.Memory.incomingEdges#canCall| (Lit refType this@@11) (Lit refType |t#0@@4|) (Lit SetType |edges#0@@7|)) (= (_module.Memory.refCountEdges (Lit refType this@@11) (Lit refType |t#0@@4|) (Lit SetType |edges#0@@7|)) (|Set#Card| (Lit SetType (_module.Memory.incomingEdges (Lit refType this@@11) (Lit refType |t#0@@4|) (Lit SetType |edges#0@@7|)))))))
 :qid |gitissue3855dfy.251:12|
 :weight 3
 :skolemid |912|
 :pattern ( (_module.Memory.refCountEdges (Lit refType this@@11) (Lit refType |t#0@@4|) (Lit SetType |edges#0@@7|)))
))))
(assert (forall ((d@@13 T@U) ) (!  (=> (_module.Edge.Edge_q d@@13) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) (|a#1#2#0| T@U) ) (! (= d@@13 (|#_module.Edge.Edge| |a#1#0#0| |a#1#1#0| |a#1#2#0|))
 :qid |gitissue3855dfy.149:22|
 :skolemid |806|
)))
 :qid |unknown.0:0|
 :skolemid |807|
 :pattern ( (_module.Edge.Edge_q d@@13))
)))
(assert (forall ((m@@1 T@U) (bx@@0 T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@0) (U_2_bool (MapType0Select BoxType boolType m@@1 bx@@0)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |153|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@0))
)))
(assert (forall ((d@@14 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@14) (exists ((|a#1#0#0@@0| T@U) (|a#1#1#0@@0| T@U) ) (! (= d@@14 (|#_System._tuple#2._#Make2| |a#1#0#0@@0| |a#1#1#0@@0|))
 :qid |unknown.0:0|
 :skolemid |450|
)))
 :qid |unknown.0:0|
 :skolemid |451|
 :pattern ( (_System.Tuple2.___hMake2_q d@@14))
)))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|$y#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#76| |l#0@@0| |l#1@@0|) |$y#0|))  (and ($IsBox |$y#0| |l#0@@0|) (and (|Set#IsMember| |l#1@@0| |$y#0|) (and (not (|_module.Region#Equal| (_module.Object.region (_module.Edge.f ($Unbox DatatypeTypeType |$y#0|))) (_module.Object.region (_module.Edge.t ($Unbox DatatypeTypeType |$y#0|))))) (_module.Region.Heap_q (_module.Object.region (_module.Edge.t ($Unbox DatatypeTypeType |$y#0|))))))))
 :qid |gitissue3855dfy.149:10|
 :skolemid |1421|
 :pattern ( (MapType0Select BoxType boolType (|lambda#76| |l#0@@0| |l#1@@0|) |$y#0|))
)))
(assert (forall ((d@@15 T@U) ) (!  (=> (_module.Mode.Imm_q d@@15) (= d@@15 |#_module.Mode.Imm|))
 :qid |unknown.0:0|
 :skolemid |679|
 :pattern ( (_module.Mode.Imm_q d@@15))
)))
(assert (forall ((d@@16 T@U) ) (!  (=> (_module.Mode.Iso_q d@@16) (= d@@16 |#_module.Mode.Iso|))
 :qid |unknown.0:0|
 :skolemid |681|
 :pattern ( (_module.Mode.Iso_q d@@16))
)))
(assert (forall ((d@@17 T@U) ) (!  (=> (_module.Mode.Mut_q d@@17) (= d@@17 |#_module.Mode.Mut|))
 :qid |unknown.0:0|
 :skolemid |683|
 :pattern ( (_module.Mode.Mut_q d@@17))
)))
(assert (forall ((d@@18 T@U) ) (!  (=> (_module.Mode.Tmp_q d@@18) (= d@@18 |#_module.Mode.Tmp|))
 :qid |unknown.0:0|
 :skolemid |685|
 :pattern ( (_module.Mode.Tmp_q d@@18))
)))
(assert (forall ((d@@19 T@U) ) (!  (=> (_module.Mode.Sus_q d@@19) (= d@@19 |#_module.Mode.Sus|))
 :qid |unknown.0:0|
 :skolemid |687|
 :pattern ( (_module.Mode.Sus_q d@@19))
)))
(assert (forall ((d@@20 T@U) ) (!  (=> (_module.Region.Frozen_q d@@20) (= d@@20 |#_module.Region.Frozen|))
 :qid |unknown.0:0|
 :skolemid |698|
 :pattern ( (_module.Region.Frozen_q d@@20))
)))
(assert (forall ((d@@21 T@U) ) (!  (=> (_module.Region.Isolate_q d@@21) (= d@@21 |#_module.Region.Isolate|))
 :qid |unknown.0:0|
 :skolemid |728|
 :pattern ( (_module.Region.Isolate_q d@@21))
)))
(assert (forall ((v T@U) (t0@@1 T@U) ) (! (= ($Is SetType v (TSet t0@@1)) (forall ((bx@@1 T@U) ) (!  (=> (|Set#IsMember| v bx@@1) ($IsBox bx@@1 t0@@1))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@1))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@1)))
)))
(assert (forall ((d@@22 T@U) ) (!  (=> (_module.Region.Heap_q d@@22) (exists ((|a#25#0#0| T@U) ) (! (= d@@22 (|#_module.Region.Heap| |a#25#0#0|))
 :qid |gitissue3855dfy.19:33|
 :skolemid |702|
)))
 :qid |unknown.0:0|
 :skolemid |703|
 :pattern ( (_module.Region.Heap_q d@@22))
)))
(assert (forall ((d@@23 T@U) ) (!  (=> (_module.Region.Stack_q d@@23) (exists ((|a#30#0#0| T@U) ) (! (= d@@23 (|#_module.Region.Stack| |a#30#0#0|))
 :qid |gitissue3855dfy.19:58|
 :skolemid |711|
)))
 :qid |unknown.0:0|
 :skolemid |712|
 :pattern ( (_module.Region.Stack_q d@@23))
)))
(assert (forall ((d@@24 T@U) ) (!  (=> (_module.Region.Frame_q d@@24) (exists ((|a#35#0#0| T@U) ) (! (= d@@24 (|#_module.Region.Frame| |a#35#0#0|))
 :qid |gitissue3855dfy.19:84|
 :skolemid |720|
)))
 :qid |unknown.0:0|
 :skolemid |721|
 :pattern ( (_module.Region.Frame_q d@@24))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@3 T@U) (this@@12 T@U) (|os#0@@2| T@U) ) (!  (=> (or (|_module.Memory.edges#canCall| $Heap@@3 this@@12 |os#0@@2|) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@3) (or (not (= this@@12 null)) (not true))) ($IsAlloc refType this@@12 Tclass._module.Memory $Heap@@3)) (and ($Is SetType |os#0@@2| (TSet Tclass._module.Object)) ($IsAlloc SetType |os#0@@2| (TSet Tclass._module.Object) $Heap@@3))))) ($IsAlloc SetType (_module.Memory.edges $Heap@@3 this@@12 |os#0@@2|) (TSet Tclass._module.Edge) $Heap@@3))
 :qid |gitissue3855dfy.256:12|
 :skolemid |918|
 :pattern ( ($IsAlloc SetType (_module.Memory.edges $Heap@@3 this@@12 |os#0@@2|) (TSet Tclass._module.Edge) $Heap@@3))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@4 T@U) (this@@13 T@U) (|os#0@@3| T@U) ) (!  (=> (or (|_module.Memory.justTheIsos#canCall| $Heap@@4 this@@13 |os#0@@3|) (and (< 3 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@4) (or (not (= this@@13 null)) (not true))) ($IsAlloc refType this@@13 Tclass._module.Memory $Heap@@4)) (and ($Is SetType |os#0@@3| (TSet Tclass._module.Object)) ($IsAlloc SetType |os#0@@3| (TSet Tclass._module.Object) $Heap@@4))))) ($IsAlloc SetType (_module.Memory.justTheIsos $Heap@@4 this@@13 |os#0@@3|) (TSet Tclass._module.Object) $Heap@@4))
 :qid |gitissue3855dfy.235:12|
 :skolemid |891|
 :pattern ( ($IsAlloc SetType (_module.Memory.justTheIsos $Heap@@4 this@@13 |os#0@@3|) (TSet Tclass._module.Object) $Heap@@4))
))))
(assert ($IsGhostField alloc))
(assert (forall ((|l#0@@1| T@U) (|l#1@@1| T@U) (|$y#0@@0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#38| |l#0@@1| |l#1@@1|) |$y#0@@0|))  (and ($IsBox |$y#0@@0| |l#0@@1|) (and (|Set#IsMember| |l#1@@1| |$y#0@@0|) (_module.Region.Isolate_q (_module.Object.region ($Unbox refType |$y#0@@0|))))))
 :qid |gitissue3855dfy.87:7|
 :skolemid |1414|
 :pattern ( (MapType0Select BoxType boolType (|lambda#38| |l#0@@1| |l#1@@1|) |$y#0@@0|))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((this@@14 T@U) (|o#0@@5| T@U) (|edges#0@@8| T@U) ) (!  (=> (or (|_module.Memory.externalEdges#canCall| this@@14 |o#0@@5| |edges#0@@8|) (and (< 3 $FunctionContextHeight) (and (and (and (or (not (= this@@14 null)) (not true)) ($Is refType this@@14 Tclass._module.Memory)) ($Is DatatypeTypeType |o#0@@5| Tclass._module.Region)) ($Is SetType |edges#0@@8| (TSet Tclass._module.Edge))))) (and (forall ((|e#0@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |e#0@@0| Tclass._module.Edge) (=> (|Set#IsMember| |edges#0@@8| ($Box DatatypeTypeType |e#0@@0|)) (and (and (and (|$IsA#_module.Region| (_module.Object.region (_module.Edge.t |e#0@@0|))) (|$IsA#_module.Region| |o#0@@5|)) (_module.Edge.Edge_q |e#0@@0|)) (=> (|_module.Region#Equal| (_module.Object.region (_module.Edge.t |e#0@@0|)) |o#0@@5|) (and (and (|$IsA#_module.Region| (_module.Object.region (_module.Edge.f |e#0@@0|))) (|$IsA#_module.Region| |o#0@@5|)) (_module.Edge.Edge_q |e#0@@0|))))))
 :qid |gitissue3855dfy.339:9|
 :skolemid |1002|
 :pattern ( (_module.Edge.f |e#0@@0|))
 :pattern ( (_module.Edge.t |e#0@@0|))
 :pattern ( (|Set#IsMember| |edges#0@@8| ($Box DatatypeTypeType |e#0@@0|)))
)) (= (_module.Memory.externalEdges this@@14 |o#0@@5| |edges#0@@8|) (|Set#FromBoogieMap| (|lambda#71| Tclass._module.Edge |edges#0@@8| |o#0@@5| |o#0@@5|)))))
 :qid |gitissue3855dfy.336:12|
 :skolemid |1003|
 :pattern ( (_module.Memory.externalEdges this@@14 |o#0@@5| |edges#0@@8|))
))))
(assert (forall ((|l#0@@2| T@U) (|l#1@@2| T@U) (|l#2| T@U) (|$y#0@@1| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#41| |l#0@@2| |l#1@@2| |l#2|) |$y#0@@1|))  (and ($IsBox |$y#0@@1| |l#0@@2|) (and (|Set#IsMember| |l#1@@2| |$y#0@@1|) (= (_module.Edge.t ($Unbox DatatypeTypeType |$y#0@@1|)) |l#2|))))
 :qid |gitissue3855dfy.149:10|
 :skolemid |1415|
 :pattern ( (MapType0Select BoxType boolType (|lambda#41| |l#0@@2| |l#1@@2| |l#2|) |$y#0@@1|))
)))
(assert (forall ((v@@0 T@U) (t@@1 T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t@@1 h) ($IsAlloc T@@1 v@@0 t@@1 h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t@@1 h))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|o#0@@6| T@U) (|t#0@@5| T@U) ) (!  (=> (or (|_module.__default.AssignmentCompatible#canCall| (Lit refType |o#0@@6|) (Lit DatatypeTypeType |t#0@@5|)) (and (< 3 $FunctionContextHeight) (and ($Is refType |o#0@@6| Tclass._module.Object) ($Is DatatypeTypeType |t#0@@5| Tclass._module.Mode)))) (= (_module.__default.AssignmentCompatible (Lit refType |o#0@@6|) (Lit DatatypeTypeType |t#0@@5|)) (let ((|r#1| (_module.Object.region (Lit refType |o#0@@6|))))
(ite (_module.Mode.Imm_q (Lit DatatypeTypeType |t#0@@5|)) (_module.Region.Frozen_q |r#1|) (ite (_module.Mode.Iso_q (Lit DatatypeTypeType |t#0@@5|)) (_module.Region.Isolate_q |r#1|) (ite (_module.Mode.Mut_q (Lit DatatypeTypeType |t#0@@5|)) (_module.Region.Heap_q |r#1|) (ite (_module.Mode.Tmp_q (Lit DatatypeTypeType |t#0@@5|)) (_module.Region.Stack_q |r#1|)  (or (_module.Region.Heap_q |r#1|) (_module.Region.Stack_q |r#1|)))))))))
 :qid |gitissue3855dfy.63:32|
 :weight 3
 :skolemid |598|
 :pattern ( (_module.__default.AssignmentCompatible (Lit refType |o#0@@6|) (Lit DatatypeTypeType |t#0@@5|)))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@5 T@U) (this@@15 T@U) ) (!  (=> (or (|_module.Object.AllFieldsContentsConsistentWithTheirDeclaration#canCall| $Heap@@5 this@@15) (and (< 4 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@5) (and (or (not (= this@@15 null)) (not true)) (and ($Is refType this@@15 Tclass._module.Object) ($IsAlloc refType this@@15 Tclass._module.Object $Heap@@5)))) (_module.Object.AllFieldsAreDeclared $Heap@@5 this@@15)))) (and (forall ((|n#0| T@U) ) (!  (=> ($Is SeqType |n#0| (TSeq TChar)) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@15) _module.Object.fields))) ($Box SeqType |n#0|)) (|_module.__default.AssignmentCompatible#canCall| ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@15) _module.Object.fields))) ($Box SeqType |n#0|))) ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes this@@15)) ($Box SeqType |n#0|))))))
 :qid |gitissue3855dfy.128:14|
 :skolemid |784|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes this@@15)) ($Box SeqType |n#0|))))
 :pattern ( ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@15) _module.Object.fields))) ($Box SeqType |n#0|))))
 :pattern ( (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@15) _module.Object.fields))) ($Box SeqType |n#0|)))
)) (= (_module.Object.AllFieldsContentsConsistentWithTheirDeclaration $Heap@@5 this@@15) (forall ((|n#0@@0| T@U) ) (!  (=> (and ($Is SeqType |n#0@@0| (TSeq TChar)) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@15) _module.Object.fields))) ($Box SeqType |n#0@@0|))) (_module.__default.AssignmentCompatible ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@15) _module.Object.fields))) ($Box SeqType |n#0@@0|))) ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes this@@15)) ($Box SeqType |n#0@@0|)))))
 :qid |gitissue3855dfy.128:14|
 :skolemid |783|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes this@@15)) ($Box SeqType |n#0@@0|))))
 :pattern ( ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@15) _module.Object.fields))) ($Box SeqType |n#0@@0|))))
 :pattern ( (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@15) _module.Object.fields))) ($Box SeqType |n#0@@0|)))
)))))
 :qid |gitissue3855dfy.124:13|
 :skolemid |785|
 :pattern ( (_module.Object.AllFieldsContentsConsistentWithTheirDeclaration $Heap@@5 this@@15) ($IsGoodHeap $Heap@@5))
))))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.Mode) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@2)) bx@@2) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@2) Tclass._module.Mode)))
 :qid |unknown.0:0|
 :skolemid |585|
 :pattern ( ($IsBox bx@@2 Tclass._module.Mode))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.Object) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._module.Object)))
 :qid |unknown.0:0|
 :skolemid |590|
 :pattern ( ($IsBox bx@@3 Tclass._module.Object))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.Region) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@4)) bx@@4) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@4) Tclass._module.Region)))
 :qid |unknown.0:0|
 :skolemid |599|
 :pattern ( ($IsBox bx@@4 Tclass._module.Region))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.Memory) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.Memory)))
 :qid |unknown.0:0|
 :skolemid |600|
 :pattern ( ($IsBox bx@@5 Tclass._module.Memory))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.Memory?) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.Memory?)))
 :qid |unknown.0:0|
 :skolemid |601|
 :pattern ( ($IsBox bx@@6 Tclass._module.Memory?))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.Object?) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |622|
 :pattern ( ($IsBox bx@@7 Tclass._module.Object?))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.Edge) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@8)) bx@@8) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@8) Tclass._module.Edge)))
 :qid |unknown.0:0|
 :skolemid |808|
 :pattern ( ($IsBox bx@@8 Tclass._module.Edge))
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
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((this@@16 T@U) (|edges#0@@9| T@U) ) (!  (=> (or (|_module.Memory.justHeapExternalEdges#canCall| this@@16 |edges#0@@9|) (and (< 3 $FunctionContextHeight) (and (and (or (not (= this@@16 null)) (not true)) ($Is refType this@@16 Tclass._module.Memory)) ($Is SetType |edges#0@@9| (TSet Tclass._module.Edge))))) (and (|Set#Subset| (_module.Memory.justHeapExternalEdges this@@16 |edges#0@@9|) |edges#0@@9|) ($Is SetType (_module.Memory.justHeapExternalEdges this@@16 |edges#0@@9|) (TSet Tclass._module.Edge))))
 :qid |gitissue3855dfy.345:12|
 :skolemid |1009|
 :pattern ( (_module.Memory.justHeapExternalEdges this@@16 |edges#0@@9|))
))))
(assert  (and (forall ((t0@@2 T@T) (t1@@1 T@T) (t2 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@2 t1@@1 t2 (MapType1Store t0@@2 t1@@1 t2 m@@2 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@3 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@3 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@3 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@4 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@4 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0@@3| T@U) (|l#1@@3| T@U) (|l#2@@0| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@7 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#4| |l#0@@3| |l#1@@3| |l#2@@0| |l#3| |l#4|) $o@@7 $f))  (=> (and (or (not (= $o@@7 |l#0@@3|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@3| $o@@7) |l#2@@0|)))) (and (= $o@@7 |l#3|) (= $f |l#4|))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1407|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#4| |l#0@@3| |l#1@@3| |l#2@@0| |l#3| |l#4|) $o@@7 $f))
)))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@6 T@U) (this@@17 T@U) ) (!  (=> (or (|_module.Object.outgoing#canCall| $Heap@@6 this@@17) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@6) (and (or (not (= this@@17 null)) (not true)) (and ($Is refType this@@17 Tclass._module.Object) ($IsAlloc refType this@@17 Tclass._module.Object $Heap@@6)))))) ($Is SetType (_module.Object.outgoing $Heap@@6 this@@17) (TSet Tclass._module.Object)))
 :qid |gitissue3855dfy.106:12|
 :skolemid |752|
 :pattern ( (_module.Object.outgoing $Heap@@6 this@@17))
))))
(assert (forall ((m@@5 T@U) ) (! (= (= (|Map#Card| m@@5) 0) (= m@@5 |Map#Empty|))
 :qid |DafnyPreludebpl.1382:15|
 :skolemid |272|
 :pattern ( (|Map#Card| m@@5))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@7 T@U) (this@@18 T@U) ) (!  (=> (or (|_module.Object.outgoing#canCall| $Heap@@7 this@@18) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@7) (and (or (not (= this@@18 null)) (not true)) (and ($Is refType this@@18 Tclass._module.Object) ($IsAlloc refType this@@18 Tclass._module.Object $Heap@@7)))))) (= (_module.Object.outgoing $Heap@@7 this@@18) (|Map#Values| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@18) _module.Object.fields)))))
 :qid |gitissue3855dfy.106:12|
 :skolemid |755|
 :pattern ( (_module.Object.outgoing $Heap@@7 this@@18) ($IsGoodHeap $Heap@@7))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((this@@19 T@U) (|t#0@@6| T@U) (|edges#0@@10| T@U) ) (!  (=> (or (|_module.Memory.incomingEdges#canCall| (Lit refType this@@19) (Lit refType |t#0@@6|) (Lit SetType |edges#0@@10|)) (and (< 2 $FunctionContextHeight) (and (and (and (or (not (= this@@19 null)) (not true)) ($Is refType this@@19 Tclass._module.Memory)) ($Is refType |t#0@@6| Tclass._module.Object)) ($Is SetType |edges#0@@10| (TSet Tclass._module.Edge))))) (and (forall ((|e#2@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |e#2@@0| Tclass._module.Edge) (=> (|Set#IsMember| (Lit SetType |edges#0@@10|) ($Box DatatypeTypeType |e#2@@0|)) (_module.Edge.Edge_q |e#2@@0|)))
 :qid |gitissue3855dfy.248:9|
 :skolemid |905|
 :pattern ( (_module.Edge.t |e#2@@0|))
 :pattern ( (|Set#IsMember| |edges#0@@10| ($Box DatatypeTypeType |e#2@@0|)))
)) (= (_module.Memory.incomingEdges (Lit refType this@@19) (Lit refType |t#0@@6|) (Lit SetType |edges#0@@10|)) (|Set#FromBoogieMap| (|lambda#41| Tclass._module.Edge (Lit SetType |edges#0@@10|) (Lit refType |t#0@@6|))))))
 :qid |gitissue3855dfy.245:12|
 :weight 3
 :skolemid |906|
 :pattern ( (_module.Memory.incomingEdges (Lit refType this@@19) (Lit refType |t#0@@6|) (Lit SetType |edges#0@@10|)))
))))
(assert (forall (($h@@9 T@U) ($o@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) Tclass._module.Memory?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@8) _module.Memory.objects)) (TSet Tclass._module.Object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |826|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@8) _module.Memory.objects)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((this@@20 T@U) (|t#0@@7| T@U) (|edges#0@@11| T@U) ) (!  (=> (or (|_module.Memory.incomingEdges#canCall| this@@20 |t#0@@7| |edges#0@@11|) (and (< 2 $FunctionContextHeight) (and (and (and (or (not (= this@@20 null)) (not true)) ($Is refType this@@20 Tclass._module.Memory)) ($Is refType |t#0@@7| Tclass._module.Object)) ($Is SetType |edges#0@@11| (TSet Tclass._module.Edge))))) (and (forall ((|e#0@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |e#0@@1| Tclass._module.Edge) (=> (|Set#IsMember| |edges#0@@11| ($Box DatatypeTypeType |e#0@@1|)) (_module.Edge.Edge_q |e#0@@1|)))
 :qid |gitissue3855dfy.248:9|
 :skolemid |901|
 :pattern ( (_module.Edge.t |e#0@@1|))
 :pattern ( (|Set#IsMember| |edges#0@@11| ($Box DatatypeTypeType |e#0@@1|)))
)) (= (_module.Memory.incomingEdges this@@20 |t#0@@7| |edges#0@@11|) (|Set#FromBoogieMap| (|lambda#41| Tclass._module.Edge |edges#0@@11| |t#0@@7|)))))
 :qid |gitissue3855dfy.245:12|
 :skolemid |902|
 :pattern ( (_module.Memory.incomingEdges this@@20 |t#0@@7| |edges#0@@11|))
))))
(assert (forall (($h@@10 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) Tclass._module.Memory?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@9) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@9) _module.Memory.objects)) (TSet Tclass._module.Object) $h@@10))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |827|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@9) _module.Memory.objects)))
)))
(assert (forall ((|l#0@@4| T@U) (|l#1@@4| T@U) (|l#2@@1| T@U) (|l#3@@0| T@U) (|$y#0@@2| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#71| |l#0@@4| |l#1@@4| |l#2@@1| |l#3@@0|) |$y#0@@2|))  (and ($IsBox |$y#0@@2| |l#0@@4|) (and (|Set#IsMember| |l#1@@4| |$y#0@@2|) (and (|_module.Region#Equal| (_module.Object.region (_module.Edge.t ($Unbox DatatypeTypeType |$y#0@@2|))) |l#2@@1|) (not (|_module.Region#Equal| (_module.Object.region (_module.Edge.f ($Unbox DatatypeTypeType |$y#0@@2|))) |l#3@@0|))))))
 :qid |gitissue3855dfy.149:10|
 :skolemid |1420|
 :pattern ( (MapType0Select BoxType boolType (|lambda#71| |l#0@@4| |l#1@@4| |l#2@@1| |l#3@@0|) |$y#0@@2|))
)))
(assert (forall (($h@@11 T@U) ($o@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) Tclass._module.Object?))) ($Is MapType ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@10) _module.Object.fields)) (TMap (TSeq TChar) Tclass._module.Object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |742|
 :pattern ( ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@10) _module.Object.fields)))
)))
(assert (forall (($h@@12 T@U) ($o@@11 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@11) alloc)))) ($IsAlloc MapType ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@11) _module.Object.fields)) (TMap (TSeq TChar) Tclass._module.Object) $h@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |743|
 :pattern ( ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@11) _module.Object.fields)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@8 T@U) (this@@21 T@U) (|os#0@@4| T@U) ) (!  (=> (or (|_module.Memory.edges#canCall| $Heap@@8 this@@21 |os#0@@4|) (and (< 2 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@8) (and (or (not (= this@@21 null)) (not true)) (and ($Is refType this@@21 Tclass._module.Memory) ($IsAlloc refType this@@21 Tclass._module.Memory $Heap@@8)))) (and ($Is SetType |os#0@@4| (TSet Tclass._module.Object)) ($IsAlloc SetType |os#0@@4| (TSet Tclass._module.Object) $Heap@@8))))) (and (and (forall ((|edge#0| T@U) ) (!  (=> (and ($Is DatatypeTypeType |edge#0| Tclass._module.Edge) (|Set#IsMember| (_module.Memory.edges $Heap@@8 this@@21 |os#0@@4|) ($Box DatatypeTypeType |edge#0|))) (and (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 (_module.Edge.f |edge#0|)) _module.Object.fields))) ($Box SeqType (_module.Edge.n |edge#0|))) (= ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 (_module.Edge.f |edge#0|)) _module.Object.fields))) ($Box SeqType (_module.Edge.n |edge#0|)))) (_module.Edge.t |edge#0|))))
 :qid |gitissue3855dfy.258:20|
 :skolemid |916|
 :pattern ( (_module.Edge.t |edge#0|))
 :pattern ( (_module.Edge.f |edge#0|))
 :pattern ( (_module.Edge.n |edge#0|))
 :pattern ( (|Set#IsMember| (_module.Memory.edges $Heap@@8 this@@21 |os#0@@4|) ($Box DatatypeTypeType |edge#0|)))
)) (=> (|Set#Equal| |os#0@@4| |Set#Empty|) (|Set#Equal| (_module.Memory.edges $Heap@@8 this@@21 |os#0@@4|) |Set#Empty|))) ($Is SetType (_module.Memory.edges $Heap@@8 this@@21 |os#0@@4|) (TSet Tclass._module.Edge))))
 :qid |gitissue3855dfy.256:12|
 :skolemid |917|
 :pattern ( (_module.Memory.edges $Heap@@8 this@@21 |os#0@@4|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@9 T@U) (this@@22 T@U) ) (!  (=> (or (|_module.Object.AllFieldsAreDeclared#canCall| $Heap@@9 this@@22) (and (< 3 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@9) (and (or (not (= this@@22 null)) (not true)) (and ($Is refType this@@22 Tclass._module.Object) ($IsAlloc refType this@@22 Tclass._module.Object $Heap@@9)))))) (= (_module.Object.AllFieldsAreDeclared $Heap@@9 this@@22) (|Set#Subset| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 this@@22) _module.Object.fields))) (|Map#Domain| (_module.Object.fieldModes this@@22)))))
 :qid |gitissue3855dfy.120:13|
 :skolemid |778|
 :pattern ( (_module.Object.AllFieldsAreDeclared $Heap@@9 this@@22) ($IsGoodHeap $Heap@@9))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@10 T@U) (this@@23 T@U) (|os#0@@5| T@U) ) (!  (=> (or (|_module.Memory.justTheIsos#canCall| $Heap@@10 this@@23 |os#0@@5|) (and (< 3 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@10) (and (or (not (= this@@23 null)) (not true)) (and ($Is refType this@@23 Tclass._module.Memory) ($IsAlloc refType this@@23 Tclass._module.Memory $Heap@@10)))) ($Is SetType |os#0@@5| (TSet Tclass._module.Object))))) (= (_module.Memory.justTheIsos $Heap@@10 this@@23 |os#0@@5|) (|Set#FromBoogieMap| (|lambda#38| Tclass._module.Object |os#0@@5|))))
 :qid |gitissue3855dfy.235:12|
 :skolemid |893|
 :pattern ( (_module.Memory.justTheIsos $Heap@@10 this@@23 |os#0@@5|) ($IsGoodHeap $Heap@@10))
))))
(assert (forall ((a@@7 T@U) (b@@7 T@U) ) (!  (=> (|Set#Equal| a@@7 b@@7) (= a@@7 b@@7))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@7 b@@7))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@11 T@U) (this@@24 T@U) ) (!  (=> (or (|_module.Object.outgoing#canCall| $Heap@@11 this@@24) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@11) (or (not (= this@@24 null)) (not true))) ($IsAlloc refType this@@24 Tclass._module.Object $Heap@@11)))) ($IsAlloc SetType (_module.Object.outgoing $Heap@@11 this@@24) (TSet Tclass._module.Object) $Heap@@11))
 :qid |gitissue3855dfy.106:12|
 :skolemid |753|
 :pattern ( ($IsAlloc SetType (_module.Object.outgoing $Heap@@11 this@@24) (TSet Tclass._module.Object) $Heap@@11))
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
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@12 T@U) (this@@25 T@U) (|edges#0@@12| T@U) ) (!  (=> (and (or (|_module.Memory.justHeapExternalEdges#canCall| this@@25 |edges#0@@12|) (and (< 3 $FunctionContextHeight) (and (and (or (not (= this@@25 null)) (not true)) ($IsAlloc refType this@@25 Tclass._module.Memory $Heap@@12)) (and ($Is SetType |edges#0@@12| (TSet Tclass._module.Edge)) ($IsAlloc SetType |edges#0@@12| (TSet Tclass._module.Edge) $Heap@@12))))) ($IsGoodHeap $Heap@@12)) ($IsAlloc SetType (_module.Memory.justHeapExternalEdges this@@25 |edges#0@@12|) (TSet Tclass._module.Edge) $Heap@@12))
 :qid |gitissue3855dfy.345:12|
 :skolemid |1010|
 :pattern ( ($IsAlloc SetType (_module.Memory.justHeapExternalEdges this@@25 |edges#0@@12|) (TSet Tclass._module.Edge) $Heap@@12))
))))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((|l#0@@5| T@U) (|l#1@@5| T@U) (|l#2@@2| T@U) (|$y#1| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#52| |l#0@@5| |l#1@@5| |l#2@@2|) |$y#1|)) (exists ((|he#0| T@U) ) (!  (and (and ($Is DatatypeTypeType |he#0| |l#0@@5|) (|Set#IsMember| |l#1@@5| ($Box DatatypeTypeType |he#0|))) (= |$y#1| ($Box DatatypeTypeType (_module.Object.region (_module.Edge.t |he#0|)))))
 :qid |gitissue3855dfy.282:39|
 :skolemid |946|
 :pattern ( (_module.Edge.t |he#0|))
 :pattern ( (|Set#IsMember| |l#2@@2| ($Box DatatypeTypeType |he#0|)))
)))
 :qid |gitissue3855dfy.149:10|
 :skolemid |1417|
 :pattern ( (MapType0Select BoxType boolType (|lambda#52| |l#0@@5| |l#1@@5| |l#2@@2|) |$y#1|))
)))
(assert (= (Ctor charType) 11))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 TChar) (and (= ($Box charType ($Unbox charType bx@@9)) bx@@9) ($Is charType ($Unbox charType bx@@9) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |30|
 :pattern ( ($IsBox bx@@9 TChar))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@2) ($Is T@@2 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@2))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@13 T@U) (this@@26 T@U) (|os#0@@6| T@U) ) (!  (=> (or (|_module.Memory.heapExternalsZeroOrOne#canCall| $Heap@@13 this@@26 |os#0@@6|) (and (< 5 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@13) (and (or (not (= this@@26 null)) (not true)) (and ($Is refType this@@26 Tclass._module.Memory) ($IsAlloc refType this@@26 Tclass._module.Memory $Heap@@13)))) ($Is SetType |os#0@@6| (TSet Tclass._module.Object))))) (and (and (|_module.Memory.edges#canCall| $Heap@@13 this@@26 |os#0@@6|) (let ((|edges#0@@13| (_module.Memory.edges $Heap@@13 this@@26 |os#0@@6|)))
(|_module.Memory.heapExternalsZeroOrOneEdges#canCall| this@@26 |edges#0@@13|))) (= (_module.Memory.heapExternalsZeroOrOne $Heap@@13 this@@26 |os#0@@6|) (let ((|edges#0@@14| (_module.Memory.edges $Heap@@13 this@@26 |os#0@@6|)))
(_module.Memory.heapExternalsZeroOrOneEdges this@@26 |edges#0@@14|)))))
 :qid |gitissue3855dfy.273:13|
 :skolemid |937|
 :pattern ( (_module.Memory.heapExternalsZeroOrOne $Heap@@13 this@@26 |os#0@@6|) ($IsGoodHeap $Heap@@13))
))))
(assert (forall ((s@@0 T@U) ) (! (<= 0 (|Set#Card| s@@0))
 :qid |DafnyPreludebpl.664:15|
 :skolemid |124|
 :pattern ( (|Set#Card| s@@0))
)))
(assert (forall ((s@@1 T@U) ) (! (<= 0 (|Seq#Length| s@@1))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@1))
)))
(assert (forall ((m@@6 T@U) ) (! (<= 0 (|Map#Card| m@@6))
 :qid |DafnyPreludebpl.1380:15|
 :skolemid |271|
 :pattern ( (|Map#Card| m@@6))
)))
(assert (forall ((a@@8 T@U) (b@@8 T@U) ) (!  (=> (and (_module.Region.Frozen_q a@@8) (_module.Region.Frozen_q b@@8)) (|_module.Region#Equal| a@@8 b@@8))
 :qid |unknown.0:0|
 :skolemid |732|
 :pattern ( (|_module.Region#Equal| a@@8 b@@8) (_module.Region.Frozen_q a@@8))
 :pattern ( (|_module.Region#Equal| a@@8 b@@8) (_module.Region.Frozen_q b@@8))
)))
(assert (forall ((a@@9 T@U) (b@@9 T@U) ) (!  (=> (and (_module.Region.Isolate_q a@@9) (_module.Region.Isolate_q b@@9)) (|_module.Region#Equal| a@@9 b@@9))
 :qid |unknown.0:0|
 :skolemid |736|
 :pattern ( (|_module.Region#Equal| a@@9 b@@9) (_module.Region.Isolate_q a@@9))
 :pattern ( (|_module.Region#Equal| a@@9 b@@9) (_module.Region.Isolate_q b@@9))
)))
(assert (forall ((v@@2 T@U) (t0@@3 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@3) h@@0) (forall ((bx@@10 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@10) ($IsAllocBox bx@@10 t0@@3 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@10))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@3) h@@0))
)))
(assert (forall ((t@@3 T@U) (u T@U) ) (! (= (Inv0_TMap (TMap t@@3 u)) t@@3)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |9|
 :pattern ( (TMap t@@3 u))
)))
(assert (forall ((t@@4 T@U) (u@@0 T@U) ) (! (= (Inv1_TMap (TMap t@@4 u@@0)) u@@0)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |10|
 :pattern ( (TMap t@@4 u@@0))
)))
(assert (forall ((t@@5 T@U) (u@@1 T@U) ) (! (= (Tag (TMap t@@5 u@@1)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |11|
 :pattern ( (TMap t@@5 u@@1))
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
(assert (forall ((v@@3 T@U) (t0@@4 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SeqType v@@3 (TSeq t0@@4) h@@1) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@3))) ($IsAllocBox (|Seq#Index| v@@3 i@@0) t0@@4 h@@1))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@3 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@3 (TSeq t0@@4) h@@1))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) (|a#3#2#0| T@U) ) (! (= (|#_module.Edge.Edge| (Lit refType |a#3#0#0|) (Lit SeqType |a#3#1#0|) (Lit refType |a#3#2#0|)) (Lit DatatypeTypeType (|#_module.Edge.Edge| |a#3#0#0| |a#3#1#0| |a#3#2#0|)))
 :qid |gitissue3855dfy.149:22|
 :skolemid |814|
 :pattern ( (|#_module.Edge.Edge| (Lit refType |a#3#0#0|) (Lit SeqType |a#3#1#0|) (Lit refType |a#3#2#0|)))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Inv0_TSet (TSet t@@6)) t@@6)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@6))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Tag (TSet t@@7)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@7))
)))
(assert (forall ((t@@8 T@U) ) (! (= (Inv0_TSeq (TSeq t@@8)) t@@8)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@8))
)))
(assert (forall ((t@@9 T@U) ) (! (= (Tag (TSeq t@@9)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@9))
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
(assert (forall ((x@@6 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@6))
)))
(assert (forall ((v@@4 T@U) (t0@@5 T@U) (t1@@2 T@U) (h@@2 T@U) ) (! (= ($IsAlloc MapType v@@4 (TMap t0@@5 t1@@2) h@@2) (forall ((bx@@11 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@4) bx@@11) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@4) bx@@11) t1@@2 h@@2) ($IsAllocBox bx@@11 t0@@5 h@@2)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |75|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@4) bx@@11))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@4) bx@@11))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |76|
 :pattern ( ($IsAlloc MapType v@@4 (TMap t0@@5 t1@@2) h@@2))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) (|a#7#2#0| T@U) ) (! (< (|Seq#Rank| |a#7#1#0|) (DtRank (|#_module.Edge.Edge| |a#7#0#0| |a#7#1#0| |a#7#2#0|)))
 :qid |gitissue3855dfy.149:22|
 :skolemid |818|
 :pattern ( (|#_module.Edge.Edge| |a#7#0#0| |a#7#1#0| |a#7#2#0|))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@14 T@U) (this@@27 T@U) (|t#0@@8| T@U) (|edges#0@@15| T@U) ) (!  (=> (and (or (|_module.Memory.incomingEdges#canCall| this@@27 |t#0@@8| |edges#0@@15|) (and (< 2 $FunctionContextHeight) (and (and (and (or (not (= this@@27 null)) (not true)) ($IsAlloc refType this@@27 Tclass._module.Memory $Heap@@14)) (and ($Is refType |t#0@@8| Tclass._module.Object) ($IsAlloc refType |t#0@@8| Tclass._module.Object $Heap@@14))) (and ($Is SetType |edges#0@@15| (TSet Tclass._module.Edge)) ($IsAlloc SetType |edges#0@@15| (TSet Tclass._module.Edge) $Heap@@14))))) ($IsGoodHeap $Heap@@14)) ($IsAlloc SetType (_module.Memory.incomingEdges this@@27 |t#0@@8| |edges#0@@15|) (TSet Tclass._module.Edge) $Heap@@14))
 :qid |gitissue3855dfy.245:12|
 :skolemid |899|
 :pattern ( ($IsAlloc SetType (_module.Memory.incomingEdges this@@27 |t#0@@8| |edges#0@@15|) (TSet Tclass._module.Edge) $Heap@@14))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@15 T@U) (this@@28 T@U) (|o#0@@7| T@U) (|edges#0@@16| T@U) ) (!  (=> (and (or (|_module.Memory.externalEdges#canCall| this@@28 |o#0@@7| |edges#0@@16|) (and (< 3 $FunctionContextHeight) (and (and (and (or (not (= this@@28 null)) (not true)) ($IsAlloc refType this@@28 Tclass._module.Memory $Heap@@15)) (and ($Is DatatypeTypeType |o#0@@7| Tclass._module.Region) ($IsAlloc DatatypeTypeType |o#0@@7| Tclass._module.Region $Heap@@15))) (and ($Is SetType |edges#0@@16| (TSet Tclass._module.Edge)) ($IsAlloc SetType |edges#0@@16| (TSet Tclass._module.Edge) $Heap@@15))))) ($IsGoodHeap $Heap@@15)) ($IsAlloc SetType (_module.Memory.externalEdges this@@28 |o#0@@7| |edges#0@@16|) (TSet Tclass._module.Edge) $Heap@@15))
 :qid |gitissue3855dfy.336:12|
 :skolemid |1000|
 :pattern ( ($IsAlloc SetType (_module.Memory.externalEdges this@@28 |o#0@@7| |edges#0@@16|) (TSet Tclass._module.Edge) $Heap@@15))
))))
(assert (forall ((|a#5#0#0@@0| T@U) (|a#5#1#0@@0| T@U) ) (! (< (BoxRank |a#5#0#0@@0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0@@0| |a#5#1#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |464|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0@@0| |a#5#1#0@@0|))
)))
(assert (forall ((|a#7#0#0@@0| T@U) (|a#7#1#0@@0| T@U) ) (! (< (BoxRank |a#7#1#0@@0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0@@0| |a#7#1#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |466|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0@@0| |a#7#1#0@@0|))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((this@@29 T@U) (|t#0@@9| T@U) (|edges#0@@17| T@U) ) (!  (=> (or (|_module.Memory.incomingEdges#canCall| this@@29 (Lit refType |t#0@@9|) (Lit SetType |edges#0@@17|)) (and (< 2 $FunctionContextHeight) (and (and (and (or (not (= this@@29 null)) (not true)) ($Is refType this@@29 Tclass._module.Memory)) ($Is refType |t#0@@9| Tclass._module.Object)) ($Is SetType |edges#0@@17| (TSet Tclass._module.Edge))))) (and (forall ((|e#1| T@U) ) (!  (=> ($Is DatatypeTypeType |e#1| Tclass._module.Edge) (=> (|Set#IsMember| (Lit SetType |edges#0@@17|) ($Box DatatypeTypeType |e#1|)) (_module.Edge.Edge_q |e#1|)))
 :qid |gitissue3855dfy.248:9|
 :skolemid |903|
 :pattern ( (_module.Edge.t |e#1|))
 :pattern ( (|Set#IsMember| |edges#0@@17| ($Box DatatypeTypeType |e#1|)))
)) (= (_module.Memory.incomingEdges this@@29 (Lit refType |t#0@@9|) (Lit SetType |edges#0@@17|)) (|Set#FromBoogieMap| (|lambda#41| Tclass._module.Edge (Lit SetType |edges#0@@17|) (Lit refType |t#0@@9|))))))
 :qid |gitissue3855dfy.245:12|
 :weight 3
 :skolemid |904|
 :pattern ( (_module.Memory.incomingEdges this@@29 (Lit refType |t#0@@9|) (Lit SetType |edges#0@@17|)))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((this@@30 T@U) (|edges#0@@18| T@U) ) (!  (=> (or (|_module.Memory.justHeapExternalEdges#canCall| this@@30 (Lit SetType |edges#0@@18|)) (and (< 3 $FunctionContextHeight) (and (and (or (not (= this@@30 null)) (not true)) ($Is refType this@@30 Tclass._module.Memory)) ($Is SetType |edges#0@@18| (TSet Tclass._module.Edge))))) (and (forall ((|e#1@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |e#1@@0| Tclass._module.Edge) (=> (|Set#IsMember| (Lit SetType |edges#0@@18|) ($Box DatatypeTypeType |e#1@@0|)) (and (and (and (|$IsA#_module.Region| (_module.Object.region (_module.Edge.f |e#1@@0|))) (|$IsA#_module.Region| (_module.Object.region (_module.Edge.t |e#1@@0|)))) (and (_module.Edge.Edge_q |e#1@@0|) (_module.Edge.Edge_q |e#1@@0|))) (=> (not (|_module.Region#Equal| (_module.Object.region (_module.Edge.f |e#1@@0|)) (_module.Object.region (_module.Edge.t |e#1@@0|)))) (_module.Edge.Edge_q |e#1@@0|)))))
 :qid |gitissue3855dfy.348:9|
 :skolemid |1014|
 :pattern ( (_module.Edge.t |e#1@@0|))
 :pattern ( (_module.Edge.f |e#1@@0|))
 :pattern ( (|Set#IsMember| |edges#0@@18| ($Box DatatypeTypeType |e#1@@0|)))
)) (= (_module.Memory.justHeapExternalEdges this@@30 (Lit SetType |edges#0@@18|)) (|Set#FromBoogieMap| (|lambda#76| Tclass._module.Edge (Lit SetType |edges#0@@18|))))))
 :qid |gitissue3855dfy.345:12|
 :weight 3
 :skolemid |1015|
 :pattern ( (_module.Memory.justHeapExternalEdges this@@30 (Lit SetType |edges#0@@18|)))
))))
(assert (forall ((|l#0@@6| T@U) (|l#1@@6| T@U) (|$w#0@@0| T@U) ) (! (= (MapType0Select BoxType BoxType (|lambda#55| |l#0@@6| |l#1@@6|) |$w#0@@0|) ($Box SetType (_module.Memory.externalEdges |l#0@@6| ($Unbox DatatypeTypeType |$w#0@@0|) |l#1@@6|)))
 :qid |gitissue3855dfy.280:13|
 :skolemid |1419|
 :pattern ( (MapType0Select BoxType BoxType (|lambda#55| |l#0@@6| |l#1@@6|) |$w#0@@0|))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((this@@31 T@U) (|o#0@@8| T@U) (|edges#0@@19| T@U) ) (!  (=> (or (|_module.Memory.externalEdges#canCall| (Lit refType this@@31) (Lit DatatypeTypeType |o#0@@8|) (Lit SetType |edges#0@@19|)) (and (< 3 $FunctionContextHeight) (and (and (and (or (not (= this@@31 null)) (not true)) ($Is refType this@@31 Tclass._module.Memory)) ($Is DatatypeTypeType |o#0@@8| Tclass._module.Region)) ($Is SetType |edges#0@@19| (TSet Tclass._module.Edge))))) (and (forall ((|e#2@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |e#2@@1| Tclass._module.Edge) (=> (|Set#IsMember| (Lit SetType |edges#0@@19|) ($Box DatatypeTypeType |e#2@@1|)) (and (and (and (|$IsA#_module.Region| (_module.Object.region (_module.Edge.t |e#2@@1|))) (|$IsA#_module.Region| (Lit DatatypeTypeType |o#0@@8|))) (_module.Edge.Edge_q |e#2@@1|)) (=> (|_module.Region#Equal| (_module.Object.region (_module.Edge.t |e#2@@1|)) |o#0@@8|) (and (and (|$IsA#_module.Region| (_module.Object.region (_module.Edge.f |e#2@@1|))) (|$IsA#_module.Region| (Lit DatatypeTypeType |o#0@@8|))) (_module.Edge.Edge_q |e#2@@1|))))))
 :qid |gitissue3855dfy.339:9|
 :skolemid |1006|
 :pattern ( (_module.Edge.f |e#2@@1|))
 :pattern ( (_module.Edge.t |e#2@@1|))
 :pattern ( (|Set#IsMember| |edges#0@@19| ($Box DatatypeTypeType |e#2@@1|)))
)) (= (_module.Memory.externalEdges (Lit refType this@@31) (Lit DatatypeTypeType |o#0@@8|) (Lit SetType |edges#0@@19|)) (|Set#FromBoogieMap| (|lambda#71| Tclass._module.Edge (Lit SetType |edges#0@@19|) |o#0@@8| |o#0@@8|)))))
 :qid |gitissue3855dfy.336:12|
 :weight 3
 :skolemid |1007|
 :pattern ( (_module.Memory.externalEdges (Lit refType this@@31) (Lit DatatypeTypeType |o#0@@8|) (Lit SetType |edges#0@@19|)))
))))
(assert (forall ((u@@2 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |285|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@16 T@U) (this@@32 T@U) (|os#0@@7| T@U) ) (!  (=> (or (|_module.Memory.justTheIsos#canCall| $Heap@@16 this@@32 |os#0@@7|) (and (< 3 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@16) (and (or (not (= this@@32 null)) (not true)) (and ($Is refType this@@32 Tclass._module.Memory) ($IsAlloc refType this@@32 Tclass._module.Memory $Heap@@16)))) (and ($Is SetType |os#0@@7| (TSet Tclass._module.Object)) ($IsAlloc SetType |os#0@@7| (TSet Tclass._module.Object) $Heap@@16))))) (and (and (and (forall ((|r#0@@2| T@U) ) (!  (=> (and ($Is refType |r#0@@2| Tclass._module.Object) (|Set#IsMember| (_module.Memory.justTheIsos $Heap@@16 this@@32 |os#0@@7|) ($Box refType |r#0@@2|))) (_module.Region.Isolate_q (_module.Object.region |r#0@@2|)))
 :qid |gitissue3855dfy.237:20|
 :skolemid |888|
 :pattern ( (_module.Object.region |r#0@@2|))
 :pattern ( (|Set#IsMember| (_module.Memory.justTheIsos $Heap@@16 this@@32 |os#0@@7|) ($Box refType |r#0@@2|)))
)) (forall ((|o#0@@9| T@U) ) (!  (=> (and ($Is refType |o#0@@9| Tclass._module.Object) (|Set#IsMember| |os#0@@7| ($Box refType |o#0@@9|))) (=> (_module.Region.Isolate_q (_module.Object.region |o#0@@9|)) (|Set#IsMember| (_module.Memory.justTheIsos $Heap@@16 this@@32 |os#0@@7|) ($Box refType |o#0@@9|))))
 :qid |gitissue3855dfy.238:20|
 :skolemid |889|
 :pattern ( (|Set#IsMember| (_module.Memory.justTheIsos $Heap@@16 this@@32 |os#0@@7|) ($Box refType |o#0@@9|)))
 :pattern ( (_module.Object.region |o#0@@9|))
 :pattern ( (|Set#IsMember| |os#0@@7| ($Box refType |o#0@@9|)))
))) (=> (|Set#Equal| |os#0@@7| |Set#Empty|) (|Set#Equal| (_module.Memory.justTheIsos $Heap@@16 this@@32 |os#0@@7|) |Set#Empty|))) ($Is SetType (_module.Memory.justTheIsos $Heap@@16 this@@32 |os#0@@7|) (TSet Tclass._module.Object))))
 :qid |gitissue3855dfy.235:12|
 :skolemid |890|
 :pattern ( (_module.Memory.justTheIsos $Heap@@16 this@@32 |os#0@@7|))
))))
(assert (forall ((bx@@12 T@U) (s@@2 T@U) (t@@10 T@U) ) (!  (=> ($IsBox bx@@12 (TMap s@@2 t@@10)) (and (= ($Box MapType ($Unbox MapType bx@@12)) bx@@12) ($Is MapType ($Unbox MapType bx@@12) (TMap s@@2 t@@10))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |36|
 :pattern ( ($IsBox bx@@12 (TMap s@@2 t@@10)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@13)) bx@@13) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@13) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |455|
 :pattern ( ($IsBox bx@@13 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((d@@25 T@U) ) (!  (=> (|$IsA#_module.Region| d@@25) (or (or (or (or (_module.Region.Frozen_q d@@25) (_module.Region.Heap_q d@@25)) (_module.Region.Stack_q d@@25)) (_module.Region.Frame_q d@@25)) (_module.Region.Isolate_q d@@25)))
 :qid |unknown.0:0|
 :skolemid |730|
 :pattern ( (|$IsA#_module.Region| d@@25))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |452|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((m@@7 T@U) ) (!  (or (= m@@7 |Map#Empty|) (exists ((k T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@7) k)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |273|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |274|
 :pattern ( (|Map#Domain| m@@7))
)))
(assert (forall ((m@@8 T@U) ) (!  (or (= m@@8 |Map#Empty|) (exists ((v@@5 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@8) v@@5)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |275|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |276|
 :pattern ( (|Map#Values| m@@8))
)))
(assert (forall ((m@@9 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@9) item)  (and (|Set#IsMember| (|Map#Domain| m@@9) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@9) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |284|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@9) item))
)))
(assert (forall ((m@@10 T@U) (v@@6 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@10) v@@6) (exists ((u@@3 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@10) u@@3) (= v@@6 (MapType0Select BoxType BoxType (|Map#Elements| m@@10) u@@3)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |282|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@10) u@@3))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@10) u@@3))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |283|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@10) v@@6))
)))
(assert (forall ((d@@26 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@26)) (DtRank d@@26))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@26)))
)))
(assert (forall ((m@@11 T@U) ) (! (= (|Set#Card| (|Map#Domain| m@@11)) (|Map#Card| m@@11))
 :qid |DafnyPreludebpl.1396:15|
 :skolemid |279|
 :pattern ( (|Set#Card| (|Map#Domain| m@@11)))
 :pattern ( (|Map#Card| m@@11))
)))
(assert (forall ((m@@12 T@U) ) (! (= (|Set#Card| (|Map#Items| m@@12)) (|Map#Card| m@@12))
 :qid |DafnyPreludebpl.1402:15|
 :skolemid |281|
 :pattern ( (|Set#Card| (|Map#Items| m@@12)))
 :pattern ( (|Map#Card| m@@12))
)))
(assert (forall ((m@@13 T@U) ) (! (<= (|Set#Card| (|Map#Values| m@@13)) (|Map#Card| m@@13))
 :qid |DafnyPreludebpl.1399:15|
 :skolemid |280|
 :pattern ( (|Set#Card| (|Map#Values| m@@13)))
 :pattern ( (|Map#Card| m@@13))
)))
(assert (forall ((bx@@14 T@U) (t@@11 T@U) ) (!  (=> ($IsBox bx@@14 (TSet t@@11)) (and (= ($Box SetType ($Unbox SetType bx@@14)) bx@@14) ($Is SetType ($Unbox SetType bx@@14) (TSet t@@11))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@14 (TSet t@@11)))
)))
(assert (forall ((bx@@15 T@U) (t@@12 T@U) ) (!  (=> ($IsBox bx@@15 (TSeq t@@12)) (and (= ($Box SeqType ($Unbox SeqType bx@@15)) bx@@15) ($Is SeqType ($Unbox SeqType bx@@15) (TSeq t@@12))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@15 (TSeq t@@12)))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((this@@33 T@U) (|edges#0@@20| T@U) ) (!  (=> (or (|_module.Memory.heapExternalsZeroOrOneEdges#canCall| this@@33 |edges#0@@20|) (and (< 4 $FunctionContextHeight) (and (and (or (not (= this@@33 null)) (not true)) ($Is refType this@@33 Tclass._module.Memory)) ($Is SetType |edges#0@@20| (TSet Tclass._module.Edge))))) (and (and (|_module.Memory.justHeapExternalEdges#canCall| this@@33 |edges#0@@20|) (let ((|heapExternalEdges#0| (_module.Memory.justHeapExternalEdges this@@33 |edges#0@@20|)))
 (and (forall ((|he#0@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |he#0@@0| Tclass._module.Edge) (=> (|Set#IsMember| |heapExternalEdges#0| ($Box DatatypeTypeType |he#0@@0|)) (_module.Edge.Edge_q |he#0@@0|)))
 :qid |gitissue3855dfy.282:39|
 :skolemid |944|
 :pattern ( (_module.Edge.t |he#0@@0|))
 :pattern ( (|Set#IsMember| |heapExternalEdges#0| ($Box DatatypeTypeType |he#0@@0|)))
)) (let ((|allRelevantHeapRegions#0| (|Set#FromBoogieMap| (|lambda#52| Tclass._module.Edge |heapExternalEdges#0| |heapExternalEdges#0|))))
(forall ((|r#0@@3| T@U) ) (!  (=> ($Is DatatypeTypeType |r#0@@3| Tclass._module.Region) (=> (|Set#IsMember| |allRelevantHeapRegions#0| ($Box DatatypeTypeType |r#0@@3|)) (|_module.Memory.externalEdges#canCall| this@@33 |r#0@@3| |heapExternalEdges#0|)))
 :qid |gitissue3855dfy.285:11|
 :skolemid |945|
 :pattern ( (_module.Memory.externalEdges this@@33 |r#0@@3| |heapExternalEdges#0|))
 :pattern ( (|Set#IsMember| |allRelevantHeapRegions#0| ($Box DatatypeTypeType |r#0@@3|)))
)))))) (= (_module.Memory.heapExternalsZeroOrOneEdges this@@33 |edges#0@@20|) (let ((|heapExternalEdges#0@@0| (_module.Memory.justHeapExternalEdges this@@33 |edges#0@@20|)))
(let ((|allRelevantHeapRegions#0@@0| (|Set#FromBoogieMap| (|lambda#52| Tclass._module.Edge |heapExternalEdges#0@@0| |heapExternalEdges#0@@0|))))
(let ((|heapExternalEdgesPartitionedByRegion#0| (|Map#Glue| (|Set#FromBoogieMap| (|lambda#54| Tclass._module.Region |allRelevantHeapRegions#0@@0|)) (|lambda#55| this@@33 |heapExternalEdges#0@@0|) (TMap Tclass._module.Region (TSet Tclass._module.Edge)))))
(forall ((|hr#0| T@U) ) (!  (=> (and ($Is DatatypeTypeType |hr#0| Tclass._module.Region) (|Set#IsMember| (|Map#Domain| |heapExternalEdgesPartitionedByRegion#0|) ($Box DatatypeTypeType |hr#0|))) (<= (|Set#Card| ($Unbox SetType (MapType0Select BoxType BoxType (|Map#Elements| |heapExternalEdgesPartitionedByRegion#0|) ($Box DatatypeTypeType |hr#0|)))) (LitInt 1)))
 :qid |gitissue3855dfy.286:12|
 :skolemid |943|
 :pattern ( ($Unbox SetType (MapType0Select BoxType BoxType (|Map#Elements| |heapExternalEdgesPartitionedByRegion#0|) ($Box DatatypeTypeType |hr#0|))))
 :pattern ( (|Set#IsMember| (|Map#Domain| |heapExternalEdgesPartitionedByRegion#0|) ($Box DatatypeTypeType |hr#0|)))
))))))))
 :qid |gitissue3855dfy.280:13|
 :skolemid |947|
 :pattern ( (_module.Memory.heapExternalsZeroOrOneEdges this@@33 |edges#0@@20|))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@17 T@U) (this@@34 T@U) (|os#0@@8| T@U) ) (!  (=> (or (|_module.Memory.isosRefCountZeroOrOne#canCall| $Heap@@17 this@@34 |os#0@@8|) (and (< 4 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@17) (and (or (not (= this@@34 null)) (not true)) (and ($Is refType this@@34 Tclass._module.Memory) ($IsAlloc refType this@@34 Tclass._module.Memory $Heap@@17)))) ($Is SetType |os#0@@8| (TSet Tclass._module.Object))))) (and (and (|_module.Memory.edges#canCall| $Heap@@17 this@@34 |os#0@@8|) (let ((|edges#0@@21| (_module.Memory.edges $Heap@@17 this@@34 |os#0@@8|)))
 (and (|_module.Memory.justTheIsos#canCall| $Heap@@17 this@@34 |os#0@@8|) (let ((|isos#0| (_module.Memory.justTheIsos $Heap@@17 this@@34 |os#0@@8|)))
(forall ((|i#0| T@U) ) (!  (=> ($Is refType |i#0| Tclass._module.Object) (=> (|Set#IsMember| |isos#0| ($Box refType |i#0|)) (|_module.Memory.refCountEdges#canCall| this@@34 |i#0| |edges#0@@21|)))
 :qid |gitissue3855dfy.320:12|
 :skolemid |983|
 :pattern ( (_module.Memory.refCountEdges this@@34 |i#0| |edges#0@@21|))
 :pattern ( (|Set#IsMember| |isos#0| ($Box refType |i#0|)))
)))))) (= (_module.Memory.isosRefCountZeroOrOne $Heap@@17 this@@34 |os#0@@8|) (let ((|edges#0@@22| (_module.Memory.edges $Heap@@17 this@@34 |os#0@@8|)))
(let ((|isos#0@@0| (_module.Memory.justTheIsos $Heap@@17 this@@34 |os#0@@8|)))
(forall ((|i#0@@0| T@U) ) (!  (=> (and ($Is refType |i#0@@0| Tclass._module.Object) (|Set#IsMember| |isos#0@@0| ($Box refType |i#0@@0|))) (<= (_module.Memory.refCountEdges this@@34 |i#0@@0| |edges#0@@22|) (LitInt 1)))
 :qid |gitissue3855dfy.320:12|
 :skolemid |982|
 :pattern ( (_module.Memory.refCountEdges this@@34 |i#0@@0| |edges#0@@22|))
 :pattern ( (|Set#IsMember| |isos#0@@0| ($Box refType |i#0@@0|)))
)))))))
 :qid |gitissue3855dfy.315:13|
 :skolemid |984|
 :pattern ( (_module.Memory.isosRefCountZeroOrOne $Heap@@17 this@@34 |os#0@@8|) ($IsGoodHeap $Heap@@17))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@18 T@U) (this@@35 T@U) ) (!  (=> (or (|_module.Object.Valid#canCall| $Heap@@18 this@@35) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@18) (and (or (not (= this@@35 null)) (not true)) (and ($Is refType this@@35 Tclass._module.Object) ($IsAlloc refType this@@35 Tclass._module.Object $Heap@@18)))))) (and (and (|_module.Object.AllFieldsAreDeclared#canCall| $Heap@@18 this@@35) (=> (_module.Object.AllFieldsAreDeclared $Heap@@18 this@@35) (and (|_module.Object.AllFieldsContentsConsistentWithTheirDeclaration#canCall| $Heap@@18 this@@35) (=> (_module.Object.AllFieldsContentsConsistentWithTheirDeclaration $Heap@@18 this@@35) (|_module.Object.AllOutgoingReferencesAreVenice#canCall| $Heap@@18 this@@35))))) (= (_module.Object.Valid true $Heap@@18 this@@35)  (and (and (_module.Object.AllFieldsAreDeclared $Heap@@18 this@@35) (_module.Object.AllFieldsContentsConsistentWithTheirDeclaration $Heap@@18 this@@35)) (_module.Object.AllOutgoingReferencesAreVenice $Heap@@18 this@@35)))))
 :qid |gitissue3855dfy.110:23|
 :skolemid |770|
 :pattern ( (_module.Object.Valid true $Heap@@18 this@@35) ($IsGoodHeap $Heap@@18))
))))
(assert (forall ((v@@7 T@U) (t0@@6 T@U) (t1@@3 T@U) ) (! (= ($Is MapType v@@7 (TMap t0@@6 t1@@3)) (forall ((bx@@16 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@7) bx@@16) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@7) bx@@16) t1@@3) ($IsBox bx@@16 t0@@6)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |55|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@7) bx@@16))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@7) bx@@16))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |56|
 :pattern ( ($Is MapType v@@7 (TMap t0@@6 t1@@3)))
)))
(assert (forall ((d@@27 T@U) ($h@@16 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) ($Is DatatypeTypeType d@@27 Tclass._module.Mode)) ($IsAlloc DatatypeTypeType d@@27 Tclass._module.Mode $h@@16))
 :qid |unknown.0:0|
 :skolemid |688|
 :pattern ( ($IsAlloc DatatypeTypeType d@@27 Tclass._module.Mode $h@@16))
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
(assert (forall ((d@@28 T@U) ($h@@17 T@U) ) (!  (=> (and ($IsGoodHeap $h@@17) (and (_module.Edge.Edge_q d@@28) ($IsAlloc DatatypeTypeType d@@28 Tclass._module.Edge $h@@17))) ($IsAlloc SeqType (_module.Edge.n d@@28) (TSeq TChar) $h@@17))
 :qid |unknown.0:0|
 :skolemid |812|
 :pattern ( ($IsAlloc SeqType (_module.Edge.n d@@28) (TSeq TChar) $h@@17))
)))
(assert (forall ((d@@29 T@U) ) (!  (=> ($Is DatatypeTypeType d@@29 Tclass._module.Mode) (or (or (or (or (_module.Mode.Imm_q d@@29) (_module.Mode.Iso_q d@@29)) (_module.Mode.Mut_q d@@29)) (_module.Mode.Tmp_q d@@29)) (_module.Mode.Sus_q d@@29)))
 :qid |unknown.0:0|
 :skolemid |690|
 :pattern ( (_module.Mode.Sus_q d@@29) ($Is DatatypeTypeType d@@29 Tclass._module.Mode))
 :pattern ( (_module.Mode.Tmp_q d@@29) ($Is DatatypeTypeType d@@29 Tclass._module.Mode))
 :pattern ( (_module.Mode.Mut_q d@@29) ($Is DatatypeTypeType d@@29 Tclass._module.Mode))
 :pattern ( (_module.Mode.Iso_q d@@29) ($Is DatatypeTypeType d@@29 Tclass._module.Mode))
 :pattern ( (_module.Mode.Imm_q d@@29) ($Is DatatypeTypeType d@@29 Tclass._module.Mode))
)))
(assert (forall ((d@@30 T@U) ) (!  (=> ($Is DatatypeTypeType d@@30 Tclass._module.Region) (or (or (or (or (_module.Region.Frozen_q d@@30) (_module.Region.Heap_q d@@30)) (_module.Region.Stack_q d@@30)) (_module.Region.Frame_q d@@30)) (_module.Region.Isolate_q d@@30)))
 :qid |unknown.0:0|
 :skolemid |731|
 :pattern ( (_module.Region.Isolate_q d@@30) ($Is DatatypeTypeType d@@30 Tclass._module.Region))
 :pattern ( (_module.Region.Frame_q d@@30) ($Is DatatypeTypeType d@@30 Tclass._module.Region))
 :pattern ( (_module.Region.Stack_q d@@30) ($Is DatatypeTypeType d@@30 Tclass._module.Region))
 :pattern ( (_module.Region.Heap_q d@@30) ($Is DatatypeTypeType d@@30 Tclass._module.Region))
 :pattern ( (_module.Region.Frozen_q d@@30) ($Is DatatypeTypeType d@@30 Tclass._module.Region))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|f#0@@0| T@U) (|t#0@@10| T@U) ) (!  (=> (or (|_module.__default.VeniceReferenceOK#canCall| |f#0@@0| |t#0@@10|) (and (< 3 $FunctionContextHeight) (and ($Is refType |f#0@@0| Tclass._module.Object) ($Is refType |t#0@@10| Tclass._module.Object)))) (= (_module.__default.VeniceReferenceOK |f#0@@0| |t#0@@10|) (ite (_module.Region.Frozen_q (_module.Object.region |t#0@@10|)) true (ite (_module.Region.Heap_q (_module.Object.region |f#0@@0|))  (or (_module.Region.Isolate_q (_module.Object.region |t#0@@10|)) (and (_module.Region.Heap_q (_module.Object.region |t#0@@10|)) (= (_module.Region.region (_module.Object.region |t#0@@10|)) (_module.Region.region (_module.Object.region |f#0@@0|))))) (ite (_module.Region.Isolate_q (_module.Object.region |f#0@@0|))  (or (_module.Region.Isolate_q (_module.Object.region |t#0@@10|)) (and (_module.Region.Heap_q (_module.Object.region |t#0@@10|)) (= (_module.Region.region (_module.Object.region |t#0@@10|)) |f#0@@0|))) false)))))
 :qid |gitissue3855dfy.38:29|
 :skolemid |593|
 :pattern ( (_module.__default.VeniceReferenceOK |f#0@@0| |t#0@@10|))
))))
(assert (forall ((a@@10 T@U) (b@@10 T@U) ) (! (= (|Set#Equal| a@@10 b@@10) (forall ((o@@1 T@U) ) (! (= (|Set#IsMember| a@@10 o@@1) (|Set#IsMember| b@@10 o@@1))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@10 o@@1))
 :pattern ( (|Set#IsMember| b@@10 o@@1))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@10 b@@10))
)))
(assert (forall ((d@@31 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@18 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (_System.Tuple2.___hMake2_q d@@31) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@31 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@18)
 :qid |unknown.0:0|
 :skolemid |458|
 :pattern ( ($IsAlloc DatatypeTypeType d@@31 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@18))
)))) ($IsAllocBox (_System.Tuple2._0 d@@31) |_System._tuple#2$T0@@6| $h@@18))
 :qid |unknown.0:0|
 :skolemid |459|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@31) |_System._tuple#2$T0@@6| $h@@18))
)))
(assert (forall ((d@@32 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@19 T@U) ) (!  (=> (and ($IsGoodHeap $h@@19) (and (_System.Tuple2.___hMake2_q d@@32) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@32 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@19)
 :qid |unknown.0:0|
 :skolemid |460|
 :pattern ( ($IsAlloc DatatypeTypeType d@@32 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@19))
)))) ($IsAllocBox (_System.Tuple2._1 d@@32) |_System._tuple#2$T1@@7| $h@@19))
 :qid |unknown.0:0|
 :skolemid |461|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@32) |_System._tuple#2$T1@@7| $h@@19))
)))
(assert (forall ((|l#0@@7| T@U) (|l#1@@7| T@U) (|l#2@@3| T@U) (|l#3@@1| T@U) (|l#4@@0| T@U) (|l#5| T@U) (|l#6| T@U) (|l#7| T@U) (|l#8| T@U) (|l#9| T@U) (|l#10| T@U) (|$y#0@@3| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#47| |l#0@@7| |l#1@@7| |l#2@@3| |l#3@@1| |l#4@@0| |l#5| |l#6| |l#7| |l#8| |l#9| |l#10|) |$y#0@@3|)) (exists ((|o#0@@10| T@U) (|n#0@@1| T@U) ) (!  (and (and (and ($Is refType |o#0@@10| |l#0@@7|) ($Is SeqType |n#0@@1| |l#1@@7|)) (and (|Set#IsMember| |l#2@@3| ($Box refType |o#0@@10|)) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#3@@1| |o#0@@10|) |l#4@@0|))) ($Box SeqType |n#0@@1|)))) (= |$y#0@@3| ($Box DatatypeTypeType (|#_module.Edge.Edge| |o#0@@10| |n#0@@1| ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#5| |o#0@@10|) |l#6|))) ($Box SeqType |n#0@@1|)))))))
 :qid |gitissue3855dfy.261:10|
 :skolemid |920|
 :pattern ( ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#9| |o#0@@10|) |l#10|))) ($Box SeqType |n#0@@1|))))
 :pattern ( (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#7| |o#0@@10|) |l#8|))) ($Box SeqType |n#0@@1|)))
)))
 :qid |gitissue3855dfy.87:7|
 :skolemid |1416|
 :pattern ( (MapType0Select BoxType boolType (|lambda#47| |l#0@@7| |l#1@@7| |l#2@@3| |l#3@@1| |l#4@@0| |l#5| |l#6| |l#7| |l#8| |l#9| |l#10|) |$y#0@@3|))
)))
(assert (forall ((d@@33 T@U) ($h@@20 T@U) ) (!  (=> (and ($IsGoodHeap $h@@20) (and (_module.Region.Heap_q d@@33) ($IsAlloc DatatypeTypeType d@@33 Tclass._module.Region $h@@20))) ($IsAlloc refType (_module.Region.region d@@33) Tclass._module.Object $h@@20))
 :qid |unknown.0:0|
 :skolemid |706|
 :pattern ( ($IsAlloc refType (_module.Region.region d@@33) Tclass._module.Object $h@@20))
)))
(assert (forall ((d@@34 T@U) ($h@@21 T@U) ) (!  (=> (and ($IsGoodHeap $h@@21) (and (_module.Region.Stack_q d@@34) ($IsAlloc DatatypeTypeType d@@34 Tclass._module.Region $h@@21))) ($IsAlloc refType (_module.Region.region d@@34) Tclass._module.Object $h@@21))
 :qid |unknown.0:0|
 :skolemid |715|
 :pattern ( ($IsAlloc refType (_module.Region.region d@@34) Tclass._module.Object $h@@21))
)))
(assert (forall ((d@@35 T@U) ($h@@22 T@U) ) (!  (=> (and ($IsGoodHeap $h@@22) (and (_module.Region.Frame_q d@@35) ($IsAlloc DatatypeTypeType d@@35 Tclass._module.Region $h@@22))) ($IsAlloc refType (_module.Region.prev d@@35) Tclass._module.Object $h@@22))
 :qid |unknown.0:0|
 :skolemid |724|
 :pattern ( ($IsAlloc refType (_module.Region.prev d@@35) Tclass._module.Object $h@@22))
)))
(assert (forall ((d@@36 T@U) ($h@@23 T@U) ) (!  (=> (and ($IsGoodHeap $h@@23) (and (_module.Edge.Edge_q d@@36) ($IsAlloc DatatypeTypeType d@@36 Tclass._module.Edge $h@@23))) ($IsAlloc refType (_module.Edge.f d@@36) Tclass._module.Object $h@@23))
 :qid |unknown.0:0|
 :skolemid |811|
 :pattern ( ($IsAlloc refType (_module.Edge.f d@@36) Tclass._module.Object $h@@23))
)))
(assert (forall ((d@@37 T@U) ($h@@24 T@U) ) (!  (=> (and ($IsGoodHeap $h@@24) (and (_module.Edge.Edge_q d@@37) ($IsAlloc DatatypeTypeType d@@37 Tclass._module.Edge $h@@24))) ($IsAlloc refType (_module.Edge.t d@@37) Tclass._module.Object $h@@24))
 :qid |unknown.0:0|
 :skolemid |813|
 :pattern ( ($IsAlloc refType (_module.Edge.t d@@37) Tclass._module.Object $h@@24))
)))
(assert (forall ((|a#3#0#0@@0| T@U) (|a#3#1#0@@0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0@@0|) (Lit BoxType |a#3#1#0@@0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0@@0| |a#3#1#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |462|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0@@0|) (Lit BoxType |a#3#1#0@@0|)))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
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
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@8)) (Lit BoxType ($Box T@@4 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@8)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@19 T@U) (this@@36 T@U) (|os#0@@9| T@U) ) (!  (=> (or (|_module.Memory.edges#canCall| $Heap@@19 this@@36 |os#0@@9|) (and (< 2 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@19) (and (or (not (= this@@36 null)) (not true)) (and ($Is refType this@@36 Tclass._module.Memory) ($IsAlloc refType this@@36 Tclass._module.Memory $Heap@@19)))) ($Is SetType |os#0@@9| (TSet Tclass._module.Object))))) (= (_module.Memory.edges $Heap@@19 this@@36 |os#0@@9|) (|Set#FromBoogieMap| (|lambda#47| Tclass._module.Object (TSeq TChar) |os#0@@9| $Heap@@19 _module.Object.fields $Heap@@19 _module.Object.fields $Heap@@19 _module.Object.fields $Heap@@19 _module.Object.fields))))
 :qid |gitissue3855dfy.256:12|
 :skolemid |921|
 :pattern ( (_module.Memory.edges $Heap@@19 this@@36 |os#0@@9|) ($IsGoodHeap $Heap@@19))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((this@@37 T@U) (|t#0@@11| T@U) (|edges#0@@23| T@U) ) (!  (=> (or (|_module.Memory.refCountEdges#canCall| this@@37 (Lit refType |t#0@@11|) (Lit SetType |edges#0@@23|)) (and (< 3 $FunctionContextHeight) (and (and (and (or (not (= this@@37 null)) (not true)) ($Is refType this@@37 Tclass._module.Memory)) ($Is refType |t#0@@11| Tclass._module.Object)) ($Is SetType |edges#0@@23| (TSet Tclass._module.Edge))))) (and (|_module.Memory.incomingEdges#canCall| this@@37 (Lit refType |t#0@@11|) (Lit SetType |edges#0@@23|)) (= (_module.Memory.refCountEdges this@@37 (Lit refType |t#0@@11|) (Lit SetType |edges#0@@23|)) (|Set#Card| (_module.Memory.incomingEdges this@@37 (Lit refType |t#0@@11|) (Lit SetType |edges#0@@23|))))))
 :qid |gitissue3855dfy.251:12|
 :weight 3
 :skolemid |911|
 :pattern ( (_module.Memory.refCountEdges this@@37 (Lit refType |t#0@@11|) (Lit SetType |edges#0@@23|)))
))))
(assert (forall ((s@@3 T@U) ) (!  (=> (= (|Seq#Length| s@@3) 0) (= s@@3 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@3))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((this@@38 T@U) (|o#0@@11| T@U) (|edges#0@@24| T@U) ) (!  (=> (or (|_module.Memory.externalEdges#canCall| this@@38 (Lit DatatypeTypeType |o#0@@11|) (Lit SetType |edges#0@@24|)) (and (< 3 $FunctionContextHeight) (and (and (and (or (not (= this@@38 null)) (not true)) ($Is refType this@@38 Tclass._module.Memory)) ($Is DatatypeTypeType |o#0@@11| Tclass._module.Region)) ($Is SetType |edges#0@@24| (TSet Tclass._module.Edge))))) (and (forall ((|e#1@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |e#1@@1| Tclass._module.Edge) (=> (|Set#IsMember| (Lit SetType |edges#0@@24|) ($Box DatatypeTypeType |e#1@@1|)) (and (and (and (|$IsA#_module.Region| (_module.Object.region (_module.Edge.t |e#1@@1|))) (|$IsA#_module.Region| (Lit DatatypeTypeType |o#0@@11|))) (_module.Edge.Edge_q |e#1@@1|)) (=> (|_module.Region#Equal| (_module.Object.region (_module.Edge.t |e#1@@1|)) |o#0@@11|) (and (and (|$IsA#_module.Region| (_module.Object.region (_module.Edge.f |e#1@@1|))) (|$IsA#_module.Region| (Lit DatatypeTypeType |o#0@@11|))) (_module.Edge.Edge_q |e#1@@1|))))))
 :qid |gitissue3855dfy.339:9|
 :skolemid |1004|
 :pattern ( (_module.Edge.f |e#1@@1|))
 :pattern ( (_module.Edge.t |e#1@@1|))
 :pattern ( (|Set#IsMember| |edges#0@@24| ($Box DatatypeTypeType |e#1@@1|)))
)) (= (_module.Memory.externalEdges this@@38 (Lit DatatypeTypeType |o#0@@11|) (Lit SetType |edges#0@@24|)) (|Set#FromBoogieMap| (|lambda#71| Tclass._module.Edge (Lit SetType |edges#0@@24|) |o#0@@11| |o#0@@11|)))))
 :qid |gitissue3855dfy.336:12|
 :weight 3
 :skolemid |1005|
 :pattern ( (_module.Memory.externalEdges this@@38 (Lit DatatypeTypeType |o#0@@11|) (Lit SetType |edges#0@@24|)))
))))
(assert (forall ((h@@3 T@U) (v@@8 T@U) ) (! ($IsAlloc charType v@@8 TChar h@@3)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |64|
 :pattern ( ($IsAlloc charType v@@8 TChar h@@3))
)))
(assert (forall ((v@@9 T@U) (t0@@7 T@U) ) (! (= ($Is SeqType v@@9 (TSeq t0@@7)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@9))) ($IsBox (|Seq#Index| v@@9 i@@1) t0@@7))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@9 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@9 (TSeq t0@@7)))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@20 T@U) (this@@39 T@U) ) (!  (=> (or (|_module.Object.AllOutgoingReferencesAreVenice#canCall| $Heap@@20 this@@39) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@20) (and (or (not (= this@@39 null)) (not true)) (and ($Is refType this@@39 Tclass._module.Object) ($IsAlloc refType this@@39 Tclass._module.Object $Heap@@20)))))) (and (forall ((|n#0@@2| T@U) ) (!  (=> ($Is SeqType |n#0@@2| (TSeq TChar)) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@20 this@@39) _module.Object.fields))) ($Box SeqType |n#0@@2|)) (|_module.__default.VeniceReferenceOK#canCall| this@@39 ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@20 this@@39) _module.Object.fields))) ($Box SeqType |n#0@@2|))))))
 :qid |gitissue3855dfy.134:16|
 :skolemid |796|
 :pattern ( ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@20 this@@39) _module.Object.fields))) ($Box SeqType |n#0@@2|))))
 :pattern ( (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@20 this@@39) _module.Object.fields))) ($Box SeqType |n#0@@2|)))
)) (= (_module.Object.AllOutgoingReferencesAreVenice $Heap@@20 this@@39) (forall ((|n#0@@3| T@U) ) (!  (=> (and ($Is SeqType |n#0@@3| (TSeq TChar)) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@20 this@@39) _module.Object.fields))) ($Box SeqType |n#0@@3|))) (_module.__default.VeniceReferenceOK this@@39 ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@20 this@@39) _module.Object.fields))) ($Box SeqType |n#0@@3|)))))
 :qid |gitissue3855dfy.134:16|
 :skolemid |795|
 :pattern ( ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@20 this@@39) _module.Object.fields))) ($Box SeqType |n#0@@3|))))
 :pattern ( (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@20 this@@39) _module.Object.fields))) ($Box SeqType |n#0@@3|)))
)))))
 :qid |gitissue3855dfy.131:13|
 :skolemid |797|
 :pattern ( (_module.Object.AllOutgoingReferencesAreVenice $Heap@@20 this@@39) ($IsGoodHeap $Heap@@20))
))))
(assert (forall ((m@@14 T@U) ) (!  (or (= m@@14 |Map#Empty|) (exists ((k@@0 T@U) (v@@10 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@14) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@0 v@@10)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |277|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |278|
 :pattern ( (|Map#Items| m@@14))
)))
(assert (forall ((s@@4 T@U) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| s@@4))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@4 i@@2))) (|Seq#Rank| s@@4)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@4 i@@2))))
)))
(assert (forall ((v@@11 T@U) (t0@@8 T@U) (t1@@4 T@U) ) (!  (=> ($Is MapType v@@11 (TMap t0@@8 t1@@4)) (and (and ($Is SetType (|Map#Domain| v@@11) (TSet t0@@8)) ($Is SetType (|Map#Values| v@@11) (TSet t1@@4))) ($Is SetType (|Map#Items| v@@11) (TSet (Tclass._System.Tuple2 t0@@8 t1@@4)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |57|
 :pattern ( ($Is MapType v@@11 (TMap t0@@8 t1@@4)))
)))
(assert (forall ((v@@12 T@U) ) (! ($Is charType v@@12 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |43|
 :pattern ( ($Is charType v@@12 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@@21 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun this@@40 () T@U)
(declare-fun |o#0@@12| () T@U)
(declare-fun |f#0@@1| () T@U)
(declare-fun |xedges#0| () T@U)
(declare-fun |xisos#0| () T@U)
(declare-fun |defass#nedge#0| () Bool)
(declare-fun |nedge#0| () T@U)
(declare-fun |zedges#0| () T@U)
(declare-fun reveal__module.Memory.Valid () Bool)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |##os#4@0| () T@U)
(declare-fun |xedges#0@0| () T@U)
(declare-fun |##os#5@0| () T@U)
(declare-fun |xisos#0@0| () T@U)
(set-info :boogie-vc-id Impl$$_module.Memory.fNullify_split1)
(set-option :timeout 10000)
(set-option :rlimit 30000000)
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
 (=> (= (ControlFlow 0 0) 2) (let ((anon0_correct  (=> (and (and ($IsGoodHeap $Heap@@21) ($IsHeapAnchor $Heap@@21)) (and (or (not (= this@@40 null)) (not true)) (and ($Is refType this@@40 Tclass._module.Memory) ($IsAlloc refType this@@40 Tclass._module.Memory $Heap@@21)))) (=> (and (and (and (and ($Is refType |o#0@@12| Tclass._module.Object) ($IsAlloc refType |o#0@@12| Tclass._module.Object $Heap@@21)) (and ($Is SeqType |f#0@@1| (TSeq TChar)) ($IsAlloc SeqType |f#0@@1| (TSeq TChar) $Heap@@21))) (and (and ($Is SetType |xedges#0| (TSet Tclass._module.Edge)) ($IsAlloc SetType |xedges#0| (TSet Tclass._module.Edge) $Heap@@21)) true)) (and (and (and ($Is SetType |xisos#0| (TSet Tclass._module.Object)) ($IsAlloc SetType |xisos#0| (TSet Tclass._module.Object) $Heap@@21)) true) (and (=> |defass#nedge#0| (and ($Is DatatypeTypeType |nedge#0| Tclass._module.Edge) ($IsAlloc DatatypeTypeType |nedge#0| Tclass._module.Edge $Heap@@21))) true))) (=> (and (and (and (and (and (and ($Is SetType |zedges#0| (TSet Tclass._module.Edge)) ($IsAlloc SetType |zedges#0| (TSet Tclass._module.Edge) $Heap@@21)) true) (and (= 9 $FunctionContextHeight) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@21 this@@40) _module.Memory.objects)) ($Box refType |o#0@@12|)))) (and (and (|Set#IsMember| (|Map#Domain| (_module.Object.fieldModes |o#0@@12|)) ($Box SeqType |f#0@@1|)) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@21 |o#0@@12|) _module.Object.fields))) ($Box SeqType |f#0@@1|))) (and (|Set#IsMember| (_module.Memory.edges $Heap@@21 this@@40 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@21 this@@40) _module.Memory.objects))) ($Box DatatypeTypeType (|#_module.Edge.Edge| |o#0@@12| |f#0@@1| ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@21 |o#0@@12|) _module.Object.fields))) ($Box SeqType |f#0@@1|)))))) (not (_module.Region.Frozen_q (_module.Object.region |o#0@@12|)))))) (and (and (and (_module.Memory.Valid reveal__module.Memory.Valid $Heap@@21 this@@40) (= $_ModifiesFrame@0 (|lambda#4| null $Heap@@21 alloc |o#0@@12| _module.Object.fields))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (and (and (= $Heap@@21 $Heap@0) reveal__module.Memory.Valid) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1))))) (and (and (and (and (= $Heap@0 $Heap@1) reveal__module.Object.Valid) (and ($IsAllocBox ($Box refType this@@40) Tclass._module.Memory? $Heap@1) (= |##os#4@0| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@40) _module.Memory.objects))))) (and (and ($IsAlloc SetType |##os#4@0| (TSet Tclass._module.Object) $Heap@1) (|_module.Memory.edges#canCall| $Heap@1 this@@40 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@40) _module.Memory.objects)))) (and (|_module.Memory.edges#canCall| $Heap@1 this@@40 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@40) _module.Memory.objects))) (= |xedges#0@0| (_module.Memory.edges $Heap@1 this@@40 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@40) _module.Memory.objects))))))) (and (and (and ($IsAllocBox ($Box refType this@@40) Tclass._module.Memory? $Heap@1) (= |##os#5@0| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@40) _module.Memory.objects)))) (and ($IsAlloc SetType |##os#5@0| (TSet Tclass._module.Object) $Heap@1) (|_module.Memory.justTheIsos#canCall| $Heap@1 this@@40 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@40) _module.Memory.objects))))) (and (and (|_module.Memory.justTheIsos#canCall| $Heap@1 this@@40 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@40) _module.Memory.objects))) (= |xisos#0@0| (_module.Memory.justTheIsos $Heap@1 this@@40 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@40) _module.Memory.objects))))) (and (or (not (= |o#0@@12| null)) (not true)) (= (ControlFlow 0 2) (- 0 1))))))) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |o#0@@12|) _module.Object.fields))) ($Box SeqType |f#0@@1|)))))))
anon0_correct))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
