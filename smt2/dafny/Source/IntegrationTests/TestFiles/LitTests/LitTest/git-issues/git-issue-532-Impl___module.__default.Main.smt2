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
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._module.Tr () T@U)
(declare-fun Tagclass._module.C () T@U)
(declare-fun Tagclass._module.C? () T@U)
(declare-fun Tagclass._module.D () T@U)
(declare-fun Tagclass._module.D? () T@U)
(declare-fun class._module.Tr? () T@U)
(declare-fun Tagclass._module.Tr? () T@U)
(declare-fun class._module.C? () T@U)
(declare-fun class._module.D? () T@U)
(declare-fun tytagFamily$Tr () T@U)
(declare-fun tytagFamily$C () T@U)
(declare-fun tytagFamily$D () T@U)
(declare-fun field$y () T@U)
(declare-fun field$x () T@U)
(declare-fun field$z () T@U)
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
(declare-fun implements$_module.Tr (T@U) Bool)
(declare-fun Tclass._module.C? () T@U)
(declare-fun Tclass._module.D? () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun _module.Tr.x () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tclass._module.Tr? () T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.Tr () T@U)
(declare-fun Tclass._module.C () T@U)
(declare-fun Tclass._module.D () T@U)
(declare-fun _module.C.y () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.D.z () T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#2| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct TInt TagInt alloc allocName Tagclass._module.Tr Tagclass._module.C Tagclass._module.C? Tagclass._module.D Tagclass._module.D? class._module.Tr? Tagclass._module.Tr? class._module.C? class._module.D? tytagFamily$Tr tytagFamily$C tytagFamily$D field$y field$x field$z)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (implements$_module.Tr Tclass._module.C?))
(assert (implements$_module.Tr Tclass._module.D?))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.C?)  (or (= $o null) (= (dtype $o) Tclass._module.C?)))
 :qid |unknown.0:0|
 :skolemid |506|
 :pattern ( ($Is refType $o Tclass._module.C?))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass._module.D?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass._module.D?)))
 :qid |unknown.0:0|
 :skolemid |512|
 :pattern ( ($Is refType $o@@0 Tclass._module.D?))
)))
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
(assert (forall (($h T@U) ($o@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (or (not (= $o@@1 null)) (not true)) ($Is refType $o@@1 Tclass._module.Tr?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@1) _module.Tr.x)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |502|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@1) _module.Tr.x)))
)))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Tr $h@@0) ($IsAlloc refType |c#0| Tclass._module.Tr? $h@@0))
 :qid |unknown.0:0|
 :skolemid |505|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Tr $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Tr? $h@@0))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.C $h@@1) ($IsAlloc refType |c#0@@0| Tclass._module.C? $h@@1))
 :qid |unknown.0:0|
 :skolemid |511|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.C $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.C? $h@@1))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.D $h@@2) ($IsAlloc refType |c#0@@1| Tclass._module.D? $h@@2))
 :qid |unknown.0:0|
 :skolemid |517|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.D $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.D? $h@@2))
)))
(assert (= (FDim _module.C.y) 0))
(assert (= (FieldOfDecl class._module.C? field$y) _module.C.y))
(assert  (not ($IsGhostField _module.C.y)))
(assert (= (FDim _module.Tr.x) 0))
(assert (= (FieldOfDecl class._module.Tr? field$x) _module.Tr.x))
(assert  (not ($IsGhostField _module.Tr.x)))
(assert (= (FDim _module.D.z) 0))
(assert (= (FieldOfDecl class._module.D? field$z) _module.D.z))
(assert  (not ($IsGhostField _module.D.z)))
(assert (forall (($o@@2 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._module.Tr? $h@@3)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |501|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.Tr? $h@@3))
)))
(assert (forall (($o@@3 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass._module.C? $h@@4)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |507|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._module.C? $h@@4))
)))
(assert (forall (($o@@4 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@4 Tclass._module.D? $h@@5)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |513|
 :pattern ( ($IsAlloc refType $o@@4 Tclass._module.D? $h@@5))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
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
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h@@6 T@U) ($o@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) Tclass._module.C?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) _module.C.y)) TInt $h@@6))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |509|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) _module.C.y)))
)))
(assert (forall (($h@@7 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass._module.D?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) _module.D.z)) TInt $h@@7))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |515|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) _module.D.z)))
)))
(assert (forall ((h@@0 T@U) (k@@0 T@U) (v T@U) (t T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@0 k@@0) (=> ($IsAlloc T@@1 v t h@@0) ($IsAlloc T@@1 v t k@@0)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@0 k@@0) ($IsAlloc T@@1 v t h@@0))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._module.Tr)  (and ($Is refType |c#0@@2| Tclass._module.Tr?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |504|
 :pattern ( ($Is refType |c#0@@2| Tclass._module.Tr))
 :pattern ( ($Is refType |c#0@@2| Tclass._module.Tr?))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass._module.C)  (and ($Is refType |c#0@@3| Tclass._module.C?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |510|
 :pattern ( ($Is refType |c#0@@3| Tclass._module.C))
 :pattern ( ($Is refType |c#0@@3| Tclass._module.C?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.D)  (and ($Is refType |c#0@@4| Tclass._module.D?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |516|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.D))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.D?))
)))
(assert (forall (($o@@7 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@7 Tclass._module.C? $heap) ($IsAlloc refType $o@@7 Tclass._module.Tr? $heap))
 :qid |unknown.0:0|
 :skolemid |521|
 :pattern ( ($IsAlloc refType $o@@7 Tclass._module.C? $heap))
)))
(assert (forall (($o@@8 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@8 Tclass._module.D? $heap@@0) ($IsAlloc refType $o@@8 Tclass._module.Tr? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |525|
 :pattern ( ($IsAlloc refType $o@@8 Tclass._module.D? $heap@@0))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall (($h@@8 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@9 null)) (not true)) ($Is refType $o@@9 Tclass._module.Tr?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@9) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@9) _module.Tr.x)) TInt $h@@8))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |503|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@9) _module.Tr.x)))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@5))
)))
(assert (forall (($h@@9 T@U) ($o@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) Tclass._module.C?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@10) _module.C.y)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |508|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@10) _module.C.y)))
)))
(assert (forall (($h@@10 T@U) ($o@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) Tclass._module.D?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@11) _module.D.z)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |514|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@11) _module.D.z)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@12 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#2| |l#0| |l#1| |l#2| |l#3|) $o@@12 $f))  (=> (and (or (not (= $o@@12 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@12) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |528|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#2| |l#0| |l#1| |l#2| |l#3|) $o@@12 $f))
)))
(assert (forall (($o@@13 T@U) ) (!  (=> ($Is refType $o@@13 Tclass._module.C?) ($Is refType $o@@13 Tclass._module.Tr?))
 :qid |unknown.0:0|
 :skolemid |520|
 :pattern ( ($Is refType $o@@13 Tclass._module.C?))
)))
(assert (forall (($o@@14 T@U) ) (!  (=> ($Is refType $o@@14 Tclass._module.D?) ($Is refType $o@@14 Tclass._module.Tr?))
 :qid |unknown.0:0|
 :skolemid |524|
 :pattern ( ($Is refType $o@@14 Tclass._module.D?))
)))
(assert (forall ((h@@1 T@U) (r T@U) (f T@U) (x@@6 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@1 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 r) f x@@6))) ($HeapSucc h@@1 (MapType0Store refType (MapType0Type FieldType BoxType) h@@1 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 r) f x@@6))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@1 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 r) f x@@6)))
)))
(assert (= (Tag Tclass._module.Tr) Tagclass._module.Tr))
(assert (= (TagFamily Tclass._module.Tr) tytagFamily$Tr))
(assert (= (Tag Tclass._module.C) Tagclass._module.C))
(assert (= (TagFamily Tclass._module.C) tytagFamily$C))
(assert (= (Tag Tclass._module.C?) Tagclass._module.C?))
(assert (= (TagFamily Tclass._module.C?) tytagFamily$C))
(assert (= (Tag Tclass._module.D) Tagclass._module.D))
(assert (= (TagFamily Tclass._module.D) tytagFamily$D))
(assert (= (Tag Tclass._module.D?) Tagclass._module.D?))
(assert (= (TagFamily Tclass._module.D?) tytagFamily$D))
(assert (= (Tag Tclass._module.Tr?) Tagclass._module.Tr?))
(assert (= (TagFamily Tclass._module.Tr?) tytagFamily$Tr))
(assert (forall (($o@@15 T@U) ) (! (= ($Is refType $o@@15 Tclass._module.Tr?)  (or (= $o@@15 null) (implements$_module.Tr (dtype $o@@15))))
 :qid |unknown.0:0|
 :skolemid |500|
 :pattern ( ($Is refType $o@@15 Tclass._module.Tr?))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@8)) (Lit BoxType ($Box T@@3 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@8)))
)))
(assert (forall ((h@@2 T@U) (v@@0 T@U) ) (! ($IsAlloc intType v@@0 TInt h@@2)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@0 TInt h@@2))
)))
(assert (forall ((v@@1 T@U) ) (! ($Is intType v@@1 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@1 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun $nw@0 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $nw@1 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |$rhs#0@0| () Int)
(declare-fun |$rhs#1@0| () Int)
(declare-fun $Heap@2 () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |$rhs#2@0| () Int)
(declare-fun |$rhs#3@0| () Int)
(declare-fun $Heap@4 () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun $Heap@6 () T@U)
(declare-fun $Heap@7 () T@U)
(declare-fun |defass#c#0| () Bool)
(declare-fun |c#0@@5| () T@U)
(declare-fun |defass#d#0| () Bool)
(declare-fun |d#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
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
 (=> (= (ControlFlow 0 0) 20) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#2| null $Heap alloc false)) (=> (and (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 Tclass._module.C?)) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc)))) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc ($Box boolType (bool_2_U true))))))) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (or (not (= $nw@1 null)) (not true)) ($Is refType $nw@1 Tclass._module.D?))) (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@1) alloc)))) (= $Heap@1 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@0 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@1) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)))) (and (=> (= (ControlFlow 0 2) (- 0 19)) true) (and (=> (= (ControlFlow 0 2) (- 0 18)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 17)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 _module.Tr.x))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 _module.Tr.x)) (and (=> (= (ControlFlow 0 2) (- 0 16)) true) (and (=> (= (ControlFlow 0 2) (- 0 15)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 14)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 _module.C.y))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 _module.C.y)) (=> (and (= |$rhs#0@0| (LitInt 5)) (= |$rhs#1@0| (LitInt 6))) (=> (and (and (= $Heap@2 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) _module.Tr.x ($Box intType (int_2_U |$rhs#0@0|))))) ($IsGoodHeap $Heap@2)) (and (= $Heap@3 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) _module.C.y ($Box intType (int_2_U |$rhs#1@0|))))) ($IsGoodHeap $Heap@3))) (and (=> (= (ControlFlow 0 2) (- 0 13)) true) (and (=> (= (ControlFlow 0 2) (- 0 12)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 11)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 _module.Tr.x))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 _module.Tr.x)) (and (=> (= (ControlFlow 0 2) (- 0 10)) true) (and (=> (= (ControlFlow 0 2) (- 0 9)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 8)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 _module.D.z))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 _module.D.z)) (=> (and (= |$rhs#2@0| (LitInt 100)) (= |$rhs#3@0| (LitInt 102))) (=> (and (and (= $Heap@4 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@3 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@1) _module.Tr.x ($Box intType (int_2_U |$rhs#2@0|))))) ($IsGoodHeap $Heap@4)) (and (= $Heap@5 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@4 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@1) _module.D.z ($Box intType (int_2_U |$rhs#3@0|))))) ($IsGoodHeap $Heap@5))) (and (=> (= (ControlFlow 0 2) (- 0 7)) true) (and (=> (= (ControlFlow 0 2) (- 0 6)) (forall (($o@@16 T@U) ($f@@0 T@U) ) (!  (=> (and (and (or (not (= $o@@16 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@16) alloc)))) (= $o@@16 $nw@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@16 $f@@0)))
 :qid |gitissue532dfy.37:4|
 :skolemid |496|
))) (=> (forall (($o@@17 T@U) ($f@@1 T@U) ) (!  (=> (and (and (or (not (= $o@@17 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@17) alloc)))) (= $o@@17 $nw@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@17 $f@@1)))
 :qid |gitissue532dfy.37:4|
 :skolemid |496|
)) (=> (and (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6)) (and (forall (($o@@18 T@U) ) (!  (=> (and (or (not (= $o@@18 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@18) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@18) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@18)) (= $o@@18 $nw@0)))
 :qid |gitissue532dfy.17:8|
 :skolemid |485|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@18))
)) ($HeapSucc $Heap@5 $Heap@6))) (and (=> (= (ControlFlow 0 2) (- 0 5)) true) (and (=> (= (ControlFlow 0 2) (- 0 4)) (forall (($o@@19 T@U) ($f@@2 T@U) ) (!  (=> (and (and (or (not (= $o@@19 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@19) alloc)))) (= $o@@19 $nw@1)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@19 $f@@2)))
 :qid |gitissue532dfy.38:4|
 :skolemid |497|
))) (=> (forall (($o@@20 T@U) ($f@@3 T@U) ) (!  (=> (and (and (or (not (= $o@@20 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@20) alloc)))) (= $o@@20 $nw@1)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@20 $f@@3)))
 :qid |gitissue532dfy.38:4|
 :skolemid |497|
)) (=> (and (and ($IsGoodHeap $Heap@7) ($IsHeapAnchor $Heap@7)) (and (forall (($o@@21 T@U) ) (!  (=> (and (or (not (= $o@@21 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@21) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@21) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@21)) (= $o@@21 $nw@1)))
 :qid |gitissue532dfy.17:8|
 :skolemid |485|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@21))
)) ($HeapSucc $Heap@6 $Heap@7))) (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (forall (($o@@22 T@U) ($f@@4 T@U) ) (!  (=> (and (and (or (not (= $o@@22 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@22) alloc)))) (= $o@@22 $nw@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@22 $f@@4)))
 :qid |gitissue532dfy.39:4|
 :skolemid |498|
)))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (=> |defass#c#0| (and ($Is refType |c#0@@5| Tclass._module.C) ($IsAlloc refType |c#0@@5| Tclass._module.C $Heap))) true)) (and (and (=> |defass#d#0| (and ($Is refType |d#0| Tclass._module.D) ($IsAlloc refType |d#0| Tclass._module.D $Heap))) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 20) 2)))) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
