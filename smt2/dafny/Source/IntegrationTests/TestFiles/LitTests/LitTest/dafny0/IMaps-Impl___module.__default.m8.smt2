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
(declare-fun TagISet () T@U)
(declare-fun TagIMap () T@U)
(declare-fun alloc () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
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
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |lambda#23| (T@U Bool) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun |IMap#Domain| (T@U) T@U)
(declare-fun |IMap#Glue| (T@U T@U T@U) T@U)
(declare-fun |IMap#Elements| (T@U) T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |ISet#Union| (T@U T@U) T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun FieldType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun TISet (T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun IMapType () T@T)
(declare-fun _module.__default.Update (T@U T@U T@U T@U T@U) T@U)
(declare-fun TIMap (T@U T@U) T@U)
(declare-fun |_module.__default.Update#canCall| (T@U T@U T@U T@U T@U) Bool)
(declare-fun |IMap#Empty| () T@U)
(declare-fun |IMap#Values| (T@U) T@U)
(declare-fun |ISet#Disjoint| (T@U T@U) Bool)
(declare-fun |ISet#Difference| (T@U T@U) T@U)
(declare-fun |lambda#15| (T@U T@U) T@U)
(declare-fun |ISet#UnionOne| (T@U T@U) T@U)
(declare-fun |ISet#Empty| () T@U)
(declare-fun |lambda#16| (T@U T@U T@U) T@U)
(declare-fun |lambda#3| (T@U) T@U)
(declare-fun |IMap#Items| (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun Inv0_TIMap (T@U) T@U)
(declare-fun Inv1_TIMap (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun Inv0_TISet (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun Mul (Int Int) Int)
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
(assert (distinct TInt TagInt TagISet TagIMap alloc |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 |tytagFamily$_tuple#2|)
)
(assert (= (Tag TInt) TagInt))
(assert  (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 3)))
(assert (forall ((|l#0| T@U) (|l#1| Bool) (|$w#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#23| |l#0| |l#1|) |$w#0|))  (and ($IsBox |$w#0| |l#0|) |l#1|))
 :qid |DafnyPreludebpl.27:1|
 :skolemid |594|
 :pattern ( (MapType0Select BoxType boolType (|lambda#23| |l#0| |l#1|) |$w#0|))
)))
(assert (forall ((a T@U) (b T@U) (t T@U) ) (! (= (|IMap#Domain| (|IMap#Glue| a b t)) a)
 :qid |DafnyPreludebpl.1576:15|
 :skolemid |316|
 :pattern ( (|IMap#Domain| (|IMap#Glue| a b t)))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (t@@0 T@U) ) (! (= (|IMap#Elements| (|IMap#Glue| a@@0 b@@0 t@@0)) b@@0)
 :qid |DafnyPreludebpl.1579:15|
 :skolemid |317|
 :pattern ( (|IMap#Elements| (|IMap#Glue| a@@0 b@@0 t@@0)))
)))
(assert (= (Ctor DatatypeTypeType) 4))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |468|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|ISet#Union| (|ISet#Union| a@@1 b@@1) b@@1) (|ISet#Union| a@@1 b@@1))
 :qid |DafnyPreludebpl.847:15|
 :skolemid |164|
 :pattern ( (|ISet#Union| (|ISet#Union| a@@1 b@@1) b@@1))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |456|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert  (and (and (and (and (= (Ctor FieldType) 5) (= (Ctor refType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
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
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is (MapType0Type BoxType boolType) v (TISet t0@@0)) (forall ((bx T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType v bx)) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.244:11|
 :skolemid |48|
 :pattern ( (MapType0Select BoxType boolType v bx))
)))
 :qid |DafnyPreludebpl.242:15|
 :skolemid |49|
 :pattern ( ($Is (MapType0Type BoxType boolType) v (TISet t0@@0)))
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
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h))))
 :qid |unknown.0:0|
 :skolemid |457|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@0) (= (DatatypeCtorId d@@0) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |449|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (= (Ctor IMapType) 8))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (_module._default.Update$K T@U) (_module._default.Update$V T@U) (|a#0| T@U) (|k#0| T@U) (|v#0| T@U) ) (!  (=> (and (or (|_module.__default.Update#canCall| _module._default.Update$K _module._default.Update$V |a#0| |k#0| |v#0|) (and (< 0 $FunctionContextHeight) (and (and (and ($Is IMapType |a#0| (TIMap _module._default.Update$K _module._default.Update$V)) ($IsAlloc IMapType |a#0| (TIMap _module._default.Update$K _module._default.Update$V) $Heap)) (and ($IsBox |k#0| _module._default.Update$K) ($IsAllocBox |k#0| _module._default.Update$K $Heap))) (and ($IsBox |v#0| _module._default.Update$V) ($IsAllocBox |v#0| _module._default.Update$V $Heap))))) ($IsGoodHeap $Heap)) ($IsAlloc IMapType (_module.__default.Update _module._default.Update$K _module._default.Update$V |a#0| |k#0| |v#0|) (TIMap _module._default.Update$K _module._default.Update$V) $Heap))
 :qid |IMapsdfy.73:16|
 :skolemid |549|
 :pattern ( ($IsAlloc IMapType (_module.__default.Update _module._default.Update$K _module._default.Update$V |a#0| |k#0| |v#0|) (TIMap _module._default.Update$K _module._default.Update$V) $Heap))
))))
(assert (forall ((d@@1 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@1) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@1 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |450|
)))
 :qid |unknown.0:0|
 :skolemid |451|
 :pattern ( (_System.Tuple2.___hMake2_q d@@1))
)))
(assert (forall ((v@@0 T@U) (t@@1 T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t@@1 h@@0) ($IsAlloc T@@1 v@@0 t@@1 h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t@@1 h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@2 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@2 h@@1) ($IsAllocBox bx@@0 t@@2 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@2 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@3 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@3 h@@2) ($IsAlloc T@@2 v@@1 t@@3 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@3 h@@2))
)))
(assert (forall ((u T@U) ) (!  (not (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| |IMap#Empty|) u)))
 :qid |DafnyPreludebpl.1571:15|
 :skolemid |315|
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| |IMap#Empty|) u))
)))
(assert (forall ((m@@1 T@U) ) (!  (or (= m@@1 |IMap#Empty|) (exists ((k@@2 T@U) ) (! (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| m@@1) k@@2))
 :qid |DafnyPreludebpl.1525:32|
 :skolemid |303|
)))
 :qid |DafnyPreludebpl.1523:15|
 :skolemid |304|
 :pattern ( (|IMap#Domain| m@@1))
)))
(assert (forall ((m@@2 T@U) ) (!  (or (= m@@2 |IMap#Empty|) (exists ((v@@2 T@U) ) (! (U_2_bool (MapType0Select BoxType boolType (|IMap#Values| m@@2) v@@2))
 :qid |DafnyPreludebpl.1528:32|
 :skolemid |305|
)))
 :qid |DafnyPreludebpl.1526:15|
 :skolemid |306|
 :pattern ( (|IMap#Values| m@@2))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (!  (=> (|ISet#Disjoint| a@@2 b@@2) (and (= (|ISet#Difference| (|ISet#Union| a@@2 b@@2) a@@2) b@@2) (= (|ISet#Difference| (|ISet#Union| a@@2 b@@2) b@@2) a@@2)))
 :qid |DafnyPreludebpl.838:15|
 :skolemid |162|
 :pattern ( (|ISet#Union| a@@2 b@@2))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.Update$K@@0 T@U) (_module._default.Update$V@@0 T@U) (|a#0@@0| T@U) (|k#0@@0| T@U) (|v#0@@0| T@U) ) (!  (=> (or (|_module.__default.Update#canCall| _module._default.Update$K@@0 _module._default.Update$V@@0 |a#0@@0| |k#0@@0| |v#0@@0|) (and (< 0 $FunctionContextHeight) (and (and ($Is IMapType |a#0@@0| (TIMap _module._default.Update$K@@0 _module._default.Update$V@@0)) ($IsBox |k#0@@0| _module._default.Update$K@@0)) ($IsBox |v#0@@0| _module._default.Update$V@@0)))) (= (_module.__default.Update _module._default.Update$K@@0 _module._default.Update$V@@0 |a#0@@0| |k#0@@0| |v#0@@0|) (|IMap#Glue| (|lambda#15| _module._default.Update$K@@0 (|ISet#Union| (|ISet#UnionOne| |ISet#Empty| |k#0@@0|) (|IMap#Domain| |a#0@@0|))) (|lambda#16| |k#0@@0| |v#0@@0| (|IMap#Elements| |a#0@@0|)) (TIMap _module._default.Update$K@@0 _module._default.Update$V@@0))))
 :qid |unknown.0:0|
 :skolemid |551|
 :pattern ( (_module.__default.Update _module._default.Update$K@@0 _module._default.Update$V@@0 |a#0@@0| |k#0@@0| |v#0@@0|))
))))
(assert (forall ((|l#0@@0| T@U) (|$w#0@@0| T@U) ) (! (= (MapType0Select BoxType BoxType (|lambda#3| |l#0@@0|) |$w#0@@0|) |l#0@@0|)
 :qid |IMapsdfy.36:19|
 :skolemid |591|
 :pattern ( (MapType0Select BoxType BoxType (|lambda#3| |l#0@@0|) |$w#0@@0|))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) (o@@0 T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|ISet#Difference| a@@3 b@@3) o@@0))  (and (U_2_bool (MapType0Select BoxType boolType a@@3 o@@0)) (not (U_2_bool (MapType0Select BoxType boolType b@@3 o@@0)))))
 :qid |DafnyPreludebpl.858:15|
 :skolemid |168|
 :pattern ( (MapType0Select BoxType boolType (|ISet#Difference| a@@3 b@@3) o@@0))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc (MapType0Type BoxType boolType) v@@3 (TISet t0@@1) h@@3) (forall ((bx@@1 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType v@@3 bx@@1)) ($IsAllocBox bx@@1 t0@@1 h@@3))
 :qid |DafnyPreludebpl.303:11|
 :skolemid |69|
 :pattern ( (MapType0Select BoxType boolType v@@3 bx@@1))
)))
 :qid |DafnyPreludebpl.301:15|
 :skolemid |70|
 :pattern ( ($IsAlloc (MapType0Type BoxType boolType) v@@3 (TISet t0@@1) h@@3))
)))
(assert (forall ((m@@3 T@U) (item T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|IMap#Items| m@@3) item))  (and (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| m@@3) (_System.Tuple2._0 ($Unbox DatatypeTypeType item)))) (= (MapType0Select BoxType BoxType (|IMap#Elements| m@@3) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1564:15|
 :skolemid |314|
 :pattern ( (MapType0Select BoxType boolType (|IMap#Items| m@@3) item))
)))
(assert (forall ((m@@4 T@U) (v@@4 T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|IMap#Values| m@@4) v@@4)) (exists ((u@@0 T@U) ) (!  (and (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| m@@4) u@@0)) (= v@@4 (MapType0Select BoxType BoxType (|IMap#Elements| m@@4) u@@0)))
 :qid |DafnyPreludebpl.1552:10|
 :skolemid |312|
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| m@@4) u@@0))
 :pattern ( (MapType0Select BoxType BoxType (|IMap#Elements| m@@4) u@@0))
)))
 :qid |DafnyPreludebpl.1550:15|
 :skolemid |313|
 :pattern ( (MapType0Select BoxType boolType (|IMap#Values| m@@4) v@@4))
)))
(assert (forall ((v@@5 T@U) (t0@@2 T@U) (t1@@0 T@U) (h@@4 T@U) ) (! (= ($IsAlloc IMapType v@@5 (TIMap t0@@2 t1@@0) h@@4) (forall ((bx@@2 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| v@@5) bx@@2)) (and ($IsAllocBox (MapType0Select BoxType BoxType (|IMap#Elements| v@@5) bx@@2) t1@@0 h@@4) ($IsAllocBox bx@@2 t0@@2 h@@4)))
 :qid |DafnyPreludebpl.327:19|
 :skolemid |77|
 :pattern ( (MapType0Select BoxType BoxType (|IMap#Elements| v@@5) bx@@2))
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| v@@5) bx@@2))
)))
 :qid |DafnyPreludebpl.324:15|
 :skolemid |78|
 :pattern ( ($IsAlloc IMapType v@@5 (TIMap t0@@2 t1@@0) h@@4))
)))
(assert (forall ((a@@4 T@U) (x@@5 T@U) (y T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType a@@4 y)) (U_2_bool (MapType0Select BoxType boolType (|ISet#UnionOne| a@@4 x@@5) y)))
 :qid |DafnyPreludebpl.828:15|
 :skolemid |158|
 :pattern ( (|ISet#UnionOne| a@@4 x@@5) (MapType0Select BoxType boolType a@@4 y))
)))
(assert (forall ((a@@5 T@U) (b@@4 T@U) (y@@0 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType a@@5 y@@0)) (U_2_bool (MapType0Select BoxType boolType (|ISet#Union| a@@5 b@@4) y@@0)))
 :qid |DafnyPreludebpl.834:15|
 :skolemid |160|
 :pattern ( (|ISet#Union| a@@5 b@@4) (MapType0Select BoxType boolType a@@5 y@@0))
)))
(assert (forall ((a@@6 T@U) (b@@5 T@U) (y@@1 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType b@@5 y@@1)) (U_2_bool (MapType0Select BoxType boolType (|ISet#Union| a@@6 b@@5) y@@1)))
 :qid |DafnyPreludebpl.836:15|
 :skolemid |161|
 :pattern ( (|ISet#Union| a@@6 b@@5) (MapType0Select BoxType boolType b@@5 y@@1))
)))
(assert (forall ((a@@7 T@U) (x@@6 T@U) (o@@1 T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|ISet#UnionOne| a@@7 x@@6) o@@1))  (or (= o@@1 x@@6) (U_2_bool (MapType0Select BoxType boolType a@@7 o@@1))))
 :qid |DafnyPreludebpl.824:15|
 :skolemid |156|
 :pattern ( (MapType0Select BoxType boolType (|ISet#UnionOne| a@@7 x@@6) o@@1))
)))
(assert (forall ((a@@8 T@U) (b@@6 T@U) (c T@U) ) (!  (=> (or (not (= a@@8 c)) (not true)) (=> (and ($HeapSucc a@@8 b@@6) ($HeapSucc b@@6 c)) ($HeapSucc a@@8 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@8 b@@6) ($HeapSucc b@@6 c))
)))
(assert (forall ((a@@9 T@U) (b@@7 T@U) (y@@2 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType b@@7 y@@2)) (not (U_2_bool (MapType0Select BoxType boolType (|ISet#Difference| a@@9 b@@7) y@@2))))
 :qid |DafnyPreludebpl.860:15|
 :skolemid |169|
 :pattern ( (|ISet#Difference| a@@9 b@@7) (MapType0Select BoxType boolType b@@7 y@@2))
)))
(assert (forall ((m@@5 T@U) ) (! (= (= m@@5 |IMap#Empty|) (= (|IMap#Domain| m@@5) |ISet#Empty|))
 :qid |DafnyPreludebpl.1533:15|
 :skolemid |309|
 :pattern ( (|IMap#Domain| m@@5))
)))
(assert (forall ((m@@6 T@U) ) (! (= (= m@@6 |IMap#Empty|) (= (|IMap#Values| m@@6) |ISet#Empty|))
 :qid |DafnyPreludebpl.1536:15|
 :skolemid |310|
 :pattern ( (|IMap#Values| m@@6))
)))
(assert (forall ((m@@7 T@U) ) (! (= (= m@@7 |IMap#Empty|) (= (|IMap#Items| m@@7) |ISet#Empty|))
 :qid |DafnyPreludebpl.1539:15|
 :skolemid |311|
 :pattern ( (|IMap#Items| m@@7))
)))
(assert (forall ((m@@8 T@U) ) (!  (or (= m@@8 |IMap#Empty|) (exists ((k@@3 T@U) (v@@6 T@U) ) (! (U_2_bool (MapType0Select BoxType boolType (|IMap#Items| m@@8) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@3 v@@6))))
 :qid |DafnyPreludebpl.1531:32|
 :skolemid |307|
)))
 :qid |DafnyPreludebpl.1529:15|
 :skolemid |308|
 :pattern ( (|IMap#Items| m@@8))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TInt) (and (= ($Box intType ($Unbox intType bx@@3)) bx@@3) ($Is intType ($Unbox intType bx@@3) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@3 TInt))
)))
(assert (forall ((v@@7 T@U) (t@@4 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@7) t@@4) ($Is T@@3 v@@7 t@@4))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@7) t@@4))
)))
(assert (forall ((t@@5 T@U) (u@@1 T@U) ) (! (= (Inv0_TIMap (TIMap t@@5 u@@1)) t@@5)
 :qid |DafnyPreludebpl.62:15|
 :skolemid |12|
 :pattern ( (TIMap t@@5 u@@1))
)))
(assert (forall ((t@@6 T@U) (u@@2 T@U) ) (! (= (Inv1_TIMap (TIMap t@@6 u@@2)) u@@2)
 :qid |DafnyPreludebpl.63:15|
 :skolemid |13|
 :pattern ( (TIMap t@@6 u@@2))
)))
(assert (forall ((t@@7 T@U) (u@@3 T@U) ) (! (= (Tag (TIMap t@@7 u@@3)) TagIMap)
 :qid |DafnyPreludebpl.64:15|
 :skolemid |14|
 :pattern ( (TIMap t@@7 u@@3))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |448|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |453|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |454|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |463|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |465|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall ((a@@10 T@U) (x@@7 T@U) ) (! (U_2_bool (MapType0Select BoxType boolType (|ISet#UnionOne| a@@10 x@@7) x@@7))
 :qid |DafnyPreludebpl.826:15|
 :skolemid |157|
 :pattern ( (|ISet#UnionOne| a@@10 x@@7))
)))
(assert (forall ((t@@8 T@U) ) (! (= (Inv0_TISet (TISet t@@8)) t@@8)
 :qid |DafnyPreludebpl.45:15|
 :skolemid |3|
 :pattern ( (TISet t@@8))
)))
(assert (forall ((t@@9 T@U) ) (! (= (Tag (TISet t@@9)) TagISet)
 :qid |DafnyPreludebpl.46:15|
 :skolemid |4|
 :pattern ( (TISet t@@9))
)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@8))
)))
(assert (forall ((v@@8 T@U) (t0@@3 T@U) (t1@@1 T@U) ) (! (= ($Is IMapType v@@8 (TIMap t0@@3 t1@@1)) (forall ((bx@@4 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| v@@8) bx@@4)) (and ($IsBox (MapType0Select BoxType BoxType (|IMap#Elements| v@@8) bx@@4) t1@@1) ($IsBox bx@@4 t0@@3)))
 :qid |DafnyPreludebpl.276:19|
 :skolemid |58|
 :pattern ( (MapType0Select BoxType BoxType (|IMap#Elements| v@@8) bx@@4))
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| v@@8) bx@@4))
)))
 :qid |DafnyPreludebpl.273:15|
 :skolemid |59|
 :pattern ( ($Is IMapType v@@8 (TIMap t0@@3 t1@@1)))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |464|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |466|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (! (= (|ISet#Union| a@@11 (|ISet#Union| a@@11 b@@8)) (|ISet#Union| a@@11 b@@8))
 :qid |DafnyPreludebpl.849:15|
 :skolemid |165|
 :pattern ( (|ISet#Union| a@@11 (|ISet#Union| a@@11 b@@8)))
)))
(assert (forall ((|l#0@@1| T@U) (|l#1@@0| T@U) (|$w#0@@1| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#15| |l#0@@1| |l#1@@0|) |$w#0@@1|))  (and ($IsBox |$w#0@@1| |l#0@@1|) (U_2_bool (MapType0Select BoxType boolType |l#1@@0| |$w#0@@1|))))
 :qid |unknown.0:0|
 :skolemid |592|
 :pattern ( (MapType0Select BoxType boolType (|lambda#15| |l#0@@1| |l#1@@0|) |$w#0@@1|))
)))
(assert (forall ((|l#0@@2| T@U) (|l#1@@1| T@U) (|l#2| T@U) (|$w#0@@2| T@U) ) (! (= (MapType0Select BoxType BoxType (|lambda#16| |l#0@@2| |l#1@@1| |l#2|) |$w#0@@2|) (ite (= |$w#0@@2| |l#0@@2|) |l#1@@1| (MapType0Select BoxType BoxType |l#2| |$w#0@@2|)))
 :qid |IMapsdfy.73:43|
 :skolemid |593|
 :pattern ( (MapType0Select BoxType BoxType (|lambda#16| |l#0@@2| |l#1@@1| |l#2|) |$w#0@@2|))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.Update$K@@1 T@U) (_module._default.Update$V@@1 T@U) (|a#0@@1| T@U) (|k#0@@1| T@U) (|v#0@@1| T@U) ) (!  (=> (or (|_module.__default.Update#canCall| _module._default.Update$K@@1 _module._default.Update$V@@1 |a#0@@1| |k#0@@1| |v#0@@1|) (and (< 0 $FunctionContextHeight) (and (and ($Is IMapType |a#0@@1| (TIMap _module._default.Update$K@@1 _module._default.Update$V@@1)) ($IsBox |k#0@@1| _module._default.Update$K@@1)) ($IsBox |v#0@@1| _module._default.Update$V@@1)))) ($Is IMapType (_module.__default.Update _module._default.Update$K@@1 _module._default.Update$V@@1 |a#0@@1| |k#0@@1| |v#0@@1|) (TIMap _module._default.Update$K@@1 _module._default.Update$V@@1)))
 :qid |unknown.0:0|
 :skolemid |548|
 :pattern ( (_module.__default.Update _module._default.Update$K@@1 _module._default.Update$V@@1 |a#0@@1| |k#0@@1| |v#0@@1|))
))))
(assert (forall ((bx@@5 T@U) (s T@U) (t@@10 T@U) ) (!  (=> ($IsBox bx@@5 (TIMap s t@@10)) (and (= ($Box IMapType ($Unbox IMapType bx@@5)) bx@@5) ($Is IMapType ($Unbox IMapType bx@@5) (TIMap s t@@10))))
 :qid |DafnyPreludebpl.210:15|
 :skolemid |37|
 :pattern ( ($IsBox bx@@5 (TIMap s t@@10)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@6)) bx@@6) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@6) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |455|
 :pattern ( ($IsBox bx@@6 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((o@@2 T@U) ) (!  (not (U_2_bool (MapType0Select BoxType boolType |ISet#Empty| o@@2)))
 :qid |DafnyPreludebpl.816:15|
 :skolemid |154|
 :pattern ( (MapType0Select BoxType boolType |ISet#Empty| o@@2))
)))
(assert  (and (forall ((t0@@4 T@T) (t1@@2 T@T) (t2 T@T) (val@@1 T@U) (m@@9 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@4 t1@@2 t2 (MapType1Store t0@@4 t1@@2 t2 m@@9 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@10 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@10 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@10 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@11 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@11 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@11 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0@@3| T@U) (|l#1@@2| T@U) (|l#2@@0| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@3| |l#1@@2| |l#2@@0| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0@@3|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@2| $o) |l#2@@0|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |589|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@3| |l#1@@2| |l#2@@0| |l#3|) $o $f))
)))
(assert (forall ((a@@12 T@U) (b@@9 T@U) (t0@@5 T@U) (t1@@3 T@U) ) (!  (=> (forall ((bx@@7 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType a@@12 bx@@7)) (and ($IsBox bx@@7 t0@@5) ($IsBox (MapType0Select BoxType BoxType b@@9 bx@@7) t1@@3)))
 :qid |DafnyPreludebpl.1585:11|
 :skolemid |318|
)) ($Is IMapType (|IMap#Glue| a@@12 b@@9 (TIMap t0@@5 t1@@3)) (TIMap t0@@5 t1@@3)))
 :qid |DafnyPreludebpl.1582:15|
 :skolemid |319|
 :pattern ( (|IMap#Glue| a@@12 b@@9 (TIMap t0@@5 t1@@3)))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |452|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((x@@9 Int) (y@@3 Int) ) (! (= (Mul x@@9 y@@3) (* x@@9 y@@3))
 :qid |DafnyPreludebpl.1647:14|
 :skolemid |338|
 :pattern ( (Mul x@@9 y@@3))
)))
(assert (forall ((d@@2 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@2)) (DtRank d@@2))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@2)))
)))
(assert (forall ((bx@@8 T@U) (t@@11 T@U) ) (!  (=> ($IsBox bx@@8 (TISet t@@11)) (and (= ($Box (MapType0Type BoxType boolType) ($Unbox (MapType0Type BoxType boolType) bx@@8)) bx@@8) ($Is (MapType0Type BoxType boolType) ($Unbox (MapType0Type BoxType boolType) bx@@8) (TISet t@@11))))
 :qid |DafnyPreludebpl.198:15|
 :skolemid |33|
 :pattern ( ($IsBox bx@@8 (TISet t@@11)))
)))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (! (= (|ISet#Disjoint| a@@13 b@@10) (forall ((o@@3 T@U) ) (!  (or (not (U_2_bool (MapType0Select BoxType boolType a@@13 o@@3))) (not (U_2_bool (MapType0Select BoxType boolType b@@10 o@@3))))
 :qid |DafnyPreludebpl.875:35|
 :skolemid |175|
 :pattern ( (MapType0Select BoxType boolType a@@13 o@@3))
 :pattern ( (MapType0Select BoxType boolType b@@10 o@@3))
)))
 :qid |DafnyPreludebpl.874:15|
 :skolemid |176|
 :pattern ( (|ISet#Disjoint| a@@13 b@@10))
)))
(assert (forall ((d@@3 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_System.Tuple2.___hMake2_q d@@3) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@0)
 :qid |unknown.0:0|
 :skolemid |458|
 :pattern ( ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@0))
)))) ($IsAllocBox (_System.Tuple2._0 d@@3) |_System._tuple#2$T0@@6| $h@@0))
 :qid |unknown.0:0|
 :skolemid |459|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@3) |_System._tuple#2$T0@@6| $h@@0))
)))
(assert (forall ((d@@4 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_System.Tuple2.___hMake2_q d@@4) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@1)
 :qid |unknown.0:0|
 :skolemid |460|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@1))
)))) ($IsAllocBox (_System.Tuple2._1 d@@4) |_System._tuple#2$T1@@7| $h@@1))
 :qid |unknown.0:0|
 :skolemid |461|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@4) |_System._tuple#2$T1@@7| $h@@1))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.Update$K@@2 T@U) (_module._default.Update$V@@2 T@U) (|a#0@@2| T@U) (|k#0@@2| T@U) (|v#0@@2| T@U) ) (!  (=> (or (|_module.__default.Update#canCall| _module._default.Update$K@@2 _module._default.Update$V@@2 (Lit IMapType |a#0@@2|) (Lit BoxType |k#0@@2|) (Lit BoxType |v#0@@2|)) (and (< 0 $FunctionContextHeight) (and (and ($Is IMapType |a#0@@2| (TIMap _module._default.Update$K@@2 _module._default.Update$V@@2)) ($IsBox |k#0@@2| _module._default.Update$K@@2)) ($IsBox |v#0@@2| _module._default.Update$V@@2)))) (= (_module.__default.Update _module._default.Update$K@@2 _module._default.Update$V@@2 (Lit IMapType |a#0@@2|) (Lit BoxType |k#0@@2|) (Lit BoxType |v#0@@2|)) (|IMap#Glue| (|lambda#15| _module._default.Update$K@@2 (|ISet#Union| (|ISet#UnionOne| |ISet#Empty| (Lit BoxType |k#0@@2|)) (|IMap#Domain| (Lit IMapType |a#0@@2|)))) (|lambda#16| (Lit BoxType |k#0@@2|) |v#0@@2| (|IMap#Elements| (Lit IMapType |a#0@@2|))) (TIMap _module._default.Update$K@@2 _module._default.Update$V@@2))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |552|
 :pattern ( (_module.__default.Update _module._default.Update$K@@2 _module._default.Update$V@@2 (Lit IMapType |a#0@@2|) (Lit BoxType |k#0@@2|) (Lit BoxType |v#0@@2|)))
))))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |462|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((x@@10 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@10))) (Lit BoxType ($Box intType (int_2_U x@@10))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@10))))
)))
(assert (forall ((x@@11 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@11)) (Lit BoxType ($Box T@@5 x@@11)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@11)))
)))
(assert (forall ((a@@14 T@U) (b@@11 T@U) (o@@4 T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|ISet#Union| a@@14 b@@11) o@@4))  (or (U_2_bool (MapType0Select BoxType boolType a@@14 o@@4)) (U_2_bool (MapType0Select BoxType boolType b@@11 o@@4))))
 :qid |DafnyPreludebpl.832:15|
 :skolemid |159|
 :pattern ( (MapType0Select BoxType boolType (|ISet#Union| a@@14 b@@11) o@@4))
)))
(assert (forall ((h@@5 T@U) (v@@9 T@U) ) (! ($IsAlloc intType v@@9 TInt h@@5)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@9 TInt h@@5))
)))
(assert (forall ((v@@10 T@U) (t0@@6 T@U) (t1@@4 T@U) ) (!  (=> ($Is IMapType v@@10 (TIMap t0@@6 t1@@4)) (and (and ($Is (MapType0Type BoxType boolType) (|IMap#Domain| v@@10) (TISet t0@@6)) ($Is (MapType0Type BoxType boolType) (|IMap#Values| v@@10) (TISet t1@@4))) ($Is (MapType0Type BoxType boolType) (|IMap#Items| v@@10) (TISet (Tclass._System.Tuple2 t0@@6 t1@@4)))))
 :qid |DafnyPreludebpl.281:15|
 :skolemid |60|
 :pattern ( ($Is IMapType v@@10 (TIMap t0@@6 t1@@4)))
)))
(assert (forall ((v@@11 T@U) ) (! ($Is intType v@@11 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@11 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |k#0@0| () Int)
(declare-fun |a#0@1| () T@U)
(declare-fun |i#5@0| () Int)
(declare-fun |i#4@0| () Int)
(declare-fun |$rhs#1@0| () Int)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun |$decr$loop#00@1| () Int)
(declare-fun $Heap@@0 () T@U)
(declare-fun |##v#0_0@1| () Int)
(declare-fun |a#0@2| () T@U)
(declare-fun |i#4@1| () Int)
(declare-fun |$rhs#0@0| () Int)
(declare-fun |$decr_init$loop#00@0| () Int)
(declare-fun null () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |a#0@0| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |a#0@@3| () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.m8)
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
 (=> (= (ControlFlow 0 0) 42) (let ((anon15_correct true))
(let ((anon29_Else_correct  (=> (and (< |k#0@0| (LitInt 0)) (= (ControlFlow 0 18) 16)) anon15_correct)))
(let ((anon29_Then_correct  (=> (and (<= (LitInt 0) |k#0@0|) (= (ControlFlow 0 17) 16)) anon15_correct)))
(let ((anon28_Then_correct  (and (=> (= (ControlFlow 0 19) 17) anon29_Then_correct) (=> (= (ControlFlow 0 19) 18) anon29_Else_correct))))
(let ((anon28_Else_correct true))
(let ((anon12_correct  (=> (forall ((|i#6| T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| |a#0@1|) ($Box intType |i#6|))) (= (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|IMap#Elements| |a#0@1|) ($Box intType |i#6|)))) (Mul (U_2_int |i#6|) (U_2_int |i#6|))))
 :qid |IMapsdfy.84:24|
 :skolemid |558|
 :pattern ( ($Unbox intType (MapType0Select BoxType BoxType (|IMap#Elements| |a#0@1|) ($Box intType |i#6|))))
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| |a#0@1|) ($Box intType |i#6|)))
)) (and (=> (= (ControlFlow 0 20) 19) anon28_Then_correct) (=> (= (ControlFlow 0 20) 15) anon28_Else_correct)))))
(let ((anon27_Else_correct  (=> (and (not (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| |a#0@1|) ($Box intType (int_2_U |i#5@0|))))) (= (ControlFlow 0 23) 20)) anon12_correct)))
(let ((anon27_Then_correct  (=> (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| |a#0@1|) ($Box intType (int_2_U |i#5@0|)))) (and (=> (= (ControlFlow 0 21) (- 0 22)) (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| |a#0@1|) ($Box intType (int_2_U |i#5@0|))))) (=> (= (ControlFlow 0 21) 20) anon12_correct)))))
(let ((anon26_Then_correct  (and (=> (= (ControlFlow 0 24) 21) anon27_Then_correct) (=> (= (ControlFlow 0 24) 23) anon27_Else_correct))))
(let ((anon26_Else_correct true))
(let ((anon9_correct  (=> (and (<= (LitInt 0) |i#4@0|) (<= |i#4@0| |$rhs#1@0|)) (and (=> (= (ControlFlow 0 25) 24) anon26_Then_correct) (=> (= (ControlFlow 0 25) 14) anon26_Else_correct)))))
(let ((anon25_Else_correct  (=> (and (< |i#4@0| (LitInt 0)) (= (ControlFlow 0 27) 25)) anon9_correct)))
(let ((anon25_Then_correct  (=> (and (<= (LitInt 0) |i#4@0|) (= (ControlFlow 0 26) 25)) anon9_correct)))
(let ((anon24_Then_correct  (=> (not |$w$loop#0@0|) (and (=> (= (ControlFlow 0 28) 26) anon25_Then_correct) (=> (= (ControlFlow 0 28) 27) anon25_Else_correct)))))
(let ((anon30_Else_correct  (=> (and (< |i#4@0| |$rhs#1@0|) (= |$decr$loop#00@1| (- |$rhs#1@0| |i#4@0|))) (=> (and (and (and ($IsAlloc IMapType |a#0@1| (TIMap TInt TInt) $Heap@@0) ($IsAlloc intType (int_2_U |i#4@0|) TInt $Heap@@0)) (and (= |##v#0_0@1| (Mul |i#4@0| |i#4@0|)) ($IsAlloc intType (int_2_U |##v#0_0@1|) TInt $Heap@@0))) (and (and (|_module.__default.Update#canCall| TInt TInt |a#0@1| ($Box intType (int_2_U |i#4@0|)) ($Box intType (int_2_U (Mul |i#4@0| |i#4@0|)))) (|_module.__default.Update#canCall| TInt TInt |a#0@1| ($Box intType (int_2_U |i#4@0|)) ($Box intType (int_2_U (Mul |i#4@0| |i#4@0|))))) (and (= |a#0@2| (_module.__default.Update TInt TInt |a#0@1| ($Box intType (int_2_U |i#4@0|)) ($Box intType (int_2_U (Mul |i#4@0| |i#4@0|))))) (= |i#4@1| (+ |i#4@0| 1))))) (and (=> (= (ControlFlow 0 7) (- 0 12)) (or (<= 0 |$decr$loop#00@1|) (= (- |$rhs#1@0| |i#4@1|) |$decr$loop#00@1|))) (=> (or (<= 0 |$decr$loop#00@1|) (= (- |$rhs#1@0| |i#4@1|) |$decr$loop#00@1|)) (and (=> (= (ControlFlow 0 7) (- 0 11)) (< (- |$rhs#1@0| |i#4@1|) |$decr$loop#00@1|)) (=> (< (- |$rhs#1@0| |i#4@1|) |$decr$loop#00@1|) (and (=> (= (ControlFlow 0 7) (- 0 10)) (=> |$w$loop#0@0| (<= (LitInt 0) |i#4@1|))) (=> (=> |$w$loop#0@0| (<= (LitInt 0) |i#4@1|)) (and (=> (= (ControlFlow 0 7) (- 0 9)) (=> |$w$loop#0@0| (<= |i#4@1| |$rhs#1@0|))) (=> (=> |$w$loop#0@0| (<= |i#4@1| |$rhs#1@0|)) (and (=> (= (ControlFlow 0 7) (- 0 8)) (=> |$w$loop#0@0| (forall ((|i#6@@0| Int) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| |a#0@2|) ($Box intType (int_2_U |i#6@@0|)))) (= (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|IMap#Elements| |a#0@2|) ($Box intType (int_2_U |i#6@@0|))))) (Mul |i#6@@0| |i#6@@0|)))
 :qid |IMapsdfy.84:24|
 :skolemid |560|
 :pattern ( ($Unbox intType (MapType0Select BoxType BoxType (|IMap#Elements| |a#0@2|) ($Box intType (int_2_U |i#6@@0|)))))
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| |a#0@2|) ($Box intType (int_2_U |i#6@@0|))))
)))) (=> (=> |$w$loop#0@0| (forall ((|i#6@@1| T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| |a#0@2|) ($Box intType |i#6@@1|))) (= (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|IMap#Elements| |a#0@2|) ($Box intType |i#6@@1|)))) (Mul (U_2_int |i#6@@1|) (U_2_int |i#6@@1|))))
 :qid |IMapsdfy.84:24|
 :skolemid |560|
 :pattern ( ($Unbox intType (MapType0Select BoxType BoxType (|IMap#Elements| |a#0@2|) ($Box intType |i#6@@1|))))
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| |a#0@2|) ($Box intType |i#6@@1|)))
))) (=> (= (ControlFlow 0 7) (- 0 6)) (=> |$w$loop#0@0| (forall ((|k#1| Int) ) (! (=  (and (<= (LitInt 0) |k#1|) (< |k#1| |i#4@1|)) (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| |a#0@2|) ($Box intType (int_2_U |k#1|)))))
 :qid |IMapsdfy.85:24|
 :skolemid |563|
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| |a#0@2|) ($Box intType (int_2_U |k#1|))))
))))))))))))))))))
(let ((anon30_Then_correct  (=> (and (<= |$rhs#1@0| |i#4@0|) (= (ControlFlow 0 5) (- 0 4))) (forall ((|i#1| Int) ) (!  (=> (and (<= (LitInt 0) |i#1|) (< |i#1| 100)) (and (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| |a#0@1|) ($Box intType (int_2_U |i#1|)))) (= (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|IMap#Elements| |a#0@1|) ($Box intType (int_2_U |i#1|))))) (Mul |i#1| |i#1|))))
 :qid |IMapsdfy.45:20|
 :skolemid |541|
 :pattern ( ($Unbox intType (MapType0Select BoxType BoxType (|IMap#Elements| |a#0@1|) ($Box intType (int_2_U |i#1|)))))
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| |a#0@1|) ($Box intType (int_2_U |i#1|))))
)))))
(let ((anon24_Else_correct  (=> |$w$loop#0@0| (and (=> (= (ControlFlow 0 13) 5) anon30_Then_correct) (=> (= (ControlFlow 0 13) 7) anon30_Else_correct)))))
(let ((anon23_LoopBody_correct  (and (=> (= (ControlFlow 0 29) 28) anon24_Then_correct) (=> (= (ControlFlow 0 29) 13) anon24_Else_correct))))
(let ((anon23_LoopDone_correct true))
(let ((anon23_LoopHead_correct  (=> (and ($Is IMapType |a#0@1| (TIMap TInt TInt)) ($IsAlloc IMapType |a#0@1| (TIMap TInt TInt) $Heap@@0)) (=> (and (and (and (and (and (and (not false) (<= 0 |i#4@0|)) (= |$rhs#1@0| 100)) (= |$rhs#0@0| 0)) (= |$rhs#1@0| 100)) (= |$decr_init$loop#00@0| 100)) (and (and (and (=> |$w$loop#0@0| (<= (LitInt 0) |i#4@0|)) (=> |$w$loop#0@0| (<= |i#4@0| |$rhs#1@0|))) (and (=> |$w$loop#0@0| (forall ((|i#6@@2| T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| |a#0@1|) ($Box intType |i#6@@2|))) (= (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|IMap#Elements| |a#0@1|) ($Box intType |i#6@@2|)))) (Mul (U_2_int |i#6@@2|) (U_2_int |i#6@@2|))))
 :qid |IMapsdfy.84:24|
 :skolemid |560|
 :pattern ( ($Unbox intType (MapType0Select BoxType BoxType (|IMap#Elements| |a#0@1|) ($Box intType |i#6@@2|))))
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| |a#0@1|) ($Box intType |i#6@@2|)))
))) (=> |$w$loop#0@0| (forall ((|k#1@@0| T@U) ) (! (=  (and (<= (LitInt 0) (U_2_int |k#1@@0|)) (< (U_2_int |k#1@@0|) |i#4@0|)) (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| |a#0@1|) ($Box intType |k#1@@0|))))
 :qid |IMapsdfy.85:24|
 :skolemid |563|
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| |a#0@1|) ($Box intType |k#1@@0|)))
))))) (and (and (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@0)))
 :qid |IMapsdfy.82:4|
 :skolemid |564|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@0))
)) ($HeapSucc $Heap@@0 $Heap@@0)) (and (forall (($o@@1 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@1) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@1) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@1) $f@@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@1 $f@@0))))
 :qid |IMapsdfy.82:4|
 :skolemid |565|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@1) $f@@0))
)) (<= (- |$rhs#1@0| |i#4@0|) |$decr_init$loop#00@0|))))) (and (=> (= (ControlFlow 0 30) 3) anon23_LoopDone_correct) (=> (= (ControlFlow 0 30) 29) anon23_LoopBody_correct))))))
(let ((anon22_Then_correct  (and (=> (= (ControlFlow 0 31) (- 0 36)) (forall ((|i#3| Int) ) (!  (not (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| |a#0@0|) ($Box intType (int_2_U |i#3|)))))
 :qid |IMapsdfy.80:18|
 :skolemid |557|
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| |a#0@0|) ($Box intType (int_2_U |i#3|))))
))) (=> (forall ((|i#3@@0| T@U) ) (!  (not (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| |a#0@0|) ($Box intType |i#3@@0|))))
 :qid |IMapsdfy.80:18|
 :skolemid |557|
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| |a#0@0|) ($Box intType |i#3@@0|)))
)) (=> (= |$rhs#0@0| (LitInt 0)) (=> (and (= |$rhs#1@0| (LitInt 100)) (= |$decr_init$loop#00@0| (- |$rhs#1@0| |$rhs#0@0|))) (and (=> (= (ControlFlow 0 31) (- 0 35)) (=> |$w$loop#0@0| (<= (LitInt 0) |$rhs#0@0|))) (=> (=> |$w$loop#0@0| (<= (LitInt 0) |$rhs#0@0|)) (and (=> (= (ControlFlow 0 31) (- 0 34)) (=> |$w$loop#0@0| (<= |$rhs#0@0| |$rhs#1@0|))) (=> (=> |$w$loop#0@0| (<= |$rhs#0@0| |$rhs#1@0|)) (and (=> (= (ControlFlow 0 31) (- 0 33)) (=> |$w$loop#0@0| (forall ((|i#6@@3| Int) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| |a#0@0|) ($Box intType (int_2_U |i#6@@3|)))) (= (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|IMap#Elements| |a#0@0|) ($Box intType (int_2_U |i#6@@3|))))) (Mul |i#6@@3| |i#6@@3|)))
 :qid |IMapsdfy.84:24|
 :skolemid |560|
 :pattern ( ($Unbox intType (MapType0Select BoxType BoxType (|IMap#Elements| |a#0@0|) ($Box intType (int_2_U |i#6@@3|)))))
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| |a#0@0|) ($Box intType (int_2_U |i#6@@3|))))
)))) (=> (=> |$w$loop#0@0| (forall ((|i#6@@4| T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| |a#0@0|) ($Box intType |i#6@@4|))) (= (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|IMap#Elements| |a#0@0|) ($Box intType |i#6@@4|)))) (Mul (U_2_int |i#6@@4|) (U_2_int |i#6@@4|))))
 :qid |IMapsdfy.84:24|
 :skolemid |560|
 :pattern ( ($Unbox intType (MapType0Select BoxType BoxType (|IMap#Elements| |a#0@0|) ($Box intType |i#6@@4|))))
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| |a#0@0|) ($Box intType |i#6@@4|)))
))) (and (=> (= (ControlFlow 0 31) (- 0 32)) (=> |$w$loop#0@0| (forall ((|k#1@@1| Int) ) (! (=  (and (<= (LitInt 0) |k#1@@1|) (< |k#1@@1| |$rhs#0@0|)) (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| |a#0@0|) ($Box intType (int_2_U |k#1@@1|)))))
 :qid |IMapsdfy.85:24|
 :skolemid |563|
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| |a#0@0|) ($Box intType (int_2_U |k#1@@1|))))
)))) (=> (=> |$w$loop#0@0| (forall ((|k#1@@2| T@U) ) (! (=  (and (<= (LitInt 0) (U_2_int |k#1@@2|)) (< (U_2_int |k#1@@2|) |$rhs#0@0|)) (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| |a#0@0|) ($Box intType |k#1@@2|))))
 :qid |IMapsdfy.85:24|
 :skolemid |563|
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| |a#0@0|) ($Box intType |k#1@@2|)))
))) (=> (= (ControlFlow 0 31) 30) anon23_LoopHead_correct)))))))))))))))
(let ((anon22_Else_correct true))
(let ((anon3_correct  (=> (= |a#0@0| (|IMap#Glue| (|lambda#23| TInt (U_2_bool (Lit boolType (bool_2_U false)))) (|lambda#3| ($Box intType (int_2_U (LitInt 0)))) (TIMap TInt TInt))) (and (=> (= (ControlFlow 0 37) 31) anon22_Then_correct) (=> (= (ControlFlow 0 37) 2) anon22_Else_correct)))))
(let ((anon21_Else_correct  (=> (and (not (U_2_bool (Lit boolType (bool_2_U false)))) (= (ControlFlow 0 39) 37)) anon3_correct)))
(let ((anon21_Then_correct  (=> (and (U_2_bool (Lit boolType (bool_2_U false))) (= (ControlFlow 0 38) 37)) anon3_correct)))
(let ((anon20_Then_correct  (and (=> (= (ControlFlow 0 40) 38) anon21_Then_correct) (=> (= (ControlFlow 0 40) 39) anon21_Else_correct))))
(let ((anon20_Else_correct true))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@0 alloc false)) (and (=> (= (ControlFlow 0 41) 40) anon20_Then_correct) (=> (= (ControlFlow 0 41) 1) anon20_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (=> (and (and (and ($Is IMapType |a#0@@3| (TIMap TInt TInt)) ($IsAlloc IMapType |a#0@@3| (TIMap TInt TInt) $Heap@@0)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 42) 41))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(pop 1)
; Timed out
