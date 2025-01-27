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
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass.ChildIsRefTrait.Trait () T@U)
(declare-fun Tagclass.ChildIsRefTrait.ChildTrait () T@U)
(declare-fun Tagclass.ChildIsRefTrait.ChildTrait? () T@U)
(declare-fun Tagclass.ChildIsRefTrait.Trait? () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$Trait () T@U)
(declare-fun tytagFamily$ChildTrait () T@U)
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
(declare-fun ChildIsRefTrait.ChildTrait.F (T@U Int) Int)
(declare-fun |ChildIsRefTrait.ChildTrait.F#canCall| (T@U Int) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.ChildIsRefTrait.ChildTrait () T@U)
(declare-fun ChildIsRefTrait.Trait.yy (T@U) Int)
(declare-fun LitInt (Int) Int)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass.ChildIsRefTrait.Trait () T@U)
(declare-fun Tclass.ChildIsRefTrait.Trait? () T@U)
(declare-fun Tclass.ChildIsRefTrait.ChildTrait? () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$ChildIsRefTrait.Trait (T@U) Bool)
(declare-fun dtype (T@U) T@U)
(declare-fun implements$ChildIsRefTrait.ChildTrait (T@U) Bool)
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
(assert (distinct alloc Tagclass._System.nat Tagclass._System.object? Tagclass._System.object Tagclass.ChildIsRefTrait.Trait Tagclass.ChildIsRefTrait.ChildTrait Tagclass.ChildIsRefTrait.ChildTrait? Tagclass.ChildIsRefTrait.Trait? tytagFamily$nat tytagFamily$object tytagFamily$Trait tytagFamily$ChildTrait)
)
(assert (= (Ctor refType) 3))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this T@U) (|umpa#0| Int) ) (!  (=> (or (|ChildIsRefTrait.ChildTrait.F#canCall| this |umpa#0|) (and (< 1 $FunctionContextHeight) (and (and (or (not (= this null)) (not true)) ($Is refType this Tclass.ChildIsRefTrait.ChildTrait)) (< (ChildIsRefTrait.Trait.yy this) 800)))) (and (< (ChildIsRefTrait.ChildTrait.F this |umpa#0|) (+ (ChildIsRefTrait.Trait.yy this) 100)) (<= (LitInt 0) (ChildIsRefTrait.ChildTrait.F this |umpa#0|))))
 :qid |NonReferenceTraitsVerifydfy.87:14|
 :skolemid |1063|
 :pattern ( (ChildIsRefTrait.ChildTrait.F this |umpa#0|))
))))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |909|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@0 T@U) (|umpa#0@@0| Int) ) (!  (=> (or (|ChildIsRefTrait.ChildTrait.F#canCall| this@@0 (LitInt |umpa#0@@0|)) (and (< 1 $FunctionContextHeight) (and (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass.ChildIsRefTrait.ChildTrait)) (< (ChildIsRefTrait.Trait.yy this@@0) 800)))) (= (ChildIsRefTrait.ChildTrait.F this@@0 (LitInt |umpa#0@@0|)) (LitInt 2)))
 :qid |NonReferenceTraitsVerifydfy.87:14|
 :weight 3
 :skolemid |1066|
 :pattern ( (ChildIsRefTrait.ChildTrait.F this@@0 (LitInt |umpa#0@@0|)))
))))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h@@0) ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |915|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass.ChildIsRefTrait.Trait $h@@1) ($IsAlloc refType |c#0@@0| Tclass.ChildIsRefTrait.Trait? $h@@1))
 :qid |unknown.0:0|
 :skolemid |1060|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.ChildIsRefTrait.Trait $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.ChildIsRefTrait.Trait? $h@@1))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass.ChildIsRefTrait.ChildTrait $h@@2) ($IsAlloc refType |c#0@@1| Tclass.ChildIsRefTrait.ChildTrait? $h@@2))
 :qid |unknown.0:0|
 :skolemid |1077|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.ChildIsRefTrait.ChildTrait $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.ChildIsRefTrait.ChildTrait? $h@@2))
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
(assert (forall (($o T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o Tclass._System.object? $h@@3)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |912|
 :pattern ( ($IsAlloc refType $o Tclass._System.object? $h@@3))
)))
(assert (forall (($o@@0 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass.ChildIsRefTrait.Trait? $h@@4)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1052|
 :pattern ( ($IsAlloc refType $o@@0 Tclass.ChildIsRefTrait.Trait? $h@@4))
)))
(assert (forall (($o@@1 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass.ChildIsRefTrait.ChildTrait? $h@@5)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1062|
 :pattern ( ($IsAlloc refType $o@@1 Tclass.ChildIsRefTrait.ChildTrait? $h@@5))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |581|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |579|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |590|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |908|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert  (=> (< 0 $FunctionContextHeight) (forall (($h@@6 T@U) ($o@@2 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@2 null)) (not true)) ($Is refType $o@@2 Tclass.ChildIsRefTrait.Trait?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@2) alloc)))) ($IsAlloc intType (int_2_U (ChildIsRefTrait.Trait.yy $o@@2)) Tclass._System.nat $h@@6))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1054|
 :pattern ( (ChildIsRefTrait.Trait.yy $o@@2) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@2) alloc)))
))))
(assert  (=> (< 0 $FunctionContextHeight) (forall (($o@@3 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) ($Is refType $o@@3 Tclass.ChildIsRefTrait.Trait?)) ($Is intType (int_2_U (ChildIsRefTrait.Trait.yy $o@@3)) Tclass._System.nat))
 :qid |unknown.0:0|
 :skolemid |1053|
 :pattern ( (ChildIsRefTrait.Trait.yy $o@@3))
))))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._System.object)  (and ($Is refType |c#0@@2| Tclass._System.object?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |914|
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object?))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass.ChildIsRefTrait.Trait)  (and ($Is refType |c#0@@3| Tclass.ChildIsRefTrait.Trait?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1059|
 :pattern ( ($Is refType |c#0@@3| Tclass.ChildIsRefTrait.Trait))
 :pattern ( ($Is refType |c#0@@3| Tclass.ChildIsRefTrait.Trait?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass.ChildIsRefTrait.ChildTrait)  (and ($Is refType |c#0@@4| Tclass.ChildIsRefTrait.ChildTrait?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1076|
 :pattern ( ($Is refType |c#0@@4| Tclass.ChildIsRefTrait.ChildTrait))
 :pattern ( ($Is refType |c#0@@4| Tclass.ChildIsRefTrait.ChildTrait?))
)))
(assert (forall (($o@@4 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@4 Tclass.ChildIsRefTrait.ChildTrait? $heap) ($IsAlloc refType $o@@4 Tclass.ChildIsRefTrait.Trait? $heap))
 :qid |unknown.0:0|
 :skolemid |1119|
 :pattern ( ($IsAlloc refType $o@@4 Tclass.ChildIsRefTrait.ChildTrait? $heap))
)))
(assert (forall (($o@@5 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@5 Tclass.ChildIsRefTrait.ChildTrait? $heap@@0) ($IsAlloc refType $o@@5 Tclass._System.object? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |1123|
 :pattern ( ($IsAlloc refType $o@@5 Tclass.ChildIsRefTrait.ChildTrait? $heap@@0))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@1 T@U) (|umpa#0@@1| Int) ) (!  (=> (or (|ChildIsRefTrait.ChildTrait.F#canCall| (Lit refType this@@1) (LitInt |umpa#0@@1|)) (and (< 1 $FunctionContextHeight) (and (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 Tclass.ChildIsRefTrait.ChildTrait)) (< (ChildIsRefTrait.Trait.yy (Lit refType this@@1)) 800)))) (= (ChildIsRefTrait.ChildTrait.F (Lit refType this@@1) (LitInt |umpa#0@@1|)) (LitInt 2)))
 :qid |NonReferenceTraitsVerifydfy.87:14|
 :weight 3
 :skolemid |1067|
 :pattern ( (ChildIsRefTrait.ChildTrait.F (Lit refType this@@1) (LitInt |umpa#0@@1|)))
))))
(assert (forall (($o@@6 T@U) ) (! ($Is refType $o@@6 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |911|
 :pattern ( ($Is refType $o@@6 Tclass._System.object?))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |589|
 :pattern ( ($Box T@@1 x@@5))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@7 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@7 $f))  (=> (and (or (not (= $o@@7 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@7) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1698|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@7 $f))
)))
(assert (forall (($o@@8 T@U) ) (!  (=> ($Is refType $o@@8 Tclass.ChildIsRefTrait.ChildTrait?) ($Is refType $o@@8 Tclass.ChildIsRefTrait.Trait?))
 :qid |unknown.0:0|
 :skolemid |1118|
 :pattern ( ($Is refType $o@@8 Tclass.ChildIsRefTrait.ChildTrait?))
)))
(assert (forall (($o@@9 T@U) ) (!  (=> ($Is refType $o@@9 Tclass.ChildIsRefTrait.ChildTrait?) ($Is refType $o@@9 Tclass._System.object?))
 :qid |unknown.0:0|
 :skolemid |1122|
 :pattern ( ($Is refType $o@@9 Tclass.ChildIsRefTrait.ChildTrait?))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass.ChildIsRefTrait.Trait) Tagclass.ChildIsRefTrait.Trait))
(assert (= (TagFamily Tclass.ChildIsRefTrait.Trait) tytagFamily$Trait))
(assert (= (Tag Tclass.ChildIsRefTrait.ChildTrait) Tagclass.ChildIsRefTrait.ChildTrait))
(assert (= (TagFamily Tclass.ChildIsRefTrait.ChildTrait) tytagFamily$ChildTrait))
(assert (= (Tag Tclass.ChildIsRefTrait.ChildTrait?) Tagclass.ChildIsRefTrait.ChildTrait?))
(assert (= (TagFamily Tclass.ChildIsRefTrait.ChildTrait?) tytagFamily$ChildTrait))
(assert (= (Tag Tclass.ChildIsRefTrait.Trait?) Tagclass.ChildIsRefTrait.Trait?))
(assert (= (TagFamily Tclass.ChildIsRefTrait.Trait?) tytagFamily$Trait))
(assert (forall (($o@@10 T@U) ) (! (= ($Is refType $o@@10 Tclass.ChildIsRefTrait.Trait?)  (or (= $o@@10 null) (implements$ChildIsRefTrait.Trait (dtype $o@@10))))
 :qid |unknown.0:0|
 :skolemid |1051|
 :pattern ( ($Is refType $o@@10 Tclass.ChildIsRefTrait.Trait?))
)))
(assert (forall (($o@@11 T@U) ) (! (= ($Is refType $o@@11 Tclass.ChildIsRefTrait.ChildTrait?)  (or (= $o@@11 null) (implements$ChildIsRefTrait.ChildTrait (dtype $o@@11))))
 :qid |unknown.0:0|
 :skolemid |1061|
 :pattern ( ($Is refType $o@@11 Tclass.ChildIsRefTrait.ChildTrait?))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |582|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@7)) (Lit BoxType ($Box T@@2 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |580|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@7)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@2 T@U) (|umpa#0@@2| Int) ) (!  (=> (or (|ChildIsRefTrait.ChildTrait.F#canCall| this@@2 |umpa#0@@2|) (and (< 1 $FunctionContextHeight) (and (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 Tclass.ChildIsRefTrait.ChildTrait)) (< (ChildIsRefTrait.Trait.yy this@@2) 800)))) (= (ChildIsRefTrait.ChildTrait.F this@@2 |umpa#0@@2|) (LitInt 2)))
 :qid |NonReferenceTraitsVerifydfy.87:14|
 :skolemid |1065|
 :pattern ( (ChildIsRefTrait.ChildTrait.F this@@2 |umpa#0@@2|))
))))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun this@@3 () T@U)
(declare-fun |umpa#0@@3| () Int)
(declare-fun ChildTrait_$_ReadsFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id OverrideCheck$$ChildIsRefTrait.ChildTrait.F)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon0_correct  (=> (< (ChildIsRefTrait.Trait.yy this@@3) 300) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< (ChildIsRefTrait.Trait.yy this@@3) 800)) (=> (< (ChildIsRefTrait.Trait.yy this@@3) 800) (and (=> (= (ControlFlow 0 2) (- 0 4)) (<= |umpa#0@@3| |umpa#0@@3|)) (=> (<= |umpa#0@@3| |umpa#0@@3|) (=> (= ChildTrait_$_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall (($o@@12 T@U) ($f@@0 T@U) ) (! true
 :qid |NonReferenceTraitsVerifydfy.87:14|
 :skolemid |1069|
))) (=> (forall (($o@@13 T@U) ($f@@1 T@U) ) (! true
 :qid |NonReferenceTraitsVerifydfy.87:14|
 :skolemid |1069|
)) (=> (and (< (ChildIsRefTrait.ChildTrait.F this@@3 |umpa#0@@3|) (+ (ChildIsRefTrait.Trait.yy this@@3) 100)) (= (ControlFlow 0 2) (- 0 1))) (< (ChildIsRefTrait.ChildTrait.F this@@3 |umpa#0@@3|) (+ (ChildIsRefTrait.Trait.yy this@@3) 900)))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 Tclass.ChildIsRefTrait.ChildTrait) ($IsAlloc refType this@@3 Tclass.ChildIsRefTrait.ChildTrait $Heap))) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 6) 2))) anon0_correct))))
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
