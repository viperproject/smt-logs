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
(declare-fun |##_module.List.Nil| () T@U)
(declare-fun Tagclass._module.List () T@U)
(declare-fun |##_module.List.Cons| () T@U)
(declare-fun tytagFamily$List () T@U)
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
(declare-fun _module.List.App (T@U T@U T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |_module.List.App#canCall| (T@U T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._module.List (T@U) T@U)
(declare-fun _module.List.Nil_q (T@U) Bool)
(declare-fun _module.List._h1 (T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun _module.List._h0 (T@U) T@U)
(declare-fun |#_module.List.Cons| (T@U T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.List.Nil| () T@U)
(declare-fun _module.List.Concat (T@U T@U T@U T@U) T@U)
(declare-fun |_module.List.Concat#canCall| (T@U T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $LZ () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun _module.List.Cons_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun Tclass._module.List_0 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
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
(assert (distinct alloc |##_module.List.Nil| Tagclass._module.List |##_module.List.Cons| tytagFamily$List)
)
(assert  (and (= (Ctor DatatypeTypeType) 3) (= (Ctor BoxType) 4)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.List$T T@U) ($ly T@U) (this T@U) (|ys#0| T@U) ) (!  (=> (or (|_module.List.App#canCall| _module.List$T (Lit DatatypeTypeType this) (Lit DatatypeTypeType |ys#0|)) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType this (Tclass._module.List _module.List$T)) ($Is DatatypeTypeType |ys#0| (Tclass._module.List _module.List$T))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType this)))))) (let ((|xs#3| (Lit DatatypeTypeType (_module.List._h1 (Lit DatatypeTypeType this)))))
(|_module.List.App#canCall| _module.List$T |xs#3| (Lit DatatypeTypeType |ys#0|)))) (= (_module.List.App _module.List$T ($LS $ly) (Lit DatatypeTypeType this) (Lit DatatypeTypeType |ys#0|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType this)) |ys#0| (let ((|xs#2| (Lit DatatypeTypeType (_module.List._h1 (Lit DatatypeTypeType this)))))
(let ((|x#2| (Lit BoxType (_module.List._h0 (Lit DatatypeTypeType this)))))
(Lit DatatypeTypeType (|#_module.List.Cons| |x#2| (Lit DatatypeTypeType (_module.List.App _module.List$T ($LS $ly) |xs#2| (Lit DatatypeTypeType |ys#0|)))))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |513|
 :pattern ( (_module.List.App _module.List$T ($LS $ly) (Lit DatatypeTypeType this) (Lit DatatypeTypeType |ys#0|)))
))))
(assert (= (DatatypeCtorId |#_module.List.Nil|) |##_module.List.Nil|))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module.List$T@@0 T@U) (_module.List.Concat$T T@U) ($ly@@0 T@U) (|l#0| T@U) ) (!  (=> (or (|_module.List.Concat#canCall| _module.List$T@@0 _module.List.Concat$T |l#0|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |l#0| (Tclass._module.List (Tclass._module.List _module.List.Concat$T))))) (and (=> (not (_module.List.Nil_q |l#0|)) (let ((|xs#1| (_module.List._h1 |l#0|)))
(let ((|x#1| ($Unbox DatatypeTypeType (_module.List._h0 |l#0|))))
 (and (|_module.List.Concat#canCall| _module.List$T@@0 _module.List.Concat$T |xs#1|) (|_module.List.App#canCall| _module.List.Concat$T |x#1| (_module.List.Concat _module.List$T@@0 _module.List.Concat$T $ly@@0 |xs#1|)))))) (= (_module.List.Concat _module.List$T@@0 _module.List.Concat$T ($LS $ly@@0) |l#0|) (ite (_module.List.Nil_q |l#0|) |#_module.List.Nil| (let ((|xs#0| (_module.List._h1 |l#0|)))
(let ((|x#0| ($Unbox DatatypeTypeType (_module.List._h0 |l#0|))))
(_module.List.App _module.List.Concat$T ($LS $LZ) |x#0| (_module.List.Concat _module.List$T@@0 _module.List.Concat$T $ly@@0 |xs#0|))))))))
 :qid |unknown.0:0|
 :skolemid |520|
 :pattern ( (_module.List.Concat _module.List$T@@0 _module.List.Concat$T ($LS $ly@@0) |l#0|))
))))
(assert (forall ((_module.List$T@@1 T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) ($IsAlloc DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T@@1) $h))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T@@1) $h))
)))
(assert (forall ((_module.List$T@@2 T@U) ) (! ($Is DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T@@2))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( ($Is DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T@@2)))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((_module.List$T@@3 T@U) (|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass._module.List _module.List$T@@3))  (and ($IsBox |a#6#0#0| _module.List$T@@3) ($Is DatatypeTypeType |a#6#1#0| (Tclass._module.List _module.List$T@@3))))
 :qid |unknown.0:0|
 :skolemid |493|
 :pattern ( ($Is DatatypeTypeType (|#_module.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass._module.List _module.List$T@@3)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.List$T@@4 T@U) ($ly@@1 T@U) (this@@0 T@U) (|ys#0@@0| T@U) ) (!  (=> (or (|_module.List.App#canCall| _module.List$T@@4 this@@0 |ys#0@@0|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType this@@0 (Tclass._module.List _module.List$T@@4)) ($Is DatatypeTypeType |ys#0@@0| (Tclass._module.List _module.List$T@@4))))) (and (=> (not (_module.List.Nil_q this@@0)) (let ((|xs#1@@0| (_module.List._h1 this@@0)))
(|_module.List.App#canCall| _module.List$T@@4 |xs#1@@0| |ys#0@@0|))) (= (_module.List.App _module.List$T@@4 ($LS $ly@@1) this@@0 |ys#0@@0|) (ite (_module.List.Nil_q this@@0) |ys#0@@0| (let ((|xs#0@@0| (_module.List._h1 this@@0)))
(let ((|x#0@@0| (_module.List._h0 this@@0)))
(|#_module.List.Cons| |x#0@@0| (_module.List.App _module.List$T@@4 $ly@@1 |xs#0@@0| |ys#0@@0|))))))))
 :qid |unknown.0:0|
 :skolemid |512|
 :pattern ( (_module.List.App _module.List$T@@4 ($LS $ly@@1) this@@0 |ys#0@@0|))
))))
(assert (forall ((d T@U) ) (! (= (_module.List.Nil_q d) (= (DatatypeCtorId d) |##_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( (_module.List.Nil_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.List.Cons_q d@@0) (= (DatatypeCtorId d@@0) |##_module.List.Cons|))
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( (_module.List.Cons_q d@@0))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.List.Cons_q d@@1) (exists ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= d@@1 (|#_module.List.Cons| |a#5#0#0| |a#5#1#0|))
 :qid |gitissue784dfy.3:31|
 :skolemid |491|
)))
 :qid |unknown.0:0|
 :skolemid |492|
 :pattern ( (_module.List.Cons_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.List.Nil_q d@@2) (= d@@2 |#_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( (_module.List.Nil_q d@@2))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((_module.List$T@@5 T@U) ) (!  (and (= (Tag (Tclass._module.List _module.List$T@@5)) Tagclass._module.List) (= (TagFamily (Tclass._module.List _module.List$T@@5)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( (Tclass._module.List _module.List$T@@5))
)))
(assert (forall ((_module.List$T@@6 T@U) (_module.List.Concat$T@@0 T@U) ($ly@@2 T@U) (|l#0@@0| T@U) ) (! (= (_module.List.Concat _module.List$T@@6 _module.List.Concat$T@@0 ($LS $ly@@2) |l#0@@0|) (_module.List.Concat _module.List$T@@6 _module.List.Concat$T@@0 $ly@@2 |l#0@@0|))
 :qid |unknown.0:0|
 :skolemid |515|
 :pattern ( (_module.List.Concat _module.List$T@@6 _module.List.Concat$T@@0 ($LS $ly@@2) |l#0@@0|))
)))
(assert (forall ((_module.List$T@@7 T@U) (d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 (Tclass._module.List _module.List$T@@7)) (or (_module.List.Nil_q d@@3) (_module.List.Cons_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |503|
 :pattern ( (_module.List.Cons_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass._module.List _module.List$T@@7)))
 :pattern ( (_module.List.Nil_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass._module.List _module.List$T@@7)))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module.List$T@@8 T@U) (_module.List.Concat$T@@1 T@U) ($ly@@3 T@U) (|l#0@@1| T@U) ) (!  (=> (or (|_module.List.Concat#canCall| _module.List$T@@8 _module.List.Concat$T@@1 |l#0@@1|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |l#0@@1| (Tclass._module.List (Tclass._module.List _module.List.Concat$T@@1))))) ($Is DatatypeTypeType (_module.List.Concat _module.List$T@@8 _module.List.Concat$T@@1 $ly@@3 |l#0@@1|) (Tclass._module.List _module.List.Concat$T@@1)))
 :qid |unknown.0:0|
 :skolemid |517|
 :pattern ( (_module.List.Concat _module.List$T@@8 _module.List.Concat$T@@1 $ly@@3 |l#0@@1|))
))))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.List.Cons| |a#4#0#0| |a#4#1#0|)) |##_module.List.Cons|)
 :qid |gitissue784dfy.3:31|
 :skolemid |489|
 :pattern ( (|#_module.List.Cons| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) ) (! (= (_module.List._h0 (|#_module.List.Cons| |a#8#0#0| |a#8#1#0|)) |a#8#0#0|)
 :qid |gitissue784dfy.3:31|
 :skolemid |498|
 :pattern ( (|#_module.List.Cons| |a#8#0#0| |a#8#1#0|))
)))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| T@U) ) (! (= (_module.List._h1 (|#_module.List.Cons| |a#10#0#0| |a#10#1#0|)) |a#10#1#0|)
 :qid |gitissue784dfy.3:31|
 :skolemid |500|
 :pattern ( (|#_module.List.Cons| |a#10#0#0| |a#10#1#0|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.List$T@@9 T@U) ($ly@@4 T@U) (this@@1 T@U) (|ys#0@@1| T@U) ) (!  (=> (or (|_module.List.App#canCall| _module.List$T@@9 this@@1 |ys#0@@1|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType this@@1 (Tclass._module.List _module.List$T@@9)) ($Is DatatypeTypeType |ys#0@@1| (Tclass._module.List _module.List$T@@9))))) ($Is DatatypeTypeType (_module.List.App _module.List$T@@9 $ly@@4 this@@1 |ys#0@@1|) (Tclass._module.List _module.List$T@@9)))
 :qid |unknown.0:0|
 :skolemid |509|
 :pattern ( (_module.List.App _module.List$T@@9 $ly@@4 this@@1 |ys#0@@1|))
))))
(assert (forall ((_module.List$T@@10 T@U) ) (! (= (Tclass._module.List_0 (Tclass._module.List _module.List$T@@10)) _module.List$T@@10)
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( (Tclass._module.List _module.List$T@@10))
)))
(assert (forall ((x@@4 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@4))
)))
(assert (forall ((|a#9#0#0| T@U) (|a#9#1#0| T@U) ) (! (< (BoxRank |a#9#0#0|) (DtRank (|#_module.List.Cons| |a#9#0#0| |a#9#1#0|)))
 :qid |gitissue784dfy.3:31|
 :skolemid |499|
 :pattern ( (|#_module.List.Cons| |a#9#0#0| |a#9#1#0|))
)))
(assert (forall ((|a#11#0#0| T@U) (|a#11#1#0| T@U) ) (! (< (DtRank |a#11#1#0|) (DtRank (|#_module.List.Cons| |a#11#0#0| |a#11#1#0|)))
 :qid |gitissue784dfy.3:31|
 :skolemid |501|
 :pattern ( (|#_module.List.Cons| |a#11#0#0| |a#11#1#0|))
)))
(assert (forall ((d@@4 T@U) (_module.List$T@@11 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.List.Cons_q d@@4) ($IsAlloc DatatypeTypeType d@@4 (Tclass._module.List _module.List$T@@11) $h@@0))) ($IsAllocBox (_module.List._h0 d@@4) _module.List$T@@11 $h@@0))
 :qid |unknown.0:0|
 :skolemid |495|
 :pattern ( ($IsAllocBox (_module.List._h0 d@@4) _module.List$T@@11 $h@@0))
)))
(assert  (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 5)) (= (Ctor FieldType) 6)) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType1Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0@@2| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@2| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0@@2|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |527|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@2| |l#1| |l#2| |l#3|) $o $f))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (_module.List$T@@12 T@U) ($ly@@5 T@U) (this@@2 T@U) (|ys#0@@2| T@U) ) (!  (=> (and (or (|_module.List.App#canCall| _module.List$T@@12 this@@2 |ys#0@@2|) (and (< 1 $FunctionContextHeight) (and ($IsAlloc DatatypeTypeType this@@2 (Tclass._module.List _module.List$T@@12) $Heap) (and ($Is DatatypeTypeType |ys#0@@2| (Tclass._module.List _module.List$T@@12)) ($IsAlloc DatatypeTypeType |ys#0@@2| (Tclass._module.List _module.List$T@@12) $Heap))))) ($IsGoodHeap $Heap)) ($IsAlloc DatatypeTypeType (_module.List.App _module.List$T@@12 $ly@@5 this@@2 |ys#0@@2|) (Tclass._module.List _module.List$T@@12) $Heap))
 :qid |gitissue784dfy.4:12|
 :skolemid |510|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.List.App _module.List$T@@12 $ly@@5 this@@2 |ys#0@@2|) (Tclass._module.List _module.List$T@@12) $Heap))
))))
(assert (forall ((d@@5 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@5)) (DtRank d@@5))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@5)))
)))
(assert (forall ((_module.List$T@@13 T@U) ($ly@@6 T@U) (this@@3 T@U) (|ys#0@@3| T@U) ) (! (= (_module.List.App _module.List$T@@13 ($LS $ly@@6) this@@3 |ys#0@@3|) (_module.List.App _module.List$T@@13 $ly@@6 this@@3 |ys#0@@3|))
 :qid |unknown.0:0|
 :skolemid |507|
 :pattern ( (_module.List.App _module.List$T@@13 ($LS $ly@@6) this@@3 |ys#0@@3|))
)))
(assert (forall ((_module.List$T@@14 T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass._module.List _module.List$T@@14)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx)) bx) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx) (Tclass._module.List _module.List$T@@14))))
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( ($IsBox bx (Tclass._module.List _module.List$T@@14)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module.List$T@@15 T@U) (_module.List.Concat$T@@2 T@U) ($ly@@7 T@U) (|l#0@@3| T@U) ) (!  (=> (or (|_module.List.Concat#canCall| _module.List$T@@15 _module.List.Concat$T@@2 (Lit DatatypeTypeType |l#0@@3|)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |l#0@@3| (Tclass._module.List (Tclass._module.List _module.List.Concat$T@@2))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |l#0@@3|)))))) (let ((|xs#3@@0| (Lit DatatypeTypeType (_module.List._h1 (Lit DatatypeTypeType |l#0@@3|)))))
(let ((|x#3| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_module.List._h0 (Lit DatatypeTypeType |l#0@@3|))))))
 (and (|_module.List.Concat#canCall| _module.List$T@@15 _module.List.Concat$T@@2 |xs#3@@0|) (|_module.List.App#canCall| _module.List.Concat$T@@2 |x#3| (_module.List.Concat _module.List$T@@15 _module.List.Concat$T@@2 ($LS $ly@@7) |xs#3@@0|)))))) (= (_module.List.Concat _module.List$T@@15 _module.List.Concat$T@@2 ($LS $ly@@7) (Lit DatatypeTypeType |l#0@@3|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |l#0@@3|)) |#_module.List.Nil| (let ((|xs#2@@0| (Lit DatatypeTypeType (_module.List._h1 (Lit DatatypeTypeType |l#0@@3|)))))
(let ((|x#2@@0| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_module.List._h0 (Lit DatatypeTypeType |l#0@@3|))))))
(Lit DatatypeTypeType (_module.List.App _module.List.Concat$T@@2 ($LS $LZ) |x#2@@0| (Lit DatatypeTypeType (_module.List.Concat _module.List$T@@15 _module.List.Concat$T@@2 ($LS $ly@@7) |xs#2@@0|))))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |521|
 :pattern ( (_module.List.Concat _module.List$T@@15 _module.List.Concat$T@@2 ($LS $ly@@7) (Lit DatatypeTypeType |l#0@@3|)))
))))
(assert (forall ((d@@6 T@U) (_module.List$T@@16 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.List.Cons_q d@@6) ($IsAlloc DatatypeTypeType d@@6 (Tclass._module.List _module.List$T@@16) $h@@1))) ($IsAlloc DatatypeTypeType (_module.List._h1 d@@6) (Tclass._module.List _module.List$T@@16) $h@@1))
 :qid |unknown.0:0|
 :skolemid |496|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.List._h1 d@@6) (Tclass._module.List _module.List$T@@16) $h@@1))
)))
(assert (= |#_module.List.Nil| (Lit DatatypeTypeType |#_module.List.Nil|)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (= (|#_module.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)) (Lit DatatypeTypeType (|#_module.List.Cons| |a#7#0#0| |a#7#1#0|)))
 :qid |gitissue784dfy.3:31|
 :skolemid |497|
 :pattern ( (|#_module.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@5)) (Lit BoxType ($Box T@@4 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@5)))
)))
(assert (forall ((_module.List$T@@17 T@U) (|a#6#0#0@@0| T@U) (|a#6#1#0@@0| T@U) ($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) (= ($IsAlloc DatatypeTypeType (|#_module.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass._module.List _module.List$T@@17) $h@@2)  (and ($IsAllocBox |a#6#0#0@@0| _module.List$T@@17 $h@@2) ($IsAlloc DatatypeTypeType |a#6#1#0@@0| (Tclass._module.List _module.List$T@@17) $h@@2))))
 :qid |unknown.0:0|
 :skolemid |494|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass._module.List _module.List$T@@17) $h@@2))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@0 T@U) (_module.List$T@@18 T@U) (_module.List.Concat$T@@3 T@U) ($ly@@8 T@U) (|l#0@@4| T@U) ) (!  (=> (and (or (|_module.List.Concat#canCall| _module.List$T@@18 _module.List.Concat$T@@3 |l#0@@4|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |l#0@@4| (Tclass._module.List (Tclass._module.List _module.List.Concat$T@@3))) ($IsAlloc DatatypeTypeType |l#0@@4| (Tclass._module.List (Tclass._module.List _module.List.Concat$T@@3)) $Heap@@0)))) ($IsGoodHeap $Heap@@0)) ($IsAlloc DatatypeTypeType (_module.List.Concat _module.List$T@@18 _module.List.Concat$T@@3 $ly@@8 |l#0@@4|) (Tclass._module.List _module.List.Concat$T@@3) $Heap@@0))
 :qid |gitissue784dfy.10:25|
 :skolemid |518|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.List.Concat _module.List$T@@18 _module.List.Concat$T@@3 $ly@@8 |l#0@@4|) (Tclass._module.List _module.List.Concat$T@@3) $Heap@@0))
))))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |l#0@@5| () T@U)
(declare-fun |_mcc#0#0| () T@U)
(declare-fun |_mcc#1#0| () T@U)
(declare-fun _module.List.Concat$T@@4 () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |xs#Z#0@0| () T@U)
(declare-fun |let#1#0#0| () T@U)
(declare-fun |x#Z#0@0| () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.List.Concat)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon10_Else_correct true))
(let ((anon10_Then_correct  (=> (and (and (= |l#0@@5| (|#_module.List.Cons| ($Box DatatypeTypeType |_mcc#0#0|) |_mcc#1#0|)) ($Is DatatypeTypeType |_mcc#0#0| (Tclass._module.List _module.List.Concat$T@@4))) (and ($Is DatatypeTypeType |_mcc#1#0| (Tclass._module.List (Tclass._module.List _module.List.Concat$T@@4))) (= |let#0#0#0| |_mcc#1#0|))) (=> (and (and (and ($Is DatatypeTypeType |let#0#0#0| (Tclass._module.List (Tclass._module.List _module.List.Concat$T@@4))) (= |xs#Z#0@0| |let#0#0#0|)) (and (= |let#1#0#0| |_mcc#0#0|) ($Is DatatypeTypeType |let#1#0#0| (Tclass._module.List _module.List.Concat$T@@4)))) (and (and (= |x#Z#0@0| |let#1#0#0|) ($IsAllocBox ($Box DatatypeTypeType |x#Z#0@0|) (Tclass._module.List _module.List.Concat$T@@4) $Heap@@1)) (and ($IsAlloc DatatypeTypeType |xs#Z#0@0| (Tclass._module.List (Tclass._module.List _module.List.Concat$T@@4)) $Heap@@1) (= (ControlFlow 0 4) (- 0 3))))) (< (DtRank |xs#Z#0@0|) (DtRank |l#0@@5|))))))
(let ((anon9_Else_correct  (=> (or (not (= |l#0@@5| |#_module.List.Nil|)) (not true)) (and (=> (= (ControlFlow 0 6) 4) anon10_Then_correct) (=> (= (ControlFlow 0 6) 5) anon10_Else_correct)))))
(let ((anon9_Then_correct true))
(let ((anon8_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap@@1 alloc false)) (and (and (=> (= (ControlFlow 0 7) 1) anon8_Then_correct) (=> (= (ControlFlow 0 7) 2) anon9_Then_correct)) (=> (= (ControlFlow 0 7) 6) anon9_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) ($Is DatatypeTypeType |l#0@@5| (Tclass._module.List (Tclass._module.List _module.List.Concat$T@@4)))) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 8) 7))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
