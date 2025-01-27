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
(declare-fun TChar () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagChar () T@U)
(declare-fun TagISet () T@U)
(declare-fun TagSeq () T@U)
(declare-fun TagIMap () T@U)
(declare-fun alloc () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun Tagclass._module.IMLang () T@U)
(declare-fun |##_module.IMLang.IML| () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$IMLang () T@U)
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
(declare-fun DatatypeTypeType () T@T)
(declare-fun |#_module.IMLang.IML| (Bool T@U) T@U)
(declare-fun Tclass._module.IMLang (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun IMapType () T@T)
(declare-fun TIMap (T@U T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |lambda#22| (T@U Bool) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun |IMap#Domain| (T@U) T@U)
(declare-fun |IMap#Glue| (T@U T@U T@U) T@U)
(declare-fun |IMap#Elements| (T@U) T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun _module.IMLang.IML_q (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.IMNothing (T@U T@U) T@U)
(declare-fun |_module.__default.IMNothing#canCall| (T@U) Bool)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun _module.__default.IMOnlyDs (T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.__default.IMOnlyDs#canCall| () Bool)
(declare-fun charType () T@T)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |char#FromInt| (Int) T@U)
(declare-fun |lambda#25| (T@U T@U T@U T@U) T@U)
(declare-fun $LZ () T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun FieldType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun TISet (T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |IMap#Empty| () T@U)
(declare-fun $HeapSuccGhost (T@U T@U) Bool)
(declare-fun |lambda#23| (T@U) T@U)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |IMap#Values| (T@U) T@U)
(declare-fun _module.IMLang.nullable (T@U) Bool)
(declare-fun |IMap#Items| (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun |ISet#Empty| () T@U)
(declare-fun Inv0_TIMap (T@U) T@U)
(declare-fun Inv1_TIMap (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _module.IMLang.deriv (T@U) T@U)
(declare-fun Inv0_TISet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass._module.IMLang_0 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun |char#ToInt| (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
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
(assert (distinct TBool TChar TagBool TagChar TagISet TagSeq TagIMap alloc |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass._module.IMLang |##_module.IMLang.IML| |tytagFamily$_tuple#2| tytagFamily$IMLang)
)
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TChar) TagChar))
(assert  (and (= (Ctor DatatypeTypeType) 3) (= (Ctor IMapType) 4)))
(assert (forall ((_module.IMLang$S T@U) (|a#20#0#0| Bool) (|a#20#1#0| T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) (= ($IsAlloc DatatypeTypeType (|#_module.IMLang.IML| |a#20#0#0| |a#20#1#0|) (Tclass._module.IMLang _module.IMLang$S) $h)  (and ($IsAlloc boolType (bool_2_U |a#20#0#0|) TBool $h) ($IsAlloc IMapType |a#20#1#0| (TIMap _module.IMLang$S (Tclass._module.IMLang _module.IMLang$S)) $h))))
 :qid |unknown.0:0|
 :skolemid |859|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.IMLang.IML| |a#20#0#0| |a#20#1#0|) (Tclass._module.IMLang _module.IMLang$S) $h))
)))
(assert  (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 5)))
(assert (forall ((|l#0| T@U) (|l#1| Bool) (|$w#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#22| |l#0| |l#1|) |$w#0|))  (and ($IsBox |$w#0| |l#0|) |l#1|))
 :qid |unknown.0:0|
 :skolemid |911|
 :pattern ( (MapType0Select BoxType boolType (|lambda#22| |l#0| |l#1|) |$w#0|))
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
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |468|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((_module.IMLang$S@@0 T@U) (d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 (Tclass._module.IMLang _module.IMLang$S@@0)) (_module.IMLang.IML_q d@@0))
 :qid |unknown.0:0|
 :skolemid |866|
 :pattern ( (_module.IMLang.IML_q d@@0) ($Is DatatypeTypeType d@@0 (Tclass._module.IMLang _module.IMLang$S@@0)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.IMNothing$S T@U) ($ly T@U) ) (!  (=> (or (|_module.__default.IMNothing#canCall| _module._default.IMNothing$S) (< 1 $FunctionContextHeight)) ($Is DatatypeTypeType (_module.__default.IMNothing _module._default.IMNothing$S $ly) (Tclass._module.IMLang _module._default.IMNothing$S)))
 :qid |unknown.0:0|
 :skolemid |769|
 :pattern ( (_module.__default.IMNothing _module._default.IMNothing$S $ly))
))))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |456|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert (= (Ctor charType) 6))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@0 T@U) ) (!  (=> (or |_module.__default.IMOnlyDs#canCall| (< 2 $FunctionContextHeight)) (and (forall ((|ch#0| T@U) ) (!  (=> ($Is charType |ch#0| TChar) (=> (U_2_bool (Lit boolType (bool_2_U true))) (and (=> (or (= |ch#0| (Lit charType (|char#FromInt| 100))) (= |ch#0| (Lit charType (|char#FromInt| 68)))) |_module.__default.IMOnlyDs#canCall|) (=> (not (or (= |ch#0| (Lit charType (|char#FromInt| 100))) (= |ch#0| (Lit charType (|char#FromInt| 68))))) (|_module.__default.IMNothing#canCall| TChar)))))
 :qid |ExpandedGuardednessdfy.196:18|
 :skolemid |777|
)) (= (_module.__default.IMOnlyDs ($LS $ly@@0)) (|#_module.IMLang.IML| (U_2_bool (Lit boolType (bool_2_U true))) (|IMap#Glue| (|lambda#22| TChar (U_2_bool (Lit boolType (bool_2_U true)))) (|lambda#25| (Lit charType (|char#FromInt| 100)) (Lit charType (|char#FromInt| 68)) (_module.__default.IMOnlyDs $ly@@0) (_module.__default.IMNothing TChar ($LS $LZ))) (TIMap TChar (Tclass._module.IMLang TChar)))))))
 :qid |ExpandedGuardednessdfy.194:16|
 :skolemid |778|
 :pattern ( (_module.__default.IMOnlyDs ($LS $ly@@0)))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@1 T@U) ) (!  (=> (or |_module.__default.IMOnlyDs#canCall| (< 2 $FunctionContextHeight)) ($Is DatatypeTypeType (_module.__default.IMOnlyDs $ly@@1) (Tclass._module.IMLang TChar)))
 :qid |ExpandedGuardednessdfy.194:16|
 :skolemid |775|
 :pattern ( (_module.__default.IMOnlyDs $ly@@1))
))))
(assert  (and (and (and (and (= (Ctor FieldType) 7) (= (Ctor refType) 8)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 9)
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
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert (= (Ctor SeqType) 10))
(assert (forall ((s T@U) (bx@@0 T@U) (t@@1 T@U) ) (!  (=> (and ($Is SeqType s (TSeq t@@1)) ($IsBox bx@@0 t@@1)) ($Is SeqType (|Seq#Build| s bx@@0) (TSeq t@@1)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |258|
 :pattern ( ($Is SeqType (|Seq#Build| s bx@@0) (TSeq t@@1)))
)))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2| T@U) (|l#3| T@U) (|$w#0@@0| T@U) ) (! (= (MapType0Select BoxType BoxType (|lambda#25| |l#0@@0| |l#1@@0| |l#2| |l#3|) |$w#0@@0|) ($Box DatatypeTypeType (ite  (or (= ($Unbox charType |$w#0@@0|) |l#0@@0|) (= ($Unbox charType |$w#0@@0|) |l#1@@0|)) |l#2| |l#3|)))
 :qid |ExpandedGuardednessdfy.196:43|
 :skolemid |913|
 :pattern ( (MapType0Select BoxType BoxType (|lambda#25| |l#0@@0| |l#1@@0| |l#2| |l#3|) |$w#0@@0|))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@0)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@0) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@0))))
 :qid |unknown.0:0|
 :skolemid |457|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@1) (= (DatatypeCtorId d@@1) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |449|
 :pattern ( (_System.Tuple2.___hMake2_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.IMLang.IML_q d@@2) (= (DatatypeCtorId d@@2) |##_module.IMLang.IML|))
 :qid |unknown.0:0|
 :skolemid |855|
 :pattern ( (_module.IMLang.IML_q d@@2))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@3) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@3 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |450|
)))
 :qid |unknown.0:0|
 :skolemid |451|
 :pattern ( (_System.Tuple2.___hMake2_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.IMLang.IML_q d@@4) (exists ((|a#19#0#0| Bool) (|a#19#1#0| T@U) ) (! (= d@@4 (|#_module.IMLang.IML| |a#19#0#0| |a#19#1#0|))
 :qid |ExpandedGuardednessdfy.187:29|
 :skolemid |856|
)))
 :qid |unknown.0:0|
 :skolemid |857|
 :pattern ( (_module.IMLang.IML_q d@@4))
)))
(assert (forall ((_module.IMLang$S@@1 T@U) (|a#20#0#0@@0| Bool) (|a#20#1#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.IMLang.IML| |a#20#0#0@@0| |a#20#1#0@@0|) (Tclass._module.IMLang _module.IMLang$S@@1))  (and ($Is boolType (bool_2_U |a#20#0#0@@0|) TBool) ($Is IMapType |a#20#1#0@@0| (TIMap _module.IMLang$S@@1 (Tclass._module.IMLang _module.IMLang$S@@1)))))
 :qid |unknown.0:0|
 :skolemid |858|
 :pattern ( ($Is DatatypeTypeType (|#_module.IMLang.IML| |a#20#0#0@@0| |a#20#1#0@@0|) (Tclass._module.IMLang _module.IMLang$S@@1)))
)))
(assert ($IsGhostField alloc))
(assert (forall ((s@@0 T@U) (v@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@0 v@@0)) (+ 1 (|Seq#Length| s@@0)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s@@0 v@@0))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@1) t@@2 h@@0) ($IsAlloc T@@1 v@@1 t@@2 h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@1) t@@2 h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@3 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@1 t@@3 h@@1) ($IsAllocBox bx@@1 t@@3 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@1 t@@3 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@2 T@U) (t@@4 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@2 t@@4 h@@2) ($IsAlloc T@@2 v@@2 t@@4 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@2 t@@4 h@@2))
)))
(assert (forall ((_module.IMLang$S@@2 T@U) ) (!  (and (= (Tag (Tclass._module.IMLang _module.IMLang$S@@2)) Tagclass._module.IMLang) (= (TagFamily (Tclass._module.IMLang _module.IMLang$S@@2)) tytagFamily$IMLang))
 :qid |unknown.0:0|
 :skolemid |560|
 :pattern ( (Tclass._module.IMLang _module.IMLang$S@@2))
)))
(assert (forall ((u T@U) ) (!  (not (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| |IMap#Empty|) u)))
 :qid |DafnyPreludebpl.1571:15|
 :skolemid |315|
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| |IMap#Empty|) u))
)))
(assert (forall ((h@@3 T@U) (k@@2 T@U) ) (!  (=> ($HeapSuccGhost h@@3 k@@2) (and ($HeapSucc h@@3 k@@2) (forall ((o@@0 T@U) (f T@U) ) (!  (=> (not ($IsGhostField f)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 o@@0) f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k@@2 o@@0) f)))
 :qid |DafnyPreludebpl.544:13|
 :skolemid |108|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k@@2 o@@0) f))
))))
 :qid |DafnyPreludebpl.541:15|
 :skolemid |109|
 :pattern ( ($HeapSuccGhost h@@3 k@@2))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.IMNothing$S@@0 T@U) ($ly@@2 T@U) ) (!  (=> (or (|_module.__default.IMNothing#canCall| _module._default.IMNothing$S@@0) (< 1 $FunctionContextHeight)) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.__default.IMNothing#canCall| _module._default.IMNothing$S@@0)) (= (_module.__default.IMNothing _module._default.IMNothing$S@@0 ($LS $ly@@2)) (|#_module.IMLang.IML| (U_2_bool (Lit boolType (bool_2_U false))) (|IMap#Glue| (|lambda#22| _module._default.IMNothing$S@@0 (U_2_bool (Lit boolType (bool_2_U true)))) (|lambda#23| ($Box DatatypeTypeType (Lit DatatypeTypeType (_module.__default.IMNothing _module._default.IMNothing$S@@0 $ly@@2)))) (TIMap _module._default.IMNothing$S@@0 (Tclass._module.IMLang _module._default.IMNothing$S@@0)))))))
 :qid |unknown.0:0|
 :skolemid |771|
 :pattern ( (_module.__default.IMNothing _module._default.IMNothing$S@@0 ($LS $ly@@2)))
))))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0 s1)) (+ (|Seq#Length| s0) (|Seq#Length| s1)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |226|
 :pattern ( (|Seq#Length| (|Seq#Append| s0 s1)))
)))
(assert (forall ((s@@1 T@U) (i Int) (v@@3 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@1)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@3) i) v@@3)) (=> (or (not (= i (|Seq#Length| s@@1))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@3) i) (|Seq#Index| s@@1 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@1 v@@3) i))
)))
(assert (forall ((m@@1 T@U) ) (!  (or (= m@@1 |IMap#Empty|) (exists ((k@@3 T@U) ) (! (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| m@@1) k@@3))
 :qid |DafnyPreludebpl.1525:32|
 :skolemid |303|
)))
 :qid |DafnyPreludebpl.1523:15|
 :skolemid |304|
 :pattern ( (|IMap#Domain| m@@1))
)))
(assert (forall ((m@@2 T@U) ) (!  (or (= m@@2 |IMap#Empty|) (exists ((v@@4 T@U) ) (! (U_2_bool (MapType0Select BoxType boolType (|IMap#Values| m@@2) v@@4))
 :qid |DafnyPreludebpl.1528:32|
 :skolemid |305|
)))
 :qid |DafnyPreludebpl.1526:15|
 :skolemid |306|
 :pattern ( (|IMap#Values| m@@2))
)))
(assert (forall ((d@@5 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.IMLang.IML_q d@@5) (exists ((_module.IMLang$S@@3 T@U) ) (! ($IsAlloc DatatypeTypeType d@@5 (Tclass._module.IMLang _module.IMLang$S@@3) $h@@1)
 :qid |unknown.0:0|
 :skolemid |860|
 :pattern ( ($IsAlloc DatatypeTypeType d@@5 (Tclass._module.IMLang _module.IMLang$S@@3) $h@@1))
)))) ($IsAlloc boolType (bool_2_U (_module.IMLang.nullable d@@5)) TBool $h@@1))
 :qid |unknown.0:0|
 :skolemid |861|
 :pattern ( ($IsAlloc boolType (bool_2_U (_module.IMLang.nullable d@@5)) TBool $h@@1))
)))
(assert (forall ((|l#0@@1| T@U) (|$w#0@@1| T@U) ) (! (= (MapType0Select BoxType BoxType (|lambda#23| |l#0@@1|) |$w#0@@1|) |l#0@@1|)
 :qid |ExpandedGuardednessdfy.191:14|
 :skolemid |912|
 :pattern ( (MapType0Select BoxType BoxType (|lambda#23| |l#0@@1|) |$w#0@@1|))
)))
(assert (forall ((v@@5 T@U) (t0@@1 T@U) (h@@4 T@U) ) (! (= ($IsAlloc (MapType0Type BoxType boolType) v@@5 (TISet t0@@1) h@@4) (forall ((bx@@2 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType v@@5 bx@@2)) ($IsAllocBox bx@@2 t0@@1 h@@4))
 :qid |DafnyPreludebpl.303:11|
 :skolemid |69|
 :pattern ( (MapType0Select BoxType boolType v@@5 bx@@2))
)))
 :qid |DafnyPreludebpl.301:15|
 :skolemid |70|
 :pattern ( ($IsAlloc (MapType0Type BoxType boolType) v@@5 (TISet t0@@1) h@@4))
)))
(assert (forall ((m@@3 T@U) (item T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|IMap#Items| m@@3) item))  (and (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| m@@3) (_System.Tuple2._0 ($Unbox DatatypeTypeType item)))) (= (MapType0Select BoxType BoxType (|IMap#Elements| m@@3) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1564:15|
 :skolemid |314|
 :pattern ( (MapType0Select BoxType boolType (|IMap#Items| m@@3) item))
)))
(assert (forall ((m@@4 T@U) (v@@6 T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|IMap#Values| m@@4) v@@6)) (exists ((u@@0 T@U) ) (!  (and (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| m@@4) u@@0)) (= v@@6 (MapType0Select BoxType BoxType (|IMap#Elements| m@@4) u@@0)))
 :qid |DafnyPreludebpl.1552:10|
 :skolemid |312|
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| m@@4) u@@0))
 :pattern ( (MapType0Select BoxType BoxType (|IMap#Elements| m@@4) u@@0))
)))
 :qid |DafnyPreludebpl.1550:15|
 :skolemid |313|
 :pattern ( (MapType0Select BoxType boolType (|IMap#Values| m@@4) v@@6))
)))
(assert (forall ((v@@7 T@U) (t0@@2 T@U) (t1@@0 T@U) (h@@5 T@U) ) (! (= ($IsAlloc IMapType v@@7 (TIMap t0@@2 t1@@0) h@@5) (forall ((bx@@3 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| v@@7) bx@@3)) (and ($IsAllocBox (MapType0Select BoxType BoxType (|IMap#Elements| v@@7) bx@@3) t1@@0 h@@5) ($IsAllocBox bx@@3 t0@@2 h@@5)))
 :qid |DafnyPreludebpl.327:19|
 :skolemid |77|
 :pattern ( (MapType0Select BoxType BoxType (|IMap#Elements| v@@7) bx@@3))
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| v@@7) bx@@3))
)))
 :qid |DafnyPreludebpl.324:15|
 :skolemid |78|
 :pattern ( ($IsAlloc IMapType v@@7 (TIMap t0@@2 t1@@0) h@@5))
)))
(assert (forall ((|a#21#0#0| Bool) (|a#21#1#0| T@U) ) (! (= (_module.IMLang.nullable (|#_module.IMLang.IML| |a#21#0#0| |a#21#1#0|)) |a#21#0#0|)
 :qid |ExpandedGuardednessdfy.187:29|
 :skolemid |863|
 :pattern ( (|#_module.IMLang.IML| |a#21#0#0| |a#21#1#0|))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) (c T@U) ) (!  (=> (or (not (= a@@1 c)) (not true)) (=> (and ($HeapSucc a@@1 b@@1) ($HeapSucc b@@1 c)) ($HeapSucc a@@1 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@1 b@@1) ($HeapSucc b@@1 c))
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
(assert (forall ((m@@8 T@U) ) (!  (or (= m@@8 |IMap#Empty|) (exists ((k@@4 T@U) (v@@8 T@U) ) (! (U_2_bool (MapType0Select BoxType boolType (|IMap#Items| m@@8) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@4 v@@8))))
 :qid |DafnyPreludebpl.1531:32|
 :skolemid |307|
)))
 :qid |DafnyPreludebpl.1529:15|
 :skolemid |308|
 :pattern ( (|IMap#Items| m@@8))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 TBool) (and (= ($Box boolType ($Unbox boolType bx@@4)) bx@@4) ($Is boolType ($Unbox boolType bx@@4) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@4 TBool))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 TChar) (and (= ($Box charType ($Unbox charType bx@@5)) bx@@5) ($Is charType ($Unbox charType bx@@5) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |30|
 :pattern ( ($IsBox bx@@5 TChar))
)))
(assert (forall ((v@@9 T@U) (t@@5 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@9) t@@5) ($Is T@@3 v@@9 t@@5))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@9) t@@5))
)))
(assert (forall ((s@@2 T@U) ) (! (<= 0 (|Seq#Length| s@@2))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert (forall ((t@@6 T@U) (u@@1 T@U) ) (! (= (Inv0_TIMap (TIMap t@@6 u@@1)) t@@6)
 :qid |DafnyPreludebpl.62:15|
 :skolemid |12|
 :pattern ( (TIMap t@@6 u@@1))
)))
(assert (forall ((t@@7 T@U) (u@@2 T@U) ) (! (= (Inv1_TIMap (TIMap t@@7 u@@2)) u@@2)
 :qid |DafnyPreludebpl.63:15|
 :skolemid |13|
 :pattern ( (TIMap t@@7 u@@2))
)))
(assert (forall ((t@@8 T@U) (u@@3 T@U) ) (! (= (Tag (TIMap t@@8 u@@3)) TagIMap)
 :qid |DafnyPreludebpl.64:15|
 :skolemid |14|
 :pattern ( (TIMap t@@8 u@@3))
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
(assert (forall ((|a#18#0#0| Bool) (|a#18#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.IMLang.IML| |a#18#0#0| |a#18#1#0|)) |##_module.IMLang.IML|)
 :qid |ExpandedGuardednessdfy.187:29|
 :skolemid |854|
 :pattern ( (|#_module.IMLang.IML| |a#18#0#0| |a#18#1#0|))
)))
(assert (forall ((|a#22#0#0| Bool) (|a#22#1#0| T@U) ) (! (= (_module.IMLang.deriv (|#_module.IMLang.IML| |a#22#0#0| |a#22#1#0|)) |a#22#1#0|)
 :qid |ExpandedGuardednessdfy.187:29|
 :skolemid |864|
 :pattern ( (|#_module.IMLang.IML| |a#22#0#0| |a#22#1#0|))
)))
(assert (forall ((v@@10 T@U) (t0@@3 T@U) (h@@6 T@U) ) (! (= ($IsAlloc SeqType v@@10 (TSeq t0@@3) h@@6) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@10))) ($IsAllocBox (|Seq#Index| v@@10 i@@0) t0@@3 h@@6))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@10 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@10 (TSeq t0@@3) h@@6))
)))
(assert (forall ((t@@9 T@U) ) (! (= (Inv0_TISet (TISet t@@9)) t@@9)
 :qid |DafnyPreludebpl.45:15|
 :skolemid |3|
 :pattern ( (TISet t@@9))
)))
(assert (forall ((t@@10 T@U) ) (! (= (Tag (TISet t@@10)) TagISet)
 :qid |DafnyPreludebpl.46:15|
 :skolemid |4|
 :pattern ( (TISet t@@10))
)))
(assert (forall ((t@@11 T@U) ) (! (= (Inv0_TSeq (TSeq t@@11)) t@@11)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@11))
)))
(assert (forall ((t@@12 T@U) ) (! (= (Tag (TSeq t@@12)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@12))
)))
(assert (forall ((_module.IMLang$S@@4 T@U) ) (! (= (Tclass._module.IMLang_0 (Tclass._module.IMLang _module.IMLang$S@@4)) _module.IMLang$S@@4)
 :qid |unknown.0:0|
 :skolemid |561|
 :pattern ( (Tclass._module.IMLang _module.IMLang$S@@4))
)))
(assert (forall ((x@@4 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@4))
)))
(assert (forall ((v@@11 T@U) (t0@@4 T@U) (t1@@1 T@U) ) (! (= ($Is IMapType v@@11 (TIMap t0@@4 t1@@1)) (forall ((bx@@6 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| v@@11) bx@@6)) (and ($IsBox (MapType0Select BoxType BoxType (|IMap#Elements| v@@11) bx@@6) t1@@1) ($IsBox bx@@6 t0@@4)))
 :qid |DafnyPreludebpl.276:19|
 :skolemid |58|
 :pattern ( (MapType0Select BoxType BoxType (|IMap#Elements| v@@11) bx@@6))
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| v@@11) bx@@6))
)))
 :qid |DafnyPreludebpl.273:15|
 :skolemid |59|
 :pattern ( ($Is IMapType v@@11 (TIMap t0@@4 t1@@1)))
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
(assert (forall ((_module._default.IMNothing$S@@1 T@U) ($ly@@3 T@U) ) (! (= (_module.__default.IMNothing _module._default.IMNothing$S@@1 ($LS $ly@@3)) (_module.__default.IMNothing _module._default.IMNothing$S@@1 $ly@@3))
 :qid |unknown.0:0|
 :skolemid |767|
 :pattern ( (_module.__default.IMNothing _module._default.IMNothing$S@@1 ($LS $ly@@3)))
)))
(assert (forall ((n Int) ) (!  (=> (or (and (<= 0 n) (< n 55296)) (and (<= 57344 n) (< n 1114112))) (= (|char#ToInt| (|char#FromInt| n)) n))
 :qid |DafnyPreludebpl.131:15|
 :skolemid |21|
 :pattern ( (|char#FromInt| n))
)))
(assert (forall ((bx@@7 T@U) (s@@3 T@U) (t@@13 T@U) ) (!  (=> ($IsBox bx@@7 (TIMap s@@3 t@@13)) (and (= ($Box IMapType ($Unbox IMapType bx@@7)) bx@@7) ($Is IMapType ($Unbox IMapType bx@@7) (TIMap s@@3 t@@13))))
 :qid |DafnyPreludebpl.210:15|
 :skolemid |37|
 :pattern ( ($IsBox bx@@7 (TIMap s@@3 t@@13)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@8)) bx@@8) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@8) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |455|
 :pattern ( ($IsBox bx@@8 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((o@@1 T@U) ) (!  (not (U_2_bool (MapType0Select BoxType boolType |ISet#Empty| o@@1)))
 :qid |DafnyPreludebpl.816:15|
 :skolemid |154|
 :pattern ( (MapType0Select BoxType boolType |ISet#Empty| o@@1))
)))
(assert  (and (forall ((t0@@5 T@T) (t1@@2 T@T) (t2 T@T) (val@@1 T@U) (m@@9 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@5 t1@@2 t2 (MapType1Store t0@@5 t1@@2 t2 m@@9 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@10 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@10 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@10 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@11 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@11 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@11 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0@@2| T@U) (|l#1@@1| T@U) (|l#2@@0| T@U) (|l#3@@0| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0|) $o $f))  (=> (and (or (not (= $o |l#0@@2|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@1| $o) |l#2@@0|)))) |l#3@@0|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |902|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0|) $o $f))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) (t0@@6 T@U) (t1@@3 T@U) ) (!  (=> (forall ((bx@@9 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType a@@2 bx@@9)) (and ($IsBox bx@@9 t0@@6) ($IsBox (MapType0Select BoxType BoxType b@@2 bx@@9) t1@@3)))
 :qid |DafnyPreludebpl.1585:11|
 :skolemid |318|
)) ($Is IMapType (|IMap#Glue| a@@2 b@@2 (TIMap t0@@6 t1@@3)) (TIMap t0@@6 t1@@3)))
 :qid |DafnyPreludebpl.1582:15|
 :skolemid |319|
 :pattern ( (|IMap#Glue| a@@2 b@@2 (TIMap t0@@6 t1@@3)))
)))
(assert (forall ((s@@4 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@4 val@@4)) s@@4) (= (|Seq#Build_inv1| (|Seq#Build| s@@4 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@4 val@@4))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |452|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((d@@6 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@6)) (DtRank d@@6))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@6)))
)))
(assert (forall (($ly@@4 T@U) ) (! (= (_module.__default.IMOnlyDs ($LS $ly@@4)) (_module.__default.IMOnlyDs $ly@@4))
 :qid |ExpandedGuardednessdfy.194:16|
 :skolemid |773|
 :pattern ( (_module.__default.IMOnlyDs ($LS $ly@@4)))
)))
(assert (forall ((bx@@10 T@U) (t@@14 T@U) ) (!  (=> ($IsBox bx@@10 (TISet t@@14)) (and (= ($Box (MapType0Type BoxType boolType) ($Unbox (MapType0Type BoxType boolType) bx@@10)) bx@@10) ($Is (MapType0Type BoxType boolType) ($Unbox (MapType0Type BoxType boolType) bx@@10) (TISet t@@14))))
 :qid |DafnyPreludebpl.198:15|
 :skolemid |33|
 :pattern ( ($IsBox bx@@10 (TISet t@@14)))
)))
(assert (forall ((bx@@11 T@U) (t@@15 T@U) ) (!  (=> ($IsBox bx@@11 (TSeq t@@15)) (and (= ($Box SeqType ($Unbox SeqType bx@@11)) bx@@11) ($Is SeqType ($Unbox SeqType bx@@11) (TSeq t@@15))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@11 (TSeq t@@15)))
)))
(assert (forall ((_module.IMLang$S@@5 T@U) (bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 (Tclass._module.IMLang _module.IMLang$S@@5)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@12)) bx@@12) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@12) (Tclass._module.IMLang _module.IMLang$S@@5))))
 :qid |unknown.0:0|
 :skolemid |562|
 :pattern ( ($IsBox bx@@12 (Tclass._module.IMLang _module.IMLang$S@@5)))
)))
(assert (forall ((ch T@U) ) (!  (and (= (|char#FromInt| (|char#ToInt| ch)) ch) (or (and (<= 0 (|char#ToInt| ch)) (< (|char#ToInt| ch) 55296)) (and (<= 57344 (|char#ToInt| ch)) (< (|char#ToInt| ch) 1114112))))
 :qid |DafnyPreludebpl.136:15|
 :skolemid |22|
 :pattern ( (|char#ToInt| ch))
)))
(assert (forall ((d@@7 T@U) (_module.IMLang$S@@6 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.IMLang.IML_q d@@7) ($IsAlloc DatatypeTypeType d@@7 (Tclass._module.IMLang _module.IMLang$S@@6) $h@@2))) ($IsAlloc IMapType (_module.IMLang.deriv d@@7) (TIMap _module.IMLang$S@@6 (Tclass._module.IMLang _module.IMLang$S@@6)) $h@@2))
 :qid |unknown.0:0|
 :skolemid |862|
 :pattern ( ($IsAlloc IMapType (_module.IMLang.deriv d@@7) (TIMap _module.IMLang$S@@6 (Tclass._module.IMLang _module.IMLang$S@@6)) $h@@2))
)))
(assert (forall ((d@@8 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_System.Tuple2.___hMake2_q d@@8) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@8 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@3)
 :qid |unknown.0:0|
 :skolemid |458|
 :pattern ( ($IsAlloc DatatypeTypeType d@@8 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@3))
)))) ($IsAllocBox (_System.Tuple2._0 d@@8) |_System._tuple#2$T0@@6| $h@@3))
 :qid |unknown.0:0|
 :skolemid |459|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@8) |_System._tuple#2$T0@@6| $h@@3))
)))
(assert (forall ((d@@9 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_System.Tuple2.___hMake2_q d@@9) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@9 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@4)
 :qid |unknown.0:0|
 :skolemid |460|
 :pattern ( ($IsAlloc DatatypeTypeType d@@9 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@4))
)))) ($IsAllocBox (_System.Tuple2._1 d@@9) |_System._tuple#2$T1@@7| $h@@4))
 :qid |unknown.0:0|
 :skolemid |461|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@9) |_System._tuple#2$T1@@7| $h@@4))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) (n@@0 Int) ) (!  (and (=> (< n@@0 (|Seq#Length| s0@@0)) (= (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n@@0) (|Seq#Index| s0@@0 n@@0))) (=> (<= (|Seq#Length| s0@@0) n@@0) (= (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n@@0) (|Seq#Index| s1@@0 (- n@@0 (|Seq#Length| s0@@0))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |227|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n@@0))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |462|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((x@@5 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@5)) (Lit BoxType ($Box T@@5 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@5)))
)))
(assert (forall ((s@@5 T@U) ) (!  (=> (= (|Seq#Length| s@@5) 0) (= s@@5 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@5))
)))
(assert (forall ((h@@7 T@U) (v@@12 T@U) ) (! ($IsAlloc boolType v@@12 TBool h@@7)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@12 TBool h@@7))
)))
(assert (forall ((h@@8 T@U) (v@@13 T@U) ) (! ($IsAlloc charType v@@13 TChar h@@8)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |64|
 :pattern ( ($IsAlloc charType v@@13 TChar h@@8))
)))
(assert (forall ((v@@14 T@U) (t0@@7 T@U) ) (! (= ($Is SeqType v@@14 (TSeq t0@@7)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@14))) ($IsBox (|Seq#Index| v@@14 i@@1) t0@@7))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@14 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@14 (TSeq t0@@7)))
)))
(assert (forall ((s@@6 T@U) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| s@@6))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@6 i@@2))) (|Seq#Rank| s@@6)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@6 i@@2))))
)))
(assert (forall ((v@@15 T@U) (t0@@8 T@U) (t1@@4 T@U) ) (!  (=> ($Is IMapType v@@15 (TIMap t0@@8 t1@@4)) (and (and ($Is (MapType0Type BoxType boolType) (|IMap#Domain| v@@15) (TISet t0@@8)) ($Is (MapType0Type BoxType boolType) (|IMap#Values| v@@15) (TISet t1@@4))) ($Is (MapType0Type BoxType boolType) (|IMap#Items| v@@15) (TISet (Tclass._System.Tuple2 t0@@8 t1@@4)))))
 :qid |DafnyPreludebpl.281:15|
 :skolemid |60|
 :pattern ( ($Is IMapType v@@15 (TIMap t0@@8 t1@@4)))
)))
(assert (forall ((v@@16 T@U) ) (! ($Is boolType v@@16 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@16 TBool))
)))
(assert (forall ((v@@17 T@U) ) (! ($Is charType v@@17 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |43|
 :pattern ( ($Is charType v@@17 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |l#0@1| () T@U)
(declare-fun |ch#0_0@1| () T@U)
(declare-fun |l#0@2| () T@U)
(declare-fun |s#0@2| () T@U)
(declare-fun |s#0@1| () T@U)
(declare-fun |$decr$loop#00@1| () Int)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun $Heap () T@U)
(declare-fun |ch#0_0@0| () T@U)
(declare-fun null () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |$decr_init$loop#00@0| () Int)
(declare-fun |l#0@0| () T@U)
(declare-fun |s#0@0| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |l#0@@3| () T@U)
(declare-fun |s#0| () T@U)
(declare-fun |ch#0_0| () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.GhostMain)
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
 (=> (= (ControlFlow 0 0) 18) (let ((anon11_correct  (=> (and (and (and (_module.IMLang.IML_q |l#0@1|) (=> (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| (_module.IMLang.deriv |l#0@1|)) ($Box charType |ch#0_0@1|))) (_module.IMLang.IML_q |l#0@1|))) (=> (not (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| (_module.IMLang.deriv |l#0@1|)) ($Box charType |ch#0_0@1|)))) (_module.IMLang.IML_q |l#0@1|))) (and (= |l#0@2| (ite (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| (_module.IMLang.deriv |l#0@1|)) ($Box charType |ch#0_0@1|))) ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|IMap#Elements| (_module.IMLang.deriv |l#0@1|)) ($Box charType |ch#0_0@1|))) (|#_module.IMLang.IML| (U_2_bool (Lit boolType (bool_2_U false))) (_module.IMLang.deriv |l#0@1|)))) (= |s#0@2| (|Seq#Append| |s#0@1| (|Seq#Build| |Seq#Empty| ($Box charType |ch#0_0@1|)))))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (or (<= 0 |$decr$loop#00@1|) (= (- 6 (|Seq#Length| |s#0@2|)) |$decr$loop#00@1|))) (=> (or (<= 0 |$decr$loop#00@1|) (= (- 6 (|Seq#Length| |s#0@2|)) |$decr$loop#00@1|)) (=> (= (ControlFlow 0 5) (- 0 4)) (< (- 6 (|Seq#Length| |s#0@2|)) |$decr$loop#00@1|)))))))
(let ((anon16_Else_correct  (=> (not (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| (_module.IMLang.deriv |l#0@1|)) ($Box charType |ch#0_0@1|)))) (=> (and (_module.IMLang.IML_q |l#0@1|) (= (ControlFlow 0 9) 5)) anon11_correct))))
(let ((anon16_Then_correct  (=> (and (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| (_module.IMLang.deriv |l#0@1|)) ($Box charType |ch#0_0@1|))) (_module.IMLang.IML_q |l#0@1|)) (and (=> (= (ControlFlow 0 7) (- 0 8)) (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| (_module.IMLang.deriv |l#0@1|)) ($Box charType |ch#0_0@1|)))) (=> (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| (_module.IMLang.deriv |l#0@1|)) ($Box charType |ch#0_0@1|))) (=> (= (ControlFlow 0 7) 5) anon11_correct))))))
(let ((anon8_correct  (=> (and (= |ch#0_0@1| (ite (< (|Seq#Length| |s#0@1|) 3) (|char#FromInt| 68) (|char#FromInt| 118))) (_module.IMLang.IML_q |l#0@1|)) (and (=> (= (ControlFlow 0 10) 7) anon16_Then_correct) (=> (= (ControlFlow 0 10) 9) anon16_Else_correct)))))
(let ((anon15_Else_correct  (=> (and (<= 3 (|Seq#Length| |s#0@1|)) (= (ControlFlow 0 12) 10)) anon8_correct)))
(let ((anon15_Then_correct  (=> (and (< (|Seq#Length| |s#0@1|) 3) (= (ControlFlow 0 11) 10)) anon8_correct)))
(let ((anon14_Else_correct  (=> (and (< (|Seq#Length| |s#0@1|) 6) (= |$decr$loop#00@1| (- 6 (|Seq#Length| |s#0@1|)))) (and (=> (= (ControlFlow 0 13) 11) anon15_Then_correct) (=> (= (ControlFlow 0 13) 12) anon15_Else_correct)))))
(let ((anon14_Then_correct true))
(let ((anon13_Else_correct  (=> |$w$loop#0@0| (and (=> (= (ControlFlow 0 14) 3) anon14_Then_correct) (=> (= (ControlFlow 0 14) 13) anon14_Else_correct)))))
(let ((anon13_Then_correct true))
(let ((anon12_LoopBody_correct  (and (=> (= (ControlFlow 0 15) 2) anon13_Then_correct) (=> (= (ControlFlow 0 15) 14) anon13_Else_correct))))
(let ((anon12_LoopDone_correct true))
(let ((anon12_LoopHead_correct  (=> (and ($Is DatatypeTypeType |l#0@1| (Tclass._module.IMLang TChar)) ($IsAlloc DatatypeTypeType |l#0@1| (Tclass._module.IMLang TChar) $Heap)) (=> (and (and (and ($Is SeqType |s#0@1| (TSeq TChar)) ($IsAlloc SeqType |s#0@1| (TSeq TChar) $Heap)) (and ($Is charType |ch#0_0@0| TChar) (not false))) (and (and (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0)))
 :qid |ExpandedGuardednessdfy.52:3|
 :skolemid |563|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0))
)) ($HeapSuccGhost $Heap $Heap)) (and (forall (($o@@1 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@1 $f@@0))))
 :qid |ExpandedGuardednessdfy.52:3|
 :skolemid |564|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0))
)) (<= (- 6 (|Seq#Length| |s#0@1|)) |$decr_init$loop#00@0|)))) (and (=> (= (ControlFlow 0 16) 1) anon12_LoopDone_correct) (=> (= (ControlFlow 0 16) 15) anon12_LoopBody_correct))))))
(let ((anon0_correct  (=> (and (and (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) |_module.__default.IMOnlyDs#canCall|) (and (_module.IMLang.IML_q (Lit DatatypeTypeType (_module.__default.IMOnlyDs ($LS $LZ)))) |_module.__default.IMOnlyDs#canCall|)) (and (and (= |l#0@0| (Lit DatatypeTypeType (_module.__default.IMOnlyDs ($LS $LZ)))) (= |s#0@0| (Lit SeqType |Seq#Empty|))) (and (= |$decr_init$loop#00@0| (- 6 (|Seq#Length| |s#0@0|))) (= (ControlFlow 0 17) 16)))) anon12_LoopHead_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is DatatypeTypeType |l#0@@3| (Tclass._module.IMLang TChar)) ($IsAlloc DatatypeTypeType |l#0@@3| (Tclass._module.IMLang TChar) $Heap)) true) (=> (and (and (and ($Is SeqType |s#0| (TSeq TChar)) ($IsAlloc SeqType |s#0| (TSeq TChar) $Heap)) true) (and (and ($Is charType |ch#0_0| TChar) true) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 18) 17)))) anon0_correct)))))
PreconditionGeneratedEntry_correct))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
