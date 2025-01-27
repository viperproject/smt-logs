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
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun Tagclass._System.___hPartialFunc1 () T@U)
(declare-fun Tagclass._System.___hTotalFunc1 () T@U)
(declare-fun Tagclass.P0.TrX? () T@U)
(declare-fun Tagclass.P0.TrX () T@U)
(declare-fun Tagclass.P0.Tr? () T@U)
(declare-fun Tagclass.P0.Tr () T@U)
(declare-fun Tagclass.P0.Cl? () T@U)
(declare-fun Tagclass.P0.Cl () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
(declare-fun |tytagFamily$_#PartialFunc1| () T@U)
(declare-fun |tytagFamily$_#TotalFunc1| () T@U)
(declare-fun tytagFamily$TrX () T@U)
(declare-fun tytagFamily$Tr () T@U)
(declare-fun tytagFamily$Cl () T@U)
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
(declare-fun P0.TrX.F (T@U T@U T@U) Int)
(declare-fun |P0.TrX.F#canCall| (T@U T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.P0.TrX (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Tag (T@U) T@U)
(declare-fun implements$P0.Tr (T@U T@U) Bool)
(declare-fun Tclass.P0.Cl? (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass.P0.TrX? (T@U) T@U)
(declare-fun Tclass.P0.Tr (T@U) T@U)
(declare-fun Tclass.P0.Tr? (T@U) T@U)
(declare-fun Tclass.P0.Cl (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun Reads1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1 (T@U T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1 (T@U T@U) T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun |P0.TrX.F#Handle| (T@U T@U) T@U)
(declare-fun |P0.TrX.F#requires| (T@U T@U T@U) Bool)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_1 (T@U) T@U)
(declare-fun Tclass.P0.TrX?_0 (T@U) T@U)
(declare-fun Tclass.P0.TrX_0 (T@U) T@U)
(declare-fun Tclass.P0.Tr?_0 (T@U) T@U)
(declare-fun Tclass.P0.Tr_0 (T@U) T@U)
(declare-fun Tclass.P0.Cl?_0 (T@U) T@U)
(declare-fun Tclass.P0.Cl_0 (T@U) T@U)
(declare-fun implements$P0.TrX (T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct TInt TagInt alloc Tagclass._System.___hFunc1 Tagclass._System.___hPartialFunc1 Tagclass._System.___hTotalFunc1 Tagclass.P0.TrX? Tagclass.P0.TrX Tagclass.P0.Tr? Tagclass.P0.Tr Tagclass.P0.Cl? Tagclass.P0.Cl |tytagFamily$_#Func1| |tytagFamily$_#PartialFunc1| |tytagFamily$_#TotalFunc1| tytagFamily$TrX tytagFamily$Tr tytagFamily$Cl)
)
(assert (= (Ctor refType) 3))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((P0.TrX$X T@U) (this T@U) (|x#0| T@U) ) (!  (=> (or (|P0.TrX.F#canCall| P0.TrX$X this |x#0|) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this null)) (not true)) ($Is refType this (Tclass.P0.TrX P0.TrX$X))) ($IsBox |x#0| P0.TrX$X)))) (= (P0.TrX.F P0.TrX$X this |x#0|) (LitInt 15)))
 :qid |unknown.0:0|
 :skolemid |2229|
 :pattern ( (P0.TrX.F P0.TrX$X this |x#0|))
))))
(assert (= (Tag TInt) TagInt))
(assert (forall ((P0.Cl$Y T@U) ) (! (implements$P0.Tr (Tclass.P0.Cl? P0.Cl$Y) P0.Cl$Y)
 :qid |unknown.0:0|
 :skolemid |2248|
)))
(assert (forall ((P0.TrX$X@@0 T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass.P0.TrX P0.TrX$X@@0) $h) ($IsAlloc refType |c#0| (Tclass.P0.TrX? P0.TrX$X@@0) $h))
 :qid |unknown.0:0|
 :skolemid |2232|
 :pattern ( ($IsAlloc refType |c#0| (Tclass.P0.TrX P0.TrX$X@@0) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass.P0.TrX? P0.TrX$X@@0) $h))
)))
(assert (forall ((P0.Tr$X T@U) (|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| (Tclass.P0.Tr P0.Tr$X) $h@@0) ($IsAlloc refType |c#0@@0| (Tclass.P0.Tr? P0.Tr$X) $h@@0))
 :qid |unknown.0:0|
 :skolemid |2242|
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass.P0.Tr P0.Tr$X) $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass.P0.Tr? P0.Tr$X) $h@@0))
)))
(assert (forall ((P0.Cl$Y@@0 T@U) (|c#0@@1| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@1| (Tclass.P0.Cl P0.Cl$Y@@0) $h@@1) ($IsAlloc refType |c#0@@1| (Tclass.P0.Cl? P0.Cl$Y@@0) $h@@1))
 :qid |unknown.0:0|
 :skolemid |2257|
 :pattern ( ($IsAlloc refType |c#0@@1| (Tclass.P0.Cl P0.Cl$Y@@0) $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@1| (Tclass.P0.Cl? P0.Cl$Y@@0) $h@@1))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |1812|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (Ctor HandleTypeType) 4))
(assert (forall ((f T@U) (t0 T@U) (t1 T@U) (u0 T@U) (u1 T@U) ) (!  (=> (and (and ($Is HandleTypeType f (Tclass._System.___hFunc1 t0 t1)) (forall ((bx T@U) ) (!  (=> ($IsBox bx u0) ($IsBox bx t0))
 :qid |unknown.0:0|
 :skolemid |2080|
 :pattern ( ($IsBox bx u0))
 :pattern ( ($IsBox bx t0))
))) (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 t1) ($IsBox bx@@0 u1))
 :qid |unknown.0:0|
 :skolemid |2081|
 :pattern ( ($IsBox bx@@0 t1))
 :pattern ( ($IsBox bx@@0 u1))
))) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0 u1)))
 :qid |unknown.0:0|
 :skolemid |2082|
 :pattern ( ($Is HandleTypeType f (Tclass._System.___hFunc1 t0 t1)) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0 u1)))
)))
(assert  (and (and (and (and (and (and (forall ((t0@@0 T@T) (t1@@0 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0@@0 t1@@0 (MapType0Store t0@@0 t1@@0 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0@@0 u1@@0 (MapType0Store u0@@0 u1@@0 m@@0 x0@@0 val@@0) y0) (MapType0Select u0@@0 u1@@0 m@@0 y0)))
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
(assert (forall ((P0.TrX$X@@1 T@U) ($o T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o (Tclass.P0.TrX? P0.TrX$X@@1) $h@@2)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2223|
 :pattern ( ($IsAlloc refType $o (Tclass.P0.TrX? P0.TrX$X@@1) $h@@2))
)))
(assert (forall ((P0.Tr$X@@0 T@U) ($o@@0 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@0 (Tclass.P0.Tr? P0.Tr$X@@0) $h@@3)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2237|
 :pattern ( ($IsAlloc refType $o@@0 (Tclass.P0.Tr? P0.Tr$X@@0) $h@@3))
)))
(assert (forall ((P0.Cl$Y@@1 T@U) ($o@@1 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@1 (Tclass.P0.Cl? P0.Cl$Y@@1) $h@@4)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2247|
 :pattern ( ($IsAlloc refType $o@@1 (Tclass.P0.Cl? P0.Cl$Y@@1) $h@@4))
)))
(assert (forall ((P0.Tr$X@@1 T@U) ($o@@2 T@U) ) (!  (=> ($Is refType $o@@2 (Tclass.P0.Tr? P0.Tr$X@@1)) ($Is refType $o@@2 (Tclass.P0.TrX? P0.Tr$X@@1)))
 :qid |unknown.0:0|
 :skolemid |2260|
 :pattern ( ($Is refType $o@@2 (Tclass.P0.Tr? P0.Tr$X@@1)))
)))
(assert (forall ((P0.Tr$X@@2 T@U) (bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 (Tclass.P0.Tr? P0.Tr$X@@2)) ($IsBox bx@@1 (Tclass.P0.TrX? P0.Tr$X@@2)))
 :qid |unknown.0:0|
 :skolemid |2258|
 :pattern ( ($IsBox bx@@1 (Tclass.P0.Tr? P0.Tr$X@@2)))
)))
(assert (forall ((P0.Cl$Y@@2 T@U) ($o@@3 T@U) ) (!  (=> ($Is refType $o@@3 (Tclass.P0.Cl? P0.Cl$Y@@2)) ($Is refType $o@@3 (Tclass.P0.Tr? P0.Cl$Y@@2)))
 :qid |unknown.0:0|
 :skolemid |2264|
 :pattern ( ($Is refType $o@@3 (Tclass.P0.Cl? P0.Cl$Y@@2)))
)))
(assert (forall ((P0.Cl$Y@@3 T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass.P0.Cl? P0.Cl$Y@@3)) ($IsBox bx@@2 (Tclass.P0.Tr? P0.Cl$Y@@3)))
 :qid |unknown.0:0|
 :skolemid |2262|
 :pattern ( ($IsBox bx@@2 (Tclass.P0.Cl? P0.Cl$Y@@3)))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |1704|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1702|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((t0@@1 T@U) (t1@@1 T@U) (heap T@U) (f@@0 T@U) (bx0 T@U) ) (!  (=> (and ($IsGoodHeap heap) (and ($IsBox bx0 t0@@1) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@1 t1@@1)))) (= (|Set#Equal| (Reads1 t0@@1 t1@@1 $OneHeap f@@0 bx0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@1 t1@@1 heap f@@0 bx0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |2076|
 :pattern ( (Reads1 t0@@1 t1@@1 $OneHeap f@@0 bx0) ($IsGoodHeap heap))
 :pattern ( (Reads1 t0@@1 t1@@1 heap f@@0 bx0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1713|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((P0.TrX$X@@2 T@U) (|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| (Tclass.P0.TrX P0.TrX$X@@2))  (and ($Is refType |c#0@@2| (Tclass.P0.TrX? P0.TrX$X@@2)) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2231|
 :pattern ( ($Is refType |c#0@@2| (Tclass.P0.TrX P0.TrX$X@@2)))
 :pattern ( ($Is refType |c#0@@2| (Tclass.P0.TrX? P0.TrX$X@@2)))
)))
(assert (forall ((P0.Tr$X@@3 T@U) (|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| (Tclass.P0.Tr P0.Tr$X@@3))  (and ($Is refType |c#0@@3| (Tclass.P0.Tr? P0.Tr$X@@3)) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2241|
 :pattern ( ($Is refType |c#0@@3| (Tclass.P0.Tr P0.Tr$X@@3)))
 :pattern ( ($Is refType |c#0@@3| (Tclass.P0.Tr? P0.Tr$X@@3)))
)))
(assert (forall ((P0.Cl$Y@@4 T@U) (|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| (Tclass.P0.Cl P0.Cl$Y@@4))  (and ($Is refType |c#0@@4| (Tclass.P0.Cl? P0.Cl$Y@@4)) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2256|
 :pattern ( ($Is refType |c#0@@4| (Tclass.P0.Cl P0.Cl$Y@@4)))
 :pattern ( ($Is refType |c#0@@4| (Tclass.P0.Cl? P0.Cl$Y@@4)))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1726|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((P0.TrX$X@@3 T@U) ) (!  (and (= (Tag (Tclass.P0.TrX? P0.TrX$X@@3)) Tagclass.P0.TrX?) (= (TagFamily (Tclass.P0.TrX? P0.TrX$X@@3)) tytagFamily$TrX))
 :qid |unknown.0:0|
 :skolemid |2219|
 :pattern ( (Tclass.P0.TrX? P0.TrX$X@@3))
)))
(assert (forall ((P0.TrX$X@@4 T@U) ) (!  (and (= (Tag (Tclass.P0.TrX P0.TrX$X@@4)) Tagclass.P0.TrX) (= (TagFamily (Tclass.P0.TrX P0.TrX$X@@4)) tytagFamily$TrX))
 :qid |unknown.0:0|
 :skolemid |2224|
 :pattern ( (Tclass.P0.TrX P0.TrX$X@@4))
)))
(assert (forall ((P0.Tr$X@@4 T@U) ) (!  (and (= (Tag (Tclass.P0.Tr? P0.Tr$X@@4)) Tagclass.P0.Tr?) (= (TagFamily (Tclass.P0.Tr? P0.Tr$X@@4)) tytagFamily$Tr))
 :qid |unknown.0:0|
 :skolemid |2233|
 :pattern ( (Tclass.P0.Tr? P0.Tr$X@@4))
)))
(assert (forall ((P0.Tr$X@@5 T@U) ) (!  (and (= (Tag (Tclass.P0.Tr P0.Tr$X@@5)) Tagclass.P0.Tr) (= (TagFamily (Tclass.P0.Tr P0.Tr$X@@5)) tytagFamily$Tr))
 :qid |unknown.0:0|
 :skolemid |2238|
 :pattern ( (Tclass.P0.Tr P0.Tr$X@@5))
)))
(assert (forall ((P0.Cl$Y@@5 T@U) ) (!  (and (= (Tag (Tclass.P0.Cl? P0.Cl$Y@@5)) Tagclass.P0.Cl?) (= (TagFamily (Tclass.P0.Cl? P0.Cl$Y@@5)) tytagFamily$Cl))
 :qid |unknown.0:0|
 :skolemid |2243|
 :pattern ( (Tclass.P0.Cl? P0.Cl$Y@@5))
)))
(assert (forall ((P0.Cl$Y@@6 T@U) ) (!  (and (= (Tag (Tclass.P0.Cl P0.Cl$Y@@6)) Tagclass.P0.Cl) (= (TagFamily (Tclass.P0.Cl P0.Cl$Y@@6)) tytagFamily$Cl))
 :qid |unknown.0:0|
 :skolemid |2249|
 :pattern ( (Tclass.P0.Cl P0.Cl$Y@@6))
)))
(assert (forall ((|#$T0| T@U) (|#$R| T@U) (|f#0| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h@@5) ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hFunc1 |#$T0| |#$R|) $h@@5))
 :qid |unknown.0:0|
 :skolemid |2094|
 :pattern ( ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h@@5))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$R@@0| T@U) (|f#0@@0| T@U) ($h@@6 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc1 |#$T0@@0| |#$R@@0|) $h@@6) ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hPartialFunc1 |#$T0@@0| |#$R@@0|) $h@@6))
 :qid |unknown.0:0|
 :skolemid |2101|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc1 |#$T0@@0| |#$R@@0|) $h@@6))
)))
(assert (forall ((P0.Cl$Y@@7 T@U) ($o@@4 T@U) ) (! (= ($Is refType $o@@4 (Tclass.P0.Cl? P0.Cl$Y@@7))  (or (= $o@@4 null) (= (dtype $o@@4) (Tclass.P0.Cl? P0.Cl$Y@@7))))
 :qid |unknown.0:0|
 :skolemid |2246|
 :pattern ( ($Is refType $o@@4 (Tclass.P0.Cl? P0.Cl$Y@@7)))
)))
(assert (forall ((P0.Tr$X@@6 T@U) (bx@@3 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsAllocBox bx@@3 (Tclass.P0.Tr? P0.Tr$X@@6) $h@@7) ($IsGoodHeap $h@@7)) ($IsAllocBox bx@@3 (Tclass.P0.TrX? P0.Tr$X@@6) $h@@7))
 :qid |unknown.0:0|
 :skolemid |2259|
 :pattern ( ($IsAllocBox bx@@3 (Tclass.P0.Tr? P0.Tr$X@@6) $h@@7))
)))
(assert (forall ((P0.Cl$Y@@8 T@U) (bx@@4 T@U) ($h@@8 T@U) ) (!  (=> (and ($IsAllocBox bx@@4 (Tclass.P0.Cl? P0.Cl$Y@@8) $h@@8) ($IsGoodHeap $h@@8)) ($IsAllocBox bx@@4 (Tclass.P0.Tr? P0.Cl$Y@@8) $h@@8))
 :qid |unknown.0:0|
 :skolemid |2263|
 :pattern ( ($IsAllocBox bx@@4 (Tclass.P0.Cl? P0.Cl$Y@@8) $h@@8))
)))
(assert (forall ((P0.Tr$X@@7 T@U) ($o@@5 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@5 (Tclass.P0.Tr? P0.Tr$X@@7) $heap) ($IsAlloc refType $o@@5 (Tclass.P0.TrX? P0.Tr$X@@7) $heap))
 :qid |unknown.0:0|
 :skolemid |2261|
 :pattern ( ($IsAlloc refType $o@@5 (Tclass.P0.Tr? P0.Tr$X@@7) $heap))
)))
(assert (forall ((P0.Cl$Y@@9 T@U) ($o@@6 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@6 (Tclass.P0.Cl? P0.Cl$Y@@9) $heap@@0) ($IsAlloc refType $o@@6 (Tclass.P0.Tr? P0.Cl$Y@@9) $heap@@0))
 :qid |unknown.0:0|
 :skolemid |2265|
 :pattern ( ($IsAlloc refType $o@@6 (Tclass.P0.Cl? P0.Cl$Y@@9) $heap@@0))
)))
(assert (forall ((f@@1 T@U) (t0@@2 T@U) (t1@@2 T@U) (h@@0 T@U) ) (!  (=> (and ($IsGoodHeap h@@0) ($IsAlloc HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@2 t1@@2) h@@0)) (forall ((bx0@@0 T@U) ) (!  (=> (and ($IsAllocBox bx0@@0 t0@@2 h@@0) (Requires1 t0@@2 t1@@2 h@@0 f@@1 bx0@@0)) ($IsAllocBox (Apply1 t0@@2 t1@@2 h@@0 f@@1 bx0@@0) t1@@2 h@@0))
 :qid |unknown.0:0|
 :skolemid |2086|
 :pattern ( (Apply1 t0@@2 t1@@2 h@@0 f@@1 bx0@@0))
)))
 :qid |unknown.0:0|
 :skolemid |2087|
 :pattern ( ($IsAlloc HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@2 t1@@2) h@@0))
)))
(assert (forall ((P0.TrX$X@@5 T@U) ($self T@U) ($heap@@1 T@U) (|$fh$0x#0| T@U) ) (! (= (P0.TrX.F P0.TrX$X@@5 $self |$fh$0x#0|) (U_2_int ($Unbox intType (Apply1 P0.TrX$X@@5 TInt $heap@@1 (|P0.TrX.F#Handle| P0.TrX$X@@5 $self) |$fh$0x#0|))))
 :qid |unknown.0:0|
 :skolemid |2255|
 :pattern ( (P0.TrX.F P0.TrX$X@@5 $self |$fh$0x#0|) ($IsGoodHeap $heap@@1))
)))
(assert (forall ((P0.TrX$X@@6 T@U) ($self@@0 T@U) ($heap@@2 T@U) (|$fh$0x#0@@0| T@U) ) (! (= (Requires1 P0.TrX$X@@6 TInt $heap@@2 (|P0.TrX.F#Handle| P0.TrX$X@@6 $self@@0) |$fh$0x#0@@0|) (|P0.TrX.F#requires| P0.TrX$X@@6 $self@@0 |$fh$0x#0@@0|))
 :qid |unknown.0:0|
 :skolemid |2253|
 :pattern ( (Requires1 P0.TrX$X@@6 TInt $heap@@2 (|P0.TrX.F#Handle| P0.TrX$X@@6 $self@@0) |$fh$0x#0@@0|))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((P0.TrX$X@@7 T@U) (this@@0 T@U) (|x#0@@0| T@U) ) (!  (=> (or (|P0.TrX.F#canCall| P0.TrX$X@@7 (Lit refType this@@0) (Lit BoxType |x#0@@0|)) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 (Tclass.P0.TrX P0.TrX$X@@7))) ($IsBox |x#0@@0| P0.TrX$X@@7)))) (= (P0.TrX.F P0.TrX$X@@7 (Lit refType this@@0) (Lit BoxType |x#0@@0|)) (LitInt 15)))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |2230|
 :pattern ( (P0.TrX.F P0.TrX$X@@7 (Lit refType this@@0) (Lit BoxType |x#0@@0|)))
))))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |1837|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((f@@2 T@U) (t0@@3 T@U) (t1@@3 T@U) ) (! (= ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@3 t1@@3)) (forall ((h@@1 T@U) (bx0@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@1) ($IsBox bx0@@1 t0@@3)) (Requires1 t0@@3 t1@@3 h@@1 f@@2 bx0@@1)) ($IsBox (Apply1 t0@@3 t1@@3 h@@1 f@@2 bx0@@1) t1@@3))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2078|
 :pattern ( (Apply1 t0@@3 t1@@3 h@@1 f@@2 bx0@@1))
)))
 :qid |unknown.0:0|
 :skolemid |2079|
 :pattern ( ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@3 t1@@3)))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 TInt) (and (= ($Box intType ($Unbox intType bx@@5)) bx@@5) ($Is intType ($Unbox intType bx@@5) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |1714|
 :pattern ( ($IsBox bx@@5 TInt))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1725|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$R@@1| T@U) ) (! (= (Tclass._System.___hFunc1_0 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)) |#$T0@@1|)
 :qid |unknown.0:0|
 :skolemid |2058|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$R@@2| T@U) ) (! (= (Tclass._System.___hFunc1_1 (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) |#$R@@2|)
 :qid |unknown.0:0|
 :skolemid |2059|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|))
)))
(assert (forall ((|#$T0@@3| T@U) (|#$R@@3| T@U) ) (! (= (Tclass._System.___hPartialFunc1_0 (Tclass._System.___hPartialFunc1 |#$T0@@3| |#$R@@3|)) |#$T0@@3|)
 :qid |unknown.0:0|
 :skolemid |2089|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@3| |#$R@@3|))
)))
(assert (forall ((|#$T0@@4| T@U) (|#$R@@4| T@U) ) (! (= (Tclass._System.___hPartialFunc1_1 (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@4|)) |#$R@@4|)
 :qid |unknown.0:0|
 :skolemid |2090|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@4|))
)))
(assert (forall ((|#$T0@@5| T@U) (|#$R@@5| T@U) ) (! (= (Tclass._System.___hTotalFunc1_0 (Tclass._System.___hTotalFunc1 |#$T0@@5| |#$R@@5|)) |#$T0@@5|)
 :qid |unknown.0:0|
 :skolemid |2096|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@5| |#$R@@5|))
)))
(assert (forall ((|#$T0@@6| T@U) (|#$R@@6| T@U) ) (! (= (Tclass._System.___hTotalFunc1_1 (Tclass._System.___hTotalFunc1 |#$T0@@6| |#$R@@6|)) |#$R@@6|)
 :qid |unknown.0:0|
 :skolemid |2097|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@6| |#$R@@6|))
)))
(assert (forall ((P0.TrX$X@@8 T@U) ) (! (= (Tclass.P0.TrX?_0 (Tclass.P0.TrX? P0.TrX$X@@8)) P0.TrX$X@@8)
 :qid |unknown.0:0|
 :skolemid |2220|
 :pattern ( (Tclass.P0.TrX? P0.TrX$X@@8))
)))
(assert (forall ((P0.TrX$X@@9 T@U) ) (! (= (Tclass.P0.TrX_0 (Tclass.P0.TrX P0.TrX$X@@9)) P0.TrX$X@@9)
 :qid |unknown.0:0|
 :skolemid |2225|
 :pattern ( (Tclass.P0.TrX P0.TrX$X@@9))
)))
(assert (forall ((P0.Tr$X@@8 T@U) ) (! (= (Tclass.P0.Tr?_0 (Tclass.P0.Tr? P0.Tr$X@@8)) P0.Tr$X@@8)
 :qid |unknown.0:0|
 :skolemid |2234|
 :pattern ( (Tclass.P0.Tr? P0.Tr$X@@8))
)))
(assert (forall ((P0.Tr$X@@9 T@U) ) (! (= (Tclass.P0.Tr_0 (Tclass.P0.Tr P0.Tr$X@@9)) P0.Tr$X@@9)
 :qid |unknown.0:0|
 :skolemid |2239|
 :pattern ( (Tclass.P0.Tr P0.Tr$X@@9))
)))
(assert (forall ((P0.Cl$Y@@10 T@U) ) (! (= (Tclass.P0.Cl?_0 (Tclass.P0.Cl? P0.Cl$Y@@10)) P0.Cl$Y@@10)
 :qid |unknown.0:0|
 :skolemid |2244|
 :pattern ( (Tclass.P0.Cl? P0.Cl$Y@@10))
)))
(assert (forall ((P0.Cl$Y@@11 T@U) ) (! (= (Tclass.P0.Cl_0 (Tclass.P0.Cl P0.Cl$Y@@11)) P0.Cl$Y@@11)
 :qid |unknown.0:0|
 :skolemid |2250|
 :pattern ( (Tclass.P0.Cl P0.Cl$Y@@11))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1712|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((P0.TrX$X@@10 T@U) ($self@@1 T@U) ($heap@@3 T@U) (|$fh$0x#0@@1| T@U) ) (! (= (Apply1 P0.TrX$X@@10 TInt $heap@@3 (|P0.TrX.F#Handle| P0.TrX$X@@10 $self@@1) |$fh$0x#0@@1|) ($Box intType (int_2_U (P0.TrX.F P0.TrX$X@@10 $self@@1 |$fh$0x#0@@1|))))
 :qid |unknown.0:0|
 :skolemid |2252|
 :pattern ( (Apply1 P0.TrX$X@@10 TInt $heap@@3 (|P0.TrX.F#Handle| P0.TrX$X@@10 $self@@1) |$fh$0x#0@@1|))
)))
(assert (forall ((|#$T0@@7| T@U) (|#$R@@7| T@U) (|f#0@@1| T@U) ) (! (= ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc1 |#$T0@@7| |#$R@@7|))  (and ($Is HandleTypeType |f#0@@1| (Tclass._System.___hPartialFunc1 |#$T0@@7| |#$R@@7|)) (forall ((|x0#0| T@U) ) (!  (=> ($IsBox |x0#0| |#$T0@@7|) (Requires1 |#$T0@@7| |#$R@@7| $OneHeap |f#0@@1| |x0#0|))
 :qid |unknown.0:0|
 :skolemid |2099|
))))
 :qid |unknown.0:0|
 :skolemid |2100|
 :pattern ( ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc1 |#$T0@@7| |#$R@@7|)))
)))
(assert (forall ((|#$T0@@8| T@U) (|#$R@@8| T@U) (|f#0@@2| T@U) ) (! (= ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|))  (and ($Is HandleTypeType |f#0@@2| (Tclass._System.___hFunc1 |#$T0@@8| |#$R@@8|)) (forall ((|x0#0@@0| T@U) ) (!  (=> ($IsBox |x0#0@@0| |#$T0@@8|) (|Set#Equal| (Reads1 |#$T0@@8| |#$R@@8| $OneHeap |f#0@@2| |x0#0@@0|) |Set#Empty|))
 :qid |unknown.0:0|
 :skolemid |2092|
))))
 :qid |unknown.0:0|
 :skolemid |2093|
 :pattern ( ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|)))
)))
(assert (forall ((P0.TrX$X@@11 T@U) (this@@1 T@U) (|x#0@@1| T@U) ) (!  (=> (and (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 (Tclass.P0.TrX P0.TrX$X@@11))) ($IsBox |x#0@@1| P0.TrX$X@@11)) (= (|P0.TrX.F#requires| P0.TrX$X@@11 this@@1 |x#0@@1|) true))
 :qid |unknown.0:0|
 :skolemid |2228|
 :pattern ( (|P0.TrX.F#requires| P0.TrX$X@@11 this@@1 |x#0@@1|))
)))
(assert (forall ((f@@3 T@U) (t0@@4 T@U) (t1@@4 T@U) (h@@2 T@U) ) (!  (=> ($IsGoodHeap h@@2) (= ($IsAlloc HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@4 t1@@4) h@@2) (forall ((bx0@@2 T@U) ) (!  (=> (and (and ($IsBox bx0@@2 t0@@4) ($IsAllocBox bx0@@2 t0@@4 h@@2)) (Requires1 t0@@4 t1@@4 h@@2 f@@3 bx0@@2)) (forall ((r T@U) ) (!  (=> (and (or (not (= r null)) (not true)) (|Set#IsMember| (Reads1 t0@@4 t1@@4 h@@2 f@@3 bx0@@2) ($Box refType r))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@2 r) alloc))))
 :qid |unknown.0:0|
 :skolemid |2083|
 :pattern ( (|Set#IsMember| (Reads1 t0@@4 t1@@4 h@@2 f@@3 bx0@@2) ($Box refType r)))
)))
 :qid |unknown.0:0|
 :skolemid |2084|
 :pattern ( (Apply1 t0@@4 t1@@4 h@@2 f@@3 bx0@@2))
 :pattern ( (Reads1 t0@@4 t1@@4 h@@2 f@@3 bx0@@2))
))))
 :qid |unknown.0:0|
 :skolemid |2085|
 :pattern ( ($IsAlloc HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@4 t1@@4) h@@2))
)))
(assert (forall ((|#$T0@@9| T@U) (|#$R@@9| T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@6)) bx@@6) ($Is HandleTypeType ($Unbox HandleTypeType bx@@6) (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|))))
 :qid |unknown.0:0|
 :skolemid |2060|
 :pattern ( ($IsBox bx@@6 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|)))
)))
(assert (forall ((|#$T0@@10| T@U) (|#$R@@10| T@U) (bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@7)) bx@@7) ($Is HandleTypeType ($Unbox HandleTypeType bx@@7) (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|))))
 :qid |unknown.0:0|
 :skolemid |2091|
 :pattern ( ($IsBox bx@@7 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|)))
)))
(assert (forall ((|#$T0@@11| T@U) (|#$R@@11| T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@8)) bx@@8) ($Is HandleTypeType ($Unbox HandleTypeType bx@@8) (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|))))
 :qid |unknown.0:0|
 :skolemid |2098|
 :pattern ( ($IsBox bx@@8 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|)))
)))
(assert (forall ((P0.TrX$X@@12 T@U) ($o@@7 T@U) ) (! (= ($Is refType $o@@7 (Tclass.P0.TrX? P0.TrX$X@@12))  (or (= $o@@7 null) (implements$P0.TrX (dtype $o@@7) P0.TrX$X@@12)))
 :qid |unknown.0:0|
 :skolemid |2222|
 :pattern ( ($Is refType $o@@7 (Tclass.P0.TrX? P0.TrX$X@@12)))
)))
(assert (forall ((P0.Tr$X@@10 T@U) ($o@@8 T@U) ) (! (= ($Is refType $o@@8 (Tclass.P0.Tr? P0.Tr$X@@10))  (or (= $o@@8 null) (implements$P0.Tr (dtype $o@@8) P0.Tr$X@@10)))
 :qid |unknown.0:0|
 :skolemid |2236|
 :pattern ( ($Is refType $o@@8 (Tclass.P0.Tr? P0.Tr$X@@10)))
)))
(assert  (and (forall ((t0@@5 T@T) (t1@@5 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@5 t1@@5 t2 (MapType1Store t0@@5 t1@@5 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@1 T@T) (u1@@1 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@1 u1@@1 u2 (MapType1Store u0@@1 u1@@1 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@1 u1@@1 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@2 T@T) (u1@@2 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@2 u1@@2 u2@@0 (MapType1Store u0@@2 u1@@2 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@2 u1@@2 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@9 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@9 $f))  (=> (and (or (not (= $o@@9 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@9) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3422|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@9 $f))
)))
(assert (forall ((|#$T0@@12| T@U) (|#$R@@12| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |2057|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|))
)))
(assert (forall ((|#$T0@@13| T@U) (|#$R@@13| T@U) ) (!  (and (= (Tag (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|)) Tagclass._System.___hPartialFunc1) (= (TagFamily (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|)) |tytagFamily$_#PartialFunc1|))
 :qid |unknown.0:0|
 :skolemid |2088|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|))
)))
(assert (forall ((|#$T0@@14| T@U) (|#$R@@14| T@U) ) (!  (and (= (Tag (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|)) Tagclass._System.___hTotalFunc1) (= (TagFamily (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|)) |tytagFamily$_#TotalFunc1|))
 :qid |unknown.0:0|
 :skolemid |2095|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|))
)))
(assert (forall (($bx T@U) (P0.TrX$X@@13 T@U) ($self@@2 T@U) ($heap@@4 T@U) (|$fh$0x#0@@2| T@U) ) (! (= (|Set#IsMember| (Reads1 P0.TrX$X@@13 TInt $heap@@4 (|P0.TrX.F#Handle| P0.TrX$X@@13 $self@@2) |$fh$0x#0@@2|) $bx) false)
 :qid |unknown.0:0|
 :skolemid |2254|
 :pattern ( (|Set#IsMember| (Reads1 P0.TrX$X@@13 TInt $heap@@4 (|P0.TrX.F#Handle| P0.TrX$X@@13 $self@@2) |$fh$0x#0@@2|) $bx))
)))
(assert (forall ((t0@@6 T@U) (t1@@6 T@U) (heap@@0 T@U) (f@@4 T@U) (bx0@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@0) (and ($IsBox bx0@@3 t0@@6) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc1 t0@@6 t1@@6)))) (|Set#Equal| (Reads1 t0@@6 t1@@6 $OneHeap f@@4 bx0@@3) |Set#Empty|)) (= (Requires1 t0@@6 t1@@6 $OneHeap f@@4 bx0@@3) (Requires1 t0@@6 t1@@6 heap@@0 f@@4 bx0@@3)))
 :qid |unknown.0:0|
 :skolemid |2077|
 :pattern ( (Requires1 t0@@6 t1@@6 $OneHeap f@@4 bx0@@3) ($IsGoodHeap heap@@0))
 :pattern ( (Requires1 t0@@6 t1@@6 heap@@0 f@@4 bx0@@3))
)))
(assert (forall ((P0.TrX$X@@14 T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass.P0.TrX? P0.TrX$X@@14)) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) (Tclass.P0.TrX? P0.TrX$X@@14))))
 :qid |unknown.0:0|
 :skolemid |2221|
 :pattern ( ($IsBox bx@@9 (Tclass.P0.TrX? P0.TrX$X@@14)))
)))
(assert (forall ((P0.TrX$X@@15 T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass.P0.TrX P0.TrX$X@@15)) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) (Tclass.P0.TrX P0.TrX$X@@15))))
 :qid |unknown.0:0|
 :skolemid |2226|
 :pattern ( ($IsBox bx@@10 (Tclass.P0.TrX P0.TrX$X@@15)))
)))
(assert (forall ((P0.Tr$X@@11 T@U) (bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 (Tclass.P0.Tr? P0.Tr$X@@11)) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) (Tclass.P0.Tr? P0.Tr$X@@11))))
 :qid |unknown.0:0|
 :skolemid |2235|
 :pattern ( ($IsBox bx@@11 (Tclass.P0.Tr? P0.Tr$X@@11)))
)))
(assert (forall ((P0.Tr$X@@12 T@U) (bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 (Tclass.P0.Tr P0.Tr$X@@12)) (and (= ($Box refType ($Unbox refType bx@@12)) bx@@12) ($Is refType ($Unbox refType bx@@12) (Tclass.P0.Tr P0.Tr$X@@12))))
 :qid |unknown.0:0|
 :skolemid |2240|
 :pattern ( ($IsBox bx@@12 (Tclass.P0.Tr P0.Tr$X@@12)))
)))
(assert (forall ((P0.Cl$Y@@12 T@U) (bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 (Tclass.P0.Cl? P0.Cl$Y@@12)) (and (= ($Box refType ($Unbox refType bx@@13)) bx@@13) ($Is refType ($Unbox refType bx@@13) (Tclass.P0.Cl? P0.Cl$Y@@12))))
 :qid |unknown.0:0|
 :skolemid |2245|
 :pattern ( ($IsBox bx@@13 (Tclass.P0.Cl? P0.Cl$Y@@12)))
)))
(assert (forall ((P0.Cl$Y@@13 T@U) (bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 (Tclass.P0.Cl P0.Cl$Y@@13)) (and (= ($Box refType ($Unbox refType bx@@14)) bx@@14) ($Is refType ($Unbox refType bx@@14) (Tclass.P0.Cl P0.Cl$Y@@13))))
 :qid |unknown.0:0|
 :skolemid |2251|
 :pattern ( ($IsBox bx@@14 (Tclass.P0.Cl P0.Cl$Y@@13)))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|Set#Equal| a@@0 b@@0) (forall ((o@@0 T@U) ) (! (= (|Set#IsMember| a@@0 o@@0) (|Set#IsMember| b@@0 o@@0))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |1835|
 :pattern ( (|Set#IsMember| a@@0 o@@0))
 :pattern ( (|Set#IsMember| b@@0 o@@0))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |1836|
 :pattern ( (|Set#Equal| a@@0 b@@0))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |1705|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1703|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((h@@3 T@U) (v@@1 T@U) ) (! ($IsAlloc intType v@@1 TInt h@@3)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |1748|
 :pattern ( ($IsAlloc intType v@@1 TInt h@@3))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is intType v@@2 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |1727|
 :pattern ( ($Is intType v@@2 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun this@@2 () T@U)
(declare-fun |f#0@0| () T@U)
(declare-fun P0.Cl$Y@@14 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |defass#v#0| () Bool)
(declare-fun |v#0| () T@U)
(declare-fun |defass#u#0| () Bool)
(declare-fun |u#0| () T@U)
(declare-fun |f#0@@3| () T@U)
(declare-fun |g#0| () T@U)
(set-info :boogie-vc-id Impl$$P0.Cl.M)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 2) (- 0 5)) (or (not (= 0 $FunctionContextHeight)) (not true))) (=> (or (not (= 0 $FunctionContextHeight)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= this@@2 null)) (not true))) (=> (or (not (= this@@2 null)) (not true)) (=> (and (= |f#0@0| (|P0.TrX.F#Handle| P0.Cl$Y@@14 this@@2)) (= (ControlFlow 0 2) (- 0 1))) (or (not (= 0 $FunctionContextHeight)) (not true)))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 (Tclass.P0.Cl P0.Cl$Y@@14)) ($IsAlloc refType this@@2 (Tclass.P0.Cl P0.Cl$Y@@14) $Heap)))) (=> (and (and (and (and (=> |defass#v#0| (and ($Is refType |v#0| (Tclass.P0.Cl P0.Cl$Y@@14)) ($IsAlloc refType |v#0| (Tclass.P0.Cl P0.Cl$Y@@14) $Heap))) true) (and (=> |defass#u#0| (and ($Is refType |u#0| (Tclass.P0.Tr P0.Cl$Y@@14)) ($IsAlloc refType |u#0| (Tclass.P0.Tr P0.Cl$Y@@14) $Heap))) true)) (and (and ($Is HandleTypeType |f#0@@3| (Tclass._System.___hTotalFunc1 P0.Cl$Y@@14 TInt)) ($IsAlloc HandleTypeType |f#0@@3| (Tclass._System.___hTotalFunc1 P0.Cl$Y@@14 TInt) $Heap)) true)) (and (and (and ($Is HandleTypeType |g#0| (Tclass._System.___hTotalFunc1 P0.Cl$Y@@14 TInt)) ($IsAlloc HandleTypeType |g#0| (Tclass._System.___hTotalFunc1 P0.Cl$Y@@14 TInt) $Heap)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 6) 2)))) anon0_correct))))
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
