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
(declare-fun Tagclass._module.D () T@U)
(declare-fun |##_module.D.Nothing| () T@U)
(declare-fun |##_module.D.Something| () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$D () T@U)
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
(declare-fun |#_module.D.Nothing| () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.FooD (T@U Int T@U) Int)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.__default.FooD#canCall| (Int T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.D () T@U)
(declare-fun _module.D.Nothing_q (T@U) Bool)
(declare-fun |#_module.D.Something| (T@U) T@U)
(declare-fun _module.D._h3 (T@U) T@U)
(declare-fun |_module.D#Equal| (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun _module.D.Something_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
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
(assert (distinct TInt TagInt alloc Tagclass._System.nat Tagclass._module.D |##_module.D.Nothing| |##_module.D.Something| tytagFamily$nat tytagFamily$D)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (= (DatatypeCtorId |#_module.D.Nothing|) |##_module.D.Nothing|))
(assert (= (Ctor DatatypeTypeType) 3))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly T@U) (|n#0| Int) (|d#0| T@U) ) (!  (=> (or (|_module.__default.FooD#canCall| |n#0| |d#0|) (and (< 1 $FunctionContextHeight) (and (<= (LitInt 0) |n#0|) ($Is DatatypeTypeType |d#0| Tclass._module.D)))) (and (and (=> (_module.D.Nothing_q |d#0|) (=> (or (not (= |n#0| (LitInt 0))) (not true)) (|_module.__default.FooD#canCall| (- |n#0| 1) (|#_module.D.Something| |d#0|)))) (=> (not (_module.D.Nothing_q |d#0|)) (let ((|next#1| (_module.D._h3 |d#0|)))
 (=> (<= 100 |n#0|) (|_module.__default.FooD#canCall| (- |n#0| 13) |next#1|))))) (= (_module.__default.FooD ($LS $ly) |n#0| |d#0|) (ite (_module.D.Nothing_q |d#0|) (ite (= |n#0| (LitInt 0)) 10 (_module.__default.FooD $ly (- |n#0| 1) (|#_module.D.Something| |d#0|))) (let ((|next#0| (_module.D._h3 |d#0|)))
(ite (< |n#0| 100) (+ |n#0| 12) (_module.__default.FooD $ly (- |n#0| 13) |next#0|)))))))
 :qid |Inductionlegacydfy.197:16|
 :skolemid |533|
 :pattern ( (_module.__default.FooD ($LS $ly) |n#0| |d#0|))
))))
(assert ($Is DatatypeTypeType |#_module.D.Nothing| Tclass._module.D))
(assert (forall ((a T@U) (b T@U) ) (! (= (|_module.D#Equal| a b) (= a b))
 :qid |unknown.0:0|
 :skolemid |719|
 :pattern ( (|_module.D#Equal| a b))
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
(assert (forall ((d T@U) ) (! (= (_module.D.Nothing_q d) (= (DatatypeCtorId d) |##_module.D.Nothing|))
 :qid |unknown.0:0|
 :skolemid |703|
 :pattern ( (_module.D.Nothing_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.D.Something_q d@@0) (= (DatatypeCtorId d@@0) |##_module.D.Something|))
 :qid |unknown.0:0|
 :skolemid |706|
 :pattern ( (_module.D.Something_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.D.Nothing_q d@@1) (= d@@1 |#_module.D.Nothing|))
 :qid |unknown.0:0|
 :skolemid |704|
 :pattern ( (_module.D.Nothing_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.D.Something_q d@@2) (exists ((|a#5#0#0| T@U) ) (! (= d@@2 (|#_module.D.Something| |a#5#0#0|))
 :qid |Inductionlegacydfy.195:34|
 :skolemid |707|
)))
 :qid |unknown.0:0|
 :skolemid |708|
 :pattern ( (_module.D.Something_q d@@2))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@0 T@U) (|n#0@@0| Int) (|d#0@@0| T@U) ) (!  (=> (or (|_module.__default.FooD#canCall| (LitInt |n#0@@0|) (Lit DatatypeTypeType |d#0@@0|)) (and (< 1 $FunctionContextHeight) (and (<= (LitInt 0) |n#0@@0|) ($Is DatatypeTypeType |d#0@@0| Tclass._module.D)))) (and (and (=> (U_2_bool (Lit boolType (bool_2_U (_module.D.Nothing_q (Lit DatatypeTypeType |d#0@@0|))))) (=> (or (not (= (LitInt |n#0@@0|) (LitInt 0))) (not true)) (|_module.__default.FooD#canCall| (LitInt (- |n#0@@0| 1)) (Lit DatatypeTypeType (|#_module.D.Something| (Lit DatatypeTypeType |d#0@@0|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.D.Nothing_q (Lit DatatypeTypeType |d#0@@0|)))))) (let ((|next#3| (Lit DatatypeTypeType (_module.D._h3 (Lit DatatypeTypeType |d#0@@0|)))))
 (=> (not (U_2_bool (Lit boolType (bool_2_U (< |n#0@@0| 100))))) (|_module.__default.FooD#canCall| (LitInt (- |n#0@@0| 13)) |next#3|))))) (= (_module.__default.FooD ($LS $ly@@0) (LitInt |n#0@@0|) (Lit DatatypeTypeType |d#0@@0|)) (ite (_module.D.Nothing_q (Lit DatatypeTypeType |d#0@@0|)) (ite (= (LitInt |n#0@@0|) (LitInt 0)) 10 (_module.__default.FooD ($LS $ly@@0) (LitInt (- |n#0@@0| 1)) (Lit DatatypeTypeType (|#_module.D.Something| (Lit DatatypeTypeType |d#0@@0|))))) (let ((|next#2| (Lit DatatypeTypeType (_module.D._h3 (Lit DatatypeTypeType |d#0@@0|)))))
(ite (< |n#0@@0| 100) (+ |n#0@@0| 12) (_module.__default.FooD ($LS $ly@@0) (LitInt (- |n#0@@0| 13)) |next#2|)))))))
 :qid |Inductionlegacydfy.197:16|
 :weight 3
 :skolemid |534|
 :pattern ( (_module.__default.FooD ($LS $ly@@0) (LitInt |n#0@@0|) (Lit DatatypeTypeType |d#0@@0|)))
))))
(assert (forall ((|a#6#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.D.Something| |a#6#0#0|) Tclass._module.D) ($Is DatatypeTypeType |a#6#0#0| Tclass._module.D))
 :qid |Inductionlegacydfy.195:34|
 :skolemid |709|
 :pattern ( ($Is DatatypeTypeType (|#_module.D.Something| |a#6#0#0|) Tclass._module.D))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (and (_module.D.Something_q a@@0) (_module.D.Something_q b@@0)) (= (|_module.D#Equal| a@@0 b@@0) (|_module.D#Equal| (_module.D._h3 a@@0) (_module.D._h3 b@@0))))
 :qid |unknown.0:0|
 :skolemid |718|
 :pattern ( (|_module.D#Equal| a@@0 b@@0) (_module.D.Something_q a@@0))
 :pattern ( (|_module.D#Equal| a@@0 b@@0) (_module.D.Something_q b@@0))
)))
(assert (forall (($ly@@1 T@U) (|n#0@@1| Int) (|d#0@@1| T@U) ) (! (= (_module.__default.FooD ($LS $ly@@1) |n#0@@1| |d#0@@1|) (_module.__default.FooD $ly@@1 |n#0@@1| |d#0@@1|))
 :qid |Inductionlegacydfy.197:16|
 :skolemid |528|
 :pattern ( (_module.__default.FooD ($LS $ly@@1) |n#0@@1| |d#0@@1|))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 Tclass._module.D) (or (_module.D.Nothing_q d@@3) (_module.D.Something_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |716|
 :pattern ( (_module.D.Something_q d@@3) ($Is DatatypeTypeType d@@3 Tclass._module.D))
 :pattern ( (_module.D.Nothing_q d@@3) ($Is DatatypeTypeType d@@3 Tclass._module.D))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@2 T@U) (|n#0@@2| Int) (|d#0@@2| T@U) ) (!  (=> (or (|_module.__default.FooD#canCall| |n#0@@2| |d#0@@2|) (and (< 1 $FunctionContextHeight) (and (<= (LitInt 0) |n#0@@2|) ($Is DatatypeTypeType |d#0@@2| Tclass._module.D)))) (<= (LitInt 10) (_module.__default.FooD $ly@@2 |n#0@@2| |d#0@@2|)))
 :qid |Inductionlegacydfy.197:16|
 :skolemid |531|
 :pattern ( (_module.__default.FooD $ly@@2 |n#0@@2| |d#0@@2|))
))))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (and (_module.D.Nothing_q a@@1) (_module.D.Nothing_q b@@1)) (|_module.D#Equal| a@@1 b@@1))
 :qid |unknown.0:0|
 :skolemid |717|
 :pattern ( (|_module.D#Equal| a@@1 b@@1) (_module.D.Nothing_q a@@1))
 :pattern ( (|_module.D#Equal| a@@1 b@@1) (_module.D.Nothing_q b@@1))
)))
(assert (forall ((|a#4#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.D.Something| |a#4#0#0|)) |##_module.D.Something|)
 :qid |Inductionlegacydfy.195:34|
 :skolemid |705|
 :pattern ( (|#_module.D.Something| |a#4#0#0|))
)))
(assert (forall ((|a#8#0#0| T@U) ) (! (= (_module.D._h3 (|#_module.D.Something| |a#8#0#0|)) |a#8#0#0|)
 :qid |Inductionlegacydfy.195:34|
 :skolemid |712|
 :pattern ( (|#_module.D.Something| |a#8#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@5))
)))
(assert (forall ((|a#9#0#0| T@U) ) (! (< (DtRank |a#9#0#0|) (DtRank (|#_module.D.Something| |a#9#0#0|)))
 :qid |Inductionlegacydfy.195:34|
 :skolemid |713|
 :pattern ( (|#_module.D.Something| |a#9#0#0|))
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
 :skolemid |748|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@4 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) ($Is DatatypeTypeType d@@4 Tclass._module.D)) ($IsAlloc DatatypeTypeType d@@4 Tclass._module.D $h@@0))
 :qid |unknown.0:0|
 :skolemid |714|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 Tclass._module.D $h@@0))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._module.D) Tagclass._module.D))
(assert (= (TagFamily Tclass._module.D) tytagFamily$D))
(assert (= |#_module.D.Nothing| (Lit DatatypeTypeType |#_module.D.Nothing|)))
(assert (forall ((d@@5 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.D.Something_q d@@5) ($IsAlloc DatatypeTypeType d@@5 Tclass._module.D $h@@1))) ($IsAlloc DatatypeTypeType (_module.D._h3 d@@5) Tclass._module.D $h@@1))
 :qid |unknown.0:0|
 :skolemid |710|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.D._h3 d@@5) Tclass._module.D $h@@1))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#7#0#0| T@U) ) (! (= (|#_module.D.Something| (Lit DatatypeTypeType |a#7#0#0|)) (Lit DatatypeTypeType (|#_module.D.Something| |a#7#0#0|)))
 :qid |Inductionlegacydfy.195:34|
 :skolemid |711|
 :pattern ( (|#_module.D.Something| (Lit DatatypeTypeType |a#7#0#0|)))
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
(declare-fun $LZ () T@U)
(declare-fun |n#0@@3| () Int)
(declare-fun |d#0@@3| () T@U)
(declare-fun |##n#2@0| () Int)
(declare-fun $Heap () T@U)
(declare-fun |##d#2@0| () T@U)
(declare-fun |##n#1@0| () Int)
(declare-fun |next#Z#0@0| () T@U)
(declare-fun |_mcc#0#0| () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.FooD)
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
 (=> (= (ControlFlow 0 0) 21) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 6) (- 0 5)) (<= (LitInt 10) (_module.__default.FooD ($LS ($LS $LZ)) |n#0@@3| |d#0@@3|)))))
(let ((anon14_Else_correct  (=> (or (not (= |n#0@@3| (LitInt 0))) (not true)) (and (=> (= (ControlFlow 0 15) (- 0 18)) ($Is intType (int_2_U (- |n#0@@3| 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (- |n#0@@3| 1)) Tclass._System.nat) (=> (and (and (= |##n#2@0| (- |n#0@@3| 1)) ($IsAlloc intType (int_2_U |##n#2@0|) Tclass._System.nat $Heap)) (and (= |##d#2@0| (|#_module.D.Something| |d#0@@3|)) ($IsAlloc DatatypeTypeType |##d#2@0| Tclass._module.D $Heap))) (and (=> (= (ControlFlow 0 15) (- 0 17)) (or (<= 0 |n#0@@3|) (= |##n#2@0| |n#0@@3|))) (=> (or (<= 0 |n#0@@3|) (= |##n#2@0| |n#0@@3|)) (and (=> (= (ControlFlow 0 15) (- 0 16)) (or (< |##n#2@0| |n#0@@3|) (and (= |##n#2@0| |n#0@@3|) (< (DtRank |##d#2@0|) (DtRank |d#0@@3|))))) (=> (or (< |##n#2@0| |n#0@@3|) (and (= |##n#2@0| |n#0@@3|) (< (DtRank |##d#2@0|) (DtRank |d#0@@3|)))) (=> (|_module.__default.FooD#canCall| (- |n#0@@3| 1) (|#_module.D.Something| |d#0@@3|)) (=> (and (and (= (_module.__default.FooD ($LS $LZ) |n#0@@3| |d#0@@3|) (_module.__default.FooD ($LS $LZ) (- |n#0@@3| 1) (|#_module.D.Something| |d#0@@3|))) (|_module.__default.FooD#canCall| (- |n#0@@3| 1) (|#_module.D.Something| |d#0@@3|))) (and ($Is intType (int_2_U (_module.__default.FooD ($LS $LZ) |n#0@@3| |d#0@@3|)) TInt) (= (ControlFlow 0 15) 6))) GeneratedUnifiedExit_correct))))))))))))
(let ((anon14_Then_correct  (=> (and (and (= |n#0@@3| (LitInt 0)) (= (_module.__default.FooD ($LS $LZ) |n#0@@3| |d#0@@3|) (LitInt 10))) (and ($Is intType (int_2_U (_module.__default.FooD ($LS $LZ) |n#0@@3| |d#0@@3|)) TInt) (= (ControlFlow 0 14) 6))) GeneratedUnifiedExit_correct)))
(let ((anon13_Then_correct  (=> (= |d#0@@3| |#_module.D.Nothing|) (and (=> (= (ControlFlow 0 19) 14) anon14_Then_correct) (=> (= (ControlFlow 0 19) 15) anon14_Else_correct)))))
(let ((anon16_Else_correct  (=> (<= 100 |n#0@@3|) (and (=> (= (ControlFlow 0 8) (- 0 11)) ($Is intType (int_2_U (- |n#0@@3| 13)) Tclass._System.nat)) (=> ($Is intType (int_2_U (- |n#0@@3| 13)) Tclass._System.nat) (=> (= |##n#1@0| (- |n#0@@3| 13)) (=> (and ($IsAlloc intType (int_2_U |##n#1@0|) Tclass._System.nat $Heap) ($IsAlloc DatatypeTypeType |next#Z#0@0| Tclass._module.D $Heap)) (and (=> (= (ControlFlow 0 8) (- 0 10)) (or (<= 0 |n#0@@3|) (= |##n#1@0| |n#0@@3|))) (=> (or (<= 0 |n#0@@3|) (= |##n#1@0| |n#0@@3|)) (and (=> (= (ControlFlow 0 8) (- 0 9)) (or (< |##n#1@0| |n#0@@3|) (and (= |##n#1@0| |n#0@@3|) (< (DtRank |next#Z#0@0|) (DtRank |d#0@@3|))))) (=> (or (< |##n#1@0| |n#0@@3|) (and (= |##n#1@0| |n#0@@3|) (< (DtRank |next#Z#0@0|) (DtRank |d#0@@3|)))) (=> (|_module.__default.FooD#canCall| (- |n#0@@3| 13) |next#Z#0@0|) (=> (and (and (= (_module.__default.FooD ($LS $LZ) |n#0@@3| |d#0@@3|) (_module.__default.FooD ($LS $LZ) (- |n#0@@3| 13) |next#Z#0@0|)) (|_module.__default.FooD#canCall| (- |n#0@@3| 13) |next#Z#0@0|)) (and ($Is intType (int_2_U (_module.__default.FooD ($LS $LZ) |n#0@@3| |d#0@@3|)) TInt) (= (ControlFlow 0 8) 6))) GeneratedUnifiedExit_correct)))))))))))))
(let ((anon16_Then_correct  (=> (and (and (< |n#0@@3| 100) (= (_module.__default.FooD ($LS $LZ) |n#0@@3| |d#0@@3|) (+ |n#0@@3| 12))) (and ($Is intType (int_2_U (_module.__default.FooD ($LS $LZ) |n#0@@3| |d#0@@3|)) TInt) (= (ControlFlow 0 7) 6))) GeneratedUnifiedExit_correct)))
(let ((anon15_Then_correct  (=> (= |d#0@@3| (|#_module.D.Something| |_mcc#0#0|)) (=> (and (and ($Is DatatypeTypeType |_mcc#0#0| Tclass._module.D) (= |let#0#0#0| |_mcc#0#0|)) (and ($Is DatatypeTypeType |let#0#0#0| Tclass._module.D) (= |next#Z#0@0| |let#0#0#0|))) (and (=> (= (ControlFlow 0 12) 7) anon16_Then_correct) (=> (= (ControlFlow 0 12) 8) anon16_Else_correct))))))
(let ((anon15_Else_correct true))
(let ((anon13_Else_correct  (=> (or (not (= |d#0@@3| |#_module.D.Nothing|)) (not true)) (and (=> (= (ControlFlow 0 13) 12) anon15_Then_correct) (=> (= (ControlFlow 0 13) 4) anon15_Else_correct)))))
(let ((anon12_Then_correct  (=> (and ($IsAlloc intType (int_2_U |n#0@@3|) Tclass._System.nat $Heap) ($IsAlloc DatatypeTypeType |d#0@@3| Tclass._module.D $Heap)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (<= 0 |n#0@@3|) (= |n#0@@3| |n#0@@3|))) (=> (or (<= 0 |n#0@@3|) (= |n#0@@3| |n#0@@3|)) (=> (= (ControlFlow 0 2) (- 0 1)) (or (and (= |n#0@@3| |n#0@@3|) (|_module.D#Equal| |d#0@@3| |d#0@@3|)) (or (< |n#0@@3| |n#0@@3|) (and (= |n#0@@3| |n#0@@3|) (< (DtRank |d#0@@3|) (DtRank |d#0@@3|)))))))))))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 20) 2) anon12_Then_correct) (=> (= (ControlFlow 0 20) 19) anon13_Then_correct)) (=> (= (ControlFlow 0 20) 13) anon13_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (<= (LitInt 0) |n#0@@3|) ($Is DatatypeTypeType |d#0@@3| Tclass._module.D)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 21) 20))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
