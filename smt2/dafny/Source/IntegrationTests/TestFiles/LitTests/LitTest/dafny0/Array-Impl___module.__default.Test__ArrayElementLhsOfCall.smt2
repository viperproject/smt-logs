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
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._System.array? () T@U)
(declare-fun Tagclass._System.array () T@U)
(declare-fun Tagclass._module.Cdefg () T@U)
(declare-fun class._module.Cdefg? () T@U)
(declare-fun Tagclass._module.Cdefg? () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$array () T@U)
(declare-fun tytagFamily$Cdefg () T@U)
(declare-fun field$t () T@U)
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
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun _module.Cdefg.t () T@U)
(declare-fun Tclass._module.Cdefg? (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun Tclass._System.array (T@U) T@U)
(declare-fun Tclass._module.Cdefg (T@U) T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun IndexField (Int) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun IndexField_Inverse (T@U) Int)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
(declare-fun Tclass._module.Cdefg_0 (T@U) T@U)
(declare-fun Tclass._module.Cdefg?_0 (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#12| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct TInt TagInt alloc allocName Tagclass._System.nat Tagclass._System.array? Tagclass._System.array Tagclass._module.Cdefg class._module.Cdefg? Tagclass._module.Cdefg? tytagFamily$nat tytagFamily$array tytagFamily$Cdefg field$t)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall ((_System.array$arg T@U) ($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._System.array? _System.array$arg))) ($Is intType (int_2_U (_System.array.Length $o)) TInt))
 :qid |unknown.0:0|
 :skolemid |920|
 :pattern ( (_System.array.Length $o) (Tclass._System.array? _System.array$arg))
)))
(assert  (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 3)) (= (Ctor BoxType) 4)) (= (Ctor refType) 5)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 6)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((_module.Cdefg$T T@U) ($h T@U) ($o@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) (Tclass._module.Cdefg? _module.Cdefg$T)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@0) _module.Cdefg.t) _module.Cdefg$T))
 :qid |unknown.0:0|
 :skolemid |1324|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@0) _module.Cdefg.t) (Tclass._module.Cdefg? _module.Cdefg$T))
)))
(assert (forall ((_module.Cdefg$T@@0 T@U) ($h@@0 T@U) ($o@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@0) (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) (Tclass._module.Cdefg? _module.Cdefg$T@@0)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@1) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@1) _module.Cdefg.t) _module.Cdefg$T@@0 $h@@0))
 :qid |unknown.0:0|
 :skolemid |1325|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@1) _module.Cdefg.t) (Tclass._module.Cdefg? _module.Cdefg$T@@0))
)))
(assert (forall ((|x#0| T@U) ($h@@1 T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h@@1)
 :qid |unknown.0:0|
 :skolemid |906|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h@@1))
)))
(assert (forall ((_System.array$arg@@0 T@U) (|c#0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h@@2) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h@@2))
 :qid |unknown.0:0|
 :skolemid |926|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h@@2))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h@@2))
)))
(assert (forall ((_module.Cdefg$T@@1 T@U) (|c#0@@0| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@0| (Tclass._module.Cdefg _module.Cdefg$T@@1) $h@@3) ($IsAlloc refType |c#0@@0| (Tclass._module.Cdefg? _module.Cdefg$T@@1) $h@@3))
 :qid |unknown.0:0|
 :skolemid |1330|
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._module.Cdefg _module.Cdefg$T@@1) $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._module.Cdefg? _module.Cdefg$T@@1) $h@@3))
)))
(assert (forall ((_System.array$arg@@1 T@U) ($o@@2 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@2 (Tclass._System.array? _System.array$arg@@1) $h@@4)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |919|
 :pattern ( ($IsAlloc refType $o@@2 (Tclass._System.array? _System.array$arg@@1) $h@@4))
)))
(assert (forall ((_module.Cdefg$T@@2 T@U) ($o@@3 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@3 (Tclass._module.Cdefg? _module.Cdefg$T@@2) $h@@5)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1323|
 :pattern ( ($IsAlloc refType $o@@3 (Tclass._module.Cdefg? _module.Cdefg$T@@2) $h@@5))
)))
(assert (= (FDim _module.Cdefg.t) 0))
(assert (= (FieldOfDecl class._module.Cdefg? field$t) _module.Cdefg.t))
(assert  (not ($IsGhostField _module.Cdefg.t)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |679|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |680|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |578|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |576|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((_System.array$arg@@2 T@U) ($h@@6 T@U) ($o@@4 T@U) ($i0 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) (Tclass._System.array? _System.array$arg@@2)))) (and (<= 0 $i0) (< $i0 (_System.array.Length $o@@4)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@4) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@4) (IndexField $i0)) _System.array$arg@@2 $h@@6))
 :qid |unknown.0:0|
 :skolemid |917|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@4) (IndexField $i0)) (Tclass._System.array? _System.array$arg@@2))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |587|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |905|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert ($IsGhostField alloc))
(assert (forall ((_System.array$arg@@3 T@U) (|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| (Tclass._System.array _System.array$arg@@3))  (and ($Is refType |c#0@@1| (Tclass._System.array? _System.array$arg@@3)) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |925|
 :pattern ( ($Is refType |c#0@@1| (Tclass._System.array _System.array$arg@@3)))
 :pattern ( ($Is refType |c#0@@1| (Tclass._System.array? _System.array$arg@@3)))
)))
(assert (forall ((_module.Cdefg$T@@3 T@U) (|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| (Tclass._module.Cdefg _module.Cdefg$T@@3))  (and ($Is refType |c#0@@2| (Tclass._module.Cdefg? _module.Cdefg$T@@3)) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1329|
 :pattern ( ($Is refType |c#0@@2| (Tclass._module.Cdefg _module.Cdefg$T@@3)))
 :pattern ( ($Is refType |c#0@@2| (Tclass._module.Cdefg? _module.Cdefg$T@@3)))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |600|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx t@@0 h@@1) ($IsAllocBox bx t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |672|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@2) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |671|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@2))
)))
(assert (forall ((_System.array$arg@@4 T@U) ) (!  (and (= (Tag (Tclass._System.array? _System.array$arg@@4)) Tagclass._System.array?) (= (TagFamily (Tclass._System.array? _System.array$arg@@4)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |913|
 :pattern ( (Tclass._System.array? _System.array$arg@@4))
)))
(assert (forall ((_System.array$arg@@5 T@U) ) (!  (and (= (Tag (Tclass._System.array _System.array$arg@@5)) Tagclass._System.array) (= (TagFamily (Tclass._System.array _System.array$arg@@5)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |922|
 :pattern ( (Tclass._System.array _System.array$arg@@5))
)))
(assert (forall ((_module.Cdefg$T@@4 T@U) ) (!  (and (= (Tag (Tclass._module.Cdefg _module.Cdefg$T@@4)) Tagclass._module.Cdefg) (= (TagFamily (Tclass._module.Cdefg _module.Cdefg$T@@4)) tytagFamily$Cdefg))
 :qid |unknown.0:0|
 :skolemid |1169|
 :pattern ( (Tclass._module.Cdefg _module.Cdefg$T@@4))
)))
(assert (forall ((_module.Cdefg$T@@5 T@U) ) (!  (and (= (Tag (Tclass._module.Cdefg? _module.Cdefg$T@@5)) Tagclass._module.Cdefg?) (= (TagFamily (Tclass._module.Cdefg? _module.Cdefg$T@@5)) tytagFamily$Cdefg))
 :qid |unknown.0:0|
 :skolemid |1319|
 :pattern ( (Tclass._module.Cdefg? _module.Cdefg$T@@5))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |904|
 :pattern ( ($IsBox bx@@0 Tclass._System.nat))
)))
(assert (forall ((_System.array$arg@@6 T@U) ($o@@5 T@U) ) (! (= ($Is refType $o@@5 (Tclass._System.array? _System.array$arg@@6))  (or (= $o@@5 null) (= (dtype $o@@5) (Tclass._System.array? _System.array$arg@@6))))
 :qid |unknown.0:0|
 :skolemid |918|
 :pattern ( ($Is refType $o@@5 (Tclass._System.array? _System.array$arg@@6)))
)))
(assert (forall ((_module.Cdefg$T@@6 T@U) ($o@@6 T@U) ) (! (= ($Is refType $o@@6 (Tclass._module.Cdefg? _module.Cdefg$T@@6))  (or (= $o@@6 null) (= (dtype $o@@6) (Tclass._module.Cdefg? _module.Cdefg$T@@6))))
 :qid |unknown.0:0|
 :skolemid |1322|
 :pattern ( ($Is refType $o@@6 (Tclass._module.Cdefg? _module.Cdefg$T@@6)))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |678|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |668|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TInt) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |588|
 :pattern ( ($IsBox bx@@1 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@2) ($Is T@@3 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |599|
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@2))
)))
(assert (forall ((o@@0 T@U) ) (! (<= 0 (_System.array.Length o@@0))
 :qid |DafnyPreludebpl.571:15|
 :skolemid |673|
 :pattern ( (_System.array.Length o@@0))
)))
(assert (forall ((i Int) ) (! (= (FDim (IndexField i)) 1)
 :qid |DafnyPreludebpl.515:15|
 :skolemid |664|
 :pattern ( (IndexField i))
)))
(assert (forall ((i@@0 Int) ) (! (= (IndexField_Inverse (IndexField i@@0)) i@@0)
 :qid |DafnyPreludebpl.517:15|
 :skolemid |665|
 :pattern ( (IndexField i@@0))
)))
(assert (forall ((_System.array$arg@@7 T@U) ) (! (= (Tclass._System.array?_0 (Tclass._System.array? _System.array$arg@@7)) _System.array$arg@@7)
 :qid |unknown.0:0|
 :skolemid |914|
 :pattern ( (Tclass._System.array? _System.array$arg@@7))
)))
(assert (forall ((_System.array$arg@@8 T@U) ) (! (= (Tclass._System.array_0 (Tclass._System.array _System.array$arg@@8)) _System.array$arg@@8)
 :qid |unknown.0:0|
 :skolemid |923|
 :pattern ( (Tclass._System.array _System.array$arg@@8))
)))
(assert (forall ((_module.Cdefg$T@@7 T@U) ) (! (= (Tclass._module.Cdefg_0 (Tclass._module.Cdefg _module.Cdefg$T@@7)) _module.Cdefg$T@@7)
 :qid |unknown.0:0|
 :skolemid |1170|
 :pattern ( (Tclass._module.Cdefg _module.Cdefg$T@@7))
)))
(assert (forall ((_module.Cdefg$T@@8 T@U) ) (! (= (Tclass._module.Cdefg?_0 (Tclass._module.Cdefg? _module.Cdefg$T@@8)) _module.Cdefg$T@@8)
 :qid |unknown.0:0|
 :skolemid |1320|
 :pattern ( (Tclass._module.Cdefg? _module.Cdefg$T@@8))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |586|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((_System.array$arg@@9 T@U) ($h@@7 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) (Tclass._System.array? _System.array$arg@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@7) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@7)) TInt $h@@7))
 :qid |unknown.0:0|
 :skolemid |921|
 :pattern ( (_System.array.Length $o@@7) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@7) alloc)) (Tclass._System.array? _System.array$arg@@9))
)))
(assert (forall ((_System.array$arg@@10 T@U) ($h@@8 T@U) ($o@@8 T@U) ($i0@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) (Tclass._System.array? _System.array$arg@@10)))) (and (<= 0 $i0@@0) (< $i0@@0 (_System.array.Length $o@@8)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@8) (IndexField $i0@@0)) _System.array$arg@@10))
 :qid |unknown.0:0|
 :skolemid |916|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@8) (IndexField $i0@@0)) (Tclass._System.array? _System.array$arg@@10))
)))
(assert (forall ((_System.array$arg@@11 T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass._System.array? _System.array$arg@@11)) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) (Tclass._System.array? _System.array$arg@@11))))
 :qid |unknown.0:0|
 :skolemid |915|
 :pattern ( ($IsBox bx@@2 (Tclass._System.array? _System.array$arg@@11)))
)))
(assert (forall ((_System.array$arg@@12 T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass._System.array _System.array$arg@@12)) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) (Tclass._System.array _System.array$arg@@12))))
 :qid |unknown.0:0|
 :skolemid |924|
 :pattern ( ($IsBox bx@@3 (Tclass._System.array _System.array$arg@@12)))
)))
(assert (forall ((_module.Cdefg$T@@9 T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass._module.Cdefg _module.Cdefg$T@@9)) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) (Tclass._module.Cdefg _module.Cdefg$T@@9))))
 :qid |unknown.0:0|
 :skolemid |1171|
 :pattern ( ($IsBox bx@@4 (Tclass._module.Cdefg _module.Cdefg$T@@9)))
)))
(assert (forall ((_module.Cdefg$T@@10 T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass._module.Cdefg? _module.Cdefg$T@@10)) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) (Tclass._module.Cdefg? _module.Cdefg$T@@10))))
 :qid |unknown.0:0|
 :skolemid |1321|
 :pattern ( ($IsBox bx@@5 (Tclass._module.Cdefg? _module.Cdefg$T@@10)))
)))
(assert (forall ((h@@3 T@U) (r T@U) (f T@U) (x@@6 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@6))) ($HeapSucc h@@3 (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@6))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |677|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@6)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@9 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#12| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@9 $f))  (=> (and (or (not (= $o@@9 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@9) |l#2|)))) (or (= $o@@9 |l#3|) (= $o@@9 |l#4|))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1372|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#12| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@9 $f))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |579|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@8)) (Lit BoxType ($Box T@@5 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |577|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@8)))
)))
(assert (forall ((h@@4 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |622|
 :pattern ( ($IsAlloc intType v@@2 TInt h@@4))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is intType v@@3 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |601|
 :pattern ( ($Is intType v@@3 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |i#0| () Int)
(declare-fun |a#0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |x#0@@1| () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun $index0@0 () T@U)
(declare-fun |i##0_0@0| () Int)
(declare-fun |c#0@@3| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |call4formal@x#0@0| () Int)
(declare-fun $Heap@2 () T@U)
(declare-fun |$rhs#0_1@0| () Int)
(declare-fun $Heap@3 () T@U)
(declare-fun |i##0_1@0| () Int)
(declare-fun $Heap@4 () T@U)
(declare-fun |call4formal@x#0@0@@0| () Int)
(declare-fun $Heap@5 () T@U)
(declare-fun |n#0_0@0| () Int)
(declare-fun |i##0_2@0| () Int)
(declare-fun $Heap@6 () T@U)
(declare-fun |call4formal@x#0@0@@1| () Int)
(declare-fun |n#0_0| () Int)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.Test__ArrayElementLhsOfCall)
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
 (=> (= (ControlFlow 0 0) 32) (let ((anon6_Else_correct true))
(let ((anon6_Then_correct  (=> (and (<= (LitInt 0) |i#0|) (< |i#0| (_System.array.Length |a#0|))) (and (=> (= (ControlFlow 0 2) (- 0 25)) (or (not (= |a#0| null)) (not true))) (=> (or (not (= |a#0| null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 24)) (and (<= 0 |i#0|) (< |i#0| (_System.array.Length |a#0|)))) (=> (and (<= 0 |i#0|) (< |i#0| (_System.array.Length |a#0|))) (and (=> (= (ControlFlow 0 2) (- 0 23)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |a#0| (IndexField |i#0|)))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |a#0| (IndexField |i#0|))) (and (=> (= (ControlFlow 0 2) (- 0 22)) ($Is intType (int_2_U |x#0@@1|) Tclass._System.nat)) (=> ($Is intType (int_2_U |x#0@@1|) Tclass._System.nat) (=> (and (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap |a#0| (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |i#0|) ($Box intType (int_2_U |x#0@@1|))))) ($IsGoodHeap $Heap@0)) (and (=> (= (ControlFlow 0 2) (- 0 21)) (or (not (= |a#0| null)) (not true))) (=> (or (not (= |a#0| null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 20)) (and (<= 0 |i#0|) (< |i#0| (_System.array.Length |a#0|)))) (=> (and (<= 0 |i#0|) (< |i#0| (_System.array.Length |a#0|))) (=> (= $index0@0 (IndexField |i#0|)) (and (=> (= (ControlFlow 0 2) (- 0 19)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |a#0| $index0@0))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |a#0| $index0@0)) (=> (= |i##0_0@0| (- |i#0| 1)) (and (=> (= (ControlFlow 0 2) (- 0 18)) (forall (($o@@10 T@U) ($f@@0 T@U) ) (!  (=> (and (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@10) alloc)))) (or (= $o@@10 |a#0|) (= $o@@10 |c#0@@3|))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@10 $f@@0)))
 :qid |Arraydfy.256:39|
 :skolemid |1175|
))) (=> (forall (($o@@11 T@U) ($f@@1 T@U) ) (!  (=> (and (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@11) alloc)))) (or (= $o@@11 |a#0|) (= $o@@11 |c#0@@3|))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@11 $f@@1)))
 :qid |Arraydfy.256:39|
 :skolemid |1175|
)) (and (=> (= (ControlFlow 0 2) (- 0 17)) (or (or (<= 0 |i#0|) (and (= |a#0| null) (or (not (= |a#0| null)) (not true)))) (= |i##0_0@0| |i#0|))) (=> (or (or (<= 0 |i#0|) (and (= |a#0| null) (or (not (= |a#0| null)) (not true)))) (= |i##0_0@0| |i#0|)) (and (=> (= (ControlFlow 0 2) (- 0 16)) (or (and (= |a#0| null) (or (not (= |a#0| null)) (not true))) (and (=  (or (not (= |a#0| null)) (not true))  (or (not (= |a#0| null)) (not true))) (or (< |i##0_0@0| |i#0|) (and (= |i##0_0@0| |i#0|) (and (= |c#0@@3| null) (or (not (= |c#0@@3| null)) (not true)))))))) (=> (or (and (= |a#0| null) (or (not (= |a#0| null)) (not true))) (and (=  (or (not (= |a#0| null)) (not true))  (or (not (= |a#0| null)) (not true))) (or (< |i##0_0@0| |i#0|) (and (= |i##0_0@0| |i#0|) (and (= |c#0@@3| null) (or (not (= |c#0@@3| null)) (not true))))))) (=> (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (and (forall (($o@@12 T@U) ) (!  (=> (and (or (not (= $o@@12 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@12) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@12) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@12)) (or (= $o@@12 |a#0|) (= $o@@12 |c#0@@3|))))
 :qid |Arraydfy.251:8|
 :skolemid |1173|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@12))
)) ($HeapSucc $Heap@0 $Heap@1))) (and (=> (= (ControlFlow 0 2) (- 0 15)) ($Is intType (int_2_U |call4formal@x#0@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |call4formal@x#0@0|) Tclass._System.nat) (=> (and (= $Heap@2 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@1 |a#0| (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |a#0|) $index0@0 ($Box intType (int_2_U |call4formal@x#0@0|))))) ($IsGoodHeap $Heap@2)) (and (=> (= (ControlFlow 0 2) (- 0 14)) (or (not (= |c#0@@3| null)) (not true))) (=> (or (not (= |c#0@@3| null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 13)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |c#0@@3| _module.Cdefg.t))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |c#0@@3| _module.Cdefg.t)) (and (=> (= (ControlFlow 0 2) (- 0 12)) ($Is intType (int_2_U (- |x#0@@1| 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (- |x#0@@1| 1)) Tclass._System.nat) (=> (= |$rhs#0_1@0| (- |x#0@@1| 1)) (=> (and (= $Heap@3 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@2 |c#0@@3| (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |c#0@@3|) _module.Cdefg.t ($Box intType (int_2_U |$rhs#0_1@0|))))) ($IsGoodHeap $Heap@3)) (and (=> (= (ControlFlow 0 2) (- 0 11)) (or (not (= |c#0@@3| null)) (not true))) (=> (or (not (= |c#0@@3| null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 10)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |c#0@@3| _module.Cdefg.t))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |c#0@@3| _module.Cdefg.t)) (=> (= |i##0_1@0| (- |i#0| 1)) (and (=> (= (ControlFlow 0 2) (- 0 9)) (forall (($o@@13 T@U) ($f@@2 T@U) ) (!  (=> (and (and (or (not (= $o@@13 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@13) alloc)))) (or (= $o@@13 |a#0|) (= $o@@13 |c#0@@3|))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@13 $f@@2)))
 :qid |Arraydfy.258:38|
 :skolemid |1176|
))) (=> (forall (($o@@14 T@U) ($f@@3 T@U) ) (!  (=> (and (and (or (not (= $o@@14 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@14) alloc)))) (or (= $o@@14 |a#0|) (= $o@@14 |c#0@@3|))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@14 $f@@3)))
 :qid |Arraydfy.258:38|
 :skolemid |1176|
)) (and (=> (= (ControlFlow 0 2) (- 0 8)) (or (or (<= 0 |i#0|) (and (= |a#0| null) (or (not (= |a#0| null)) (not true)))) (= |i##0_1@0| |i#0|))) (=> (or (or (<= 0 |i#0|) (and (= |a#0| null) (or (not (= |a#0| null)) (not true)))) (= |i##0_1@0| |i#0|)) (and (=> (= (ControlFlow 0 2) (- 0 7)) (or (and (= |a#0| null) (or (not (= |a#0| null)) (not true))) (and (=  (or (not (= |a#0| null)) (not true))  (or (not (= |a#0| null)) (not true))) (or (< |i##0_1@0| |i#0|) (and (= |i##0_1@0| |i#0|) (and (= |c#0@@3| null) (or (not (= |c#0@@3| null)) (not true)))))))) (=> (or (and (= |a#0| null) (or (not (= |a#0| null)) (not true))) (and (=  (or (not (= |a#0| null)) (not true))  (or (not (= |a#0| null)) (not true))) (or (< |i##0_1@0| |i#0|) (and (= |i##0_1@0| |i#0|) (and (= |c#0@@3| null) (or (not (= |c#0@@3| null)) (not true))))))) (=> (and (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (and (forall (($o@@15 T@U) ) (!  (=> (and (or (not (= $o@@15 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@15) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@15) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@15)) (or (= $o@@15 |a#0|) (= $o@@15 |c#0@@3|))))
 :qid |Arraydfy.251:8|
 :skolemid |1173|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@15))
)) ($HeapSucc $Heap@3 $Heap@4))) (and (=> (= (ControlFlow 0 2) (- 0 6)) ($Is intType (int_2_U |call4formal@x#0@0@@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |call4formal@x#0@0@@0|) Tclass._System.nat) (=> (and (and (= $Heap@5 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@4 |c#0@@3| (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |c#0@@3|) _module.Cdefg.t ($Box intType (int_2_U |call4formal@x#0@0@@0|))))) ($IsGoodHeap $Heap@5)) (and (<= (LitInt 0) |n#0_0@0|) (= |i##0_2@0| (- |i#0| 1)))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (forall (($o@@16 T@U) ($f@@4 T@U) ) (!  (=> (and (and (or (not (= $o@@16 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@16) alloc)))) (or (= $o@@16 |a#0|) (= $o@@16 |c#0@@3|))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@16 $f@@4)))
 :qid |Arraydfy.260:36|
 :skolemid |1177|
))) (=> (forall (($o@@17 T@U) ($f@@5 T@U) ) (!  (=> (and (and (or (not (= $o@@17 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@17) alloc)))) (or (= $o@@17 |a#0|) (= $o@@17 |c#0@@3|))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@17 $f@@5)))
 :qid |Arraydfy.260:36|
 :skolemid |1177|
)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (or (<= 0 |i#0|) (and (= |a#0| null) (or (not (= |a#0| null)) (not true)))) (= |i##0_2@0| |i#0|))) (=> (or (or (<= 0 |i#0|) (and (= |a#0| null) (or (not (= |a#0| null)) (not true)))) (= |i##0_2@0| |i#0|)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (and (= |a#0| null) (or (not (= |a#0| null)) (not true))) (and (=  (or (not (= |a#0| null)) (not true))  (or (not (= |a#0| null)) (not true))) (or (< |i##0_2@0| |i#0|) (and (= |i##0_2@0| |i#0|) (and (= |c#0@@3| null) (or (not (= |c#0@@3| null)) (not true)))))))) (=> (or (and (= |a#0| null) (or (not (= |a#0| null)) (not true))) (and (=  (or (not (= |a#0| null)) (not true))  (or (not (= |a#0| null)) (not true))) (or (< |i##0_2@0| |i#0|) (and (= |i##0_2@0| |i#0|) (and (= |c#0@@3| null) (or (not (= |c#0@@3| null)) (not true))))))) (=> (and (and (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6)) (forall (($o@@18 T@U) ) (!  (=> (and (or (not (= $o@@18 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@18) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@18) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@18)) (or (= $o@@18 |a#0|) (= $o@@18 |c#0@@3|))))
 :qid |Arraydfy.251:8|
 :skolemid |1173|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@18))
))) (and ($HeapSucc $Heap@5 $Heap@6) (= (ControlFlow 0 2) (- 0 1)))) ($Is intType (int_2_U |call4formal@x#0@0@@1|) Tclass._System.nat)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon2_correct  (and (=> (= (ControlFlow 0 27) 2) anon6_Then_correct) (=> (= (ControlFlow 0 27) 26) anon6_Else_correct))))
(let ((anon5_Else_correct  (=> (and (< |i#0| (LitInt 0)) (= (ControlFlow 0 30) 27)) anon2_correct)))
(let ((anon5_Then_correct  (=> (<= (LitInt 0) |i#0|) (and (=> (= (ControlFlow 0 28) (- 0 29)) (or (not (= |a#0| null)) (not true))) (=> (or (not (= |a#0| null)) (not true)) (=> (= (ControlFlow 0 28) 27) anon2_correct))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#12| null $Heap alloc |a#0| |c#0@@3|)) (and (=> (= (ControlFlow 0 31) 28) anon5_Then_correct) (=> (= (ControlFlow 0 31) 30) anon5_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is refType |a#0| (Tclass._System.array Tclass._System.nat)) ($IsAlloc refType |a#0| (Tclass._System.array Tclass._System.nat) $Heap)) (and ($Is refType |c#0@@3| (Tclass._module.Cdefg Tclass._System.nat)) ($IsAlloc refType |c#0@@3| (Tclass._module.Cdefg Tclass._System.nat) $Heap))) (and (and (<= (LitInt 0) |n#0_0|) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 32) 31)))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 22))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 15))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 12))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 6))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
