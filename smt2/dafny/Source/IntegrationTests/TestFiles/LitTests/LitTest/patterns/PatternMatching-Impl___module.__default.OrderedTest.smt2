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
(declare-fun Tagclass._module.MyOption () T@U)
(declare-fun Tagclass._module.Alt () T@U)
(declare-fun |##_module.Alt.A| () T@U)
(declare-fun |##_module.Alt.B| () T@U)
(declare-fun |##_module.MyOption.Some| () T@U)
(declare-fun |##_module.MyOption.None| () T@U)
(declare-fun tytagFamily$MyOption () T@U)
(declare-fun tytagFamily$Alt () T@U)
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
(declare-fun |_module.Alt#Equal| (T@U T@U) Bool)
(declare-fun _module.Alt.A_q (T@U) Bool)
(declare-fun _module.Alt._h0 (T@U) Int)
(declare-fun _module.Alt.B_q (T@U) Bool)
(declare-fun _module.Alt._h1 (T@U) Int)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.MyOption.None| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.MyOption () T@U)
(declare-fun |_module.MyOption#Equal| (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun _module.MyOption.Some_q (T@U) Bool)
(declare-fun _module.MyOption.None_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.Alt.A| (Int) T@U)
(declare-fun |#_module.Alt.B| (Int) T@U)
(declare-fun |#_module.MyOption.Some| (T@U) T@U)
(declare-fun Tclass._module.Alt () T@U)
(declare-fun _module.MyOption.v (T@U) T@U)
(declare-fun |$IsA#_module.MyOption| (T@U) Bool)
(declare-fun DtRank (T@U) Int)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
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
(assert (distinct TInt TagInt alloc Tagclass._module.MyOption Tagclass._module.Alt |##_module.Alt.A| |##_module.Alt.B| |##_module.MyOption.Some| |##_module.MyOption.None| tytagFamily$MyOption tytagFamily$Alt)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (and (_module.Alt.A_q a) (_module.Alt.A_q b)) (= (|_module.Alt#Equal| a b) (= (_module.Alt._h0 a) (_module.Alt._h0 b))))
 :qid |unknown.0:0|
 :skolemid |558|
 :pattern ( (|_module.Alt#Equal| a b) (_module.Alt.A_q a))
 :pattern ( (|_module.Alt#Equal| a b) (_module.Alt.A_q b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (and (_module.Alt.B_q a@@0) (_module.Alt.B_q b@@0)) (= (|_module.Alt#Equal| a@@0 b@@0) (= (_module.Alt._h1 a@@0) (_module.Alt._h1 b@@0))))
 :qid |unknown.0:0|
 :skolemid |559|
 :pattern ( (|_module.Alt#Equal| a@@0 b@@0) (_module.Alt.B_q a@@0))
 :pattern ( (|_module.Alt#Equal| a@@0 b@@0) (_module.Alt.B_q b@@0))
)))
(assert (= (DatatypeCtorId |#_module.MyOption.None|) |##_module.MyOption.None|))
(assert (= (Ctor DatatypeTypeType) 3))
(assert ($Is DatatypeTypeType |#_module.MyOption.None| Tclass._module.MyOption))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|_module.Alt#Equal| a@@1 b@@1) (= a@@1 b@@1))
 :qid |unknown.0:0|
 :skolemid |560|
 :pattern ( (|_module.Alt#Equal| a@@1 b@@1))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (! (= (|_module.MyOption#Equal| a@@2 b@@2) (= a@@2 b@@2))
 :qid |unknown.0:0|
 :skolemid |577|
 :pattern ( (|_module.MyOption#Equal| a@@2 b@@2))
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
(assert (forall ((d T@U) ) (! (= (_module.Alt.A_q d) (= (DatatypeCtorId d) |##_module.Alt.A|))
 :qid |unknown.0:0|
 :skolemid |540|
 :pattern ( (_module.Alt.A_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Alt.B_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Alt.B|))
 :qid |unknown.0:0|
 :skolemid |548|
 :pattern ( (_module.Alt.B_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.MyOption.Some_q d@@1) (= (DatatypeCtorId d@@1) |##_module.MyOption.Some|))
 :qid |unknown.0:0|
 :skolemid |562|
 :pattern ( (_module.MyOption.Some_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.MyOption.None_q d@@2) (= (DatatypeCtorId d@@2) |##_module.MyOption.None|))
 :qid |unknown.0:0|
 :skolemid |570|
 :pattern ( (_module.MyOption.None_q d@@2))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_module.MyOption.None_q d@@3) (= d@@3 |#_module.MyOption.None|))
 :qid |unknown.0:0|
 :skolemid |571|
 :pattern ( (_module.MyOption.None_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.Alt.A_q d@@4) (exists ((|a#1#0#0| Int) ) (! (= d@@4 (|#_module.Alt.A| |a#1#0#0|))
 :qid |PatternMatchingdfy.8:18|
 :skolemid |541|
)))
 :qid |unknown.0:0|
 :skolemid |542|
 :pattern ( (_module.Alt.A_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (_module.Alt.B_q d@@5) (exists ((|a#6#0#0| Int) ) (! (= d@@5 (|#_module.Alt.B| |a#6#0#0|))
 :qid |PatternMatchingdfy.8:27|
 :skolemid |549|
)))
 :qid |unknown.0:0|
 :skolemid |550|
 :pattern ( (_module.Alt.B_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (_module.MyOption.Some_q d@@6) (exists ((|a#11#0#0| T@U) ) (! (= d@@6 (|#_module.MyOption.Some| |a#11#0#0|))
 :qid |PatternMatchingdfy.9:26|
 :skolemid |563|
)))
 :qid |unknown.0:0|
 :skolemid |564|
 :pattern ( (_module.MyOption.Some_q d@@6))
)))
(assert (forall ((|a#12#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.MyOption.Some| |a#12#0#0|) Tclass._module.MyOption) ($Is DatatypeTypeType |a#12#0#0| Tclass._module.Alt))
 :qid |PatternMatchingdfy.9:26|
 :skolemid |565|
 :pattern ( ($Is DatatypeTypeType (|#_module.MyOption.Some| |a#12#0#0|) Tclass._module.MyOption))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) ) (!  (=> (and (_module.MyOption.Some_q a@@3) (_module.MyOption.Some_q b@@3)) (= (|_module.MyOption#Equal| a@@3 b@@3) (|_module.Alt#Equal| (_module.MyOption.v a@@3) (_module.MyOption.v b@@3))))
 :qid |unknown.0:0|
 :skolemid |575|
 :pattern ( (|_module.MyOption#Equal| a@@3 b@@3) (_module.MyOption.Some_q a@@3))
 :pattern ( (|_module.MyOption#Equal| a@@3 b@@3) (_module.MyOption.Some_q b@@3))
)))
(assert (forall ((d@@7 T@U) ) (!  (=> (|$IsA#_module.MyOption| d@@7) (or (_module.MyOption.Some_q d@@7) (_module.MyOption.None_q d@@7)))
 :qid |unknown.0:0|
 :skolemid |573|
 :pattern ( (|$IsA#_module.MyOption| d@@7))
)))
(assert (forall ((d@@8 T@U) ) (!  (=> ($Is DatatypeTypeType d@@8 Tclass._module.Alt) (or (_module.Alt.A_q d@@8) (_module.Alt.B_q d@@8)))
 :qid |unknown.0:0|
 :skolemid |557|
 :pattern ( (_module.Alt.B_q d@@8) ($Is DatatypeTypeType d@@8 Tclass._module.Alt))
 :pattern ( (_module.Alt.A_q d@@8) ($Is DatatypeTypeType d@@8 Tclass._module.Alt))
)))
(assert (forall ((d@@9 T@U) ) (!  (=> ($Is DatatypeTypeType d@@9 Tclass._module.MyOption) (or (_module.MyOption.Some_q d@@9) (_module.MyOption.None_q d@@9)))
 :qid |unknown.0:0|
 :skolemid |574|
 :pattern ( (_module.MyOption.None_q d@@9) ($Is DatatypeTypeType d@@9 Tclass._module.MyOption))
 :pattern ( (_module.MyOption.Some_q d@@9) ($Is DatatypeTypeType d@@9 Tclass._module.MyOption))
)))
(assert (forall ((a@@4 T@U) (b@@4 T@U) ) (!  (=> (and (_module.MyOption.None_q a@@4) (_module.MyOption.None_q b@@4)) (|_module.MyOption#Equal| a@@4 b@@4))
 :qid |unknown.0:0|
 :skolemid |576|
 :pattern ( (|_module.MyOption#Equal| a@@4 b@@4) (_module.MyOption.None_q a@@4))
 :pattern ( (|_module.MyOption#Equal| a@@4 b@@4) (_module.MyOption.None_q b@@4))
)))
(assert (forall ((|a#0#0#0| Int) ) (! (= (DatatypeCtorId (|#_module.Alt.A| |a#0#0#0|)) |##_module.Alt.A|)
 :qid |PatternMatchingdfy.8:18|
 :skolemid |539|
 :pattern ( (|#_module.Alt.A| |a#0#0#0|))
)))
(assert (forall ((|a#4#0#0| Int) ) (! (= (_module.Alt._h0 (|#_module.Alt.A| |a#4#0#0|)) |a#4#0#0|)
 :qid |PatternMatchingdfy.8:18|
 :skolemid |546|
 :pattern ( (|#_module.Alt.A| |a#4#0#0|))
)))
(assert (forall ((|a#5#0#0| Int) ) (! (= (DatatypeCtorId (|#_module.Alt.B| |a#5#0#0|)) |##_module.Alt.B|)
 :qid |PatternMatchingdfy.8:27|
 :skolemid |547|
 :pattern ( (|#_module.Alt.B| |a#5#0#0|))
)))
(assert (forall ((|a#9#0#0| Int) ) (! (= (_module.Alt._h1 (|#_module.Alt.B| |a#9#0#0|)) |a#9#0#0|)
 :qid |PatternMatchingdfy.8:27|
 :skolemid |554|
 :pattern ( (|#_module.Alt.B| |a#9#0#0|))
)))
(assert (forall ((|a#10#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.MyOption.Some| |a#10#0#0|)) |##_module.MyOption.Some|)
 :qid |PatternMatchingdfy.9:26|
 :skolemid |561|
 :pattern ( (|#_module.MyOption.Some| |a#10#0#0|))
)))
(assert (forall ((|a#14#0#0| T@U) ) (! (= (_module.MyOption.v (|#_module.MyOption.Some| |a#14#0#0|)) |a#14#0#0|)
 :qid |PatternMatchingdfy.9:26|
 :skolemid |568|
 :pattern ( (|#_module.MyOption.Some| |a#14#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@5))
)))
(assert (forall ((|a#2#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.Alt.A| |a#2#0#0|) Tclass._module.Alt) ($Is intType (int_2_U |a#2#0#0|) TInt))
 :qid |PatternMatchingdfy.8:18|
 :skolemid |543|
 :pattern ( ($Is DatatypeTypeType (|#_module.Alt.A| |a#2#0#0|) Tclass._module.Alt))
)))
(assert (forall ((|a#7#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.Alt.B| |a#7#0#0|) Tclass._module.Alt) ($Is intType (int_2_U |a#7#0#0|) TInt))
 :qid |PatternMatchingdfy.8:27|
 :skolemid |551|
 :pattern ( ($Is DatatypeTypeType (|#_module.Alt.B| |a#7#0#0|) Tclass._module.Alt))
)))
(assert (forall ((|a#15#0#0| T@U) ) (! (< (DtRank |a#15#0#0|) (DtRank (|#_module.MyOption.Some| |a#15#0#0|)))
 :qid |PatternMatchingdfy.9:26|
 :skolemid |569|
 :pattern ( (|#_module.MyOption.Some| |a#15#0#0|))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 4)) (= (Ctor FieldType) 5)) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (= (Ctor BoxType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType1Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |658|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@10 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (_module.Alt.A_q d@@10) ($IsAlloc DatatypeTypeType d@@10 Tclass._module.Alt $h))) ($IsAlloc intType (int_2_U (_module.Alt._h0 d@@10)) TInt $h))
 :qid |unknown.0:0|
 :skolemid |544|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Alt._h0 d@@10)) TInt $h))
)))
(assert (forall ((d@@11 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.Alt.B_q d@@11) ($IsAlloc DatatypeTypeType d@@11 Tclass._module.Alt $h@@0))) ($IsAlloc intType (int_2_U (_module.Alt._h1 d@@11)) TInt $h@@0))
 :qid |unknown.0:0|
 :skolemid |552|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Alt._h1 d@@11)) TInt $h@@0))
)))
(assert (forall ((d@@12 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) ($Is DatatypeTypeType d@@12 Tclass._module.Alt)) ($IsAlloc DatatypeTypeType d@@12 Tclass._module.Alt $h@@1))
 :qid |unknown.0:0|
 :skolemid |555|
 :pattern ( ($IsAlloc DatatypeTypeType d@@12 Tclass._module.Alt $h@@1))
)))
(assert (forall ((d@@13 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) ($Is DatatypeTypeType d@@13 Tclass._module.MyOption)) ($IsAlloc DatatypeTypeType d@@13 Tclass._module.MyOption $h@@2))
 :qid |unknown.0:0|
 :skolemid |572|
 :pattern ( ($IsAlloc DatatypeTypeType d@@13 Tclass._module.MyOption $h@@2))
)))
(assert (= (Tag Tclass._module.MyOption) Tagclass._module.MyOption))
(assert (= (TagFamily Tclass._module.MyOption) tytagFamily$MyOption))
(assert (= (Tag Tclass._module.Alt) Tagclass._module.Alt))
(assert (= (TagFamily Tclass._module.Alt) tytagFamily$Alt))
(assert (= |#_module.MyOption.None| (Lit DatatypeTypeType |#_module.MyOption.None|)))
(assert (forall ((d@@14 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_module.MyOption.Some_q d@@14) ($IsAlloc DatatypeTypeType d@@14 Tclass._module.MyOption $h@@3))) ($IsAlloc DatatypeTypeType (_module.MyOption.v d@@14) Tclass._module.Alt $h@@3))
 :qid |unknown.0:0|
 :skolemid |566|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.MyOption.v d@@14) Tclass._module.Alt $h@@3))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#3#0#0| Int) ) (! (= (|#_module.Alt.A| (LitInt |a#3#0#0|)) (Lit DatatypeTypeType (|#_module.Alt.A| |a#3#0#0|)))
 :qid |PatternMatchingdfy.8:18|
 :skolemid |545|
 :pattern ( (|#_module.Alt.A| (LitInt |a#3#0#0|)))
)))
(assert (forall ((|a#8#0#0| Int) ) (! (= (|#_module.Alt.B| (LitInt |a#8#0#0|)) (Lit DatatypeTypeType (|#_module.Alt.B| |a#8#0#0|)))
 :qid |PatternMatchingdfy.8:27|
 :skolemid |553|
 :pattern ( (|#_module.Alt.B| (LitInt |a#8#0#0|)))
)))
(assert (forall ((|a#13#0#0| T@U) ) (! (= (|#_module.MyOption.Some| (Lit DatatypeTypeType |a#13#0#0|)) (Lit DatatypeTypeType (|#_module.MyOption.Some| |a#13#0#0|)))
 :qid |PatternMatchingdfy.9:26|
 :skolemid |567|
 :pattern ( (|#_module.MyOption.Some| (Lit DatatypeTypeType |a#13#0#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@7)) (Lit BoxType ($Box T@@2 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@7)))
)))
(assert (forall ((h T@U) (v T@U) ) (! ($IsAlloc intType v TInt h)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v TInt h))
)))
(assert (forall ((v@@0 T@U) ) (! ($Is intType v@@0 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@0 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |x#0| () T@U)
(declare-fun |r#0@3| () Int)
(declare-fun |_mcc#0#1_0@0| () T@U)
(declare-fun |_mcc#3#1_0_0@0| () Int)
(declare-fun |r#0@2| () Int)
(declare-fun |_mcc#1#1_1_0@0| () Int)
(declare-fun |let#1_1_0#0#0| () Int)
(declare-fun |i#1_1_0@0| () Int)
(declare-fun |r#0@1| () Int)
(declare-fun $Heap () T@U)
(declare-fun |r#0@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.OrderedTest)
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
 (=> (= (ControlFlow 0 0) 13) (let ((anon9_Else_correct true))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 3) (- 0 4)) (=> (|_module.MyOption#Equal| |x#0| |#_module.MyOption.None|) (= |r#0@3| (LitInt 2)))) (=> (=> (|_module.MyOption#Equal| |x#0| |#_module.MyOption.None|) (= |r#0@3| (LitInt 2))) (=> (= (ControlFlow 0 3) (- 0 2)) (=> (not (|_module.MyOption#Equal| |x#0| |#_module.MyOption.None|)) (< |r#0@3| 2)))))))
(let ((anon9_Then_correct  (=> (and (and (= |_mcc#0#1_0@0| (|#_module.Alt.B| |_mcc#3#1_0_0@0|)) (= |r#0@2| (LitInt 1))) (and (= |r#0@3| |r#0@2|) (= (ControlFlow 0 8) 3))) GeneratedUnifiedExit_correct)))
(let ((anon8_Else_correct  (=> (or (not (= |_mcc#0#1_0@0| (|#_module.Alt.A| |_mcc#1#1_1_0@0|))) (not true)) (and (=> (= (ControlFlow 0 10) 8) anon9_Then_correct) (=> (= (ControlFlow 0 10) 9) anon9_Else_correct)))))
(let ((anon8_Then_correct  (=> (= |_mcc#0#1_0@0| (|#_module.Alt.A| |_mcc#1#1_1_0@0|)) (=> (and (= |let#1_1_0#0#0| |_mcc#1#1_1_0@0|) ($Is intType (int_2_U |let#1_1_0#0#0|) TInt)) (=> (and (and (= |i#1_1_0@0| |let#1_1_0#0#0|) (= |r#0@1| (LitInt 0))) (and (= |r#0@3| |r#0@1|) (= (ControlFlow 0 7) 3))) GeneratedUnifiedExit_correct)))))
(let ((anon7_Then_correct  (=> (= |x#0| (|#_module.MyOption.Some| |_mcc#0#1_0@0|)) (=> (and ($Is DatatypeTypeType |_mcc#0#1_0@0| Tclass._module.Alt) ($IsAlloc DatatypeTypeType |_mcc#0#1_0@0| Tclass._module.Alt $Heap)) (and (=> (= (ControlFlow 0 11) 7) anon8_Then_correct) (=> (= (ControlFlow 0 11) 10) anon8_Else_correct))))))
(let ((anon10_Then_correct  (=> (and (and (= |x#0| |#_module.MyOption.None|) (= |r#0@0| (LitInt 2))) (and (= |r#0@3| |r#0@0|) (= (ControlFlow 0 5) 3))) GeneratedUnifiedExit_correct)))
(let ((anon10_Else_correct true))
(let ((anon7_Else_correct  (=> (or (not (= |x#0| (|#_module.MyOption.Some| |_mcc#0#1_0@0|))) (not true)) (and (=> (= (ControlFlow 0 6) 5) anon10_Then_correct) (=> (= (ControlFlow 0 6) 1) anon10_Else_correct)))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 12) 11) anon7_Then_correct) (=> (= (ControlFlow 0 12) 6) anon7_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is DatatypeTypeType |x#0| Tclass._module.MyOption) ($IsAlloc DatatypeTypeType |x#0| Tclass._module.MyOption $Heap)) (|$IsA#_module.MyOption| |x#0|)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 13) 12))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
