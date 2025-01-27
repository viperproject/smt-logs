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
(declare-fun Tagclass._module.Tr () T@U)
(declare-fun Tagclass._module.C () T@U)
(declare-fun Tagclass._module.C? () T@U)
(declare-fun Tagclass._module.Tr? () T@U)
(declare-fun class._module.C? () T@U)
(declare-fun tytagFamily$Tr () T@U)
(declare-fun tytagFamily$C () T@U)
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
(declare-fun implements$_module.Tr (T@U) Bool)
(declare-fun Tclass._module.C? () T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tclass._module.Tr? () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.Tr () T@U)
(declare-fun Tclass._module.C () T@U)
(declare-fun _module.C.y () T@U)
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
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.SuppressNoTriggerWarning (T@U T@U) Bool)
(declare-fun |_module.__default.SuppressNoTriggerWarning#canCall| (T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |lambda#1| (T@U T@U T@U) T@U)
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
(assert (distinct TInt TagInt TagSet alloc allocName Tagclass._module.Tr Tagclass._module.C Tagclass._module.C? Tagclass._module.Tr? class._module.C? tytagFamily$Tr tytagFamily$C field$y)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (implements$_module.Tr Tclass._module.C?))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.C?)  (or (= $o null) (= (dtype $o) Tclass._module.C?)))
 :qid |unknown.0:0|
 :skolemid |506|
 :pattern ( ($Is refType $o Tclass._module.C?))
)))
(assert (forall ((bx T@U) ($h T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.C? $h) ($IsGoodHeap $h)) ($IsAllocBox bx Tclass._module.Tr? $h))
 :qid |unknown.0:0|
 :skolemid |519|
 :pattern ( ($IsAllocBox bx Tclass._module.C? $h))
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
(assert (= (FDim _module.C.y) 0))
(assert (= (FieldOfDecl class._module.C? field$y) _module.C.y))
(assert  (not ($IsGhostField _module.C.y)))
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
(assert (forall (($o@@0 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._module.Tr? $h@@2)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |501|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.Tr? $h@@2))
)))
(assert (forall (($o@@1 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._module.C? $h@@3)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |507|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._module.C? $h@@3))
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
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((m@@1 T@U) (bx@@0 T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@0) (U_2_bool (MapType0Select BoxType boolType m@@1 bx@@0)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |153|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@0))
)))
(assert (= (Ctor SetType) 7))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@1 T@U) ) (!  (=> (|Set#IsMember| v bx@@1) ($IsBox bx@@1 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@1))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h@@4 T@U) ($o@@2 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) Tclass._module.C?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@2) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@2) _module.C.y)) TInt $h@@4))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |509|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@2) _module.C.y)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@2 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@2 t@@0 h@@1) ($IsAllocBox bx@@2 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@2 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert  (and (forall ((t0@@1 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@1 t1@@0 t2 (MapType1Store t0@@1 t1@@0 t2 m@@2 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@3 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@3 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@3 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@4 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@4 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@3 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))  (=> (and (or (not (= $o@@3 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@3) |l#2|)))) (= $o@@3 |l#3|)))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |526|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.Tr) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._module.Tr)))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( ($IsBox bx@@3 Tclass._module.Tr))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.C) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.C)))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( ($IsBox bx@@4 Tclass._module.C))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.C?) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.C?)))
 :qid |unknown.0:0|
 :skolemid |493|
 :pattern ( ($IsBox bx@@5 Tclass._module.C?))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.Tr?) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.Tr?)))
 :qid |unknown.0:0|
 :skolemid |499|
 :pattern ( ($IsBox bx@@6 Tclass._module.Tr?))
)))
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass._module.Tr)  (and ($Is refType |c#0@@1| Tclass._module.Tr?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |504|
 :pattern ( ($Is refType |c#0@@1| Tclass._module.Tr))
 :pattern ( ($Is refType |c#0@@1| Tclass._module.Tr?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._module.C)  (and ($Is refType |c#0@@2| Tclass._module.C?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |510|
 :pattern ( ($Is refType |c#0@@2| Tclass._module.C))
 :pattern ( ($Is refType |c#0@@2| Tclass._module.C?))
)))
(assert (forall (($o@@4 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@4 Tclass._module.C? $heap) ($IsAlloc refType $o@@4 Tclass._module.Tr? $heap))
 :qid |unknown.0:0|
 :skolemid |521|
 :pattern ( ($IsAlloc refType $o@@4 Tclass._module.C? $heap))
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
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 TInt) (and (= ($Box intType ($Unbox intType bx@@7)) bx@@7) ($Is intType ($Unbox intType bx@@7) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@7 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3) (forall ((bx@@8 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@8) ($IsAllocBox bx@@8 t0@@2 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@8))
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
(assert (forall ((x@@4 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@4))
)))
(assert (forall (($h@@5 T@U) ($o@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) Tclass._module.C?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@5) _module.C.y)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |508|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@5) _module.C.y)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.SuppressNoTriggerWarning$X T@U) (|x#0| T@U) ) (!  (=> (or (|_module.__default.SuppressNoTriggerWarning#canCall| _module._default.SuppressNoTriggerWarning$X |x#0|) (and (< 0 $FunctionContextHeight) ($IsBox |x#0| _module._default.SuppressNoTriggerWarning$X))) (= (_module.__default.SuppressNoTriggerWarning _module._default.SuppressNoTriggerWarning$X |x#0|) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( (_module.__default.SuppressNoTriggerWarning _module._default.SuppressNoTriggerWarning$X |x#0|))
))))
(assert (forall ((bx@@9 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@9 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@9)) bx@@9) ($Is SetType ($Unbox SetType bx@@9) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@9 (TSet t@@5)))
)))
(assert (forall (($o@@6 T@U) ) (!  (=> ($Is refType $o@@6 Tclass._module.C?) ($Is refType $o@@6 Tclass._module.Tr?))
 :qid |unknown.0:0|
 :skolemid |520|
 :pattern ( ($Is refType $o@@6 Tclass._module.C?))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass._module.C?) ($IsBox bx@@10 Tclass._module.Tr?))
 :qid |unknown.0:0|
 :skolemid |518|
 :pattern ( ($IsBox bx@@10 Tclass._module.C?))
)))
(assert (forall ((h@@4 T@U) (r T@U) (f T@U) (x@@5 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@5))) ($HeapSucc h@@4 (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@5))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@5)))
)))
(assert (= (Tag Tclass._module.Tr) Tagclass._module.Tr))
(assert (= (TagFamily Tclass._module.Tr) tytagFamily$Tr))
(assert (= (Tag Tclass._module.C) Tagclass._module.C))
(assert (= (TagFamily Tclass._module.C) tytagFamily$C))
(assert (= (Tag Tclass._module.C?) Tagclass._module.C?))
(assert (= (TagFamily Tclass._module.C?) tytagFamily$C))
(assert (= (Tag Tclass._module.Tr?) Tagclass._module.Tr?))
(assert (= (TagFamily Tclass._module.Tr?) tytagFamily$Tr))
(assert (forall (($o@@7 T@U) ) (! (= ($Is refType $o@@7 Tclass._module.Tr?)  (or (= $o@@7 null) (implements$_module.Tr (dtype $o@@7))))
 :qid |unknown.0:0|
 :skolemid |500|
 :pattern ( ($Is refType $o@@7 Tclass._module.Tr?))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@1 b@@1) (forall ((o@@1 T@U) ) (! (= (|Set#IsMember| a@@1 o@@1) (|Set#IsMember| b@@1 o@@1))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@1 o@@1))
 :pattern ( (|Set#IsMember| b@@1 o@@1))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@1 b@@1))
)))
(assert (forall ((x@@6 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@6)) (Lit BoxType ($Box T@@5 x@@6)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@6)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.SuppressNoTriggerWarning$X@@0 T@U) (|x#0@@0| T@U) ) (!  (=> (or (|_module.__default.SuppressNoTriggerWarning#canCall| _module._default.SuppressNoTriggerWarning$X@@0 (Lit BoxType |x#0@@0|)) (and (< 0 $FunctionContextHeight) ($IsBox |x#0@@0| _module._default.SuppressNoTriggerWarning$X@@0))) (= (_module.__default.SuppressNoTriggerWarning _module._default.SuppressNoTriggerWarning$X@@0 (Lit BoxType |x#0@@0|)) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |482|
 :pattern ( (_module.__default.SuppressNoTriggerWarning _module._default.SuppressNoTriggerWarning$X@@0 (Lit BoxType |x#0@@0|)))
))))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2@@0| T@U) (|$y#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#1| |l#0@@0| |l#1@@0| |l#2@@0|) |$y#0|))  (and ($IsBox |$y#0| |l#0@@0|) (and (= ($Unbox refType |$y#0|) |l#1@@0|) (_module.__default.SuppressNoTriggerWarning |l#2@@0| |$y#0|))))
 :qid |gitissue532dfy.9:7|
 :skolemid |527|
 :pattern ( (MapType0Select BoxType boolType (|lambda#1| |l#0@@0| |l#1@@0| |l#2@@0|) |$y#0|))
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
(declare-fun |s#0@0| () T@U)
(declare-fun |c#1_0@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |c#1_1@0| () T@U)
(declare-fun |t#0| () T@U)
(declare-fun |c#0@0| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |s#0| () T@U)
(declare-fun |defass#c#1_0| () Bool)
(declare-fun |c#1_0| () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.M)
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
 (=> (= (ControlFlow 0 0) 23) (let ((anon9_correct  (and (=> (= (ControlFlow 0 3) (- 0 10)) (or (and ($Is refType null Tclass._module.C) (|Set#IsMember| |s#0@0| ($Box refType null))) (exists ((|$as#c1_0#1_0| T@U) ) (!  (and ($Is refType |$as#c1_0#1_0| Tclass._module.C) (|Set#IsMember| |s#0@0| ($Box refType |$as#c1_0#1_0|)))
 :qid |gitissue532dfy.25:9|
 :skolemid |489|
)))) (=> (or (and ($Is refType null Tclass._module.C) (|Set#IsMember| |s#0@0| ($Box refType null))) (exists ((|$as#c1_0#1_0@@0| T@U) ) (!  (and ($Is refType |$as#c1_0#1_0@@0| Tclass._module.C) (|Set#IsMember| |s#0@0| ($Box refType |$as#c1_0#1_0@@0|)))
 :qid |gitissue532dfy.25:9|
 :skolemid |489|
))) (=> (and (=> true (and ($Is refType |c#1_0@0| Tclass._module.C) ($IsAlloc refType |c#1_0@0| Tclass._module.C $Heap))) (|Set#IsMember| |s#0@0| ($Box refType |c#1_0@0|))) (and (=> (= (ControlFlow 0 3) (- 0 9)) true) (and (=> (= (ControlFlow 0 3) (- 0 8)) (or (not (= |c#1_0@0| null)) (not true))) (and (=> (= (ControlFlow 0 3) (- 0 7)) true) (and (=> (= (ControlFlow 0 3) (- 0 6)) (or (not (= |c#1_0@0| null)) (not true))) (=> (or (not (= |c#1_0@0| null)) (not true)) (and (=> (= (ControlFlow 0 3) (- 0 5)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |c#1_0@0| _module.C.y))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |c#1_0@0| _module.C.y)) (and (=> (= (ControlFlow 0 3) (- 0 4)) true) (=> (= (ControlFlow 0 3) (- 0 2)) (or (not (= |c#1_0@0| null)) (not true))))))))))))))))
(let ((anon14_Else_correct  (=> (and (not (and ($Is refType |c#1_1@0| Tclass._module.C) ($IsAlloc refType |c#1_1@0| Tclass._module.C $Heap))) (= (ControlFlow 0 12) 3)) anon9_correct)))
(let ((anon14_Then_correct  (=> (and (and ($Is refType |c#1_1@0| Tclass._module.C) ($IsAlloc refType |c#1_1@0| Tclass._module.C $Heap)) (= (ControlFlow 0 11) 3)) anon9_correct)))
(let ((anon13_Else_correct  (=> (not (|Set#Equal| |s#0@0| |Set#Empty|)) (and (=> (= (ControlFlow 0 13) 11) anon14_Then_correct) (=> (= (ControlFlow 0 13) 12) anon14_Else_correct)))))
(let ((anon13_Then_correct true))
(let ((anon5_correct  (=> (and (forall ((|c#1| T@U) ) (!  (=> ($Is refType |c#1| Tclass._module.C) (=> (= |c#1| |t#0|) (|_module.__default.SuppressNoTriggerWarning#canCall| Tclass._module.C ($Box refType |c#1|))))
 :qid |gitissue532dfy.21:24|
 :skolemid |488|
 :pattern ( (_module.__default.SuppressNoTriggerWarning Tclass._module.C ($Box refType |c#1|)))
)) (= |s#0@0| (|Set#FromBoogieMap| (|lambda#1| Tclass._module.C |t#0| Tclass._module.C)))) (and (=> (= (ControlFlow 0 14) 1) anon13_Then_correct) (=> (= (ControlFlow 0 14) 13) anon13_Else_correct)))))
(let ((anon12_Else_correct  (=> (and (not (and (= |c#0@0| |t#0|) (_module.__default.SuppressNoTriggerWarning Tclass._module.C ($Box refType |c#0@0|)))) (= (ControlFlow 0 17) 14)) anon5_correct)))
(let ((anon12_Then_correct  (=> (and (and (= |c#0@0| |t#0|) (_module.__default.SuppressNoTriggerWarning Tclass._module.C ($Box refType |c#0@0|))) (= (ControlFlow 0 16) 14)) anon5_correct)))
(let ((anon11_Else_correct  (=> (or (not (= |c#0@0| |t#0|)) (not true)) (and (=> (= (ControlFlow 0 19) 16) anon12_Then_correct) (=> (= (ControlFlow 0 19) 17) anon12_Else_correct)))))
(let ((anon11_Then_correct  (=> (= |c#0@0| |t#0|) (=> (and ($IsAlloc refType |c#0@0| Tclass._module.C $Heap) (|_module.__default.SuppressNoTriggerWarning#canCall| Tclass._module.C ($Box refType |c#0@0|))) (and (=> (= (ControlFlow 0 18) 16) anon12_Then_correct) (=> (= (ControlFlow 0 18) 17) anon12_Else_correct))))))
(let ((anon10_Then_correct  (=> (and ($Is refType |c#0@0| Tclass._module.C) ($IsAlloc refType |c#0@0| Tclass._module.C $Heap)) (and (=> (= (ControlFlow 0 20) 18) anon11_Then_correct) (=> (= (ControlFlow 0 20) 19) anon11_Else_correct)))))
(let ((anon10_Else_correct  (=> (and (not (and ($Is refType |c#0@0| Tclass._module.C) ($IsAlloc refType |c#0@0| Tclass._module.C $Heap))) (= (ControlFlow 0 15) 14)) anon5_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc |t#0|)) (and (=> (= (ControlFlow 0 21) (- 0 22)) (or (not (= |t#0| null)) (not true))) (and (=> (= (ControlFlow 0 21) 20) anon10_Then_correct) (=> (= (ControlFlow 0 21) 15) anon10_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and ($Is refType |t#0| Tclass._module.Tr) ($IsAlloc refType |t#0| Tclass._module.Tr $Heap))) (=> (and (and (and ($Is SetType |s#0| (TSet Tclass._module.C)) ($IsAlloc SetType |s#0| (TSet Tclass._module.C) $Heap)) true) (and (and (=> |defass#c#1_0| (and ($Is refType |c#1_0| Tclass._module.C) ($IsAlloc refType |c#1_0| Tclass._module.C $Heap))) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 23) 21)))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
