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
(declare-fun alloc () T@U)
(declare-fun Tagclass.FiftyShadesOfGhost.H () T@U)
(declare-fun Tagclass.FiftyShadesOfGhost.LongCell () T@U)
(declare-fun Tagclass.FiftyShadesOfGhost.G () T@U)
(declare-fun Tagclass.FiftyShadesOfGhost.H? () T@U)
(declare-fun |##FiftyShadesOfGhost.LongCell.LongGH| () T@U)
(declare-fun tytagFamily$H () T@U)
(declare-fun tytagFamily$LongCell () T@U)
(declare-fun tytagFamily$G () T@U)
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
(declare-fun |#FiftyShadesOfGhost.LongCell.LongGH| (Int Int T@U T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun FiftyShadesOfGhost.LongCell.c (T@U) Int)
(declare-fun FiftyShadesOfGhost.LongCell.g (T@U) Int)
(declare-fun FiftyShadesOfGhost.LongCell.d (T@U) T@U)
(declare-fun FiftyShadesOfGhost.LongCell.h (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass.FiftyShadesOfGhost.G () T@U)
(declare-fun |$IsA#FiftyShadesOfGhost.LongCell| (T@U) Bool)
(declare-fun FiftyShadesOfGhost.LongCell.LongGH_q (T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.FiftyShadesOfGhost.H () T@U)
(declare-fun Tclass.FiftyShadesOfGhost.H? () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.FiftyShadesOfGhost.LongCell () T@U)
(declare-fun null () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun |FiftyShadesOfGhost.LongCell#Equal| (T@U T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun $HeapSuccGhost (T@U T@U) Bool)
(declare-fun Mod (Int Int) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$FiftyShadesOfGhost.H (T@U) Bool)
(declare-fun dtype (T@U) T@U)
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
(assert (distinct alloc Tagclass.FiftyShadesOfGhost.H Tagclass.FiftyShadesOfGhost.LongCell Tagclass.FiftyShadesOfGhost.G Tagclass.FiftyShadesOfGhost.H? |##FiftyShadesOfGhost.LongCell.LongGH| tytagFamily$H tytagFamily$LongCell tytagFamily$G)
)
(assert (forall ((|a#0#0#0| Int) (|a#0#1#0| Int) (|a#0#2#0| T@U) (|a#0#3#0| T@U) ) (! (= (DatatypeCtorId (|#FiftyShadesOfGhost.LongCell.LongGH| |a#0#0#0| |a#0#1#0| |a#0#2#0| |a#0#3#0|)) |##FiftyShadesOfGhost.LongCell.LongGH|)
 :qid |GhostAutoInitdfy.249:30|
 :skolemid |2043|
 :pattern ( (|#FiftyShadesOfGhost.LongCell.LongGH| |a#0#0#0| |a#0#1#0| |a#0#2#0| |a#0#3#0|))
)))
(assert (forall ((|a#4#0#0| Int) (|a#4#1#0| Int) (|a#4#2#0| T@U) (|a#4#3#0| T@U) ) (! (= (FiftyShadesOfGhost.LongCell.c (|#FiftyShadesOfGhost.LongCell.LongGH| |a#4#0#0| |a#4#1#0| |a#4#2#0| |a#4#3#0|)) |a#4#0#0|)
 :qid |GhostAutoInitdfy.249:30|
 :skolemid |2054|
 :pattern ( (|#FiftyShadesOfGhost.LongCell.LongGH| |a#4#0#0| |a#4#1#0| |a#4#2#0| |a#4#3#0|))
)))
(assert (forall ((|a#5#0#0| Int) (|a#5#1#0| Int) (|a#5#2#0| T@U) (|a#5#3#0| T@U) ) (! (= (FiftyShadesOfGhost.LongCell.g (|#FiftyShadesOfGhost.LongCell.LongGH| |a#5#0#0| |a#5#1#0| |a#5#2#0| |a#5#3#0|)) |a#5#1#0|)
 :qid |GhostAutoInitdfy.249:30|
 :skolemid |2055|
 :pattern ( (|#FiftyShadesOfGhost.LongCell.LongGH| |a#5#0#0| |a#5#1#0| |a#5#2#0| |a#5#3#0|))
)))
(assert (forall ((|a#6#0#0| Int) (|a#6#1#0| Int) (|a#6#2#0| T@U) (|a#6#3#0| T@U) ) (! (= (FiftyShadesOfGhost.LongCell.d (|#FiftyShadesOfGhost.LongCell.LongGH| |a#6#0#0| |a#6#1#0| |a#6#2#0| |a#6#3#0|)) |a#6#2#0|)
 :qid |GhostAutoInitdfy.249:30|
 :skolemid |2056|
 :pattern ( (|#FiftyShadesOfGhost.LongCell.LongGH| |a#6#0#0| |a#6#1#0| |a#6#2#0| |a#6#3#0|))
)))
(assert (forall ((|a#7#0#0| Int) (|a#7#1#0| Int) (|a#7#2#0| T@U) (|a#7#3#0| T@U) ) (! (= (FiftyShadesOfGhost.LongCell.h (|#FiftyShadesOfGhost.LongCell.LongGH| |a#7#0#0| |a#7#1#0| |a#7#2#0| |a#7#3#0|)) |a#7#3#0|)
 :qid |GhostAutoInitdfy.249:30|
 :skolemid |2057|
 :pattern ( (|#FiftyShadesOfGhost.LongCell.LongGH| |a#7#0#0| |a#7#1#0| |a#7#2#0| |a#7#3#0|))
)))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass.FiftyShadesOfGhost.G $h)
 :qid |unknown.0:0|
 :skolemid |2037|
 :pattern ( ($IsAlloc intType |x#0| Tclass.FiftyShadesOfGhost.G $h))
)))
(assert (forall ((d T@U) ) (!  (=> (|$IsA#FiftyShadesOfGhost.LongCell| d) (FiftyShadesOfGhost.LongCell.LongGH_q d))
 :qid |unknown.0:0|
 :skolemid |2058|
 :pattern ( (|$IsA#FiftyShadesOfGhost.LongCell| d))
)))
(assert (= (Ctor refType) 3))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass.FiftyShadesOfGhost.H $h@@0) ($IsAlloc refType |c#0| Tclass.FiftyShadesOfGhost.H? $h@@0))
 :qid |unknown.0:0|
 :skolemid |2042|
 :pattern ( ($IsAlloc refType |c#0| Tclass.FiftyShadesOfGhost.H $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass.FiftyShadesOfGhost.H? $h@@0))
)))
(assert (= (Ctor DatatypeTypeType) 4))
(assert (forall ((d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 Tclass.FiftyShadesOfGhost.LongCell) (FiftyShadesOfGhost.LongCell.LongGH_q d@@0))
 :qid |unknown.0:0|
 :skolemid |2059|
 :pattern ( (FiftyShadesOfGhost.LongCell.LongGH_q d@@0) ($Is DatatypeTypeType d@@0 Tclass.FiftyShadesOfGhost.LongCell))
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
(assert (forall (($o T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o Tclass.FiftyShadesOfGhost.H? $h@@1)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2040|
 :pattern ( ($IsAlloc refType $o Tclass.FiftyShadesOfGhost.H? $h@@1))
)))
(assert (forall ((a T@U) (b T@U) ) (! (= (|FiftyShadesOfGhost.LongCell#Equal| a b) (= a b))
 :qid |unknown.0:0|
 :skolemid |2061|
 :pattern ( (|FiftyShadesOfGhost.LongCell#Equal| a b))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |1625|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |1626|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |1524|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1522|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((d@@1 T@U) ) (! (= (FiftyShadesOfGhost.LongCell.LongGH_q d@@1) (= (DatatypeCtorId d@@1) |##FiftyShadesOfGhost.LongCell.LongGH|))
 :qid |unknown.0:0|
 :skolemid |2044|
 :pattern ( (FiftyShadesOfGhost.LongCell.LongGH_q d@@1))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1533|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((|a#2#0#0| Int) (|a#2#1#0| Int) (|a#2#2#0| T@U) (|a#2#3#0| T@U) ($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) (= ($IsAlloc DatatypeTypeType (|#FiftyShadesOfGhost.LongCell.LongGH| |a#2#0#0| |a#2#1#0| |a#2#2#0| |a#2#3#0|) Tclass.FiftyShadesOfGhost.LongCell $h@@2)  (and (and (and ($IsAlloc intType (int_2_U |a#2#0#0|) Tclass.FiftyShadesOfGhost.G $h@@2) ($IsAlloc intType (int_2_U |a#2#1#0|) Tclass.FiftyShadesOfGhost.G $h@@2)) ($IsAlloc refType |a#2#2#0| Tclass.FiftyShadesOfGhost.H $h@@2)) ($IsAlloc refType |a#2#3#0| Tclass.FiftyShadesOfGhost.H $h@@2))))
 :qid |GhostAutoInitdfy.249:30|
 :skolemid |2048|
 :pattern ( ($IsAlloc DatatypeTypeType (|#FiftyShadesOfGhost.LongCell.LongGH| |a#2#0#0| |a#2#1#0| |a#2#2#0| |a#2#3#0|) Tclass.FiftyShadesOfGhost.LongCell $h@@2))
)))
(assert ($IsGhostField alloc))
(assert (forall ((|a#3#0#0| Int) (|a#3#1#0| Int) (|a#3#2#0| T@U) (|a#3#3#0| T@U) ) (! (= (|#FiftyShadesOfGhost.LongCell.LongGH| (LitInt |a#3#0#0|) (LitInt |a#3#1#0|) (Lit refType |a#3#2#0|) (Lit refType |a#3#3#0|)) (Lit DatatypeTypeType (|#FiftyShadesOfGhost.LongCell.LongGH| |a#3#0#0| |a#3#1#0| |a#3#2#0| |a#3#3#0|)))
 :qid |GhostAutoInitdfy.249:30|
 :skolemid |2053|
 :pattern ( (|#FiftyShadesOfGhost.LongCell.LongGH| (LitInt |a#3#0#0|) (LitInt |a#3#1#0|) (Lit refType |a#3#2#0|) (Lit refType |a#3#3#0|)))
)))
(assert (forall ((h@@0 T@U) (k@@0 T@U) (v T@U) (t T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@0 k@@0) (=> ($IsAlloc T@@1 v t h@@0) ($IsAlloc T@@1 v t k@@0)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |1617|
 :pattern ( ($HeapSucc h@@0 k@@0) ($IsAlloc T@@1 v t h@@0))
)))
(assert (forall ((|a#2#0#0@@0| Int) (|a#2#1#0@@0| Int) (|a#2#2#0@@0| T@U) (|a#2#3#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#FiftyShadesOfGhost.LongCell.LongGH| |a#2#0#0@@0| |a#2#1#0@@0| |a#2#2#0@@0| |a#2#3#0@@0|) Tclass.FiftyShadesOfGhost.LongCell)  (and (and (and ($Is intType (int_2_U |a#2#0#0@@0|) Tclass.FiftyShadesOfGhost.G) ($Is intType (int_2_U |a#2#1#0@@0|) Tclass.FiftyShadesOfGhost.G)) ($Is refType |a#2#2#0@@0| Tclass.FiftyShadesOfGhost.H)) ($Is refType |a#2#3#0@@0| Tclass.FiftyShadesOfGhost.H)))
 :qid |GhostAutoInitdfy.249:30|
 :skolemid |2047|
 :pattern ( ($Is DatatypeTypeType (|#FiftyShadesOfGhost.LongCell.LongGH| |a#2#0#0@@0| |a#2#1#0@@0| |a#2#2#0@@0| |a#2#3#0@@0|) Tclass.FiftyShadesOfGhost.LongCell))
)))
(assert (forall ((h@@1 T@U) (k@@1 T@U) ) (!  (=> ($HeapSuccGhost h@@1 k@@1) (and ($HeapSucc h@@1 k@@1) (forall ((o@@0 T@U) (f T@U) ) (!  (=> (not ($IsGhostField f)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 o@@0) f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k@@1 o@@0) f)))
 :qid |DafnyPreludebpl.544:13|
 :skolemid |1615|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k@@1 o@@0) f))
))))
 :qid |DafnyPreludebpl.541:15|
 :skolemid |1616|
 :pattern ( ($HeapSuccGhost h@@1 k@@1))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass.FiftyShadesOfGhost.H)  (and ($Is refType |c#0@@0| Tclass.FiftyShadesOfGhost.H?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2041|
 :pattern ( ($Is refType |c#0@@0| Tclass.FiftyShadesOfGhost.H))
 :pattern ( ($Is refType |c#0@@0| Tclass.FiftyShadesOfGhost.H?))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|FiftyShadesOfGhost.LongCell#Equal| a@@0 b@@0)  (and (and (and (= (FiftyShadesOfGhost.LongCell.c a@@0) (FiftyShadesOfGhost.LongCell.c b@@0)) (= (FiftyShadesOfGhost.LongCell.g a@@0) (FiftyShadesOfGhost.LongCell.g b@@0))) (= (FiftyShadesOfGhost.LongCell.d a@@0) (FiftyShadesOfGhost.LongCell.d b@@0))) (= (FiftyShadesOfGhost.LongCell.h a@@0) (FiftyShadesOfGhost.LongCell.h b@@0))))
 :qid |unknown.0:0|
 :skolemid |2060|
 :pattern ( (|FiftyShadesOfGhost.LongCell#Equal| a@@0 b@@0))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass.FiftyShadesOfGhost.G) (= (Mod (U_2_int |x#0@@0|) (LitInt 2)) (LitInt 1)))
 :qid |unknown.0:0|
 :skolemid |2036|
 :pattern ( ($Is intType |x#0@@0| Tclass.FiftyShadesOfGhost.G))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) (c T@U) ) (!  (=> (or (not (= a@@1 c)) (not true)) (=> (and ($HeapSucc a@@1 b@@1) ($HeapSucc b@@1 c)) ($HeapSucc a@@1 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |1624|
 :pattern ( ($HeapSucc a@@1 b@@1) ($HeapSucc b@@1 c))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (FiftyShadesOfGhost.LongCell.LongGH_q d@@2) (exists ((|a#1#0#0| Int) (|a#1#1#0| Int) (|a#1#2#0| T@U) (|a#1#3#0| T@U) ) (! (= d@@2 (|#FiftyShadesOfGhost.LongCell.LongGH| |a#1#0#0| |a#1#1#0| |a#1#2#0| |a#1#3#0|))
 :qid |GhostAutoInitdfy.249:30|
 :skolemid |2045|
)))
 :qid |unknown.0:0|
 :skolemid |2046|
 :pattern ( (FiftyShadesOfGhost.LongCell.LongGH_q d@@2))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1532|
 :pattern ( ($Box T@@2 x@@5))
)))
(assert  (and (forall ((t0@@0 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 t2 (MapType1Store t0@@0 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@0 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@0 $f))  (=> (and (or (not (= $o@@0 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@0) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3096|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@0 $f))
)))
(assert (forall ((x@@6 Int) (y Int) ) (! (= (Mod x@@6 y) (mod x@@6 y))
 :qid |DafnyPreludebpl.1649:14|
 :skolemid |1847|
 :pattern ( (Mod x@@6 y))
)))
(assert (= (Tag Tclass.FiftyShadesOfGhost.H) Tagclass.FiftyShadesOfGhost.H))
(assert (= (TagFamily Tclass.FiftyShadesOfGhost.H) tytagFamily$H))
(assert (= (Tag Tclass.FiftyShadesOfGhost.LongCell) Tagclass.FiftyShadesOfGhost.LongCell))
(assert (= (TagFamily Tclass.FiftyShadesOfGhost.LongCell) tytagFamily$LongCell))
(assert (= (Tag Tclass.FiftyShadesOfGhost.G) Tagclass.FiftyShadesOfGhost.G))
(assert (= (TagFamily Tclass.FiftyShadesOfGhost.G) tytagFamily$G))
(assert (= (Tag Tclass.FiftyShadesOfGhost.H?) Tagclass.FiftyShadesOfGhost.H?))
(assert (= (TagFamily Tclass.FiftyShadesOfGhost.H?) tytagFamily$H))
(assert (forall (($o@@1 T@U) ) (! (= ($Is refType $o@@1 Tclass.FiftyShadesOfGhost.H?)  (or (= $o@@1 null) (implements$FiftyShadesOfGhost.H (dtype $o@@1))))
 :qid |unknown.0:0|
 :skolemid |2039|
 :pattern ( ($Is refType $o@@1 Tclass.FiftyShadesOfGhost.H?))
)))
(assert (forall ((d@@3 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (FiftyShadesOfGhost.LongCell.LongGH_q d@@3) ($IsAlloc DatatypeTypeType d@@3 Tclass.FiftyShadesOfGhost.LongCell $h@@3))) ($IsAlloc intType (int_2_U (FiftyShadesOfGhost.LongCell.c d@@3)) Tclass.FiftyShadesOfGhost.G $h@@3))
 :qid |unknown.0:0|
 :skolemid |2049|
 :pattern ( ($IsAlloc intType (int_2_U (FiftyShadesOfGhost.LongCell.c d@@3)) Tclass.FiftyShadesOfGhost.G $h@@3))
)))
(assert (forall ((d@@4 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (FiftyShadesOfGhost.LongCell.LongGH_q d@@4) ($IsAlloc DatatypeTypeType d@@4 Tclass.FiftyShadesOfGhost.LongCell $h@@4))) ($IsAlloc intType (int_2_U (FiftyShadesOfGhost.LongCell.g d@@4)) Tclass.FiftyShadesOfGhost.G $h@@4))
 :qid |unknown.0:0|
 :skolemid |2050|
 :pattern ( ($IsAlloc intType (int_2_U (FiftyShadesOfGhost.LongCell.g d@@4)) Tclass.FiftyShadesOfGhost.G $h@@4))
)))
(assert (forall ((d@@5 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (FiftyShadesOfGhost.LongCell.LongGH_q d@@5) ($IsAlloc DatatypeTypeType d@@5 Tclass.FiftyShadesOfGhost.LongCell $h@@5))) ($IsAlloc refType (FiftyShadesOfGhost.LongCell.d d@@5) Tclass.FiftyShadesOfGhost.H $h@@5))
 :qid |unknown.0:0|
 :skolemid |2051|
 :pattern ( ($IsAlloc refType (FiftyShadesOfGhost.LongCell.d d@@5) Tclass.FiftyShadesOfGhost.H $h@@5))
)))
(assert (forall ((d@@6 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (FiftyShadesOfGhost.LongCell.LongGH_q d@@6) ($IsAlloc DatatypeTypeType d@@6 Tclass.FiftyShadesOfGhost.LongCell $h@@6))) ($IsAlloc refType (FiftyShadesOfGhost.LongCell.h d@@6) Tclass.FiftyShadesOfGhost.H $h@@6))
 :qid |unknown.0:0|
 :skolemid |2052|
 :pattern ( ($IsAlloc refType (FiftyShadesOfGhost.LongCell.h d@@6) Tclass.FiftyShadesOfGhost.H $h@@6))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |1525|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@8)) (Lit BoxType ($Box T@@3 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1523|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@8)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id Impl$$FiftyShadesOfGhost.__default.V)
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
 (=> (= (ControlFlow 0 0) 7) true)
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
