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
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._System.___hFunc0 () T@U)
(declare-fun Tagclass._module.C () T@U)
(declare-fun Tagclass._module.C? () T@U)
(declare-fun class._module.C? () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun |tytagFamily$_#Func0| () T@U)
(declare-fun tytagFamily$C () T@U)
(declare-fun field$data () T@U)
(declare-fun field$next () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc0 (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Requires0 (T@U T@U T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun Reads0 (T@U T@U T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun refType () T@T)
(declare-fun null () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun FDim (T@U) Int)
(declare-fun Tag (T@U) T@U)
(declare-fun DeclName (T@U) T@U)
(declare-fun Tclass._System.nat () T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun _module.C.FWithoutTailRecursion (T@U T@U T@U Int T@U) Int)
(declare-fun $LS (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._module.C? () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass._module.C () T@U)
(declare-fun _module.C.data () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.C.next () T@U)
(declare-fun Apply0 (T@U T@U T@U) T@U)
(declare-fun Handle0 (T@U T@U T@U) T@U)
(declare-fun |lambda#34| (T@U T@U) T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun |lambda#36| (T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun $OneHeap () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |_module.C.FWithoutTailRecursion#canCall| (T@U T@U Int T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#44| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun AtLayer (T@T T@U T@U) T@U)
(declare-fun LayerTypeType () T@T)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |lambda#50| (T@U T@U T@U T@U) T@U)
(declare-fun SetRef_to_SetBox (T@U) T@U)
(declare-fun |lambda#2| (Bool) T@U)
(declare-fun |lambda#4| (T@U) T@U)
(declare-fun |lambda#5| (T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tclass._System.___hFunc0_0 (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
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
(assert (distinct TInt TagInt TagSet alloc allocName Tagclass._System.nat Tagclass._System.object? Tagclass._System.object Tagclass._System.___hFunc0 Tagclass._module.C Tagclass._module.C? class._module.C? tytagFamily$nat tytagFamily$object |tytagFamily$_#Func0| tytagFamily$C field$data field$next)
)
(assert  (and (and (and (and (and (and (and (and (= (Ctor HandleTypeType) 3) (= (Ctor refType) 4)) (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
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
(assert (forall ((f T@U) (t0@@0 T@U) (h T@U) ) (!  (=> ($IsGoodHeap h) (= ($IsAlloc HandleTypeType f (Tclass._System.___hFunc0 t0@@0) h)  (=> (Requires0 t0@@0 h f) (forall ((r T@U) ) (!  (=> (and (or (not (= r null)) (not true)) (|Set#IsMember| (Reads0 t0@@0 h f) ($Box refType r))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h r) alloc))))
 :qid |unknown.0:0|
 :skolemid |435|
 :pattern ( (|Set#IsMember| (Reads0 t0@@0 h f) ($Box refType r)))
)))))
 :qid |unknown.0:0|
 :skolemid |436|
 :pattern ( ($IsAlloc HandleTypeType f (Tclass._System.___hFunc0 t0@@0) h))
)))
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (forall (($ly T@U) ($Heap T@U) (this T@U) (|n#0| Int) (|g#0| T@U) ) (! (= (_module.C.FWithoutTailRecursion ($LS $ly) $Heap this |n#0| |g#0|) (_module.C.FWithoutTailRecursion $ly $Heap this |n#0| |g#0|))
 :qid |gitissue4684dfy.16:12|
 :skolemid |544|
 :pattern ( (_module.C.FWithoutTailRecursion ($LS $ly) $Heap this |n#0| |g#0|))
)))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.C?)  (or (= $o null) (= (dtype $o) Tclass._module.C?)))
 :qid |unknown.0:0|
 :skolemid |534|
 :pattern ( ($Is refType $o Tclass._module.C?))
)))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h@@0) ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.C $h@@1) ($IsAlloc refType |c#0@@0| Tclass._module.C? $h@@1))
 :qid |unknown.0:0|
 :skolemid |565|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.C $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.C? $h@@1))
)))
(assert (= (FDim _module.C.data) 0))
(assert (= (FieldOfDecl class._module.C? field$data) _module.C.data))
(assert  (not ($IsGhostField _module.C.data)))
(assert (= (FDim _module.C.next) 0))
(assert (= (FieldOfDecl class._module.C? field$next) _module.C.next))
(assert  (not ($IsGhostField _module.C.next)))
(assert (forall ((t0@@1 T@U) (heap T@U) (h@@0 T@U) (r@@0 T@U) (rd T@U) ) (! (= (Apply0 t0@@1 heap (Handle0 h@@0 r@@0 rd)) (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType h@@0 heap))
 :qid |unknown.0:0|
 :skolemid |414|
 :pattern ( (Apply0 t0@@1 heap (Handle0 h@@0 r@@0 rd)))
)))
(assert (forall (($o@@0 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._System.object? $h@@2)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._System.object? $h@@2))
)))
(assert (forall (($o@@1 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._module.C? $h@@3)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |535|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._module.C? $h@@3))
)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|$l#2#heap#0| T@U) ) (! (= (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType (|lambda#34| |l#0| |l#1|) |$l#2#heap#0|) ($Box intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |$l#2#heap#0| |l#0|) |l#1|))))
 :qid |gitissue4684dfy.16:12|
 :skolemid |572|
 :pattern ( (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType (|lambda#34| |l#0| |l#1|) |$l#2#heap#0|))
)))
(assert (forall ((h@@1 T@U) (k T@U) ) (!  (=> ($HeapSucc h@@1 k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h@@1 k))
)))
(assert (forall ((|l#0@@0| T@U) (|$l#2#o#0| T@U) ) (! (= (U_2_bool (MapType0Select refType boolType (|lambda#36| |l#0@@0|) |$l#2#o#0|)) (= |$l#2#o#0| |l#0@@0|))
 :qid |gitissue4684dfy.16:12|
 :skolemid |573|
 :pattern ( (MapType0Select refType boolType (|lambda#36| |l#0@@0|) |$l#2#o#0|))
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
(assert (forall ((a T@U) (b T@U) ) (! (= (|Set#Subset| a b) (forall ((o@@1 T@U) ) (!  (=> (|Set#IsMember| a o@@1) (|Set#IsMember| b o@@1))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a o@@1))
 :pattern ( (|Set#IsMember| b o@@1))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a b))
)))
(assert (= (Ctor SetType) 8))
(assert (forall ((t0@@2 T@U) (heap@@0 T@U) (h@@2 T@U) (r@@1 T@U) (rd@@0 T@U) (bx T@U) ) (! (= (|Set#IsMember| (Reads0 t0@@2 heap@@0 (Handle0 h@@2 r@@1 rd@@0)) bx) (|Set#IsMember| (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) SetType rd@@0 heap@@0) bx))
 :qid |unknown.0:0|
 :skolemid |416|
 :pattern ( (|Set#IsMember| (Reads0 t0@@2 heap@@0 (Handle0 h@@2 r@@1 rd@@0)) bx))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((t0@@3 T@U) (heap@@1 T@U) (f@@0 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@1) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc0 t0@@3))) (|Set#Equal| (Reads0 t0@@3 $OneHeap f@@0) |Set#Empty|)) (= (Requires0 t0@@3 $OneHeap f@@0) (Requires0 t0@@3 heap@@1 f@@0)))
 :qid |unknown.0:0|
 :skolemid |430|
 :pattern ( (Requires0 t0@@3 $OneHeap f@@0) ($IsGoodHeap heap@@1))
 :pattern ( (Requires0 t0@@3 heap@@1 f@@0))
)))
(assert (forall (($ly@@0 T@U) ($h0 T@U) ($h1 T@U) (this@@0 T@U) (|n#0@@0| Int) (|g#0@@0| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.C) ($IsAlloc refType this@@0 Tclass._module.C $h0)))) (or (|_module.C.FWithoutTailRecursion#canCall| $h0 this@@0 |n#0@@0| |g#0@@0|) (and (<= (LitInt 0) |n#0@@0|) (and ($Is HandleTypeType |g#0@@0| (Tclass._System.___hFunc0 TInt)) ($IsAlloc HandleTypeType |g#0@@0| (Tclass._System.___hFunc0 TInt) $h0))))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@2 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@2) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@2) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@2) $f)))
 :qid |unknown.0:0|
 :skolemid |546|
)) (= (_module.C.FWithoutTailRecursion $ly@@0 $h0 this@@0 |n#0@@0| |g#0@@0|) (_module.C.FWithoutTailRecursion $ly@@0 $h1 this@@0 |n#0@@0| |g#0@@0|))))
 :qid |unknown.0:0|
 :skolemid |547|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.C.FWithoutTailRecursion $ly@@0 $h1 this@@0 |n#0@@0| |g#0@@0|))
)))
(assert (forall ((v T@U) (t0@@4 T@U) ) (! (= ($Is SetType v (TSet t0@@4)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@4))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@4)))
)))
(assert  (and (forall ((t0@@5 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@5 t1@@0 t2 (MapType1Store t0@@5 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0@@1| T@U) (|l#1@@0| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@3 T@U) ($f@@0 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#44| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4|) $o@@3 $f@@0))  (=> (and (or (not (= $o@@3 |l#0@@1|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@0| $o@@3) |l#2|)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#3| $o@@3) |l#4|)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |574|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#44| |l#0@@1| |l#1@@0| |l#2| |l#3| |l#4|) $o@@3 $f@@0))
)))
(assert (= (Ctor LayerTypeType) 9))
(assert (forall ((f@@1 T@U) (ly T@U) (A T@T) ) (! (= (AtLayer A f@@1 ly) (MapType0Select LayerTypeType A f@@1 ly))
 :qid |DafnyPreludebpl.501:18|
 :skolemid |101|
 :pattern ( (AtLayer A f@@1 ly))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert ($IsGhostField alloc))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((v@@0 T@U) (t T@U) (h@@3 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@3) ($IsAlloc T@@1 v@@0 t h@@3))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@3))
)))
(assert (forall ((h@@4 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@4 k@@0) (=> ($IsAllocBox bx@@1 t@@0 h@@4) ($IsAllocBox bx@@1 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@4 k@@0) ($IsAllocBox bx@@1 t@@0 h@@4))
)))
(assert (forall ((h@@5 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@5 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@5) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@5 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@5))
)))
(assert (forall ((|#$R| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc0 |#$R|)) Tagclass._System.___hFunc0) (= (TagFamily (Tclass._System.___hFunc0 |#$R|)) |tytagFamily$_#Func0|))
 :qid |unknown.0:0|
 :skolemid |411|
 :pattern ( (Tclass._System.___hFunc0 |#$R|))
)))
(assert (forall ((|l#0@@2| T@U) (|l#1@@1| T@U) (|l#2@@0| T@U) (|l#3@@0| T@U) ($o@@4 T@U) ($f@@1 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#50| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0|) $o@@4 $f@@1))  (=> (and (or (not (= $o@@4 |l#0@@2|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@1| $o@@4) |l#2@@0|)))) (= $o@@4 |l#3@@0|)))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |575|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#50| |l#0@@2| |l#1@@1| |l#2@@0| |l#3@@0|) $o@@4 $f@@1))
)))
(assert (forall (($h@@4 T@U) ($o@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) Tclass._module.C?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) _module.C.data)) Tclass._System.nat))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |536|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) _module.C.data)))
)))
(assert (forall (($h@@5 T@U) ($o@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass._module.C?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) _module.C.next)) Tclass._module.C?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |538|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) _module.C.next)))
)))
(assert (forall ((s T@U) (bx@@2 T@U) ) (! (= (|Set#IsMember| (SetRef_to_SetBox s) bx@@2) (U_2_bool (MapType0Select refType boolType s ($Unbox refType bx@@2))))
 :qid |DafnyPreludebpl.370:15|
 :skolemid |82|
 :pattern ( (|Set#IsMember| (SetRef_to_SetBox s) bx@@2))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@3)) bx@@3) ($Is intType ($Unbox intType bx@@3) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx@@3 Tclass._System.nat))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( ($IsBox bx@@4 Tclass._System.object?))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsBox bx@@5 Tclass._System.object))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.C) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.C)))
 :qid |unknown.0:0|
 :skolemid |531|
 :pattern ( ($IsBox bx@@6 Tclass._module.C))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.C?) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.C?)))
 :qid |unknown.0:0|
 :skolemid |533|
 :pattern ( ($IsBox bx@@7 Tclass._module.C?))
)))
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass._System.object)  (and ($Is refType |c#0@@1| Tclass._System.object?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@1| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@1| Tclass._System.object?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._module.C)  (and ($Is refType |c#0@@2| Tclass._module.C?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |564|
 :pattern ( ($Is refType |c#0@@2| Tclass._module.C))
 :pattern ( ($Is refType |c#0@@2| Tclass._module.C?))
)))
(assert (forall (($h@@6 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) Tclass._module.C?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@7) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@7) _module.C.data)) Tclass._System.nat $h@@6))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |537|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@7) _module.C.data)))
)))
(assert (forall (($h@@7 T@U) ($o@@8 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) Tclass._module.C?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@8) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@8) _module.C.next)) Tclass._module.C? $h@@7))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |539|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@8) _module.C.next)))
)))
(assert (forall ((|l#0@@3| Bool) (|$l#1#heap#0| T@U) ) (! (= (U_2_bool (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) boolType (|lambda#2| |l#0@@3|) |$l#1#heap#0|)) |l#0@@3|)
 :qid |unknown.0:0|
 :skolemid |568|
 :pattern ( (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) boolType (|lambda#2| |l#0@@3|) |$l#1#heap#0|))
)))
(assert (forall ((|l#0@@4| T@U) (|$l#1#heap#0@@0| T@U) ) (! (= (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) SetType (|lambda#4| |l#0@@4|) |$l#1#heap#0@@0|) |l#0@@4|)
 :qid |gitissue4684dfy.42:37|
 :skolemid |570|
 :pattern ( (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) SetType (|lambda#4| |l#0@@4|) |$l#1#heap#0@@0|))
)))
(assert (forall ((|l#0@@5| T@U) (|$l#1#ly#0| T@U) ) (! (= (MapType0Select LayerTypeType HandleTypeType (|lambda#5| |l#0@@5|) |$l#1#ly#0|) |l#0@@5|)
 :qid |gitissue4684dfy.42:37|
 :skolemid |571|
 :pattern ( (MapType0Select LayerTypeType HandleTypeType (|lambda#5| |l#0@@5|) |$l#1#ly#0|))
)))
(assert (forall ((t0@@6 T@U) (heap@@2 T@U) (f@@2 T@U) ) (!  (=> (and ($IsGoodHeap heap@@2) ($Is HandleTypeType f@@2 (Tclass._System.___hFunc0 t0@@6))) (= (|Set#Equal| (Reads0 t0@@6 $OneHeap f@@2) |Set#Empty|) (|Set#Equal| (Reads0 t0@@6 heap@@2 f@@2) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |429|
 :pattern ( (Reads0 t0@@6 $OneHeap f@@2) ($IsGoodHeap heap@@2))
 :pattern ( (Reads0 t0@@6 heap@@2 f@@2))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (|Set#Equal| a@@0 b@@0) (= a@@0 b@@0))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@0 b@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) (c T@U) ) (!  (=> (or (not (= a@@1 c)) (not true)) (=> (and ($HeapSucc a@@1 b@@1) ($HeapSucc b@@1 c)) ($HeapSucc a@@1 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@1 b@@1) ($HeapSucc b@@1 c))
)))
(assert (forall ((t0@@7 T@U) (h0 T@U) (h1 T@U) (f@@3 T@U) ) (!  (=> (and (and (and ($HeapSucc h0 h1) (and ($IsGoodHeap h0) ($IsGoodHeap h1))) ($Is HandleTypeType f@@3 (Tclass._System.___hFunc0 t0@@7))) (forall ((o@@2 T@U) (fld T@U) ) (!  (=> (and (or (not (= o@@2 null)) (not true)) (|Set#IsMember| (Reads0 t0@@7 h0 f@@3) ($Box refType o@@2))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0 o@@2) fld) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1 o@@2) fld)))
 :qid |unknown.0:0|
 :skolemid |421|
))) (= (Requires0 t0@@7 h0 f@@3) (Requires0 t0@@7 h1 f@@3)))
 :qid |unknown.0:0|
 :skolemid |422|
 :pattern ( ($HeapSucc h0 h1) (Requires0 t0@@7 h1 f@@3))
)))
(assert (forall ((t0@@8 T@U) (h0@@0 T@U) (h1@@0 T@U) (f@@4 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@0 h1@@0) (and ($IsGoodHeap h0@@0) ($IsGoodHeap h1@@0))) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc0 t0@@8))) (forall ((o@@3 T@U) (fld@@0 T@U) ) (!  (=> (and (or (not (= o@@3 null)) (not true)) (|Set#IsMember| (Reads0 t0@@8 h1@@0 f@@4) ($Box refType o@@3))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@0 o@@3) fld@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@0 o@@3) fld@@0)))
 :qid |unknown.0:0|
 :skolemid |423|
))) (= (Requires0 t0@@8 h0@@0 f@@4) (Requires0 t0@@8 h1@@0 f@@4)))
 :qid |unknown.0:0|
 :skolemid |424|
 :pattern ( ($HeapSucc h0@@0 h1@@0) (Requires0 t0@@8 h1@@0 f@@4))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 TInt) (and (= ($Box intType ($Unbox intType bx@@8)) bx@@8) ($Is intType ($Unbox intType bx@@8) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@8 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@9 T@U) (h@@6 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@9) h@@6) (forall ((bx@@9 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@9) ($IsAllocBox bx@@9 t0@@9 h@@6))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@9))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@9) h@@6))
)))
(assert (forall (($o@@9 T@U) ) (! ($Is refType $o@@9 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@9 Tclass._System.object?))
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
(assert (forall ((|#$R@@0| T@U) ) (! (= (Tclass._System.___hFunc0_0 (Tclass._System.___hFunc0 |#$R@@0|)) |#$R@@0|)
 :qid |unknown.0:0|
 :skolemid |412|
 :pattern ( (Tclass._System.___hFunc0 |#$R@@0|))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((t0@@10 T@U) (h0@@1 T@U) (h1@@1 T@U) (f@@5 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@1 h1@@1) (and ($IsGoodHeap h0@@1) ($IsGoodHeap h1@@1))) ($Is HandleTypeType f@@5 (Tclass._System.___hFunc0 t0@@10))) (forall ((o@@4 T@U) (fld@@1 T@U) ) (!  (=> (and (or (not (= o@@4 null)) (not true)) (|Set#IsMember| (Reads0 t0@@10 h0@@1 f@@5) ($Box refType o@@4))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@1 o@@4) fld@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@1 o@@4) fld@@1)))
 :qid |unknown.0:0|
 :skolemid |417|
))) (= (Reads0 t0@@10 h0@@1 f@@5) (Reads0 t0@@10 h1@@1 f@@5)))
 :qid |unknown.0:0|
 :skolemid |418|
 :pattern ( ($HeapSucc h0@@1 h1@@1) (Reads0 t0@@10 h1@@1 f@@5))
)))
(assert (forall ((t0@@11 T@U) (h0@@2 T@U) (h1@@2 T@U) (f@@6 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@2 h1@@2) (and ($IsGoodHeap h0@@2) ($IsGoodHeap h1@@2))) ($Is HandleTypeType f@@6 (Tclass._System.___hFunc0 t0@@11))) (forall ((o@@5 T@U) (fld@@2 T@U) ) (!  (=> (and (or (not (= o@@5 null)) (not true)) (|Set#IsMember| (Reads0 t0@@11 h1@@2 f@@6) ($Box refType o@@5))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@2 o@@5) fld@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@2 o@@5) fld@@2)))
 :qid |unknown.0:0|
 :skolemid |419|
))) (= (Reads0 t0@@11 h0@@2 f@@6) (Reads0 t0@@11 h1@@2 f@@6)))
 :qid |unknown.0:0|
 :skolemid |420|
 :pattern ( ($HeapSucc h0@@2 h1@@2) (Reads0 t0@@11 h1@@2 f@@6))
)))
(assert (forall ((t0@@12 T@U) (h0@@3 T@U) (h1@@3 T@U) (f@@7 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@3 h1@@3) (and ($IsGoodHeap h0@@3) ($IsGoodHeap h1@@3))) ($Is HandleTypeType f@@7 (Tclass._System.___hFunc0 t0@@12))) (forall ((o@@6 T@U) (fld@@3 T@U) ) (!  (=> (and (or (not (= o@@6 null)) (not true)) (|Set#IsMember| (Reads0 t0@@12 h0@@3 f@@7) ($Box refType o@@6))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@3 o@@6) fld@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@3 o@@6) fld@@3)))
 :qid |unknown.0:0|
 :skolemid |425|
))) (= (Apply0 t0@@12 h0@@3 f@@7) (Apply0 t0@@12 h1@@3 f@@7)))
 :qid |unknown.0:0|
 :skolemid |426|
 :pattern ( ($HeapSucc h0@@3 h1@@3) (Apply0 t0@@12 h1@@3 f@@7))
)))
(assert (forall ((t0@@13 T@U) (h0@@4 T@U) (h1@@4 T@U) (f@@8 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@4 h1@@4) (and ($IsGoodHeap h0@@4) ($IsGoodHeap h1@@4))) ($Is HandleTypeType f@@8 (Tclass._System.___hFunc0 t0@@13))) (forall ((o@@7 T@U) (fld@@4 T@U) ) (!  (=> (and (or (not (= o@@7 null)) (not true)) (|Set#IsMember| (Reads0 t0@@13 h1@@4 f@@8) ($Box refType o@@7))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@4 o@@7) fld@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@4 o@@7) fld@@4)))
 :qid |unknown.0:0|
 :skolemid |427|
))) (= (Apply0 t0@@13 h0@@4 f@@8) (Apply0 t0@@13 h1@@4 f@@8)))
 :qid |unknown.0:0|
 :skolemid |428|
 :pattern ( ($HeapSucc h0@@4 h1@@4) (Apply0 t0@@13 h1@@4 f@@8))
)))
(assert (forall ((f@@9 T@U) (ly@@0 T@U) (A@@0 T@T) ) (! (= (AtLayer A@@0 f@@9 ($LS ly@@0)) (AtLayer A@@0 f@@9 ly@@0))
 :qid |DafnyPreludebpl.502:18|
 :skolemid |102|
 :pattern ( (AtLayer A@@0 f@@9 ($LS ly@@0)))
)))
(assert (forall ((f@@10 T@U) (t0@@14 T@U) ) (! (= ($Is HandleTypeType f@@10 (Tclass._System.___hFunc0 t0@@14)) (forall ((h@@7 T@U) ) (!  (=> (and ($IsGoodHeap h@@7) (Requires0 t0@@14 h@@7 f@@10)) ($IsBox (Apply0 t0@@14 h@@7 f@@10) t0@@14))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |431|
 :pattern ( (Apply0 t0@@14 h@@7 f@@10))
)))
 :qid |unknown.0:0|
 :skolemid |432|
 :pattern ( ($Is HandleTypeType f@@10 (Tclass._System.___hFunc0 t0@@14)))
)))
(assert (forall ((bx@@10 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@10 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@10)) bx@@10) ($Is SetType ($Unbox SetType bx@@10) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@10 (TSet t@@5)))
)))
(assert (forall ((|#$R@@1| T@U) (bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 (Tclass._System.___hFunc0 |#$R@@1|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@11)) bx@@11) ($Is HandleTypeType ($Unbox HandleTypeType bx@@11) (Tclass._System.___hFunc0 |#$R@@1|))))
 :qid |unknown.0:0|
 :skolemid |413|
 :pattern ( ($IsBox bx@@11 (Tclass._System.___hFunc0 |#$R@@1|)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@1 T@U) ($Heap@@0 T@U) (this@@1 T@U) (|n#0@@1| Int) (|g#0@@1| T@U) ) (!  (=> (or (|_module.C.FWithoutTailRecursion#canCall| $Heap@@0 this@@1 |n#0@@1| |g#0@@1|) (and (< 0 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.C) ($IsAlloc refType this@@1 Tclass._module.C $Heap@@0)))) (<= (LitInt 0) |n#0@@1|)) ($Is HandleTypeType |g#0@@1| (Tclass._System.___hFunc0 TInt))) (Requires0 TInt $Heap@@0 |g#0@@1|)))) (and (=> (not (or (= |n#0@@1| (LitInt 0)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.C.next)) null))) (let ((|h#0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#5| (Handle0 (|lambda#34| this@@1 _module.C.data) (|lambda#2| true) (|lambda#4| (SetRef_to_SetBox (|lambda#36| this@@1))))) $ly@@1))))
(|_module.C.FWithoutTailRecursion#canCall| $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.C.next)) (- |n#0@@1| 1) (ite (< |n#0@@1| 20) |g#0@@1| |h#0|)))) (= (_module.C.FWithoutTailRecursion ($LS $ly@@1) $Heap@@0 this@@1 |n#0@@1| |g#0@@1|) (ite  (or (= |n#0@@1| (LitInt 0)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.C.next)) null)) (U_2_int ($Unbox intType (Apply0 TInt $Heap@@0 |g#0@@1|))) (let ((|h#0@@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#5| (Handle0 (|lambda#34| this@@1 _module.C.data) (|lambda#2| true) (|lambda#4| (SetRef_to_SetBox (|lambda#36| this@@1))))) $ly@@1))))
(let ((|r#0| (_module.C.FWithoutTailRecursion $ly@@1 $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.C.next)) (- |n#0@@1| 1) (ite (< |n#0@@1| 20) |g#0@@1| |h#0@@0|))))
|r#0|))))))
 :qid |gitissue4684dfy.16:12|
 :skolemid |550|
 :pattern ( (_module.C.FWithoutTailRecursion ($LS $ly@@1) $Heap@@0 this@@1 |n#0@@1| |g#0@@1|) ($IsGoodHeap $Heap@@0))
))))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass._module.C) Tagclass._module.C))
(assert (= (TagFamily Tclass._module.C) tytagFamily$C))
(assert (= (Tag Tclass._module.C?) Tagclass._module.C?))
(assert (= (TagFamily Tclass._module.C?) tytagFamily$C))
(assert (forall ((s@@0 T@U) ) (! ($Is SetType (SetRef_to_SetBox s@@0) (TSet Tclass._System.object?))
 :qid |DafnyPreludebpl.372:15|
 :skolemid |83|
 :pattern ( (SetRef_to_SetBox s@@0))
)))
(assert (forall ((f@@11 T@U) (t0@@15 T@U) (h@@8 T@U) ) (!  (=> (and ($IsGoodHeap h@@8) ($IsAlloc HandleTypeType f@@11 (Tclass._System.___hFunc0 t0@@15) h@@8)) (=> (Requires0 t0@@15 h@@8 f@@11) ($IsAllocBox (Apply0 t0@@15 h@@8 f@@11) t0@@15 h@@8)))
 :qid |unknown.0:0|
 :skolemid |437|
 :pattern ( ($IsAlloc HandleTypeType f@@11 (Tclass._System.___hFunc0 t0@@15) h@@8))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (! (= (|Set#Equal| a@@2 b@@2) (forall ((o@@8 T@U) ) (! (= (|Set#IsMember| a@@2 o@@8) (|Set#IsMember| b@@2 o@@8))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@2 o@@8))
 :pattern ( (|Set#IsMember| b@@2 o@@8))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@2 b@@2))
)))
(assert (forall ((f@@12 T@U) (t0@@16 T@U) (u0@@2 T@U) ) (!  (=> (and ($Is HandleTypeType f@@12 (Tclass._System.___hFunc0 t0@@16)) (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 t0@@16) ($IsBox bx@@12 u0@@2))
 :qid |unknown.0:0|
 :skolemid |433|
 :pattern ( ($IsBox bx@@12 t0@@16))
 :pattern ( ($IsBox bx@@12 u0@@2))
))) ($Is HandleTypeType f@@12 (Tclass._System.___hFunc0 u0@@2)))
 :qid |unknown.0:0|
 :skolemid |434|
 :pattern ( ($Is HandleTypeType f@@12 (Tclass._System.___hFunc0 t0@@16)) ($Is HandleTypeType f@@12 (Tclass._System.___hFunc0 u0@@2)))
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
(assert (forall ((t0@@17 T@U) (heap@@3 T@U) (h@@9 T@U) (r@@2 T@U) (rd@@1 T@U) ) (!  (=> (U_2_bool (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) boolType r@@2 heap@@3)) (Requires0 t0@@17 heap@@3 (Handle0 h@@9 r@@2 rd@@1)))
 :qid |unknown.0:0|
 :skolemid |415|
 :pattern ( (Requires0 t0@@17 heap@@3 (Handle0 h@@9 r@@2 rd@@1)))
)))
(assert (forall ((h@@10 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@10)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@10))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |$_Frame#l0@0| () T@U)
(declare-fun |$lambdaHeap#0@0| () T@U)
(declare-fun this@@2 () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun |##g#0@0| () T@U)
(declare-fun |n#0@@2| () Int)
(declare-fun |g#0@@2| () T@U)
(declare-fun |h#Z#0@0| () T@U)
(declare-fun |b$reqreads#4@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun |##n#0@0| () Int)
(declare-fun |let#1#0#0| () Int)
(declare-fun $LZ () T@U)
(declare-fun |r#Z#0@0| () Int)
(declare-fun |b$reqreads#1@1| () Bool)
(declare-fun |b$reqreads#3@0| () Bool)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |b$reqreads#2@0| () Bool)
(declare-fun |b$reqreads#1@0| () Bool)
(declare-fun |b$reqreads#0@0| () Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.C.FWithoutTailRecursion)
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
 (=> (= (ControlFlow 0 0) 28) (let ((anon20_Else_correct true))
(let ((anon20_Then_correct  (=> (and (= |$_Frame#l0@0| (|lambda#50| null |$lambdaHeap#0@0| alloc this@@2)) (= (ControlFlow 0 20) (- 0 19))) (U_2_bool (MapType1Select refType FieldType boolType |$_Frame#l0@0| this@@2 _module.C.data)))))
(let ((anon19_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0@0|) (or (= $Heap@@1 |$lambdaHeap#0@0|) ($HeapSucc $Heap@@1 |$lambdaHeap#0@0|))) (and (=> (= (ControlFlow 0 22) 20) anon20_Then_correct) (=> (= (ControlFlow 0 22) 21) anon20_Else_correct)))))
(let ((anon14_correct  (=> (and (= |##g#0@0| (ite (< |n#0@@2| 20) |g#0@@2| |h#Z#0@0|)) ($IsAlloc HandleTypeType |##g#0@0| (Tclass._System.___hFunc0 TInt) $Heap@@1)) (and (=> (= (ControlFlow 0 7) (- 0 13)) (Requires0 TInt $Heap@@1 |##g#0@0|)) (=> (and (Requires0 TInt $Heap@@1 |##g#0@0|) (= |b$reqreads#4@0| (forall (($o@@10 T@U) ($f@@2 T@U) ) (!  (=> (and (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@10) alloc)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@10) alloc)))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@10 $f@@2)))
 :qid |gitissue4684dfy.24:21|
 :skolemid |553|
)))) (and (=> (= (ControlFlow 0 7) (- 0 12)) (or (or (<= 0 |n#0@@2|) (and (|Set#Subset| (Lit SetType |Set#Empty|) (Lit SetType |Set#Empty|)) (not (|Set#Subset| (Lit SetType |Set#Empty|) (Lit SetType |Set#Empty|))))) (= |##n#0@0| |n#0@@2|))) (=> (or (or (<= 0 |n#0@@2|) (and (|Set#Subset| (Lit SetType |Set#Empty|) (Lit SetType |Set#Empty|)) (not (|Set#Subset| (Lit SetType |Set#Empty|) (Lit SetType |Set#Empty|))))) (= |##n#0@0| |n#0@@2|)) (and (=> (= (ControlFlow 0 7) (- 0 11)) (or (and (|Set#Subset| (Lit SetType |Set#Empty|) (Lit SetType |Set#Empty|)) (not (|Set#Subset| (Lit SetType |Set#Empty|) (Lit SetType |Set#Empty|)))) (and (|Set#Equal| (Lit SetType |Set#Empty|) (Lit SetType |Set#Empty|)) (< |##n#0@0| |n#0@@2|)))) (=> (or (and (|Set#Subset| (Lit SetType |Set#Empty|) (Lit SetType |Set#Empty|)) (not (|Set#Subset| (Lit SetType |Set#Empty|) (Lit SetType |Set#Empty|)))) (and (|Set#Equal| (Lit SetType |Set#Empty|) (Lit SetType |Set#Empty|)) (< |##n#0@0| |n#0@@2|))) (=> (|_module.C.FWithoutTailRecursion#canCall| $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.C.next)) (- |n#0@@2| 1) (ite (< |n#0@@2| 20) |g#0@@2| |h#Z#0@0|)) (=> (and (= |let#1#0#0| (_module.C.FWithoutTailRecursion ($LS $LZ) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.C.next)) (- |n#0@@2| 1) (ite (< |n#0@@2| 20) |g#0@@2| |h#Z#0@0|))) (|_module.C.FWithoutTailRecursion#canCall| $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.C.next)) (- |n#0@@2| 1) (ite (< |n#0@@2| 20) |g#0@@2| |h#Z#0@0|))) (=> (and (and ($Is intType (int_2_U |let#1#0#0|) TInt) (= |r#Z#0@0| |let#1#0#0|)) (and (= (_module.C.FWithoutTailRecursion ($LS $LZ) $Heap@@1 this@@2 |n#0@@2| |g#0@@2|) |r#Z#0@0|) ($Is intType (int_2_U (_module.C.FWithoutTailRecursion ($LS $LZ) $Heap@@1 this@@2 |n#0@@2| |g#0@@2|)) TInt))) (and (=> (= (ControlFlow 0 7) (- 0 10)) |b$reqreads#1@1|) (=> |b$reqreads#1@1| (and (=> (= (ControlFlow 0 7) (- 0 9)) true) (and (=> (= (ControlFlow 0 7) (- 0 8)) |b$reqreads#3@0|) (=> |b$reqreads#3@0| (=> (= (ControlFlow 0 7) (- 0 6)) |b$reqreads#4@0|))))))))))))))))))
(let ((anon21_Else_correct  (=> (and (<= 20 |n#0@@2|) (= (ControlFlow 0 15) 7)) anon14_correct)))
(let ((anon21_Then_correct  (=> (and (< |n#0@@2| 20) (= (ControlFlow 0 14) 7)) anon14_correct)))
(let ((anon19_Else_correct  (=> (and (and (= |let#0#0#0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#5| (Handle0 (|lambda#34| this@@2 _module.C.data) (|lambda#2| true) (|lambda#4| (SetRef_to_SetBox (|lambda#36| this@@2))))) ($LS $LZ)))) ($Is HandleTypeType |let#0#0#0| (Tclass._System.___hFunc0 Tclass._System.nat))) (and (= |h#Z#0@0| |let#0#0#0|) (= |b$reqreads#3@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@2 _module.C.next))))) (and (=> (= (ControlFlow 0 16) (- 0 18)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.C.next)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.C.next)) null)) (not true)) (=> ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.C.next) Tclass._module.C? $Heap@@1) (and (=> (= (ControlFlow 0 16) (- 0 17)) ($Is intType (int_2_U (- |n#0@@2| 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (- |n#0@@2| 1)) Tclass._System.nat) (=> (and (= |##n#0@0| (- |n#0@@2| 1)) ($IsAlloc intType (int_2_U |##n#0@0|) Tclass._System.nat $Heap@@1)) (and (=> (= (ControlFlow 0 16) 14) anon21_Then_correct) (=> (= (ControlFlow 0 16) 15) anon21_Else_correct)))))))))))
(let ((anon18_Else_correct  (=> (not (or (= |n#0@@2| (LitInt 0)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.C.next)) null))) (and (=> (= (ControlFlow 0 23) 22) anon19_Then_correct) (=> (= (ControlFlow 0 23) 16) anon19_Else_correct)))))
(let ((anon18_Then_correct  (=> (or (= |n#0@@2| (LitInt 0)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.C.next)) null)) (and (=> (= (ControlFlow 0 3) (- 0 5)) (Requires0 TInt $Heap@@1 |g#0@@2|)) (=> (Requires0 TInt $Heap@@1 |g#0@@2|) (=> (= |b$reqreads#2@0| (forall (($o@@11 T@U) ($f@@3 T@U) ) (!  (=> (and (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@11) alloc)))) (|Set#IsMember| (Reads0 TInt $Heap@@1 |g#0@@2|) ($Box refType $o@@11))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@11 $f@@3)))
 :qid |gitissue4684dfy.21:7|
 :skolemid |552|
))) (=> (and (= (_module.C.FWithoutTailRecursion ($LS $LZ) $Heap@@1 this@@2 |n#0@@2| |g#0@@2|) (U_2_int ($Unbox intType (Apply0 TInt $Heap@@1 |g#0@@2|)))) ($Is intType (int_2_U (_module.C.FWithoutTailRecursion ($LS $LZ) $Heap@@1 this@@2 |n#0@@2| |g#0@@2|)) TInt)) (and (=> (= (ControlFlow 0 3) (- 0 4)) |b$reqreads#1@1|) (=> |b$reqreads#1@1| (=> (= (ControlFlow 0 3) (- 0 2)) |b$reqreads#2@0|))))))))))
(let ((anon17_Else_correct  (=> (and (= |n#0@@2| (LitInt 0)) (= |b$reqreads#1@1| true)) (and (=> (= (ControlFlow 0 25) 3) anon18_Then_correct) (=> (= (ControlFlow 0 25) 23) anon18_Else_correct)))))
(let ((anon17_Then_correct  (=> (or (not (= |n#0@@2| (LitInt 0))) (not true)) (=> (and (= |b$reqreads#1@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@2 _module.C.next))) (= |b$reqreads#1@1| |b$reqreads#1@0|)) (and (=> (= (ControlFlow 0 24) 3) anon18_Then_correct) (=> (= (ControlFlow 0 24) 23) anon18_Else_correct))))))
(let ((anon16_Then_correct true))
(let ((anon0_correct  (=> (and (and (= $_ReadsFrame@0 (|lambda#44| null $Heap@@1 alloc $Heap@@1 alloc)) ($IsAllocBox ($Box HandleTypeType |g#0@@2|) (Tclass._System.___hFunc0 TInt) $Heap@@1)) (and (= |b$reqreads#0@0| (forall (($o@@12 T@U) ($f@@4 T@U) ) (!  (=> (and (and (or (not (= $o@@12 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@12) alloc)))) (|Set#IsMember| (Reads0 TInt $Heap@@1 |g#0@@2|) ($Box refType $o@@12))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@12 $f@@4)))
 :qid |gitissue4684dfy.17:16|
 :skolemid |551|
))) (Requires0 TInt $Heap@@1 |g#0@@2|))) (and (=> (= (ControlFlow 0 26) (- 0 27)) |b$reqreads#0@0|) (=> |b$reqreads#0@0| (and (and (=> (= (ControlFlow 0 26) 1) anon16_Then_correct) (=> (= (ControlFlow 0 26) 24) anon17_Then_correct)) (=> (= (ControlFlow 0 26) 25) anon17_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass._module.C) ($IsAlloc refType this@@2 Tclass._module.C $Heap@@1)))) (and (and (<= (LitInt 0) |n#0@@2|) ($Is HandleTypeType |g#0@@2| (Tclass._System.___hFunc0 TInt))) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 28) 26)))) anon0_correct)))
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
