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
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$Mode () T@U)
(declare-fun tytagFamily$Object () T@U)
(declare-fun tytagFamily$Region () T@U)
(declare-fun field$fields () T@U)
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
(declare-fun _module.__default.VeniceReferenceOK (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |_module.__default.VeniceReferenceOK#canCall| (T@U T@U) Bool)
(declare-fun _module.Region.region (T@U) T@U)
(declare-fun FDim (T@U) Int)
(declare-fun Tag (T@U) T@U)
(declare-fun DeclName (T@U) T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._module.Object? () T@U)
(declare-fun Tclass._module.Region () T@U)
(declare-fun |_module.Region#Equal| (T@U T@U) Bool)
(declare-fun _module.Region.Frame_q (T@U) Bool)
(declare-fun _module.Region.prev (T@U) T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.Mode.Imm| () T@U)
(declare-fun |#_module.Mode.Iso| () T@U)
(declare-fun |#_module.Mode.Mut| () T@U)
(declare-fun |#_module.Mode.Tmp| () T@U)
(declare-fun |#_module.Mode.Sus| () T@U)
(declare-fun |#_module.Region.Frozen| () T@U)
(declare-fun |#_module.Region.Isolate| () T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun _module.Object.fieldModes (T@U) T@U)
(declare-fun MapType () T@T)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun _module.Object.fields () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun _module.Mode.Sus_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |#_module.Region.Heap| (T@U) T@U)
(declare-fun |#_module.Region.Stack| (T@U) T@U)
(declare-fun |#_module.Region.Frame| (T@U) T@U)
(declare-fun _module.Object.AllFieldsContentsConsistentWithTheirDeclaration (T@U T@U) Bool)
(declare-fun |_module.Object.AllFieldsContentsConsistentWithTheirDeclaration#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.AllFieldsAreDeclared (T@U T@U) Bool)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun |Map#Equal| (T@U T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun _module.Object.AllOutgoingReferencesAreVenice (T@U T@U) Bool)
(declare-fun |_module.Object.AllFieldsAreDeclared#canCall| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun charType () T@T)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun |Map#Empty| () T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |$IsA#_module.Region| (T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |Map#Values| (T@U) T@U)
(declare-fun |Map#Items| (T@U) T@U)
(declare-fun _module.Object.Valid (Bool T@U T@U) Bool)
(declare-fun |_module.Object.Valid#canCall| (T@U T@U) Bool)
(declare-fun |_module.Object.AllOutgoingReferencesAreVenice#canCall| (T@U T@U) Bool)
(declare-fun |Seq#Rank| (T@U) Int)
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
(assert (distinct TChar TagChar TagSet TagSeq TagMap alloc allocName |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass._module.Mode Tagclass._module.Object Tagclass._module.Region Tagclass._module.Object? |##_module.Mode.Imm| |##_module.Mode.Iso| |##_module.Mode.Mut| |##_module.Mode.Tmp| |##_module.Mode.Sus| |##_module.Region.Frozen| |##_module.Region.Heap| |##_module.Region.Stack| |##_module.Region.Frame| |##_module.Region.Isolate| class._module.Object? |tytagFamily$_tuple#2| tytagFamily$Mode tytagFamily$Object tytagFamily$Region field$fields)
)
(assert  (and (= (Ctor refType) 3) (= (Ctor DatatypeTypeType) 4)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|o#0| T@U) (|t#0| T@U) ) (!  (=> (or (|_module.__default.AssignmentCompatible#canCall| |o#0| |t#0|) (and (< 3 $FunctionContextHeight) (and ($Is refType |o#0| Tclass._module.Object) ($Is DatatypeTypeType |t#0| Tclass._module.Mode)))) (= (_module.__default.AssignmentCompatible |o#0| |t#0|) (let ((|r#0| (_module.Object.region |o#0|)))
(ite (_module.Mode.Imm_q |t#0|) (_module.Region.Frozen_q |r#0|) (ite (_module.Mode.Iso_q |t#0|) (_module.Region.Isolate_q |r#0|) (ite (_module.Mode.Mut_q |t#0|) (_module.Region.Heap_q |r#0|) (ite (_module.Mode.Tmp_q |t#0|) (_module.Region.Stack_q |r#0|)  (or (_module.Region.Heap_q |r#0|) (_module.Region.Stack_q |r#0|)))))))))
 :qid |gitissue3855dfy.63:32|
 :skolemid |597|
 :pattern ( (_module.__default.AssignmentCompatible |o#0| |t#0|))
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
(assert  (=> (< 2 $FunctionContextHeight) (forall (($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) Tclass._module.Object?)) ($Is DatatypeTypeType (_module.Object.region $o) Tclass._module.Region))
 :qid |unknown.0:0|
 :skolemid |740|
 :pattern ( (_module.Object.region $o))
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
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |468|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 5)) (= (Ctor BoxType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert  (=> (< 2 $FunctionContextHeight) (forall (($h T@U) ($o@@0 T@U) ) (!  (=> (and (and ($IsGoodHeap $h) (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@0) alloc)))) ($IsAlloc DatatypeTypeType (_module.Object.region $o@@0) Tclass._module.Region $h))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |741|
 :pattern ( (_module.Object.region $o@@0) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@0) alloc)))
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
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Object $h@@0) ($IsAlloc refType |c#0| Tclass._module.Object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |803|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Object $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Object? $h@@0))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |456|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert ($Is DatatypeTypeType |#_module.Mode.Imm| Tclass._module.Mode))
(assert ($Is DatatypeTypeType |#_module.Mode.Iso| Tclass._module.Mode))
(assert ($Is DatatypeTypeType |#_module.Mode.Mut| Tclass._module.Mode))
(assert ($Is DatatypeTypeType |#_module.Mode.Tmp| Tclass._module.Mode))
(assert ($Is DatatypeTypeType |#_module.Mode.Sus| Tclass._module.Mode))
(assert ($Is DatatypeTypeType |#_module.Region.Frozen| Tclass._module.Region))
(assert ($Is DatatypeTypeType |#_module.Region.Isolate| Tclass._module.Region))
(assert (= (Ctor MapType) 8))
(assert  (=> (< 2 $FunctionContextHeight) (forall (($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) Tclass._module.Object?)) ($Is MapType (_module.Object.fieldModes $o@@2) (TMap (TSeq TChar) Tclass._module.Mode)))
 :qid |unknown.0:0|
 :skolemid |744|
 :pattern ( (_module.Object.fieldModes $o@@2))
))))
(assert (= (FDim _module.Object.fields) 0))
(assert (= (FieldOfDecl class._module.Object? field$fields) _module.Object.fields))
(assert  (not ($IsGhostField _module.Object.fields)))
(assert (forall (($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) ($IsAlloc DatatypeTypeType |#_module.Region.Frozen| Tclass._module.Region $h@@1))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |699|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.Region.Frozen| Tclass._module.Region $h@@1))
)))
(assert (forall (($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) ($IsAlloc DatatypeTypeType |#_module.Region.Isolate| Tclass._module.Region $h@@2))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |729|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.Region.Isolate| Tclass._module.Region $h@@2))
)))
(assert (forall (($o@@3 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass._module.Object? $h@@3)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |739|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._module.Object? $h@@3))
)))
(assert  (=> (< 2 $FunctionContextHeight) (forall (($h@@4 T@U) ($o@@4 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) alloc)))) ($IsAlloc MapType (_module.Object.fieldModes $o@@4) (TMap (TSeq TChar) Tclass._module.Mode) $h@@4))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |745|
 :pattern ( (_module.Object.fieldModes $o@@4) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) alloc)))
))))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (! (= (|_module.Region#Equal| a@@2 b@@2) (= a@@2 b@@2))
 :qid |unknown.0:0|
 :skolemid |737|
 :pattern ( (|_module.Region#Equal| a@@2 b@@2))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) ) (! (= (|Set#Subset| a@@3 b@@3) (forall ((o@@0 T@U) ) (!  (=> (|Set#IsMember| a@@3 o@@0) (|Set#IsMember| b@@3 o@@0))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a@@3 o@@0))
 :pattern ( (|Set#IsMember| b@@3 o@@0))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a@@3 b@@3))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@5 T@U) ) (!  (=> ($IsGoodHeap $h@@5) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@5)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@5) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@5))))
 :qid |unknown.0:0|
 :skolemid |457|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@5))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@0) (= (DatatypeCtorId d@@0) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |449|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.Mode.Imm_q d@@1) (= (DatatypeCtorId d@@1) |##_module.Mode.Imm|))
 :qid |unknown.0:0|
 :skolemid |678|
 :pattern ( (_module.Mode.Imm_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.Mode.Iso_q d@@2) (= (DatatypeCtorId d@@2) |##_module.Mode.Iso|))
 :qid |unknown.0:0|
 :skolemid |680|
 :pattern ( (_module.Mode.Iso_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (_module.Mode.Mut_q d@@3) (= (DatatypeCtorId d@@3) |##_module.Mode.Mut|))
 :qid |unknown.0:0|
 :skolemid |682|
 :pattern ( (_module.Mode.Mut_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (! (= (_module.Mode.Tmp_q d@@4) (= (DatatypeCtorId d@@4) |##_module.Mode.Tmp|))
 :qid |unknown.0:0|
 :skolemid |684|
 :pattern ( (_module.Mode.Tmp_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (! (= (_module.Mode.Sus_q d@@5) (= (DatatypeCtorId d@@5) |##_module.Mode.Sus|))
 :qid |unknown.0:0|
 :skolemid |686|
 :pattern ( (_module.Mode.Sus_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (! (= (_module.Region.Frozen_q d@@6) (= (DatatypeCtorId d@@6) |##_module.Region.Frozen|))
 :qid |unknown.0:0|
 :skolemid |697|
 :pattern ( (_module.Region.Frozen_q d@@6))
)))
(assert (forall ((d@@7 T@U) ) (! (= (_module.Region.Heap_q d@@7) (= (DatatypeCtorId d@@7) |##_module.Region.Heap|))
 :qid |unknown.0:0|
 :skolemid |701|
 :pattern ( (_module.Region.Heap_q d@@7))
)))
(assert (forall ((d@@8 T@U) ) (! (= (_module.Region.Stack_q d@@8) (= (DatatypeCtorId d@@8) |##_module.Region.Stack|))
 :qid |unknown.0:0|
 :skolemid |710|
 :pattern ( (_module.Region.Stack_q d@@8))
)))
(assert (forall ((d@@9 T@U) ) (! (= (_module.Region.Frame_q d@@9) (= (DatatypeCtorId d@@9) |##_module.Region.Frame|))
 :qid |unknown.0:0|
 :skolemid |719|
 :pattern ( (_module.Region.Frame_q d@@9))
)))
(assert (forall ((d@@10 T@U) ) (! (= (_module.Region.Isolate_q d@@10) (= (DatatypeCtorId d@@10) |##_module.Region.Isolate|))
 :qid |unknown.0:0|
 :skolemid |727|
 :pattern ( (_module.Region.Isolate_q d@@10))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@11 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@11) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@11 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |450|
)))
 :qid |unknown.0:0|
 :skolemid |451|
 :pattern ( (_System.Tuple2.___hMake2_q d@@11))
)))
(assert (forall ((d@@12 T@U) ) (!  (=> (_module.Mode.Imm_q d@@12) (= d@@12 |#_module.Mode.Imm|))
 :qid |unknown.0:0|
 :skolemid |679|
 :pattern ( (_module.Mode.Imm_q d@@12))
)))
(assert (forall ((d@@13 T@U) ) (!  (=> (_module.Mode.Iso_q d@@13) (= d@@13 |#_module.Mode.Iso|))
 :qid |unknown.0:0|
 :skolemid |681|
 :pattern ( (_module.Mode.Iso_q d@@13))
)))
(assert (forall ((d@@14 T@U) ) (!  (=> (_module.Mode.Mut_q d@@14) (= d@@14 |#_module.Mode.Mut|))
 :qid |unknown.0:0|
 :skolemid |683|
 :pattern ( (_module.Mode.Mut_q d@@14))
)))
(assert (forall ((d@@15 T@U) ) (!  (=> (_module.Mode.Tmp_q d@@15) (= d@@15 |#_module.Mode.Tmp|))
 :qid |unknown.0:0|
 :skolemid |685|
 :pattern ( (_module.Mode.Tmp_q d@@15))
)))
(assert (forall ((d@@16 T@U) ) (!  (=> (_module.Mode.Sus_q d@@16) (= d@@16 |#_module.Mode.Sus|))
 :qid |unknown.0:0|
 :skolemid |687|
 :pattern ( (_module.Mode.Sus_q d@@16))
)))
(assert (forall ((d@@17 T@U) ) (!  (=> (_module.Region.Frozen_q d@@17) (= d@@17 |#_module.Region.Frozen|))
 :qid |unknown.0:0|
 :skolemid |698|
 :pattern ( (_module.Region.Frozen_q d@@17))
)))
(assert (forall ((d@@18 T@U) ) (!  (=> (_module.Region.Isolate_q d@@18) (= d@@18 |#_module.Region.Isolate|))
 :qid |unknown.0:0|
 :skolemid |728|
 :pattern ( (_module.Region.Isolate_q d@@18))
)))
(assert (= (Ctor SetType) 9))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((d@@19 T@U) ) (!  (=> (_module.Region.Heap_q d@@19) (exists ((|a#25#0#0| T@U) ) (! (= d@@19 (|#_module.Region.Heap| |a#25#0#0|))
 :qid |gitissue3855dfy.19:33|
 :skolemid |702|
)))
 :qid |unknown.0:0|
 :skolemid |703|
 :pattern ( (_module.Region.Heap_q d@@19))
)))
(assert (forall ((d@@20 T@U) ) (!  (=> (_module.Region.Stack_q d@@20) (exists ((|a#30#0#0| T@U) ) (! (= d@@20 (|#_module.Region.Stack| |a#30#0#0|))
 :qid |gitissue3855dfy.19:58|
 :skolemid |711|
)))
 :qid |unknown.0:0|
 :skolemid |712|
 :pattern ( (_module.Region.Stack_q d@@20))
)))
(assert (forall ((d@@21 T@U) ) (!  (=> (_module.Region.Frame_q d@@21) (exists ((|a#35#0#0| T@U) ) (! (= d@@21 (|#_module.Region.Frame| |a#35#0#0|))
 :qid |gitissue3855dfy.19:84|
 :skolemid |720|
)))
 :qid |unknown.0:0|
 :skolemid |721|
 :pattern ( (_module.Region.Frame_q d@@21))
)))
(assert ($IsGhostField alloc))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|o#0@@0| T@U) (|t#0@@1| T@U) ) (!  (=> (or (|_module.__default.AssignmentCompatible#canCall| (Lit refType |o#0@@0|) (Lit DatatypeTypeType |t#0@@1|)) (and (< 3 $FunctionContextHeight) (and ($Is refType |o#0@@0| Tclass._module.Object) ($Is DatatypeTypeType |t#0@@1| Tclass._module.Mode)))) (= (_module.__default.AssignmentCompatible (Lit refType |o#0@@0|) (Lit DatatypeTypeType |t#0@@1|)) (let ((|r#1| (_module.Object.region (Lit refType |o#0@@0|))))
(ite (_module.Mode.Imm_q (Lit DatatypeTypeType |t#0@@1|)) (_module.Region.Frozen_q |r#1|) (ite (_module.Mode.Iso_q (Lit DatatypeTypeType |t#0@@1|)) (_module.Region.Isolate_q |r#1|) (ite (_module.Mode.Mut_q (Lit DatatypeTypeType |t#0@@1|)) (_module.Region.Heap_q |r#1|) (ite (_module.Mode.Tmp_q (Lit DatatypeTypeType |t#0@@1|)) (_module.Region.Stack_q |r#1|)  (or (_module.Region.Heap_q |r#1|) (_module.Region.Stack_q |r#1|)))))))))
 :qid |gitissue3855dfy.63:32|
 :weight 3
 :skolemid |598|
 :pattern ( (_module.__default.AssignmentCompatible (Lit refType |o#0@@0|) (Lit DatatypeTypeType |t#0@@1|)))
))))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@1) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert (= (Ctor SeqType) 10))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap T@U) (this T@U) ) (!  (=> (or (|_module.Object.AllFieldsContentsConsistentWithTheirDeclaration#canCall| $Heap this) (and (< 4 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.Object) ($IsAlloc refType this Tclass._module.Object $Heap)))) (_module.Object.AllFieldsAreDeclared $Heap this)))) (and (forall ((|n#0| T@U) ) (!  (=> ($Is SeqType |n#0| (TSeq TChar)) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Object.fields))) ($Box SeqType |n#0|)) (|_module.__default.AssignmentCompatible#canCall| ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Object.fields))) ($Box SeqType |n#0|))) ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes this)) ($Box SeqType |n#0|))))))
 :qid |gitissue3855dfy.128:14|
 :skolemid |784|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes this)) ($Box SeqType |n#0|))))
 :pattern ( ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Object.fields))) ($Box SeqType |n#0|))))
 :pattern ( (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Object.fields))) ($Box SeqType |n#0|)))
)) (= (_module.Object.AllFieldsContentsConsistentWithTheirDeclaration $Heap this) (forall ((|n#0@@0| T@U) ) (!  (=> (and ($Is SeqType |n#0@@0| (TSeq TChar)) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Object.fields))) ($Box SeqType |n#0@@0|))) (_module.__default.AssignmentCompatible ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Object.fields))) ($Box SeqType |n#0@@0|))) ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes this)) ($Box SeqType |n#0@@0|)))))
 :qid |gitissue3855dfy.128:14|
 :skolemid |783|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Object.fieldModes this)) ($Box SeqType |n#0@@0|))))
 :pattern ( ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Object.fields))) ($Box SeqType |n#0@@0|))))
 :pattern ( (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Object.fields))) ($Box SeqType |n#0@@0|)))
)))))
 :qid |gitissue3855dfy.124:13|
 :skolemid |785|
 :pattern ( (_module.Object.AllFieldsContentsConsistentWithTheirDeclaration $Heap this) ($IsGoodHeap $Heap))
))))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.Mode) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) Tclass._module.Mode)))
 :qid |unknown.0:0|
 :skolemid |585|
 :pattern ( ($IsBox bx@@1 Tclass._module.Mode))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.Object) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._module.Object)))
 :qid |unknown.0:0|
 :skolemid |590|
 :pattern ( ($IsBox bx@@2 Tclass._module.Object))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.Region) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@3)) bx@@3) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@3) Tclass._module.Region)))
 :qid |unknown.0:0|
 :skolemid |599|
 :pattern ( ($IsBox bx@@3 Tclass._module.Region))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.Object?) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |622|
 :pattern ( ($IsBox bx@@4 Tclass._module.Object?))
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
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._module.Object)  (and ($Is refType |c#0@@0| Tclass._module.Object?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |802|
 :pattern ( ($Is refType |c#0@@0| Tclass._module.Object))
 :pattern ( ($Is refType |c#0@@0| Tclass._module.Object?))
)))
(assert (forall ((m@@1 T@U) (|m'| T@U) ) (! (= (|Map#Equal| m@@1 |m'|)  (and (forall ((u T@U) ) (! (= (|Set#IsMember| (|Map#Domain| m@@1) u) (|Set#IsMember| (|Map#Domain| |m'|) u))
 :qid |DafnyPreludebpl.1498:35|
 :skolemid |297|
)) (forall ((u@@0 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| m@@1) u@@0) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@1) u@@0) (MapType0Select BoxType BoxType (|Map#Elements| |m'|) u@@0)))
 :qid |DafnyPreludebpl.1499:35|
 :skolemid |298|
))))
 :qid |DafnyPreludebpl.1496:15|
 :skolemid |299|
 :pattern ( (|Map#Equal| m@@1 |m'|))
)))
(assert (forall (($h0 T@U) ($h1 T@U) (this@@0 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass._module.Object))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@5 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (and (= $o@@5 this@@0) (= $f _module.Object.fields))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@5) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@5) $f)))
 :qid |unknown.0:0|
 :skolemid |774|
)) (= (_module.Object.AllFieldsAreDeclared $h0 this@@0) (_module.Object.AllFieldsAreDeclared $h1 this@@0))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |775|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.Object.AllFieldsAreDeclared $h1 this@@0))
)))
(assert (forall (($h0@@0 T@U) ($h1@@0 T@U) (this@@1 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 Tclass._module.Object))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@6 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (and (= $o@@6 this@@1) (= $f@@0 _module.Object.fields))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@6) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@6) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |779|
)) (= (_module.Object.AllFieldsContentsConsistentWithTheirDeclaration $h0@@0 this@@1) (_module.Object.AllFieldsContentsConsistentWithTheirDeclaration $h1@@0 this@@1))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |780|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.Object.AllFieldsContentsConsistentWithTheirDeclaration $h1@@0 this@@1))
)))
(assert (forall (($h0@@1 T@U) ($h1@@1 T@U) (this@@2 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@1) ($IsGoodHeap $h1@@1)) (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 Tclass._module.Object))) (and ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1))) (=> (forall (($o@@7 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) (and (= $o@@7 this@@2) (= $f@@1 _module.Object.fields))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@7) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@1 $o@@7) $f@@1)))
 :qid |unknown.0:0|
 :skolemid |791|
)) (= (_module.Object.AllOutgoingReferencesAreVenice $h0@@1 this@@2) (_module.Object.AllOutgoingReferencesAreVenice $h1@@1 this@@2))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |792|
 :pattern ( ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1) (_module.Object.AllOutgoingReferencesAreVenice $h1@@1 this@@2))
)))
(assert (forall (($h@@6 T@U) ($o@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) Tclass._module.Object?))) ($Is MapType ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@8) _module.Object.fields)) (TMap (TSeq TChar) Tclass._module.Object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |742|
 :pattern ( ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@8) _module.Object.fields)))
)))
(assert (forall (($h@@7 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@9) alloc)))) ($IsAlloc MapType ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@9) _module.Object.fields)) (TMap (TSeq TChar) Tclass._module.Object) $h@@7))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |743|
 :pattern ( ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@9) _module.Object.fields)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@3 T@U) ) (!  (=> (or (|_module.Object.AllFieldsAreDeclared#canCall| $Heap@@0 this@@3) (and (< 3 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 Tclass._module.Object) ($IsAlloc refType this@@3 Tclass._module.Object $Heap@@0)))))) (= (_module.Object.AllFieldsAreDeclared $Heap@@0 this@@3) (|Set#Subset| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@3) _module.Object.fields))) (|Map#Domain| (_module.Object.fieldModes this@@3)))))
 :qid |gitissue3855dfy.120:13|
 :skolemid |778|
 :pattern ( (_module.Object.AllFieldsAreDeclared $Heap@@0 this@@3) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((m@@2 T@U) (|m'@@0| T@U) ) (!  (=> (|Map#Equal| m@@2 |m'@@0|) (= m@@2 |m'@@0|))
 :qid |DafnyPreludebpl.1501:15|
 :skolemid |300|
 :pattern ( (|Map#Equal| m@@2 |m'@@0|))
)))
(assert (forall ((|a#26#0#0@@0| T@U) ($h@@8 T@U) ) (!  (=> ($IsGoodHeap $h@@8) (= ($IsAlloc DatatypeTypeType (|#_module.Region.Heap| |a#26#0#0@@0|) Tclass._module.Region $h@@8) ($IsAlloc refType |a#26#0#0@@0| Tclass._module.Object $h@@8)))
 :qid |gitissue3855dfy.19:33|
 :skolemid |705|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Region.Heap| |a#26#0#0@@0|) Tclass._module.Region $h@@8))
)))
(assert (forall ((|a#31#0#0@@0| T@U) ($h@@9 T@U) ) (!  (=> ($IsGoodHeap $h@@9) (= ($IsAlloc DatatypeTypeType (|#_module.Region.Stack| |a#31#0#0@@0|) Tclass._module.Region $h@@9) ($IsAlloc refType |a#31#0#0@@0| Tclass._module.Object $h@@9)))
 :qid |gitissue3855dfy.19:58|
 :skolemid |714|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Region.Stack| |a#31#0#0@@0|) Tclass._module.Region $h@@9))
)))
(assert (forall ((|a#36#0#0@@0| T@U) ($h@@10 T@U) ) (!  (=> ($IsGoodHeap $h@@10) (= ($IsAlloc DatatypeTypeType (|#_module.Region.Frame| |a#36#0#0@@0|) Tclass._module.Region $h@@10) ($IsAlloc refType |a#36#0#0@@0| Tclass._module.Object $h@@10)))
 :qid |gitissue3855dfy.19:84|
 :skolemid |723|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Region.Frame| |a#36#0#0@@0|) Tclass._module.Region $h@@10))
)))
(assert (forall ((a@@4 T@U) (b@@4 T@U) (c T@U) ) (!  (=> (or (not (= a@@4 c)) (not true)) (=> (and ($HeapSucc a@@4 b@@4) ($HeapSucc b@@4 c)) ($HeapSucc a@@4 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@4 b@@4) ($HeapSucc b@@4 c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (= (Ctor charType) 11))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 TChar) (and (= ($Box charType ($Unbox charType bx@@5)) bx@@5) ($Is charType ($Unbox charType bx@@5) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |30|
 :pattern ( ($IsBox bx@@5 TChar))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s))
)))
(assert (forall ((a@@5 T@U) (b@@5 T@U) ) (!  (=> (and (_module.Region.Frozen_q a@@5) (_module.Region.Frozen_q b@@5)) (|_module.Region#Equal| a@@5 b@@5))
 :qid |unknown.0:0|
 :skolemid |732|
 :pattern ( (|_module.Region#Equal| a@@5 b@@5) (_module.Region.Frozen_q a@@5))
 :pattern ( (|_module.Region#Equal| a@@5 b@@5) (_module.Region.Frozen_q b@@5))
)))
(assert (forall ((a@@6 T@U) (b@@6 T@U) ) (!  (=> (and (_module.Region.Isolate_q a@@6) (_module.Region.Isolate_q b@@6)) (|_module.Region#Equal| a@@6 b@@6))
 :qid |unknown.0:0|
 :skolemid |736|
 :pattern ( (|_module.Region#Equal| a@@6 b@@6) (_module.Region.Isolate_q a@@6))
 :pattern ( (|_module.Region#Equal| a@@6 b@@6) (_module.Region.Isolate_q b@@6))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@6 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@6) ($IsAllocBox bx@@6 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@6))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
)))
(assert (forall ((t@@3 T@U) (u@@1 T@U) ) (! (= (Inv0_TMap (TMap t@@3 u@@1)) t@@3)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |9|
 :pattern ( (TMap t@@3 u@@1))
)))
(assert (forall ((t@@4 T@U) (u@@2 T@U) ) (! (= (Inv1_TMap (TMap t@@4 u@@2)) u@@2)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |10|
 :pattern ( (TMap t@@4 u@@2))
)))
(assert (forall ((t@@5 T@U) (u@@3 T@U) ) (! (= (Tag (TMap t@@5 u@@3)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |11|
 :pattern ( (TMap t@@5 u@@3))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |448|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
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
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |463|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |465|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall ((v@@4 T@U) (t0@@2 T@U) (h@@4 T@U) ) (! (= ($IsAlloc SeqType v@@4 (TSeq t0@@2) h@@4) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| v@@4))) ($IsAllocBox (|Seq#Index| v@@4 i) t0@@2 h@@4))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@4 i))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@4 (TSeq t0@@2) h@@4))
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
(assert (forall ((x@@4 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@4))
)))
(assert (forall ((v@@5 T@U) (t0@@3 T@U) (t1@@0 T@U) (h@@5 T@U) ) (! (= ($IsAlloc MapType v@@5 (TMap t0@@3 t1@@0) h@@5) (forall ((bx@@7 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@5) bx@@7) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@5) bx@@7) t1@@0 h@@5) ($IsAllocBox bx@@7 t0@@3 h@@5)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |75|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@5) bx@@7))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@5) bx@@7))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |76|
 :pattern ( ($IsAlloc MapType v@@5 (TMap t0@@3 t1@@0) h@@5))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |464|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |466|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((u@@4 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@4))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |285|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@4))
)))
(assert (forall ((bx@@8 T@U) (s@@0 T@U) (t@@10 T@U) ) (!  (=> ($IsBox bx@@8 (TMap s@@0 t@@10)) (and (= ($Box MapType ($Unbox MapType bx@@8)) bx@@8) ($Is MapType ($Unbox MapType bx@@8) (TMap s@@0 t@@10))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |36|
 :pattern ( ($IsBox bx@@8 (TMap s@@0 t@@10)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@9)) bx@@9) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@9) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |455|
 :pattern ( ($IsBox bx@@9 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert  (and (forall ((t0@@4 T@T) (t1@@1 T@T) (t2 T@T) (val@@1 T@U) (m@@3 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@4 t1@@1 t2 (MapType1Store t0@@4 t1@@1 t2 m@@3 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@4 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@4 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@4 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@5 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@5 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@5 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@10 T@U) ($f@@2 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@10 $f@@2))  (=> (and (or (not (= $o@@10 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@10) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1406|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@10 $f@@2))
)))
(assert (forall ((d@@22 T@U) ) (!  (=> (|$IsA#_module.Region| d@@22) (or (or (or (or (_module.Region.Frozen_q d@@22) (_module.Region.Heap_q d@@22)) (_module.Region.Stack_q d@@22)) (_module.Region.Frame_q d@@22)) (_module.Region.Isolate_q d@@22)))
 :qid |unknown.0:0|
 :skolemid |730|
 :pattern ( (|$IsA#_module.Region| d@@22))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |452|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((m@@6 T@U) ) (!  (or (= m@@6 |Map#Empty|) (exists ((k@@2 T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@6) k@@2)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |273|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |274|
 :pattern ( (|Map#Domain| m@@6))
)))
(assert (forall ((m@@7 T@U) ) (!  (or (= m@@7 |Map#Empty|) (exists ((v@@6 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@7) v@@6)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |275|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |276|
 :pattern ( (|Map#Values| m@@7))
)))
(assert (forall ((m@@8 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@8) item)  (and (|Set#IsMember| (|Map#Domain| m@@8) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@8) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |284|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@8) item))
)))
(assert (forall ((m@@9 T@U) (v@@7 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@9) v@@7) (exists ((u@@5 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@9) u@@5) (= v@@7 (MapType0Select BoxType BoxType (|Map#Elements| m@@9) u@@5)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |282|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@9) u@@5))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@9) u@@5))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |283|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@9) v@@7))
)))
(assert (forall ((d@@23 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@23)) (DtRank d@@23))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@23)))
)))
(assert (forall ((bx@@10 T@U) (t@@11 T@U) ) (!  (=> ($IsBox bx@@10 (TSet t@@11)) (and (= ($Box SetType ($Unbox SetType bx@@10)) bx@@10) ($Is SetType ($Unbox SetType bx@@10) (TSet t@@11))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@10 (TSet t@@11)))
)))
(assert (forall ((bx@@11 T@U) (t@@12 T@U) ) (!  (=> ($IsBox bx@@11 (TSeq t@@12)) (and (= ($Box SeqType ($Unbox SeqType bx@@11)) bx@@11) ($Is SeqType ($Unbox SeqType bx@@11) (TSeq t@@12))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@11 (TSeq t@@12)))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@1 T@U) (this@@4 T@U) ) (!  (=> (or (|_module.Object.Valid#canCall| $Heap@@1 this@@4) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@1) (and (or (not (= this@@4 null)) (not true)) (and ($Is refType this@@4 Tclass._module.Object) ($IsAlloc refType this@@4 Tclass._module.Object $Heap@@1)))))) (and (and (|_module.Object.AllFieldsAreDeclared#canCall| $Heap@@1 this@@4) (=> (_module.Object.AllFieldsAreDeclared $Heap@@1 this@@4) (and (|_module.Object.AllFieldsContentsConsistentWithTheirDeclaration#canCall| $Heap@@1 this@@4) (=> (_module.Object.AllFieldsContentsConsistentWithTheirDeclaration $Heap@@1 this@@4) (|_module.Object.AllOutgoingReferencesAreVenice#canCall| $Heap@@1 this@@4))))) (= (_module.Object.Valid true $Heap@@1 this@@4)  (and (and (_module.Object.AllFieldsAreDeclared $Heap@@1 this@@4) (_module.Object.AllFieldsContentsConsistentWithTheirDeclaration $Heap@@1 this@@4)) (_module.Object.AllOutgoingReferencesAreVenice $Heap@@1 this@@4)))))
 :qid |gitissue3855dfy.110:23|
 :skolemid |770|
 :pattern ( (_module.Object.Valid true $Heap@@1 this@@4) ($IsGoodHeap $Heap@@1))
))))
(assert (forall ((v@@8 T@U) (t0@@5 T@U) (t1@@2 T@U) ) (! (= ($Is MapType v@@8 (TMap t0@@5 t1@@2)) (forall ((bx@@12 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@8) bx@@12) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@8) bx@@12) t1@@2) ($IsBox bx@@12 t0@@5)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |55|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@8) bx@@12))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@8) bx@@12))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |56|
 :pattern ( ($Is MapType v@@8 (TMap t0@@5 t1@@2)))
)))
(assert (forall ((h@@6 T@U) (r T@U) (f T@U) (x@@5 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@6 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@6 r) f x@@5))) ($HeapSucc h@@6 (MapType0Store refType (MapType0Type FieldType BoxType) h@@6 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@6 r) f x@@5))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@6 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@6 r) f x@@5)))
)))
(assert (forall ((d@@24 T@U) ($h@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) ($Is DatatypeTypeType d@@24 Tclass._module.Mode)) ($IsAlloc DatatypeTypeType d@@24 Tclass._module.Mode $h@@11))
 :qid |unknown.0:0|
 :skolemid |688|
 :pattern ( ($IsAlloc DatatypeTypeType d@@24 Tclass._module.Mode $h@@11))
)))
(assert (= (Tag Tclass._module.Mode) Tagclass._module.Mode))
(assert (= (TagFamily Tclass._module.Mode) tytagFamily$Mode))
(assert (= (Tag Tclass._module.Object) Tagclass._module.Object))
(assert (= (TagFamily Tclass._module.Object) tytagFamily$Object))
(assert (= (Tag Tclass._module.Region) Tagclass._module.Region))
(assert (= (TagFamily Tclass._module.Region) tytagFamily$Region))
(assert (= (Tag Tclass._module.Object?) Tagclass._module.Object?))
(assert (= (TagFamily Tclass._module.Object?) tytagFamily$Object))
(assert (= |#_module.Mode.Imm| (Lit DatatypeTypeType |#_module.Mode.Imm|)))
(assert (= |#_module.Mode.Iso| (Lit DatatypeTypeType |#_module.Mode.Iso|)))
(assert (= |#_module.Mode.Mut| (Lit DatatypeTypeType |#_module.Mode.Mut|)))
(assert (= |#_module.Mode.Tmp| (Lit DatatypeTypeType |#_module.Mode.Tmp|)))
(assert (= |#_module.Mode.Sus| (Lit DatatypeTypeType |#_module.Mode.Sus|)))
(assert (= |#_module.Region.Frozen| (Lit DatatypeTypeType |#_module.Region.Frozen|)))
(assert (= |#_module.Region.Isolate| (Lit DatatypeTypeType |#_module.Region.Isolate|)))
(assert (forall ((d@@25 T@U) ) (!  (=> ($Is DatatypeTypeType d@@25 Tclass._module.Mode) (or (or (or (or (_module.Mode.Imm_q d@@25) (_module.Mode.Iso_q d@@25)) (_module.Mode.Mut_q d@@25)) (_module.Mode.Tmp_q d@@25)) (_module.Mode.Sus_q d@@25)))
 :qid |unknown.0:0|
 :skolemid |690|
 :pattern ( (_module.Mode.Sus_q d@@25) ($Is DatatypeTypeType d@@25 Tclass._module.Mode))
 :pattern ( (_module.Mode.Tmp_q d@@25) ($Is DatatypeTypeType d@@25 Tclass._module.Mode))
 :pattern ( (_module.Mode.Mut_q d@@25) ($Is DatatypeTypeType d@@25 Tclass._module.Mode))
 :pattern ( (_module.Mode.Iso_q d@@25) ($Is DatatypeTypeType d@@25 Tclass._module.Mode))
 :pattern ( (_module.Mode.Imm_q d@@25) ($Is DatatypeTypeType d@@25 Tclass._module.Mode))
)))
(assert (forall ((d@@26 T@U) ) (!  (=> ($Is DatatypeTypeType d@@26 Tclass._module.Region) (or (or (or (or (_module.Region.Frozen_q d@@26) (_module.Region.Heap_q d@@26)) (_module.Region.Stack_q d@@26)) (_module.Region.Frame_q d@@26)) (_module.Region.Isolate_q d@@26)))
 :qid |unknown.0:0|
 :skolemid |731|
 :pattern ( (_module.Region.Isolate_q d@@26) ($Is DatatypeTypeType d@@26 Tclass._module.Region))
 :pattern ( (_module.Region.Frame_q d@@26) ($Is DatatypeTypeType d@@26 Tclass._module.Region))
 :pattern ( (_module.Region.Stack_q d@@26) ($Is DatatypeTypeType d@@26 Tclass._module.Region))
 :pattern ( (_module.Region.Heap_q d@@26) ($Is DatatypeTypeType d@@26 Tclass._module.Region))
 :pattern ( (_module.Region.Frozen_q d@@26) ($Is DatatypeTypeType d@@26 Tclass._module.Region))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|f#0@@0| T@U) (|t#0@@2| T@U) ) (!  (=> (or (|_module.__default.VeniceReferenceOK#canCall| |f#0@@0| |t#0@@2|) (and (< 3 $FunctionContextHeight) (and ($Is refType |f#0@@0| Tclass._module.Object) ($Is refType |t#0@@2| Tclass._module.Object)))) (= (_module.__default.VeniceReferenceOK |f#0@@0| |t#0@@2|) (ite (_module.Region.Frozen_q (_module.Object.region |t#0@@2|)) true (ite (_module.Region.Heap_q (_module.Object.region |f#0@@0|))  (or (_module.Region.Isolate_q (_module.Object.region |t#0@@2|)) (and (_module.Region.Heap_q (_module.Object.region |t#0@@2|)) (= (_module.Region.region (_module.Object.region |t#0@@2|)) (_module.Region.region (_module.Object.region |f#0@@0|))))) (ite (_module.Region.Isolate_q (_module.Object.region |f#0@@0|))  (or (_module.Region.Isolate_q (_module.Object.region |t#0@@2|)) (and (_module.Region.Heap_q (_module.Object.region |t#0@@2|)) (= (_module.Region.region (_module.Object.region |t#0@@2|)) |f#0@@0|))) false)))))
 :qid |gitissue3855dfy.38:29|
 :skolemid |593|
 :pattern ( (_module.__default.VeniceReferenceOK |f#0@@0| |t#0@@2|))
))))
(assert (forall ((d@@27 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (_System.Tuple2.___hMake2_q d@@27) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@27 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@12)
 :qid |unknown.0:0|
 :skolemid |458|
 :pattern ( ($IsAlloc DatatypeTypeType d@@27 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@12))
)))) ($IsAllocBox (_System.Tuple2._0 d@@27) |_System._tuple#2$T0@@6| $h@@12))
 :qid |unknown.0:0|
 :skolemid |459|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@27) |_System._tuple#2$T0@@6| $h@@12))
)))
(assert (forall ((d@@28 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (_System.Tuple2.___hMake2_q d@@28) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@28 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@13)
 :qid |unknown.0:0|
 :skolemid |460|
 :pattern ( ($IsAlloc DatatypeTypeType d@@28 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@13))
)))) ($IsAllocBox (_System.Tuple2._1 d@@28) |_System._tuple#2$T1@@7| $h@@13))
 :qid |unknown.0:0|
 :skolemid |461|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@28) |_System._tuple#2$T1@@7| $h@@13))
)))
(assert (forall ((d@@29 T@U) ($h@@14 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) (and (_module.Region.Heap_q d@@29) ($IsAlloc DatatypeTypeType d@@29 Tclass._module.Region $h@@14))) ($IsAlloc refType (_module.Region.region d@@29) Tclass._module.Object $h@@14))
 :qid |unknown.0:0|
 :skolemid |706|
 :pattern ( ($IsAlloc refType (_module.Region.region d@@29) Tclass._module.Object $h@@14))
)))
(assert (forall ((d@@30 T@U) ($h@@15 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) (and (_module.Region.Stack_q d@@30) ($IsAlloc DatatypeTypeType d@@30 Tclass._module.Region $h@@15))) ($IsAlloc refType (_module.Region.region d@@30) Tclass._module.Object $h@@15))
 :qid |unknown.0:0|
 :skolemid |715|
 :pattern ( ($IsAlloc refType (_module.Region.region d@@30) Tclass._module.Object $h@@15))
)))
(assert (forall ((d@@31 T@U) ($h@@16 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (_module.Region.Frame_q d@@31) ($IsAlloc DatatypeTypeType d@@31 Tclass._module.Region $h@@16))) ($IsAlloc refType (_module.Region.prev d@@31) Tclass._module.Object $h@@16))
 :qid |unknown.0:0|
 :skolemid |724|
 :pattern ( ($IsAlloc refType (_module.Region.prev d@@31) Tclass._module.Object $h@@16))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |462|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
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
(assert (forall ((x@@6 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@6)) (Lit BoxType ($Box T@@5 x@@6)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@6)))
)))
(assert (forall ((s@@1 T@U) ) (!  (=> (= (|Seq#Length| s@@1) 0) (= s@@1 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@1))
)))
(assert (forall (($reveal Bool) ($h0@@2 T@U) ($h1@@2 T@U) (this@@5 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@2) ($IsGoodHeap $h1@@2)) (and (or (not (= this@@5 null)) (not true)) ($Is refType this@@5 Tclass._module.Object))) (and ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2))) (=> (forall (($o@@11 T@U) ($f@@3 T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) (and (= $o@@11 this@@5) (= $f@@3 _module.Object.fields))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@11) $f@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@2 $o@@11) $f@@3)))
 :qid |unknown.0:0|
 :skolemid |766|
)) (= (_module.Object.Valid $reveal $h0@@2 this@@5) (_module.Object.Valid $reveal $h1@@2 this@@5))))
 :qid |unknown.0:0|
 :skolemid |767|
 :pattern ( ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2) (_module.Object.Valid $reveal $h1@@2 this@@5))
)))
(assert (forall ((h@@7 T@U) (v@@9 T@U) ) (! ($IsAlloc charType v@@9 TChar h@@7)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |64|
 :pattern ( ($IsAlloc charType v@@9 TChar h@@7))
)))
(assert (forall ((v@@10 T@U) (t0@@6 T@U) ) (! (= ($Is SeqType v@@10 (TSeq t0@@6)) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@10))) ($IsBox (|Seq#Index| v@@10 i@@0) t0@@6))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@10 i@@0))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@10 (TSeq t0@@6)))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@2 T@U) (this@@6 T@U) ) (!  (=> (or (|_module.Object.AllOutgoingReferencesAreVenice#canCall| $Heap@@2 this@@6) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@2) (and (or (not (= this@@6 null)) (not true)) (and ($Is refType this@@6 Tclass._module.Object) ($IsAlloc refType this@@6 Tclass._module.Object $Heap@@2)))))) (and (forall ((|n#0@@1| T@U) ) (!  (=> ($Is SeqType |n#0@@1| (TSeq TChar)) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@6) _module.Object.fields))) ($Box SeqType |n#0@@1|)) (|_module.__default.VeniceReferenceOK#canCall| this@@6 ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@6) _module.Object.fields))) ($Box SeqType |n#0@@1|))))))
 :qid |gitissue3855dfy.134:16|
 :skolemid |796|
 :pattern ( ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@6) _module.Object.fields))) ($Box SeqType |n#0@@1|))))
 :pattern ( (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@6) _module.Object.fields))) ($Box SeqType |n#0@@1|)))
)) (= (_module.Object.AllOutgoingReferencesAreVenice $Heap@@2 this@@6) (forall ((|n#0@@2| T@U) ) (!  (=> (and ($Is SeqType |n#0@@2| (TSeq TChar)) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@6) _module.Object.fields))) ($Box SeqType |n#0@@2|))) (_module.__default.VeniceReferenceOK this@@6 ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@6) _module.Object.fields))) ($Box SeqType |n#0@@2|)))))
 :qid |gitissue3855dfy.134:16|
 :skolemid |795|
 :pattern ( ($Unbox refType (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@6) _module.Object.fields))) ($Box SeqType |n#0@@2|))))
 :pattern ( (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@6) _module.Object.fields))) ($Box SeqType |n#0@@2|)))
)))))
 :qid |gitissue3855dfy.131:13|
 :skolemid |797|
 :pattern ( (_module.Object.AllOutgoingReferencesAreVenice $Heap@@2 this@@6) ($IsGoodHeap $Heap@@2))
))))
(assert (forall ((m@@10 T@U) ) (!  (or (= m@@10 |Map#Empty|) (exists ((k@@3 T@U) (v@@11 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@10) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@3 v@@11)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |277|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |278|
 :pattern ( (|Map#Items| m@@10))
)))
(assert (forall ((s@@2 T@U) (i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| s@@2))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@2 i@@1))) (|Seq#Rank| s@@2)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@2 i@@1))))
)))
(assert (forall ((v@@12 T@U) (t0@@7 T@U) (t1@@3 T@U) ) (!  (=> ($Is MapType v@@12 (TMap t0@@7 t1@@3)) (and (and ($Is SetType (|Map#Domain| v@@12) (TSet t0@@7)) ($Is SetType (|Map#Values| v@@12) (TSet t1@@3))) ($Is SetType (|Map#Items| v@@12) (TSet (Tclass._System.Tuple2 t0@@7 t1@@3)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |57|
 :pattern ( ($Is MapType v@@12 (TMap t0@@7 t1@@3)))
)))
(assert (forall ((v@@13 T@U) ) (! ($Is charType v@@13 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |43|
 :pattern ( ($Is charType v@@13 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@3 () T@U)
(declare-fun this.fields@0 () T@U)
(declare-fun this@@7 () T@U)
(declare-fun |k#0| () T@U)
(declare-fun |ks#0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun reveal__module.Object.Valid () Bool)
(set-info :boogie-vc-id Impl$$_module.Object.__ctor)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@3 alloc false)) (= this.fields@0 (Lit MapType |Map#Empty|))) (=> (and (and (and (and (or (not (= this@@7 null)) (not true)) ($Is refType this@@7 Tclass._module.Object?)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@7) alloc))))) (and (= (_module.Object.region this@@7) |k#0|) (= ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@7) _module.Object.fields)) this.fields@0))) (and (and (and (= (_module.Object.fieldModes this@@7) |ks#0|) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@@3 this@@7 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@7) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (and (= $Heap@0 $Heap@1) reveal__module.Object.Valid)))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (|_module.Region#Equal| (_module.Object.region this@@7) |k#0|)) (=> (|_module.Region#Equal| (_module.Object.region this@@7) |k#0|) (and (=> (= (ControlFlow 0 2) (- 0 4)) (|Map#Equal| (_module.Object.fieldModes this@@7) |ks#0|)) (=> (|Map#Equal| (_module.Object.fieldModes this@@7) |ks#0|) (and (=> (= (ControlFlow 0 2) (- 0 3)) (|Map#Equal| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@7) _module.Object.fields)) |Map#Empty|)) (=> (|Map#Equal| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@7) _module.Object.fields)) |Map#Empty|) (=> (= (ControlFlow 0 2) (- 0 1)) (_module.Object.Valid reveal__module.Object.Valid $Heap@1 this@@7))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@3) ($IsHeapAnchor $Heap@@3)) (=> (and (and (and ($Is DatatypeTypeType |k#0| Tclass._module.Region) ($IsAlloc DatatypeTypeType |k#0| Tclass._module.Region $Heap@@3)) (|$IsA#_module.Region| |k#0|)) (and (and ($Is MapType |ks#0| (TMap (TSeq TChar) Tclass._module.Mode)) ($IsAlloc MapType |ks#0| (TMap (TSeq TChar) Tclass._module.Mode) $Heap@@3)) (and (= 6 $FunctionContextHeight) (= (ControlFlow 0 6) 2)))) anon0_correct))))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
