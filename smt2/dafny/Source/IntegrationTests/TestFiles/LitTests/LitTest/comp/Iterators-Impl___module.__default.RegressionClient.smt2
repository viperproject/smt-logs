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
(declare-fun TagBool () T@U)
(declare-fun TagSet () T@U)
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._module.C () T@U)
(declare-fun Tagclass._module.C? () T@U)
(declare-fun Tagclass._module.RegressionDefaultVsPlaceboInitialization () T@U)
(declare-fun class._module.RegressionDefaultVsPlaceboInitialization? () T@U)
(declare-fun Tagclass._module.RegressionDefaultVsPlaceboInitialization? () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$C () T@U)
(declare-fun tytagFamily$RegressionDefaultVsPlaceboInitialization () T@U)
(declare-fun field$_new () T@U)
(declare-fun field$eq () T@U)
(declare-fun field$eqs () T@U)
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
(declare-fun _module.RegressionDefaultVsPlaceboInitialization.x (T@U) T@U)
(declare-fun Tclass._module.RegressionDefaultVsPlaceboInitialization? (T@U) T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun _module.RegressionDefaultVsPlaceboInitialization.y (T@U) T@U)
(declare-fun _module.RegressionDefaultVsPlaceboInitialization.__decreases0 (T@U) T@U)
(declare-fun _module.RegressionDefaultVsPlaceboInitialization.__decreases1 (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.RegressionDefaultVsPlaceboInitialization (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._module.C? () T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass._module.C () T@U)
(declare-fun _module.RegressionDefaultVsPlaceboInitialization.__new () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.RegressionDefaultVsPlaceboInitialization.eqs () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun _module.RegressionDefaultVsPlaceboInitialization.eq () T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass._module.RegressionDefaultVsPlaceboInitialization_0 (T@U) T@U)
(declare-fun Tclass._module.RegressionDefaultVsPlaceboInitialization?_0 (T@U) T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun _module.RegressionDefaultVsPlaceboInitialization.Valid (T@U T@U T@U) Bool)
(declare-fun _module.RegressionDefaultVsPlaceboInitialization.__reads (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun _module.RegressionDefaultVsPlaceboInitialization.__modifies (T@U) T@U)
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
(assert (distinct TBool TagBool TagSet TagSeq alloc allocName Tagclass._System.object? Tagclass._System.object Tagclass._module.C Tagclass._module.C? Tagclass._module.RegressionDefaultVsPlaceboInitialization class._module.RegressionDefaultVsPlaceboInitialization? Tagclass._module.RegressionDefaultVsPlaceboInitialization? tytagFamily$object tytagFamily$C tytagFamily$RegressionDefaultVsPlaceboInitialization field$_new field$eq field$eqs)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
(assert (= (DeclName alloc) allocName))
(assert (forall ((_module.RegressionDefaultVsPlaceboInitialization$X T@U) ($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._module.RegressionDefaultVsPlaceboInitialization? _module.RegressionDefaultVsPlaceboInitialization$X))) ($IsBox (_module.RegressionDefaultVsPlaceboInitialization.x $o) _module.RegressionDefaultVsPlaceboInitialization$X))
 :qid |unknown.0:0|
 :skolemid |570|
 :pattern ( (_module.RegressionDefaultVsPlaceboInitialization.x $o) (Tclass._module.RegressionDefaultVsPlaceboInitialization? _module.RegressionDefaultVsPlaceboInitialization$X))
)))
(assert (forall ((_module.RegressionDefaultVsPlaceboInitialization$X@@0 T@U) ($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) (Tclass._module.RegressionDefaultVsPlaceboInitialization? _module.RegressionDefaultVsPlaceboInitialization$X@@0))) ($IsBox (_module.RegressionDefaultVsPlaceboInitialization.y $o@@0) _module.RegressionDefaultVsPlaceboInitialization$X@@0))
 :qid |unknown.0:0|
 :skolemid |572|
 :pattern ( (_module.RegressionDefaultVsPlaceboInitialization.y $o@@0) (Tclass._module.RegressionDefaultVsPlaceboInitialization? _module.RegressionDefaultVsPlaceboInitialization$X@@0))
)))
(assert (forall ((_module.RegressionDefaultVsPlaceboInitialization$X@@1 T@U) ($o@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) (Tclass._module.RegressionDefaultVsPlaceboInitialization? _module.RegressionDefaultVsPlaceboInitialization$X@@1))) ($IsBox (_module.RegressionDefaultVsPlaceboInitialization.__decreases0 $o@@1) _module.RegressionDefaultVsPlaceboInitialization$X@@1))
 :qid |unknown.0:0|
 :skolemid |584|
 :pattern ( (_module.RegressionDefaultVsPlaceboInitialization.__decreases0 $o@@1) (Tclass._module.RegressionDefaultVsPlaceboInitialization? _module.RegressionDefaultVsPlaceboInitialization$X@@1))
)))
(assert (forall ((_module.RegressionDefaultVsPlaceboInitialization$X@@2 T@U) ($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) (Tclass._module.RegressionDefaultVsPlaceboInitialization? _module.RegressionDefaultVsPlaceboInitialization$X@@2))) ($IsBox (_module.RegressionDefaultVsPlaceboInitialization.__decreases1 $o@@2) _module.RegressionDefaultVsPlaceboInitialization$X@@2))
 :qid |unknown.0:0|
 :skolemid |586|
 :pattern ( (_module.RegressionDefaultVsPlaceboInitialization.__decreases1 $o@@2) (Tclass._module.RegressionDefaultVsPlaceboInitialization? _module.RegressionDefaultVsPlaceboInitialization$X@@2))
)))
(assert (= (Ctor refType) 3))
(assert (forall ((_module.RegressionDefaultVsPlaceboInitialization$X@@3 T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._module.RegressionDefaultVsPlaceboInitialization _module.RegressionDefaultVsPlaceboInitialization$X@@3) $h) ($IsAlloc refType |c#0| (Tclass._module.RegressionDefaultVsPlaceboInitialization? _module.RegressionDefaultVsPlaceboInitialization$X@@3) $h))
 :qid |unknown.0:0|
 :skolemid |598|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.RegressionDefaultVsPlaceboInitialization _module.RegressionDefaultVsPlaceboInitialization$X@@3) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.RegressionDefaultVsPlaceboInitialization? _module.RegressionDefaultVsPlaceboInitialization$X@@3) $h))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall (($o@@3 T@U) ) (! (= ($Is refType $o@@3 Tclass._module.C?)  (or (= $o@@3 null) (= (dtype $o@@3) Tclass._module.C?)))
 :qid |unknown.0:0|
 :skolemid |516|
 :pattern ( ($Is refType $o@@3 Tclass._module.C?))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@0) ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@0))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.C $h@@1) ($IsAlloc refType |c#0@@1| Tclass._module.C? $h@@1))
 :qid |unknown.0:0|
 :skolemid |526|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.C $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.C? $h@@1))
)))
(assert (= (FDim _module.RegressionDefaultVsPlaceboInitialization.__new) 0))
(assert (= (FieldOfDecl class._module.RegressionDefaultVsPlaceboInitialization? field$_new) _module.RegressionDefaultVsPlaceboInitialization.__new))
(assert ($IsGhostField _module.RegressionDefaultVsPlaceboInitialization.__new))
(assert (= (FDim _module.RegressionDefaultVsPlaceboInitialization.eqs) 0))
(assert (= (FieldOfDecl class._module.RegressionDefaultVsPlaceboInitialization? field$eqs) _module.RegressionDefaultVsPlaceboInitialization.eqs))
(assert ($IsGhostField _module.RegressionDefaultVsPlaceboInitialization.eqs))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 4)) (= (Ctor BoxType) 5)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 6)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((_module.RegressionDefaultVsPlaceboInitialization$X@@4 T@U) ($o@@4 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@4 (Tclass._module.RegressionDefaultVsPlaceboInitialization? _module.RegressionDefaultVsPlaceboInitialization$X@@4) $h@@2)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |569|
 :pattern ( ($IsAlloc refType $o@@4 (Tclass._module.RegressionDefaultVsPlaceboInitialization? _module.RegressionDefaultVsPlaceboInitialization$X@@4) $h@@2))
)))
(assert (= (FDim _module.RegressionDefaultVsPlaceboInitialization.eq) 0))
(assert (= (FieldOfDecl class._module.RegressionDefaultVsPlaceboInitialization? field$eq) _module.RegressionDefaultVsPlaceboInitialization.eq))
(assert  (not ($IsGhostField _module.RegressionDefaultVsPlaceboInitialization.eq)))
(assert (forall (($o@@5 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@5 Tclass._System.object? $h@@3)  (or (= $o@@5 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@5) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@5 Tclass._System.object? $h@@3))
)))
(assert (forall (($o@@6 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@6 Tclass._module.C? $h@@4)  (or (= $o@@6 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@6) alloc)))))
 :qid |unknown.0:0|
 :skolemid |517|
 :pattern ( ($IsAlloc refType $o@@6 Tclass._module.C? $h@@4))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
)))
(assert (= (Ctor SeqType) 7))
(assert (forall ((s T@U) (bx T@U) (t T@U) ) (!  (=> (and ($Is SeqType s (TSeq t)) ($IsBox bx t)) ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |258|
 :pattern ( ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Equal| s0 s1)  (and (= (|Seq#Length| s0) (|Seq#Length| s1)) (forall ((j Int) ) (!  (=> (and (<= 0 j) (< j (|Seq#Length| s0))) (= (|Seq#Index| s0 j) (|Seq#Index| s1 j)))
 :qid |DafnyPreludebpl.1221:19|
 :skolemid |239|
 :pattern ( (|Seq#Index| s0 j))
 :pattern ( (|Seq#Index| s1 j))
))))
 :qid |DafnyPreludebpl.1217:15|
 :skolemid |240|
 :pattern ( (|Seq#Equal| s0 s1))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@2)) x@@2)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T x@@2))
)))
(assert (= (Ctor SetType) 8))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((_module.RegressionDefaultVsPlaceboInitialization$X@@5 T@U) ($h@@5 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) (Tclass._module.RegressionDefaultVsPlaceboInitialization? _module.RegressionDefaultVsPlaceboInitialization$X@@5)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@7) alloc)))) ($IsAlloc boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@7) _module.RegressionDefaultVsPlaceboInitialization.eq)) TBool $h@@5))
 :qid |unknown.0:0|
 :skolemid |575|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@7) _module.RegressionDefaultVsPlaceboInitialization.eq)) (Tclass._module.RegressionDefaultVsPlaceboInitialization? _module.RegressionDefaultVsPlaceboInitialization$X@@5))
)))
(assert ($IsGhostField alloc))
(assert (forall ((s@@0 T@U) (v@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@0 v@@0)) (+ 1 (|Seq#Length| s@@0)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s@@0 v@@0))
)))
(assert (forall ((_module.RegressionDefaultVsPlaceboInitialization$X@@6 T@U) (|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| (Tclass._module.RegressionDefaultVsPlaceboInitialization _module.RegressionDefaultVsPlaceboInitialization$X@@6))  (and ($Is refType |c#0@@2| (Tclass._module.RegressionDefaultVsPlaceboInitialization? _module.RegressionDefaultVsPlaceboInitialization$X@@6)) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |597|
 :pattern ( ($Is refType |c#0@@2| (Tclass._module.RegressionDefaultVsPlaceboInitialization _module.RegressionDefaultVsPlaceboInitialization$X@@6)))
 :pattern ( ($Is refType |c#0@@2| (Tclass._module.RegressionDefaultVsPlaceboInitialization? _module.RegressionDefaultVsPlaceboInitialization$X@@6)))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (h@@0 T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v@@1) t@@0 h@@0) ($IsAlloc T@@0 v@@1 t@@0 h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@0 v@@1) t@@0 h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@1 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@1 t@@1 h@@1) ($IsAllocBox bx@@1 t@@1 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@1 t@@1 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@2 T@U) (t@@2 T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@1 v@@2 t@@2 h@@2) ($IsAlloc T@@1 v@@2 t@@2 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@1 v@@2 t@@2 h@@2))
)))
(assert (forall ((_module.RegressionDefaultVsPlaceboInitialization$X@@7 T@U) ) (!  (and (= (Tag (Tclass._module.RegressionDefaultVsPlaceboInitialization _module.RegressionDefaultVsPlaceboInitialization$X@@7)) Tagclass._module.RegressionDefaultVsPlaceboInitialization) (= (TagFamily (Tclass._module.RegressionDefaultVsPlaceboInitialization _module.RegressionDefaultVsPlaceboInitialization$X@@7)) tytagFamily$RegressionDefaultVsPlaceboInitialization))
 :qid |unknown.0:0|
 :skolemid |511|
 :pattern ( (Tclass._module.RegressionDefaultVsPlaceboInitialization _module.RegressionDefaultVsPlaceboInitialization$X@@7))
)))
(assert (forall ((_module.RegressionDefaultVsPlaceboInitialization$X@@8 T@U) ) (!  (and (= (Tag (Tclass._module.RegressionDefaultVsPlaceboInitialization? _module.RegressionDefaultVsPlaceboInitialization$X@@8)) Tagclass._module.RegressionDefaultVsPlaceboInitialization?) (= (TagFamily (Tclass._module.RegressionDefaultVsPlaceboInitialization? _module.RegressionDefaultVsPlaceboInitialization$X@@8)) tytagFamily$RegressionDefaultVsPlaceboInitialization))
 :qid |unknown.0:0|
 :skolemid |565|
 :pattern ( (Tclass._module.RegressionDefaultVsPlaceboInitialization? _module.RegressionDefaultVsPlaceboInitialization$X@@8))
)))
(assert (forall ((_module.RegressionDefaultVsPlaceboInitialization$X@@9 T@U) ($h@@6 T@U) ($o@@8 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) (Tclass._module.RegressionDefaultVsPlaceboInitialization? _module.RegressionDefaultVsPlaceboInitialization$X@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@8) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@8) _module.RegressionDefaultVsPlaceboInitialization.eqs)) (TSeq TBool) $h@@6))
 :qid |unknown.0:0|
 :skolemid |577|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@8) _module.RegressionDefaultVsPlaceboInitialization.eqs)) (Tclass._module.RegressionDefaultVsPlaceboInitialization? _module.RegressionDefaultVsPlaceboInitialization$X@@9))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)) (+ (|Seq#Length| s0@@0) (|Seq#Length| s1@@0)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |226|
 :pattern ( (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( ($IsBox bx@@2 Tclass._System.object?))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsBox bx@@3 Tclass._System.object))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.C) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.C)))
 :qid |unknown.0:0|
 :skolemid |509|
 :pattern ( ($IsBox bx@@4 Tclass._module.C))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.C?) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.C?)))
 :qid |unknown.0:0|
 :skolemid |510|
 :pattern ( ($IsBox bx@@5 Tclass._module.C?))
)))
(assert (forall ((_module.RegressionDefaultVsPlaceboInitialization$X@@10 T@U) ($o@@9 T@U) ) (! (= ($Is refType $o@@9 (Tclass._module.RegressionDefaultVsPlaceboInitialization? _module.RegressionDefaultVsPlaceboInitialization$X@@10))  (or (= $o@@9 null) (= (dtype $o@@9) (Tclass._module.RegressionDefaultVsPlaceboInitialization? _module.RegressionDefaultVsPlaceboInitialization$X@@10))))
 :qid |unknown.0:0|
 :skolemid |568|
 :pattern ( ($Is refType $o@@9 (Tclass._module.RegressionDefaultVsPlaceboInitialization? _module.RegressionDefaultVsPlaceboInitialization$X@@10)))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass._System.object)  (and ($Is refType |c#0@@3| Tclass._System.object?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@3| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@3| Tclass._System.object?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.C)  (and ($Is refType |c#0@@4| Tclass._module.C?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |525|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.C))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.C?))
)))
(assert (forall ((s@@1 T@U) (i Int) (v@@3 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@1)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@3) i) v@@3)) (=> (or (not (= i (|Seq#Length| s@@1))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@3) i) (|Seq#Index| s@@1 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@1 v@@3) i))
)))
(assert (forall ((_module.RegressionDefaultVsPlaceboInitialization$X@@11 T@U) ($h@@7 T@U) ($o@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) (Tclass._module.RegressionDefaultVsPlaceboInitialization? _module.RegressionDefaultVsPlaceboInitialization$X@@11)))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@10) _module.RegressionDefaultVsPlaceboInitialization.__new)) (TSet Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |582|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@10) _module.RegressionDefaultVsPlaceboInitialization.__new)) (Tclass._module.RegressionDefaultVsPlaceboInitialization? _module.RegressionDefaultVsPlaceboInitialization$X@@11))
)))
(assert (forall ((_module.RegressionDefaultVsPlaceboInitialization$X@@12 T@U) ($h@@8 T@U) ($o@@11 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) (Tclass._module.RegressionDefaultVsPlaceboInitialization? _module.RegressionDefaultVsPlaceboInitialization$X@@12)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@11) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@11) _module.RegressionDefaultVsPlaceboInitialization.__new)) (TSet Tclass._System.object?) $h@@8))
 :qid |unknown.0:0|
 :skolemid |583|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@11) _module.RegressionDefaultVsPlaceboInitialization.__new)) (Tclass._module.RegressionDefaultVsPlaceboInitialization? _module.RegressionDefaultVsPlaceboInitialization$X@@12))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (|Seq#Equal| a@@0 b@@0) (= a@@0 b@@0))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |241|
 :pattern ( (|Seq#Equal| a@@0 b@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) (c T@U) ) (!  (=> (or (not (= a@@1 c)) (not true)) (=> (and ($HeapSucc a@@1 b@@1) ($HeapSucc b@@1 c)) ($HeapSucc a@@1 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@1 b@@1) ($HeapSucc b@@1 c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 TBool) (and (= ($Box boolType ($Unbox boolType bx@@6)) bx@@6) ($Is boolType ($Unbox boolType bx@@6) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@6 TBool))
)))
(assert (forall ((v@@4 T@U) (t@@3 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@4) t@@3) ($Is T@@2 v@@4 t@@3))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@4) t@@3))
)))
(assert (forall ((s@@2 T@U) ) (! (<= 0 (|Seq#Length| s@@2))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert (forall ((v@@5 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@5 (TSet t0@@1) h@@3) (forall ((bx@@7 T@U) ) (!  (=> (|Set#IsMember| v@@5 bx@@7) ($IsAllocBox bx@@7 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@5 bx@@7))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@5 (TSet t0@@1) h@@3))
)))
(assert (forall (($o@@12 T@U) ) (! ($Is refType $o@@12 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@12 Tclass._System.object?))
)))
(assert (forall ((v@@6 T@U) (t0@@2 T@U) (h@@4 T@U) ) (! (= ($IsAlloc SeqType v@@6 (TSeq t0@@2) h@@4) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@6))) ($IsAllocBox (|Seq#Index| v@@6 i@@0) t0@@2 h@@4))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@6 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@6 (TSeq t0@@2) h@@4))
)))
(assert (forall ((_module.RegressionDefaultVsPlaceboInitialization$X@@13 T@U) ($h@@9 T@U) ($o@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@13 null)) (not true)) (= (dtype $o@@13) (Tclass._module.RegressionDefaultVsPlaceboInitialization? _module.RegressionDefaultVsPlaceboInitialization$X@@13)))) ($Is boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@13) _module.RegressionDefaultVsPlaceboInitialization.eq)) TBool))
 :qid |unknown.0:0|
 :skolemid |574|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@13) _module.RegressionDefaultVsPlaceboInitialization.eq)) (Tclass._module.RegressionDefaultVsPlaceboInitialization? _module.RegressionDefaultVsPlaceboInitialization$X@@13))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Inv0_TSet (TSet t@@4)) t@@4)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Tag (TSet t@@5)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@5))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Inv0_TSeq (TSeq t@@6)) t@@6)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@6))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Tag (TSeq t@@7)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@7))
)))
(assert (forall ((_module.RegressionDefaultVsPlaceboInitialization$X@@14 T@U) ) (! (= (Tclass._module.RegressionDefaultVsPlaceboInitialization_0 (Tclass._module.RegressionDefaultVsPlaceboInitialization _module.RegressionDefaultVsPlaceboInitialization$X@@14)) _module.RegressionDefaultVsPlaceboInitialization$X@@14)
 :qid |unknown.0:0|
 :skolemid |512|
 :pattern ( (Tclass._module.RegressionDefaultVsPlaceboInitialization _module.RegressionDefaultVsPlaceboInitialization$X@@14))
)))
(assert (forall ((_module.RegressionDefaultVsPlaceboInitialization$X@@15 T@U) ) (! (= (Tclass._module.RegressionDefaultVsPlaceboInitialization?_0 (Tclass._module.RegressionDefaultVsPlaceboInitialization? _module.RegressionDefaultVsPlaceboInitialization$X@@15)) _module.RegressionDefaultVsPlaceboInitialization$X@@15)
 :qid |unknown.0:0|
 :skolemid |566|
 :pattern ( (Tclass._module.RegressionDefaultVsPlaceboInitialization? _module.RegressionDefaultVsPlaceboInitialization$X@@15))
)))
(assert (forall ((x@@3 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@3)) x@@3)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@3))
)))
(assert (forall ((_module.RegressionDefaultVsPlaceboInitialization$X@@16 T@U) ($h@@10 T@U) ($o@@14 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@14 null)) (not true)) (= (dtype $o@@14) (Tclass._module.RegressionDefaultVsPlaceboInitialization? _module.RegressionDefaultVsPlaceboInitialization$X@@16)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@14) alloc)))) ($IsAllocBox (_module.RegressionDefaultVsPlaceboInitialization.x $o@@14) _module.RegressionDefaultVsPlaceboInitialization$X@@16 $h@@10))
 :qid |unknown.0:0|
 :skolemid |571|
 :pattern ( (_module.RegressionDefaultVsPlaceboInitialization.x $o@@14) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@14) alloc)) (Tclass._module.RegressionDefaultVsPlaceboInitialization? _module.RegressionDefaultVsPlaceboInitialization$X@@16))
)))
(assert (forall ((_module.RegressionDefaultVsPlaceboInitialization$X@@17 T@U) ($h@@11 T@U) ($o@@15 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@15 null)) (not true)) (= (dtype $o@@15) (Tclass._module.RegressionDefaultVsPlaceboInitialization? _module.RegressionDefaultVsPlaceboInitialization$X@@17)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@15) alloc)))) ($IsAllocBox (_module.RegressionDefaultVsPlaceboInitialization.y $o@@15) _module.RegressionDefaultVsPlaceboInitialization$X@@17 $h@@11))
 :qid |unknown.0:0|
 :skolemid |573|
 :pattern ( (_module.RegressionDefaultVsPlaceboInitialization.y $o@@15) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@15) alloc)) (Tclass._module.RegressionDefaultVsPlaceboInitialization? _module.RegressionDefaultVsPlaceboInitialization$X@@17))
)))
(assert (forall ((_module.RegressionDefaultVsPlaceboInitialization$X@@18 T@U) ($h@@12 T@U) ($o@@16 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@16 null)) (not true)) (= (dtype $o@@16) (Tclass._module.RegressionDefaultVsPlaceboInitialization? _module.RegressionDefaultVsPlaceboInitialization$X@@18)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@16) alloc)))) ($IsAllocBox (_module.RegressionDefaultVsPlaceboInitialization.__decreases0 $o@@16) _module.RegressionDefaultVsPlaceboInitialization$X@@18 $h@@12))
 :qid |unknown.0:0|
 :skolemid |585|
 :pattern ( (_module.RegressionDefaultVsPlaceboInitialization.__decreases0 $o@@16) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@16) alloc)) (Tclass._module.RegressionDefaultVsPlaceboInitialization? _module.RegressionDefaultVsPlaceboInitialization$X@@18))
)))
(assert (forall ((_module.RegressionDefaultVsPlaceboInitialization$X@@19 T@U) ($h@@13 T@U) ($o@@17 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@17 null)) (not true)) (= (dtype $o@@17) (Tclass._module.RegressionDefaultVsPlaceboInitialization? _module.RegressionDefaultVsPlaceboInitialization$X@@19)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@17) alloc)))) ($IsAllocBox (_module.RegressionDefaultVsPlaceboInitialization.__decreases1 $o@@17) _module.RegressionDefaultVsPlaceboInitialization$X@@19 $h@@13))
 :qid |unknown.0:0|
 :skolemid |587|
 :pattern ( (_module.RegressionDefaultVsPlaceboInitialization.__decreases1 $o@@17) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@17) alloc)) (Tclass._module.RegressionDefaultVsPlaceboInitialization? _module.RegressionDefaultVsPlaceboInitialization$X@@19))
)))
(assert (forall ((_module.RegressionDefaultVsPlaceboInitialization$X@@20 T@U) ($h0 T@U) ($h1 T@U) (this T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this null)) (not true)) ($Is refType this (Tclass._module.RegressionDefaultVsPlaceboInitialization _module.RegressionDefaultVsPlaceboInitialization$X@@20)))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@18 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@18 null)) (not true)) (or (or (= $o@@18 this) (|Set#IsMember| (_module.RegressionDefaultVsPlaceboInitialization.__reads this) ($Box refType $o@@18))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 this) _module.RegressionDefaultVsPlaceboInitialization.__new)) ($Box refType $o@@18)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@18) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@18) $f)))
 :qid |unknown.0:0|
 :skolemid |590|
)) (= (_module.RegressionDefaultVsPlaceboInitialization.Valid _module.RegressionDefaultVsPlaceboInitialization$X@@20 $h0 this) (_module.RegressionDefaultVsPlaceboInitialization.Valid _module.RegressionDefaultVsPlaceboInitialization$X@@20 $h1 this))))
 :qid |unknown.0:0|
 :skolemid |591|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.RegressionDefaultVsPlaceboInitialization.Valid _module.RegressionDefaultVsPlaceboInitialization$X@@20 $h1 this))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@19 T@U) ($f@@0 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@19 $f@@0))  (=> (and (or (not (= $o@@19 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@19) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |602|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@19 $f@@0))
)))
(assert (forall ((s@@3 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@3 val@@4)) s@@3) (= (|Seq#Build_inv1| (|Seq#Build| s@@3 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@3 val@@4))
)))
(assert (forall ((_module.RegressionDefaultVsPlaceboInitialization$X@@21 T@U) ($h@@14 T@U) ($o@@20 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@20 null)) (not true)) (= (dtype $o@@20) (Tclass._module.RegressionDefaultVsPlaceboInitialization? _module.RegressionDefaultVsPlaceboInitialization$X@@21)))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@20) _module.RegressionDefaultVsPlaceboInitialization.eqs)) (TSeq TBool)))
 :qid |unknown.0:0|
 :skolemid |576|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@20) _module.RegressionDefaultVsPlaceboInitialization.eqs)) (Tclass._module.RegressionDefaultVsPlaceboInitialization? _module.RegressionDefaultVsPlaceboInitialization$X@@21))
)))
(assert (forall ((bx@@8 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@8 (TSet t@@8)) (and (= ($Box SetType ($Unbox SetType bx@@8)) bx@@8) ($Is SetType ($Unbox SetType bx@@8) (TSet t@@8))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@8 (TSet t@@8)))
)))
(assert (forall ((bx@@9 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@9 (TSeq t@@9)) (and (= ($Box SeqType ($Unbox SeqType bx@@9)) bx@@9) ($Is SeqType ($Unbox SeqType bx@@9) (TSeq t@@9))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@9 (TSeq t@@9)))
)))
(assert (forall ((_module.RegressionDefaultVsPlaceboInitialization$X@@22 T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass._module.RegressionDefaultVsPlaceboInitialization _module.RegressionDefaultVsPlaceboInitialization$X@@22)) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) (Tclass._module.RegressionDefaultVsPlaceboInitialization _module.RegressionDefaultVsPlaceboInitialization$X@@22))))
 :qid |unknown.0:0|
 :skolemid |513|
 :pattern ( ($IsBox bx@@10 (Tclass._module.RegressionDefaultVsPlaceboInitialization _module.RegressionDefaultVsPlaceboInitialization$X@@22)))
)))
(assert (forall ((_module.RegressionDefaultVsPlaceboInitialization$X@@23 T@U) (bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 (Tclass._module.RegressionDefaultVsPlaceboInitialization? _module.RegressionDefaultVsPlaceboInitialization$X@@23)) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) (Tclass._module.RegressionDefaultVsPlaceboInitialization? _module.RegressionDefaultVsPlaceboInitialization$X@@23))))
 :qid |unknown.0:0|
 :skolemid |567|
 :pattern ( ($IsBox bx@@11 (Tclass._module.RegressionDefaultVsPlaceboInitialization? _module.RegressionDefaultVsPlaceboInitialization$X@@23)))
)))
(assert (forall ((h@@5 T@U) (r T@U) (f T@U) (x@@4 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f x@@4))) ($HeapSucc h@@5 (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f x@@4))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f x@@4)))
)))
(assert (forall ((_module.RegressionDefaultVsPlaceboInitialization$X@@24 T@U) ($o@@21 T@U) ) (!  (=> (and (or (not (= $o@@21 null)) (not true)) (= (dtype $o@@21) (Tclass._module.RegressionDefaultVsPlaceboInitialization? _module.RegressionDefaultVsPlaceboInitialization$X@@24))) ($Is SetType (_module.RegressionDefaultVsPlaceboInitialization.__reads $o@@21) (TSet Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |578|
 :pattern ( (_module.RegressionDefaultVsPlaceboInitialization.__reads $o@@21) (Tclass._module.RegressionDefaultVsPlaceboInitialization? _module.RegressionDefaultVsPlaceboInitialization$X@@24))
)))
(assert (forall ((_module.RegressionDefaultVsPlaceboInitialization$X@@25 T@U) ($o@@22 T@U) ) (!  (=> (and (or (not (= $o@@22 null)) (not true)) (= (dtype $o@@22) (Tclass._module.RegressionDefaultVsPlaceboInitialization? _module.RegressionDefaultVsPlaceboInitialization$X@@25))) ($Is SetType (_module.RegressionDefaultVsPlaceboInitialization.__modifies $o@@22) (TSet Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |580|
 :pattern ( (_module.RegressionDefaultVsPlaceboInitialization.__modifies $o@@22) (Tclass._module.RegressionDefaultVsPlaceboInitialization? _module.RegressionDefaultVsPlaceboInitialization$X@@25))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass._module.C) Tagclass._module.C))
(assert (= (TagFamily Tclass._module.C) tytagFamily$C))
(assert (= (Tag Tclass._module.C?) Tagclass._module.C?))
(assert (= (TagFamily Tclass._module.C?) tytagFamily$C))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (! (= (|Set#Equal| a@@2 b@@2) (forall ((o@@1 T@U) ) (! (= (|Set#IsMember| a@@2 o@@1) (|Set#IsMember| b@@2 o@@1))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@2 o@@1))
 :pattern ( (|Set#IsMember| b@@2 o@@1))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@2 b@@2))
)))
(assert (forall ((_module.RegressionDefaultVsPlaceboInitialization$X@@26 T@U) ($h@@15 T@U) ($o@@23 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@23 null)) (not true)) (= (dtype $o@@23) (Tclass._module.RegressionDefaultVsPlaceboInitialization? _module.RegressionDefaultVsPlaceboInitialization$X@@26)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@23) alloc)))) ($IsAlloc SetType (_module.RegressionDefaultVsPlaceboInitialization.__reads $o@@23) (TSet Tclass._System.object?) $h@@15))
 :qid |unknown.0:0|
 :skolemid |579|
 :pattern ( (_module.RegressionDefaultVsPlaceboInitialization.__reads $o@@23) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@23) alloc)) (Tclass._module.RegressionDefaultVsPlaceboInitialization? _module.RegressionDefaultVsPlaceboInitialization$X@@26))
)))
(assert (forall ((_module.RegressionDefaultVsPlaceboInitialization$X@@27 T@U) ($h@@16 T@U) ($o@@24 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@24 null)) (not true)) (= (dtype $o@@24) (Tclass._module.RegressionDefaultVsPlaceboInitialization? _module.RegressionDefaultVsPlaceboInitialization$X@@27)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@24) alloc)))) ($IsAlloc SetType (_module.RegressionDefaultVsPlaceboInitialization.__modifies $o@@24) (TSet Tclass._System.object?) $h@@16))
 :qid |unknown.0:0|
 :skolemid |581|
 :pattern ( (_module.RegressionDefaultVsPlaceboInitialization.__modifies $o@@24) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@24) alloc)) (Tclass._module.RegressionDefaultVsPlaceboInitialization? _module.RegressionDefaultVsPlaceboInitialization$X@@27))
)))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (n Int) ) (!  (and (=> (< n (|Seq#Length| s0@@1)) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n) (|Seq#Index| s0@@1 n))) (=> (<= (|Seq#Length| s0@@1) n) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n) (|Seq#Index| s1@@1 (- n (|Seq#Length| s0@@1))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |227|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n))
)))
(assert (forall ((s@@4 T@U) ) (!  (=> (= (|Seq#Length| s@@4) 0) (= s@@4 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@4))
)))
(assert (forall ((h@@6 T@U) (v@@7 T@U) ) (! ($IsAlloc boolType v@@7 TBool h@@6)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@7 TBool h@@6))
)))
(assert (forall ((v@@8 T@U) (t0@@4 T@U) ) (! (= ($Is SeqType v@@8 (TSeq t0@@4)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@8))) ($IsBox (|Seq#Index| v@@8 i@@1) t0@@4))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@8 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@8 (TSeq t0@@4)))
)))
(assert (forall ((v@@9 T@U) ) (! ($Is boolType v@@9 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@9 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |call3formal@more#0@0| () Bool)
(declare-fun call4formal@this@0 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun $nw@0 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $nw@1 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun call4formal@this () T@U)
(declare-fun call0formal@_module.RegressionDefaultVsPlaceboInitialization$X () T@U)
(declare-fun call0formal@_module.RegressionDefaultVsPlaceboInitialization$X@0 () T@U)
(declare-fun |call1formal@x#0@0| () T@U)
(declare-fun |call2formal@y#0@0| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |_module.RegressionDefaultVsPlaceboInitialization.Valid#canCall| (T@U T@U T@U) Bool)
(declare-fun call0formal@_module.RegressionDefaultVsPlaceboInitialization$X@0@@0 () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |defass#c#0| () Bool)
(declare-fun |c#0@@5| () T@U)
(declare-fun |defass#d#0| () Bool)
(declare-fun |d#0| () T@U)
(declare-fun |defass#iter#0| () Bool)
(declare-fun |iter#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.RegressionClient)
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
 (=> (= (ControlFlow 0 0) 12) (let ((anon3_Else_correct true))
(let ((anon3_Then_correct  (=> |call3formal@more#0@0| (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (or (not (= call4formal@this@0 null)) (not true)))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 Tclass._module.C?)) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc)))) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc ($Box boolType (bool_2_U true))))))) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (or (not (= $nw@1 null)) (not true)) ($Is refType $nw@1 Tclass._module.C?))) (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@1) alloc)))) (= $Heap@1 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@0 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@1) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)))) (and (=> (= (ControlFlow 0 5) (- 0 11)) true) (and (=> (= (ControlFlow 0 5) (- 0 10)) true) (=> (and (and (and (or (not (= call4formal@this null)) (not true)) (and ($Is refType call4formal@this (Tclass._module.RegressionDefaultVsPlaceboInitialization call0formal@_module.RegressionDefaultVsPlaceboInitialization$X)) ($IsAlloc refType call4formal@this (Tclass._module.RegressionDefaultVsPlaceboInitialization call0formal@_module.RegressionDefaultVsPlaceboInitialization$X) $Heap))) (= call0formal@_module.RegressionDefaultVsPlaceboInitialization$X@0 Tclass._module.C)) (and (and (= |call1formal@x#0@0| ($Box refType $nw@0)) (= |call2formal@y#0@0| ($Box refType $nw@1))) (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)))) (=> (and (and (and (and (or (not (= call4formal@this@0 null)) (not true)) (and ($Is refType call4formal@this@0 (Tclass._module.RegressionDefaultVsPlaceboInitialization call0formal@_module.RegressionDefaultVsPlaceboInitialization$X@0)) ($IsAlloc refType call4formal@this@0 (Tclass._module.RegressionDefaultVsPlaceboInitialization call0formal@_module.RegressionDefaultVsPlaceboInitialization$X@0) $Heap@2))) (= (_module.RegressionDefaultVsPlaceboInitialization.x call4formal@this@0) |call1formal@x#0@0|)) (and (and (= (_module.RegressionDefaultVsPlaceboInitialization.y call4formal@this@0) |call2formal@y#0@0|) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call4formal@this@0) _module.RegressionDefaultVsPlaceboInitialization.eqs)) |Seq#Empty|)) (and (|_module.RegressionDefaultVsPlaceboInitialization.Valid#canCall| call0formal@_module.RegressionDefaultVsPlaceboInitialization$X@0 $Heap@2 call4formal@this@0) (_module.RegressionDefaultVsPlaceboInitialization.Valid call0formal@_module.RegressionDefaultVsPlaceboInitialization$X@0 $Heap@2 call4formal@this@0)))) (and (and (and (|Set#Equal| (_module.RegressionDefaultVsPlaceboInitialization.__reads call4formal@this@0) |Set#Empty|) (|Set#Equal| (_module.RegressionDefaultVsPlaceboInitialization.__modifies call4formal@this@0) |Set#Empty|)) (and (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call4formal@this@0) _module.RegressionDefaultVsPlaceboInitialization.__new)) |Set#Empty|) (= (_module.RegressionDefaultVsPlaceboInitialization.__decreases0 call4formal@this@0) |call1formal@x#0@0|))) (and (and (= (_module.RegressionDefaultVsPlaceboInitialization.__decreases1 call4formal@this@0) |call2formal@y#0@0|) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call4formal@this@0) alloc))))) (and (forall (($o@@25 T@U) ) (!  (=> (and (or (not (= $o@@25 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@25) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@25) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@25)))
 :qid |Iteratorsdfy.77:10|
 :skolemid |589|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@25))
)) ($HeapSucc $Heap@1 $Heap@2))))) (and (=> (= (ControlFlow 0 5) (- 0 9)) true) (and (=> (= (ControlFlow 0 5) (- 0 8)) (or (not (= call4formal@this@0 null)) (not true))) (=> (or (not (= call4formal@this@0 null)) (not true)) (and (=> (= (ControlFlow 0 5) (- 0 7)) (forall (($o@@26 T@U) ($f@@1 T@U) ) (!  (=> (and (and (or (not (= $o@@26 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@26) alloc)))) (or (or (= $o@@26 call4formal@this@0) (|Set#IsMember| (_module.RegressionDefaultVsPlaceboInitialization.__modifies call4formal@this@0) ($Box refType $o@@26))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call4formal@this@0) _module.RegressionDefaultVsPlaceboInitialization.__new)) ($Box refType $o@@26)))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@26 $f@@1)))
 :qid |Iteratorsdfy.69:28|
 :skolemid |515|
))) (=> (forall (($o@@27 T@U) ($f@@2 T@U) ) (!  (=> (and (and (or (not (= $o@@27 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@27) alloc)))) (or (or (= $o@@27 call4formal@this@0) (|Set#IsMember| (_module.RegressionDefaultVsPlaceboInitialization.__modifies call4formal@this@0) ($Box refType $o@@27))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call4formal@this@0) _module.RegressionDefaultVsPlaceboInitialization.__new)) ($Box refType $o@@27)))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@27 $f@@2)))
 :qid |Iteratorsdfy.69:28|
 :skolemid |515|
)) (=> (= call0formal@_module.RegressionDefaultVsPlaceboInitialization$X@0@@0 Tclass._module.C) (and (=> (= (ControlFlow 0 5) (- 0 6)) (_module.RegressionDefaultVsPlaceboInitialization.Valid call0formal@_module.RegressionDefaultVsPlaceboInitialization$X@0@@0 $Heap@2 call4formal@this@0)) (=> (_module.RegressionDefaultVsPlaceboInitialization.Valid call0formal@_module.RegressionDefaultVsPlaceboInitialization$X@0@@0 $Heap@2 call4formal@this@0) (=> (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (=> (and (and (and (forall (($o@@28 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) _module.RegressionDefaultVsPlaceboInitialization.__new)) ($Box refType $o@@28)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call4formal@this@0) _module.RegressionDefaultVsPlaceboInitialization.__new)) ($Box refType $o@@28)))) (or (not (= $o@@28 null)) (not true)))
 :qid |Iteratorsdfy.77:10|
 :skolemid |594|
 :pattern (  (or (not (= $o@@28 null)) (not true)))
)) (forall (($o@@29 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) _module.RegressionDefaultVsPlaceboInitialization.__new)) ($Box refType $o@@29)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call4formal@this@0) _module.RegressionDefaultVsPlaceboInitialization.__new)) ($Box refType $o@@29)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@29) alloc)))))
 :qid |Iteratorsdfy.77:10|
 :skolemid |595|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@29) alloc)))
))) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) _module.RegressionDefaultVsPlaceboInitialization.__new)) ($Box refType null))) (=> |call3formal@more#0@0| (|_module.RegressionDefaultVsPlaceboInitialization.Valid#canCall| call0formal@_module.RegressionDefaultVsPlaceboInitialization$X@0@@0 $Heap@3 call4formal@this@0)))) (and (and (=> |call3formal@more#0@0| (_module.RegressionDefaultVsPlaceboInitialization.Valid call0formal@_module.RegressionDefaultVsPlaceboInitialization$X@0@@0 $Heap@3 call4formal@this@0)) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) _module.RegressionDefaultVsPlaceboInitialization.eqs)) (ite |call3formal@more#0@0| (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call4formal@this@0) _module.RegressionDefaultVsPlaceboInitialization.eqs)) (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) _module.RegressionDefaultVsPlaceboInitialization.eq))) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call4formal@this@0) _module.RegressionDefaultVsPlaceboInitialization.eqs))))) (and (forall (($o@@30 T@U) ) (!  (=> (and (or (not (= $o@@30 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@30) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@30) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@30)) (or (or (= $o@@30 call4formal@this@0) (|Set#IsMember| (_module.RegressionDefaultVsPlaceboInitialization.__modifies call4formal@this@0) ($Box refType $o@@30))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call4formal@this@0) _module.RegressionDefaultVsPlaceboInitialization.__new)) ($Box refType $o@@30)))))
 :qid |Iteratorsdfy.77:10|
 :skolemid |596|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@30))
)) ($HeapSucc $Heap@2 $Heap@3)))) (and (=> (= (ControlFlow 0 5) 2) anon3_Then_correct) (=> (= (ControlFlow 0 5) 4) anon3_Else_correct)))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (=> |defass#c#0| (and ($Is refType |c#0@@5| Tclass._module.C) ($IsAlloc refType |c#0@@5| Tclass._module.C $Heap))) true) (and (=> |defass#d#0| (and ($Is refType |d#0| Tclass._module.C) ($IsAlloc refType |d#0| Tclass._module.C $Heap))) true)) (and (and (=> |defass#iter#0| (and ($Is refType |iter#0| (Tclass._module.RegressionDefaultVsPlaceboInitialization Tclass._module.C)) ($IsAlloc refType |iter#0| (Tclass._module.RegressionDefaultVsPlaceboInitialization Tclass._module.C) $Heap))) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 12) 5)))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
