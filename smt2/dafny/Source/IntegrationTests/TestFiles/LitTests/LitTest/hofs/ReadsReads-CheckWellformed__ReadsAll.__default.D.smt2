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
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
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
(declare-fun Tag (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Reads1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun TSet (T@U) T@U)
(declare-fun |Reads1#Handle| (T@U T@U T@U) T@U)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun ReadsAll.__default.D (T@U T@U) Int)
(declare-fun |ReadsAll.__default.D#canCall| (T@U T@U) Bool)
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
(assert (distinct TInt TagInt TagSet alloc Tagclass._System.object? Tagclass._System.object Tagclass._System.___hFunc1 tytagFamily$object |tytagFamily$_#Func1|)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |1518|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (Ctor HandleTypeType) 3))
(assert (forall ((f T@U) (t0 T@U) (t1 T@U) (u0 T@U) (u1 T@U) ) (!  (=> (and (and ($Is HandleTypeType f (Tclass._System.___hFunc1 t0 t1)) (forall ((bx T@U) ) (!  (=> ($IsBox bx u0) ($IsBox bx t0))
 :qid |unknown.0:0|
 :skolemid |1782|
 :pattern ( ($IsBox bx u0))
 :pattern ( ($IsBox bx t0))
))) (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 t1) ($IsBox bx@@0 u1))
 :qid |unknown.0:0|
 :skolemid |1783|
 :pattern ( ($IsBox bx@@0 t1))
 :pattern ( ($IsBox bx@@0 u1))
))) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0 u1)))
 :qid |unknown.0:0|
 :skolemid |1784|
 :pattern ( ($Is HandleTypeType f (Tclass._System.___hFunc1 t0 t1)) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0 u1)))
)))
(assert (= (Ctor refType) 4))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h) ($IsAlloc refType |c#0| Tclass._System.object? $h))
 :qid |unknown.0:0|
 :skolemid |1744|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h))
)))
(assert (forall (($bx T@U) (|#$T0| T@U) (|#$R| T@U) ($self T@U) ($heap T@U) (|$fh$1x#0| T@U) ) (!  (=> (Requires1 |#$T0| |#$R| $heap $self |$fh$1x#0|) (= (|Set#IsMember| (Reads1 |#$T0| (TSet Tclass._System.object?) $heap (|Reads1#Handle| |#$T0| |#$R| $self) |$fh$1x#0|) $bx) (|Set#IsMember| (Reads1 |#$T0| |#$R| $heap $self |$fh$1x#0|) $bx)))
 :qid |unknown.0:0|
 :skolemid |2074|
 :pattern ( (|Set#IsMember| (Reads1 |#$T0| (TSet Tclass._System.object?) $heap (|Reads1#Handle| |#$T0| |#$R| $self) |$fh$1x#0|) $bx))
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
(assert (forall (($o T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o Tclass._System.object? $h@@0)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1741|
 :pattern ( ($IsAlloc refType $o Tclass._System.object? $h@@0))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |1410|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1408|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((t0@@1 T@U) (t1@@1 T@U) (heap T@U) (f@@0 T@U) (bx0 T@U) ) (!  (=> (and ($IsGoodHeap heap) (and ($IsBox bx0 t0@@1) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@1 t1@@1)))) (= (|Set#Equal| (Reads1 t0@@1 t1@@1 $OneHeap f@@0 bx0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@1 t1@@1 heap f@@0 bx0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |1778|
 :pattern ( (Reads1 t0@@1 t1@@1 $OneHeap f@@0 bx0) ($IsGoodHeap heap))
 :pattern ( (Reads1 t0@@1 t1@@1 heap f@@0 bx0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1419|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (and (forall ((t0@@2 T@T) (t1@@2 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@2 t1@@2 t2 (MapType1Store t0@@2 t1@@2 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@1 T@T) (u1@@1 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@1 u1@@1 u2 (MapType1Store u0@@1 u1@@1 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@1 u1@@1 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@2 T@T) (u1@@2 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@2 u1@@2 u2@@0 (MapType1Store u0@@2 u1@@2 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@2 u1@@2 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) (|l#5| T@U) (|l#6| T@U) (|l#7| T@U) (|l#8| T@U) (|l#9| T@U) (|l#10| T@U) (|l#11| T@U) ($o@@0 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6| |l#7| |l#8| |l#9| |l#10| |l#11|) $o@@0 $f))  (=> (and (or (not (= $o@@0 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@0) |l#2|)))) (exists ((|x#0| Int) (|o#0| T@U) ) (!  (and (and ($Is refType |o#0| |l#3|) (|Set#IsMember| (Reads1 |l#4| |l#5| |l#6| |l#7| ($Box intType (int_2_U |x#0|))) ($Box refType |o#0|))) (= ($Box refType $o@@0) ($Box refType |o#0|)))
 :qid |ReadsReadsdfy.114:15|
 :skolemid |2039|
 :pattern ( (|Set#IsMember| (Reads1 |l#8| |l#9| |l#10| |l#11| ($Box intType (int_2_U |x#0|))) ($Box refType |o#0|)))
))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3451|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6| |l#7| |l#8| |l#9| |l#10| |l#11|) $o@@0 $f))
)))
(assert (= (Ctor SetType) 8))
(assert (forall ((v T@U) (t0@@3 T@U) ) (! (= ($Is SetType v (TSet t0@@3)) (forall ((bx@@1 T@U) ) (!  (=> (|Set#IsMember| v bx@@1) ($IsBox bx@@1 t0@@3))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |1439|
 :pattern ( (|Set#IsMember| v bx@@1))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |1440|
 :pattern ( ($Is SetType v (TSet t0@@3)))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1432|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |1739|
 :pattern ( ($IsBox bx@@2 Tclass._System.object?))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |1742|
 :pattern ( ($IsBox bx@@3 Tclass._System.object))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._System.object)  (and ($Is refType |c#0@@0| Tclass._System.object?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1743|
 :pattern ( ($Is refType |c#0@@0| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@0| Tclass._System.object?))
)))
(assert (forall ((f@@1 T@U) (t0@@4 T@U) (t1@@3 T@U) (h@@0 T@U) ) (!  (=> (and ($IsGoodHeap h@@0) ($IsAlloc HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@4 t1@@3) h@@0)) (forall ((bx0@@0 T@U) ) (!  (=> (and ($IsAllocBox bx0@@0 t0@@4 h@@0) (Requires1 t0@@4 t1@@3 h@@0 f@@1 bx0@@0)) ($IsAllocBox (Apply1 t0@@4 t1@@3 h@@0 f@@1 bx0@@0) t1@@3 h@@0))
 :qid |unknown.0:0|
 :skolemid |1788|
 :pattern ( (Apply1 t0@@4 t1@@3 h@@0 f@@1 bx0@@0))
)))
 :qid |unknown.0:0|
 :skolemid |1789|
 :pattern ( ($IsAlloc HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@4 t1@@3) h@@0))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$R@@0| T@U) ($self@@0 T@U) ($heap@@0 T@U) (|$fh$1x#0@@0| T@U) ) (! (= (Reads1 |#$T0@@0| |#$R@@0| $heap@@0 $self@@0 |$fh$1x#0@@0|) ($Unbox SetType (Apply1 |#$T0@@0| (TSet Tclass._System.object?) $heap@@0 (|Reads1#Handle| |#$T0@@0| |#$R@@0| $self@@0) |$fh$1x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |2075|
 :pattern ( (Reads1 |#$T0@@0| |#$R@@0| $heap@@0 $self@@0 |$fh$1x#0@@0|))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |1543|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$R@@1| T@U) ($self@@1 T@U) ($heap@@1 T@U) (|$fh$1x#0@@1| T@U) ) (! (= (Requires1 |#$T0@@1| (TSet Tclass._System.object?) $heap@@1 (|Reads1#Handle| |#$T0@@1| |#$R@@1| $self@@1) |$fh$1x#0@@1|) (Requires1 |#$T0@@1| |#$R@@1| $heap@@1 $self@@1 |$fh$1x#0@@1|))
 :qid |unknown.0:0|
 :skolemid |2073|
 :pattern ( (Requires1 |#$T0@@1| (TSet Tclass._System.object?) $heap@@1 (|Reads1#Handle| |#$T0@@1| |#$R@@1| $self@@1) |$fh$1x#0@@1|))
)))
(assert (forall ((f@@2 T@U) (t0@@5 T@U) (t1@@4 T@U) ) (! (= ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@5 t1@@4)) (forall ((h@@1 T@U) (bx0@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@1) ($IsBox bx0@@1 t0@@5)) (Requires1 t0@@5 t1@@4 h@@1 f@@2 bx0@@1)) ($IsBox (Apply1 t0@@5 t1@@4 h@@1 f@@2 bx0@@1) t1@@4))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1780|
 :pattern ( (Apply1 t0@@5 t1@@4 h@@1 f@@2 bx0@@1))
)))
 :qid |unknown.0:0|
 :skolemid |1781|
 :pattern ( ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@5 t1@@4)))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 TInt) (and (= ($Box intType ($Unbox intType bx@@4)) bx@@4) ($Is intType ($Unbox intType bx@@4) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |1420|
 :pattern ( ($IsBox bx@@4 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1431|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((v@@2 T@U) (t0@@6 T@U) (h@@2 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@6) h@@2) (forall ((bx@@5 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@5) ($IsAllocBox bx@@5 t0@@6 h@@2))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |1460|
 :pattern ( (|Set#IsMember| v@@2 bx@@5))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |1461|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@6) h@@2))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$R@@2| T@U) ) (! (= (Tclass._System.___hFunc1_0 (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) |#$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |1760|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|))
)))
(assert (forall ((|#$T0@@3| T@U) (|#$R@@3| T@U) ) (! (= (Tclass._System.___hFunc1_1 (Tclass._System.___hFunc1 |#$T0@@3| |#$R@@3|)) |#$R@@3|)
 :qid |unknown.0:0|
 :skolemid |1761|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@3| |#$R@@3|))
)))
(assert (forall (($o@@1 T@U) ) (! ($Is refType $o@@1 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |1740|
 :pattern ( ($Is refType $o@@1 Tclass._System.object?))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSet (TSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1394|
 :pattern ( (TSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSet t@@2)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |1395|
 :pattern ( (TSet t@@2))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1418|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((f@@3 T@U) (t0@@7 T@U) (t1@@5 T@U) (h@@3 T@U) ) (!  (=> ($IsGoodHeap h@@3) (= ($IsAlloc HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@7 t1@@5) h@@3) (forall ((bx0@@2 T@U) ) (!  (=> (and (and ($IsBox bx0@@2 t0@@7) ($IsAllocBox bx0@@2 t0@@7 h@@3)) (Requires1 t0@@7 t1@@5 h@@3 f@@3 bx0@@2)) (forall ((r T@U) ) (!  (=> (and (or (not (= r null)) (not true)) (|Set#IsMember| (Reads1 t0@@7 t1@@5 h@@3 f@@3 bx0@@2) ($Box refType r))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) alloc))))
 :qid |unknown.0:0|
 :skolemid |1785|
 :pattern ( (|Set#IsMember| (Reads1 t0@@7 t1@@5 h@@3 f@@3 bx0@@2) ($Box refType r)))
)))
 :qid |unknown.0:0|
 :skolemid |1786|
 :pattern ( (Apply1 t0@@7 t1@@5 h@@3 f@@3 bx0@@2))
 :pattern ( (Reads1 t0@@7 t1@@5 h@@3 f@@3 bx0@@2))
))))
 :qid |unknown.0:0|
 :skolemid |1787|
 :pattern ( ($IsAlloc HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@7 t1@@5) h@@3))
)))
(assert (forall ((|#$T0@@4| T@U) (|#$R@@4| T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass._System.___hFunc1 |#$T0@@4| |#$R@@4|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@6)) bx@@6) ($Is HandleTypeType ($Unbox HandleTypeType bx@@6) (Tclass._System.___hFunc1 |#$T0@@4| |#$R@@4|))))
 :qid |unknown.0:0|
 :skolemid |1762|
 :pattern ( ($IsBox bx@@6 (Tclass._System.___hFunc1 |#$T0@@4| |#$R@@4|)))
)))
(assert (forall ((|#$T0@@5| T@U) (|#$R@@5| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@5| |#$R@@5|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@5| |#$R@@5|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |1759|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@5| |#$R@@5|))
)))
(assert (forall ((t0@@8 T@U) (t1@@6 T@U) (heap@@0 T@U) (f@@4 T@U) (bx0@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@0) (and ($IsBox bx0@@3 t0@@8) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc1 t0@@8 t1@@6)))) (|Set#Equal| (Reads1 t0@@8 t1@@6 $OneHeap f@@4 bx0@@3) |Set#Empty|)) (= (Requires1 t0@@8 t1@@6 $OneHeap f@@4 bx0@@3) (Requires1 t0@@8 t1@@6 heap@@0 f@@4 bx0@@3)))
 :qid |unknown.0:0|
 :skolemid |1779|
 :pattern ( (Requires1 t0@@8 t1@@6 $OneHeap f@@4 bx0@@3) ($IsGoodHeap heap@@0))
 :pattern ( (Requires1 t0@@8 t1@@6 heap@@0 f@@4 bx0@@3))
)))
(assert (forall ((|#$T0@@6| T@U) (|#$R@@6| T@U) ($self@@2 T@U) ($heap@@2 T@U) (|$fh$1x#0@@2| T@U) ) (! (= (Apply1 |#$T0@@6| (TSet Tclass._System.object?) $heap@@2 (|Reads1#Handle| |#$T0@@6| |#$R@@6| $self@@2) |$fh$1x#0@@2|) ($Box SetType (Reads1 |#$T0@@6| |#$R@@6| $heap@@2 $self@@2 |$fh$1x#0@@2|)))
 :qid |unknown.0:0|
 :skolemid |2072|
 :pattern ( (Apply1 |#$T0@@6| (TSet Tclass._System.object?) $heap@@2 (|Reads1#Handle| |#$T0@@6| |#$R@@6| $self@@2) |$fh$1x#0@@2|))
)))
(assert (forall ((bx@@7 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@7 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@7)) bx@@7) ($Is SetType ($Unbox SetType bx@@7) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |1425|
 :pattern ( ($IsBox bx@@7 (TSet t@@3)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|Set#Equal| a@@0 b@@0) (forall ((o@@0 T@U) ) (! (= (|Set#IsMember| a@@0 o@@0) (|Set#IsMember| b@@0 o@@0))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |1541|
 :pattern ( (|Set#IsMember| a@@0 o@@0))
 :pattern ( (|Set#IsMember| b@@0 o@@0))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |1542|
 :pattern ( (|Set#Equal| a@@0 b@@0))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |1411|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1409|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (|f#0| T@U) ) (!  (=> (or (|ReadsAll.__default.D#canCall| $Heap |f#0|) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) ($Is HandleTypeType |f#0| (Tclass._System.___hFunc1 TInt TInt))) (forall ((|x#1| Int) ) (! (Requires1 TInt TInt $Heap |f#0| ($Box intType (int_2_U |x#1|)))
 :qid |ReadsReadsdfy.136:21|
 :skolemid |2085|
 :pattern ( (Requires1 TInt TInt $Heap |f#0| ($Box intType (int_2_U |x#1|))))
))))) (= (ReadsAll.__default.D $Heap |f#0|) (+ (+ (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap |f#0| ($Box intType (int_2_U (LitInt 0)))))) (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap |f#0| ($Box intType (int_2_U (LitInt 1))))))) (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap |f#0| ($Box intType (int_2_U (LitInt 2)))))))))
 :qid |ReadsReadsdfy.134:12|
 :skolemid |2087|
 :pattern ( (ReadsAll.__default.D $Heap |f#0|) ($IsGoodHeap $Heap))
))))
(assert (forall ((h@@4 T@U) (v@@3 T@U) ) (! ($IsAlloc intType v@@3 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |1454|
 :pattern ( ($IsAlloc intType v@@3 TInt h@@4))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is intType v@@4 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |1433|
 :pattern ( ($Is intType v@@4 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@@0 () T@U)
(declare-fun |f#0@@0| () T@U)
(declare-fun |b$reqreads#2@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun |b$reqreads#3@0| () Bool)
(declare-fun |b$reqreads#4@0| () Bool)
(declare-fun |_x0#2@0| () Int)
(declare-fun |_obj#2@0| () T@U)
(declare-fun |b$reqreads#1@1| () Bool)
(declare-fun |_x0#1@0| () Int)
(declare-fun |_obj#1@0| () T@U)
(declare-fun |b$reqreads#1@0| () Bool)
(declare-fun |x#2@0| () Int)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$ReadsAll.__default.D)
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
 (=> (= (ControlFlow 0 0) 25) (let ((anon15_Else_correct  (and (=> (= (ControlFlow 0 3) (- 0 8)) (Requires1 TInt TInt $Heap@@0 |f#0@@0| ($Box intType (int_2_U (LitInt 0))))) (=> (Requires1 TInt TInt $Heap@@0 |f#0@@0| ($Box intType (int_2_U (LitInt 0)))) (=> (= |b$reqreads#2@0| (forall (($o@@2 T@U) ($f@@0 T@U) ) (!  (=> (and (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@2) alloc)))) (|Set#IsMember| (Reads1 TInt TInt $Heap@@0 |f#0@@0| ($Box intType (int_2_U (LitInt 0)))) ($Box refType $o@@2))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@2 $f@@0)))
 :qid |ReadsReadsdfy.138:5|
 :skolemid |2092|
))) (and (=> (= (ControlFlow 0 3) (- 0 7)) (Requires1 TInt TInt $Heap@@0 |f#0@@0| ($Box intType (int_2_U (LitInt 1))))) (=> (Requires1 TInt TInt $Heap@@0 |f#0@@0| ($Box intType (int_2_U (LitInt 1)))) (=> (= |b$reqreads#3@0| (forall (($o@@3 T@U) ($f@@1 T@U) ) (!  (=> (and (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@3) alloc)))) (|Set#IsMember| (Reads1 TInt TInt $Heap@@0 |f#0@@0| ($Box intType (int_2_U (LitInt 1)))) ($Box refType $o@@3))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@3 $f@@1)))
 :qid |ReadsReadsdfy.138:12|
 :skolemid |2093|
))) (and (=> (= (ControlFlow 0 3) (- 0 6)) (Requires1 TInt TInt $Heap@@0 |f#0@@0| ($Box intType (int_2_U (LitInt 2))))) (=> (Requires1 TInt TInt $Heap@@0 |f#0@@0| ($Box intType (int_2_U (LitInt 2)))) (=> (= |b$reqreads#4@0| (forall (($o@@4 T@U) ($f@@2 T@U) ) (!  (=> (and (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@4) alloc)))) (|Set#IsMember| (Reads1 TInt TInt $Heap@@0 |f#0@@0| ($Box intType (int_2_U (LitInt 2)))) ($Box refType $o@@4))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@4 $f@@2)))
 :qid |ReadsReadsdfy.138:19|
 :skolemid |2094|
))) (=> (and (= (ReadsAll.__default.D $Heap@@0 |f#0@@0|) (+ (+ (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@@0 |f#0@@0| ($Box intType (int_2_U (LitInt 0)))))) (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@@0 |f#0@@0| ($Box intType (int_2_U (LitInt 1))))))) (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@@0 |f#0@@0| ($Box intType (int_2_U (LitInt 2)))))))) ($Is intType (int_2_U (ReadsAll.__default.D $Heap@@0 |f#0@@0|)) TInt)) (and (=> (= (ControlFlow 0 3) (- 0 5)) |b$reqreads#2@0|) (=> |b$reqreads#2@0| (and (=> (= (ControlFlow 0 3) (- 0 4)) |b$reqreads#3@0|) (=> |b$reqreads#3@0| (=> (= (ControlFlow 0 3) (- 0 2)) |b$reqreads#4@0|)))))))))))))))))
(let ((anon15_Then_correct true))
(let ((anon14_Else_correct  (=> (not (|Set#IsMember| (Reads1 TInt TInt $Heap@@0 |f#0@@0| ($Box intType (int_2_U |_x0#2@0|))) ($Box refType |_obj#2@0|))) (and (=> (= (ControlFlow 0 11) 1) anon15_Then_correct) (=> (= (ControlFlow 0 11) 3) anon15_Else_correct)))))
(let ((anon14_Then_correct  (=> (|Set#IsMember| (Reads1 TInt TInt $Heap@@0 |f#0@@0| ($Box intType (int_2_U |_x0#2@0|))) ($Box refType |_obj#2@0|)) (and (=> (= (ControlFlow 0 10) 1) anon15_Then_correct) (=> (= (ControlFlow 0 10) 3) anon15_Else_correct)))))
(let ((anon13_Then_correct  (=> (and ($Is refType |_obj#2@0| Tclass._System.object?) ($IsAlloc refType |_obj#2@0| Tclass._System.object? $Heap@@0)) (and (=> (= (ControlFlow 0 12) (- 0 14)) true) (and (=> (= (ControlFlow 0 12) (- 0 13)) (Requires1 TInt (TSet Tclass._System.object?) $Heap@@0 (|Reads1#Handle| TInt TInt |f#0@@0|) ($Box intType (int_2_U |_x0#2@0|)))) (=> (Requires1 TInt (TSet Tclass._System.object?) $Heap@@0 (|Reads1#Handle| TInt TInt |f#0@@0|) ($Box intType (int_2_U |_x0#2@0|))) (and (=> (= (ControlFlow 0 12) 10) anon14_Then_correct) (=> (= (ControlFlow 0 12) 11) anon14_Else_correct))))))))
(let ((anon13_Else_correct  (=> (not (and ($Is refType |_obj#2@0| Tclass._System.object?) ($IsAlloc refType |_obj#2@0| Tclass._System.object? $Heap@@0))) (and (=> (= (ControlFlow 0 9) 1) anon15_Then_correct) (=> (= (ControlFlow 0 9) 3) anon15_Else_correct)))))
(let ((anon4_correct  (and (=> (= (ControlFlow 0 15) (- 0 16)) |b$reqreads#1@1|) (=> |b$reqreads#1@1| (and (=> (= (ControlFlow 0 15) 12) anon13_Then_correct) (=> (= (ControlFlow 0 15) 9) anon13_Else_correct))))))
(let ((anon12_Else_correct  (=> (not (|Set#IsMember| (Reads1 TInt TInt $Heap@@0 |f#0@@0| ($Box intType (int_2_U |_x0#1@0|))) ($Box refType |_obj#1@0|))) (=> (and (= |b$reqreads#1@1| |b$reqreads#1@0|) (= (ControlFlow 0 19) 15)) anon4_correct))))
(let ((anon12_Then_correct  (=> (|Set#IsMember| (Reads1 TInt TInt $Heap@@0 |f#0@@0| ($Box intType (int_2_U |_x0#1@0|))) ($Box refType |_obj#1@0|)) (=> (and (= |b$reqreads#1@1| |b$reqreads#1@0|) (= (ControlFlow 0 18) 15)) anon4_correct))))
(let ((anon11_Then_correct  (=> (and ($Is refType |_obj#1@0| Tclass._System.object?) ($IsAlloc refType |_obj#1@0| Tclass._System.object? $Heap@@0)) (and (=> (= (ControlFlow 0 20) (- 0 22)) true) (and (=> (= (ControlFlow 0 20) (- 0 21)) (Requires1 TInt (TSet Tclass._System.object?) $Heap@@0 (|Reads1#Handle| TInt TInt |f#0@@0|) ($Box intType (int_2_U |_x0#1@0|)))) (=> (Requires1 TInt (TSet Tclass._System.object?) $Heap@@0 (|Reads1#Handle| TInt TInt |f#0@@0|) ($Box intType (int_2_U |_x0#1@0|))) (=> (= |b$reqreads#1@0| (forall (($o@@5 T@U) ($f@@3 T@U) ) (!  (=> (and (and (or (not (= $o@@5 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@5) alloc)))) (|Set#IsMember| (Reads1 TInt (TSet Tclass._System.object?) $Heap@@0 (|Reads1#Handle| TInt TInt |f#0@@0|) ($Box intType (int_2_U |_x0#1@0|))) ($Box refType $o@@5))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@5 $f@@3)))
 :qid |ReadsReadsdfy.135:13|
 :skolemid |2091|
))) (and (=> (= (ControlFlow 0 20) 18) anon12_Then_correct) (=> (= (ControlFlow 0 20) 19) anon12_Else_correct)))))))))
(let ((anon11_Else_correct  (=> (not (and ($Is refType |_obj#1@0| Tclass._System.object?) ($IsAlloc refType |_obj#1@0| Tclass._System.object? $Heap@@0))) (=> (and (= |b$reqreads#1@1| true) (= (ControlFlow 0 17) 15)) anon4_correct))))
(let ((anon0_correct  (=> (and (= $_ReadsFrame@0 (|lambda#0| null $Heap@@0 alloc Tclass._System.object? TInt TInt $Heap@@0 |f#0@@0| TInt TInt $Heap@@0 |f#0@@0|)) ($IsAllocBox ($Box HandleTypeType |f#0@@0|) (Tclass._System.___hFunc1 TInt TInt) $Heap@@0)) (=> (and (and ($IsAlloc intType (int_2_U |x#2@0|) TInt $Heap@@0) (= |b$reqreads#0@0| (forall (($o@@6 T@U) ($f@@4 T@U) ) (!  (=> (and (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@6) alloc)))) (|Set#IsMember| (Reads1 TInt TInt $Heap@@0 |f#0@@0| ($Box intType (int_2_U |x#2@0|))) ($Box refType $o@@6))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@6 $f@@4)))
 :qid |ReadsReadsdfy.136:28|
 :skolemid |2089|
)))) (and (Requires1 TInt TInt $Heap@@0 |f#0@@0| ($Box intType (int_2_U |x#2@0|))) (forall ((|x#0@@0| T@U) ) (! (Requires1 TInt TInt $Heap@@0 |f#0@@0| ($Box intType |x#0@@0|))
 :qid |ReadsReadsdfy.136:21|
 :skolemid |2090|
 :pattern ( (Requires1 TInt TInt $Heap@@0 |f#0@@0| ($Box intType |x#0@@0|)))
)))) (and (=> (= (ControlFlow 0 23) (- 0 24)) |b$reqreads#0@0|) (=> |b$reqreads#0@0| (and (=> (= (ControlFlow 0 23) 20) anon11_Then_correct) (=> (= (ControlFlow 0 23) 17) anon11_Else_correct))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) ($Is HandleTypeType |f#0@@0| (Tclass._System.___hFunc1 TInt TInt))) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 25) 23))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
