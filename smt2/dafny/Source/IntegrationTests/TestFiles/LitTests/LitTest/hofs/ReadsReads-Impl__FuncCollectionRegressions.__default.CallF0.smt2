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
(declare-fun Tagclass.FuncCollectionRegressions.C () T@U)
(declare-fun Tagclass.FuncCollectionRegressions.C? () T@U)
(declare-fun class.FuncCollectionRegressions.C? () T@U)
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
(declare-fun FDim (T@U) Int)
(declare-fun Tag (T@U) T@U)
(declare-fun DeclName (T@U) T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun FuncCollectionRegressions.__default.F (T@U T@U T@U T@U T@U) Int)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |FuncCollectionRegressions.__default.F#canCall| (T@U T@U T@U T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun Tclass.FuncCollectionRegressions.C () T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun BoxType () T@T)
(declare-fun TISet (T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun MultiSetType () T@T)
(declare-fun TMultiSet (T@U) T@U)
(declare-fun null () T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun refType () T@T)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |MultiSet#Multiplicity| (T@U T@U) Int)
(declare-fun FieldType () T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun |Seq#Contains| (T@U T@U) Bool)
(declare-fun |Seq#Empty| () T@U)
(declare-fun $IsGoodMultiSet (T@U) Bool)
(declare-fun Tclass.FuncCollectionRegressions.C? () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun FuncCollectionRegressions.C.x () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun FuncCollectionRegressions.C.y () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun |MultiSet#Card| (T@U) Int)
(declare-fun |MultiSet#Empty| () T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TISet (T@U) T@U)
(declare-fun Inv0_TMultiSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
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
(assert (distinct TInt TagInt TagSet TagISet TagMultiSet TagSeq alloc allocName Tagclass.FuncCollectionRegressions.C Tagclass.FuncCollectionRegressions.C? class.FuncCollectionRegressions.C? tytagFamily$C field$x field$y)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert  (and (and (and (and (and (and (and (and (and (and (= (Ctor SetType) 3) (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 4)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))) (= (Ctor BoxType) 5)) (= (Ctor SeqType) 6)) (= (Ctor MultiSetType) 7)) (= (Ctor refType) 8)) (= (Ctor FieldType) 9)))
(assert (forall (($h0 T@U) ($h1 T@U) (|st#0| T@U) (|ss#0| T@U) (|sq#0| T@U) (|ms#0| T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (or (|FuncCollectionRegressions.__default.F#canCall| $h0 |st#0| |ss#0| |sq#0| |ms#0|) (and (and (and ($Is SetType |st#0| (TSet Tclass.FuncCollectionRegressions.C)) ($Is (MapType0Type BoxType boolType) |ss#0| (TISet Tclass.FuncCollectionRegressions.C))) ($Is SeqType |sq#0| (TSeq Tclass.FuncCollectionRegressions.C))) ($Is MultiSetType |ms#0| (TMultiSet Tclass.FuncCollectionRegressions.C))))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o T@U) ($f T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (or (or (or (|Set#IsMember| |st#0| ($Box refType $o)) (U_2_bool (MapType0Select BoxType boolType |ss#0| ($Box refType $o)))) (exists (($i Int) ) (!  (and (and (<= 0 $i) (< $i (|Seq#Length| |sq#0|))) (= (|Seq#Index| |sq#0| $i) ($Box refType $o)))
 :qid |ReadsReadsdfy.156:18|
 :skolemid |3375|
))) (> (|MultiSet#Multiplicity| |ms#0| ($Box refType $o)) 0))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o) $f)))
 :qid |unknown.0:0|
 :skolemid |3376|
)) (= (FuncCollectionRegressions.__default.F $h0 |st#0| |ss#0| |sq#0| |ms#0|) (FuncCollectionRegressions.__default.F $h1 |st#0| |ss#0| |sq#0| |ms#0|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3378|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (FuncCollectionRegressions.__default.F $h1 |st#0| |ss#0| |sq#0| |ms#0|))
)))
(assert (forall ((x@@2 T@U) ) (!  (not (|Seq#Contains| |Seq#Empty| x@@2))
 :qid |DafnyPreludebpl.1188:15|
 :skolemid |2969|
 :pattern ( (|Seq#Contains| |Seq#Empty| x@@2))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((v T@U) (t0@@0 T@U) ) (!  (=> ($Is MultiSetType v (TMultiSet t0@@0)) ($IsGoodMultiSet v))
 :qid |DafnyPreludebpl.250:15|
 :skolemid |2789|
 :pattern ( ($Is MultiSetType v (TMultiSet t0@@0)))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass.FuncCollectionRegressions.C?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass.FuncCollectionRegressions.C?)))
 :qid |unknown.0:0|
 :skolemid |3441|
 :pattern ( ($Is refType $o@@0 Tclass.FuncCollectionRegressions.C?))
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
(assert (forall (($o@@1 T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass.FuncCollectionRegressions.C? $h@@0)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3442|
 :pattern ( ($IsAlloc refType $o@@1 Tclass.FuncCollectionRegressions.C? $h@@0))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |2855|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |2856|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((v@@0 T@U) (t0@@1 T@U) ) (! (= ($Is (MapType0Type BoxType boolType) v@@0 (TISet t0@@1)) (forall ((bx T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType v@@0 bx)) ($IsBox bx t0@@1))
 :qid |DafnyPreludebpl.244:11|
 :skolemid |2785|
 :pattern ( (MapType0Select BoxType boolType v@@0 bx))
)))
 :qid |DafnyPreludebpl.242:15|
 :skolemid |2786|
 :pattern ( ($Is (MapType0Type BoxType boolType) v@@0 (TISet t0@@1)))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2763|
 :pattern ( ($Unbox T x@@3))
)))
(assert (forall ((v@@1 T@U) (t0@@2 T@U) ) (! (= ($Is SetType v@@1 (TSet t0@@2)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v@@1 bx@@0) ($IsBox bx@@0 t0@@2))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |2783|
 :pattern ( (|Set#IsMember| v@@1 bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |2784|
 :pattern ( ($Is SetType v@@1 (TSet t0@@2)))
)))
(assert ($IsGhostField alloc))
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
(assert (forall ((v@@2 T@U) (t T@U) (h@@0 T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v@@2) t h@@0) ($IsAlloc T@@0 v@@2 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |2776|
 :pattern ( ($IsAllocBox ($Box T@@0 v@@2) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@1 t@@0 h@@1) ($IsAllocBox bx@@1 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |2848|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@1 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@3 T@U) (t@@1 T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@1 v@@3 t@@1 h@@2) ($IsAlloc T@@1 v@@3 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |2847|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@1 v@@3 t@@1 h@@2))
)))
(assert  (and (forall ((t0@@3 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@3 t1@@0 t2 (MapType1Store t0@@3 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
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
(assert (forall ((v@@4 T@U) (t0@@4 T@U) (h@@3 T@U) ) (! (= ($IsAlloc (MapType0Type BoxType boolType) v@@4 (TISet t0@@4) h@@3) (forall ((bx@@4 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType v@@4 bx@@4)) ($IsAllocBox bx@@4 t0@@4 h@@3))
 :qid |DafnyPreludebpl.303:11|
 :skolemid |2806|
 :pattern ( (MapType0Select BoxType boolType v@@4 bx@@4))
)))
 :qid |DafnyPreludebpl.301:15|
 :skolemid |2807|
 :pattern ( ($IsAlloc (MapType0Type BoxType boolType) v@@4 (TISet t0@@4) h@@3))
)))
(assert (forall ((v@@5 T@U) (t0@@5 T@U) ) (! (= ($Is MultiSetType v@@5 (TMultiSet t0@@5)) (forall ((bx@@5 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@5 bx@@5)) ($IsBox bx@@5 t0@@5))
 :qid |DafnyPreludebpl.248:11|
 :skolemid |2787|
 :pattern ( (|MultiSet#Multiplicity| v@@5 bx@@5))
)))
 :qid |DafnyPreludebpl.246:15|
 :skolemid |2788|
 :pattern ( ($Is MultiSetType v@@5 (TMultiSet t0@@5)))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |2854|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
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
(assert (forall ((v@@7 T@U) (t0@@6 T@U) (h@@4 T@U) ) (! (= ($IsAlloc SetType v@@7 (TSet t0@@6) h@@4) (forall ((bx@@8 T@U) ) (!  (=> (|Set#IsMember| v@@7 bx@@8) ($IsAllocBox bx@@8 t0@@6 h@@4))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |2804|
 :pattern ( (|Set#IsMember| v@@7 bx@@8))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |2805|
 :pattern ( ($IsAlloc SetType v@@7 (TSet t0@@6) h@@4))
)))
(assert (forall ((o@@0 T@U) ) (! (= (|MultiSet#Multiplicity| |MultiSet#Empty| o@@0) 0)
 :qid |DafnyPreludebpl.938:15|
 :skolemid |2924|
 :pattern ( (|MultiSet#Multiplicity| |MultiSet#Empty| o@@0))
)))
(assert (forall ((v@@8 T@U) (t0@@7 T@U) (h@@5 T@U) ) (! (= ($IsAlloc SeqType v@@8 (TSeq t0@@7) h@@5) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@8))) ($IsAllocBox (|Seq#Index| v@@8 i@@0) t0@@7 h@@5))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |2810|
 :pattern ( (|Seq#Index| v@@8 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |2811|
 :pattern ( ($IsAlloc SeqType v@@8 (TSeq t0@@7) h@@5))
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
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2762|
 :pattern ( ($Box T@@3 x@@5))
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
(assert (forall ((h@@6 T@U) (r T@U) (f T@U) (x@@7 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@6 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@6 r) f x@@7))) ($HeapSucc h@@6 (MapType0Store refType (MapType0Type FieldType BoxType) h@@6 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@6 r) f x@@7))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |2853|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@6 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@6 r) f x@@7)))
)))
(assert (= (Tag Tclass.FuncCollectionRegressions.C) Tagclass.FuncCollectionRegressions.C))
(assert (= (TagFamily Tclass.FuncCollectionRegressions.C) tytagFamily$C))
(assert (= (Tag Tclass.FuncCollectionRegressions.C?) Tagclass.FuncCollectionRegressions.C?))
(assert (= (TagFamily Tclass.FuncCollectionRegressions.C?) tytagFamily$C))
(assert (forall ((s@@3 T@U) ) (!  (=> (= (|Seq#Length| s@@3) 0) (= s@@3 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |2959|
 :pattern ( (|Seq#Length| s@@3))
)))
(assert (forall ((v@@9 T@U) (t0@@8 T@U) (h@@7 T@U) ) (! (= ($IsAlloc MultiSetType v@@9 (TMultiSet t0@@8) h@@7) (forall ((bx@@13 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@9 bx@@13)) ($IsAllocBox bx@@13 t0@@8 h@@7))
 :qid |DafnyPreludebpl.307:11|
 :skolemid |2808|
 :pattern ( (|MultiSet#Multiplicity| v@@9 bx@@13))
)))
 :qid |DafnyPreludebpl.305:15|
 :skolemid |2809|
 :pattern ( ($IsAlloc MultiSetType v@@9 (TMultiSet t0@@8) h@@7))
)))
(assert (forall ((h@@8 T@U) (v@@10 T@U) ) (! ($IsAlloc intType v@@10 TInt h@@8)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |2798|
 :pattern ( ($IsAlloc intType v@@10 TInt h@@8))
)))
(assert (forall ((v@@11 T@U) (t0@@9 T@U) ) (! (= ($Is SeqType v@@11 (TSeq t0@@9)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@11))) ($IsBox (|Seq#Index| v@@11 i@@1) t0@@9))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |2790|
 :pattern ( (|Seq#Index| v@@11 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |2791|
 :pattern ( ($Is SeqType v@@11 (TSeq t0@@9)))
)))
(assert (forall ((v@@12 T@U) ) (! ($Is intType v@@12 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |2777|
 :pattern ( ($Is intType v@@12 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |c#0@@1| () T@U)
(declare-fun |st#0@@0| () T@U)
(declare-fun |ss#0@@0| () T@U)
(declare-fun |sq#0@@0| () T@U)
(declare-fun |ms#0@@0| () T@U)
(declare-fun |a#0@0| () Int)
(declare-fun |$rhs#0@0| () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun |b#0@0| () Int)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$FuncCollectionRegressions.__default.CallF0)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon0_correct  (=> (and (and (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc |c#0@@1|)) ($IsAlloc SetType |st#0@@0| (TSet Tclass.FuncCollectionRegressions.C) $Heap)) (and ($IsAlloc (MapType0Type BoxType boolType) |ss#0@@0| (TISet Tclass.FuncCollectionRegressions.C) $Heap) ($IsAlloc SeqType |sq#0@@0| (TSeq Tclass.FuncCollectionRegressions.C) $Heap))) (and (and ($IsAlloc MultiSetType |ms#0@@0| (TMultiSet Tclass.FuncCollectionRegressions.C) $Heap) (|FuncCollectionRegressions.__default.F#canCall| $Heap |st#0@@0| |ss#0@@0| |sq#0@@0| |ms#0@@0|)) (and (|FuncCollectionRegressions.__default.F#canCall| $Heap |st#0@@0| |ss#0@@0| |sq#0@@0| |ms#0@@0|) (= |a#0@0| (FuncCollectionRegressions.__default.F $Heap |st#0@@0| |ss#0@@0| |sq#0@@0| |ms#0@@0|))))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (or (not (= |c#0@@1| null)) (not true))) (=> (or (not (= |c#0@@1| null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |c#0@@1| FuncCollectionRegressions.C.x))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |c#0@@1| FuncCollectionRegressions.C.x)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= |c#0@@1| null)) (not true))) (=> (or (not (= |c#0@@1| null)) (not true)) (=> (= |$rhs#0@0| (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |c#0@@1|) FuncCollectionRegressions.C.y))) 3)) (=> (and (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap |c#0@@1| (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |c#0@@1|) FuncCollectionRegressions.C.x ($Box intType (int_2_U |$rhs#0@0|))))) ($IsGoodHeap $Heap@0)) (=> (and (and (and ($IsAlloc SetType |st#0@@0| (TSet Tclass.FuncCollectionRegressions.C) $Heap@0) ($IsAlloc (MapType0Type BoxType boolType) |ss#0@@0| (TISet Tclass.FuncCollectionRegressions.C) $Heap@0)) (and ($IsAlloc SeqType |sq#0@@0| (TSeq Tclass.FuncCollectionRegressions.C) $Heap@0) ($IsAlloc MultiSetType |ms#0@@0| (TMultiSet Tclass.FuncCollectionRegressions.C) $Heap@0))) (and (and (|FuncCollectionRegressions.__default.F#canCall| $Heap@0 |st#0@@0| |ss#0@@0| |sq#0@@0| |ms#0@@0|) (|FuncCollectionRegressions.__default.F#canCall| $Heap@0 |st#0@@0| |ss#0@@0| |sq#0@@0| |ms#0@@0|)) (and (= |b#0@0| (FuncCollectionRegressions.__default.F $Heap@0 |st#0@@0| |ss#0@@0| |sq#0@@0| |ms#0@@0|)) (= (ControlFlow 0 2) (- 0 1))))) (= |a#0@0| |b#0@0|)))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (and ($Is refType |c#0@@1| Tclass.FuncCollectionRegressions.C) ($IsAlloc refType |c#0@@1| Tclass.FuncCollectionRegressions.C $Heap)) (and ($Is SetType |st#0@@0| (TSet Tclass.FuncCollectionRegressions.C)) ($IsAlloc SetType |st#0@@0| (TSet Tclass.FuncCollectionRegressions.C) $Heap))) (and (and ($Is (MapType0Type BoxType boolType) |ss#0@@0| (TISet Tclass.FuncCollectionRegressions.C)) ($IsAlloc (MapType0Type BoxType boolType) |ss#0@@0| (TISet Tclass.FuncCollectionRegressions.C) $Heap)) (and ($Is SeqType |sq#0@@0| (TSeq Tclass.FuncCollectionRegressions.C)) ($IsAlloc SeqType |sq#0@@0| (TSeq Tclass.FuncCollectionRegressions.C) $Heap)))) (and (and (and ($Is MultiSetType |ms#0@@0| (TMultiSet Tclass.FuncCollectionRegressions.C)) ($IsAlloc MultiSetType |ms#0@@0| (TMultiSet Tclass.FuncCollectionRegressions.C) $Heap)) (and (= 2 $FunctionContextHeight) (not (|Set#IsMember| |st#0@@0| ($Box refType |c#0@@1|))))) (and (and (not (U_2_bool (MapType0Select BoxType boolType |ss#0@@0| ($Box refType |c#0@@1|)))) (not (|Seq#Contains| |sq#0@@0| ($Box refType |c#0@@1|)))) (and (not (> (|MultiSet#Multiplicity| |ms#0@@0| ($Box refType |c#0@@1|)) 0)) (= (ControlFlow 0 6) 2))))) anon0_correct))))
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
