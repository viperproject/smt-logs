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
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass.SSCinClass.Trait? () T@U)
(declare-fun Tagclass.SSCinClass.Trait () T@U)
(declare-fun Tagclass.SSCinClass.Class? () T@U)
(declare-fun Tagclass.SSCinClass.Class () T@U)
(declare-fun tytagFamily$nat () T@U)
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
(declare-fun SSCinClass.Class.Odd (T@U T@U Int) Bool)
(declare-fun |SSCinClass.Class.Odd#canCall| (T@U Int) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.SSCinClass.Class () T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Mod (Int Int) Int)
(declare-fun SSCinClass.Class.Even (T@U T@U Int) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun $LZ () T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun |SSCinClass.Class.Even#canCall| (T@U Int) Bool)
(declare-fun implements$SSCinClass.Trait (T@U) Bool)
(declare-fun Tclass.SSCinClass.Class? () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tclass.SSCinClass.Trait? () T@U)
(declare-fun Tclass.SSCinClass.Trait () T@U)
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
(assert (distinct TBool TagBool alloc Tagclass._System.nat Tagclass.SSCinClass.Trait? Tagclass.SSCinClass.Trait Tagclass.SSCinClass.Class? Tagclass.SSCinClass.Class tytagFamily$nat tytagFamily$Trait tytagFamily$Class)
)
(assert (= (Ctor refType) 3))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly T@U) (this T@U) (|i#0| Int) ) (!  (=> (or (|SSCinClass.Class.Odd#canCall| this |i#0|) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this null)) (not true)) ($Is refType this Tclass.SSCinClass.Class)) (<= (LitInt 0) |i#0|)))) (or (= |i#0| (LitInt 0)) (= (= (Mod |i#0| (LitInt 2)) (LitInt 1)) (SSCinClass.Class.Even ($LS $LZ) this (- |i#0| 1)))))
 :qid |gitissue2500dfy.59:15|
 :skolemid |1115|
 :pattern ( (SSCinClass.Class.Odd $ly this |i#0|))
))))
(assert (= (Tag TBool) TagBool))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |906|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@0 T@U) (this@@0 T@U) (|i#0@@0| Int) ) (!  (=> (or (|SSCinClass.Class.Even#canCall| this@@0 (LitInt |i#0@@0|)) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass.SSCinClass.Class)) (<= (LitInt 0) |i#0@@0|)))) (and (=> (or (not (= (LitInt |i#0@@0|) (LitInt 0))) (not true)) (|SSCinClass.Class.Odd#canCall| this@@0 (LitInt (- |i#0@@0| 1)))) (= (SSCinClass.Class.Even ($LS $ly@@0) this@@0 (LitInt |i#0@@0|))  (or (= (LitInt |i#0@@0|) (LitInt 0)) (SSCinClass.Class.Odd ($LS $ly@@0) this@@0 (LitInt (- |i#0@@0| 1)))))))
 :qid |gitissue2500dfy.57:15|
 :weight 3
 :skolemid |1108|
 :pattern ( (SSCinClass.Class.Even ($LS $ly@@0) this@@0 (LitInt |i#0@@0|)))
))))
(assert (implements$SSCinClass.Trait Tclass.SSCinClass.Class?))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.SSCinClass.Class?)  (or (= $o null) (= (dtype $o) Tclass.SSCinClass.Class?)))
 :qid |unknown.0:0|
 :skolemid |1100|
 :pattern ( ($Is refType $o Tclass.SSCinClass.Class?))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@1 T@U) (this@@1 T@U) (|i#0@@1| Int) ) (!  (=> (or (|SSCinClass.Class.Odd#canCall| this@@1 (LitInt |i#0@@1|)) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 Tclass.SSCinClass.Class)) (<= (LitInt 0) |i#0@@1|)))) (and (=> (U_2_bool (Lit boolType (bool_2_U  (or (not (= |i#0@@1| 0)) (not true))))) (|SSCinClass.Class.Even#canCall| this@@1 (LitInt (- |i#0@@1| 1)))) (= (SSCinClass.Class.Odd ($LS $ly@@1) this@@1 (LitInt |i#0@@1|))  (and (or (not (= |i#0@@1| 0)) (not true)) (SSCinClass.Class.Even ($LS $ly@@1) this@@1 (LitInt (- |i#0@@1| 1)))))))
 :qid |gitissue2500dfy.59:15|
 :weight 3
 :skolemid |1118|
 :pattern ( (SSCinClass.Class.Odd ($LS $ly@@1) this@@1 (LitInt |i#0@@1|)))
))))
(assert (forall ((bx T@U) ($h@@0 T@U) ) (!  (=> (and ($IsAllocBox bx Tclass.SSCinClass.Class? $h@@0) ($IsGoodHeap $h@@0)) ($IsAllocBox bx Tclass.SSCinClass.Trait? $h@@0))
 :qid |unknown.0:0|
 :skolemid |1126|
 :pattern ( ($IsAllocBox bx Tclass.SSCinClass.Class? $h@@0))
)))
(assert (forall ((|c#0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass.SSCinClass.Trait $h@@1) ($IsAlloc refType |c#0| Tclass.SSCinClass.Trait? $h@@1))
 :qid |unknown.0:0|
 :skolemid |1098|
 :pattern ( ($IsAlloc refType |c#0| Tclass.SSCinClass.Trait $h@@1))
 :pattern ( ($IsAlloc refType |c#0| Tclass.SSCinClass.Trait? $h@@1))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass.SSCinClass.Class $h@@2) ($IsAlloc refType |c#0@@0| Tclass.SSCinClass.Class? $h@@2))
 :qid |unknown.0:0|
 :skolemid |1124|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.SSCinClass.Class $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.SSCinClass.Class? $h@@2))
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
(assert (forall (($o@@0 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass.SSCinClass.Trait? $h@@3)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1091|
 :pattern ( ($IsAlloc refType $o@@0 Tclass.SSCinClass.Trait? $h@@3))
)))
(assert (forall (($o@@1 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass.SSCinClass.Class? $h@@4)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1101|
 :pattern ( ($IsAlloc refType $o@@1 Tclass.SSCinClass.Class? $h@@4))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |578|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |576|
 :pattern ( (Lit T x@@3))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@2 T@U) (this@@2 T@U) (|i#0@@2| Int) ) (!  (=> (or (|SSCinClass.Class.Even#canCall| this@@2 |i#0@@2|) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 Tclass.SSCinClass.Class)) (<= (LitInt 0) |i#0@@2|)))) (and (=> (or (not (= |i#0@@2| (LitInt 0))) (not true)) (|SSCinClass.Class.Odd#canCall| this@@2 (- |i#0@@2| 1))) (= (SSCinClass.Class.Even ($LS $ly@@2) this@@2 |i#0@@2|)  (or (= |i#0@@2| (LitInt 0)) (SSCinClass.Class.Odd $ly@@2 this@@2 (- |i#0@@2| 1))))))
 :qid |gitissue2500dfy.57:15|
 :skolemid |1107|
 :pattern ( (SSCinClass.Class.Even ($LS $ly@@2) this@@2 |i#0@@2|))
))))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |587|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |905|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert (forall (($ly@@3 T@U) (this@@3 T@U) (|i#0@@3| Int) ) (! (= (SSCinClass.Class.Even ($LS $ly@@3) this@@3 |i#0@@3|) (SSCinClass.Class.Even $ly@@3 this@@3 |i#0@@3|))
 :qid |gitissue2500dfy.57:15|
 :skolemid |1102|
 :pattern ( (SSCinClass.Class.Even ($LS $ly@@3) this@@3 |i#0@@3|))
)))
(assert (forall (($ly@@4 T@U) (this@@4 T@U) (|i#0@@4| Int) ) (! (= (SSCinClass.Class.Odd ($LS $ly@@4) this@@4 |i#0@@4|) (SSCinClass.Class.Odd $ly@@4 this@@4 |i#0@@4|))
 :qid |gitissue2500dfy.59:15|
 :skolemid |1113|
 :pattern ( (SSCinClass.Class.Odd ($LS $ly@@4) this@@4 |i#0@@4|))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |600|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass.SSCinClass.Trait)  (and ($Is refType |c#0@@1| Tclass.SSCinClass.Trait?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1097|
 :pattern ( ($Is refType |c#0@@1| Tclass.SSCinClass.Trait))
 :pattern ( ($Is refType |c#0@@1| Tclass.SSCinClass.Trait?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass.SSCinClass.Class)  (and ($Is refType |c#0@@2| Tclass.SSCinClass.Class?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1123|
 :pattern ( ($Is refType |c#0@@2| Tclass.SSCinClass.Class))
 :pattern ( ($Is refType |c#0@@2| Tclass.SSCinClass.Class?))
)))
(assert (forall (($o@@2 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@2 Tclass.SSCinClass.Class? $heap) ($IsAlloc refType $o@@2 Tclass.SSCinClass.Trait? $heap))
 :qid |unknown.0:0|
 :skolemid |1128|
 :pattern ( ($IsAlloc refType $o@@2 Tclass.SSCinClass.Class? $heap))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@5 T@U) (this@@5 T@U) (|i#0@@5| Int) ) (!  (=> (or (|SSCinClass.Class.Even#canCall| (Lit refType this@@5) (LitInt |i#0@@5|)) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@5 null)) (not true)) ($Is refType this@@5 Tclass.SSCinClass.Class)) (<= (LitInt 0) |i#0@@5|)))) (and (=> (or (not (= (LitInt |i#0@@5|) (LitInt 0))) (not true)) (|SSCinClass.Class.Odd#canCall| (Lit refType this@@5) (LitInt (- |i#0@@5| 1)))) (= (SSCinClass.Class.Even ($LS $ly@@5) (Lit refType this@@5) (LitInt |i#0@@5|))  (or (= (LitInt |i#0@@5|) (LitInt 0)) (SSCinClass.Class.Odd ($LS $ly@@5) (Lit refType this@@5) (LitInt (- |i#0@@5| 1)))))))
 :qid |gitissue2500dfy.57:15|
 :weight 3
 :skolemid |1109|
 :pattern ( (SSCinClass.Class.Even ($LS $ly@@5) (Lit refType this@@5) (LitInt |i#0@@5|)))
))))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |586|
 :pattern ( ($Box T@@2 x@@5))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@6 T@U) (this@@6 T@U) (|i#0@@6| Int) ) (!  (=> (or (|SSCinClass.Class.Odd#canCall| this@@6 |i#0@@6|) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@6 null)) (not true)) ($Is refType this@@6 Tclass.SSCinClass.Class)) (<= (LitInt 0) |i#0@@6|)))) (and (=> (or (not (= |i#0@@6| 0)) (not true)) (|SSCinClass.Class.Even#canCall| this@@6 (- |i#0@@6| 1))) (= (SSCinClass.Class.Odd ($LS $ly@@6) this@@6 |i#0@@6|)  (and (or (not (= |i#0@@6| 0)) (not true)) (SSCinClass.Class.Even $ly@@6 this@@6 (- |i#0@@6| 1))))))
 :qid |gitissue2500dfy.59:15|
 :skolemid |1117|
 :pattern ( (SSCinClass.Class.Odd ($LS $ly@@6) this@@6 |i#0@@6|))
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
 :skolemid |2393|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))
)))
(assert (forall ((x@@6 Int) (y Int) ) (! (= (Mod x@@6 y) (mod x@@6 y))
 :qid |DafnyPreludebpl.1649:14|
 :skolemid |901|
 :pattern ( (Mod x@@6 y))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@7 T@U) (this@@7 T@U) (|i#0@@7| Int) ) (!  (=> (or (|SSCinClass.Class.Odd#canCall| (Lit refType this@@7) (LitInt |i#0@@7|)) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@7 null)) (not true)) ($Is refType this@@7 Tclass.SSCinClass.Class)) (<= (LitInt 0) |i#0@@7|)))) (and (=> (U_2_bool (Lit boolType (bool_2_U  (or (not (= |i#0@@7| 0)) (not true))))) (|SSCinClass.Class.Even#canCall| (Lit refType this@@7) (LitInt (- |i#0@@7| 1)))) (= (SSCinClass.Class.Odd ($LS $ly@@7) (Lit refType this@@7) (LitInt |i#0@@7|)) (U_2_bool (Lit boolType (bool_2_U  (and (or (not (= |i#0@@7| 0)) (not true)) (SSCinClass.Class.Even ($LS $ly@@7) (Lit refType this@@7) (LitInt (- |i#0@@7| 1))))))))))
 :qid |gitissue2500dfy.59:15|
 :weight 3
 :skolemid |1119|
 :pattern ( (SSCinClass.Class.Odd ($LS $ly@@7) (Lit refType this@@7) (LitInt |i#0@@7|)))
))))
(assert (forall (($o@@4 T@U) ) (!  (=> ($Is refType $o@@4 Tclass.SSCinClass.Class?) ($Is refType $o@@4 Tclass.SSCinClass.Trait?))
 :qid |unknown.0:0|
 :skolemid |1127|
 :pattern ( ($Is refType $o@@4 Tclass.SSCinClass.Class?))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass.SSCinClass.Trait?) Tagclass.SSCinClass.Trait?))
(assert (= (TagFamily Tclass.SSCinClass.Trait?) tytagFamily$Trait))
(assert (= (Tag Tclass.SSCinClass.Trait) Tagclass.SSCinClass.Trait))
(assert (= (TagFamily Tclass.SSCinClass.Trait) tytagFamily$Trait))
(assert (= (Tag Tclass.SSCinClass.Class?) Tagclass.SSCinClass.Class?))
(assert (= (TagFamily Tclass.SSCinClass.Class?) tytagFamily$Class))
(assert (= (Tag Tclass.SSCinClass.Class) Tagclass.SSCinClass.Class))
(assert (= (TagFamily Tclass.SSCinClass.Class) tytagFamily$Class))
(assert (forall (($o@@5 T@U) ) (! (= ($Is refType $o@@5 Tclass.SSCinClass.Trait?)  (or (= $o@@5 null) (implements$SSCinClass.Trait (dtype $o@@5))))
 :qid |unknown.0:0|
 :skolemid |1090|
 :pattern ( ($Is refType $o@@5 Tclass.SSCinClass.Trait?))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |579|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@8)) (Lit BoxType ($Box T@@3 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |577|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@8)))
)))
(assert (forall ((h@@0 T@U) (v@@0 T@U) ) (! ($IsAlloc boolType v@@0 TBool h@@0)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |624|
 :pattern ( ($IsAlloc boolType v@@0 TBool h@@0))
)))
(assert (forall ((v@@1 T@U) ) (! ($Is boolType v@@1 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |603|
 :pattern ( ($Is boolType v@@1 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |i#0@@8| () Int)
(declare-fun this@@8 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |##i#0@0| () Int)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$SSCinClass.Class.Even)
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
 (=> (= (ControlFlow 0 0) 9) (let ((anon5_correct true))
(let ((anon8_Else_correct  (=> (and (= |i#0@@8| (LitInt 0)) (= (ControlFlow 0 7) 2)) anon5_correct)))
(let ((anon8_Then_correct  (=> (and (or (not (= |i#0@@8| (LitInt 0))) (not true)) ($IsAllocBox ($Box refType this@@8) Tclass.SSCinClass.Class? $Heap)) (and (=> (= (ControlFlow 0 3) (- 0 6)) ($Is intType (int_2_U (- |i#0@@8| 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (- |i#0@@8| 1)) Tclass._System.nat) (=> (and (= |##i#0@0| (- |i#0@@8| 1)) ($IsAlloc intType (int_2_U |##i#0@0|) Tclass._System.nat $Heap)) (and (=> (= (ControlFlow 0 3) (- 0 5)) (or (<= 0 |i#0@@8|) (= |##i#0@0| |i#0@@8|))) (=> (or (<= 0 |i#0@@8|) (= |##i#0@0| |i#0@@8|)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (< |##i#0@0| |i#0@@8|)) (=> (< |##i#0@0| |i#0@@8|) (=> (and (|SSCinClass.Class.Odd#canCall| this@@8 (- |i#0@@8| 1)) (= (ControlFlow 0 3) 2)) anon5_correct)))))))))))
(let ((anon7_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 8) 1) anon7_Then_correct) (=> (= (ControlFlow 0 8) 3) anon8_Then_correct)) (=> (= (ControlFlow 0 8) 7) anon8_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (or (not (= this@@8 null)) (not true)) (and ($Is refType this@@8 Tclass.SSCinClass.Class) ($IsAlloc refType this@@8 Tclass.SSCinClass.Class $Heap))) (<= (LitInt 0) |i#0@@8|)) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 9) 8))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
