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
(declare-fun class._module.Modifies? () T@U)
(declare-fun Tagclass._module.Modifies? () T@U)
(declare-fun Tagclass._module.Modifies () T@U)
(declare-fun tytagFamily$Modifies () T@U)
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
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Modifies? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.Modifies () T@U)
(declare-fun _module.Modifies.x () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#30| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
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
(assert (distinct TInt TagInt TagSet alloc allocName class._module.Modifies? Tagclass._module.Modifies? Tagclass._module.Modifies tytagFamily$Modifies field$x)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |2763|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |2764|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@1 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |2762|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |2759|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.Modifies?)  (or (= $o null) (= (dtype $o) Tclass._module.Modifies?)))
 :qid |unknown.0:0|
 :skolemid |3327|
 :pattern ( ($Is refType $o Tclass._module.Modifies?))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Modifies $h) ($IsAlloc refType |c#0| Tclass._module.Modifies? $h))
 :qid |unknown.0:0|
 :skolemid |3391|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Modifies $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Modifies? $h))
)))
(assert (= (FDim _module.Modifies.x) 0))
(assert (= (FieldOfDecl class._module.Modifies? field$x) _module.Modifies.x))
(assert  (not ($IsGhostField _module.Modifies.x)))
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
(assert (forall (($o@@0 T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._module.Modifies? $h@@0)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3328|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.Modifies? $h@@0))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@1 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@1) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |2752|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |2753|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@5 Int) ) (! (= (LitInt x@@5) x@@5)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |2651|
 :pattern ( (LitInt x@@5))
)))
(assert (forall ((x@@6 T@U) (T T@T) ) (! (= (Lit T x@@6) x@@6)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |2649|
 :pattern ( (Lit T x@@6))
)))
(assert (forall ((a@@2 T@U) (b T@U) ) (! (= (|Set#Subset| a@@2 b) (forall ((o@@2 T@U) ) (!  (=> (|Set#IsMember| a@@2 o@@2) (|Set#IsMember| b o@@2))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |2780|
 :pattern ( (|Set#IsMember| a@@2 o@@2))
 :pattern ( (|Set#IsMember| b o@@2))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |2781|
 :pattern ( (|Set#Subset| a@@2 b))
)))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2660|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert (= (Ctor SetType) 7))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |2680|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |2681|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h@@1 T@U) ($o@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@1) (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) Tclass._module.Modifies?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) _module.Modifies.x)) TInt $h@@1))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3330|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) _module.Modifies.x)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |2673|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@1) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |2745|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |2744|
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@2 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#30| |l#0| |l#1| |l#2| |l#3|) $o@@2 $f))  (=> (and (or (not (= $o@@2 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@2) |l#2|)))) (= $o@@2 |l#3|)))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3851|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#30| |l#0| |l#1| |l#2| |l#3|) $o@@2 $f))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.Modifies?) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._module.Modifies?)))
 :qid |unknown.0:0|
 :skolemid |3326|
 :pattern ( ($IsBox bx@@1 Tclass._module.Modifies?))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.Modifies) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._module.Modifies)))
 :qid |unknown.0:0|
 :skolemid |3333|
 :pattern ( ($IsBox bx@@2 Tclass._module.Modifies))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._module.Modifies)  (and ($Is refType |c#0@@0| Tclass._module.Modifies?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3390|
 :pattern ( ($Is refType |c#0@@0| Tclass._module.Modifies))
 :pattern ( ($Is refType |c#0@@0| Tclass._module.Modifies?))
)))
(assert (forall ((a@@3 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@3 c)) (not true)) (=> (and ($HeapSucc a@@3 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@3 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |2751|
 :pattern ( ($HeapSucc a@@3 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |2741|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TInt) (and (= ($Box intType ($Unbox intType bx@@3)) bx@@3) ($Is intType ($Unbox intType bx@@3) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |2661|
 :pattern ( ($IsBox bx@@3 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |2672|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3) (forall ((bx@@4 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@4) ($IsAllocBox bx@@4 t0@@2 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |2701|
 :pattern ( (|Set#IsMember| v@@3 bx@@4))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |2702|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |2635|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2636|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2659|
 :pattern ( ($Box T@@4 x@@8))
)))
(assert (forall (($h@@2 T@U) ($o@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) Tclass._module.Modifies?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@3) _module.Modifies.x)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3329|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@3) _module.Modifies.x)))
)))
(assert (forall ((bx@@5 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@5 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@5)) bx@@5) ($Is SetType ($Unbox SetType bx@@5) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |2666|
 :pattern ( ($IsBox bx@@5 (TSet t@@5)))
)))
(assert (= (Tag Tclass._module.Modifies?) Tagclass._module.Modifies?))
(assert (= (TagFamily Tclass._module.Modifies?) tytagFamily$Modifies))
(assert (= (Tag Tclass._module.Modifies) Tagclass._module.Modifies))
(assert (= (TagFamily Tclass._module.Modifies) tytagFamily$Modifies))
(assert (forall ((x@@9 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@9))) (Lit BoxType ($Box intType (int_2_U x@@9))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |2652|
 :pattern ( ($Box intType (int_2_U (LitInt x@@9))))
)))
(assert (forall ((x@@10 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@10)) (Lit BoxType ($Box T@@5 x@@10)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |2650|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@10)))
)))
(assert (forall ((h@@4 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |2695|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@4))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |2674|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |s#0| () T@U)
(declare-fun |m#0_0@0| () T@U)
(declare-fun this () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |m#0_1@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun |m#1_0_0@0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |m#1_0_1@0| () T@U)
(declare-fun |m#2_0@0| () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |m#3_0@0| () T@U)
(declare-fun |m#3_1@0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap@2 () T@U)
(declare-fun |m#0@0| () Int)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.Modifies.G)
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
 (=> (= (ControlFlow 0 0) 34) (let ((anon3_correct  (=> (and (|Set#IsMember| |s#0| ($Box refType |m#0_0@0|)) (= |m#0_0@0| this)) (and (=> (= (ControlFlow 0 26) (- 0 29)) (or (not (= |m#0_0@0| null)) (not true))) (and (=> (= (ControlFlow 0 26) (- 0 28)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |m#0_0@0| _module.Modifies.x))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |m#0_0@0| _module.Modifies.x)) (and (=> (= (ControlFlow 0 26) (- 0 27)) (or (not (= |m#0_0@0| null)) (not true))) (=> (and ($Is refType |m#0_1@0| Tclass._module.Modifies) ($IsAlloc refType |m#0_1@0| Tclass._module.Modifies $Heap)) (=> (and (and (|Set#IsMember| |s#0| ($Box refType |m#0_1@0|)) (= |m#0_1@0| this)) (and (or (not (= |m#0_0@0| |m#0_1@0|)) (not true)) (= (ControlFlow 0 26) (- 0 25)))) (or (or (or (not (= |m#0_0@0| |m#0_1@0|)) (not true)) (or (not (= _module.Modifies.x _module.Modifies.x)) (not true))) (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0_0@0|) _module.Modifies.x))) 1) (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0_1@0|) _module.Modifies.x))) 1))))))))))))
(let ((anon20_Else_correct  (=> (and (not (|Set#IsMember| |s#0| ($Box refType |m#0_0@0|))) (= (ControlFlow 0 31) 26)) anon3_correct)))
(let ((anon20_Then_correct  (=> (and (|Set#IsMember| |s#0| ($Box refType |m#0_0@0|)) (= (ControlFlow 0 30) 26)) anon3_correct)))
(let ((anon19_Then_correct  (=> (and ($Is refType |m#0_0@0| Tclass._module.Modifies) ($IsAlloc refType |m#0_0@0| Tclass._module.Modifies $Heap)) (and (=> (= (ControlFlow 0 32) 30) anon20_Then_correct) (=> (= (ControlFlow 0 32) 31) anon20_Else_correct)))))
(let ((anon22_Then_correct  (=> (and (and ($Is refType |m#1_0_0@0| Tclass._module.Modifies) ($IsAlloc refType |m#1_0_0@0| Tclass._module.Modifies $Heap@0)) (|Set#IsMember| |s#0| ($Box refType |m#1_0_0@0|))) (and (=> (= (ControlFlow 0 17) (- 0 20)) (or (not (= |m#1_0_0@0| null)) (not true))) (and (=> (= (ControlFlow 0 17) (- 0 19)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |m#1_0_0@0| _module.Modifies.x))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |m#1_0_0@0| _module.Modifies.x)) (and (=> (= (ControlFlow 0 17) (- 0 18)) (or (not (= |m#1_0_0@0| null)) (not true))) (=> (and (and (and ($Is refType |m#1_0_1@0| Tclass._module.Modifies) ($IsAlloc refType |m#1_0_1@0| Tclass._module.Modifies $Heap@0)) (|Set#IsMember| |s#0| ($Box refType |m#1_0_1@0|))) (and (or (not (= |m#1_0_0@0| |m#1_0_1@0|)) (not true)) (= (ControlFlow 0 17) (- 0 16)))) (or (or (or (not (= |m#1_0_0@0| |m#1_0_1@0|)) (not true)) (or (not (= _module.Modifies.x _module.Modifies.x)) (not true))) (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |m#1_0_0@0|) _module.Modifies.x))) 1) (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |m#1_0_1@0|) _module.Modifies.x))) 1)))))))))))
(let ((anon24_Else_correct  (and (=> (= (ControlFlow 0 10) (- 0 13)) (or (not (= |m#2_0@0| null)) (not true))) (and (=> (= (ControlFlow 0 10) (- 0 12)) (or (not (= |m#2_0@0| null)) (not true))) (and (=> (= (ControlFlow 0 10) (- 0 11)) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |m#2_0@0|) _module.Modifies.x))) (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |m#2_0@0|) _module.Modifies.x))) 10))) (=> (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |m#2_0@0|) _module.Modifies.x))) (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |m#2_0@0|) _module.Modifies.x))) 10)) (=> (= (ControlFlow 0 10) (- 0 9)) (U_2_bool (Lit boolType (bool_2_U true))))))))))
(let ((anon24_Then_correct true))
(let ((anon23_Then_correct  (=> (and ($Is refType |m#2_0@0| Tclass._module.Modifies) (|Set#IsMember| |s#0| ($Box refType |m#2_0@0|))) (and (=> (= (ControlFlow 0 14) 8) anon24_Then_correct) (=> (= (ControlFlow 0 14) 10) anon24_Else_correct)))))
(let ((anon25_Else_correct true))
(let ((anon25_Then_correct  (=> (and (and ($Is refType |m#3_0@0| Tclass._module.Modifies) ($IsAlloc refType |m#3_0@0| Tclass._module.Modifies $Heap@3)) (|Set#IsMember| |s#0| ($Box refType |m#3_0@0|))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (or (not (= |m#3_0@0| null)) (not true))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |m#3_0@0| _module.Modifies.x))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |m#3_0@0| _module.Modifies.x)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= |m#3_0@0| null)) (not true))) (=> (and (and (and ($Is refType |m#3_1@0| Tclass._module.Modifies) ($IsAlloc refType |m#3_1@0| Tclass._module.Modifies $Heap@3)) (|Set#IsMember| |s#0| ($Box refType |m#3_1@0|))) (and (or (not (= |m#3_0@0| |m#3_1@0|)) (not true)) (= (ControlFlow 0 2) (- 0 1)))) (or (or (or (not (= |m#3_0@0| |m#3_1@0|)) (not true)) (or (not (= _module.Modifies.x _module.Modifies.x)) (not true))) (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |m#3_0@0|) _module.Modifies.x))) 1) (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |m#3_1@0|) _module.Modifies.x))) 1)))))))))))
(let ((anon23_Else_correct  (=> (forall ((|m#2_1| T@U) ) (!  (=> (and ($Is refType |m#2_1| Tclass._module.Modifies) (|Set#IsMember| |s#0| ($Box refType |m#2_1|))) (U_2_bool (Lit boolType (bool_2_U true))))
 :qid |SmallTestsdfy.172:13|
 :skolemid |3383|
 :pattern ( (|Set#IsMember| |s#0| ($Box refType |m#2_1|)))
)) (and (=> (= (ControlFlow 0 7) 2) anon25_Then_correct) (=> (= (ControlFlow 0 7) 6) anon25_Else_correct)))))
(let ((anon22_Else_correct  (=> (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) ($HeapSucc $Heap@0 $Heap@1)) (and (forall (($o@@4 T@U) ($f@@0 T@U) ) (!  (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@4) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@4) $f@@0)) (exists ((|m#1_0_2| T@U) ) (!  (and (and (and ($Is refType |m#1_0_2| Tclass._module.Modifies) (|Set#IsMember| |s#0| ($Box refType |m#1_0_2|))) (= $o@@4 |m#1_0_2|)) (= $f@@0 _module.Modifies.x))
 :qid |SmallTestsdfy.167:15|
 :skolemid |3379|
)))
 :qid |SmallTestsdfy.167:7|
 :skolemid |3380|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@4) $f@@0))
)) (forall ((|m#inv#1_0_0| T@U) ) (!  (=> (and ($Is refType |m#inv#1_0_0| Tclass._module.Modifies) (and (or (not (= |m#inv#1_0_0| null)) (not true)) (|Set#IsMember| |s#0| ($Box refType |m#inv#1_0_0|)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |m#inv#1_0_0|) _module.Modifies.x) ($Box intType (int_2_U (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |m#inv#1_0_0|) _module.Modifies.x))) 1)))))
 :qid |SmallTestsdfy.167:15|
 :skolemid |3381|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |m#inv#1_0_0|) _module.Modifies.x))
)))) (and (=> (= (ControlFlow 0 21) (- 0 22)) (forall (($o@@5 T@U) ($f@@1 T@U) ) (!  (=> (and (and (or (not (= $o@@5 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@5) alloc)))) (|Set#IsMember| |s#0| ($Box refType $o@@5))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@5 $f@@1)))
 :qid |SmallTestsdfy.170:8|
 :skolemid |3382|
))) (=> (forall (($o@@6 T@U) ($f@@2 T@U) ) (!  (=> (and (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@6) alloc)))) (|Set#IsMember| |s#0| ($Box refType $o@@6))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@6 $f@@2)))
 :qid |SmallTestsdfy.170:8|
 :skolemid |3382|
)) (=> (and (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (forall (($o@@7 T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@7) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@7) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@7)) (|Set#IsMember| |s#0| ($Box refType $o@@7))))
 :qid |SmallTestsdfy.147:10|
 :skolemid |3368|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@7))
))) (and ($HeapSucc $Heap@1 $Heap@2) (= $Heap@3 $Heap@2))) (and (=> (= (ControlFlow 0 21) 14) anon23_Then_correct) (=> (= (ControlFlow 0 21) 7) anon23_Else_correct))))))))
(let ((anon21_Then_correct  (=> (|Set#Subset| |s#0| (|Set#UnionOne| |Set#Empty| ($Box refType this))) (and (=> (= (ControlFlow 0 23) 17) anon22_Then_correct) (=> (= (ControlFlow 0 23) 21) anon22_Else_correct)))))
(let ((anon21_Else_correct  (=> (and (not (|Set#Subset| |s#0| (|Set#UnionOne| |Set#Empty| ($Box refType this)))) (= $Heap@3 $Heap@0)) (and (=> (= (ControlFlow 0 15) 14) anon23_Then_correct) (=> (= (ControlFlow 0 15) 7) anon23_Else_correct)))))
(let ((anon19_Else_correct  (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) ($HeapSucc $Heap $Heap@0)) (and (forall (($o@@8 T@U) ($f@@3 T@U) ) (!  (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@8) $f@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@8) $f@@3)) (exists ((|m#0_2| T@U) ) (!  (and (and (and ($Is refType |m#0_2| Tclass._module.Modifies) (and (|Set#IsMember| |s#0| ($Box refType |m#0_2|)) (= |m#0_2| this))) (= $o@@8 |m#0_2|)) (= $f@@3 _module.Modifies.x))
 :qid |SmallTestsdfy.163:12|
 :skolemid |3376|
)))
 :qid |SmallTestsdfy.163:5|
 :skolemid |3377|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@8) $f@@3))
)) (forall ((|m#inv#0_0| T@U) ) (!  (=> (and ($Is refType |m#inv#0_0| Tclass._module.Modifies) (and (or (not (= |m#inv#0_0| null)) (not true)) (and (|Set#IsMember| |s#0| ($Box refType |m#inv#0_0|)) (= |m#inv#0_0| this)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |m#inv#0_0|) _module.Modifies.x) ($Box intType (int_2_U (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#inv#0_0|) _module.Modifies.x))) 1)))))
 :qid |SmallTestsdfy.163:12|
 :skolemid |3378|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |m#inv#0_0|) _module.Modifies.x))
)))) (and (=> (= (ControlFlow 0 24) 23) anon21_Then_correct) (=> (= (ControlFlow 0 24) 15) anon21_Else_correct)))))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#30| null $Heap alloc this)) (= |m#0@0| (LitInt 3))) (and (=> (= (ControlFlow 0 33) 32) anon19_Then_correct) (=> (= (ControlFlow 0 33) 24) anon19_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.Modifies) ($IsAlloc refType this Tclass._module.Modifies $Heap)))) (and (and ($Is SetType |s#0| (TSet Tclass._module.Modifies)) ($IsAlloc SetType |s#0| (TSet Tclass._module.Modifies) $Heap)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 34) 33)))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 4))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
