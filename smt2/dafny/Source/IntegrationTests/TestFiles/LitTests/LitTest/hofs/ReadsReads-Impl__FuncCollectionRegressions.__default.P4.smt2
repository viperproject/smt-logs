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
(declare-fun TagISet () T@U)
(declare-fun TagMultiSet () T@U)
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._System.___hFunc0 () T@U)
(declare-fun Tagclass.FuncCollectionRegressions.C () T@U)
(declare-fun Tagclass.FuncCollectionRegressions.C? () T@U)
(declare-fun class.FuncCollectionRegressions.C? () T@U)
(declare-fun |tytagFamily$_#Func0| () T@U)
(declare-fun tytagFamily$C () T@U)
(declare-fun field$x () T@U)
(declare-fun field$y () T@U)
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
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc0 (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Requires0 (T@U T@U T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun Reads0 (T@U T@U T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun refType () T@T)
(declare-fun null () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun FDim (T@U) Int)
(declare-fun Tag (T@U) T@U)
(declare-fun DeclName (T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Contains| (T@U T@U) Bool)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun MultiSetType () T@T)
(declare-fun TMultiSet (T@U) T@U)
(declare-fun $IsGoodMultiSet (T@U) Bool)
(declare-fun Tclass.FuncCollectionRegressions.C? () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass.FuncCollectionRegressions.C () T@U)
(declare-fun FuncCollectionRegressions.C.x () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun FuncCollectionRegressions.C.y () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun FuncCollectionRegressions.__default.G (T@U) Int)
(declare-fun FuncCollectionRegressions.__default.A0 () T@U)
(declare-fun FuncCollectionRegressions.__default.A1 () T@U)
(declare-fun FuncCollectionRegressions.__default.A2 () T@U)
(declare-fun |MultiSet#Multiplicity| (T@U T@U) Int)
(declare-fun FuncCollectionRegressions.__default.A3 () T@U)
(declare-fun TSet (T@U) T@U)
(declare-fun |FuncCollectionRegressions.__default.A0#Handle| () T@U)
(declare-fun |FuncCollectionRegressions.__default.A0#requires| () Bool)
(declare-fun TISet (T@U) T@U)
(declare-fun |FuncCollectionRegressions.__default.A1#Handle| () T@U)
(declare-fun |FuncCollectionRegressions.__default.A1#requires| () Bool)
(declare-fun TSeq (T@U) T@U)
(declare-fun |FuncCollectionRegressions.__default.A2#Handle| () T@U)
(declare-fun |FuncCollectionRegressions.__default.A2#requires| () Bool)
(declare-fun |FuncCollectionRegressions.__default.A3#Handle| () T@U)
(declare-fun |FuncCollectionRegressions.__default.A3#requires| () Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun |FuncCollectionRegressions.__default.A0#canCall| () Bool)
(declare-fun SetType () T@T)
(declare-fun |FuncCollectionRegressions.__default.A1#canCall| () Bool)
(declare-fun |FuncCollectionRegressions.__default.A2#canCall| () Bool)
(declare-fun SeqType () T@T)
(declare-fun |FuncCollectionRegressions.__default.A3#canCall| () Bool)
(declare-fun $OneHeap () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun Apply0 (T@U T@U T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun |MultiSet#Card| (T@U) Int)
(declare-fun |MultiSet#Empty| () T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TISet (T@U) T@U)
(declare-fun Inv0_TMultiSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass._System.___hFunc0_0 (T@U) T@U)
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
(assert (distinct TInt TagInt TagSet TagISet TagMultiSet TagSeq alloc allocName Tagclass._System.___hFunc0 Tagclass.FuncCollectionRegressions.C Tagclass.FuncCollectionRegressions.C? class.FuncCollectionRegressions.C? |tytagFamily$_#Func0| tytagFamily$C field$x field$y)
)
(assert  (and (and (and (and (and (and (and (and (= (Ctor HandleTypeType) 3) (= (Ctor refType) 4)) (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 5)) (= (Ctor BoxType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((f T@U) (t0@@0 T@U) (h T@U) ) (!  (=> ($IsGoodHeap h) (= ($IsAlloc HandleTypeType f (Tclass._System.___hFunc0 t0@@0) h)  (=> (Requires0 t0@@0 h f) (forall ((r T@U) ) (!  (=> (and (or (not (= r null)) (not true)) (|Set#IsMember| (Reads0 t0@@0 h f) ($Box refType r))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h r) alloc))))
 :qid |unknown.0:0|
 :skolemid |3172|
 :pattern ( (|Set#IsMember| (Reads0 t0@@0 h f) ($Box refType r)))
)))))
 :qid |unknown.0:0|
 :skolemid |3173|
 :pattern ( ($IsAlloc HandleTypeType f (Tclass._System.___hFunc0 t0@@0) h))
)))
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |2862|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (forall ((x@@2 T@U) ) (!  (not (|Seq#Contains| |Seq#Empty| x@@2))
 :qid |DafnyPreludebpl.1188:15|
 :skolemid |2969|
 :pattern ( (|Seq#Contains| |Seq#Empty| x@@2))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (Ctor MultiSetType) 8))
(assert (forall ((v T@U) (t0@@1 T@U) ) (!  (=> ($Is MultiSetType v (TMultiSet t0@@1)) ($IsGoodMultiSet v))
 :qid |DafnyPreludebpl.250:15|
 :skolemid |2789|
 :pattern ( ($Is MultiSetType v (TMultiSet t0@@1)))
)))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.FuncCollectionRegressions.C?)  (or (= $o null) (= (dtype $o) Tclass.FuncCollectionRegressions.C?)))
 :qid |unknown.0:0|
 :skolemid |3441|
 :pattern ( ($Is refType $o Tclass.FuncCollectionRegressions.C?))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass.FuncCollectionRegressions.C $h) ($IsAlloc refType |c#0| Tclass.FuncCollectionRegressions.C? $h))
 :qid |unknown.0:0|
 :skolemid |3448|
 :pattern ( ($IsAlloc refType |c#0| Tclass.FuncCollectionRegressions.C $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass.FuncCollectionRegressions.C? $h))
)))
(assert (= (FDim FuncCollectionRegressions.C.x) 0))
(assert (= (FieldOfDecl class.FuncCollectionRegressions.C? field$x) FuncCollectionRegressions.C.x))
(assert  (not ($IsGhostField FuncCollectionRegressions.C.x)))
(assert (= (FDim FuncCollectionRegressions.C.y) 0))
(assert (= (FieldOfDecl class.FuncCollectionRegressions.C? field$y) FuncCollectionRegressions.C.y))
(assert  (not ($IsGhostField FuncCollectionRegressions.C.y)))
(assert (forall (($h0 T@U) ($h1 T@U) ) (!  (=> (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@0 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (or (or (or (and ($Is refType $o@@0 Tclass.FuncCollectionRegressions.C?) (|Set#IsMember| FuncCollectionRegressions.__default.A0 ($Box refType $o@@0))) (and ($Is refType $o@@0 Tclass.FuncCollectionRegressions.C?) (U_2_bool (MapType0Select BoxType boolType FuncCollectionRegressions.__default.A1 ($Box refType $o@@0))))) (and ($Is refType $o@@0 Tclass.FuncCollectionRegressions.C?) (|Seq#Contains| FuncCollectionRegressions.__default.A2 ($Box refType $o@@0)))) (and ($Is refType $o@@0 Tclass.FuncCollectionRegressions.C?) (> (|MultiSet#Multiplicity| FuncCollectionRegressions.__default.A3 ($Box refType $o@@0)) 0)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@0) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@0) $f)))
 :qid |unknown.0:0|
 :skolemid |3402|
)) (= (FuncCollectionRegressions.__default.G $h0) (FuncCollectionRegressions.__default.G $h1))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3403|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (FuncCollectionRegressions.__default.G $h1))
)))
(assert (forall (($o@@1 T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass.FuncCollectionRegressions.C? $h@@0)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3442|
 :pattern ( ($IsAlloc refType $o@@1 Tclass.FuncCollectionRegressions.C? $h@@0))
)))
(assert (forall ((h@@0 T@U) (k T@U) ) (!  (=> ($HeapSucc h@@0 k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@0 o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |2855|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |2856|
 :pattern ( ($HeapSucc h@@0 k))
)))
(assert (forall (($heap T@U) ) (! (= (Requires0 (TSet Tclass.FuncCollectionRegressions.C) $heap |FuncCollectionRegressions.__default.A0#Handle|) |FuncCollectionRegressions.__default.A0#requires|)
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3407|
 :pattern ( (Requires0 (TSet Tclass.FuncCollectionRegressions.C) $heap |FuncCollectionRegressions.__default.A0#Handle|))
)))
(assert (forall (($heap@@0 T@U) ) (! (= (Requires0 (TISet Tclass.FuncCollectionRegressions.C) $heap@@0 |FuncCollectionRegressions.__default.A1#Handle|) |FuncCollectionRegressions.__default.A1#requires|)
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3412|
 :pattern ( (Requires0 (TISet Tclass.FuncCollectionRegressions.C) $heap@@0 |FuncCollectionRegressions.__default.A1#Handle|))
)))
(assert (forall (($heap@@1 T@U) ) (! (= (Requires0 (TSeq Tclass.FuncCollectionRegressions.C) $heap@@1 |FuncCollectionRegressions.__default.A2#Handle|) |FuncCollectionRegressions.__default.A2#requires|)
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3417|
 :pattern ( (Requires0 (TSeq Tclass.FuncCollectionRegressions.C) $heap@@1 |FuncCollectionRegressions.__default.A2#Handle|))
)))
(assert (forall (($heap@@2 T@U) ) (! (= (Requires0 (TMultiSet Tclass.FuncCollectionRegressions.C) $heap@@2 |FuncCollectionRegressions.__default.A3#Handle|) |FuncCollectionRegressions.__default.A3#requires|)
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3422|
 :pattern ( (Requires0 (TMultiSet Tclass.FuncCollectionRegressions.C) $heap@@2 |FuncCollectionRegressions.__default.A3#Handle|))
)))
(assert (forall ((v@@0 T@U) (t0@@2 T@U) ) (! (= ($Is (MapType0Type BoxType boolType) v@@0 (TISet t0@@2)) (forall ((bx T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType v@@0 bx)) ($IsBox bx t0@@2))
 :qid |DafnyPreludebpl.244:11|
 :skolemid |2785|
 :pattern ( (MapType0Select BoxType boolType v@@0 bx))
)))
 :qid |DafnyPreludebpl.242:15|
 :skolemid |2786|
 :pattern ( ($Is (MapType0Type BoxType boolType) v@@0 (TISet t0@@2)))
)))
(assert (= (Ctor SetType) 9))
(assert  (=> (<= 1 $FunctionContextHeight) (=> (or |FuncCollectionRegressions.__default.A0#canCall| (< 1 $FunctionContextHeight)) ($Is SetType FuncCollectionRegressions.__default.A0 (TSet Tclass.FuncCollectionRegressions.C)))))
(assert  (=> (<= 1 $FunctionContextHeight) (=> (or |FuncCollectionRegressions.__default.A1#canCall| (< 1 $FunctionContextHeight)) ($Is (MapType0Type BoxType boolType) FuncCollectionRegressions.__default.A1 (TISet Tclass.FuncCollectionRegressions.C)))))
(assert (= (Ctor SeqType) 10))
(assert  (=> (<= 1 $FunctionContextHeight) (=> (or |FuncCollectionRegressions.__default.A2#canCall| (< 1 $FunctionContextHeight)) ($Is SeqType FuncCollectionRegressions.__default.A2 (TSeq Tclass.FuncCollectionRegressions.C)))))
(assert  (=> (<= 1 $FunctionContextHeight) (=> (or |FuncCollectionRegressions.__default.A3#canCall| (< 1 $FunctionContextHeight)) ($Is MultiSetType FuncCollectionRegressions.__default.A3 (TMultiSet Tclass.FuncCollectionRegressions.C)))))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2763|
 :pattern ( ($Unbox T x@@3))
)))
(assert (forall ((t0@@3 T@U) (heap T@U) (f@@0 T@U) ) (!  (=> (and (and ($IsGoodHeap heap) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc0 t0@@3))) (|Set#Equal| (Reads0 t0@@3 $OneHeap f@@0) |Set#Empty|)) (= (Requires0 t0@@3 $OneHeap f@@0) (Requires0 t0@@3 heap f@@0)))
 :qid |unknown.0:0|
 :skolemid |3167|
 :pattern ( (Requires0 t0@@3 $OneHeap f@@0) ($IsGoodHeap heap))
 :pattern ( (Requires0 t0@@3 heap f@@0))
)))
(assert (forall ((v@@1 T@U) (t0@@4 T@U) ) (! (= ($Is SetType v@@1 (TSet t0@@4)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v@@1 bx@@0) ($IsBox bx@@0 t0@@4))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |2783|
 :pattern ( (|Set#IsMember| v@@1 bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |2784|
 :pattern ( ($Is SetType v@@1 (TSet t0@@4)))
)))
(assert ($IsGhostField alloc))
(assert ($IsGoodHeap $OneHeap))
(assert (forall (($h@@1 T@U) ($o@@2 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@1) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) Tclass.FuncCollectionRegressions.C?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@2) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@2) FuncCollectionRegressions.C.x)) TInt $h@@1))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3444|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@2) FuncCollectionRegressions.C.x)))
)))
(assert (forall (($h@@2 T@U) ($o@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) Tclass.FuncCollectionRegressions.C?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@3) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@3) FuncCollectionRegressions.C.y)) TInt $h@@2))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3446|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@3) FuncCollectionRegressions.C.y)))
)))
(assert (forall (($heap@@3 T@U) ) (! (= (Apply0 (TSet Tclass.FuncCollectionRegressions.C) $heap@@3 |FuncCollectionRegressions.__default.A0#Handle|) ($Box SetType FuncCollectionRegressions.__default.A0))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3406|
 :pattern ( (Apply0 (TSet Tclass.FuncCollectionRegressions.C) $heap@@3 |FuncCollectionRegressions.__default.A0#Handle|))
)))
(assert (forall (($heap@@4 T@U) ) (! (= (Apply0 (TISet Tclass.FuncCollectionRegressions.C) $heap@@4 |FuncCollectionRegressions.__default.A1#Handle|) ($Box (MapType0Type BoxType boolType) FuncCollectionRegressions.__default.A1))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3411|
 :pattern ( (Apply0 (TISet Tclass.FuncCollectionRegressions.C) $heap@@4 |FuncCollectionRegressions.__default.A1#Handle|))
)))
(assert (forall (($heap@@5 T@U) ) (! (= (Apply0 (TSeq Tclass.FuncCollectionRegressions.C) $heap@@5 |FuncCollectionRegressions.__default.A2#Handle|) ($Box SeqType FuncCollectionRegressions.__default.A2))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3416|
 :pattern ( (Apply0 (TSeq Tclass.FuncCollectionRegressions.C) $heap@@5 |FuncCollectionRegressions.__default.A2#Handle|))
)))
(assert (forall (($heap@@6 T@U) ) (! (= (Apply0 (TMultiSet Tclass.FuncCollectionRegressions.C) $heap@@6 |FuncCollectionRegressions.__default.A3#Handle|) ($Box MultiSetType FuncCollectionRegressions.__default.A3))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3421|
 :pattern ( (Apply0 (TMultiSet Tclass.FuncCollectionRegressions.C) $heap@@6 |FuncCollectionRegressions.__default.A3#Handle|))
)))
(assert (forall ((v@@2 T@U) (t T@U) (h@@1 T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v@@2) t h@@1) ($IsAlloc T@@0 v@@2 t h@@1))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |2776|
 :pattern ( ($IsAllocBox ($Box T@@0 v@@2) t h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@2 k@@0) (=> ($IsAllocBox bx@@1 t@@0 h@@2) ($IsAllocBox bx@@1 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |2848|
 :pattern ( ($HeapSucc h@@2 k@@0) ($IsAllocBox bx@@1 t@@0 h@@2))
)))
(assert (forall ((h@@3 T@U) (k@@1 T@U) (v@@3 T@U) (t@@1 T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@3 k@@1) (=> ($IsAlloc T@@1 v@@3 t@@1 h@@3) ($IsAlloc T@@1 v@@3 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |2847|
 :pattern ( ($HeapSucc h@@3 k@@1) ($IsAlloc T@@1 v@@3 t@@1 h@@3))
)))
(assert (forall ((|#$R| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc0 |#$R|)) Tagclass._System.___hFunc0) (= (TagFamily (Tclass._System.___hFunc0 |#$R|)) |tytagFamily$_#Func0|))
 :qid |unknown.0:0|
 :skolemid |3148|
 :pattern ( (Tclass._System.___hFunc0 |#$R|))
)))
(assert  (and (forall ((t0@@5 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@5 t1@@0 t2 (MapType1Store t0@@5 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@4 T@U) ($f@@0 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@4 $f@@0))  (=> (and (or (not (= $o@@4 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@4) |l#2|)))) (= $o@@4 |l#3|)))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3464|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@4 $f@@0))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass.FuncCollectionRegressions.C) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass.FuncCollectionRegressions.C)))
 :qid |unknown.0:0|
 :skolemid |3377|
 :pattern ( ($IsBox bx@@2 Tclass.FuncCollectionRegressions.C))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass.FuncCollectionRegressions.C?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass.FuncCollectionRegressions.C?)))
 :qid |unknown.0:0|
 :skolemid |3382|
 :pattern ( ($IsBox bx@@3 Tclass.FuncCollectionRegressions.C?))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass.FuncCollectionRegressions.C)  (and ($Is refType |c#0@@0| Tclass.FuncCollectionRegressions.C?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3447|
 :pattern ( ($Is refType |c#0@@0| Tclass.FuncCollectionRegressions.C))
 :pattern ( ($Is refType |c#0@@0| Tclass.FuncCollectionRegressions.C?))
)))
(assert (forall ((s T@U) (x@@4 T@U) ) (! (= (|Seq#Contains| s x@@4) (exists ((i Int) ) (!  (and (and (<= 0 i) (< i (|Seq#Length| s))) (= (|Seq#Index| s i) x@@4))
 :qid |DafnyPreludebpl.1184:19|
 :skolemid |2967|
 :pattern ( (|Seq#Index| s i))
)))
 :qid |DafnyPreludebpl.1181:15|
 :skolemid |2968|
 :pattern ( (|Seq#Contains| s x@@4))
)))
(assert (forall ((v@@4 T@U) (t0@@6 T@U) (h@@4 T@U) ) (! (= ($IsAlloc (MapType0Type BoxType boolType) v@@4 (TISet t0@@6) h@@4) (forall ((bx@@4 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType v@@4 bx@@4)) ($IsAllocBox bx@@4 t0@@6 h@@4))
 :qid |DafnyPreludebpl.303:11|
 :skolemid |2806|
 :pattern ( (MapType0Select BoxType boolType v@@4 bx@@4))
)))
 :qid |DafnyPreludebpl.301:15|
 :skolemid |2807|
 :pattern ( ($IsAlloc (MapType0Type BoxType boolType) v@@4 (TISet t0@@6) h@@4))
)))
(assert (forall ((t0@@7 T@U) (heap@@0 T@U) (f@@1 T@U) ) (!  (=> (and ($IsGoodHeap heap@@0) ($Is HandleTypeType f@@1 (Tclass._System.___hFunc0 t0@@7))) (= (|Set#Equal| (Reads0 t0@@7 $OneHeap f@@1) |Set#Empty|) (|Set#Equal| (Reads0 t0@@7 heap@@0 f@@1) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |3166|
 :pattern ( (Reads0 t0@@7 $OneHeap f@@1) ($IsGoodHeap heap@@0))
 :pattern ( (Reads0 t0@@7 heap@@0 f@@1))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) ) (!  (=> (and (or |FuncCollectionRegressions.__default.A0#canCall| (< 1 $FunctionContextHeight)) ($IsGoodHeap $Heap)) ($IsAlloc SetType FuncCollectionRegressions.__default.A0 (TSet Tclass.FuncCollectionRegressions.C) $Heap))
 :qid |ReadsReadsdfy.212:18|
 :skolemid |3398|
 :pattern ( ($IsAlloc SetType FuncCollectionRegressions.__default.A0 (TSet Tclass.FuncCollectionRegressions.C) $Heap))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@0 T@U) ) (!  (=> (and (or |FuncCollectionRegressions.__default.A1#canCall| (< 1 $FunctionContextHeight)) ($IsGoodHeap $Heap@@0)) ($IsAlloc (MapType0Type BoxType boolType) FuncCollectionRegressions.__default.A1 (TISet Tclass.FuncCollectionRegressions.C) $Heap@@0))
 :qid |ReadsReadsdfy.213:18|
 :skolemid |3399|
 :pattern ( ($IsAlloc (MapType0Type BoxType boolType) FuncCollectionRegressions.__default.A1 (TISet Tclass.FuncCollectionRegressions.C) $Heap@@0))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@1 T@U) ) (!  (=> (and (or |FuncCollectionRegressions.__default.A2#canCall| (< 1 $FunctionContextHeight)) ($IsGoodHeap $Heap@@1)) ($IsAlloc SeqType FuncCollectionRegressions.__default.A2 (TSeq Tclass.FuncCollectionRegressions.C) $Heap@@1))
 :qid |ReadsReadsdfy.214:18|
 :skolemid |3400|
 :pattern ( ($IsAlloc SeqType FuncCollectionRegressions.__default.A2 (TSeq Tclass.FuncCollectionRegressions.C) $Heap@@1))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@2 T@U) ) (!  (=> (and (or |FuncCollectionRegressions.__default.A3#canCall| (< 1 $FunctionContextHeight)) ($IsGoodHeap $Heap@@2)) ($IsAlloc MultiSetType FuncCollectionRegressions.__default.A3 (TMultiSet Tclass.FuncCollectionRegressions.C) $Heap@@2))
 :qid |ReadsReadsdfy.215:18|
 :skolemid |3401|
 :pattern ( ($IsAlloc MultiSetType FuncCollectionRegressions.__default.A3 (TMultiSet Tclass.FuncCollectionRegressions.C) $Heap@@2))
))))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |2887|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((v@@5 T@U) (t0@@8 T@U) ) (! (= ($Is MultiSetType v@@5 (TMultiSet t0@@8)) (forall ((bx@@5 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@5 bx@@5)) ($IsBox bx@@5 t0@@8))
 :qid |DafnyPreludebpl.248:11|
 :skolemid |2787|
 :pattern ( (|MultiSet#Multiplicity| v@@5 bx@@5))
)))
 :qid |DafnyPreludebpl.246:15|
 :skolemid |2788|
 :pattern ( ($Is MultiSetType v@@5 (TMultiSet t0@@8)))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |2854|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((t0@@9 T@U) (h0 T@U) (h1 T@U) (f@@2 T@U) ) (!  (=> (and (and (and ($HeapSucc h0 h1) (and ($IsGoodHeap h0) ($IsGoodHeap h1))) ($Is HandleTypeType f@@2 (Tclass._System.___hFunc0 t0@@9))) (forall ((o@@1 T@U) (fld T@U) ) (!  (=> (and (or (not (= o@@1 null)) (not true)) (|Set#IsMember| (Reads0 t0@@9 h0 f@@2) ($Box refType o@@1))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0 o@@1) fld) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1 o@@1) fld)))
 :qid |unknown.0:0|
 :skolemid |3158|
))) (= (Requires0 t0@@9 h0 f@@2) (Requires0 t0@@9 h1 f@@2)))
 :qid |unknown.0:0|
 :skolemid |3159|
 :pattern ( ($HeapSucc h0 h1) (Requires0 t0@@9 h1 f@@2))
)))
(assert (forall ((t0@@10 T@U) (h0@@0 T@U) (h1@@0 T@U) (f@@3 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@0 h1@@0) (and ($IsGoodHeap h0@@0) ($IsGoodHeap h1@@0))) ($Is HandleTypeType f@@3 (Tclass._System.___hFunc0 t0@@10))) (forall ((o@@2 T@U) (fld@@0 T@U) ) (!  (=> (and (or (not (= o@@2 null)) (not true)) (|Set#IsMember| (Reads0 t0@@10 h1@@0 f@@3) ($Box refType o@@2))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@0 o@@2) fld@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@0 o@@2) fld@@0)))
 :qid |unknown.0:0|
 :skolemid |3160|
))) (= (Requires0 t0@@10 h0@@0 f@@3) (Requires0 t0@@10 h1@@0 f@@3)))
 :qid |unknown.0:0|
 :skolemid |3161|
 :pattern ( ($HeapSucc h0@@0 h1@@0) (Requires0 t0@@10 h1@@0 f@@3))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |2844|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 TInt) (and (= ($Box intType ($Unbox intType bx@@6)) bx@@6) ($Is intType ($Unbox intType bx@@6) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |2764|
 :pattern ( ($IsBox bx@@6 TInt))
)))
(assert (forall ((v@@6 T@U) (t@@2 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@6) t@@2) ($Is T@@2 v@@6 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |2775|
 :pattern ( ($IsBox ($Box T@@2 v@@6) t@@2))
)))
(assert (forall (($heap@@7 T@U) ) (! (= FuncCollectionRegressions.__default.A0 ($Unbox SetType (Apply0 (TSet Tclass.FuncCollectionRegressions.C) $heap@@7 |FuncCollectionRegressions.__default.A0#Handle|)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3409|
 :pattern ( FuncCollectionRegressions.__default.A0 ($IsGoodHeap $heap@@7))
)))
(assert (forall (($heap@@8 T@U) ) (! (= FuncCollectionRegressions.__default.A1 ($Unbox (MapType0Type BoxType boolType) (Apply0 (TISet Tclass.FuncCollectionRegressions.C) $heap@@8 |FuncCollectionRegressions.__default.A1#Handle|)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3414|
 :pattern ( FuncCollectionRegressions.__default.A1 ($IsGoodHeap $heap@@8))
)))
(assert (forall (($heap@@9 T@U) ) (! (= FuncCollectionRegressions.__default.A2 ($Unbox SeqType (Apply0 (TSeq Tclass.FuncCollectionRegressions.C) $heap@@9 |FuncCollectionRegressions.__default.A2#Handle|)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3419|
 :pattern ( FuncCollectionRegressions.__default.A2 ($IsGoodHeap $heap@@9))
)))
(assert (forall (($heap@@10 T@U) ) (! (= FuncCollectionRegressions.__default.A3 ($Unbox MultiSetType (Apply0 (TMultiSet Tclass.FuncCollectionRegressions.C) $heap@@10 |FuncCollectionRegressions.__default.A3#Handle|)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3424|
 :pattern ( FuncCollectionRegressions.__default.A3 ($IsGoodHeap $heap@@10))
)))
(assert (forall ((ms T@U) ) (! (= ($IsGoodMultiSet ms) (forall ((bx@@7 T@U) ) (!  (and (<= 0 (|MultiSet#Multiplicity| ms bx@@7)) (<= (|MultiSet#Multiplicity| ms bx@@7) (|MultiSet#Card| ms)))
 :qid |DafnyPreludebpl.921:19|
 :skolemid |2920|
 :pattern ( (|MultiSet#Multiplicity| ms bx@@7))
)))
 :qid |DafnyPreludebpl.918:15|
 :skolemid |2921|
 :pattern ( ($IsGoodMultiSet ms))
)))
(assert (forall ((s@@0 T@U) ) (! (<= 0 (|MultiSet#Card| s@@0))
 :qid |DafnyPreludebpl.928:15|
 :skolemid |2922|
 :pattern ( (|MultiSet#Card| s@@0))
)))
(assert (forall ((s@@1 T@U) ) (! (<= 0 (|Seq#Length| s@@1))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |2958|
 :pattern ( (|Seq#Length| s@@1))
)))
(assert (forall ((v@@7 T@U) (t0@@11 T@U) (h@@5 T@U) ) (! (= ($IsAlloc SetType v@@7 (TSet t0@@11) h@@5) (forall ((bx@@8 T@U) ) (!  (=> (|Set#IsMember| v@@7 bx@@8) ($IsAllocBox bx@@8 t0@@11 h@@5))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |2804|
 :pattern ( (|Set#IsMember| v@@7 bx@@8))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |2805|
 :pattern ( ($IsAlloc SetType v@@7 (TSet t0@@11) h@@5))
)))
(assert (forall ((o@@3 T@U) ) (! (= (|MultiSet#Multiplicity| |MultiSet#Empty| o@@3) 0)
 :qid |DafnyPreludebpl.938:15|
 :skolemid |2924|
 :pattern ( (|MultiSet#Multiplicity| |MultiSet#Empty| o@@3))
)))
(assert (forall ((v@@8 T@U) (t0@@12 T@U) (h@@6 T@U) ) (! (= ($IsAlloc SeqType v@@8 (TSeq t0@@12) h@@6) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@8))) ($IsAllocBox (|Seq#Index| v@@8 i@@0) t0@@12 h@@6))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |2810|
 :pattern ( (|Seq#Index| v@@8 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |2811|
 :pattern ( ($IsAlloc SeqType v@@8 (TSeq t0@@12) h@@6))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |2738|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2739|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Inv0_TISet (TISet t@@5)) t@@5)
 :qid |DafnyPreludebpl.45:15|
 :skolemid |2740|
 :pattern ( (TISet t@@5))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Tag (TISet t@@6)) TagISet)
 :qid |DafnyPreludebpl.46:15|
 :skolemid |2741|
 :pattern ( (TISet t@@6))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Inv0_TMultiSet (TMultiSet t@@7)) t@@7)
 :qid |DafnyPreludebpl.49:15|
 :skolemid |2742|
 :pattern ( (TMultiSet t@@7))
)))
(assert (forall ((t@@8 T@U) ) (! (= (Tag (TMultiSet t@@8)) TagMultiSet)
 :qid |DafnyPreludebpl.50:15|
 :skolemid |2743|
 :pattern ( (TMultiSet t@@8))
)))
(assert (forall ((t@@9 T@U) ) (! (= (Inv0_TSeq (TSeq t@@9)) t@@9)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |2744|
 :pattern ( (TSeq t@@9))
)))
(assert (forall ((t@@10 T@U) ) (! (= (Tag (TSeq t@@10)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |2745|
 :pattern ( (TSeq t@@10))
)))
(assert (forall ((|#$R@@0| T@U) ) (! (= (Tclass._System.___hFunc0_0 (Tclass._System.___hFunc0 |#$R@@0|)) |#$R@@0|)
 :qid |unknown.0:0|
 :skolemid |3149|
 :pattern ( (Tclass._System.___hFunc0 |#$R@@0|))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2762|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((t0@@13 T@U) (h0@@1 T@U) (h1@@1 T@U) (f@@4 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@1 h1@@1) (and ($IsGoodHeap h0@@1) ($IsGoodHeap h1@@1))) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc0 t0@@13))) (forall ((o@@4 T@U) (fld@@1 T@U) ) (!  (=> (and (or (not (= o@@4 null)) (not true)) (|Set#IsMember| (Reads0 t0@@13 h0@@1 f@@4) ($Box refType o@@4))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@1 o@@4) fld@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@1 o@@4) fld@@1)))
 :qid |unknown.0:0|
 :skolemid |3154|
))) (= (Reads0 t0@@13 h0@@1 f@@4) (Reads0 t0@@13 h1@@1 f@@4)))
 :qid |unknown.0:0|
 :skolemid |3155|
 :pattern ( ($HeapSucc h0@@1 h1@@1) (Reads0 t0@@13 h1@@1 f@@4))
)))
(assert (forall ((t0@@14 T@U) (h0@@2 T@U) (h1@@2 T@U) (f@@5 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@2 h1@@2) (and ($IsGoodHeap h0@@2) ($IsGoodHeap h1@@2))) ($Is HandleTypeType f@@5 (Tclass._System.___hFunc0 t0@@14))) (forall ((o@@5 T@U) (fld@@2 T@U) ) (!  (=> (and (or (not (= o@@5 null)) (not true)) (|Set#IsMember| (Reads0 t0@@14 h1@@2 f@@5) ($Box refType o@@5))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@2 o@@5) fld@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@2 o@@5) fld@@2)))
 :qid |unknown.0:0|
 :skolemid |3156|
))) (= (Reads0 t0@@14 h0@@2 f@@5) (Reads0 t0@@14 h1@@2 f@@5)))
 :qid |unknown.0:0|
 :skolemid |3157|
 :pattern ( ($HeapSucc h0@@2 h1@@2) (Reads0 t0@@14 h1@@2 f@@5))
)))
(assert (forall ((t0@@15 T@U) (h0@@3 T@U) (h1@@3 T@U) (f@@6 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@3 h1@@3) (and ($IsGoodHeap h0@@3) ($IsGoodHeap h1@@3))) ($Is HandleTypeType f@@6 (Tclass._System.___hFunc0 t0@@15))) (forall ((o@@6 T@U) (fld@@3 T@U) ) (!  (=> (and (or (not (= o@@6 null)) (not true)) (|Set#IsMember| (Reads0 t0@@15 h0@@3 f@@6) ($Box refType o@@6))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@3 o@@6) fld@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@3 o@@6) fld@@3)))
 :qid |unknown.0:0|
 :skolemid |3162|
))) (= (Apply0 t0@@15 h0@@3 f@@6) (Apply0 t0@@15 h1@@3 f@@6)))
 :qid |unknown.0:0|
 :skolemid |3163|
 :pattern ( ($HeapSucc h0@@3 h1@@3) (Apply0 t0@@15 h1@@3 f@@6))
)))
(assert (forall ((t0@@16 T@U) (h0@@4 T@U) (h1@@4 T@U) (f@@7 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@4 h1@@4) (and ($IsGoodHeap h0@@4) ($IsGoodHeap h1@@4))) ($Is HandleTypeType f@@7 (Tclass._System.___hFunc0 t0@@16))) (forall ((o@@7 T@U) (fld@@4 T@U) ) (!  (=> (and (or (not (= o@@7 null)) (not true)) (|Set#IsMember| (Reads0 t0@@16 h1@@4 f@@7) ($Box refType o@@7))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@4 o@@7) fld@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@4 o@@7) fld@@4)))
 :qid |unknown.0:0|
 :skolemid |3164|
))) (= (Apply0 t0@@16 h0@@4 f@@7) (Apply0 t0@@16 h1@@4 f@@7)))
 :qid |unknown.0:0|
 :skolemid |3165|
 :pattern ( ($HeapSucc h0@@4 h1@@4) (Apply0 t0@@16 h1@@4 f@@7))
)))
(assert (forall (($h@@3 T@U) ($o@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) Tclass.FuncCollectionRegressions.C?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@5) FuncCollectionRegressions.C.x)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3443|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@5) FuncCollectionRegressions.C.x)))
)))
(assert (forall (($h@@4 T@U) ($o@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass.FuncCollectionRegressions.C?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@6) FuncCollectionRegressions.C.y)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3445|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@6) FuncCollectionRegressions.C.y)))
)))
(assert (forall ((s@@2 T@U) ) (!  (and (= (= (|MultiSet#Card| s@@2) 0) (= s@@2 |MultiSet#Empty|)) (=> (or (not (= (|MultiSet#Card| s@@2) 0)) (not true)) (exists ((x@@6 T@U) ) (! (< 0 (|MultiSet#Multiplicity| s@@2 x@@6))
 :qid |DafnyPreludebpl.946:20|
 :skolemid |2925|
 :pattern ( (|MultiSet#Multiplicity| s@@2 x@@6))
))))
 :qid |DafnyPreludebpl.942:15|
 :skolemid |2926|
 :pattern ( (|MultiSet#Card| s@@2))
)))
(assert (forall (($bx T@U) ($heap@@11 T@U) ) (! (= (|Set#IsMember| (Reads0 (TSet Tclass.FuncCollectionRegressions.C) $heap@@11 |FuncCollectionRegressions.__default.A0#Handle|) $bx) false)
 :qid |unknown.0:0|
 :skolemid |3408|
 :pattern ( (|Set#IsMember| (Reads0 (TSet Tclass.FuncCollectionRegressions.C) $heap@@11 |FuncCollectionRegressions.__default.A0#Handle|) $bx))
)))
(assert (forall (($bx@@0 T@U) ($heap@@12 T@U) ) (! (= (|Set#IsMember| (Reads0 (TISet Tclass.FuncCollectionRegressions.C) $heap@@12 |FuncCollectionRegressions.__default.A1#Handle|) $bx@@0) false)
 :qid |unknown.0:0|
 :skolemid |3413|
 :pattern ( (|Set#IsMember| (Reads0 (TISet Tclass.FuncCollectionRegressions.C) $heap@@12 |FuncCollectionRegressions.__default.A1#Handle|) $bx@@0))
)))
(assert (forall (($bx@@1 T@U) ($heap@@13 T@U) ) (! (= (|Set#IsMember| (Reads0 (TSeq Tclass.FuncCollectionRegressions.C) $heap@@13 |FuncCollectionRegressions.__default.A2#Handle|) $bx@@1) false)
 :qid |unknown.0:0|
 :skolemid |3418|
 :pattern ( (|Set#IsMember| (Reads0 (TSeq Tclass.FuncCollectionRegressions.C) $heap@@13 |FuncCollectionRegressions.__default.A2#Handle|) $bx@@1))
)))
(assert (forall (($bx@@2 T@U) ($heap@@14 T@U) ) (! (= (|Set#IsMember| (Reads0 (TMultiSet Tclass.FuncCollectionRegressions.C) $heap@@14 |FuncCollectionRegressions.__default.A3#Handle|) $bx@@2) false)
 :qid |unknown.0:0|
 :skolemid |3423|
 :pattern ( (|Set#IsMember| (Reads0 (TMultiSet Tclass.FuncCollectionRegressions.C) $heap@@14 |FuncCollectionRegressions.__default.A3#Handle|) $bx@@2))
)))
(assert (forall ((f@@8 T@U) (t0@@17 T@U) ) (! (= ($Is HandleTypeType f@@8 (Tclass._System.___hFunc0 t0@@17)) (forall ((h@@7 T@U) ) (!  (=> (and ($IsGoodHeap h@@7) (Requires0 t0@@17 h@@7 f@@8)) ($IsBox (Apply0 t0@@17 h@@7 f@@8) t0@@17))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3168|
 :pattern ( (Apply0 t0@@17 h@@7 f@@8))
)))
 :qid |unknown.0:0|
 :skolemid |3169|
 :pattern ( ($Is HandleTypeType f@@8 (Tclass._System.___hFunc0 t0@@17)))
)))
(assert (forall ((bx@@9 T@U) (t@@11 T@U) ) (!  (=> ($IsBox bx@@9 (TSet t@@11)) (and (= ($Box SetType ($Unbox SetType bx@@9)) bx@@9) ($Is SetType ($Unbox SetType bx@@9) (TSet t@@11))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |2769|
 :pattern ( ($IsBox bx@@9 (TSet t@@11)))
)))
(assert (forall ((bx@@10 T@U) (t@@12 T@U) ) (!  (=> ($IsBox bx@@10 (TISet t@@12)) (and (= ($Box (MapType0Type BoxType boolType) ($Unbox (MapType0Type BoxType boolType) bx@@10)) bx@@10) ($Is (MapType0Type BoxType boolType) ($Unbox (MapType0Type BoxType boolType) bx@@10) (TISet t@@12))))
 :qid |DafnyPreludebpl.198:15|
 :skolemid |2770|
 :pattern ( ($IsBox bx@@10 (TISet t@@12)))
)))
(assert (forall ((bx@@11 T@U) (t@@13 T@U) ) (!  (=> ($IsBox bx@@11 (TMultiSet t@@13)) (and (= ($Box MultiSetType ($Unbox MultiSetType bx@@11)) bx@@11) ($Is MultiSetType ($Unbox MultiSetType bx@@11) (TMultiSet t@@13))))
 :qid |DafnyPreludebpl.201:15|
 :skolemid |2771|
 :pattern ( ($IsBox bx@@11 (TMultiSet t@@13)))
)))
(assert (forall ((bx@@12 T@U) (t@@14 T@U) ) (!  (=> ($IsBox bx@@12 (TSeq t@@14)) (and (= ($Box SeqType ($Unbox SeqType bx@@12)) bx@@12) ($Is SeqType ($Unbox SeqType bx@@12) (TSeq t@@14))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |2772|
 :pattern ( ($IsBox bx@@12 (TSeq t@@14)))
)))
(assert (forall ((|#$R@@1| T@U) (bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 (Tclass._System.___hFunc0 |#$R@@1|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@13)) bx@@13) ($Is HandleTypeType ($Unbox HandleTypeType bx@@13) (Tclass._System.___hFunc0 |#$R@@1|))))
 :qid |unknown.0:0|
 :skolemid |3150|
 :pattern ( ($IsBox bx@@13 (Tclass._System.___hFunc0 |#$R@@1|)))
)))
(assert (forall ((h@@8 T@U) (r@@0 T@U) (f@@9 T@U) (x@@7 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@8 r@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@8 r@@0) f@@9 x@@7))) ($HeapSucc h@@8 (MapType0Store refType (MapType0Type FieldType BoxType) h@@8 r@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@8 r@@0) f@@9 x@@7))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |2853|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@8 r@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@8 r@@0) f@@9 x@@7)))
)))
(assert (= (Tag Tclass.FuncCollectionRegressions.C) Tagclass.FuncCollectionRegressions.C))
(assert (= (TagFamily Tclass.FuncCollectionRegressions.C) tytagFamily$C))
(assert (= (Tag Tclass.FuncCollectionRegressions.C?) Tagclass.FuncCollectionRegressions.C?))
(assert (= (TagFamily Tclass.FuncCollectionRegressions.C?) tytagFamily$C))
(assert (forall ((f@@10 T@U) (t0@@18 T@U) (h@@9 T@U) ) (!  (=> (and ($IsGoodHeap h@@9) ($IsAlloc HandleTypeType f@@10 (Tclass._System.___hFunc0 t0@@18) h@@9)) (=> (Requires0 t0@@18 h@@9 f@@10) ($IsAllocBox (Apply0 t0@@18 h@@9 f@@10) t0@@18 h@@9)))
 :qid |unknown.0:0|
 :skolemid |3174|
 :pattern ( ($IsAlloc HandleTypeType f@@10 (Tclass._System.___hFunc0 t0@@18) h@@9))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@1 b@@1) (forall ((o@@8 T@U) ) (! (= (|Set#IsMember| a@@1 o@@8) (|Set#IsMember| b@@1 o@@8))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |2885|
 :pattern ( (|Set#IsMember| a@@1 o@@8))
 :pattern ( (|Set#IsMember| b@@1 o@@8))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |2886|
 :pattern ( (|Set#Equal| a@@1 b@@1))
)))
(assert (forall ((f@@11 T@U) (t0@@19 T@U) (u0@@2 T@U) ) (!  (=> (and ($Is HandleTypeType f@@11 (Tclass._System.___hFunc0 t0@@19)) (forall ((bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 t0@@19) ($IsBox bx@@14 u0@@2))
 :qid |unknown.0:0|
 :skolemid |3170|
 :pattern ( ($IsBox bx@@14 t0@@19))
 :pattern ( ($IsBox bx@@14 u0@@2))
))) ($Is HandleTypeType f@@11 (Tclass._System.___hFunc0 u0@@2)))
 :qid |unknown.0:0|
 :skolemid |3171|
 :pattern ( ($Is HandleTypeType f@@11 (Tclass._System.___hFunc0 t0@@19)) ($Is HandleTypeType f@@11 (Tclass._System.___hFunc0 u0@@2)))
)))
(assert (forall ((s@@3 T@U) ) (!  (=> (= (|Seq#Length| s@@3) 0) (= s@@3 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |2959|
 :pattern ( (|Seq#Length| s@@3))
)))
(assert (forall ((v@@9 T@U) (t0@@20 T@U) (h@@10 T@U) ) (! (= ($IsAlloc MultiSetType v@@9 (TMultiSet t0@@20) h@@10) (forall ((bx@@15 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@9 bx@@15)) ($IsAllocBox bx@@15 t0@@20 h@@10))
 :qid |DafnyPreludebpl.307:11|
 :skolemid |2808|
 :pattern ( (|MultiSet#Multiplicity| v@@9 bx@@15))
)))
 :qid |DafnyPreludebpl.305:15|
 :skolemid |2809|
 :pattern ( ($IsAlloc MultiSetType v@@9 (TMultiSet t0@@20) h@@10))
)))
(assert (= |FuncCollectionRegressions.__default.A0#requires| true))
(assert (= |FuncCollectionRegressions.__default.A1#requires| true))
(assert (= |FuncCollectionRegressions.__default.A2#requires| true))
(assert (= |FuncCollectionRegressions.__default.A3#requires| true))
(assert (forall ((h@@11 T@U) (v@@10 T@U) ) (! ($IsAlloc intType v@@10 TInt h@@11)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |2798|
 :pattern ( ($IsAlloc intType v@@10 TInt h@@11))
)))
(assert (forall ((v@@11 T@U) (t0@@21 T@U) ) (! (= ($Is SeqType v@@11 (TSeq t0@@21)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@11))) ($IsBox (|Seq#Index| v@@11 i@@1) t0@@21))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |2790|
 :pattern ( (|Seq#Index| v@@11 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |2791|
 :pattern ( ($Is SeqType v@@11 (TSeq t0@@21)))
)))
(assert (forall ((v@@12 T@U) ) (! ($Is intType v@@12 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |2777|
 :pattern ( ($Is intType v@@12 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@3 () T@U)
(declare-fun |c#0@@1| () T@U)
(declare-fun |FuncCollectionRegressions.__default.G#canCall| (T@U) Bool)
(declare-fun |a#0@0| () Int)
(declare-fun |$rhs#0@0| () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun |b#0@0| () Int)
(set-info :boogie-vc-id Impl$$FuncCollectionRegressions.__default.P4)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon0_correct  (=> (and (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@3 alloc |c#0@@1|)) (|FuncCollectionRegressions.__default.G#canCall| $Heap@@3)) (and (|FuncCollectionRegressions.__default.G#canCall| $Heap@@3) (= |a#0@0| (FuncCollectionRegressions.__default.G $Heap@@3)))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (or (not (= |c#0@@1| null)) (not true))) (=> (or (not (= |c#0@@1| null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |c#0@@1| FuncCollectionRegressions.C.x))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |c#0@@1| FuncCollectionRegressions.C.x)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= |c#0@@1| null)) (not true))) (=> (or (not (= |c#0@@1| null)) (not true)) (=> (= |$rhs#0@0| (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |c#0@@1|) FuncCollectionRegressions.C.y))) 3)) (=> (and (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@@3 |c#0@@1| (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |c#0@@1|) FuncCollectionRegressions.C.x ($Box intType (int_2_U |$rhs#0@0|))))) ($IsGoodHeap $Heap@0)) (=> (and (and (|FuncCollectionRegressions.__default.G#canCall| $Heap@0) (|FuncCollectionRegressions.__default.G#canCall| $Heap@0)) (and (= |b#0@0| (FuncCollectionRegressions.__default.G $Heap@0)) (= (ControlFlow 0 2) (- 0 1)))) (= |a#0@0| |b#0@0|)))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@3) ($IsHeapAnchor $Heap@@3)) (=> (and (and (and ($Is refType |c#0@@1| Tclass.FuncCollectionRegressions.C) ($IsAlloc refType |c#0@@1| Tclass.FuncCollectionRegressions.C $Heap@@3)) (= 3 $FunctionContextHeight)) (and (and (not (|Set#IsMember| FuncCollectionRegressions.__default.A0 ($Box refType |c#0@@1|))) (not (U_2_bool (MapType0Select BoxType boolType FuncCollectionRegressions.__default.A1 ($Box refType |c#0@@1|))))) (and (not (|Seq#Contains| FuncCollectionRegressions.__default.A2 ($Box refType |c#0@@1|))) (= (ControlFlow 0 6) 2)))) anon0_correct))))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
