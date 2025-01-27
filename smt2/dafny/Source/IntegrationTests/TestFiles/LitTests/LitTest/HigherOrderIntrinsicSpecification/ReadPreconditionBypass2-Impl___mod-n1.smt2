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
(declare-fun TagSet () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun |##_System._tuple#0._#Make0| () T@U)
(declare-fun Tagclass._System.Tuple0 () T@U)
(declare-fun Tagclass._module.Ref () T@U)
(declare-fun class._module.Ref? () T@U)
(declare-fun Tagclass._module.Ref? () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
(declare-fun |tytagFamily$_tuple#0| () T@U)
(declare-fun tytagFamily$Ref () T@U)
(declare-fun field$inner () T@U)
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
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_System._tuple#0._#Make0| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Ref? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun Tclass._module.Ref () T@U)
(declare-fun Tclass._System.Tuple0 () T@U)
(declare-fun |_module.__default.myf#Handle| () T@U)
(declare-fun |_module.__default.myf#requires| (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Reads1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun TSet (T@U) T@U)
(declare-fun |Reads1#Handle| (T@U T@U T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun _module.Ref.inner () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.myf (T@U T@U) T@U)
(declare-fun |_module.__default.myf#canCall| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#1| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
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
(assert (distinct TagSet alloc allocName Tagclass._System.object? Tagclass._System.object Tagclass._System.___hFunc1 |##_System._tuple#0._#Make0| Tagclass._System.Tuple0 Tagclass._module.Ref class._module.Ref? Tagclass._module.Ref? tytagFamily$object |tytagFamily$_#Func1| |tytagFamily$_tuple#0| tytagFamily$Ref field$inner)
)
(assert (= (FDim alloc) 0))
(assert (= (DeclName alloc) allocName))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |129|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |130|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@1 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |128|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (= (DatatypeCtorId |#_System._tuple#0._#Make0|) |##_System._tuple#0._#Make0|))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.Ref?)  (or (= $o null) (= (dtype $o) Tclass._module.Ref?)))
 :qid |unknown.0:0|
 :skolemid |500|
 :pattern ( ($Is refType $o Tclass._module.Ref?))
)))
(assert (forall (($heap T@U) (|$fh$0x#0| T@U) ) (! (= (Requires1 Tclass._module.Ref Tclass._System.Tuple0 $heap |_module.__default.myf#Handle| |$fh$0x#0|) (|_module.__default.myf#requires| $heap ($Unbox refType |$fh$0x#0|)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |490|
 :pattern ( (Requires1 Tclass._module.Ref Tclass._System.Tuple0 $heap |_module.__default.myf#Handle| |$fh$0x#0|))
)))
(assert (= (Ctor HandleTypeType) 4))
(assert (forall ((f T@U) (t0 T@U) (t1 T@U) (u0 T@U) (u1 T@U) ) (!  (=> (and (and ($Is HandleTypeType f (Tclass._System.___hFunc1 t0 t1)) (forall ((bx T@U) ) (!  (=> ($IsBox bx u0) ($IsBox bx t0))
 :qid |unknown.0:0|
 :skolemid |389|
 :pattern ( ($IsBox bx u0))
 :pattern ( ($IsBox bx t0))
))) (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 t1) ($IsBox bx@@0 u1))
 :qid |unknown.0:0|
 :skolemid |390|
 :pattern ( ($IsBox bx@@0 t1))
 :pattern ( ($IsBox bx@@0 u1))
))) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0 u1)))
 :qid |unknown.0:0|
 :skolemid |391|
 :pattern ( ($Is HandleTypeType f (Tclass._System.___hFunc1 t0 t1)) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0 u1)))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h) ($IsAlloc refType |c#0| Tclass._System.object? $h))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Ref $h@@0) ($IsAlloc refType |c#0@@0| Tclass._module.Ref? $h@@0))
 :qid |unknown.0:0|
 :skolemid |507|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Ref $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Ref? $h@@0))
)))
(assert (forall (($bx T@U) (|#$T0| T@U) (|#$R| T@U) ($self T@U) ($heap@@0 T@U) (|$fh$0x#0@@0| T@U) ) (!  (=> (Requires1 |#$T0| |#$R| $heap@@0 $self |$fh$0x#0@@0|) (= (|Set#IsMember| (Reads1 |#$T0| (TSet Tclass._System.object?) $heap@@0 (|Reads1#Handle| |#$T0| |#$R| $self) |$fh$0x#0@@0|) $bx) (|Set#IsMember| (Reads1 |#$T0| |#$R| $heap@@0 $self |$fh$0x#0@@0|) $bx)))
 :qid |unknown.0:0|
 :skolemid |495|
 :pattern ( (|Set#IsMember| (Reads1 |#$T0| (TSet Tclass._System.object?) $heap@@0 (|Reads1#Handle| |#$T0| |#$R| $self) |$fh$0x#0@@0|) $bx))
)))
(assert (= (Ctor DatatypeTypeType) 5))
(assert ($Is DatatypeTypeType |#_System._tuple#0._#Make0| Tclass._System.Tuple0))
(assert (= (FDim _module.Ref.inner) 0))
(assert (= (FieldOfDecl class._module.Ref? field$inner) _module.Ref.inner))
(assert  (not ($IsGhostField _module.Ref.inner)))
(assert  (and (and (and (and (and (and (forall ((t0@@0 T@T) (t1@@0 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0@@0 t1@@0 (MapType0Store t0@@0 t1@@0 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0@@0 u1@@0 (MapType0Store u0@@0 u1@@0 m@@0 x0@@0 val@@0) y0) (MapType0Select u0@@0 u1@@0 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 6)) (= (Ctor BoxType) 7)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 8)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall (($o@@0 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._System.object? $h@@1)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._System.object? $h@@1))
)))
(assert (forall (($o@@1 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._module.Ref? $h@@2)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |501|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._module.Ref? $h@@2))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@1 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@1) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= (Lit T x@@5) x@@5)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@5))
)))
(assert (forall ((t0@@1 T@U) (t1@@1 T@U) (heap T@U) (f@@0 T@U) (bx0 T@U) ) (!  (=> (and ($IsGoodHeap heap) (and ($IsBox bx0 t0@@1) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@1 t1@@1)))) (= (|Set#Equal| (Reads1 t0@@1 t1@@1 $OneHeap f@@0 bx0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@1 t1@@1 heap f@@0 bx0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |385|
 :pattern ( (Reads1 t0@@1 t1@@1 $OneHeap f@@0 bx0) ($IsGoodHeap heap))
 :pattern ( (Reads1 t0@@1 t1@@1 heap f@@0 bx0))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (|o#0| T@U) ) (!  (=> (or (|_module.__default.myf#canCall| $Heap |o#0|) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) (and ($Is refType |o#0| Tclass._module.Ref) ($IsAlloc refType |o#0| Tclass._module.Ref $Heap))) (U_2_bool (Lit boolType (bool_2_U false)))))) ($Is DatatypeTypeType (_module.__default.myf $Heap |o#0|) Tclass._System.Tuple0))
 :qid |ReadPreconditionBypass2dfy.9:10|
 :skolemid |482|
 :pattern ( (_module.__default.myf $Heap |o#0|))
))))
(assert (forall ((x@@6 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@6)) x@@6)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@6))
)))
(assert (forall (($heap@@1 T@U) (|$fh$0x#0@@1| T@U) ) (! (= (Apply1 Tclass._module.Ref Tclass._System.Tuple0 $heap@@1 |_module.__default.myf#Handle| |$fh$0x#0@@1|) ($Box DatatypeTypeType (_module.__default.myf $heap@@1 ($Unbox refType |$fh$0x#0@@1|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |489|
 :pattern ( (Apply1 Tclass._module.Ref Tclass._System.Tuple0 $heap@@1 |_module.__default.myf#Handle| |$fh$0x#0@@1|))
)))
(assert (forall ((t0@@2 T@U) (t1@@2 T@U) (h0 T@U) (h1 T@U) (f@@1 T@U) (bx0@@0 T@U) ) (!  (=> (and (and (and ($HeapSucc h0 h1) (and ($IsGoodHeap h0) ($IsGoodHeap h1))) (and ($IsBox bx0@@0 t0@@2) ($Is HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@2 t1@@2)))) (forall ((o@@2 T@U) (fld T@U) ) (!  (=> (and (or (not (= o@@2 null)) (not true)) (|Set#IsMember| (Reads1 t0@@2 t1@@2 h0 f@@1 bx0@@0) ($Box refType o@@2))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0 o@@2) fld) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1 o@@2) fld)))
 :qid |unknown.0:0|
 :skolemid |377|
))) (= (Requires1 t0@@2 t1@@2 h0 f@@1 bx0@@0) (Requires1 t0@@2 t1@@2 h1 f@@1 bx0@@0)))
 :qid |unknown.0:0|
 :skolemid |378|
 :pattern ( ($HeapSucc h0 h1) (Requires1 t0@@2 t1@@2 h1 f@@1 bx0@@0))
)))
(assert (forall ((t0@@3 T@U) (t1@@3 T@U) (h0@@0 T@U) (h1@@0 T@U) (f@@2 T@U) (bx0@@1 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@0 h1@@0) (and ($IsGoodHeap h0@@0) ($IsGoodHeap h1@@0))) (and ($IsBox bx0@@1 t0@@3) ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@3 t1@@3)))) (forall ((o@@3 T@U) (fld@@0 T@U) ) (!  (=> (and (or (not (= o@@3 null)) (not true)) (|Set#IsMember| (Reads1 t0@@3 t1@@3 h1@@0 f@@2 bx0@@1) ($Box refType o@@3))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@0 o@@3) fld@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@0 o@@3) fld@@0)))
 :qid |unknown.0:0|
 :skolemid |379|
))) (= (Requires1 t0@@3 t1@@3 h0@@0 f@@2 bx0@@1) (Requires1 t0@@3 t1@@3 h1@@0 f@@2 bx0@@1)))
 :qid |unknown.0:0|
 :skolemid |380|
 :pattern ( ($HeapSucc h0@@0 h1@@0) (Requires1 t0@@3 t1@@3 h1@@0 f@@2 bx0@@1))
)))
(assert (forall (($bx@@0 T@U) ($heap@@2 T@U) (|$fh$0x#0@@2| T@U) ) (! (= (|Set#IsMember| (Reads1 Tclass._module.Ref Tclass._System.Tuple0 $heap@@2 |_module.__default.myf#Handle| |$fh$0x#0@@2|) $bx@@0) (= ($Unbox refType $bx@@0) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $heap@@2 ($Unbox refType |$fh$0x#0@@2|)) _module.Ref.inner))))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( (|Set#IsMember| (Reads1 Tclass._module.Ref Tclass._System.Tuple0 $heap@@2 |_module.__default.myf#Handle| |$fh$0x#0@@2|) $bx@@0))
)))
(assert (= (Ctor SetType) 9))
(assert (forall ((v T@U) (t0@@4 T@U) ) (! (= ($Is SetType v (TSet t0@@4)) (forall ((bx@@1 T@U) ) (!  (=> (|Set#IsMember| v bx@@1) ($IsBox bx@@1 t0@@4))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@1))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@4)))
)))
(assert ($IsGhostField alloc))
(assert ($IsGoodHeap $OneHeap))
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
(assert (forall ((t0@@5 T@U) (t1@@4 T@U) (h0@@1 T@U) (h1@@1 T@U) (f@@3 T@U) (bx0@@2 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@1 h1@@1) (and ($IsGoodHeap h0@@1) ($IsGoodHeap h1@@1))) (and ($IsBox bx0@@2 t0@@5) ($Is HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@5 t1@@4)))) (forall ((o@@4 T@U) (fld@@1 T@U) ) (!  (=> (and (or (not (= o@@4 null)) (not true)) (|Set#IsMember| (Reads1 t0@@5 t1@@4 h0@@1 f@@3 bx0@@2) ($Box refType o@@4))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@1 o@@4) fld@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@1 o@@4) fld@@1)))
 :qid |unknown.0:0|
 :skolemid |373|
))) (= (Reads1 t0@@5 t1@@4 h0@@1 f@@3 bx0@@2) (Reads1 t0@@5 t1@@4 h1@@1 f@@3 bx0@@2)))
 :qid |unknown.0:0|
 :skolemid |374|
 :pattern ( ($HeapSucc h0@@1 h1@@1) (Reads1 t0@@5 t1@@4 h1@@1 f@@3 bx0@@2))
)))
(assert (forall ((t0@@6 T@U) (t1@@5 T@U) (h0@@2 T@U) (h1@@2 T@U) (f@@4 T@U) (bx0@@3 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@2 h1@@2) (and ($IsGoodHeap h0@@2) ($IsGoodHeap h1@@2))) (and ($IsBox bx0@@3 t0@@6) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc1 t0@@6 t1@@5)))) (forall ((o@@5 T@U) (fld@@2 T@U) ) (!  (=> (and (or (not (= o@@5 null)) (not true)) (|Set#IsMember| (Reads1 t0@@6 t1@@5 h1@@2 f@@4 bx0@@3) ($Box refType o@@5))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@2 o@@5) fld@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@2 o@@5) fld@@2)))
 :qid |unknown.0:0|
 :skolemid |375|
))) (= (Reads1 t0@@6 t1@@5 h0@@2 f@@4 bx0@@3) (Reads1 t0@@6 t1@@5 h1@@2 f@@4 bx0@@3)))
 :qid |unknown.0:0|
 :skolemid |376|
 :pattern ( ($HeapSucc h0@@2 h1@@2) (Reads1 t0@@6 t1@@5 h1@@2 f@@4 bx0@@3))
)))
(assert (forall ((t0@@7 T@U) (t1@@6 T@U) (h0@@3 T@U) (h1@@3 T@U) (f@@5 T@U) (bx0@@4 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@3 h1@@3) (and ($IsGoodHeap h0@@3) ($IsGoodHeap h1@@3))) (and ($IsBox bx0@@4 t0@@7) ($Is HandleTypeType f@@5 (Tclass._System.___hFunc1 t0@@7 t1@@6)))) (forall ((o@@6 T@U) (fld@@3 T@U) ) (!  (=> (and (or (not (= o@@6 null)) (not true)) (|Set#IsMember| (Reads1 t0@@7 t1@@6 h0@@3 f@@5 bx0@@4) ($Box refType o@@6))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@3 o@@6) fld@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@3 o@@6) fld@@3)))
 :qid |unknown.0:0|
 :skolemid |381|
))) (= (Apply1 t0@@7 t1@@6 h0@@3 f@@5 bx0@@4) (Apply1 t0@@7 t1@@6 h1@@3 f@@5 bx0@@4)))
 :qid |unknown.0:0|
 :skolemid |382|
 :pattern ( ($HeapSucc h0@@3 h1@@3) (Apply1 t0@@7 t1@@6 h1@@3 f@@5 bx0@@4))
)))
(assert (forall ((t0@@8 T@U) (t1@@7 T@U) (h0@@4 T@U) (h1@@4 T@U) (f@@6 T@U) (bx0@@5 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@4 h1@@4) (and ($IsGoodHeap h0@@4) ($IsGoodHeap h1@@4))) (and ($IsBox bx0@@5 t0@@8) ($Is HandleTypeType f@@6 (Tclass._System.___hFunc1 t0@@8 t1@@7)))) (forall ((o@@7 T@U) (fld@@4 T@U) ) (!  (=> (and (or (not (= o@@7 null)) (not true)) (|Set#IsMember| (Reads1 t0@@8 t1@@7 h1@@4 f@@6 bx0@@5) ($Box refType o@@7))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@4 o@@7) fld@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@4 o@@7) fld@@4)))
 :qid |unknown.0:0|
 :skolemid |383|
))) (= (Apply1 t0@@8 t1@@7 h0@@4 f@@6 bx0@@5) (Apply1 t0@@8 t1@@7 h1@@4 f@@6 bx0@@5)))
 :qid |unknown.0:0|
 :skolemid |384|
 :pattern ( ($HeapSucc h0@@4 h1@@4) (Apply1 t0@@8 t1@@7 h1@@4 f@@6 bx0@@5))
)))
(assert (forall (($Heap@@0 T@U) (|o#0@@0| T@U) ) (!  (=> (and ($IsGoodHeap $Heap@@0) ($Is refType |o#0@@0| Tclass._module.Ref)) (= (|_module.__default.myf#requires| $Heap@@0 |o#0@@0|) (U_2_bool (Lit boolType (bool_2_U false)))))
 :qid |ReadPreconditionBypass2dfy.9:10|
 :skolemid |483|
 :pattern ( (|_module.__default.myf#requires| $Heap@@0 |o#0@@0|) ($IsGoodHeap $Heap@@0))
)))
(assert (forall (($h@@3 T@U) ($o@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) Tclass._module.Ref?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) _module.Ref.inner)) Tclass._module.Ref))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |502|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) _module.Ref.inner)))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( ($IsBox bx@@3 Tclass._System.object?))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsBox bx@@4 Tclass._System.object))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._System.Tuple0) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@5)) bx@@5) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@5) Tclass._System.Tuple0)))
 :qid |unknown.0:0|
 :skolemid |473|
 :pattern ( ($IsBox bx@@5 Tclass._System.Tuple0))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.Ref) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.Ref)))
 :qid |unknown.0:0|
 :skolemid |480|
 :pattern ( ($IsBox bx@@6 Tclass._module.Ref))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.Ref?) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.Ref?)))
 :qid |unknown.0:0|
 :skolemid |499|
 :pattern ( ($IsBox bx@@7 Tclass._module.Ref?))
)))
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass._System.object)  (and ($Is refType |c#0@@1| Tclass._System.object?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@1| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@1| Tclass._System.object?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._module.Ref)  (and ($Is refType |c#0@@2| Tclass._module.Ref?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |506|
 :pattern ( ($Is refType |c#0@@2| Tclass._module.Ref))
 :pattern ( ($Is refType |c#0@@2| Tclass._module.Ref?))
)))
(assert (forall (($h@@4 T@U) ($o@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) Tclass._module.Ref?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) _module.Ref.inner)) Tclass._module.Ref $h@@4))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |503|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) _module.Ref.inner)))
)))
(assert (forall ((f@@7 T@U) (t0@@9 T@U) (t1@@8 T@U) (h@@3 T@U) ) (!  (=> (and ($IsGoodHeap h@@3) ($IsAlloc HandleTypeType f@@7 (Tclass._System.___hFunc1 t0@@9 t1@@8) h@@3)) (forall ((bx0@@6 T@U) ) (!  (=> (and ($IsAllocBox bx0@@6 t0@@9 h@@3) (Requires1 t0@@9 t1@@8 h@@3 f@@7 bx0@@6)) ($IsAllocBox (Apply1 t0@@9 t1@@8 h@@3 f@@7 bx0@@6) t1@@8 h@@3))
 :qid |unknown.0:0|
 :skolemid |395|
 :pattern ( (Apply1 t0@@9 t1@@8 h@@3 f@@7 bx0@@6))
)))
 :qid |unknown.0:0|
 :skolemid |396|
 :pattern ( ($IsAlloc HandleTypeType f@@7 (Tclass._System.___hFunc1 t0@@9 t1@@8) h@@3))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$R@@0| T@U) ($self@@0 T@U) ($heap@@3 T@U) (|$fh$0x#0@@3| T@U) ) (! (= (Reads1 |#$T0@@0| |#$R@@0| $heap@@3 $self@@0 |$fh$0x#0@@3|) ($Unbox SetType (Apply1 |#$T0@@0| (TSet Tclass._System.object?) $heap@@3 (|Reads1#Handle| |#$T0@@0| |#$R@@0| $self@@0) |$fh$0x#0@@3|)))
 :qid |unknown.0:0|
 :skolemid |496|
 :pattern ( (Reads1 |#$T0@@0| |#$R@@0| $heap@@3 $self@@0 |$fh$0x#0@@3|))
)))
(assert (forall ((a@@2 T@U) (b T@U) ) (!  (=> (|Set#Equal| a@@2 b) (= a@@2 b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@2 b))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$R@@1| T@U) ($self@@1 T@U) ($heap@@4 T@U) (|$fh$0x#0@@4| T@U) ) (! (= (Requires1 |#$T0@@1| (TSet Tclass._System.object?) $heap@@4 (|Reads1#Handle| |#$T0@@1| |#$R@@1| $self@@1) |$fh$0x#0@@4|) (Requires1 |#$T0@@1| |#$R@@1| $heap@@4 $self@@1 |$fh$0x#0@@4|))
 :qid |unknown.0:0|
 :skolemid |494|
 :pattern ( (Requires1 |#$T0@@1| (TSet Tclass._System.object?) $heap@@4 (|Reads1#Handle| |#$T0@@1| |#$R@@1| $self@@1) |$fh$0x#0@@4|))
)))
(assert (forall ((a@@3 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@3 c)) (not true)) (=> (and ($HeapSucc a@@3 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@3 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@3 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((f@@8 T@U) (t0@@10 T@U) (t1@@9 T@U) ) (! (= ($Is HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@10 t1@@9)) (forall ((h@@4 T@U) (bx0@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@4) ($IsBox bx0@@7 t0@@10)) (Requires1 t0@@10 t1@@9 h@@4 f@@8 bx0@@7)) ($IsBox (Apply1 t0@@10 t1@@9 h@@4 f@@8 bx0@@7) t1@@9))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |387|
 :pattern ( (Apply1 t0@@10 t1@@9 h@@4 f@@8 bx0@@7))
)))
 :qid |unknown.0:0|
 :skolemid |388|
 :pattern ( ($Is HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@10 t1@@9)))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@11 T@U) (h@@5 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@11) h@@5) (forall ((bx@@8 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@8) ($IsAllocBox bx@@8 t0@@11 h@@5))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@8))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@11) h@@5))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$R@@2| T@U) ) (! (= (Tclass._System.___hFunc1_0 (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) |#$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |367|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|))
)))
(assert (forall ((|#$T0@@3| T@U) (|#$R@@3| T@U) ) (! (= (Tclass._System.___hFunc1_1 (Tclass._System.___hFunc1 |#$T0@@3| |#$R@@3|)) |#$R@@3|)
 :qid |unknown.0:0|
 :skolemid |368|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@3| |#$R@@3|))
)))
(assert (forall (($o@@4 T@U) ) (! ($Is refType $o@@4 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@4 Tclass._System.object?))
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
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@7)) x@@7)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@7))
)))
(assert (forall ((f@@9 T@U) (t0@@12 T@U) (t1@@10 T@U) (h@@6 T@U) ) (!  (=> ($IsGoodHeap h@@6) (= ($IsAlloc HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@12 t1@@10) h@@6) (forall ((bx0@@8 T@U) ) (!  (=> (and (and ($IsBox bx0@@8 t0@@12) ($IsAllocBox bx0@@8 t0@@12 h@@6)) (Requires1 t0@@12 t1@@10 h@@6 f@@9 bx0@@8)) (forall ((r T@U) ) (!  (=> (and (or (not (= r null)) (not true)) (|Set#IsMember| (Reads1 t0@@12 t1@@10 h@@6 f@@9 bx0@@8) ($Box refType r))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@6 r) alloc))))
 :qid |unknown.0:0|
 :skolemid |392|
 :pattern ( (|Set#IsMember| (Reads1 t0@@12 t1@@10 h@@6 f@@9 bx0@@8) ($Box refType r)))
)))
 :qid |unknown.0:0|
 :skolemid |393|
 :pattern ( (Apply1 t0@@12 t1@@10 h@@6 f@@9 bx0@@8))
 :pattern ( (Reads1 t0@@12 t1@@10 h@@6 f@@9 bx0@@8))
))))
 :qid |unknown.0:0|
 :skolemid |394|
 :pattern ( ($IsAlloc HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@12 t1@@10) h@@6))
)))
(assert (forall ((|#$T0@@4| T@U) (|#$R@@4| T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass._System.___hFunc1 |#$T0@@4| |#$R@@4|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@9)) bx@@9) ($Is HandleTypeType ($Unbox HandleTypeType bx@@9) (Tclass._System.___hFunc1 |#$T0@@4| |#$R@@4|))))
 :qid |unknown.0:0|
 :skolemid |369|
 :pattern ( ($IsBox bx@@9 (Tclass._System.___hFunc1 |#$T0@@4| |#$R@@4|)))
)))
(assert  (and (forall ((t0@@13 T@T) (t1@@11 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@13 t1@@11 t2 (MapType1Store t0@@13 t1@@11 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@1 T@T) (u1@@1 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@1 u1@@1 u2 (MapType1Store u0@@1 u1@@1 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@1 u1@@1 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@2 T@T) (u1@@2 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@2 u1@@2 u2@@0 (MapType1Store u0@@2 u1@@2 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@2 u1@@2 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@5 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f))  (=> (and (or (not (= $o@@5 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@5) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |509|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f))
)))
(assert (forall ((|#$T0@@5| T@U) (|#$R@@5| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@5| |#$R@@5|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@5| |#$R@@5|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |366|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@5| |#$R@@5|))
)))
(assert (forall (($heap@@5 T@U) (|$fh$0x#0@@5| T@U) ) (! (= (_module.__default.myf $heap@@5 |$fh$0x#0@@5|) ($Unbox DatatypeTypeType (Apply1 Tclass._module.Ref Tclass._System.Tuple0 $heap@@5 |_module.__default.myf#Handle| ($Box refType |$fh$0x#0@@5|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |492|
 :pattern ( (_module.__default.myf $heap@@5 |$fh$0x#0@@5|))
)))
(assert (forall ((t0@@14 T@U) (t1@@12 T@U) (heap@@0 T@U) (f@@10 T@U) (bx0@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@0) (and ($IsBox bx0@@9 t0@@14) ($Is HandleTypeType f@@10 (Tclass._System.___hFunc1 t0@@14 t1@@12)))) (|Set#Equal| (Reads1 t0@@14 t1@@12 $OneHeap f@@10 bx0@@9) |Set#Empty|)) (= (Requires1 t0@@14 t1@@12 $OneHeap f@@10 bx0@@9) (Requires1 t0@@14 t1@@12 heap@@0 f@@10 bx0@@9)))
 :qid |unknown.0:0|
 :skolemid |386|
 :pattern ( (Requires1 t0@@14 t1@@12 $OneHeap f@@10 bx0@@9) ($IsGoodHeap heap@@0))
 :pattern ( (Requires1 t0@@14 t1@@12 heap@@0 f@@10 bx0@@9))
)))
(assert (forall ((|#$T0@@6| T@U) (|#$R@@6| T@U) ($self@@2 T@U) ($heap@@6 T@U) (|$fh$0x#0@@6| T@U) ) (! (= (Apply1 |#$T0@@6| (TSet Tclass._System.object?) $heap@@6 (|Reads1#Handle| |#$T0@@6| |#$R@@6| $self@@2) |$fh$0x#0@@6|) ($Box SetType (Reads1 |#$T0@@6| |#$R@@6| $heap@@6 $self@@2 |$fh$0x#0@@6|)))
 :qid |unknown.0:0|
 :skolemid |493|
 :pattern ( (Apply1 |#$T0@@6| (TSet Tclass._System.object?) $heap@@6 (|Reads1#Handle| |#$T0@@6| |#$R@@6| $self@@2) |$fh$0x#0@@6|))
)))
(assert (forall ((bx@@10 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@10 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@10)) bx@@10) ($Is SetType ($Unbox SetType bx@@10) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@10 (TSet t@@5)))
)))
(assert (forall ((h@@7 T@U) (r@@0 T@U) (f@@11 T@U) (x@@8 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@7 r@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@7 r@@0) f@@11 x@@8))) ($HeapSucc h@@7 (MapType0Store refType (MapType0Type FieldType BoxType) h@@7 r@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@7 r@@0) f@@11 x@@8))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@7 r@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@7 r@@0) f@@11 x@@8)))
)))
(assert (forall ((d T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) ($Is DatatypeTypeType d Tclass._System.Tuple0)) ($IsAlloc DatatypeTypeType d Tclass._System.Tuple0 $h@@5))
 :qid |unknown.0:0|
 :skolemid |474|
 :pattern ( ($IsAlloc DatatypeTypeType d Tclass._System.Tuple0 $h@@5))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass._System.Tuple0) Tagclass._System.Tuple0))
(assert (= (TagFamily Tclass._System.Tuple0) |tytagFamily$_tuple#0|))
(assert (= (Tag Tclass._module.Ref) Tagclass._module.Ref))
(assert (= (TagFamily Tclass._module.Ref) tytagFamily$Ref))
(assert (= (Tag Tclass._module.Ref?) Tagclass._module.Ref?))
(assert (= (TagFamily Tclass._module.Ref?) tytagFamily$Ref))
(assert (= |#_System._tuple#0._#Make0| (Lit DatatypeTypeType |#_System._tuple#0._#Make0|)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@4 b@@1) (forall ((o@@8 T@U) ) (! (= (|Set#IsMember| a@@4 o@@8) (|Set#IsMember| b@@1 o@@8))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@4 o@@8))
 :pattern ( (|Set#IsMember| b@@1 o@@8))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@4 b@@1))
)))
(assert (forall (($h0 T@U) ($h1 T@U) (|o#0@@1| T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (or (|_module.__default.myf#canCall| $h0 |o#0@@1|) ($Is refType |o#0@@1| Tclass._module.Ref))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@6 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (= $o@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 |o#0@@1|) _module.Ref.inner)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@6) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@6) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |479|
)) (= (_module.__default.myf $h0 |o#0@@1|) (_module.__default.myf $h1 |o#0@@1|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |481|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.__default.myf $h1 |o#0@@1|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@1 T@U) (|o#0@@2| T@U) ) (!  (=> (or (|_module.__default.myf#canCall| $Heap@@1 |o#0@@2|) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@1) ($Is refType |o#0@@2| Tclass._module.Ref)) (U_2_bool (Lit boolType (bool_2_U false)))))) (= (_module.__default.myf $Heap@@1 |o#0@@2|) (Lit DatatypeTypeType |#_System._tuple#0._#Make0|)))
 :qid |ReadPreconditionBypass2dfy.9:10|
 :skolemid |484|
 :pattern ( (_module.__default.myf $Heap@@1 |o#0@@2|) ($IsGoodHeap $Heap@@1))
))))
(assert (forall ((x@@9 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@9)) (Lit BoxType ($Box T@@5 x@@9)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@9)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@2 () T@U)
(declare-fun call1formal@this () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun call1formal@this@0 () T@U)
(declare-fun |hof#0@0| () T@U)
(declare-fun call1formal@this@@0 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun call1formal@this@0@@0 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |reads1#0@0| () T@U)
(declare-fun call1formal@this@@1 () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun call1formal@this@0@@1 () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun |reads2#0@0| () T@U)
(declare-fun |defass#outer#0| () Bool)
(declare-fun |outer#0| () T@U)
(declare-fun |hof#0| () T@U)
(declare-fun |defass#inner1#0| () Bool)
(declare-fun |inner1#0| () T@U)
(declare-fun |reads1#0| () T@U)
(declare-fun |defass#inner2#0| () Bool)
(declare-fun |inner2#0| () T@U)
(declare-fun |reads2#0| () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.Main)
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
 (=> (= (ControlFlow 0 0) 21) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#1| null $Heap@@2 alloc false)) (=> (and (and (or (not (= call1formal@this null)) (not true)) (and ($Is refType call1formal@this Tclass._module.Ref) ($IsAlloc refType call1formal@this Tclass._module.Ref $Heap@@2))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (=> (and (and (and (or (not (= call1formal@this@0 null)) (not true)) (and ($Is refType call1formal@this@0 Tclass._module.Ref) ($IsAlloc refType call1formal@this@0 Tclass._module.Ref $Heap@0))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 call1formal@this@0) alloc))))) (and (forall (($o@@7 T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@7) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@7) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@7)))
 :qid |ReadPreconditionBypass2dfy.6:3|
 :skolemid |505|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@7))
)) ($HeapSucc $Heap@@2 $Heap@0))) (and (=> (= (ControlFlow 0 2) (- 0 20)) true) (and (=> (= (ControlFlow 0 2) (- 0 19)) (or (not (= 1 $FunctionContextHeight)) (not true))) (=> (or (not (= 1 $FunctionContextHeight)) (not true)) (=> (= |hof#0@0| (|Reads1#Handle| Tclass._module.Ref Tclass._System.Tuple0 |_module.__default.myf#Handle|)) (=> (and (and (or (not (= call1formal@this@@0 null)) (not true)) (and ($Is refType call1formal@this@@0 Tclass._module.Ref) ($IsAlloc refType call1formal@this@@0 Tclass._module.Ref $Heap@@2))) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1))) (=> (and (and (and (or (not (= call1formal@this@0@@0 null)) (not true)) (and ($Is refType call1formal@this@0@@0 Tclass._module.Ref) ($IsAlloc refType call1formal@this@0@@0 Tclass._module.Ref $Heap@1))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call1formal@this@0@@0) alloc))))) (and (forall (($o@@8 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@8) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@8) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@8)))
 :qid |ReadPreconditionBypass2dfy.6:3|
 :skolemid |505|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@8))
)) ($HeapSucc $Heap@0 $Heap@1))) (and (=> (= (ControlFlow 0 2) (- 0 18)) true) (and (=> (= (ControlFlow 0 2) (- 0 17)) (or (not (= call1formal@this@0 null)) (not true))) (=> (or (not (= call1formal@this@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 16)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 call1formal@this@0 _module.Ref.inner))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 call1formal@this@0 _module.Ref.inner)) (and (=> (= (ControlFlow 0 2) (- 0 15)) true) (=> (and (= $Heap@2 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@1 call1formal@this@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call1formal@this@0) _module.Ref.inner ($Box refType call1formal@this@0@@0)))) ($IsGoodHeap $Heap@2)) (and (=> (= (ControlFlow 0 2) (- 0 14)) true) (and (=> (= (ControlFlow 0 2) (- 0 13)) (Requires1 Tclass._module.Ref (TSet Tclass._System.object?) $Heap@2 |hof#0@0| ($Box refType call1formal@this@0))) (=> (Requires1 Tclass._module.Ref (TSet Tclass._System.object?) $Heap@2 |hof#0@0| ($Box refType call1formal@this@0)) (=> (= |reads1#0@0| ($Unbox SetType (Apply1 Tclass._module.Ref (TSet Tclass._System.object?) $Heap@2 |hof#0@0| ($Box refType call1formal@this@0)))) (and (=> (= (ControlFlow 0 2) (- 0 12)) true) (and (=> (= (ControlFlow 0 2) (- 0 11)) (|Set#Equal| |reads1#0@0| (|Set#UnionOne| |Set#Empty| ($Box refType call1formal@this@0@@0)))) (=> (|Set#Equal| |reads1#0@0| (|Set#UnionOne| |Set#Empty| ($Box refType call1formal@this@0@@0))) (=> (and (and (or (not (= call1formal@this@@1 null)) (not true)) (and ($Is refType call1formal@this@@1 Tclass._module.Ref) ($IsAlloc refType call1formal@this@@1 Tclass._module.Ref $Heap@@2))) (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3))) (=> (and (and (and (or (not (= call1formal@this@0@@1 null)) (not true)) (and ($Is refType call1formal@this@0@@1 Tclass._module.Ref) ($IsAlloc refType call1formal@this@0@@1 Tclass._module.Ref $Heap@3))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call1formal@this@0@@1) alloc))))) (and (forall (($o@@9 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@9) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@9) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@9)))
 :qid |ReadPreconditionBypass2dfy.6:3|
 :skolemid |505|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@9))
)) ($HeapSucc $Heap@2 $Heap@3))) (and (=> (= (ControlFlow 0 2) (- 0 10)) true) (and (=> (= (ControlFlow 0 2) (- 0 9)) (or (not (= call1formal@this@0 null)) (not true))) (=> (or (not (= call1formal@this@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 8)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 call1formal@this@0 _module.Ref.inner))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 call1formal@this@0 _module.Ref.inner)) (and (=> (= (ControlFlow 0 2) (- 0 7)) true) (=> (and (= $Heap@4 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@3 call1formal@this@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call1formal@this@0) _module.Ref.inner ($Box refType call1formal@this@0@@1)))) ($IsGoodHeap $Heap@4)) (and (=> (= (ControlFlow 0 2) (- 0 6)) true) (and (=> (= (ControlFlow 0 2) (- 0 5)) (Requires1 Tclass._module.Ref (TSet Tclass._System.object?) $Heap@4 |hof#0@0| ($Box refType call1formal@this@0))) (=> (Requires1 Tclass._module.Ref (TSet Tclass._System.object?) $Heap@4 |hof#0@0| ($Box refType call1formal@this@0)) (=> (= |reads2#0@0| ($Unbox SetType (Apply1 Tclass._module.Ref (TSet Tclass._System.object?) $Heap@4 |hof#0@0| ($Box refType call1formal@this@0)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) (|Set#Equal| |reads2#0@0| (|Set#UnionOne| |Set#Empty| ($Box refType call1formal@this@0@@1)))) (=> (|Set#Equal| |reads2#0@0| (|Set#UnionOne| |Set#Empty| ($Box refType call1formal@this@0@@1))) (=> (= (ControlFlow 0 2) (- 0 1)) (U_2_bool (Lit boolType (bool_2_U false)))))))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap@@2) ($IsHeapAnchor $Heap@@2)) (and (=> |defass#outer#0| (and ($Is refType |outer#0| Tclass._module.Ref) ($IsAlloc refType |outer#0| Tclass._module.Ref $Heap@@2))) true)) (=> (and (and (and ($Is HandleTypeType |hof#0| (Tclass._System.___hFunc1 Tclass._module.Ref (TSet Tclass._System.object?))) ($IsAlloc HandleTypeType |hof#0| (Tclass._System.___hFunc1 Tclass._module.Ref (TSet Tclass._System.object?)) $Heap@@2)) true) (and (=> |defass#inner1#0| (and ($Is refType |inner1#0| Tclass._module.Ref) ($IsAlloc refType |inner1#0| Tclass._module.Ref $Heap@@2))) true)) (=> (and (and (and (and ($Is SetType |reads1#0| (TSet Tclass._System.object?)) ($IsAlloc SetType |reads1#0| (TSet Tclass._System.object?) $Heap@@2)) true) (and (=> |defass#inner2#0| (and ($Is refType |inner2#0| Tclass._module.Ref) ($IsAlloc refType |inner2#0| Tclass._module.Ref $Heap@@2))) true)) (and (and (and ($Is SetType |reads2#0| (TSet Tclass._System.object?)) ($IsAlloc SetType |reads2#0| (TSet Tclass._System.object?) $Heap@@2)) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 21) 2)))) anon0_correct)))))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 13))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
