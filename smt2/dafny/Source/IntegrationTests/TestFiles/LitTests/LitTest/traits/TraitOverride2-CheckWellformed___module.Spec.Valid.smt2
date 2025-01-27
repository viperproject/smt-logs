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
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun class._module.Spec? () T@U)
(declare-fun Tagclass._module.Spec? () T@U)
(declare-fun Tagclass._module.Spec () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$Spec () T@U)
(declare-fun field$done () T@U)
(declare-fun field$hasFailed () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Spec (T@U) T@U)
(declare-fun Tclass._module.Spec? (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun _module.Spec.done () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun _module.Spec.hasFailed () T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.Spec.Repr (T@U T@U) T@U)
(declare-fun _module.Spec.Valid (T@U T@U T@U) Bool)
(declare-fun |_module.Spec.Valid#canCall| (T@U T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tclass._module.Spec?_0 (T@U) T@U)
(declare-fun Tclass._module.Spec_0 (T@U) T@U)
(declare-fun implements$_module.Spec (T@U T@U) Bool)
(declare-fun dtype (T@U) T@U)
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
(assert (distinct TBool TagBool TagSet alloc allocName Tagclass._System.object? Tagclass._System.object class._module.Spec? Tagclass._module.Spec? Tagclass._module.Spec tytagFamily$object tytagFamily$Spec field$done field$hasFailed)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
(assert (= (DeclName alloc) allocName))
(assert (= (Ctor refType) 3))
(assert (forall ((_module.Spec$U T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._module.Spec _module.Spec$U) $h) ($IsAlloc refType |c#0| (Tclass._module.Spec? _module.Spec$U) $h))
 :qid |unknown.0:0|
 :skolemid |500|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.Spec _module.Spec$U) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.Spec? _module.Spec$U) $h))
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
(assert (forall ((_module.Spec$U@@0 T@U) ($h@@0 T@U) ($o T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (or (not (= $o null)) (not true)) ($Is refType $o (Tclass._module.Spec? _module.Spec$U@@0)))) ($Is boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o) _module.Spec.done)) TBool))
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o) _module.Spec.done)) (Tclass._module.Spec? _module.Spec$U@@0))
)))
(assert (forall ((_module.Spec$U@@1 T@U) ($h@@1 T@U) ($o@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (or (not (= $o@@0 null)) (not true)) ($Is refType $o@@0 (Tclass._module.Spec? _module.Spec$U@@1)))) ($Is boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@0) _module.Spec.hasFailed)) TBool))
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@0) _module.Spec.hasFailed)) (Tclass._module.Spec? _module.Spec$U@@1))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@2) ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@2))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@2))
)))
(assert (forall ((_module.Spec$U@@2 T@U) ($o@@1 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@1 (Tclass._module.Spec? _module.Spec$U@@2) $h@@3)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( ($IsAlloc refType $o@@1 (Tclass._module.Spec? _module.Spec$U@@2) $h@@3))
)))
(assert (= (FDim _module.Spec.done) 0))
(assert (= (FieldOfDecl class._module.Spec? field$done) _module.Spec.done))
(assert  (not ($IsGhostField _module.Spec.done)))
(assert (= (FDim _module.Spec.hasFailed) 0))
(assert (= (FieldOfDecl class._module.Spec? field$hasFailed) _module.Spec.hasFailed))
(assert  (not ($IsGhostField _module.Spec.hasFailed)))
(assert (forall (($o@@2 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._System.object? $h@@4)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._System.object? $h@@4))
)))
(assert (forall ((a T@U) (b T@U) ) (! (= (|Set#Subset| a b) (forall ((o T@U) ) (!  (=> (|Set#IsMember| a o) (|Set#IsMember| b o))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a o))
 :pattern ( (|Set#IsMember| b o))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a b))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@2)) x@@2)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T x@@2))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@3 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@3 $f))  (=> (and (or (not (= $o@@3 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@3) |l#2|)))) (or (= $o@@3 |l#3|) (|Set#IsMember| |l#4| ($Box refType $o@@3)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |592|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@3 $f))
)))
(assert ($IsGhostField alloc))
(assert (forall ((_module.Spec$U@@3 T@U) (|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| (Tclass._module.Spec _module.Spec$U@@3))  (and ($Is refType |c#0@@1| (Tclass._module.Spec? _module.Spec$U@@3)) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |499|
 :pattern ( ($Is refType |c#0@@1| (Tclass._module.Spec _module.Spec$U@@3)))
 :pattern ( ($Is refType |c#0@@1| (Tclass._module.Spec? _module.Spec$U@@3)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v@@0) t h) ($IsAlloc T@@0 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@0 v@@0) t h))
)))
(assert (forall ((_module.Spec$U@@4 T@U) ) (!  (and (= (Tag (Tclass._module.Spec? _module.Spec$U@@4)) Tagclass._module.Spec?) (= (TagFamily (Tclass._module.Spec? _module.Spec$U@@4)) tytagFamily$Spec))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( (Tclass._module.Spec? _module.Spec$U@@4))
)))
(assert (forall ((_module.Spec$U@@5 T@U) ) (!  (and (= (Tag (Tclass._module.Spec _module.Spec$U@@5)) Tagclass._module.Spec) (= (TagFamily (Tclass._module.Spec _module.Spec$U@@5)) tytagFamily$Spec))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( (Tclass._module.Spec _module.Spec$U@@5))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@0)) bx@@0) ($Is refType ($Unbox refType bx@@0) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( ($IsBox bx@@0 Tclass._System.object?))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsBox bx@@1 Tclass._System.object))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._System.object)  (and ($Is refType |c#0@@2| Tclass._System.object?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object?))
)))
(assert  (=> (< 0 $FunctionContextHeight) (forall ((_module.Spec$U@@6 T@U) ($o@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) ($Is refType $o@@4 (Tclass._module.Spec? _module.Spec$U@@6))) ($Is SetType (_module.Spec.Repr _module.Spec$U@@6 $o@@4) (TSet Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( (_module.Spec.Repr _module.Spec$U@@6 $o@@4))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module.Spec$U@@7 T@U) ($Heap T@U) (this T@U) ) (!  (=> (or (|_module.Spec.Valid#canCall| _module.Spec$U@@7 $Heap this) (and (< 2 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this (Tclass._module.Spec _module.Spec$U@@7)) ($IsAlloc refType this (Tclass._module.Spec _module.Spec$U@@7) $Heap)))) (or (or (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Spec.done))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Spec.hasFailed)))) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Spec.done)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Spec.hasFailed))))))))) (=> (_module.Spec.Valid _module.Spec$U@@7 $Heap this) (|Set#IsMember| (_module.Spec.Repr _module.Spec$U@@7 this) ($Box refType this))))
 :qid |unknown.0:0|
 :skolemid |495|
 :pattern ( (_module.Spec.Valid _module.Spec$U@@7 $Heap this))
))))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TBool) (and (= ($Box boolType ($Unbox boolType bx@@2)) bx@@2) ($Is boolType ($Unbox boolType bx@@2) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@2 TBool))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@1 T@T) ) (! (= ($IsBox ($Box T@@1 v@@1) t@@0) ($Is T@@1 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@1 v@@1) t@@0))
)))
(assert (forall ((_module.Spec$U@@8 T@U) ($h@@5 T@U) ($o@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@5 null)) (not true)) ($Is refType $o@@5 (Tclass._module.Spec? _module.Spec$U@@8)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@5) alloc)))) ($IsAlloc boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@5) _module.Spec.done)) TBool $h@@5))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@5) _module.Spec.done)) (Tclass._module.Spec? _module.Spec$U@@8))
)))
(assert (forall ((_module.Spec$U@@9 T@U) ($h@@6 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@6 null)) (not true)) ($Is refType $o@@6 (Tclass._module.Spec? _module.Spec$U@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@6) alloc)))) ($IsAlloc boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@6) _module.Spec.hasFailed)) TBool $h@@6))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@6) _module.Spec.hasFailed)) (Tclass._module.Spec? _module.Spec$U@@9))
)))
(assert (forall ((v@@2 T@U) (t0@@2 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@2) h@@0) (forall ((bx@@3 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@3) ($IsAllocBox bx@@3 t0@@2 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@3))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@2) h@@0))
)))
(assert (forall (($o@@7 T@U) ) (! ($Is refType $o@@7 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@7 Tclass._System.object?))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSet (TSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSet t@@2)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@2))
)))
(assert (forall ((_module.Spec$U@@10 T@U) ) (! (= (Tclass._module.Spec?_0 (Tclass._module.Spec? _module.Spec$U@@10)) _module.Spec$U@@10)
 :qid |unknown.0:0|
 :skolemid |480|
 :pattern ( (Tclass._module.Spec? _module.Spec$U@@10))
)))
(assert (forall ((_module.Spec$U@@11 T@U) ) (! (= (Tclass._module.Spec_0 (Tclass._module.Spec _module.Spec$U@@11)) _module.Spec$U@@11)
 :qid |unknown.0:0|
 :skolemid |492|
 :pattern ( (Tclass._module.Spec _module.Spec$U@@11))
)))
(assert (forall ((x@@3 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@3)) x@@3)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@3))
)))
(assert (forall ((_module.Spec$U@@12 T@U) ($o@@8 T@U) ) (! (= ($Is refType $o@@8 (Tclass._module.Spec? _module.Spec$U@@12))  (or (= $o@@8 null) (implements$_module.Spec (dtype $o@@8) _module.Spec$U@@12)))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( ($Is refType $o@@8 (Tclass._module.Spec? _module.Spec$U@@12)))
)))
(assert (forall ((bx@@4 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@4 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@4)) bx@@4) ($Is SetType ($Unbox SetType bx@@4) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@4 (TSet t@@3)))
)))
(assert (forall ((_module.Spec$U@@13 T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass._module.Spec? _module.Spec$U@@13)) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) (Tclass._module.Spec? _module.Spec$U@@13))))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsBox bx@@5 (Tclass._module.Spec? _module.Spec$U@@13)))
)))
(assert (forall ((_module.Spec$U@@14 T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass._module.Spec _module.Spec$U@@14)) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) (Tclass._module.Spec _module.Spec$U@@14))))
 :qid |unknown.0:0|
 :skolemid |493|
 :pattern ( ($IsBox bx@@6 (Tclass._module.Spec _module.Spec$U@@14)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert  (=> (< 0 $FunctionContextHeight) (forall ((_module.Spec$U@@15 T@U) ($h@@7 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@9 null)) (not true)) ($Is refType $o@@9 (Tclass._module.Spec? _module.Spec$U@@15)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@9) alloc)))) ($IsAlloc SetType (_module.Spec.Repr _module.Spec$U@@15 $o@@9) (TSet Tclass._System.object) $h@@7))
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( (_module.Spec.Repr _module.Spec$U@@15 $o@@9) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@9) alloc)))
))))
(assert (forall ((h@@1 T@U) (v@@3 T@U) ) (! ($IsAlloc boolType v@@3 TBool h@@1)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@3 TBool h@@1))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is boolType v@@4 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@4 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun _module.Spec$U@@16 () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun this@@0 () T@U)
(declare-fun |b$reqreads#0@1| () Bool)
(declare-fun |b$reqreads#1@1| () Bool)
(declare-fun |b$reqreads#2@1| () Bool)
(declare-fun |b$reqreads#3@2| () Bool)
(declare-fun |b$reqreads#2@0| () Bool)
(declare-fun |b$reqreads#3@1| () Bool)
(declare-fun |b$reqreads#3@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun |b$reqreads#1@0| () Bool)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.Spec.Valid)
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
 (=> (= (ControlFlow 0 0) 19) (let ((anon12_correct true))
(let ((anon18_Else_correct  (=> (and (=> (_module.Spec.Valid _module.Spec$U@@16 $Heap@@0 this@@0) (|Set#IsMember| (_module.Spec.Repr _module.Spec$U@@16 this@@0) ($Box refType this@@0))) (= (ControlFlow 0 6) 2)) anon12_correct)))
(let ((anon18_Then_correct  (=> ($IsAllocBox ($Box refType this@@0) (Tclass._module.Spec? _module.Spec$U@@16) $Heap@@0) (and (=> (= (ControlFlow 0 3) (- 0 5)) (or (or (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Spec.done))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Spec.hasFailed)))) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Spec.done)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Spec.hasFailed))))))) (=> (or (or (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Spec.done))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Spec.hasFailed)))) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Spec.done)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Spec.hasFailed)))))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (or (= this@@0 this@@0) (and (|Set#Subset| (_module.Spec.Repr _module.Spec$U@@16 this@@0) (_module.Spec.Repr _module.Spec$U@@16 this@@0)) (not (|Set#Subset| (_module.Spec.Repr _module.Spec$U@@16 this@@0) (_module.Spec.Repr _module.Spec$U@@16 this@@0)))))) (=> (or (= this@@0 this@@0) (and (|Set#Subset| (_module.Spec.Repr _module.Spec$U@@16 this@@0) (_module.Spec.Repr _module.Spec$U@@16 this@@0)) (not (|Set#Subset| (_module.Spec.Repr _module.Spec$U@@16 this@@0) (_module.Spec.Repr _module.Spec$U@@16 this@@0))))) (=> (and (and (or (= this@@0 this@@0) (|_module.Spec.Valid#canCall| _module.Spec$U@@16 $Heap@@0 this@@0)) (_module.Spec.Valid _module.Spec$U@@16 $Heap@@0 this@@0)) (and (|Set#IsMember| (_module.Spec.Repr _module.Spec$U@@16 this@@0) ($Box refType this@@0)) (= (ControlFlow 0 3) 2))) anon12_correct))))))))
(let ((anon17_Else_correct true))
(let ((anon8_correct  (and (=> (= (ControlFlow 0 7) (- 0 11)) |b$reqreads#0@1|) (=> |b$reqreads#0@1| (and (=> (= (ControlFlow 0 7) (- 0 10)) |b$reqreads#1@1|) (=> |b$reqreads#1@1| (and (=> (= (ControlFlow 0 7) (- 0 9)) |b$reqreads#2@1|) (=> |b$reqreads#2@1| (and (=> (= (ControlFlow 0 7) (- 0 8)) |b$reqreads#3@2|) (=> |b$reqreads#3@2| (and (and (=> (= (ControlFlow 0 7) 1) anon17_Else_correct) (=> (= (ControlFlow 0 7) 3) anon18_Then_correct)) (=> (= (ControlFlow 0 7) 6) anon18_Else_correct))))))))))))
(let ((anon7_correct  (=> (and (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Spec.done)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Spec.hasFailed))))) (= |b$reqreads#1@1| true)) (and (and (= |b$reqreads#2@1| |b$reqreads#2@0|) (= |b$reqreads#3@2| |b$reqreads#3@1|)) (and (= |b$reqreads#0@1| true) (= (ControlFlow 0 14) 7)))) anon8_correct)))
(let ((anon16_Else_correct  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Spec.done))) (=> (and (= |b$reqreads#3@1| true) (= (ControlFlow 0 16) 14)) anon7_correct))))
(let ((anon16_Then_correct  (=> (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Spec.done)))) (= |b$reqreads#3@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@0 _module.Spec.hasFailed)))) (and (= |b$reqreads#3@1| |b$reqreads#3@0|) (= (ControlFlow 0 15) 14))) anon7_correct)))
(let ((anon14_Else_correct  (=> (and (not (or (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Spec.done))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Spec.hasFailed))))) (= |b$reqreads#2@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@0 _module.Spec.done)))) (and (=> (= (ControlFlow 0 17) 15) anon16_Then_correct) (=> (= (ControlFlow 0 17) 16) anon16_Else_correct)))))
(let ((anon15_Else_correct  (=> (and (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Spec.done)))) (= |b$reqreads#1@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@0 _module.Spec.hasFailed)))) (and (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Spec.hasFailed))) (= |b$reqreads#1@1| |b$reqreads#1@0|))) (and (and (= |b$reqreads#2@1| true) (= |b$reqreads#3@2| true)) (and (= |b$reqreads#0@1| true) (= (ControlFlow 0 13) 7)))) anon8_correct)))
(let ((anon15_Then_correct  (=> (= |b$reqreads#0@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@0 _module.Spec.done))) (=> (and (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Spec.done))) (= |b$reqreads#1@1| true)) (=> (and (and (= |b$reqreads#2@1| true) (= |b$reqreads#3@2| true)) (and (= |b$reqreads#0@1| |b$reqreads#0@0|) (= (ControlFlow 0 12) 7))) anon8_correct)))))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap@@0 alloc this@@0 (_module.Spec.Repr _module.Spec$U@@16 this@@0))) (and (and (=> (= (ControlFlow 0 18) 17) anon14_Else_correct) (=> (= (ControlFlow 0 18) 12) anon15_Then_correct)) (=> (= (ControlFlow 0 18) 13) anon15_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (=> (and (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 (Tclass._module.Spec _module.Spec$U@@16)) ($IsAlloc refType this@@0 (Tclass._module.Spec _module.Spec$U@@16) $Heap@@0))) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 19) 18))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
