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
(declare-fun TChar () T@U)
(declare-fun TagChar () T@U)
(declare-fun TagSet () T@U)
(declare-fun TagSeq () T@U)
(declare-fun TagMap () T@U)
(declare-fun alloc () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun Tagclass.M2.State () T@U)
(declare-fun Tagclass.M2.Tuple () T@U)
(declare-fun |##M2.State.StateCons| () T@U)
(declare-fun |##M2.Tuple.Pair| () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$State () T@U)
(declare-fun tytagFamily$Tuple () T@U)
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
(declare-fun M2.__default.Loc (T@U T@U T@U) T@U)
(declare-fun |M2.__default.Loc#canCall| (T@U T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun Tclass.M2.Path () T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun MapType () T@T)
(declare-fun M2.State.m (T@U) T@U)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun Tclass.M2.Artifact () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun M2.State.StateCons_q (T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.M2.State () T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun M2.__default.SetSt (T@U T@U T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |M2.__default.SetSt#canCall| (T@U T@U T@U) Bool)
(declare-fun |#M2.State.StateCons| (T@U) T@U)
(declare-fun |Map#Build| (T@U T@U T@U) T@U)
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun M2.__default.PickOne (T@U T@U) T@U)
(declare-fun |M2.__default.PickOne#canCall| (T@U T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun M2.__default.DomSt (T@U) T@U)
(declare-fun |M2.__default.DomSt#canCall| (T@U) Bool)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun |lambda#19| (T@U T@U) T@U)
(declare-fun M2.__default.execOne (T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun |M2.__default.execOne#canCall| (T@U T@U T@U T@U T@U) Bool)
(declare-fun Tclass.M2.Tuple (T@U T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun |$let#0_x| (T@U T@U) T@U)
(declare-fun |$let#0$canCall| (T@U T@U) Bool)
(declare-fun $AlwaysAllocated (T@U) Bool)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun M2.Tuple.Pair_q (T@U) Bool)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun M2.__default.RunTool (T@U T@U T@U) T@U)
(declare-fun |M2.__default.RunTool#canCall| (T@U T@U T@U) Bool)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun |#M2.Tuple.Pair| (T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun M2.Tuple.snd (T@U) T@U)
(declare-fun M2.Tuple.fst (T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun DtRank (T@U) Int)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun charType () T@T)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun Tclass.M2.Tuple_0 (T@U) T@U)
(declare-fun Tclass.M2.Tuple_1 (T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun |Map#Empty| () T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#4| (T@U T@U T@U Bool) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |Map#Values| (T@U) T@U)
(declare-fun |Map#Items| (T@U) T@U)
(declare-fun |Seq#Rank| (T@U) Int)
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
(assert (distinct TChar TagChar TagSet TagSeq TagMap alloc |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass.M2.State Tagclass.M2.Tuple |##M2.State.StateCons| |##M2.Tuple.Pair| |tytagFamily$_tuple#2| tytagFamily$State tytagFamily$Tuple)
)
(assert  (and (= (Ctor SeqType) 3) (= (Ctor SetType) 4)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|cmd#0| T@U) (|deps#0| T@U) (|exp#0| T@U) ) (!  (=> (or (|M2.__default.Loc#canCall| |cmd#0| |deps#0| |exp#0|) (and (< 0 $FunctionContextHeight) (and (and ($Is SeqType |cmd#0| (TSeq TChar)) ($Is SetType |deps#0| (TSet Tclass.M2.Path))) ($Is SeqType |exp#0| (TSeq TChar))))) ($IsBox (M2.__default.Loc |cmd#0| |deps#0| |exp#0|) Tclass.M2.Path))
 :qid |CloudMakeParallelBuildsdfy.154:22|
 :skolemid |4474|
 :pattern ( (M2.__default.Loc |cmd#0| |deps#0| |exp#0|))
))))
(assert  (and (= (Ctor MapType) 5) (= (Ctor DatatypeTypeType) 6)))
(assert (forall ((d T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (M2.State.StateCons_q d) ($IsAlloc DatatypeTypeType d Tclass.M2.State $h))) ($IsAlloc MapType (M2.State.m d) (TMap Tclass.M2.Path Tclass.M2.Artifact) $h))
 :qid |unknown.0:0|
 :skolemid |4682|
 :pattern ( ($IsAlloc MapType (M2.State.m d) (TMap Tclass.M2.Path Tclass.M2.Artifact) $h))
)))
(assert (= (Tag TChar) TagChar))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|p#0| T@U) (|a#0| T@U) (|st#0| T@U) ) (!  (=> (or (|M2.__default.SetSt#canCall| |p#0| |a#0| (Lit DatatypeTypeType |st#0|)) (and (< 1 $FunctionContextHeight) (and (and ($IsBox |p#0| Tclass.M2.Path) ($IsBox |a#0| Tclass.M2.Artifact)) ($Is DatatypeTypeType |st#0| Tclass.M2.State)))) (and (M2.State.StateCons_q (Lit DatatypeTypeType |st#0|)) (= (M2.__default.SetSt |p#0| |a#0| (Lit DatatypeTypeType |st#0|)) (|#M2.State.StateCons| (|Map#Build| (Lit MapType (M2.State.m (Lit DatatypeTypeType |st#0|))) |p#0| |a#0|)))))
 :qid |CloudMakeParallelBuildsdfy.468:24|
 :weight 3
 :skolemid |3501|
 :pattern ( (M2.__default.SetSt |p#0| |a#0| (Lit DatatypeTypeType |st#0|)))
))))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |2926|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (M2._default.PickOne$T T@U) (|s#0| T@U) ) (!  (=> (and (or (|M2.__default.PickOne#canCall| M2._default.PickOne$T |s#0|) (and (< 0 $FunctionContextHeight) (and (and ($Is SetType |s#0| (TSet M2._default.PickOne$T)) ($IsAlloc SetType |s#0| (TSet M2._default.PickOne$T) $Heap)) (not (|Set#Equal| |s#0| |Set#Empty|))))) ($IsGoodHeap $Heap)) ($IsAllocBox (M2.__default.PickOne M2._default.PickOne$T |s#0|) M2._default.PickOne$T $Heap))
 :qid |CloudMakeParallelBuildsdfy.483:18|
 :skolemid |3522|
 :pattern ( ($IsAllocBox (M2.__default.PickOne M2._default.PickOne$T |s#0|) M2._default.PickOne$T $Heap))
))))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |2927|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (b T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| a@@1 y@@0) (|Set#IsMember| (|Set#Union| a@@1 b) y@@0))
 :qid |DafnyPreludebpl.708:15|
 :skolemid |2931|
 :pattern ( (|Set#Union| a@@1 b) (|Set#IsMember| a@@1 y@@0))
)))
(assert (forall ((a@@2 T@U) (b@@0 T@U) (y@@1 T@U) ) (!  (=> (|Set#IsMember| b@@0 y@@1) (|Set#IsMember| (|Set#Union| a@@2 b@@0) y@@1))
 :qid |DafnyPreludebpl.712:15|
 :skolemid |2932|
 :pattern ( (|Set#Union| a@@2 b@@0) (|Set#IsMember| b@@0 y@@1))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|st#0@@0| T@U) ) (!  (=> (or (|M2.__default.DomSt#canCall| |st#0@@0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |st#0@@0| Tclass.M2.State))) (and (forall ((|p#0@@0| T@U) ) (!  (=> ($IsBox |p#0@@0| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@0|) |p#0@@0|) (|Set#IsMember| (|Map#Domain| (M2.State.m |st#0@@0|)) |p#0@@0|)))
 :qid |CloudMakeParallelBuildsdfy.441:20|
 :skolemid |4263|
 :pattern ( (|Set#IsMember| (|Map#Domain| (M2.State.m |st#0@@0|)) |p#0@@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@0|) |p#0@@0|))
)) ($Is SetType (M2.__default.DomSt |st#0@@0|) (TSet Tclass.M2.Path))))
 :qid |CloudMakeParallelBuildsdfy.9:24|
 :skolemid |4264|
 :pattern ( (M2.__default.DomSt |st#0@@0|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|st#0@@1| T@U) ) (!  (=> (or (|M2.__default.DomSt#canCall| |st#0@@1|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |st#0@@1| Tclass.M2.State))) (and (M2.State.StateCons_q |st#0@@1|) (= (M2.__default.DomSt |st#0@@1|) (|Set#FromBoogieMap| (|lambda#19| Tclass.M2.Path (|Map#Domain| (M2.State.m |st#0@@1|)))))))
 :qid |CloudMakeParallelBuildsdfy.9:24|
 :skolemid |4266|
 :pattern ( (M2.__default.DomSt |st#0@@1|))
))))
(assert (forall ((a@@3 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@3 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |2925|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly T@U) (|cmd#0@@0| T@U) (|deps#0@@0| T@U) (|restrictedState#0| T@U) (|exps#0| T@U) (|st#0@@2| T@U) ) (!  (=> (or (|M2.__default.execOne#canCall| |cmd#0@@0| |deps#0@@0| |restrictedState#0| |exps#0| |st#0@@2|) (and (< 2 $FunctionContextHeight) (and (and (and (and ($Is SeqType |cmd#0@@0| (TSeq TChar)) ($Is SetType |deps#0@@0| (TSet Tclass.M2.Path))) ($Is MapType |restrictedState#0| (TMap Tclass.M2.Path Tclass.M2.Artifact))) ($Is SetType |exps#0| (TSet (TSeq TChar)))) ($Is DatatypeTypeType |st#0@@2| Tclass.M2.State)))) ($Is DatatypeTypeType (M2.__default.execOne $ly |cmd#0@@0| |deps#0@@0| |restrictedState#0| |exps#0| |st#0@@2|) (Tclass.M2.Tuple (TSet Tclass.M2.Path) Tclass.M2.State)))
 :qid |CloudMakeParallelBuildsdfy.513:18|
 :skolemid |3604|
 :pattern ( (M2.__default.execOne $ly |cmd#0@@0| |deps#0@@0| |restrictedState#0| |exps#0| |st#0@@2|))
))))
(assert  (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 7)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|$w#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#19| |l#0| |l#1|) |$w#0|))  (and ($IsBox |$w#0| |l#0|) (|Set#IsMember| |l#1| |$w#0|)))
 :qid |CloudMakeParallelBuildsdfy.153:8|
 :skolemid |7215|
 :pattern ( (MapType0Select BoxType boolType (|lambda#19| |l#0| |l#1|) |$w#0|))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) (y@@2 T@U) ) (!  (=> (|Set#IsMember| b@@1 y@@2) (not (|Set#IsMember| (|Set#Difference| a@@4 b@@1) y@@2)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |2941|
 :pattern ( (|Set#Difference| a@@4 b@@1) (|Set#IsMember| b@@1 y@@2))
)))
(assert (forall ((M2._default.PickOne$T@@0 T@U) (s T@U) ) (!  (=> (|$let#0$canCall| M2._default.PickOne$T@@0 s) (|Set#IsMember| s (|$let#0_x| M2._default.PickOne$T@@0 s)))
 :qid |CloudMakeParallelBuildsdfy.486:5|
 :skolemid |3524|
 :pattern ( (|$let#0_x| M2._default.PickOne$T@@0 s))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@0 T@U) (|p#0@@1| T@U) (|a#0@@0| T@U) (|st#0@@3| T@U) ) (!  (=> (and (or (|M2.__default.SetSt#canCall| |p#0@@1| |a#0@@0| |st#0@@3|) (and (< 1 $FunctionContextHeight) (and (and (and ($IsBox |p#0@@1| Tclass.M2.Path) ($IsAllocBox |p#0@@1| Tclass.M2.Path $Heap@@0)) (and ($IsBox |a#0@@0| Tclass.M2.Artifact) ($IsAllocBox |a#0@@0| Tclass.M2.Artifact $Heap@@0))) (and ($Is DatatypeTypeType |st#0@@3| Tclass.M2.State) ($IsAlloc DatatypeTypeType |st#0@@3| Tclass.M2.State $Heap@@0))))) ($IsGoodHeap $Heap@@0)) ($IsAlloc DatatypeTypeType (M2.__default.SetSt |p#0@@1| |a#0@@0| |st#0@@3|) Tclass.M2.State $Heap@@0))
 :qid |CloudMakeParallelBuildsdfy.468:18|
 :skolemid |3498|
 :pattern ( ($IsAlloc DatatypeTypeType (M2.__default.SetSt |p#0@@1| |a#0@@0| |st#0@@3|) Tclass.M2.State $Heap@@0))
))))
(assert ($AlwaysAllocated Tclass.M2.Path))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d@@0))
 :qid |unknown.0:0|
 :skolemid |3265|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0) ($Is DatatypeTypeType d@@0 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (forall ((M2.Tuple$A T@U) (M2.Tuple$B T@U) (d@@1 T@U) ) (!  (=> ($Is DatatypeTypeType d@@1 (Tclass.M2.Tuple M2.Tuple$A M2.Tuple$B)) (M2.Tuple.Pair_q d@@1))
 :qid |unknown.0:0|
 :skolemid |4952|
 :pattern ( (M2.Tuple.Pair_q d@@1) ($Is DatatypeTypeType d@@1 (Tclass.M2.Tuple M2.Tuple$A M2.Tuple$B)))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |2922|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((a@@5 T@U) (b@@2 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@5 b@@2) b@@2) (|Set#Union| a@@5 b@@2))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |2935|
 :pattern ( (|Set#Union| (|Set#Union| a@@5 b@@2) b@@2))
)))
(assert (forall ((a@@6 T@U) (b@@3 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@6 b@@3) o@@1)  (and (|Set#IsMember| a@@6 o@@1) (not (|Set#IsMember| b@@3 o@@1))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |2940|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@6 b@@3) o@@1))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@1 T@U) (|cmd#0@@1| T@U) (|deps#0@@1| T@U) (|exp#0@@0| T@U) ) (!  (=> (and (or (|M2.__default.RunTool#canCall| |cmd#0@@1| |deps#0@@1| |exp#0@@0|) (and (< 0 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@1| (TSeq TChar)) ($IsAlloc SeqType |cmd#0@@1| (TSeq TChar) $Heap@@1)) (and ($Is MapType |deps#0@@1| (TMap Tclass.M2.Path Tclass.M2.Artifact)) ($IsAlloc MapType |deps#0@@1| (TMap Tclass.M2.Path Tclass.M2.Artifact) $Heap@@1))) (and ($Is SeqType |exp#0@@0| (TSeq TChar)) ($IsAlloc SeqType |exp#0@@0| (TSeq TChar) $Heap@@1))))) ($IsGoodHeap $Heap@@1)) ($IsAllocBox (M2.__default.RunTool |cmd#0@@1| |deps#0@@1| |exp#0@@0|) Tclass.M2.Artifact $Heap@@1))
 :qid |CloudMakeParallelBuildsdfy.507:18|
 :skolemid |3588|
 :pattern ( ($IsAllocBox (M2.__default.RunTool |cmd#0@@1| |deps#0@@1| |exp#0@@0|) Tclass.M2.Artifact $Heap@@1))
))))
(assert (forall ((d@@2 T@U) ) (!  (=> ($Is DatatypeTypeType d@@2 Tclass.M2.State) (M2.State.StateCons_q d@@2))
 :qid |unknown.0:0|
 :skolemid |4688|
 :pattern ( (M2.State.StateCons_q d@@2) ($Is DatatypeTypeType d@@2 Tclass.M2.State))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |3253|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert (forall ((M2.Tuple$A@@0 T@U) (M2.Tuple$B@@0 T@U) (|a#157#0#0| T@U) (|a#157#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M2.Tuple.Pair| |a#157#0#0| |a#157#1#0|) (Tclass.M2.Tuple M2.Tuple$A@@0 M2.Tuple$B@@0))  (and ($IsBox |a#157#0#0| M2.Tuple$A@@0) ($IsBox |a#157#1#0| M2.Tuple$B@@0)))
 :qid |unknown.0:0|
 :skolemid |4940|
 :pattern ( ($Is DatatypeTypeType (|#M2.Tuple.Pair| |a#157#0#0| |a#157#1#0|) (Tclass.M2.Tuple M2.Tuple$A@@0 M2.Tuple$B@@0)))
)))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= (Lit T x@@5) x@@5)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |2812|
 :pattern ( (Lit T x@@5))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@0 T@U) (|cmd#0@@2| T@U) (|deps#0@@2| T@U) (|restrictedState#0@@0| T@U) (|exps#0@@0| T@U) (|st#0@@4| T@U) ) (!  (=> (or (|M2.__default.execOne#canCall| |cmd#0@@2| |deps#0@@2| |restrictedState#0@@0| |exps#0@@0| |st#0@@4|) (and (< 2 $FunctionContextHeight) (and (and (and (and ($Is SeqType |cmd#0@@2| (TSeq TChar)) ($Is SetType |deps#0@@2| (TSet Tclass.M2.Path))) ($Is MapType |restrictedState#0@@0| (TMap Tclass.M2.Path Tclass.M2.Artifact))) ($Is SetType |exps#0@@0| (TSet (TSeq TChar)))) ($Is DatatypeTypeType |st#0@@4| Tclass.M2.State)))) (and (=> (not (|Set#Equal| |exps#0@@0| |Set#Empty|)) (and (|M2.__default.PickOne#canCall| (TSeq TChar) |exps#0@@0|) (let ((|exp#0@@1| ($Unbox SeqType (M2.__default.PickOne (TSeq TChar) |exps#0@@0|))))
 (and (|M2.__default.execOne#canCall| |cmd#0@@2| |deps#0@@2| |restrictedState#0@@0| (|Set#Difference| |exps#0@@0| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#0@@1|))) |st#0@@4|) (let ((|st'#0| ($Unbox DatatypeTypeType (M2.Tuple.snd (M2.__default.execOne $ly@@0 |cmd#0@@2| |deps#0@@2| |restrictedState#0@@0| (|Set#Difference| |exps#0@@0| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#0@@1|))) |st#0@@4|)))))
 (and (|M2.__default.Loc#canCall| |cmd#0@@2| |deps#0@@2| |exp#0@@1|) (let ((|p#0@@2| (M2.__default.Loc |cmd#0@@2| |deps#0@@2| |exp#0@@1|)))
 (and (|M2.__default.DomSt#canCall| |st'#0|) (=> (not (|Set#IsMember| (M2.__default.DomSt |st'#0|) |p#0@@2|)) (and (|M2.__default.RunTool#canCall| |cmd#0@@2| |restrictedState#0@@0| |exp#0@@1|) (|M2.__default.SetSt#canCall| |p#0@@2| (M2.__default.RunTool |cmd#0@@2| |restrictedState#0@@0| |exp#0@@1|) |st'#0|))))))))))) (= (M2.__default.execOne ($LS $ly@@0) |cmd#0@@2| |deps#0@@2| |restrictedState#0@@0| |exps#0@@0| |st#0@@4|) (ite (|Set#Equal| |exps#0@@0| |Set#Empty|) (|#M2.Tuple.Pair| ($Box SetType (Lit SetType |Set#Empty|)) ($Box DatatypeTypeType |st#0@@4|)) (let ((|exp#0@@2| ($Unbox SeqType (M2.__default.PickOne (TSeq TChar) |exps#0@@0|))))
(let ((|st'#0@@0| ($Unbox DatatypeTypeType (M2.Tuple.snd (M2.__default.execOne $ly@@0 |cmd#0@@2| |deps#0@@2| |restrictedState#0@@0| (|Set#Difference| |exps#0@@0| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#0@@2|))) |st#0@@4|)))))
(let ((|paths#0| ($Unbox SetType (M2.Tuple.fst (M2.__default.execOne $ly@@0 |cmd#0@@2| |deps#0@@2| |restrictedState#0@@0| (|Set#Difference| |exps#0@@0| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#0@@2|))) |st#0@@4|)))))
(let ((|p#0@@3| (M2.__default.Loc |cmd#0@@2| |deps#0@@2| |exp#0@@2|)))
(|#M2.Tuple.Pair| ($Box SetType (|Set#Union| |paths#0| (|Set#UnionOne| |Set#Empty| |p#0@@3|))) ($Box DatatypeTypeType (ite (|Set#IsMember| (M2.__default.DomSt |st'#0@@0|) |p#0@@3|) |st'#0@@0| (M2.__default.SetSt |p#0@@3| (M2.__default.RunTool |cmd#0@@2| |restrictedState#0@@0| |exp#0@@2|) |st'#0@@0|))))))))))))
 :qid |CloudMakeParallelBuildsdfy.513:18|
 :skolemid |3607|
 :pattern ( (M2.__default.execOne ($LS $ly@@0) |cmd#0@@2| |deps#0@@2| |restrictedState#0@@0| |exps#0@@0| |st#0@@4|))
))))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|Set#Subset| a@@7 b@@4) (forall ((o@@2 T@U) ) (!  (=> (|Set#IsMember| a@@7 o@@2) (|Set#IsMember| b@@4 o@@2))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |2943|
 :pattern ( (|Set#IsMember| a@@7 o@@2))
 :pattern ( (|Set#IsMember| b@@4 o@@2))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |2944|
 :pattern ( (|Set#Subset| a@@7 b@@4))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@0)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@0) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@0))))
 :qid |unknown.0:0|
 :skolemid |3254|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@0))
)))
(assert (forall ((M2.Tuple$A@@1 T@U) (M2.Tuple$B@@1 T@U) (|a#157#0#0@@0| T@U) (|a#157#1#0@@0| T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) (= ($IsAlloc DatatypeTypeType (|#M2.Tuple.Pair| |a#157#0#0@@0| |a#157#1#0@@0|) (Tclass.M2.Tuple M2.Tuple$A@@1 M2.Tuple$B@@1) $h@@1)  (and ($IsAllocBox |a#157#0#0@@0| M2.Tuple$A@@1 $h@@1) ($IsAllocBox |a#157#1#0@@0| M2.Tuple$B@@1 $h@@1))))
 :qid |unknown.0:0|
 :skolemid |4941|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M2.Tuple.Pair| |a#157#0#0@@0| |a#157#1#0@@0|) (Tclass.M2.Tuple M2.Tuple$A@@1 M2.Tuple$B@@1) $h@@1))
)))
(assert (forall ((d@@3 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@3) (= (DatatypeCtorId d@@3) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |3246|
 :pattern ( (_System.Tuple2.___hMake2_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (! (= (M2.State.StateCons_q d@@4) (= (DatatypeCtorId d@@4) |##M2.State.StateCons|))
 :qid |unknown.0:0|
 :skolemid |4677|
 :pattern ( (M2.State.StateCons_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (! (= (M2.Tuple.Pair_q d@@5) (= (DatatypeCtorId d@@5) |##M2.Tuple.Pair|))
 :qid |unknown.0:0|
 :skolemid |4937|
 :pattern ( (M2.Tuple.Pair_q d@@5))
)))
(assert (forall ((x@@6 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@6)) x@@6)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2823|
 :pattern ( ($Unbox T@@0 x@@6))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) ) (! (= (|Set#Disjoint| a@@8 b@@5) (forall ((o@@3 T@U) ) (!  (or (not (|Set#IsMember| a@@8 o@@3)) (not (|Set#IsMember| b@@5 o@@3)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |2948|
 :pattern ( (|Set#IsMember| a@@8 o@@3))
 :pattern ( (|Set#IsMember| b@@5 o@@3))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |2949|
 :pattern ( (|Set#Disjoint| a@@8 b@@5))
)))
(assert (forall ((m@@1 T@U) (bx T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx) (U_2_bool (MapType0Select BoxType boolType m@@1 bx)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |2950|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@6) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@6 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |3247|
)))
 :qid |unknown.0:0|
 :skolemid |3248|
 :pattern ( (_System.Tuple2.___hMake2_q d@@6))
)))
(assert (forall ((d@@7 T@U) ) (!  (=> (M2.Tuple.Pair_q d@@7) (exists ((|a#156#0#0| T@U) (|a#156#1#0| T@U) ) (! (= d@@7 (|#M2.Tuple.Pair| |a#156#0#0| |a#156#1#0|))
 :qid |CloudMakeParallelBuildsdfy.159:31|
 :skolemid |4938|
)))
 :qid |unknown.0:0|
 :skolemid |4939|
 :pattern ( (M2.Tuple.Pair_q d@@7))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|st#0@@5| T@U) ) (!  (=> (or (|M2.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@5|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |st#0@@5| Tclass.M2.State))) (and (M2.State.StateCons_q (Lit DatatypeTypeType |st#0@@5|)) (= (M2.__default.DomSt (Lit DatatypeTypeType |st#0@@5|)) (|Set#FromBoogieMap| (|lambda#19| Tclass.M2.Path (|Map#Domain| (M2.State.m (Lit DatatypeTypeType |st#0@@5|))))))))
 :qid |CloudMakeParallelBuildsdfy.9:24|
 :weight 3
 :skolemid |4267|
 :pattern ( (M2.__default.DomSt (Lit DatatypeTypeType |st#0@@5|)))
))))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |2843|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |2844|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((d@@8 T@U) ) (!  (=> (M2.State.StateCons_q d@@8) (exists ((|a#8#0#0| T@U) ) (! (= d@@8 (|#M2.State.StateCons| |a#8#0#0|))
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |4678|
)))
 :qid |unknown.0:0|
 :skolemid |4679|
 :pattern ( (M2.State.StateCons_q d@@8))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |2836|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|cmd#0@@3| T@U) (|deps#0@@3| T@U) (|exp#0@@3| T@U) ) (!  (=> (or (|M2.__default.RunTool#canCall| |cmd#0@@3| |deps#0@@3| |exp#0@@3|) (and (< 0 $FunctionContextHeight) (and (and ($Is SeqType |cmd#0@@3| (TSeq TChar)) ($Is MapType |deps#0@@3| (TMap Tclass.M2.Path Tclass.M2.Artifact))) ($Is SeqType |exp#0@@3| (TSeq TChar))))) ($IsBox (M2.__default.RunTool |cmd#0@@3| |deps#0@@3| |exp#0@@3|) Tclass.M2.Artifact))
 :qid |CloudMakeParallelBuildsdfy.507:26|
 :skolemid |3587|
 :pattern ( (M2.__default.RunTool |cmd#0@@3| |deps#0@@3| |exp#0@@3|))
))))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass.M2.State) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) Tclass.M2.State)))
 :qid |unknown.0:0|
 :skolemid |3496|
 :pattern ( ($IsBox bx@@1 Tclass.M2.State))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|p#0@@4| T@U) (|a#0@@1| T@U) (|st#0@@6| T@U) ) (!  (=> (or (|M2.__default.SetSt#canCall| (Lit BoxType |p#0@@4|) (Lit BoxType |a#0@@1|) (Lit DatatypeTypeType |st#0@@6|)) (and (< 1 $FunctionContextHeight) (and (and ($IsBox |p#0@@4| Tclass.M2.Path) ($IsBox |a#0@@1| Tclass.M2.Artifact)) ($Is DatatypeTypeType |st#0@@6| Tclass.M2.State)))) (and (M2.State.StateCons_q (Lit DatatypeTypeType |st#0@@6|)) (= (M2.__default.SetSt (Lit BoxType |p#0@@4|) (Lit BoxType |a#0@@1|) (Lit DatatypeTypeType |st#0@@6|)) (|#M2.State.StateCons| (|Map#Build| (Lit MapType (M2.State.m (Lit DatatypeTypeType |st#0@@6|))) (Lit BoxType |p#0@@4|) (Lit BoxType |a#0@@1|))))))
 :qid |CloudMakeParallelBuildsdfy.468:24|
 :weight 3
 :skolemid |3502|
 :pattern ( (M2.__default.SetSt (Lit BoxType |p#0@@4|) (Lit BoxType |a#0@@1|) (Lit DatatypeTypeType |st#0@@6|)))
))))
(assert (forall ((|a#13#0#0| T@U) (bx@@2 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |a#13#0#0|) bx@@2) (< (DtRank ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |a#13#0#0|) bx@@2))) (DtRank (|#M2.State.StateCons| |a#13#0#0|))))
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |4686|
 :pattern ( (|Set#IsMember| (|Map#Domain| |a#13#0#0|) bx@@2) (|#M2.State.StateCons| |a#13#0#0|))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@1 T@U) (|cmd#0@@4| T@U) (|deps#0@@4| T@U) (|restrictedState#0@@1| T@U) (|exps#0@@1| T@U) (|st#0@@7| T@U) ) (!  (=> (or (|M2.__default.execOne#canCall| (Lit SeqType |cmd#0@@4|) (Lit SetType |deps#0@@4|) (Lit MapType |restrictedState#0@@1|) (Lit SetType |exps#0@@1|) (Lit DatatypeTypeType |st#0@@7|)) (and (< 2 $FunctionContextHeight) (and (and (and (and ($Is SeqType |cmd#0@@4| (TSeq TChar)) ($Is SetType |deps#0@@4| (TSet Tclass.M2.Path))) ($Is MapType |restrictedState#0@@1| (TMap Tclass.M2.Path Tclass.M2.Artifact))) ($Is SetType |exps#0@@1| (TSet (TSeq TChar)))) ($Is DatatypeTypeType |st#0@@7| Tclass.M2.State)))) (and (=> (not (|Set#Equal| |exps#0@@1| |Set#Empty|)) (and (|M2.__default.PickOne#canCall| (TSeq TChar) (Lit SetType |exps#0@@1|)) (let ((|exp#1| (Lit SeqType ($Unbox SeqType (M2.__default.PickOne (TSeq TChar) (Lit SetType |exps#0@@1|))))))
 (and (|M2.__default.execOne#canCall| (Lit SeqType |cmd#0@@4|) (Lit SetType |deps#0@@4|) (Lit MapType |restrictedState#0@@1|) (|Set#Difference| |exps#0@@1| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#1|))) (Lit DatatypeTypeType |st#0@@7|)) (let ((|st'#1| ($Unbox DatatypeTypeType (M2.Tuple.snd (M2.__default.execOne ($LS $ly@@1) (Lit SeqType |cmd#0@@4|) (Lit SetType |deps#0@@4|) (Lit MapType |restrictedState#0@@1|) (|Set#Difference| |exps#0@@1| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#1|))) (Lit DatatypeTypeType |st#0@@7|))))))
 (and (|M2.__default.Loc#canCall| (Lit SeqType |cmd#0@@4|) (Lit SetType |deps#0@@4|) |exp#1|) (let ((|p#1| (M2.__default.Loc (Lit SeqType |cmd#0@@4|) (Lit SetType |deps#0@@4|) |exp#1|)))
 (and (|M2.__default.DomSt#canCall| |st'#1|) (=> (not (|Set#IsMember| (M2.__default.DomSt |st'#1|) |p#1|)) (and (|M2.__default.RunTool#canCall| (Lit SeqType |cmd#0@@4|) (Lit MapType |restrictedState#0@@1|) |exp#1|) (|M2.__default.SetSt#canCall| |p#1| (M2.__default.RunTool (Lit SeqType |cmd#0@@4|) (Lit MapType |restrictedState#0@@1|) |exp#1|) |st'#1|))))))))))) (= (M2.__default.execOne ($LS $ly@@1) (Lit SeqType |cmd#0@@4|) (Lit SetType |deps#0@@4|) (Lit MapType |restrictedState#0@@1|) (Lit SetType |exps#0@@1|) (Lit DatatypeTypeType |st#0@@7|)) (ite (|Set#Equal| |exps#0@@1| |Set#Empty|) (|#M2.Tuple.Pair| ($Box SetType (Lit SetType |Set#Empty|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |st#0@@7|))) (let ((|exp#1@@0| (Lit SeqType ($Unbox SeqType (M2.__default.PickOne (TSeq TChar) (Lit SetType |exps#0@@1|))))))
(let ((|st'#1@@0| ($Unbox DatatypeTypeType (M2.Tuple.snd (M2.__default.execOne ($LS $ly@@1) (Lit SeqType |cmd#0@@4|) (Lit SetType |deps#0@@4|) (Lit MapType |restrictedState#0@@1|) (|Set#Difference| |exps#0@@1| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#1@@0|))) (Lit DatatypeTypeType |st#0@@7|))))))
(let ((|paths#1| ($Unbox SetType (M2.Tuple.fst (M2.__default.execOne ($LS $ly@@1) (Lit SeqType |cmd#0@@4|) (Lit SetType |deps#0@@4|) (Lit MapType |restrictedState#0@@1|) (|Set#Difference| |exps#0@@1| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#1@@0|))) (Lit DatatypeTypeType |st#0@@7|))))))
(let ((|p#1@@0| (M2.__default.Loc (Lit SeqType |cmd#0@@4|) (Lit SetType |deps#0@@4|) |exp#1@@0|)))
(|#M2.Tuple.Pair| ($Box SetType (|Set#Union| |paths#1| (|Set#UnionOne| |Set#Empty| |p#1@@0|))) ($Box DatatypeTypeType (ite (|Set#IsMember| (M2.__default.DomSt |st'#1@@0|) |p#1@@0|) |st'#1@@0| (M2.__default.SetSt |p#1@@0| (M2.__default.RunTool (Lit SeqType |cmd#0@@4|) (Lit MapType |restrictedState#0@@1|) |exp#1@@0|) |st'#1@@0|))))))))))))
 :qid |CloudMakeParallelBuildsdfy.513:18|
 :weight 3
 :skolemid |3608|
 :pattern ( (M2.__default.execOne ($LS $ly@@1) (Lit SeqType |cmd#0@@4|) (Lit SetType |deps#0@@4|) (Lit MapType |restrictedState#0@@1|) (Lit SetType |exps#0@@1|) (Lit DatatypeTypeType |st#0@@7|)))
))))
(assert (forall ((a@@9 T@U) (b@@6 T@U) (o@@4 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@9 b@@6) o@@4)  (or (|Set#IsMember| a@@9 o@@4) (|Set#IsMember| b@@6 o@@4)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |2930|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@9 b@@6) o@@4))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) ) (!  (=> (|Set#Disjoint| a@@10 b@@7) (and (= (|Set#Difference| (|Set#Union| a@@10 b@@7) a@@10) b@@7) (= (|Set#Difference| (|Set#Union| a@@10 b@@7) b@@7) a@@10)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |2933|
 :pattern ( (|Set#Union| a@@10 b@@7))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((M2._default.PickOne$T@@1 T@U) (|s#0@@0| T@U) ) (!  (=> (or (|M2.__default.PickOne#canCall| M2._default.PickOne$T@@1 |s#0@@0|) (and (< 0 $FunctionContextHeight) (and ($Is SetType |s#0@@0| (TSet M2._default.PickOne$T@@1)) (not (|Set#Equal| |s#0@@0| |Set#Empty|))))) ($IsBox (M2.__default.PickOne M2._default.PickOne$T@@1 |s#0@@0|) M2._default.PickOne$T@@1))
 :qid |unknown.0:0|
 :skolemid |3521|
 :pattern ( (M2.__default.PickOne M2._default.PickOne$T@@1 |s#0@@0|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|p#0@@5| T@U) (|a#0@@2| T@U) (|st#0@@8| T@U) ) (!  (=> (or (|M2.__default.SetSt#canCall| |p#0@@5| |a#0@@2| |st#0@@8|) (and (< 1 $FunctionContextHeight) (and (and ($IsBox |p#0@@5| Tclass.M2.Path) ($IsBox |a#0@@2| Tclass.M2.Artifact)) ($Is DatatypeTypeType |st#0@@8| Tclass.M2.State)))) ($Is DatatypeTypeType (M2.__default.SetSt |p#0@@5| |a#0@@2| |st#0@@8|) Tclass.M2.State))
 :qid |CloudMakeParallelBuildsdfy.468:24|
 :skolemid |3497|
 :pattern ( (M2.__default.SetSt |p#0@@5| |a#0@@2| |st#0@@8|))
))))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (!  (=> (|Set#Equal| a@@11 b@@8) (= a@@11 b@@8))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |2947|
 :pattern ( (|Set#Equal| a@@11 b@@8))
)))
(assert (forall ((|a#9#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M2.State.StateCons| |a#9#0#0|) Tclass.M2.State) ($Is MapType |a#9#0#0| (TMap Tclass.M2.Path Tclass.M2.Artifact)))
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |4680|
 :pattern ( ($Is DatatypeTypeType (|#M2.State.StateCons| |a#9#0#0|) Tclass.M2.State))
)))
(assert (= (Ctor charType) 8))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TChar) (and (= ($Box charType ($Unbox charType bx@@3)) bx@@3) ($Is charType ($Unbox charType bx@@3) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |2827|
 :pattern ( ($IsBox bx@@3 TChar))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |2835|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((s@@0 T@U) ) (! (<= 0 (|Seq#Length| s@@0))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |3018|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((ty T@U) ) (!  (=> ($AlwaysAllocated ty) (forall ((h@@0 T@U) (v@@2 T@U) ) (!  (=> ($IsBox v@@2 ty) ($IsAllocBox v@@2 ty h@@0))
 :qid |DafnyPreludebpl.337:13|
 :skolemid |2876|
 :pattern ( ($IsAllocBox v@@2 ty h@@0))
)))
 :qid |DafnyPreludebpl.335:17|
 :skolemid |2877|
 :pattern ( ($AlwaysAllocated ty))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((M2._default.PickOne$T@@2 T@U) ($Heap@@2 T@U) (|s#0@@1| T@U) ) (!  (=> (or (|M2.__default.PickOne#canCall| M2._default.PickOne$T@@2 |s#0@@1|) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@2) ($Is SetType |s#0@@1| (TSet M2._default.PickOne$T@@2))) (not (|Set#Equal| |s#0@@1| |Set#Empty|))))) (and (|$let#0$canCall| M2._default.PickOne$T@@2 |s#0@@1|) (= (M2.__default.PickOne M2._default.PickOne$T@@2 |s#0@@1|) (let ((|x#0| (|$let#0_x| M2._default.PickOne$T@@2 |s#0@@1|)))
|x#0|))))
 :qid |unknown.0:0|
 :skolemid |3525|
 :pattern ( (M2.__default.PickOne M2._default.PickOne$T@@2 |s#0@@1|) ($IsGoodHeap $Heap@@2))
))))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@1) (forall ((bx@@4 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@4) ($IsAllocBox bx@@4 t0@@1 h@@1))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |2864|
 :pattern ( (|Set#IsMember| v@@3 bx@@4))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |2865|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@1))
)))
(assert (forall ((t@@1 T@U) (u T@U) ) (! (= (Inv0_TMap (TMap t@@1 u)) t@@1)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |2806|
 :pattern ( (TMap t@@1 u))
)))
(assert (forall ((t@@2 T@U) (u@@0 T@U) ) (! (= (Inv1_TMap (TMap t@@2 u@@0)) u@@0)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |2807|
 :pattern ( (TMap t@@2 u@@0))
)))
(assert (forall ((t@@3 T@U) (u@@1 T@U) ) (! (= (Tag (TMap t@@3 u@@1)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |2808|
 :pattern ( (TMap t@@3 u@@1))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |3245|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |3250|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |3251|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |3260|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |3262|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall ((M2.Tuple$A@@2 T@U) (M2.Tuple$B@@2 T@U) ) (! (= (Tclass.M2.Tuple_0 (Tclass.M2.Tuple M2.Tuple$A@@2 M2.Tuple$B@@2)) M2.Tuple$A@@2)
 :qid |unknown.0:0|
 :skolemid |3591|
 :pattern ( (Tclass.M2.Tuple M2.Tuple$A@@2 M2.Tuple$B@@2))
)))
(assert (forall ((M2.Tuple$A@@3 T@U) (M2.Tuple$B@@3 T@U) ) (! (= (Tclass.M2.Tuple_1 (Tclass.M2.Tuple M2.Tuple$A@@3 M2.Tuple$B@@3)) M2.Tuple$B@@3)
 :qid |unknown.0:0|
 :skolemid |3592|
 :pattern ( (Tclass.M2.Tuple M2.Tuple$A@@3 M2.Tuple$B@@3))
)))
(assert (forall ((|a#155#0#0| T@U) (|a#155#1#0| T@U) ) (! (= (DatatypeCtorId (|#M2.Tuple.Pair| |a#155#0#0| |a#155#1#0|)) |##M2.Tuple.Pair|)
 :qid |CloudMakeParallelBuildsdfy.159:31|
 :skolemid |4936|
 :pattern ( (|#M2.Tuple.Pair| |a#155#0#0| |a#155#1#0|))
)))
(assert (forall ((|a#159#0#0| T@U) (|a#159#1#0| T@U) ) (! (= (M2.Tuple.fst (|#M2.Tuple.Pair| |a#159#0#0| |a#159#1#0|)) |a#159#0#0|)
 :qid |CloudMakeParallelBuildsdfy.159:31|
 :skolemid |4947|
 :pattern ( (|#M2.Tuple.Pair| |a#159#0#0| |a#159#1#0|))
)))
(assert (forall ((|a#161#0#0| T@U) (|a#161#1#0| T@U) ) (! (= (M2.Tuple.snd (|#M2.Tuple.Pair| |a#161#0#0| |a#161#1#0|)) |a#161#1#0|)
 :qid |CloudMakeParallelBuildsdfy.159:31|
 :skolemid |4949|
 :pattern ( (|#M2.Tuple.Pair| |a#161#0#0| |a#161#1#0|))
)))
(assert (forall ((v@@4 T@U) (t0@@2 T@U) (h@@2 T@U) ) (! (= ($IsAlloc SeqType v@@4 (TSeq t0@@2) h@@2) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| v@@4))) ($IsAllocBox (|Seq#Index| v@@4 i) t0@@2 h@@2))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |2870|
 :pattern ( (|Seq#Index| v@@4 i))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |2871|
 :pattern ( ($IsAlloc SeqType v@@4 (TSeq t0@@2) h@@2))
)))
(assert (forall (($ly@@2 T@U) (|cmd#0@@5| T@U) (|deps#0@@5| T@U) (|restrictedState#0@@2| T@U) (|exps#0@@2| T@U) (|st#0@@9| T@U) ) (! (= (M2.__default.execOne ($LS $ly@@2) |cmd#0@@5| |deps#0@@5| |restrictedState#0@@2| |exps#0@@2| |st#0@@9|) (M2.__default.execOne $ly@@2 |cmd#0@@5| |deps#0@@5| |restrictedState#0@@2| |exps#0@@2| |st#0@@9|))
 :qid |CloudMakeParallelBuildsdfy.513:18|
 :skolemid |3602|
 :pattern ( (M2.__default.execOne ($LS $ly@@2) |cmd#0@@5| |deps#0@@5| |restrictedState#0@@2| |exps#0@@2| |st#0@@9|))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Inv0_TSet (TSet t@@4)) t@@4)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |2798|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Tag (TSet t@@5)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2799|
 :pattern ( (TSet t@@5))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Inv0_TSeq (TSeq t@@6)) t@@6)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |2804|
 :pattern ( (TSeq t@@6))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Tag (TSeq t@@7)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |2805|
 :pattern ( (TSeq t@@7))
)))
(assert (forall ((|a#7#0#0| T@U) ) (! (= (DatatypeCtorId (|#M2.State.StateCons| |a#7#0#0|)) |##M2.State.StateCons|)
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |4676|
 :pattern ( (|#M2.State.StateCons| |a#7#0#0|))
)))
(assert (forall ((|a#11#0#0| T@U) ) (! (= (M2.State.m (|#M2.State.StateCons| |a#11#0#0|)) |a#11#0#0|)
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |4684|
 :pattern ( (|#M2.State.StateCons| |a#11#0#0|))
)))
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@7)) x@@7)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2822|
 :pattern ( ($Box T@@3 x@@7))
)))
(assert (forall ((v@@5 T@U) (t0@@3 T@U) (t1@@0 T@U) (h@@3 T@U) ) (! (= ($IsAlloc MapType v@@5 (TMap t0@@3 t1@@0) h@@3) (forall ((bx@@5 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@5) bx@@5) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@5) bx@@5) t1@@0 h@@3) ($IsAllocBox bx@@5 t0@@3 h@@3)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |2872|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@5) bx@@5))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@5) bx@@5))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |2873|
 :pattern ( ($IsAlloc MapType v@@5 (TMap t0@@3 t1@@0) h@@3))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |3261|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0@@0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0@@0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |3263|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0@@0| |a#7#1#0|))
)))
(assert (forall ((|a#160#0#0| T@U) (|a#160#1#0| T@U) ) (! (< (BoxRank |a#160#0#0|) (DtRank (|#M2.Tuple.Pair| |a#160#0#0| |a#160#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.159:31|
 :skolemid |4948|
 :pattern ( (|#M2.Tuple.Pair| |a#160#0#0| |a#160#1#0|))
)))
(assert (forall ((|a#162#0#0| T@U) (|a#162#1#0| T@U) ) (! (< (BoxRank |a#162#1#0|) (DtRank (|#M2.Tuple.Pair| |a#162#0#0| |a#162#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.159:31|
 :skolemid |4950|
 :pattern ( (|#M2.Tuple.Pair| |a#162#0#0| |a#162#1#0|))
)))
(assert (forall ((|a#9#0#0@@0| T@U) ($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) (= ($IsAlloc DatatypeTypeType (|#M2.State.StateCons| |a#9#0#0@@0|) Tclass.M2.State $h@@2) ($IsAlloc MapType |a#9#0#0@@0| (TMap Tclass.M2.Path Tclass.M2.Artifact) $h@@2)))
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |4681|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M2.State.StateCons| |a#9#0#0@@0|) Tclass.M2.State $h@@2))
)))
(assert (forall ((a@@12 T@U) (b@@9 T@U) ) (! (= (|Set#Union| a@@12 (|Set#Union| a@@12 b@@9)) (|Set#Union| a@@12 b@@9))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |2936|
 :pattern ( (|Set#Union| a@@12 (|Set#Union| a@@12 b@@9)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@3 T@U) ($ly@@3 T@U) (|cmd#0@@6| T@U) (|deps#0@@6| T@U) (|restrictedState#0@@3| T@U) (|exps#0@@3| T@U) (|st#0@@10| T@U) ) (!  (=> (and (or (|M2.__default.execOne#canCall| |cmd#0@@6| |deps#0@@6| |restrictedState#0@@3| |exps#0@@3| |st#0@@10|) (and (< 2 $FunctionContextHeight) (and (and (and (and (and ($Is SeqType |cmd#0@@6| (TSeq TChar)) ($IsAlloc SeqType |cmd#0@@6| (TSeq TChar) $Heap@@3)) (and ($Is SetType |deps#0@@6| (TSet Tclass.M2.Path)) ($IsAlloc SetType |deps#0@@6| (TSet Tclass.M2.Path) $Heap@@3))) (and ($Is MapType |restrictedState#0@@3| (TMap Tclass.M2.Path Tclass.M2.Artifact)) ($IsAlloc MapType |restrictedState#0@@3| (TMap Tclass.M2.Path Tclass.M2.Artifact) $Heap@@3))) (and ($Is SetType |exps#0@@3| (TSet (TSeq TChar))) ($IsAlloc SetType |exps#0@@3| (TSet (TSeq TChar)) $Heap@@3))) (and ($Is DatatypeTypeType |st#0@@10| Tclass.M2.State) ($IsAlloc DatatypeTypeType |st#0@@10| Tclass.M2.State $Heap@@3))))) ($IsGoodHeap $Heap@@3)) ($IsAlloc DatatypeTypeType (M2.__default.execOne $ly@@3 |cmd#0@@6| |deps#0@@6| |restrictedState#0@@3| |exps#0@@3| |st#0@@10|) (Tclass.M2.Tuple (TSet Tclass.M2.Path) Tclass.M2.State) $Heap@@3))
 :qid |CloudMakeParallelBuildsdfy.513:18|
 :skolemid |3605|
 :pattern ( ($IsAlloc DatatypeTypeType (M2.__default.execOne $ly@@3 |cmd#0@@6| |deps#0@@6| |restrictedState#0@@3| |exps#0@@3| |st#0@@10|) (Tclass.M2.Tuple (TSet Tclass.M2.Path) Tclass.M2.State) $Heap@@3))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|p#0@@6| T@U) (|a#0@@3| T@U) (|st#0@@11| T@U) ) (!  (=> (or (|M2.__default.SetSt#canCall| |p#0@@6| |a#0@@3| |st#0@@11|) (and (< 1 $FunctionContextHeight) (and (and ($IsBox |p#0@@6| Tclass.M2.Path) ($IsBox |a#0@@3| Tclass.M2.Artifact)) ($Is DatatypeTypeType |st#0@@11| Tclass.M2.State)))) (and (M2.State.StateCons_q |st#0@@11|) (= (M2.__default.SetSt |p#0@@6| |a#0@@3| |st#0@@11|) (|#M2.State.StateCons| (|Map#Build| (M2.State.m |st#0@@11|) |p#0@@6| |a#0@@3|)))))
 :qid |CloudMakeParallelBuildsdfy.468:24|
 :skolemid |3500|
 :pattern ( (M2.__default.SetSt |p#0@@6| |a#0@@3| |st#0@@11|))
))))
(assert (forall ((u@@2 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |3082|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
)))
(assert (forall ((bx@@6 T@U) (s@@1 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@6 (TMap s@@1 t@@8)) (and (= ($Box MapType ($Unbox MapType bx@@6)) bx@@6) ($Is MapType ($Unbox MapType bx@@6) (TMap s@@1 t@@8))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |2833|
 :pattern ( ($IsBox bx@@6 (TMap s@@1 t@@8)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@7)) bx@@7) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@7) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |3252|
 :pattern ( ($IsBox bx@@7 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((M2.Tuple$A@@4 T@U) (M2.Tuple$B@@4 T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass.M2.Tuple M2.Tuple$A@@4 M2.Tuple$B@@4)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@8)) bx@@8) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@8) (Tclass.M2.Tuple M2.Tuple$A@@4 M2.Tuple$B@@4))))
 :qid |unknown.0:0|
 :skolemid |3593|
 :pattern ( ($IsBox bx@@8 (Tclass.M2.Tuple M2.Tuple$A@@4 M2.Tuple$B@@4)))
)))
(assert  (and (and (and (and (and (and (forall ((t0@@4 T@T) (t1@@1 T@T) (t2 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@4 t1@@1 t2 (MapType1Store t0@@4 t1@@1 t2 m@@2 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@3 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@3 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@3 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@4 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@4 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))) (= (Ctor refType) 9)) (= (Ctor FieldType) 10)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 11)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#4| |l#0@@0| |l#1@@0| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0@@0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@0| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |7213|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#4| |l#0@@0| |l#1@@0| |l#2| |l#3|) $o $f))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |3249|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((M2.Tuple$A@@5 T@U) (M2.Tuple$B@@5 T@U) ) (!  (and (= (Tag (Tclass.M2.Tuple M2.Tuple$A@@5 M2.Tuple$B@@5)) Tagclass.M2.Tuple) (= (TagFamily (Tclass.M2.Tuple M2.Tuple$A@@5 M2.Tuple$B@@5)) tytagFamily$Tuple))
 :qid |unknown.0:0|
 :skolemid |3590|
 :pattern ( (Tclass.M2.Tuple M2.Tuple$A@@5 M2.Tuple$B@@5))
)))
(assert (forall ((m@@5 T@U) ) (!  (or (= m@@5 |Map#Empty|) (exists ((k T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@5) k)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |3070|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |3071|
 :pattern ( (|Map#Domain| m@@5))
)))
(assert (forall ((m@@6 T@U) ) (!  (or (= m@@6 |Map#Empty|) (exists ((v@@6 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@6) v@@6)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |3072|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |3073|
 :pattern ( (|Map#Values| m@@6))
)))
(assert (forall ((m@@7 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@7) item)  (and (|Set#IsMember| (|Map#Domain| m@@7) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@7) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |3081|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@7) item))
)))
(assert (forall ((m@@8 T@U) (v@@7 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@8) v@@7) (exists ((u@@3 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@8) u@@3) (= v@@7 (MapType0Select BoxType BoxType (|Map#Elements| m@@8) u@@3)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |3079|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@8) u@@3))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@8) u@@3))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |3080|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@8) v@@7))
)))
(assert (forall ((m@@9 T@U) (u@@4 T@U) (|u'| T@U) (v@@8 T@U) ) (!  (and (=> (= |u'| u@@4) (and (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@9 u@@4 v@@8)) |u'|) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@9 u@@4 v@@8)) |u'|) v@@8))) (=> (or (not (= |u'| u@@4)) (not true)) (and (= (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@9 u@@4 v@@8)) |u'|) (|Set#IsMember| (|Map#Domain| m@@9) |u'|)) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@9 u@@4 v@@8)) |u'|) (MapType0Select BoxType BoxType (|Map#Elements| m@@9) |u'|)))))
 :qid |DafnyPreludebpl.1463:15|
 :skolemid |3087|
 :pattern ( (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@9 u@@4 v@@8)) |u'|))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@9 u@@4 v@@8)) |u'|))
)))
(assert (forall ((d@@9 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@9)) (DtRank d@@9))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |2881|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@9)))
)))
(assert (forall ((bx@@9 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@9 (TSet t@@9)) (and (= ($Box SetType ($Unbox SetType bx@@9)) bx@@9) ($Is SetType ($Unbox SetType bx@@9) (TSet t@@9))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |2829|
 :pattern ( ($IsBox bx@@9 (TSet t@@9)))
)))
(assert (forall ((bx@@10 T@U) (t@@10 T@U) ) (!  (=> ($IsBox bx@@10 (TSeq t@@10)) (and (= ($Box SeqType ($Unbox SeqType bx@@10)) bx@@10) ($Is SeqType ($Unbox SeqType bx@@10) (TSeq t@@10))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |2832|
 :pattern ( ($IsBox bx@@10 (TSeq t@@10)))
)))
(assert (forall ((v@@9 T@U) (t0@@5 T@U) (t1@@2 T@U) ) (! (= ($Is MapType v@@9 (TMap t0@@5 t1@@2)) (forall ((bx@@11 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@9) bx@@11) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@9) bx@@11) t1@@2) ($IsBox bx@@11 t0@@5)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |2852|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@9) bx@@11))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@9) bx@@11))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |2853|
 :pattern ( ($Is MapType v@@9 (TMap t0@@5 t1@@2)))
)))
(assert (= (Tag Tclass.M2.State) Tagclass.M2.State))
(assert (= (TagFamily Tclass.M2.State) tytagFamily$State))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (! (= (|Set#Equal| a@@13 b@@10) (forall ((o@@5 T@U) ) (! (= (|Set#IsMember| a@@13 o@@5) (|Set#IsMember| b@@10 o@@5))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |2945|
 :pattern ( (|Set#IsMember| a@@13 o@@5))
 :pattern ( (|Set#IsMember| b@@10 o@@5))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |2946|
 :pattern ( (|Set#Equal| a@@13 b@@10))
)))
(assert (forall ((d@@10 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_System.Tuple2.___hMake2_q d@@10) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@10 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@3)
 :qid |unknown.0:0|
 :skolemid |3255|
 :pattern ( ($IsAlloc DatatypeTypeType d@@10 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@3))
)))) ($IsAllocBox (_System.Tuple2._0 d@@10) |_System._tuple#2$T0@@6| $h@@3))
 :qid |unknown.0:0|
 :skolemid |3256|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@10) |_System._tuple#2$T0@@6| $h@@3))
)))
(assert (forall ((d@@11 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_System.Tuple2.___hMake2_q d@@11) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@11 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@4)
 :qid |unknown.0:0|
 :skolemid |3257|
 :pattern ( ($IsAlloc DatatypeTypeType d@@11 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@4))
)))) ($IsAllocBox (_System.Tuple2._1 d@@11) |_System._tuple#2$T1@@7| $h@@4))
 :qid |unknown.0:0|
 :skolemid |3258|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@11) |_System._tuple#2$T1@@7| $h@@4))
)))
(assert (forall ((d@@12 T@U) (M2.Tuple$A@@6 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (M2.Tuple.Pair_q d@@12) (exists ((M2.Tuple$B@@6 T@U) ) (! ($IsAlloc DatatypeTypeType d@@12 (Tclass.M2.Tuple M2.Tuple$A@@6 M2.Tuple$B@@6) $h@@5)
 :qid |unknown.0:0|
 :skolemid |4942|
 :pattern ( ($IsAlloc DatatypeTypeType d@@12 (Tclass.M2.Tuple M2.Tuple$A@@6 M2.Tuple$B@@6) $h@@5))
)))) ($IsAllocBox (M2.Tuple.fst d@@12) M2.Tuple$A@@6 $h@@5))
 :qid |unknown.0:0|
 :skolemid |4943|
 :pattern ( ($IsAllocBox (M2.Tuple.fst d@@12) M2.Tuple$A@@6 $h@@5))
)))
(assert (forall ((d@@13 T@U) (M2.Tuple$B@@7 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (M2.Tuple.Pair_q d@@13) (exists ((M2.Tuple$A@@7 T@U) ) (! ($IsAlloc DatatypeTypeType d@@13 (Tclass.M2.Tuple M2.Tuple$A@@7 M2.Tuple$B@@7) $h@@6)
 :qid |unknown.0:0|
 :skolemid |4944|
 :pattern ( ($IsAlloc DatatypeTypeType d@@13 (Tclass.M2.Tuple M2.Tuple$A@@7 M2.Tuple$B@@7) $h@@6))
)))) ($IsAllocBox (M2.Tuple.snd d@@13) M2.Tuple$B@@7 $h@@6))
 :qid |unknown.0:0|
 :skolemid |4945|
 :pattern ( ($IsAllocBox (M2.Tuple.snd d@@13) M2.Tuple$B@@7 $h@@6))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |3259|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((|a#158#0#0| T@U) (|a#158#1#0| T@U) ) (! (= (|#M2.Tuple.Pair| (Lit BoxType |a#158#0#0|) (Lit BoxType |a#158#1#0|)) (Lit DatatypeTypeType (|#M2.Tuple.Pair| |a#158#0#0| |a#158#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.159:31|
 :skolemid |4946|
 :pattern ( (|#M2.Tuple.Pair| (Lit BoxType |a#158#0#0|) (Lit BoxType |a#158#1#0|)))
)))
(assert (forall ((|a#10#0#0| T@U) ) (! (= (|#M2.State.StateCons| (Lit MapType |a#10#0#0|)) (Lit DatatypeTypeType (|#M2.State.StateCons| |a#10#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |4683|
 :pattern ( (|#M2.State.StateCons| (Lit MapType |a#10#0#0|)))
)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@8)) (Lit BoxType ($Box T@@4 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |2813|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@8)))
)))
(assert (forall ((|a#12#0#0| T@U) (d@@14 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |a#12#0#0|) ($Box DatatypeTypeType d@@14)) (< (DtRank d@@14) (DtRank (|#M2.State.StateCons| |a#12#0#0|))))
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |4685|
 :pattern ( (|Set#IsMember| (|Map#Domain| |a#12#0#0|) ($Box DatatypeTypeType d@@14)) (|#M2.State.StateCons| |a#12#0#0|))
)))
(assert (forall ((s@@2 T@U) ) (!  (=> (= (|Seq#Length| s@@2) 0) (= s@@2 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |3019|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((M2._default.PickOne$T@@3 T@U) ($Heap@@4 T@U) (|s#0@@2| T@U) ) (!  (=> (or (|M2.__default.PickOne#canCall| M2._default.PickOne$T@@3 (Lit SetType |s#0@@2|)) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@4) ($Is SetType |s#0@@2| (TSet M2._default.PickOne$T@@3))) (not (|Set#Equal| |s#0@@2| |Set#Empty|))))) (and (|$let#0$canCall| M2._default.PickOne$T@@3 (Lit SetType |s#0@@2|)) (= (M2.__default.PickOne M2._default.PickOne$T@@3 (Lit SetType |s#0@@2|)) (let ((|x#1| (|$let#0_x| M2._default.PickOne$T@@3 (Lit SetType |s#0@@2|))))
|x#1|))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |3526|
 :pattern ( (M2.__default.PickOne M2._default.PickOne$T@@3 (Lit SetType |s#0@@2|)) ($IsGoodHeap $Heap@@4))
))))
(assert (forall ((h@@4 T@U) (v@@10 T@U) ) (! ($IsAlloc charType v@@10 TChar h@@4)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |2861|
 :pattern ( ($IsAlloc charType v@@10 TChar h@@4))
)))
(assert (forall ((v@@11 T@U) (t0@@6 T@U) ) (! (= ($Is SeqType v@@11 (TSeq t0@@6)) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@11))) ($IsBox (|Seq#Index| v@@11 i@@0) t0@@6))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |2850|
 :pattern ( (|Seq#Index| v@@11 i@@0))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |2851|
 :pattern ( ($Is SeqType v@@11 (TSeq t0@@6)))
)))
(assert (forall ((m@@10 T@U) ) (!  (or (= m@@10 |Map#Empty|) (exists ((k@@0 T@U) (v@@12 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@10) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@0 v@@12)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |3074|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |3075|
 :pattern ( (|Map#Items| m@@10))
)))
(assert (forall ((s@@3 T@U) (i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| s@@3))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@3 i@@1))) (|Seq#Rank| s@@3)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |3064|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@3 i@@1))))
)))
(assert (forall ((v@@13 T@U) (t0@@7 T@U) (t1@@3 T@U) ) (!  (=> ($Is MapType v@@13 (TMap t0@@7 t1@@3)) (and (and ($Is SetType (|Map#Domain| v@@13) (TSet t0@@7)) ($Is SetType (|Map#Values| v@@13) (TSet t1@@3))) ($Is SetType (|Map#Items| v@@13) (TSet (Tclass._System.Tuple2 t0@@7 t1@@3)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |2854|
 :pattern ( ($Is MapType v@@13 (TMap t0@@7 t1@@3)))
)))
(assert (forall ((v@@14 T@U) ) (! ($Is charType v@@14 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |2840|
 :pattern ( ($Is charType v@@14 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |st'#Z#0@0| () T@U)
(declare-fun |p#Z#0@0| () T@U)
(declare-fun $Heap@@5 () T@U)
(declare-fun |cmd#0@@7| () T@U)
(declare-fun |restrictedState#0@@4| () T@U)
(declare-fun |exp#Z#0@0| () T@U)
(declare-fun |##a#0@0| () T@U)
(declare-fun |exps#0@@4| () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |deps#0@@7| () T@U)
(declare-fun |##exps#0@0| () T@U)
(declare-fun |st#0@@12| () T@U)
(declare-fun $LZ () T@U)
(declare-fun |let#1#0#0| () T@U)
(declare-fun |paths#Z#0@0| () T@U)
(declare-fun |let#2#0#0| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$M2.__default.execOne)
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
 (=> (= (ControlFlow 0 0) 10) (let ((anon8_correct true))
(let ((anon12_Else_correct  (=> (and (and (not (|Set#IsMember| (M2.__default.DomSt |st'#Z#0@0|) |p#Z#0@0|)) ($IsAllocBox |p#Z#0@0| Tclass.M2.Path $Heap@@5)) (and ($IsAlloc SeqType |cmd#0@@7| (TSeq TChar) $Heap@@5) ($IsAlloc MapType |restrictedState#0@@4| (TMap Tclass.M2.Path Tclass.M2.Artifact) $Heap@@5))) (=> (and (and (and ($IsAlloc SeqType |exp#Z#0@0| (TSeq TChar) $Heap@@5) (|M2.__default.RunTool#canCall| |cmd#0@@7| |restrictedState#0@@4| |exp#Z#0@0|)) (and (= |##a#0@0| (M2.__default.RunTool |cmd#0@@7| |restrictedState#0@@4| |exp#Z#0@0|)) ($IsAllocBox |##a#0@0| Tclass.M2.Artifact $Heap@@5))) (and (and ($IsAlloc DatatypeTypeType |st'#Z#0@0| Tclass.M2.State $Heap@@5) (|M2.__default.SetSt#canCall| |p#Z#0@0| (M2.__default.RunTool |cmd#0@@7| |restrictedState#0@@4| |exp#Z#0@0|) |st'#Z#0@0|)) (and (M2.State.StateCons_q (M2.__default.SetSt |p#Z#0@0| (M2.__default.RunTool |cmd#0@@7| |restrictedState#0@@4| |exp#Z#0@0|) |st'#Z#0@0|)) (= (ControlFlow 0 5) 3)))) anon8_correct))))
(let ((anon12_Then_correct  (=> (and (|Set#IsMember| (M2.__default.DomSt |st'#Z#0@0|) |p#Z#0@0|) (= (ControlFlow 0 4) 3)) anon8_correct)))
(let ((anon11_Else_correct  (=> (and (not (|Set#Equal| |exps#0@@4| |Set#Empty|)) ($IsAlloc SetType |exps#0@@4| (TSet (TSeq TChar)) $Heap@@5)) (and (=> (= (ControlFlow 0 6) (- 0 8)) (not (|Set#Equal| |exps#0@@4| |Set#Empty|))) (=> (and (and (not (|Set#Equal| |exps#0@@4| |Set#Empty|)) (|M2.__default.PickOne#canCall| (TSeq TChar) |exps#0@@4|)) (and (= |let#0#0#0| ($Unbox SeqType (M2.__default.PickOne (TSeq TChar) |exps#0@@4|))) (|M2.__default.PickOne#canCall| (TSeq TChar) |exps#0@@4|))) (=> (and (and (and ($Is SeqType |let#0#0#0| (TSeq TChar)) (= |exp#Z#0@0| |let#0#0#0|)) (and ($IsAlloc SeqType |cmd#0@@7| (TSeq TChar) $Heap@@5) ($IsAlloc SetType |deps#0@@7| (TSet Tclass.M2.Path) $Heap@@5))) (and (and ($IsAlloc MapType |restrictedState#0@@4| (TMap Tclass.M2.Path Tclass.M2.Artifact) $Heap@@5) (= |##exps#0@0| (|Set#Difference| |exps#0@@4| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#Z#0@0|))))) (and ($IsAlloc SetType |##exps#0@0| (TSet (TSeq TChar)) $Heap@@5) ($IsAlloc DatatypeTypeType |st#0@@12| Tclass.M2.State $Heap@@5)))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (or (< (|Seq#Rank| |cmd#0@@7|) (|Seq#Rank| |cmd#0@@7|)) (and (= (|Seq#Rank| |cmd#0@@7|) (|Seq#Rank| |cmd#0@@7|)) (or (and (|Set#Subset| |deps#0@@7| |deps#0@@7|) (not (|Set#Subset| |deps#0@@7| |deps#0@@7|))) (and (|Set#Equal| |deps#0@@7| |deps#0@@7|) (or (and (|Set#Subset| (|Map#Domain| |restrictedState#0@@4|) (|Map#Domain| |restrictedState#0@@4|)) (not (|Set#Subset| (|Map#Domain| |restrictedState#0@@4|) (|Map#Domain| |restrictedState#0@@4|)))) (and (|Set#Equal| (|Map#Domain| |restrictedState#0@@4|) (|Map#Domain| |restrictedState#0@@4|)) (or (and (|Set#Subset| |##exps#0@0| |exps#0@@4|) (not (|Set#Subset| |exps#0@@4| |##exps#0@0|))) (and (|Set#Equal| |##exps#0@0| |exps#0@@4|) (< (DtRank |st#0@@12|) (DtRank |st#0@@12|))))))))))) (=> (or (< (|Seq#Rank| |cmd#0@@7|) (|Seq#Rank| |cmd#0@@7|)) (and (= (|Seq#Rank| |cmd#0@@7|) (|Seq#Rank| |cmd#0@@7|)) (or (and (|Set#Subset| |deps#0@@7| |deps#0@@7|) (not (|Set#Subset| |deps#0@@7| |deps#0@@7|))) (and (|Set#Equal| |deps#0@@7| |deps#0@@7|) (or (and (|Set#Subset| (|Map#Domain| |restrictedState#0@@4|) (|Map#Domain| |restrictedState#0@@4|)) (not (|Set#Subset| (|Map#Domain| |restrictedState#0@@4|) (|Map#Domain| |restrictedState#0@@4|)))) (and (|Set#Equal| (|Map#Domain| |restrictedState#0@@4|) (|Map#Domain| |restrictedState#0@@4|)) (or (and (|Set#Subset| |##exps#0@0| |exps#0@@4|) (not (|Set#Subset| |exps#0@@4| |##exps#0@0|))) (and (|Set#Equal| |##exps#0@0| |exps#0@@4|) (< (DtRank |st#0@@12|) (DtRank |st#0@@12|)))))))))) (=> (|M2.__default.execOne#canCall| |cmd#0@@7| |deps#0@@7| |restrictedState#0@@4| (|Set#Difference| |exps#0@@4| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#Z#0@0|))) |st#0@@12|) (=> (and (and (and (and (M2.Tuple.Pair_q (M2.__default.execOne ($LS $LZ) |cmd#0@@7| |deps#0@@7| |restrictedState#0@@4| (|Set#Difference| |exps#0@@4| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#Z#0@0|))) |st#0@@12|)) (= |let#1#0#0| (M2.__default.execOne ($LS $LZ) |cmd#0@@7| |deps#0@@7| |restrictedState#0@@4| (|Set#Difference| |exps#0@@4| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#Z#0@0|))) |st#0@@12|))) (and (|M2.__default.execOne#canCall| |cmd#0@@7| |deps#0@@7| |restrictedState#0@@4| (|Set#Difference| |exps#0@@4| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#Z#0@0|))) |st#0@@12|) ($Is DatatypeTypeType |let#1#0#0| (Tclass.M2.Tuple (TSet Tclass.M2.Path) Tclass.M2.State)))) (and (and (M2.Tuple.Pair_q |let#1#0#0|) (= (|#M2.Tuple.Pair| ($Box SetType |paths#Z#0@0|) ($Box DatatypeTypeType |st'#Z#0@0|)) |let#1#0#0|)) (and ($IsAlloc SeqType |cmd#0@@7| (TSeq TChar) $Heap@@5) ($IsAlloc SetType |deps#0@@7| (TSet Tclass.M2.Path) $Heap@@5)))) (and (and (and ($IsAlloc SeqType |exp#Z#0@0| (TSeq TChar) $Heap@@5) (|M2.__default.Loc#canCall| |cmd#0@@7| |deps#0@@7| |exp#Z#0@0|)) (and (= |let#2#0#0| (M2.__default.Loc |cmd#0@@7| |deps#0@@7| |exp#Z#0@0|)) (|M2.__default.Loc#canCall| |cmd#0@@7| |deps#0@@7| |exp#Z#0@0|))) (and (and ($IsBox |let#2#0#0| Tclass.M2.Path) (= |p#Z#0@0| |let#2#0#0|)) (and ($IsAlloc DatatypeTypeType |st'#Z#0@0| Tclass.M2.State $Heap@@5) (|M2.__default.DomSt#canCall| |st'#Z#0@0|))))) (and (=> (= (ControlFlow 0 6) 4) anon12_Then_correct) (=> (= (ControlFlow 0 6) 5) anon12_Else_correct))))))))))))
(let ((anon11_Then_correct true))
(let ((anon10_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#4| null $Heap@@5 alloc false)) (and (and (=> (= (ControlFlow 0 9) 1) anon10_Then_correct) (=> (= (ControlFlow 0 9) 2) anon11_Then_correct)) (=> (= (ControlFlow 0 9) 6) anon11_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and (and ($IsGoodHeap $Heap@@5) ($IsHeapAnchor $Heap@@5)) ($Is SeqType |cmd#0@@7| (TSeq TChar))) (and ($Is SetType |deps#0@@7| (TSet Tclass.M2.Path)) ($Is MapType |restrictedState#0@@4| (TMap Tclass.M2.Path Tclass.M2.Artifact)))) (and (and ($Is SetType |exps#0@@4| (TSet (TSeq TChar))) ($Is DatatypeTypeType |st#0@@12| Tclass.M2.State)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 10) 9)))) anon0_correct)))
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
