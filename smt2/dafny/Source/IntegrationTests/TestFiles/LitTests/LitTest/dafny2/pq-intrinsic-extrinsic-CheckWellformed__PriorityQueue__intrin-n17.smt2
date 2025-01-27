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
(declare-fun TagMultiSet () T@U)
(declare-fun alloc () T@U)
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
(declare-fun PriorityQueue__intrinsic.__default.Elements (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |PriorityQueue__intrinsic.__default.Elements#canCall| (T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Tclass.PriorityQueue__extrinsic.T () T@U)
(declare-fun |PriorityQueue__extrinsic.__default.Elements#canCall| (T@U) Bool)
(declare-fun PriorityQueue__extrinsic.__default.Elements (T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun $LZ () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun MultiSetType () T@T)
(declare-fun TMultiSet (T@U) T@U)
(declare-fun PriorityQueue__intrinsic.__default.Insert (T@U Int) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun |PriorityQueue__intrinsic.__default.Insert#canCall| (T@U Int) Bool)
(declare-fun PriorityQueue__intrinsic.__default.Valid (T@U) Bool)
(declare-fun |PriorityQueue__extrinsic.__default.Insert#canCall| (T@U Int) Bool)
(declare-fun PriorityQueue__extrinsic.__default.Insert (T@U T@U Int) T@U)
(declare-fun |MultiSet#Equal| (T@U T@U) Bool)
(declare-fun |MultiSet#Union| (T@U T@U) T@U)
(declare-fun |MultiSet#UnionOne| (T@U T@U) T@U)
(declare-fun |MultiSet#Empty| () T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsGoodMultiSet (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |MultiSet#Multiplicity| (T@U T@U) Int)
(declare-fun |MultiSet#Card| (T@U) Int)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun |PriorityQueue__intrinsic.__default.Valid#canCall| (T@U) Bool)
(declare-fun |PriorityQueue__extrinsic.__default.Valid#canCall| (T@U) Bool)
(declare-fun PriorityQueue__extrinsic.__default.Valid (T@U T@U) Bool)
(declare-fun Inv0_TMultiSet (T@U) T@U)
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
(assert (distinct TInt TagInt TagMultiSet alloc)
)
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor BoxType) 3))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|t#0| T@U) ) (!  (=> (or (|PriorityQueue__intrinsic.__default.Elements#canCall| (Lit BoxType |t#0|)) (and (< 1 $FunctionContextHeight) ($IsBox |t#0| Tclass.PriorityQueue__extrinsic.T))) (and (|PriorityQueue__extrinsic.__default.Elements#canCall| (Lit BoxType |t#0|)) (= (PriorityQueue__intrinsic.__default.Elements (Lit BoxType |t#0|)) (PriorityQueue__extrinsic.__default.Elements ($LS $LZ) (Lit BoxType |t#0|)))))
 :qid |pqintrinsicextrinsicdfy.156:27|
 :weight 3
 :skolemid |1701|
 :pattern ( (PriorityQueue__intrinsic.__default.Elements (Lit BoxType |t#0|)))
))))
(assert (= (Ctor MultiSetType) 4))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|t#0@@0| T@U) ) (!  (=> (or (|PriorityQueue__intrinsic.__default.Elements#canCall| |t#0@@0|) (and (< 1 $FunctionContextHeight) ($IsBox |t#0@@0| Tclass.PriorityQueue__extrinsic.T))) ($Is MultiSetType (PriorityQueue__intrinsic.__default.Elements |t#0@@0|) (TMultiSet TInt)))
 :qid |pqintrinsicextrinsicdfy.156:27|
 :skolemid |1698|
 :pattern ( (PriorityQueue__intrinsic.__default.Elements |t#0@@0|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|t#0@@1| T@U) (|x#0| Int) ) (!  (=> (or (|PriorityQueue__intrinsic.__default.Insert#canCall| (Lit BoxType |t#0@@1|) (LitInt |x#0|)) (and (< 2 $FunctionContextHeight) (and ($IsBox |t#0@@1| Tclass.PriorityQueue__extrinsic.T) (U_2_bool (Lit boolType (bool_2_U (PriorityQueue__intrinsic.__default.Valid (Lit BoxType |t#0@@1|)))))))) (and (|PriorityQueue__extrinsic.__default.Insert#canCall| (Lit BoxType |t#0@@1|) (LitInt |x#0|)) (= (PriorityQueue__intrinsic.__default.Insert (Lit BoxType |t#0@@1|) (LitInt |x#0|)) (PriorityQueue__extrinsic.__default.Insert ($LS $LZ) (Lit BoxType |t#0@@1|) (LitInt |x#0|)))))
 :qid |pqintrinsicextrinsicdfy.166:19|
 :weight 3
 :skolemid |1711|
 :pattern ( (PriorityQueue__intrinsic.__default.Insert (Lit BoxType |t#0@@1|) (LitInt |x#0|)))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|t#0@@2| T@U) (|x#0@@0| Int) ) (!  (=> (or (|PriorityQueue__intrinsic.__default.Insert#canCall| |t#0@@2| |x#0@@0|) (and (< 2 $FunctionContextHeight) (and ($IsBox |t#0@@2| Tclass.PriorityQueue__extrinsic.T) (PriorityQueue__intrinsic.__default.Valid |t#0@@2|)))) (and (|PriorityQueue__extrinsic.__default.Insert#canCall| |t#0@@2| |x#0@@0|) (= (PriorityQueue__intrinsic.__default.Insert |t#0@@2| |x#0@@0|) (PriorityQueue__extrinsic.__default.Insert ($LS $LZ) |t#0@@2| |x#0@@0|))))
 :qid |pqintrinsicextrinsicdfy.166:19|
 :skolemid |1709|
 :pattern ( (PriorityQueue__intrinsic.__default.Insert |t#0@@2| |x#0@@0|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|t#0@@3| T@U) (|x#0@@1| Int) ) (!  (=> (or (|PriorityQueue__intrinsic.__default.Insert#canCall| |t#0@@3| |x#0@@1|) (and (< 2 $FunctionContextHeight) (and ($IsBox |t#0@@3| Tclass.PriorityQueue__extrinsic.T) (PriorityQueue__intrinsic.__default.Valid |t#0@@3|)))) (and (let ((|t'#0| (PriorityQueue__intrinsic.__default.Insert |t#0@@3| |x#0@@1|)))
 (and (PriorityQueue__intrinsic.__default.Valid |t'#0|) (|MultiSet#Equal| (PriorityQueue__intrinsic.__default.Elements |t'#0|) (|MultiSet#Union| (PriorityQueue__intrinsic.__default.Elements |t#0@@3|) (|MultiSet#UnionOne| |MultiSet#Empty| ($Box intType (int_2_U |x#0@@1|))))))) ($IsBox (PriorityQueue__intrinsic.__default.Insert |t#0@@3| |x#0@@1|) Tclass.PriorityQueue__extrinsic.T)))
 :qid |pqintrinsicextrinsicdfy.166:19|
 :skolemid |1706|
 :pattern ( (PriorityQueue__intrinsic.__default.Insert |t#0@@3| |x#0@@1|))
))))
(assert (forall ((v T@U) (t0 T@U) ) (!  (=> ($Is MultiSetType v (TMultiSet t0)) ($IsGoodMultiSet v))
 :qid |DafnyPreludebpl.250:15|
 :skolemid |1217|
 :pattern ( ($Is MultiSetType v (TMultiSet t0)))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |1182|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1180|
 :pattern ( (Lit T x@@3))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap T@U) (|t#0@@4| T@U) (|x#0@@2| Int) ) (!  (=> (and (or (|PriorityQueue__intrinsic.__default.Insert#canCall| |t#0@@4| |x#0@@2|) (and (< 2 $FunctionContextHeight) (and (and ($IsBox |t#0@@4| Tclass.PriorityQueue__extrinsic.T) ($IsAllocBox |t#0@@4| Tclass.PriorityQueue__extrinsic.T $Heap)) (PriorityQueue__intrinsic.__default.Valid |t#0@@4|)))) ($IsGoodHeap $Heap)) ($IsAllocBox (PriorityQueue__intrinsic.__default.Insert |t#0@@4| |x#0@@2|) Tclass.PriorityQueue__extrinsic.T $Heap))
 :qid |pqintrinsicextrinsicdfy.166:12|
 :skolemid |1707|
 :pattern ( ($IsAllocBox (PriorityQueue__intrinsic.__default.Insert |t#0@@4| |x#0@@2|) Tclass.PriorityQueue__extrinsic.T $Heap))
))))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1191|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((a T@U) (x@@5 T@U) (y T@U) ) (!  (=> (or (not (= x@@5 y)) (not true)) (= (|MultiSet#Multiplicity| a y) (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a x@@5) y)))
 :qid |DafnyPreludebpl.978:15|
 :skolemid |1360|
 :pattern ( (|MultiSet#UnionOne| a x@@5) (|MultiSet#Multiplicity| a y))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|t#0@@5| T@U) (|x#0@@3| Int) ) (!  (=> (or (|PriorityQueue__intrinsic.__default.Insert#canCall| |t#0@@5| (LitInt |x#0@@3|)) (and (< 2 $FunctionContextHeight) (and ($IsBox |t#0@@5| Tclass.PriorityQueue__extrinsic.T) (PriorityQueue__intrinsic.__default.Valid |t#0@@5|)))) (and (|PriorityQueue__extrinsic.__default.Insert#canCall| |t#0@@5| (LitInt |x#0@@3|)) (= (PriorityQueue__intrinsic.__default.Insert |t#0@@5| (LitInt |x#0@@3|)) (PriorityQueue__extrinsic.__default.Insert ($LS $LZ) |t#0@@5| (LitInt |x#0@@3|)))))
 :qid |pqintrinsicextrinsicdfy.166:19|
 :weight 3
 :skolemid |1710|
 :pattern ( (PriorityQueue__intrinsic.__default.Insert |t#0@@5| (LitInt |x#0@@3|)))
))))
(assert (forall ((a@@0 T@U) (x@@6 T@U) ) (! (= (|MultiSet#Card| (|MultiSet#UnionOne| a@@0 x@@6)) (+ (|MultiSet#Card| a@@0) 1))
 :qid |DafnyPreludebpl.983:15|
 :skolemid |1361|
 :pattern ( (|MultiSet#Card| (|MultiSet#UnionOne| a@@0 x@@6)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1204|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall (($ly T@U) (|t#0@@6| T@U) ) (!  (=> (or (|PriorityQueue__extrinsic.__default.Elements#canCall| |t#0@@6|) ($IsBox |t#0@@6| Tclass.PriorityQueue__extrinsic.T)) ($Is MultiSetType (PriorityQueue__extrinsic.__default.Elements $ly |t#0@@6|) (TMultiSet TInt)))
 :qid |pqintrinsicextrinsicdfy.199:18|
 :skolemid |1732|
 :pattern ( (PriorityQueue__extrinsic.__default.Elements $ly |t#0@@6|))
)))
(assert (forall ((a@@1 T@U) (b T@U) ) (! (= (|MultiSet#Card| (|MultiSet#Union| a@@1 b)) (+ (|MultiSet#Card| a@@1) (|MultiSet#Card| b)))
 :qid |DafnyPreludebpl.994:15|
 :skolemid |1363|
 :pattern ( (|MultiSet#Card| (|MultiSet#Union| a@@1 b)))
)))
(assert (forall (($ly@@0 T@U) (|t#0@@7| T@U) (|x#0@@4| Int) ) (! (= (PriorityQueue__extrinsic.__default.Insert ($LS $ly@@0) |t#0@@7| |x#0@@4|) (PriorityQueue__extrinsic.__default.Insert $ly@@0 |t#0@@7| |x#0@@4|))
 :qid |pqintrinsicextrinsicdfy.213:12|
 :skolemid |1735|
 :pattern ( (PriorityQueue__extrinsic.__default.Insert ($LS $ly@@0) |t#0@@7| |x#0@@4|))
)))
(assert (forall ((a@@2 T@U) (b@@0 T@U) ) (!  (=> (|MultiSet#Equal| a@@2 b@@0) (= a@@2 b@@0))
 :qid |DafnyPreludebpl.1054:15|
 :skolemid |1374|
 :pattern ( (|MultiSet#Equal| a@@2 b@@0))
)))
(assert (forall ((v@@1 T@U) (t0@@0 T@U) ) (! (= ($Is MultiSetType v@@1 (TMultiSet t0@@0)) (forall ((bx T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@1 bx)) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.248:11|
 :skolemid |1215|
 :pattern ( (|MultiSet#Multiplicity| v@@1 bx))
)))
 :qid |DafnyPreludebpl.246:15|
 :skolemid |1216|
 :pattern ( ($Is MultiSetType v@@1 (TMultiSet t0@@0)))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TInt) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |1192|
 :pattern ( ($IsBox bx@@0 TInt))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|t#0@@8| T@U) ) (!  (=> (or (|PriorityQueue__intrinsic.__default.Valid#canCall| |t#0@@8|) (and (< 1 $FunctionContextHeight) ($IsBox |t#0@@8| Tclass.PriorityQueue__extrinsic.T))) (and (|PriorityQueue__extrinsic.__default.Valid#canCall| |t#0@@8|) (= (PriorityQueue__intrinsic.__default.Valid |t#0@@8|) (PriorityQueue__extrinsic.__default.Valid ($LS $LZ) |t#0@@8|))))
 :qid |pqintrinsicextrinsicdfy.153:25|
 :skolemid |1695|
 :pattern ( (PriorityQueue__intrinsic.__default.Valid |t#0@@8|))
))))
(assert (forall (($ly@@1 T@U) (|t#0@@9| T@U) ) (! (= (PriorityQueue__extrinsic.__default.Valid ($LS $ly@@1) |t#0@@9|) (PriorityQueue__extrinsic.__default.Valid $ly@@1 |t#0@@9|))
 :qid |pqintrinsicextrinsicdfy.190:19|
 :skolemid |1726|
 :pattern ( (PriorityQueue__extrinsic.__default.Valid ($LS $ly@@1) |t#0@@9|))
)))
(assert (forall ((v@@2 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@2) t@@0) ($Is T@@2 v@@2 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1203|
 :pattern ( ($IsBox ($Box T@@2 v@@2) t@@0))
)))
(assert (forall ((ms T@U) ) (! (= ($IsGoodMultiSet ms) (forall ((bx@@1 T@U) ) (!  (and (<= 0 (|MultiSet#Multiplicity| ms bx@@1)) (<= (|MultiSet#Multiplicity| ms bx@@1) (|MultiSet#Card| ms)))
 :qid |DafnyPreludebpl.921:19|
 :skolemid |1348|
 :pattern ( (|MultiSet#Multiplicity| ms bx@@1))
)))
 :qid |DafnyPreludebpl.918:15|
 :skolemid |1349|
 :pattern ( ($IsGoodMultiSet ms))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|MultiSet#Card| s))
 :qid |DafnyPreludebpl.928:15|
 :skolemid |1350|
 :pattern ( (|MultiSet#Card| s))
)))
(assert (forall ((o T@U) ) (! (= (|MultiSet#Multiplicity| |MultiSet#Empty| o) 0)
 :qid |DafnyPreludebpl.938:15|
 :skolemid |1352|
 :pattern ( (|MultiSet#Multiplicity| |MultiSet#Empty| o))
)))
(assert (forall ((a@@3 T@U) (x@@7 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@3 x@@7) x@@7) (+ (|MultiSet#Multiplicity| a@@3 x@@7) 1))
 :qid |DafnyPreludebpl.968:15|
 :skolemid |1358|
 :pattern ( (|MultiSet#UnionOne| a@@3 x@@7))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TMultiSet (TMultiSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.49:15|
 :skolemid |1170|
 :pattern ( (TMultiSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TMultiSet t@@2)) TagMultiSet)
 :qid |DafnyPreludebpl.50:15|
 :skolemid |1171|
 :pattern ( (TMultiSet t@@2))
)))
(assert (forall ((x@@8 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1190|
 :pattern ( ($Box T@@3 x@@8))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|t#0@@10| T@U) ) (!  (=> (or (|PriorityQueue__intrinsic.__default.Elements#canCall| |t#0@@10|) (and (< 1 $FunctionContextHeight) ($IsBox |t#0@@10| Tclass.PriorityQueue__extrinsic.T))) (and (|PriorityQueue__extrinsic.__default.Elements#canCall| |t#0@@10|) (= (PriorityQueue__intrinsic.__default.Elements |t#0@@10|) (PriorityQueue__extrinsic.__default.Elements ($LS $LZ) |t#0@@10|))))
 :qid |pqintrinsicextrinsicdfy.156:27|
 :skolemid |1700|
 :pattern ( (PriorityQueue__intrinsic.__default.Elements |t#0@@10|))
))))
(assert (forall (($ly@@2 T@U) (|t#0@@11| T@U) ) (! (= (PriorityQueue__extrinsic.__default.Elements ($LS $ly@@2) |t#0@@11|) (PriorityQueue__extrinsic.__default.Elements $ly@@2 |t#0@@11|))
 :qid |pqintrinsicextrinsicdfy.199:18|
 :skolemid |1730|
 :pattern ( (PriorityQueue__extrinsic.__default.Elements ($LS $ly@@2) |t#0@@11|))
)))
(assert (forall ((s@@0 T@U) ) (!  (and (= (= (|MultiSet#Card| s@@0) 0) (= s@@0 |MultiSet#Empty|)) (=> (or (not (= (|MultiSet#Card| s@@0) 0)) (not true)) (exists ((x@@9 T@U) ) (! (< 0 (|MultiSet#Multiplicity| s@@0 x@@9))
 :qid |DafnyPreludebpl.946:20|
 :skolemid |1353|
 :pattern ( (|MultiSet#Multiplicity| s@@0 x@@9))
))))
 :qid |DafnyPreludebpl.942:15|
 :skolemid |1354|
 :pattern ( (|MultiSet#Card| s@@0))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) (o@@0 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#Union| a@@4 b@@1) o@@0) (+ (|MultiSet#Multiplicity| a@@4 o@@0) (|MultiSet#Multiplicity| b@@1 o@@0)))
 :qid |DafnyPreludebpl.989:15|
 :skolemid |1362|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Union| a@@4 b@@1) o@@0))
)))
(assert (forall (($Heap@@0 T@U) ($ly@@3 T@U) (|t#0@@12| T@U) (|x#0@@5| Int) ) (!  (=> (and (or (|PriorityQueue__extrinsic.__default.Insert#canCall| |t#0@@12| |x#0@@5|) (and ($IsBox |t#0@@12| Tclass.PriorityQueue__extrinsic.T) ($IsAllocBox |t#0@@12| Tclass.PriorityQueue__extrinsic.T $Heap@@0))) ($IsGoodHeap $Heap@@0)) ($IsAllocBox (PriorityQueue__extrinsic.__default.Insert $ly@@3 |t#0@@12| |x#0@@5|) Tclass.PriorityQueue__extrinsic.T $Heap@@0))
 :qid |pqintrinsicextrinsicdfy.213:12|
 :skolemid |1738|
 :pattern ( ($IsAllocBox (PriorityQueue__extrinsic.__default.Insert $ly@@3 |t#0@@12| |x#0@@5|) Tclass.PriorityQueue__extrinsic.T $Heap@@0))
)))
(assert  (and (and (and (and (and (and (and (and (forall ((t0@@1 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0@@1 t1 t2 (MapType0Store t0@@1 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 5)) (= (Ctor FieldType) 6)) (forall ((t0@@2 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@2 t1@@0 (MapType1Store t0@@2 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3529|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall (($ly@@4 T@U) (|t#0@@13| T@U) (|x#0@@6| Int) ) (!  (=> (or (|PriorityQueue__extrinsic.__default.Insert#canCall| |t#0@@13| |x#0@@6|) ($IsBox |t#0@@13| Tclass.PriorityQueue__extrinsic.T)) ($IsBox (PriorityQueue__extrinsic.__default.Insert $ly@@4 |t#0@@13| |x#0@@6|) Tclass.PriorityQueue__extrinsic.T))
 :qid |pqintrinsicextrinsicdfy.213:12|
 :skolemid |1737|
 :pattern ( (PriorityQueue__extrinsic.__default.Insert $ly@@4 |t#0@@13| |x#0@@6|))
)))
(assert (forall ((bx@@2 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@2 (TMultiSet t@@3)) (and (= ($Box MultiSetType ($Unbox MultiSetType bx@@2)) bx@@2) ($Is MultiSetType ($Unbox MultiSetType bx@@2) (TMultiSet t@@3))))
 :qid |DafnyPreludebpl.201:15|
 :skolemid |1199|
 :pattern ( ($IsBox bx@@2 (TMultiSet t@@3)))
)))
(assert (forall ((x@@10 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@10))) (Lit BoxType ($Box intType (int_2_U x@@10))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |1183|
 :pattern ( ($Box intType (int_2_U (LitInt x@@10))))
)))
(assert (forall ((x@@11 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@11)) (Lit BoxType ($Box T@@4 x@@11)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1181|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@11)))
)))
(assert (forall ((a@@5 T@U) (x@@12 T@U) (y@@0 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| a@@5 y@@0)) (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@5 x@@12) y@@0)))
 :qid |DafnyPreludebpl.973:15|
 :skolemid |1359|
 :pattern ( (|MultiSet#UnionOne| a@@5 x@@12) (|MultiSet#Multiplicity| a@@5 y@@0))
)))
(assert (forall ((a@@6 T@U) (x@@13 T@U) (o@@1 T@U) ) (! (= (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@6 x@@13) o@@1))  (or (= o@@1 x@@13) (< 0 (|MultiSet#Multiplicity| a@@6 o@@1))))
 :qid |DafnyPreludebpl.963:15|
 :skolemid |1357|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@6 x@@13) o@@1))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|t#0@@14| T@U) ) (!  (=> (or (|PriorityQueue__intrinsic.__default.Valid#canCall| (Lit BoxType |t#0@@14|)) (and (< 1 $FunctionContextHeight) ($IsBox |t#0@@14| Tclass.PriorityQueue__extrinsic.T))) (and (|PriorityQueue__extrinsic.__default.Valid#canCall| (Lit BoxType |t#0@@14|)) (= (PriorityQueue__intrinsic.__default.Valid (Lit BoxType |t#0@@14|)) (PriorityQueue__extrinsic.__default.Valid ($LS $LZ) (Lit BoxType |t#0@@14|)))))
 :qid |pqintrinsicextrinsicdfy.153:25|
 :weight 3
 :skolemid |1696|
 :pattern ( (PriorityQueue__intrinsic.__default.Valid (Lit BoxType |t#0@@14|)))
))))
(assert (forall ((a@@7 T@U) (b@@2 T@U) ) (! (= (|MultiSet#Equal| a@@7 b@@2) (forall ((o@@2 T@U) ) (! (= (|MultiSet#Multiplicity| a@@7 o@@2) (|MultiSet#Multiplicity| b@@2 o@@2))
 :qid |DafnyPreludebpl.1050:19|
 :skolemid |1372|
 :pattern ( (|MultiSet#Multiplicity| a@@7 o@@2))
 :pattern ( (|MultiSet#Multiplicity| b@@2 o@@2))
)))
 :qid |DafnyPreludebpl.1047:15|
 :skolemid |1373|
 :pattern ( (|MultiSet#Equal| a@@7 b@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@3 T@U) (h@@0 T@U) ) (! (= ($IsAlloc MultiSetType v@@3 (TMultiSet t0@@3) h@@0) (forall ((bx@@3 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@3 bx@@3)) ($IsAllocBox bx@@3 t0@@3 h@@0))
 :qid |DafnyPreludebpl.307:11|
 :skolemid |1236|
 :pattern ( (|MultiSet#Multiplicity| v@@3 bx@@3))
)))
 :qid |DafnyPreludebpl.305:15|
 :skolemid |1237|
 :pattern ( ($IsAlloc MultiSetType v@@3 (TMultiSet t0@@3) h@@0))
)))
(assert (forall ((h@@1 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |1226|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@1))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |1205|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |t'#Z#0@0| () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun |t#0@@15| () T@U)
(declare-fun |x#0@@7| () Int)
(declare-fun |let#0#0#0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(set-info :boogie-vc-id CheckWellformed$$PriorityQueue__intrinsic.__default.Insert)
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
 (=> (= (ControlFlow 0 0) 14) (let ((anon4_correct true))
(let ((anon8_Else_correct  (=> (and (not (PriorityQueue__intrinsic.__default.Valid |t'#Z#0@0|)) (= (ControlFlow 0 8) 6)) anon4_correct)))
(let ((anon8_Then_correct  (=> (and (PriorityQueue__intrinsic.__default.Valid |t'#Z#0@0|) ($IsAllocBox |t'#Z#0@0| Tclass.PriorityQueue__extrinsic.T $Heap@@1)) (=> (and (and (|PriorityQueue__intrinsic.__default.Elements#canCall| |t'#Z#0@0|) ($IsAllocBox |t#0@@15| Tclass.PriorityQueue__extrinsic.T $Heap@@1)) (and (|PriorityQueue__intrinsic.__default.Elements#canCall| |t#0@@15|) (= (ControlFlow 0 7) 6))) anon4_correct))))
(let ((anon7_Then_correct  (=> ($IsBox (PriorityQueue__intrinsic.__default.Insert |t#0@@15| |x#0@@7|) Tclass.PriorityQueue__extrinsic.T) (=> (and ($IsAllocBox |t#0@@15| Tclass.PriorityQueue__extrinsic.T $Heap@@1) ($IsAlloc intType (int_2_U |x#0@@7|) TInt $Heap@@1)) (and (=> (= (ControlFlow 0 9) (- 0 12)) (=> (|PriorityQueue__intrinsic.__default.Valid#canCall| |t#0@@15|) (or (PriorityQueue__intrinsic.__default.Valid |t#0@@15|) (PriorityQueue__extrinsic.__default.Valid ($LS ($LS $LZ)) |t#0@@15|)))) (=> (PriorityQueue__intrinsic.__default.Valid |t#0@@15|) (and (=> (= (ControlFlow 0 9) (- 0 11)) (or (<= 0 |x#0@@7|) (= |x#0@@7| |x#0@@7|))) (=> (or (<= 0 |x#0@@7|) (= |x#0@@7| |x#0@@7|)) (and (=> (= (ControlFlow 0 9) (- 0 10)) (or (and (= |t#0@@15| |t#0@@15|) (= |x#0@@7| |x#0@@7|)) (< |x#0@@7| |x#0@@7|))) (=> (or (and (= |t#0@@15| |t#0@@15|) (= |x#0@@7| |x#0@@7|)) (< |x#0@@7| |x#0@@7|)) (=> (or (and (= |t#0@@15| |t#0@@15|) (= |x#0@@7| |x#0@@7|)) (|PriorityQueue__intrinsic.__default.Insert#canCall| |t#0@@15| |x#0@@7|)) (=> (and (= |let#0#0#0| (PriorityQueue__intrinsic.__default.Insert |t#0@@15| |x#0@@7|)) (|PriorityQueue__intrinsic.__default.Insert#canCall| |t#0@@15| |x#0@@7|)) (=> (and (and ($IsBox |let#0#0#0| Tclass.PriorityQueue__extrinsic.T) (= |t'#Z#0@0| |let#0#0#0|)) (and ($IsAllocBox |t'#Z#0@0| Tclass.PriorityQueue__extrinsic.T $Heap@@1) (|PriorityQueue__intrinsic.__default.Valid#canCall| |t'#Z#0@0|))) (and (=> (= (ControlFlow 0 9) 7) anon8_Then_correct) (=> (= (ControlFlow 0 9) 8) anon8_Else_correct)))))))))))))))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (let ((|t'#1| (PriorityQueue__intrinsic.__default.Insert |t#0@@15| |x#0@@7|)))
 (=> (|PriorityQueue__intrinsic.__default.Valid#canCall| |t'#1|) (or (PriorityQueue__intrinsic.__default.Valid |t'#1|) (PriorityQueue__extrinsic.__default.Valid ($LS ($LS $LZ)) |t'#1|))))) (=> (let ((|t'#1@@0| (PriorityQueue__intrinsic.__default.Insert |t#0@@15| |x#0@@7|)))
 (=> (|PriorityQueue__intrinsic.__default.Valid#canCall| |t'#1@@0|) (or (PriorityQueue__intrinsic.__default.Valid |t'#1@@0|) (PriorityQueue__extrinsic.__default.Valid ($LS ($LS $LZ)) |t'#1@@0|)))) (=> (= (ControlFlow 0 2) (- 0 1)) (let ((|t'#1@@1| (PriorityQueue__intrinsic.__default.Insert |t#0@@15| |x#0@@7|)))
(|MultiSet#Equal| (PriorityQueue__intrinsic.__default.Elements |t'#1@@1|) (|MultiSet#Union| (PriorityQueue__intrinsic.__default.Elements |t#0@@15|) (|MultiSet#UnionOne| |MultiSet#Empty| ($Box intType (int_2_U |x#0@@7|)))))))))))
(let ((anon7_Else_correct  (and (=> (= (ControlFlow 0 4) (- 0 5)) (PriorityQueue__extrinsic.__default.Valid ($LS ($LS $LZ)) |t#0@@15|)) (=> (PriorityQueue__extrinsic.__default.Valid ($LS ($LS $LZ)) |t#0@@15|) (=> (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (=> (and (and (|PriorityQueue__extrinsic.__default.Insert#canCall| |t#0@@15| |x#0@@7|) (let ((|t'#0@@0| (PriorityQueue__extrinsic.__default.Insert ($LS $LZ) |t#0@@15| |x#0@@7|)))
 (and (|PriorityQueue__extrinsic.__default.Valid#canCall| |t'#0@@0|) (=> (PriorityQueue__extrinsic.__default.Valid ($LS $LZ) |t'#0@@0|) (and (|PriorityQueue__extrinsic.__default.Elements#canCall| |t'#0@@0|) (|PriorityQueue__extrinsic.__default.Elements#canCall| |t#0@@15|)))))) (and (let ((|t'#0@@1| (PriorityQueue__extrinsic.__default.Insert ($LS ($LS $LZ)) |t#0@@15| |x#0@@7|)))
(PriorityQueue__extrinsic.__default.Valid ($LS ($LS $LZ)) |t'#0@@1|)) (let ((|t'#0@@2| (PriorityQueue__extrinsic.__default.Insert ($LS ($LS $LZ)) |t#0@@15| |x#0@@7|)))
(|MultiSet#Equal| (PriorityQueue__extrinsic.__default.Elements ($LS ($LS $LZ)) |t'#0@@2|) (|MultiSet#Union| (PriorityQueue__extrinsic.__default.Elements ($LS ($LS $LZ)) |t#0@@15|) (|MultiSet#UnionOne| |MultiSet#Empty| ($Box intType (int_2_U |x#0@@7|)))))))) (=> (and (and (and (= $Heap@@1 $Heap@0) ($IsAllocBox |t#0@@15| Tclass.PriorityQueue__extrinsic.T $Heap@0)) (and ($IsAlloc intType (int_2_U |x#0@@7|) TInt $Heap@0) (|PriorityQueue__extrinsic.__default.Insert#canCall| |t#0@@15| |x#0@@7|))) (and (and (= (PriorityQueue__intrinsic.__default.Insert |t#0@@15| |x#0@@7|) (PriorityQueue__extrinsic.__default.Insert ($LS $LZ) |t#0@@15| |x#0@@7|)) (|PriorityQueue__extrinsic.__default.Insert#canCall| |t#0@@15| |x#0@@7|)) (and ($IsBox (PriorityQueue__intrinsic.__default.Insert |t#0@@15| |x#0@@7|) Tclass.PriorityQueue__extrinsic.T) (= (ControlFlow 0 4) 2)))) GeneratedUnifiedExit_correct)))))))
(let ((anon0_correct  (=> (and (and (= $_ReadsFrame@0 (|lambda#0| null $Heap@@1 alloc false)) ($IsAllocBox |t#0@@15| Tclass.PriorityQueue__extrinsic.T $Heap@@1)) (and (|PriorityQueue__intrinsic.__default.Valid#canCall| |t#0@@15|) (PriorityQueue__intrinsic.__default.Valid |t#0@@15|))) (and (=> (= (ControlFlow 0 13) 9) anon7_Then_correct) (=> (= (ControlFlow 0 13) 4) anon7_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) ($IsBox |t#0@@15| Tclass.PriorityQueue__extrinsic.T)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 14) 13))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
