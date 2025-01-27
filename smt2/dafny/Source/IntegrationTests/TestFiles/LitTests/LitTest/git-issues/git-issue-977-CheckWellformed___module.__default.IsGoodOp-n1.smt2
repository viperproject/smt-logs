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
(declare-fun Tagclass._module.Option () T@U)
(declare-fun |##_module.Option.Some| () T@U)
(declare-fun |##_module.Option.None| () T@U)
(declare-fun tytagFamily$Option () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.IsGoodOpt__IfThenElse (T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |_module.__default.IsGoodOpt__IfThenElse#canCall| (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._module.Option (T@U) T@U)
(declare-fun _module.Option.Some_q (T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun _module.Option.value (T@U) T@U)
(declare-fun |_module.__default.IsGoodInt#canCall| (Int) Bool)
(declare-fun _module.__default.IsGoodInt (Int) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.Option.None| () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun _module.Option.None_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.Option.Some| (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Tclass._module.Option_0 (T@U) T@U)
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
(assert (distinct TBool TInt TagBool TagInt alloc Tagclass._module.Option |##_module.Option.Some| |##_module.Option.None| tytagFamily$Option)
)
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor DatatypeTypeType) 3))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|opt#0| T@U) ) (!  (=> (or (|_module.__default.IsGoodOpt__IfThenElse#canCall| (Lit DatatypeTypeType |opt#0|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |opt#0| (Tclass._module.Option TInt)))) (and (=> (U_2_bool (Lit boolType (bool_2_U (_module.Option.Some_q (Lit DatatypeTypeType |opt#0|))))) (let ((|x#1| (LitInt (U_2_int ($Unbox intType (_module.Option.value (Lit DatatypeTypeType |opt#0|)))))))
(|_module.__default.IsGoodInt#canCall| |x#1|))) (= (_module.__default.IsGoodOpt__IfThenElse (Lit DatatypeTypeType |opt#0|)) (ite (_module.Option.Some_q (Lit DatatypeTypeType |opt#0|)) (U_2_bool (let ((|x#1@@0| (LitInt (U_2_int ($Unbox intType (_module.Option.value (Lit DatatypeTypeType |opt#0|)))))))
(Lit boolType (bool_2_U (_module.__default.IsGoodInt |x#1@@0|))))) true))))
 :qid |gitissue977dfy.18:38|
 :weight 3
 :skolemid |1162|
 :pattern ( (_module.__default.IsGoodOpt__IfThenElse (Lit DatatypeTypeType |opt#0|)))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0| Int) ) (!  (=> (or (|_module.__default.IsGoodInt#canCall| (LitInt |x#0|)) (< 0 $FunctionContextHeight)) (= (_module.__default.IsGoodInt (LitInt |x#0|))  (and (<= (LitInt 0) (LitInt |x#0|)) (or (not (= |x#0| 5)) (not true)))))
 :qid |gitissue977dfy.6:27|
 :weight 3
 :skolemid |1150|
 :pattern ( (_module.__default.IsGoodInt (LitInt |x#0|)))
))))
(assert (= (DatatypeCtorId |#_module.Option.None|) |##_module.Option.None|))
(assert (forall ((_module.Option$V T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) ($IsAlloc DatatypeTypeType |#_module.Option.None| (Tclass._module.Option _module.Option$V) $h))
 :qid |unknown.0:0|
 :skolemid |1305|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.Option.None| (Tclass._module.Option _module.Option$V) $h))
)))
(assert (forall ((_module.Option$V@@0 T@U) ) (! ($Is DatatypeTypeType |#_module.Option.None| (Tclass._module.Option _module.Option$V@@0))
 :qid |unknown.0:0|
 :skolemid |1304|
 :pattern ( ($Is DatatypeTypeType |#_module.Option.None| (Tclass._module.Option _module.Option$V@@0)))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |636|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |634|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((d T@U) ) (! (= (_module.Option.Some_q d) (= (DatatypeCtorId d) |##_module.Option.Some|))
 :qid |unknown.0:0|
 :skolemid |1293|
 :pattern ( (_module.Option.Some_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Option.None_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Option.None|))
 :qid |unknown.0:0|
 :skolemid |1302|
 :pattern ( (_module.Option.None_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |645|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.Option.None_q d@@1) (= d@@1 |#_module.Option.None|))
 :qid |unknown.0:0|
 :skolemid |1303|
 :pattern ( (_module.Option.None_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.Option.Some_q d@@2) (exists ((|a#1#0#0| T@U) ) (! (= d@@2 (|#_module.Option.Some| |a#1#0#0|))
 :qid |gitissue977dfy.4:27|
 :skolemid |1294|
)))
 :qid |unknown.0:0|
 :skolemid |1295|
 :pattern ( (_module.Option.Some_q d@@2))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |658|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((_module.Option$V@@1 T@U) ) (!  (and (= (Tag (Tclass._module.Option _module.Option$V@@1)) Tagclass._module.Option) (= (TagFamily (Tclass._module.Option _module.Option$V@@1)) tytagFamily$Option))
 :qid |unknown.0:0|
 :skolemid |1151|
 :pattern ( (Tclass._module.Option _module.Option$V@@1))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|opt#0@@0| T@U) ) (!  (=> (or (|_module.__default.IsGoodOpt__IfThenElse#canCall| |opt#0@@0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |opt#0@@0| (Tclass._module.Option TInt)))) (and (=> (_module.Option.Some_q |opt#0@@0|) (let ((|x#0@@0| (U_2_int ($Unbox intType (_module.Option.value |opt#0@@0|)))))
(|_module.__default.IsGoodInt#canCall| |x#0@@0|))) (= (_module.__default.IsGoodOpt__IfThenElse |opt#0@@0|) (ite (_module.Option.Some_q |opt#0@@0|) (let ((|x#0@@1| (U_2_int ($Unbox intType (_module.Option.value |opt#0@@0|)))))
(_module.__default.IsGoodInt |x#0@@1|)) true))))
 :qid |gitissue977dfy.18:38|
 :skolemid |1161|
 :pattern ( (_module.__default.IsGoodOpt__IfThenElse |opt#0@@0|))
))))
(assert (forall ((_module.Option$V@@2 T@U) (|a#2#0#0| T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) (= ($IsAlloc DatatypeTypeType (|#_module.Option.Some| |a#2#0#0|) (Tclass._module.Option _module.Option$V@@2) $h@@0) ($IsAllocBox |a#2#0#0| _module.Option$V@@2 $h@@0)))
 :qid |unknown.0:0|
 :skolemid |1297|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Option.Some| |a#2#0#0|) (Tclass._module.Option _module.Option$V@@2) $h@@0))
)))
(assert (forall ((_module.Option$V@@3 T@U) (d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 (Tclass._module.Option _module.Option$V@@3)) (or (_module.Option.Some_q d@@3) (_module.Option.None_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |1307|
 :pattern ( (_module.Option.None_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass._module.Option _module.Option$V@@3)))
 :pattern ( (_module.Option.Some_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass._module.Option _module.Option$V@@3)))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx TInt) (and (= ($Box intType ($Unbox intType bx)) bx) ($Is intType ($Unbox intType bx) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |646|
 :pattern ( ($IsBox bx TInt))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TBool) (and (= ($Box boolType ($Unbox boolType bx@@0)) bx@@0) ($Is boolType ($Unbox boolType bx@@0) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |648|
 :pattern ( ($IsBox bx@@0 TBool))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |657|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((_module.Option$V@@4 T@U) ) (! (= (Tclass._module.Option_0 (Tclass._module.Option _module.Option$V@@4)) _module.Option$V@@4)
 :qid |unknown.0:0|
 :skolemid |1152|
 :pattern ( (Tclass._module.Option _module.Option$V@@4))
)))
(assert (forall ((|a#0#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Option.Some| |a#0#0#0|)) |##_module.Option.Some|)
 :qid |gitissue977dfy.4:27|
 :skolemid |1292|
 :pattern ( (|#_module.Option.Some| |a#0#0#0|))
)))
(assert (forall ((|a#4#0#0| T@U) ) (! (= (_module.Option.value (|#_module.Option.Some| |a#4#0#0|)) |a#4#0#0|)
 :qid |gitissue977dfy.4:27|
 :skolemid |1300|
 :pattern ( (|#_module.Option.Some| |a#4#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |644|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((_module.Option$V@@5 T@U) (|a#2#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Option.Some| |a#2#0#0@@0|) (Tclass._module.Option _module.Option$V@@5)) ($IsBox |a#2#0#0@@0| _module.Option$V@@5))
 :qid |unknown.0:0|
 :skolemid |1296|
 :pattern ( ($Is DatatypeTypeType (|#_module.Option.Some| |a#2#0#0@@0|) (Tclass._module.Option _module.Option$V@@5)))
)))
(assert (forall ((|a#5#0#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_module.Option.Some| |a#5#0#0|)))
 :qid |gitissue977dfy.4:27|
 :skolemid |1301|
 :pattern ( (|#_module.Option.Some| |a#5#0#0|))
)))
(assert (forall ((d@@4 T@U) (_module.Option$V@@6 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.Option.Some_q d@@4) ($IsAlloc DatatypeTypeType d@@4 (Tclass._module.Option _module.Option$V@@6) $h@@1))) ($IsAllocBox (_module.Option.value d@@4) _module.Option$V@@6 $h@@1))
 :qid |unknown.0:0|
 :skolemid |1298|
 :pattern ( ($IsAllocBox (_module.Option.value d@@4) _module.Option$V@@6 $h@@1))
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
 :skolemid |1405|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@5 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@5)) (DtRank d@@5))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |703|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@5)))
)))
(assert (forall ((_module.Option$V@@7 T@U) (bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 (Tclass._module.Option _module.Option$V@@7)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) (Tclass._module.Option _module.Option$V@@7))))
 :qid |unknown.0:0|
 :skolemid |1153|
 :pattern ( ($IsBox bx@@1 (Tclass._module.Option _module.Option$V@@7)))
)))
(assert (= |#_module.Option.None| (Lit DatatypeTypeType |#_module.Option.None|)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0@@2| Int) ) (!  (=> (or (|_module.__default.IsGoodInt#canCall| |x#0@@2|) (< 0 $FunctionContextHeight)) (= (_module.__default.IsGoodInt |x#0@@2|)  (and (<= (LitInt 0) |x#0@@2|) (or (not (= |x#0@@2| 5)) (not true)))))
 :qid |gitissue977dfy.6:27|
 :skolemid |1149|
 :pattern ( (_module.__default.IsGoodInt |x#0@@2|))
))))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |637|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#3#0#0| T@U) ) (! (= (|#_module.Option.Some| (Lit BoxType |a#3#0#0|)) (Lit DatatypeTypeType (|#_module.Option.Some| |a#3#0#0|)))
 :qid |gitissue977dfy.4:27|
 :skolemid |1299|
 :pattern ( (|#_module.Option.Some| (Lit BoxType |a#3#0#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |635|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((h@@0 T@U) (v@@1 T@U) ) (! ($IsAlloc intType v@@1 TInt h@@0)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |680|
 :pattern ( ($IsAlloc intType v@@1 TInt h@@0))
)))
(assert (forall ((h@@1 T@U) (v@@2 T@U) ) (! ($IsAlloc boolType v@@2 TBool h@@1)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |682|
 :pattern ( ($IsAlloc boolType v@@2 TBool h@@1))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is intType v@@3 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |659|
 :pattern ( ($Is intType v@@3 TInt))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is boolType v@@4 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |661|
 :pattern ( ($Is boolType v@@4 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |opt#0@@1| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.IsGoodOpt__IfThenElse)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon8_Else_correct true))
(let ((anon8_Then_correct  (=> (and (_module.Option.Some_q |opt#0@@1|) (= (ControlFlow 0 3) (- 0 2))) (_module.Option.Some_q |opt#0@@1|))))
(let ((anon7_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 5) 1) anon7_Then_correct) (=> (= (ControlFlow 0 5) 3) anon8_Then_correct)) (=> (= (ControlFlow 0 5) 4) anon8_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) ($Is DatatypeTypeType |opt#0@@1| (Tclass._module.Option TInt))) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 6) 5))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
