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
(declare-fun TReal () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagReal () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._module.Dt () T@U)
(declare-fun |##_module.Dt.Blue| () T@U)
(declare-fun |##_module.Dt.Bucket| () T@U)
(declare-fun |##_module.Dt.Business| () T@U)
(declare-fun tytagFamily$Dt () T@U)
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
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.Dt.Blue| () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Dt (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.Dt.F (T@U T@U Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun |_module.Dt.F#canCall| (T@U T@U Int) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun _module.Dt.Bucket_q (T@U) Bool)
(declare-fun q@Int (Real) Int)
(declare-fun LitReal (Real) Real)
(declare-fun _module.Dt.diameter (T@U) Real)
(declare-fun |#_module.Dt.Business| (Bool T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun _module.Dt.Blue_q (T@U) Bool)
(declare-fun _module.Dt.Business_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.Dt.Bucket| (Real) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun _module.Dt.trendy (T@U) Bool)
(declare-fun _module.Dt.a (T@U) T@U)
(declare-fun Tclass._module.Dt_0 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
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
(assert (distinct TBool TInt TReal TagBool TagInt TagReal alloc Tagclass._module.Dt |##_module.Dt.Blue| |##_module.Dt.Bucket| |##_module.Dt.Business| tytagFamily$Dt)
)
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert (= (Tag TReal) TagReal))
(assert (= (DatatypeCtorId |#_module.Dt.Blue|) |##_module.Dt.Blue|))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((_module.Dt$A T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) ($IsAlloc DatatypeTypeType |#_module.Dt.Blue| (Tclass._module.Dt _module.Dt$A) $h))
 :qid |unknown.0:0|
 :skolemid |550|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.Dt.Blue| (Tclass._module.Dt _module.Dt$A) $h))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.Dt$A@@0 T@U) (this T@U) (|x#0| Int) ) (!  (=> (or (|_module.Dt.F#canCall| _module.Dt$A@@0 (Lit DatatypeTypeType this) (LitInt |x#0|)) (and (< 0 $FunctionContextHeight) ($Is DatatypeTypeType this (Tclass._module.Dt _module.Dt$A@@0)))) (= (_module.Dt.F _module.Dt$A@@0 (Lit DatatypeTypeType this) (LitInt |x#0|)) (+ |x#0| (ite (_module.Dt.Bucket_q (Lit DatatypeTypeType this)) (q@Int (LitReal (_module.Dt.diameter (Lit DatatypeTypeType this)))) 25))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |589|
 :pattern ( (_module.Dt.F _module.Dt$A@@0 (Lit DatatypeTypeType this) (LitInt |x#0|)))
))))
(assert (forall ((_module.Dt$A@@1 T@U) (|a#11#0#0| Bool) (|a#11#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Dt.Business| |a#11#0#0| |a#11#1#0|) (Tclass._module.Dt _module.Dt$A@@1))  (and ($Is boolType (bool_2_U |a#11#0#0|) TBool) ($IsBox |a#11#1#0| _module.Dt$A@@1)))
 :qid |unknown.0:0|
 :skolemid |565|
 :pattern ( ($Is DatatypeTypeType (|#_module.Dt.Business| |a#11#0#0| |a#11#1#0|) (Tclass._module.Dt _module.Dt$A@@1)))
)))
(assert (forall ((_module.Dt$A@@2 T@U) ) (! ($Is DatatypeTypeType |#_module.Dt.Blue| (Tclass._module.Dt _module.Dt$A@@2))
 :qid |unknown.0:0|
 :skolemid |549|
 :pattern ( ($Is DatatypeTypeType |#_module.Dt.Blue| (Tclass._module.Dt _module.Dt$A@@2)))
)))
(assert (forall ((x@@2 Real) ) (! (= (q@Int x@@2) (to_int x@@2))
 :qid |DafnyPreludebpl.578:14|
 :skolemid |113|
 :pattern ( (q@Int x@@2))
)))
(assert (forall ((x@@3 Int) ) (! (= (LitInt x@@3) x@@3)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@3))
)))
(assert (forall ((x@@4 Real) ) (! (= (LitReal x@@4) x@@4)
 :qid |DafnyPreludebpl.111:30|
 :skolemid |19|
 :pattern ( (LitReal x@@4))
)))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= (Lit T x@@5) x@@5)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@5))
)))
(assert (forall ((d T@U) ) (! (= (_module.Dt.Blue_q d) (= (DatatypeCtorId d) |##_module.Dt.Blue|))
 :qid |unknown.0:0|
 :skolemid |547|
 :pattern ( (_module.Dt.Blue_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Dt.Bucket_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Dt.Bucket|))
 :qid |unknown.0:0|
 :skolemid |552|
 :pattern ( (_module.Dt.Bucket_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.Dt.Business_q d@@1) (= (DatatypeCtorId d@@1) |##_module.Dt.Business|))
 :qid |unknown.0:0|
 :skolemid |562|
 :pattern ( (_module.Dt.Business_q d@@1))
)))
(assert (forall ((x@@6 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@6)) x@@6)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@6))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.Dt.Business_q d@@2) (exists ((|a#10#0#0| Bool) (|a#10#1#0| T@U) ) (! (= d@@2 (|#_module.Dt.Business| |a#10#0#0| |a#10#1#0|))
 :qid |TypeMembersdfy.82:59|
 :skolemid |563|
)))
 :qid |unknown.0:0|
 :skolemid |564|
 :pattern ( (_module.Dt.Business_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_module.Dt.Blue_q d@@3) (= d@@3 |#_module.Dt.Blue|))
 :qid |unknown.0:0|
 :skolemid |548|
 :pattern ( (_module.Dt.Blue_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.Dt.Bucket_q d@@4) (exists ((|a#5#0#0| Real) ) (! (= d@@4 (|#_module.Dt.Bucket| |a#5#0#0|))
 :qid |TypeMembersdfy.82:32|
 :skolemid |553|
)))
 :qid |unknown.0:0|
 :skolemid |554|
 :pattern ( (_module.Dt.Bucket_q d@@4))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.Dt$A@@3 T@U) (this@@0 T@U) (|x#0@@0| Int) ) (!  (=> (or (|_module.Dt.F#canCall| _module.Dt$A@@3 this@@0 |x#0@@0|) (and (< 0 $FunctionContextHeight) ($Is DatatypeTypeType this@@0 (Tclass._module.Dt _module.Dt$A@@3)))) (= (_module.Dt.F _module.Dt$A@@3 this@@0 |x#0@@0|) (+ |x#0@@0| (ite (_module.Dt.Bucket_q this@@0) (q@Int (_module.Dt.diameter this@@0)) 25))))
 :qid |unknown.0:0|
 :skolemid |588|
 :pattern ( (_module.Dt.F _module.Dt$A@@3 this@@0 |x#0@@0|))
))))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((_module.Dt$A@@4 T@U) ) (!  (and (= (Tag (Tclass._module.Dt _module.Dt$A@@4)) Tagclass._module.Dt) (= (TagFamily (Tclass._module.Dt _module.Dt$A@@4)) tytagFamily$Dt))
 :qid |unknown.0:0|
 :skolemid |498|
 :pattern ( (Tclass._module.Dt _module.Dt$A@@4))
)))
(assert (forall ((d@@5 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.Dt.Bucket_q d@@5) (exists ((_module.Dt$A@@5 T@U) ) (! ($IsAlloc DatatypeTypeType d@@5 (Tclass._module.Dt _module.Dt$A@@5) $h@@0)
 :qid |unknown.0:0|
 :skolemid |557|
 :pattern ( ($IsAlloc DatatypeTypeType d@@5 (Tclass._module.Dt _module.Dt$A@@5) $h@@0))
)))) ($IsAlloc realType (real_2_U (_module.Dt.diameter d@@5)) TReal $h@@0))
 :qid |unknown.0:0|
 :skolemid |558|
 :pattern ( ($IsAlloc realType (real_2_U (_module.Dt.diameter d@@5)) TReal $h@@0))
)))
(assert (forall ((d@@6 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.Dt.Business_q d@@6) (exists ((_module.Dt$A@@6 T@U) ) (! ($IsAlloc DatatypeTypeType d@@6 (Tclass._module.Dt _module.Dt$A@@6) $h@@1)
 :qid |unknown.0:0|
 :skolemid |567|
 :pattern ( ($IsAlloc DatatypeTypeType d@@6 (Tclass._module.Dt _module.Dt$A@@6) $h@@1))
)))) ($IsAlloc boolType (bool_2_U (_module.Dt.trendy d@@6)) TBool $h@@1))
 :qid |unknown.0:0|
 :skolemid |568|
 :pattern ( ($IsAlloc boolType (bool_2_U (_module.Dt.trendy d@@6)) TBool $h@@1))
)))
(assert (forall ((_module.Dt$A@@7 T@U) (|a#6#0#0| Real) ($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) (= ($IsAlloc DatatypeTypeType (|#_module.Dt.Bucket| |a#6#0#0|) (Tclass._module.Dt _module.Dt$A@@7) $h@@2) ($IsAlloc realType (real_2_U |a#6#0#0|) TReal $h@@2)))
 :qid |unknown.0:0|
 :skolemid |556|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Dt.Bucket| |a#6#0#0|) (Tclass._module.Dt _module.Dt$A@@7) $h@@2))
)))
(assert (forall ((|a#13#0#0| Bool) (|a#13#1#0| T@U) ) (! (= (_module.Dt.trendy (|#_module.Dt.Business| |a#13#0#0| |a#13#1#0|)) |a#13#0#0|)
 :qid |TypeMembersdfy.82:59|
 :skolemid |571|
 :pattern ( (|#_module.Dt.Business| |a#13#0#0| |a#13#1#0|))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx TInt) (and (= ($Box intType ($Unbox intType bx)) bx) ($Is intType ($Unbox intType bx) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx TInt))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TReal) (and (= ($Box realType ($Unbox realType bx@@0)) bx@@0) ($Is realType ($Unbox realType bx@@0) TReal)))
 :qid |DafnyPreludebpl.179:15|
 :skolemid |28|
 :pattern ( ($IsBox bx@@0 TReal))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TBool) (and (= ($Box boolType ($Unbox boolType bx@@1)) bx@@1) ($Is boolType ($Unbox boolType bx@@1) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@1 TBool))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((|a#9#0#0| Bool) (|a#9#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Dt.Business| |a#9#0#0| |a#9#1#0|)) |##_module.Dt.Business|)
 :qid |TypeMembersdfy.82:59|
 :skolemid |561|
 :pattern ( (|#_module.Dt.Business| |a#9#0#0| |a#9#1#0|))
)))
(assert (forall ((|a#14#0#0| Bool) (|a#14#1#0| T@U) ) (! (= (_module.Dt.a (|#_module.Dt.Business| |a#14#0#0| |a#14#1#0|)) |a#14#1#0|)
 :qid |TypeMembersdfy.82:59|
 :skolemid |572|
 :pattern ( (|#_module.Dt.Business| |a#14#0#0| |a#14#1#0|))
)))
(assert (forall ((_module.Dt$A@@8 T@U) ) (! (= (Tclass._module.Dt_0 (Tclass._module.Dt _module.Dt$A@@8)) _module.Dt$A@@8)
 :qid |unknown.0:0|
 :skolemid |499|
 :pattern ( (Tclass._module.Dt _module.Dt$A@@8))
)))
(assert (forall ((|a#4#0#0| Real) ) (! (= (DatatypeCtorId (|#_module.Dt.Bucket| |a#4#0#0|)) |##_module.Dt.Bucket|)
 :qid |TypeMembersdfy.82:32|
 :skolemid |551|
 :pattern ( (|#_module.Dt.Bucket| |a#4#0#0|))
)))
(assert (forall ((|a#8#0#0| Real) ) (! (= (_module.Dt.diameter (|#_module.Dt.Bucket| |a#8#0#0|)) |a#8#0#0|)
 :qid |TypeMembersdfy.82:32|
 :skolemid |560|
 :pattern ( (|#_module.Dt.Bucket| |a#8#0#0|))
)))
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@7)) x@@7)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@7))
)))
(assert (forall ((_module.Dt$A@@9 T@U) (|a#6#0#0@@0| Real) ) (! (= ($Is DatatypeTypeType (|#_module.Dt.Bucket| |a#6#0#0@@0|) (Tclass._module.Dt _module.Dt$A@@9)) ($Is realType (real_2_U |a#6#0#0@@0|) TReal))
 :qid |unknown.0:0|
 :skolemid |555|
 :pattern ( ($Is DatatypeTypeType (|#_module.Dt.Bucket| |a#6#0#0@@0|) (Tclass._module.Dt _module.Dt$A@@9)))
)))
(assert (forall ((|a#15#0#0| Bool) (|a#15#1#0| T@U) ) (! (< (BoxRank |a#15#1#0|) (DtRank (|#_module.Dt.Business| |a#15#0#0| |a#15#1#0|)))
 :qid |TypeMembersdfy.82:59|
 :skolemid |573|
 :pattern ( (|#_module.Dt.Business| |a#15#0#0| |a#15#1#0|))
)))
(assert (forall ((_module.Dt$A@@10 T@U) (d@@7 T@U) ) (!  (=> ($Is DatatypeTypeType d@@7 (Tclass._module.Dt _module.Dt$A@@10)) (or (or (_module.Dt.Blue_q d@@7) (_module.Dt.Bucket_q d@@7)) (_module.Dt.Business_q d@@7)))
 :qid |unknown.0:0|
 :skolemid |575|
 :pattern ( (_module.Dt.Business_q d@@7) ($Is DatatypeTypeType d@@7 (Tclass._module.Dt _module.Dt$A@@10)))
 :pattern ( (_module.Dt.Bucket_q d@@7) ($Is DatatypeTypeType d@@7 (Tclass._module.Dt _module.Dt$A@@10)))
 :pattern ( (_module.Dt.Blue_q d@@7) ($Is DatatypeTypeType d@@7 (Tclass._module.Dt _module.Dt$A@@10)))
)))
(assert (forall ((d@@8 T@U) (_module.Dt$A@@11 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_module.Dt.Business_q d@@8) ($IsAlloc DatatypeTypeType d@@8 (Tclass._module.Dt _module.Dt$A@@11) $h@@3))) ($IsAllocBox (_module.Dt.a d@@8) _module.Dt$A@@11 $h@@3))
 :qid |unknown.0:0|
 :skolemid |569|
 :pattern ( ($IsAllocBox (_module.Dt.a d@@8) _module.Dt$A@@11 $h@@3))
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
 :skolemid |785|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@9 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@9)) (DtRank d@@9))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@9)))
)))
(assert (forall ((_module.Dt$A@@12 T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass._module.Dt _module.Dt$A@@12)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@2)) bx@@2) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@2) (Tclass._module.Dt _module.Dt$A@@12))))
 :qid |unknown.0:0|
 :skolemid |500|
 :pattern ( ($IsBox bx@@2 (Tclass._module.Dt _module.Dt$A@@12)))
)))
(assert (= |#_module.Dt.Blue| (Lit DatatypeTypeType |#_module.Dt.Blue|)))
(assert (forall ((_module.Dt$A@@13 T@U) (|a#11#0#0@@0| Bool) (|a#11#1#0@@0| T@U) ($h@@4 T@U) ) (!  (=> ($IsGoodHeap $h@@4) (= ($IsAlloc DatatypeTypeType (|#_module.Dt.Business| |a#11#0#0@@0| |a#11#1#0@@0|) (Tclass._module.Dt _module.Dt$A@@13) $h@@4)  (and ($IsAlloc boolType (bool_2_U |a#11#0#0@@0|) TBool $h@@4) ($IsAllocBox |a#11#1#0@@0| _module.Dt$A@@13 $h@@4))))
 :qid |unknown.0:0|
 :skolemid |566|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Dt.Business| |a#11#0#0@@0| |a#11#1#0@@0|) (Tclass._module.Dt _module.Dt$A@@13) $h@@4))
)))
(assert (forall ((|a#12#0#0| T@U) (|a#12#1#0| T@U) ) (! (= (|#_module.Dt.Business| (U_2_bool (Lit boolType |a#12#0#0|)) (Lit BoxType |a#12#1#0|)) (Lit DatatypeTypeType (|#_module.Dt.Business| (U_2_bool |a#12#0#0|) |a#12#1#0|)))
 :qid |TypeMembersdfy.82:59|
 :skolemid |570|
 :pattern ( (|#_module.Dt.Business| (U_2_bool (Lit boolType |a#12#0#0|)) (Lit BoxType |a#12#1#0|)))
)))
(assert (forall ((x@@8 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@8))) (Lit BoxType ($Box intType (int_2_U x@@8))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@8))))
)))
(assert (forall ((x@@9 Real) ) (! (= ($Box realType (real_2_U (LitReal x@@9))) (Lit BoxType ($Box realType (real_2_U x@@9))))
 :qid |DafnyPreludebpl.112:15|
 :skolemid |20|
 :pattern ( ($Box realType (real_2_U (LitReal x@@9))))
)))
(assert (forall ((|a#7#0#0| Real) ) (! (= (|#_module.Dt.Bucket| (LitReal |a#7#0#0|)) (Lit DatatypeTypeType (|#_module.Dt.Bucket| |a#7#0#0|)))
 :qid |TypeMembersdfy.82:32|
 :skolemid |559|
 :pattern ( (|#_module.Dt.Bucket| (LitReal |a#7#0#0|)))
)))
(assert (forall ((x@@10 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@10)) (Lit BoxType ($Box T@@4 x@@10)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@10)))
)))
(assert (forall ((h@@0 T@U) (v@@1 T@U) ) (! ($IsAlloc intType v@@1 TInt h@@0)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@1 TInt h@@0))
)))
(assert (forall ((h@@1 T@U) (v@@2 T@U) ) (! ($IsAlloc realType v@@2 TReal h@@1)
 :qid |DafnyPreludebpl.290:14|
 :skolemid |62|
 :pattern ( ($IsAlloc realType v@@2 TReal h@@1))
)))
(assert (forall ((h@@2 T@U) (v@@3 T@U) ) (! ($IsAlloc boolType v@@3 TBool h@@2)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@3 TBool h@@2))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is intType v@@4 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@4 TInt))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is realType v@@5 TReal)
 :qid |DafnyPreludebpl.229:14|
 :skolemid |41|
 :pattern ( ($Is realType v@@5 TReal))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is boolType v@@6 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@6 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun this@@1 () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun _module.Dt$A@@14 () T@U)
(set-info :boogie-vc-id CheckWellformed$$_module.Dt.F)
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
 (=> (= (ControlFlow 0 0) 7) (let ((anon6_correct true))
(let ((anon9_Else_correct  (=> (and (not (_module.Dt.Bucket_q this@@1)) (= (ControlFlow 0 5) 2)) anon6_correct)))
(let ((anon9_Then_correct  (=> (_module.Dt.Bucket_q this@@1) (and (=> (= (ControlFlow 0 3) (- 0 4)) (_module.Dt.Bucket_q this@@1)) (=> (_module.Dt.Bucket_q this@@1) (=> (= (ControlFlow 0 3) 2) anon6_correct))))))
(let ((anon8_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 6) 1) anon8_Then_correct) (=> (= (ControlFlow 0 6) 3) anon9_Then_correct)) (=> (= (ControlFlow 0 6) 5) anon9_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is DatatypeTypeType this@@1 (Tclass._module.Dt _module.Dt$A@@14)) ($IsAlloc DatatypeTypeType this@@1 (Tclass._module.Dt _module.Dt$A@@14) $Heap)) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 7) 6))) anon0_correct))))
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
