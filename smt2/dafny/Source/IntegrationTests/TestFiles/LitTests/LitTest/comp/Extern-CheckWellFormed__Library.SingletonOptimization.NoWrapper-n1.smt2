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
(declare-fun Tagclass.Library.MyInt () T@U)
(declare-fun |##Library.ErasableWrapper.ErasableWrapper| () T@U)
(declare-fun Tagclass.Library.ErasableWrapper () T@U)
(declare-fun tytagFamily$MyInt () T@U)
(declare-fun tytagFamily$ErasableWrapper () T@U)
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
(declare-fun Tclass.Library.MyInt () T@U)
(declare-fun |$IsA#Library.ErasableWrapper| (T@U) Bool)
(declare-fun Library.ErasableWrapper.ErasableWrapper_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.Library.ErasableWrapper () T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#Library.ErasableWrapper.ErasableWrapper| (Int) T@U)
(declare-fun Library.ErasableWrapper.x (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tag (T@U) T@U)
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
(assert (distinct alloc Tagclass.Library.MyInt |##Library.ErasableWrapper.ErasableWrapper| Tagclass.Library.ErasableWrapper tytagFamily$MyInt tytagFamily$ErasableWrapper)
)
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass.Library.MyInt $h)
 :qid |unknown.0:0|
 :skolemid |1107|
 :pattern ( ($IsAlloc intType |x#0| Tclass.Library.MyInt $h))
)))
(assert (forall ((d T@U) ) (!  (=> (|$IsA#Library.ErasableWrapper| d) (Library.ErasableWrapper.ErasableWrapper_q d))
 :qid |unknown.0:0|
 :skolemid |1183|
 :pattern ( (|$IsA#Library.ErasableWrapper| d))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 Tclass.Library.ErasableWrapper) (Library.ErasableWrapper.ErasableWrapper_q d@@0))
 :qid |unknown.0:0|
 :skolemid |1184|
 :pattern ( (Library.ErasableWrapper.ErasableWrapper_q d@@0) ($Is DatatypeTypeType d@@0 Tclass.Library.ErasableWrapper))
)))
(assert  (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 4)) (= (Ctor BoxType) 5)) (= (Ctor refType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |693|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |694|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |592|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |590|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((d@@1 T@U) ) (! (= (Library.ErasableWrapper.ErasableWrapper_q d@@1) (= (DatatypeCtorId d@@1) |##Library.ErasableWrapper.ErasableWrapper|))
 :qid |unknown.0:0|
 :skolemid |1174|
 :pattern ( (Library.ErasableWrapper.ErasableWrapper_q d@@1))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |601|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (Library.ErasableWrapper.ErasableWrapper_q d@@2) (exists ((|a#1#0#0| Int) ) (! (= d@@2 (|#Library.ErasableWrapper.ErasableWrapper| |a#1#0#0|))
 :qid |Externdfy.77:46|
 :skolemid |1175|
)))
 :qid |unknown.0:0|
 :skolemid |1176|
 :pattern ( (Library.ErasableWrapper.ErasableWrapper_q d@@2))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass.Library.MyInt)  (and (<= (LitInt (- 0 100)) (U_2_int |x#0@@0|)) (< (U_2_int |x#0@@0|) 2147483648)))
 :qid |unknown.0:0|
 :skolemid |1106|
 :pattern ( ($Is intType |x#0@@0| Tclass.Library.MyInt))
)))
(assert (forall ((h@@0 T@U) (k@@0 T@U) (v T@U) (t T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@0 k@@0) (=> ($IsAlloc T@@1 v t h@@0) ($IsAlloc T@@1 v t k@@0)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |685|
 :pattern ( ($HeapSucc h@@0 k@@0) ($IsAlloc T@@1 v t h@@0))
)))
(assert (forall ((|a#2#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#Library.ErasableWrapper.ErasableWrapper| |a#2#0#0|) Tclass.Library.ErasableWrapper) ($Is intType (int_2_U |a#2#0#0|) Tclass.Library.MyInt))
 :qid |Externdfy.77:46|
 :skolemid |1178|
 :pattern ( ($Is DatatypeTypeType (|#Library.ErasableWrapper.ErasableWrapper| |a#2#0#0|) Tclass.Library.ErasableWrapper))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |692|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((|a#0#0#0| Int) ) (! (= (DatatypeCtorId (|#Library.ErasableWrapper.ErasableWrapper| |a#0#0#0|)) |##Library.ErasableWrapper.ErasableWrapper|)
 :qid |Externdfy.77:46|
 :skolemid |1173|
 :pattern ( (|#Library.ErasableWrapper.ErasableWrapper| |a#0#0#0|))
)))
(assert (forall ((|a#4#0#0| Int) ) (! (= (Library.ErasableWrapper.x (|#Library.ErasableWrapper.ErasableWrapper| |a#4#0#0|)) |a#4#0#0|)
 :qid |Externdfy.77:46|
 :skolemid |1181|
 :pattern ( (|#Library.ErasableWrapper.ErasableWrapper| |a#4#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |600|
 :pattern ( ($Box T@@2 x@@5))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1935|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@3 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) ($Is DatatypeTypeType d@@3 Tclass.Library.ErasableWrapper)) ($IsAlloc DatatypeTypeType d@@3 Tclass.Library.ErasableWrapper $h@@0))
 :qid |unknown.0:0|
 :skolemid |1182|
 :pattern ( ($IsAlloc DatatypeTypeType d@@3 Tclass.Library.ErasableWrapper $h@@0))
)))
(assert (= (Tag Tclass.Library.MyInt) Tagclass.Library.MyInt))
(assert (= (TagFamily Tclass.Library.MyInt) tytagFamily$MyInt))
(assert (= (Tag Tclass.Library.ErasableWrapper) Tagclass.Library.ErasableWrapper))
(assert (= (TagFamily Tclass.Library.ErasableWrapper) tytagFamily$ErasableWrapper))
(assert (forall ((d@@4 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (Library.ErasableWrapper.ErasableWrapper_q d@@4) ($IsAlloc DatatypeTypeType d@@4 Tclass.Library.ErasableWrapper $h@@1))) ($IsAlloc intType (int_2_U (Library.ErasableWrapper.x d@@4)) Tclass.Library.MyInt $h@@1))
 :qid |unknown.0:0|
 :skolemid |1179|
 :pattern ( ($IsAlloc intType (int_2_U (Library.ErasableWrapper.x d@@4)) Tclass.Library.MyInt $h@@1))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |593|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#3#0#0| Int) ) (! (= (|#Library.ErasableWrapper.ErasableWrapper| (LitInt |a#3#0#0|)) (Lit DatatypeTypeType (|#Library.ErasableWrapper.ErasableWrapper| |a#3#0#0|)))
 :qid |Externdfy.77:46|
 :skolemid |1180|
 :pattern ( (|#Library.ErasableWrapper.ErasableWrapper| (LitInt |a#3#0#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@7)) (Lit BoxType ($Box T@@3 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |591|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@7)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |a#0| () T@U)
(declare-fun |newtype$check#0@0| () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |b#0@0| () T@U)
(declare-fun |newtype$check#1@0| () Int)
(declare-fun |newtype$check#2@0| () Int)
(declare-fun |b#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id CheckWellFormed$$Library.SingletonOptimization.NoWrapper)
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
 (=> (= (ControlFlow 0 0) 5) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (Library.ErasableWrapper.ErasableWrapper_q |a#0|) (= |newtype$check#0@0| (LitInt 2147483647))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (and (<= (LitInt (- 0 100)) |newtype$check#0@0|) (< |newtype$check#0@0| 2147483648))) (=> (and (<= (LitInt (- 0 100)) |newtype$check#0@0|) (< |newtype$check#0@0| 2147483648)) (=> (< (Library.ErasableWrapper.x |a#0|) 2147483647) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0)))
 :qid |Externdfy.86:38|
 :skolemid |1214|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0))
)) ($HeapSucc $Heap $Heap@0))) (=> (and (and (and ($Is DatatypeTypeType |b#0@0| Tclass.Library.ErasableWrapper) ($IsAlloc DatatypeTypeType |b#0@0| Tclass.Library.ErasableWrapper $Heap@0)) (Library.ErasableWrapper.ErasableWrapper_q |b#0@0|)) (and (Library.ErasableWrapper.ErasableWrapper_q |a#0|) (= |newtype$check#1@0| (LitInt 1)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (and (<= (LitInt (- 0 100)) |newtype$check#1@0|) (< |newtype$check#1@0| 2147483648))) (=> (and (<= (LitInt (- 0 100)) |newtype$check#1@0|) (< |newtype$check#1@0| 2147483648)) (=> (and (= |newtype$check#2@0| (+ (Library.ErasableWrapper.x |a#0|) 1)) (= (ControlFlow 0 2) (- 0 1))) (and (<= (LitInt (- 0 100)) |newtype$check#2@0|) (< |newtype$check#2@0| 2147483648))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is DatatypeTypeType |a#0| Tclass.Library.ErasableWrapper) ($IsAlloc DatatypeTypeType |a#0| Tclass.Library.ErasableWrapper $Heap)) (|$IsA#Library.ErasableWrapper| |a#0|)) (and (and ($Is DatatypeTypeType |b#0| Tclass.Library.ErasableWrapper) ($IsAlloc DatatypeTypeType |b#0| Tclass.Library.ErasableWrapper $Heap)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 5) 2)))) anon0_correct))))
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
