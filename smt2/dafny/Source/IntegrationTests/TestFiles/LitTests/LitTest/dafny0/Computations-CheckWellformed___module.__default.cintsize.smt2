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
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._module.intlist () T@U)
(declare-fun |##_module.intlist.IntNil| () T@U)
(declare-fun |##_module.intlist.IntCons| () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$intlist () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.intlist.IntNil| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.intlist () T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun _module.intlist.IntNil_q (T@U) Bool)
(declare-fun _module.intlist.IntCons_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.intlist.IntCons| (Int T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.cintsize (T@U T@U) Int)
(declare-fun |_module.__default.cintsize#canCall| (T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun _module.intlist.tail (T@U) T@U)
(declare-fun _module.intlist.head (T@U) Int)
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
(assert (distinct TInt TagInt alloc Tagclass._System.nat Tagclass._module.intlist |##_module.intlist.IntNil| |##_module.intlist.IntCons| tytagFamily$nat tytagFamily$intlist)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (= (DatatypeCtorId |#_module.intlist.IntNil|) |##_module.intlist.IntNil|))
(assert (= (Ctor DatatypeTypeType) 3))
(assert ($Is DatatypeTypeType |#_module.intlist.IntNil| Tclass._module.intlist))
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
(assert (forall ((d T@U) ) (! (= (_module.intlist.IntNil_q d) (= (DatatypeCtorId d) |##_module.intlist.IntNil|))
 :qid |unknown.0:0|
 :skolemid |701|
 :pattern ( (_module.intlist.IntNil_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.intlist.IntCons_q d@@0) (= (DatatypeCtorId d@@0) |##_module.intlist.IntCons|))
 :qid |unknown.0:0|
 :skolemid |704|
 :pattern ( (_module.intlist.IntCons_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.intlist.IntCons_q d@@1) (exists ((|a#5#0#0| Int) (|a#5#1#0| T@U) ) (! (= d@@1 (|#_module.intlist.IntCons| |a#5#0#0| |a#5#1#0|))
 :qid |Computationsdfy.22:37|
 :skolemid |705|
)))
 :qid |unknown.0:0|
 :skolemid |706|
 :pattern ( (_module.intlist.IntCons_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.intlist.IntNil_q d@@2) (= d@@2 |#_module.intlist.IntNil|))
 :qid |unknown.0:0|
 :skolemid |702|
 :pattern ( (_module.intlist.IntNil_q d@@2))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly T@U) (|l#0| T@U) ) (!  (=> (or (|_module.__default.cintsize#canCall| |l#0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |l#0| Tclass._module.intlist))) (<= (LitInt 0) (_module.__default.cintsize $ly |l#0|)))
 :qid |Computationsdfy.39:16|
 :skolemid |569|
 :pattern ( (_module.__default.cintsize $ly |l#0|))
))))
(assert (forall ((d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 Tclass._module.intlist) (or (_module.intlist.IntNil_q d@@3) (_module.intlist.IntCons_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |716|
 :pattern ( (_module.intlist.IntCons_q d@@3) ($Is DatatypeTypeType d@@3 Tclass._module.intlist))
 :pattern ( (_module.intlist.IntNil_q d@@3) ($Is DatatypeTypeType d@@3 Tclass._module.intlist))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@0 T@U) (|l#0@@0| T@U) ) (!  (=> (or (|_module.__default.cintsize#canCall| |l#0@@0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |l#0@@0| Tclass._module.intlist))) (and (=> (not (_module.intlist.IntNil_q |l#0@@0|)) (let ((|tl#1| (_module.intlist.tail |l#0@@0|)))
(|_module.__default.cintsize#canCall| |tl#1|))) (= (_module.__default.cintsize ($LS $ly@@0) |l#0@@0|) (ite (_module.intlist.IntNil_q |l#0@@0|) 0 (let ((|tl#0| (_module.intlist.tail |l#0@@0|)))
(+ 1 (_module.__default.cintsize $ly@@0 |tl#0|)))))))
 :qid |Computationsdfy.39:16|
 :skolemid |571|
 :pattern ( (_module.__default.cintsize ($LS $ly@@0) |l#0@@0|))
))))
(assert (forall ((|a#4#0#0| Int) (|a#4#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.intlist.IntCons| |a#4#0#0| |a#4#1#0|)) |##_module.intlist.IntCons|)
 :qid |Computationsdfy.22:37|
 :skolemid |703|
 :pattern ( (|#_module.intlist.IntCons| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#8#0#0| Int) (|a#8#1#0| T@U) ) (! (= (_module.intlist.head (|#_module.intlist.IntCons| |a#8#0#0| |a#8#1#0|)) |a#8#0#0|)
 :qid |Computationsdfy.22:37|
 :skolemid |711|
 :pattern ( (|#_module.intlist.IntCons| |a#8#0#0| |a#8#1#0|))
)))
(assert (forall ((|a#9#0#0| Int) (|a#9#1#0| T@U) ) (! (= (_module.intlist.tail (|#_module.intlist.IntCons| |a#9#0#0| |a#9#1#0|)) |a#9#1#0|)
 :qid |Computationsdfy.22:37|
 :skolemid |712|
 :pattern ( (|#_module.intlist.IntCons| |a#9#0#0| |a#9#1#0|))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@5))
)))
(assert (forall ((|a#10#0#0| Int) (|a#10#1#0| T@U) ) (! (< (DtRank |a#10#1#0|) (DtRank (|#_module.intlist.IntCons| |a#10#0#0| |a#10#1#0|)))
 :qid |Computationsdfy.22:37|
 :skolemid |713|
 :pattern ( (|#_module.intlist.IntCons| |a#10#0#0| |a#10#1#0|))
)))
(assert (forall (($ly@@1 T@U) (|l#0@@1| T@U) ) (! (= (_module.__default.cintsize ($LS $ly@@1) |l#0@@1|) (_module.__default.cintsize $ly@@1 |l#0@@1|))
 :qid |Computationsdfy.39:16|
 :skolemid |567|
 :pattern ( (_module.__default.cintsize ($LS $ly@@1) |l#0@@1|))
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
(assert (forall ((|l#0@@2| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@2| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0@@2|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |777|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@2| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@4 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.intlist.IntCons_q d@@4) ($IsAlloc DatatypeTypeType d@@4 Tclass._module.intlist $h@@0))) ($IsAlloc intType (int_2_U (_module.intlist.head d@@4)) TInt $h@@0))
 :qid |unknown.0:0|
 :skolemid |708|
 :pattern ( ($IsAlloc intType (int_2_U (_module.intlist.head d@@4)) TInt $h@@0))
)))
(assert (forall ((d@@5 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) ($Is DatatypeTypeType d@@5 Tclass._module.intlist)) ($IsAlloc DatatypeTypeType d@@5 Tclass._module.intlist $h@@1))
 :qid |unknown.0:0|
 :skolemid |714|
 :pattern ( ($IsAlloc DatatypeTypeType d@@5 Tclass._module.intlist $h@@1))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._module.intlist) Tagclass._module.intlist))
(assert (= (TagFamily Tclass._module.intlist) tytagFamily$intlist))
(assert (= |#_module.intlist.IntNil| (Lit DatatypeTypeType |#_module.intlist.IntNil|)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@2 T@U) (|l#0@@3| T@U) ) (!  (=> (or (|_module.__default.cintsize#canCall| (Lit DatatypeTypeType |l#0@@3|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |l#0@@3| Tclass._module.intlist))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.intlist.IntNil_q (Lit DatatypeTypeType |l#0@@3|)))))) (let ((|tl#3| (Lit DatatypeTypeType (_module.intlist.tail (Lit DatatypeTypeType |l#0@@3|)))))
(|_module.__default.cintsize#canCall| |tl#3|))) (= (_module.__default.cintsize ($LS $ly@@2) (Lit DatatypeTypeType |l#0@@3|)) (ite (_module.intlist.IntNil_q (Lit DatatypeTypeType |l#0@@3|)) 0 (let ((|tl#2| (Lit DatatypeTypeType (_module.intlist.tail (Lit DatatypeTypeType |l#0@@3|)))))
(LitInt (+ 1 (_module.__default.cintsize ($LS $ly@@2) |tl#2|))))))))
 :qid |Computationsdfy.39:16|
 :weight 3
 :skolemid |572|
 :pattern ( (_module.__default.cintsize ($LS $ly@@2) (Lit DatatypeTypeType |l#0@@3|)))
))))
(assert (forall ((d@@6 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.intlist.IntCons_q d@@6) ($IsAlloc DatatypeTypeType d@@6 Tclass._module.intlist $h@@2))) ($IsAlloc DatatypeTypeType (_module.intlist.tail d@@6) Tclass._module.intlist $h@@2))
 :qid |unknown.0:0|
 :skolemid |709|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.intlist.tail d@@6) Tclass._module.intlist $h@@2))
)))
(assert (forall ((|a#7#0#0| Int) (|a#7#1#0| T@U) ) (! (= (|#_module.intlist.IntCons| (LitInt |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)) (Lit DatatypeTypeType (|#_module.intlist.IntCons| |a#7#0#0| |a#7#1#0|)))
 :qid |Computationsdfy.22:37|
 :skolemid |710|
 :pattern ( (|#_module.intlist.IntCons| (LitInt |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@7)) (Lit BoxType ($Box T@@2 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@7)))
)))
(assert (forall ((|a#6#0#0| Int) (|a#6#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.intlist.IntCons| |a#6#0#0| |a#6#1#0|) Tclass._module.intlist)  (and ($Is intType (int_2_U |a#6#0#0|) TInt) ($Is DatatypeTypeType |a#6#1#0| Tclass._module.intlist)))
 :qid |Computationsdfy.22:37|
 :skolemid |707|
 :pattern ( ($Is DatatypeTypeType (|#_module.intlist.IntCons| |a#6#0#0| |a#6#1#0|) Tclass._module.intlist))
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
(declare-fun |l#0@@4| () T@U)
(declare-fun |_mcc#0#0| () Int)
(declare-fun |_mcc#1#0| () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |tl#Z#0@0| () T@U)
(declare-fun |let#1#0#0| () Int)
(declare-fun |hd#Z#0@0| () Int)
(declare-fun $Heap () T@U)
(declare-fun $LZ () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.cintsize)
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
 (=> (= (ControlFlow 0 0) 10) (let ((anon10_Else_correct true))
(let ((anon10_Then_correct  (=> (= |l#0@@4| (|#_module.intlist.IntCons| |_mcc#0#0| |_mcc#1#0|)) (=> (and (and (and ($Is DatatypeTypeType |_mcc#1#0| Tclass._module.intlist) (= |let#0#0#0| |_mcc#1#0|)) (and ($Is DatatypeTypeType |let#0#0#0| Tclass._module.intlist) (= |tl#Z#0@0| |let#0#0#0|))) (and (and (= |let#1#0#0| |_mcc#0#0|) ($Is intType (int_2_U |let#1#0#0|) TInt)) (and (= |hd#Z#0@0| |let#1#0#0|) ($IsAlloc DatatypeTypeType |tl#Z#0@0| Tclass._module.intlist $Heap)))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (< (DtRank |tl#Z#0@0|) (DtRank |l#0@@4|))) (=> (< (DtRank |tl#Z#0@0|) (DtRank |l#0@@4|)) (=> (and (|_module.__default.cintsize#canCall| |tl#Z#0@0|) (= (ControlFlow 0 5) (- 0 4))) ($Is intType (int_2_U (+ 1 (_module.__default.cintsize ($LS $LZ) |tl#Z#0@0|))) Tclass._System.nat))))))))
(let ((anon9_Else_correct  (=> (or (not (= |l#0@@4| |#_module.intlist.IntNil|)) (not true)) (and (=> (= (ControlFlow 0 8) 5) anon10_Then_correct) (=> (= (ControlFlow 0 8) 7) anon10_Else_correct)))))
(let ((anon9_Then_correct  (=> (and (= |l#0@@4| |#_module.intlist.IntNil|) (= (ControlFlow 0 3) (- 0 2))) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat))))
(let ((anon8_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 9) 1) anon8_Then_correct) (=> (= (ControlFlow 0 9) 3) anon9_Then_correct)) (=> (= (ControlFlow 0 9) 8) anon9_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) ($Is DatatypeTypeType |l#0@@4| Tclass._module.intlist)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 10) 9))) anon0_correct)))
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
