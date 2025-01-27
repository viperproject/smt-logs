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
(declare-fun Tagclass._module.C () T@U)
(declare-fun Tagclass._module.C? () T@U)
(declare-fun class._module.C? () T@U)
(declare-fun tytagFamily$array () T@U)
(declare-fun tytagFamily$C () T@U)
(declare-fun field$cc () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._System.array (T@U) T@U)
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
(declare-fun _module.C.cc () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#3| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
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
(assert (distinct TInt TagInt alloc allocName Tagclass._System.array? Tagclass._System.array Tagclass._module.C Tagclass._module.C? class._module.C? tytagFamily$array tytagFamily$C field$cc)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall ((_System.array$arg T@U) ($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._System.array? _System.array$arg))) ($Is intType (int_2_U (_System.array.Length $o)) TInt))
 :qid |unknown.0:0|
 :skolemid |1095|
 :pattern ( (_System.array.Length $o) (Tclass._System.array? _System.array$arg))
)))
(assert (= (Ctor refType) 3))
(assert (forall ((_System.array$arg@@0 T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h))
 :qid |unknown.0:0|
 :skolemid |1101|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass._module.C?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass._module.C?)))
 :qid |unknown.0:0|
 :skolemid |1521|
 :pattern ( ($Is refType $o@@0 Tclass._module.C?))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.C $h@@0) ($IsAlloc refType |c#0@@0| Tclass._module.C? $h@@0))
 :qid |unknown.0:0|
 :skolemid |1647|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.C $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.C? $h@@0))
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
(assert (forall ((_System.array$arg@@1 T@U) ($o@@1 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@1 (Tclass._System.array? _System.array$arg@@1) $h@@1)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1094|
 :pattern ( ($IsAlloc refType $o@@1 (Tclass._System.array? _System.array$arg@@1) $h@@1))
)))
(assert (= (FDim _module.C.cc) 0))
(assert (= (FieldOfDecl class._module.C? field$cc) _module.C.cc))
(assert  (not ($IsGhostField _module.C.cc)))
(assert (forall (($o@@2 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._module.C? $h@@2)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1522|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.C? $h@@2))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |854|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |855|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |753|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |751|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |762|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert ($IsGhostField alloc))
(assert (forall ((_System.array$arg@@2 T@U) (|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| (Tclass._System.array _System.array$arg@@2))  (and ($Is refType |c#0@@1| (Tclass._System.array? _System.array$arg@@2)) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1100|
 :pattern ( ($Is refType |c#0@@1| (Tclass._System.array _System.array$arg@@2)))
 :pattern ( ($Is refType |c#0@@1| (Tclass._System.array? _System.array$arg@@2)))
)))
(assert (forall ((h@@0 T@U) (k@@0 T@U) (v T@U) (t T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@0 k@@0) (=> ($IsAlloc T@@1 v t h@@0) ($IsAlloc T@@1 v t k@@0)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |846|
 :pattern ( ($HeapSucc h@@0 k@@0) ($IsAlloc T@@1 v t h@@0))
)))
(assert (forall ((_System.array$arg@@3 T@U) ) (!  (and (= (Tag (Tclass._System.array? _System.array$arg@@3)) Tagclass._System.array?) (= (TagFamily (Tclass._System.array? _System.array$arg@@3)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |1088|
 :pattern ( (Tclass._System.array? _System.array$arg@@3))
)))
(assert (forall ((_System.array$arg@@4 T@U) ) (!  (and (= (Tag (Tclass._System.array _System.array$arg@@4)) Tagclass._System.array) (= (TagFamily (Tclass._System.array _System.array$arg@@4)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |1097|
 :pattern ( (Tclass._System.array _System.array$arg@@4))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@3 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#3| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))  (=> (and (or (not (= $o@@3 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@3) |l#2|)))) (= $o@@3 |l#3|)))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1676|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#3| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))
)))
(assert (forall (($h@@3 T@U) ($o@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) Tclass._module.C?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) _module.C.cc)) Tclass._module.C?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1564|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) _module.C.cc)))
)))
(assert (forall ((_System.array$arg@@5 T@U) ($o@@5 T@U) ) (! (= ($Is refType $o@@5 (Tclass._System.array? _System.array$arg@@5))  (or (= $o@@5 null) (= (dtype $o@@5) (Tclass._System.array? _System.array$arg@@5))))
 :qid |unknown.0:0|
 :skolemid |1093|
 :pattern ( ($Is refType $o@@5 (Tclass._System.array? _System.array$arg@@5)))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._module.C)  (and ($Is refType |c#0@@2| Tclass._module.C?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1646|
 :pattern ( ($Is refType |c#0@@2| Tclass._module.C))
 :pattern ( ($Is refType |c#0@@2| Tclass._module.C?))
)))
(assert (forall (($h@@4 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass._module.C?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@6) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@6) _module.C.cc)) Tclass._module.C? $h@@4))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1565|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@6) _module.C.cc)))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |853|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |843|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((o@@0 T@U) ) (! (<= 0 (_System.array.Length o@@0))
 :qid |DafnyPreludebpl.571:15|
 :skolemid |848|
 :pattern ( (_System.array.Length o@@0))
)))
(assert (forall ((_System.array$arg@@6 T@U) ) (! (= (Tclass._System.array?_0 (Tclass._System.array? _System.array$arg@@6)) _System.array$arg@@6)
 :qid |unknown.0:0|
 :skolemid |1089|
 :pattern ( (Tclass._System.array? _System.array$arg@@6))
)))
(assert (forall ((_System.array$arg@@7 T@U) ) (! (= (Tclass._System.array_0 (Tclass._System.array _System.array$arg@@7)) _System.array$arg@@7)
 :qid |unknown.0:0|
 :skolemid |1098|
 :pattern ( (Tclass._System.array _System.array$arg@@7))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |761|
 :pattern ( ($Box T@@2 x@@5))
)))
(assert (forall ((_System.array$arg@@8 T@U) ($h@@5 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) (Tclass._System.array? _System.array$arg@@8)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@7) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@7)) TInt $h@@5))
 :qid |unknown.0:0|
 :skolemid |1096|
 :pattern ( (_System.array.Length $o@@7) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@7) alloc)) (Tclass._System.array? _System.array$arg@@8))
)))
(assert (= (Tag Tclass._module.C) Tagclass._module.C))
(assert (= (TagFamily Tclass._module.C) tytagFamily$C))
(assert (= (Tag Tclass._module.C?) Tagclass._module.C?))
(assert (= (TagFamily Tclass._module.C?) tytagFamily$C))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |754|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@7)) (Lit BoxType ($Box T@@3 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |752|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@7)))
)))
(assert (forall ((h@@1 T@U) (v@@0 T@U) ) (! ($IsAlloc intType v@@0 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |797|
 :pattern ( ($IsAlloc intType v@@0 TInt h@@1))
)))
(assert (forall ((v@@1 T@U) ) (! ($Is intType v@@1 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |776|
 :pattern ( ($Is intType v@@1 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap () T@U)
(declare-fun this () T@U)
(declare-fun |m#0| () T@U)
(declare-fun |arr#0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id CheckWellFormed$$_module.C.DefinednessOld)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon3_correct  (=> (and (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.C.cc)) |m#0|) (or (not (= |m#0| null)) (not true))) (= (ControlFlow 0 2) (- 0 1))) (or (not (= |arr#0| null)) (not true)))))
(let ((anon4_Else_correct  (=> (and (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.C.cc)) |m#0|)) (not true)) (= (ControlFlow 0 4) 2)) anon3_correct)))
(let ((anon4_Then_correct  (=> (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.C.cc)) |m#0|) (= (ControlFlow 0 3) 2)) anon3_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#3| null $Heap alloc this)) (and (=> (= (ControlFlow 0 5) 3) anon4_Then_correct) (=> (= (ControlFlow 0 5) 4) anon4_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.C) ($IsAlloc refType this Tclass._module.C $Heap))) (and ($Is refType |m#0| Tclass._module.C?) ($IsAlloc refType |m#0| Tclass._module.C? $Heap))) (and (and ($Is refType |arr#0| (Tclass._System.array TInt)) ($IsAlloc refType |arr#0| (Tclass._System.array TInt) $Heap)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 6) 5)))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
