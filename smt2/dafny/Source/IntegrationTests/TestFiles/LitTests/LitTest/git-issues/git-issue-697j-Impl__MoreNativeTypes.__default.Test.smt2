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
(declare-fun TagSet () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass.MoreNativeTypes.Int32a () T@U)
(declare-fun Tagclass.MoreNativeTypes.Int32b () T@U)
(declare-fun Tagclass.MoreNativeTypes.Int32c () T@U)
(declare-fun Tagclass.MoreNativeTypes.Int32d () T@U)
(declare-fun Tagclass.MoreNativeTypes.Int32e () T@U)
(declare-fun Tagclass.MoreNativeTypes.Int32f () T@U)
(declare-fun tytagFamily$Int32a () T@U)
(declare-fun tytagFamily$Int32b () T@U)
(declare-fun tytagFamily$Int32c () T@U)
(declare-fun tytagFamily$Int32d () T@U)
(declare-fun tytagFamily$Int32e () T@U)
(declare-fun tytagFamily$Int32f () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass.MoreNativeTypes.Int32a () T@U)
(declare-fun Tclass.MoreNativeTypes.Int32b () T@U)
(declare-fun Tclass.MoreNativeTypes.Int32c () T@U)
(declare-fun Tclass.MoreNativeTypes.Int32d () T@U)
(declare-fun Tclass.MoreNativeTypes.Int32e () T@U)
(declare-fun Tclass.MoreNativeTypes.Int32f () T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |lambda#1| (T@U Int Int) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
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
(assert (distinct TagSet alloc Tagclass.MoreNativeTypes.Int32a Tagclass.MoreNativeTypes.Int32b Tagclass.MoreNativeTypes.Int32c Tagclass.MoreNativeTypes.Int32d Tagclass.MoreNativeTypes.Int32e Tagclass.MoreNativeTypes.Int32f tytagFamily$Int32a tytagFamily$Int32b tytagFamily$Int32c tytagFamily$Int32d tytagFamily$Int32e tytagFamily$Int32f)
)
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass.MoreNativeTypes.Int32a $h)
 :qid |unknown.0:0|
 :skolemid |3584|
 :pattern ( ($IsAlloc intType |x#0| Tclass.MoreNativeTypes.Int32a $h))
)))
(assert (forall ((|x#0@@0| T@U) ($h@@0 T@U) ) (! ($IsAlloc intType |x#0@@0| Tclass.MoreNativeTypes.Int32b $h@@0)
 :qid |unknown.0:0|
 :skolemid |3586|
 :pattern ( ($IsAlloc intType |x#0@@0| Tclass.MoreNativeTypes.Int32b $h@@0))
)))
(assert (forall ((|x#0@@1| T@U) ($h@@1 T@U) ) (! ($IsAlloc intType |x#0@@1| Tclass.MoreNativeTypes.Int32c $h@@1)
 :qid |unknown.0:0|
 :skolemid |3588|
 :pattern ( ($IsAlloc intType |x#0@@1| Tclass.MoreNativeTypes.Int32c $h@@1))
)))
(assert (forall ((|x#0@@2| T@U) ($h@@2 T@U) ) (! ($IsAlloc intType |x#0@@2| Tclass.MoreNativeTypes.Int32d $h@@2)
 :qid |unknown.0:0|
 :skolemid |3590|
 :pattern ( ($IsAlloc intType |x#0@@2| Tclass.MoreNativeTypes.Int32d $h@@2))
)))
(assert (forall ((|x#0@@3| T@U) ($h@@3 T@U) ) (! ($IsAlloc intType |x#0@@3| Tclass.MoreNativeTypes.Int32e $h@@3)
 :qid |unknown.0:0|
 :skolemid |3592|
 :pattern ( ($IsAlloc intType |x#0@@3| Tclass.MoreNativeTypes.Int32e $h@@3))
)))
(assert (forall ((|x#0@@4| T@U) ($h@@4 T@U) ) (! ($IsAlloc intType |x#0@@4| Tclass.MoreNativeTypes.Int32f $h@@4)
 :qid |unknown.0:0|
 :skolemid |3594|
 :pattern ( ($IsAlloc intType |x#0@@4| Tclass.MoreNativeTypes.Int32f $h@@4))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |3106|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |3104|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |3115|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((|x#0@@5| T@U) ) (! (= ($Is intType |x#0@@5| Tclass.MoreNativeTypes.Int32c)  (and (and (<= (LitInt (- 0 2147483648)) (U_2_int |x#0@@5|)) (< (U_2_int |x#0@@5|) 2147483648)) (or (not (= (U_2_int |x#0@@5|) 3)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3587|
 :pattern ( ($Is intType |x#0@@5| Tclass.MoreNativeTypes.Int32c))
)))
(assert (forall ((|x#0@@6| T@U) ) (! (= ($Is intType |x#0@@6| Tclass.MoreNativeTypes.Int32d)  (and (and (<= (LitInt (- 0 2147483648)) (U_2_int |x#0@@6|)) (< (U_2_int |x#0@@6|) 2147483648)) (or (not (= (U_2_int |x#0@@6|) 3)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3589|
 :pattern ( ($Is intType |x#0@@6| Tclass.MoreNativeTypes.Int32d))
)))
(assert (forall ((|x#0@@7| T@U) ) (! (= ($Is intType |x#0@@7| Tclass.MoreNativeTypes.Int32e)  (and (and (<= (LitInt (- 0 2147483648)) (U_2_int |x#0@@7|)) (< (U_2_int |x#0@@7|) 2147483648)) (or (not (= (U_2_int |x#0@@7|) 3)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3591|
 :pattern ( ($Is intType |x#0@@7| Tclass.MoreNativeTypes.Int32e))
)))
(assert (forall ((|x#0@@8| T@U) ) (! (= ($Is intType |x#0@@8| Tclass.MoreNativeTypes.Int32f)  (and (and (<= (LitInt (- 0 2147483648)) (U_2_int |x#0@@8|)) (< (U_2_int |x#0@@8|) 2147483648)) (or (not (= (U_2_int |x#0@@8|) 3)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3593|
 :pattern ( ($Is intType |x#0@@8| Tclass.MoreNativeTypes.Int32f))
)))
(assert  (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 3)))
(assert (forall ((m@@1 T@U) (bx T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx) (U_2_bool (MapType0Select BoxType boolType m@@1 bx)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |3242|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx))
)))
(assert (= (Ctor SetType) 4))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |3135|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |3136|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |3128|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass.MoreNativeTypes.Int32a) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) Tclass.MoreNativeTypes.Int32a)))
 :qid |unknown.0:0|
 :skolemid |3571|
 :pattern ( ($IsBox bx@@1 Tclass.MoreNativeTypes.Int32a))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass.MoreNativeTypes.Int32b) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) Tclass.MoreNativeTypes.Int32b)))
 :qid |unknown.0:0|
 :skolemid |3572|
 :pattern ( ($IsBox bx@@2 Tclass.MoreNativeTypes.Int32b))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass.MoreNativeTypes.Int32c) (and (= ($Box intType ($Unbox intType bx@@3)) bx@@3) ($Is intType ($Unbox intType bx@@3) Tclass.MoreNativeTypes.Int32c)))
 :qid |unknown.0:0|
 :skolemid |3573|
 :pattern ( ($IsBox bx@@3 Tclass.MoreNativeTypes.Int32c))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass.MoreNativeTypes.Int32d) (and (= ($Box intType ($Unbox intType bx@@4)) bx@@4) ($Is intType ($Unbox intType bx@@4) Tclass.MoreNativeTypes.Int32d)))
 :qid |unknown.0:0|
 :skolemid |3574|
 :pattern ( ($IsBox bx@@4 Tclass.MoreNativeTypes.Int32d))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass.MoreNativeTypes.Int32e) (and (= ($Box intType ($Unbox intType bx@@5)) bx@@5) ($Is intType ($Unbox intType bx@@5) Tclass.MoreNativeTypes.Int32e)))
 :qid |unknown.0:0|
 :skolemid |3575|
 :pattern ( ($IsBox bx@@5 Tclass.MoreNativeTypes.Int32e))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass.MoreNativeTypes.Int32f) (and (= ($Box intType ($Unbox intType bx@@6)) bx@@6) ($Is intType ($Unbox intType bx@@6) Tclass.MoreNativeTypes.Int32f)))
 :qid |unknown.0:0|
 :skolemid |3576|
 :pattern ( ($IsBox bx@@6 Tclass.MoreNativeTypes.Int32f))
)))
(assert (forall ((|l#0| T@U) (|l#1| Int) (|l#2| Int) (|$y#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#1| |l#0| |l#1| |l#2|) |$y#0|))  (and ($IsBox |$y#0| |l#0|) (and (<= |l#1| (U_2_int ($Unbox intType |$y#0|))) (< (U_2_int ($Unbox intType |$y#0|)) |l#2|))))
 :qid |gitissue697jdfy.230:11|
 :skolemid |5351|
 :pattern ( (MapType0Select BoxType boolType (|lambda#1| |l#0| |l#1| |l#2|) |$y#0|))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |3127|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((v@@2 T@U) (t0@@1 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0) (forall ((bx@@7 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@7) ($IsAllocBox bx@@7 t0@@1 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |3156|
 :pattern ( (|Set#IsMember| v@@2 bx@@7))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |3157|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSet (TSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |3090|
 :pattern ( (TSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSet t@@2)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |3091|
 :pattern ( (TSet t@@2))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |3114|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert  (and (and (and (and (and (and (forall ((t0@@2 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@2 t1@@0 t2 (MapType1Store t0@@2 t1@@0 t2 m@@2 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@3 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@3 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@3 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@4 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@4 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))) (= (Ctor refType) 5)) (= (Ctor FieldType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2@@0| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2@@0| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0@@0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@0| $o) |l#2@@0|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |5350|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2@@0| |l#3|) $o $f))
)))
(assert (forall ((bx@@8 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@8 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@8)) bx@@8) ($Is SetType ($Unbox SetType bx@@8) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |3121|
 :pattern ( ($IsBox bx@@8 (TSet t@@3)))
)))
(assert (= (Tag Tclass.MoreNativeTypes.Int32a) Tagclass.MoreNativeTypes.Int32a))
(assert (= (TagFamily Tclass.MoreNativeTypes.Int32a) tytagFamily$Int32a))
(assert (= (Tag Tclass.MoreNativeTypes.Int32b) Tagclass.MoreNativeTypes.Int32b))
(assert (= (TagFamily Tclass.MoreNativeTypes.Int32b) tytagFamily$Int32b))
(assert (= (Tag Tclass.MoreNativeTypes.Int32c) Tagclass.MoreNativeTypes.Int32c))
(assert (= (TagFamily Tclass.MoreNativeTypes.Int32c) tytagFamily$Int32c))
(assert (= (Tag Tclass.MoreNativeTypes.Int32d) Tagclass.MoreNativeTypes.Int32d))
(assert (= (TagFamily Tclass.MoreNativeTypes.Int32d) tytagFamily$Int32d))
(assert (= (Tag Tclass.MoreNativeTypes.Int32e) Tagclass.MoreNativeTypes.Int32e))
(assert (= (TagFamily Tclass.MoreNativeTypes.Int32e) tytagFamily$Int32e))
(assert (= (Tag Tclass.MoreNativeTypes.Int32f) Tagclass.MoreNativeTypes.Int32f))
(assert (= (TagFamily Tclass.MoreNativeTypes.Int32f) tytagFamily$Int32f))
(assert (forall ((|x#0@@9| T@U) ) (! (= ($Is intType |x#0@@9| Tclass.MoreNativeTypes.Int32a)  (and (<= (LitInt (- 0 2147483648)) (U_2_int |x#0@@9|)) (< (U_2_int |x#0@@9|) 2147483648)))
 :qid |unknown.0:0|
 :skolemid |3583|
 :pattern ( ($Is intType |x#0@@9| Tclass.MoreNativeTypes.Int32a))
)))
(assert (forall ((|x#0@@10| T@U) ) (! (= ($Is intType |x#0@@10| Tclass.MoreNativeTypes.Int32b)  (and (<= (LitInt (- 0 2147483648)) (U_2_int |x#0@@10|)) (< (U_2_int |x#0@@10|) 2147483648)))
 :qid |unknown.0:0|
 :skolemid |3585|
 :pattern ( ($Is intType |x#0@@10| Tclass.MoreNativeTypes.Int32b))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |3107|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |3105|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |y#10@0| () Int)
(declare-fun |newtype$check#11@0| () Int)
(declare-fun |newtype$check#10@0| () Int)
(declare-fun |r4#0@1| () T@U)
(declare-fun |y#8@0| () Int)
(declare-fun |newtype$check#9@0| () Int)
(declare-fun |newtype$check#8@0| () Int)
(declare-fun |r3#0@1| () T@U)
(declare-fun |y#6@0| () Int)
(declare-fun |newtype$check#7@0| () Int)
(declare-fun |newtype$check#6@0| () Int)
(declare-fun |r2#0@1| () T@U)
(declare-fun |y#4@0| () Int)
(declare-fun |newtype$check#5@0| () Int)
(declare-fun |newtype$check#4@0| () Int)
(declare-fun |r1#0@1| () T@U)
(declare-fun |r2#0@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun |r3#0@0| () T@U)
(declare-fun |r4#0@0| () T@U)
(declare-fun |r5#0@0| () T@U)
(declare-fun |y#2@0| () Int)
(declare-fun |newtype$check#3@0| () Int)
(declare-fun |newtype$check#2@0| () Int)
(declare-fun |r0#0@1| () T@U)
(declare-fun |y#0@0| () Int)
(declare-fun |newtype$check#1@0| () Int)
(declare-fun |newtype$check#0@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun |r0#0@0| () T@U)
(declare-fun |r1#0@0| () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |r0#0| () T@U)
(declare-fun |r1#0| () T@U)
(declare-fun |r2#0| () T@U)
(declare-fun |r3#0| () T@U)
(declare-fun |r4#0| () T@U)
(declare-fun |r5#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$MoreNativeTypes.__default.Test)
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
 (=> (= (ControlFlow 0 0) 72) (let ((anon30_correct true))
(let ((anon48_Else_correct  (=> (and (not (and (<= (LitInt 2) |y#10@0|) (< |y#10@0| 6))) (= (ControlFlow 0 4) 1)) anon30_correct)))
(let ((anon48_Then_correct  (=> (and (and (<= (LitInt 2) |y#10@0|) (< |y#10@0| 6)) (= (ControlFlow 0 3) 1)) anon30_correct)))
(let ((anon47_Else_correct  (=> (< |y#10@0| (LitInt 2)) (and (=> (= (ControlFlow 0 9) 3) anon48_Then_correct) (=> (= (ControlFlow 0 9) 4) anon48_Else_correct)))))
(let ((anon47_Then_correct  (=> (and (<= (LitInt 2) |y#10@0|) (= |newtype$check#11@0| (LitInt 6))) (and (=> (= (ControlFlow 0 5) (- 0 8)) (<= (LitInt (- 0 2147483648)) |newtype$check#11@0|)) (=> (<= (LitInt (- 0 2147483648)) |newtype$check#11@0|) (and (=> (= (ControlFlow 0 5) (- 0 7)) (< |newtype$check#11@0| 2147483648)) (=> (< |newtype$check#11@0| 2147483648) (and (=> (= (ControlFlow 0 5) (- 0 6)) (or (not (= |newtype$check#11@0| 3)) (not true))) (=> (or (not (= |newtype$check#11@0| 3)) (not true)) (and (=> (= (ControlFlow 0 5) 3) anon48_Then_correct) (=> (= (ControlFlow 0 5) 4) anon48_Else_correct)))))))))))
(let ((anon46_Then_correct  (=> (and (and (and (<= (LitInt (- 0 2147483648)) |y#10@0|) (< |y#10@0| 2147483648)) (or (not (= |y#10@0| 3)) (not true))) (= |newtype$check#10@0| (LitInt 2))) (and (=> (= (ControlFlow 0 10) (- 0 13)) (<= (LitInt (- 0 2147483648)) |newtype$check#10@0|)) (=> (<= (LitInt (- 0 2147483648)) |newtype$check#10@0|) (and (=> (= (ControlFlow 0 10) (- 0 12)) (< |newtype$check#10@0| 2147483648)) (=> (< |newtype$check#10@0| 2147483648) (and (=> (= (ControlFlow 0 10) (- 0 11)) (or (not (= |newtype$check#10@0| 3)) (not true))) (=> (or (not (= |newtype$check#10@0| 3)) (not true)) (and (=> (= (ControlFlow 0 10) 5) anon47_Then_correct) (=> (= (ControlFlow 0 10) 9) anon47_Else_correct)))))))))))
(let ((anon46_Else_correct  (=> (and (not (and (and (<= (LitInt (- 0 2147483648)) |y#10@0|) (< |y#10@0| 2147483648)) (or (not (= |y#10@0| 3)) (not true)))) (= (ControlFlow 0 2) 1)) anon30_correct)))
(let ((anon25_correct  (=> (= |r4#0@1| (|Set#FromBoogieMap| (|lambda#1| Tclass.MoreNativeTypes.Int32e (LitInt 2) 6))) (and (=> (= (ControlFlow 0 14) 10) anon46_Then_correct) (=> (= (ControlFlow 0 14) 2) anon46_Else_correct)))))
(let ((anon45_Else_correct  (=> (and (not (and (<= (LitInt 2) |y#8@0|) (< |y#8@0| 6))) (= (ControlFlow 0 17) 14)) anon25_correct)))
(let ((anon45_Then_correct  (=> (and (and (<= (LitInt 2) |y#8@0|) (< |y#8@0| 6)) (= (ControlFlow 0 16) 14)) anon25_correct)))
(let ((anon44_Else_correct  (=> (< |y#8@0| (LitInt 2)) (and (=> (= (ControlFlow 0 22) 16) anon45_Then_correct) (=> (= (ControlFlow 0 22) 17) anon45_Else_correct)))))
(let ((anon44_Then_correct  (=> (and (<= (LitInt 2) |y#8@0|) (= |newtype$check#9@0| (LitInt 6))) (and (=> (= (ControlFlow 0 18) (- 0 21)) (<= (LitInt (- 0 2147483648)) |newtype$check#9@0|)) (=> (<= (LitInt (- 0 2147483648)) |newtype$check#9@0|) (and (=> (= (ControlFlow 0 18) (- 0 20)) (< |newtype$check#9@0| 2147483648)) (=> (< |newtype$check#9@0| 2147483648) (and (=> (= (ControlFlow 0 18) (- 0 19)) (or (not (= |newtype$check#9@0| 3)) (not true))) (=> (or (not (= |newtype$check#9@0| 3)) (not true)) (and (=> (= (ControlFlow 0 18) 16) anon45_Then_correct) (=> (= (ControlFlow 0 18) 17) anon45_Else_correct)))))))))))
(let ((anon43_Then_correct  (=> (and (and (and (<= (LitInt (- 0 2147483648)) |y#8@0|) (< |y#8@0| 2147483648)) (or (not (= |y#8@0| 3)) (not true))) (= |newtype$check#8@0| (LitInt 2))) (and (=> (= (ControlFlow 0 23) (- 0 26)) (<= (LitInt (- 0 2147483648)) |newtype$check#8@0|)) (=> (<= (LitInt (- 0 2147483648)) |newtype$check#8@0|) (and (=> (= (ControlFlow 0 23) (- 0 25)) (< |newtype$check#8@0| 2147483648)) (=> (< |newtype$check#8@0| 2147483648) (and (=> (= (ControlFlow 0 23) (- 0 24)) (or (not (= |newtype$check#8@0| 3)) (not true))) (=> (or (not (= |newtype$check#8@0| 3)) (not true)) (and (=> (= (ControlFlow 0 23) 18) anon44_Then_correct) (=> (= (ControlFlow 0 23) 22) anon44_Else_correct)))))))))))
(let ((anon43_Else_correct  (=> (and (not (and (and (<= (LitInt (- 0 2147483648)) |y#8@0|) (< |y#8@0| 2147483648)) (or (not (= |y#8@0| 3)) (not true)))) (= (ControlFlow 0 15) 14)) anon25_correct)))
(let ((anon20_correct  (=> (= |r3#0@1| (|Set#FromBoogieMap| (|lambda#1| Tclass.MoreNativeTypes.Int32d (LitInt 2) 6))) (and (=> (= (ControlFlow 0 27) 23) anon43_Then_correct) (=> (= (ControlFlow 0 27) 15) anon43_Else_correct)))))
(let ((anon42_Else_correct  (=> (and (not (and (<= (LitInt 2) |y#6@0|) (< |y#6@0| 6))) (= (ControlFlow 0 30) 27)) anon20_correct)))
(let ((anon42_Then_correct  (=> (and (and (<= (LitInt 2) |y#6@0|) (< |y#6@0| 6)) (= (ControlFlow 0 29) 27)) anon20_correct)))
(let ((anon41_Else_correct  (=> (< |y#6@0| (LitInt 2)) (and (=> (= (ControlFlow 0 34) 29) anon42_Then_correct) (=> (= (ControlFlow 0 34) 30) anon42_Else_correct)))))
(let ((anon41_Then_correct  (=> (and (<= (LitInt 2) |y#6@0|) (= |newtype$check#7@0| (LitInt 6))) (and (=> (= (ControlFlow 0 31) (- 0 33)) (<= (LitInt (- 0 2147483648)) |newtype$check#7@0|)) (=> (<= (LitInt (- 0 2147483648)) |newtype$check#7@0|) (and (=> (= (ControlFlow 0 31) (- 0 32)) (< |newtype$check#7@0| 2147483648)) (=> (< |newtype$check#7@0| 2147483648) (and (=> (= (ControlFlow 0 31) 29) anon42_Then_correct) (=> (= (ControlFlow 0 31) 30) anon42_Else_correct)))))))))
(let ((anon40_Then_correct  (=> (and (and (and (<= (LitInt (- 0 2147483648)) |y#6@0|) (< |y#6@0| 2147483648)) (or (not (= |y#6@0| 3)) (not true))) (= |newtype$check#6@0| (LitInt 2))) (and (=> (= (ControlFlow 0 35) (- 0 37)) (<= (LitInt (- 0 2147483648)) |newtype$check#6@0|)) (=> (<= (LitInt (- 0 2147483648)) |newtype$check#6@0|) (and (=> (= (ControlFlow 0 35) (- 0 36)) (< |newtype$check#6@0| 2147483648)) (=> (< |newtype$check#6@0| 2147483648) (and (=> (= (ControlFlow 0 35) 31) anon41_Then_correct) (=> (= (ControlFlow 0 35) 34) anon41_Else_correct)))))))))
(let ((anon40_Else_correct  (=> (and (not (and (and (<= (LitInt (- 0 2147483648)) |y#6@0|) (< |y#6@0| 2147483648)) (or (not (= |y#6@0| 3)) (not true)))) (= (ControlFlow 0 28) 27)) anon20_correct)))
(let ((anon15_correct  (=> (= |r2#0@1| (|Set#FromBoogieMap| (|lambda#1| Tclass.MoreNativeTypes.Int32c (LitInt 2) 6))) (and (=> (= (ControlFlow 0 38) 35) anon40_Then_correct) (=> (= (ControlFlow 0 38) 28) anon40_Else_correct)))))
(let ((anon39_Else_correct  (=> (and (not (and (<= (LitInt 2) |y#4@0|) (< |y#4@0| 6))) (= (ControlFlow 0 41) 38)) anon15_correct)))
(let ((anon39_Then_correct  (=> (and (and (<= (LitInt 2) |y#4@0|) (< |y#4@0| 6)) (= (ControlFlow 0 40) 38)) anon15_correct)))
(let ((anon38_Else_correct  (=> (< |y#4@0| (LitInt 2)) (and (=> (= (ControlFlow 0 45) 40) anon39_Then_correct) (=> (= (ControlFlow 0 45) 41) anon39_Else_correct)))))
(let ((anon38_Then_correct  (=> (and (<= (LitInt 2) |y#4@0|) (= |newtype$check#5@0| (LitInt 6))) (and (=> (= (ControlFlow 0 42) (- 0 44)) (<= (LitInt (- 0 2147483648)) |newtype$check#5@0|)) (=> (<= (LitInt (- 0 2147483648)) |newtype$check#5@0|) (and (=> (= (ControlFlow 0 42) (- 0 43)) (< |newtype$check#5@0| 2147483648)) (=> (< |newtype$check#5@0| 2147483648) (and (=> (= (ControlFlow 0 42) 40) anon39_Then_correct) (=> (= (ControlFlow 0 42) 41) anon39_Else_correct)))))))))
(let ((anon37_Then_correct  (=> (and (and (and (<= (LitInt (- 0 2147483648)) |y#4@0|) (< |y#4@0| 2147483648)) (or (not (= |y#4@0| 3)) (not true))) (= |newtype$check#4@0| (LitInt 2))) (and (=> (= (ControlFlow 0 46) (- 0 48)) (<= (LitInt (- 0 2147483648)) |newtype$check#4@0|)) (=> (<= (LitInt (- 0 2147483648)) |newtype$check#4@0|) (and (=> (= (ControlFlow 0 46) (- 0 47)) (< |newtype$check#4@0| 2147483648)) (=> (< |newtype$check#4@0| 2147483648) (and (=> (= (ControlFlow 0 46) 42) anon38_Then_correct) (=> (= (ControlFlow 0 46) 45) anon38_Else_correct)))))))))
(let ((anon37_Else_correct  (=> (and (not (and (and (<= (LitInt (- 0 2147483648)) |y#4@0|) (< |y#4@0| 2147483648)) (or (not (= |y#4@0| 3)) (not true)))) (= (ControlFlow 0 39) 38)) anon15_correct)))
(let ((anon10_correct  (=> (= |r1#0@1| (|Set#FromBoogieMap| (|lambda#1| Tclass.MoreNativeTypes.Int32b (LitInt 2) 6))) (=> (and (and (and ($Is SetType |r2#0@0| (TSet Tclass.MoreNativeTypes.Int32c)) ($IsAlloc SetType |r2#0@0| (TSet Tclass.MoreNativeTypes.Int32c) $Heap)) (and ($Is SetType |r3#0@0| (TSet Tclass.MoreNativeTypes.Int32d)) ($IsAlloc SetType |r3#0@0| (TSet Tclass.MoreNativeTypes.Int32d) $Heap))) (and (and ($Is SetType |r4#0@0| (TSet Tclass.MoreNativeTypes.Int32e)) ($IsAlloc SetType |r4#0@0| (TSet Tclass.MoreNativeTypes.Int32e) $Heap)) (and ($Is SetType |r5#0@0| (TSet Tclass.MoreNativeTypes.Int32f)) ($IsAlloc SetType |r5#0@0| (TSet Tclass.MoreNativeTypes.Int32f) $Heap)))) (and (=> (= (ControlFlow 0 49) 46) anon37_Then_correct) (=> (= (ControlFlow 0 49) 39) anon37_Else_correct))))))
(let ((anon36_Else_correct  (=> (and (not (and (<= (LitInt 2) |y#2@0|) (< |y#2@0| 6))) (= (ControlFlow 0 52) 49)) anon10_correct)))
(let ((anon36_Then_correct  (=> (and (and (<= (LitInt 2) |y#2@0|) (< |y#2@0| 6)) (= (ControlFlow 0 51) 49)) anon10_correct)))
(let ((anon35_Else_correct  (=> (< |y#2@0| (LitInt 2)) (and (=> (= (ControlFlow 0 56) 51) anon36_Then_correct) (=> (= (ControlFlow 0 56) 52) anon36_Else_correct)))))
(let ((anon35_Then_correct  (=> (and (<= (LitInt 2) |y#2@0|) (= |newtype$check#3@0| (LitInt 6))) (and (=> (= (ControlFlow 0 53) (- 0 55)) (<= (LitInt (- 0 2147483648)) |newtype$check#3@0|)) (=> (<= (LitInt (- 0 2147483648)) |newtype$check#3@0|) (and (=> (= (ControlFlow 0 53) (- 0 54)) (< |newtype$check#3@0| 2147483648)) (=> (< |newtype$check#3@0| 2147483648) (and (=> (= (ControlFlow 0 53) 51) anon36_Then_correct) (=> (= (ControlFlow 0 53) 52) anon36_Else_correct)))))))))
(let ((anon34_Then_correct  (=> (and (and (<= (LitInt (- 0 2147483648)) |y#2@0|) (< |y#2@0| 2147483648)) (= |newtype$check#2@0| (LitInt 2))) (and (=> (= (ControlFlow 0 57) (- 0 59)) (<= (LitInt (- 0 2147483648)) |newtype$check#2@0|)) (=> (<= (LitInt (- 0 2147483648)) |newtype$check#2@0|) (and (=> (= (ControlFlow 0 57) (- 0 58)) (< |newtype$check#2@0| 2147483648)) (=> (< |newtype$check#2@0| 2147483648) (and (=> (= (ControlFlow 0 57) 53) anon35_Then_correct) (=> (= (ControlFlow 0 57) 56) anon35_Else_correct)))))))))
(let ((anon34_Else_correct  (=> (and (not (and (<= (LitInt (- 0 2147483648)) |y#2@0|) (< |y#2@0| 2147483648))) (= (ControlFlow 0 50) 49)) anon10_correct)))
(let ((anon5_correct  (=> (= |r0#0@1| (|Set#FromBoogieMap| (|lambda#1| Tclass.MoreNativeTypes.Int32a (LitInt 2) 6))) (and (=> (= (ControlFlow 0 60) 57) anon34_Then_correct) (=> (= (ControlFlow 0 60) 50) anon34_Else_correct)))))
(let ((anon33_Else_correct  (=> (and (not (and (<= (LitInt 2) |y#0@0|) (< |y#0@0| 6))) (= (ControlFlow 0 63) 60)) anon5_correct)))
(let ((anon33_Then_correct  (=> (and (and (<= (LitInt 2) |y#0@0|) (< |y#0@0| 6)) (= (ControlFlow 0 62) 60)) anon5_correct)))
(let ((anon32_Else_correct  (=> (< |y#0@0| (LitInt 2)) (and (=> (= (ControlFlow 0 67) 62) anon33_Then_correct) (=> (= (ControlFlow 0 67) 63) anon33_Else_correct)))))
(let ((anon32_Then_correct  (=> (and (<= (LitInt 2) |y#0@0|) (= |newtype$check#1@0| (LitInt 6))) (and (=> (= (ControlFlow 0 64) (- 0 66)) (<= (LitInt (- 0 2147483648)) |newtype$check#1@0|)) (=> (<= (LitInt (- 0 2147483648)) |newtype$check#1@0|) (and (=> (= (ControlFlow 0 64) (- 0 65)) (< |newtype$check#1@0| 2147483648)) (=> (< |newtype$check#1@0| 2147483648) (and (=> (= (ControlFlow 0 64) 62) anon33_Then_correct) (=> (= (ControlFlow 0 64) 63) anon33_Else_correct)))))))))
(let ((anon31_Then_correct  (=> (and (and (<= (LitInt (- 0 2147483648)) |y#0@0|) (< |y#0@0| 2147483648)) (= |newtype$check#0@0| (LitInt 2))) (and (=> (= (ControlFlow 0 68) (- 0 70)) (<= (LitInt (- 0 2147483648)) |newtype$check#0@0|)) (=> (<= (LitInt (- 0 2147483648)) |newtype$check#0@0|) (and (=> (= (ControlFlow 0 68) (- 0 69)) (< |newtype$check#0@0| 2147483648)) (=> (< |newtype$check#0@0| 2147483648) (and (=> (= (ControlFlow 0 68) 64) anon32_Then_correct) (=> (= (ControlFlow 0 68) 67) anon32_Else_correct)))))))))
(let ((anon31_Else_correct  (=> (and (not (and (<= (LitInt (- 0 2147483648)) |y#0@0|) (< |y#0@0| 2147483648))) (= (ControlFlow 0 61) 60)) anon5_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and ($Is SetType |r0#0@0| (TSet Tclass.MoreNativeTypes.Int32a)) ($IsAlloc SetType |r0#0@0| (TSet Tclass.MoreNativeTypes.Int32a) $Heap)) (and ($Is SetType |r1#0@0| (TSet Tclass.MoreNativeTypes.Int32b)) ($IsAlloc SetType |r1#0@0| (TSet Tclass.MoreNativeTypes.Int32b) $Heap))) (and (=> (= (ControlFlow 0 71) 68) anon31_Then_correct) (=> (= (ControlFlow 0 71) 61) anon31_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is SetType |r0#0| (TSet Tclass.MoreNativeTypes.Int32a)) ($IsAlloc SetType |r0#0| (TSet Tclass.MoreNativeTypes.Int32a) $Heap)) true) (=> (and (and (and ($Is SetType |r1#0| (TSet Tclass.MoreNativeTypes.Int32b)) ($IsAlloc SetType |r1#0| (TSet Tclass.MoreNativeTypes.Int32b) $Heap)) true) (and (and ($Is SetType |r2#0| (TSet Tclass.MoreNativeTypes.Int32c)) ($IsAlloc SetType |r2#0| (TSet Tclass.MoreNativeTypes.Int32c) $Heap)) true)) (=> (and (and (and (and ($Is SetType |r3#0| (TSet Tclass.MoreNativeTypes.Int32d)) ($IsAlloc SetType |r3#0| (TSet Tclass.MoreNativeTypes.Int32d) $Heap)) true) (and (and ($Is SetType |r4#0| (TSet Tclass.MoreNativeTypes.Int32e)) ($IsAlloc SetType |r4#0| (TSet Tclass.MoreNativeTypes.Int32e) $Heap)) true)) (and (and (and ($Is SetType |r5#0| (TSet Tclass.MoreNativeTypes.Int32f)) ($IsAlloc SetType |r5#0| (TSet Tclass.MoreNativeTypes.Int32f) $Heap)) true) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 72) 71)))) anon0_correct))))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
