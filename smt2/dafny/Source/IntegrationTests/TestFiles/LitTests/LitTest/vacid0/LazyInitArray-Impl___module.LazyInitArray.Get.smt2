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
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._System.array? () T@U)
(declare-fun Tagclass._System.array () T@U)
(declare-fun class._module.LazyInitArray? () T@U)
(declare-fun Tagclass._module.LazyInitArray? () T@U)
(declare-fun Tagclass._module.LazyInitArray () T@U)
(declare-fun tytagFamily$array () T@U)
(declare-fun tytagFamily$LazyInitArray () T@U)
(declare-fun field$Contents () T@U)
(declare-fun field$Zero () T@U)
(declare-fun field$a () T@U)
(declare-fun field$b () T@U)
(declare-fun field$c () T@U)
(declare-fun field$n () T@U)
(declare-fun field$d () T@U)
(declare-fun field$e () T@U)
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
(declare-fun _module.LazyInitArray.Zero () T@U)
(declare-fun Tclass._module.LazyInitArray? (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.array (T@U) T@U)
(declare-fun Tclass._module.LazyInitArray (T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun _module.LazyInitArray.Contents () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.LazyInitArray.d () T@U)
(declare-fun _module.LazyInitArray.e () T@U)
(declare-fun _module.LazyInitArray.a () T@U)
(declare-fun _module.LazyInitArray.b () T@U)
(declare-fun _module.LazyInitArray.c () T@U)
(declare-fun _module.LazyInitArray.n () T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun IndexField (Int) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun IndexField_Inverse (T@U) Int)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
(declare-fun Tclass._module.LazyInitArray?_0 (T@U) T@U)
(declare-fun Tclass._module.LazyInitArray_0 (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.LazyInitArray.Valid (T@U T@U T@U) Bool)
(declare-fun |_module.LazyInitArray.Valid#canCall| (T@U T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#2| (T@U T@U T@U Bool) T@U)
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
(assert (distinct TInt TagInt TagSeq alloc allocName Tagclass._System.array? Tagclass._System.array class._module.LazyInitArray? Tagclass._module.LazyInitArray? Tagclass._module.LazyInitArray tytagFamily$array tytagFamily$LazyInitArray field$Contents field$Zero field$a field$b field$c field$n field$d field$e)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall ((_System.array$arg T@U) ($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._System.array? _System.array$arg))) ($Is intType (int_2_U (_System.array.Length $o)) TInt))
 :qid |unknown.0:0|
 :skolemid |359|
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
(assert (forall ((_module.LazyInitArray$T T@U) ($h T@U) ($o@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) (Tclass._module.LazyInitArray? _module.LazyInitArray$T)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@0) _module.LazyInitArray.Zero) _module.LazyInitArray$T))
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@0) _module.LazyInitArray.Zero) (Tclass._module.LazyInitArray? _module.LazyInitArray$T))
)))
(assert (forall ((_module.LazyInitArray$T@@0 T@U) ($h@@0 T@U) ($o@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@0) (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) (Tclass._module.LazyInitArray? _module.LazyInitArray$T@@0)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@1) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@1) _module.LazyInitArray.Zero) _module.LazyInitArray$T@@0 $h@@0))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@1) _module.LazyInitArray.Zero) (Tclass._module.LazyInitArray? _module.LazyInitArray$T@@0))
)))
(assert (forall ((_System.array$arg@@0 T@U) (|c#0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h@@1) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h@@1))
 :qid |unknown.0:0|
 :skolemid |365|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h@@1))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h@@1))
)))
(assert (forall ((_module.LazyInitArray$T@@1 T@U) (|c#0@@0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@0| (Tclass._module.LazyInitArray _module.LazyInitArray$T@@1) $h@@2) ($IsAlloc refType |c#0@@0| (Tclass._module.LazyInitArray? _module.LazyInitArray$T@@1) $h@@2))
 :qid |unknown.0:0|
 :skolemid |698|
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._module.LazyInitArray _module.LazyInitArray$T@@1) $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._module.LazyInitArray? _module.LazyInitArray$T@@1) $h@@2))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (FDim _module.LazyInitArray.Contents) 0))
(assert (= (FieldOfDecl class._module.LazyInitArray? field$Contents) _module.LazyInitArray.Contents))
(assert ($IsGhostField _module.LazyInitArray.Contents))
(assert (= (FDim _module.LazyInitArray.d) 0))
(assert (= (FieldOfDecl class._module.LazyInitArray? field$d) _module.LazyInitArray.d))
(assert ($IsGhostField _module.LazyInitArray.d))
(assert (= (FDim _module.LazyInitArray.e) 0))
(assert (= (FieldOfDecl class._module.LazyInitArray? field$e) _module.LazyInitArray.e))
(assert ($IsGhostField _module.LazyInitArray.e))
(assert (forall ((_System.array$arg@@1 T@U) ($o@@2 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@2 (Tclass._System.array? _System.array$arg@@1) $h@@3)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |358|
 :pattern ( ($IsAlloc refType $o@@2 (Tclass._System.array? _System.array$arg@@1) $h@@3))
)))
(assert (forall ((_module.LazyInitArray$T@@2 T@U) ($o@@3 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@3 (Tclass._module.LazyInitArray? _module.LazyInitArray$T@@2) $h@@4)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( ($IsAlloc refType $o@@3 (Tclass._module.LazyInitArray? _module.LazyInitArray$T@@2) $h@@4))
)))
(assert (= (FDim _module.LazyInitArray.Zero) 0))
(assert (= (FieldOfDecl class._module.LazyInitArray? field$Zero) _module.LazyInitArray.Zero))
(assert  (not ($IsGhostField _module.LazyInitArray.Zero)))
(assert (= (FDim _module.LazyInitArray.a) 0))
(assert (= (FieldOfDecl class._module.LazyInitArray? field$a) _module.LazyInitArray.a))
(assert  (not ($IsGhostField _module.LazyInitArray.a)))
(assert (= (FDim _module.LazyInitArray.b) 0))
(assert (= (FieldOfDecl class._module.LazyInitArray? field$b) _module.LazyInitArray.b))
(assert  (not ($IsGhostField _module.LazyInitArray.b)))
(assert (= (FDim _module.LazyInitArray.c) 0))
(assert (= (FieldOfDecl class._module.LazyInitArray? field$c) _module.LazyInitArray.c))
(assert  (not ($IsGhostField _module.LazyInitArray.c)))
(assert (= (FDim _module.LazyInitArray.n) 0))
(assert (= (FieldOfDecl class._module.LazyInitArray? field$n) _module.LazyInitArray.n))
(assert  (not ($IsGhostField _module.LazyInitArray.n)))
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
(assert (forall ((_System.array$arg@@2 T@U) ($h@@5 T@U) ($o@@4 T@U) ($i0 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) (Tclass._System.array? _System.array$arg@@2)))) (and (<= 0 $i0) (< $i0 (_System.array.Length $o@@4)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) (IndexField $i0)) _System.array$arg@@2 $h@@5))
 :qid |unknown.0:0|
 :skolemid |356|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) (IndexField $i0)) (Tclass._System.array? _System.array$arg@@2))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((_module.LazyInitArray$T@@3 T@U) ($h@@6 T@U) ($o@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) (Tclass._module.LazyInitArray? _module.LazyInitArray$T@@3)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) _module.LazyInitArray.n)) TInt $h@@6))
 :qid |unknown.0:0|
 :skolemid |495|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) _module.LazyInitArray.n)) (Tclass._module.LazyInitArray? _module.LazyInitArray$T@@3))
)))
(assert ($IsGhostField alloc))
(assert (forall ((_System.array$arg@@3 T@U) (|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| (Tclass._System.array _System.array$arg@@3))  (and ($Is refType |c#0@@1| (Tclass._System.array? _System.array$arg@@3)) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |364|
 :pattern ( ($Is refType |c#0@@1| (Tclass._System.array _System.array$arg@@3)))
 :pattern ( ($Is refType |c#0@@1| (Tclass._System.array? _System.array$arg@@3)))
)))
(assert (forall ((_module.LazyInitArray$T@@4 T@U) (|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| (Tclass._module.LazyInitArray _module.LazyInitArray$T@@4))  (and ($Is refType |c#0@@2| (Tclass._module.LazyInitArray? _module.LazyInitArray$T@@4)) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |697|
 :pattern ( ($Is refType |c#0@@2| (Tclass._module.LazyInitArray _module.LazyInitArray$T@@4)))
 :pattern ( ($Is refType |c#0@@2| (Tclass._module.LazyInitArray? _module.LazyInitArray$T@@4)))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
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
(assert (forall ((_module.LazyInitArray$T@@5 T@U) ) (!  (and (= (Tag (Tclass._module.LazyInitArray? _module.LazyInitArray$T@@5)) Tagclass._module.LazyInitArray?) (= (TagFamily (Tclass._module.LazyInitArray? _module.LazyInitArray$T@@5)) tytagFamily$LazyInitArray))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( (Tclass._module.LazyInitArray? _module.LazyInitArray$T@@5))
)))
(assert (forall ((_module.LazyInitArray$T@@6 T@U) ) (!  (and (= (Tag (Tclass._module.LazyInitArray _module.LazyInitArray$T@@6)) Tagclass._module.LazyInitArray) (= (TagFamily (Tclass._module.LazyInitArray _module.LazyInitArray$T@@6)) tytagFamily$LazyInitArray))
 :qid |unknown.0:0|
 :skolemid |501|
 :pattern ( (Tclass._module.LazyInitArray _module.LazyInitArray$T@@6))
)))
(assert (= (Ctor SeqType) 7))
(assert (forall ((_module.LazyInitArray$T@@7 T@U) ($h@@7 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) (Tclass._module.LazyInitArray? _module.LazyInitArray$T@@7)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) _module.LazyInitArray.Contents)) (TSeq _module.LazyInitArray$T@@7) $h@@7))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) _module.LazyInitArray.Contents)) (Tclass._module.LazyInitArray? _module.LazyInitArray$T@@7))
)))
(assert (forall ((_module.LazyInitArray$T@@8 T@U) ($h@@8 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) (Tclass._module.LazyInitArray? _module.LazyInitArray$T@@8)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@7) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@7) _module.LazyInitArray.a)) (Tclass._System.array _module.LazyInitArray$T@@8) $h@@8))
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@7) _module.LazyInitArray.a)) (Tclass._module.LazyInitArray? _module.LazyInitArray$T@@8))
)))
(assert (forall ((_module.LazyInitArray$T@@9 T@U) ($h@@9 T@U) ($o@@8 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) (Tclass._module.LazyInitArray? _module.LazyInitArray$T@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@8) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@8) _module.LazyInitArray.b)) (Tclass._System.array TInt) $h@@9))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@8) _module.LazyInitArray.b)) (Tclass._module.LazyInitArray? _module.LazyInitArray$T@@9))
)))
(assert (forall ((_module.LazyInitArray$T@@10 T@U) ($h@@10 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) (Tclass._module.LazyInitArray? _module.LazyInitArray$T@@10)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@9) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@9) _module.LazyInitArray.c)) (Tclass._System.array TInt) $h@@10))
 :qid |unknown.0:0|
 :skolemid |493|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@9) _module.LazyInitArray.c)) (Tclass._module.LazyInitArray? _module.LazyInitArray$T@@10))
)))
(assert (forall ((_module.LazyInitArray$T@@11 T@U) ($h@@11 T@U) ($o@@10 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) (Tclass._module.LazyInitArray? _module.LazyInitArray$T@@11)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@10) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@10) _module.LazyInitArray.d)) (TSeq TInt) $h@@11))
 :qid |unknown.0:0|
 :skolemid |497|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@10) _module.LazyInitArray.d)) (Tclass._module.LazyInitArray? _module.LazyInitArray$T@@11))
)))
(assert (forall ((_module.LazyInitArray$T@@12 T@U) ($h@@12 T@U) ($o@@11 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) (Tclass._module.LazyInitArray? _module.LazyInitArray$T@@12)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@11) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@11) _module.LazyInitArray.e)) (TSeq TInt) $h@@12))
 :qid |unknown.0:0|
 :skolemid |499|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@11) _module.LazyInitArray.e)) (Tclass._module.LazyInitArray? _module.LazyInitArray$T@@12))
)))
(assert (forall ((_System.array$arg@@6 T@U) ($o@@12 T@U) ) (! (= ($Is refType $o@@12 (Tclass._System.array? _System.array$arg@@6))  (or (= $o@@12 null) (= (dtype $o@@12) (Tclass._System.array? _System.array$arg@@6))))
 :qid |unknown.0:0|
 :skolemid |357|
 :pattern ( ($Is refType $o@@12 (Tclass._System.array? _System.array$arg@@6)))
)))
(assert (forall ((_module.LazyInitArray$T@@13 T@U) ($o@@13 T@U) ) (! (= ($Is refType $o@@13 (Tclass._module.LazyInitArray? _module.LazyInitArray$T@@13))  (or (= $o@@13 null) (= (dtype $o@@13) (Tclass._module.LazyInitArray? _module.LazyInitArray$T@@13))))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( ($Is refType $o@@13 (Tclass._module.LazyInitArray? _module.LazyInitArray$T@@13)))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx TInt) (and (= ($Box intType ($Unbox intType bx)) bx) ($Is intType ($Unbox intType bx) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx TInt))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((o T@U) ) (! (<= 0 (_System.array.Length o))
 :qid |DafnyPreludebpl.571:15|
 :skolemid |112|
 :pattern ( (_System.array.Length o))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s))
)))
(assert (forall ((v@@1 T@U) (t0@@0 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SeqType v@@1 (TSeq t0@@0) h@@0) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| v@@1))) ($IsAllocBox (|Seq#Index| v@@1 i) t0@@0 h@@0))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@1 i))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@1 (TSeq t0@@0) h@@0))
)))
(assert (forall ((_module.LazyInitArray$T@@14 T@U) ($h@@13 T@U) ($o@@14 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@14 null)) (not true)) (= (dtype $o@@14) (Tclass._module.LazyInitArray? _module.LazyInitArray$T@@14)))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@14) _module.LazyInitArray.n)) TInt))
 :qid |unknown.0:0|
 :skolemid |494|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@14) _module.LazyInitArray.n)) (Tclass._module.LazyInitArray? _module.LazyInitArray$T@@14))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSeq (TSeq t@@1)) t@@1)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSeq t@@2)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@2))
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
(assert (forall ((_module.LazyInitArray$T@@15 T@U) ) (! (= (Tclass._module.LazyInitArray?_0 (Tclass._module.LazyInitArray? _module.LazyInitArray$T@@15)) _module.LazyInitArray$T@@15)
 :qid |unknown.0:0|
 :skolemid |480|
 :pattern ( (Tclass._module.LazyInitArray? _module.LazyInitArray$T@@15))
)))
(assert (forall ((_module.LazyInitArray$T@@16 T@U) ) (! (= (Tclass._module.LazyInitArray_0 (Tclass._module.LazyInitArray _module.LazyInitArray$T@@16)) _module.LazyInitArray$T@@16)
 :qid |unknown.0:0|
 :skolemid |502|
 :pattern ( (Tclass._module.LazyInitArray _module.LazyInitArray$T@@16))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.LazyInitArray$T@@17 T@U) ($Heap T@U) (this T@U) ) (!  (=> (or (|_module.LazyInitArray.Valid#canCall| _module.LazyInitArray$T@@17 $Heap this) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this (Tclass._module.LazyInitArray _module.LazyInitArray$T@@17)) ($IsAlloc refType this (Tclass._module.LazyInitArray _module.LazyInitArray$T@@17) $Heap)))))) (= (_module.LazyInitArray.Valid _module.LazyInitArray$T@@17 $Heap this)  (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.a))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.Contents)))) (= (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.b))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.Contents))))) (= (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.c))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.Contents))))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.b)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.c)))) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.a)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.b)))) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.a)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.c)))) (not true))) (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.n))))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.n))) (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.c))))) (forall ((|i#0| Int) ) (!  (=> (and (<= (LitInt 0) |i#0|) (< |i#0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.Contents))))) (= (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.Contents)) |i#0|) (ite  (and (and (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.b))) (IndexField |i#0|))))) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.b))) (IndexField |i#0|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.n))))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.c))) (IndexField (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.b))) (IndexField |i#0|)))))))) |i#0|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.a))) (IndexField |i#0|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.Zero))))
 :qid |LazyInitArraydfy.21:13|
 :skolemid |507|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.a))) (IndexField |i#0|)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.b))) (IndexField |i#0|))))
 :pattern ( (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.Contents)) |i#0|))
))) (forall ((|i#1| Int) ) (!  (=> (and (<= (LitInt 0) |i#1|) (< |i#1| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.Contents))))) (= (exists ((|j#0| Int) ) (!  (and (and (<= (LitInt 0) |j#0|) (< |j#0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.n))))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.c))) (IndexField |j#0|)))) |i#1|))
 :qid |LazyInitArraydfy.24:24|
 :skolemid |508|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.c))) (IndexField |j#0|))))
))  (and (and (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.b))) (IndexField |i#1|))))) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.b))) (IndexField |i#1|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.n))))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.c))) (IndexField (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.b))) (IndexField |i#1|)))))))) |i#1|))))
 :qid |LazyInitArraydfy.23:13|
 :skolemid |509|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.b))) (IndexField |i#1|))))
))) (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.d))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.Contents))))) (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.e))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.Contents))))) (forall ((|i#2| Int) ) (!  (=> (and (<= (LitInt 0) |i#2|) (< |i#2| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.n))))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.c))) (IndexField |i#2|)))) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.d)) |i#2|)))))
 :qid |LazyInitArraydfy.33:13|
 :skolemid |510|
 :pattern ( ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.d)) |i#2|)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.c))) (IndexField |i#2|))))
))) (forall ((|i#3| Int) ) (!  (and (=> (and (<= (LitInt 0) |i#3|) (< |i#3| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.d))))) (<= (LitInt 0) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.d)) |i#3|))))) (=> (and (<= (LitInt 0) |i#3|) (< |i#3| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.d))))) (< (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.d)) |i#3|))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.d))))))
 :qid |LazyInitArraydfy.34:13|
 :skolemid |511|
 :pattern ( ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.d)) |i#3|)))
))) (forall ((|i#4| Int) ) (!  (and (=> (and (<= (LitInt 0) |i#4|) (< |i#4| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.e))))) (<= (LitInt 0) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.e)) |i#4|))))) (=> (and (<= (LitInt 0) |i#4|) (< |i#4| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.e))))) (< (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.e)) |i#4|))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.e))))))
 :qid |LazyInitArraydfy.35:13|
 :skolemid |512|
 :pattern ( ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.e)) |i#4|)))
))) (forall ((|i#5| Int) ) (!  (=> (and (<= (LitInt 0) |i#5|) (< |i#5| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.e))))) (= (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.d)) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.e)) |i#5|)))))) |i#5|))
 :qid |LazyInitArraydfy.36:13|
 :skolemid |513|
 :pattern ( ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.LazyInitArray.e)) |i#5|)))
)))))
 :qid |unknown.0:0|
 :skolemid |520|
 :pattern ( (_module.LazyInitArray.Valid _module.LazyInitArray$T@@17 $Heap this) ($IsGoodHeap $Heap))
))))
(assert (forall ((_System.array$arg@@9 T@U) ($h@@14 T@U) ($o@@15 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@15 null)) (not true)) (= (dtype $o@@15) (Tclass._System.array? _System.array$arg@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@15) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@15)) TInt $h@@14))
 :qid |unknown.0:0|
 :skolemid |360|
 :pattern ( (_System.array.Length $o@@15) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@15) alloc)) (Tclass._System.array? _System.array$arg@@9))
)))
(assert (forall ((_System.array$arg@@10 T@U) ($h@@15 T@U) ($o@@16 T@U) ($i0@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@16 null)) (not true)) (= (dtype $o@@16) (Tclass._System.array? _System.array$arg@@10)))) (and (<= 0 $i0@@0) (< $i0@@0 (_System.array.Length $o@@16)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@16) (IndexField $i0@@0)) _System.array$arg@@10))
 :qid |unknown.0:0|
 :skolemid |355|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@16) (IndexField $i0@@0)) (Tclass._System.array? _System.array$arg@@10))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@17 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#2| |l#0| |l#1| |l#2| |l#3|) $o@@17 $f))  (=> (and (or (not (= $o@@17 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@17) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |700|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#2| |l#0| |l#1| |l#2| |l#3|) $o@@17 $f))
)))
(assert (forall ((_module.LazyInitArray$T@@18 T@U) ($h@@16 T@U) ($o@@18 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@18 null)) (not true)) (= (dtype $o@@18) (Tclass._module.LazyInitArray? _module.LazyInitArray$T@@18)))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@18) _module.LazyInitArray.Contents)) (TSeq _module.LazyInitArray$T@@18)))
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@18) _module.LazyInitArray.Contents)) (Tclass._module.LazyInitArray? _module.LazyInitArray$T@@18))
)))
(assert (forall ((_module.LazyInitArray$T@@19 T@U) ($h@@17 T@U) ($o@@19 T@U) ) (!  (=> (and ($IsGoodHeap $h@@17) (and (or (not (= $o@@19 null)) (not true)) (= (dtype $o@@19) (Tclass._module.LazyInitArray? _module.LazyInitArray$T@@19)))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@19) _module.LazyInitArray.a)) (Tclass._System.array _module.LazyInitArray$T@@19)))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@19) _module.LazyInitArray.a)) (Tclass._module.LazyInitArray? _module.LazyInitArray$T@@19))
)))
(assert (forall ((_module.LazyInitArray$T@@20 T@U) ($h@@18 T@U) ($o@@20 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@20 null)) (not true)) (= (dtype $o@@20) (Tclass._module.LazyInitArray? _module.LazyInitArray$T@@20)))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@20) _module.LazyInitArray.b)) (Tclass._System.array TInt)))
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@20) _module.LazyInitArray.b)) (Tclass._module.LazyInitArray? _module.LazyInitArray$T@@20))
)))
(assert (forall ((_module.LazyInitArray$T@@21 T@U) ($h@@19 T@U) ($o@@21 T@U) ) (!  (=> (and ($IsGoodHeap $h@@19) (and (or (not (= $o@@21 null)) (not true)) (= (dtype $o@@21) (Tclass._module.LazyInitArray? _module.LazyInitArray$T@@21)))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@21) _module.LazyInitArray.c)) (Tclass._System.array TInt)))
 :qid |unknown.0:0|
 :skolemid |492|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@21) _module.LazyInitArray.c)) (Tclass._module.LazyInitArray? _module.LazyInitArray$T@@21))
)))
(assert (forall ((_module.LazyInitArray$T@@22 T@U) ($h@@20 T@U) ($o@@22 T@U) ) (!  (=> (and ($IsGoodHeap $h@@20) (and (or (not (= $o@@22 null)) (not true)) (= (dtype $o@@22) (Tclass._module.LazyInitArray? _module.LazyInitArray$T@@22)))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@22) _module.LazyInitArray.d)) (TSeq TInt)))
 :qid |unknown.0:0|
 :skolemid |496|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@22) _module.LazyInitArray.d)) (Tclass._module.LazyInitArray? _module.LazyInitArray$T@@22))
)))
(assert (forall ((_module.LazyInitArray$T@@23 T@U) ($h@@21 T@U) ($o@@23 T@U) ) (!  (=> (and ($IsGoodHeap $h@@21) (and (or (not (= $o@@23 null)) (not true)) (= (dtype $o@@23) (Tclass._module.LazyInitArray? _module.LazyInitArray$T@@23)))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@23) _module.LazyInitArray.e)) (TSeq TInt)))
 :qid |unknown.0:0|
 :skolemid |498|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@23) _module.LazyInitArray.e)) (Tclass._module.LazyInitArray? _module.LazyInitArray$T@@23))
)))
(assert (forall ((bx@@0 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@0 (TSeq t@@3)) (and (= ($Box SeqType ($Unbox SeqType bx@@0)) bx@@0) ($Is SeqType ($Unbox SeqType bx@@0) (TSeq t@@3))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@0 (TSeq t@@3)))
)))
(assert (forall ((_System.array$arg@@11 T@U) (bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 (Tclass._System.array? _System.array$arg@@11)) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) (Tclass._System.array? _System.array$arg@@11))))
 :qid |unknown.0:0|
 :skolemid |354|
 :pattern ( ($IsBox bx@@1 (Tclass._System.array? _System.array$arg@@11)))
)))
(assert (forall ((_System.array$arg@@12 T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass._System.array _System.array$arg@@12)) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) (Tclass._System.array _System.array$arg@@12))))
 :qid |unknown.0:0|
 :skolemid |363|
 :pattern ( ($IsBox bx@@2 (Tclass._System.array _System.array$arg@@12)))
)))
(assert (forall ((_module.LazyInitArray$T@@24 T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass._module.LazyInitArray? _module.LazyInitArray$T@@24)) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) (Tclass._module.LazyInitArray? _module.LazyInitArray$T@@24))))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsBox bx@@3 (Tclass._module.LazyInitArray? _module.LazyInitArray$T@@24)))
)))
(assert (forall ((_module.LazyInitArray$T@@25 T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass._module.LazyInitArray _module.LazyInitArray$T@@25)) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) (Tclass._module.LazyInitArray _module.LazyInitArray$T@@25))))
 :qid |unknown.0:0|
 :skolemid |503|
 :pattern ( ($IsBox bx@@4 (Tclass._module.LazyInitArray _module.LazyInitArray$T@@25)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((s@@0 T@U) ) (!  (=> (= (|Seq#Length| s@@0) 0) (= s@@0 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((h@@1 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@2 TInt h@@1))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@3 (TSeq t0@@2)) (forall ((i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| v@@3))) ($IsBox (|Seq#Index| v@@3 i@@2) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@3 i@@2))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@3 (TSeq t0@@2)))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is intType v@@4 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@4 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |x#0@2| () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun this@@0 () T@U)
(declare-fun |i#0@@0| () Int)
(declare-fun |x#0@1| () T@U)
(declare-fun |x#0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun _module.LazyInitArray$T@@26 () T@U)
(declare-fun |x#0| () T@U)
(set-info :boogie-vc-id Impl$$_module.LazyInitArray.Get)
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
 (=> (= (ControlFlow 0 0) 21) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= |x#0@2| (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.Contents)) |i#0@@0|)))))
(let ((anon9_Else_correct  (=> (and (and (not (and (and (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.b))) (IndexField |i#0@@0|))))) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.b))) (IndexField |i#0@@0|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.n))))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.c))) (IndexField (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.b))) (IndexField |i#0@@0|)))))))) |i#0@@0|))) (= |x#0@1| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.Zero))) (and (= |x#0@2| |x#0@1|) (= (ControlFlow 0 6) 2))) GeneratedUnifiedExit_correct)))
(let ((anon9_Then_correct  (=> (and (and (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.b))) (IndexField |i#0@@0|))))) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.b))) (IndexField |i#0@@0|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.n))))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.c))) (IndexField (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.b))) (IndexField |i#0@@0|)))))))) |i#0@@0|)) (and (=> (= (ControlFlow 0 3) (- 0 5)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.a)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.a)) null)) (not true)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (and (<= 0 |i#0@@0|) (< |i#0@@0| (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.a)))))) (=> (and (<= 0 |i#0@@0|) (< |i#0@@0| (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.a))))) (=> (= |x#0@0| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.a))) (IndexField |i#0@@0|))) (=> (and (= |x#0@2| |x#0@0|) (= (ControlFlow 0 3) 2)) GeneratedUnifiedExit_correct)))))))))
(let ((anon4_correct  (and (=> (= (ControlFlow 0 7) 3) anon9_Then_correct) (=> (= (ControlFlow 0 7) 6) anon9_Else_correct))))
(let ((anon8_Else_correct  (=> (and (not (and (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.b))) (IndexField |i#0@@0|))))) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.b))) (IndexField |i#0@@0|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.n)))))) (= (ControlFlow 0 13) 7)) anon4_correct)))
(let ((anon8_Then_correct  (=> (and (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.b))) (IndexField |i#0@@0|))))) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.b))) (IndexField |i#0@@0|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.n))))) (and (=> (= (ControlFlow 0 8) (- 0 12)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.c)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.c)) null)) (not true)) (and (=> (= (ControlFlow 0 8) (- 0 11)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.b)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.b)) null)) (not true)) (and (=> (= (ControlFlow 0 8) (- 0 10)) (and (<= 0 |i#0@@0|) (< |i#0@@0| (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.b)))))) (=> (and (<= 0 |i#0@@0|) (< |i#0@@0| (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.b))))) (and (=> (= (ControlFlow 0 8) (- 0 9)) (and (<= 0 (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.b))) (IndexField |i#0@@0|))))) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.b))) (IndexField |i#0@@0|)))) (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.c)))))) (=> (and (<= 0 (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.b))) (IndexField |i#0@@0|))))) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.b))) (IndexField |i#0@@0|)))) (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.c))))) (=> (= (ControlFlow 0 8) 7) anon4_correct))))))))))))
(let ((anon7_Else_correct  (=> (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.b))) (IndexField |i#0@@0|)))) (LitInt 0)) (and (=> (= (ControlFlow 0 17) 8) anon8_Then_correct) (=> (= (ControlFlow 0 17) 13) anon8_Else_correct)))))
(let ((anon7_Then_correct  (=> (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.b))) (IndexField |i#0@@0|))))) (and (=> (= (ControlFlow 0 14) (- 0 16)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.b)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.b)) null)) (not true)) (and (=> (= (ControlFlow 0 14) (- 0 15)) (and (<= 0 |i#0@@0|) (< |i#0@@0| (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.b)))))) (=> (and (<= 0 |i#0@@0|) (< |i#0@@0| (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.b))))) (and (=> (= (ControlFlow 0 14) 8) anon8_Then_correct) (=> (= (ControlFlow 0 14) 13) anon8_Else_correct)))))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#2| null $Heap@@0 alloc false)) (and (=> (= (ControlFlow 0 18) (- 0 20)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.b)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.b)) null)) (not true)) (and (=> (= (ControlFlow 0 18) (- 0 19)) (and (<= 0 |i#0@@0|) (< |i#0@@0| (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.b)))))) (=> (and (<= 0 |i#0@@0|) (< |i#0@@0| (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.b))))) (and (=> (= (ControlFlow 0 18) 14) anon7_Then_correct) (=> (= (ControlFlow 0 18) 17) anon7_Else_correct)))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 (Tclass._module.LazyInitArray _module.LazyInitArray$T@@26)) ($IsAlloc refType this@@0 (Tclass._module.LazyInitArray _module.LazyInitArray$T@@26) $Heap@@0)))) (and (and ($IsBox |x#0| _module.LazyInitArray$T@@26) ($IsAllocBox |x#0| _module.LazyInitArray$T@@26 $Heap@@0)) (= 1 $FunctionContextHeight))) (and (and (and (|_module.LazyInitArray.Valid#canCall| _module.LazyInitArray$T@@26 $Heap@@0 this@@0) (and (_module.LazyInitArray.Valid _module.LazyInitArray$T@@26 $Heap@@0 this@@0) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.a))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.Contents)))) (= (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.b))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.Contents))))) (= (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.c))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.Contents))))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.b)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.c)))) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.a)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.b)))) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.a)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.c)))) (not true))) (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.n))))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.n))) (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.c))))) (forall ((|i#7| Int) ) (!  (=> (and (<= (LitInt 0) |i#7|) (< |i#7| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.Contents))))) (= (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.Contents)) |i#7|) (ite  (and (and (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.b))) (IndexField |i#7|))))) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.b))) (IndexField |i#7|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.n))))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.c))) (IndexField (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.b))) (IndexField |i#7|)))))))) |i#7|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.a))) (IndexField |i#7|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.Zero))))
 :qid |LazyInitArraydfy.21:13|
 :skolemid |630|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.a))) (IndexField |i#7|)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.b))) (IndexField |i#7|))))
 :pattern ( (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.Contents)) |i#7|))
))) (forall ((|i#8| Int) ) (!  (=> (and (<= (LitInt 0) |i#8|) (< |i#8| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.Contents))))) (= (exists ((|j#1| Int) ) (!  (and (and (<= (LitInt 0) |j#1|) (< |j#1| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.n))))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.c))) (IndexField |j#1|)))) |i#8|))
 :qid |LazyInitArraydfy.24:24|
 :skolemid |631|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.c))) (IndexField |j#1|))))
))  (and (and (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.b))) (IndexField |i#8|))))) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.b))) (IndexField |i#8|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.n))))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.c))) (IndexField (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.b))) (IndexField |i#8|)))))))) |i#8|))))
 :qid |LazyInitArraydfy.23:13|
 :skolemid |632|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.b))) (IndexField |i#8|))))
))) (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.d))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.Contents))))) (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.e))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.Contents))))) (forall ((|i#9| Int) ) (!  (=> (and (<= (LitInt 0) |i#9|) (< |i#9| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.n))))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.c))) (IndexField |i#9|)))) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.d)) |i#9|)))))
 :qid |LazyInitArraydfy.33:13|
 :skolemid |633|
 :pattern ( ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.d)) |i#9|)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.c))) (IndexField |i#9|))))
))) (forall ((|i#10| Int) ) (!  (and (=> (and (<= (LitInt 0) |i#10|) (< |i#10| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.d))))) (<= (LitInt 0) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.d)) |i#10|))))) (=> (and (<= (LitInt 0) |i#10|) (< |i#10| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.d))))) (< (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.d)) |i#10|))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.d))))))
 :qid |LazyInitArraydfy.34:13|
 :skolemid |634|
 :pattern ( ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.d)) |i#10|)))
))) (forall ((|i#11| Int) ) (!  (and (=> (and (<= (LitInt 0) |i#11|) (< |i#11| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.e))))) (<= (LitInt 0) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.e)) |i#11|))))) (=> (and (<= (LitInt 0) |i#11|) (< |i#11| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.e))))) (< (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.e)) |i#11|))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.e))))))
 :qid |LazyInitArraydfy.35:13|
 :skolemid |635|
 :pattern ( ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.e)) |i#11|)))
))) (forall ((|i#12| Int) ) (!  (=> (and (<= (LitInt 0) |i#12|) (< |i#12| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.e))))) (= (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.d)) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.e)) |i#12|)))))) |i#12|))
 :qid |LazyInitArraydfy.36:13|
 :skolemid |636|
 :pattern ( ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.e)) |i#12|)))
))))) (<= (LitInt 0) |i#0@@0|)) (and (< |i#0@@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.LazyInitArray.Contents)))) (= (ControlFlow 0 21) 18)))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
