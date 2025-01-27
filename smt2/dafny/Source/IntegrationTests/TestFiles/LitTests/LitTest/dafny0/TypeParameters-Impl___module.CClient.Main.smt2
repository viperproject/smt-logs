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
(declare-fun class._module.CC? () T@U)
(declare-fun Tagclass._module.CC? () T@U)
(declare-fun Tagclass._module.CC () T@U)
(declare-fun Tagclass._module.CClient? () T@U)
(declare-fun Tagclass._module.CClient () T@U)
(declare-fun tytagFamily$CC () T@U)
(declare-fun tytagFamily$CClient () T@U)
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
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun _module.CC.x () T@U)
(declare-fun Tclass._module.CC? (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.CC (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._module.CClient? () T@U)
(declare-fun Tclass._module.CClient () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun Tclass._module.CC?_0 (T@U) T@U)
(declare-fun Tclass._module.CC_0 (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
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
(assert (distinct TInt TagInt alloc allocName class._module.CC? Tagclass._module.CC? Tagclass._module.CC Tagclass._module.CClient? Tagclass._module.CClient tytagFamily$CC tytagFamily$CClient field$x)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
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
(assert (forall ((_module.CC$T T@U) ($h T@U) ($o T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._module.CC? _module.CC$T)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o) _module.CC.x) _module.CC$T))
 :qid |unknown.0:0|
 :skolemid |4280|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o) _module.CC.x) (Tclass._module.CC? _module.CC$T))
)))
(assert (forall ((_module.CC$T@@0 T@U) ($h@@0 T@U) ($o@@0 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@0) (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) (Tclass._module.CC? _module.CC$T@@0)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) _module.CC.x) _module.CC$T@@0 $h@@0))
 :qid |unknown.0:0|
 :skolemid |4281|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) _module.CC.x) (Tclass._module.CC? _module.CC$T@@0))
)))
(assert (forall ((_module.CC$T@@1 T@U) (|c#0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._module.CC _module.CC$T@@1) $h@@1) ($IsAlloc refType |c#0| (Tclass._module.CC? _module.CC$T@@1) $h@@1))
 :qid |unknown.0:0|
 :skolemid |4289|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.CC _module.CC$T@@1) $h@@1))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.CC? _module.CC$T@@1) $h@@1))
)))
(assert (forall (($o@@1 T@U) ) (! (= ($Is refType $o@@1 Tclass._module.CClient?)  (or (= $o@@1 null) (= (dtype $o@@1) Tclass._module.CClient?)))
 :qid |unknown.0:0|
 :skolemid |4291|
 :pattern ( ($Is refType $o@@1 Tclass._module.CClient?))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.CClient $h@@2) ($IsAlloc refType |c#0@@0| Tclass._module.CClient? $h@@2))
 :qid |unknown.0:0|
 :skolemid |4299|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.CClient $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.CClient? $h@@2))
)))
(assert (forall ((_module.CC$T@@2 T@U) ($o@@2 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@2 (Tclass._module.CC? _module.CC$T@@2) $h@@3)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |4279|
 :pattern ( ($IsAlloc refType $o@@2 (Tclass._module.CC? _module.CC$T@@2) $h@@3))
)))
(assert (= (FDim _module.CC.x) 0))
(assert (= (FieldOfDecl class._module.CC? field$x) _module.CC.x))
(assert  (not ($IsGhostField _module.CC.x)))
(assert (forall (($o@@3 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass._module.CClient? $h@@4)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |4292|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._module.CClient? $h@@4))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |3554|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |3555|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |3453|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |3451|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |3462|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert ($IsGhostField alloc))
(assert (forall ((_module.CC$T@@3 T@U) (|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| (Tclass._module.CC _module.CC$T@@3))  (and ($Is refType |c#0@@1| (Tclass._module.CC? _module.CC$T@@3)) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |4288|
 :pattern ( ($Is refType |c#0@@1| (Tclass._module.CC _module.CC$T@@3)))
 :pattern ( ($Is refType |c#0@@1| (Tclass._module.CC? _module.CC$T@@3)))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |3475|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx t@@0 h@@1) ($IsAllocBox bx t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |3547|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@2) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |3546|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@2))
)))
(assert (forall ((_module.CC$T@@4 T@U) ) (!  (and (= (Tag (Tclass._module.CC? _module.CC$T@@4)) Tagclass._module.CC?) (= (TagFamily (Tclass._module.CC? _module.CC$T@@4)) tytagFamily$CC))
 :qid |unknown.0:0|
 :skolemid |4275|
 :pattern ( (Tclass._module.CC? _module.CC$T@@4))
)))
(assert (forall ((_module.CC$T@@5 T@U) ) (!  (and (= (Tag (Tclass._module.CC _module.CC$T@@5)) Tagclass._module.CC) (= (TagFamily (Tclass._module.CC _module.CC$T@@5)) tytagFamily$CC))
 :qid |unknown.0:0|
 :skolemid |4282|
 :pattern ( (Tclass._module.CC _module.CC$T@@5))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._module.CClient?) (and (= ($Box refType ($Unbox refType bx@@0)) bx@@0) ($Is refType ($Unbox refType bx@@0) Tclass._module.CClient?)))
 :qid |unknown.0:0|
 :skolemid |4290|
 :pattern ( ($IsBox bx@@0 Tclass._module.CClient?))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.CClient) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._module.CClient)))
 :qid |unknown.0:0|
 :skolemid |4293|
 :pattern ( ($IsBox bx@@1 Tclass._module.CClient))
)))
(assert (forall ((_module.CC$T@@6 T@U) ($o@@4 T@U) ) (! (= ($Is refType $o@@4 (Tclass._module.CC? _module.CC$T@@6))  (or (= $o@@4 null) (= (dtype $o@@4) (Tclass._module.CC? _module.CC$T@@6))))
 :qid |unknown.0:0|
 :skolemid |4278|
 :pattern ( ($Is refType $o@@4 (Tclass._module.CC? _module.CC$T@@6)))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._module.CClient)  (and ($Is refType |c#0@@2| Tclass._module.CClient?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |4298|
 :pattern ( ($Is refType |c#0@@2| Tclass._module.CClient))
 :pattern ( ($Is refType |c#0@@2| Tclass._module.CClient?))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |3553|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |3543|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TInt) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |3463|
 :pattern ( ($IsBox bx@@2 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@2) ($Is T@@3 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |3474|
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@2))
)))
(assert (forall ((_module.CC$T@@7 T@U) ) (! (= (Tclass._module.CC?_0 (Tclass._module.CC? _module.CC$T@@7)) _module.CC$T@@7)
 :qid |unknown.0:0|
 :skolemid |4276|
 :pattern ( (Tclass._module.CC? _module.CC$T@@7))
)))
(assert (forall ((_module.CC$T@@8 T@U) ) (! (= (Tclass._module.CC_0 (Tclass._module.CC _module.CC$T@@8)) _module.CC$T@@8)
 :qid |unknown.0:0|
 :skolemid |4283|
 :pattern ( (Tclass._module.CC _module.CC$T@@8))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |3461|
 :pattern ( ($Box T@@4 x@@5))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@5 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f))  (=> (and (or (not (= $o@@5 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@5) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |4659|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f))
)))
(assert (forall ((_module.CC$T@@9 T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass._module.CC? _module.CC$T@@9)) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) (Tclass._module.CC? _module.CC$T@@9))))
 :qid |unknown.0:0|
 :skolemid |4277|
 :pattern ( ($IsBox bx@@3 (Tclass._module.CC? _module.CC$T@@9)))
)))
(assert (forall ((_module.CC$T@@10 T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass._module.CC _module.CC$T@@10)) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) (Tclass._module.CC _module.CC$T@@10))))
 :qid |unknown.0:0|
 :skolemid |4284|
 :pattern ( ($IsBox bx@@4 (Tclass._module.CC _module.CC$T@@10)))
)))
(assert (forall ((h@@3 T@U) (r T@U) (f T@U) (x@@6 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@6))) ($HeapSucc h@@3 (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@6))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |3552|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@6)))
)))
(assert (= (Tag Tclass._module.CClient?) Tagclass._module.CClient?))
(assert (= (TagFamily Tclass._module.CClient?) tytagFamily$CClient))
(assert (= (Tag Tclass._module.CClient) Tagclass._module.CClient))
(assert (= (TagFamily Tclass._module.CClient) tytagFamily$CClient))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |3454|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@8)) (Lit BoxType ($Box T@@5 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |3452|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@8)))
)))
(assert (forall ((h@@4 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |3497|
 :pattern ( ($IsAlloc intType v@@2 TInt h@@4))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is intType v@@3 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |3476|
 :pattern ( ($Is intType v@@3 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $nw@0 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |$rhs#0@0| () Int)
(declare-fun $Heap@1 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |$rhs#1@0| () Int)
(declare-fun $Heap@2 () T@U)
(declare-fun |z##0@0| () Int)
(declare-fun |call5formal@y#0| () T@U)
(declare-fun call0formal@_module.CC$T () T@U)
(declare-fun $Heap () T@U)
(declare-fun |call3formal@z#0@0| () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |call5formal@y#0@0| () T@U)
(declare-fun |$rhs##0@0| () Int)
(declare-fun |m#0@0| () Int)
(declare-fun |k#0@2| () Int)
(declare-fun |k#0| () Int)
(declare-fun |k#0@1| () Int)
(declare-fun |k#0@0| () Int)
(declare-fun StartFuel_ParseGenerics._default.Many () T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun BaseFuel_ParseGenerics._default.Many () T@U)
(declare-fun StartFuelAssert_ParseGenerics._default.Many () T@U)
(declare-fun AsFuelBottom (T@U) T@U)
(declare-fun this () T@U)
(declare-fun |defass#c#0| () Bool)
(declare-fun |c#0@@3| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.CClient.Main)
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
 (=> (= (ControlFlow 0 0) 33) (let ((anon6_correct  (and (=> (= (ControlFlow 0 2) (- 0 16)) true) (and (=> (= (ControlFlow 0 2) (- 0 15)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 14)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 _module.CC.x))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 _module.CC.x)) (=> (= |$rhs#0@0| (LitInt 5)) (=> (and (= $Heap@1 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0) _module.CC.x ($Box intType (int_2_U |$rhs#0@0|))))) ($IsGoodHeap $Heap@1)) (and (=> (= (ControlFlow 0 2) (- 0 13)) true) (and (=> (= (ControlFlow 0 2) (- 0 12)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 11)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 _module.CC.x))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 _module.CC.x)) (and (=> (= (ControlFlow 0 2) (- 0 10)) true) (and (=> (= (ControlFlow 0 2) (- 0 9)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (=> (= |$rhs#1@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) _module.CC.x)))) (=> (and (= $Heap@2 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) _module.CC.x ($Box intType (int_2_U |$rhs#1@0|))))) ($IsGoodHeap $Heap@2)) (and (=> (= (ControlFlow 0 2) (- 0 8)) true) (and (=> (= (ControlFlow 0 2) (- 0 7)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 6)) true) (=> (= |z##0@0| (LitInt 17)) (and (=> (= (ControlFlow 0 2) (- 0 5)) (forall (($o@@6 T@U) ($f@@0 T@U) ) (!  (=> (and (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@6) alloc)))) (= $o@@6 $nw@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@6 $f@@0)))
 :qid |TypeParametersdfy.98:17|
 :skolemid |4297|
))) (=> (forall (($o@@7 T@U) ($f@@1 T@U) ) (!  (=> (and (and (or (not (= $o@@7 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@7) alloc)))) (= $o@@7 $nw@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@7 $f@@1)))
 :qid |TypeParametersdfy.98:17|
 :skolemid |4297|
)) (=> (and (and (and (and ($IsBox |call5formal@y#0| call0formal@_module.CC$T) ($IsAllocBox |call5formal@y#0| call0formal@_module.CC$T $Heap)) (= |call3formal@z#0@0| ($Box intType (int_2_U |z##0@0|)))) (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3))) (and (and (and ($IsBox |call5formal@y#0@0| TInt) ($IsAllocBox |call5formal@y#0@0| TInt $Heap@3)) (= |call5formal@y#0@0| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@0) _module.CC.x))) (and (and (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@0) _module.CC.x) |call3formal@z#0@0|) (forall (($o@@8 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@8) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@8) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@8)) (= $o@@8 $nw@0)))
 :qid |TypeParametersdfy.75:10|
 :skolemid |4286|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@8))
))) (and ($HeapSucc $Heap@2 $Heap@3) (= |$rhs##0@0| (U_2_int ($Unbox intType |call5formal@y#0@0|))))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= $nw@0 null)) (not true))) (=> (= (ControlFlow 0 2) (- 0 1)) (= |$rhs##0@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@0) _module.CC.x))))))))))))))))))))))))))))))))))
(let ((anon8_Else_correct  (=> (and (or (not (= |m#0@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0) _module.CC.x))))) (not true)) (= (ControlFlow 0 18) 2)) anon6_correct)))
(let ((anon8_Then_correct  (=> (= |m#0@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0) _module.CC.x)))) (=> (and (= |k#0@2| (+ |k#0| 1)) (= (ControlFlow 0 17) 2)) anon6_correct))))
(let ((anon3_correct  (and (=> (= (ControlFlow 0 19) (- 0 23)) true) (and (=> (= (ControlFlow 0 19) (- 0 22)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (=> (= |m#0@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0) _module.CC.x)))) (and (=> (= (ControlFlow 0 19) (- 0 21)) true) (and (=> (= (ControlFlow 0 19) (- 0 20)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 19) 17) anon8_Then_correct) (=> (= (ControlFlow 0 19) 18) anon8_Else_correct)))))))))))
(let ((anon7_Else_correct  (=> (and (or (not (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0) _module.CC.x))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0) _module.CC.x))))) (not true)) (= (ControlFlow 0 25) 19)) anon3_correct)))
(let ((anon7_Then_correct  (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0) _module.CC.x))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0) _module.CC.x)))) (=> (and (= |k#0@1| (+ |k#0@0| 1)) (= (ControlFlow 0 24) 19)) anon3_correct))))
(let ((anon0_correct  (=> (and (= StartFuel_ParseGenerics._default.Many ($LS BaseFuel_ParseGenerics._default.Many)) (= StartFuelAssert_ParseGenerics._default.Many ($LS ($LS BaseFuel_ParseGenerics._default.Many)))) (=> (and (and (and (= (AsFuelBottom BaseFuel_ParseGenerics._default.Many) BaseFuel_ParseGenerics._default.Many) (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false))) (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 (Tclass._module.CC? TInt)))) (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc)))) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)))) (and (=> (= (ControlFlow 0 26) (- 0 32)) true) (and (=> (= (ControlFlow 0 26) (- 0 31)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (=> (= |k#0@0| (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0) _module.CC.x))) 3)) (and (=> (= (ControlFlow 0 26) (- 0 30)) true) (and (=> (= (ControlFlow 0 26) (- 0 29)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 26) (- 0 28)) true) (and (=> (= (ControlFlow 0 26) (- 0 27)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 26) 24) anon7_Then_correct) (=> (= (ControlFlow 0 26) 25) anon7_Else_correct))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.CClient) ($IsAlloc refType this Tclass._module.CClient $Heap)))) (and (and (=> |defass#c#0| (and ($Is refType |c#0@@3| (Tclass._module.CC TInt)) ($IsAlloc refType |c#0@@3| (Tclass._module.CC TInt) $Heap))) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 33) 26)))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
