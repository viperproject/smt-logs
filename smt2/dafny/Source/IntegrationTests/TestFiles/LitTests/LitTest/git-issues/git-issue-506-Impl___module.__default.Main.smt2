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
(declare-fun Tagclass._System.array? () T@U)
(declare-fun Tagclass._System.array () T@U)
(declare-fun Tagclass._System.array2? () T@U)
(declare-fun Tagclass._System.array2 () T@U)
(declare-fun Tagclass._module.F () T@U)
(declare-fun class._module.F? () T@U)
(declare-fun Tagclass._module.F? () T@U)
(declare-fun tytagFamily$array () T@U)
(declare-fun tytagFamily$array2 () T@U)
(declare-fun tytagFamily$F () T@U)
(declare-fun field$f () T@U)
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
(declare-fun _System.array.Length (T@U) Int)
(declare-fun Tclass._System.array? (T@U) T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun _System.array2.Length0 (T@U) Int)
(declare-fun Tclass._System.array2? (T@U) T@U)
(declare-fun _System.array2.Length1 (T@U) Int)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._System.array (T@U) T@U)
(declare-fun Tclass._System.array2 (T@U) T@U)
(declare-fun Tclass._module.F? () T@U)
(declare-fun Tclass._module.F () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun _module.F.f () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun IndexField (Int) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun MultiIndexField (T@U Int) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun IndexField_Inverse (T@U) Int)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
(declare-fun Tclass._System.array2?_0 (T@U) T@U)
(declare-fun Tclass._System.array2_0 (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MultiIndexField_Inverse0 (T@U) T@U)
(declare-fun MultiIndexField_Inverse1 (T@U) Int)
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
(assert (distinct TInt TagInt alloc allocName Tagclass._System.array? Tagclass._System.array Tagclass._System.array2? Tagclass._System.array2 Tagclass._module.F class._module.F? Tagclass._module.F? tytagFamily$array tytagFamily$array2 tytagFamily$F field$f)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall ((_System.array$arg T@U) ($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._System.array? _System.array$arg))) ($Is intType (int_2_U (_System.array.Length $o)) TInt))
 :qid |unknown.0:0|
 :skolemid |359|
 :pattern ( (_System.array.Length $o) (Tclass._System.array? _System.array$arg))
)))
(assert (forall ((_System.array2$arg T@U) ($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) (Tclass._System.array2? _System.array2$arg))) ($Is intType (int_2_U (_System.array2.Length0 $o@@0)) TInt))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( (_System.array2.Length0 $o@@0) (Tclass._System.array2? _System.array2$arg))
)))
(assert (forall ((_System.array2$arg@@0 T@U) ($o@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) (Tclass._System.array2? _System.array2$arg@@0))) ($Is intType (int_2_U (_System.array2.Length1 $o@@1)) TInt))
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( (_System.array2.Length1 $o@@1) (Tclass._System.array2? _System.array2$arg@@0))
)))
(assert (= (Ctor refType) 3))
(assert (forall ((_System.array$arg@@0 T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h))
 :qid |unknown.0:0|
 :skolemid |365|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h))
)))
(assert (forall ((_System.array2$arg@@1 T@U) (|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| (Tclass._System.array2 _System.array2$arg@@1) $h@@0) ($IsAlloc refType |c#0@@0| (Tclass._System.array2? _System.array2$arg@@1) $h@@0))
 :qid |unknown.0:0|
 :skolemid |496|
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._System.array2 _System.array2$arg@@1) $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._System.array2? _System.array2$arg@@1) $h@@0))
)))
(assert (forall (($o@@2 T@U) ) (! (= ($Is refType $o@@2 Tclass._module.F?)  (or (= $o@@2 null) (= (dtype $o@@2) Tclass._module.F?)))
 :qid |unknown.0:0|
 :skolemid |554|
 :pattern ( ($Is refType $o@@2 Tclass._module.F?))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.F $h@@1) ($IsAlloc refType |c#0@@1| Tclass._module.F? $h@@1))
 :qid |unknown.0:0|
 :skolemid |562|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.F $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.F? $h@@1))
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
(assert (forall ((_System.array$arg@@1 T@U) ($o@@3 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@3 (Tclass._System.array? _System.array$arg@@1) $h@@2)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |358|
 :pattern ( ($IsAlloc refType $o@@3 (Tclass._System.array? _System.array$arg@@1) $h@@2))
)))
(assert (forall ((_System.array2$arg@@2 T@U) ($o@@4 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@4 (Tclass._System.array2? _System.array2$arg@@2) $h@@3)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( ($IsAlloc refType $o@@4 (Tclass._System.array2? _System.array2$arg@@2) $h@@3))
)))
(assert (= (FDim _module.F.f) 0))
(assert (= (FieldOfDecl class._module.F? field$f) _module.F.f))
(assert  (not ($IsGhostField _module.F.f)))
(assert (forall (($o@@5 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@5 Tclass._module.F? $h@@4)  (or (= $o@@5 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) alloc)))))
 :qid |unknown.0:0|
 :skolemid |555|
 :pattern ( ($IsAlloc refType $o@@5 Tclass._module.F? $h@@4))
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
(assert (forall ((_System.array$arg@@2 T@U) ($h@@5 T@U) ($o@@6 T@U) ($i0 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) (Tclass._System.array? _System.array$arg@@2)))) (and (<= 0 $i0) (< $i0 (_System.array.Length $o@@6)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) (IndexField $i0)) _System.array$arg@@2 $h@@5))
 :qid |unknown.0:0|
 :skolemid |356|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) (IndexField $i0)) (Tclass._System.array? _System.array$arg@@2))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((f T@U) (i Int) ) (! (= (FDim (MultiIndexField f i)) (+ (FDim f) 1))
 :qid |DafnyPreludebpl.520:15|
 :skolemid |105|
 :pattern ( (MultiIndexField f i))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h@@6 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) Tclass._module.F?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@7) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@7) _module.F.f)) TInt $h@@6))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |557|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@7) _module.F.f)))
)))
(assert (forall ((_System.array$arg@@3 T@U) (|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| (Tclass._System.array _System.array$arg@@3))  (and ($Is refType |c#0@@2| (Tclass._System.array? _System.array$arg@@3)) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |364|
 :pattern ( ($Is refType |c#0@@2| (Tclass._System.array _System.array$arg@@3)))
 :pattern ( ($Is refType |c#0@@2| (Tclass._System.array? _System.array$arg@@3)))
)))
(assert (forall ((_System.array2$arg@@3 T@U) (|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| (Tclass._System.array2 _System.array2$arg@@3))  (and ($Is refType |c#0@@3| (Tclass._System.array2? _System.array2$arg@@3)) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |495|
 :pattern ( ($Is refType |c#0@@3| (Tclass._System.array2 _System.array2$arg@@3)))
 :pattern ( ($Is refType |c#0@@3| (Tclass._System.array2? _System.array2$arg@@3)))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert (forall ((_System.array2$arg@@4 T@U) ($h@@7 T@U) ($o@@8 T@U) ($i0@@0 Int) ($i1 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) (Tclass._System.array2? _System.array2$arg@@4)))) (and (and (<= 0 $i0@@0) (< $i0@@0 (_System.array2.Length0 $o@@8))) (and (<= 0 $i1) (< $i1 (_System.array2.Length1 $o@@8))))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@8) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@8) (MultiIndexField (IndexField $i0@@0) $i1)) _System.array2$arg@@4 $h@@7))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@8) (MultiIndexField (IndexField $i0@@0) $i1)) (Tclass._System.array2? _System.array2$arg@@4))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx t@@0 h@@1) ($IsAllocBox bx t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@2) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@2))
)))
(assert (forall ((_System.array$arg@@4 T@U) ) (!  (and (= (Tag (Tclass._System.array? _System.array$arg@@4)) Tagclass._System.array?) (= (TagFamily (Tclass._System.array? _System.array$arg@@4)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |352|
 :pattern ( (Tclass._System.array? _System.array$arg@@4))
)))
(assert (forall ((_System.array$arg@@5 T@U) ) (!  (and (= (Tag (Tclass._System.array _System.array$arg@@5)) Tagclass._System.array) (= (TagFamily (Tclass._System.array _System.array$arg@@5)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |361|
 :pattern ( (Tclass._System.array _System.array$arg@@5))
)))
(assert (forall ((_System.array2$arg@@5 T@U) ) (!  (and (= (Tag (Tclass._System.array2? _System.array2$arg@@5)) Tagclass._System.array2?) (= (TagFamily (Tclass._System.array2? _System.array2$arg@@5)) tytagFamily$array2))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( (Tclass._System.array2? _System.array2$arg@@5))
)))
(assert (forall ((_System.array2$arg@@6 T@U) ) (!  (and (= (Tag (Tclass._System.array2 _System.array2$arg@@6)) Tagclass._System.array2) (= (TagFamily (Tclass._System.array2 _System.array2$arg@@6)) tytagFamily$array2))
 :qid |unknown.0:0|
 :skolemid |492|
 :pattern ( (Tclass._System.array2 _System.array2$arg@@6))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._module.F) (and (= ($Box refType ($Unbox refType bx@@0)) bx@@0) ($Is refType ($Unbox refType bx@@0) Tclass._module.F)))
 :qid |unknown.0:0|
 :skolemid |549|
 :pattern ( ($IsBox bx@@0 Tclass._module.F))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.F?) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._module.F?)))
 :qid |unknown.0:0|
 :skolemid |553|
 :pattern ( ($IsBox bx@@1 Tclass._module.F?))
)))
(assert (forall ((_System.array$arg@@6 T@U) ($o@@9 T@U) ) (! (= ($Is refType $o@@9 (Tclass._System.array? _System.array$arg@@6))  (or (= $o@@9 null) (= (dtype $o@@9) (Tclass._System.array? _System.array$arg@@6))))
 :qid |unknown.0:0|
 :skolemid |357|
 :pattern ( ($Is refType $o@@9 (Tclass._System.array? _System.array$arg@@6)))
)))
(assert (forall ((_System.array2$arg@@7 T@U) ($o@@10 T@U) ) (! (= ($Is refType $o@@10 (Tclass._System.array2? _System.array2$arg@@7))  (or (= $o@@10 null) (= (dtype $o@@10) (Tclass._System.array2? _System.array2$arg@@7))))
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( ($Is refType $o@@10 (Tclass._System.array2? _System.array2$arg@@7)))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.F)  (and ($Is refType |c#0@@4| Tclass._module.F?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |561|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.F))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.F?))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((_System.array2$arg@@8 T@U) ($h@@8 T@U) ($o@@11 T@U) ($i0@@1 Int) ($i1@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) (Tclass._System.array2? _System.array2$arg@@8)))) (and (and (<= 0 $i0@@1) (< $i0@@1 (_System.array2.Length0 $o@@11))) (and (<= 0 $i1@@0) (< $i1@@0 (_System.array2.Length1 $o@@11))))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@11) (MultiIndexField (IndexField $i0@@1) $i1@@0)) _System.array2$arg@@8))
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@11) (MultiIndexField (IndexField $i0@@1) $i1@@0)) (Tclass._System.array2? _System.array2$arg@@8))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TInt) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@2 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@2) ($Is T@@3 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@2))
)))
(assert (forall ((o@@0 T@U) ) (! (<= 0 (_System.array.Length o@@0))
 :qid |DafnyPreludebpl.571:15|
 :skolemid |112|
 :pattern ( (_System.array.Length o@@0))
)))
(assert (forall ((o@@1 T@U) ) (! (<= 0 (_System.array2.Length0 o@@1))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( (_System.array2.Length0 o@@1))
)))
(assert (forall ((o@@2 T@U) ) (! (<= 0 (_System.array2.Length1 o@@2))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( (_System.array2.Length1 o@@2))
)))
(assert (forall ((i@@0 Int) ) (! (= (FDim (IndexField i@@0)) 1)
 :qid |DafnyPreludebpl.515:15|
 :skolemid |103|
 :pattern ( (IndexField i@@0))
)))
(assert (forall ((i@@1 Int) ) (! (= (IndexField_Inverse (IndexField i@@1)) i@@1)
 :qid |DafnyPreludebpl.517:15|
 :skolemid |104|
 :pattern ( (IndexField i@@1))
)))
(assert (forall ((_System.array$arg@@7 T@U) ) (! (= (Tclass._System.array?_0 (Tclass._System.array? _System.array$arg@@7)) _System.array$arg@@7)
 :qid |unknown.0:0|
 :skolemid |353|
 :pattern ( (Tclass._System.array? _System.array$arg@@7))
)))
(assert (forall ((_System.array$arg@@8 T@U) ) (! (= (Tclass._System.array_0 (Tclass._System.array _System.array$arg@@8)) _System.array$arg@@8)
 :qid |unknown.0:0|
 :skolemid |362|
 :pattern ( (Tclass._System.array _System.array$arg@@8))
)))
(assert (forall ((_System.array2$arg@@9 T@U) ) (! (= (Tclass._System.array2?_0 (Tclass._System.array2? _System.array2$arg@@9)) _System.array2$arg@@9)
 :qid |unknown.0:0|
 :skolemid |480|
 :pattern ( (Tclass._System.array2? _System.array2$arg@@9))
)))
(assert (forall ((_System.array2$arg@@10 T@U) ) (! (= (Tclass._System.array2_0 (Tclass._System.array2 _System.array2$arg@@10)) _System.array2$arg@@10)
 :qid |unknown.0:0|
 :skolemid |493|
 :pattern ( (Tclass._System.array2 _System.array2$arg@@10))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((_System.array$arg@@9 T@U) ($h@@9 T@U) ($o@@12 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@12 null)) (not true)) (= (dtype $o@@12) (Tclass._System.array? _System.array$arg@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@12) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@12)) TInt $h@@9))
 :qid |unknown.0:0|
 :skolemid |360|
 :pattern ( (_System.array.Length $o@@12) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@12) alloc)) (Tclass._System.array? _System.array$arg@@9))
)))
(assert (forall ((_System.array2$arg@@11 T@U) ($h@@10 T@U) ($o@@13 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@13 null)) (not true)) (= (dtype $o@@13) (Tclass._System.array2? _System.array2$arg@@11)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@13) alloc)))) ($IsAlloc intType (int_2_U (_System.array2.Length0 $o@@13)) TInt $h@@10))
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( (_System.array2.Length0 $o@@13) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@13) alloc)) (Tclass._System.array2? _System.array2$arg@@11))
)))
(assert (forall ((_System.array2$arg@@12 T@U) ($h@@11 T@U) ($o@@14 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@14 null)) (not true)) (= (dtype $o@@14) (Tclass._System.array2? _System.array2$arg@@12)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@14) alloc)))) ($IsAlloc intType (int_2_U (_System.array2.Length1 $o@@14)) TInt $h@@11))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( (_System.array2.Length1 $o@@14) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@14) alloc)) (Tclass._System.array2? _System.array2$arg@@12))
)))
(assert (forall ((_System.array$arg@@10 T@U) ($h@@12 T@U) ($o@@15 T@U) ($i0@@2 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@15 null)) (not true)) (= (dtype $o@@15) (Tclass._System.array? _System.array$arg@@10)))) (and (<= 0 $i0@@2) (< $i0@@2 (_System.array.Length $o@@15)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@15) (IndexField $i0@@2)) _System.array$arg@@10))
 :qid |unknown.0:0|
 :skolemid |355|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@15) (IndexField $i0@@2)) (Tclass._System.array? _System.array$arg@@10))
)))
(assert (forall (($h@@13 T@U) ($o@@16 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@16 null)) (not true)) (= (dtype $o@@16) Tclass._module.F?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@16) _module.F.f)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |556|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@16) _module.F.f)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@17 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@17 $f))  (=> (and (or (not (= $o@@17 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@17) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |563|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@17 $f))
)))
(assert (forall ((f@@0 T@U) (i@@2 Int) ) (!  (and (= (MultiIndexField_Inverse0 (MultiIndexField f@@0 i@@2)) f@@0) (= (MultiIndexField_Inverse1 (MultiIndexField f@@0 i@@2)) i@@2))
 :qid |DafnyPreludebpl.523:15|
 :skolemid |106|
 :pattern ( (MultiIndexField f@@0 i@@2))
)))
(assert (forall ((_System.array$arg@@11 T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass._System.array? _System.array$arg@@11)) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) (Tclass._System.array? _System.array$arg@@11))))
 :qid |unknown.0:0|
 :skolemid |354|
 :pattern ( ($IsBox bx@@3 (Tclass._System.array? _System.array$arg@@11)))
)))
(assert (forall ((_System.array$arg@@12 T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass._System.array _System.array$arg@@12)) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) (Tclass._System.array _System.array$arg@@12))))
 :qid |unknown.0:0|
 :skolemid |363|
 :pattern ( ($IsBox bx@@4 (Tclass._System.array _System.array$arg@@12)))
)))
(assert (forall ((_System.array2$arg@@13 T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass._System.array2? _System.array2$arg@@13)) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) (Tclass._System.array2? _System.array2$arg@@13))))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsBox bx@@5 (Tclass._System.array2? _System.array2$arg@@13)))
)))
(assert (forall ((_System.array2$arg@@14 T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass._System.array2 _System.array2$arg@@14)) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) (Tclass._System.array2 _System.array2$arg@@14))))
 :qid |unknown.0:0|
 :skolemid |494|
 :pattern ( ($IsBox bx@@6 (Tclass._System.array2 _System.array2$arg@@14)))
)))
(assert (forall ((h@@3 T@U) (r T@U) (f@@1 T@U) (x@@6 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f@@1 x@@6))) ($HeapSucc h@@3 (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f@@1 x@@6))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f@@1 x@@6)))
)))
(assert (= (Tag Tclass._module.F) Tagclass._module.F))
(assert (= (TagFamily Tclass._module.F) tytagFamily$F))
(assert (= (Tag Tclass._module.F?) Tagclass._module.F?))
(assert (= (TagFamily Tclass._module.F?) tytagFamily$F))
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
(assert (forall ((h@@4 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@2 TInt h@@4))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is intType v@@3 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@3 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |$rhs#20@0| () Int)
(declare-fun $Heap@14 () T@U)
(declare-fun $nw@1 () T@U)
(declare-fun |$rhs#19@0| () Int)
(declare-fun |$rhs#15@0| () Int)
(declare-fun $Heap@13 () T@U)
(declare-fun |$rhs#17@0| () Int)
(declare-fun $index0@2 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |$rhs#18@0| () Int)
(declare-fun $Heap@12 () T@U)
(declare-fun |$rhs#12@0| () Int)
(declare-fun |$rhs#13@0| () Int)
(declare-fun $index1@1 () T@U)
(declare-fun |$rhs#16@0| () Int)
(declare-fun $Heap@9 () T@U)
(declare-fun call2formal@this@0 () T@U)
(declare-fun call2formal@this@0@@0 () T@U)
(declare-fun $Heap@10 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |j#0@0| () Int)
(declare-fun |k#0@0| () Int)
(declare-fun |$rhs#11@0| () Int)
(declare-fun $Heap@11 () T@U)
(declare-fun $index2@0 () T@U)
(declare-fun |$rhs#14@0| () Int)
(declare-fun $Heap@4 () T@U)
(declare-fun $nw@0 () T@U)
(declare-fun |$rhs#6@0| () Int)
(declare-fun |f##0@0| () Int)
(declare-fun call2formal@this () T@U)
(declare-fun $Heap () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun call2formal@this@0@@1 () T@U)
(declare-fun |f##1@0| () Int)
(declare-fun call2formal@this@@0 () T@U)
(declare-fun $Heap@6 () T@U)
(declare-fun |$rhs#7@0| () Int)
(declare-fun $Heap@7 () T@U)
(declare-fun |f##2@0| () Int)
(declare-fun call2formal@this@@1 () T@U)
(declare-fun $Heap@8 () T@U)
(declare-fun |$rhs#10@0| () Int)
(declare-fun $Heap@3 () T@U)
(declare-fun |$rhs#3@0| () Int)
(declare-fun $index0@1 () T@U)
(declare-fun |$rhs#5@0| () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun |index#0@0| () Int)
(declare-fun |$rhs#0@0| () Int)
(declare-fun $Heap@1 () T@U)
(declare-fun $index0@0 () T@U)
(declare-fun |$rhs#1@0| () Int)
(declare-fun |$rhs#2@0| () Int)
(declare-fun $Heap@2 () T@U)
(declare-fun $index1@0 () T@U)
(declare-fun |$rhs#4@0| () Int)
(declare-fun |a#0| () T@U)
(declare-fun |defass#o#0| () Bool)
(declare-fun |o#0| () T@U)
(declare-fun |defass#oo#0| () Bool)
(declare-fun |oo#0| () T@U)
(declare-fun |defass#ooo#0| () Bool)
(declare-fun |ooo#0| () T@U)
(declare-fun |defass#oooo#0| () Bool)
(declare-fun |oooo#0| () T@U)
(declare-fun |aa#0| () T@U)
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
 (=> (= (ControlFlow 0 0) 174) (let ((anon47_Else_correct true))
(let ((anon47_Then_correct true))
(let ((anon30_correct  (and (=> (= (ControlFlow 0 8) 6) anon47_Then_correct) (=> (= (ControlFlow 0 8) 7) anon47_Else_correct))))
(let ((anon46_Else_correct  (=> (and (not (and (= |$rhs#20@0| (LitInt 1)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $nw@1) (MultiIndexField (IndexField (LitInt 5)) (LitInt 1))))) (LitInt 5)))) (= (ControlFlow 0 10) 8)) anon30_correct)))
(let ((anon46_Then_correct  (=> (and (and (= |$rhs#20@0| (LitInt 1)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $nw@1) (MultiIndexField (IndexField (LitInt 5)) (LitInt 1))))) (LitInt 5))) (= (ControlFlow 0 9) 8)) anon30_correct)))
(let ((anon45_Else_correct  (=> (or (not (= |$rhs#20@0| (LitInt 1))) (not true)) (and (=> (= (ControlFlow 0 15) 9) anon46_Then_correct) (=> (= (ControlFlow 0 15) 10) anon46_Else_correct)))))
(let ((anon45_Then_correct  (=> (= |$rhs#20@0| (LitInt 1)) (and (=> (= (ControlFlow 0 11) (- 0 14)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (and (=> (= (ControlFlow 0 11) (- 0 13)) (and (<= 0 (LitInt 5)) (< (LitInt 5) (_System.array2.Length0 $nw@1)))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (and (<= 0 (LitInt 1)) (< (LitInt 1) (_System.array2.Length1 $nw@1)))) (and (=> (= (ControlFlow 0 11) 9) anon46_Then_correct) (=> (= (ControlFlow 0 11) 10) anon46_Else_correct)))))))))
(let ((anon26_correct  (and (=> (= (ControlFlow 0 16) (- 0 19)) (= |$rhs#20@0| (LitInt 1))) (and (=> (= (ControlFlow 0 16) (- 0 18)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $nw@1) (MultiIndexField (IndexField (LitInt 5)) (LitInt 1))))) (LitInt 5))) (and (=> (= (ControlFlow 0 16) (- 0 17)) (= |$rhs#19@0| (LitInt 6))) (=> (and (and (= |$rhs#20@0| (LitInt 1)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $nw@1) (MultiIndexField (IndexField (LitInt 5)) (LitInt 1))))) (LitInt 5))) (= |$rhs#19@0| (LitInt 6))) (and (=> (= (ControlFlow 0 16) 11) anon45_Then_correct) (=> (= (ControlFlow 0 16) 15) anon45_Else_correct))))))))
(let ((anon44_Else_correct  (=> (and (not (and (= |$rhs#20@0| (LitInt 1)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $nw@1) (MultiIndexField (IndexField (LitInt 5)) (LitInt 1))))) (LitInt 5)))) (= (ControlFlow 0 21) 16)) anon26_correct)))
(let ((anon44_Then_correct  (=> (and (and (= |$rhs#20@0| (LitInt 1)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $nw@1) (MultiIndexField (IndexField (LitInt 5)) (LitInt 1))))) (LitInt 5))) (= (ControlFlow 0 20) 16)) anon26_correct)))
(let ((anon43_Else_correct  (=> (or (not (= |$rhs#20@0| (LitInt 1))) (not true)) (and (=> (= (ControlFlow 0 26) 20) anon44_Then_correct) (=> (= (ControlFlow 0 26) 21) anon44_Else_correct)))))
(let ((anon43_Then_correct  (=> (= |$rhs#20@0| (LitInt 1)) (and (=> (= (ControlFlow 0 22) (- 0 25)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (and (=> (= (ControlFlow 0 22) (- 0 24)) (and (<= 0 (LitInt 5)) (< (LitInt 5) (_System.array2.Length0 $nw@1)))) (and (=> (= (ControlFlow 0 22) (- 0 23)) (and (<= 0 (LitInt 1)) (< (LitInt 1) (_System.array2.Length1 $nw@1)))) (and (=> (= (ControlFlow 0 22) 20) anon44_Then_correct) (=> (= (ControlFlow 0 22) 21) anon44_Else_correct)))))))))
(let ((anon42_Else_correct  (=> (and (and (= |$rhs#15@0| (LitInt 5)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $nw@1) (MultiIndexField (IndexField (LitInt 2)) (LitInt 3))))) (LitInt 6))) (= |$rhs#17@0| (LitInt 1))) (and (=> (= (ControlFlow 0 27) (- 0 31)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (and (=> (= (ControlFlow 0 27) (- 0 30)) (and (<= 0 |$rhs#15@0|) (< |$rhs#15@0| (_System.array2.Length0 $nw@1)))) (=> (and (<= 0 |$rhs#15@0|) (< |$rhs#15@0| (_System.array2.Length0 $nw@1))) (and (=> (= (ControlFlow 0 27) (- 0 29)) (and (<= 0 |$rhs#17@0|) (< |$rhs#17@0| (_System.array2.Length1 $nw@1)))) (=> (and (<= 0 |$rhs#17@0|) (< |$rhs#17@0| (_System.array2.Length1 $nw@1))) (=> (= $index0@2 (MultiIndexField (IndexField |$rhs#15@0|) |$rhs#17@0|)) (and (=> (= (ControlFlow 0 27) (- 0 28)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 $index0@2))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 $index0@2)) (=> (= |$rhs#18@0| (LitInt 5)) (=> (and (and (= |$rhs#19@0| (LitInt 6)) (= |$rhs#20@0| (LitInt 1))) (and (= $Heap@14 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@13 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $nw@1) $index0@2 ($Box intType (int_2_U |$rhs#18@0|))))) ($IsGoodHeap $Heap@14))) (and (=> (= (ControlFlow 0 27) 22) anon43_Then_correct) (=> (= (ControlFlow 0 27) 26) anon43_Else_correct))))))))))))))))
(let ((anon42_Then_correct true))
(let ((anon20_correct  (and (=> (= (ControlFlow 0 32) 5) anon42_Then_correct) (=> (= (ControlFlow 0 32) 27) anon42_Else_correct))))
(let ((anon41_Else_correct  (=> (and (not (and (= |$rhs#15@0| (LitInt 5)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $nw@1) (MultiIndexField (IndexField (LitInt 2)) (LitInt 3))))) (LitInt 6)))) (= (ControlFlow 0 34) 32)) anon20_correct)))
(let ((anon41_Then_correct  (=> (and (and (= |$rhs#15@0| (LitInt 5)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $nw@1) (MultiIndexField (IndexField (LitInt 2)) (LitInt 3))))) (LitInt 6))) (= (ControlFlow 0 33) 32)) anon20_correct)))
(let ((anon40_Else_correct  (=> (or (not (= |$rhs#15@0| (LitInt 5))) (not true)) (and (=> (= (ControlFlow 0 39) 33) anon41_Then_correct) (=> (= (ControlFlow 0 39) 34) anon41_Else_correct)))))
(let ((anon40_Then_correct  (=> (= |$rhs#15@0| (LitInt 5)) (and (=> (= (ControlFlow 0 35) (- 0 38)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (and (=> (= (ControlFlow 0 35) (- 0 37)) (and (<= 0 (LitInt 2)) (< (LitInt 2) (_System.array2.Length0 $nw@1)))) (and (=> (= (ControlFlow 0 35) (- 0 36)) (and (<= 0 (LitInt 3)) (< (LitInt 3) (_System.array2.Length1 $nw@1)))) (and (=> (= (ControlFlow 0 35) 33) anon41_Then_correct) (=> (= (ControlFlow 0 35) 34) anon41_Else_correct)))))))))
(let ((anon16_correct  (and (=> (= (ControlFlow 0 40) (- 0 43)) (= |$rhs#15@0| (LitInt 5))) (and (=> (= (ControlFlow 0 40) (- 0 42)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $nw@1) (MultiIndexField (IndexField (LitInt 2)) (LitInt 3))))) (LitInt 6))) (and (=> (= (ControlFlow 0 40) (- 0 41)) (= |$rhs#17@0| (LitInt 1))) (=> (and (and (= |$rhs#15@0| (LitInt 5)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $nw@1) (MultiIndexField (IndexField (LitInt 2)) (LitInt 3))))) (LitInt 6))) (= |$rhs#17@0| (LitInt 1))) (and (=> (= (ControlFlow 0 40) 35) anon40_Then_correct) (=> (= (ControlFlow 0 40) 39) anon40_Else_correct))))))))
(let ((anon39_Else_correct  (=> (and (not (and (= |$rhs#15@0| (LitInt 5)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $nw@1) (MultiIndexField (IndexField (LitInt 2)) (LitInt 3))))) (LitInt 6)))) (= (ControlFlow 0 45) 40)) anon16_correct)))
(let ((anon39_Then_correct  (=> (and (and (= |$rhs#15@0| (LitInt 5)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $nw@1) (MultiIndexField (IndexField (LitInt 2)) (LitInt 3))))) (LitInt 6))) (= (ControlFlow 0 44) 40)) anon16_correct)))
(let ((anon38_Else_correct  (=> (or (not (= |$rhs#15@0| (LitInt 5))) (not true)) (and (=> (= (ControlFlow 0 50) 44) anon39_Then_correct) (=> (= (ControlFlow 0 50) 45) anon39_Else_correct)))))
(let ((anon38_Then_correct  (=> (= |$rhs#15@0| (LitInt 5)) (and (=> (= (ControlFlow 0 46) (- 0 49)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (and (=> (= (ControlFlow 0 46) (- 0 48)) (and (<= 0 (LitInt 2)) (< (LitInt 2) (_System.array2.Length0 $nw@1)))) (and (=> (= (ControlFlow 0 46) (- 0 47)) (and (<= 0 (LitInt 3)) (< (LitInt 3) (_System.array2.Length1 $nw@1)))) (and (=> (= (ControlFlow 0 46) 44) anon39_Then_correct) (=> (= (ControlFlow 0 46) 45) anon39_Else_correct)))))))))
(let ((anon37_Else_correct  (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $nw@1) (MultiIndexField (IndexField (LitInt 4)) (LitInt 5))))) (LitInt 7)) (and (=> (= (ControlFlow 0 51) (- 0 55)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (and (=> (= (ControlFlow 0 51) (- 0 54)) (and (<= 0 |$rhs#12@0|) (< |$rhs#12@0| (_System.array2.Length0 $nw@1)))) (=> (and (<= 0 |$rhs#12@0|) (< |$rhs#12@0| (_System.array2.Length0 $nw@1))) (and (=> (= (ControlFlow 0 51) (- 0 53)) (and (<= 0 |$rhs#13@0|) (< |$rhs#13@0| (_System.array2.Length1 $nw@1)))) (=> (and (<= 0 |$rhs#13@0|) (< |$rhs#13@0| (_System.array2.Length1 $nw@1))) (=> (= $index1@1 (MultiIndexField (IndexField |$rhs#12@0|) |$rhs#13@0|)) (and (=> (= (ControlFlow 0 51) (- 0 52)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 $index1@1))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 $index1@1)) (=> (= |$rhs#15@0| (LitInt 5)) (=> (and (and (= |$rhs#16@0| (LitInt 6)) (= |$rhs#17@0| (LitInt 1))) (and (= $Heap@13 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@12 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $nw@1) $index1@1 ($Box intType (int_2_U |$rhs#16@0|))))) ($IsGoodHeap $Heap@13))) (and (=> (= (ControlFlow 0 51) 46) anon38_Then_correct) (=> (= (ControlFlow 0 51) 50) anon38_Else_correct))))))))))))))))
(let ((anon37_Then_correct true))
(let ((anon36_Else_correct  (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 call2formal@this@0) _module.F.f))) (LitInt 7)) (and (=> (= (ControlFlow 0 56) (- 0 83)) true) (and (=> (= (ControlFlow 0 56) (- 0 82)) (or (not (= call2formal@this@0@@0 null)) (not true))) (and (=> (= (ControlFlow 0 56) (- 0 81)) true) (and (=> (= (ControlFlow 0 56) (- 0 80)) (or (not (= call2formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 56) (- 0 79)) (<= 0 (LitInt 9))) (=> (<= 0 (LitInt 9)) (and (=> (= (ControlFlow 0 56) (- 0 78)) (<= 0 (LitInt 9))) (=> (<= 0 (LitInt 9)) (=> (and (or (not (= $nw@1 null)) (not true)) ($Is refType $nw@1 (Tclass._System.array2? TInt))) (=> (and (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $nw@1) alloc)))) (= (_System.array2.Length0 $nw@1) (LitInt 9))) (and (= (_System.array2.Length1 $nw@1) (LitInt 9)) (= $Heap@10 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@9 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $nw@1) alloc ($Box boolType (bool_2_U true))))))) (and (and ($IsGoodHeap $Heap@10) ($IsHeapAnchor $Heap@10)) (and (= |j#0@0| (LitInt 4)) (= |k#0@0| (LitInt 5))))) (and (=> (= (ControlFlow 0 56) (- 0 77)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (and (=> (= (ControlFlow 0 56) (- 0 76)) (and (<= 0 |j#0@0|) (< |j#0@0| (_System.array2.Length0 $nw@1)))) (=> (and (<= 0 |j#0@0|) (< |j#0@0| (_System.array2.Length0 $nw@1))) (and (=> (= (ControlFlow 0 56) (- 0 75)) (and (<= 0 |k#0@0|) (< |k#0@0| (_System.array2.Length1 $nw@1)))) (=> (and (<= 0 |k#0@0|) (< |k#0@0| (_System.array2.Length1 $nw@1))) (and (=> (= (ControlFlow 0 56) (- 0 74)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 (MultiIndexField (IndexField |j#0@0|) |k#0@0|)))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 (MultiIndexField (IndexField |j#0@0|) |k#0@0|))) (=> (= |$rhs#11@0| (LitInt 8)) (=> (and (= $Heap@11 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@10 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $nw@1) (MultiIndexField (IndexField |j#0@0|) |k#0@0|) ($Box intType (int_2_U |$rhs#11@0|))))) ($IsGoodHeap $Heap@11)) (and (=> (= (ControlFlow 0 56) (- 0 73)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (and (=> (= (ControlFlow 0 56) (- 0 72)) (and (<= 0 |j#0@0|) (< |j#0@0| (_System.array2.Length0 $nw@1)))) (=> (and (<= 0 |j#0@0|) (< |j#0@0| (_System.array2.Length0 $nw@1))) (and (=> (= (ControlFlow 0 56) (- 0 71)) (and (<= 0 |k#0@0|) (< |k#0@0| (_System.array2.Length1 $nw@1)))) (=> (and (<= 0 |k#0@0|) (< |k#0@0| (_System.array2.Length1 $nw@1))) (=> (= $index2@0 (MultiIndexField (IndexField |j#0@0|) |k#0@0|)) (and (=> (= (ControlFlow 0 56) (- 0 70)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 $index2@0))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 $index2@0)) (=> (= |$rhs#12@0| (LitInt 2)) (=> (and (and (= |$rhs#13@0| (LitInt 3)) (= |$rhs#14@0| (LitInt 7))) (and (= $Heap@12 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@11 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $nw@1) $index2@0 ($Box intType (int_2_U |$rhs#14@0|))))) ($IsGoodHeap $Heap@12))) (and (=> (= (ControlFlow 0 56) (- 0 69)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (and (=> (= (ControlFlow 0 56) (- 0 68)) (and (<= 0 (LitInt 4)) (< (LitInt 4) (_System.array2.Length0 $nw@1)))) (and (=> (= (ControlFlow 0 56) (- 0 67)) (and (<= 0 (LitInt 5)) (< (LitInt 5) (_System.array2.Length1 $nw@1)))) (and (=> (= (ControlFlow 0 56) (- 0 66)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (and (=> (= (ControlFlow 0 56) (- 0 65)) (and (<= 0 (LitInt 2)) (< (LitInt 2) (_System.array2.Length0 $nw@1)))) (and (=> (= (ControlFlow 0 56) (- 0 64)) (and (<= 0 (LitInt 3)) (< (LitInt 3) (_System.array2.Length1 $nw@1)))) (and (=> (= (ControlFlow 0 56) (- 0 63)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (and (=> (= (ControlFlow 0 56) (- 0 62)) (and (<= 0 (LitInt 4)) (< (LitInt 4) (_System.array2.Length0 $nw@1)))) (and (=> (= (ControlFlow 0 56) (- 0 61)) (and (<= 0 (LitInt 5)) (< (LitInt 5) (_System.array2.Length1 $nw@1)))) (and (=> (= (ControlFlow 0 56) (- 0 60)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $nw@1) (MultiIndexField (IndexField (LitInt 4)) (LitInt 5))))) (LitInt 7))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $nw@1) (MultiIndexField (IndexField (LitInt 4)) (LitInt 5))))) (LitInt 7)) (and (=> (= (ControlFlow 0 56) (- 0 59)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (and (=> (= (ControlFlow 0 56) (- 0 58)) (and (<= 0 (LitInt 4)) (< (LitInt 4) (_System.array2.Length0 $nw@1)))) (and (=> (= (ControlFlow 0 56) (- 0 57)) (and (<= 0 (LitInt 5)) (< (LitInt 5) (_System.array2.Length1 $nw@1)))) (and (=> (= (ControlFlow 0 56) 4) anon37_Then_correct) (=> (= (ControlFlow 0 56) 51) anon37_Else_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon36_Then_correct true))
(let ((anon35_Else_correct  (=> (and (and (and (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@0) (IndexField (LitInt 9))))) (LitInt 7)) (= |$rhs#6@0| (LitInt 6))) (= |f##0@0| (LitInt 2))) (and (or (not (= call2formal@this null)) (not true)) (and ($Is refType call2formal@this Tclass._module.F) ($IsAlloc refType call2formal@this Tclass._module.F $Heap)))) (and (and (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)) (and (or (not (= call2formal@this@0@@1 null)) (not true)) (and ($Is refType call2formal@this@0@@1 Tclass._module.F) ($IsAlloc refType call2formal@this@0@@1 Tclass._module.F $Heap@5)))) (and (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 call2formal@this@0@@1) _module.F.f))) |f##0@0|) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call2formal@this@0@@1) alloc))))) (and (forall (($o@@18 T@U) ) (!  (=> (and (or (not (= $o@@18 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@18) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@18) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@18)))
 :qid |gitissue506dfy.58:3|
 :skolemid |559|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@18))
)) ($HeapSucc $Heap@4 $Heap@5))))) (and (=> (= (ControlFlow 0 84) (- 0 121)) true) (and (=> (= (ControlFlow 0 84) (- 0 120)) true) (and (=> (= (ControlFlow 0 84) (- 0 119)) (or (not (= call2formal@this@0@@1 null)) (not true))) (and (=> (= (ControlFlow 0 84) (- 0 118)) true) (and (=> (= (ControlFlow 0 84) (- 0 117)) (or (not (= call2formal@this@0@@1 null)) (not true))) (and (=> (= (ControlFlow 0 84) (- 0 116)) true) (and (=> (= (ControlFlow 0 84) (- 0 115)) (or (not (= call2formal@this@0@@1 null)) (not true))) (and (=> (= (ControlFlow 0 84) (- 0 114)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 call2formal@this@0@@1) _module.F.f))) (LitInt 2))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 call2formal@this@0@@1) _module.F.f))) (LitInt 2)) (and (=> (= (ControlFlow 0 84) (- 0 113)) true) (and (=> (= (ControlFlow 0 84) (- 0 112)) (or (not (= call2formal@this@0@@1 null)) (not true))) (and (=> (= (ControlFlow 0 84) (- 0 111)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 call2formal@this@0@@1) _module.F.f))) (LitInt 2))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 call2formal@this@0@@1) _module.F.f))) (LitInt 2)) (=> (= |f##1@0| (LitInt 4)) (=> (and (or (not (= call2formal@this@@0 null)) (not true)) (and ($Is refType call2formal@this@@0 Tclass._module.F) ($IsAlloc refType call2formal@this@@0 Tclass._module.F $Heap))) (=> (and (and (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6)) (and (or (not (= call2formal@this@0 null)) (not true)) (and ($Is refType call2formal@this@0 Tclass._module.F) ($IsAlloc refType call2formal@this@0 Tclass._module.F $Heap@6)))) (and (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call2formal@this@0) _module.F.f))) |f##1@0|) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 call2formal@this@0) alloc))))) (and (forall (($o@@19 T@U) ) (!  (=> (and (or (not (= $o@@19 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@19) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@19) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@19)))
 :qid |gitissue506dfy.58:3|
 :skolemid |559|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@19))
)) ($HeapSucc $Heap@5 $Heap@6)))) (and (=> (= (ControlFlow 0 84) (- 0 110)) true) (and (=> (= (ControlFlow 0 84) (- 0 109)) (or (not (= call2formal@this@0@@1 null)) (not true))) (=> (or (not (= call2formal@this@0@@1 null)) (not true)) (and (=> (= (ControlFlow 0 84) (- 0 108)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 call2formal@this@0@@1 _module.F.f))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 call2formal@this@0@@1 _module.F.f)) (=> (= |$rhs#7@0| (LitInt 5)) (and (=> (= (ControlFlow 0 84) (- 0 107)) true) (=> (and (= $Heap@7 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@6 call2formal@this@0@@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call2formal@this@0@@1) _module.F.f ($Box intType (int_2_U |$rhs#7@0|))))) ($IsGoodHeap $Heap@7)) (and (=> (= (ControlFlow 0 84) (- 0 106)) true) (and (=> (= (ControlFlow 0 84) (- 0 105)) (or (not (= call2formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 84) (- 0 104)) true) (and (=> (= (ControlFlow 0 84) (- 0 103)) (or (not (= call2formal@this@0@@1 null)) (not true))) (and (=> (= (ControlFlow 0 84) (- 0 102)) true) (and (=> (= (ControlFlow 0 84) (- 0 101)) (or (not (= call2formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 84) (- 0 100)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 call2formal@this@0) _module.F.f))) (LitInt 4))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 call2formal@this@0) _module.F.f))) (LitInt 4)) (and (=> (= (ControlFlow 0 84) (- 0 99)) true) (and (=> (= (ControlFlow 0 84) (- 0 98)) (or (not (= call2formal@this@0@@1 null)) (not true))) (and (=> (= (ControlFlow 0 84) (- 0 97)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 call2formal@this@0@@1) _module.F.f))) (LitInt 5))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 call2formal@this@0@@1) _module.F.f))) (LitInt 5)) (=> (= |f##2@0| (LitInt 6)) (=> (and (or (not (= call2formal@this@@1 null)) (not true)) (and ($Is refType call2formal@this@@1 Tclass._module.F) ($IsAlloc refType call2formal@this@@1 Tclass._module.F $Heap))) (=> (and (and (and ($IsGoodHeap $Heap@8) ($IsHeapAnchor $Heap@8)) (and (or (not (= call2formal@this@0@@0 null)) (not true)) (and ($Is refType call2formal@this@0@@0 Tclass._module.F) ($IsAlloc refType call2formal@this@0@@0 Tclass._module.F $Heap@8)))) (and (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 call2formal@this@0@@0) _module.F.f))) |f##2@0|) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 call2formal@this@0@@0) alloc))))) (and (forall (($o@@20 T@U) ) (!  (=> (and (or (not (= $o@@20 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@20) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@20) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@20)))
 :qid |gitissue506dfy.58:3|
 :skolemid |559|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@20))
)) ($HeapSucc $Heap@7 $Heap@8)))) (and (=> (= (ControlFlow 0 84) (- 0 96)) true) (and (=> (= (ControlFlow 0 84) (- 0 95)) (or (not (= call2formal@this@0 null)) (not true))) (=> (or (not (= call2formal@this@0 null)) (not true)) (and (=> (= (ControlFlow 0 84) (- 0 94)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 call2formal@this@0 _module.F.f))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 call2formal@this@0 _module.F.f)) (and (=> (= (ControlFlow 0 84) (- 0 93)) true) (=> (= |$rhs#10@0| (LitInt 7)) (=> (and (= $Heap@9 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@8 call2formal@this@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 call2formal@this@0) _module.F.f ($Box intType (int_2_U |$rhs#10@0|))))) ($IsGoodHeap $Heap@9)) (and (=> (= (ControlFlow 0 84) (- 0 92)) true) (and (=> (= (ControlFlow 0 84) (- 0 91)) (or (not (= call2formal@this@0@@0 null)) (not true))) (and (=> (= (ControlFlow 0 84) (- 0 90)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 call2formal@this@0@@0) _module.F.f))) (LitInt 6))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 call2formal@this@0@@0) _module.F.f))) (LitInt 6)) (and (=> (= (ControlFlow 0 84) (- 0 89)) true) (and (=> (= (ControlFlow 0 84) (- 0 88)) (or (not (= call2formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 84) (- 0 87)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 call2formal@this@0) _module.F.f))) (LitInt 7))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 call2formal@this@0) _module.F.f))) (LitInt 7)) (and (=> (= (ControlFlow 0 84) (- 0 86)) true) (and (=> (= (ControlFlow 0 84) (- 0 85)) (or (not (= call2formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 84) 3) anon36_Then_correct) (=> (= (ControlFlow 0 84) 56) anon36_Else_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon35_Then_correct true))
(let ((anon6_correct  (and (=> (= (ControlFlow 0 122) 2) anon35_Then_correct) (=> (= (ControlFlow 0 122) 84) anon35_Else_correct))))
(let ((anon34_Else_correct  (=> (and (or (not (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@0) (IndexField (LitInt 9))))) (LitInt 7))) (not true)) (= (ControlFlow 0 124) 122)) anon6_correct)))
(let ((anon34_Then_correct  (=> (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@0) (IndexField (LitInt 9))))) (LitInt 7)) (= (ControlFlow 0 123) 122)) anon6_correct)))
(let ((anon4_correct  (and (=> (= (ControlFlow 0 125) (- 0 129)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@0) (IndexField (LitInt 9))))) (LitInt 7))) (and (=> (= (ControlFlow 0 125) (- 0 128)) (= |$rhs#6@0| (LitInt 6))) (=> (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@0) (IndexField (LitInt 9))))) (LitInt 7)) (= |$rhs#6@0| (LitInt 6))) (and (=> (= (ControlFlow 0 125) (- 0 127)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 125) (- 0 126)) (and (<= 0 (LitInt 9)) (< (LitInt 9) (_System.array.Length $nw@0)))) (and (=> (= (ControlFlow 0 125) 123) anon34_Then_correct) (=> (= (ControlFlow 0 125) 124) anon34_Else_correct))))))))))
(let ((anon33_Else_correct  (=> (and (or (not (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@0) (IndexField (LitInt 9))))) (LitInt 7))) (not true)) (= (ControlFlow 0 131) 125)) anon4_correct)))
(let ((anon33_Then_correct  (=> (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@0) (IndexField (LitInt 9))))) (LitInt 7)) (= (ControlFlow 0 130) 125)) anon4_correct)))
(let ((anon32_Else_correct  (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@0) (IndexField (LitInt 8))))) (LitInt 1)) (and (=> (= (ControlFlow 0 132) (- 0 143)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 132) (- 0 142)) (and (<= 0 (LitInt 6)) (< (LitInt 6) (_System.array.Length $nw@0)))) (and (=> (= (ControlFlow 0 132) (- 0 141)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 132) (- 0 140)) (and (<= 0 (LitInt 7)) (< (LitInt 7) (_System.array.Length $nw@0)))) (and (=> (= (ControlFlow 0 132) (- 0 139)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 132) (- 0 138)) (and (<= 0 (LitInt 8)) (< (LitInt 8) (_System.array.Length $nw@0)))) (and (=> (= (ControlFlow 0 132) (- 0 137)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 132) (- 0 136)) (and (<= 0 (+ |$rhs#3@0| 1)) (< (+ |$rhs#3@0| 1) (_System.array.Length $nw@0)))) (=> (and (<= 0 (+ |$rhs#3@0| 1)) (< (+ |$rhs#3@0| 1) (_System.array.Length $nw@0))) (=> (= $index0@1 (IndexField (+ |$rhs#3@0| 1))) (and (=> (= (ControlFlow 0 132) (- 0 135)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 $index0@1))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 $index0@1)) (=> (and (and (= |$rhs#5@0| (LitInt 7)) (= |$rhs#6@0| (LitInt 6))) (and (= $Heap@4 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@3 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@0) $index0@1 ($Box intType (int_2_U |$rhs#5@0|))))) ($IsGoodHeap $Heap@4))) (and (=> (= (ControlFlow 0 132) (- 0 134)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 132) (- 0 133)) (and (<= 0 (LitInt 9)) (< (LitInt 9) (_System.array.Length $nw@0)))) (and (=> (= (ControlFlow 0 132) 130) anon33_Then_correct) (=> (= (ControlFlow 0 132) 131) anon33_Else_correct)))))))))))))))))))))))))
(let ((anon32_Then_correct true))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 144) (- 0 173)) (<= 0 (LitInt 10))) (=> (<= 0 (LitInt 10)) (=> (and (and (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 (Tclass._System.array? TInt))) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc)))) (= (_System.array.Length $nw@0) (LitInt 10)))) (and (and (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc ($Box boolType (bool_2_U true))))) ($IsGoodHeap $Heap@0)) (and ($IsHeapAnchor $Heap@0) (= |index#0@0| (LitInt 6))))) (and (=> (= (ControlFlow 0 144) (- 0 172)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 144) (- 0 171)) (and (<= 0 (LitInt 8)) (< (LitInt 8) (_System.array.Length $nw@0)))) (=> (and (<= 0 (LitInt 8)) (< (LitInt 8) (_System.array.Length $nw@0))) (and (=> (= (ControlFlow 0 144) (- 0 170)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField (LitInt 8))))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField (LitInt 8)))) (=> (= |$rhs#0@0| (LitInt 1)) (=> (and (= $Heap@1 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0) (IndexField (LitInt 8)) ($Box intType (int_2_U |$rhs#0@0|))))) ($IsGoodHeap $Heap@1)) (and (=> (= (ControlFlow 0 144) (- 0 169)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 144) (- 0 168)) (and (<= 0 |index#0@0|) (< |index#0@0| (_System.array.Length $nw@0)))) (=> (and (<= 0 |index#0@0|) (< |index#0@0| (_System.array.Length $nw@0))) (=> (= $index0@0 (IndexField |index#0@0|)) (and (=> (= (ControlFlow 0 144) (- 0 167)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 $index0@0))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 $index0@0)) (=> (and (and (= |$rhs#1@0| (LitInt 3)) (= |$rhs#2@0| (+ |index#0@0| 1))) (and (= $Heap@2 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) $index0@0 ($Box intType (int_2_U |$rhs#1@0|))))) ($IsGoodHeap $Heap@2))) (and (=> (= (ControlFlow 0 144) (- 0 166)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 144) (- 0 165)) (and (<= 0 (LitInt 6)) (< (LitInt 6) (_System.array.Length $nw@0)))) (and (=> (= (ControlFlow 0 144) (- 0 164)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) (IndexField (LitInt 6))))) (LitInt 3))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) (IndexField (LitInt 6))))) (LitInt 3)) (and (=> (= (ControlFlow 0 144) (- 0 163)) (= |$rhs#2@0| (LitInt 7))) (=> (= |$rhs#2@0| (LitInt 7)) (and (=> (= (ControlFlow 0 144) (- 0 162)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 144) (- 0 161)) (and (<= 0 (LitInt 6)) (< (LitInt 6) (_System.array.Length $nw@0)))) (and (=> (= (ControlFlow 0 144) (- 0 160)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 144) (- 0 159)) (and (<= 0 (LitInt 7)) (< (LitInt 7) (_System.array.Length $nw@0)))) (and (=> (= (ControlFlow 0 144) (- 0 158)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 144) (- 0 157)) (and (<= 0 (LitInt 8)) (< (LitInt 8) (_System.array.Length $nw@0)))) (and (=> (= (ControlFlow 0 144) (- 0 156)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 144) (- 0 155)) (and (<= 0 |$rhs#2@0|) (< |$rhs#2@0| (_System.array.Length $nw@0)))) (=> (and (<= 0 |$rhs#2@0|) (< |$rhs#2@0| (_System.array.Length $nw@0))) (=> (= $index1@0 (IndexField |$rhs#2@0|)) (and (=> (= (ControlFlow 0 144) (- 0 154)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 $index1@0))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 $index1@0)) (=> (and (and (= |$rhs#3@0| (+ |$rhs#2@0| 1)) (= |$rhs#4@0| (LitInt 9))) (and (= $Heap@3 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) $index1@0 ($Box intType (int_2_U |$rhs#4@0|))))) ($IsGoodHeap $Heap@3))) (and (=> (= (ControlFlow 0 144) (- 0 153)) (= |$rhs#3@0| (LitInt 8))) (=> (= |$rhs#3@0| (LitInt 8)) (and (=> (= (ControlFlow 0 144) (- 0 152)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 144) (- 0 151)) (and (<= 0 (LitInt 7)) (< (LitInt 7) (_System.array.Length $nw@0)))) (and (=> (= (ControlFlow 0 144) (- 0 150)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@0) (IndexField (LitInt 7))))) (LitInt 9))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@0) (IndexField (LitInt 7))))) (LitInt 9)) (and (=> (= (ControlFlow 0 144) (- 0 149)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 144) (- 0 148)) (and (<= 0 (LitInt 8)) (< (LitInt 8) (_System.array.Length $nw@0)))) (and (=> (= (ControlFlow 0 144) (- 0 147)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@0) (IndexField (LitInt 8))))) (LitInt 1))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@0) (IndexField (LitInt 8))))) (LitInt 1)) (and (=> (= (ControlFlow 0 144) (- 0 146)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 144) (- 0 145)) (and (<= 0 (LitInt 8)) (< (LitInt 8) (_System.array.Length $nw@0)))) (and (=> (= (ControlFlow 0 144) 1) anon32_Then_correct) (=> (= (ControlFlow 0 144) 132) anon32_Else_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is refType |a#0| (Tclass._System.array TInt)) ($IsAlloc refType |a#0| (Tclass._System.array TInt) $Heap)) true) (=> (and (and (and (and (=> |defass#o#0| (and ($Is refType |o#0| Tclass._module.F) ($IsAlloc refType |o#0| Tclass._module.F $Heap))) true) (and (=> |defass#oo#0| (and ($Is refType |oo#0| Tclass._module.F) ($IsAlloc refType |oo#0| Tclass._module.F $Heap))) true)) (and (and (=> |defass#ooo#0| (and ($Is refType |ooo#0| Tclass._module.F) ($IsAlloc refType |ooo#0| Tclass._module.F $Heap))) true) (and (=> |defass#oooo#0| (and ($Is refType |oooo#0| Tclass._module.F) ($IsAlloc refType |oooo#0| Tclass._module.F $Heap))) true))) (and (and (and ($Is refType |aa#0| (Tclass._System.array2 TInt)) ($IsAlloc refType |aa#0| (Tclass._System.array2 TInt) $Heap)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 174) 144)))) anon0_correct)))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
