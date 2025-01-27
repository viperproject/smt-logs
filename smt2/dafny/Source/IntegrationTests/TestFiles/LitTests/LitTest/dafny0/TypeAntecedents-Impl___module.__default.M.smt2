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
(declare-fun TInt () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagSet () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._module.List () T@U)
(declare-fun Tagclass._module.MyClass () T@U)
(declare-fun Tagclass._module.MyClass? () T@U)
(declare-fun Tagclass._module.State () T@U)
(declare-fun Tagclass._module.State? () T@U)
(declare-fun Tagclass._module.GenData () T@U)
(declare-fun class._module.MyClass? () T@U)
(declare-fun |##_module.List.Nil| () T@U)
(declare-fun |##_module.List.Cons| () T@U)
(declare-fun class._module.State? () T@U)
(declare-fun |##_module.GenData.Pair| () T@U)
(declare-fun tytagFamily$List () T@U)
(declare-fun tytagFamily$MyClass () T@U)
(declare-fun tytagFamily$State () T@U)
(declare-fun tytagFamily$GenData () T@U)
(declare-fun field$x () T@U)
(declare-fun field$a () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.MyClass.H (T@U) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun refType () T@T)
(declare-fun |_module.MyClass.H#canCall| (T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._module.MyClass () T@U)
(declare-fun LitInt (Int) Int)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |#_module.List.Cons| (T@U T@U) T@U)
(declare-fun Tclass._module.List () T@U)
(declare-fun Tclass._module.MyClass? () T@U)
(declare-fun _module.__default.AlsoTakesADatatype (T@U T@U) Int)
(declare-fun |_module.__default.AlsoTakesADatatype#canCall| (T@U T@U) Bool)
(declare-fun Tclass._module.GenData (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.List.Nil| () T@U)
(declare-fun _module.GenData.Pair_q (T@U) Bool)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._module.State? () T@U)
(declare-fun Tclass._module.State () T@U)
(declare-fun _module.MyClass.x () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.State.a () T@U)
(declare-fun |#_module.GenData.Pair| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun _module.List.Nil_q (T@U) Bool)
(declare-fun _module.List.Cons_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun _module.State.NF (T@U T@U) T@U)
(declare-fun |_module.State.NF#canCall| (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |$IsA#_module.List| (T@U) Bool)
(declare-fun Div (Int Int) Int)
(declare-fun _module.__default.TakesADatatype (T@U) Int)
(declare-fun |_module.__default.TakesADatatype#canCall| (T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun _module.List._h1 (T@U) T@U)
(declare-fun _module.List._h2 (T@U) T@U)
(declare-fun _module.GenData._h3 (T@U) T@U)
(declare-fun _module.GenData._h4 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tclass._module.GenData_0 (T@U) T@U)
(declare-fun DtRank (T@U) Int)
(declare-fun BoxRank (T@U) Int)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#4| (T@U T@U T@U T@U) T@U)
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
(assert (distinct TBool TInt TagBool TagInt TagSet alloc allocName Tagclass._module.List Tagclass._module.MyClass Tagclass._module.MyClass? Tagclass._module.State Tagclass._module.State? Tagclass._module.GenData class._module.MyClass? |##_module.List.Nil| |##_module.List.Cons| class._module.State? |##_module.GenData.Pair| tytagFamily$List tytagFamily$MyClass tytagFamily$State tytagFamily$GenData field$x field$a)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (= (Ctor refType) 3))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this T@U) ) (!  (=> (or (|_module.MyClass.H#canCall| (Lit refType this)) (and (< 0 $FunctionContextHeight) (and (or (not (= this null)) (not true)) ($Is refType this Tclass._module.MyClass)))) (= (_module.MyClass.H (Lit refType this)) (LitInt 5)))
 :qid |TypeAntecedentsdfy.50:18|
 :weight 3
 :skolemid |571|
 :pattern ( (_module.MyClass.H (Lit refType this)))
))))
(assert (= (Ctor DatatypeTypeType) 4))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.List.Cons| |a#6#0#0| |a#6#1#0|) Tclass._module.List)  (and ($Is refType |a#6#0#0| Tclass._module.MyClass?) ($Is DatatypeTypeType |a#6#1#0| Tclass._module.List)))
 :qid |TypeAntecedentsdfy.53:29|
 :skolemid |581|
 :pattern ( ($Is DatatypeTypeType (|#_module.List.Cons| |a#6#0#0| |a#6#1#0|) Tclass._module.List))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.AlsoTakesADatatype$U T@U) (|p#0| T@U) ) (!  (=> (or (|_module.__default.AlsoTakesADatatype#canCall| _module._default.AlsoTakesADatatype$U (Lit DatatypeTypeType |p#0|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |p#0| (Tclass._module.GenData _module._default.AlsoTakesADatatype$U)))) (= (_module.__default.AlsoTakesADatatype _module._default.AlsoTakesADatatype$U (Lit DatatypeTypeType |p#0|)) (LitInt 17)))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |532|
 :pattern ( (_module.__default.AlsoTakesADatatype _module._default.AlsoTakesADatatype$U (Lit DatatypeTypeType |p#0|)))
))))
(assert (forall ((|a#6#0#0@@0| T@U) (|a#6#1#0@@0| T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) (= ($IsAlloc DatatypeTypeType (|#_module.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) Tclass._module.List $h)  (and ($IsAlloc refType |a#6#0#0@@0| Tclass._module.MyClass? $h) ($IsAlloc DatatypeTypeType |a#6#1#0@@0| Tclass._module.List $h))))
 :qid |TypeAntecedentsdfy.53:29|
 :skolemid |582|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) Tclass._module.List $h))
)))
(assert (= (DatatypeCtorId |#_module.List.Nil|) |##_module.List.Nil|))
(assert (forall ((_module.GenData$T T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._module.GenData _module.GenData$T)) (_module.GenData.Pair_q d))
 :qid |unknown.0:0|
 :skolemid |620|
 :pattern ( (_module.GenData.Pair_q d) ($Is DatatypeTypeType d (Tclass._module.GenData _module.GenData$T)))
)))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.MyClass?)  (or (= $o null) (= (dtype $o) Tclass._module.MyClass?)))
 :qid |unknown.0:0|
 :skolemid |564|
 :pattern ( ($Is refType $o Tclass._module.MyClass?))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass._module.State?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass._module.State?)))
 :qid |unknown.0:0|
 :skolemid |594|
 :pattern ( ($Is refType $o@@0 Tclass._module.State?))
)))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.MyClass $h@@0) ($IsAlloc refType |c#0| Tclass._module.MyClass? $h@@0))
 :qid |unknown.0:0|
 :skolemid |573|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.MyClass $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.MyClass? $h@@0))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.State $h@@1) ($IsAlloc refType |c#0@@0| Tclass._module.State? $h@@1))
 :qid |unknown.0:0|
 :skolemid |605|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.State $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.State? $h@@1))
)))
(assert ($Is DatatypeTypeType |#_module.List.Nil| Tclass._module.List))
(assert (= (FDim _module.MyClass.x) 0))
(assert (= (FieldOfDecl class._module.MyClass? field$x) _module.MyClass.x))
(assert  (not ($IsGhostField _module.MyClass.x)))
(assert (= (FDim _module.State.a) 0))
(assert (= (FieldOfDecl class._module.State? field$a) _module.State.a))
(assert  (not ($IsGhostField _module.State.a)))
(assert (forall ((_module.GenData$T@@0 T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.GenData.Pair| |a#2#0#0| |a#2#1#0|) (Tclass._module.GenData _module.GenData$T@@0))  (and ($IsBox |a#2#0#0| _module.GenData$T@@0) ($IsBox |a#2#1#0| _module.GenData$T@@0)))
 :qid |unknown.0:0|
 :skolemid |610|
 :pattern ( ($Is DatatypeTypeType (|#_module.GenData.Pair| |a#2#0#0| |a#2#1#0|) (Tclass._module.GenData _module.GenData$T@@0)))
)))
(assert (forall (($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) ($IsAlloc DatatypeTypeType |#_module.List.Nil| Tclass._module.List $h@@2))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |576|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.List.Nil| Tclass._module.List $h@@2))
)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 5)) (= (Ctor BoxType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall (($o@@1 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._module.MyClass? $h@@3)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |565|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._module.MyClass? $h@@3))
)))
(assert (forall (($o@@2 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._module.State? $h@@4)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |595|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.State? $h@@4))
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
(assert (forall ((d@@0 T@U) ) (! (= (_module.List.Nil_q d@@0) (= (DatatypeCtorId d@@0) |##_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |574|
 :pattern ( (_module.List.Nil_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.List.Cons_q d@@1) (= (DatatypeCtorId d@@1) |##_module.List.Cons|))
 :qid |unknown.0:0|
 :skolemid |578|
 :pattern ( (_module.List.Cons_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.GenData.Pair_q d@@2) (= (DatatypeCtorId d@@2) |##_module.GenData.Pair|))
 :qid |unknown.0:0|
 :skolemid |607|
 :pattern ( (_module.GenData.Pair_q d@@2))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_module.List.Cons_q d@@3) (exists ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= d@@3 (|#_module.List.Cons| |a#5#0#0| |a#5#1#0|))
 :qid |TypeAntecedentsdfy.53:29|
 :skolemid |579|
)))
 :qid |unknown.0:0|
 :skolemid |580|
 :pattern ( (_module.List.Cons_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.GenData.Pair_q d@@4) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@4 (|#_module.GenData.Pair| |a#1#0#0| |a#1#1#0|))
 :qid |TypeAntecedentsdfy.101:28|
 :skolemid |608|
)))
 :qid |unknown.0:0|
 :skolemid |609|
 :pattern ( (_module.GenData.Pair_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (_module.List.Nil_q d@@5) (= d@@5 |#_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |575|
 :pattern ( (_module.List.Nil_q d@@5))
)))
(assert (= (Ctor SetType) 8))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert ($IsGhostField alloc))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (this@@0 T@U) ) (!  (=> (or (|_module.State.NF#canCall| $Heap this@@0) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.State) ($IsAlloc refType this@@0 Tclass._module.State $Heap)))))) ($Is refType (_module.State.NF $Heap this@@0) Tclass._module.MyClass?))
 :qid |TypeAntecedentsdfy.96:18|
 :skolemid |600|
 :pattern ( (_module.State.NF $Heap this@@0))
))))
(assert (forall (($h@@5 T@U) ($o@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) Tclass._module.MyClass?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@3) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@3) _module.MyClass.x)) TInt $h@@5))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |567|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@3) _module.MyClass.x)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
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
(assert (forall ((_module.GenData$T@@1 T@U) ) (!  (and (= (Tag (Tclass._module.GenData _module.GenData$T@@1)) Tagclass._module.GenData) (= (TagFamily (Tclass._module.GenData _module.GenData$T@@1)) tytagFamily$GenData))
 :qid |unknown.0:0|
 :skolemid |519|
 :pattern ( (Tclass._module.GenData _module.GenData$T@@1))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@1 T@U) ) (!  (=> (or (|_module.State.NF#canCall| $Heap@@0 this@@1) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.State) ($IsAlloc refType this@@1 Tclass._module.State $Heap@@0)))))) (= (_module.State.NF $Heap@@0 this@@1) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.State.a))))
 :qid |TypeAntecedentsdfy.96:18|
 :skolemid |603|
 :pattern ( (_module.State.NF $Heap@@0 this@@1) ($IsGoodHeap $Heap@@0))
))))
(assert (forall (($h@@6 T@U) ($o@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) Tclass._module.State?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@4) _module.State.a)) Tclass._module.MyClass?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |596|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@4) _module.State.a)))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.List) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) Tclass._module.List)))
 :qid |unknown.0:0|
 :skolemid |500|
 :pattern ( ($IsBox bx@@1 Tclass._module.List))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.MyClass) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._module.MyClass)))
 :qid |unknown.0:0|
 :skolemid |501|
 :pattern ( ($IsBox bx@@2 Tclass._module.MyClass))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.MyClass?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._module.MyClass?)))
 :qid |unknown.0:0|
 :skolemid |505|
 :pattern ( ($IsBox bx@@3 Tclass._module.MyClass?))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.State) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.State)))
 :qid |unknown.0:0|
 :skolemid |507|
 :pattern ( ($IsBox bx@@4 Tclass._module.State))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.State?) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.State?)))
 :qid |unknown.0:0|
 :skolemid |508|
 :pattern ( ($IsBox bx@@5 Tclass._module.State?))
)))
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass._module.MyClass)  (and ($Is refType |c#0@@1| Tclass._module.MyClass?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |572|
 :pattern ( ($Is refType |c#0@@1| Tclass._module.MyClass))
 :pattern ( ($Is refType |c#0@@1| Tclass._module.MyClass?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._module.State)  (and ($Is refType |c#0@@2| Tclass._module.State?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |604|
 :pattern ( ($Is refType |c#0@@2| Tclass._module.State))
 :pattern ( ($Is refType |c#0@@2| Tclass._module.State?))
)))
(assert (forall (($h@@7 T@U) ($o@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) Tclass._module.State?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@5) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@5) _module.State.a)) Tclass._module.MyClass? $h@@7))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |597|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@5) _module.State.a)))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (|$IsA#_module.List| d@@6) (or (_module.List.Nil_q d@@6) (_module.List.Cons_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |589|
 :pattern ( (|$IsA#_module.List| d@@6))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@1 T@U) (this@@2 T@U) ) (!  (=> (or (|_module.State.NF#canCall| $Heap@@1 this@@2) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@1) (or (not (= this@@2 null)) (not true))) ($IsAlloc refType this@@2 Tclass._module.State $Heap@@1)))) ($IsAlloc refType (_module.State.NF $Heap@@1 this@@2) Tclass._module.MyClass? $Heap@@1))
 :qid |TypeAntecedentsdfy.96:18|
 :skolemid |601|
 :pattern ( ($IsAlloc refType (_module.State.NF $Heap@@1 this@@2) Tclass._module.MyClass? $Heap@@1))
))))
(assert (forall ((x@@5 Int) (y Int) ) (! (= (Div x@@5 y) (div x@@5 y))
 :qid |DafnyPreludebpl.1648:14|
 :skolemid |339|
 :pattern ( (Div x@@5 y))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|a#0| T@U) ) (!  (=> (or (|_module.__default.TakesADatatype#canCall| |a#0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |a#0| Tclass._module.List))) (= (_module.__default.TakesADatatype |a#0|) (LitInt 12)))
 :qid |TypeAntecedentsdfy.99:31|
 :skolemid |527|
 :pattern ( (_module.__default.TakesADatatype |a#0|))
))))
(assert (forall ((d@@7 T@U) ) (!  (=> ($Is DatatypeTypeType d@@7 Tclass._module.List) (or (_module.List.Nil_q d@@7) (_module.List.Cons_q d@@7)))
 :qid |unknown.0:0|
 :skolemid |590|
 :pattern ( (_module.List.Cons_q d@@7) ($Is DatatypeTypeType d@@7 Tclass._module.List))
 :pattern ( (_module.List.Nil_q d@@7) ($Is DatatypeTypeType d@@7 Tclass._module.List))
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
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 TInt) (and (= ($Box intType ($Unbox intType bx@@6)) bx@@6) ($Is intType ($Unbox intType bx@@6) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@6 TInt))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 TBool) (and (= ($Box boolType ($Unbox boolType bx@@7)) bx@@7) ($Is boolType ($Unbox boolType bx@@7) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@7 TBool))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@8 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@8) ($IsAllocBox bx@@8 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@8))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.List.Cons| |a#4#0#0| |a#4#1#0|)) |##_module.List.Cons|)
 :qid |TypeAntecedentsdfy.53:29|
 :skolemid |577|
 :pattern ( (|#_module.List.Cons| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) ) (! (= (_module.List._h1 (|#_module.List.Cons| |a#8#0#0| |a#8#1#0|)) |a#8#0#0|)
 :qid |TypeAntecedentsdfy.53:29|
 :skolemid |586|
 :pattern ( (|#_module.List.Cons| |a#8#0#0| |a#8#1#0|))
)))
(assert (forall ((|a#9#0#0| T@U) (|a#9#1#0| T@U) ) (! (= (_module.List._h2 (|#_module.List.Cons| |a#9#0#0| |a#9#1#0|)) |a#9#1#0|)
 :qid |TypeAntecedentsdfy.53:29|
 :skolemid |587|
 :pattern ( (|#_module.List.Cons| |a#9#0#0| |a#9#1#0|))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.GenData.Pair| |a#0#0#0| |a#0#1#0|)) |##_module.GenData.Pair|)
 :qid |TypeAntecedentsdfy.101:28|
 :skolemid |606|
 :pattern ( (|#_module.GenData.Pair| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|a#4#0#0@@0| T@U) (|a#4#1#0@@0| T@U) ) (! (= (_module.GenData._h3 (|#_module.GenData.Pair| |a#4#0#0@@0| |a#4#1#0@@0|)) |a#4#0#0@@0|)
 :qid |TypeAntecedentsdfy.101:28|
 :skolemid |615|
 :pattern ( (|#_module.GenData.Pair| |a#4#0#0@@0| |a#4#1#0@@0|))
)))
(assert (forall ((|a#6#0#0@@1| T@U) (|a#6#1#0@@1| T@U) ) (! (= (_module.GenData._h4 (|#_module.GenData.Pair| |a#6#0#0@@1| |a#6#1#0@@1|)) |a#6#1#0@@1|)
 :qid |TypeAntecedentsdfy.101:28|
 :skolemid |617|
 :pattern ( (|#_module.GenData.Pair| |a#6#0#0@@1| |a#6#1#0@@1|))
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
(assert (forall ((_module.GenData$T@@2 T@U) ) (! (= (Tclass._module.GenData_0 (Tclass._module.GenData _module.GenData$T@@2)) _module.GenData$T@@2)
 :qid |unknown.0:0|
 :skolemid |520|
 :pattern ( (Tclass._module.GenData _module.GenData$T@@2))
)))
(assert (forall ((x@@6 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@6))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|a#0@@0| T@U) ) (!  (=> (or (|_module.__default.TakesADatatype#canCall| (Lit DatatypeTypeType |a#0@@0|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |a#0@@0| Tclass._module.List))) (= (_module.__default.TakesADatatype (Lit DatatypeTypeType |a#0@@0|)) (LitInt 12)))
 :qid |TypeAntecedentsdfy.99:31|
 :weight 3
 :skolemid |528|
 :pattern ( (_module.__default.TakesADatatype (Lit DatatypeTypeType |a#0@@0|)))
))))
(assert (forall (($h@@8 T@U) ($o@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass._module.MyClass?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@6) _module.MyClass.x)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |566|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@6) _module.MyClass.x)))
)))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| T@U) ) (! (< (DtRank |a#10#1#0|) (DtRank (|#_module.List.Cons| |a#10#0#0| |a#10#1#0|)))
 :qid |TypeAntecedentsdfy.53:29|
 :skolemid |588|
 :pattern ( (|#_module.List.Cons| |a#10#0#0| |a#10#1#0|))
)))
(assert (forall ((|a#5#0#0@@0| T@U) (|a#5#1#0@@0| T@U) ) (! (< (BoxRank |a#5#0#0@@0|) (DtRank (|#_module.GenData.Pair| |a#5#0#0@@0| |a#5#1#0@@0|)))
 :qid |TypeAntecedentsdfy.101:28|
 :skolemid |616|
 :pattern ( (|#_module.GenData.Pair| |a#5#0#0@@0| |a#5#1#0@@0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_module.GenData.Pair| |a#7#0#0| |a#7#1#0|)))
 :qid |TypeAntecedentsdfy.101:28|
 :skolemid |618|
 :pattern ( (|#_module.GenData.Pair| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((d@@8 T@U) (_module.GenData$T@@3 T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (_module.GenData.Pair_q d@@8) ($IsAlloc DatatypeTypeType d@@8 (Tclass._module.GenData _module.GenData$T@@3) $h@@9))) ($IsAllocBox (_module.GenData._h3 d@@8) _module.GenData$T@@3 $h@@9))
 :qid |unknown.0:0|
 :skolemid |612|
 :pattern ( ($IsAllocBox (_module.GenData._h3 d@@8) _module.GenData$T@@3 $h@@9))
)))
(assert (forall ((d@@9 T@U) (_module.GenData$T@@4 T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (_module.GenData.Pair_q d@@9) ($IsAlloc DatatypeTypeType d@@9 (Tclass._module.GenData _module.GenData$T@@4) $h@@10))) ($IsAllocBox (_module.GenData._h4 d@@9) _module.GenData$T@@4 $h@@10))
 :qid |unknown.0:0|
 :skolemid |613|
 :pattern ( ($IsAllocBox (_module.GenData._h4 d@@9) _module.GenData$T@@4 $h@@10))
)))
(assert (forall (($h0 T@U) ($h1 T@U) (this@@3 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@3 null)) (not true)) ($Is refType this@@3 Tclass._module.State))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@7 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) (= $o@@7 this@@3)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@7) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@7) $f)))
 :qid |unknown.0:0|
 :skolemid |598|
)) (= (_module.State.NF $h0 this@@3) (_module.State.NF $h1 this@@3))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |599|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.State.NF $h1 this@@3))
)))
(assert (forall ((d@@10 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@10)) (DtRank d@@10))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@10)))
)))
(assert (forall ((bx@@9 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@9 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@9)) bx@@9) ($Is SetType ($Unbox SetType bx@@9) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@9 (TSet t@@5)))
)))
(assert (forall ((_module.GenData$T@@5 T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass._module.GenData _module.GenData$T@@5)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@10)) bx@@10) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@10) (Tclass._module.GenData _module.GenData$T@@5))))
 :qid |unknown.0:0|
 :skolemid |521|
 :pattern ( ($IsBox bx@@10 (Tclass._module.GenData _module.GenData$T@@5)))
)))
(assert (forall ((h@@4 T@U) (r T@U) (f T@U) (x@@7 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@7))) ($HeapSucc h@@4 (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@7))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@7)))
)))
(assert (= (Tag Tclass._module.List) Tagclass._module.List))
(assert (= (TagFamily Tclass._module.List) tytagFamily$List))
(assert (= (Tag Tclass._module.MyClass) Tagclass._module.MyClass))
(assert (= (TagFamily Tclass._module.MyClass) tytagFamily$MyClass))
(assert (= (Tag Tclass._module.MyClass?) Tagclass._module.MyClass?))
(assert (= (TagFamily Tclass._module.MyClass?) tytagFamily$MyClass))
(assert (= (Tag Tclass._module.State) Tagclass._module.State))
(assert (= (TagFamily Tclass._module.State) tytagFamily$State))
(assert (= (Tag Tclass._module.State?) Tagclass._module.State?))
(assert (= (TagFamily Tclass._module.State?) tytagFamily$State))
(assert (= |#_module.List.Nil| (Lit DatatypeTypeType |#_module.List.Nil|)))
(assert (forall ((d@@11 T@U) ($h@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (_module.List.Cons_q d@@11) ($IsAlloc DatatypeTypeType d@@11 Tclass._module.List $h@@11))) ($IsAlloc refType (_module.List._h1 d@@11) Tclass._module.MyClass? $h@@11))
 :qid |unknown.0:0|
 :skolemid |583|
 :pattern ( ($IsAlloc refType (_module.List._h1 d@@11) Tclass._module.MyClass? $h@@11))
)))
(assert (forall ((d@@12 T@U) ($h@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (_module.List.Cons_q d@@12) ($IsAlloc DatatypeTypeType d@@12 Tclass._module.List $h@@12))) ($IsAlloc DatatypeTypeType (_module.List._h2 d@@12) Tclass._module.List $h@@12))
 :qid |unknown.0:0|
 :skolemid |584|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.List._h2 d@@12) Tclass._module.List $h@@12))
)))
(assert (forall ((_module.GenData$T@@6 T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@13 T@U) ) (!  (=> ($IsGoodHeap $h@@13) (= ($IsAlloc DatatypeTypeType (|#_module.GenData.Pair| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._module.GenData _module.GenData$T@@6) $h@@13)  (and ($IsAllocBox |a#2#0#0@@0| _module.GenData$T@@6 $h@@13) ($IsAllocBox |a#2#1#0@@0| _module.GenData$T@@6 $h@@13))))
 :qid |unknown.0:0|
 :skolemid |611|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.GenData.Pair| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._module.GenData _module.GenData$T@@6) $h@@13))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@4 T@U) ) (!  (=> (or (|_module.MyClass.H#canCall| this@@4) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@4 null)) (not true)) ($Is refType this@@4 Tclass._module.MyClass)))) (= (_module.MyClass.H this@@4) (LitInt 5)))
 :qid |TypeAntecedentsdfy.50:18|
 :skolemid |570|
 :pattern ( (_module.MyClass.H this@@4))
))))
(assert (forall ((|a#7#0#0@@0| T@U) (|a#7#1#0@@0| T@U) ) (! (= (|#_module.List.Cons| (Lit refType |a#7#0#0@@0|) (Lit DatatypeTypeType |a#7#1#0@@0|)) (Lit DatatypeTypeType (|#_module.List.Cons| |a#7#0#0@@0| |a#7#1#0@@0|)))
 :qid |TypeAntecedentsdfy.53:29|
 :skolemid |585|
 :pattern ( (|#_module.List.Cons| (Lit refType |a#7#0#0@@0|) (Lit DatatypeTypeType |a#7#1#0@@0|)))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_module.GenData.Pair| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_module.GenData.Pair| |a#3#0#0| |a#3#1#0|)))
 :qid |TypeAntecedentsdfy.101:28|
 :skolemid |614|
 :pattern ( (|#_module.GenData.Pair| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((x@@8 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@8))) (Lit BoxType ($Box intType (int_2_U x@@8))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@8))))
)))
(assert (forall ((x@@9 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@9)) (Lit BoxType ($Box T@@5 x@@9)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@9)))
)))
(assert  (and (forall ((t0@@2 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@2 t1@@0 t2 (MapType1Store t0@@2 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@8 T@U) ($f@@0 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#4| |l#0| |l#1| |l#2| |l#3|) $o@@8 $f@@0))  (=> (and (or (not (= $o@@8 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@8) |l#2|)))) (|Set#IsMember| |l#3| ($Box refType $o@@8))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |624|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#4| |l#0| |l#1| |l#2| |l#3|) $o@@8 $f@@0))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.AlsoTakesADatatype$U@@0 T@U) (|p#0@@0| T@U) ) (!  (=> (or (|_module.__default.AlsoTakesADatatype#canCall| _module._default.AlsoTakesADatatype$U@@0 |p#0@@0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |p#0@@0| (Tclass._module.GenData _module._default.AlsoTakesADatatype$U@@0)))) (= (_module.__default.AlsoTakesADatatype _module._default.AlsoTakesADatatype$U@@0 |p#0@@0|) (LitInt 17)))
 :qid |unknown.0:0|
 :skolemid |531|
 :pattern ( (_module.__default.AlsoTakesADatatype _module._default.AlsoTakesADatatype$U@@0 |p#0@@0|))
))))
(assert (forall ((h@@5 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@5)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@5))
)))
(assert (forall ((h@@6 T@U) (v@@5 T@U) ) (! ($IsAlloc boolType v@@5 TBool h@@6)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@5 TBool h@@6))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is intType v@@6 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@6 TInt))
)))
(assert (forall ((v@@7 T@U) ) (! ($Is boolType v@@7 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@7 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |s#2_0@0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |S#0| () T@U)
(declare-fun |ret#0| () Int)
(declare-fun $Heap@2 () T@U)
(declare-fun |##a#0@0| () T@U)
(declare-fun |##a#1@0| () T@U)
(declare-fun |##p#0@0| () T@U)
(declare-fun |t#2@0| () T@U)
(declare-fun |t#0@0| () T@U)
(declare-fun |s#3_0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |s#3_1@0| () T@U)
(declare-fun |l#0@0| () T@U)
(declare-fun |call1formal@k#0| () T@U)
(declare-fun $Heap@@2 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |call1formal@k#0@0| () T@U)
(declare-fun $nw@0 () T@U)
(declare-fun |r#0_0@0| () T@U)
(declare-fun |h#0_0_0@0| () Int)
(declare-fun |list#0| () T@U)
(declare-fun |_mcc#0#0_0@0| () T@U)
(declare-fun |_mcc#1#0_0@0| () T@U)
(declare-fun |tail#0_0@0| () T@U)
(declare-fun |let#0_0#0#0| () T@U)
(declare-fun |let#0_1#0#0| () T@U)
(declare-fun |defass#k#0| () Bool)
(declare-fun |k#0| () T@U)
(declare-fun |defass#st#0| () Bool)
(declare-fun |st#0| () T@U)
(declare-fun |l#0@@0| () T@U)
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
 (=> (= (ControlFlow 0 0) 56) (let ((anon30_Else_correct  (and (=> (= (ControlFlow 0 32) (- 0 34)) (or (not (= |s#2_0@0| null)) (not true))) (=> ($IsAllocBox ($Box refType |s#2_0@0|) Tclass._module.MyClass? $Heap@1) (=> (and (|_module.MyClass.H#canCall| |s#2_0@0|) (|_module.MyClass.H#canCall| |s#2_0@0|)) (and (=> (= (ControlFlow 0 32) (- 0 33)) (= (_module.MyClass.H |s#2_0@0|) (LitInt 5))) (=> (= (_module.MyClass.H |s#2_0@0|) (LitInt 5)) (=> (= (ControlFlow 0 32) (- 0 31)) (U_2_bool (Lit boolType (bool_2_U true)))))))))))
(let ((anon30_Then_correct true))
(let ((anon29_Then_correct  (=> (and ($Is refType |s#2_0@0| Tclass._module.MyClass) (|Set#IsMember| |S#0| ($Box refType |s#2_0@0|))) (and (=> (= (ControlFlow 0 35) 30) anon30_Then_correct) (=> (= (ControlFlow 0 35) 32) anon30_Else_correct)))))
(let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 7) (- 0 6)) (= |ret#0| (LitInt 7)))))
(let ((anon24_correct  (=> (forall ((|t#3| T@U) ) (!  (=> ($Is refType |t#3| Tclass._module.MyClass?) (=> (or (not (= |t#3| null)) (not true)) (|_module.MyClass.H#canCall| |t#3|)))
 :qid |TypeAntecedentsdfy.82:18|
 :skolemid |516|
 :pattern ( (_module.MyClass.H |t#3|))
)) (and (=> (= (ControlFlow 0 8) (- 0 12)) (forall ((|t#3@@0| T@U) ) (!  (=> (and ($Is refType |t#3@@0| Tclass._module.MyClass?) ($IsAlloc refType |t#3@@0| Tclass._module.MyClass? $Heap@2)) (=> (or (not (= |t#3@@0| null)) (not true)) (ite (= (_module.MyClass.H |t#3@@0|) (LitInt 5)) true (= (LitInt (Div 10 (LitInt 0))) (LitInt 3)))))
 :qid |TypeAntecedentsdfy.82:18|
 :skolemid |518|
 :pattern ( (_module.MyClass.H |t#3@@0|))
))) (=> (forall ((|t#3@@1| T@U) ) (!  (=> (and ($Is refType |t#3@@1| Tclass._module.MyClass?) ($IsAlloc refType |t#3@@1| Tclass._module.MyClass? $Heap@2)) (=> (or (not (= |t#3@@1| null)) (not true)) (ite (= (_module.MyClass.H |t#3@@1|) (LitInt 5)) true (= (LitInt (Div 10 (LitInt 0))) (LitInt 3)))))
 :qid |TypeAntecedentsdfy.82:18|
 :skolemid |518|
 :pattern ( (_module.MyClass.H |t#3@@1|))
)) (=> (and (and (= |##a#0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) ($IsAlloc DatatypeTypeType |##a#0@0| Tclass._module.List $Heap@2)) (and (|_module.__default.TakesADatatype#canCall| (Lit DatatypeTypeType |#_module.List.Nil|)) (|_module.__default.TakesADatatype#canCall| (Lit DatatypeTypeType |#_module.List.Nil|)))) (and (=> (= (ControlFlow 0 8) (- 0 11)) (= (LitInt (_module.__default.TakesADatatype (Lit DatatypeTypeType |#_module.List.Nil|))) (LitInt 12))) (=> (= (LitInt (_module.__default.TakesADatatype (Lit DatatypeTypeType |#_module.List.Nil|))) (LitInt 12)) (=> (and (and (= |##a#1@0| (|#_module.List.Cons| null (Lit DatatypeTypeType |#_module.List.Nil|))) ($IsAlloc DatatypeTypeType |##a#1@0| Tclass._module.List $Heap@2)) (and (|_module.__default.TakesADatatype#canCall| (|#_module.List.Cons| null (Lit DatatypeTypeType |#_module.List.Nil|))) (|_module.__default.TakesADatatype#canCall| (|#_module.List.Cons| null (Lit DatatypeTypeType |#_module.List.Nil|))))) (and (=> (= (ControlFlow 0 8) (- 0 10)) (= (_module.__default.TakesADatatype (|#_module.List.Cons| null (Lit DatatypeTypeType |#_module.List.Nil|))) (LitInt 12))) (=> (= (_module.__default.TakesADatatype (|#_module.List.Cons| null (Lit DatatypeTypeType |#_module.List.Nil|))) (LitInt 12)) (=> (and (and (= |##p#0@0| (Lit DatatypeTypeType (|#_module.GenData.Pair| ($Box boolType (Lit boolType (bool_2_U false))) ($Box boolType (Lit boolType (bool_2_U true)))))) ($IsAlloc DatatypeTypeType |##p#0@0| (Tclass._module.GenData TBool) $Heap@2)) (and (|_module.__default.AlsoTakesADatatype#canCall| TBool (Lit DatatypeTypeType (|#_module.GenData.Pair| ($Box boolType (Lit boolType (bool_2_U false))) ($Box boolType (Lit boolType (bool_2_U true)))))) (|_module.__default.AlsoTakesADatatype#canCall| TBool (Lit DatatypeTypeType (|#_module.GenData.Pair| ($Box boolType (Lit boolType (bool_2_U false))) ($Box boolType (Lit boolType (bool_2_U true)))))))) (and (=> (= (ControlFlow 0 8) (- 0 9)) (= (LitInt (_module.__default.AlsoTakesADatatype TBool (Lit DatatypeTypeType (|#_module.GenData.Pair| ($Box boolType (Lit boolType (bool_2_U false))) ($Box boolType (Lit boolType (bool_2_U true))))))) (LitInt 17))) (=> (= (LitInt (_module.__default.AlsoTakesADatatype TBool (Lit DatatypeTypeType (|#_module.GenData.Pair| ($Box boolType (Lit boolType (bool_2_U false))) ($Box boolType (Lit boolType (bool_2_U true))))))) (LitInt 17)) (=> (= (ControlFlow 0 8) 7) GeneratedUnifiedExit_correct)))))))))))))))
(let ((anon36_Else_correct  (=> (or (not (= (_module.MyClass.H |t#2@0|) (LitInt 5))) (not true)) (and (=> (= (ControlFlow 0 16) (- 0 17)) (or (not (= (LitInt 0) 0)) (not true))) (=> (= (ControlFlow 0 16) 8) anon24_correct)))))
(let ((anon36_Then_correct  (=> (and (= (_module.MyClass.H |t#2@0|) (LitInt 5)) (= (ControlFlow 0 15) 8)) anon24_correct)))
(let ((anon35_Then_correct  (=> (or (not (= |t#2@0| null)) (not true)) (and (=> (= (ControlFlow 0 18) (- 0 19)) (or (not (= |t#2@0| null)) (not true))) (=> (and ($IsAllocBox ($Box refType |t#2@0|) Tclass._module.MyClass? $Heap@2) (|_module.MyClass.H#canCall| |t#2@0|)) (and (=> (= (ControlFlow 0 18) 15) anon36_Then_correct) (=> (= (ControlFlow 0 18) 16) anon36_Else_correct)))))))
(let ((anon35_Else_correct  (=> (and (= |t#2@0| null) (= (ControlFlow 0 14) 8)) anon24_correct)))
(let ((anon34_Then_correct  (=> (and ($Is refType |t#2@0| Tclass._module.MyClass?) ($IsAlloc refType |t#2@0| Tclass._module.MyClass? $Heap@2)) (and (=> (= (ControlFlow 0 20) 18) anon35_Then_correct) (=> (= (ControlFlow 0 20) 14) anon35_Else_correct)))))
(let ((anon34_Else_correct  (=> (and (not (and ($Is refType |t#2@0| Tclass._module.MyClass?) ($IsAlloc refType |t#2@0| Tclass._module.MyClass? $Heap@2))) (= (ControlFlow 0 13) 8)) anon24_correct)))
(let ((anon19_correct  (=> (forall ((|t#1| T@U) ) (!  (=> ($Is refType |t#1| Tclass._module.MyClass?) (=> (or (not (= |t#1| null)) (not true)) (|_module.MyClass.H#canCall| |t#1|)))
 :qid |TypeAntecedentsdfy.80:18|
 :skolemid |513|
 :pattern ( (_module.MyClass.H |t#1|))
)) (and (=> (= (ControlFlow 0 21) (- 0 22)) (forall ((|t#1@@0| T@U) ) (!  (=> (and ($Is refType |t#1@@0| Tclass._module.MyClass?) ($IsAlloc refType |t#1@@0| Tclass._module.MyClass? $Heap@2)) (or (= |t#1@@0| null) (= (_module.MyClass.H |t#1@@0|) (LitInt 5))))
 :qid |TypeAntecedentsdfy.80:18|
 :skolemid |515|
 :pattern ( (_module.MyClass.H |t#1@@0|))
))) (=> (forall ((|t#1@@1| T@U) ) (!  (=> (and ($Is refType |t#1@@1| Tclass._module.MyClass?) ($IsAlloc refType |t#1@@1| Tclass._module.MyClass? $Heap@2)) (or (= |t#1@@1| null) (= (_module.MyClass.H |t#1@@1|) (LitInt 5))))
 :qid |TypeAntecedentsdfy.80:18|
 :skolemid |515|
 :pattern ( (_module.MyClass.H |t#1@@1|))
)) (and (=> (= (ControlFlow 0 21) 20) anon34_Then_correct) (=> (= (ControlFlow 0 21) 13) anon34_Else_correct)))))))
(let ((anon33_Else_correct  (=> (and (= |t#0@0| null) (= (ControlFlow 0 26) 21)) anon19_correct)))
(let ((anon33_Then_correct  (=> (or (not (= |t#0@0| null)) (not true)) (and (=> (= (ControlFlow 0 24) (- 0 25)) (or (not (= |t#0@0| null)) (not true))) (=> ($IsAllocBox ($Box refType |t#0@0|) Tclass._module.MyClass? $Heap@2) (=> (and (|_module.MyClass.H#canCall| |t#0@0|) (= (ControlFlow 0 24) 21)) anon19_correct))))))
(let ((anon32_Then_correct  (=> (and ($Is refType |t#0@0| Tclass._module.MyClass?) ($IsAlloc refType |t#0@0| Tclass._module.MyClass? $Heap@2)) (and (=> (= (ControlFlow 0 27) 24) anon33_Then_correct) (=> (= (ControlFlow 0 27) 26) anon33_Else_correct)))))
(let ((anon32_Else_correct  (=> (and (not (and ($Is refType |t#0@0| Tclass._module.MyClass?) ($IsAlloc refType |t#0@0| Tclass._module.MyClass? $Heap@2))) (= (ControlFlow 0 23) 21)) anon19_correct)))
(let ((anon31_Else_correct  (=> (and (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) ($HeapSucc $Heap@1 $Heap@2)) (and (forall (($o@@9 T@U) ($f@@1 T@U) ) (!  (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@9) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@9) $f@@1)) (exists ((|s#3_2| T@U) ) (!  (and (and (and ($Is refType |s#3_2| Tclass._module.MyClass) (|Set#IsMember| |S#0| ($Box refType |s#3_2|))) (= $o@@9 |s#3_2|)) (= $f@@1 _module.MyClass.x))
 :qid |TypeAntecedentsdfy.76:10|
 :skolemid |510|
)))
 :qid |TypeAntecedentsdfy.76:3|
 :skolemid |511|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@9) $f@@1))
)) (forall ((|s#inv#3_0| T@U) ) (!  (=> (and ($Is refType |s#inv#3_0| Tclass._module.MyClass) (and (or (not (= |s#inv#3_0| null)) (not true)) (|Set#IsMember| |S#0| ($Box refType |s#inv#3_0|)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |s#inv#3_0|) _module.MyClass.x) ($Box intType (int_2_U (LitInt 0)))))
 :qid |TypeAntecedentsdfy.76:10|
 :skolemid |512|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |s#inv#3_0|) _module.MyClass.x))
)))) (and (=> (= (ControlFlow 0 28) 27) anon32_Then_correct) (=> (= (ControlFlow 0 28) 23) anon32_Else_correct)))))
(let ((anon31_Then_correct  (=> (and (and ($Is refType |s#3_0@0| Tclass._module.MyClass) ($IsAlloc refType |s#3_0@0| Tclass._module.MyClass $Heap@1)) (|Set#IsMember| |S#0| ($Box refType |s#3_0@0|))) (and (=> (= (ControlFlow 0 3) (- 0 5)) (or (not (= |s#3_0@0| null)) (not true))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |s#3_0@0| _module.MyClass.x))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |s#3_0@0| _module.MyClass.x)) (=> (and (and (and ($Is refType |s#3_1@0| Tclass._module.MyClass) ($IsAlloc refType |s#3_1@0| Tclass._module.MyClass $Heap@1)) (|Set#IsMember| |S#0| ($Box refType |s#3_1@0|))) (and (or (not (= |s#3_0@0| |s#3_1@0|)) (not true)) (= (ControlFlow 0 3) (- 0 2)))) (or (or (or (not (= |s#3_0@0| |s#3_1@0|)) (not true)) (or (not (= _module.MyClass.x _module.MyClass.x)) (not true))) (= (LitInt 0) (LitInt 0))))))))))
(let ((anon29_Else_correct  (=> (forall ((|s#2_1| T@U) ) (!  (=> (and ($Is refType |s#2_1| Tclass._module.MyClass) (|Set#IsMember| |S#0| ($Box refType |s#2_1|))) (U_2_bool (Lit boolType (bool_2_U true))))
 :qid |TypeAntecedentsdfy.75:10|
 :skolemid |509|
 :pattern ( (|Set#IsMember| |S#0| ($Box refType |s#2_1|)))
)) (and (=> (= (ControlFlow 0 29) 3) anon31_Then_correct) (=> (= (ControlFlow 0 29) 28) anon31_Else_correct)))))
(let ((anon8_correct  (=> (=> (or (not (= |l#0@0| null)) (not true)) (|_module.MyClass.H#canCall| |l#0@0|)) (and (=> (= (ControlFlow 0 36) (- 0 37)) (=> (or (not (= |l#0@0| null)) (not true)) (= (_module.MyClass.H |l#0@0|) (LitInt 5)))) (=> (=> (or (not (= |l#0@0| null)) (not true)) (= (_module.MyClass.H |l#0@0|) (LitInt 5))) (and (=> (= (ControlFlow 0 36) 35) anon29_Then_correct) (=> (= (ControlFlow 0 36) 29) anon29_Else_correct)))))))
(let ((anon28_Else_correct  (=> (and (= |l#0@0| null) (= (ControlFlow 0 40) 36)) anon8_correct)))
(let ((anon28_Then_correct  (=> (or (not (= |l#0@0| null)) (not true)) (and (=> (= (ControlFlow 0 38) (- 0 39)) (or (not (= |l#0@0| null)) (not true))) (=> ($IsAllocBox ($Box refType |l#0@0|) Tclass._module.MyClass? $Heap@1) (=> (and (|_module.MyClass.H#canCall| |l#0@0|) (= (ControlFlow 0 38) 36)) anon8_correct))))))
(let ((anon6_correct  (=> (and (and (and ($Is refType |call1formal@k#0| Tclass._module.MyClass) ($IsAlloc refType |call1formal@k#0| Tclass._module.MyClass $Heap@@2)) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (and (and ($Is refType |call1formal@k#0@0| Tclass._module.MyClass) ($IsAlloc refType |call1formal@k#0@0| Tclass._module.MyClass $Heap@0)) (and (forall (($o@@10 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@10) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@10) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@10)))
 :qid |TypeAntecedentsdfy.89:8|
 :skolemid |523|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@10))
)) ($HeapSucc $Heap@@2 $Heap@0)))) (and (=> (= (ControlFlow 0 41) (- 0 46)) true) (and (=> (= (ControlFlow 0 41) (- 0 45)) (or (not (= |call1formal@k#0@0| null)) (not true))) (=> ($IsAllocBox ($Box refType |call1formal@k#0@0|) Tclass._module.MyClass? $Heap@0) (=> (and (|_module.MyClass.H#canCall| |call1formal@k#0@0|) (|_module.MyClass.H#canCall| |call1formal@k#0@0|)) (and (=> (= (ControlFlow 0 41) (- 0 44)) (= (_module.MyClass.H |call1formal@k#0@0|) (LitInt 5))) (=> (= (_module.MyClass.H |call1formal@k#0@0|) (LitInt 5)) (=> (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 Tclass._module.State?)) (=> (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0) alloc)))) (= $Heap@1 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1))) (and (=> (= (ControlFlow 0 41) (- 0 43)) true) (and (=> (= (ControlFlow 0 41) (- 0 42)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (=> (and (and ($IsAllocBox ($Box refType $nw@0) Tclass._module.State? $Heap@1) (|_module.State.NF#canCall| $Heap@1 $nw@0)) (and (|_module.State.NF#canCall| $Heap@1 $nw@0) (= |l#0@0| (_module.State.NF $Heap@1 $nw@0)))) (and (=> (= (ControlFlow 0 41) 38) anon28_Then_correct) (=> (= (ControlFlow 0 41) 40) anon28_Else_correct)))))))))))))))))
(let ((anon27_Else_correct  (=> (= |r#0_0@0| null) (and (=> (= (ControlFlow 0 51) (- 0 52)) (U_2_bool (Lit boolType (bool_2_U false)))) (=> (U_2_bool (Lit boolType (bool_2_U false))) (=> (= (ControlFlow 0 51) 41) anon6_correct))))))
(let ((anon27_Then_correct  (=> (or (not (= |r#0_0@0| null)) (not true)) (and (=> (= (ControlFlow 0 48) (- 0 50)) (or (not (= |r#0_0@0| null)) (not true))) (=> (or (not (= |r#0_0@0| null)) (not true)) (=> (and (and ($IsAllocBox ($Box refType |r#0_0@0|) Tclass._module.MyClass? $Heap@@2) (|_module.MyClass.H#canCall| |r#0_0@0|)) (and (|_module.MyClass.H#canCall| |r#0_0@0|) (= |h#0_0_0@0| (_module.MyClass.H |r#0_0@0|)))) (and (=> (= (ControlFlow 0 48) (- 0 49)) (= |h#0_0_0@0| (LitInt 5))) (=> (= |h#0_0_0@0| (LitInt 5)) (=> (= (ControlFlow 0 48) 41) anon6_correct)))))))))
(let ((anon26_Then_correct  (=> (= |list#0| (|#_module.List.Cons| |_mcc#0#0_0@0| |_mcc#1#0_0@0|)) (=> (and ($Is refType |_mcc#0#0_0@0| Tclass._module.MyClass?) ($Is DatatypeTypeType |_mcc#1#0_0@0| Tclass._module.List)) (=> (and (and (and (and ($Is DatatypeTypeType |tail#0_0@0| Tclass._module.List) ($IsAlloc DatatypeTypeType |tail#0_0@0| Tclass._module.List $Heap@@2)) (= |let#0_0#0#0| |_mcc#1#0_0@0|)) (and ($Is DatatypeTypeType |let#0_0#0#0| Tclass._module.List) (= |tail#0_0@0| |let#0_0#0#0|))) (and (and (and ($Is refType |r#0_0@0| Tclass._module.MyClass?) ($IsAlloc refType |r#0_0@0| Tclass._module.MyClass? $Heap@@2)) (= |let#0_1#0#0| |_mcc#0#0_0@0|)) (and ($Is refType |let#0_1#0#0| Tclass._module.MyClass?) (= |r#0_0@0| |let#0_1#0#0|)))) (and (=> (= (ControlFlow 0 53) 48) anon27_Then_correct) (=> (= (ControlFlow 0 53) 51) anon27_Else_correct)))))))
(let ((anon25_Then_correct  (=> (and (= |list#0| |#_module.List.Nil|) (= (ControlFlow 0 47) 41)) anon6_correct)))
(let ((anon26_Else_correct true))
(let ((anon25_Else_correct  (=> (or (not (= |list#0| |#_module.List.Nil|)) (not true)) (and (=> (= (ControlFlow 0 54) 53) anon26_Then_correct) (=> (= (ControlFlow 0 54) 1) anon26_Else_correct)))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#4| null $Heap@@2 alloc |S#0|)) (and (=> (= (ControlFlow 0 55) 47) anon25_Then_correct) (=> (= (ControlFlow 0 55) 54) anon25_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@2) ($IsHeapAnchor $Heap@@2)) (=> (and (and (and (and (and ($Is DatatypeTypeType |list#0| Tclass._module.List) ($IsAlloc DatatypeTypeType |list#0| Tclass._module.List $Heap@@2)) (|$IsA#_module.List| |list#0|)) (and ($Is SetType |S#0| (TSet Tclass._module.MyClass)) ($IsAlloc SetType |S#0| (TSet Tclass._module.MyClass) $Heap@@2))) (and (and (=> |defass#k#0| (and ($Is refType |k#0| Tclass._module.MyClass) ($IsAlloc refType |k#0| Tclass._module.MyClass $Heap@@2))) true) (and (=> |defass#st#0| (and ($Is refType |st#0| Tclass._module.State) ($IsAlloc refType |st#0| Tclass._module.State $Heap@@2))) true))) (and (and (and ($Is refType |l#0@@0| Tclass._module.MyClass?) ($IsAlloc refType |l#0@@0| Tclass._module.MyClass? $Heap@@2)) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 56) 55)))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 7) (- 6))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 51) (- 52))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
