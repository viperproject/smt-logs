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
(declare-fun TagBool () T@U)
(declare-fun TagSet () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun Tagclass._System.___hPartialFunc1 () T@U)
(declare-fun Tagclass._System.___hTotalFunc1 () T@U)
(declare-fun class.A.StoreAndRetrieve? () T@U)
(declare-fun Tagclass.A.StoreAndRetrieve? () T@U)
(declare-fun Tagclass.A.StoreAndRetrieve () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
(declare-fun |tytagFamily$_#PartialFunc1| () T@U)
(declare-fun |tytagFamily$_#TotalFunc1| () T@U)
(declare-fun tytagFamily$StoreAndRetrieve () T@U)
(declare-fun field$Repr () T@U)
(declare-fun field$Contents () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.A.StoreAndRetrieve (T@U) T@U)
(declare-fun Tclass.A.StoreAndRetrieve? (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun A.StoreAndRetrieve.Valid (T@U T@U T@U) Bool)
(declare-fun |A.StoreAndRetrieve.Valid#canCall| (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun A.StoreAndRetrieve.Repr () T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun A.StoreAndRetrieve.Contents () T@U)
(declare-fun Reads1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1 (T@U T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1 (T@U T@U) T@U)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tclass.A.StoreAndRetrieve?_0 (T@U) T@U)
(declare-fun Tclass.A.StoreAndRetrieve_0 (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#1| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |A.StoreAndRetrieve.Valid_k#canCall| (T@U T@U T@U) Bool)
(declare-fun A.StoreAndRetrieve.Valid_k (T@U T@U T@U) Bool)
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
(assert (distinct TBool TagBool TagSet alloc allocName Tagclass._System.object? Tagclass._System.object Tagclass._System.___hFunc1 Tagclass._System.___hPartialFunc1 Tagclass._System.___hTotalFunc1 class.A.StoreAndRetrieve? Tagclass.A.StoreAndRetrieve? Tagclass.A.StoreAndRetrieve tytagFamily$object |tytagFamily$_#Func1| |tytagFamily$_#PartialFunc1| |tytagFamily$_#TotalFunc1| tytagFamily$StoreAndRetrieve field$Repr field$Contents)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
(assert (= (DeclName alloc) allocName))
(assert (= (Ctor refType) 3))
(assert (forall ((A.StoreAndRetrieve$Thing T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass.A.StoreAndRetrieve A.StoreAndRetrieve$Thing) $h) ($IsAlloc refType |c#0| (Tclass.A.StoreAndRetrieve? A.StoreAndRetrieve$Thing) $h))
 :qid |unknown.0:0|
 :skolemid |1053|
 :pattern ( ($IsAlloc refType |c#0| (Tclass.A.StoreAndRetrieve A.StoreAndRetrieve$Thing) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass.A.StoreAndRetrieve? A.StoreAndRetrieve$Thing) $h))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |647|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert  (and (and (and (and (and (and (and (= (Ctor SetType) 4) (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((A.StoreAndRetrieve$Thing@@0 T@U) ($Heap T@U) (this T@U) ) (!  (=> (or (|A.StoreAndRetrieve.Valid#canCall| A.StoreAndRetrieve$Thing@@0 $Heap this) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this (Tclass.A.StoreAndRetrieve A.StoreAndRetrieve$Thing@@0)) ($IsAlloc refType this (Tclass.A.StoreAndRetrieve A.StoreAndRetrieve$Thing@@0) $Heap)))))) (=> (A.StoreAndRetrieve.Valid A.StoreAndRetrieve$Thing@@0 $Heap this) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) A.StoreAndRetrieve.Repr)) ($Box refType this))))
 :qid |unknown.0:0|
 :skolemid |1042|
 :pattern ( (A.StoreAndRetrieve.Valid A.StoreAndRetrieve$Thing@@0 $Heap this))
))))
(assert (= (Ctor HandleTypeType) 8))
(assert (forall ((f T@U) (t0@@0 T@U) (t1@@0 T@U) (u0@@0 T@U) (u1@@0 T@U) ) (!  (=> (and (and ($Is HandleTypeType f (Tclass._System.___hFunc1 t0@@0 t1@@0)) (forall ((bx T@U) ) (!  (=> ($IsBox bx u0@@0) ($IsBox bx t0@@0))
 :qid |unknown.0:0|
 :skolemid |911|
 :pattern ( ($IsBox bx u0@@0))
 :pattern ( ($IsBox bx t0@@0))
))) (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 t1@@0) ($IsBox bx@@0 u1@@0))
 :qid |unknown.0:0|
 :skolemid |912|
 :pattern ( ($IsBox bx@@0 t1@@0))
 :pattern ( ($IsBox bx@@0 u1@@0))
))) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0@@0 u1@@0)))
 :qid |unknown.0:0|
 :skolemid |913|
 :pattern ( ($Is HandleTypeType f (Tclass._System.___hFunc1 t0@@0 t1@@0)) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0@@0 u1@@0)))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@0) ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |873|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@0))
)))
(assert (= (FDim A.StoreAndRetrieve.Repr) 0))
(assert (= (FieldOfDecl class.A.StoreAndRetrieve? field$Repr) A.StoreAndRetrieve.Repr))
(assert ($IsGhostField A.StoreAndRetrieve.Repr))
(assert (= (FDim A.StoreAndRetrieve.Contents) 0))
(assert (= (FieldOfDecl class.A.StoreAndRetrieve? field$Contents) A.StoreAndRetrieve.Contents))
(assert ($IsGhostField A.StoreAndRetrieve.Contents))
(assert (forall ((A.StoreAndRetrieve$Thing@@1 T@U) ($o T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o (Tclass.A.StoreAndRetrieve? A.StoreAndRetrieve$Thing@@1) $h@@1)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1005|
 :pattern ( ($IsAlloc refType $o (Tclass.A.StoreAndRetrieve? A.StoreAndRetrieve$Thing@@1) $h@@1))
)))
(assert (forall (($o@@0 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._System.object? $h@@2)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |870|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._System.object? $h@@2))
)))
(assert (forall ((t0@@1 T@U) (t1@@1 T@U) (heap T@U) (f@@0 T@U) (bx0 T@U) ) (!  (=> (and ($IsGoodHeap heap) (and ($IsBox bx0 t0@@1) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@1 t1@@1)))) (= (|Set#Equal| (Reads1 t0@@1 t1@@1 $OneHeap f@@0 bx0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@1 t1@@1 heap f@@0 bx0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |907|
 :pattern ( (Reads1 t0@@1 t1@@1 $OneHeap f@@0 bx0) ($IsGoodHeap heap))
 :pattern ( (Reads1 t0@@1 t1@@1 heap f@@0 bx0))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@2)) x@@2)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |548|
 :pattern ( ($Unbox T x@@2))
)))
(assert (forall ((v T@U) (t0@@2 T@U) ) (! (= ($Is SetType v (TSet t0@@2)) (forall ((bx@@1 T@U) ) (!  (=> (|Set#IsMember| v bx@@1) ($IsBox bx@@1 t0@@2))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |568|
 :pattern ( (|Set#IsMember| v bx@@1))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |569|
 :pattern ( ($Is SetType v (TSet t0@@2)))
)))
(assert ($IsGhostField alloc))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((A.StoreAndRetrieve$Thing@@2 T@U) (|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| (Tclass.A.StoreAndRetrieve A.StoreAndRetrieve$Thing@@2))  (and ($Is refType |c#0@@1| (Tclass.A.StoreAndRetrieve? A.StoreAndRetrieve$Thing@@2)) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1052|
 :pattern ( ($Is refType |c#0@@1| (Tclass.A.StoreAndRetrieve A.StoreAndRetrieve$Thing@@2)))
 :pattern ( ($Is refType |c#0@@1| (Tclass.A.StoreAndRetrieve? A.StoreAndRetrieve$Thing@@2)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v@@0) t h) ($IsAlloc T@@0 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |561|
 :pattern ( ($IsAllocBox ($Box T@@0 v@@0) t h))
)))
(assert (forall ((A.StoreAndRetrieve$Thing@@3 T@U) ) (!  (and (= (Tag (Tclass.A.StoreAndRetrieve? A.StoreAndRetrieve$Thing@@3)) Tagclass.A.StoreAndRetrieve?) (= (TagFamily (Tclass.A.StoreAndRetrieve? A.StoreAndRetrieve$Thing@@3)) tytagFamily$StoreAndRetrieve))
 :qid |unknown.0:0|
 :skolemid |1001|
 :pattern ( (Tclass.A.StoreAndRetrieve? A.StoreAndRetrieve$Thing@@3))
)))
(assert (forall ((A.StoreAndRetrieve$Thing@@4 T@U) ) (!  (and (= (Tag (Tclass.A.StoreAndRetrieve A.StoreAndRetrieve$Thing@@4)) Tagclass.A.StoreAndRetrieve) (= (TagFamily (Tclass.A.StoreAndRetrieve A.StoreAndRetrieve$Thing@@4)) tytagFamily$StoreAndRetrieve))
 :qid |unknown.0:0|
 :skolemid |1007|
 :pattern ( (Tclass.A.StoreAndRetrieve A.StoreAndRetrieve$Thing@@4))
)))
(assert (forall ((A.StoreAndRetrieve$Thing@@5 T@U) ($h@@3 T@U) ($o@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) (Tclass.A.StoreAndRetrieve? A.StoreAndRetrieve$Thing@@5)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@1) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@1) A.StoreAndRetrieve.Contents)) (TSet A.StoreAndRetrieve$Thing@@5) $h@@3))
 :qid |unknown.0:0|
 :skolemid |1039|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@1) A.StoreAndRetrieve.Contents)) (Tclass.A.StoreAndRetrieve? A.StoreAndRetrieve$Thing@@5))
)))
(assert (forall ((|#$T0| T@U) (|#$R| T@U) (|f#0| T@U) ($h@@4 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h@@4) ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hFunc1 |#$T0| |#$R|) $h@@4))
 :qid |unknown.0:0|
 :skolemid |925|
 :pattern ( ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h@@4))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$R@@0| T@U) (|f#0@@0| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc1 |#$T0@@0| |#$R@@0|) $h@@5) ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hPartialFunc1 |#$T0@@0| |#$R@@0|) $h@@5))
 :qid |unknown.0:0|
 :skolemid |932|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc1 |#$T0@@0| |#$R@@0|) $h@@5))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |868|
 :pattern ( ($IsBox bx@@2 Tclass._System.object?))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |871|
 :pattern ( ($IsBox bx@@3 Tclass._System.object))
)))
(assert (forall ((A.StoreAndRetrieve$Thing@@6 T@U) ($o@@2 T@U) ) (! (= ($Is refType $o@@2 (Tclass.A.StoreAndRetrieve? A.StoreAndRetrieve$Thing@@6))  (or (= $o@@2 null) (= (dtype $o@@2) (Tclass.A.StoreAndRetrieve? A.StoreAndRetrieve$Thing@@6))))
 :qid |unknown.0:0|
 :skolemid |1004|
 :pattern ( ($Is refType $o@@2 (Tclass.A.StoreAndRetrieve? A.StoreAndRetrieve$Thing@@6)))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._System.object)  (and ($Is refType |c#0@@2| Tclass._System.object?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |872|
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object?))
)))
(assert (forall ((A.StoreAndRetrieve$Thing@@7 T@U) ($h@@6 T@U) ($o@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) (Tclass.A.StoreAndRetrieve? A.StoreAndRetrieve$Thing@@7)))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@3) A.StoreAndRetrieve.Repr)) (TSet Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |1050|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@3) A.StoreAndRetrieve.Repr)) (Tclass.A.StoreAndRetrieve? A.StoreAndRetrieve$Thing@@7))
)))
(assert (forall ((f@@1 T@U) (t0@@3 T@U) (t1@@2 T@U) (h@@0 T@U) ) (!  (=> (and ($IsGoodHeap h@@0) ($IsAlloc HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@3 t1@@2) h@@0)) (forall ((bx0@@0 T@U) ) (!  (=> (and ($IsAllocBox bx0@@0 t0@@3 h@@0) (Requires1 t0@@3 t1@@2 h@@0 f@@1 bx0@@0)) ($IsAllocBox (Apply1 t0@@3 t1@@2 h@@0 f@@1 bx0@@0) t1@@2 h@@0))
 :qid |unknown.0:0|
 :skolemid |917|
 :pattern ( (Apply1 t0@@3 t1@@2 h@@0 f@@1 bx0@@0))
)))
 :qid |unknown.0:0|
 :skolemid |918|
 :pattern ( ($IsAlloc HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@3 t1@@2) h@@0))
)))
(assert (forall ((A.StoreAndRetrieve$Thing@@8 T@U) ($h@@7 T@U) ($o@@4 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) (Tclass.A.StoreAndRetrieve? A.StoreAndRetrieve$Thing@@8)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@4) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@4) A.StoreAndRetrieve.Repr)) (TSet Tclass._System.object?) $h@@7))
 :qid |unknown.0:0|
 :skolemid |1051|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@4) A.StoreAndRetrieve.Repr)) (Tclass.A.StoreAndRetrieve? A.StoreAndRetrieve$Thing@@8))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |672|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((f@@2 T@U) (t0@@4 T@U) (t1@@3 T@U) ) (! (= ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@4 t1@@3)) (forall ((h@@1 T@U) (bx0@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@1) ($IsBox bx0@@1 t0@@4)) (Requires1 t0@@4 t1@@3 h@@1 f@@2 bx0@@1)) ($IsBox (Apply1 t0@@4 t1@@3 h@@1 f@@2 bx0@@1) t1@@3))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |909|
 :pattern ( (Apply1 t0@@4 t1@@3 h@@1 f@@2 bx0@@1))
)))
 :qid |unknown.0:0|
 :skolemid |910|
 :pattern ( ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@4 t1@@3)))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |629|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 TBool) (and (= ($Box boolType ($Unbox boolType bx@@4)) bx@@4) ($Is boolType ($Unbox boolType bx@@4) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |551|
 :pattern ( ($IsBox bx@@4 TBool))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@1 T@T) ) (! (= ($IsBox ($Box T@@1 v@@1) t@@0) ($Is T@@1 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |560|
 :pattern ( ($IsBox ($Box T@@1 v@@1) t@@0))
)))
(assert (forall ((v@@2 T@U) (t0@@5 T@U) (h@@2 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@5) h@@2) (forall ((bx@@5 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@5) ($IsAllocBox bx@@5 t0@@5 h@@2))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |589|
 :pattern ( (|Set#IsMember| v@@2 bx@@5))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |590|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@5) h@@2))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$R@@1| T@U) ) (! (= (Tclass._System.___hFunc1_0 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)) |#$T0@@1|)
 :qid |unknown.0:0|
 :skolemid |889|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$R@@2| T@U) ) (! (= (Tclass._System.___hFunc1_1 (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) |#$R@@2|)
 :qid |unknown.0:0|
 :skolemid |890|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|))
)))
(assert (forall ((|#$T0@@3| T@U) (|#$R@@3| T@U) ) (! (= (Tclass._System.___hPartialFunc1_0 (Tclass._System.___hPartialFunc1 |#$T0@@3| |#$R@@3|)) |#$T0@@3|)
 :qid |unknown.0:0|
 :skolemid |920|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@3| |#$R@@3|))
)))
(assert (forall ((|#$T0@@4| T@U) (|#$R@@4| T@U) ) (! (= (Tclass._System.___hPartialFunc1_1 (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@4|)) |#$R@@4|)
 :qid |unknown.0:0|
 :skolemid |921|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@4|))
)))
(assert (forall ((|#$T0@@5| T@U) (|#$R@@5| T@U) ) (! (= (Tclass._System.___hTotalFunc1_0 (Tclass._System.___hTotalFunc1 |#$T0@@5| |#$R@@5|)) |#$T0@@5|)
 :qid |unknown.0:0|
 :skolemid |927|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@5| |#$R@@5|))
)))
(assert (forall ((|#$T0@@6| T@U) (|#$R@@6| T@U) ) (! (= (Tclass._System.___hTotalFunc1_1 (Tclass._System.___hTotalFunc1 |#$T0@@6| |#$R@@6|)) |#$R@@6|)
 :qid |unknown.0:0|
 :skolemid |928|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@6| |#$R@@6|))
)))
(assert (forall (($o@@5 T@U) ) (! ($Is refType $o@@5 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |869|
 :pattern ( ($Is refType $o@@5 Tclass._System.object?))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSet (TSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |523|
 :pattern ( (TSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSet t@@2)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |524|
 :pattern ( (TSet t@@2))
)))
(assert (forall ((A.StoreAndRetrieve$Thing@@9 T@U) ) (! (= (Tclass.A.StoreAndRetrieve?_0 (Tclass.A.StoreAndRetrieve? A.StoreAndRetrieve$Thing@@9)) A.StoreAndRetrieve$Thing@@9)
 :qid |unknown.0:0|
 :skolemid |1002|
 :pattern ( (Tclass.A.StoreAndRetrieve? A.StoreAndRetrieve$Thing@@9))
)))
(assert (forall ((A.StoreAndRetrieve$Thing@@10 T@U) ) (! (= (Tclass.A.StoreAndRetrieve_0 (Tclass.A.StoreAndRetrieve A.StoreAndRetrieve$Thing@@10)) A.StoreAndRetrieve$Thing@@10)
 :qid |unknown.0:0|
 :skolemid |1008|
 :pattern ( (Tclass.A.StoreAndRetrieve A.StoreAndRetrieve$Thing@@10))
)))
(assert (forall ((x@@3 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@3)) x@@3)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |547|
 :pattern ( ($Box T@@2 x@@3))
)))
(assert (forall ((|#$T0@@7| T@U) (|#$R@@7| T@U) (|f#0@@1| T@U) ) (! (= ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc1 |#$T0@@7| |#$R@@7|))  (and ($Is HandleTypeType |f#0@@1| (Tclass._System.___hPartialFunc1 |#$T0@@7| |#$R@@7|)) (forall ((|x0#0| T@U) ) (!  (=> ($IsBox |x0#0| |#$T0@@7|) (Requires1 |#$T0@@7| |#$R@@7| $OneHeap |f#0@@1| |x0#0|))
 :qid |unknown.0:0|
 :skolemid |930|
))))
 :qid |unknown.0:0|
 :skolemid |931|
 :pattern ( ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc1 |#$T0@@7| |#$R@@7|)))
)))
(assert (forall ((|#$T0@@8| T@U) (|#$R@@8| T@U) (|f#0@@2| T@U) ) (! (= ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|))  (and ($Is HandleTypeType |f#0@@2| (Tclass._System.___hFunc1 |#$T0@@8| |#$R@@8|)) (forall ((|x0#0@@0| T@U) ) (!  (=> ($IsBox |x0#0@@0| |#$T0@@8|) (|Set#Equal| (Reads1 |#$T0@@8| |#$R@@8| $OneHeap |f#0@@2| |x0#0@@0|) |Set#Empty|))
 :qid |unknown.0:0|
 :skolemid |923|
))))
 :qid |unknown.0:0|
 :skolemid |924|
 :pattern ( ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|)))
)))
(assert (forall ((f@@3 T@U) (t0@@6 T@U) (t1@@4 T@U) (h@@3 T@U) ) (!  (=> ($IsGoodHeap h@@3) (= ($IsAlloc HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@6 t1@@4) h@@3) (forall ((bx0@@2 T@U) ) (!  (=> (and (and ($IsBox bx0@@2 t0@@6) ($IsAllocBox bx0@@2 t0@@6 h@@3)) (Requires1 t0@@6 t1@@4 h@@3 f@@3 bx0@@2)) (forall ((r T@U) ) (!  (=> (and (or (not (= r null)) (not true)) (|Set#IsMember| (Reads1 t0@@6 t1@@4 h@@3 f@@3 bx0@@2) ($Box refType r))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) alloc))))
 :qid |unknown.0:0|
 :skolemid |914|
 :pattern ( (|Set#IsMember| (Reads1 t0@@6 t1@@4 h@@3 f@@3 bx0@@2) ($Box refType r)))
)))
 :qid |unknown.0:0|
 :skolemid |915|
 :pattern ( (Apply1 t0@@6 t1@@4 h@@3 f@@3 bx0@@2))
 :pattern ( (Reads1 t0@@6 t1@@4 h@@3 f@@3 bx0@@2))
))))
 :qid |unknown.0:0|
 :skolemid |916|
 :pattern ( ($IsAlloc HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@6 t1@@4) h@@3))
)))
(assert (forall ((|#$T0@@9| T@U) (|#$R@@9| T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@6)) bx@@6) ($Is HandleTypeType ($Unbox HandleTypeType bx@@6) (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|))))
 :qid |unknown.0:0|
 :skolemid |891|
 :pattern ( ($IsBox bx@@6 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|)))
)))
(assert (forall ((|#$T0@@10| T@U) (|#$R@@10| T@U) (bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@7)) bx@@7) ($Is HandleTypeType ($Unbox HandleTypeType bx@@7) (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|))))
 :qid |unknown.0:0|
 :skolemid |922|
 :pattern ( ($IsBox bx@@7 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|)))
)))
(assert (forall ((|#$T0@@11| T@U) (|#$R@@11| T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@8)) bx@@8) ($Is HandleTypeType ($Unbox HandleTypeType bx@@8) (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|))))
 :qid |unknown.0:0|
 :skolemid |929|
 :pattern ( ($IsBox bx@@8 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|)))
)))
(assert (forall ((|#$T0@@12| T@U) (|#$R@@12| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |888|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|))
)))
(assert (forall ((|#$T0@@13| T@U) (|#$R@@13| T@U) ) (!  (and (= (Tag (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|)) Tagclass._System.___hPartialFunc1) (= (TagFamily (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|)) |tytagFamily$_#PartialFunc1|))
 :qid |unknown.0:0|
 :skolemid |919|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|))
)))
(assert (forall ((|#$T0@@14| T@U) (|#$R@@14| T@U) ) (!  (and (= (Tag (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|)) Tagclass._System.___hTotalFunc1) (= (TagFamily (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|)) |tytagFamily$_#TotalFunc1|))
 :qid |unknown.0:0|
 :skolemid |926|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|))
)))
(assert (forall ((A.StoreAndRetrieve$Thing@@11 T@U) ($h@@8 T@U) ($o@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) (Tclass.A.StoreAndRetrieve? A.StoreAndRetrieve$Thing@@11)))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@6) A.StoreAndRetrieve.Contents)) (TSet A.StoreAndRetrieve$Thing@@11)))
 :qid |unknown.0:0|
 :skolemid |1038|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@6) A.StoreAndRetrieve.Contents)) (Tclass.A.StoreAndRetrieve? A.StoreAndRetrieve$Thing@@11))
)))
(assert (forall ((t0@@7 T@U) (t1@@5 T@U) (heap@@0 T@U) (f@@4 T@U) (bx0@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@0) (and ($IsBox bx0@@3 t0@@7) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc1 t0@@7 t1@@5)))) (|Set#Equal| (Reads1 t0@@7 t1@@5 $OneHeap f@@4 bx0@@3) |Set#Empty|)) (= (Requires1 t0@@7 t1@@5 $OneHeap f@@4 bx0@@3) (Requires1 t0@@7 t1@@5 heap@@0 f@@4 bx0@@3)))
 :qid |unknown.0:0|
 :skolemid |908|
 :pattern ( (Requires1 t0@@7 t1@@5 $OneHeap f@@4 bx0@@3) ($IsGoodHeap heap@@0))
 :pattern ( (Requires1 t0@@7 t1@@5 heap@@0 f@@4 bx0@@3))
)))
(assert (forall ((bx@@9 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@9 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@9)) bx@@9) ($Is SetType ($Unbox SetType bx@@9) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |554|
 :pattern ( ($IsBox bx@@9 (TSet t@@3)))
)))
(assert (forall ((A.StoreAndRetrieve$Thing@@12 T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass.A.StoreAndRetrieve? A.StoreAndRetrieve$Thing@@12)) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) (Tclass.A.StoreAndRetrieve? A.StoreAndRetrieve$Thing@@12))))
 :qid |unknown.0:0|
 :skolemid |1003|
 :pattern ( ($IsBox bx@@10 (Tclass.A.StoreAndRetrieve? A.StoreAndRetrieve$Thing@@12)))
)))
(assert (forall ((A.StoreAndRetrieve$Thing@@13 T@U) (bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 (Tclass.A.StoreAndRetrieve A.StoreAndRetrieve$Thing@@13)) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) (Tclass.A.StoreAndRetrieve A.StoreAndRetrieve$Thing@@13))))
 :qid |unknown.0:0|
 :skolemid |1009|
 :pattern ( ($IsBox bx@@11 (Tclass.A.StoreAndRetrieve A.StoreAndRetrieve$Thing@@13)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|Set#Equal| a@@0 b@@0) (forall ((o@@0 T@U) ) (! (= (|Set#IsMember| a@@0 o@@0) (|Set#IsMember| b@@0 o@@0))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |670|
 :pattern ( (|Set#IsMember| a@@0 o@@0))
 :pattern ( (|Set#IsMember| b@@0 o@@0))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |671|
 :pattern ( (|Set#Equal| a@@0 b@@0))
)))
(assert  (and (forall ((t0@@8 T@T) (t1@@6 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@8 t1@@6 t2 (MapType1Store t0@@8 t1@@6 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@1 T@T) (u1@@1 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@1 u1@@1 u2 (MapType1Store u0@@1 u1@@1 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@1 u1@@1 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@2 T@T) (u1@@2 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@2 u1@@2 u2@@0 (MapType1Store u0@@2 u1@@2 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@2 u1@@2 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@7 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3|) $o@@7 $f))  (=> (and (or (not (= $o@@7 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@7) |l#2|)))) (|Set#IsMember| |l#3| ($Box refType $o@@7))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3683|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3|) $o@@7 $f))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((A.StoreAndRetrieve$Thing@@14 T@U) ($Heap@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|A.StoreAndRetrieve.Valid#canCall| A.StoreAndRetrieve$Thing@@14 $Heap@@0 this@@0) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 (Tclass.A.StoreAndRetrieve A.StoreAndRetrieve$Thing@@14)) ($IsAlloc refType this@@0 (Tclass.A.StoreAndRetrieve A.StoreAndRetrieve$Thing@@14) $Heap@@0)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) A.StoreAndRetrieve.Repr)) ($Box refType this@@0)) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) A.StoreAndRetrieve.Repr)) ($Box refType null))) (|A.StoreAndRetrieve.Valid_k#canCall| A.StoreAndRetrieve$Thing@@14 $Heap@@0 this@@0))) (= (A.StoreAndRetrieve.Valid A.StoreAndRetrieve$Thing@@14 $Heap@@0 this@@0)  (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) A.StoreAndRetrieve.Repr)) ($Box refType this@@0)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) A.StoreAndRetrieve.Repr)) ($Box refType null)))) (A.StoreAndRetrieve.Valid_k A.StoreAndRetrieve$Thing@@14 $Heap@@0 this@@0)))))
 :qid |unknown.0:0|
 :skolemid |1044|
 :pattern ( (A.StoreAndRetrieve.Valid A.StoreAndRetrieve$Thing@@14 $Heap@@0 this@@0) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((h@@4 T@U) (v@@3 T@U) ) (! ($IsAlloc boolType v@@3 TBool h@@4)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |585|
 :pattern ( ($IsAlloc boolType v@@3 TBool h@@4))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is boolType v@@4 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |564|
 :pattern ( ($Is boolType v@@4 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |k#0@0| () T@U)
(declare-fun A.StoreAndRetrieve$Thing@@15 () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun this@@1 () T@U)
(declare-fun |matchCriterion#0| () T@U)
(declare-fun |k#1@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |defass#thing#0| () Bool)
(declare-fun |thing#0| () T@U)
(declare-fun |defass#k#0| () Bool)
(declare-fun |k#0| () T@U)
(set-info :boogie-vc-id Impl$$A.StoreAndRetrieve.Retrieve)
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
 (=> (= (ControlFlow 0 0) 17) (let ((anon4_correct  (=> (=> true (and ($IsBox |k#0@0| A.StoreAndRetrieve$Thing@@15) ($IsAllocBox |k#0@0| A.StoreAndRetrieve$Thing@@15 $Heap@@1))) (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) A.StoreAndRetrieve.Contents)) |k#0@0|) (U_2_bool ($Unbox boolType (Apply1 A.StoreAndRetrieve$Thing@@15 TBool $Heap@@1 |matchCriterion#0| |k#0@0|)))) (and (=> (= (ControlFlow 0 2) (- 0 10)) true) (and (=> (= (ControlFlow 0 2) (- 0 9)) true) (and (=> (= (ControlFlow 0 2) (- 0 8)) (=> (|A.StoreAndRetrieve.Valid#canCall| A.StoreAndRetrieve$Thing@@15 $Heap@@1 this@@1) (or (A.StoreAndRetrieve.Valid A.StoreAndRetrieve$Thing@@15 $Heap@@1 this@@1) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) A.StoreAndRetrieve.Repr)) ($Box refType this@@1))))) (=> (=> (|A.StoreAndRetrieve.Valid#canCall| A.StoreAndRetrieve$Thing@@15 $Heap@@1 this@@1) (or (A.StoreAndRetrieve.Valid A.StoreAndRetrieve$Thing@@15 $Heap@@1 this@@1) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) A.StoreAndRetrieve.Repr)) ($Box refType this@@1)))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (=> (|A.StoreAndRetrieve.Valid#canCall| A.StoreAndRetrieve$Thing@@15 $Heap@@1 this@@1) (or (A.StoreAndRetrieve.Valid A.StoreAndRetrieve$Thing@@15 $Heap@@1 this@@1) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) A.StoreAndRetrieve.Repr)) ($Box refType null)))))) (=> (=> (|A.StoreAndRetrieve.Valid#canCall| A.StoreAndRetrieve$Thing@@15 $Heap@@1 this@@1) (or (A.StoreAndRetrieve.Valid A.StoreAndRetrieve$Thing@@15 $Heap@@1 this@@1) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) A.StoreAndRetrieve.Repr)) ($Box refType null))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (=> (|A.StoreAndRetrieve.Valid#canCall| A.StoreAndRetrieve$Thing@@15 $Heap@@1 this@@1) (or (A.StoreAndRetrieve.Valid A.StoreAndRetrieve$Thing@@15 $Heap@@1 this@@1) (A.StoreAndRetrieve.Valid_k A.StoreAndRetrieve$Thing@@15 $Heap@@1 this@@1)))) (=> (=> (|A.StoreAndRetrieve.Valid#canCall| A.StoreAndRetrieve$Thing@@15 $Heap@@1 this@@1) (or (A.StoreAndRetrieve.Valid A.StoreAndRetrieve$Thing@@15 $Heap@@1 this@@1) (A.StoreAndRetrieve.Valid_k A.StoreAndRetrieve$Thing@@15 $Heap@@1 this@@1))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (and (forall (($o@@8 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) A.StoreAndRetrieve.Repr)) ($Box refType $o@@8)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) A.StoreAndRetrieve.Repr)) ($Box refType $o@@8)))) (or (not (= $o@@8 null)) (not true)))
 :qid |StoreAndRetrievedfy.20:12|
 :skolemid |1035|
 :pattern (  (or (not (= $o@@8 null)) (not true)))
)) (forall (($o@@9 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) A.StoreAndRetrieve.Repr)) ($Box refType $o@@9)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) A.StoreAndRetrieve.Repr)) ($Box refType $o@@9)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@9) alloc)))))
 :qid |StoreAndRetrievedfy.20:12|
 :skolemid |1036|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@9) alloc)))
)))) (=> (and (forall (($o@@10 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) A.StoreAndRetrieve.Repr)) ($Box refType $o@@10)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) A.StoreAndRetrieve.Repr)) ($Box refType $o@@10)))) (or (not (= $o@@10 null)) (not true)))
 :qid |StoreAndRetrievedfy.20:12|
 :skolemid |1035|
 :pattern (  (or (not (= $o@@10 null)) (not true)))
)) (forall (($o@@11 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) A.StoreAndRetrieve.Repr)) ($Box refType $o@@11)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) A.StoreAndRetrieve.Repr)) ($Box refType $o@@11)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@11) alloc)))))
 :qid |StoreAndRetrievedfy.20:12|
 :skolemid |1036|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@11) alloc)))
))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) A.StoreAndRetrieve.Contents)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) A.StoreAndRetrieve.Contents)))) (=> (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) A.StoreAndRetrieve.Contents)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) A.StoreAndRetrieve.Contents))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) A.StoreAndRetrieve.Contents)) |k#0@0|)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) A.StoreAndRetrieve.Contents)) |k#0@0|) (=> (= (ControlFlow 0 2) (- 0 1)) (U_2_bool ($Unbox boolType (Apply1 A.StoreAndRetrieve$Thing@@15 TBool $Heap@@1 |matchCriterion#0| |k#0@0|))))))))))))))))))))))
(let ((anon3_correct  (=> (= (ControlFlow 0 12) 2) anon4_correct)))
(let ((anon6_Else_correct  (=> (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) A.StoreAndRetrieve.Contents)) |k#1@0|)) (= (ControlFlow 0 14) 12)) anon3_correct)))
(let ((anon6_Then_correct  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) A.StoreAndRetrieve.Contents)) |k#1@0|) (= (ControlFlow 0 13) 12)) anon3_correct)))
(let ((anon5_Then_correct  (=> (and ($IsBox |k#1@0| A.StoreAndRetrieve$Thing@@15) ($IsAllocBox |k#1@0| A.StoreAndRetrieve$Thing@@15 $Heap@@1)) (and (=> (= (ControlFlow 0 15) 13) anon6_Then_correct) (=> (= (ControlFlow 0 15) 14) anon6_Else_correct)))))
(let ((anon5_Else_correct  (=> (and (not (and ($IsBox |k#1@0| A.StoreAndRetrieve$Thing@@15) ($IsAllocBox |k#1@0| A.StoreAndRetrieve$Thing@@15 $Heap@@1))) (= (ControlFlow 0 11) 2)) anon4_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#1| null $Heap@@1 alloc ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) A.StoreAndRetrieve.Repr)))) (and (=> (= (ControlFlow 0 16) 15) anon5_Then_correct) (=> (= (ControlFlow 0 16) 11) anon5_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 (Tclass.A.StoreAndRetrieve A.StoreAndRetrieve$Thing@@15)) ($IsAlloc refType this@@1 (Tclass.A.StoreAndRetrieve A.StoreAndRetrieve$Thing@@15) $Heap@@1)))) (and (and ($Is HandleTypeType |matchCriterion#0| (Tclass._System.___hTotalFunc1 A.StoreAndRetrieve$Thing@@15 TBool)) ($IsAlloc HandleTypeType |matchCriterion#0| (Tclass._System.___hTotalFunc1 A.StoreAndRetrieve$Thing@@15 TBool) $Heap@@1)) (=> |defass#thing#0| (and ($IsBox |thing#0| A.StoreAndRetrieve$Thing@@15) ($IsAllocBox |thing#0| A.StoreAndRetrieve$Thing@@15 $Heap@@1))))) (and (and (and (=> |defass#k#0| (and ($IsBox |k#0| A.StoreAndRetrieve$Thing@@15) ($IsAllocBox |k#0| A.StoreAndRetrieve$Thing@@15 $Heap@@1))) true) (= 2 $FunctionContextHeight)) (and (and (|A.StoreAndRetrieve.Valid#canCall| A.StoreAndRetrieve$Thing@@15 $Heap@@1 this@@1) (and (A.StoreAndRetrieve.Valid A.StoreAndRetrieve$Thing@@15 $Heap@@1 this@@1) (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) A.StoreAndRetrieve.Repr)) ($Box refType this@@1)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) A.StoreAndRetrieve.Repr)) ($Box refType null)))) (A.StoreAndRetrieve.Valid_k A.StoreAndRetrieve$Thing@@15 $Heap@@1 this@@1)))) (and (exists ((|t#1| T@U) ) (!  (and ($IsBox |t#1| A.StoreAndRetrieve$Thing@@15) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) A.StoreAndRetrieve.Contents)) |t#1|) (U_2_bool ($Unbox boolType (Apply1 A.StoreAndRetrieve$Thing@@15 TBool $Heap@@1 |matchCriterion#0| |t#1|)))))
 :qid |StoreAndRetrievedfy.21:23|
 :skolemid |1034|
 :pattern ( ($Unbox boolType (Apply1 A.StoreAndRetrieve$Thing@@15 TBool $Heap@@1 |matchCriterion#0| |t#1|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) A.StoreAndRetrieve.Contents)) |t#1|))
)) (= (ControlFlow 0 17) 16))))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
