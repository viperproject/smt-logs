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
(declare-fun Tagclass.SSCinBoth.Trait? () T@U)
(declare-fun Tagclass.SSCinBoth.Trait () T@U)
(declare-fun Tagclass.SSCinBoth.Class? () T@U)
(declare-fun Tagclass.SSCinBoth.Class () T@U)
(declare-fun tytagFamily$Trait () T@U)
(declare-fun tytagFamily$Class () T@U)
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
(declare-fun SSCinBoth.Class.Even (T@U T@U Int) Bool)
(declare-fun |SSCinBoth.Class.Even#canCall| (T@U Int) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.SSCinBoth.Class () T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Mod (Int Int) Int)
(declare-fun SSCinBoth.Class.Odd (T@U T@U Int) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun $LZ () T@U)
(declare-fun |SSCinBoth.Class.Odd#canCall| (T@U Int) Bool)
(declare-fun implements$SSCinBoth.Trait (T@U) Bool)
(declare-fun Tclass.SSCinBoth.Class? () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass.SSCinBoth.Trait () T@U)
(declare-fun Tclass.SSCinBoth.Trait? () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
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
(assert (distinct alloc Tagclass.SSCinBoth.Trait? Tagclass.SSCinBoth.Trait Tagclass.SSCinBoth.Class? Tagclass.SSCinBoth.Class tytagFamily$Trait tytagFamily$Class)
)
(assert (= (Ctor refType) 3))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly T@U) (this T@U) (|i#0| Int) ) (!  (=> (or (|SSCinBoth.Class.Even#canCall| this |i#0|) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this null)) (not true)) ($Is refType this Tclass.SSCinBoth.Class)) (<= (LitInt 0) |i#0|)))) (or (= |i#0| (LitInt 0)) (= (= (Mod |i#0| (LitInt 2)) (LitInt 0)) (SSCinBoth.Class.Odd ($LS $LZ) this (- |i#0| 1)))))
 :qid |gitissue2500dfy.74:15|
 :skolemid |1677|
 :pattern ( (SSCinBoth.Class.Even $ly this |i#0|))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@0 T@U) (this@@0 T@U) (|i#0@@0| Int) ) (!  (=> (or (|SSCinBoth.Class.Odd#canCall| this@@0 |i#0@@0|) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass.SSCinBoth.Class)) (<= (LitInt 0) |i#0@@0|)))) (or (= |i#0@@0| (LitInt 0)) (= (= (Mod |i#0@@0| (LitInt 2)) (LitInt 1)) (SSCinBoth.Class.Even ($LS $LZ) this@@0 (- |i#0@@0| 1)))))
 :qid |gitissue2500dfy.77:15|
 :skolemid |1687|
 :pattern ( (SSCinBoth.Class.Odd $ly@@0 this@@0 |i#0@@0|))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@1 T@U) (this@@1 T@U) (|i#0@@1| Int) ) (!  (=> (or (|SSCinBoth.Class.Even#canCall| this@@1 (LitInt |i#0@@1|)) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 Tclass.SSCinBoth.Class)) (<= (LitInt 0) |i#0@@1|)))) (and (=> (or (not (= (LitInt |i#0@@1|) (LitInt 0))) (not true)) (|SSCinBoth.Class.Odd#canCall| this@@1 (LitInt (- |i#0@@1| 1)))) (= (SSCinBoth.Class.Even ($LS $ly@@1) this@@1 (LitInt |i#0@@1|))  (or (= (LitInt |i#0@@1|) (LitInt 0)) (SSCinBoth.Class.Odd ($LS $ly@@1) this@@1 (LitInt (- |i#0@@1| 1)))))))
 :qid |gitissue2500dfy.74:15|
 :weight 3
 :skolemid |1680|
 :pattern ( (SSCinBoth.Class.Even ($LS $ly@@1) this@@1 (LitInt |i#0@@1|)))
))))
(assert (implements$SSCinBoth.Trait Tclass.SSCinBoth.Class?))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.SSCinBoth.Class?)  (or (= $o null) (= (dtype $o) Tclass.SSCinBoth.Class?)))
 :qid |unknown.0:0|
 :skolemid |1672|
 :pattern ( ($Is refType $o Tclass.SSCinBoth.Class?))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@2 T@U) (this@@2 T@U) (|i#0@@2| Int) ) (!  (=> (or (|SSCinBoth.Class.Odd#canCall| this@@2 (LitInt |i#0@@2|)) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 Tclass.SSCinBoth.Class)) (<= (LitInt 0) |i#0@@2|)))) (and (=> (U_2_bool (Lit boolType (bool_2_U  (or (not (= |i#0@@2| 0)) (not true))))) (|SSCinBoth.Class.Even#canCall| this@@2 (LitInt (- |i#0@@2| 1)))) (= (SSCinBoth.Class.Odd ($LS $ly@@2) this@@2 (LitInt |i#0@@2|))  (and (or (not (= |i#0@@2| 0)) (not true)) (SSCinBoth.Class.Even ($LS $ly@@2) this@@2 (LitInt (- |i#0@@2| 1)))))))
 :qid |gitissue2500dfy.77:15|
 :weight 3
 :skolemid |1690|
 :pattern ( (SSCinBoth.Class.Odd ($LS $ly@@2) this@@2 (LitInt |i#0@@2|)))
))))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass.SSCinBoth.Trait $h) ($IsAlloc refType |c#0| Tclass.SSCinBoth.Trait? $h))
 :qid |unknown.0:0|
 :skolemid |1670|
 :pattern ( ($IsAlloc refType |c#0| Tclass.SSCinBoth.Trait $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass.SSCinBoth.Trait? $h))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass.SSCinBoth.Class $h@@0) ($IsAlloc refType |c#0@@0| Tclass.SSCinBoth.Class? $h@@0))
 :qid |unknown.0:0|
 :skolemid |1696|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.SSCinBoth.Class $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.SSCinBoth.Class? $h@@0))
)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 4)) (= (Ctor BoxType) 5)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 6)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall (($o@@0 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass.SSCinBoth.Trait? $h@@1)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1659|
 :pattern ( ($IsAlloc refType $o@@0 Tclass.SSCinBoth.Trait? $h@@1))
)))
(assert (forall (($o@@1 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass.SSCinBoth.Class? $h@@2)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1673|
 :pattern ( ($IsAlloc refType $o@@1 Tclass.SSCinBoth.Class? $h@@2))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |1146|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1144|
 :pattern ( (Lit T x@@3))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@3 T@U) (this@@3 T@U) (|i#0@@3| Int) ) (!  (=> (or (|SSCinBoth.Class.Even#canCall| this@@3 |i#0@@3|) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@3 null)) (not true)) ($Is refType this@@3 Tclass.SSCinBoth.Class)) (<= (LitInt 0) |i#0@@3|)))) (and (=> (or (not (= |i#0@@3| (LitInt 0))) (not true)) (|SSCinBoth.Class.Odd#canCall| this@@3 (- |i#0@@3| 1))) (= (SSCinBoth.Class.Even ($LS $ly@@3) this@@3 |i#0@@3|)  (or (= |i#0@@3| (LitInt 0)) (SSCinBoth.Class.Odd $ly@@3 this@@3 (- |i#0@@3| 1))))))
 :qid |gitissue2500dfy.74:15|
 :skolemid |1679|
 :pattern ( (SSCinBoth.Class.Even ($LS $ly@@3) this@@3 |i#0@@3|))
))))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1155|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall (($ly@@4 T@U) (this@@4 T@U) (|i#0@@4| Int) ) (! (= (SSCinBoth.Class.Even ($LS $ly@@4) this@@4 |i#0@@4|) (SSCinBoth.Class.Even $ly@@4 this@@4 |i#0@@4|))
 :qid |gitissue2500dfy.74:15|
 :skolemid |1674|
 :pattern ( (SSCinBoth.Class.Even ($LS $ly@@4) this@@4 |i#0@@4|))
)))
(assert (forall (($ly@@5 T@U) (this@@5 T@U) (|i#0@@5| Int) ) (! (= (SSCinBoth.Class.Odd ($LS $ly@@5) this@@5 |i#0@@5|) (SSCinBoth.Class.Odd $ly@@5 this@@5 |i#0@@5|))
 :qid |gitissue2500dfy.77:15|
 :skolemid |1685|
 :pattern ( (SSCinBoth.Class.Odd ($LS $ly@@5) this@@5 |i#0@@5|))
)))
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass.SSCinBoth.Trait)  (and ($Is refType |c#0@@1| Tclass.SSCinBoth.Trait?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1669|
 :pattern ( ($Is refType |c#0@@1| Tclass.SSCinBoth.Trait))
 :pattern ( ($Is refType |c#0@@1| Tclass.SSCinBoth.Trait?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass.SSCinBoth.Class)  (and ($Is refType |c#0@@2| Tclass.SSCinBoth.Class?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1695|
 :pattern ( ($Is refType |c#0@@2| Tclass.SSCinBoth.Class))
 :pattern ( ($Is refType |c#0@@2| Tclass.SSCinBoth.Class?))
)))
(assert (forall (($o@@2 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@2 Tclass.SSCinBoth.Class? $heap) ($IsAlloc refType $o@@2 Tclass.SSCinBoth.Trait? $heap))
 :qid |unknown.0:0|
 :skolemid |1700|
 :pattern ( ($IsAlloc refType $o@@2 Tclass.SSCinBoth.Class? $heap))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@6 T@U) (this@@6 T@U) (|i#0@@6| Int) ) (!  (=> (or (|SSCinBoth.Class.Even#canCall| (Lit refType this@@6) (LitInt |i#0@@6|)) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@6 null)) (not true)) ($Is refType this@@6 Tclass.SSCinBoth.Class)) (<= (LitInt 0) |i#0@@6|)))) (and (=> (or (not (= (LitInt |i#0@@6|) (LitInt 0))) (not true)) (|SSCinBoth.Class.Odd#canCall| (Lit refType this@@6) (LitInt (- |i#0@@6| 1)))) (= (SSCinBoth.Class.Even ($LS $ly@@6) (Lit refType this@@6) (LitInt |i#0@@6|))  (or (= (LitInt |i#0@@6|) (LitInt 0)) (SSCinBoth.Class.Odd ($LS $ly@@6) (Lit refType this@@6) (LitInt (- |i#0@@6| 1)))))))
 :qid |gitissue2500dfy.74:15|
 :weight 3
 :skolemid |1681|
 :pattern ( (SSCinBoth.Class.Even ($LS $ly@@6) (Lit refType this@@6) (LitInt |i#0@@6|)))
))))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1154|
 :pattern ( ($Box T@@1 x@@5))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@7 T@U) (this@@7 T@U) (|i#0@@7| Int) ) (!  (=> (or (|SSCinBoth.Class.Odd#canCall| this@@7 |i#0@@7|) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@7 null)) (not true)) ($Is refType this@@7 Tclass.SSCinBoth.Class)) (<= (LitInt 0) |i#0@@7|)))) (and (=> (or (not (= |i#0@@7| 0)) (not true)) (|SSCinBoth.Class.Even#canCall| this@@7 (- |i#0@@7| 1))) (= (SSCinBoth.Class.Odd ($LS $ly@@7) this@@7 |i#0@@7|)  (and (or (not (= |i#0@@7| 0)) (not true)) (SSCinBoth.Class.Even $ly@@7 this@@7 (- |i#0@@7| 1))))))
 :qid |gitissue2500dfy.77:15|
 :skolemid |1689|
 :pattern ( (SSCinBoth.Class.Odd ($LS $ly@@7) this@@7 |i#0@@7|))
))))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@3 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))  (=> (and (or (not (= $o@@3 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@3) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2395|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))
)))
(assert (forall ((x@@6 Int) (y Int) ) (! (= (Mod x@@6 y) (mod x@@6 y))
 :qid |DafnyPreludebpl.1649:14|
 :skolemid |1469|
 :pattern ( (Mod x@@6 y))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@8 T@U) (this@@8 T@U) (|i#0@@8| Int) ) (!  (=> (or (|SSCinBoth.Class.Odd#canCall| (Lit refType this@@8) (LitInt |i#0@@8|)) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@8 null)) (not true)) ($Is refType this@@8 Tclass.SSCinBoth.Class)) (<= (LitInt 0) |i#0@@8|)))) (and (=> (U_2_bool (Lit boolType (bool_2_U  (or (not (= |i#0@@8| 0)) (not true))))) (|SSCinBoth.Class.Even#canCall| (Lit refType this@@8) (LitInt (- |i#0@@8| 1)))) (= (SSCinBoth.Class.Odd ($LS $ly@@8) (Lit refType this@@8) (LitInt |i#0@@8|)) (U_2_bool (Lit boolType (bool_2_U  (and (or (not (= |i#0@@8| 0)) (not true)) (SSCinBoth.Class.Even ($LS $ly@@8) (Lit refType this@@8) (LitInt (- |i#0@@8| 1))))))))))
 :qid |gitissue2500dfy.77:15|
 :weight 3
 :skolemid |1691|
 :pattern ( (SSCinBoth.Class.Odd ($LS $ly@@8) (Lit refType this@@8) (LitInt |i#0@@8|)))
))))
(assert (forall (($o@@4 T@U) ) (!  (=> ($Is refType $o@@4 Tclass.SSCinBoth.Class?) ($Is refType $o@@4 Tclass.SSCinBoth.Trait?))
 :qid |unknown.0:0|
 :skolemid |1699|
 :pattern ( ($Is refType $o@@4 Tclass.SSCinBoth.Class?))
)))
(assert (= (Tag Tclass.SSCinBoth.Trait?) Tagclass.SSCinBoth.Trait?))
(assert (= (TagFamily Tclass.SSCinBoth.Trait?) tytagFamily$Trait))
(assert (= (Tag Tclass.SSCinBoth.Trait) Tagclass.SSCinBoth.Trait))
(assert (= (TagFamily Tclass.SSCinBoth.Trait) tytagFamily$Trait))
(assert (= (Tag Tclass.SSCinBoth.Class?) Tagclass.SSCinBoth.Class?))
(assert (= (TagFamily Tclass.SSCinBoth.Class?) tytagFamily$Class))
(assert (= (Tag Tclass.SSCinBoth.Class) Tagclass.SSCinBoth.Class))
(assert (= (TagFamily Tclass.SSCinBoth.Class) tytagFamily$Class))
(assert (forall (($o@@5 T@U) ) (! (= ($Is refType $o@@5 Tclass.SSCinBoth.Trait?)  (or (= $o@@5 null) (implements$SSCinBoth.Trait (dtype $o@@5))))
 :qid |unknown.0:0|
 :skolemid |1658|
 :pattern ( ($Is refType $o@@5 Tclass.SSCinBoth.Trait?))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |1147|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@8)) (Lit BoxType ($Box T@@2 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1145|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@8)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |i#0@@9| () Int)
(declare-fun Class_$_ReadsFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun this@@9 () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id OverrideCheck$$SSCinBoth.Class.Odd)
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
 (=> (= (ControlFlow 0 0) 5) (let ((anon0_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (<= |i#0@@9| |i#0@@9|)) (=> (<= |i#0@@9| |i#0@@9|) (=> (= Class_$_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall (($o@@6 T@U) ($f@@0 T@U) ) (! true
 :qid |gitissue2500dfy.77:15|
 :skolemid |1694|
))) (=> (forall (($o@@7 T@U) ($f@@1 T@U) ) (! true
 :qid |gitissue2500dfy.77:15|
 :skolemid |1694|
)) (=> (and (or (= |i#0@@9| (LitInt 0)) (= (= (Mod |i#0@@9| (LitInt 2)) (LitInt 1)) (SSCinBoth.Class.Even ($LS $LZ) this@@9 (- |i#0@@9| 1)))) (= (ControlFlow 0 2) (- 0 1))) (or (= |i#0@@9| (LitInt 0)) (= (= (Mod |i#0@@9| (LitInt 2)) (LitInt 1)) (SSCinBoth.Class.Even ($LS ($LS $LZ)) this@@9 (- |i#0@@9| 1))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (or (not (= this@@9 null)) (not true)) (and ($Is refType this@@9 Tclass.SSCinBoth.Class) ($IsAlloc refType this@@9 Tclass.SSCinBoth.Class $Heap))) (<= (LitInt 0) |i#0@@9|)) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 5) 2))) anon0_correct))))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
