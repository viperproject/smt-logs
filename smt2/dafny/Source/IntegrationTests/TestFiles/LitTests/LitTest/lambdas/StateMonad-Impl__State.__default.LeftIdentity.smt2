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
(declare-fun TagSet () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun Tagclass._System.___hPartialFunc1 () T@U)
(declare-fun Tagclass._System.___hTotalFunc1 () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun Tagclass.State.M () T@U)
(declare-fun |##State.M.State| () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
(declare-fun |tytagFamily$_#PartialFunc1| () T@U)
(declare-fun |tytagFamily$_#TotalFunc1| () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$M () T@U)
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
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun Reads1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun Handle1 (T@U T@U T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun SetType () T@T)
(declare-fun MapType0Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
(declare-fun |lambda#1| (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun State.M.State_q (T@U) Bool)
(declare-fun Tclass.State.M (T@U) T@U)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun |lambda#0| (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun null () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |State.M#Equal| (T@U T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun State.__default.Return (T@U T@U) T@U)
(declare-fun |State.__default.Return#canCall| (T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun AtLayer (T@T T@U T@U) T@U)
(declare-fun LayerTypeType () T@T)
(declare-fun |#State.M.State| (T@U) T@U)
(declare-fun State.M.runState (T@U) T@U)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun |lambda#4| (T@U) T@U)
(declare-fun |lambda#3| (T@U) T@U)
(declare-fun SetRef_to_SetBox (T@U) T@U)
(declare-fun |lambda#2| (Bool) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun $LZ () T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |lambda#31| (T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1 (T@U T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1 (T@U T@U) T@U)
(declare-fun |lambda#111| (T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun |lambda#10| (T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun State.__default.Bind (T@U T@U T@U T@U) T@U)
(declare-fun |State.__default.Bind#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tclass.State.M_0 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun |lambda#25| (T@U T@U T@U Bool) T@U)
(declare-fun |lambda#43| (T@U T@U T@U T@U T@U T@U T@U) T@U)
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
(assert (distinct TInt TagInt TagSet alloc Tagclass._System.object? Tagclass._System.object Tagclass._System.___hFunc1 Tagclass._System.___hPartialFunc1 Tagclass._System.___hTotalFunc1 |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass.State.M |##State.M.State| tytagFamily$object |tytagFamily$_#Func1| |tytagFamily$_#PartialFunc1| |tytagFamily$_#TotalFunc1| |tytagFamily$_tuple#2| tytagFamily$M)
)
(assert (= (Tag TInt) TagInt))
(assert  (and (and (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 3)
 :qid |ctor:MapType1Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@4 arg1@@1))
))) (= (Ctor refType) 4)) (= (Ctor FieldType) 5)) (= (Ctor BoxType) 6)) (= (Ctor SetType) 7)))
(assert (forall ((t0@@1 T@U) (t1@@1 T@U) (heap T@U) (h T@U) (r T@U) (rd T@U) (bx0 T@U) (bx T@U) ) (! (= (|Set#IsMember| (Reads1 t0@@1 t1@@1 heap (Handle1 h r rd) bx0) bx) (|Set#IsMember| (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType rd heap bx0) bx))
 :qid |unknown.0:0|
 :skolemid |910|
 :pattern ( (|Set#IsMember| (Reads1 t0@@1 t1@@1 heap (Handle1 h r rd) bx0) bx))
)))
(assert (forall ((|l#0| T@U) (|$l#0#heap#0| T@U) (|$l#0#s#0| T@U) ) (! (= (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#1| |l#0|) |$l#0#heap#0| |$l#0#s#0|)) ($IsBox |$l#0#s#0| |l#0|))
 :qid |DafnyPreludebpl.27:1|
 :skolemid |1227|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#1| |l#0|) |$l#0#heap#0| |$l#0#s#0|))
)))
(assert (= (Ctor DatatypeTypeType) 8))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |1006|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |663|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (forall ((State.M$A T@U) (d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 (Tclass.State.M State.M$A)) (State.M.State_q d@@0))
 :qid |unknown.0:0|
 :skolemid |1217|
 :pattern ( (State.M.State_q d@@0) ($Is DatatypeTypeType d@@0 (Tclass.State.M State.M$A)))
)))
(assert (= (Ctor HandleTypeType) 9))
(assert (forall ((f T@U) (t0@@2 T@U) (t1@@2 T@U) (u0@@2 T@U) (u1@@2 T@U) ) (!  (=> (and (and ($Is HandleTypeType f (Tclass._System.___hFunc1 t0@@2 t1@@2)) (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 u0@@2) ($IsBox bx@@0 t0@@2))
 :qid |unknown.0:0|
 :skolemid |927|
 :pattern ( ($IsBox bx@@0 u0@@2))
 :pattern ( ($IsBox bx@@0 t0@@2))
))) (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 t1@@2) ($IsBox bx@@1 u1@@2))
 :qid |unknown.0:0|
 :skolemid |928|
 :pattern ( ($IsBox bx@@1 t1@@2))
 :pattern ( ($IsBox bx@@1 u1@@2))
))) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0@@2 u1@@2)))
 :qid |unknown.0:0|
 :skolemid |929|
 :pattern ( ($Is HandleTypeType f (Tclass._System.___hFunc1 t0@@2 t1@@2)) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0@@2 u1@@2)))
)))
(assert (forall ((|l#0@@0| T@U) (|$l#0#heap#0@@0| T@U) (|$l#0#s#0@@0| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#0| |l#0@@0|) |$l#0#heap#0@@0| |$l#0#s#0@@0|) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| |l#0@@0| |$l#0#s#0@@0|)))
 :qid |StateMonaddfy.7:22|
 :skolemid |1226|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#0| |l#0@@0|) |$l#0#heap#0@@0| |$l#0#s#0@@0|))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h) ($IsAlloc refType |c#0| Tclass._System.object? $h))
 :qid |unknown.0:0|
 :skolemid |889|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |994|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert (forall (($o T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o Tclass._System.object? $h@@0)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@0 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |886|
 :pattern ( ($IsAlloc refType $o Tclass._System.object? $h@@0))
)))
(assert (forall ((a T@U) (b T@U) ) (! (= (|State.M#Equal| a b) (= a b))
 :qid |unknown.0:0|
 :skolemid |1219|
 :pattern ( (|State.M#Equal| a b))
)))
(assert (forall ((h@@0 T@U) (k T@U) ) (!  (=> ($HeapSucc h@@0 k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@0 o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |656|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) k o@@0) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |657|
 :pattern ( ($HeapSucc h@@0 k))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |553|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((t0@@3 T@U) (t1@@3 T@U) (heap@@0 T@U) (f@@0 T@U) (bx0@@0 T@U) ) (!  (=> (and ($IsGoodHeap heap@@0) (and ($IsBox bx0@@0 t0@@3) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@3 t1@@3)))) (= (|Set#Equal| (Reads1 t0@@3 t1@@3 $OneHeap f@@0 bx0@@0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@3 t1@@3 heap@@0 f@@0 bx0@@0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |923|
 :pattern ( (Reads1 t0@@3 t1@@3 $OneHeap f@@0 bx0@@0) ($IsGoodHeap heap@@0))
 :pattern ( (Reads1 t0@@3 t1@@3 heap@@0 f@@0 bx0@@0))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@1)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@1) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@1))))
 :qid |unknown.0:0|
 :skolemid |995|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@1))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((State._default.Return$A T@U) (|x#0| T@U) ) (!  (=> (or (|State.__default.Return#canCall| State._default.Return$A |x#0|) (and (< 1 $FunctionContextHeight) ($IsBox |x#0| State._default.Return$A))) ($Is DatatypeTypeType (State.__default.Return State._default.Return$A |x#0|) (Tclass.State.M State._default.Return$A)))
 :qid |unknown.0:0|
 :skolemid |1069|
 :pattern ( (State.__default.Return State._default.Return$A |x#0|))
))))
(assert (forall ((d@@1 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@1) (= (DatatypeCtorId d@@1) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |987|
 :pattern ( (_System.Tuple2.___hMake2_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (State.M.State_q d@@2) (= (DatatypeCtorId d@@2) |##State.M.State|))
 :qid |unknown.0:0|
 :skolemid |1208|
 :pattern ( (State.M.State_q d@@2))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |564|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@3) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@3 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |988|
)))
 :qid |unknown.0:0|
 :skolemid |989|
 :pattern ( (_System.Tuple2.___hMake2_q d@@3))
)))
(assert (forall ((t0@@4 T@U) (t1@@4 T@U) (h0 T@U) (h1 T@U) (f@@1 T@U) (bx0@@1 T@U) ) (!  (=> (and (and (and ($HeapSucc h0 h1) (and ($IsGoodHeap h0) ($IsGoodHeap h1))) (and ($IsBox bx0@@1 t0@@4) ($Is HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@4 t1@@4)))) (forall ((o@@1 T@U) (fld T@U) ) (!  (=> (and (or (not (= o@@1 null)) (not true)) (|Set#IsMember| (Reads1 t0@@4 t1@@4 h0 f@@1 bx0@@1) ($Box refType o@@1))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0 o@@1) fld) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1 o@@1) fld)))
 :qid |unknown.0:0|
 :skolemid |915|
))) (= (Requires1 t0@@4 t1@@4 h0 f@@1 bx0@@1) (Requires1 t0@@4 t1@@4 h1 f@@1 bx0@@1)))
 :qid |unknown.0:0|
 :skolemid |916|
 :pattern ( ($HeapSucc h0 h1) (Requires1 t0@@4 t1@@4 h1 f@@1 bx0@@1))
)))
(assert (forall ((t0@@5 T@U) (t1@@5 T@U) (h0@@0 T@U) (h1@@0 T@U) (f@@2 T@U) (bx0@@2 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@0 h1@@0) (and ($IsGoodHeap h0@@0) ($IsGoodHeap h1@@0))) (and ($IsBox bx0@@2 t0@@5) ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@5 t1@@5)))) (forall ((o@@2 T@U) (fld@@0 T@U) ) (!  (=> (and (or (not (= o@@2 null)) (not true)) (|Set#IsMember| (Reads1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2) ($Box refType o@@2))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@0 o@@2) fld@@0) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@0 o@@2) fld@@0)))
 :qid |unknown.0:0|
 :skolemid |917|
))) (= (Requires1 t0@@5 t1@@5 h0@@0 f@@2 bx0@@2) (Requires1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2)))
 :qid |unknown.0:0|
 :skolemid |918|
 :pattern ( ($HeapSucc h0@@0 h1@@0) (Requires1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2))
)))
(assert (forall ((v T@U) (t0@@6 T@U) ) (! (= ($Is SetType v (TSet t0@@6)) (forall ((bx@@2 T@U) ) (!  (=> (|Set#IsMember| v bx@@2) ($IsBox bx@@2 t0@@6))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |584|
 :pattern ( (|Set#IsMember| v bx@@2))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |585|
 :pattern ( ($Is SetType v (TSet t0@@6)))
)))
(assert (= (Ctor LayerTypeType) 10))
(assert (forall ((f@@3 T@U) (ly T@U) (A T@T) ) (! (= (AtLayer A f@@3 ly) (MapType1Select LayerTypeType A f@@3 ly))
 :qid |DafnyPreludebpl.501:18|
 :skolemid |639|
 :pattern ( (AtLayer A f@@3 ly))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (State.M.State_q d@@4) (exists ((|a#1#0#0@@0| T@U) ) (! (= d@@4 (|#State.M.State| |a#1#0#0@@0|))
 :qid |StateMonaddfy.26:25|
 :skolemid |1209|
)))
 :qid |unknown.0:0|
 :skolemid |1210|
 :pattern ( (State.M.State_q d@@4))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|State.M#Equal| a@@0 b@@0) (= (State.M.runState a@@0) (State.M.runState b@@0)))
 :qid |unknown.0:0|
 :skolemid |1218|
 :pattern ( (|State.M#Equal| a@@0 b@@0))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((v@@0 T@U) (t T@U) (h@@1 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@1) ($IsAlloc T@@1 v@@0 t h@@1))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |577|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@0 T@U) (bx@@3 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@2 k@@0) (=> ($IsAllocBox bx@@3 t@@0 h@@2) ($IsAllocBox bx@@3 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |649|
 :pattern ( ($HeapSucc h@@2 k@@0) ($IsAllocBox bx@@3 t@@0 h@@2))
)))
(assert (forall ((h@@3 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@3 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@3) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |648|
 :pattern ( ($HeapSucc h@@3 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@3))
)))
(assert (forall ((t0@@7 T@U) (t1@@6 T@U) (h0@@1 T@U) (h1@@1 T@U) (f@@4 T@U) (bx0@@3 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@1 h1@@1) (and ($IsGoodHeap h0@@1) ($IsGoodHeap h1@@1))) (and ($IsBox bx0@@3 t0@@7) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc1 t0@@7 t1@@6)))) (forall ((o@@3 T@U) (fld@@1 T@U) ) (!  (=> (and (or (not (= o@@3 null)) (not true)) (|Set#IsMember| (Reads1 t0@@7 t1@@6 h0@@1 f@@4 bx0@@3) ($Box refType o@@3))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@1 o@@3) fld@@1) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@1 o@@3) fld@@1)))
 :qid |unknown.0:0|
 :skolemid |911|
))) (= (Reads1 t0@@7 t1@@6 h0@@1 f@@4 bx0@@3) (Reads1 t0@@7 t1@@6 h1@@1 f@@4 bx0@@3)))
 :qid |unknown.0:0|
 :skolemid |912|
 :pattern ( ($HeapSucc h0@@1 h1@@1) (Reads1 t0@@7 t1@@6 h1@@1 f@@4 bx0@@3))
)))
(assert (forall ((t0@@8 T@U) (t1@@7 T@U) (h0@@2 T@U) (h1@@2 T@U) (f@@5 T@U) (bx0@@4 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@2 h1@@2) (and ($IsGoodHeap h0@@2) ($IsGoodHeap h1@@2))) (and ($IsBox bx0@@4 t0@@8) ($Is HandleTypeType f@@5 (Tclass._System.___hFunc1 t0@@8 t1@@7)))) (forall ((o@@4 T@U) (fld@@2 T@U) ) (!  (=> (and (or (not (= o@@4 null)) (not true)) (|Set#IsMember| (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4) ($Box refType o@@4))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@2 o@@4) fld@@2) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@2 o@@4) fld@@2)))
 :qid |unknown.0:0|
 :skolemid |913|
))) (= (Reads1 t0@@8 t1@@7 h0@@2 f@@5 bx0@@4) (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4)))
 :qid |unknown.0:0|
 :skolemid |914|
 :pattern ( ($HeapSucc h0@@2 h1@@2) (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4))
)))
(assert (forall ((t0@@9 T@U) (t1@@8 T@U) (h0@@3 T@U) (h1@@3 T@U) (f@@6 T@U) (bx0@@5 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@3 h1@@3) (and ($IsGoodHeap h0@@3) ($IsGoodHeap h1@@3))) (and ($IsBox bx0@@5 t0@@9) ($Is HandleTypeType f@@6 (Tclass._System.___hFunc1 t0@@9 t1@@8)))) (forall ((o@@5 T@U) (fld@@3 T@U) ) (!  (=> (and (or (not (= o@@5 null)) (not true)) (|Set#IsMember| (Reads1 t0@@9 t1@@8 h0@@3 f@@6 bx0@@5) ($Box refType o@@5))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@3 o@@5) fld@@3) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@3 o@@5) fld@@3)))
 :qid |unknown.0:0|
 :skolemid |919|
))) (= (Apply1 t0@@9 t1@@8 h0@@3 f@@6 bx0@@5) (Apply1 t0@@9 t1@@8 h1@@3 f@@6 bx0@@5)))
 :qid |unknown.0:0|
 :skolemid |920|
 :pattern ( ($HeapSucc h0@@3 h1@@3) (Apply1 t0@@9 t1@@8 h1@@3 f@@6 bx0@@5))
)))
(assert (forall ((t0@@10 T@U) (t1@@9 T@U) (h0@@4 T@U) (h1@@4 T@U) (f@@7 T@U) (bx0@@6 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@4 h1@@4) (and ($IsGoodHeap h0@@4) ($IsGoodHeap h1@@4))) (and ($IsBox bx0@@6 t0@@10) ($Is HandleTypeType f@@7 (Tclass._System.___hFunc1 t0@@10 t1@@9)))) (forall ((o@@6 T@U) (fld@@4 T@U) ) (!  (=> (and (or (not (= o@@6 null)) (not true)) (|Set#IsMember| (Reads1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6) ($Box refType o@@6))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@4 o@@6) fld@@4) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@4 o@@6) fld@@4)))
 :qid |unknown.0:0|
 :skolemid |921|
))) (= (Apply1 t0@@10 t1@@9 h0@@4 f@@7 bx0@@6) (Apply1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6)))
 :qid |unknown.0:0|
 :skolemid |922|
 :pattern ( ($HeapSucc h0@@4 h1@@4) (Apply1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((State._default.Return$A@@0 T@U) (|x#0@@0| T@U) ) (!  (=> (or (|State.__default.Return#canCall| State._default.Return$A@@0 |x#0@@0|) (and (< 1 $FunctionContextHeight) ($IsBox |x#0@@0| State._default.Return$A@@0))) (= (State.__default.Return State._default.Return$A@@0 |x#0@@0|) (Lit DatatypeTypeType (|#State.M.State| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#4| (Handle1 (|lambda#0| |x#0@@0|) (|lambda#1| TInt) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false))))) ($LS $LZ)))))))
 :qid |unknown.0:0|
 :skolemid |1072|
 :pattern ( (State.__default.Return State._default.Return$A@@0 |x#0@@0|))
))))
(assert (forall ((State.M$A@@0 T@U) ) (!  (and (= (Tag (Tclass.State.M State.M$A@@0)) Tagclass.State.M) (= (TagFamily (Tclass.State.M State.M$A@@0)) tytagFamily$M))
 :qid |unknown.0:0|
 :skolemid |1066|
 :pattern ( (Tclass.State.M State.M$A@@0))
)))
(assert (forall ((|l#0@@1| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) (|l#5| T@U) (|$l#0_1_3#heap#0| T@U) (|$l#0_1_3#s#0| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#31| |l#0@@1| |l#1| |l#2| |l#3| |l#4| |l#5|) |$l#0_1_3#heap#0| |$l#0_1_3#s#0|) ($Box DatatypeTypeType (let ((|g#0_1_3| (State.M.runState ($Unbox DatatypeTypeType (Apply1 |l#0@@1| |l#1| |$l#0_1_3#heap#0| |l#2| |l#3|)))))
($Unbox DatatypeTypeType (Apply1 |l#4| |l#5| |$l#0_1_3#heap#0| |g#0_1_3| ($Box intType ($Unbox intType |$l#0_1_3#s#0|)))))))
 :qid |unknown.0:0|
 :skolemid |1233|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#31| |l#0@@1| |l#1| |l#2| |l#3| |l#4| |l#5|) |$l#0_1_3#heap#0| |$l#0_1_3#s#0|))
)))
(assert (forall ((s T@U) (bx@@4 T@U) ) (! (= (|Set#IsMember| (SetRef_to_SetBox s) bx@@4) (U_2_bool (MapType1Select refType boolType s ($Unbox refType bx@@4))))
 :qid |DafnyPreludebpl.370:15|
 :skolemid |620|
 :pattern ( (|Set#IsMember| (SetRef_to_SetBox s) bx@@4))
)))
(assert (forall ((|#$T0| T@U) (|#$R| T@U) (|f#0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h@@2) ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hFunc1 |#$T0| |#$R|) $h@@2))
 :qid |unknown.0:0|
 :skolemid |941|
 :pattern ( ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h@@2))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$R@@0| T@U) (|f#0@@0| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc1 |#$T0@@0| |#$R@@0|) $h@@3) ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hPartialFunc1 |#$T0@@0| |#$R@@0|) $h@@3))
 :qid |unknown.0:0|
 :skolemid |948|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc1 |#$T0@@0| |#$R@@0|) $h@@3))
)))
(assert (forall ((t0@@11 T@U) (t1@@10 T@U) (heap@@1 T@U) (h@@4 T@U) (r@@0 T@U) (rd@@0 T@U) (bx0@@7 T@U) ) (! (= (Apply1 t0@@11 t1@@10 heap@@1 (Handle1 h@@4 r@@0 rd@@0) bx0@@7) (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType h@@4 heap@@1 bx0@@7))
 :qid |unknown.0:0|
 :skolemid |908|
 :pattern ( (Apply1 t0@@11 t1@@10 heap@@1 (Handle1 h@@4 r@@0 rd@@0) bx0@@7))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |884|
 :pattern ( ($IsBox bx@@5 Tclass._System.object?))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |887|
 :pattern ( ($IsBox bx@@6 Tclass._System.object))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._System.object)  (and ($Is refType |c#0@@0| Tclass._System.object?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |888|
 :pattern ( ($Is refType |c#0@@0| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@0| Tclass._System.object?))
)))
(assert (forall ((f@@8 T@U) (t0@@12 T@U) (t1@@11 T@U) (h@@5 T@U) ) (!  (=> (and ($IsGoodHeap h@@5) ($IsAlloc HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@12 t1@@11) h@@5)) (forall ((bx0@@8 T@U) ) (!  (=> (and ($IsAllocBox bx0@@8 t0@@12 h@@5) (Requires1 t0@@12 t1@@11 h@@5 f@@8 bx0@@8)) ($IsAllocBox (Apply1 t0@@12 t1@@11 h@@5 f@@8 bx0@@8) t1@@11 h@@5))
 :qid |unknown.0:0|
 :skolemid |933|
 :pattern ( (Apply1 t0@@12 t1@@11 h@@5 f@@8 bx0@@8))
)))
 :qid |unknown.0:0|
 :skolemid |934|
 :pattern ( ($IsAlloc HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@12 t1@@11) h@@5))
)))
(assert (forall ((|l#0@@2| T@U) (|l#1@@0| T@U) (|l#2@@0| T@U) (|l#3@@0| T@U) (|l#4@@0| T@U) (|l#5@@0| T@U) (|l#6| T@U) (|l#7| T@U) (|l#8| T@U) (|l#9| T@U) (|l#10| T@U) (|l#11| T@U) (|l#12| T@U) (|$l#0_3_21#ly#0| T@U) ) (! (= (MapType1Select LayerTypeType HandleTypeType (|lambda#111| |l#0@@2| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0| |l#6| |l#7| |l#8| |l#9| |l#10| |l#11| |l#12|) |$l#0_3_21#ly#0|) (Handle1 (|lambda#10| |l#0@@2| |l#1@@0| (Lit HandleTypeType (AtLayer HandleTypeType |l#2@@0| |$l#0_3_21#ly#0|)) |l#3@@0| |l#4@@0| (Lit HandleTypeType (AtLayer HandleTypeType |l#5@@0| |$l#0_3_21#ly#0|)) |l#6| |l#7| |l#8| |l#9| |l#10|) |l#11| |l#12|))
 :qid |DafnyPreludebpl.27:1|
 :skolemid |1235|
 :pattern ( (MapType1Select LayerTypeType HandleTypeType (|lambda#111| |l#0@@2| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0| |l#6| |l#7| |l#8| |l#9| |l#10| |l#11| |l#12|) |$l#0_3_21#ly#0|))
)))
(assert (forall ((|l#0@@3| Bool) (|$l#0#o#0| T@U) ) (! (= (U_2_bool (MapType1Select refType boolType (|lambda#2| |l#0@@3|) |$l#0#o#0|)) |l#0@@3|)
 :qid |unknown.0:0|
 :skolemid |1228|
 :pattern ( (MapType1Select refType boolType (|lambda#2| |l#0@@3|) |$l#0#o#0|))
)))
(assert (forall ((|l#0@@4| T@U) (|$l#0#ly#0| T@U) ) (! (= (MapType1Select LayerTypeType HandleTypeType (|lambda#4| |l#0@@4|) |$l#0#ly#0|) |l#0@@4|)
 :qid |StateMonaddfy.29:11|
 :skolemid |1230|
 :pattern ( (MapType1Select LayerTypeType HandleTypeType (|lambda#4| |l#0@@4|) |$l#0#ly#0|))
)))
(assert (forall ((State.M$A@@1 T@U) (|a#2#0#0@@1| T@U) ($h@@4 T@U) ) (!  (=> ($IsGoodHeap $h@@4) (= ($IsAlloc DatatypeTypeType (|#State.M.State| |a#2#0#0@@1|) (Tclass.State.M State.M$A@@1) $h@@4) ($IsAlloc HandleTypeType |a#2#0#0@@1| (Tclass._System.___hTotalFunc1 TInt (Tclass._System.Tuple2 State.M$A@@1 TInt)) $h@@4)))
 :qid |unknown.0:0|
 :skolemid |1212|
 :pattern ( ($IsAlloc DatatypeTypeType (|#State.M.State| |a#2#0#0@@1|) (Tclass.State.M State.M$A@@1) $h@@4))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (|Set#Equal| a@@1 b@@1) (= a@@1 b@@1))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |688|
 :pattern ( (|Set#Equal| a@@1 b@@1))
)))
(assert (forall ((|l#0@@5| T@U) (|l#1@@1| T@U) (|l#2@@1| T@U) (|l#3@@1| T@U) (|l#4@@1| T@U) (|l#5@@1| T@U) (|l#6@@0| T@U) (|l#7@@0| T@U) (|l#8@@0| T@U) (|l#9@@0| T@U) (|l#10@@0| T@U) (|$l#0#heap#0@@1| T@U) (|$l#0#s#0@@1| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#10| |l#0@@5| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0| |l#7@@0| |l#8@@0| |l#9@@0| |l#10@@0|) |$l#0#heap#0@@1| |$l#0#s#0@@1|) ($Box DatatypeTypeType (let ((|newState#0| (U_2_int ($Unbox intType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Apply1 |l#0@@5| |l#1@@1| |$l#0#heap#0@@1| |l#2@@1| ($Box intType ($Unbox intType |$l#0#s#0@@1|)))))))))
(let ((|a#0| (_System.Tuple2._0 ($Unbox DatatypeTypeType (Apply1 |l#3@@1| |l#4@@1| |$l#0#heap#0@@1| |l#5@@1| ($Box intType ($Unbox intType |$l#0#s#0@@1|)))))))
(let ((|g#0| (State.M.runState ($Unbox DatatypeTypeType (Apply1 |l#6@@0| |l#7@@0| |$l#0#heap#0@@1| |l#8@@0| |a#0|)))))
($Unbox DatatypeTypeType (Apply1 |l#9@@0| |l#10@@0| |$l#0#heap#0@@1| |g#0| ($Box intType (int_2_U |newState#0|)))))))))
 :qid |DafnyPreludebpl.27:1|
 :skolemid |1231|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#10| |l#0@@5| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0| |l#7@@0| |l#8@@0| |l#9@@0| |l#10@@0|) |$l#0#heap#0@@1| |$l#0#s#0@@1|))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) (c T@U) ) (!  (=> (or (not (= a@@2 c)) (not true)) (=> (and ($HeapSucc a@@2 b@@2) ($HeapSucc b@@2 c)) ($HeapSucc a@@2 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |655|
 :pattern ( ($HeapSucc a@@2 b@@2) ($HeapSucc b@@2 c))
)))
(assert (forall ((f@@9 T@U) (t0@@13 T@U) (t1@@12 T@U) ) (! (= ($Is HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@13 t1@@12)) (forall ((h@@6 T@U) (bx0@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@6) ($IsBox bx0@@9 t0@@13)) (Requires1 t0@@13 t1@@12 h@@6 f@@9 bx0@@9)) ($IsBox (Apply1 t0@@13 t1@@12 h@@6 f@@9 bx0@@9) t1@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |925|
 :pattern ( (Apply1 t0@@13 t1@@12 h@@6 f@@9 bx0@@9))
)))
 :qid |unknown.0:0|
 :skolemid |926|
 :pattern ( ($Is HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@13 t1@@12)))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 TInt) (and (= ($Box intType ($Unbox intType bx@@7)) bx@@7) ($Is intType ($Unbox intType bx@@7) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |565|
 :pattern ( ($IsBox bx@@7 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |576|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((State._default.Bind$A T@U) (State._default.Bind$B T@U) ($Heap T@U) (|m#0| T@U) (|f#0@@1| T@U) ) (!  (=> (or (|State.__default.Bind#canCall| State._default.Bind$A State._default.Bind$B (Lit DatatypeTypeType |m#0|) |f#0@@1|) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) ($Is DatatypeTypeType |m#0| (Tclass.State.M State._default.Bind$A))) ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc1 State._default.Bind$A (Tclass.State.M State._default.Bind$B)))))) (and (and (State.M.State_q (Lit DatatypeTypeType |m#0|)) (let ((|h#3| (Lit HandleTypeType (State.M.runState (Lit DatatypeTypeType |m#0|)))))
(forall ((|$l#3#s#0| T@U) (|$l#3#heap#0| T@U) ) (!  (=> ($IsGoodHeap |$l#3#heap#0|) (and (_System.Tuple2.___hMake2_q ($Unbox DatatypeTypeType (Apply1 TInt (Tclass._System.Tuple2 State._default.Bind$A TInt) |$l#3#heap#0| |h#3| ($Box intType |$l#3#s#0|)))) (and (_System.Tuple2.___hMake2_q ($Unbox DatatypeTypeType (Apply1 TInt (Tclass._System.Tuple2 State._default.Bind$A TInt) |$l#3#heap#0| |h#3| ($Box intType |$l#3#s#0|)))) (let ((|a#3| (_System.Tuple2._0 ($Unbox DatatypeTypeType (Apply1 TInt (Tclass._System.Tuple2 State._default.Bind$A TInt) |$l#3#heap#0| |h#3| ($Box intType |$l#3#s#0|))))))
(State.M.State_q ($Unbox DatatypeTypeType (Apply1 State._default.Bind$A (Tclass.State.M State._default.Bind$B) |$l#3#heap#0| |f#0@@1| |a#3|)))))))
 :qid |unknown.0:0|
 :skolemid |1079|
)))) (= (State.__default.Bind State._default.Bind$A State._default.Bind$B (Lit DatatypeTypeType |m#0|) |f#0@@1|) (let ((|h#2| (Lit HandleTypeType (State.M.runState (Lit DatatypeTypeType |m#0|)))))
(Lit DatatypeTypeType (|#State.M.State| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#4| (Handle1 (|lambda#10| TInt (Tclass._System.Tuple2 State._default.Bind$A TInt) |h#2| TInt (Tclass._System.Tuple2 State._default.Bind$A TInt) |h#2| State._default.Bind$A (Tclass.State.M State._default.Bind$B) |f#0@@1| TInt (Tclass._System.Tuple2 State._default.Bind$B TInt)) (|lambda#1| TInt) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false))))) ($LS $LZ)))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |1080|
 :pattern ( (State.__default.Bind State._default.Bind$A State._default.Bind$B (Lit DatatypeTypeType |m#0|) |f#0@@1|) ($IsGoodHeap $Heap))
))))
(assert (forall ((t0@@14 T@U) (t1@@13 T@U) (heap@@2 T@U) (h@@7 T@U) (r@@1 T@U) (rd@@1 T@U) (bx0@@10 T@U) ) (!  (=> (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType r@@1 heap@@2 bx0@@10)) (Requires1 t0@@14 t1@@13 heap@@2 (Handle1 h@@7 r@@1 rd@@1) bx0@@10))
 :qid |unknown.0:0|
 :skolemid |909|
 :pattern ( (Requires1 t0@@14 t1@@13 heap@@2 (Handle1 h@@7 r@@1 rd@@1) bx0@@10))
)))
(assert (forall ((v@@3 T@U) (t0@@15 T@U) (h@@8 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@15) h@@8) (forall ((bx@@8 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@8) ($IsAllocBox bx@@8 t0@@15 h@@8))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |605|
 :pattern ( (|Set#IsMember| v@@3 bx@@8))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |606|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@15) h@@8))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$R@@1| T@U) ) (! (= (Tclass._System.___hFunc1_0 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)) |#$T0@@1|)
 :qid |unknown.0:0|
 :skolemid |905|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$R@@2| T@U) ) (! (= (Tclass._System.___hFunc1_1 (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) |#$R@@2|)
 :qid |unknown.0:0|
 :skolemid |906|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|))
)))
(assert (forall ((|#$T0@@3| T@U) (|#$R@@3| T@U) ) (! (= (Tclass._System.___hPartialFunc1_0 (Tclass._System.___hPartialFunc1 |#$T0@@3| |#$R@@3|)) |#$T0@@3|)
 :qid |unknown.0:0|
 :skolemid |936|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@3| |#$R@@3|))
)))
(assert (forall ((|#$T0@@4| T@U) (|#$R@@4| T@U) ) (! (= (Tclass._System.___hPartialFunc1_1 (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@4|)) |#$R@@4|)
 :qid |unknown.0:0|
 :skolemid |937|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@4|))
)))
(assert (forall ((|#$T0@@5| T@U) (|#$R@@5| T@U) ) (! (= (Tclass._System.___hTotalFunc1_0 (Tclass._System.___hTotalFunc1 |#$T0@@5| |#$R@@5|)) |#$T0@@5|)
 :qid |unknown.0:0|
 :skolemid |943|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@5| |#$R@@5|))
)))
(assert (forall ((|#$T0@@6| T@U) (|#$R@@6| T@U) ) (! (= (Tclass._System.___hTotalFunc1_1 (Tclass._System.___hTotalFunc1 |#$T0@@6| |#$R@@6|)) |#$R@@6|)
 :qid |unknown.0:0|
 :skolemid |944|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@6| |#$R@@6|))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |986|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |991|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |992|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |1001|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |1003|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall (($o@@0 T@U) ) (! ($Is refType $o@@0 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |885|
 :pattern ( ($Is refType $o@@0 Tclass._System.object?))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |539|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |540|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((State.M$A@@2 T@U) ) (! (= (Tclass.State.M_0 (Tclass.State.M State.M$A@@2)) State.M$A@@2)
 :qid |unknown.0:0|
 :skolemid |1067|
 :pattern ( (Tclass.State.M State.M$A@@2))
)))
(assert (forall ((|a#0#0#0@@0| T@U) ) (! (= (DatatypeCtorId (|#State.M.State| |a#0#0#0@@0|)) |##State.M.State|)
 :qid |StateMonaddfy.26:25|
 :skolemid |1207|
 :pattern ( (|#State.M.State| |a#0#0#0@@0|))
)))
(assert (forall ((|a#4#0#0@@0| T@U) ) (! (= (State.M.runState (|#State.M.State| |a#4#0#0@@0|)) |a#4#0#0@@0|)
 :qid |StateMonaddfy.26:25|
 :skolemid |1215|
 :pattern ( (|#State.M.State| |a#4#0#0@@0|))
)))
(assert (forall ((x@@4 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |563|
 :pattern ( ($Box T@@4 x@@4))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |1002|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |1004|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((|#$T0@@7| T@U) (|#$R@@7| T@U) (|f#0@@2| T@U) ) (! (= ($Is HandleTypeType |f#0@@2| (Tclass._System.___hTotalFunc1 |#$T0@@7| |#$R@@7|))  (and ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc1 |#$T0@@7| |#$R@@7|)) (forall ((|x0#0| T@U) ) (!  (=> ($IsBox |x0#0| |#$T0@@7|) (Requires1 |#$T0@@7| |#$R@@7| $OneHeap |f#0@@2| |x0#0|))
 :qid |unknown.0:0|
 :skolemid |946|
))))
 :qid |unknown.0:0|
 :skolemid |947|
 :pattern ( ($Is HandleTypeType |f#0@@2| (Tclass._System.___hTotalFunc1 |#$T0@@7| |#$R@@7|)))
)))
(assert (forall ((|#$T0@@8| T@U) (|#$R@@8| T@U) (|f#0@@3| T@U) ) (! (= ($Is HandleTypeType |f#0@@3| (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|))  (and ($Is HandleTypeType |f#0@@3| (Tclass._System.___hFunc1 |#$T0@@8| |#$R@@8|)) (forall ((|x0#0@@0| T@U) ) (!  (=> ($IsBox |x0#0@@0| |#$T0@@8|) (|Set#Equal| (Reads1 |#$T0@@8| |#$R@@8| $OneHeap |f#0@@3| |x0#0@@0|) |Set#Empty|))
 :qid |unknown.0:0|
 :skolemid |939|
))))
 :qid |unknown.0:0|
 :skolemid |940|
 :pattern ( ($Is HandleTypeType |f#0@@3| (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|)))
)))
(assert (forall ((f@@10 T@U) (ly@@0 T@U) (A@@0 T@T) ) (! (= (AtLayer A@@0 f@@10 ($LS ly@@0)) (AtLayer A@@0 f@@10 ly@@0))
 :qid |DafnyPreludebpl.502:18|
 :skolemid |640|
 :pattern ( (AtLayer A@@0 f@@10 ($LS ly@@0)))
)))
(assert (forall ((f@@11 T@U) (t0@@16 T@U) (t1@@14 T@U) (h@@9 T@U) ) (!  (=> ($IsGoodHeap h@@9) (= ($IsAlloc HandleTypeType f@@11 (Tclass._System.___hFunc1 t0@@16 t1@@14) h@@9) (forall ((bx0@@11 T@U) ) (!  (=> (and (and ($IsBox bx0@@11 t0@@16) ($IsAllocBox bx0@@11 t0@@16 h@@9)) (Requires1 t0@@16 t1@@14 h@@9 f@@11 bx0@@11)) (forall ((r@@2 T@U) ) (!  (=> (and (or (not (= r@@2 null)) (not true)) (|Set#IsMember| (Reads1 t0@@16 t1@@14 h@@9 f@@11 bx0@@11) ($Box refType r@@2))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@9 r@@2) alloc))))
 :qid |unknown.0:0|
 :skolemid |930|
 :pattern ( (|Set#IsMember| (Reads1 t0@@16 t1@@14 h@@9 f@@11 bx0@@11) ($Box refType r@@2)))
)))
 :qid |unknown.0:0|
 :skolemid |931|
 :pattern ( (Apply1 t0@@16 t1@@14 h@@9 f@@11 bx0@@11))
 :pattern ( (Reads1 t0@@16 t1@@14 h@@9 f@@11 bx0@@11))
))))
 :qid |unknown.0:0|
 :skolemid |932|
 :pattern ( ($IsAlloc HandleTypeType f@@11 (Tclass._System.___hFunc1 t0@@16 t1@@14) h@@9))
)))
(assert (forall ((|#$T0@@9| T@U) (|#$R@@9| T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@9)) bx@@9) ($Is HandleTypeType ($Unbox HandleTypeType bx@@9) (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|))))
 :qid |unknown.0:0|
 :skolemid |907|
 :pattern ( ($IsBox bx@@9 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|)))
)))
(assert (forall ((|#$T0@@10| T@U) (|#$R@@10| T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@10)) bx@@10) ($Is HandleTypeType ($Unbox HandleTypeType bx@@10) (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|))))
 :qid |unknown.0:0|
 :skolemid |938|
 :pattern ( ($IsBox bx@@10 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|)))
)))
(assert (forall ((|#$T0@@11| T@U) (|#$R@@11| T@U) (bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@11)) bx@@11) ($Is HandleTypeType ($Unbox HandleTypeType bx@@11) (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|))))
 :qid |unknown.0:0|
 :skolemid |945|
 :pattern ( ($IsBox bx@@11 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@12)) bx@@12) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@12) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |993|
 :pattern ( ($IsBox bx@@12 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((|l#0@@6| T@U) (|l#1@@2| T@U) (|l#2@@2| T@U) (|l#3@@2| Bool) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#25| |l#0@@6| |l#1@@2| |l#2@@2| |l#3@@2|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0@@6|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1@@2| $o@@1) |l#2@@2|)))) |l#3@@2|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1232|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#25| |l#0@@6| |l#1@@2| |l#2@@2| |l#3@@2|) $o@@1 $f))
)))
(assert (forall ((|#$T0@@12| T@U) (|#$R@@12| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |904|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|))
)))
(assert (forall ((|#$T0@@13| T@U) (|#$R@@13| T@U) ) (!  (and (= (Tag (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|)) Tagclass._System.___hPartialFunc1) (= (TagFamily (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|)) |tytagFamily$_#PartialFunc1|))
 :qid |unknown.0:0|
 :skolemid |935|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|))
)))
(assert (forall ((|#$T0@@14| T@U) (|#$R@@14| T@U) ) (!  (and (= (Tag (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|)) Tagclass._System.___hTotalFunc1) (= (TagFamily (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|)) |tytagFamily$_#TotalFunc1|))
 :qid |unknown.0:0|
 :skolemid |942|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |990|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((t0@@17 T@U) (t1@@15 T@U) (heap@@3 T@U) (f@@12 T@U) (bx0@@12 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@3) (and ($IsBox bx0@@12 t0@@17) ($Is HandleTypeType f@@12 (Tclass._System.___hFunc1 t0@@17 t1@@15)))) (|Set#Equal| (Reads1 t0@@17 t1@@15 $OneHeap f@@12 bx0@@12) |Set#Empty|)) (= (Requires1 t0@@17 t1@@15 $OneHeap f@@12 bx0@@12) (Requires1 t0@@17 t1@@15 heap@@3 f@@12 bx0@@12)))
 :qid |unknown.0:0|
 :skolemid |924|
 :pattern ( (Requires1 t0@@17 t1@@15 $OneHeap f@@12 bx0@@12) ($IsGoodHeap heap@@3))
 :pattern ( (Requires1 t0@@17 t1@@15 heap@@3 f@@12 bx0@@12))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((State._default.Bind$A@@0 T@U) (State._default.Bind$B@@0 T@U) ($Heap@@0 T@U) (|m#0@@0| T@U) (|f#0@@4| T@U) ) (!  (=> (or (|State.__default.Bind#canCall| State._default.Bind$A@@0 State._default.Bind$B@@0 |m#0@@0| |f#0@@4|) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@0) ($Is DatatypeTypeType |m#0@@0| (Tclass.State.M State._default.Bind$A@@0))) ($Is HandleTypeType |f#0@@4| (Tclass._System.___hTotalFunc1 State._default.Bind$A@@0 (Tclass.State.M State._default.Bind$B@@0)))))) (and (and (State.M.State_q |m#0@@0|) (let ((|h#1| (State.M.runState |m#0@@0|)))
(forall ((|$l#1#s#0| T@U) (|$l#1#heap#0| T@U) ) (!  (=> ($IsGoodHeap |$l#1#heap#0|) (and (_System.Tuple2.___hMake2_q ($Unbox DatatypeTypeType (Apply1 TInt (Tclass._System.Tuple2 State._default.Bind$A@@0 TInt) |$l#1#heap#0| |h#1| ($Box intType |$l#1#s#0|)))) (and (_System.Tuple2.___hMake2_q ($Unbox DatatypeTypeType (Apply1 TInt (Tclass._System.Tuple2 State._default.Bind$A@@0 TInt) |$l#1#heap#0| |h#1| ($Box intType |$l#1#s#0|)))) (let ((|a#1| (_System.Tuple2._0 ($Unbox DatatypeTypeType (Apply1 TInt (Tclass._System.Tuple2 State._default.Bind$A@@0 TInt) |$l#1#heap#0| |h#1| ($Box intType |$l#1#s#0|))))))
(State.M.State_q ($Unbox DatatypeTypeType (Apply1 State._default.Bind$A@@0 (Tclass.State.M State._default.Bind$B@@0) |$l#1#heap#0| |f#0@@4| |a#1|)))))))
 :qid |unknown.0:0|
 :skolemid |1077|
)))) (= (State.__default.Bind State._default.Bind$A@@0 State._default.Bind$B@@0 |m#0@@0| |f#0@@4|) (let ((|h#0| (State.M.runState |m#0@@0|)))
(Lit DatatypeTypeType (|#State.M.State| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#4| (Handle1 (|lambda#10| TInt (Tclass._System.Tuple2 State._default.Bind$A@@0 TInt) |h#0| TInt (Tclass._System.Tuple2 State._default.Bind$A@@0 TInt) |h#0| State._default.Bind$A@@0 (Tclass.State.M State._default.Bind$B@@0) |f#0@@4| TInt (Tclass._System.Tuple2 State._default.Bind$B@@0 TInt)) (|lambda#1| TInt) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false))))) ($LS $LZ)))))))))
 :qid |unknown.0:0|
 :skolemid |1078|
 :pattern ( (State.__default.Bind State._default.Bind$A@@0 State._default.Bind$B@@0 |m#0@@0| |f#0@@4|) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((d@@5 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@5)) (DtRank d@@5))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |622|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@5)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((State._default.Bind$A@@1 T@U) (State._default.Bind$B@@1 T@U) ($Heap@@1 T@U) (|m#0@@1| T@U) (|f#0@@5| T@U) ) (!  (=> (or (|State.__default.Bind#canCall| State._default.Bind$A@@1 State._default.Bind$B@@1 (Lit DatatypeTypeType |m#0@@1|) (Lit HandleTypeType |f#0@@5|)) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@1) ($Is DatatypeTypeType |m#0@@1| (Tclass.State.M State._default.Bind$A@@1))) ($Is HandleTypeType |f#0@@5| (Tclass._System.___hTotalFunc1 State._default.Bind$A@@1 (Tclass.State.M State._default.Bind$B@@1)))))) (and (and (State.M.State_q (Lit DatatypeTypeType |m#0@@1|)) (let ((|h#5| (Lit HandleTypeType (State.M.runState (Lit DatatypeTypeType |m#0@@1|)))))
(forall ((|$l#5#s#0| T@U) (|$l#5#heap#0| T@U) ) (!  (=> ($IsGoodHeap |$l#5#heap#0|) (and (_System.Tuple2.___hMake2_q ($Unbox DatatypeTypeType (Apply1 TInt (Tclass._System.Tuple2 State._default.Bind$A@@1 TInt) |$l#5#heap#0| |h#5| ($Box intType |$l#5#s#0|)))) (and (_System.Tuple2.___hMake2_q ($Unbox DatatypeTypeType (Apply1 TInt (Tclass._System.Tuple2 State._default.Bind$A@@1 TInt) |$l#5#heap#0| |h#5| ($Box intType |$l#5#s#0|)))) (let ((|a#5| (_System.Tuple2._0 ($Unbox DatatypeTypeType (Apply1 TInt (Tclass._System.Tuple2 State._default.Bind$A@@1 TInt) |$l#5#heap#0| |h#5| ($Box intType |$l#5#s#0|))))))
(State.M.State_q ($Unbox DatatypeTypeType (Apply1 State._default.Bind$A@@1 (Tclass.State.M State._default.Bind$B@@1) |$l#5#heap#0| (Lit HandleTypeType |f#0@@5|) |a#5|)))))))
 :qid |unknown.0:0|
 :skolemid |1081|
)))) (= (State.__default.Bind State._default.Bind$A@@1 State._default.Bind$B@@1 (Lit DatatypeTypeType |m#0@@1|) (Lit HandleTypeType |f#0@@5|)) (let ((|h#4| (Lit HandleTypeType (State.M.runState (Lit DatatypeTypeType |m#0@@1|)))))
(Lit DatatypeTypeType (|#State.M.State| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#4| (Handle1 (|lambda#10| TInt (Tclass._System.Tuple2 State._default.Bind$A@@1 TInt) |h#4| TInt (Tclass._System.Tuple2 State._default.Bind$A@@1 TInt) |h#4| State._default.Bind$A@@1 (Tclass.State.M State._default.Bind$B@@1) (Lit HandleTypeType |f#0@@5|) TInt (Tclass._System.Tuple2 State._default.Bind$B@@1 TInt)) (|lambda#1| TInt) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false))))) ($LS $LZ)))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |1082|
 :pattern ( (State.__default.Bind State._default.Bind$A@@1 State._default.Bind$B@@1 (Lit DatatypeTypeType |m#0@@1|) (Lit HandleTypeType |f#0@@5|)) ($IsGoodHeap $Heap@@1))
))))
(assert (forall ((bx@@13 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@13 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@13)) bx@@13) ($Is SetType ($Unbox SetType bx@@13) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |570|
 :pattern ( ($IsBox bx@@13 (TSet t@@5)))
)))
(assert (forall ((State.M$A@@3 T@U) (bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 (Tclass.State.M State.M$A@@3)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@14)) bx@@14) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@14) (Tclass.State.M State.M$A@@3))))
 :qid |unknown.0:0|
 :skolemid |1068|
 :pattern ( ($IsBox bx@@14 (Tclass.State.M State.M$A@@3)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@2 T@U) (State._default.Bind$A@@2 T@U) (State._default.Bind$B@@2 T@U) (|m#0@@2| T@U) (|f#0@@6| T@U) ) (!  (=> (and (or (|State.__default.Bind#canCall| State._default.Bind$A@@2 State._default.Bind$B@@2 |m#0@@2| |f#0@@6|) (and (< 1 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |m#0@@2| (Tclass.State.M State._default.Bind$A@@2)) ($IsAlloc DatatypeTypeType |m#0@@2| (Tclass.State.M State._default.Bind$A@@2) $Heap@@2)) (and ($Is HandleTypeType |f#0@@6| (Tclass._System.___hTotalFunc1 State._default.Bind$A@@2 (Tclass.State.M State._default.Bind$B@@2))) ($IsAlloc HandleTypeType |f#0@@6| (Tclass._System.___hTotalFunc1 State._default.Bind$A@@2 (Tclass.State.M State._default.Bind$B@@2)) $Heap@@2))))) ($IsGoodHeap $Heap@@2)) ($IsAlloc DatatypeTypeType (State.__default.Bind State._default.Bind$A@@2 State._default.Bind$B@@2 |m#0@@2| |f#0@@6|) (Tclass.State.M State._default.Bind$B@@2) $Heap@@2))
 :qid |StateMonaddfy.31:12|
 :skolemid |1075|
 :pattern ( ($IsAlloc DatatypeTypeType (State.__default.Bind State._default.Bind$A@@2 State._default.Bind$B@@2 |m#0@@2| |f#0@@6|) (Tclass.State.M State._default.Bind$B@@2) $Heap@@2))
))))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (forall ((State.M$A@@4 T@U) (|a#2#0#0@@2| T@U) ) (! (= ($Is DatatypeTypeType (|#State.M.State| |a#2#0#0@@2|) (Tclass.State.M State.M$A@@4)) ($Is HandleTypeType |a#2#0#0@@2| (Tclass._System.___hTotalFunc1 TInt (Tclass._System.Tuple2 State.M$A@@4 TInt))))
 :qid |unknown.0:0|
 :skolemid |1211|
 :pattern ( ($Is DatatypeTypeType (|#State.M.State| |a#2#0#0@@2|) (Tclass.State.M State.M$A@@4)))
)))
(assert (forall ((s@@0 T@U) ) (! ($Is SetType (SetRef_to_SetBox s@@0) (TSet Tclass._System.object?))
 :qid |DafnyPreludebpl.372:15|
 :skolemid |621|
 :pattern ( (SetRef_to_SetBox s@@0))
)))
(assert (forall ((d@@6 T@U) (State.M$A@@5 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (State.M.State_q d@@6) ($IsAlloc DatatypeTypeType d@@6 (Tclass.State.M State.M$A@@5) $h@@5))) ($IsAlloc HandleTypeType (State.M.runState d@@6) (Tclass._System.___hTotalFunc1 TInt (Tclass._System.Tuple2 State.M$A@@5 TInt)) $h@@5))
 :qid |unknown.0:0|
 :skolemid |1213|
 :pattern ( ($IsAlloc HandleTypeType (State.M.runState d@@6) (Tclass._System.___hTotalFunc1 TInt (Tclass._System.Tuple2 State.M$A@@5 TInt)) $h@@5))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) ) (! (= (|Set#Equal| a@@3 b@@3) (forall ((o@@7 T@U) ) (! (= (|Set#IsMember| a@@3 o@@7) (|Set#IsMember| b@@3 o@@7))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |686|
 :pattern ( (|Set#IsMember| a@@3 o@@7))
 :pattern ( (|Set#IsMember| b@@3 o@@7))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |687|
 :pattern ( (|Set#Equal| a@@3 b@@3))
)))
(assert (forall ((d@@7 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (_System.Tuple2.___hMake2_q d@@7) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@7 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@6)
 :qid |unknown.0:0|
 :skolemid |996|
 :pattern ( ($IsAlloc DatatypeTypeType d@@7 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@6))
)))) ($IsAllocBox (_System.Tuple2._0 d@@7) |_System._tuple#2$T0@@6| $h@@6))
 :qid |unknown.0:0|
 :skolemid |997|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@7) |_System._tuple#2$T0@@6| $h@@6))
)))
(assert (forall ((d@@8 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (_System.Tuple2.___hMake2_q d@@8) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@8 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@7)
 :qid |unknown.0:0|
 :skolemid |998|
 :pattern ( ($IsAlloc DatatypeTypeType d@@8 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@7))
)))) ($IsAllocBox (_System.Tuple2._1 d@@8) |_System._tuple#2$T1@@7| $h@@7))
 :qid |unknown.0:0|
 :skolemid |999|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@8) |_System._tuple#2$T1@@7| $h@@7))
)))
(assert (forall ((|l#0@@7| T@U) (|l#1@@3| T@U) (|l#2@@3| T@U) (|l#3@@3| T@U) (|l#4@@2| T@U) (|l#5@@2| T@U) (|l#6@@1| T@U) (|$l#0_2_3#heap#0| T@U) (|$l#0_2_3#s#0| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#43| |l#0@@7| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@2| |l#5@@2| |l#6@@1|) |$l#0_2_3#heap#0| |$l#0_2_3#s#0|) ($Box DatatypeTypeType (let ((|newState#0_2_3| (U_2_int ($Unbox intType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |l#0@@7| |$l#0_2_3#s#0|))))))
(let ((|a#0_2_3| (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |l#1@@3| |$l#0_2_3#s#0|))))
(let ((|g#0_2_3| (State.M.runState ($Unbox DatatypeTypeType (Apply1 |l#2@@3| |l#3@@3| |$l#0_2_3#heap#0| |l#4@@2| |a#0_2_3|)))))
($Unbox DatatypeTypeType (Apply1 |l#5@@2| |l#6@@1| |$l#0_2_3#heap#0| |g#0_2_3| ($Box intType (int_2_U |newState#0_2_3|)))))))))
 :qid |StateMonaddfy.11:27|
 :skolemid |1234|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#43| |l#0@@7| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@2| |l#5@@2| |l#6@@1|) |$l#0_2_3#heap#0| |$l#0_2_3#s#0|))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |1000|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@3 T@U) (State._default.Return$A@@1 T@U) (|x#0@@1| T@U) ) (!  (=> (and (or (|State.__default.Return#canCall| State._default.Return$A@@1 |x#0@@1|) (and (< 1 $FunctionContextHeight) (and ($IsBox |x#0@@1| State._default.Return$A@@1) ($IsAllocBox |x#0@@1| State._default.Return$A@@1 $Heap@@3)))) ($IsGoodHeap $Heap@@3)) ($IsAlloc DatatypeTypeType (State.__default.Return State._default.Return$A@@1 |x#0@@1|) (Tclass.State.M State._default.Return$A@@1) $Heap@@3))
 :qid |StateMonaddfy.28:12|
 :skolemid |1070|
 :pattern ( ($IsAlloc DatatypeTypeType (State.__default.Return State._default.Return$A@@1 |x#0@@1|) (Tclass.State.M State._default.Return$A@@1) $Heap@@3))
))))
(assert (forall ((|a#3#0#0@@0| T@U) ) (! (= (|#State.M.State| (Lit HandleTypeType |a#3#0#0@@0|)) (Lit DatatypeTypeType (|#State.M.State| |a#3#0#0@@0|)))
 :qid |StateMonaddfy.26:25|
 :skolemid |1214|
 :pattern ( (|#State.M.State| (Lit HandleTypeType |a#3#0#0@@0|)))
)))
(assert (forall ((x@@5 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@5)) (Lit BoxType ($Box T@@5 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |554|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@5)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((State._default.Bind$A@@3 T@U) (State._default.Bind$B@@3 T@U) (|m#0@@3| T@U) (|f#0@@7| T@U) ) (!  (=> (or (|State.__default.Bind#canCall| State._default.Bind$A@@3 State._default.Bind$B@@3 |m#0@@3| |f#0@@7|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |m#0@@3| (Tclass.State.M State._default.Bind$A@@3)) ($Is HandleTypeType |f#0@@7| (Tclass._System.___hTotalFunc1 State._default.Bind$A@@3 (Tclass.State.M State._default.Bind$B@@3)))))) ($Is DatatypeTypeType (State.__default.Bind State._default.Bind$A@@3 State._default.Bind$B@@3 |m#0@@3| |f#0@@7|) (Tclass.State.M State._default.Bind$B@@3)))
 :qid |unknown.0:0|
 :skolemid |1074|
 :pattern ( (State.__default.Bind State._default.Bind$A@@3 State._default.Bind$B@@3 |m#0@@3| |f#0@@7|))
))))
(assert (forall ((h@@10 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@10)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |599|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@10))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((State._default.Return$A@@2 T@U) (|x#0@@2| T@U) ) (!  (=> (or (|State.__default.Return#canCall| State._default.Return$A@@2 (Lit BoxType |x#0@@2|)) (and (< 1 $FunctionContextHeight) ($IsBox |x#0@@2| State._default.Return$A@@2))) (= (State.__default.Return State._default.Return$A@@2 (Lit BoxType |x#0@@2|)) (Lit DatatypeTypeType (|#State.M.State| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#4| (Handle1 (|lambda#0| (Lit BoxType |x#0@@2|)) (|lambda#1| TInt) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false))))) ($LS $LZ)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |1073|
 :pattern ( (State.__default.Return State._default.Return$A@@2 (Lit BoxType |x#0@@2|)))
))))
(assert (forall ((|l#0@@8| T@U) (|$l#0#heap#0@@2| T@U) (|$l#0#s#0@@2| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#3| |l#0@@8|) |$l#0#heap#0@@2| |$l#0#s#0@@2|) |l#0@@8|)
 :qid |StateMonaddfy.29:11|
 :skolemid |1229|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#3| |l#0@@8|) |$l#0#heap#0@@2| |$l#0#s#0@@2|))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |578|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |$lambdaHeap#0@0| () T@U)
(declare-fun $Heap@@4 () T@U)
(declare-fun |$lambdaHeap#0_5_0@0| () T@U)
(declare-fun |##m#0_5_1@0| () T@U)
(declare-fun |x#0@@3| () T@U)
(declare-fun State._default.LeftIdentity$A () T@U)
(declare-fun |f#0@@8| () T@U)
(declare-fun State._default.LeftIdentity$B () T@U)
(declare-fun |##m#0_5_0@0| () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |$_Frame#l0_1_0@0| () T@U)
(declare-fun |$lambdaHeap#0_1_0@0| () T@U)
(declare-fun |$_Frame#l0_1_1@0| () T@U)
(declare-fun |$lambdaHeap#0_1_1@0| () T@U)
(declare-fun |f##0_1_0@0| () T@U)
(declare-fun call1formal@State._default.FunEq$Y@0 () T@U)
(declare-fun |g2#0@0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |s#0_2_0@0| () Int)
(declare-fun |_mcc#3#0_2_0| () T@U)
(declare-fun |_mcc#4#0_2_0| () Int)
(declare-fun |let#0_2_0#0#0| () Int)
(declare-fun |newState#Z#0_2_0@0| () Int)
(declare-fun |let#0_2_1#0#0| () T@U)
(declare-fun |a#Z#0_2_0@0| () T@U)
(declare-fun |$_Frame#l0_2_0@0| () T@U)
(declare-fun |$lambdaHeap#0_2_0@0| () T@U)
(declare-fun |s#0_2_1@0| () Int)
(declare-fun |_mcc#13#0_2_0| () T@U)
(declare-fun |_mcc#14#0_2_0| () Int)
(declare-fun |let#0_2_3#0#0| () Int)
(declare-fun |newState#Z#0_2_1@0| () Int)
(declare-fun |let#0_2_4#0#0| () T@U)
(declare-fun |a#Z#0_2_1@0| () T@U)
(declare-fun |$_Frame#l0_2_1@0| () T@U)
(declare-fun |$lambdaHeap#0_2_1@0| () T@U)
(declare-fun |$_Frame#l0_2_2@0| () T@U)
(declare-fun |$lambdaHeap#0_2_2@0| () T@U)
(declare-fun |$_Frame#l0_2_3@0| () T@U)
(declare-fun |$lambdaHeap#0_2_3@0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |g##0_2_0@0| () T@U)
(declare-fun call1formal@State._default.FunEq$Y@0@@0 () T@U)
(declare-fun |f##0_2_0@0| () T@U)
(declare-fun |$lambdaHeap#0_3_1@0| () T@U)
(declare-fun |$lambdaHeap#0_3_0@0| () T@U)
(declare-fun |s#0_3_0@0| () Int)
(declare-fun |_mcc#0#0_3_0| () T@U)
(declare-fun |_mcc#1#0_3_0| () Int)
(declare-fun |let#0_3_0#0#0| () Int)
(declare-fun |newState#Z#0_3_0@0| () Int)
(declare-fun |let#0_3_1#0#0| () T@U)
(declare-fun |a#Z#0_3_0@0| () T@U)
(declare-fun |$_Frame#l0_3_0@0| () T@U)
(declare-fun |$lambdaHeap#0_3_3@0| () T@U)
(declare-fun |$lambdaHeap#0_3_2@0| () T@U)
(declare-fun |s#0_3_2@0| () Int)
(declare-fun |_mcc#7#0_3_0| () T@U)
(declare-fun |_mcc#8#0_3_0| () Int)
(declare-fun |let#0_3_3#0#0| () Int)
(declare-fun |newState#Z#0_3_1@0| () Int)
(declare-fun |let#0_3_4#0#0| () T@U)
(declare-fun |a#Z#0_3_1@0| () T@U)
(declare-fun |$_Frame#l0_3_2@0| () T@U)
(declare-fun |s#0_3_4@0| () Int)
(declare-fun |_mcc#10#0_3_0| () T@U)
(declare-fun |_mcc#11#0_3_0| () Int)
(declare-fun |let#0_3_6#0#0| () Int)
(declare-fun |newState#Z#0_3_2@0| () Int)
(declare-fun |let#0_3_7#0#0| () T@U)
(declare-fun |a#Z#0_3_2@0| () T@U)
(declare-fun |$_Frame#l0_3_4@0| () T@U)
(declare-fun |$lambdaHeap#0_3_4@0| () T@U)
(declare-fun |s#0_3_5@0| () Int)
(declare-fun |let#0_3_9#0#0| () Int)
(declare-fun |newState#Z#0_3_3@0| () Int)
(declare-fun |let#0_3_10#0#0| () T@U)
(declare-fun |a#Z#0_3_3@0| () T@U)
(declare-fun |$_Frame#l0_3_5@0| () T@U)
(declare-fun |$lambdaHeap#0_3_5@0| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |g##0_3_0@0| () T@U)
(declare-fun call1formal@State._default.FunEq$Y@0@@1 () T@U)
(declare-fun |f##0_3_0@0| () T@U)
(declare-fun |$lambdaHeap#0_4_0@0| () T@U)
(declare-fun |$lambdaHeap#0_4_2@0| () T@U)
(declare-fun |$lambdaHeap#0_4_1@0| () T@U)
(declare-fun |s#0_4_1@0| () Int)
(declare-fun |let#0_4_0#0#0| () Int)
(declare-fun |newState#Z#0_4_0@0| () Int)
(declare-fun |let#0_4_1#0#0| () T@U)
(declare-fun |a#Z#0_4_0@0| () T@U)
(declare-fun |$_Frame#l0_4_1@0| () T@U)
(declare-fun |##m#0_4_0@0| () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |h#0@0| () T@U)
(declare-fun |let#1#0#0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(set-info :boogie-vc-id Impl$$State.__default.LeftIdentity)
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
 (=> (= (ControlFlow 0 0) 119) (let ((anon114_Else_correct true))
(let ((anon114_Then_correct true))
(let ((anon113_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0@0|) (or (= $Heap@@4 |$lambdaHeap#0@0|) ($HeapSucc $Heap@@4 |$lambdaHeap#0@0|))) (and (=> (= (ControlFlow 0 117) 115) anon114_Then_correct) (=> (= (ControlFlow 0 117) 116) anon114_Else_correct)))))
(let ((anon118_Else_correct true))
(let ((anon118_Then_correct true))
(let ((anon117_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0_5_0@0|) (or (= $Heap@@4 |$lambdaHeap#0_5_0@0|) ($HeapSucc $Heap@@4 |$lambdaHeap#0_5_0@0|))) (and (=> (= (ControlFlow 0 112) 110) anon118_Then_correct) (=> (= (ControlFlow 0 112) 111) anon118_Else_correct)))))
(let ((anon117_Else_correct  (=> (= |##m#0_5_1@0| (Lit DatatypeTypeType (|#State.M.State| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#4| (Handle1 (|lambda#0| |x#0@@3|) (|lambda#1| TInt) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false))))) ($LS $LZ)))))) (=> (and ($IsAlloc DatatypeTypeType |##m#0_5_1@0| (Tclass.State.M State._default.LeftIdentity$A) $Heap@@4) ($IsAlloc HandleTypeType |f#0@@8| (Tclass._System.___hTotalFunc1 State._default.LeftIdentity$A (Tclass.State.M State._default.LeftIdentity$B)) $Heap@@4)) (=> (and (and (|State.__default.Bind#canCall| State._default.LeftIdentity$A State._default.LeftIdentity$B (Lit DatatypeTypeType (|#State.M.State| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#4| (Handle1 (|lambda#0| |x#0@@3|) (|lambda#1| TInt) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false))))) ($LS $LZ))))) |f#0@@8|) (State.M.State_q (State.__default.Bind State._default.LeftIdentity$A State._default.LeftIdentity$B (Lit DatatypeTypeType (|#State.M.State| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#4| (Handle1 (|lambda#0| |x#0@@3|) (|lambda#1| TInt) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false))))) ($LS $LZ))))) |f#0@@8|))) (and (|State.__default.Bind#canCall| State._default.LeftIdentity$A State._default.LeftIdentity$B (Lit DatatypeTypeType (|#State.M.State| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#4| (Handle1 (|lambda#0| |x#0@@3|) (|lambda#1| TInt) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false))))) ($LS $LZ))))) |f#0@@8|) (= (ControlFlow 0 109) (- 0 108)))) (|State.M#Equal| (State.__default.Bind State._default.LeftIdentity$A State._default.LeftIdentity$B (State.__default.Return State._default.LeftIdentity$A |x#0@@3|) |f#0@@8|) (State.__default.Bind State._default.LeftIdentity$A State._default.LeftIdentity$B (Lit DatatypeTypeType (|#State.M.State| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#4| (Handle1 (|lambda#0| |x#0@@3|) (|lambda#1| TInt) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false))))) ($LS $LZ))))) |f#0@@8|)))))))
(let ((anon116_Then_correct  (=> (and ($IsAllocBox |x#0@@3| State._default.LeftIdentity$A $Heap@@4) (|State.__default.Return#canCall| State._default.LeftIdentity$A |x#0@@3|)) (=> (and (and (and (State.M.State_q (State.__default.Return State._default.LeftIdentity$A |x#0@@3|)) (= |##m#0_5_0@0| (State.__default.Return State._default.LeftIdentity$A |x#0@@3|))) (and ($IsAlloc DatatypeTypeType |##m#0_5_0@0| (Tclass.State.M State._default.LeftIdentity$A) $Heap@@4) ($IsAlloc HandleTypeType |f#0@@8| (Tclass._System.___hTotalFunc1 State._default.LeftIdentity$A (Tclass.State.M State._default.LeftIdentity$B)) $Heap@@4))) (and (and (|State.__default.Bind#canCall| State._default.LeftIdentity$A State._default.LeftIdentity$B (State.__default.Return State._default.LeftIdentity$A |x#0@@3|) |f#0@@8|) (State.M.State_q (State.__default.Bind State._default.LeftIdentity$A State._default.LeftIdentity$B (State.__default.Return State._default.LeftIdentity$A |x#0@@3|) |f#0@@8|))) (and (|State.__default.Return#canCall| State._default.LeftIdentity$A |x#0@@3|) (|State.__default.Bind#canCall| State._default.LeftIdentity$A State._default.LeftIdentity$B (State.__default.Return State._default.LeftIdentity$A |x#0@@3|) |f#0@@8|)))) (and (=> (= (ControlFlow 0 113) 112) anon117_Then_correct) (=> (= (ControlFlow 0 113) 109) anon117_Else_correct))))))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 105) (- 0 106)) (|State.M#Equal| (State.__default.Bind State._default.LeftIdentity$A State._default.LeftIdentity$B (State.__default.Return State._default.LeftIdentity$A |x#0@@3|) |f#0@@8|) ($Unbox DatatypeTypeType (Apply1 State._default.LeftIdentity$A (Tclass.State.M State._default.LeftIdentity$B) $Heap@3 |f#0@@8| |x#0@@3|)))) (=> (|State.M#Equal| (State.__default.Bind State._default.LeftIdentity$A State._default.LeftIdentity$B (State.__default.Return State._default.LeftIdentity$A |x#0@@3|) |f#0@@8|) ($Unbox DatatypeTypeType (Apply1 State._default.LeftIdentity$A (Tclass.State.M State._default.LeftIdentity$B) $Heap@3 |f#0@@8| |x#0@@3|))) (=> (= (ControlFlow 0 105) (- 0 104)) (|State.M#Equal| (State.__default.Bind State._default.LeftIdentity$A State._default.LeftIdentity$B (State.__default.Return State._default.LeftIdentity$A |x#0@@3|) |f#0@@8|) ($Unbox DatatypeTypeType (Apply1 State._default.LeftIdentity$A (Tclass.State.M State._default.LeftIdentity$B) $Heap@3 |f#0@@8| |x#0@@3|))))))))
(let ((anon171_Else_correct  (=> (|State.M#Equal| (State.__default.Bind State._default.LeftIdentity$A State._default.LeftIdentity$B (State.__default.Return State._default.LeftIdentity$A |x#0@@3|) |f#0@@8|) ($Unbox DatatypeTypeType (Apply1 State._default.LeftIdentity$A (Tclass.State.M State._default.LeftIdentity$B) $Heap@@4 |f#0@@8| |x#0@@3|))) (=> (and (= $Heap@3 $Heap@@4) (= (ControlFlow 0 107) 105)) GeneratedUnifiedExit_correct))))
(let ((anon167_Else_correct true))
(let ((anon167_Then_correct true))
(let ((anon166_Then_correct  (=> (= |$_Frame#l0_1_0@0| (|lambda#25| null |$lambdaHeap#0_1_0@0| alloc false)) (and (=> (= (ControlFlow 0 102) 100) anon167_Then_correct) (=> (= (ControlFlow 0 102) 101) anon167_Else_correct)))))
(let ((anon166_Else_correct true))
(let ((anon165_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0_1_0@0|) (or (= $Heap@@4 |$lambdaHeap#0_1_0@0|) ($HeapSucc $Heap@@4 |$lambdaHeap#0_1_0@0|))) (and (=> (= (ControlFlow 0 103) 102) anon166_Then_correct) (=> (= (ControlFlow 0 103) 99) anon166_Else_correct)))))
(let ((anon170_Else_correct true))
(let ((anon170_Then_correct true))
(let ((anon169_Then_correct  (=> (= |$_Frame#l0_1_1@0| (|lambda#25| null |$lambdaHeap#0_1_1@0| alloc false)) (and (=> (= (ControlFlow 0 96) 94) anon170_Then_correct) (=> (= (ControlFlow 0 96) 95) anon170_Else_correct)))))
(let ((anon169_Else_correct true))
(let ((anon168_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0_1_1@0|) (or (= $Heap@@4 |$lambdaHeap#0_1_1@0|) ($HeapSucc $Heap@@4 |$lambdaHeap#0_1_1@0|))) (and (=> (= (ControlFlow 0 97) 96) anon169_Then_correct) (=> (= (ControlFlow 0 97) 93) anon169_Else_correct)))))
(let ((anon168_Else_correct  (=> (forall ((|$l#0_1_2#heap#0| T@U) ) (!  (=> ($IsGoodHeap |$l#0_1_2#heap#0|) (State.M.State_q ($Unbox DatatypeTypeType (Apply1 State._default.LeftIdentity$A (Tclass.State.M State._default.LeftIdentity$B) |$l#0_1_2#heap#0| |f#0@@8| |x#0@@3|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1087|
)) (=> (and (= |f##0_1_0@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#4| (Handle1 (|lambda#31| State._default.LeftIdentity$A (Tclass.State.M State._default.LeftIdentity$B) |f#0@@8| |x#0@@3| TInt (Tclass._System.Tuple2 State._default.LeftIdentity$B TInt)) (|lambda#1| TInt) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false))))) ($LS $LZ)))) (= call1formal@State._default.FunEq$Y@0 (Tclass._System.Tuple2 State._default.LeftIdentity$B TInt))) (and (=> (= (ControlFlow 0 91) (- 0 92)) (forall ((|x#1| T@U) ) (!  (=> (and ($IsBox |x#1| TInt) ($IsAllocBox |x#1| TInt $Heap@@4)) (= (Apply1 TInt call1formal@State._default.FunEq$Y@0 $Heap@@4 |f##0_1_0@0| |x#1|) (Apply1 TInt call1formal@State._default.FunEq$Y@0 $Heap@@4 |g2#0@0| |x#1|)))
 :qid |StateMonaddfy.40:21|
 :skolemid |1085|
 :pattern ( (Apply1 TInt call1formal@State._default.FunEq$Y@0 $Heap@@4 |g2#0@0| |x#1|))
 :pattern ( (Apply1 TInt call1formal@State._default.FunEq$Y@0 $Heap@@4 |f##0_1_0@0| |x#1|))
))) (=> (forall ((|x#1@@0| T@U) ) (!  (=> (and ($IsBox |x#1@@0| TInt) ($IsAllocBox |x#1@@0| TInt $Heap@@4)) (= (Apply1 TInt call1formal@State._default.FunEq$Y@0 $Heap@@4 |f##0_1_0@0| |x#1@@0|) (Apply1 TInt call1formal@State._default.FunEq$Y@0 $Heap@@4 |g2#0@0| |x#1@@0|)))
 :qid |StateMonaddfy.40:21|
 :skolemid |1085|
 :pattern ( (Apply1 TInt call1formal@State._default.FunEq$Y@0 $Heap@@4 |g2#0@0| |x#1@@0|))
 :pattern ( (Apply1 TInt call1formal@State._default.FunEq$Y@0 $Heap@@4 |f##0_1_0@0| |x#1@@0|))
)) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (= |f##0_1_0@0| |g2#0@0|)) (and (= $Heap@@4 $Heap@0) (= (ControlFlow 0 91) (- 0 90)))) (|State.M#Equal| (|#State.M.State| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#4| (Handle1 (|lambda#31| State._default.LeftIdentity$A (Tclass.State.M State._default.LeftIdentity$B) |f#0@@8| |x#0@@3| TInt (Tclass._System.Tuple2 State._default.LeftIdentity$B TInt)) (|lambda#1| TInt) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false))))) ($LS $LZ)))) (|#State.M.State| |g2#0@0|)))))))))
(let ((anon165_Else_correct  (=> (forall ((|$l#0_1_1#heap#0| T@U) ) (!  (=> ($IsGoodHeap |$l#0_1_1#heap#0|) (State.M.State_q ($Unbox DatatypeTypeType (Apply1 State._default.LeftIdentity$A (Tclass.State.M State._default.LeftIdentity$B) |$l#0_1_1#heap#0| |f#0@@8| |x#0@@3|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1086|
)) (and (=> (= (ControlFlow 0 98) 97) anon168_Then_correct) (=> (= (ControlFlow 0 98) 91) anon168_Else_correct)))))
(let ((anon153_Else_correct true))
(let ((anon153_Then_correct true))
(let ((anon152_Then_correct  (=> (and (and (and (= (|#_System._tuple#2._#Make2| |x#0@@3| ($Box intType (int_2_U |s#0_2_0@0|))) (|#_System._tuple#2._#Make2| |_mcc#3#0_2_0| ($Box intType (int_2_U |_mcc#4#0_2_0|)))) ($IsBox |_mcc#3#0_2_0| State._default.LeftIdentity$A)) (and (= |let#0_2_0#0#0| |_mcc#4#0_2_0|) ($Is intType (int_2_U |let#0_2_0#0#0|) TInt))) (and (and (= |newState#Z#0_2_0@0| |let#0_2_0#0#0|) (= |let#0_2_1#0#0| |_mcc#3#0_2_0|)) (and ($IsBox |let#0_2_1#0#0| State._default.LeftIdentity$A) (= |a#Z#0_2_0@0| |let#0_2_1#0#0|)))) (and (=> (= (ControlFlow 0 87) 85) anon153_Then_correct) (=> (= (ControlFlow 0 87) 86) anon153_Else_correct)))))
(let ((anon152_Else_correct true))
(let ((anon151_Then_correct  (=> (= |$_Frame#l0_2_0@0| (|lambda#25| null |$lambdaHeap#0_2_0@0| alloc false)) (and (=> (= (ControlFlow 0 88) 87) anon152_Then_correct) (=> (= (ControlFlow 0 88) 84) anon152_Else_correct)))))
(let ((anon151_Else_correct true))
(let ((anon150_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0_2_0@0|) (or (= $Heap@@4 |$lambdaHeap#0_2_0@0|) ($HeapSucc $Heap@@4 |$lambdaHeap#0_2_0@0|))) (and (=> (= (ControlFlow 0 89) 88) anon151_Then_correct) (=> (= (ControlFlow 0 89) 83) anon151_Else_correct)))))
(let ((anon157_Else_correct true))
(let ((anon157_Then_correct true))
(let ((anon156_Then_correct  (=> (and (and (and (= (|#_System._tuple#2._#Make2| |x#0@@3| ($Box intType (int_2_U |s#0_2_1@0|))) (|#_System._tuple#2._#Make2| |_mcc#13#0_2_0| ($Box intType (int_2_U |_mcc#14#0_2_0|)))) ($IsBox |_mcc#13#0_2_0| State._default.LeftIdentity$A)) (and (= |let#0_2_3#0#0| |_mcc#14#0_2_0|) ($Is intType (int_2_U |let#0_2_3#0#0|) TInt))) (and (and (= |newState#Z#0_2_1@0| |let#0_2_3#0#0|) (= |let#0_2_4#0#0| |_mcc#13#0_2_0|)) (and ($IsBox |let#0_2_4#0#0| State._default.LeftIdentity$A) (= |a#Z#0_2_1@0| |let#0_2_4#0#0|)))) (and (=> (= (ControlFlow 0 79) 77) anon157_Then_correct) (=> (= (ControlFlow 0 79) 78) anon157_Else_correct)))))
(let ((anon156_Else_correct true))
(let ((anon155_Then_correct  (=> (= |$_Frame#l0_2_1@0| (|lambda#25| null |$lambdaHeap#0_2_1@0| alloc false)) (and (=> (= (ControlFlow 0 80) 79) anon156_Then_correct) (=> (= (ControlFlow 0 80) 76) anon156_Else_correct)))))
(let ((anon155_Else_correct true))
(let ((anon154_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0_2_1@0|) (or (= $Heap@@4 |$lambdaHeap#0_2_1@0|) ($HeapSucc $Heap@@4 |$lambdaHeap#0_2_1@0|))) (and (=> (= (ControlFlow 0 81) 80) anon155_Then_correct) (=> (= (ControlFlow 0 81) 75) anon155_Else_correct)))))
(let ((anon160_Else_correct true))
(let ((anon160_Then_correct true))
(let ((anon159_Then_correct  (=> (= |$_Frame#l0_2_2@0| (|lambda#25| null |$lambdaHeap#0_2_2@0| alloc false)) (and (=> (= (ControlFlow 0 72) 70) anon160_Then_correct) (=> (= (ControlFlow 0 72) 71) anon160_Else_correct)))))
(let ((anon159_Else_correct true))
(let ((anon158_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0_2_2@0|) (or (= $Heap@@4 |$lambdaHeap#0_2_2@0|) ($HeapSucc $Heap@@4 |$lambdaHeap#0_2_2@0|))) (and (=> (= (ControlFlow 0 73) 72) anon159_Then_correct) (=> (= (ControlFlow 0 73) 69) anon159_Else_correct)))))
(let ((anon163_Else_correct true))
(let ((anon163_Then_correct true))
(let ((anon162_Then_correct  (=> (= |$_Frame#l0_2_3@0| (|lambda#25| null |$lambdaHeap#0_2_3@0| alloc false)) (and (=> (= (ControlFlow 0 65) 63) anon163_Then_correct) (=> (= (ControlFlow 0 65) 64) anon163_Else_correct)))))
(let ((anon162_Else_correct true))
(let ((anon161_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0_2_3@0|) (or (= $Heap@1 |$lambdaHeap#0_2_3@0|) ($HeapSucc $Heap@1 |$lambdaHeap#0_2_3@0|))) (and (=> (= (ControlFlow 0 66) 65) anon162_Then_correct) (=> (= (ControlFlow 0 66) 62) anon162_Else_correct)))))
(let ((anon161_Else_correct  (=> (and (forall ((|$l#0_2_7#heap#0| T@U) ) (!  (=> ($IsGoodHeap |$l#0_2_7#heap#0|) (State.M.State_q ($Unbox DatatypeTypeType (Apply1 State._default.LeftIdentity$A (Tclass.State.M State._default.LeftIdentity$B) |$l#0_2_7#heap#0| |f#0@@8| |x#0@@3|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1093|
)) (= (ControlFlow 0 61) (- 0 60))) (|State.M#Equal| (|#State.M.State| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#4| (Handle1 (|lambda#43| |x#0@@3| |x#0@@3| State._default.LeftIdentity$A (Tclass.State.M State._default.LeftIdentity$B) |f#0@@8| TInt (Tclass._System.Tuple2 State._default.LeftIdentity$B TInt)) (|lambda#1| TInt) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false))))) ($LS $LZ)))) (|#State.M.State| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#4| (Handle1 (|lambda#31| State._default.LeftIdentity$A (Tclass.State.M State._default.LeftIdentity$B) |f#0@@8| |x#0@@3| TInt (Tclass._System.Tuple2 State._default.LeftIdentity$B TInt)) (|lambda#1| TInt) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false))))) ($LS $LZ))))))))
(let ((anon158_Else_correct  (=> (forall ((|$l#0_2_4#heap#0| T@U) ) (!  (=> ($IsGoodHeap |$l#0_2_4#heap#0|) (State.M.State_q ($Unbox DatatypeTypeType (Apply1 State._default.LeftIdentity$A (Tclass.State.M State._default.LeftIdentity$B) |$l#0_2_4#heap#0| |f#0@@8| |x#0@@3|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1091|
)) (=> (and (= |g##0_2_0@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#4| (Handle1 (|lambda#31| State._default.LeftIdentity$A (Tclass.State.M State._default.LeftIdentity$B) |f#0@@8| |x#0@@3| TInt (Tclass._System.Tuple2 State._default.LeftIdentity$B TInt)) (|lambda#1| TInt) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false))))) ($LS $LZ)))) (= call1formal@State._default.FunEq$Y@0@@0 (Tclass._System.Tuple2 State._default.LeftIdentity$B TInt))) (and (=> (= (ControlFlow 0 67) (- 0 68)) (forall ((|x#1@@1| T@U) ) (!  (=> (and ($IsBox |x#1@@1| TInt) ($IsAllocBox |x#1@@1| TInt $Heap@@4)) (= (Apply1 TInt call1formal@State._default.FunEq$Y@0@@0 $Heap@@4 |f##0_2_0@0| |x#1@@1|) (Apply1 TInt call1formal@State._default.FunEq$Y@0@@0 $Heap@@4 |g##0_2_0@0| |x#1@@1|)))
 :qid |StateMonaddfy.40:21|
 :skolemid |1085|
 :pattern ( (Apply1 TInt call1formal@State._default.FunEq$Y@0@@0 $Heap@@4 |g##0_2_0@0| |x#1@@1|))
 :pattern ( (Apply1 TInt call1formal@State._default.FunEq$Y@0@@0 $Heap@@4 |f##0_2_0@0| |x#1@@1|))
))) (=> (forall ((|x#1@@2| T@U) ) (!  (=> (and ($IsBox |x#1@@2| TInt) ($IsAllocBox |x#1@@2| TInt $Heap@@4)) (= (Apply1 TInt call1formal@State._default.FunEq$Y@0@@0 $Heap@@4 |f##0_2_0@0| |x#1@@2|) (Apply1 TInt call1formal@State._default.FunEq$Y@0@@0 $Heap@@4 |g##0_2_0@0| |x#1@@2|)))
 :qid |StateMonaddfy.40:21|
 :skolemid |1085|
 :pattern ( (Apply1 TInt call1formal@State._default.FunEq$Y@0@@0 $Heap@@4 |g##0_2_0@0| |x#1@@2|))
 :pattern ( (Apply1 TInt call1formal@State._default.FunEq$Y@0@@0 $Heap@@4 |f##0_2_0@0| |x#1@@2|))
)) (=> (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (and (= |f##0_2_0@0| |g##0_2_0@0|) (= $Heap@@4 $Heap@1))) (and (=> (= (ControlFlow 0 67) 66) anon161_Then_correct) (=> (= (ControlFlow 0 67) 61) anon161_Else_correct)))))))))
(let ((anon154_Else_correct  (=> (and (forall ((|$l#0_2_2#s#0| T@U) (|$l#0_2_2#heap#0| T@U) ) (!  (=> ($IsGoodHeap |$l#0_2_2#heap#0|) (and (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| |x#0@@3| ($Box intType |$l#0_2_2#s#0|))) (and (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| |x#0@@3| ($Box intType |$l#0_2_2#s#0|))) (let ((|a#0_2_2| (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |x#0@@3| ($Box intType |$l#0_2_2#s#0|)))))
(State.M.State_q ($Unbox DatatypeTypeType (Apply1 State._default.LeftIdentity$A (Tclass.State.M State._default.LeftIdentity$B) |$l#0_2_2#heap#0| |f#0@@8| |a#0_2_2|)))))))
 :qid |unknown.0:0|
 :skolemid |1090|
)) (= |f##0_2_0@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#4| (Handle1 (|lambda#43| |x#0@@3| |x#0@@3| State._default.LeftIdentity$A (Tclass.State.M State._default.LeftIdentity$B) |f#0@@8| TInt (Tclass._System.Tuple2 State._default.LeftIdentity$B TInt)) (|lambda#1| TInt) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false))))) ($LS $LZ))))) (and (=> (= (ControlFlow 0 74) 73) anon158_Then_correct) (=> (= (ControlFlow 0 74) 67) anon158_Else_correct)))))
(let ((anon150_Else_correct  (=> (forall ((|$l#0_2_1#s#0| T@U) (|$l#0_2_1#heap#0| T@U) ) (!  (=> ($IsGoodHeap |$l#0_2_1#heap#0|) (and (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| |x#0@@3| ($Box intType |$l#0_2_1#s#0|))) (and (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| |x#0@@3| ($Box intType |$l#0_2_1#s#0|))) (let ((|a#0_2_1| (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |x#0@@3| ($Box intType |$l#0_2_1#s#0|)))))
(State.M.State_q ($Unbox DatatypeTypeType (Apply1 State._default.LeftIdentity$A (Tclass.State.M State._default.LeftIdentity$B) |$l#0_2_1#heap#0| |f#0@@8| |a#0_2_1|)))))))
 :qid |unknown.0:0|
 :skolemid |1089|
)) (and (=> (= (ControlFlow 0 82) 81) anon154_Then_correct) (=> (= (ControlFlow 0 82) 74) anon154_Else_correct)))))
(let ((anon132_Else_correct true))
(let ((anon132_Then_correct true))
(let ((anon131_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0_3_1@0|) (or (= |$lambdaHeap#0_3_0@0| |$lambdaHeap#0_3_1@0|) ($HeapSucc |$lambdaHeap#0_3_0@0| |$lambdaHeap#0_3_1@0|))) (and (=> (= (ControlFlow 0 57) 55) anon132_Then_correct) (=> (= (ControlFlow 0 57) 56) anon132_Else_correct)))))
(let ((anon134_Else_correct true))
(let ((anon134_Then_correct true))
(let ((anon133_Then_correct  (=> (and (and (and (= ($Unbox DatatypeTypeType (Apply1 TInt (Tclass._System.Tuple2 State._default.LeftIdentity$A TInt) |$lambdaHeap#0_3_0@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#4| (Handle1 (|lambda#0| |x#0@@3|) (|lambda#1| TInt) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false))))) ($LS $LZ))) ($Box intType (int_2_U |s#0_3_0@0|)))) (|#_System._tuple#2._#Make2| |_mcc#0#0_3_0| ($Box intType (int_2_U |_mcc#1#0_3_0|)))) ($IsBox |_mcc#0#0_3_0| State._default.LeftIdentity$A)) (and (= |let#0_3_0#0#0| |_mcc#1#0_3_0|) ($Is intType (int_2_U |let#0_3_0#0#0|) TInt))) (and (and (= |newState#Z#0_3_0@0| |let#0_3_0#0#0|) (= |let#0_3_1#0#0| |_mcc#0#0_3_0|)) (and ($IsBox |let#0_3_1#0#0| State._default.LeftIdentity$A) (= |a#Z#0_3_0@0| |let#0_3_1#0#0|)))) (and (=> (= (ControlFlow 0 54) 52) anon134_Then_correct) (=> (= (ControlFlow 0 54) 53) anon134_Else_correct)))))
(let ((anon133_Else_correct true))
(let ((anon130_Then_correct  (=> (= |$_Frame#l0_3_0@0| (|lambda#25| null |$lambdaHeap#0_3_0@0| alloc false)) (and (and (=> (= (ControlFlow 0 58) 57) anon131_Then_correct) (=> (= (ControlFlow 0 58) 54) anon133_Then_correct)) (=> (= (ControlFlow 0 58) 51) anon133_Else_correct)))))
(let ((anon130_Else_correct true))
(let ((anon129_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0_3_0@0|) (or (= $Heap@@4 |$lambdaHeap#0_3_0@0|) ($HeapSucc $Heap@@4 |$lambdaHeap#0_3_0@0|))) (and (=> (= (ControlFlow 0 59) 58) anon130_Then_correct) (=> (= (ControlFlow 0 59) 50) anon130_Else_correct)))))
(let ((anon138_Else_correct true))
(let ((anon138_Then_correct true))
(let ((anon137_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0_3_3@0|) (or (= |$lambdaHeap#0_3_2@0| |$lambdaHeap#0_3_3@0|) ($HeapSucc |$lambdaHeap#0_3_2@0| |$lambdaHeap#0_3_3@0|))) (and (=> (= (ControlFlow 0 46) 44) anon138_Then_correct) (=> (= (ControlFlow 0 46) 45) anon138_Else_correct)))))
(let ((anon140_Else_correct true))
(let ((anon140_Then_correct true))
(let ((anon139_Then_correct  (=> (and (and (and (= ($Unbox DatatypeTypeType (Apply1 TInt (Tclass._System.Tuple2 State._default.LeftIdentity$A TInt) |$lambdaHeap#0_3_2@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#4| (Handle1 (|lambda#0| |x#0@@3|) (|lambda#1| TInt) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false))))) ($LS $LZ))) ($Box intType (int_2_U |s#0_3_2@0|)))) (|#_System._tuple#2._#Make2| |_mcc#7#0_3_0| ($Box intType (int_2_U |_mcc#8#0_3_0|)))) ($IsBox |_mcc#7#0_3_0| State._default.LeftIdentity$A)) (and (= |let#0_3_3#0#0| |_mcc#8#0_3_0|) ($Is intType (int_2_U |let#0_3_3#0#0|) TInt))) (and (and (= |newState#Z#0_3_1@0| |let#0_3_3#0#0|) (= |let#0_3_4#0#0| |_mcc#7#0_3_0|)) (and ($IsBox |let#0_3_4#0#0| State._default.LeftIdentity$A) (= |a#Z#0_3_1@0| |let#0_3_4#0#0|)))) (and (=> (= (ControlFlow 0 43) 41) anon140_Then_correct) (=> (= (ControlFlow 0 43) 42) anon140_Else_correct)))))
(let ((anon139_Else_correct true))
(let ((anon136_Then_correct  (=> (= |$_Frame#l0_3_2@0| (|lambda#25| null |$lambdaHeap#0_3_2@0| alloc false)) (and (and (=> (= (ControlFlow 0 47) 46) anon137_Then_correct) (=> (= (ControlFlow 0 47) 43) anon139_Then_correct)) (=> (= (ControlFlow 0 47) 40) anon139_Else_correct)))))
(let ((anon136_Else_correct true))
(let ((anon135_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0_3_2@0|) (or (= $Heap@@4 |$lambdaHeap#0_3_2@0|) ($HeapSucc $Heap@@4 |$lambdaHeap#0_3_2@0|))) (and (=> (= (ControlFlow 0 48) 47) anon136_Then_correct) (=> (= (ControlFlow 0 48) 39) anon136_Else_correct)))))
(let ((anon144_Else_correct true))
(let ((anon144_Then_correct true))
(let ((anon143_Then_correct  (=> (and (and (and (= (|#_System._tuple#2._#Make2| |x#0@@3| ($Box intType (int_2_U |s#0_3_4@0|))) (|#_System._tuple#2._#Make2| |_mcc#10#0_3_0| ($Box intType (int_2_U |_mcc#11#0_3_0|)))) ($IsBox |_mcc#10#0_3_0| State._default.LeftIdentity$A)) (and (= |let#0_3_6#0#0| |_mcc#11#0_3_0|) ($Is intType (int_2_U |let#0_3_6#0#0|) TInt))) (and (and (= |newState#Z#0_3_2@0| |let#0_3_6#0#0|) (= |let#0_3_7#0#0| |_mcc#10#0_3_0|)) (and ($IsBox |let#0_3_7#0#0| State._default.LeftIdentity$A) (= |a#Z#0_3_2@0| |let#0_3_7#0#0|)))) (and (=> (= (ControlFlow 0 35) 33) anon144_Then_correct) (=> (= (ControlFlow 0 35) 34) anon144_Else_correct)))))
(let ((anon143_Else_correct true))
(let ((anon142_Then_correct  (=> (= |$_Frame#l0_3_4@0| (|lambda#25| null |$lambdaHeap#0_3_4@0| alloc false)) (and (=> (= (ControlFlow 0 36) 35) anon143_Then_correct) (=> (= (ControlFlow 0 36) 32) anon143_Else_correct)))))
(let ((anon142_Else_correct true))
(let ((anon141_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0_3_4@0|) (or (= $Heap@@4 |$lambdaHeap#0_3_4@0|) ($HeapSucc $Heap@@4 |$lambdaHeap#0_3_4@0|))) (and (=> (= (ControlFlow 0 37) 36) anon142_Then_correct) (=> (= (ControlFlow 0 37) 31) anon142_Else_correct)))))
(let ((anon148_Else_correct true))
(let ((anon148_Then_correct true))
(let ((anon147_Then_correct  (=> (and (and (and (= (|#_System._tuple#2._#Make2| |x#0@@3| ($Box intType (int_2_U |s#0_3_5@0|))) (|#_System._tuple#2._#Make2| |_mcc#3#0_2_0| ($Box intType (int_2_U |_mcc#4#0_2_0|)))) ($IsBox |_mcc#3#0_2_0| State._default.LeftIdentity$A)) (and (= |let#0_3_9#0#0| |_mcc#4#0_2_0|) ($Is intType (int_2_U |let#0_3_9#0#0|) TInt))) (and (and (= |newState#Z#0_3_3@0| |let#0_3_9#0#0|) (= |let#0_3_10#0#0| |_mcc#3#0_2_0|)) (and ($IsBox |let#0_3_10#0#0| State._default.LeftIdentity$A) (= |a#Z#0_3_3@0| |let#0_3_10#0#0|)))) (and (=> (= (ControlFlow 0 26) 24) anon148_Then_correct) (=> (= (ControlFlow 0 26) 25) anon148_Else_correct)))))
(let ((anon147_Else_correct true))
(let ((anon146_Then_correct  (=> (= |$_Frame#l0_3_5@0| (|lambda#25| null |$lambdaHeap#0_3_5@0| alloc false)) (and (=> (= (ControlFlow 0 27) 26) anon147_Then_correct) (=> (= (ControlFlow 0 27) 23) anon147_Else_correct)))))
(let ((anon146_Else_correct true))
(let ((anon145_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0_3_5@0|) (or (= $Heap@2 |$lambdaHeap#0_3_5@0|) ($HeapSucc $Heap@2 |$lambdaHeap#0_3_5@0|))) (and (=> (= (ControlFlow 0 28) 27) anon146_Then_correct) (=> (= (ControlFlow 0 28) 22) anon146_Else_correct)))))
(let ((anon145_Else_correct  (=> (and (forall ((|$l#0_3_27#s#0| T@U) (|$l#0_3_27#heap#0| T@U) ) (!  (=> ($IsGoodHeap |$l#0_3_27#heap#0|) (and (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| |x#0@@3| ($Box intType |$l#0_3_27#s#0|))) (and (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| |x#0@@3| ($Box intType |$l#0_3_27#s#0|))) (let ((|a#0_3_7| (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |x#0@@3| ($Box intType |$l#0_3_27#s#0|)))))
(State.M.State_q ($Unbox DatatypeTypeType (Apply1 State._default.LeftIdentity$A (Tclass.State.M State._default.LeftIdentity$B) |$l#0_3_27#heap#0| |f#0@@8| |a#0_3_7|)))))))
 :qid |unknown.0:0|
 :skolemid |1098|
)) (= (ControlFlow 0 21) (- 0 20))) (|State.M#Equal| (|#State.M.State| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#111| TInt (Tclass._System.Tuple2 State._default.LeftIdentity$A TInt) (|lambda#4| (Handle1 (|lambda#0| |x#0@@3|) (|lambda#1| TInt) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false))))) TInt (Tclass._System.Tuple2 State._default.LeftIdentity$A TInt) (|lambda#4| (Handle1 (|lambda#0| |x#0@@3|) (|lambda#1| TInt) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false))))) State._default.LeftIdentity$A (Tclass.State.M State._default.LeftIdentity$B) |f#0@@8| TInt (Tclass._System.Tuple2 State._default.LeftIdentity$B TInt) (|lambda#1| TInt) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false)))) ($LS $LZ)))) (|#State.M.State| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#4| (Handle1 (|lambda#43| |x#0@@3| |x#0@@3| State._default.LeftIdentity$A (Tclass.State.M State._default.LeftIdentity$B) |f#0@@8| TInt (Tclass._System.Tuple2 State._default.LeftIdentity$B TInt)) (|lambda#1| TInt) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false))))) ($LS $LZ))))))))
(let ((anon141_Else_correct  (=> (forall ((|$l#0_3_24#s#0| T@U) (|$l#0_3_24#heap#0| T@U) ) (!  (=> ($IsGoodHeap |$l#0_3_24#heap#0|) (and (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| |x#0@@3| ($Box intType |$l#0_3_24#s#0|))) (and (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| |x#0@@3| ($Box intType |$l#0_3_24#s#0|))) (let ((|a#0_3_4| (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |x#0@@3| ($Box intType |$l#0_3_24#s#0|)))))
(State.M.State_q ($Unbox DatatypeTypeType (Apply1 State._default.LeftIdentity$A (Tclass.State.M State._default.LeftIdentity$B) |$l#0_3_24#heap#0| |f#0@@8| |a#0_3_4|)))))))
 :qid |unknown.0:0|
 :skolemid |1096|
)) (=> (and (= |g##0_3_0@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#4| (Handle1 (|lambda#43| |x#0@@3| |x#0@@3| State._default.LeftIdentity$A (Tclass.State.M State._default.LeftIdentity$B) |f#0@@8| TInt (Tclass._System.Tuple2 State._default.LeftIdentity$B TInt)) (|lambda#1| TInt) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false))))) ($LS $LZ)))) (= call1formal@State._default.FunEq$Y@0@@1 (Tclass._System.Tuple2 State._default.LeftIdentity$B TInt))) (and (=> (= (ControlFlow 0 29) (- 0 30)) (forall ((|x#1@@3| T@U) ) (!  (=> (and ($IsBox |x#1@@3| TInt) ($IsAllocBox |x#1@@3| TInt $Heap@@4)) (= (Apply1 TInt call1formal@State._default.FunEq$Y@0@@1 $Heap@@4 |f##0_3_0@0| |x#1@@3|) (Apply1 TInt call1formal@State._default.FunEq$Y@0@@1 $Heap@@4 |g##0_3_0@0| |x#1@@3|)))
 :qid |StateMonaddfy.40:21|
 :skolemid |1085|
 :pattern ( (Apply1 TInt call1formal@State._default.FunEq$Y@0@@1 $Heap@@4 |g##0_3_0@0| |x#1@@3|))
 :pattern ( (Apply1 TInt call1formal@State._default.FunEq$Y@0@@1 $Heap@@4 |f##0_3_0@0| |x#1@@3|))
))) (=> (forall ((|x#1@@4| T@U) ) (!  (=> (and ($IsBox |x#1@@4| TInt) ($IsAllocBox |x#1@@4| TInt $Heap@@4)) (= (Apply1 TInt call1formal@State._default.FunEq$Y@0@@1 $Heap@@4 |f##0_3_0@0| |x#1@@4|) (Apply1 TInt call1formal@State._default.FunEq$Y@0@@1 $Heap@@4 |g##0_3_0@0| |x#1@@4|)))
 :qid |StateMonaddfy.40:21|
 :skolemid |1085|
 :pattern ( (Apply1 TInt call1formal@State._default.FunEq$Y@0@@1 $Heap@@4 |g##0_3_0@0| |x#1@@4|))
 :pattern ( (Apply1 TInt call1formal@State._default.FunEq$Y@0@@1 $Heap@@4 |f##0_3_0@0| |x#1@@4|))
)) (=> (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (and (= |f##0_3_0@0| |g##0_3_0@0|) (= $Heap@@4 $Heap@2))) (and (=> (= (ControlFlow 0 29) 28) anon145_Then_correct) (=> (= (ControlFlow 0 29) 21) anon145_Else_correct)))))))))
(let ((anon135_Else_correct  (=> (and (forall ((|$l#0_3_14#s#0| T@U) (|$l#0_3_14#heap#0| T@U) ) (!  (=> ($IsGoodHeap |$l#0_3_14#heap#0|) (and (_System.Tuple2.___hMake2_q ($Unbox DatatypeTypeType (Apply1 TInt (Tclass._System.Tuple2 State._default.LeftIdentity$A TInt) |$l#0_3_14#heap#0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#4| (Handle1 (|lambda#0| |x#0@@3|) (|lambda#1| TInt) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false))))) ($LS $LZ))) ($Box intType |$l#0_3_14#s#0|)))) (and (_System.Tuple2.___hMake2_q ($Unbox DatatypeTypeType (Apply1 TInt (Tclass._System.Tuple2 State._default.LeftIdentity$A TInt) |$l#0_3_14#heap#0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#4| (Handle1 (|lambda#0| |x#0@@3|) (|lambda#1| TInt) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false))))) ($LS $LZ))) ($Box intType |$l#0_3_14#s#0|)))) (let ((|a#0_3_2| (_System.Tuple2._0 ($Unbox DatatypeTypeType (Apply1 TInt (Tclass._System.Tuple2 State._default.LeftIdentity$A TInt) |$l#0_3_14#heap#0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#4| (Handle1 (|lambda#0| |x#0@@3|) (|lambda#1| TInt) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false))))) ($LS $LZ))) ($Box intType |$l#0_3_14#s#0|))))))
(State.M.State_q ($Unbox DatatypeTypeType (Apply1 State._default.LeftIdentity$A (Tclass.State.M State._default.LeftIdentity$B) |$l#0_3_14#heap#0| |f#0@@8| |a#0_3_2|)))))))
 :qid |unknown.0:0|
 :skolemid |1095|
)) (= |f##0_3_0@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#111| TInt (Tclass._System.Tuple2 State._default.LeftIdentity$A TInt) (|lambda#4| (Handle1 (|lambda#0| |x#0@@3|) (|lambda#1| TInt) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false))))) TInt (Tclass._System.Tuple2 State._default.LeftIdentity$A TInt) (|lambda#4| (Handle1 (|lambda#0| |x#0@@3|) (|lambda#1| TInt) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false))))) State._default.LeftIdentity$A (Tclass.State.M State._default.LeftIdentity$B) |f#0@@8| TInt (Tclass._System.Tuple2 State._default.LeftIdentity$B TInt) (|lambda#1| TInt) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false)))) ($LS $LZ))))) (and (=> (= (ControlFlow 0 38) 37) anon141_Then_correct) (=> (= (ControlFlow 0 38) 29) anon141_Else_correct)))))
(let ((anon129_Else_correct  (=> (forall ((|$l#0_3_5#s#0| T@U) (|$l#0_3_5#heap#0| T@U) ) (!  (=> ($IsGoodHeap |$l#0_3_5#heap#0|) (and (_System.Tuple2.___hMake2_q ($Unbox DatatypeTypeType (Apply1 TInt (Tclass._System.Tuple2 State._default.LeftIdentity$A TInt) |$l#0_3_5#heap#0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#4| (Handle1 (|lambda#0| |x#0@@3|) (|lambda#1| TInt) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false))))) ($LS $LZ))) ($Box intType |$l#0_3_5#s#0|)))) (and (_System.Tuple2.___hMake2_q ($Unbox DatatypeTypeType (Apply1 TInt (Tclass._System.Tuple2 State._default.LeftIdentity$A TInt) |$l#0_3_5#heap#0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#4| (Handle1 (|lambda#0| |x#0@@3|) (|lambda#1| TInt) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false))))) ($LS $LZ))) ($Box intType |$l#0_3_5#s#0|)))) (let ((|a#0_3_1| (_System.Tuple2._0 ($Unbox DatatypeTypeType (Apply1 TInt (Tclass._System.Tuple2 State._default.LeftIdentity$A TInt) |$l#0_3_5#heap#0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#4| (Handle1 (|lambda#0| |x#0@@3|) (|lambda#1| TInt) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false))))) ($LS $LZ))) ($Box intType |$l#0_3_5#s#0|))))))
(State.M.State_q ($Unbox DatatypeTypeType (Apply1 State._default.LeftIdentity$A (Tclass.State.M State._default.LeftIdentity$B) |$l#0_3_5#heap#0| |f#0@@8| |a#0_3_1|)))))))
 :qid |unknown.0:0|
 :skolemid |1094|
)) (and (=> (= (ControlFlow 0 49) 48) anon135_Then_correct) (=> (= (ControlFlow 0 49) 38) anon135_Else_correct)))))
(let ((anon121_Else_correct true))
(let ((anon121_Then_correct true))
(let ((anon120_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0_4_0@0|) (or (= $Heap@@4 |$lambdaHeap#0_4_0@0|) ($HeapSucc $Heap@@4 |$lambdaHeap#0_4_0@0|))) (and (=> (= (ControlFlow 0 19) 17) anon121_Then_correct) (=> (= (ControlFlow 0 19) 18) anon121_Else_correct)))))
(let ((anon125_Else_correct true))
(let ((anon125_Then_correct true))
(let ((anon124_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0_4_2@0|) (or (= |$lambdaHeap#0_4_1@0| |$lambdaHeap#0_4_2@0|) ($HeapSucc |$lambdaHeap#0_4_1@0| |$lambdaHeap#0_4_2@0|))) (and (=> (= (ControlFlow 0 13) 11) anon125_Then_correct) (=> (= (ControlFlow 0 13) 12) anon125_Else_correct)))))
(let ((anon127_Else_correct true))
(let ((anon127_Then_correct true))
(let ((anon126_Then_correct  (=> (and (and (and (= ($Unbox DatatypeTypeType (Apply1 TInt (Tclass._System.Tuple2 State._default.LeftIdentity$A TInt) |$lambdaHeap#0_4_1@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#4| (Handle1 (|lambda#0| |x#0@@3|) (|lambda#1| TInt) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false))))) ($LS $LZ))) ($Box intType (int_2_U |s#0_4_1@0|)))) (|#_System._tuple#2._#Make2| |_mcc#0#0_3_0| ($Box intType (int_2_U |_mcc#1#0_3_0|)))) ($IsBox |_mcc#0#0_3_0| State._default.LeftIdentity$A)) (and (= |let#0_4_0#0#0| |_mcc#1#0_3_0|) ($Is intType (int_2_U |let#0_4_0#0#0|) TInt))) (and (and (= |newState#Z#0_4_0@0| |let#0_4_0#0#0|) (= |let#0_4_1#0#0| |_mcc#0#0_3_0|)) (and ($IsBox |let#0_4_1#0#0| State._default.LeftIdentity$A) (= |a#Z#0_4_0@0| |let#0_4_1#0#0|)))) (and (=> (= (ControlFlow 0 10) 8) anon127_Then_correct) (=> (= (ControlFlow 0 10) 9) anon127_Else_correct)))))
(let ((anon126_Else_correct true))
(let ((anon123_Then_correct  (=> (= |$_Frame#l0_4_1@0| (|lambda#25| null |$lambdaHeap#0_4_1@0| alloc false)) (and (and (=> (= (ControlFlow 0 14) 13) anon124_Then_correct) (=> (= (ControlFlow 0 14) 10) anon126_Then_correct)) (=> (= (ControlFlow 0 14) 7) anon126_Else_correct)))))
(let ((anon123_Else_correct true))
(let ((anon122_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0_4_1@0|) (or (= $Heap@@4 |$lambdaHeap#0_4_1@0|) ($HeapSucc $Heap@@4 |$lambdaHeap#0_4_1@0|))) (and (=> (= (ControlFlow 0 15) 14) anon123_Then_correct) (=> (= (ControlFlow 0 15) 6) anon123_Else_correct)))))
(let ((anon122_Else_correct  (=> (and (forall ((|$l#0_4_12#s#0| T@U) (|$l#0_4_12#heap#0| T@U) ) (!  (=> ($IsGoodHeap |$l#0_4_12#heap#0|) (and (_System.Tuple2.___hMake2_q ($Unbox DatatypeTypeType (Apply1 TInt (Tclass._System.Tuple2 State._default.LeftIdentity$A TInt) |$l#0_4_12#heap#0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#4| (Handle1 (|lambda#0| |x#0@@3|) (|lambda#1| TInt) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false))))) ($LS $LZ))) ($Box intType |$l#0_4_12#s#0|)))) (and (_System.Tuple2.___hMake2_q ($Unbox DatatypeTypeType (Apply1 TInt (Tclass._System.Tuple2 State._default.LeftIdentity$A TInt) |$l#0_4_12#heap#0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#4| (Handle1 (|lambda#0| |x#0@@3|) (|lambda#1| TInt) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false))))) ($LS $LZ))) ($Box intType |$l#0_4_12#s#0|)))) (let ((|a#0_4_1| (_System.Tuple2._0 ($Unbox DatatypeTypeType (Apply1 TInt (Tclass._System.Tuple2 State._default.LeftIdentity$A TInt) |$l#0_4_12#heap#0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#4| (Handle1 (|lambda#0| |x#0@@3|) (|lambda#1| TInt) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false))))) ($LS $LZ))) ($Box intType |$l#0_4_12#s#0|))))))
(State.M.State_q ($Unbox DatatypeTypeType (Apply1 State._default.LeftIdentity$A (Tclass.State.M State._default.LeftIdentity$B) |$l#0_4_12#heap#0| |f#0@@8| |a#0_4_1|)))))))
 :qid |unknown.0:0|
 :skolemid |1099|
)) (= (ControlFlow 0 5) (- 0 4))) (|State.M#Equal| (State.__default.Bind State._default.LeftIdentity$A State._default.LeftIdentity$B (Lit DatatypeTypeType (|#State.M.State| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#4| (Handle1 (|lambda#0| |x#0@@3|) (|lambda#1| TInt) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false))))) ($LS $LZ))))) |f#0@@8|) (|#State.M.State| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#111| TInt (Tclass._System.Tuple2 State._default.LeftIdentity$A TInt) (|lambda#4| (Handle1 (|lambda#0| |x#0@@3|) (|lambda#1| TInt) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false))))) TInt (Tclass._System.Tuple2 State._default.LeftIdentity$A TInt) (|lambda#4| (Handle1 (|lambda#0| |x#0@@3|) (|lambda#1| TInt) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false))))) State._default.LeftIdentity$A (Tclass.State.M State._default.LeftIdentity$B) |f#0@@8| TInt (Tclass._System.Tuple2 State._default.LeftIdentity$B TInt) (|lambda#1| TInt) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false)))) ($LS $LZ))))))))
(let ((anon120_Else_correct  (=> (and (= |##m#0_4_0@0| (Lit DatatypeTypeType (|#State.M.State| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#4| (Handle1 (|lambda#0| |x#0@@3|) (|lambda#1| TInt) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false))))) ($LS $LZ)))))) ($IsAlloc DatatypeTypeType |##m#0_4_0@0| (Tclass.State.M State._default.LeftIdentity$A) $Heap@@4)) (=> (and (and ($IsAlloc HandleTypeType |f#0@@8| (Tclass._System.___hTotalFunc1 State._default.LeftIdentity$A (Tclass.State.M State._default.LeftIdentity$B)) $Heap@@4) (|State.__default.Bind#canCall| State._default.LeftIdentity$A State._default.LeftIdentity$B (Lit DatatypeTypeType (|#State.M.State| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#4| (Handle1 (|lambda#0| |x#0@@3|) (|lambda#1| TInt) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false))))) ($LS $LZ))))) |f#0@@8|)) (and (State.M.State_q (State.__default.Bind State._default.LeftIdentity$A State._default.LeftIdentity$B (Lit DatatypeTypeType (|#State.M.State| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#4| (Handle1 (|lambda#0| |x#0@@3|) (|lambda#1| TInt) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false))))) ($LS $LZ))))) |f#0@@8|)) (|State.__default.Bind#canCall| State._default.LeftIdentity$A State._default.LeftIdentity$B (Lit DatatypeTypeType (|#State.M.State| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#4| (Handle1 (|lambda#0| |x#0@@3|) (|lambda#1| TInt) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false))))) ($LS $LZ))))) |f#0@@8|))) (and (=> (= (ControlFlow 0 16) 15) anon122_Then_correct) (=> (= (ControlFlow 0 16) 5) anon122_Else_correct))))))
(let ((anon171_Then_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (|State.M#Equal| (|#State.M.State| |g2#0@0|) ($Unbox DatatypeTypeType (Apply1 State._default.LeftIdentity$A (Tclass.State.M State._default.LeftIdentity$B) $Heap@@4 |f#0@@8| |x#0@@3|))))))
(let ((anon115_Then_correct true))
(let ((anon113_Else_correct  (=> (and (= |let#0#0#0| (Lit DatatypeTypeType (|#State.M.State| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#4| (Handle1 (|lambda#0| |x#0@@3|) (|lambda#1| TInt) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false))))) ($LS $LZ)))))) ($Is DatatypeTypeType |let#0#0#0| (Tclass.State.M State._default.LeftIdentity$A))) (=> (and (and (and (State.M.State_q |let#0#0#0|) (= (|#State.M.State| |h#0@0|) |let#0#0#0|)) (and ($Is HandleTypeType |g2#0@0| (Tclass._System.___hTotalFunc1 TInt (Tclass._System.Tuple2 State._default.LeftIdentity$B TInt))) ($IsAlloc HandleTypeType |g2#0@0| (Tclass._System.___hTotalFunc1 TInt (Tclass._System.Tuple2 State._default.LeftIdentity$B TInt)) $Heap@@4))) (and (and (= |let#1#0#0| ($Unbox DatatypeTypeType (Apply1 State._default.LeftIdentity$A (Tclass.State.M State._default.LeftIdentity$B) $Heap@@4 |f#0@@8| |x#0@@3|))) ($Is DatatypeTypeType |let#1#0#0| (Tclass.State.M State._default.LeftIdentity$B))) (and (State.M.State_q |let#1#0#0|) (= (|#State.M.State| |g2#0@0|) |let#1#0#0|)))) (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 114) 1) anon115_Then_correct) (=> (= (ControlFlow 0 114) 113) anon116_Then_correct)) (=> (= (ControlFlow 0 114) 3) anon171_Then_correct)) (=> (= (ControlFlow 0 114) 107) anon171_Else_correct)) (=> (= (ControlFlow 0 114) 103) anon165_Then_correct)) (=> (= (ControlFlow 0 114) 98) anon165_Else_correct)) (=> (= (ControlFlow 0 114) 89) anon150_Then_correct)) (=> (= (ControlFlow 0 114) 82) anon150_Else_correct)) (=> (= (ControlFlow 0 114) 59) anon129_Then_correct)) (=> (= (ControlFlow 0 114) 49) anon129_Else_correct)) (=> (= (ControlFlow 0 114) 19) anon120_Then_correct)) (=> (= (ControlFlow 0 114) 16) anon120_Else_correct))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#25| null $Heap@@4 alloc false)) (=> (and ($Is HandleTypeType |h#0@0| (Tclass._System.___hTotalFunc1 TInt (Tclass._System.Tuple2 State._default.LeftIdentity$A TInt))) ($IsAlloc HandleTypeType |h#0@0| (Tclass._System.___hTotalFunc1 TInt (Tclass._System.Tuple2 State._default.LeftIdentity$A TInt)) $Heap@@4)) (and (=> (= (ControlFlow 0 118) 117) anon113_Then_correct) (=> (= (ControlFlow 0 118) 114) anon113_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@4) ($IsHeapAnchor $Heap@@4)) (and ($IsBox |x#0@@3| State._default.LeftIdentity$A) ($IsAllocBox |x#0@@3| State._default.LeftIdentity$A $Heap@@4))) (and (and ($Is HandleTypeType |f#0@@8| (Tclass._System.___hTotalFunc1 State._default.LeftIdentity$A (Tclass.State.M State._default.LeftIdentity$B))) ($IsAlloc HandleTypeType |f#0@@8| (Tclass._System.___hTotalFunc1 State._default.LeftIdentity$A (Tclass.State.M State._default.LeftIdentity$B)) $Heap@@4)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 119) 118)))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
