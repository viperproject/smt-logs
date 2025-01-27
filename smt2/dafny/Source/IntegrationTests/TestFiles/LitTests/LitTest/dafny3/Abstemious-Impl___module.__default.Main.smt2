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
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun Tagclass._System.___hPartialFunc1 () T@U)
(declare-fun Tagclass._System.___hTotalFunc1 () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun Tagclass._System.___hFunc2 () T@U)
(declare-fun Tagclass._System.___hPartialFunc2 () T@U)
(declare-fun Tagclass._System.___hTotalFunc2 () T@U)
(declare-fun Tagclass._module.Stream () T@U)
(declare-fun Tagclass._module.List () T@U)
(declare-fun |##_module.List.Nil| () T@U)
(declare-fun |##_module.List.ListCons| () T@U)
(declare-fun |##_module.Stream.Cons| () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
(declare-fun |tytagFamily$_#PartialFunc1| () T@U)
(declare-fun |tytagFamily$_#TotalFunc1| () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun |tytagFamily$_#Func2| () T@U)
(declare-fun |tytagFamily$_#PartialFunc2| () T@U)
(declare-fun |tytagFamily$_#TotalFunc2| () T@U)
(declare-fun tytagFamily$Stream () T@U)
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
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun Reads2 (T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun |_module.__default.plus#Handle| () T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.addPair (T@U T@U) T@U)
(declare-fun |_module.__default.addPair#canCall| (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Stream (T@U) T@U)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun _module.__default.zip (T@U T@U T@U T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.__default.zip#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun _module.Stream.Cons_q (T@U) Bool)
(declare-fun _module.Stream.tail (T@U) T@U)
(declare-fun |#_module.Stream.Cons| (T@U T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun _module.Stream.head (T@U) T@U)
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
(declare-fun |lambda#4| (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hTotalFunc2 (T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc2 (T@U T@U T@U) T@U)
(declare-fun Requires2 (T@U T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun $OneHeap () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun Tclass._System.___hFunc2 (T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hFunc2_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc2_1 (T@U) T@U)
(declare-fun Tclass._System.___hFunc2_2 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc2_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc2_1 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc2_2 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc2_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc2_1 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc2_2 (T@U) T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.List.Nil| () T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun _module.__default.from (T@U Int) T@U)
(declare-fun |_module.__default.from#canCall| (Int) Bool)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass._module.List (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun _module.__default.ones (T@U) T@U)
(declare-fun |_module.__default.ones#canCall| () Bool)
(declare-fun _module.__default.OhOnes (T@U) T@U)
(declare-fun |_module.__default.OhOnes#canCall| () Bool)
(declare-fun _module.__default.fib (T@U) T@U)
(declare-fun |_module.__default.fib#canCall| () Bool)
(declare-fun _module.__default.Fib (T@U) T@U)
(declare-fun |_module.__default.Fib#canCall| () Bool)
(declare-fun _module.__default.Fib0 (T@U) T@U)
(declare-fun |_module.__default.Fib0#canCall| () Bool)
(declare-fun _module.__default.Fib1 (T@U) T@U)
(declare-fun |_module.__default.Fib1#canCall| () Bool)
(declare-fun null () T@U)
(declare-fun _module.__default.take (T@U T@U Int T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |_module.__default.take#canCall| (T@U Int T@U) Bool)
(declare-fun |#_module.List.ListCons| (T@U T@U) T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun _module.__default.Combine (T@U T@U T@U T@U T@U) T@U)
(declare-fun |_module.__default.Combine#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun Apply2 (T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun _module.__default.plus1 (Int) Int)
(declare-fun |_module.__default.plus1#canCall| (Int) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun _module.__default.add (T@U T@U T@U) T@U)
(declare-fun |_module.__default.add#canCall| (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun _module.List.Nil_q (T@U) Bool)
(declare-fun _module.List.ListCons_q (T@U) Bool)
(declare-fun $LZ () T@U)
(declare-fun _module.__default.plus (Int Int) Int)
(declare-fun |_module.__default.plus#canCall| (Int Int) Bool)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun |_module.__default.plus1#Handle| () T@U)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun |_module.__default.plus1#requires| (Int) Bool)
(declare-fun AtLayer (T@T T@U T@U) T@U)
(declare-fun LayerTypeType () T@T)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun |_module.__default.squares#canCall| () Bool)
(declare-fun |_module.__default.Map#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun |lambda#7| (T@U) T@U)
(declare-fun |lambda#3| () T@U)
(declare-fun |lambda#6| (T@U) T@U)
(declare-fun SetRef_to_SetBox (T@U) T@U)
(declare-fun |lambda#5| (Bool) T@U)
(declare-fun _module.__default.squares () T@U)
(declare-fun _module.__default.Map (T@U T@U T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1 (T@U T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1 (T@U T@U) T@U)
(declare-fun Mul (Int Int) Int)
(declare-fun |_module.__default.plus#requires| (Int Int) Bool)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _module.List.head (T@U) T@U)
(declare-fun _module.List.tail (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tclass._module.Stream_0 (T@U) T@U)
(declare-fun Tclass._module.List_0 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun |char#FromInt| (Int) T@U)
(declare-fun |char#ToInt| (T@U) Int)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
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
(assert (distinct TInt TagInt TagSet alloc Tagclass._System.nat Tagclass._System.object? Tagclass._System.object Tagclass._System.___hFunc1 Tagclass._System.___hPartialFunc1 Tagclass._System.___hTotalFunc1 |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass._System.___hFunc2 Tagclass._System.___hPartialFunc2 Tagclass._System.___hTotalFunc2 Tagclass._module.Stream Tagclass._module.List |##_module.List.Nil| |##_module.List.ListCons| |##_module.Stream.Cons| tytagFamily$nat tytagFamily$object |tytagFamily$_#Func1| |tytagFamily$_#PartialFunc1| |tytagFamily$_#TotalFunc1| |tytagFamily$_tuple#2| |tytagFamily$_#Func2| |tytagFamily$_#PartialFunc2| |tytagFamily$_#TotalFunc2| tytagFamily$Stream tytagFamily$List)
)
(assert (forall (($bx T@U) ($heap T@U) (|$fh$0x#0| T@U) (|$fh$0x#1| T@U) ) (! (= (|Set#IsMember| (Reads2 TInt TInt TInt $heap |_module.__default.plus#Handle| |$fh$0x#0| |$fh$0x#1|) $bx) false)
 :qid |unknown.0:0|
 :skolemid |607|
 :pattern ( (|Set#IsMember| (Reads2 TInt TInt TInt $heap |_module.__default.plus#Handle| |$fh$0x#0| |$fh$0x#1|) $bx))
)))
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor DatatypeTypeType) 3))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly T@U) (|a#0| T@U) ) (!  (=> (or (|_module.__default.addPair#canCall| |a#0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |a#0| (Tclass._module.Stream (Tclass._System.Tuple2 TInt TInt))))) ($Is DatatypeTypeType (_module.__default.addPair $ly |a#0|) (Tclass._module.Stream TInt)))
 :qid |Abstemiousdfy.83:24|
 :skolemid |670|
 :pattern ( (_module.__default.addPair $ly |a#0|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.zip$T T@U) (_module._default.zip$U T@U) ($ly@@0 T@U) (|a#0@@0| T@U) (|b#0| T@U) ) (!  (=> (or (|_module.__default.zip#canCall| _module._default.zip$T _module._default.zip$U |a#0@@0| |b#0|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |a#0@@0| (Tclass._module.Stream _module._default.zip$T)) ($Is DatatypeTypeType |b#0| (Tclass._module.Stream _module._default.zip$U))))) (and (and (and (_module.Stream.Cons_q |a#0@@0|) (_module.Stream.Cons_q |b#0|)) (and (and (_module.Stream.Cons_q |a#0@@0|) (_module.Stream.Cons_q |b#0|)) (|_module.__default.zip#canCall| _module._default.zip$T _module._default.zip$U (_module.Stream.tail |a#0@@0|) (_module.Stream.tail |b#0|)))) (= (_module.__default.zip _module._default.zip$T _module._default.zip$U ($LS $ly@@0) |a#0@@0| |b#0|) (|#_module.Stream.Cons| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| (_module.Stream.head |a#0@@0|) (_module.Stream.head |b#0|))) (_module.__default.zip _module._default.zip$T _module._default.zip$U $ly@@0 (_module.Stream.tail |a#0@@0|) (_module.Stream.tail |b#0|))))))
 :qid |unknown.0:0|
 :skolemid |666|
 :pattern ( (_module.__default.zip _module._default.zip$T _module._default.zip$U ($LS $ly@@0) |a#0@@0| |b#0|))
))))
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
))) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 4)
 :qid |ctor:MapType1Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@4 arg1@@1))
))) (= (Ctor refType) 5)) (= (Ctor FieldType) 6)) (= (Ctor BoxType) 7)) (= (Ctor SetType) 8)))
(assert (forall ((t0@@1 T@U) (t1@@1 T@U) (heap T@U) (h T@U) (r T@U) (rd T@U) (bx0 T@U) (bx T@U) ) (! (= (|Set#IsMember| (Reads1 t0@@1 t1@@1 heap (Handle1 h r rd) bx0) bx) (|Set#IsMember| (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType rd heap bx0) bx))
 :qid |unknown.0:0|
 :skolemid |372|
 :pattern ( (|Set#IsMember| (Reads1 t0@@1 t1@@1 heap (Handle1 h r rd) bx0) bx))
)))
(assert (forall ((|l#0| T@U) (|$l#2#heap#0| T@U) (|$l#2#x#0| T@U) ) (! (= (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#4| |l#0|) |$l#2#heap#0| |$l#2#x#0|)) ($IsBox |$l#2#x#0| |l#0|))
 :qid |DafnyPreludebpl.27:1|
 :skolemid |823|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#4| |l#0|) |$l#2#heap#0| |$l#2#x#0|))
)))
(assert (= (Ctor HandleTypeType) 9))
(assert (forall ((|#$T0| T@U) (|#$T1| T@U) (|#$R| T@U) (|f#0| T@U) ) (! (= ($Is HandleTypeType |f#0| (Tclass._System.___hTotalFunc2 |#$T0| |#$T1| |#$R|))  (and ($Is HandleTypeType |f#0| (Tclass._System.___hPartialFunc2 |#$T0| |#$T1| |#$R|)) (forall ((|x0#0| T@U) (|x1#0| T@U) ) (!  (=> (and ($IsBox |x0#0| |#$T0|) ($IsBox |x1#0| |#$T1|)) (Requires2 |#$T0| |#$T1| |#$R| $OneHeap |f#0| |x0#0| |x1#0|))
 :qid |unknown.0:0|
 :skolemid |525|
))))
 :qid |unknown.0:0|
 :skolemid |526|
 :pattern ( ($Is HandleTypeType |f#0| (Tclass._System.___hTotalFunc2 |#$T0| |#$T1| |#$R|)))
)))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$T1@@0| T@U) (|#$R@@0| T@U) ) (! (= (Tclass._System.___hFunc2_0 (Tclass._System.___hFunc2 |#$T0@@0| |#$T1@@0| |#$R@@0|)) |#$T0@@0|)
 :qid |unknown.0:0|
 :skolemid |480|
 :pattern ( (Tclass._System.___hFunc2 |#$T0@@0| |#$T1@@0| |#$R@@0|))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$T1@@1| T@U) (|#$R@@1| T@U) ) (! (= (Tclass._System.___hFunc2_1 (Tclass._System.___hFunc2 |#$T0@@1| |#$T1@@1| |#$R@@1|)) |#$T1@@1|)
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( (Tclass._System.___hFunc2 |#$T0@@1| |#$T1@@1| |#$R@@1|))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$T1@@2| T@U) (|#$R@@2| T@U) ) (! (= (Tclass._System.___hFunc2_2 (Tclass._System.___hFunc2 |#$T0@@2| |#$T1@@2| |#$R@@2|)) |#$R@@2|)
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( (Tclass._System.___hFunc2 |#$T0@@2| |#$T1@@2| |#$R@@2|))
)))
(assert (forall ((|#$T0@@3| T@U) (|#$T1@@3| T@U) (|#$R@@3| T@U) ) (! (= (Tclass._System.___hPartialFunc2_0 (Tclass._System.___hPartialFunc2 |#$T0@@3| |#$T1@@3| |#$R@@3|)) |#$T0@@3|)
 :qid |unknown.0:0|
 :skolemid |513|
 :pattern ( (Tclass._System.___hPartialFunc2 |#$T0@@3| |#$T1@@3| |#$R@@3|))
)))
(assert (forall ((|#$T0@@4| T@U) (|#$T1@@4| T@U) (|#$R@@4| T@U) ) (! (= (Tclass._System.___hPartialFunc2_1 (Tclass._System.___hPartialFunc2 |#$T0@@4| |#$T1@@4| |#$R@@4|)) |#$T1@@4|)
 :qid |unknown.0:0|
 :skolemid |514|
 :pattern ( (Tclass._System.___hPartialFunc2 |#$T0@@4| |#$T1@@4| |#$R@@4|))
)))
(assert (forall ((|#$T0@@5| T@U) (|#$T1@@5| T@U) (|#$R@@5| T@U) ) (! (= (Tclass._System.___hPartialFunc2_2 (Tclass._System.___hPartialFunc2 |#$T0@@5| |#$T1@@5| |#$R@@5|)) |#$R@@5|)
 :qid |unknown.0:0|
 :skolemid |515|
 :pattern ( (Tclass._System.___hPartialFunc2 |#$T0@@5| |#$T1@@5| |#$R@@5|))
)))
(assert (forall ((|#$T0@@6| T@U) (|#$T1@@6| T@U) (|#$R@@6| T@U) ) (! (= (Tclass._System.___hTotalFunc2_0 (Tclass._System.___hTotalFunc2 |#$T0@@6| |#$T1@@6| |#$R@@6|)) |#$T0@@6|)
 :qid |unknown.0:0|
 :skolemid |521|
 :pattern ( (Tclass._System.___hTotalFunc2 |#$T0@@6| |#$T1@@6| |#$R@@6|))
)))
(assert (forall ((|#$T0@@7| T@U) (|#$T1@@7| T@U) (|#$R@@7| T@U) ) (! (= (Tclass._System.___hTotalFunc2_1 (Tclass._System.___hTotalFunc2 |#$T0@@7| |#$T1@@7| |#$R@@7|)) |#$T1@@7|)
 :qid |unknown.0:0|
 :skolemid |522|
 :pattern ( (Tclass._System.___hTotalFunc2 |#$T0@@7| |#$T1@@7| |#$R@@7|))
)))
(assert (forall ((|#$T0@@8| T@U) (|#$T1@@8| T@U) (|#$R@@8| T@U) ) (! (= (Tclass._System.___hTotalFunc2_2 (Tclass._System.___hTotalFunc2 |#$T0@@8| |#$T1@@8| |#$R@@8|)) |#$R@@8|)
 :qid |unknown.0:0|
 :skolemid |523|
 :pattern ( (Tclass._System.___hTotalFunc2 |#$T0@@8| |#$T1@@8| |#$R@@8|))
)))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |468|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@1 T@U) (|a#0@@1| T@U) ) (!  (=> (or (|_module.__default.addPair#canCall| |a#0@@1|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |a#0@@1| (Tclass._module.Stream (Tclass._System.Tuple2 TInt TInt))))) (and (and (and (and (_module.Stream.Cons_q |a#0@@1|) (_System.Tuple2.___hMake2_q ($Unbox DatatypeTypeType (_module.Stream.head |a#0@@1|)))) (and (_module.Stream.Cons_q |a#0@@1|) (_System.Tuple2.___hMake2_q ($Unbox DatatypeTypeType (_module.Stream.head |a#0@@1|))))) (and (_module.Stream.Cons_q |a#0@@1|) (|_module.__default.addPair#canCall| (_module.Stream.tail |a#0@@1|)))) (= (_module.__default.addPair ($LS $ly@@1) |a#0@@1|) (|#_module.Stream.Cons| ($Box intType (int_2_U (+ (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (_module.Stream.head |a#0@@1|))))) (U_2_int ($Unbox intType (_System.Tuple2._1 ($Unbox DatatypeTypeType (_module.Stream.head |a#0@@1|)))))))) (_module.__default.addPair $ly@@1 (_module.Stream.tail |a#0@@1|))))))
 :qid |Abstemiousdfy.83:24|
 :skolemid |672|
 :pattern ( (_module.__default.addPair ($LS $ly@@1) |a#0@@1|))
))))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#_module.List.Nil|) |##_module.List.Nil|))
(assert (forall ((_module.Stream$T T@U) (d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 (Tclass._module.Stream _module.Stream$T)) (_module.Stream.Cons_q d@@0))
 :qid |unknown.0:0|
 :skolemid |809|
 :pattern ( (_module.Stream.Cons_q d@@0) ($Is DatatypeTypeType d@@0 (Tclass._module.Stream _module.Stream$T)))
)))
(assert (forall ((|#$T0@@9| T@U) (|#$T1@@9| T@U) (|#$R@@9| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc2 |#$T0@@9| |#$T1@@9| |#$R@@9|)) Tagclass._System.___hFunc2) (= (TagFamily (Tclass._System.___hFunc2 |#$T0@@9| |#$T1@@9| |#$R@@9|)) |tytagFamily$_#Func2|))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( (Tclass._System.___hFunc2 |#$T0@@9| |#$T1@@9| |#$R@@9|))
)))
(assert (forall ((|#$T0@@10| T@U) (|#$T1@@10| T@U) (|#$R@@10| T@U) ) (!  (and (= (Tag (Tclass._System.___hPartialFunc2 |#$T0@@10| |#$T1@@10| |#$R@@10|)) Tagclass._System.___hPartialFunc2) (= (TagFamily (Tclass._System.___hPartialFunc2 |#$T0@@10| |#$T1@@10| |#$R@@10|)) |tytagFamily$_#PartialFunc2|))
 :qid |unknown.0:0|
 :skolemid |512|
 :pattern ( (Tclass._System.___hPartialFunc2 |#$T0@@10| |#$T1@@10| |#$R@@10|))
)))
(assert (forall ((|#$T0@@11| T@U) (|#$T1@@11| T@U) (|#$R@@11| T@U) ) (!  (and (= (Tag (Tclass._System.___hTotalFunc2 |#$T0@@11| |#$T1@@11| |#$R@@11|)) Tagclass._System.___hTotalFunc2) (= (TagFamily (Tclass._System.___hTotalFunc2 |#$T0@@11| |#$T1@@11| |#$R@@11|)) |tytagFamily$_#TotalFunc2|))
 :qid |unknown.0:0|
 :skolemid |520|
 :pattern ( (Tclass._System.___hTotalFunc2 |#$T0@@11| |#$T1@@11| |#$R@@11|))
)))
(assert (forall ((|#$T0@@12| T@U) (|#$T1@@12| T@U) (|#$R@@12| T@U) (bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 (Tclass._System.___hFunc2 |#$T0@@12| |#$T1@@12| |#$R@@12|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@0)) bx@@0) ($Is HandleTypeType ($Unbox HandleTypeType bx@@0) (Tclass._System.___hFunc2 |#$T0@@12| |#$T1@@12| |#$R@@12|))))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( ($IsBox bx@@0 (Tclass._System.___hFunc2 |#$T0@@12| |#$T1@@12| |#$R@@12|)))
)))
(assert (forall ((|#$T0@@13| T@U) (|#$T1@@13| T@U) (|#$R@@13| T@U) (bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 (Tclass._System.___hPartialFunc2 |#$T0@@13| |#$T1@@13| |#$R@@13|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@1)) bx@@1) ($Is HandleTypeType ($Unbox HandleTypeType bx@@1) (Tclass._System.___hPartialFunc2 |#$T0@@13| |#$T1@@13| |#$R@@13|))))
 :qid |unknown.0:0|
 :skolemid |516|
 :pattern ( ($IsBox bx@@1 (Tclass._System.___hPartialFunc2 |#$T0@@13| |#$T1@@13| |#$R@@13|)))
)))
(assert (forall ((|#$T0@@14| T@U) (|#$T1@@14| T@U) (|#$R@@14| T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass._System.___hTotalFunc2 |#$T0@@14| |#$T1@@14| |#$R@@14|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@2)) bx@@2) ($Is HandleTypeType ($Unbox HandleTypeType bx@@2) (Tclass._System.___hTotalFunc2 |#$T0@@14| |#$T1@@14| |#$R@@14|))))
 :qid |unknown.0:0|
 :skolemid |524|
 :pattern ( ($IsBox bx@@2 (Tclass._System.___hTotalFunc2 |#$T0@@14| |#$T1@@14| |#$R@@14|)))
)))
(assert (forall ((f T@U) (t0@@2 T@U) (t1@@2 T@U) (u0@@2 T@U) (u1@@2 T@U) ) (!  (=> (and (and ($Is HandleTypeType f (Tclass._System.___hFunc1 t0@@2 t1@@2)) (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 u0@@2) ($IsBox bx@@3 t0@@2))
 :qid |unknown.0:0|
 :skolemid |389|
 :pattern ( ($IsBox bx@@3 u0@@2))
 :pattern ( ($IsBox bx@@3 t0@@2))
))) (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 t1@@2) ($IsBox bx@@4 u1@@2))
 :qid |unknown.0:0|
 :skolemid |390|
 :pattern ( ($IsBox bx@@4 t1@@2))
 :pattern ( ($IsBox bx@@4 u1@@2))
))) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0@@2 u1@@2)))
 :qid |unknown.0:0|
 :skolemid |391|
 :pattern ( ($Is HandleTypeType f (Tclass._System.___hFunc1 t0@@2 t1@@2)) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0@@2 u1@@2)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@2 T@U) (|n#0| Int) ) (!  (=> (or (|_module.__default.from#canCall| |n#0|) (< 1 $FunctionContextHeight)) ($Is DatatypeTypeType (_module.__default.from $ly@@2 |n#0|) (Tclass._module.Stream TInt)))
 :qid |Abstemiousdfy.58:10|
 :skolemid |639|
 :pattern ( (_module.__default.from $ly@@2 |n#0|))
))))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h@@0) ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
)))
(assert (forall ((_module.List$T T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) ($IsAlloc DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T) $h@@1))
 :qid |unknown.0:0|
 :skolemid |779|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T) $h@@1))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |456|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.zip$T@@0 T@U) (_module._default.zip$U@@0 T@U) ($ly@@3 T@U) (|a#0@@2| T@U) (|b#0@@0| T@U) ) (!  (=> (or (|_module.__default.zip#canCall| _module._default.zip$T@@0 _module._default.zip$U@@0 |a#0@@2| |b#0@@0|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |a#0@@2| (Tclass._module.Stream _module._default.zip$T@@0)) ($Is DatatypeTypeType |b#0@@0| (Tclass._module.Stream _module._default.zip$U@@0))))) ($Is DatatypeTypeType (_module.__default.zip _module._default.zip$T@@0 _module._default.zip$U@@0 $ly@@3 |a#0@@2| |b#0@@0|) (Tclass._module.Stream (Tclass._System.Tuple2 _module._default.zip$T@@0 _module._default.zip$U@@0))))
 :qid |unknown.0:0|
 :skolemid |663|
 :pattern ( (_module.__default.zip _module._default.zip$T@@0 _module._default.zip$U@@0 $ly@@3 |a#0@@2| |b#0@@0|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@4 T@U) ) (!  (=> (or |_module.__default.ones#canCall| (< 1 $FunctionContextHeight)) ($Is DatatypeTypeType (_module.__default.ones $ly@@4) (Tclass._module.Stream TInt)))
 :qid |Abstemiousdfy.53:10|
 :skolemid |633|
 :pattern ( (_module.__default.ones $ly@@4))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@5 T@U) ) (!  (=> (or |_module.__default.OhOnes#canCall| (< 1 $FunctionContextHeight)) ($Is DatatypeTypeType (_module.__default.OhOnes $ly@@5) (Tclass._module.Stream TInt)))
 :qid |Abstemiousdfy.113:10|
 :skolemid |713|
 :pattern ( (_module.__default.OhOnes $ly@@5))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@6 T@U) ) (!  (=> (or |_module.__default.fib#canCall| (< 2 $FunctionContextHeight)) ($Is DatatypeTypeType (_module.__default.fib $ly@@6) (Tclass._module.Stream TInt)))
 :qid |Abstemiousdfy.88:10|
 :skolemid |676|
 :pattern ( (_module.__default.fib $ly@@6))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@7 T@U) ) (!  (=> (or |_module.__default.Fib#canCall| (< 2 $FunctionContextHeight)) ($Is DatatypeTypeType (_module.__default.Fib $ly@@7) (Tclass._module.Stream TInt)))
 :qid |Abstemiousdfy.98:10|
 :skolemid |691|
 :pattern ( (_module.__default.Fib $ly@@7))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@8 T@U) ) (!  (=> (or |_module.__default.Fib0#canCall| (< 2 $FunctionContextHeight)) ($Is DatatypeTypeType (_module.__default.Fib0 $ly@@8) (Tclass._module.Stream TInt)))
 :qid |Abstemiousdfy.103:10|
 :skolemid |699|
 :pattern ( (_module.__default.Fib0 $ly@@8))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@9 T@U) ) (!  (=> (or |_module.__default.Fib1#canCall| (< 2 $FunctionContextHeight)) ($Is DatatypeTypeType (_module.__default.Fib1 $ly@@9) (Tclass._module.Stream TInt)))
 :qid |Abstemiousdfy.108:10|
 :skolemid |705|
 :pattern ( (_module.__default.Fib1 $ly@@9))
))))
(assert (forall ((_module.List$T@@0 T@U) ) (! ($Is DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T@@0))
 :qid |unknown.0:0|
 :skolemid |778|
 :pattern ( ($Is DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T@@0)))
)))
(assert (forall (($o T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o Tclass._System.object? $h@@2)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@2 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o Tclass._System.object? $h@@2))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.take$_T0 T@U) ($ly@@10 T@U) (|n#0@@0| Int) (|s#0| T@U) ) (!  (=> (or (|_module.__default.take#canCall| _module._default.take$_T0 (LitInt |n#0@@0|) (Lit DatatypeTypeType |s#0|)) (and (< 1 $FunctionContextHeight) (and (<= (LitInt 0) |n#0@@0|) ($Is DatatypeTypeType |s#0| (Tclass._module.Stream _module._default.take$_T0))))) (and (=> (or (not (= (LitInt |n#0@@0|) (LitInt 0))) (not true)) (and (_module.Stream.Cons_q (Lit DatatypeTypeType |s#0|)) (and (_module.Stream.Cons_q (Lit DatatypeTypeType |s#0|)) (|_module.__default.take#canCall| _module._default.take$_T0 (LitInt (- |n#0@@0| 1)) (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |s#0|))))))) (= (_module.__default.take _module._default.take$_T0 ($LS $ly@@10) (LitInt |n#0@@0|) (Lit DatatypeTypeType |s#0|)) (ite (= (LitInt |n#0@@0|) (LitInt 0)) |#_module.List.Nil| (|#_module.List.ListCons| (Lit BoxType (_module.Stream.head (Lit DatatypeTypeType |s#0|))) (Lit DatatypeTypeType (_module.__default.take _module._default.take$_T0 ($LS $ly@@10) (LitInt (- |n#0@@0| 1)) (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |s#0|))))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |659|
 :pattern ( (_module.__default.take _module._default.take$_T0 ($LS $ly@@10) (LitInt |n#0@@0|) (Lit DatatypeTypeType |s#0|)))
))))
(assert (forall ((h@@0 T@U) (k T@U) ) (!  (=> ($HeapSucc h@@0 k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@0 o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) k o@@0) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h@@0 k))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Combine$T T@U) ($ly@@11 T@U) ($Heap T@U) (|f#0@@0| T@U) (|a#0@@3| T@U) (|b#0@@1| T@U) ) (!  (=> (or (|_module.__default.Combine#canCall| _module._default.Combine$T |f#0@@0| |a#0@@3| |b#0@@1|) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap) ($Is HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc2 _module._default.Combine$T _module._default.Combine$T _module._default.Combine$T))) ($Is DatatypeTypeType |a#0@@3| (Tclass._module.Stream _module._default.Combine$T))) ($Is DatatypeTypeType |b#0@@1| (Tclass._module.Stream _module._default.Combine$T))))) (and (and (and (_module.Stream.Cons_q |a#0@@3|) (_module.Stream.Cons_q |b#0@@1|)) (and (and (_module.Stream.Cons_q |a#0@@3|) (_module.Stream.Cons_q |b#0@@1|)) (|_module.__default.Combine#canCall| _module._default.Combine$T |f#0@@0| (_module.Stream.tail |a#0@@3|) (_module.Stream.tail |b#0@@1|)))) (= (_module.__default.Combine _module._default.Combine$T ($LS $ly@@11) |f#0@@0| |a#0@@3| |b#0@@1|) (|#_module.Stream.Cons| (Apply2 _module._default.Combine$T _module._default.Combine$T _module._default.Combine$T $Heap |f#0@@0| (_module.Stream.head |a#0@@3|) (_module.Stream.head |b#0@@1|)) (_module.__default.Combine _module._default.Combine$T $ly@@11 |f#0@@0| (_module.Stream.tail |a#0@@3|) (_module.Stream.tail |b#0@@1|))))))
 :qid |unknown.0:0|
 :skolemid |722|
 :pattern ( (_module.__default.Combine _module._default.Combine$T ($LS $ly@@11) |f#0@@0| |a#0@@3| |b#0@@1|) ($IsGoodHeap $Heap))
))))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0@@0| Int) ) (!  (=> (or (|_module.__default.plus1#canCall| |x#0@@0|) (< 0 $FunctionContextHeight)) (= (_module.__default.plus1 |x#0@@0|) (+ |x#0@@0| 1)))
 :qid |Abstemiousdfy.47:16|
 :skolemid |625|
 :pattern ( (_module.__default.plus1 |x#0@@0|))
))))
(assert (forall ((t0@@3 T@U) (t1@@3 T@U) (heap@@0 T@U) (f@@0 T@U) (bx0@@0 T@U) ) (!  (=> (and ($IsGoodHeap heap@@0) (and ($IsBox bx0@@0 t0@@3) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@3 t1@@3)))) (= (|Set#Equal| (Reads1 t0@@3 t1@@3 $OneHeap f@@0 bx0@@0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@3 t1@@3 heap@@0 f@@0 bx0@@0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |385|
 :pattern ( (Reads1 t0@@3 t1@@3 $OneHeap f@@0 bx0@@0) ($IsGoodHeap heap@@0))
 :pattern ( (Reads1 t0@@3 t1@@3 heap@@0 f@@0 bx0@@0))
)))
(assert (forall ((|#$T0@@15| T@U) (|#$T1@@15| T@U) (|#$R@@15| T@U) (|f#0@@1| T@U) ) (! (= ($Is HandleTypeType |f#0@@1| (Tclass._System.___hPartialFunc2 |#$T0@@15| |#$T1@@15| |#$R@@15|))  (and ($Is HandleTypeType |f#0@@1| (Tclass._System.___hFunc2 |#$T0@@15| |#$T1@@15| |#$R@@15|)) (forall ((|x0#0@@0| T@U) (|x1#0@@0| T@U) ) (!  (=> (and ($IsBox |x0#0@@0| |#$T0@@15|) ($IsBox |x1#0@@0| |#$T1@@15|)) (|Set#Equal| (Reads2 |#$T0@@15| |#$T1@@15| |#$R@@15| $OneHeap |f#0@@1| |x0#0@@0| |x1#0@@0|) |Set#Empty|))
 :qid |unknown.0:0|
 :skolemid |517|
))))
 :qid |unknown.0:0|
 :skolemid |518|
 :pattern ( ($Is HandleTypeType |f#0@@1| (Tclass._System.___hPartialFunc2 |#$T0@@15| |#$T1@@15| |#$R@@15|)))
)))
(assert (forall ((_module.List$T@@1 T@U) (|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.List.ListCons| |a#6#0#0| |a#6#1#0|) (Tclass._module.List _module.List$T@@1))  (and ($IsBox |a#6#0#0| _module.List$T@@1) ($Is DatatypeTypeType |a#6#1#0| (Tclass._module.List _module.List$T@@1))))
 :qid |unknown.0:0|
 :skolemid |784|
 :pattern ( ($Is DatatypeTypeType (|#_module.List.ListCons| |a#6#0#0| |a#6#1#0|) (Tclass._module.List _module.List$T@@1)))
)))
(assert (forall ((_module.Stream$T@@0 T@U) (|a#14#0#0| T@U) (|a#14#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Stream.Cons| |a#14#0#0| |a#14#1#0|) (Tclass._module.Stream _module.Stream$T@@0))  (and ($IsBox |a#14#0#0| _module.Stream$T@@0) ($Is DatatypeTypeType |a#14#1#0| (Tclass._module.Stream _module.Stream$T@@0))))
 :qid |unknown.0:0|
 :skolemid |802|
 :pattern ( ($Is DatatypeTypeType (|#_module.Stream.Cons| |a#14#0#0| |a#14#1#0|) (Tclass._module.Stream _module.Stream$T@@0)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@12 T@U) (|a#0@@4| T@U) (|b#0@@2| T@U) ) (!  (=> (or (|_module.__default.add#canCall| |a#0@@4| |b#0@@2|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |a#0@@4| (Tclass._module.Stream TInt)) ($Is DatatypeTypeType |b#0@@2| (Tclass._module.Stream TInt))))) (and (and (and (_module.Stream.Cons_q |a#0@@4|) (_module.Stream.Cons_q |b#0@@2|)) (and (and (_module.Stream.Cons_q |a#0@@4|) (_module.Stream.Cons_q |b#0@@2|)) (|_module.__default.add#canCall| (_module.Stream.tail |a#0@@4|) (_module.Stream.tail |b#0@@2|)))) (= (_module.__default.add ($LS $ly@@12) |a#0@@4| |b#0@@2|) (|#_module.Stream.Cons| ($Box intType (int_2_U (+ (U_2_int ($Unbox intType (_module.Stream.head |a#0@@4|))) (U_2_int ($Unbox intType (_module.Stream.head |b#0@@2|)))))) (_module.__default.add $ly@@12 (_module.Stream.tail |a#0@@4|) (_module.Stream.tail |b#0@@2|))))))
 :qid |Abstemiousdfy.93:24|
 :skolemid |687|
 :pattern ( (_module.__default.add ($LS $ly@@12) |a#0@@4| |b#0@@2|))
))))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@3 T@U) ) (!  (=> ($IsGoodHeap $h@@3) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@3)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@3) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@3))))
 :qid |unknown.0:0|
 :skolemid |457|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@3))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@1) (= (DatatypeCtorId d@@1) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |449|
 :pattern ( (_System.Tuple2.___hMake2_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.List.Nil_q d@@2) (= (DatatypeCtorId d@@2) |##_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |776|
 :pattern ( (_module.List.Nil_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (_module.List.ListCons_q d@@3) (= (DatatypeCtorId d@@3) |##_module.List.ListCons|))
 :qid |unknown.0:0|
 :skolemid |781|
 :pattern ( (_module.List.ListCons_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (! (= (_module.Stream.Cons_q d@@4) (= (DatatypeCtorId d@@4) |##_module.Stream.Cons|))
 :qid |unknown.0:0|
 :skolemid |799|
 :pattern ( (_module.Stream.Cons_q d@@4))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@13 T@U) ) (!  (=> (or |_module.__default.fib#canCall| (< 2 $FunctionContextHeight)) (and (and (and (and |_module.__default.fib#canCall| (and |_module.__default.fib#canCall| (_module.Stream.Cons_q (Lit DatatypeTypeType (_module.__default.fib $ly@@13))))) (|_module.__default.zip#canCall| TInt TInt (Lit DatatypeTypeType (_module.__default.fib $ly@@13)) (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType (_module.__default.fib $ly@@13)))))) (|_module.__default.addPair#canCall| (Lit DatatypeTypeType (_module.__default.zip TInt TInt ($LS $LZ) (Lit DatatypeTypeType (_module.__default.fib $ly@@13)) (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType (_module.__default.fib $ly@@13)))))))) (= (_module.__default.fib ($LS $ly@@13)) (Lit DatatypeTypeType (|#_module.Stream.Cons| ($Box intType (int_2_U (LitInt 0))) (Lit DatatypeTypeType (|#_module.Stream.Cons| ($Box intType (int_2_U (LitInt 1))) (Lit DatatypeTypeType (_module.__default.addPair ($LS $LZ) (Lit DatatypeTypeType (_module.__default.zip TInt TInt ($LS $LZ) (Lit DatatypeTypeType (_module.__default.fib $ly@@13)) (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType (_module.__default.fib $ly@@13)))))))))))))))
 :qid |Abstemiousdfy.88:10|
 :skolemid |678|
 :pattern ( (_module.__default.fib ($LS $ly@@13)))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0@@1| Int) (|y#0| Int) ) (!  (=> (or (|_module.__default.plus#canCall| (LitInt |x#0@@1|) (LitInt |y#0|)) (< 0 $FunctionContextHeight)) (= (_module.__default.plus (LitInt |x#0@@1|) (LitInt |y#0|)) (LitInt (+ |x#0@@1| |y#0|))))
 :qid |Abstemiousdfy.48:15|
 :weight 3
 :skolemid |630|
 :pattern ( (_module.__default.plus (LitInt |x#0@@1|) (LitInt |y#0|)))
))))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@14 T@U) ) (!  (=> (or |_module.__default.Fib1#canCall| (< 2 $FunctionContextHeight)) (and (and (and |_module.__default.Fib0#canCall| |_module.__default.Fib1#canCall|) (|_module.__default.add#canCall| (Lit DatatypeTypeType (_module.__default.Fib0 $ly@@14)) (Lit DatatypeTypeType (_module.__default.Fib1 $ly@@14)))) (= (_module.__default.Fib1 ($LS $ly@@14)) (Lit DatatypeTypeType (|#_module.Stream.Cons| ($Box intType (int_2_U (LitInt 1))) (Lit DatatypeTypeType (_module.__default.add ($LS $LZ) (Lit DatatypeTypeType (_module.__default.Fib0 $ly@@14)) (Lit DatatypeTypeType (_module.__default.Fib1 $ly@@14)))))))))
 :qid |Abstemiousdfy.108:10|
 :skolemid |707|
 :pattern ( (_module.__default.Fib1 ($LS $ly@@14)))
))))
(assert (forall ((d@@5 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@5) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@5 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |450|
)))
 :qid |unknown.0:0|
 :skolemid |451|
 :pattern ( (_System.Tuple2.___hMake2_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (_module.List.ListCons_q d@@6) (exists ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= d@@6 (|#_module.List.ListCons| |a#5#0#0| |a#5#1#0|))
 :qid |Abstemiousdfy.50:35|
 :skolemid |782|
)))
 :qid |unknown.0:0|
 :skolemid |783|
 :pattern ( (_module.List.ListCons_q d@@6))
)))
(assert (forall ((d@@7 T@U) ) (!  (=> (_module.Stream.Cons_q d@@7) (exists ((|a#13#0#0| T@U) (|a#13#1#0| T@U) ) (! (= d@@7 (|#_module.Stream.Cons| |a#13#0#0| |a#13#1#0|))
 :qid |Abstemiousdfy.51:29|
 :skolemid |800|
)))
 :qid |unknown.0:0|
 :skolemid |801|
 :pattern ( (_module.Stream.Cons_q d@@7))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@0 T@U) (_module._default.take$_T0@@0 T@U) ($ly@@15 T@U) (|n#0@@1| Int) (|s#0@@0| T@U) ) (!  (=> (and (or (|_module.__default.take#canCall| _module._default.take$_T0@@0 |n#0@@1| |s#0@@0|) (and (< 1 $FunctionContextHeight) (and (<= (LitInt 0) |n#0@@1|) (and ($Is DatatypeTypeType |s#0@@0| (Tclass._module.Stream _module._default.take$_T0@@0)) ($IsAlloc DatatypeTypeType |s#0@@0| (Tclass._module.Stream _module._default.take$_T0@@0) $Heap@@0))))) ($IsGoodHeap $Heap@@0)) ($IsAlloc DatatypeTypeType (_module.__default.take _module._default.take$_T0@@0 $ly@@15 |n#0@@1| |s#0@@0|) (Tclass._module.List _module._default.take$_T0@@0) $Heap@@0))
 :qid |Abstemiousdfy.73:10|
 :skolemid |655|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.__default.take _module._default.take$_T0@@0 $ly@@15 |n#0@@1| |s#0@@0|) (Tclass._module.List _module._default.take$_T0@@0) $Heap@@0))
))))
(assert (forall (($heap@@0 T@U) (|$fh$0x#0@@0| Int) ) (! (= (_module.__default.plus1 |$fh$0x#0@@0|) (U_2_int ($Unbox intType (Apply1 TInt TInt $heap@@0 |_module.__default.plus1#Handle| ($Box intType (int_2_U |$fh$0x#0@@0|))))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |589|
 :pattern ( (_module.__default.plus1 |$fh$0x#0@@0|) ($IsGoodHeap $heap@@0))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.take$_T0@@1 T@U) ($ly@@16 T@U) (|n#0@@2| Int) (|s#0@@1| T@U) ) (!  (=> (or (|_module.__default.take#canCall| _module._default.take$_T0@@1 |n#0@@2| |s#0@@1|) (and (< 1 $FunctionContextHeight) (and (<= (LitInt 0) |n#0@@2|) ($Is DatatypeTypeType |s#0@@1| (Tclass._module.Stream _module._default.take$_T0@@1))))) ($Is DatatypeTypeType (_module.__default.take _module._default.take$_T0@@1 $ly@@16 |n#0@@2| |s#0@@1|) (Tclass._module.List _module._default.take$_T0@@1)))
 :qid |unknown.0:0|
 :skolemid |654|
 :pattern ( (_module.__default.take _module._default.take$_T0@@1 $ly@@16 |n#0@@2| |s#0@@1|))
))))
(assert (forall ((t0@@4 T@U) (t1@@4 T@U) (h0 T@U) (h1 T@U) (f@@1 T@U) (bx0@@1 T@U) ) (!  (=> (and (and (and ($HeapSucc h0 h1) (and ($IsGoodHeap h0) ($IsGoodHeap h1))) (and ($IsBox bx0@@1 t0@@4) ($Is HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@4 t1@@4)))) (forall ((o@@1 T@U) (fld T@U) ) (!  (=> (and (or (not (= o@@1 null)) (not true)) (|Set#IsMember| (Reads1 t0@@4 t1@@4 h0 f@@1 bx0@@1) ($Box refType o@@1))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0 o@@1) fld) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1 o@@1) fld)))
 :qid |unknown.0:0|
 :skolemid |377|
))) (= (Requires1 t0@@4 t1@@4 h0 f@@1 bx0@@1) (Requires1 t0@@4 t1@@4 h1 f@@1 bx0@@1)))
 :qid |unknown.0:0|
 :skolemid |378|
 :pattern ( ($HeapSucc h0 h1) (Requires1 t0@@4 t1@@4 h1 f@@1 bx0@@1))
)))
(assert (forall ((t0@@5 T@U) (t1@@5 T@U) (h0@@0 T@U) (h1@@0 T@U) (f@@2 T@U) (bx0@@2 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@0 h1@@0) (and ($IsGoodHeap h0@@0) ($IsGoodHeap h1@@0))) (and ($IsBox bx0@@2 t0@@5) ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@5 t1@@5)))) (forall ((o@@2 T@U) (fld@@0 T@U) ) (!  (=> (and (or (not (= o@@2 null)) (not true)) (|Set#IsMember| (Reads1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2) ($Box refType o@@2))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@0 o@@2) fld@@0) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@0 o@@2) fld@@0)))
 :qid |unknown.0:0|
 :skolemid |379|
))) (= (Requires1 t0@@5 t1@@5 h0@@0 f@@2 bx0@@2) (Requires1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2)))
 :qid |unknown.0:0|
 :skolemid |380|
 :pattern ( ($HeapSucc h0@@0 h1@@0) (Requires1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2))
)))
(assert (forall ((d@@8 T@U) ) (!  (=> (_module.List.Nil_q d@@8) (= d@@8 |#_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |777|
 :pattern ( (_module.List.Nil_q d@@8))
)))
(assert (forall ((v T@U) (t0@@6 T@U) ) (! (= ($Is SetType v (TSet t0@@6)) (forall ((bx@@5 T@U) ) (!  (=> (|Set#IsMember| v bx@@5) ($IsBox bx@@5 t0@@6))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@5))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@6)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@1 T@U) (_module._default.Combine$T@@0 T@U) ($ly@@17 T@U) (|f#0@@2| T@U) (|a#0@@5| T@U) (|b#0@@3| T@U) ) (!  (=> (and (or (|_module.__default.Combine#canCall| _module._default.Combine$T@@0 |f#0@@2| |a#0@@5| |b#0@@3|) (and (< 1 $FunctionContextHeight) (and (and (and ($Is HandleTypeType |f#0@@2| (Tclass._System.___hTotalFunc2 _module._default.Combine$T@@0 _module._default.Combine$T@@0 _module._default.Combine$T@@0)) ($IsAlloc HandleTypeType |f#0@@2| (Tclass._System.___hTotalFunc2 _module._default.Combine$T@@0 _module._default.Combine$T@@0 _module._default.Combine$T@@0) $Heap@@1)) (and ($Is DatatypeTypeType |a#0@@5| (Tclass._module.Stream _module._default.Combine$T@@0)) ($IsAlloc DatatypeTypeType |a#0@@5| (Tclass._module.Stream _module._default.Combine$T@@0) $Heap@@1))) (and ($Is DatatypeTypeType |b#0@@3| (Tclass._module.Stream _module._default.Combine$T@@0)) ($IsAlloc DatatypeTypeType |b#0@@3| (Tclass._module.Stream _module._default.Combine$T@@0) $Heap@@1))))) ($IsGoodHeap $Heap@@1)) ($IsAlloc DatatypeTypeType (_module.__default.Combine _module._default.Combine$T@@0 $ly@@17 |f#0@@2| |a#0@@5| |b#0@@3|) (Tclass._module.Stream _module._default.Combine$T@@0) $Heap@@1))
 :qid |Abstemiousdfy.119:3|
 :skolemid |720|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.__default.Combine _module._default.Combine$T@@0 $ly@@17 |f#0@@2| |a#0@@5| |b#0@@3|) (Tclass._module.Stream _module._default.Combine$T@@0) $Heap@@1))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@18 T@U) ) (!  (=> (or |_module.__default.ones#canCall| (< 1 $FunctionContextHeight)) (and |_module.__default.ones#canCall| (= (_module.__default.ones ($LS $ly@@18)) (Lit DatatypeTypeType (|#_module.Stream.Cons| ($Box intType (int_2_U (LitInt 1))) (Lit DatatypeTypeType (_module.__default.ones $ly@@18)))))))
 :qid |Abstemiousdfy.53:10|
 :skolemid |635|
 :pattern ( (_module.__default.ones ($LS $ly@@18)))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@19 T@U) ) (!  (=> (or |_module.__default.Fib0#canCall| (< 2 $FunctionContextHeight)) (and |_module.__default.Fib1#canCall| (= (_module.__default.Fib0 ($LS $ly@@19)) (Lit DatatypeTypeType (|#_module.Stream.Cons| ($Box intType (int_2_U (LitInt 0))) (Lit DatatypeTypeType (_module.__default.Fib1 $ly@@19)))))))
 :qid |Abstemiousdfy.103:10|
 :skolemid |701|
 :pattern ( (_module.__default.Fib0 ($LS $ly@@19)))
))))
(assert (forall (($heap@@1 T@U) (|$fh$0x#0@@1| T@U) ) (! (= (Requires1 TInt TInt $heap@@1 |_module.__default.plus1#Handle| |$fh$0x#0@@1|) (|_module.__default.plus1#requires| (U_2_int ($Unbox intType |$fh$0x#0@@1|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |587|
 :pattern ( (Requires1 TInt TInt $heap@@1 |_module.__default.plus1#Handle| |$fh$0x#0@@1|))
)))
(assert (= (Ctor LayerTypeType) 10))
(assert (forall ((f@@3 T@U) (ly T@U) (A T@T) ) (! (= (AtLayer A f@@3 ly) (MapType1Select LayerTypeType A f@@3 ly))
 :qid |DafnyPreludebpl.501:18|
 :skolemid |101|
 :pattern ( (AtLayer A f@@3 ly))
)))
(assert (forall ((|x#0@@2| T@U) ) (! (= ($Is intType |x#0@@2| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@2|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@2| Tclass._System.nat))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((s T@U) (v@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s v@@0)) (+ 1 (|Seq#Length| s)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s v@@0))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (=> (or |_module.__default.squares#canCall| (< 2 $FunctionContextHeight)) (and (and (|_module.__default.from#canCall| (LitInt 0)) (|_module.__default.Map#canCall| TInt TInt (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#7| (Handle1 |lambda#3| (|lambda#4| TInt) (|lambda#6| (SetRef_to_SetBox (|lambda#5| false))))) ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.from ($LS $LZ) (LitInt 0))))) (= _module.__default.squares (Lit DatatypeTypeType (_module.__default.Map TInt TInt ($LS $LZ) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#7| (Handle1 |lambda#3| (|lambda#4| TInt) (|lambda#6| (SetRef_to_SetBox (|lambda#5| false))))) ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.from ($LS $LZ) (LitInt 0))))))))))
(assert  (=> (<= 2 $FunctionContextHeight) (=> (or |_module.__default.squares#canCall| (< 2 $FunctionContextHeight)) (and (and (|_module.__default.from#canCall| (LitInt 0)) (|_module.__default.Map#canCall| TInt TInt (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#7| (Handle1 |lambda#3| (|lambda#4| TInt) (|lambda#6| (SetRef_to_SetBox (|lambda#5| false))))) ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.from ($LS $LZ) (LitInt 0))))) (= _module.__default.squares (Lit DatatypeTypeType (_module.__default.Map TInt TInt ($LS $LZ) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#7| (Handle1 |lambda#3| (|lambda#4| TInt) (|lambda#6| (SetRef_to_SetBox (|lambda#5| false))))) ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.from ($LS $LZ) (LitInt 0))))))))))
(assert (forall ((v@@1 T@U) (t T@U) (h@@1 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@1) t h@@1) ($IsAlloc T@@1 v@@1 t h@@1))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@1) t h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@0 T@U) (bx@@6 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@2 k@@0) (=> ($IsAllocBox bx@@6 t@@0 h@@2) ($IsAllocBox bx@@6 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@2 k@@0) ($IsAllocBox bx@@6 t@@0 h@@2))
)))
(assert (forall ((h@@3 T@U) (k@@1 T@U) (v@@2 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@3 k@@1) (=> ($IsAlloc T@@2 v@@2 t@@1 h@@3) ($IsAlloc T@@2 v@@2 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@3 k@@1) ($IsAlloc T@@2 v@@2 t@@1 h@@3))
)))
(assert (forall ((t0@@7 T@U) (t1@@6 T@U) (h0@@1 T@U) (h1@@1 T@U) (f@@4 T@U) (bx0@@3 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@1 h1@@1) (and ($IsGoodHeap h0@@1) ($IsGoodHeap h1@@1))) (and ($IsBox bx0@@3 t0@@7) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc1 t0@@7 t1@@6)))) (forall ((o@@3 T@U) (fld@@1 T@U) ) (!  (=> (and (or (not (= o@@3 null)) (not true)) (|Set#IsMember| (Reads1 t0@@7 t1@@6 h0@@1 f@@4 bx0@@3) ($Box refType o@@3))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@1 o@@3) fld@@1) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@1 o@@3) fld@@1)))
 :qid |unknown.0:0|
 :skolemid |373|
))) (= (Reads1 t0@@7 t1@@6 h0@@1 f@@4 bx0@@3) (Reads1 t0@@7 t1@@6 h1@@1 f@@4 bx0@@3)))
 :qid |unknown.0:0|
 :skolemid |374|
 :pattern ( ($HeapSucc h0@@1 h1@@1) (Reads1 t0@@7 t1@@6 h1@@1 f@@4 bx0@@3))
)))
(assert (forall ((t0@@8 T@U) (t1@@7 T@U) (h0@@2 T@U) (h1@@2 T@U) (f@@5 T@U) (bx0@@4 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@2 h1@@2) (and ($IsGoodHeap h0@@2) ($IsGoodHeap h1@@2))) (and ($IsBox bx0@@4 t0@@8) ($Is HandleTypeType f@@5 (Tclass._System.___hFunc1 t0@@8 t1@@7)))) (forall ((o@@4 T@U) (fld@@2 T@U) ) (!  (=> (and (or (not (= o@@4 null)) (not true)) (|Set#IsMember| (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4) ($Box refType o@@4))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@2 o@@4) fld@@2) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@2 o@@4) fld@@2)))
 :qid |unknown.0:0|
 :skolemid |375|
))) (= (Reads1 t0@@8 t1@@7 h0@@2 f@@5 bx0@@4) (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4)))
 :qid |unknown.0:0|
 :skolemid |376|
 :pattern ( ($HeapSucc h0@@2 h1@@2) (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4))
)))
(assert (forall ((t0@@9 T@U) (t1@@8 T@U) (h0@@3 T@U) (h1@@3 T@U) (f@@6 T@U) (bx0@@5 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@3 h1@@3) (and ($IsGoodHeap h0@@3) ($IsGoodHeap h1@@3))) (and ($IsBox bx0@@5 t0@@9) ($Is HandleTypeType f@@6 (Tclass._System.___hFunc1 t0@@9 t1@@8)))) (forall ((o@@5 T@U) (fld@@3 T@U) ) (!  (=> (and (or (not (= o@@5 null)) (not true)) (|Set#IsMember| (Reads1 t0@@9 t1@@8 h0@@3 f@@6 bx0@@5) ($Box refType o@@5))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@3 o@@5) fld@@3) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@3 o@@5) fld@@3)))
 :qid |unknown.0:0|
 :skolemid |381|
))) (= (Apply1 t0@@9 t1@@8 h0@@3 f@@6 bx0@@5) (Apply1 t0@@9 t1@@8 h1@@3 f@@6 bx0@@5)))
 :qid |unknown.0:0|
 :skolemid |382|
 :pattern ( ($HeapSucc h0@@3 h1@@3) (Apply1 t0@@9 t1@@8 h1@@3 f@@6 bx0@@5))
)))
(assert (forall ((t0@@10 T@U) (t1@@9 T@U) (h0@@4 T@U) (h1@@4 T@U) (f@@7 T@U) (bx0@@6 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@4 h1@@4) (and ($IsGoodHeap h0@@4) ($IsGoodHeap h1@@4))) (and ($IsBox bx0@@6 t0@@10) ($Is HandleTypeType f@@7 (Tclass._System.___hFunc1 t0@@10 t1@@9)))) (forall ((o@@6 T@U) (fld@@4 T@U) ) (!  (=> (and (or (not (= o@@6 null)) (not true)) (|Set#IsMember| (Reads1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6) ($Box refType o@@6))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@4 o@@6) fld@@4) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@4 o@@6) fld@@4)))
 :qid |unknown.0:0|
 :skolemid |383|
))) (= (Apply1 t0@@10 t1@@9 h0@@4 f@@7 bx0@@6) (Apply1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6)))
 :qid |unknown.0:0|
 :skolemid |384|
 :pattern ( ($HeapSucc h0@@4 h1@@4) (Apply1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6))
)))
(assert (forall ((_module.Stream$T@@1 T@U) ) (!  (and (= (Tag (Tclass._module.Stream _module.Stream$T@@1)) Tagclass._module.Stream) (= (TagFamily (Tclass._module.Stream _module.Stream$T@@1)) tytagFamily$Stream))
 :qid |unknown.0:0|
 :skolemid |590|
 :pattern ( (Tclass._module.Stream _module.Stream$T@@1))
)))
(assert (forall ((_module.List$T@@2 T@U) ) (!  (and (= (Tag (Tclass._module.List _module.List$T@@2)) Tagclass._module.List) (= (TagFamily (Tclass._module.List _module.List$T@@2)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |615|
 :pattern ( (Tclass._module.List _module.List$T@@2))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@2 T@U) (_module._default.zip$T@@1 T@U) (_module._default.zip$U@@1 T@U) ($ly@@20 T@U) (|a#0@@6| T@U) (|b#0@@4| T@U) ) (!  (=> (and (or (|_module.__default.zip#canCall| _module._default.zip$T@@1 _module._default.zip$U@@1 |a#0@@6| |b#0@@4|) (and (< 1 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |a#0@@6| (Tclass._module.Stream _module._default.zip$T@@1)) ($IsAlloc DatatypeTypeType |a#0@@6| (Tclass._module.Stream _module._default.zip$T@@1) $Heap@@2)) (and ($Is DatatypeTypeType |b#0@@4| (Tclass._module.Stream _module._default.zip$U@@1)) ($IsAlloc DatatypeTypeType |b#0@@4| (Tclass._module.Stream _module._default.zip$U@@1) $Heap@@2))))) ($IsGoodHeap $Heap@@2)) ($IsAlloc DatatypeTypeType (_module.__default.zip _module._default.zip$T@@1 _module._default.zip$U@@1 $ly@@20 |a#0@@6| |b#0@@4|) (Tclass._module.Stream (Tclass._System.Tuple2 _module._default.zip$T@@1 _module._default.zip$U@@1)) $Heap@@2))
 :qid |Abstemiousdfy.78:24|
 :skolemid |664|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.__default.zip _module._default.zip$T@@1 _module._default.zip$U@@1 $ly@@20 |a#0@@6| |b#0@@4|) (Tclass._module.Stream (Tclass._System.Tuple2 _module._default.zip$T@@1 _module._default.zip$U@@1)) $Heap@@2))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.take$_T0@@2 T@U) ($ly@@21 T@U) (|n#0@@3| Int) (|s#0@@2| T@U) ) (!  (=> (or (|_module.__default.take#canCall| _module._default.take$_T0@@2 (LitInt |n#0@@3|) |s#0@@2|) (and (< 1 $FunctionContextHeight) (and (<= (LitInt 0) |n#0@@3|) ($Is DatatypeTypeType |s#0@@2| (Tclass._module.Stream _module._default.take$_T0@@2))))) (and (=> (or (not (= (LitInt |n#0@@3|) (LitInt 0))) (not true)) (and (_module.Stream.Cons_q |s#0@@2|) (and (_module.Stream.Cons_q |s#0@@2|) (|_module.__default.take#canCall| _module._default.take$_T0@@2 (LitInt (- |n#0@@3| 1)) (_module.Stream.tail |s#0@@2|))))) (= (_module.__default.take _module._default.take$_T0@@2 ($LS $ly@@21) (LitInt |n#0@@3|) |s#0@@2|) (ite (= (LitInt |n#0@@3|) (LitInt 0)) |#_module.List.Nil| (|#_module.List.ListCons| (_module.Stream.head |s#0@@2|) (_module.__default.take _module._default.take$_T0@@2 ($LS $ly@@21) (LitInt (- |n#0@@3| 1)) (_module.Stream.tail |s#0@@2|)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |658|
 :pattern ( (_module.__default.take _module._default.take$_T0@@2 ($LS $ly@@21) (LitInt |n#0@@3|) |s#0@@2|))
))))
(assert (forall ((s@@0 T@U) (bx@@7 T@U) ) (! (= (|Set#IsMember| (SetRef_to_SetBox s@@0) bx@@7) (U_2_bool (MapType1Select refType boolType s@@0 ($Unbox refType bx@@7))))
 :qid |DafnyPreludebpl.370:15|
 :skolemid |82|
 :pattern ( (|Set#IsMember| (SetRef_to_SetBox s@@0) bx@@7))
)))
(assert (forall ((|#$T0@@16| T@U) (|#$R@@16| T@U) (|f#0@@3| T@U) ($h@@4 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@3| (Tclass._System.___hPartialFunc1 |#$T0@@16| |#$R@@16|) $h@@4) ($IsAlloc HandleTypeType |f#0@@3| (Tclass._System.___hFunc1 |#$T0@@16| |#$R@@16|) $h@@4))
 :qid |unknown.0:0|
 :skolemid |403|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@3| (Tclass._System.___hPartialFunc1 |#$T0@@16| |#$R@@16|) $h@@4))
)))
(assert (forall ((|#$T0@@17| T@U) (|#$R@@17| T@U) (|f#0@@4| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@4| (Tclass._System.___hTotalFunc1 |#$T0@@17| |#$R@@17|) $h@@5) ($IsAlloc HandleTypeType |f#0@@4| (Tclass._System.___hPartialFunc1 |#$T0@@17| |#$R@@17|) $h@@5))
 :qid |unknown.0:0|
 :skolemid |410|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@4| (Tclass._System.___hTotalFunc1 |#$T0@@17| |#$R@@17|) $h@@5))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0@@3| Int) ) (!  (=> (or (|_module.__default.plus1#canCall| (LitInt |x#0@@3|)) (< 0 $FunctionContextHeight)) (= (_module.__default.plus1 (LitInt |x#0@@3|)) (LitInt (+ |x#0@@3| 1))))
 :qid |Abstemiousdfy.47:16|
 :weight 3
 :skolemid |626|
 :pattern ( (_module.__default.plus1 (LitInt |x#0@@3|)))
))))
(assert (forall ((t0@@11 T@U) (t1@@10 T@U) (heap@@1 T@U) (h@@4 T@U) (r@@0 T@U) (rd@@0 T@U) (bx0@@7 T@U) ) (! (= (Apply1 t0@@11 t1@@10 heap@@1 (Handle1 h@@4 r@@0 rd@@0) bx0@@7) (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType h@@4 heap@@1 bx0@@7))
 :qid |unknown.0:0|
 :skolemid |370|
 :pattern ( (Apply1 t0@@11 t1@@10 heap@@1 (Handle1 h@@4 r@@0 rd@@0) bx0@@7))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@8)) bx@@8) ($Is intType ($Unbox intType bx@@8) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx@@8 Tclass._System.nat))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( ($IsBox bx@@9 Tclass._System.object?))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsBox bx@@10 Tclass._System.object))
)))
(assert (forall (($bx@@0 T@U) ($heap@@2 T@U) (|$fh$0x#0@@2| T@U) ) (! (= (|Set#IsMember| (Reads1 TInt TInt $heap@@2 |_module.__default.plus1#Handle| |$fh$0x#0@@2|) $bx@@0) false)
 :qid |unknown.0:0|
 :skolemid |588|
 :pattern ( (|Set#IsMember| (Reads1 TInt TInt $heap@@2 |_module.__default.plus1#Handle| |$fh$0x#0@@2|) $bx@@0))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._System.object)  (and ($Is refType |c#0@@0| Tclass._System.object?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@0| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@0| Tclass._System.object?))
)))
(assert (forall (($ly@@22 T@U) (|a#0@@7| T@U) (|b#0@@5| T@U) ) (! (= (_module.__default.add ($LS $ly@@22) |a#0@@7| |b#0@@5|) (_module.__default.add $ly@@22 |a#0@@7| |b#0@@5|))
 :qid |Abstemiousdfy.93:24|
 :skolemid |683|
 :pattern ( (_module.__default.add ($LS $ly@@22) |a#0@@7| |b#0@@5|))
)))
(assert (forall ((f@@8 T@U) (t0@@12 T@U) (t1@@11 T@U) (t2@@0 T@U) (h@@5 T@U) ) (!  (=> ($IsGoodHeap h@@5) (= ($IsAlloc HandleTypeType f@@8 (Tclass._System.___hFunc2 t0@@12 t1@@11 t2@@0) h@@5) (forall ((bx0@@8 T@U) (bx1 T@U) ) (!  (=> (and (and (and ($IsBox bx0@@8 t0@@12) ($IsAllocBox bx0@@8 t0@@12 h@@5)) (and ($IsBox bx1 t1@@11) ($IsAllocBox bx1 t1@@11 h@@5))) (Requires2 t0@@12 t1@@11 t2@@0 h@@5 f@@8 bx0@@8 bx1)) (forall ((r@@1 T@U) ) (!  (=> (and (or (not (= r@@1 null)) (not true)) (|Set#IsMember| (Reads2 t0@@12 t1@@11 t2@@0 h@@5 f@@8 bx0@@8 bx1) ($Box refType r@@1))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@5 r@@1) alloc))))
 :qid |unknown.0:0|
 :skolemid |507|
 :pattern ( (|Set#IsMember| (Reads2 t0@@12 t1@@11 t2@@0 h@@5 f@@8 bx0@@8 bx1) ($Box refType r@@1)))
)))
 :qid |unknown.0:0|
 :skolemid |508|
 :pattern ( (Apply2 t0@@12 t1@@11 t2@@0 h@@5 f@@8 bx0@@8 bx1))
 :pattern ( (Reads2 t0@@12 t1@@11 t2@@0 h@@5 f@@8 bx0@@8 bx1))
))))
 :qid |unknown.0:0|
 :skolemid |509|
 :pattern ( ($IsAlloc HandleTypeType f@@8 (Tclass._System.___hFunc2 t0@@12 t1@@11 t2@@0) h@@5))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Map$T T@U) (_module._default.Map$U T@U) ($ly@@23 T@U) (|f#0@@5| T@U) (|s#0@@3| T@U) ) (!  (=> (or (|_module.__default.Map#canCall| _module._default.Map$T _module._default.Map$U |f#0@@5| |s#0@@3|) (and (< 1 $FunctionContextHeight) (and ($Is HandleTypeType |f#0@@5| (Tclass._System.___hTotalFunc1 _module._default.Map$T _module._default.Map$U)) ($Is DatatypeTypeType |s#0@@3| (Tclass._module.Stream _module._default.Map$T))))) ($Is DatatypeTypeType (_module.__default.Map _module._default.Map$T _module._default.Map$U $ly@@23 |f#0@@5| |s#0@@3|) (Tclass._module.Stream _module._default.Map$U)))
 :qid |unknown.0:0|
 :skolemid |645|
 :pattern ( (_module.__default.Map _module._default.Map$T _module._default.Map$U $ly@@23 |f#0@@5| |s#0@@3|))
))))
(assert (forall ((f@@9 T@U) (t0@@13 T@U) (t1@@12 T@U) (h@@6 T@U) ) (!  (=> (and ($IsGoodHeap h@@6) ($IsAlloc HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@13 t1@@12) h@@6)) (forall ((bx0@@9 T@U) ) (!  (=> (and ($IsAllocBox bx0@@9 t0@@13 h@@6) (Requires1 t0@@13 t1@@12 h@@6 f@@9 bx0@@9)) ($IsAllocBox (Apply1 t0@@13 t1@@12 h@@6 f@@9 bx0@@9) t1@@12 h@@6))
 :qid |unknown.0:0|
 :skolemid |395|
 :pattern ( (Apply1 t0@@13 t1@@12 h@@6 f@@9 bx0@@9))
)))
 :qid |unknown.0:0|
 :skolemid |396|
 :pattern ( ($IsAlloc HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@13 t1@@12) h@@6))
)))
(assert (forall ((|$l#2#heap#0@@0| T@U) (|$l#2#x#0@@0| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType |lambda#3| |$l#2#heap#0@@0| |$l#2#x#0@@0|) ($Box intType (int_2_U (Mul (U_2_int ($Unbox intType |$l#2#x#0@@0|)) (U_2_int ($Unbox intType |$l#2#x#0@@0|))))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |822|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType |lambda#3| |$l#2#heap#0@@0| |$l#2#x#0@@0|))
)))
(assert (forall (($heap@@3 T@U) (|$fh$0x#0@@3| T@U) ) (! (= (Apply1 TInt TInt $heap@@3 |_module.__default.plus1#Handle| |$fh$0x#0@@3|) ($Box intType (int_2_U (_module.__default.plus1 (U_2_int ($Unbox intType |$fh$0x#0@@3|))))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |586|
 :pattern ( (Apply1 TInt TInt $heap@@3 |_module.__default.plus1#Handle| |$fh$0x#0@@3|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Map$T@@0 T@U) (_module._default.Map$U@@0 T@U) ($ly@@24 T@U) ($Heap@@3 T@U) (|f#0@@6| T@U) (|s#0@@4| T@U) ) (!  (=> (or (|_module.__default.Map#canCall| _module._default.Map$T@@0 _module._default.Map$U@@0 |f#0@@6| |s#0@@4|) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@3) ($Is HandleTypeType |f#0@@6| (Tclass._System.___hTotalFunc1 _module._default.Map$T@@0 _module._default.Map$U@@0))) ($Is DatatypeTypeType |s#0@@4| (Tclass._module.Stream _module._default.Map$T@@0))))) (and (and (_module.Stream.Cons_q |s#0@@4|) (and (_module.Stream.Cons_q |s#0@@4|) (|_module.__default.Map#canCall| _module._default.Map$T@@0 _module._default.Map$U@@0 |f#0@@6| (_module.Stream.tail |s#0@@4|)))) (= (_module.__default.Map _module._default.Map$T@@0 _module._default.Map$U@@0 ($LS $ly@@24) |f#0@@6| |s#0@@4|) (|#_module.Stream.Cons| (Apply1 _module._default.Map$T@@0 _module._default.Map$U@@0 $Heap@@3 |f#0@@6| (_module.Stream.head |s#0@@4|)) (_module.__default.Map _module._default.Map$T@@0 _module._default.Map$U@@0 $ly@@24 |f#0@@6| (_module.Stream.tail |s#0@@4|))))))
 :qid |unknown.0:0|
 :skolemid |648|
 :pattern ( (_module.__default.Map _module._default.Map$T@@0 _module._default.Map$U@@0 ($LS $ly@@24) |f#0@@6| |s#0@@4|) ($IsGoodHeap $Heap@@3))
))))
(assert (forall ((|x#0@@4| Int) (|y#0@@0| Int) ) (! (= (|_module.__default.plus#requires| |x#0@@4| |y#0@@0|) true)
 :qid |Abstemiousdfy.48:15|
 :skolemid |628|
 :pattern ( (|_module.__default.plus#requires| |x#0@@4| |y#0@@0|))
)))
(assert (forall ((|l#0@@0| Bool) (|$l#2#o#0| T@U) ) (! (= (U_2_bool (MapType1Select refType boolType (|lambda#5| |l#0@@0|) |$l#2#o#0|)) |l#0@@0|)
 :qid |unknown.0:0|
 :skolemid |824|
 :pattern ( (MapType1Select refType boolType (|lambda#5| |l#0@@0|) |$l#2#o#0|))
)))
(assert (forall ((|l#0@@1| T@U) (|$l#2#ly#0| T@U) ) (! (= (MapType1Select LayerTypeType HandleTypeType (|lambda#7| |l#0@@1|) |$l#2#ly#0|) |l#0@@1|)
 :qid |Abstemiousdfy.70:7|
 :skolemid |826|
 :pattern ( (MapType1Select LayerTypeType HandleTypeType (|lambda#7| |l#0@@1|) |$l#2#ly#0|))
)))
(assert (forall ((|x#0@@5| Int) ) (! (= (|_module.__default.plus1#requires| |x#0@@5|) true)
 :qid |Abstemiousdfy.47:16|
 :skolemid |624|
 :pattern ( (|_module.__default.plus1#requires| |x#0@@5|))
)))
(assert (forall ((f@@10 T@U) (t0@@14 T@U) (t1@@13 T@U) (t2@@1 T@U) ) (! (= ($Is HandleTypeType f@@10 (Tclass._System.___hFunc2 t0@@14 t1@@13 t2@@1)) (forall ((h@@7 T@U) (bx0@@10 T@U) (bx1@@0 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@7) (and ($IsBox bx0@@10 t0@@14) ($IsBox bx1@@0 t1@@13))) (Requires2 t0@@14 t1@@13 t2@@1 h@@7 f@@10 bx0@@10 bx1@@0)) ($IsBox (Apply2 t0@@14 t1@@13 t2@@1 h@@7 f@@10 bx0@@10 bx1@@0) t2@@1))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |501|
 :pattern ( (Apply2 t0@@14 t1@@13 t2@@1 h@@7 f@@10 bx0@@10 bx1@@0))
)))
 :qid |unknown.0:0|
 :skolemid |502|
 :pattern ( ($Is HandleTypeType f@@10 (Tclass._System.___hFunc2 t0@@14 t1@@13 t2@@1)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (=> (or |_module.__default.squares#canCall| (< 2 $FunctionContextHeight)) ($Is DatatypeTypeType _module.__default.squares (Tclass._module.Stream TInt)))))
(assert (forall ((_module.List$T@@3 T@U) (d@@9 T@U) ) (!  (=> ($Is DatatypeTypeType d@@9 (Tclass._module.List _module.List$T@@3)) (or (_module.List.Nil_q d@@9) (_module.List.ListCons_q d@@9)))
 :qid |unknown.0:0|
 :skolemid |794|
 :pattern ( (_module.List.ListCons_q d@@9) ($Is DatatypeTypeType d@@9 (Tclass._module.List _module.List$T@@3)))
 :pattern ( (_module.List.Nil_q d@@9) ($Is DatatypeTypeType d@@9 (Tclass._module.List _module.List$T@@3)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0@@6| Int) (|y#0@@1| Int) ) (!  (=> (or (|_module.__default.plus#canCall| |x#0@@6| |y#0@@1|) (< 0 $FunctionContextHeight)) (= (_module.__default.plus |x#0@@6| |y#0@@1|) (+ |x#0@@6| |y#0@@1|)))
 :qid |Abstemiousdfy.48:15|
 :skolemid |629|
 :pattern ( (_module.__default.plus |x#0@@6| |y#0@@1|))
))))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a b))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@25 T@U) ) (!  (=> (or |_module.__default.OhOnes#canCall| (< 1 $FunctionContextHeight)) (and (and |_module.__default.OhOnes#canCall| (_module.Stream.Cons_q (Lit DatatypeTypeType (_module.__default.OhOnes $ly@@25)))) (= (_module.__default.OhOnes ($LS $ly@@25)) (Lit DatatypeTypeType (|#_module.Stream.Cons| ($Box intType (int_2_U (LitInt 0))) (Lit DatatypeTypeType (|#_module.Stream.Cons| ($Box intType (int_2_U (LitInt 1))) (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType (_module.__default.OhOnes $ly@@25)))))))))))
 :qid |Abstemiousdfy.113:10|
 :skolemid |715|
 :pattern ( (_module.__default.OhOnes ($LS $ly@@25)))
))))
(assert (forall ((t0@@15 T@U) (t1@@14 T@U) (t2@@2 T@U) (heap@@2 T@U) (f@@11 T@U) (bx0@@11 T@U) (bx1@@1 T@U) ) (!  (=> (and ($IsGoodHeap heap@@2) (and (and ($IsBox bx0@@11 t0@@15) ($IsBox bx1@@1 t1@@14)) ($Is HandleTypeType f@@11 (Tclass._System.___hFunc2 t0@@15 t1@@14 t2@@2)))) (= (|Set#Equal| (Reads2 t0@@15 t1@@14 t2@@2 $OneHeap f@@11 bx0@@11 bx1@@1) |Set#Empty|) (|Set#Equal| (Reads2 t0@@15 t1@@14 t2@@2 heap@@2 f@@11 bx0@@11 bx1@@1) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |499|
 :pattern ( (Reads2 t0@@15 t1@@14 t2@@2 $OneHeap f@@11 bx0@@11 bx1@@1) ($IsGoodHeap heap@@2))
 :pattern ( (Reads2 t0@@15 t1@@14 t2@@2 heap@@2 f@@11 bx0@@11 bx1@@1))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((f@@12 T@U) (t0@@16 T@U) (t1@@15 T@U) ) (! (= ($Is HandleTypeType f@@12 (Tclass._System.___hFunc1 t0@@16 t1@@15)) (forall ((h@@8 T@U) (bx0@@12 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@8) ($IsBox bx0@@12 t0@@16)) (Requires1 t0@@16 t1@@15 h@@8 f@@12 bx0@@12)) ($IsBox (Apply1 t0@@16 t1@@15 h@@8 f@@12 bx0@@12) t1@@15))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |387|
 :pattern ( (Apply1 t0@@16 t1@@15 h@@8 f@@12 bx0@@12))
)))
 :qid |unknown.0:0|
 :skolemid |388|
 :pattern ( ($Is HandleTypeType f@@12 (Tclass._System.___hFunc1 t0@@16 t1@@15)))
)))
(assert (forall ((f@@13 T@U) (t0@@17 T@U) (t1@@16 T@U) (t2@@3 T@U) (h@@9 T@U) ) (!  (=> (and ($IsGoodHeap h@@9) ($IsAlloc HandleTypeType f@@13 (Tclass._System.___hFunc2 t0@@17 t1@@16 t2@@3) h@@9)) (forall ((bx0@@13 T@U) (bx1@@2 T@U) ) (!  (=> (and (and ($IsAllocBox bx0@@13 t0@@17 h@@9) ($IsAllocBox bx1@@2 t1@@16 h@@9)) (Requires2 t0@@17 t1@@16 t2@@3 h@@9 f@@13 bx0@@13 bx1@@2)) ($IsAllocBox (Apply2 t0@@17 t1@@16 t2@@3 h@@9 f@@13 bx0@@13 bx1@@2) t2@@3 h@@9))
 :qid |unknown.0:0|
 :skolemid |510|
 :pattern ( (Apply2 t0@@17 t1@@16 t2@@3 h@@9 f@@13 bx0@@13 bx1@@2))
)))
 :qid |unknown.0:0|
 :skolemid |511|
 :pattern ( ($IsAlloc HandleTypeType f@@13 (Tclass._System.___hFunc2 t0@@17 t1@@16 t2@@3) h@@9))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 TInt) (and (= ($Box intType ($Unbox intType bx@@11)) bx@@11) ($Is intType ($Unbox intType bx@@11) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@11 TInt))
)))
(assert (forall ((v@@3 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@3) t@@2) ($Is T@@3 v@@3 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@3) t@@2))
)))
(assert (forall ((t0@@18 T@U) (t1@@17 T@U) (heap@@3 T@U) (h@@10 T@U) (r@@2 T@U) (rd@@1 T@U) (bx0@@14 T@U) ) (!  (=> (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType r@@2 heap@@3 bx0@@14)) (Requires1 t0@@18 t1@@17 heap@@3 (Handle1 h@@10 r@@2 rd@@1) bx0@@14))
 :qid |unknown.0:0|
 :skolemid |371|
 :pattern ( (Requires1 t0@@18 t1@@17 heap@@3 (Handle1 h@@10 r@@2 rd@@1) bx0@@14))
)))
(assert (forall (($heap@@4 T@U) (|$fh$0x#0@@4| T@U) (|$fh$0x#1@@0| T@U) ) (! (= (Requires2 TInt TInt TInt $heap@@4 |_module.__default.plus#Handle| |$fh$0x#0@@4| |$fh$0x#1@@0|) (|_module.__default.plus#requires| (U_2_int ($Unbox intType |$fh$0x#0@@4|)) (U_2_int ($Unbox intType |$fh$0x#1@@0|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |606|
 :pattern ( (Requires2 TInt TInt TInt $heap@@4 |_module.__default.plus#Handle| |$fh$0x#0@@4| |$fh$0x#1@@0|))
)))
(assert (forall ((s@@1 T@U) ) (! (<= 0 (|Seq#Length| s@@1))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@1))
)))
(assert (forall ((v@@4 T@U) (t0@@19 T@U) (h@@11 T@U) ) (! (= ($IsAlloc SetType v@@4 (TSet t0@@19) h@@11) (forall ((bx@@12 T@U) ) (!  (=> (|Set#IsMember| v@@4 bx@@12) ($IsAllocBox bx@@12 t0@@19 h@@11))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@4 bx@@12))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@4 (TSet t0@@19) h@@11))
)))
(assert (forall ((|#$T0@@18| T@U) (|#$R@@18| T@U) ) (! (= (Tclass._System.___hFunc1_0 (Tclass._System.___hFunc1 |#$T0@@18| |#$R@@18|)) |#$T0@@18|)
 :qid |unknown.0:0|
 :skolemid |367|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@18| |#$R@@18|))
)))
(assert (forall ((|#$T0@@19| T@U) (|#$R@@19| T@U) ) (! (= (Tclass._System.___hFunc1_1 (Tclass._System.___hFunc1 |#$T0@@19| |#$R@@19|)) |#$R@@19|)
 :qid |unknown.0:0|
 :skolemid |368|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@19| |#$R@@19|))
)))
(assert (forall ((|#$T0@@20| T@U) (|#$R@@20| T@U) ) (! (= (Tclass._System.___hPartialFunc1_0 (Tclass._System.___hPartialFunc1 |#$T0@@20| |#$R@@20|)) |#$T0@@20|)
 :qid |unknown.0:0|
 :skolemid |398|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@20| |#$R@@20|))
)))
(assert (forall ((|#$T0@@21| T@U) (|#$R@@21| T@U) ) (! (= (Tclass._System.___hPartialFunc1_1 (Tclass._System.___hPartialFunc1 |#$T0@@21| |#$R@@21|)) |#$R@@21|)
 :qid |unknown.0:0|
 :skolemid |399|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@21| |#$R@@21|))
)))
(assert (forall ((|#$T0@@22| T@U) (|#$R@@22| T@U) ) (! (= (Tclass._System.___hTotalFunc1_0 (Tclass._System.___hTotalFunc1 |#$T0@@22| |#$R@@22|)) |#$T0@@22|)
 :qid |unknown.0:0|
 :skolemid |405|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@22| |#$R@@22|))
)))
(assert (forall ((|#$T0@@23| T@U) (|#$R@@23| T@U) ) (! (= (Tclass._System.___hTotalFunc1_1 (Tclass._System.___hTotalFunc1 |#$T0@@23| |#$R@@23|)) |#$R@@23|)
 :qid |unknown.0:0|
 :skolemid |406|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@23| |#$R@@23|))
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
(assert (forall ((|a#6#0#0@@0| T@U) (|a#6#1#0@@0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0@@0| |a#6#1#0@@0|)) |a#6#1#0@@0|)
 :qid |unknown.0:0|
 :skolemid |465|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0@@0| |a#6#1#0@@0|))
)))
(assert (forall ((|a#4#0#0@@0| T@U) (|a#4#1#0@@0| T@U) ) (! (= (DatatypeCtorId (|#_module.List.ListCons| |a#4#0#0@@0| |a#4#1#0@@0|)) |##_module.List.ListCons|)
 :qid |Abstemiousdfy.50:35|
 :skolemid |780|
 :pattern ( (|#_module.List.ListCons| |a#4#0#0@@0| |a#4#1#0@@0|))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) ) (! (= (_module.List.head (|#_module.List.ListCons| |a#8#0#0| |a#8#1#0|)) |a#8#0#0|)
 :qid |Abstemiousdfy.50:35|
 :skolemid |789|
 :pattern ( (|#_module.List.ListCons| |a#8#0#0| |a#8#1#0|))
)))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| T@U) ) (! (= (_module.List.tail (|#_module.List.ListCons| |a#10#0#0| |a#10#1#0|)) |a#10#1#0|)
 :qid |Abstemiousdfy.50:35|
 :skolemid |791|
 :pattern ( (|#_module.List.ListCons| |a#10#0#0| |a#10#1#0|))
)))
(assert (forall ((|a#12#0#0| T@U) (|a#12#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Stream.Cons| |a#12#0#0| |a#12#1#0|)) |##_module.Stream.Cons|)
 :qid |Abstemiousdfy.51:29|
 :skolemid |798|
 :pattern ( (|#_module.Stream.Cons| |a#12#0#0| |a#12#1#0|))
)))
(assert (forall ((|a#15#0#0| T@U) (|a#15#1#0| T@U) ) (! (= (_module.Stream.head (|#_module.Stream.Cons| |a#15#0#0| |a#15#1#0|)) |a#15#0#0|)
 :qid |Abstemiousdfy.51:29|
 :skolemid |806|
 :pattern ( (|#_module.Stream.Cons| |a#15#0#0| |a#15#1#0|))
)))
(assert (forall ((|a#16#0#0| T@U) (|a#16#1#0| T@U) ) (! (= (_module.Stream.tail (|#_module.Stream.Cons| |a#16#0#0| |a#16#1#0|)) |a#16#1#0|)
 :qid |Abstemiousdfy.51:29|
 :skolemid |807|
 :pattern ( (|#_module.Stream.Cons| |a#16#0#0| |a#16#1#0|))
)))
(assert (forall (($o@@0 T@U) ) (! ($Is refType $o@@0 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@0 Tclass._System.object?))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((_module.Stream$T@@2 T@U) ) (! (= (Tclass._module.Stream_0 (Tclass._module.Stream _module.Stream$T@@2)) _module.Stream$T@@2)
 :qid |unknown.0:0|
 :skolemid |591|
 :pattern ( (Tclass._module.Stream _module.Stream$T@@2))
)))
(assert (forall ((_module.List$T@@4 T@U) ) (! (= (Tclass._module.List_0 (Tclass._module.List _module.List$T@@4)) _module.List$T@@4)
 :qid |unknown.0:0|
 :skolemid |616|
 :pattern ( (Tclass._module.List _module.List$T@@4))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((t0@@20 T@U) (t1@@18 T@U) (t2@@4 T@U) (heap@@4 T@U) (f@@14 T@U) (bx0@@15 T@U) (bx1@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@4) (and (and ($IsBox bx0@@15 t0@@20) ($IsBox bx1@@3 t1@@18)) ($Is HandleTypeType f@@14 (Tclass._System.___hFunc2 t0@@20 t1@@18 t2@@4)))) (|Set#Equal| (Reads2 t0@@20 t1@@18 t2@@4 $OneHeap f@@14 bx0@@15 bx1@@3) |Set#Empty|)) (= (Requires2 t0@@20 t1@@18 t2@@4 $OneHeap f@@14 bx0@@15 bx1@@3) (Requires2 t0@@20 t1@@18 t2@@4 heap@@4 f@@14 bx0@@15 bx1@@3)))
 :qid |unknown.0:0|
 :skolemid |500|
 :pattern ( (Requires2 t0@@20 t1@@18 t2@@4 $OneHeap f@@14 bx0@@15 bx1@@3) ($IsGoodHeap heap@@4))
 :pattern ( (Requires2 t0@@20 t1@@18 t2@@4 heap@@4 f@@14 bx0@@15 bx1@@3))
)))
(assert (forall ((|a#5#0#0@@0| T@U) (|a#5#1#0@@0| T@U) ) (! (< (BoxRank |a#5#0#0@@0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0@@0| |a#5#1#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |464|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0@@0| |a#5#1#0@@0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |466|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((|a#9#0#0| T@U) (|a#9#1#0| T@U) ) (! (< (BoxRank |a#9#0#0|) (DtRank (|#_module.List.ListCons| |a#9#0#0| |a#9#1#0|)))
 :qid |Abstemiousdfy.50:35|
 :skolemid |790|
 :pattern ( (|#_module.List.ListCons| |a#9#0#0| |a#9#1#0|))
)))
(assert (forall ((|a#11#0#0| T@U) (|a#11#1#0| T@U) ) (! (< (DtRank |a#11#1#0|) (DtRank (|#_module.List.ListCons| |a#11#0#0| |a#11#1#0|)))
 :qid |Abstemiousdfy.50:35|
 :skolemid |792|
 :pattern ( (|#_module.List.ListCons| |a#11#0#0| |a#11#1#0|))
)))
(assert (forall (($ly@@26 T@U) (|n#0@@4| Int) ) (! (= (_module.__default.from ($LS $ly@@26) |n#0@@4|) (_module.__default.from $ly@@26 |n#0@@4|))
 :qid |Abstemiousdfy.58:10|
 :skolemid |637|
 :pattern ( (_module.__default.from ($LS $ly@@26) |n#0@@4|))
)))
(assert (forall (($ly@@27 T@U) (|a#0@@8| T@U) ) (! (= (_module.__default.addPair ($LS $ly@@27) |a#0@@8|) (_module.__default.addPair $ly@@27 |a#0@@8|))
 :qid |Abstemiousdfy.83:24|
 :skolemid |668|
 :pattern ( (_module.__default.addPair ($LS $ly@@27) |a#0@@8|))
)))
(assert (forall ((|#$T0@@24| T@U) (|#$R@@24| T@U) (|f#0@@7| T@U) ) (! (= ($Is HandleTypeType |f#0@@7| (Tclass._System.___hTotalFunc1 |#$T0@@24| |#$R@@24|))  (and ($Is HandleTypeType |f#0@@7| (Tclass._System.___hPartialFunc1 |#$T0@@24| |#$R@@24|)) (forall ((|x0#0@@1| T@U) ) (!  (=> ($IsBox |x0#0@@1| |#$T0@@24|) (Requires1 |#$T0@@24| |#$R@@24| $OneHeap |f#0@@7| |x0#0@@1|))
 :qid |unknown.0:0|
 :skolemid |408|
))))
 :qid |unknown.0:0|
 :skolemid |409|
 :pattern ( ($Is HandleTypeType |f#0@@7| (Tclass._System.___hTotalFunc1 |#$T0@@24| |#$R@@24|)))
)))
(assert (forall ((f@@15 T@U) (t0@@21 T@U) (t1@@19 T@U) (t2@@5 T@U) (u0@@3 T@U) (u1@@3 T@U) (u2@@1 T@U) ) (!  (=> (and (and (and ($Is HandleTypeType f@@15 (Tclass._System.___hFunc2 t0@@21 t1@@19 t2@@5)) (forall ((bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 u0@@3) ($IsBox bx@@13 t0@@21))
 :qid |unknown.0:0|
 :skolemid |503|
 :pattern ( ($IsBox bx@@13 u0@@3))
 :pattern ( ($IsBox bx@@13 t0@@21))
))) (forall ((bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 u1@@3) ($IsBox bx@@14 t1@@19))
 :qid |unknown.0:0|
 :skolemid |504|
 :pattern ( ($IsBox bx@@14 u1@@3))
 :pattern ( ($IsBox bx@@14 t1@@19))
))) (forall ((bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 t2@@5) ($IsBox bx@@15 u2@@1))
 :qid |unknown.0:0|
 :skolemid |505|
 :pattern ( ($IsBox bx@@15 t2@@5))
 :pattern ( ($IsBox bx@@15 u2@@1))
))) ($Is HandleTypeType f@@15 (Tclass._System.___hFunc2 u0@@3 u1@@3 u2@@1)))
 :qid |unknown.0:0|
 :skolemid |506|
 :pattern ( ($Is HandleTypeType f@@15 (Tclass._System.___hFunc2 t0@@21 t1@@19 t2@@5)) ($Is HandleTypeType f@@15 (Tclass._System.___hFunc2 u0@@3 u1@@3 u2@@1)))
)))
(assert (forall ((|#$T0@@25| T@U) (|#$R@@25| T@U) (|f#0@@8| T@U) ) (! (= ($Is HandleTypeType |f#0@@8| (Tclass._System.___hPartialFunc1 |#$T0@@25| |#$R@@25|))  (and ($Is HandleTypeType |f#0@@8| (Tclass._System.___hFunc1 |#$T0@@25| |#$R@@25|)) (forall ((|x0#0@@2| T@U) ) (!  (=> ($IsBox |x0#0@@2| |#$T0@@25|) (|Set#Equal| (Reads1 |#$T0@@25| |#$R@@25| $OneHeap |f#0@@8| |x0#0@@2|) |Set#Empty|))
 :qid |unknown.0:0|
 :skolemid |401|
))))
 :qid |unknown.0:0|
 :skolemid |402|
 :pattern ( ($Is HandleTypeType |f#0@@8| (Tclass._System.___hPartialFunc1 |#$T0@@25| |#$R@@25|)))
)))
(assert (forall ((f@@16 T@U) (ly@@0 T@U) (A@@0 T@T) ) (! (= (AtLayer A@@0 f@@16 ($LS ly@@0)) (AtLayer A@@0 f@@16 ly@@0))
 :qid |DafnyPreludebpl.502:18|
 :skolemid |102|
 :pattern ( (AtLayer A@@0 f@@16 ($LS ly@@0)))
)))
(assert (forall ((n Int) ) (!  (=> (or (and (<= 0 n) (< n 55296)) (and (<= 57344 n) (< n 1114112))) (= (|char#ToInt| (|char#FromInt| n)) n))
 :qid |DafnyPreludebpl.131:15|
 :skolemid |21|
 :pattern ( (|char#FromInt| n))
)))
(assert (forall ((f@@17 T@U) (t0@@22 T@U) (t1@@20 T@U) (h@@12 T@U) ) (!  (=> ($IsGoodHeap h@@12) (= ($IsAlloc HandleTypeType f@@17 (Tclass._System.___hFunc1 t0@@22 t1@@20) h@@12) (forall ((bx0@@16 T@U) ) (!  (=> (and (and ($IsBox bx0@@16 t0@@22) ($IsAllocBox bx0@@16 t0@@22 h@@12)) (Requires1 t0@@22 t1@@20 h@@12 f@@17 bx0@@16)) (forall ((r@@3 T@U) ) (!  (=> (and (or (not (= r@@3 null)) (not true)) (|Set#IsMember| (Reads1 t0@@22 t1@@20 h@@12 f@@17 bx0@@16) ($Box refType r@@3))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@12 r@@3) alloc))))
 :qid |unknown.0:0|
 :skolemid |392|
 :pattern ( (|Set#IsMember| (Reads1 t0@@22 t1@@20 h@@12 f@@17 bx0@@16) ($Box refType r@@3)))
)))
 :qid |unknown.0:0|
 :skolemid |393|
 :pattern ( (Apply1 t0@@22 t1@@20 h@@12 f@@17 bx0@@16))
 :pattern ( (Reads1 t0@@22 t1@@20 h@@12 f@@17 bx0@@16))
))))
 :qid |unknown.0:0|
 :skolemid |394|
 :pattern ( ($IsAlloc HandleTypeType f@@17 (Tclass._System.___hFunc1 t0@@22 t1@@20) h@@12))
)))
(assert (forall ((|#$T0@@26| T@U) (|#$R@@26| T@U) (bx@@16 T@U) ) (!  (=> ($IsBox bx@@16 (Tclass._System.___hFunc1 |#$T0@@26| |#$R@@26|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@16)) bx@@16) ($Is HandleTypeType ($Unbox HandleTypeType bx@@16) (Tclass._System.___hFunc1 |#$T0@@26| |#$R@@26|))))
 :qid |unknown.0:0|
 :skolemid |369|
 :pattern ( ($IsBox bx@@16 (Tclass._System.___hFunc1 |#$T0@@26| |#$R@@26|)))
)))
(assert (forall ((|#$T0@@27| T@U) (|#$R@@27| T@U) (bx@@17 T@U) ) (!  (=> ($IsBox bx@@17 (Tclass._System.___hPartialFunc1 |#$T0@@27| |#$R@@27|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@17)) bx@@17) ($Is HandleTypeType ($Unbox HandleTypeType bx@@17) (Tclass._System.___hPartialFunc1 |#$T0@@27| |#$R@@27|))))
 :qid |unknown.0:0|
 :skolemid |400|
 :pattern ( ($IsBox bx@@17 (Tclass._System.___hPartialFunc1 |#$T0@@27| |#$R@@27|)))
)))
(assert (forall ((|#$T0@@28| T@U) (|#$R@@28| T@U) (bx@@18 T@U) ) (!  (=> ($IsBox bx@@18 (Tclass._System.___hTotalFunc1 |#$T0@@28| |#$R@@28|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@18)) bx@@18) ($Is HandleTypeType ($Unbox HandleTypeType bx@@18) (Tclass._System.___hTotalFunc1 |#$T0@@28| |#$R@@28|))))
 :qid |unknown.0:0|
 :skolemid |407|
 :pattern ( ($IsBox bx@@18 (Tclass._System.___hTotalFunc1 |#$T0@@28| |#$R@@28|)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@19 T@U) ) (!  (=> ($IsBox bx@@19 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@19)) bx@@19) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@19) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |455|
 :pattern ( ($IsBox bx@@19 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((d@@10 T@U) (_module.List$T@@5 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (_module.List.ListCons_q d@@10) ($IsAlloc DatatypeTypeType d@@10 (Tclass._module.List _module.List$T@@5) $h@@6))) ($IsAllocBox (_module.List.head d@@10) _module.List$T@@5 $h@@6))
 :qid |unknown.0:0|
 :skolemid |786|
 :pattern ( ($IsAllocBox (_module.List.head d@@10) _module.List$T@@5 $h@@6))
)))
(assert (forall ((d@@11 T@U) (_module.Stream$T@@3 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (_module.Stream.Cons_q d@@11) ($IsAlloc DatatypeTypeType d@@11 (Tclass._module.Stream _module.Stream$T@@3) $h@@7))) ($IsAllocBox (_module.Stream.head d@@11) _module.Stream$T@@3 $h@@7))
 :qid |unknown.0:0|
 :skolemid |804|
 :pattern ( ($IsAllocBox (_module.Stream.head d@@11) _module.Stream$T@@3 $h@@7))
)))
(assert (forall ((|l#0@@2| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@2| |l#1| |l#2| |l#3|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0@@2|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o@@1) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |821|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@2| |l#1| |l#2| |l#3|) $o@@1 $f))
)))
(assert (forall ((|#$T0@@29| T@U) (|#$T1@@16| T@U) (|#$R@@29| T@U) (|f#0@@9| T@U) ($h@@8 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@9| (Tclass._System.___hPartialFunc2 |#$T0@@29| |#$T1@@16| |#$R@@29|) $h@@8) ($IsAlloc HandleTypeType |f#0@@9| (Tclass._System.___hFunc2 |#$T0@@29| |#$T1@@16| |#$R@@29|) $h@@8))
 :qid |unknown.0:0|
 :skolemid |519|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@9| (Tclass._System.___hPartialFunc2 |#$T0@@29| |#$T1@@16| |#$R@@29|) $h@@8))
)))
(assert (forall ((|#$T0@@30| T@U) (|#$T1@@17| T@U) (|#$R@@30| T@U) (|f#0@@10| T@U) ($h@@9 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@10| (Tclass._System.___hTotalFunc2 |#$T0@@30| |#$T1@@17| |#$R@@30|) $h@@9) ($IsAlloc HandleTypeType |f#0@@10| (Tclass._System.___hPartialFunc2 |#$T0@@30| |#$T1@@17| |#$R@@30|) $h@@9))
 :qid |unknown.0:0|
 :skolemid |527|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@10| (Tclass._System.___hTotalFunc2 |#$T0@@30| |#$T1@@17| |#$R@@30|) $h@@9))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@4 T@U) (_module._default.Map$T@@1 T@U) (_module._default.Map$U@@1 T@U) ($ly@@28 T@U) (|f#0@@11| T@U) (|s#0@@5| T@U) ) (!  (=> (and (or (|_module.__default.Map#canCall| _module._default.Map$T@@1 _module._default.Map$U@@1 |f#0@@11| |s#0@@5|) (and (< 1 $FunctionContextHeight) (and (and ($Is HandleTypeType |f#0@@11| (Tclass._System.___hTotalFunc1 _module._default.Map$T@@1 _module._default.Map$U@@1)) ($IsAlloc HandleTypeType |f#0@@11| (Tclass._System.___hTotalFunc1 _module._default.Map$T@@1 _module._default.Map$U@@1) $Heap@@4)) (and ($Is DatatypeTypeType |s#0@@5| (Tclass._module.Stream _module._default.Map$T@@1)) ($IsAlloc DatatypeTypeType |s#0@@5| (Tclass._module.Stream _module._default.Map$T@@1) $Heap@@4))))) ($IsGoodHeap $Heap@@4)) ($IsAlloc DatatypeTypeType (_module.__default.Map _module._default.Map$T@@1 _module._default.Map$U@@1 $ly@@28 |f#0@@11| |s#0@@5|) (Tclass._module.Stream _module._default.Map$U@@1) $Heap@@4))
 :qid |Abstemiousdfy.63:10|
 :skolemid |646|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.__default.Map _module._default.Map$T@@1 _module._default.Map$U@@1 $ly@@28 |f#0@@11| |s#0@@5|) (Tclass._module.Stream _module._default.Map$U@@1) $Heap@@4))
))))
(assert (forall ((s@@2 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@2 val@@4)) s@@2) (= (|Seq#Build_inv1| (|Seq#Build| s@@2 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@2 val@@4))
)))
(assert (forall ((|#$T0@@31| T@U) (|#$R@@31| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@31| |#$R@@31|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@31| |#$R@@31|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |366|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@31| |#$R@@31|))
)))
(assert (forall ((|#$T0@@32| T@U) (|#$R@@32| T@U) ) (!  (and (= (Tag (Tclass._System.___hPartialFunc1 |#$T0@@32| |#$R@@32|)) Tagclass._System.___hPartialFunc1) (= (TagFamily (Tclass._System.___hPartialFunc1 |#$T0@@32| |#$R@@32|)) |tytagFamily$_#PartialFunc1|))
 :qid |unknown.0:0|
 :skolemid |397|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@32| |#$R@@32|))
)))
(assert (forall ((|#$T0@@33| T@U) (|#$R@@33| T@U) ) (!  (and (= (Tag (Tclass._System.___hTotalFunc1 |#$T0@@33| |#$R@@33|)) Tagclass._System.___hTotalFunc1) (= (TagFamily (Tclass._System.___hTotalFunc1 |#$T0@@33| |#$R@@33|)) |tytagFamily$_#TotalFunc1|))
 :qid |unknown.0:0|
 :skolemid |404|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@33| |#$R@@33|))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |452|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@29 T@U) ) (!  (=> (or |_module.__default.Fib#canCall| (< 2 $FunctionContextHeight)) (and (and (and |_module.__default.Fib#canCall| (and |_module.__default.Fib#canCall| (_module.Stream.Cons_q (Lit DatatypeTypeType (_module.__default.Fib $ly@@29))))) (|_module.__default.add#canCall| (Lit DatatypeTypeType (_module.__default.Fib $ly@@29)) (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType (_module.__default.Fib $ly@@29)))))) (= (_module.__default.Fib ($LS $ly@@29)) (Lit DatatypeTypeType (|#_module.Stream.Cons| ($Box intType (int_2_U (LitInt 0))) (Lit DatatypeTypeType (|#_module.Stream.Cons| ($Box intType (int_2_U (LitInt 1))) (Lit DatatypeTypeType (_module.__default.add ($LS $LZ) (Lit DatatypeTypeType (_module.__default.Fib $ly@@29)) (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType (_module.__default.Fib $ly@@29)))))))))))))
 :qid |Abstemiousdfy.98:10|
 :skolemid |693|
 :pattern ( (_module.__default.Fib ($LS $ly@@29)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Combine$T@@1 T@U) ($ly@@30 T@U) (|f#0@@12| T@U) (|a#0@@9| T@U) (|b#0@@6| T@U) ) (!  (=> (or (|_module.__default.Combine#canCall| _module._default.Combine$T@@1 |f#0@@12| |a#0@@9| |b#0@@6|) (and (< 1 $FunctionContextHeight) (and (and ($Is HandleTypeType |f#0@@12| (Tclass._System.___hTotalFunc2 _module._default.Combine$T@@1 _module._default.Combine$T@@1 _module._default.Combine$T@@1)) ($Is DatatypeTypeType |a#0@@9| (Tclass._module.Stream _module._default.Combine$T@@1))) ($Is DatatypeTypeType |b#0@@6| (Tclass._module.Stream _module._default.Combine$T@@1))))) ($Is DatatypeTypeType (_module.__default.Combine _module._default.Combine$T@@1 $ly@@30 |f#0@@12| |a#0@@9| |b#0@@6|) (Tclass._module.Stream _module._default.Combine$T@@1)))
 :qid |unknown.0:0|
 :skolemid |719|
 :pattern ( (_module.__default.Combine _module._default.Combine$T@@1 $ly@@30 |f#0@@12| |a#0@@9| |b#0@@6|))
))))
(assert (forall ((x@@6 Int) (y Int) ) (! (= (Mul x@@6 y) (* x@@6 y))
 :qid |DafnyPreludebpl.1647:14|
 :skolemid |338|
 :pattern ( (Mul x@@6 y))
)))
(assert (forall ((t0@@23 T@U) (t1@@21 T@U) (heap@@5 T@U) (f@@18 T@U) (bx0@@17 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@5) (and ($IsBox bx0@@17 t0@@23) ($Is HandleTypeType f@@18 (Tclass._System.___hFunc1 t0@@23 t1@@21)))) (|Set#Equal| (Reads1 t0@@23 t1@@21 $OneHeap f@@18 bx0@@17) |Set#Empty|)) (= (Requires1 t0@@23 t1@@21 $OneHeap f@@18 bx0@@17) (Requires1 t0@@23 t1@@21 heap@@5 f@@18 bx0@@17)))
 :qid |unknown.0:0|
 :skolemid |386|
 :pattern ( (Requires1 t0@@23 t1@@21 $OneHeap f@@18 bx0@@17) ($IsGoodHeap heap@@5))
 :pattern ( (Requires1 t0@@23 t1@@21 heap@@5 f@@18 bx0@@17))
)))
(assert (forall ((d@@12 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@12)) (DtRank d@@12))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@12)))
)))
(assert (forall (($ly@@31 T@U) ) (! (= (_module.__default.ones ($LS $ly@@31)) (_module.__default.ones $ly@@31))
 :qid |Abstemiousdfy.53:10|
 :skolemid |631|
 :pattern ( (_module.__default.ones ($LS $ly@@31)))
)))
(assert (forall (($ly@@32 T@U) ) (! (= (_module.__default.fib ($LS $ly@@32)) (_module.__default.fib $ly@@32))
 :qid |Abstemiousdfy.88:10|
 :skolemid |674|
 :pattern ( (_module.__default.fib ($LS $ly@@32)))
)))
(assert (forall (($ly@@33 T@U) ) (! (= (_module.__default.Fib ($LS $ly@@33)) (_module.__default.Fib $ly@@33))
 :qid |Abstemiousdfy.98:10|
 :skolemid |689|
 :pattern ( (_module.__default.Fib ($LS $ly@@33)))
)))
(assert (forall (($ly@@34 T@U) ) (! (= (_module.__default.Fib0 ($LS $ly@@34)) (_module.__default.Fib0 $ly@@34))
 :qid |Abstemiousdfy.103:10|
 :skolemid |697|
 :pattern ( (_module.__default.Fib0 ($LS $ly@@34)))
)))
(assert (forall (($ly@@35 T@U) ) (! (= (_module.__default.Fib1 ($LS $ly@@35)) (_module.__default.Fib1 $ly@@35))
 :qid |Abstemiousdfy.108:10|
 :skolemid |703|
 :pattern ( (_module.__default.Fib1 ($LS $ly@@35)))
)))
(assert (forall (($ly@@36 T@U) ) (! (= (_module.__default.OhOnes ($LS $ly@@36)) (_module.__default.OhOnes $ly@@36))
 :qid |Abstemiousdfy.113:10|
 :skolemid |711|
 :pattern ( (_module.__default.OhOnes ($LS $ly@@36)))
)))
(assert (forall ((_module._default.take$_T0@@3 T@U) ($ly@@37 T@U) (|n#0@@5| Int) (|s#0@@6| T@U) ) (! (= (_module.__default.take _module._default.take$_T0@@3 ($LS $ly@@37) |n#0@@5| |s#0@@6|) (_module.__default.take _module._default.take$_T0@@3 $ly@@37 |n#0@@5| |s#0@@6|))
 :qid |unknown.0:0|
 :skolemid |652|
 :pattern ( (_module.__default.take _module._default.take$_T0@@3 ($LS $ly@@37) |n#0@@5| |s#0@@6|))
)))
(assert (forall ((t0@@24 T@U) (t1@@22 T@U) (t2@@6 T@U) (h0@@5 T@U) (h1@@5 T@U) (f@@19 T@U) (bx0@@18 T@U) (bx1@@4 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@5 h1@@5) (and ($IsGoodHeap h0@@5) ($IsGoodHeap h1@@5))) (and (and ($IsBox bx0@@18 t0@@24) ($IsBox bx1@@4 t1@@22)) ($Is HandleTypeType f@@19 (Tclass._System.___hFunc2 t0@@24 t1@@22 t2@@6)))) (forall ((o@@7 T@U) (fld@@5 T@U) ) (!  (=> (and (or (not (= o@@7 null)) (not true)) (|Set#IsMember| (Reads2 t0@@24 t1@@22 t2@@6 h0@@5 f@@19 bx0@@18 bx1@@4) ($Box refType o@@7))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@5 o@@7) fld@@5) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@5 o@@7) fld@@5)))
 :qid |unknown.0:0|
 :skolemid |491|
))) (= (Requires2 t0@@24 t1@@22 t2@@6 h0@@5 f@@19 bx0@@18 bx1@@4) (Requires2 t0@@24 t1@@22 t2@@6 h1@@5 f@@19 bx0@@18 bx1@@4)))
 :qid |unknown.0:0|
 :skolemid |492|
 :pattern ( ($HeapSucc h0@@5 h1@@5) (Requires2 t0@@24 t1@@22 t2@@6 h1@@5 f@@19 bx0@@18 bx1@@4))
)))
(assert (forall ((t0@@25 T@U) (t1@@23 T@U) (t2@@7 T@U) (h0@@6 T@U) (h1@@6 T@U) (f@@20 T@U) (bx0@@19 T@U) (bx1@@5 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@6 h1@@6) (and ($IsGoodHeap h0@@6) ($IsGoodHeap h1@@6))) (and (and ($IsBox bx0@@19 t0@@25) ($IsBox bx1@@5 t1@@23)) ($Is HandleTypeType f@@20 (Tclass._System.___hFunc2 t0@@25 t1@@23 t2@@7)))) (forall ((o@@8 T@U) (fld@@6 T@U) ) (!  (=> (and (or (not (= o@@8 null)) (not true)) (|Set#IsMember| (Reads2 t0@@25 t1@@23 t2@@7 h1@@6 f@@20 bx0@@19 bx1@@5) ($Box refType o@@8))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@6 o@@8) fld@@6) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@6 o@@8) fld@@6)))
 :qid |unknown.0:0|
 :skolemid |493|
))) (= (Requires2 t0@@25 t1@@23 t2@@7 h0@@6 f@@20 bx0@@19 bx1@@5) (Requires2 t0@@25 t1@@23 t2@@7 h1@@6 f@@20 bx0@@19 bx1@@5)))
 :qid |unknown.0:0|
 :skolemid |494|
 :pattern ( ($HeapSucc h0@@6 h1@@6) (Requires2 t0@@25 t1@@23 t2@@7 h1@@6 f@@20 bx0@@19 bx1@@5))
)))
(assert (forall ((bx@@20 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@20 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@20)) bx@@20) ($Is SetType ($Unbox SetType bx@@20) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@20 (TSet t@@5)))
)))
(assert (forall ((_module.Stream$T@@4 T@U) (bx@@21 T@U) ) (!  (=> ($IsBox bx@@21 (Tclass._module.Stream _module.Stream$T@@4)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@21)) bx@@21) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@21) (Tclass._module.Stream _module.Stream$T@@4))))
 :qid |unknown.0:0|
 :skolemid |592|
 :pattern ( ($IsBox bx@@21 (Tclass._module.Stream _module.Stream$T@@4)))
)))
(assert (forall ((_module.List$T@@6 T@U) (bx@@22 T@U) ) (!  (=> ($IsBox bx@@22 (Tclass._module.List _module.List$T@@6)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@22)) bx@@22) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@22) (Tclass._module.List _module.List$T@@6))))
 :qid |unknown.0:0|
 :skolemid |617|
 :pattern ( ($IsBox bx@@22 (Tclass._module.List _module.List$T@@6)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@38 T@U) (|a#0@@10| T@U) (|b#0@@7| T@U) ) (!  (=> (or (|_module.__default.add#canCall| |a#0@@10| |b#0@@7|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |a#0@@10| (Tclass._module.Stream TInt)) ($Is DatatypeTypeType |b#0@@7| (Tclass._module.Stream TInt))))) ($Is DatatypeTypeType (_module.__default.add $ly@@38 |a#0@@10| |b#0@@7|) (Tclass._module.Stream TInt)))
 :qid |Abstemiousdfy.93:24|
 :skolemid |685|
 :pattern ( (_module.__default.add $ly@@38 |a#0@@10| |b#0@@7|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@39 T@U) (|n#0@@6| Int) ) (!  (=> (or (|_module.__default.from#canCall| |n#0@@6|) (< 1 $FunctionContextHeight)) (and (|_module.__default.from#canCall| (+ |n#0@@6| 1)) (= (_module.__default.from ($LS $ly@@39) |n#0@@6|) (|#_module.Stream.Cons| ($Box intType (int_2_U |n#0@@6|)) (_module.__default.from $ly@@39 (+ |n#0@@6| 1))))))
 :qid |Abstemiousdfy.58:10|
 :skolemid |641|
 :pattern ( (_module.__default.from ($LS $ly@@39) |n#0@@6|))
))))
(assert (forall ((ch T@U) ) (!  (and (= (|char#FromInt| (|char#ToInt| ch)) ch) (or (and (<= 0 (|char#ToInt| ch)) (< (|char#ToInt| ch) 55296)) (and (<= 57344 (|char#ToInt| ch)) (< (|char#ToInt| ch) 1114112))))
 :qid |DafnyPreludebpl.136:15|
 :skolemid |22|
 :pattern ( (|char#ToInt| ch))
)))
(assert (forall ((d@@13 T@U) (_module.List$T@@7 T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (_module.List.ListCons_q d@@13) ($IsAlloc DatatypeTypeType d@@13 (Tclass._module.List _module.List$T@@7) $h@@10))) ($IsAlloc DatatypeTypeType (_module.List.tail d@@13) (Tclass._module.List _module.List$T@@7) $h@@10))
 :qid |unknown.0:0|
 :skolemid |787|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.List.tail d@@13) (Tclass._module.List _module.List$T@@7) $h@@10))
)))
(assert (forall ((d@@14 T@U) (_module.Stream$T@@5 T@U) ($h@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (_module.Stream.Cons_q d@@14) ($IsAlloc DatatypeTypeType d@@14 (Tclass._module.Stream _module.Stream$T@@5) $h@@11))) ($IsAlloc DatatypeTypeType (_module.Stream.tail d@@14) (Tclass._module.Stream _module.Stream$T@@5) $h@@11))
 :qid |unknown.0:0|
 :skolemid |805|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Stream.tail d@@14) (Tclass._module.Stream _module.Stream$T@@5) $h@@11))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= |#_module.List.Nil| (Lit DatatypeTypeType |#_module.List.Nil|)))
(assert (forall (($heap@@5 T@U) (|$fh$0x#0@@5| Int) (|$fh$0x#1@@1| Int) ) (! (= (_module.__default.plus |$fh$0x#0@@5| |$fh$0x#1@@1|) (U_2_int ($Unbox intType (Apply2 TInt TInt TInt $heap@@5 |_module.__default.plus#Handle| ($Box intType (int_2_U |$fh$0x#0@@5|)) ($Box intType (int_2_U |$fh$0x#1@@1|))))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |608|
 :pattern ( (_module.__default.plus |$fh$0x#0@@5| |$fh$0x#1@@1|) ($IsGoodHeap $heap@@5))
)))
(assert (forall (($heap@@6 T@U) (|$fh$0x#0@@6| T@U) (|$fh$0x#1@@2| T@U) ) (! (= (Apply2 TInt TInt TInt $heap@@6 |_module.__default.plus#Handle| |$fh$0x#0@@6| |$fh$0x#1@@2|) ($Box intType (int_2_U (_module.__default.plus (U_2_int ($Unbox intType |$fh$0x#0@@6|)) (U_2_int ($Unbox intType |$fh$0x#1@@2|))))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |605|
 :pattern ( (Apply2 TInt TInt TInt $heap@@6 |_module.__default.plus#Handle| |$fh$0x#0@@6| |$fh$0x#1@@2|))
)))
(assert (forall ((s@@3 T@U) ) (! ($Is SetType (SetRef_to_SetBox s@@3) (TSet Tclass._System.object?))
 :qid |DafnyPreludebpl.372:15|
 :skolemid |83|
 :pattern ( (SetRef_to_SetBox s@@3))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@1 b@@1) (forall ((o@@9 T@U) ) (! (= (|Set#IsMember| a@@1 o@@9) (|Set#IsMember| b@@1 o@@9))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@1 o@@9))
 :pattern ( (|Set#IsMember| b@@1 o@@9))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@1 b@@1))
)))
(assert (forall ((d@@15 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (_System.Tuple2.___hMake2_q d@@15) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@15 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@12)
 :qid |unknown.0:0|
 :skolemid |458|
 :pattern ( ($IsAlloc DatatypeTypeType d@@15 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@12))
)))) ($IsAllocBox (_System.Tuple2._0 d@@15) |_System._tuple#2$T0@@6| $h@@12))
 :qid |unknown.0:0|
 :skolemid |459|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@15) |_System._tuple#2$T0@@6| $h@@12))
)))
(assert (forall ((d@@16 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (_System.Tuple2.___hMake2_q d@@16) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@16 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@13)
 :qid |unknown.0:0|
 :skolemid |460|
 :pattern ( ($IsAlloc DatatypeTypeType d@@16 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@13))
)))) ($IsAllocBox (_System.Tuple2._1 d@@16) |_System._tuple#2$T1@@7| $h@@13))
 :qid |unknown.0:0|
 :skolemid |461|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@16) |_System._tuple#2$T1@@7| $h@@13))
)))
(assert (forall ((t0@@26 T@U) (t1@@24 T@U) (t2@@8 T@U) (h0@@7 T@U) (h1@@7 T@U) (f@@21 T@U) (bx0@@20 T@U) (bx1@@6 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@7 h1@@7) (and ($IsGoodHeap h0@@7) ($IsGoodHeap h1@@7))) (and (and ($IsBox bx0@@20 t0@@26) ($IsBox bx1@@6 t1@@24)) ($Is HandleTypeType f@@21 (Tclass._System.___hFunc2 t0@@26 t1@@24 t2@@8)))) (forall ((o@@10 T@U) (fld@@7 T@U) ) (!  (=> (and (or (not (= o@@10 null)) (not true)) (|Set#IsMember| (Reads2 t0@@26 t1@@24 t2@@8 h0@@7 f@@21 bx0@@20 bx1@@6) ($Box refType o@@10))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@7 o@@10) fld@@7) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@7 o@@10) fld@@7)))
 :qid |unknown.0:0|
 :skolemid |487|
))) (= (Reads2 t0@@26 t1@@24 t2@@8 h0@@7 f@@21 bx0@@20 bx1@@6) (Reads2 t0@@26 t1@@24 t2@@8 h1@@7 f@@21 bx0@@20 bx1@@6)))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( ($HeapSucc h0@@7 h1@@7) (Reads2 t0@@26 t1@@24 t2@@8 h1@@7 f@@21 bx0@@20 bx1@@6))
)))
(assert (forall ((t0@@27 T@U) (t1@@25 T@U) (t2@@9 T@U) (h0@@8 T@U) (h1@@8 T@U) (f@@22 T@U) (bx0@@21 T@U) (bx1@@7 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@8 h1@@8) (and ($IsGoodHeap h0@@8) ($IsGoodHeap h1@@8))) (and (and ($IsBox bx0@@21 t0@@27) ($IsBox bx1@@7 t1@@25)) ($Is HandleTypeType f@@22 (Tclass._System.___hFunc2 t0@@27 t1@@25 t2@@9)))) (forall ((o@@11 T@U) (fld@@8 T@U) ) (!  (=> (and (or (not (= o@@11 null)) (not true)) (|Set#IsMember| (Reads2 t0@@27 t1@@25 t2@@9 h1@@8 f@@22 bx0@@21 bx1@@7) ($Box refType o@@11))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@8 o@@11) fld@@8) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@8 o@@11) fld@@8)))
 :qid |unknown.0:0|
 :skolemid |489|
))) (= (Reads2 t0@@27 t1@@25 t2@@9 h0@@8 f@@22 bx0@@21 bx1@@7) (Reads2 t0@@27 t1@@25 t2@@9 h1@@8 f@@22 bx0@@21 bx1@@7)))
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( ($HeapSucc h0@@8 h1@@8) (Reads2 t0@@27 t1@@25 t2@@9 h1@@8 f@@22 bx0@@21 bx1@@7))
)))
(assert (forall ((t0@@28 T@U) (t1@@26 T@U) (t2@@10 T@U) (h0@@9 T@U) (h1@@9 T@U) (f@@23 T@U) (bx0@@22 T@U) (bx1@@8 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@9 h1@@9) (and ($IsGoodHeap h0@@9) ($IsGoodHeap h1@@9))) (and (and ($IsBox bx0@@22 t0@@28) ($IsBox bx1@@8 t1@@26)) ($Is HandleTypeType f@@23 (Tclass._System.___hFunc2 t0@@28 t1@@26 t2@@10)))) (forall ((o@@12 T@U) (fld@@9 T@U) ) (!  (=> (and (or (not (= o@@12 null)) (not true)) (|Set#IsMember| (Reads2 t0@@28 t1@@26 t2@@10 h0@@9 f@@23 bx0@@22 bx1@@8) ($Box refType o@@12))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@9 o@@12) fld@@9) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@9 o@@12) fld@@9)))
 :qid |unknown.0:0|
 :skolemid |495|
))) (= (Apply2 t0@@28 t1@@26 t2@@10 h0@@9 f@@23 bx0@@22 bx1@@8) (Apply2 t0@@28 t1@@26 t2@@10 h1@@9 f@@23 bx0@@22 bx1@@8)))
 :qid |unknown.0:0|
 :skolemid |496|
 :pattern ( ($HeapSucc h0@@9 h1@@9) (Apply2 t0@@28 t1@@26 t2@@10 h1@@9 f@@23 bx0@@22 bx1@@8))
)))
(assert (forall ((t0@@29 T@U) (t1@@27 T@U) (t2@@11 T@U) (h0@@10 T@U) (h1@@10 T@U) (f@@24 T@U) (bx0@@23 T@U) (bx1@@9 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@10 h1@@10) (and ($IsGoodHeap h0@@10) ($IsGoodHeap h1@@10))) (and (and ($IsBox bx0@@23 t0@@29) ($IsBox bx1@@9 t1@@27)) ($Is HandleTypeType f@@24 (Tclass._System.___hFunc2 t0@@29 t1@@27 t2@@11)))) (forall ((o@@13 T@U) (fld@@10 T@U) ) (!  (=> (and (or (not (= o@@13 null)) (not true)) (|Set#IsMember| (Reads2 t0@@29 t1@@27 t2@@11 h1@@10 f@@24 bx0@@23 bx1@@9) ($Box refType o@@13))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@10 o@@13) fld@@10) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@10 o@@13) fld@@10)))
 :qid |unknown.0:0|
 :skolemid |497|
))) (= (Apply2 t0@@29 t1@@27 t2@@11 h0@@10 f@@24 bx0@@23 bx1@@9) (Apply2 t0@@29 t1@@27 t2@@11 h1@@10 f@@24 bx0@@23 bx1@@9)))
 :qid |unknown.0:0|
 :skolemid |498|
 :pattern ( ($HeapSucc h0@@10 h1@@10) (Apply2 t0@@29 t1@@27 t2@@11 h1@@10 f@@24 bx0@@23 bx1@@9))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |462|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((|a#7#0#0@@0| T@U) (|a#7#1#0@@0| T@U) ) (! (= (|#_module.List.ListCons| (Lit BoxType |a#7#0#0@@0|) (Lit DatatypeTypeType |a#7#1#0@@0|)) (Lit DatatypeTypeType (|#_module.List.ListCons| |a#7#0#0@@0| |a#7#1#0@@0|)))
 :qid |Abstemiousdfy.50:35|
 :skolemid |788|
 :pattern ( (|#_module.List.ListCons| (Lit BoxType |a#7#0#0@@0|) (Lit DatatypeTypeType |a#7#1#0@@0|)))
)))
(assert (forall ((_module._default.Combine$T@@2 T@U) ($ly@@40 T@U) (|f#0@@13| T@U) (|a#0@@11| T@U) (|b#0@@8| T@U) ) (! (= (_module.__default.Combine _module._default.Combine$T@@2 ($LS $ly@@40) |f#0@@13| |a#0@@11| |b#0@@8|) (_module.__default.Combine _module._default.Combine$T@@2 $ly@@40 |f#0@@13| |a#0@@11| |b#0@@8|))
 :qid |unknown.0:0|
 :skolemid |717|
 :pattern ( (_module.__default.Combine _module._default.Combine$T@@2 ($LS $ly@@40) |f#0@@13| |a#0@@11| |b#0@@8|))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@8)) (Lit BoxType ($Box T@@5 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@8)))
)))
(assert (forall ((s@@4 T@U) ) (!  (=> (= (|Seq#Length| s@@4) 0) (= s@@4 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@4))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.take$_T0@@4 T@U) ($ly@@41 T@U) (|n#0@@7| Int) (|s#0@@7| T@U) ) (!  (=> (or (|_module.__default.take#canCall| _module._default.take$_T0@@4 |n#0@@7| |s#0@@7|) (and (< 1 $FunctionContextHeight) (and (<= (LitInt 0) |n#0@@7|) ($Is DatatypeTypeType |s#0@@7| (Tclass._module.Stream _module._default.take$_T0@@4))))) (and (=> (or (not (= |n#0@@7| (LitInt 0))) (not true)) (and (_module.Stream.Cons_q |s#0@@7|) (and (_module.Stream.Cons_q |s#0@@7|) (|_module.__default.take#canCall| _module._default.take$_T0@@4 (- |n#0@@7| 1) (_module.Stream.tail |s#0@@7|))))) (= (_module.__default.take _module._default.take$_T0@@4 ($LS $ly@@41) |n#0@@7| |s#0@@7|) (ite (= |n#0@@7| (LitInt 0)) |#_module.List.Nil| (|#_module.List.ListCons| (_module.Stream.head |s#0@@7|) (_module.__default.take _module._default.take$_T0@@4 $ly@@41 (- |n#0@@7| 1) (_module.Stream.tail |s#0@@7|)))))))
 :qid |unknown.0:0|
 :skolemid |657|
 :pattern ( (_module.__default.take _module._default.take$_T0@@4 ($LS $ly@@41) |n#0@@7| |s#0@@7|))
))))
(assert (forall ((h@@13 T@U) (v@@5 T@U) ) (! ($IsAlloc intType v@@5 TInt h@@13)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@5 TInt h@@13))
)))
(assert (forall ((_module._default.Map$T@@2 T@U) (_module._default.Map$U@@2 T@U) ($ly@@42 T@U) (|f#0@@14| T@U) (|s#0@@8| T@U) ) (! (= (_module.__default.Map _module._default.Map$T@@2 _module._default.Map$U@@2 ($LS $ly@@42) |f#0@@14| |s#0@@8|) (_module.__default.Map _module._default.Map$T@@2 _module._default.Map$U@@2 $ly@@42 |f#0@@14| |s#0@@8|))
 :qid |unknown.0:0|
 :skolemid |643|
 :pattern ( (_module.__default.Map _module._default.Map$T@@2 _module._default.Map$U@@2 ($LS $ly@@42) |f#0@@14| |s#0@@8|))
)))
(assert (forall ((_module._default.zip$T@@2 T@U) (_module._default.zip$U@@2 T@U) ($ly@@43 T@U) (|a#0@@12| T@U) (|b#0@@9| T@U) ) (! (= (_module.__default.zip _module._default.zip$T@@2 _module._default.zip$U@@2 ($LS $ly@@43) |a#0@@12| |b#0@@9|) (_module.__default.zip _module._default.zip$T@@2 _module._default.zip$U@@2 $ly@@43 |a#0@@12| |b#0@@9|))
 :qid |unknown.0:0|
 :skolemid |661|
 :pattern ( (_module.__default.zip _module._default.zip$T@@2 _module._default.zip$U@@2 ($LS $ly@@43) |a#0@@12| |b#0@@9|))
)))
(assert (forall ((_module.List$T@@8 T@U) (|a#6#0#0@@1| T@U) (|a#6#1#0@@1| T@U) ($h@@14 T@U) ) (!  (=> ($IsGoodHeap $h@@14) (= ($IsAlloc DatatypeTypeType (|#_module.List.ListCons| |a#6#0#0@@1| |a#6#1#0@@1|) (Tclass._module.List _module.List$T@@8) $h@@14)  (and ($IsAllocBox |a#6#0#0@@1| _module.List$T@@8 $h@@14) ($IsAlloc DatatypeTypeType |a#6#1#0@@1| (Tclass._module.List _module.List$T@@8) $h@@14))))
 :qid |unknown.0:0|
 :skolemid |785|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.List.ListCons| |a#6#0#0@@1| |a#6#1#0@@1|) (Tclass._module.List _module.List$T@@8) $h@@14))
)))
(assert (forall ((_module.Stream$T@@6 T@U) (|a#14#0#0@@0| T@U) (|a#14#1#0@@0| T@U) ($h@@15 T@U) ) (!  (=> ($IsGoodHeap $h@@15) (= ($IsAlloc DatatypeTypeType (|#_module.Stream.Cons| |a#14#0#0@@0| |a#14#1#0@@0|) (Tclass._module.Stream _module.Stream$T@@6) $h@@15)  (and ($IsAllocBox |a#14#0#0@@0| _module.Stream$T@@6 $h@@15) ($IsAlloc DatatypeTypeType |a#14#1#0@@0| (Tclass._module.Stream _module.Stream$T@@6) $h@@15))))
 :qid |unknown.0:0|
 :skolemid |803|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Stream.Cons| |a#14#0#0@@0| |a#14#1#0@@0|) (Tclass._module.Stream _module.Stream$T@@6) $h@@15))
)))
(assert (forall ((|l#0@@3| T@U) (|$l#2#heap#0@@1| T@U) (|$l#2#x#0@@1| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#6| |l#0@@3|) |$l#2#heap#0@@1| |$l#2#x#0@@1|) |l#0@@3|)
 :qid |Abstemiousdfy.70:7|
 :skolemid |825|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#6| |l#0@@3|) |$l#2#heap#0@@1| |$l#2#x#0@@1|))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is intType v@@6 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@6 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@5 () T@U)
(declare-fun |n#0@0| () Int)
(declare-fun |msg##0@0| () T@U)
(declare-fun SeqType () T@T)
(declare-fun charType () T@T)
(declare-fun |s##0@0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |msg##1@0| () T@U)
(declare-fun |##n#0@0| () Int)
(declare-fun |s##1@0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |msg##2@0| () T@U)
(declare-fun |##f#0@0| () T@U)
(declare-fun |##s#0@0| () T@U)
(declare-fun |s##2@0| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |msg##3@0| () T@U)
(declare-fun |##f#1@0| () T@U)
(declare-fun |##n#1@0| () Int)
(declare-fun |##s#1@0| () T@U)
(declare-fun |s##3@0| () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |msg##4@0| () T@U)
(declare-fun |s##4@0| () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun |msg##5@0| () T@U)
(declare-fun |##n#2@0| () Int)
(declare-fun |##n#3@0| () Int)
(declare-fun |##s#2@0| () T@U)
(declare-fun |s##5@0| () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun |msg##6@0| () T@U)
(declare-fun |##a#0@0| () T@U)
(declare-fun |##n#4@0| () Int)
(declare-fun |##b#0@0| () T@U)
(declare-fun |s##6@0| () T@U)
(declare-fun call0formal@_module._default.Print$T@0 () T@U)
(declare-fun $Heap@6 () T@U)
(declare-fun |msg##7@0| () T@U)
(declare-fun |##a#2@0| () T@U)
(declare-fun |##n#5@0| () Int)
(declare-fun |##b#1@0| () T@U)
(declare-fun |##a#1@0| () T@U)
(declare-fun |s##7@0| () T@U)
(declare-fun $Heap@7 () T@U)
(declare-fun |msg##8@0| () T@U)
(declare-fun |s##8@0| () T@U)
(declare-fun $Heap@8 () T@U)
(declare-fun |msg##9@0| () T@U)
(declare-fun |##a#3@0| () T@U)
(declare-fun |##n#6@0| () Int)
(declare-fun |##b#2@0| () T@U)
(declare-fun |s##9@0| () T@U)
(declare-fun $Heap@9 () T@U)
(declare-fun |msg##10@0| () T@U)
(declare-fun |s##10@0| () T@U)
(declare-fun $Heap@10 () T@U)
(declare-fun |msg##11@0| () T@U)
(declare-fun |s##11@0| () T@U)
(declare-fun $Heap@11 () T@U)
(declare-fun |msg##12@0| () T@U)
(declare-fun |s##12@0| () T@U)
(declare-fun $Heap@12 () T@U)
(declare-fun |msg##13@0| () T@U)
(declare-fun |s##13@0| () T@U)
(declare-fun $Heap@13 () T@U)
(declare-fun |msg##14@0| () T@U)
(assert  (and (= (Ctor SeqType) 11) (= (Ctor charType) 12)))
(set-info :boogie-vc-id Impl$$_module.__default.Main)
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
 (=> (= (ControlFlow 0 0) 20) (let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@5 alloc false)) (= |n#0@0| (LitInt 7))) (and (=> (= (ControlFlow 0 2) (- 0 19)) ($Is intType (int_2_U |n#0@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |n#0@0|) Tclass._System.nat) (=> (= |msg##0@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 111))) ($Box charType (|char#FromInt| 110))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 40))) ($Box charType (|char#FromInt| 41))))) (=> (and (and (and |_module.__default.ones#canCall| (_module.Stream.Cons_q (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ))))) (and |_module.__default.ones#canCall| (= |s##0@0| (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ)))))) (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (forall (($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@5 $o@@2) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@2) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@5 $o@@2)))
 :qid |Abstemiousdfy.25:8|
 :skolemid |611|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@2))
)) ($HeapSucc $Heap@@5 $Heap@0)))) (and (=> (= (ControlFlow 0 2) (- 0 18)) ($Is intType (int_2_U |n#0@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |n#0@0|) Tclass._System.nat) (=> (= |msg##1@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 102))) ($Box charType (|char#FromInt| 114))) ($Box charType (|char#FromInt| 111))) ($Box charType (|char#FromInt| 109))) ($Box charType (|char#FromInt| 40))) ($Box charType (|char#FromInt| 51))) ($Box charType (|char#FromInt| 41))))) (=> (and (= |##n#0@0| (LitInt 3)) ($IsAlloc intType (int_2_U |##n#0@0|) TInt $Heap@0)) (=> (and (and (and (|_module.__default.from#canCall| (LitInt 3)) (_module.Stream.Cons_q (Lit DatatypeTypeType (_module.__default.from ($LS $LZ) (LitInt 3))))) (and (|_module.__default.from#canCall| (LitInt 3)) (= |s##1@0| (Lit DatatypeTypeType (_module.__default.from ($LS $LZ) (LitInt 3)))))) (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (and (forall (($o@@3 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@3) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $o@@3) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@3)))
 :qid |Abstemiousdfy.25:8|
 :skolemid |611|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $o@@3))
)) ($HeapSucc $Heap@0 $Heap@1)))) (and (=> (= (ControlFlow 0 2) (- 0 17)) ($Is intType (int_2_U |n#0@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |n#0@0|) Tclass._System.nat) (=> (= |msg##2@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 77))) ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 112))) ($Box charType (|char#FromInt| 40))) ($Box charType (|char#FromInt| 112))) ($Box charType (|char#FromInt| 108))) ($Box charType (|char#FromInt| 117))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 49))) ($Box charType (|char#FromInt| 44))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 111))) ($Box charType (|char#FromInt| 110))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 40))) ($Box charType (|char#FromInt| 41))) ($Box charType (|char#FromInt| 41))))) (and (=> (= (ControlFlow 0 2) (- 0 16)) (or (not (= 0 $FunctionContextHeight)) (not true))) (=> (or (not (= 0 $FunctionContextHeight)) (not true)) (=> (and (and (and (and (= |##f#0@0| |_module.__default.plus1#Handle|) ($IsAlloc HandleTypeType |##f#0@0| (Tclass._System.___hTotalFunc1 TInt TInt) $Heap@1)) (and |_module.__default.ones#canCall| (_module.Stream.Cons_q (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ)))))) (and (and (= |##s#0@0| (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ)))) ($IsAlloc DatatypeTypeType |##s#0@0| (Tclass._module.Stream TInt) $Heap@1)) (and (|_module.__default.Map#canCall| TInt TInt |_module.__default.plus1#Handle| (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ)))) (_module.Stream.Cons_q (_module.__default.Map TInt TInt ($LS $LZ) |_module.__default.plus1#Handle| (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ)))))))) (and (and (and |_module.__default.ones#canCall| (|_module.__default.Map#canCall| TInt TInt |_module.__default.plus1#Handle| (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ))))) (= |s##2@0| (_module.__default.Map TInt TInt ($LS $LZ) |_module.__default.plus1#Handle| (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ)))))) (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (and (forall (($o@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $o@@4) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 $o@@4) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $o@@4)))
 :qid |Abstemiousdfy.25:8|
 :skolemid |611|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 $o@@4))
)) ($HeapSucc $Heap@1 $Heap@2))))) (and (=> (= (ControlFlow 0 2) (- 0 15)) ($Is intType (int_2_U |n#0@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |n#0@0|) Tclass._System.nat) (=> (= |msg##3@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 77))) ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 112))) ($Box charType (|char#FromInt| 40))) ($Box charType (|char#FromInt| 112))) ($Box charType (|char#FromInt| 108))) ($Box charType (|char#FromInt| 117))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 49))) ($Box charType (|char#FromInt| 44))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 102))) ($Box charType (|char#FromInt| 114))) ($Box charType (|char#FromInt| 111))) ($Box charType (|char#FromInt| 109))) ($Box charType (|char#FromInt| 40))) ($Box charType (|char#FromInt| 51))) ($Box charType (|char#FromInt| 41))) ($Box charType (|char#FromInt| 41))))) (and (=> (= (ControlFlow 0 2) (- 0 14)) (or (not (= 0 $FunctionContextHeight)) (not true))) (=> (or (not (= 0 $FunctionContextHeight)) (not true)) (=> (and (= |##f#1@0| |_module.__default.plus1#Handle|) ($IsAlloc HandleTypeType |##f#1@0| (Tclass._System.___hTotalFunc1 TInt TInt) $Heap@2)) (=> (and (and (and (and (= |##n#1@0| (LitInt 3)) ($IsAlloc intType (int_2_U |##n#1@0|) TInt $Heap@2)) (and (|_module.__default.from#canCall| (LitInt 3)) (_module.Stream.Cons_q (Lit DatatypeTypeType (_module.__default.from ($LS $LZ) (LitInt 3)))))) (and (and (= |##s#1@0| (Lit DatatypeTypeType (_module.__default.from ($LS $LZ) (LitInt 3)))) ($IsAlloc DatatypeTypeType |##s#1@0| (Tclass._module.Stream TInt) $Heap@2)) (and (|_module.__default.Map#canCall| TInt TInt |_module.__default.plus1#Handle| (Lit DatatypeTypeType (_module.__default.from ($LS $LZ) (LitInt 3)))) (_module.Stream.Cons_q (_module.__default.Map TInt TInt ($LS $LZ) |_module.__default.plus1#Handle| (Lit DatatypeTypeType (_module.__default.from ($LS $LZ) (LitInt 3)))))))) (and (and (and (|_module.__default.from#canCall| (LitInt 3)) (|_module.__default.Map#canCall| TInt TInt |_module.__default.plus1#Handle| (Lit DatatypeTypeType (_module.__default.from ($LS $LZ) (LitInt 3))))) (= |s##3@0| (_module.__default.Map TInt TInt ($LS $LZ) |_module.__default.plus1#Handle| (Lit DatatypeTypeType (_module.__default.from ($LS $LZ) (LitInt 3)))))) (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (and (forall (($o@@5 T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 $o@@5) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@3 $o@@5) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 $o@@5)))
 :qid |Abstemiousdfy.25:8|
 :skolemid |611|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@3 $o@@5))
)) ($HeapSucc $Heap@2 $Heap@3))))) (and (=> (= (ControlFlow 0 2) (- 0 13)) ($Is intType (int_2_U |n#0@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |n#0@0|) Tclass._System.nat) (=> (= |msg##4@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 113))) ($Box charType (|char#FromInt| 117))) ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 114))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 40))) ($Box charType (|char#FromInt| 41))))) (=> (and (and |_module.__default.squares#canCall| (_module.Stream.Cons_q (Lit DatatypeTypeType _module.__default.squares))) (and |_module.__default.squares#canCall| (= |s##4@0| (Lit DatatypeTypeType _module.__default.squares)))) (=> (and (and (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (forall (($o@@6 T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@3 $o@@6) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@4 $o@@6) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@3 $o@@6)))
 :qid |Abstemiousdfy.25:8|
 :skolemid |611|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@4 $o@@6))
))) (and ($HeapSucc $Heap@3 $Heap@4) (= |msg##5@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 116))) ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 107))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 40))) ($Box charType (|char#FromInt| 53))) ($Box charType (|char#FromInt| 44))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 102))) ($Box charType (|char#FromInt| 114))) ($Box charType (|char#FromInt| 111))) ($Box charType (|char#FromInt| 109))) ($Box charType (|char#FromInt| 40))) ($Box charType (|char#FromInt| 51))) ($Box charType (|char#FromInt| 41))) ($Box charType (|char#FromInt| 41))))))) (and (=> (= (ControlFlow 0 2) (- 0 12)) ($Is intType (int_2_U (LitInt 5)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 5)) Tclass._System.nat) (=> (= |##n#2@0| (LitInt 5)) (=> (and (and (and (and ($IsAlloc intType (int_2_U |##n#2@0|) Tclass._System.nat $Heap@4) (= |##n#3@0| (LitInt 3))) (and ($IsAlloc intType (int_2_U |##n#3@0|) TInt $Heap@4) (|_module.__default.from#canCall| (LitInt 3)))) (and (and (_module.Stream.Cons_q (Lit DatatypeTypeType (_module.__default.from ($LS $LZ) (LitInt 3)))) (= |##s#2@0| (Lit DatatypeTypeType (_module.__default.from ($LS $LZ) (LitInt 3))))) (and ($IsAlloc DatatypeTypeType |##s#2@0| (Tclass._module.Stream TInt) $Heap@4) (|_module.__default.take#canCall| TInt (LitInt 5) (Lit DatatypeTypeType (_module.__default.from ($LS $LZ) (LitInt 3))))))) (and (and (and (|_module.__default.from#canCall| (LitInt 3)) (|_module.__default.take#canCall| TInt (LitInt 5) (Lit DatatypeTypeType (_module.__default.from ($LS $LZ) (LitInt 3))))) (= |s##5@0| (Lit DatatypeTypeType (_module.__default.take TInt ($LS $LZ) (LitInt 5) (Lit DatatypeTypeType (_module.__default.from ($LS $LZ) (LitInt 3))))))) (and (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)) (and (forall (($o@@7 T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@4 $o@@7) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@5 $o@@7) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@4 $o@@7)))
 :qid |Abstemiousdfy.35:8|
 :skolemid |619|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@5 $o@@7))
)) ($HeapSucc $Heap@4 $Heap@5))))) (and (=> (= (ControlFlow 0 2) (- 0 11)) ($Is intType (int_2_U |n#0@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |n#0@0|) Tclass._System.nat) (=> (= |msg##6@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 122))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 112))) ($Box charType (|char#FromInt| 40))) ($Box charType (|char#FromInt| 111))) ($Box charType (|char#FromInt| 110))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 40))) ($Box charType (|char#FromInt| 41))) ($Box charType (|char#FromInt| 44))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 102))) ($Box charType (|char#FromInt| 114))) ($Box charType (|char#FromInt| 111))) ($Box charType (|char#FromInt| 109))) ($Box charType (|char#FromInt| 40))) ($Box charType (|char#FromInt| 51))) ($Box charType (|char#FromInt| 41))))) (=> (and (and |_module.__default.ones#canCall| (_module.Stream.Cons_q (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ))))) (and (= |##a#0@0| (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ)))) ($IsAlloc DatatypeTypeType |##a#0@0| (Tclass._module.Stream TInt) $Heap@5))) (=> (and (and (and (= |##n#4@0| (LitInt 3)) ($IsAlloc intType (int_2_U |##n#4@0|) TInt $Heap@5)) (and (|_module.__default.from#canCall| (LitInt 3)) (_module.Stream.Cons_q (Lit DatatypeTypeType (_module.__default.from ($LS $LZ) (LitInt 3)))))) (and (and (= |##b#0@0| (Lit DatatypeTypeType (_module.__default.from ($LS $LZ) (LitInt 3)))) ($IsAlloc DatatypeTypeType |##b#0@0| (Tclass._module.Stream TInt) $Heap@5)) (and (|_module.__default.zip#canCall| TInt TInt (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.from ($LS $LZ) (LitInt 3)))) (_module.Stream.Cons_q (Lit DatatypeTypeType (_module.__default.zip TInt TInt ($LS $LZ) (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.from ($LS $LZ) (LitInt 3))))))))) (=> (and (and (and (and |_module.__default.ones#canCall| (|_module.__default.from#canCall| (LitInt 3))) (|_module.__default.zip#canCall| TInt TInt (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.from ($LS $LZ) (LitInt 3))))) (and (= |s##6@0| (Lit DatatypeTypeType (_module.__default.zip TInt TInt ($LS $LZ) (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.from ($LS $LZ) (LitInt 3)))))) (= call0formal@_module._default.Print$T@0 (Tclass._System.Tuple2 TInt TInt)))) (and (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6)) (and (forall (($o@@8 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@5 $o@@8) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@6 $o@@8) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@5 $o@@8)))
 :qid |Abstemiousdfy.25:8|
 :skolemid |611|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@6 $o@@8))
)) ($HeapSucc $Heap@5 $Heap@6)))) (and (=> (= (ControlFlow 0 2) (- 0 10)) ($Is intType (int_2_U |n#0@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |n#0@0|) Tclass._System.nat) (=> (= |msg##7@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 100))) ($Box charType (|char#FromInt| 100))) ($Box charType (|char#FromInt| 80))) ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 114))) ($Box charType (|char#FromInt| 40))) ($Box charType (|char#FromInt| 122))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 112))) ($Box charType (|char#FromInt| 40))) ($Box charType (|char#FromInt| 111))) ($Box charType (|char#FromInt| 110))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 40))) ($Box charType (|char#FromInt| 41))) ($Box charType (|char#FromInt| 44))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 102))) ($Box charType (|char#FromInt| 114))) ($Box charType (|char#FromInt| 111))) ($Box charType (|char#FromInt| 109))) ($Box charType (|char#FromInt| 40))) ($Box charType (|char#FromInt| 51))) ($Box charType (|char#FromInt| 41))) ($Box charType (|char#FromInt| 41))))) (=> (and (and (and (and |_module.__default.ones#canCall| (_module.Stream.Cons_q (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ))))) (and (= |##a#2@0| (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ)))) ($IsAlloc DatatypeTypeType |##a#2@0| (Tclass._module.Stream TInt) $Heap@6))) (and (and (= |##n#5@0| (LitInt 3)) ($IsAlloc intType (int_2_U |##n#5@0|) TInt $Heap@6)) (and (|_module.__default.from#canCall| (LitInt 3)) (_module.Stream.Cons_q (Lit DatatypeTypeType (_module.__default.from ($LS $LZ) (LitInt 3))))))) (and (and (and (= |##b#1@0| (Lit DatatypeTypeType (_module.__default.from ($LS $LZ) (LitInt 3)))) ($IsAlloc DatatypeTypeType |##b#1@0| (Tclass._module.Stream TInt) $Heap@6)) (and (|_module.__default.zip#canCall| TInt TInt (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.from ($LS $LZ) (LitInt 3)))) (_module.Stream.Cons_q (Lit DatatypeTypeType (_module.__default.zip TInt TInt ($LS $LZ) (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.from ($LS $LZ) (LitInt 3)))))))) (and (and (= |##a#1@0| (Lit DatatypeTypeType (_module.__default.zip TInt TInt ($LS $LZ) (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.from ($LS $LZ) (LitInt 3)))))) ($IsAlloc DatatypeTypeType |##a#1@0| (Tclass._module.Stream (Tclass._System.Tuple2 TInt TInt)) $Heap@6)) (and (|_module.__default.addPair#canCall| (Lit DatatypeTypeType (_module.__default.zip TInt TInt ($LS $LZ) (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.from ($LS $LZ) (LitInt 3)))))) (_module.Stream.Cons_q (Lit DatatypeTypeType (_module.__default.addPair ($LS $LZ) (Lit DatatypeTypeType (_module.__default.zip TInt TInt ($LS $LZ) (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.from ($LS $LZ) (LitInt 3)))))))))))) (=> (and (and (and (and (and |_module.__default.ones#canCall| (|_module.__default.from#canCall| (LitInt 3))) (|_module.__default.zip#canCall| TInt TInt (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.from ($LS $LZ) (LitInt 3))))) (|_module.__default.addPair#canCall| (Lit DatatypeTypeType (_module.__default.zip TInt TInt ($LS $LZ) (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.from ($LS $LZ) (LitInt 3))))))) (= |s##7@0| (Lit DatatypeTypeType (_module.__default.addPair ($LS $LZ) (Lit DatatypeTypeType (_module.__default.zip TInt TInt ($LS $LZ) (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.from ($LS $LZ) (LitInt 3))))))))) (and (and ($IsGoodHeap $Heap@7) ($IsHeapAnchor $Heap@7)) (and (forall (($o@@9 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@6 $o@@9) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@7 $o@@9) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@6 $o@@9)))
 :qid |Abstemiousdfy.25:8|
 :skolemid |611|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@7 $o@@9))
)) ($HeapSucc $Heap@6 $Heap@7)))) (and (=> (= (ControlFlow 0 2) (- 0 9)) ($Is intType (int_2_U |n#0@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |n#0@0|) Tclass._System.nat) (=> (= |msg##8@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 102))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 98))) ($Box charType (|char#FromInt| 40))) ($Box charType (|char#FromInt| 41))))) (=> (and (and (and |_module.__default.fib#canCall| (_module.Stream.Cons_q (Lit DatatypeTypeType (_module.__default.fib ($LS $LZ))))) (and |_module.__default.fib#canCall| (= |s##8@0| (Lit DatatypeTypeType (_module.__default.fib ($LS $LZ)))))) (and (and ($IsGoodHeap $Heap@8) ($IsHeapAnchor $Heap@8)) (and (forall (($o@@10 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@7 $o@@10) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@8 $o@@10) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@7 $o@@10)))
 :qid |Abstemiousdfy.25:8|
 :skolemid |611|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@8 $o@@10))
)) ($HeapSucc $Heap@7 $Heap@8)))) (and (=> (= (ControlFlow 0 2) (- 0 8)) ($Is intType (int_2_U |n#0@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |n#0@0|) Tclass._System.nat) (=> (= |msg##9@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 100))) ($Box charType (|char#FromInt| 100))) ($Box charType (|char#FromInt| 40))) ($Box charType (|char#FromInt| 111))) ($Box charType (|char#FromInt| 110))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 40))) ($Box charType (|char#FromInt| 41))) ($Box charType (|char#FromInt| 44))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 102))) ($Box charType (|char#FromInt| 114))) ($Box charType (|char#FromInt| 111))) ($Box charType (|char#FromInt| 109))) ($Box charType (|char#FromInt| 40))) ($Box charType (|char#FromInt| 51))) ($Box charType (|char#FromInt| 41))) ($Box charType (|char#FromInt| 41))))) (=> (and (and |_module.__default.ones#canCall| (_module.Stream.Cons_q (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ))))) (and (= |##a#3@0| (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ)))) ($IsAlloc DatatypeTypeType |##a#3@0| (Tclass._module.Stream TInt) $Heap@8))) (=> (and (and (and (= |##n#6@0| (LitInt 3)) ($IsAlloc intType (int_2_U |##n#6@0|) TInt $Heap@8)) (and (|_module.__default.from#canCall| (LitInt 3)) (_module.Stream.Cons_q (Lit DatatypeTypeType (_module.__default.from ($LS $LZ) (LitInt 3)))))) (and (and (= |##b#2@0| (Lit DatatypeTypeType (_module.__default.from ($LS $LZ) (LitInt 3)))) ($IsAlloc DatatypeTypeType |##b#2@0| (Tclass._module.Stream TInt) $Heap@8)) (and (|_module.__default.add#canCall| (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.from ($LS $LZ) (LitInt 3)))) (_module.Stream.Cons_q (Lit DatatypeTypeType (_module.__default.add ($LS $LZ) (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.from ($LS $LZ) (LitInt 3))))))))) (=> (and (and (and (and |_module.__default.ones#canCall| (|_module.__default.from#canCall| (LitInt 3))) (|_module.__default.add#canCall| (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.from ($LS $LZ) (LitInt 3))))) (= |s##9@0| (Lit DatatypeTypeType (_module.__default.add ($LS $LZ) (Lit DatatypeTypeType (_module.__default.ones ($LS $LZ))) (Lit DatatypeTypeType (_module.__default.from ($LS $LZ) (LitInt 3))))))) (and (and ($IsGoodHeap $Heap@9) ($IsHeapAnchor $Heap@9)) (and (forall (($o@@11 T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@8 $o@@11) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@9 $o@@11) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@8 $o@@11)))
 :qid |Abstemiousdfy.25:8|
 :skolemid |611|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@9 $o@@11))
)) ($HeapSucc $Heap@8 $Heap@9)))) (and (=> (= (ControlFlow 0 2) (- 0 7)) ($Is intType (int_2_U |n#0@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |n#0@0|) Tclass._System.nat) (=> (= |msg##10@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 70))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 98))) ($Box charType (|char#FromInt| 40))) ($Box charType (|char#FromInt| 41))))) (=> (and (and (and |_module.__default.Fib#canCall| (_module.Stream.Cons_q (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ))))) (and |_module.__default.Fib#canCall| (= |s##10@0| (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ)))))) (and (and ($IsGoodHeap $Heap@10) ($IsHeapAnchor $Heap@10)) (and (forall (($o@@12 T@U) ) (!  (=> (and (or (not (= $o@@12 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@9 $o@@12) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@10 $o@@12) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@9 $o@@12)))
 :qid |Abstemiousdfy.25:8|
 :skolemid |611|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@10 $o@@12))
)) ($HeapSucc $Heap@9 $Heap@10)))) (and (=> (= (ControlFlow 0 2) (- 0 6)) ($Is intType (int_2_U |n#0@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |n#0@0|) Tclass._System.nat) (=> (= |msg##11@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 70))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 98))) ($Box charType (|char#FromInt| 48))) ($Box charType (|char#FromInt| 40))) ($Box charType (|char#FromInt| 41))))) (=> (and (and (and |_module.__default.Fib0#canCall| (_module.Stream.Cons_q (Lit DatatypeTypeType (_module.__default.Fib0 ($LS $LZ))))) (and |_module.__default.Fib0#canCall| (= |s##11@0| (Lit DatatypeTypeType (_module.__default.Fib0 ($LS $LZ)))))) (and (and ($IsGoodHeap $Heap@11) ($IsHeapAnchor $Heap@11)) (and (forall (($o@@13 T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@10 $o@@13) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@11 $o@@13) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@10 $o@@13)))
 :qid |Abstemiousdfy.25:8|
 :skolemid |611|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@11 $o@@13))
)) ($HeapSucc $Heap@10 $Heap@11)))) (and (=> (= (ControlFlow 0 2) (- 0 5)) ($Is intType (int_2_U |n#0@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |n#0@0|) Tclass._System.nat) (=> (= |msg##12@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 70))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 98))) ($Box charType (|char#FromInt| 49))) ($Box charType (|char#FromInt| 40))) ($Box charType (|char#FromInt| 41))))) (=> (and (and (and |_module.__default.Fib1#canCall| (_module.Stream.Cons_q (Lit DatatypeTypeType (_module.__default.Fib1 ($LS $LZ))))) (and |_module.__default.Fib1#canCall| (= |s##12@0| (Lit DatatypeTypeType (_module.__default.Fib1 ($LS $LZ)))))) (and (and ($IsGoodHeap $Heap@12) ($IsHeapAnchor $Heap@12)) (and (forall (($o@@14 T@U) ) (!  (=> (and (or (not (= $o@@14 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@11 $o@@14) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@12 $o@@14) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@11 $o@@14)))
 :qid |Abstemiousdfy.25:8|
 :skolemid |611|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@12 $o@@14))
)) ($HeapSucc $Heap@11 $Heap@12)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) ($Is intType (int_2_U |n#0@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |n#0@0|) Tclass._System.nat) (=> (= |msg##13@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 79))) ($Box charType (|char#FromInt| 104))) ($Box charType (|char#FromInt| 79))) ($Box charType (|char#FromInt| 110))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 40))) ($Box charType (|char#FromInt| 41))))) (=> (and (and (and |_module.__default.OhOnes#canCall| (_module.Stream.Cons_q (Lit DatatypeTypeType (_module.__default.OhOnes ($LS $LZ))))) (and |_module.__default.OhOnes#canCall| (= |s##13@0| (Lit DatatypeTypeType (_module.__default.OhOnes ($LS $LZ)))))) (and (and ($IsGoodHeap $Heap@13) ($IsHeapAnchor $Heap@13)) (and (forall (($o@@15 T@U) ) (!  (=> (and (or (not (= $o@@15 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@12 $o@@15) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@13 $o@@15) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@12 $o@@15)))
 :qid |Abstemiousdfy.25:8|
 :skolemid |611|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@13 $o@@15))
)) ($HeapSucc $Heap@12 $Heap@13)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) ($Is intType (int_2_U |n#0@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |n#0@0|) Tclass._System.nat) (=> (and (= |msg##14@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 67))) ($Box charType (|char#FromInt| 111))) ($Box charType (|char#FromInt| 109))) ($Box charType (|char#FromInt| 98))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 110))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 40))) ($Box charType (|char#FromInt| 112))) ($Box charType (|char#FromInt| 108))) ($Box charType (|char#FromInt| 117))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 44))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 111))) ($Box charType (|char#FromInt| 110))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 40))) ($Box charType (|char#FromInt| 41))) ($Box charType (|char#FromInt| 44))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 102))) ($Box charType (|char#FromInt| 114))) ($Box charType (|char#FromInt| 111))) ($Box charType (|char#FromInt| 109))) ($Box charType (|char#FromInt| 40))) ($Box charType (|char#FromInt| 51))) ($Box charType (|char#FromInt| 41))) ($Box charType (|char#FromInt| 41))))) (= (ControlFlow 0 2) (- 0 1))) (or (not (= 0 $FunctionContextHeight)) (not true))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap@@5) ($IsHeapAnchor $Heap@@5)) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 20) 2))) anon0_correct)))
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
