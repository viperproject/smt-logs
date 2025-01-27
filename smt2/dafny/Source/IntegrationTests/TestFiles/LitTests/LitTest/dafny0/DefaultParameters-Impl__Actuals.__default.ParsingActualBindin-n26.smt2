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
(declare-fun TInt () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagSet () T@U)
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun Tagclass.Actuals.List () T@U)
(declare-fun Tagclass.Actuals.Cell () T@U)
(declare-fun Tagclass.Actuals.Iter () T@U)
(declare-fun |##Actuals.List.Nil| () T@U)
(declare-fun |##Actuals.List.Cons| () T@U)
(declare-fun class.Actuals.Cell? () T@U)
(declare-fun Tagclass.Actuals.Cell? () T@U)
(declare-fun class.Actuals.Iter? () T@U)
(declare-fun Tagclass.Actuals.Iter? () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$List () T@U)
(declare-fun tytagFamily$Cell () T@U)
(declare-fun tytagFamily$Iter () T@U)
(declare-fun field$value () T@U)
(declare-fun field$zs () T@U)
(declare-fun field$_new () T@U)
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
(declare-fun FDim (T@U) Int)
(declare-fun Tag (T@U) T@U)
(declare-fun DeclName (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun Actuals.Cell.value () T@U)
(declare-fun Tclass.Actuals.Cell? (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Actuals.Iter.a (T@U) Int)
(declare-fun Tclass.Actuals.Iter? () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Actuals.Iter.b (T@U) Int)
(declare-fun Actuals.Iter.__decreases0 (T@U) Int)
(declare-fun Actuals.Iter.__decreases1 (T@U) Int)
(declare-fun |$IsA#_System.Tuple2| (T@U) Bool)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass.Actuals.Cell (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun Actuals.__default.F (Int Int Int) Int)
(declare-fun LitInt (Int) Int)
(declare-fun |Actuals.__default.F#canCall| (Int Int Int) Bool)
(declare-fun Mul (Int Int) Int)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun |_System.Tuple2#Equal| (T@U T@U) Bool)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#Actuals.List.Nil| () T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass.Actuals.Iter () T@U)
(declare-fun Tclass.Actuals.List (T@U) T@U)
(declare-fun Actuals.Iter.zs () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun Actuals.Iter.__new () T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun |Actuals.List#Equal| (T@U T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun Actuals.List.Cons_q (T@U) Bool)
(declare-fun Actuals.List._h0 (T@U) T@U)
(declare-fun Actuals.List.tail (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |#Actuals.List.Cons| (T@U T@U) T@U)
(declare-fun Actuals.List.Nil_q (T@U) Bool)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun Actuals.Iter.Valid (T@U T@U) Bool)
(declare-fun Actuals.Iter.__reads (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun |$IsA#Actuals.List| (T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass.Actuals.List_0 (T@U) T@U)
(declare-fun Tclass.Actuals.Cell_0 (T@U) T@U)
(declare-fun Tclass.Actuals.Cell?_0 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun Actuals.Iter.__modifies (T@U) T@U)
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
(assert (distinct TInt TagInt TagSet TagSeq alloc allocName Tagclass._System.object? Tagclass._System.object |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass.Actuals.List Tagclass.Actuals.Cell Tagclass.Actuals.Iter |##Actuals.List.Nil| |##Actuals.List.Cons| class.Actuals.Cell? Tagclass.Actuals.Cell? class.Actuals.Iter? Tagclass.Actuals.Iter? tytagFamily$object |tytagFamily$_tuple#2| tytagFamily$List tytagFamily$Cell tytagFamily$Iter field$value field$zs field$_new)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert  (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 3)) (= (Ctor BoxType) 4)) (= (Ctor refType) 5)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 6)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((Actuals.Cell$U T@U) ($h T@U) ($o T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass.Actuals.Cell? Actuals.Cell$U)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o) Actuals.Cell.value) Actuals.Cell$U))
 :qid |unknown.0:0|
 :skolemid |706|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o) Actuals.Cell.value) (Tclass.Actuals.Cell? Actuals.Cell$U))
)))
(assert (forall ((Actuals.Cell$U@@0 T@U) ($h@@0 T@U) ($o@@0 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@0) (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) (Tclass.Actuals.Cell? Actuals.Cell$U@@0)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) Actuals.Cell.value) Actuals.Cell$U@@0 $h@@0))
 :qid |unknown.0:0|
 :skolemid |707|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) Actuals.Cell.value) (Tclass.Actuals.Cell? Actuals.Cell$U@@0))
)))
(assert (forall (($o@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) Tclass.Actuals.Iter?)) ($Is intType (int_2_U (Actuals.Iter.a $o@@1)) TInt))
 :qid |unknown.0:0|
 :skolemid |716|
 :pattern ( (Actuals.Iter.a $o@@1))
)))
(assert (forall (($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) Tclass.Actuals.Iter?)) ($Is intType (int_2_U (Actuals.Iter.b $o@@2)) TInt))
 :qid |unknown.0:0|
 :skolemid |718|
 :pattern ( (Actuals.Iter.b $o@@2))
)))
(assert (forall (($o@@3 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) Tclass.Actuals.Iter?)) ($Is intType (int_2_U (Actuals.Iter.__decreases0 $o@@3)) TInt))
 :qid |unknown.0:0|
 :skolemid |730|
 :pattern ( (Actuals.Iter.__decreases0 $o@@3))
)))
(assert (forall (($o@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) Tclass.Actuals.Iter?)) ($Is intType (int_2_U (Actuals.Iter.__decreases1 $o@@4)) TInt))
 :qid |unknown.0:0|
 :skolemid |732|
 :pattern ( (Actuals.Iter.__decreases1 $o@@4))
)))
(assert (forall ((d T@U) ) (!  (=> (|$IsA#_System.Tuple2| d) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |467|
 :pattern ( (|$IsA#_System.Tuple2| d))
)))
(assert (forall ((Actuals.Cell$U@@1 T@U) (|c#0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass.Actuals.Cell Actuals.Cell$U@@1) $h@@1) ($IsAlloc refType |c#0| (Tclass.Actuals.Cell? Actuals.Cell$U@@1) $h@@1))
 :qid |unknown.0:0|
 :skolemid |712|
 :pattern ( ($IsAlloc refType |c#0| (Tclass.Actuals.Cell Actuals.Cell$U@@1) $h@@1))
 :pattern ( ($IsAlloc refType |c#0| (Tclass.Actuals.Cell? Actuals.Cell$U@@1) $h@@1))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|a#0| Int) (|b#0| Int) (|c#0@@0| Int) ) (!  (=> (or (|Actuals.__default.F#canCall| (LitInt |a#0|) (LitInt |b#0|) (LitInt |c#0@@0|)) (< 0 $FunctionContextHeight)) (= (Actuals.__default.F (LitInt |a#0|) (LitInt |b#0|) (LitInt |c#0@@0|)) (LitInt (+ (+ |a#0| (Mul (LitInt 2) (LitInt |b#0|))) (Mul (LitInt 3) (LitInt |c#0@@0|))))))
 :qid |DefaultParametersdfy.13:14|
 :weight 3
 :skolemid |662|
 :pattern ( (Actuals.__default.F (LitInt |a#0|) (LitInt |b#0|) (LitInt |c#0@@0|)))
))))
(assert (= (Ctor DatatypeTypeType) 7))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d@@0))
 :qid |unknown.0:0|
 :skolemid |468|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0) ($Is DatatypeTypeType d@@0 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (forall ((a T@U) (b T@U) ) (! (= (|_System.Tuple2#Equal| a b)  (and (= (_System.Tuple2._0 a) (_System.Tuple2._0 b)) (= (_System.Tuple2._1 a) (_System.Tuple2._1 b))))
 :qid |unknown.0:0|
 :skolemid |469|
 :pattern ( (|_System.Tuple2#Equal| a b))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#Actuals.List.Nil|) |##Actuals.List.Nil|))
(assert (forall (($o@@5 T@U) ) (! (= ($Is refType $o@@5 Tclass.Actuals.Iter?)  (or (= $o@@5 null) (= (dtype $o@@5) Tclass.Actuals.Iter?)))
 :qid |unknown.0:0|
 :skolemid |714|
 :pattern ( ($Is refType $o@@5 Tclass.Actuals.Iter?))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._System.object $h@@2) ($IsAlloc refType |c#0@@1| Tclass._System.object? $h@@2))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._System.object $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._System.object? $h@@2))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass.Actuals.Iter $h@@3) ($IsAlloc refType |c#0@@2| Tclass.Actuals.Iter? $h@@3))
 :qid |unknown.0:0|
 :skolemid |744|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass.Actuals.Iter $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass.Actuals.Iter? $h@@3))
)))
(assert (forall ((Actuals.List$T T@U) ($h@@4 T@U) ) (!  (=> ($IsGoodHeap $h@@4) ($IsAlloc DatatypeTypeType |#Actuals.List.Nil| (Tclass.Actuals.List Actuals.List$T) $h@@4))
 :qid |unknown.0:0|
 :skolemid |682|
 :pattern ( ($IsAlloc DatatypeTypeType |#Actuals.List.Nil| (Tclass.Actuals.List Actuals.List$T) $h@@4))
)))
(assert (= (FDim Actuals.Iter.zs) 0))
(assert (= (FieldOfDecl class.Actuals.Iter? field$zs) Actuals.Iter.zs))
(assert ($IsGhostField Actuals.Iter.zs))
(assert (= (FDim Actuals.Iter.__new) 0))
(assert (= (FieldOfDecl class.Actuals.Iter? field$_new) Actuals.Iter.__new))
(assert ($IsGhostField Actuals.Iter.__new))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |456|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert (forall ((Actuals.Cell$U@@2 T@U) ($o@@6 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@6 (Tclass.Actuals.Cell? Actuals.Cell$U@@2) $h@@5)  (or (= $o@@6 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) alloc)))))
 :qid |unknown.0:0|
 :skolemid |705|
 :pattern ( ($IsAlloc refType $o@@6 (Tclass.Actuals.Cell? Actuals.Cell$U@@2) $h@@5))
)))
(assert (= (FDim Actuals.Cell.value) 0))
(assert (= (FieldOfDecl class.Actuals.Cell? field$value) Actuals.Cell.value))
(assert  (not ($IsGhostField Actuals.Cell.value)))
(assert (forall ((Actuals.List$T@@0 T@U) ) (! ($Is DatatypeTypeType |#Actuals.List.Nil| (Tclass.Actuals.List Actuals.List$T@@0))
 :qid |unknown.0:0|
 :skolemid |681|
 :pattern ( ($Is DatatypeTypeType |#Actuals.List.Nil| (Tclass.Actuals.List Actuals.List$T@@0)))
)))
(assert (forall (($o@@7 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@7 Tclass._System.object? $h@@6)  (or (= $o@@7 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@7) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@7 Tclass._System.object? $h@@6))
)))
(assert (forall (($o@@8 T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType $o@@8 Tclass.Actuals.Iter? $h@@7)  (or (= $o@@8 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@8) alloc)))))
 :qid |unknown.0:0|
 :skolemid |715|
 :pattern ( ($IsAlloc refType $o@@8 Tclass.Actuals.Iter? $h@@7))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|_System.Tuple2#Equal| a@@0 b@@0) (= a@@0 b@@0))
 :qid |unknown.0:0|
 :skolemid |470|
 :pattern ( (|_System.Tuple2#Equal| a@@0 b@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|Actuals.List#Equal| a@@1 b@@1) (= a@@1 b@@1))
 :qid |unknown.0:0|
 :skolemid |700|
 :pattern ( (|Actuals.List#Equal| a@@1 b@@1))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (!  (=> (and (Actuals.List.Cons_q a@@2) (Actuals.List.Cons_q b@@2)) (= (|Actuals.List#Equal| a@@2 b@@2)  (and (= (Actuals.List._h0 a@@2) (Actuals.List._h0 b@@2)) (|Actuals.List#Equal| (Actuals.List.tail a@@2) (Actuals.List.tail b@@2)))))
 :qid |unknown.0:0|
 :skolemid |699|
 :pattern ( (|Actuals.List#Equal| a@@2 b@@2) (Actuals.List.Cons_q a@@2))
 :pattern ( (|Actuals.List#Equal| a@@2 b@@2) (Actuals.List.Cons_q b@@2))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((Actuals.List$T@@1 T@U) (|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#Actuals.List.Cons| |a#1#0#0| |a#1#1#0|) (Tclass.Actuals.List Actuals.List$T@@1))  (and ($IsBox |a#1#0#0| Actuals.List$T@@1) ($Is DatatypeTypeType |a#1#1#0| (Tclass.Actuals.List Actuals.List$T@@1))))
 :qid |unknown.0:0|
 :skolemid |687|
 :pattern ( ($Is DatatypeTypeType (|#Actuals.List.Cons| |a#1#0#0| |a#1#1#0|) (Tclass.Actuals.List Actuals.List$T@@1)))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@8 T@U) ) (!  (=> ($IsGoodHeap $h@@8) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@8)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@8) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@8))))
 :qid |unknown.0:0|
 :skolemid |457|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@8))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@1) (= (DatatypeCtorId d@@1) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |449|
 :pattern ( (_System.Tuple2.___hMake2_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (Actuals.List.Nil_q d@@2) (= (DatatypeCtorId d@@2) |##Actuals.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |679|
 :pattern ( (Actuals.List.Nil_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (Actuals.List.Cons_q d@@3) (= (DatatypeCtorId d@@3) |##Actuals.List.Cons|))
 :qid |unknown.0:0|
 :skolemid |684|
 :pattern ( (Actuals.List.Cons_q d@@3))
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
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@4) (exists ((|a#1#0#0@@0| T@U) (|a#1#1#0@@0| T@U) ) (! (= d@@4 (|#_System._tuple#2._#Make2| |a#1#0#0@@0| |a#1#1#0@@0|))
 :qid |unknown.0:0|
 :skolemid |450|
)))
 :qid |unknown.0:0|
 :skolemid |451|
 :pattern ( (_System.Tuple2.___hMake2_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (Actuals.List.Cons_q d@@5) (exists ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= d@@5 (|#Actuals.List.Cons| |a#0#0#0| |a#0#1#0|))
 :qid |DefaultParametersdfy.5:33|
 :skolemid |685|
)))
 :qid |unknown.0:0|
 :skolemid |686|
 :pattern ( (Actuals.List.Cons_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (Actuals.List.Nil_q d@@6) (= d@@6 |#Actuals.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |680|
 :pattern ( (Actuals.List.Nil_q d@@6))
)))
(assert (= (Ctor SetType) 8))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h0 T@U) ($h1 T@U) (this T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this null)) (not true)) ($Is refType this Tclass.Actuals.Iter))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@9 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (or (or (= $o@@9 this) (|Set#IsMember| (Actuals.Iter.__reads this) ($Box refType $o@@9))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 this) Actuals.Iter.__new)) ($Box refType $o@@9)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@9) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@9) $f)))
 :qid |unknown.0:0|
 :skolemid |736|
)) (= (Actuals.Iter.Valid $h0 this) (Actuals.Iter.Valid $h1 this))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |737|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (Actuals.Iter.Valid $h1 this))
)))
(assert (forall ((Actuals.Cell$U@@3 T@U) (|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| (Tclass.Actuals.Cell Actuals.Cell$U@@3))  (and ($Is refType |c#0@@3| (Tclass.Actuals.Cell? Actuals.Cell$U@@3)) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |711|
 :pattern ( ($Is refType |c#0@@3| (Tclass.Actuals.Cell Actuals.Cell$U@@3)))
 :pattern ( ($Is refType |c#0@@3| (Tclass.Actuals.Cell? Actuals.Cell$U@@3)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
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
(assert (forall ((Actuals.List$T@@2 T@U) ) (!  (and (= (Tag (Tclass.Actuals.List Actuals.List$T@@2)) Tagclass.Actuals.List) (= (TagFamily (Tclass.Actuals.List Actuals.List$T@@2)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |666|
 :pattern ( (Tclass.Actuals.List Actuals.List$T@@2))
)))
(assert (forall ((Actuals.Cell$U@@4 T@U) ) (!  (and (= (Tag (Tclass.Actuals.Cell Actuals.Cell$U@@4)) Tagclass.Actuals.Cell) (= (TagFamily (Tclass.Actuals.Cell Actuals.Cell$U@@4)) tytagFamily$Cell))
 :qid |unknown.0:0|
 :skolemid |670|
 :pattern ( (Tclass.Actuals.Cell Actuals.Cell$U@@4))
)))
(assert (forall ((Actuals.Cell$U@@5 T@U) ) (!  (and (= (Tag (Tclass.Actuals.Cell? Actuals.Cell$U@@5)) Tagclass.Actuals.Cell?) (= (TagFamily (Tclass.Actuals.Cell? Actuals.Cell$U@@5)) tytagFamily$Cell))
 :qid |unknown.0:0|
 :skolemid |701|
 :pattern ( (Tclass.Actuals.Cell? Actuals.Cell$U@@5))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|a#0@@0| Int) (|b#0@@0| Int) (|c#0@@4| Int) ) (!  (=> (or (|Actuals.__default.F#canCall| |a#0@@0| |b#0@@0| |c#0@@4|) (< 0 $FunctionContextHeight)) (= (Actuals.__default.F |a#0@@0| |b#0@@0| |c#0@@4|) (+ (+ |a#0@@0| (Mul (LitInt 2) |b#0@@0|)) (Mul (LitInt 3) |c#0@@4|))))
 :qid |DefaultParametersdfy.13:14|
 :skolemid |661|
 :pattern ( (Actuals.__default.F |a#0@@0| |b#0@@0| |c#0@@4|))
))))
(assert (= (Ctor SeqType) 9))
(assert (forall (($h@@9 T@U) ($o@@10 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) Tclass.Actuals.Iter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@10) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@10) Actuals.Iter.zs)) (TSeq TInt) $h@@9))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |723|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@10) Actuals.Iter.zs)))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( ($IsBox bx@@1 Tclass._System.object?))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsBox bx@@2 Tclass._System.object))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass.Actuals.Iter) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass.Actuals.Iter)))
 :qid |unknown.0:0|
 :skolemid |674|
 :pattern ( ($IsBox bx@@3 Tclass.Actuals.Iter))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass.Actuals.Iter?) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass.Actuals.Iter?)))
 :qid |unknown.0:0|
 :skolemid |713|
 :pattern ( ($IsBox bx@@4 Tclass.Actuals.Iter?))
)))
(assert (forall ((Actuals.Cell$U@@6 T@U) ($o@@11 T@U) ) (! (= ($Is refType $o@@11 (Tclass.Actuals.Cell? Actuals.Cell$U@@6))  (or (= $o@@11 null) (= (dtype $o@@11) (Tclass.Actuals.Cell? Actuals.Cell$U@@6))))
 :qid |unknown.0:0|
 :skolemid |704|
 :pattern ( ($Is refType $o@@11 (Tclass.Actuals.Cell? Actuals.Cell$U@@6)))
)))
(assert (forall ((|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| Tclass._System.object)  (and ($Is refType |c#0@@5| Tclass._System.object?) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@5| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@5| Tclass._System.object?))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass.Actuals.Iter)  (and ($Is refType |c#0@@6| Tclass.Actuals.Iter?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |743|
 :pattern ( ($Is refType |c#0@@6| Tclass.Actuals.Iter))
 :pattern ( ($Is refType |c#0@@6| Tclass.Actuals.Iter?))
)))
(assert (forall (($h@@10 T@U) ($o@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@12 null)) (not true)) (= (dtype $o@@12) Tclass.Actuals.Iter?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@12) Actuals.Iter.__new)) (TSet Tclass._System.object?)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |728|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@12) Actuals.Iter.__new)))
)))
(assert (forall (($h@@11 T@U) ($o@@13 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@13 null)) (not true)) (= (dtype $o@@13) Tclass.Actuals.Iter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@13) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@13) Actuals.Iter.__new)) (TSet Tclass._System.object?) $h@@11))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |729|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@13) Actuals.Iter.__new)))
)))
(assert (forall ((d@@7 T@U) ) (!  (=> (|$IsA#Actuals.List| d@@7) (or (Actuals.List.Nil_q d@@7) (Actuals.List.Cons_q d@@7)))
 :qid |unknown.0:0|
 :skolemid |696|
 :pattern ( (|$IsA#Actuals.List| d@@7))
)))
(assert (forall ((Actuals.List$T@@3 T@U) (d@@8 T@U) ) (!  (=> ($Is DatatypeTypeType d@@8 (Tclass.Actuals.List Actuals.List$T@@3)) (or (Actuals.List.Nil_q d@@8) (Actuals.List.Cons_q d@@8)))
 :qid |unknown.0:0|
 :skolemid |697|
 :pattern ( (Actuals.List.Cons_q d@@8) ($Is DatatypeTypeType d@@8 (Tclass.Actuals.List Actuals.List$T@@3)))
 :pattern ( (Actuals.List.Nil_q d@@8) ($Is DatatypeTypeType d@@8 (Tclass.Actuals.List Actuals.List$T@@3)))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) ) (!  (=> (|Set#Equal| a@@3 b@@3) (= a@@3 b@@3))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@3 b@@3))
)))
(assert (forall ((a@@4 T@U) (b@@4 T@U) ) (!  (=> (|Seq#Equal| a@@4 b@@4) (= a@@4 b@@4))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |241|
 :pattern ( (|Seq#Equal| a@@4 b@@4))
)))
(assert (forall ((a@@5 T@U) (b@@5 T@U) (c T@U) ) (!  (=> (or (not (= a@@5 c)) (not true)) (=> (and ($HeapSucc a@@5 b@@5) ($HeapSucc b@@5 c)) ($HeapSucc a@@5 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@5 b@@5) ($HeapSucc b@@5 c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 TInt) (and (= ($Box intType ($Unbox intType bx@@5)) bx@@5) ($Is intType ($Unbox intType bx@@5) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@5 TInt))
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
(assert (forall ((a@@6 T@U) (b@@6 T@U) ) (!  (=> (and (Actuals.List.Nil_q a@@6) (Actuals.List.Nil_q b@@6)) (|Actuals.List#Equal| a@@6 b@@6))
 :qid |unknown.0:0|
 :skolemid |698|
 :pattern ( (|Actuals.List#Equal| a@@6 b@@6) (Actuals.List.Nil_q a@@6))
 :pattern ( (|Actuals.List#Equal| a@@6 b@@6) (Actuals.List.Nil_q b@@6))
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
(assert (forall ((|a#4#0#0@@0| T@U) (|a#4#1#0@@0| T@U) ) (! (= (DatatypeCtorId (|#Actuals.List.Cons| |a#4#0#0@@0| |a#4#1#0@@0|)) |##Actuals.List.Cons|)
 :qid |DefaultParametersdfy.5:33|
 :skolemid |683|
 :pattern ( (|#Actuals.List.Cons| |a#4#0#0@@0| |a#4#1#0@@0|))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (Actuals.List._h0 (|#Actuals.List.Cons| |a#3#0#0| |a#3#1#0|)) |a#3#0#0|)
 :qid |DefaultParametersdfy.5:33|
 :skolemid |692|
 :pattern ( (|#Actuals.List.Cons| |a#3#0#0| |a#3#1#0|))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= (Actuals.List.tail (|#Actuals.List.Cons| |a#5#0#0| |a#5#1#0|)) |a#5#1#0|)
 :qid |DefaultParametersdfy.5:33|
 :skolemid |694|
 :pattern ( (|#Actuals.List.Cons| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall (($o@@14 T@U) ) (! ($Is refType $o@@14 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@14 Tclass._System.object?))
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
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Inv0_TSeq (TSeq t@@5)) t@@5)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@5))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Tag (TSeq t@@6)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@6))
)))
(assert (forall ((Actuals.List$T@@4 T@U) ) (! (= (Tclass.Actuals.List_0 (Tclass.Actuals.List Actuals.List$T@@4)) Actuals.List$T@@4)
 :qid |unknown.0:0|
 :skolemid |667|
 :pattern ( (Tclass.Actuals.List Actuals.List$T@@4))
)))
(assert (forall ((Actuals.Cell$U@@7 T@U) ) (! (= (Tclass.Actuals.Cell_0 (Tclass.Actuals.Cell Actuals.Cell$U@@7)) Actuals.Cell$U@@7)
 :qid |unknown.0:0|
 :skolemid |671|
 :pattern ( (Tclass.Actuals.Cell Actuals.Cell$U@@7))
)))
(assert (forall ((Actuals.Cell$U@@8 T@U) ) (! (= (Tclass.Actuals.Cell?_0 (Tclass.Actuals.Cell? Actuals.Cell$U@@8)) Actuals.Cell$U@@8)
 :qid |unknown.0:0|
 :skolemid |702|
 :pattern ( (Tclass.Actuals.Cell? Actuals.Cell$U@@8))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((|a#5#0#0@@0| T@U) (|a#5#1#0@@0| T@U) ) (! (< (BoxRank |a#5#0#0@@0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0@@0| |a#5#1#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |464|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0@@0| |a#5#1#0@@0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |466|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((|a#4#0#0@@1| T@U) (|a#4#1#0@@1| T@U) ) (! (< (BoxRank |a#4#0#0@@1|) (DtRank (|#Actuals.List.Cons| |a#4#0#0@@1| |a#4#1#0@@1|)))
 :qid |DefaultParametersdfy.5:33|
 :skolemid |693|
 :pattern ( (|#Actuals.List.Cons| |a#4#0#0@@1| |a#4#1#0@@1|))
)))
(assert (forall ((|a#6#0#0@@0| T@U) (|a#6#1#0@@0| T@U) ) (! (< (DtRank |a#6#1#0@@0|) (DtRank (|#Actuals.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|)))
 :qid |DefaultParametersdfy.5:33|
 :skolemid |695|
 :pattern ( (|#Actuals.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|))
)))
(assert (forall (($h@@12 T@U) ($o@@15 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@15 null)) (not true)) (= (dtype $o@@15) Tclass.Actuals.Iter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@15) alloc)))) ($IsAlloc intType (int_2_U (Actuals.Iter.a $o@@15)) TInt $h@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |717|
 :pattern ( (Actuals.Iter.a $o@@15) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@15) alloc)))
)))
(assert (forall (($h@@13 T@U) ($o@@16 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@16 null)) (not true)) (= (dtype $o@@16) Tclass.Actuals.Iter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@16) alloc)))) ($IsAlloc intType (int_2_U (Actuals.Iter.b $o@@16)) TInt $h@@13))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |719|
 :pattern ( (Actuals.Iter.b $o@@16) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@16) alloc)))
)))
(assert (forall (($h@@14 T@U) ($o@@17 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@17 null)) (not true)) (= (dtype $o@@17) Tclass.Actuals.Iter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@17) alloc)))) ($IsAlloc intType (int_2_U (Actuals.Iter.__decreases0 $o@@17)) TInt $h@@14))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |731|
 :pattern ( (Actuals.Iter.__decreases0 $o@@17) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@17) alloc)))
)))
(assert (forall (($h@@15 T@U) ($o@@18 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@18 null)) (not true)) (= (dtype $o@@18) Tclass.Actuals.Iter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@18) alloc)))) ($IsAlloc intType (int_2_U (Actuals.Iter.__decreases1 $o@@18)) TInt $h@@15))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |733|
 :pattern ( (Actuals.Iter.__decreases1 $o@@18) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@18) alloc)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@7)) bx@@7) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@7) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |455|
 :pattern ( ($IsBox bx@@7 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((d@@9 T@U) (Actuals.List$T@@5 T@U) ($h@@16 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (Actuals.List.Cons_q d@@9) ($IsAlloc DatatypeTypeType d@@9 (Tclass.Actuals.List Actuals.List$T@@5) $h@@16))) ($IsAllocBox (Actuals.List._h0 d@@9) Actuals.List$T@@5 $h@@16))
 :qid |unknown.0:0|
 :skolemid |689|
 :pattern ( ($IsAllocBox (Actuals.List._h0 d@@9) Actuals.List$T@@5 $h@@16))
)))
(assert  (and (forall ((t0@@3 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@3 t1@@0 t2 (MapType1Store t0@@3 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@19 T@U) ($f@@0 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@19 $f@@0))  (=> (and (or (not (= $o@@19 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@19) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |14266|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@19 $f@@0))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |452|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((x@@6 Int) (y Int) ) (! (= (Mul x@@6 y) (* x@@6 y))
 :qid |DafnyPreludebpl.1647:14|
 :skolemid |338|
 :pattern ( (Mul x@@6 y))
)))
(assert (forall ((d@@10 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@10)) (DtRank d@@10))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@10)))
)))
(assert (forall ((bx@@8 T@U) (t@@7 T@U) ) (!  (=> ($IsBox bx@@8 (TSet t@@7)) (and (= ($Box SetType ($Unbox SetType bx@@8)) bx@@8) ($Is SetType ($Unbox SetType bx@@8) (TSet t@@7))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@8 (TSet t@@7)))
)))
(assert (forall ((bx@@9 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@9 (TSeq t@@8)) (and (= ($Box SeqType ($Unbox SeqType bx@@9)) bx@@9) ($Is SeqType ($Unbox SeqType bx@@9) (TSeq t@@8))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@9 (TSeq t@@8)))
)))
(assert (forall ((Actuals.List$T@@6 T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass.Actuals.List Actuals.List$T@@6)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@10)) bx@@10) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@10) (Tclass.Actuals.List Actuals.List$T@@6))))
 :qid |unknown.0:0|
 :skolemid |668|
 :pattern ( ($IsBox bx@@10 (Tclass.Actuals.List Actuals.List$T@@6)))
)))
(assert (forall ((Actuals.Cell$U@@9 T@U) (bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 (Tclass.Actuals.Cell Actuals.Cell$U@@9)) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) (Tclass.Actuals.Cell Actuals.Cell$U@@9))))
 :qid |unknown.0:0|
 :skolemid |672|
 :pattern ( ($IsBox bx@@11 (Tclass.Actuals.Cell Actuals.Cell$U@@9)))
)))
(assert (forall ((Actuals.Cell$U@@10 T@U) (bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 (Tclass.Actuals.Cell? Actuals.Cell$U@@10)) (and (= ($Box refType ($Unbox refType bx@@12)) bx@@12) ($Is refType ($Unbox refType bx@@12) (Tclass.Actuals.Cell? Actuals.Cell$U@@10))))
 :qid |unknown.0:0|
 :skolemid |703|
 :pattern ( ($IsBox bx@@12 (Tclass.Actuals.Cell? Actuals.Cell$U@@10)))
)))
(assert (forall (($h@@17 T@U) ($o@@20 T@U) ) (!  (=> (and ($IsGoodHeap $h@@17) (and (or (not (= $o@@20 null)) (not true)) (= (dtype $o@@20) Tclass.Actuals.Iter?))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@20) Actuals.Iter.zs)) (TSeq TInt)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |722|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@20) Actuals.Iter.zs)))
)))
(assert (forall ((d@@11 T@U) (Actuals.List$T@@7 T@U) ($h@@18 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (Actuals.List.Cons_q d@@11) ($IsAlloc DatatypeTypeType d@@11 (Tclass.Actuals.List Actuals.List$T@@7) $h@@18))) ($IsAlloc DatatypeTypeType (Actuals.List.tail d@@11) (Tclass.Actuals.List Actuals.List$T@@7) $h@@18))
 :qid |unknown.0:0|
 :skolemid |690|
 :pattern ( ($IsAlloc DatatypeTypeType (Actuals.List.tail d@@11) (Tclass.Actuals.List Actuals.List$T@@7) $h@@18))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass.Actuals.Iter) Tagclass.Actuals.Iter))
(assert (= (TagFamily Tclass.Actuals.Iter) tytagFamily$Iter))
(assert (= (Tag Tclass.Actuals.Iter?) Tagclass.Actuals.Iter?))
(assert (= (TagFamily Tclass.Actuals.Iter?) tytagFamily$Iter))
(assert (= |#Actuals.List.Nil| (Lit DatatypeTypeType |#Actuals.List.Nil|)))
(assert (forall (($o@@21 T@U) ) (!  (=> (and (or (not (= $o@@21 null)) (not true)) (= (dtype $o@@21) Tclass.Actuals.Iter?)) ($Is SetType (Actuals.Iter.__reads $o@@21) (TSet Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |724|
 :pattern ( (Actuals.Iter.__reads $o@@21))
)))
(assert (forall (($o@@22 T@U) ) (!  (=> (and (or (not (= $o@@22 null)) (not true)) (= (dtype $o@@22) Tclass.Actuals.Iter?)) ($Is SetType (Actuals.Iter.__modifies $o@@22) (TSet Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |726|
 :pattern ( (Actuals.Iter.__modifies $o@@22))
)))
(assert (forall ((a@@7 T@U) (b@@7 T@U) ) (! (= (|Set#Equal| a@@7 b@@7) (forall ((o@@1 T@U) ) (! (= (|Set#IsMember| a@@7 o@@1) (|Set#IsMember| b@@7 o@@1))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@7 o@@1))
 :pattern ( (|Set#IsMember| b@@7 o@@1))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@7 b@@7))
)))
(assert (forall ((d@@12 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@19 T@U) ) (!  (=> (and ($IsGoodHeap $h@@19) (and (_System.Tuple2.___hMake2_q d@@12) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@12 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@19)
 :qid |unknown.0:0|
 :skolemid |458|
 :pattern ( ($IsAlloc DatatypeTypeType d@@12 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@19))
)))) ($IsAllocBox (_System.Tuple2._0 d@@12) |_System._tuple#2$T0@@6| $h@@19))
 :qid |unknown.0:0|
 :skolemid |459|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@12) |_System._tuple#2$T0@@6| $h@@19))
)))
(assert (forall ((d@@13 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@20 T@U) ) (!  (=> (and ($IsGoodHeap $h@@20) (and (_System.Tuple2.___hMake2_q d@@13) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@13 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@20)
 :qid |unknown.0:0|
 :skolemid |460|
 :pattern ( ($IsAlloc DatatypeTypeType d@@13 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@20))
)))) ($IsAllocBox (_System.Tuple2._1 d@@13) |_System._tuple#2$T1@@7| $h@@20))
 :qid |unknown.0:0|
 :skolemid |461|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@13) |_System._tuple#2$T1@@7| $h@@20))
)))
(assert (forall ((|a#3#0#0@@0| T@U) (|a#3#1#0@@0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0@@0|) (Lit BoxType |a#3#1#0@@0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0@@0| |a#3#1#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |462|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0@@0|) (Lit BoxType |a#3#1#0@@0|)))
)))
(assert (forall ((|a#2#0#0@@1| T@U) (|a#2#1#0@@1| T@U) ) (! (= (|#Actuals.List.Cons| (Lit BoxType |a#2#0#0@@1|) (Lit DatatypeTypeType |a#2#1#0@@1|)) (Lit DatatypeTypeType (|#Actuals.List.Cons| |a#2#0#0@@1| |a#2#1#0@@1|)))
 :qid |DefaultParametersdfy.5:33|
 :skolemid |691|
 :pattern ( (|#Actuals.List.Cons| (Lit BoxType |a#2#0#0@@1|) (Lit DatatypeTypeType |a#2#1#0@@1|)))
)))
(assert (forall (($h@@21 T@U) ($o@@23 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@21) (and (or (not (= $o@@23 null)) (not true)) (= (dtype $o@@23) Tclass.Actuals.Iter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@23) alloc)))) ($IsAlloc SetType (Actuals.Iter.__reads $o@@23) (TSet Tclass._System.object?) $h@@21))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |725|
 :pattern ( (Actuals.Iter.__reads $o@@23) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@23) alloc)))
)))
(assert (forall (($h@@22 T@U) ($o@@24 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@22) (and (or (not (= $o@@24 null)) (not true)) (= (dtype $o@@24) Tclass.Actuals.Iter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@24) alloc)))) ($IsAlloc SetType (Actuals.Iter.__modifies $o@@24) (TSet Tclass._System.object?) $h@@22))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |727|
 :pattern ( (Actuals.Iter.__modifies $o@@24) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@24) alloc)))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@8)) (Lit BoxType ($Box T@@5 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@8)))
)))
(assert (forall ((s@@0 T@U) ) (!  (=> (= (|Seq#Length| s@@0) 0) (= s@@0 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((h@@5 T@U) (v@@5 T@U) ) (! ($IsAlloc intType v@@5 TInt h@@5)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@5 TInt h@@5))
)))
(assert (forall ((Actuals.List$T@@8 T@U) (|a#1#0#0@@1| T@U) (|a#1#1#0@@1| T@U) ($h@@23 T@U) ) (!  (=> ($IsGoodHeap $h@@23) (= ($IsAlloc DatatypeTypeType (|#Actuals.List.Cons| |a#1#0#0@@1| |a#1#1#0@@1|) (Tclass.Actuals.List Actuals.List$T@@8) $h@@23)  (and ($IsAllocBox |a#1#0#0@@1| Actuals.List$T@@8 $h@@23) ($IsAlloc DatatypeTypeType |a#1#1#0@@1| (Tclass.Actuals.List Actuals.List$T@@8) $h@@23))))
 :qid |unknown.0:0|
 :skolemid |688|
 :pattern ( ($IsAlloc DatatypeTypeType (|#Actuals.List.Cons| |a#1#0#0@@1| |a#1#1#0@@1|) (Tclass.Actuals.List Actuals.List$T@@8) $h@@23))
)))
(assert (forall ((v@@6 T@U) (t0@@4 T@U) ) (! (= ($Is SeqType v@@6 (TSeq t0@@4)) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@6))) ($IsBox (|Seq#Index| v@@6 i@@0) t0@@4))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@6 i@@0))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@6 (TSeq t0@@4)))
)))
(assert (forall ((s@@1 T@U) (i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| s@@1))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@1 i@@1))) (|Seq#Rank| s@@1)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@1 i@@1))))
)))
(assert (forall ((v@@7 T@U) ) (! ($Is intType v@@7 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@7 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun call3formal@this@0 () T@U)
(declare-fun call3formal@this@0@@0 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |xs0#0@0| () T@U)
(declare-fun |tuple0#0@0| () T@U)
(declare-fun |a##0@0| () Int)
(declare-fun |b##0@0| () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun |call3formal@r#0@0| () Int)
(declare-fun |##a#0@0| () Int)
(declare-fun |##b#0@0| () Int)
(declare-fun |##c#0@0| () Int)
(declare-fun |x0#0@0| () Int)
(declare-fun |u##0@0| () Int)
(declare-fun call3formal@this () T@U)
(declare-fun call0formal@Actuals.Cell$U () T@U)
(declare-fun |call1formal@u#0@0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun call3formal@this@0@@1 () T@U)
(declare-fun |a##1@0| () Int)
(declare-fun |b##1@0| () Int)
(declare-fun call3formal@this@@0 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |Actuals.Iter.Valid#canCall| (T@U T@U) Bool)
(declare-fun |xs1#0@0| () T@U)
(declare-fun |tuple1#0@0| () T@U)
(declare-fun |a##2@0| () Int)
(declare-fun |b##2@0| () Int)
(declare-fun $Heap@3 () T@U)
(declare-fun |call3formal@r#0@0@@0| () Int)
(declare-fun |##a#1@0| () Int)
(declare-fun |##b#1@0| () Int)
(declare-fun |##c#1@0| () Int)
(declare-fun |x1#0@0| () Int)
(declare-fun |u##1@0| () Int)
(declare-fun call3formal@this@@1 () T@U)
(declare-fun call0formal@Actuals.Cell$U@@0 () T@U)
(declare-fun |call1formal@u#0@0@@0| () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun call3formal@this@0@@2 () T@U)
(declare-fun |a##3@0| () Int)
(declare-fun |b##3@0| () Int)
(declare-fun call3formal@this@@2 () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun |xs0#0| () T@U)
(declare-fun |tuple0#0| () T@U)
(declare-fun |defass#c0#0| () Bool)
(declare-fun |c0#0| () T@U)
(declare-fun |defass#iter0#0| () Bool)
(declare-fun |iter0#0| () T@U)
(declare-fun |xs1#0| () T@U)
(declare-fun |tuple1#0| () T@U)
(declare-fun |defass#c1#0| () Bool)
(declare-fun |c1#0| () T@U)
(declare-fun |defass#iter1#0| () Bool)
(declare-fun |iter1#0| () T@U)
(set-info :boogie-vc-id Impl$$Actuals.__default.ParsingActualBindings)
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
 (=> (= (ControlFlow 0 0) 24) (let ((anon2_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (= (Actuals.Iter.a call3formal@this@0) (Actuals.Iter.a call3formal@this@0@@0))) (=> (= (ControlFlow 0 2) (- 0 1)) (= (Actuals.Iter.b call3formal@this@0) (Actuals.Iter.b call3formal@this@0@@0))))))
(let ((anon3_Else_correct  (=> (and (or (not (= (Actuals.Iter.a call3formal@this@0) (Actuals.Iter.a call3formal@this@0@@0))) (not true)) (= (ControlFlow 0 9) 2)) anon2_correct)))
(let ((anon3_Then_correct  (=> (= (Actuals.Iter.a call3formal@this@0) (Actuals.Iter.a call3formal@this@0@@0)) (and (=> (= (ControlFlow 0 4) (- 0 8)) true) (and (=> (= (ControlFlow 0 4) (- 0 7)) (or (not (= call3formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 4) (- 0 6)) true) (and (=> (= (ControlFlow 0 4) (- 0 5)) (or (not (= call3formal@this@0@@0 null)) (not true))) (=> (= (ControlFlow 0 4) 2) anon2_correct))))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and (= |xs0#0@0| (Lit DatatypeTypeType (|#Actuals.List.Cons| ($Box intType (int_2_U (LitInt 5))) (Lit DatatypeTypeType (|#Actuals.List.Cons| ($Box intType (int_2_U (LitInt 7))) (Lit DatatypeTypeType |#Actuals.List.Nil|)))))) (= |tuple0#0@0| (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (LitInt 300))) ($Box intType (int_2_U (LitInt 10))))))) (and (= |a##0@0| (LitInt 100)) (= |b##0@0| (LitInt 60)))) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (= |call3formal@r#0@0| (+ |a##0@0| (Mul (LitInt 2) |b##0@0|)))) (and (and (forall (($o@@25 T@U) ) (!  (=> (and (or (not (= $o@@25 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@25) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@25) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@25)))
 :qid |DefaultParametersdfy.7:10|
 :skolemid |657|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@25))
)) ($HeapSucc $Heap $Heap@0)) (and (= |##a#0@0| (LitInt 200)) ($IsAlloc intType (int_2_U |##a#0@0|) TInt $Heap@0)))) (=> (and (and (and (and (and (and (and (= |##b#0@0| (LitInt 10)) ($IsAlloc intType (int_2_U |##b#0@0|) TInt $Heap@0)) (and (= |##c#0@0| (LitInt 20)) ($IsAlloc intType (int_2_U |##c#0@0|) TInt $Heap@0))) (and (and (|Actuals.__default.F#canCall| (LitInt 200) (LitInt 10) (LitInt 20)) (|Actuals.__default.F#canCall| (LitInt 200) (LitInt 10) (LitInt 20))) (and (= |x0#0@0| (LitInt (Actuals.__default.F (LitInt 200) (LitInt 10) (LitInt 20)))) (= |u##0@0| (LitInt 75))))) (and (and (and (or (not (= call3formal@this null)) (not true)) (and ($Is refType call3formal@this (Tclass.Actuals.Cell call0formal@Actuals.Cell$U)) ($IsAlloc refType call3formal@this (Tclass.Actuals.Cell call0formal@Actuals.Cell$U) $Heap))) (= |call1formal@u#0@0| ($Box intType (int_2_U |u##0@0|)))) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)))) (and (and (and (and (or (not (= call3formal@this@0@@1 null)) (not true)) (and ($Is refType call3formal@this@0@@1 (Tclass.Actuals.Cell TInt)) ($IsAlloc refType call3formal@this@0@@1 (Tclass.Actuals.Cell TInt) $Heap@1))) (and (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call3formal@this@0@@1) Actuals.Cell.value) |call1formal@u#0@0|) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call3formal@this@0@@1) alloc)))))) (and (and (forall (($o@@26 T@U) ) (!  (=> (and (or (not (= $o@@26 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@26) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@26) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@26)))
 :qid |DefaultParametersdfy.20:5|
 :skolemid |709|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@26))
)) ($HeapSucc $Heap@0 $Heap@1)) (and (= |a##1@0| (LitInt 10)) (= |b##1@0| (LitInt 20))))) (and (and (and (or (not (= call3formal@this@@0 null)) (not true)) (and ($Is refType call3formal@this@@0 Tclass.Actuals.Iter) ($IsAlloc refType call3formal@this@@0 Tclass.Actuals.Iter $Heap))) (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2))) (and (and (or (not (= call3formal@this@0 null)) (not true)) (and ($Is refType call3formal@this@0 Tclass.Actuals.Iter) ($IsAlloc refType call3formal@this@0 Tclass.Actuals.Iter $Heap@2))) (= (Actuals.Iter.a call3formal@this@0) |a##1@0|))))) (and (and (and (and (and (= (Actuals.Iter.b call3formal@this@0) |b##1@0|) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call3formal@this@0) Actuals.Iter.zs)) |Seq#Empty|)) (and (|Actuals.Iter.Valid#canCall| $Heap@2 call3formal@this@0) (Actuals.Iter.Valid $Heap@2 call3formal@this@0))) (and (and (|Set#Equal| (Actuals.Iter.__reads call3formal@this@0) |Set#Empty|) (|Set#Equal| (Actuals.Iter.__modifies call3formal@this@0) |Set#Empty|)) (and (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call3formal@this@0) Actuals.Iter.__new)) |Set#Empty|) (= (Actuals.Iter.__decreases0 call3formal@this@0) |a##1@0|)))) (and (and (and (= (Actuals.Iter.__decreases1 call3formal@this@0) |b##1@0|) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call3formal@this@0) alloc))))) (and (forall (($o@@27 T@U) ) (!  (=> (and (or (not (= $o@@27 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@27) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@27) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@27)))
 :qid |DefaultParametersdfy.27:12|
 :skolemid |735|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@27))
)) ($HeapSucc $Heap@1 $Heap@2))) (and (and (= |xs1#0@0| (Lit DatatypeTypeType (|#Actuals.List.Cons| ($Box intType (int_2_U (LitInt 5))) (Lit DatatypeTypeType (|#Actuals.List.Cons| ($Box intType (int_2_U (LitInt 7))) (Lit DatatypeTypeType |#Actuals.List.Nil|)))))) (= |tuple1#0@0| (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (LitInt 300))) ($Box intType (int_2_U (LitInt 10))))))) (and (= |a##2@0| (LitInt 100)) (= |b##2@0| (LitInt 60)))))) (and (and (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (= |call3formal@r#0@0@@0| (+ |a##2@0| (Mul (LitInt 2) |b##2@0|)))) (and (and (forall (($o@@28 T@U) ) (!  (=> (and (or (not (= $o@@28 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@28) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@28) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@28)))
 :qid |DefaultParametersdfy.7:10|
 :skolemid |657|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@28))
)) ($HeapSucc $Heap@2 $Heap@3)) (and (= |##a#1@0| (LitInt 200)) ($IsAlloc intType (int_2_U |##a#1@0|) TInt $Heap@3)))) (and (and (and (= |##b#1@0| (LitInt 10)) ($IsAlloc intType (int_2_U |##b#1@0|) TInt $Heap@3)) (and (= |##c#1@0| (LitInt 20)) ($IsAlloc intType (int_2_U |##c#1@0|) TInt $Heap@3))) (and (and (|Actuals.__default.F#canCall| (LitInt 200) (LitInt 10) (LitInt 20)) (|Actuals.__default.F#canCall| (LitInt 200) (LitInt 10) (LitInt 20))) (and (= |x1#0@0| (LitInt (Actuals.__default.F (LitInt 200) (LitInt 10) (LitInt 20)))) (= |u##1@0| (LitInt 75)))))))) (and (and (and (and (and (and (or (not (= call3formal@this@@1 null)) (not true)) (and ($Is refType call3formal@this@@1 (Tclass.Actuals.Cell call0formal@Actuals.Cell$U@@0)) ($IsAlloc refType call3formal@this@@1 (Tclass.Actuals.Cell call0formal@Actuals.Cell$U@@0) $Heap))) (= |call1formal@u#0@0@@0| ($Box intType (int_2_U |u##1@0|)))) (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4))) (and (and (or (not (= call3formal@this@0@@2 null)) (not true)) (and ($Is refType call3formal@this@0@@2 (Tclass.Actuals.Cell TInt)) ($IsAlloc refType call3formal@this@0@@2 (Tclass.Actuals.Cell TInt) $Heap@4))) (and (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call3formal@this@0@@2) Actuals.Cell.value) |call1formal@u#0@0@@0|) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call3formal@this@0@@2) alloc))))))) (and (and (and (forall (($o@@29 T@U) ) (!  (=> (and (or (not (= $o@@29 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@29) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@29) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@29)))
 :qid |DefaultParametersdfy.20:5|
 :skolemid |709|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@29))
)) ($HeapSucc $Heap@3 $Heap@4)) (and (= |a##3@0| (LitInt 10)) (= |b##3@0| (LitInt 20)))) (and (and (or (not (= call3formal@this@@2 null)) (not true)) (and ($Is refType call3formal@this@@2 Tclass.Actuals.Iter) ($IsAlloc refType call3formal@this@@2 Tclass.Actuals.Iter $Heap))) (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5))))) (and (and (and (and (and (or (not (= call3formal@this@0@@0 null)) (not true)) (and ($Is refType call3formal@this@0@@0 Tclass.Actuals.Iter) ($IsAlloc refType call3formal@this@0@@0 Tclass.Actuals.Iter $Heap@5))) (= (Actuals.Iter.a call3formal@this@0@@0) |a##3@0|)) (and (= (Actuals.Iter.b call3formal@this@0@@0) |b##3@0|) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 call3formal@this@0@@0) Actuals.Iter.zs)) |Seq#Empty|))) (and (and (|Actuals.Iter.Valid#canCall| $Heap@5 call3formal@this@0@@0) (Actuals.Iter.Valid $Heap@5 call3formal@this@0@@0)) (and (|Set#Equal| (Actuals.Iter.__reads call3formal@this@0@@0) |Set#Empty|) (|Set#Equal| (Actuals.Iter.__modifies call3formal@this@0@@0) |Set#Empty|)))) (and (and (and (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 call3formal@this@0@@0) Actuals.Iter.__new)) |Set#Empty|) (= (Actuals.Iter.__decreases0 call3formal@this@0@@0) |a##3@0|)) (and (= (Actuals.Iter.__decreases1 call3formal@this@0@@0) |b##3@0|) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call3formal@this@0@@0) alloc)))))) (and (and (forall (($o@@30 T@U) ) (!  (=> (and (or (not (= $o@@30 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@30) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@30) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@30)))
 :qid |DefaultParametersdfy.27:12|
 :skolemid |735|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@30))
)) ($HeapSucc $Heap@4 $Heap@5)) (and (|$IsA#Actuals.List| |xs0#0@0|) (|$IsA#Actuals.List| |xs1#0@0|))))))) (and (=> (= (ControlFlow 0 10) (- 0 23)) (|Actuals.List#Equal| |xs0#0@0| |xs1#0@0|)) (=> (|Actuals.List#Equal| |xs0#0@0| |xs1#0@0|) (=> (and (|$IsA#_System.Tuple2| |tuple0#0@0|) (|$IsA#_System.Tuple2| |tuple1#0@0|)) (and (=> (= (ControlFlow 0 10) (- 0 22)) (|_System.Tuple2#Equal| |tuple0#0@0| |tuple1#0@0|)) (=> (|_System.Tuple2#Equal| |tuple0#0@0| |tuple1#0@0|) (and (=> (= (ControlFlow 0 10) (- 0 21)) (= |call3formal@r#0@0| |call3formal@r#0@0@@0|)) (=> (= |call3formal@r#0@0| |call3formal@r#0@0@@0|) (and (=> (= (ControlFlow 0 10) (- 0 20)) (= |x0#0@0| |x1#0@0|)) (=> (= |x0#0@0| |x1#0@0|) (and (=> (= (ControlFlow 0 10) (- 0 19)) true) (and (=> (= (ControlFlow 0 10) (- 0 18)) (or (not (= call3formal@this@0@@1 null)) (not true))) (and (=> (= (ControlFlow 0 10) (- 0 17)) true) (and (=> (= (ControlFlow 0 10) (- 0 16)) (or (not (= call3formal@this@0@@2 null)) (not true))) (and (=> (= (ControlFlow 0 10) (- 0 15)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 call3formal@this@0@@1) Actuals.Cell.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 call3formal@this@0@@2) Actuals.Cell.value))))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 call3formal@this@0@@1) Actuals.Cell.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 call3formal@this@0@@2) Actuals.Cell.value)))) (and (=> (= (ControlFlow 0 10) (- 0 14)) true) (and (=> (= (ControlFlow 0 10) (- 0 13)) (or (not (= call3formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 10) (- 0 12)) true) (and (=> (= (ControlFlow 0 10) (- 0 11)) (or (not (= call3formal@this@0@@0 null)) (not true))) (and (=> (= (ControlFlow 0 10) 4) anon3_Then_correct) (=> (= (ControlFlow 0 10) 9) anon3_Else_correct)))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (and (and ($Is DatatypeTypeType |xs0#0| (Tclass.Actuals.List TInt)) ($IsAlloc DatatypeTypeType |xs0#0| (Tclass.Actuals.List TInt) $Heap)) true) (and (and ($Is DatatypeTypeType |tuple0#0| (Tclass._System.Tuple2 TInt TInt)) ($IsAlloc DatatypeTypeType |tuple0#0| (Tclass._System.Tuple2 TInt TInt) $Heap)) true)) (and (and (and (=> |defass#c0#0| (and ($Is refType |c0#0| (Tclass.Actuals.Cell TInt)) ($IsAlloc refType |c0#0| (Tclass.Actuals.Cell TInt) $Heap))) true) (and (=> |defass#iter0#0| (and ($Is refType |iter0#0| Tclass.Actuals.Iter) ($IsAlloc refType |iter0#0| Tclass.Actuals.Iter $Heap))) true)) (and (and ($Is DatatypeTypeType |xs1#0| (Tclass.Actuals.List TInt)) ($IsAlloc DatatypeTypeType |xs1#0| (Tclass.Actuals.List TInt) $Heap)) true))) (and (and (and (and ($Is DatatypeTypeType |tuple1#0| (Tclass._System.Tuple2 TInt TInt)) ($IsAlloc DatatypeTypeType |tuple1#0| (Tclass._System.Tuple2 TInt TInt) $Heap)) true) (and (=> |defass#c1#0| (and ($Is refType |c1#0| (Tclass.Actuals.Cell TInt)) ($IsAlloc refType |c1#0| (Tclass.Actuals.Cell TInt) $Heap))) true)) (and (and (=> |defass#iter1#0| (and ($Is refType |iter1#0| Tclass.Actuals.Iter) ($IsAlloc refType |iter1#0| Tclass.Actuals.Iter $Heap))) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 24) 10))))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
