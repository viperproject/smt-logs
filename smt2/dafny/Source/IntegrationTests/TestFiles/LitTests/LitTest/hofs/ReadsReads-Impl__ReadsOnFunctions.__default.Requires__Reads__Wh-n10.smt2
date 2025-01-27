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
(declare-fun TInt () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagInt () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.___hFunc1 () T@U)
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
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun |Requires1#Handle| (T@U T@U T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Reads1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun refType () T@T)
(declare-fun null () T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
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
(assert (distinct TBool TInt TagBool TagInt alloc Tagclass._System.___hFunc1 |tytagFamily$_#Func1|)
)
(assert (forall ((|#$T0| T@U) (|#$R| T@U) ($self T@U) ($heap T@U) (|$fh$1x#0| T@U) ) (! (= (Requires1 |#$T0| |#$R| $heap $self |$fh$1x#0|) (U_2_bool ($Unbox boolType (Apply1 |#$T0| TBool $heap (|Requires1#Handle| |#$T0| |#$R| $self) |$fh$1x#0|))))
 :qid |unknown.0:0|
 :skolemid |2736|
 :pattern ( (Requires1 |#$T0| |#$R| $heap $self |$fh$1x#0|))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$R@@0| T@U) ($self@@0 T@U) ($heap@@0 T@U) (|$fh$1x#0@@0| T@U) ) (! (= (Apply1 |#$T0@@0| TBool $heap@@0 (|Requires1#Handle| |#$T0@@0| |#$R@@0| $self@@0) |$fh$1x#0@@0|) ($Box boolType (bool_2_U (Requires1 |#$T0@@0| |#$R@@0| $heap@@0 $self@@0 |$fh$1x#0@@0|))))
 :qid |unknown.0:0|
 :skolemid |2733|
 :pattern ( (Apply1 |#$T0@@0| TBool $heap@@0 (|Requires1#Handle| |#$T0@@0| |#$R@@0| $self@@0) |$fh$1x#0@@0|))
)))
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |2220|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (Ctor HandleTypeType) 3))
(assert (forall ((f T@U) (t0 T@U) (t1 T@U) (u0 T@U) (u1 T@U) ) (!  (=> (and (and ($Is HandleTypeType f (Tclass._System.___hFunc1 t0 t1)) (forall ((bx T@U) ) (!  (=> ($IsBox bx u0) ($IsBox bx t0))
 :qid |unknown.0:0|
 :skolemid |2484|
 :pattern ( ($IsBox bx u0))
 :pattern ( ($IsBox bx t0))
))) (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 t1) ($IsBox bx@@0 u1))
 :qid |unknown.0:0|
 :skolemid |2485|
 :pattern ( ($IsBox bx@@0 t1))
 :pattern ( ($IsBox bx@@0 u1))
))) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0 u1)))
 :qid |unknown.0:0|
 :skolemid |2486|
 :pattern ( ($Is HandleTypeType f (Tclass._System.___hFunc1 t0 t1)) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0 u1)))
)))
(assert (forall (($bx T@U) (|#$T0@@1| T@U) (|#$R@@1| T@U) ($self@@1 T@U) ($heap@@1 T@U) (|$fh$1x#0@@1| T@U) ) (!  (=> (Requires1 |#$T0@@1| |#$R@@1| $heap@@1 $self@@1 |$fh$1x#0@@1|) (= (|Set#IsMember| (Reads1 |#$T0@@1| TBool $heap@@1 (|Requires1#Handle| |#$T0@@1| |#$R@@1| $self@@1) |$fh$1x#0@@1|) $bx) (|Set#IsMember| (Reads1 |#$T0@@1| |#$R@@1| $heap@@1 $self@@1 |$fh$1x#0@@1|) $bx)))
 :qid |unknown.0:0|
 :skolemid |2735|
 :pattern ( (|Set#IsMember| (Reads1 |#$T0@@1| TBool $heap@@1 (|Requires1#Handle| |#$T0@@1| |#$R@@1| $self@@1) |$fh$1x#0@@1|) $bx))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |2112|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |2110|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((t0@@0 T@U) (t1@@0 T@U) (heap T@U) (f@@0 T@U) (bx0 T@U) ) (!  (=> (and ($IsGoodHeap heap) (and ($IsBox bx0 t0@@0) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@0 t1@@0)))) (= (|Set#Equal| (Reads1 t0@@0 t1@@0 $OneHeap f@@0 bx0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@0 t1@@0 heap f@@0 bx0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |2480|
 :pattern ( (Reads1 t0@@0 t1@@0 $OneHeap f@@0 bx0) ($IsGoodHeap heap))
 :pattern ( (Reads1 t0@@0 t1@@0 heap f@@0 bx0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2121|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |2134|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$R@@2| T@U) ($self@@2 T@U) ($heap@@2 T@U) (|$fh$1x#0@@2| T@U) ) (! (= (Requires1 |#$T0@@2| TBool $heap@@2 (|Requires1#Handle| |#$T0@@2| |#$R@@2| $self@@2) |$fh$1x#0@@2|) true)
 :qid |unknown.0:0|
 :skolemid |2734|
 :pattern ( (Requires1 |#$T0@@2| TBool $heap@@2 (|Requires1#Handle| |#$T0@@2| |#$R@@2| $self@@2) |$fh$1x#0@@2|))
)))
(assert (forall ((f@@1 T@U) (t0@@1 T@U) (t1@@1 T@U) (h@@0 T@U) ) (!  (=> (and ($IsGoodHeap h@@0) ($IsAlloc HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@1 t1@@1) h@@0)) (forall ((bx0@@0 T@U) ) (!  (=> (and ($IsAllocBox bx0@@0 t0@@1 h@@0) (Requires1 t0@@1 t1@@1 h@@0 f@@1 bx0@@0)) ($IsAllocBox (Apply1 t0@@1 t1@@1 h@@0 f@@1 bx0@@0) t1@@1 h@@0))
 :qid |unknown.0:0|
 :skolemid |2490|
 :pattern ( (Apply1 t0@@1 t1@@1 h@@0 f@@1 bx0@@0))
)))
 :qid |unknown.0:0|
 :skolemid |2491|
 :pattern ( ($IsAlloc HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@1 t1@@1) h@@0))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |2245|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((f@@2 T@U) (t0@@2 T@U) (t1@@2 T@U) ) (! (= ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@2 t1@@2)) (forall ((h@@1 T@U) (bx0@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@1) ($IsBox bx0@@1 t0@@2)) (Requires1 t0@@2 t1@@2 h@@1 f@@2 bx0@@1)) ($IsBox (Apply1 t0@@2 t1@@2 h@@1 f@@2 bx0@@1) t1@@2))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2482|
 :pattern ( (Apply1 t0@@2 t1@@2 h@@1 f@@2 bx0@@1))
)))
 :qid |unknown.0:0|
 :skolemid |2483|
 :pattern ( ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@2 t1@@2)))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TInt) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |2122|
 :pattern ( ($IsBox bx@@1 TInt))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TBool) (and (= ($Box boolType ($Unbox boolType bx@@2)) bx@@2) ($Is boolType ($Unbox boolType bx@@2) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |2124|
 :pattern ( ($IsBox bx@@2 TBool))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |2133|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((|#$T0@@3| T@U) (|#$R@@3| T@U) ) (! (= (Tclass._System.___hFunc1_0 (Tclass._System.___hFunc1 |#$T0@@3| |#$R@@3|)) |#$T0@@3|)
 :qid |unknown.0:0|
 :skolemid |2462|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@3| |#$R@@3|))
)))
(assert (forall ((|#$T0@@4| T@U) (|#$R@@4| T@U) ) (! (= (Tclass._System.___hFunc1_1 (Tclass._System.___hFunc1 |#$T0@@4| |#$R@@4|)) |#$R@@4|)
 :qid |unknown.0:0|
 :skolemid |2463|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@4| |#$R@@4|))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2120|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert  (and (and (and (and (and (and (and (= (Ctor refType) 4) (forall ((t0@@3 T@T) (t1@@3 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0@@3 t1@@3 (MapType0Store t0@@3 t1@@3 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (forall ((u0@@0 T@T) (u1@@0 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0@@0 u1@@0 (MapType0Store u0@@0 u1@@0 m@@0 x0@@0 val@@0) y0) (MapType0Select u0@@0 u1@@0 m@@0 y0)))
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
(assert (forall ((f@@3 T@U) (t0@@4 T@U) (t1@@4 T@U) (h@@2 T@U) ) (!  (=> ($IsGoodHeap h@@2) (= ($IsAlloc HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@4 t1@@4) h@@2) (forall ((bx0@@2 T@U) ) (!  (=> (and (and ($IsBox bx0@@2 t0@@4) ($IsAllocBox bx0@@2 t0@@4 h@@2)) (Requires1 t0@@4 t1@@4 h@@2 f@@3 bx0@@2)) (forall ((r T@U) ) (!  (=> (and (or (not (= r null)) (not true)) (|Set#IsMember| (Reads1 t0@@4 t1@@4 h@@2 f@@3 bx0@@2) ($Box refType r))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@2 r) alloc))))
 :qid |unknown.0:0|
 :skolemid |2487|
 :pattern ( (|Set#IsMember| (Reads1 t0@@4 t1@@4 h@@2 f@@3 bx0@@2) ($Box refType r)))
)))
 :qid |unknown.0:0|
 :skolemid |2488|
 :pattern ( (Apply1 t0@@4 t1@@4 h@@2 f@@3 bx0@@2))
 :pattern ( (Reads1 t0@@4 t1@@4 h@@2 f@@3 bx0@@2))
))))
 :qid |unknown.0:0|
 :skolemid |2489|
 :pattern ( ($IsAlloc HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@4 t1@@4) h@@2))
)))
(assert (forall ((|#$T0@@5| T@U) (|#$R@@5| T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass._System.___hFunc1 |#$T0@@5| |#$R@@5|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@3)) bx@@3) ($Is HandleTypeType ($Unbox HandleTypeType bx@@3) (Tclass._System.___hFunc1 |#$T0@@5| |#$R@@5|))))
 :qid |unknown.0:0|
 :skolemid |2464|
 :pattern ( ($IsBox bx@@3 (Tclass._System.___hFunc1 |#$T0@@5| |#$R@@5|)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3452|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((|#$T0@@6| T@U) (|#$R@@6| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@6| |#$R@@6|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@6| |#$R@@6|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |2461|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@6| |#$R@@6|))
)))
(assert (forall ((t0@@6 T@U) (t1@@6 T@U) (heap@@0 T@U) (f@@4 T@U) (bx0@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@0) (and ($IsBox bx0@@3 t0@@6) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc1 t0@@6 t1@@6)))) (|Set#Equal| (Reads1 t0@@6 t1@@6 $OneHeap f@@4 bx0@@3) |Set#Empty|)) (= (Requires1 t0@@6 t1@@6 $OneHeap f@@4 bx0@@3) (Requires1 t0@@6 t1@@6 heap@@0 f@@4 bx0@@3)))
 :qid |unknown.0:0|
 :skolemid |2481|
 :pattern ( (Requires1 t0@@6 t1@@6 $OneHeap f@@4 bx0@@3) ($IsGoodHeap heap@@0))
 :pattern ( (Requires1 t0@@6 t1@@6 heap@@0 f@@4 bx0@@3))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|Set#Equal| a@@0 b@@0) (forall ((o@@0 T@U) ) (! (= (|Set#IsMember| a@@0 o@@0) (|Set#IsMember| b@@0 o@@0))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |2243|
 :pattern ( (|Set#IsMember| a@@0 o@@0))
 :pattern ( (|Set#IsMember| b@@0 o@@0))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |2244|
 :pattern ( (|Set#Equal| a@@0 b@@0))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |2113|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |2111|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((h@@3 T@U) (v@@1 T@U) ) (! ($IsAlloc intType v@@1 TInt h@@3)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |2156|
 :pattern ( ($IsAlloc intType v@@1 TInt h@@3))
)))
(assert (forall ((h@@4 T@U) (v@@2 T@U) ) (! ($IsAlloc boolType v@@2 TBool h@@4)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |2158|
 :pattern ( ($IsAlloc boolType v@@2 TBool h@@4))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is intType v@@3 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |2135|
 :pattern ( ($Is intType v@@3 TInt))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is boolType v@@4 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |2137|
 :pattern ( ($Is boolType v@@4 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |g#0@0| () T@U)
(declare-fun |f#0| () T@U)
(declare-fun |##x0#1@0| () Int)
(declare-fun |##x0#2@0| () Int)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |g#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$ReadsOnFunctions.__default.Requires__Reads__What__Function__Reads)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 2) (- 0 5)) true) (=> (and (and (= |g#0@0| (|Requires1#Handle| TInt TInt |f#0|)) ($IsAllocBox ($Box HandleTypeType |g#0@0|) (Tclass._System.___hFunc1 TInt TBool) $Heap)) (and (= |##x0#1@0| (LitInt 10)) ($IsAlloc intType (int_2_U |##x0#1@0|) TInt $Heap))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (Requires1 TInt TBool $Heap |g#0@0| ($Box intType (int_2_U (LitInt 10))))) (=> (Requires1 TInt TBool $Heap |g#0@0| ($Box intType (int_2_U (LitInt 10)))) (=> ($IsAllocBox ($Box HandleTypeType |f#0|) (Tclass._System.___hFunc1 TInt TInt) $Heap) (=> (and (= |##x0#2@0| (LitInt 10)) ($IsAlloc intType (int_2_U |##x0#2@0|) TInt $Heap)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (Requires1 TInt TInt $Heap |f#0| ($Box intType (int_2_U (LitInt 10))))) (=> (Requires1 TInt TInt $Heap |f#0| ($Box intType (int_2_U (LitInt 10)))) (=> (and (and true true) (= (ControlFlow 0 2) (- 0 1))) (|Set#Equal| (Reads1 TInt TBool $Heap |g#0@0| ($Box intType (int_2_U (LitInt 10)))) (Reads1 TInt TInt $Heap |f#0| ($Box intType (int_2_U (LitInt 10)))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and ($Is HandleTypeType |f#0| (Tclass._System.___hFunc1 TInt TInt)) ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hFunc1 TInt TInt) $Heap))) (=> (and (and (and (and ($Is HandleTypeType |g#0| (Tclass._System.___hFunc1 TInt TBool)) ($IsAlloc HandleTypeType |g#0| (Tclass._System.___hFunc1 TInt TBool) $Heap)) true) (= 0 $FunctionContextHeight)) (and (Requires1 TInt TInt $Heap |f#0| ($Box intType (int_2_U (LitInt 10)))) (= (ControlFlow 0 6) 2))) anon0_correct))))
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
