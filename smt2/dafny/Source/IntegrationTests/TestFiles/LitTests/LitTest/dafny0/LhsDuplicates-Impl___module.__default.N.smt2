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
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._module.MyClass () T@U)
(declare-fun class._module.MyClass? () T@U)
(declare-fun Tagclass._module.MyClass? () T@U)
(declare-fun tytagFamily$MyClass () T@U)
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
(declare-fun DeclName (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun _module.MyClass.f () T@U)
(declare-fun Tclass._module.MyClass? (T@U) T@U)
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
(declare-fun Tclass._module.MyClass (T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass._module.MyClass_0 (T@U) T@U)
(declare-fun Tclass._module.MyClass?_0 (T@U) T@U)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#1| (T@U T@U T@U T@U T@U) T@U)
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
(assert (distinct TagSeq alloc allocName Tagclass._module.MyClass class._module.MyClass? Tagclass._module.MyClass? tytagFamily$MyClass field$f)
)
(assert (= (FDim alloc) 0))
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
(assert (forall ((_module.MyClass$T T@U) ($h T@U) ($o T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._module.MyClass? _module.MyClass$T)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o) _module.MyClass.f) _module.MyClass$T))
 :qid |unknown.0:0|
 :skolemid |588|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o) _module.MyClass.f) (Tclass._module.MyClass? _module.MyClass$T))
)))
(assert (forall ((_module.MyClass$T@@0 T@U) ($h@@0 T@U) ($o@@0 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@0) (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) (Tclass._module.MyClass? _module.MyClass$T@@0)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) _module.MyClass.f) _module.MyClass$T@@0 $h@@0))
 :qid |unknown.0:0|
 :skolemid |589|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) _module.MyClass.f) (Tclass._module.MyClass? _module.MyClass$T@@0))
)))
(assert (forall ((_module.MyClass$T@@1 T@U) (|c#0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._module.MyClass _module.MyClass$T@@1) $h@@1) ($IsAlloc refType |c#0| (Tclass._module.MyClass? _module.MyClass$T@@1) $h@@1))
 :qid |unknown.0:0|
 :skolemid |594|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.MyClass _module.MyClass$T@@1) $h@@1))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.MyClass? _module.MyClass$T@@1) $h@@1))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((_module.MyClass$T@@2 T@U) ($o@@1 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@1 (Tclass._module.MyClass? _module.MyClass$T@@2) $h@@2)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |587|
 :pattern ( ($IsAlloc refType $o@@1 (Tclass._module.MyClass? _module.MyClass$T@@2) $h@@2))
)))
(assert (= (FDim _module.MyClass.f) 0))
(assert (= (FieldOfDecl class._module.MyClass? field$f) _module.MyClass.f))
(assert  (not ($IsGhostField _module.MyClass.f)))
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
(assert (= (Ctor SeqType) 7))
(assert (forall ((s T@U) (bx T@U) (t T@U) ) (!  (=> (and ($Is SeqType s (TSeq t)) ($IsBox bx t)) ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |258|
 :pattern ( ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert ($IsGhostField alloc))
(assert (forall ((s@@0 T@U) (v T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@0 v)) (+ 1 (|Seq#Length| s@@0)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s@@0 v))
)))
(assert (forall ((_module.MyClass$T@@3 T@U) (|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| (Tclass._module.MyClass _module.MyClass$T@@3))  (and ($Is refType |c#0@@0| (Tclass._module.MyClass? _module.MyClass$T@@3)) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |593|
 :pattern ( ($Is refType |c#0@@0| (Tclass._module.MyClass _module.MyClass$T@@3)))
 :pattern ( ($Is refType |c#0@@0| (Tclass._module.MyClass? _module.MyClass$T@@3)))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t@@0 h@@0) ($IsAlloc T@@1 v@@0 t@@0 h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t@@0 h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@1 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@1 h@@1) ($IsAllocBox bx@@0 t@@1 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@1 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@2 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@2 h@@2) ($IsAlloc T@@2 v@@1 t@@2 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@2 h@@2))
)))
(assert (forall ((_module.MyClass$T@@4 T@U) ) (!  (and (= (Tag (Tclass._module.MyClass _module.MyClass$T@@4)) Tagclass._module.MyClass) (= (TagFamily (Tclass._module.MyClass _module.MyClass$T@@4)) tytagFamily$MyClass))
 :qid |unknown.0:0|
 :skolemid |557|
 :pattern ( (Tclass._module.MyClass _module.MyClass$T@@4))
)))
(assert (forall ((_module.MyClass$T@@5 T@U) ) (!  (and (= (Tag (Tclass._module.MyClass? _module.MyClass$T@@5)) Tagclass._module.MyClass?) (= (TagFamily (Tclass._module.MyClass? _module.MyClass$T@@5)) tytagFamily$MyClass))
 :qid |unknown.0:0|
 :skolemid |583|
 :pattern ( (Tclass._module.MyClass? _module.MyClass$T@@5))
)))
(assert (forall ((_module.MyClass$T@@6 T@U) ($o@@2 T@U) ) (! (= ($Is refType $o@@2 (Tclass._module.MyClass? _module.MyClass$T@@6))  (or (= $o@@2 null) (= (dtype $o@@2) (Tclass._module.MyClass? _module.MyClass$T@@6))))
 :qid |unknown.0:0|
 :skolemid |586|
 :pattern ( ($Is refType $o@@2 (Tclass._module.MyClass? _module.MyClass$T@@6)))
)))
(assert (forall ((s@@1 T@U) (i Int) (v@@2 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@1)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@2) i) v@@2)) (=> (or (not (= i (|Seq#Length| s@@1))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@2) i) (|Seq#Index| s@@1 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@1 v@@2) i))
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
(assert (forall ((v@@3 T@U) (t@@3 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@3) t@@3) ($Is T@@3 v@@3 t@@3))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@3) t@@3))
)))
(assert (forall ((s@@2 T@U) ) (! (<= 0 (|Seq#Length| s@@2))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert (forall ((v@@4 T@U) (t0@@0 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SeqType v@@4 (TSeq t0@@0) h@@3) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@4))) ($IsAllocBox (|Seq#Index| v@@4 i@@0) t0@@0 h@@3))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@4 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@4 (TSeq t0@@0) h@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Inv0_TSeq (TSeq t@@4)) t@@4)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Tag (TSeq t@@5)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@5))
)))
(assert (forall ((_module.MyClass$T@@7 T@U) ) (! (= (Tclass._module.MyClass_0 (Tclass._module.MyClass _module.MyClass$T@@7)) _module.MyClass$T@@7)
 :qid |unknown.0:0|
 :skolemid |558|
 :pattern ( (Tclass._module.MyClass _module.MyClass$T@@7))
)))
(assert (forall ((_module.MyClass$T@@8 T@U) ) (! (= (Tclass._module.MyClass?_0 (Tclass._module.MyClass? _module.MyClass$T@@8)) _module.MyClass$T@@8)
 :qid |unknown.0:0|
 :skolemid |584|
 :pattern ( (Tclass._module.MyClass? _module.MyClass$T@@8))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((s@@3 T@U) (val@@1 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@3 val@@1)) s@@3) (= (|Seq#Build_inv1| (|Seq#Build| s@@3 val@@1)) val@@1))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@3 val@@1))
)))
(assert (forall ((bx@@1 T@U) (t@@6 T@U) ) (!  (=> ($IsBox bx@@1 (TSeq t@@6)) (and (= ($Box SeqType ($Unbox SeqType bx@@1)) bx@@1) ($Is SeqType ($Unbox SeqType bx@@1) (TSeq t@@6))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@1 (TSeq t@@6)))
)))
(assert (forall ((_module.MyClass$T@@9 T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass._module.MyClass _module.MyClass$T@@9)) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) (Tclass._module.MyClass _module.MyClass$T@@9))))
 :qid |unknown.0:0|
 :skolemid |559|
 :pattern ( ($IsBox bx@@2 (Tclass._module.MyClass _module.MyClass$T@@9)))
)))
(assert (forall ((_module.MyClass$T@@10 T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass._module.MyClass? _module.MyClass$T@@10)) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) (Tclass._module.MyClass? _module.MyClass$T@@10))))
 :qid |unknown.0:0|
 :skolemid |585|
 :pattern ( ($IsBox bx@@3 (Tclass._module.MyClass? _module.MyClass$T@@10)))
)))
(assert  (and (forall ((t0@@1 T@T) (t1@@0 T@T) (t2 T@T) (val@@2 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@1 t1@@0 t2 (MapType1Store t0@@1 t1@@0 t2 m@@1 x0@@1 x1 val@@2) x0@@1 x1) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@3 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@3) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@4 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@4) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@3 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@3 $f))  (=> (and (or (not (= $o@@3 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@3) |l#2|)))) (or (= $o@@3 |l#3|) (= $o@@3 |l#4|))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |596|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@3 $f))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert (forall ((s@@4 T@U) ) (!  (=> (= (|Seq#Length| s@@4) 0) (= s@@4 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@4))
)))
(assert (forall ((v@@5 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@5 (TSeq t0@@2)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@5))) ($IsBox (|Seq#Index| v@@5 i@@1) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@5 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@5 (TSeq t0@@2)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |i#0_0@0| () Int)
(declare-fun |q#0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |i#1_0@0| () Int)
(declare-fun |i#1_1@0| () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun |i#2_0@0| () Int)
(declare-fun |i#2_1@0| () Int)
(declare-fun $Heap@1 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap () T@U)
(declare-fun |a#0| () T@U)
(declare-fun |b#0| () T@U)
(declare-fun _module._default.N$T () T@U)
(declare-fun |q#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.N)
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
 (=> (= (ControlFlow 0 0) 32) (let ((anon3_correct  (=> (and (<= (LitInt 0) |i#0_0@0|) (< |i#0_0@0| 2)) (and (=> (= (ControlFlow 0 25) (- 0 27)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |q#0@0|)))) (and (=> (= (ControlFlow 0 25) (- 0 26)) (or (not (= ($Unbox refType (|Seq#Index| |q#0@0| (LitInt 0))) null)) (not true))) (=> (= (ControlFlow 0 25) (- 0 24)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 ($Unbox refType (|Seq#Index| |q#0@0| (LitInt 0))) _module.MyClass.f))))))))
(let ((anon16_Else_correct  (=> (and (< |i#0_0@0| (LitInt 0)) (= (ControlFlow 0 29) 25)) anon3_correct)))
(let ((anon16_Then_correct  (=> (and (<= (LitInt 0) |i#0_0@0|) (= (ControlFlow 0 28) 25)) anon3_correct)))
(let ((anon15_Then_correct  (and (=> (= (ControlFlow 0 30) 28) anon16_Then_correct) (=> (= (ControlFlow 0 30) 29) anon16_Else_correct))))
(let ((anon8_correct  (=> (and (<= (LitInt 0) |i#1_0@0|) (< |i#1_0@0| 2)) (and (=> (= (ControlFlow 0 14) (- 0 19)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |q#0@0|)))) (and (=> (= (ControlFlow 0 14) (- 0 18)) (or (not (= ($Unbox refType (|Seq#Index| |q#0@0| (LitInt 0))) null)) (not true))) (and (=> (= (ControlFlow 0 14) (- 0 17)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 ($Unbox refType (|Seq#Index| |q#0@0| (LitInt 0))) _module.MyClass.f))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 ($Unbox refType (|Seq#Index| |q#0@0| (LitInt 0))) _module.MyClass.f)) (and (=> (= (ControlFlow 0 14) (- 0 16)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |q#0@0|)))) (and (=> (= (ControlFlow 0 14) (- 0 15)) (or (not (= ($Unbox refType (|Seq#Index| |q#0@0| (LitInt 0))) null)) (not true))) (=> (and (and (<= (LitInt 0) |i#1_1@0|) (< |i#1_1@0| 2)) (and (or (not (= |i#1_0@0| |i#1_1@0|)) (not true)) (= (ControlFlow 0 14) (- 0 13)))) (or (or (or (not (= ($Unbox refType (|Seq#Index| |q#0@0| (LitInt 0))) ($Unbox refType (|Seq#Index| |q#0@0| (LitInt 0))))) (not true)) (or (not (= _module.MyClass.f _module.MyClass.f)) (not true))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (|Seq#Index| |q#0@0| (LitInt 0)))) _module.MyClass.f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (|Seq#Index| |q#0@0| (LitInt 0)))) _module.MyClass.f)))))))))))))
(let ((anon18_Else_correct  (=> (and (< |i#1_0@0| (LitInt 0)) (= (ControlFlow 0 21) 14)) anon8_correct)))
(let ((anon18_Then_correct  (=> (and (<= (LitInt 0) |i#1_0@0|) (= (ControlFlow 0 20) 14)) anon8_correct)))
(let ((anon17_Then_correct  (and (=> (= (ControlFlow 0 22) 20) anon18_Then_correct) (=> (= (ControlFlow 0 22) 21) anon18_Else_correct))))
(let ((anon13_correct  (=> (and (<= (LitInt 0) |i#2_0@0|) (< |i#2_0@0| 2)) (and (=> (= (ControlFlow 0 3) (- 0 8)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |q#0@0|)))) (and (=> (= (ControlFlow 0 3) (- 0 7)) (or (not (= ($Unbox refType (|Seq#Index| |q#0@0| (LitInt 0))) null)) (not true))) (and (=> (= (ControlFlow 0 3) (- 0 6)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 ($Unbox refType (|Seq#Index| |q#0@0| (LitInt 0))) _module.MyClass.f))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 ($Unbox refType (|Seq#Index| |q#0@0| (LitInt 0))) _module.MyClass.f)) (and (=> (= (ControlFlow 0 3) (- 0 5)) (and (<= 0 |i#2_0@0|) (< |i#2_0@0| (|Seq#Length| |q#0@0|)))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (or (not (= ($Unbox refType (|Seq#Index| |q#0@0| |i#2_0@0|)) null)) (not true))) (=> (and (and (<= (LitInt 0) |i#2_1@0|) (< |i#2_1@0| 2)) (and (or (not (= |i#2_0@0| |i#2_1@0|)) (not true)) (= (ControlFlow 0 3) (- 0 2)))) (or (or (or (not (= ($Unbox refType (|Seq#Index| |q#0@0| (LitInt 0))) ($Unbox refType (|Seq#Index| |q#0@0| (LitInt 0))))) (not true)) (or (not (= _module.MyClass.f _module.MyClass.f)) (not true))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (|Seq#Index| |q#0@0| |i#2_0@0|))) _module.MyClass.f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (|Seq#Index| |q#0@0| |i#2_1@0|))) _module.MyClass.f)))))))))))))
(let ((anon20_Else_correct  (=> (and (< |i#2_0@0| (LitInt 0)) (= (ControlFlow 0 10) 3)) anon13_correct)))
(let ((anon20_Then_correct  (=> (and (<= (LitInt 0) |i#2_0@0|) (= (ControlFlow 0 9) 3)) anon13_correct)))
(let ((anon19_Then_correct  (and (=> (= (ControlFlow 0 11) 9) anon20_Then_correct) (=> (= (ControlFlow 0 11) 10) anon20_Else_correct))))
(let ((anon19_Else_correct true))
(let ((anon17_Else_correct  (=> (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) ($HeapSucc $Heap@0 $Heap@1)) (and (forall (($o@@4 T@U) ($f@@0 T@U) ) (!  (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@4) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@4) $f@@0)) (exists ((|i#1_2| Int) ) (!  (and (and (and (<= (LitInt 0) |i#1_2|) (< |i#1_2| 2)) (= $o@@4 ($Unbox refType (|Seq#Index| |q#0@0| (LitInt 0))))) (= $f@@0 _module.MyClass.f))
 :qid |LhsDuplicatesdfy.32:10|
 :skolemid |565|
)))
 :qid |LhsDuplicatesdfy.32:3|
 :skolemid |566|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@4) $f@@0))
)) (forall ((|i#1_2@@0| Int) ) (!  (=> (and (<= (LitInt 0) |i#1_2@@0|) (< |i#1_2@@0| 2)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (|Seq#Index| |q#0@0| (LitInt 0)))) _module.MyClass.f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (|Seq#Index| |q#0@0| (LitInt 0)))) _module.MyClass.f)))
 :qid |LhsDuplicatesdfy.32:10|
 :skolemid |567|
)))) (and (=> (= (ControlFlow 0 12) 11) anon19_Then_correct) (=> (= (ControlFlow 0 12) 1) anon19_Else_correct)))))
(let ((anon15_Else_correct  (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and ($HeapSucc $Heap $Heap@0) (forall (($o@@5 T@U) ($f@@1 T@U) ) (!  (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@5) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@5) $f@@1)) (exists ((|i#0_1| Int) ) (!  (and (and (and (<= (LitInt 0) |i#0_1|) (< |i#0_1| 2)) (= $o@@5 ($Unbox refType (|Seq#Index| |q#0@0| (LitInt 0))))) (= $f@@1 _module.MyClass.f))
 :qid |LhsDuplicatesdfy.29:10|
 :skolemid |563|
)))
 :qid |LhsDuplicatesdfy.29:3|
 :skolemid |564|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@5) $f@@1))
)))) (and (=> (= (ControlFlow 0 23) 22) anon17_Then_correct) (=> (= (ControlFlow 0 23) 12) anon17_Else_correct)))))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#1| null $Heap alloc |a#0| |b#0|)) (= |q#0@0| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box refType |a#0|)) ($Box refType |b#0|)))) (and (=> (= (ControlFlow 0 31) 30) anon15_Then_correct) (=> (= (ControlFlow 0 31) 23) anon15_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is refType |a#0| (Tclass._module.MyClass _module._default.N$T)) ($IsAlloc refType |a#0| (Tclass._module.MyClass _module._default.N$T) $Heap)) (and ($Is refType |b#0| (Tclass._module.MyClass _module._default.N$T)) ($IsAlloc refType |b#0| (Tclass._module.MyClass _module._default.N$T) $Heap))) (=> (and (and (and ($Is SeqType |q#0| (TSeq (Tclass._module.MyClass _module._default.N$T))) ($IsAlloc SeqType |q#0| (TSeq (Tclass._module.MyClass _module._default.N$T)) $Heap)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 32) 31))) anon0_correct)))))
PreconditionGeneratedEntry_correct))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 3) (- 2))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
