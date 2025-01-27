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
(declare-fun allocName () T@U)
(declare-fun Tagclass._System.array? () T@U)
(declare-fun Tagclass._System.array () T@U)
(declare-fun Tagclass._System.array2? () T@U)
(declare-fun Tagclass._System.array2 () T@U)
(declare-fun class._module.C? () T@U)
(declare-fun Tagclass._module.C? () T@U)
(declare-fun Tagclass._module.C () T@U)
(declare-fun tytagFamily$array () T@U)
(declare-fun tytagFamily$array2 () T@U)
(declare-fun tytagFamily$C () T@U)
(declare-fun field$x () T@U)
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
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun Tclass._module.C? () T@U)
(declare-fun Tclass._module.C () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun _module.C.x () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun IndexField (Int) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MultiIndexField (T@U Int) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun IndexField_Inverse (T@U) Int)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
(declare-fun Tclass._System.array2?_0 (T@U) T@U)
(declare-fun Tclass._System.array2_0 (T@U) T@U)
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
(assert (distinct TInt TagInt TagSet alloc allocName Tagclass._System.array? Tagclass._System.array Tagclass._System.array2? Tagclass._System.array2 class._module.C? Tagclass._module.C? Tagclass._module.C tytagFamily$array tytagFamily$array2 tytagFamily$C field$x)
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
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (forall (($o@@2 T@U) ) (! (= ($Is refType $o@@2 Tclass._module.C?)  (or (= $o@@2 null) (= (dtype $o@@2) Tclass._module.C?)))
 :qid |unknown.0:0|
 :skolemid |547|
 :pattern ( ($Is refType $o@@2 Tclass._module.C?))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.C $h@@1) ($IsAlloc refType |c#0@@1| Tclass._module.C? $h@@1))
 :qid |unknown.0:0|
 :skolemid |569|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.C $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.C? $h@@1))
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
(assert (= (FDim _module.C.x) 0))
(assert (= (FieldOfDecl class._module.C? field$x) _module.C.x))
(assert  (not ($IsGhostField _module.C.x)))
(assert (forall (($o@@5 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@5 Tclass._module.C? $h@@4)  (or (= $o@@5 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) alloc)))))
 :qid |unknown.0:0|
 :skolemid |548|
 :pattern ( ($IsAlloc refType $o@@5 Tclass._module.C? $h@@4))
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
(assert (= (Ctor SetType) 7))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((f T@U) (i Int) ) (! (= (FDim (MultiIndexField f i)) (+ (FDim f) 1))
 :qid |DafnyPreludebpl.520:15|
 :skolemid |105|
 :pattern ( (MultiIndexField f i))
)))
(assert ($IsGhostField alloc))
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
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((_System.array2$arg@@4 T@U) ($h@@6 T@U) ($o@@7 T@U) ($i0@@0 Int) ($i1 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) (Tclass._System.array2? _System.array2$arg@@4)))) (and (and (<= 0 $i0@@0) (< $i0@@0 (_System.array2.Length0 $o@@7))) (and (<= 0 $i1) (< $i1 (_System.array2.Length1 $o@@7))))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@7) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@7) (MultiIndexField (IndexField $i0@@0) $i1)) _System.array2$arg@@4 $h@@6))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@7) (MultiIndexField (IndexField $i0@@0) $i1)) (Tclass._System.array2? _System.array2$arg@@4))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@1) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert  (and (forall ((t0@@1 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@1 t1@@0 t2 (MapType1Store t0@@1 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) (|l#5| T@U) ($o@@8 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3| |l#4| |l#5|) $o@@8 $f))  (=> (and (or (not (= $o@@8 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@8) |l#2|)))) (or (or (= $o@@8 |l#3|) (= $o@@8 |l#4|)) (= $o@@8 |l#5|))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |570|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3| |l#4| |l#5|) $o@@8 $f))
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
(assert (forall (($h@@7 T@U) ($o@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) Tclass._module.C?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@9) _module.C.x)) Tclass._module.C?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |549|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@9) _module.C.x)))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.C?) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._module.C?)))
 :qid |unknown.0:0|
 :skolemid |546|
 :pattern ( ($IsBox bx@@1 Tclass._module.C?))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.C) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._module.C)))
 :qid |unknown.0:0|
 :skolemid |551|
 :pattern ( ($IsBox bx@@2 Tclass._module.C))
)))
(assert (forall ((_System.array$arg@@6 T@U) ($o@@10 T@U) ) (! (= ($Is refType $o@@10 (Tclass._System.array? _System.array$arg@@6))  (or (= $o@@10 null) (= (dtype $o@@10) (Tclass._System.array? _System.array$arg@@6))))
 :qid |unknown.0:0|
 :skolemid |357|
 :pattern ( ($Is refType $o@@10 (Tclass._System.array? _System.array$arg@@6)))
)))
(assert (forall ((_System.array2$arg@@7 T@U) ($o@@11 T@U) ) (! (= ($Is refType $o@@11 (Tclass._System.array2? _System.array2$arg@@7))  (or (= $o@@11 null) (= (dtype $o@@11) (Tclass._System.array2? _System.array2$arg@@7))))
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( ($Is refType $o@@11 (Tclass._System.array2? _System.array2$arg@@7)))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.C)  (and ($Is refType |c#0@@4| Tclass._module.C?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |568|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.C))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.C?))
)))
(assert (forall (($h@@8 T@U) ($o@@12 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@12 null)) (not true)) (= (dtype $o@@12) Tclass._module.C?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@12) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@12) _module.C.x)) Tclass._module.C? $h@@8))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |550|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@12) _module.C.x)))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((_System.array2$arg@@8 T@U) ($h@@9 T@U) ($o@@13 T@U) ($i0@@1 Int) ($i1@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@13 null)) (not true)) (= (dtype $o@@13) (Tclass._System.array2? _System.array2$arg@@8)))) (and (and (<= 0 $i0@@1) (< $i0@@1 (_System.array2.Length0 $o@@13))) (and (<= 0 $i1@@0) (< $i1@@0 (_System.array2.Length1 $o@@13))))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@13) (MultiIndexField (IndexField $i0@@1) $i1@@0)) _System.array2$arg@@8))
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@13) (MultiIndexField (IndexField $i0@@1) $i1@@0)) (Tclass._System.array2? _System.array2$arg@@8))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TInt) (and (= ($Box intType ($Unbox intType bx@@3)) bx@@3) ($Is intType ($Unbox intType bx@@3) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@3 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((o@@1 T@U) ) (! (<= 0 (_System.array.Length o@@1))
 :qid |DafnyPreludebpl.571:15|
 :skolemid |112|
 :pattern ( (_System.array.Length o@@1))
)))
(assert (forall ((o@@2 T@U) ) (! (<= 0 (_System.array2.Length0 o@@2))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( (_System.array2.Length0 o@@2))
)))
(assert (forall ((o@@3 T@U) ) (! (<= 0 (_System.array2.Length1 o@@3))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( (_System.array2.Length1 o@@3))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3) (forall ((bx@@4 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@4) ($IsAllocBox bx@@4 t0@@2 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@4))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3))
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
(assert (forall ((_System.array$arg@@9 T@U) ($h@@10 T@U) ($o@@14 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@14 null)) (not true)) (= (dtype $o@@14) (Tclass._System.array? _System.array$arg@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@14) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@14)) TInt $h@@10))
 :qid |unknown.0:0|
 :skolemid |360|
 :pattern ( (_System.array.Length $o@@14) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@14) alloc)) (Tclass._System.array? _System.array$arg@@9))
)))
(assert (forall ((_System.array2$arg@@11 T@U) ($h@@11 T@U) ($o@@15 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@15 null)) (not true)) (= (dtype $o@@15) (Tclass._System.array2? _System.array2$arg@@11)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@15) alloc)))) ($IsAlloc intType (int_2_U (_System.array2.Length0 $o@@15)) TInt $h@@11))
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( (_System.array2.Length0 $o@@15) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@15) alloc)) (Tclass._System.array2? _System.array2$arg@@11))
)))
(assert (forall ((_System.array2$arg@@12 T@U) ($h@@12 T@U) ($o@@16 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@16 null)) (not true)) (= (dtype $o@@16) (Tclass._System.array2? _System.array2$arg@@12)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@16) alloc)))) ($IsAlloc intType (int_2_U (_System.array2.Length1 $o@@16)) TInt $h@@12))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( (_System.array2.Length1 $o@@16) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@16) alloc)) (Tclass._System.array2? _System.array2$arg@@12))
)))
(assert (forall ((_System.array$arg@@10 T@U) ($h@@13 T@U) ($o@@17 T@U) ($i0@@2 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@17 null)) (not true)) (= (dtype $o@@17) (Tclass._System.array? _System.array$arg@@10)))) (and (<= 0 $i0@@2) (< $i0@@2 (_System.array.Length $o@@17)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@17) (IndexField $i0@@2)) _System.array$arg@@10))
 :qid |unknown.0:0|
 :skolemid |355|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@17) (IndexField $i0@@2)) (Tclass._System.array? _System.array$arg@@10))
)))
(assert (forall ((f@@0 T@U) (i@@2 Int) ) (!  (and (= (MultiIndexField_Inverse0 (MultiIndexField f@@0 i@@2)) f@@0) (= (MultiIndexField_Inverse1 (MultiIndexField f@@0 i@@2)) i@@2))
 :qid |DafnyPreludebpl.523:15|
 :skolemid |106|
 :pattern ( (MultiIndexField f@@0 i@@2))
)))
(assert (forall ((bx@@5 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@5 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@5)) bx@@5) ($Is SetType ($Unbox SetType bx@@5) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@5 (TSet t@@5)))
)))
(assert (forall ((_System.array$arg@@11 T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass._System.array? _System.array$arg@@11)) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) (Tclass._System.array? _System.array$arg@@11))))
 :qid |unknown.0:0|
 :skolemid |354|
 :pattern ( ($IsBox bx@@6 (Tclass._System.array? _System.array$arg@@11)))
)))
(assert (forall ((_System.array$arg@@12 T@U) (bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 (Tclass._System.array _System.array$arg@@12)) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) (Tclass._System.array _System.array$arg@@12))))
 :qid |unknown.0:0|
 :skolemid |363|
 :pattern ( ($IsBox bx@@7 (Tclass._System.array _System.array$arg@@12)))
)))
(assert (forall ((_System.array2$arg@@13 T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass._System.array2? _System.array2$arg@@13)) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) (Tclass._System.array2? _System.array2$arg@@13))))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsBox bx@@8 (Tclass._System.array2? _System.array2$arg@@13)))
)))
(assert (forall ((_System.array2$arg@@14 T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass._System.array2 _System.array2$arg@@14)) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) (Tclass._System.array2 _System.array2$arg@@14))))
 :qid |unknown.0:0|
 :skolemid |494|
 :pattern ( ($IsBox bx@@9 (Tclass._System.array2 _System.array2$arg@@14)))
)))
(assert (forall ((h@@4 T@U) (r T@U) (f@@1 T@U) (x@@6 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f@@1 x@@6))) ($HeapSucc h@@4 (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f@@1 x@@6))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f@@1 x@@6)))
)))
(assert (= (Tag Tclass._module.C?) Tagclass._module.C?))
(assert (= (TagFamily Tclass._module.C?) tytagFamily$C))
(assert (= (Tag Tclass._module.C) Tagclass._module.C))
(assert (= (TagFamily Tclass._module.C) tytagFamily$C))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@1 b@@1) (forall ((o@@4 T@U) ) (! (= (|Set#IsMember| a@@1 o@@4) (|Set#IsMember| b@@1 o@@4))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@1 o@@4))
 :pattern ( (|Set#IsMember| b@@1 o@@4))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@1 b@@1))
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
(assert (forall ((h@@5 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@5)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@5))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |b#0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $nw@6 () T@U)
(declare-fun $Heap@20 () T@U)
(declare-fun $Heap@21 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap@22 () T@U)
(declare-fun |a#0| () T@U)
(declare-fun $Heap@16 () T@U)
(declare-fun $nw@5 () T@U)
(declare-fun $Heap@17 () T@U)
(declare-fun $Heap@18 () T@U)
(declare-fun $Heap@19 () T@U)
(declare-fun |$rhs#2_1@0| () T@U)
(declare-fun |k#1_0@0| () T@U)
(declare-fun $Heap@9 () T@U)
(declare-fun this () T@U)
(declare-fun |kx#1_0@0| () T@U)
(declare-fun $obj0@1 () T@U)
(declare-fun $nw@4 () T@U)
(declare-fun $Heap@13 () T@U)
(declare-fun $Heap@14 () T@U)
(declare-fun $Heap@15 () T@U)
(declare-fun |t#1_0@0| () T@U)
(declare-fun |k#0_0@0| () T@U)
(declare-fun |kx#0_0@0| () T@U)
(declare-fun $obj0@0 () T@U)
(declare-fun $nw@3 () T@U)
(declare-fun $Heap@10 () T@U)
(declare-fun $Heap@11 () T@U)
(declare-fun $Heap@12 () T@U)
(declare-fun $Heap () T@U)
(declare-fun $nw@0 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $nw@1 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun |$rhs#2@0| () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun |c#0@0| () T@U)
(declare-fun $Heap@6 () T@U)
(declare-fun $nw@2 () T@U)
(declare-fun $Heap@7 () T@U)
(declare-fun |c##0@0| () T@U)
(declare-fun $Heap@8 () T@U)
(declare-fun |S#0| () T@U)
(declare-fun |$rhs#2| () T@U)
(declare-fun |c#0@@5| () T@U)
(declare-fun |k#0_0| () T@U)
(declare-fun |kx#0_0| () T@U)
(declare-fun |k#1_0| () T@U)
(declare-fun |kx#1_0| () T@U)
(declare-fun |t#1_0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.C.M)
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
 (=> (= (ControlFlow 0 0) 52) (let ((anon14_Else_correct true))
(let ((anon14_Then_correct  (=> (and (<= (LitInt 10) (_System.array2.Length0 |b#0|)) (<= (LitInt 20) (_System.array2.Length1 |b#0|))) (and (=> (= (ControlFlow 0 2) (- 0 9)) (or (not (= |b#0| null)) (not true))) (=> (or (not (= |b#0| null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 8)) (and (<= 0 (LitInt 2)) (< (LitInt 2) (_System.array2.Length0 |b#0|)))) (=> (and (<= 0 (LitInt 2)) (< (LitInt 2) (_System.array2.Length0 |b#0|))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (and (<= 0 (LitInt 14)) (< (LitInt 14) (_System.array2.Length1 |b#0|)))) (=> (and (<= 0 (LitInt 14)) (< (LitInt 14) (_System.array2.Length1 |b#0|))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |b#0| (MultiIndexField (IndexField (LitInt 2)) (LitInt 14))))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |b#0| (MultiIndexField (IndexField (LitInt 2)) (LitInt 14)))) (=> (and (and (and (or (not (= $nw@6 null)) (not true)) ($Is refType $nw@6 Tclass._module.C?)) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 $nw@6) alloc)))) (= $Heap@21 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@20 $nw@6 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 $nw@6) alloc ($Box boolType (bool_2_U true))))))) (and (and ($IsGoodHeap $Heap@21) ($IsHeapAnchor $Heap@21)) (and (= $Heap@22 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@21 |b#0| (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 |b#0|) (MultiIndexField (IndexField (LitInt 2)) (LitInt 14)) ($Box refType $nw@6)))) ($IsGoodHeap $Heap@22)))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (or (not (= |b#0| null)) (not true))) (=> (or (not (= |b#0| null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (and (<= 0 (LitInt 3)) (< (LitInt 3) (_System.array2.Length0 |b#0|)))) (=> (and (<= 0 (LitInt 3)) (< (LitInt 3) (_System.array2.Length0 |b#0|))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (and (<= 0 (LitInt 11)) (< (LitInt 11) (_System.array2.Length1 |b#0|)))) (=> (and (<= 0 (LitInt 11)) (< (LitInt 11) (_System.array2.Length1 |b#0|))) (=> (= (ControlFlow 0 2) (- 0 1)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |b#0| (MultiIndexField (IndexField (LitInt 3)) (LitInt 11)))))))))))))))))))))))
(let ((anon8_correct  (and (=> (= (ControlFlow 0 11) 2) anon14_Then_correct) (=> (= (ControlFlow 0 11) 10) anon14_Else_correct))))
(let ((anon13_Else_correct  (=> (and (< (_System.array2.Length0 |b#0|) (LitInt 10)) (= (ControlFlow 0 14) 11)) anon8_correct)))
(let ((anon13_Then_correct  (=> (<= (LitInt 10) (_System.array2.Length0 |b#0|)) (and (=> (= (ControlFlow 0 12) (- 0 13)) (or (not (= |b#0| null)) (not true))) (=> (or (not (= |b#0| null)) (not true)) (=> (= (ControlFlow 0 12) 11) anon8_correct))))))
(let ((anon6_correct  (and (=> (= (ControlFlow 0 15) (- 0 16)) (or (not (= |b#0| null)) (not true))) (=> (or (not (= |b#0| null)) (not true)) (and (=> (= (ControlFlow 0 15) 12) anon13_Then_correct) (=> (= (ControlFlow 0 15) 14) anon13_Else_correct))))))
(let ((anon12_Else_correct  (=> (< (_System.array.Length |a#0|) (LitInt 10)) (=> (and (= $Heap@20 $Heap@16) (= (ControlFlow 0 24) 15)) anon6_correct))))
(let ((anon12_Then_correct  (=> (<= (LitInt 10) (_System.array.Length |a#0|)) (and (=> (= (ControlFlow 0 17) (- 0 23)) (or (not (= |a#0| null)) (not true))) (=> (or (not (= |a#0| null)) (not true)) (and (=> (= (ControlFlow 0 17) (- 0 22)) (and (<= 0 (LitInt 2)) (< (LitInt 2) (_System.array.Length |a#0|)))) (=> (and (<= 0 (LitInt 2)) (< (LitInt 2) (_System.array.Length |a#0|))) (and (=> (= (ControlFlow 0 17) (- 0 21)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |a#0| (IndexField (LitInt 2))))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |a#0| (IndexField (LitInt 2)))) (=> (and (and (and (or (not (= $nw@5 null)) (not true)) ($Is refType $nw@5 Tclass._module.C?)) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 $nw@5) alloc)))) (= $Heap@17 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@16 $nw@5 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 $nw@5) alloc ($Box boolType (bool_2_U true))))))) (and (and ($IsGoodHeap $Heap@17) ($IsHeapAnchor $Heap@17)) (and (= $Heap@18 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@17 |a#0| (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 |a#0|) (IndexField (LitInt 2)) ($Box refType $nw@5)))) ($IsGoodHeap $Heap@18)))) (and (=> (= (ControlFlow 0 17) (- 0 20)) (or (not (= |a#0| null)) (not true))) (=> (or (not (= |a#0| null)) (not true)) (and (=> (= (ControlFlow 0 17) (- 0 19)) (and (<= 0 (LitInt 3)) (< (LitInt 3) (_System.array.Length |a#0|)))) (=> (and (<= 0 (LitInt 3)) (< (LitInt 3) (_System.array.Length |a#0|))) (and (=> (= (ControlFlow 0 17) (- 0 18)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |a#0| (IndexField (LitInt 3))))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |a#0| (IndexField (LitInt 3)))) (=> (and (and (= $Heap@19 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@18 |a#0| (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 |a#0|) (IndexField (LitInt 3)) ($Box refType |$rhs#2_1@0|)))) ($IsGoodHeap $Heap@19)) (and (= $Heap@20 $Heap@19) (= (ControlFlow 0 17) 15))) anon6_correct)))))))))))))))))
(let ((anon3_correct  (and (=> (= (ControlFlow 0 25) (- 0 26)) (or (not (= |a#0| null)) (not true))) (=> (or (not (= |a#0| null)) (not true)) (and (=> (= (ControlFlow 0 25) 17) anon12_Then_correct) (=> (= (ControlFlow 0 25) 24) anon12_Else_correct))))))
(let ((anon11_Else_correct  (=> (= |k#1_0@0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this) _module.C.x))) (and (=> (= (ControlFlow 0 38) (- 0 43)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this) _module.C.x)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this) _module.C.x)) null)) (not true)) (=> (= |kx#1_0@0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this) _module.C.x))) _module.C.x))) (and (=> (= (ControlFlow 0 38) (- 0 42)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this) _module.C.x)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this) _module.C.x)) null)) (not true)) (=> (= $obj0@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this) _module.C.x))) (and (=> (= (ControlFlow 0 38) (- 0 41)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $obj0@1 _module.C.x))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $obj0@1 _module.C.x)) (=> (and (or (not (= $nw@4 null)) (not true)) ($Is refType $nw@4 Tclass._module.C?)) (=> (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $nw@4) alloc)))) (= $Heap@13 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@9 $nw@4 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $nw@4) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@13) ($IsHeapAnchor $Heap@13))) (and (=> (= (ControlFlow 0 38) (- 0 40)) (forall (($o@@18 T@U) ($f@@0 T@U) ) (!  (=> (and (and (or (not (= $o@@18 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@18) alloc)))) (= $o@@18 this)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@18 $f@@0)))
 :qid |AdvancedLHSdfy.33:25|
 :skolemid |558|
))) (=> (forall (($o@@19 T@U) ($f@@1 T@U) ) (!  (=> (and (and (or (not (= $o@@19 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@19) alloc)))) (= $o@@19 this)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@19 $f@@1)))
 :qid |AdvancedLHSdfy.33:25|
 :skolemid |558|
)) (=> (and (and (and ($IsGoodHeap $Heap@14) ($IsHeapAnchor $Heap@14)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 this) _module.C.x)) null)) (and (and (forall (($o@@20 T@U) ) (!  (=> (and (or (not (= $o@@20 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@20) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $o@@20) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@20)) (= $o@@20 this)))
 :qid |AdvancedLHSdfy.53:10|
 :skolemid |566|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $o@@20))
)) ($HeapSucc $Heap@13 $Heap@14)) (and (= $Heap@15 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@14 $obj0@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $obj0@1) _module.C.x ($Box refType $nw@4)))) ($IsGoodHeap $Heap@15)))) (and (=> (= (ControlFlow 0 38) (- 0 39)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 this) _module.C.x)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 this) _module.C.x)) null)) (not true)) (=> (= |t#1_0@0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 this) _module.C.x))) _module.C.x))) (=> (and (= $Heap@16 $Heap@15) (= (ControlFlow 0 38) 25)) anon3_correct))))))))))))))))))))
(let ((anon11_Then_correct  (=> (= |k#0_0@0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this) _module.C.x))) (and (=> (= (ControlFlow 0 27) (- 0 37)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this) _module.C.x)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this) _module.C.x)) null)) (not true)) (=> (= |kx#0_0@0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this) _module.C.x))) _module.C.x))) (and (=> (= (ControlFlow 0 27) (- 0 36)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this) _module.C.x)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this) _module.C.x)) null)) (not true)) (=> (= $obj0@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this) _module.C.x))) (and (=> (= (ControlFlow 0 27) (- 0 35)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $obj0@0 _module.C.x))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $obj0@0 _module.C.x)) (=> (and (or (not (= $nw@3 null)) (not true)) ($Is refType $nw@3 Tclass._module.C?)) (=> (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $nw@3) alloc)))) (= $Heap@10 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@9 $nw@3 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $nw@3) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@10) ($IsHeapAnchor $Heap@10))) (and (=> (= (ControlFlow 0 27) (- 0 34)) (forall (($o@@21 T@U) ($f@@2 T@U) ) (!  (=> (and (and (or (not (= $o@@21 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@21) alloc)))) (= $o@@21 this)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@21 $f@@2)))
 :qid |AdvancedLHSdfy.25:25|
 :skolemid |557|
))) (=> (forall (($o@@22 T@U) ($f@@3 T@U) ) (!  (=> (and (and (or (not (= $o@@22 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@22) alloc)))) (= $o@@22 this)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@22 $f@@3)))
 :qid |AdvancedLHSdfy.25:25|
 :skolemid |557|
)) (=> (and (and (and ($IsGoodHeap $Heap@11) ($IsHeapAnchor $Heap@11)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 this) _module.C.x)) null)) (and (and (forall (($o@@23 T@U) ) (!  (=> (and (or (not (= $o@@23 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@23) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@23) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@23)) (= $o@@23 this)))
 :qid |AdvancedLHSdfy.53:10|
 :skolemid |566|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@23))
)) ($HeapSucc $Heap@10 $Heap@11)) (and (= $Heap@12 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@11 $obj0@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $obj0@0) _module.C.x ($Box refType $nw@3)))) ($IsGoodHeap $Heap@12)))) (and (=> (= (ControlFlow 0 27) (- 0 33)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 this) _module.C.x)) null)) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 this) _module.C.x)) null) (and (=> (= (ControlFlow 0 27) (- 0 32)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 this) _module.C.x)) |k#0_0@0|)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 this) _module.C.x)) |k#0_0@0|)) (not true)) (and (=> (= (ControlFlow 0 27) (- 0 31)) (or (not (= |k#0_0@0| null)) (not true))) (and (=> (= (ControlFlow 0 27) (- 0 30)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |k#0_0@0|) _module.C.x)) |kx#0_0@0|)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |k#0_0@0|) _module.C.x)) |kx#0_0@0|)) (not true)) (and (=> (= (ControlFlow 0 27) (- 0 29)) (or (not (= |k#0_0@0| null)) (not true))) (and (=> (= (ControlFlow 0 27) (- 0 28)) (and (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |k#0_0@0|) _module.C.x)) null)) (not true)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |k#0_0@0|) _module.C.x))) alloc)))))) (=> (and (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |k#0_0@0|) _module.C.x)) null)) (not true)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |k#0_0@0|) _module.C.x))) alloc))))) (=> (and (= $Heap@16 $Heap@12) (= (ControlFlow 0 27) 25)) anon3_correct)))))))))))))))))))))))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc this |a#0| |b#0|)) (and (=> (= (ControlFlow 0 44) (- 0 51)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this _module.C.x))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this _module.C.x)) (=> (and (and (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 Tclass._module.C?)) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc)))) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc ($Box boolType (bool_2_U true))))))) (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap@1 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@0 this (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this) _module.C.x ($Box refType $nw@0)))) ($IsGoodHeap $Heap@1)))) (and (=> (= (ControlFlow 0 44) (- 0 50)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this _module.C.x))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this _module.C.x)) (=> (and (and (or (not (= $nw@1 null)) (not true)) ($Is refType $nw@1 Tclass._module.C?)) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@1) alloc)))) (= $Heap@2 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@1 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@1) alloc ($Box boolType (bool_2_U true))))))) (=> (and (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3))) (and (and (forall (($o@@24 T@U) ) (!  (=> (and (or (not (= $o@@24 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@24) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@24) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@24)))
 :qid |AdvancedLHSdfy.47:10|
 :skolemid |560|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@24))
)) ($HeapSucc $Heap@2 $Heap@3)) (and (= $Heap@4 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@3 this (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this) _module.C.x ($Box refType $nw@1)))) ($IsGoodHeap $Heap@4)))) (and (=> (= (ControlFlow 0 44) (- 0 49)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this _module.C.x))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this _module.C.x)) (=> (and (and ($Is refType |$rhs#2@0| Tclass._module.C?) (= $Heap@5 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@4 this (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this) _module.C.x ($Box refType |$rhs#2@0|))))) (and ($IsGoodHeap $Heap@5) (= |c#0@0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this) _module.C.x))))) (and (=> (= (ControlFlow 0 44) (- 0 48)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this _module.C.x))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this _module.C.x)) (=> (and (= $Heap@6 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@5 this (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this) _module.C.x ($Box refType null)))) ($IsGoodHeap $Heap@6)) (and (=> (= (ControlFlow 0 44) (- 0 47)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this _module.C.x))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this _module.C.x)) (=> (and (and (and (or (not (= $nw@2 null)) (not true)) ($Is refType $nw@2 Tclass._module.C?)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $nw@2) alloc))))) (and (and (= $Heap@7 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@6 $nw@2 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $nw@2) alloc ($Box boolType (bool_2_U true))))) ($IsGoodHeap $Heap@7)) (and ($IsHeapAnchor $Heap@7) (= |c##0@0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this) _module.C.x)))))) (and (=> (= (ControlFlow 0 44) (- 0 46)) (= |c##0@0| null)) (=> (= |c##0@0| null) (=> (and ($IsGoodHeap $Heap@8) ($IsHeapAnchor $Heap@8)) (=> (and (and (forall (($o@@25 T@U) ) (!  (=> (and (or (not (= $o@@25 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@25) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@25) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@25)))
 :qid |AdvancedLHSdfy.48:10|
 :skolemid |563|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@25))
)) ($HeapSucc $Heap@7 $Heap@8)) (and (= $Heap@9 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@8 this (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this) _module.C.x ($Box refType $nw@2)))) ($IsGoodHeap $Heap@9))) (and (=> (= (ControlFlow 0 44) (- 0 45)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this) _module.C.x)) |c#0@0|)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this) _module.C.x)) |c#0@0|)) (not true)) (and (=> (= (ControlFlow 0 44) 27) anon11_Then_correct) (=> (= (ControlFlow 0 44) 38) anon11_Else_correct)))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.C) ($IsAlloc refType this Tclass._module.C $Heap)))) (and (and ($Is SetType |S#0| (TSet Tclass._module.C)) ($IsAlloc SetType |S#0| (TSet Tclass._module.C) $Heap)) (and ($Is refType |a#0| (Tclass._System.array Tclass._module.C)) ($IsAlloc refType |a#0| (Tclass._System.array Tclass._module.C) $Heap)))) (and (and (and ($Is refType |b#0| (Tclass._System.array2 Tclass._module.C)) ($IsAlloc refType |b#0| (Tclass._System.array2 Tclass._module.C) $Heap)) (and ($Is refType |$rhs#2| Tclass._module.C?) true)) (and (and ($Is refType |c#0@@5| Tclass._module.C?) ($IsAlloc refType |c#0@@5| Tclass._module.C? $Heap)) true))) (=> (and (and (and (and (and ($Is refType |k#0_0| Tclass._module.C?) ($IsAlloc refType |k#0_0| Tclass._module.C? $Heap)) true) (and (and ($Is refType |kx#0_0| Tclass._module.C?) ($IsAlloc refType |kx#0_0| Tclass._module.C? $Heap)) true)) (and (and (and ($Is refType |k#1_0| Tclass._module.C?) ($IsAlloc refType |k#1_0| Tclass._module.C? $Heap)) true) (and (and ($Is refType |kx#1_0| Tclass._module.C?) ($IsAlloc refType |kx#1_0| Tclass._module.C? $Heap)) true))) (and (and (and (and ($Is refType |t#1_0| Tclass._module.C?) ($IsAlloc refType |t#1_0| Tclass._module.C? $Heap)) true) (= 2 $FunctionContextHeight)) (and (not (|Set#Equal| |S#0| |Set#Empty|)) (= (ControlFlow 0 52) 44)))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 38) (- 39))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
