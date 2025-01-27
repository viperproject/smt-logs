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
(declare-fun TReal () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagReal () T@U)
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun class._module.SeqOp? () T@U)
(declare-fun Tagclass._module.SeqOp? () T@U)
(declare-fun Tagclass._module.SeqOp () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
(declare-fun tytagFamily$SeqOp () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun _module.SeqOp.H (T@U T@U Int) Real)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun |_module.SeqOp.H#Handle| (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.SeqOp? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Reads1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Tclass._module.SeqOp () T@U)
(declare-fun _module.SeqOp.x () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |Seq#Create| (T@U T@U Int T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.SeqOp.T2 (T@U Int) T@U)
(declare-fun |_module.SeqOp.T2#canCall| (T@U Int) Bool)
(declare-fun |_module.SeqOp.H#requires| (T@U T@U Int) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |_module.SeqOp.H#canCall| (T@U T@U Int) Bool)
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
(assert (distinct TInt TReal TagInt TagReal TagSeq alloc allocName Tagclass._System.nat Tagclass._System.___hFunc1 class._module.SeqOp? Tagclass._module.SeqOp? Tagclass._module.SeqOp tytagFamily$nat |tytagFamily$_#Func1| tytagFamily$SeqOp field$x)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (Tag TReal) TagReal))
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
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (forall ((a@@1 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@1 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |128|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o))
)))
(assert (forall (($self T@U) ($heap T@U) (|$fh$0x#0| Int) ) (! (= (_module.SeqOp.H $heap $self |$fh$0x#0|) (U_2_real ($Unbox realType (Apply1 Tclass._System.nat TReal $heap (|_module.SeqOp.H#Handle| $self) ($Box intType (int_2_U |$fh$0x#0|))))))
 :qid |unknown.0:0|
 :skolemid |576|
 :pattern ( (_module.SeqOp.H $heap $self |$fh$0x#0|))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.SeqOp?)  (or (= $o null) (= (dtype $o) Tclass._module.SeqOp?)))
 :qid |unknown.0:0|
 :skolemid |536|
 :pattern ( ($Is refType $o Tclass._module.SeqOp?))
)))
(assert (forall (($bx T@U) ($self@@0 T@U) ($heap@@0 T@U) (|$fh$0x#0@@0| T@U) ) (! (= (|Set#IsMember| (Reads1 Tclass._System.nat TReal $heap@@0 (|_module.SeqOp.H#Handle| $self@@0) |$fh$0x#0@@0|) $bx) (|Set#IsMember| (ite (< (U_2_int ($Unbox intType |$fh$0x#0@@0|)) 20) |Set#Empty| (|Set#UnionOne| |Set#Empty| ($Box refType $self@@0))) $bx))
 :qid |unknown.0:0|
 :skolemid |575|
 :pattern ( (|Set#IsMember| (Reads1 Tclass._System.nat TReal $heap@@0 (|_module.SeqOp.H#Handle| $self@@0) |$fh$0x#0@@0|) $bx))
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
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.SeqOp $h@@0) ($IsAlloc refType |c#0| Tclass._module.SeqOp? $h@@0))
 :qid |unknown.0:0|
 :skolemid |758|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.SeqOp $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.SeqOp? $h@@0))
)))
(assert (= (FDim _module.SeqOp.x) 0))
(assert (= (FieldOfDecl class._module.SeqOp? field$x) _module.SeqOp.x))
(assert  (not ($IsGhostField _module.SeqOp.x)))
(assert  (and (and (and (and (and (and (forall ((t0@@0 T@T) (t1@@0 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0@@0 t1@@0 (MapType0Store t0@@0 t1@@0 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0@@0 u1@@0 (MapType0Store u0@@0 u1@@0 m@@0 x0@@0 val@@0) y0) (MapType0Select u0@@0 u1@@0 m@@0 y0)))
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
(assert (forall (($o@@0 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._module.SeqOp? $h@@1)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |537|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.SeqOp? $h@@1))
)))
(assert (forall ((x@@5 Int) ) (! (= (LitInt x@@5) x@@5)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@5))
)))
(assert (forall ((x@@6 T@U) (T T@T) ) (! (= (Lit T x@@6) x@@6)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@6))
)))
(assert (forall ((t0@@1 T@U) (t1@@1 T@U) (heap T@U) (f@@0 T@U) (bx0 T@U) ) (!  (=> (and ($IsGoodHeap heap) (and ($IsBox bx0 t0@@1) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@1 t1@@1)))) (= (|Set#Equal| (Reads1 t0@@1 t1@@1 $OneHeap f@@0 bx0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@1 t1@@1 heap f@@0 bx0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |385|
 :pattern ( (Reads1 t0@@1 t1@@1 $OneHeap f@@0 bx0) ($IsGoodHeap heap))
 :pattern ( (Reads1 t0@@1 t1@@1 heap f@@0 bx0))
)))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert ($IsGhostField alloc))
(assert ($IsGoodHeap $OneHeap))
(assert (forall (($h@@2 T@U) ($o@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) Tclass._module.SeqOp?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) alloc)))) ($IsAlloc realType ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) _module.SeqOp.x)) TReal $h@@2))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |539|
 :pattern ( ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) _module.SeqOp.x)))
)))
(assert (forall ((ty T@U) (heap@@0 T@U) (len Int) (init T@U) (i Int) ) (!  (=> (and (and ($IsGoodHeap heap@@0) (<= 0 i)) (< i len)) (= (|Seq#Index| (|Seq#Create| ty heap@@0 len init) i) (Apply1 TInt ty heap@@0 init ($Box intType (int_2_U i)))))
 :qid |DafnyPreludebpl.1317:15|
 :skolemid |260|
 :pattern ( (|Seq#Index| (|Seq#Create| ty heap@@0 len init) i))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx@@1 Tclass._System.nat))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.SeqOp?) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._module.SeqOp?)))
 :qid |unknown.0:0|
 :skolemid |535|
 :pattern ( ($IsBox bx@@2 Tclass._module.SeqOp?))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.SeqOp) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._module.SeqOp)))
 :qid |unknown.0:0|
 :skolemid |541|
 :pattern ( ($IsBox bx@@3 Tclass._module.SeqOp))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._module.SeqOp)  (and ($Is refType |c#0@@0| Tclass._module.SeqOp?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |757|
 :pattern ( ($Is refType |c#0@@0| Tclass._module.SeqOp))
 :pattern ( ($Is refType |c#0@@0| Tclass._module.SeqOp?))
)))
(assert (forall ((f@@1 T@U) (t0@@2 T@U) (t1@@2 T@U) (h@@0 T@U) ) (!  (=> (and ($IsGoodHeap h@@0) ($IsAlloc HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@2 t1@@2) h@@0)) (forall ((bx0@@0 T@U) ) (!  (=> (and ($IsAllocBox bx0@@0 t0@@2 h@@0) (Requires1 t0@@2 t1@@2 h@@0 f@@1 bx0@@0)) ($IsAllocBox (Apply1 t0@@2 t1@@2 h@@0 f@@1 bx0@@0) t1@@2 h@@0))
 :qid |unknown.0:0|
 :skolemid |395|
 :pattern ( (Apply1 t0@@2 t1@@2 h@@0 f@@1 bx0@@0))
)))
 :qid |unknown.0:0|
 :skolemid |396|
 :pattern ( ($IsAlloc HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@2 t1@@2) h@@0))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (this T@U) (|n#0| Int) ) (!  (=> (or (|_module.SeqOp.T2#canCall| (Lit refType this) (LitInt |n#0|)) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.SeqOp) ($IsAlloc refType this Tclass._module.SeqOp $Heap)))) (<= (LitInt 0) |n#0|)) (<= (LitInt |n#0|) (LitInt 20))))) (= (_module.SeqOp.T2 (Lit refType this) (LitInt |n#0|)) (|Seq#Create| TReal $Heap (LitInt |n#0|) (|_module.SeqOp.H#Handle| (Lit refType this)))))
 :qid |Comprehensionsdfy.140:12|
 :weight 3
 :skolemid |643|
 :pattern ( (_module.SeqOp.T2 (Lit refType this) (LitInt |n#0|)) ($IsGoodHeap $Heap))
))))
(assert (forall ((a@@2 T@U) (b T@U) ) (!  (=> (|Set#Equal| a@@2 b) (= a@@2 b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@2 b))
)))
(assert (forall (($Heap@@0 T@U) (this@@0 T@U) (|i#0| Int) ) (!  (=> (and (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.SeqOp) ($IsAlloc refType this@@0 Tclass._module.SeqOp $Heap@@0)))) (<= (LitInt 0) |i#0|)) (= (|_module.SeqOp.H#requires| $Heap@@0 this@@0 |i#0|) true))
 :qid |Comprehensionsdfy.92:12|
 :skolemid |549|
 :pattern ( (|_module.SeqOp.H#requires| $Heap@@0 this@@0 |i#0|) ($IsGoodHeap $Heap@@0))
)))
(assert (forall ((f@@2 T@U) (t0@@3 T@U) (t1@@3 T@U) ) (! (= ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@3 t1@@3)) (forall ((h@@1 T@U) (bx0@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@1) ($IsBox bx0@@1 t0@@3)) (Requires1 t0@@3 t1@@3 h@@1 f@@2 bx0@@1)) ($IsBox (Apply1 t0@@3 t1@@3 h@@1 f@@2 bx0@@1) t1@@3))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |387|
 :pattern ( (Apply1 t0@@3 t1@@3 h@@1 f@@2 bx0@@1))
)))
 :qid |unknown.0:0|
 :skolemid |388|
 :pattern ( ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@3 t1@@3)))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall (($self@@1 T@U) ($heap@@1 T@U) (|$fh$0x#0@@1| T@U) ) (! (= (Requires1 Tclass._System.nat TReal $heap@@1 (|_module.SeqOp.H#Handle| $self@@1) |$fh$0x#0@@1|) (|_module.SeqOp.H#requires| $heap@@1 $self@@1 (U_2_int ($Unbox intType |$fh$0x#0@@1|))))
 :qid |unknown.0:0|
 :skolemid |574|
 :pattern ( (Requires1 Tclass._System.nat TReal $heap@@1 (|_module.SeqOp.H#Handle| $self@@1) |$fh$0x#0@@1|))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 TInt) (and (= ($Box intType ($Unbox intType bx@@4)) bx@@4) ($Is intType ($Unbox intType bx@@4) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@4 TInt))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 TReal) (and (= ($Box realType ($Unbox realType bx@@5)) bx@@5) ($Is realType ($Unbox realType bx@@5) TReal)))
 :qid |DafnyPreludebpl.179:15|
 :skolemid |28|
 :pattern ( ($IsBox bx@@5 TReal))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s))
)))
(assert (forall ((|#$T0| T@U) (|#$R| T@U) ) (! (= (Tclass._System.___hFunc1_0 (Tclass._System.___hFunc1 |#$T0| |#$R|)) |#$T0|)
 :qid |unknown.0:0|
 :skolemid |367|
 :pattern ( (Tclass._System.___hFunc1 |#$T0| |#$R|))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$R@@0| T@U) ) (! (= (Tclass._System.___hFunc1_1 (Tclass._System.___hFunc1 |#$T0@@0| |#$R@@0|)) |#$R@@0|)
 :qid |unknown.0:0|
 :skolemid |368|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@0| |#$R@@0|))
)))
(assert (= (Ctor SeqType) 8))
(assert (forall ((v@@1 T@U) (t0@@4 T@U) (h@@2 T@U) ) (! (= ($IsAlloc SeqType v@@1 (TSeq t0@@4) h@@2) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@1))) ($IsAllocBox (|Seq#Index| v@@1 i@@0) t0@@4 h@@2))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@1 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@1 (TSeq t0@@4) h@@2))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@1 T@U) (|n#0@@0| Int) ) (!  (=> (or (|_module.SeqOp.T2#canCall| this@@1 |n#0@@0|) (and (< 1 $FunctionContextHeight) (and (and (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 Tclass._module.SeqOp)) (<= (LitInt 0) |n#0@@0|)) (<= |n#0@@0| (LitInt 20))))) ($Is SeqType (_module.SeqOp.T2 this@@1 |n#0@@0|) (TSeq TReal)))
 :qid |Comprehensionsdfy.140:12|
 :skolemid |639|
 :pattern ( (_module.SeqOp.T2 this@@1 |n#0@@0|))
))))
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
(assert (forall ((x@@8 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@8))
)))
(assert (forall (($h@@3 T@U) ($o@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) Tclass._module.SeqOp?))) ($Is realType ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) _module.SeqOp.x)) TReal))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |538|
 :pattern ( ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) _module.SeqOp.x)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@1 T@U) (this@@2 T@U) (|n#0@@1| Int) ) (!  (=> (or (|_module.SeqOp.T2#canCall| this@@2 |n#0@@1|) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@1) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass._module.SeqOp) ($IsAlloc refType this@@2 Tclass._module.SeqOp $Heap@@1)))) (<= (LitInt 0) |n#0@@1|)) (<= |n#0@@1| (LitInt 20))))) (= (_module.SeqOp.T2 this@@2 |n#0@@1|) (|Seq#Create| TReal $Heap@@1 |n#0@@1| (|_module.SeqOp.H#Handle| this@@2))))
 :qid |Comprehensionsdfy.140:12|
 :skolemid |641|
 :pattern ( (_module.SeqOp.T2 this@@2 |n#0@@1|) ($IsGoodHeap $Heap@@1))
))))
(assert (forall ((f@@3 T@U) (t0@@5 T@U) (t1@@4 T@U) (h@@3 T@U) ) (!  (=> ($IsGoodHeap h@@3) (= ($IsAlloc HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@5 t1@@4) h@@3) (forall ((bx0@@2 T@U) ) (!  (=> (and (and ($IsBox bx0@@2 t0@@5) ($IsAllocBox bx0@@2 t0@@5 h@@3)) (Requires1 t0@@5 t1@@4 h@@3 f@@3 bx0@@2)) (forall ((r T@U) ) (!  (=> (and (or (not (= r null)) (not true)) (|Set#IsMember| (Reads1 t0@@5 t1@@4 h@@3 f@@3 bx0@@2) ($Box refType r))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) alloc))))
 :qid |unknown.0:0|
 :skolemid |392|
 :pattern ( (|Set#IsMember| (Reads1 t0@@5 t1@@4 h@@3 f@@3 bx0@@2) ($Box refType r)))
)))
 :qid |unknown.0:0|
 :skolemid |393|
 :pattern ( (Apply1 t0@@5 t1@@4 h@@3 f@@3 bx0@@2))
 :pattern ( (Reads1 t0@@5 t1@@4 h@@3 f@@3 bx0@@2))
))))
 :qid |unknown.0:0|
 :skolemid |394|
 :pattern ( ($IsAlloc HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@5 t1@@4) h@@3))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$R@@1| T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@6)) bx@@6) ($Is HandleTypeType ($Unbox HandleTypeType bx@@6) (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|))))
 :qid |unknown.0:0|
 :skolemid |369|
 :pattern ( ($IsBox bx@@6 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)))
)))
(assert  (and (forall ((t0@@6 T@T) (t1@@5 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@6 t1@@5 t2 (MapType1Store t0@@6 t1@@5 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@1 T@T) (u1@@1 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@1 u1@@1 u2 (MapType1Store u0@@1 u1@@1 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@1 u1@@1 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@2 T@T) (u1@@2 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@2 u1@@2 u2@@0 (MapType1Store u0@@2 u1@@2 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@2 u1@@2 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@3 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))  (=> (and (or (not (= $o@@3 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@3) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |759|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@2 T@U) (this@@3 T@U) (|i#0@@0| Int) ) (!  (=> (or (|_module.SeqOp.H#canCall| $Heap@@2 this@@3 |i#0@@0|) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@2) (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 Tclass._module.SeqOp) ($IsAlloc refType this@@3 Tclass._module.SeqOp $Heap@@2)))) (<= (LitInt 0) |i#0@@0|)))) (= (_module.SeqOp.H $Heap@@2 this@@3 |i#0@@0|) (ite (< |i#0@@0| 20) 2.5 (U_2_real ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@3) _module.SeqOp.x))))))
 :qid |Comprehensionsdfy.92:12|
 :skolemid |550|
 :pattern ( (_module.SeqOp.H $Heap@@2 this@@3 |i#0@@0|) ($IsGoodHeap $Heap@@2))
))))
(assert (forall ((|#$T0@@2| T@U) (|#$R@@2| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |366|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|))
)))
(assert (forall ((t0@@7 T@U) (t1@@6 T@U) (heap@@1 T@U) (f@@4 T@U) (bx0@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@1) (and ($IsBox bx0@@3 t0@@7) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc1 t0@@7 t1@@6)))) (|Set#Equal| (Reads1 t0@@7 t1@@6 $OneHeap f@@4 bx0@@3) |Set#Empty|)) (= (Requires1 t0@@7 t1@@6 $OneHeap f@@4 bx0@@3) (Requires1 t0@@7 t1@@6 heap@@1 f@@4 bx0@@3)))
 :qid |unknown.0:0|
 :skolemid |386|
 :pattern ( (Requires1 t0@@7 t1@@6 $OneHeap f@@4 bx0@@3) ($IsGoodHeap heap@@1))
 :pattern ( (Requires1 t0@@7 t1@@6 heap@@1 f@@4 bx0@@3))
)))
(assert (forall ((bx@@7 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@7 (TSeq t@@3)) (and (= ($Box SeqType ($Unbox SeqType bx@@7)) bx@@7) ($Is SeqType ($Unbox SeqType bx@@7) (TSeq t@@3))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@7 (TSeq t@@3)))
)))
(assert (forall (($self@@2 T@U) ($heap@@2 T@U) (|$fh$0x#0@@2| T@U) ) (! (= (Apply1 Tclass._System.nat TReal $heap@@2 (|_module.SeqOp.H#Handle| $self@@2) |$fh$0x#0@@2|) ($Box realType (real_2_U (_module.SeqOp.H $heap@@2 $self@@2 (U_2_int ($Unbox intType |$fh$0x#0@@2|))))))
 :qid |unknown.0:0|
 :skolemid |573|
 :pattern ( (Apply1 Tclass._System.nat TReal $heap@@2 (|_module.SeqOp.H#Handle| $self@@2) |$fh$0x#0@@2|))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._module.SeqOp?) Tagclass._module.SeqOp?))
(assert (= (TagFamily Tclass._module.SeqOp?) tytagFamily$SeqOp))
(assert (= (Tag Tclass._module.SeqOp) Tagclass._module.SeqOp))
(assert (= (TagFamily Tclass._module.SeqOp) tytagFamily$SeqOp))
(assert (forall ((ty@@0 T@U) (heap@@2 T@U) (len@@0 Int) (init@@0 T@U) ) (!  (=> (and ($IsGoodHeap heap@@2) (<= 0 len@@0)) (= (|Seq#Length| (|Seq#Create| ty@@0 heap@@2 len@@0 init@@0)) len@@0))
 :qid |DafnyPreludebpl.1313:15|
 :skolemid |259|
 :pattern ( (|Seq#Length| (|Seq#Create| ty@@0 heap@@2 len@@0 init@@0)))
)))
(assert (forall ((a@@3 T@U) (b@@0 T@U) ) (! (= (|Set#Equal| a@@3 b@@0) (forall ((o@@1 T@U) ) (! (= (|Set#IsMember| a@@3 o@@1) (|Set#IsMember| b@@0 o@@1))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@3 o@@1))
 :pattern ( (|Set#IsMember| b@@0 o@@1))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@3 b@@0))
)))
(assert (forall ((x@@9 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@9))) (Lit BoxType ($Box intType (int_2_U x@@9))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@9))))
)))
(assert (forall ((x@@10 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@10)) (Lit BoxType ($Box T@@4 x@@10)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@10)))
)))
(assert (forall ((s@@0 T@U) ) (!  (=> (= (|Seq#Length| s@@0) 0) (= s@@0 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((h@@4 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@2 TInt h@@4))
)))
(assert (forall ((h@@5 T@U) (v@@3 T@U) ) (! ($IsAlloc realType v@@3 TReal h@@5)
 :qid |DafnyPreludebpl.290:14|
 :skolemid |62|
 :pattern ( ($IsAlloc realType v@@3 TReal h@@5))
)))
(assert (forall ((v@@4 T@U) (t0@@8 T@U) ) (! (= ($Is SeqType v@@4 (TSeq t0@@8)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@4))) ($IsBox (|Seq#Index| v@@4 i@@1) t0@@8))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@4 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@4 (TSeq t0@@8)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@3 T@U) (this@@4 T@U) (|n#0@@2| Int) ) (!  (=> (or (|_module.SeqOp.T2#canCall| this@@4 (LitInt |n#0@@2|)) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@3) (and (or (not (= this@@4 null)) (not true)) (and ($Is refType this@@4 Tclass._module.SeqOp) ($IsAlloc refType this@@4 Tclass._module.SeqOp $Heap@@3)))) (<= (LitInt 0) |n#0@@2|)) (<= (LitInt |n#0@@2|) (LitInt 20))))) (= (_module.SeqOp.T2 this@@4 (LitInt |n#0@@2|)) (|Seq#Create| TReal $Heap@@3 (LitInt |n#0@@2|) (|_module.SeqOp.H#Handle| this@@4))))
 :qid |Comprehensionsdfy.140:12|
 :weight 3
 :skolemid |642|
 :pattern ( (_module.SeqOp.T2 this@@4 (LitInt |n#0@@2|)) ($IsGoodHeap $Heap@@3))
))))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@5 TInt))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is realType v@@6 TReal)
 :qid |DafnyPreludebpl.229:14|
 :skolemid |41|
 :pattern ( ($Is realType v@@6 TReal))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |n#0@@3| () Int)
(declare-fun $Heap@@4 () T@U)
(declare-fun this@@5 () T@U)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.SeqOp.T2)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon5_Else_correct  (and (=> (= (ControlFlow 0 3) (- 0 6)) (<= 0 |n#0@@3|)) (=> (<= 0 |n#0@@3|) (and (=> (= (ControlFlow 0 3) (- 0 5)) (or (not (= 0 $FunctionContextHeight)) (not true))) (=> (or (not (= 0 $FunctionContextHeight)) (not true)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (forall ((|seqinit#0#i0#0| Int) ) (!  (=> (and (<= 0 |seqinit#0#i0#0|) (< |seqinit#0#i0#0| |n#0@@3|)) (Requires1 Tclass._System.nat TReal $Heap@@4 (|_module.SeqOp.H#Handle| this@@5) ($Box intType (int_2_U |seqinit#0#i0#0|))))
 :qid |Comprehensionsdfy.143:5|
 :skolemid |644|
))) (=> (and (and (= |b$reqreads#0@0| (forall ((|seqinit#0#i0#0@@0| Int) ) (!  (=> (and (<= 0 |seqinit#0#i0#0@@0|) (< |seqinit#0#i0#0@@0| |n#0@@3|)) (forall (($o@@4 T@U) ($f@@0 T@U) ) (!  (=> (and (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 $o@@4) alloc)))) (|Set#IsMember| (Reads1 Tclass._System.nat TReal $Heap@@4 (|_module.SeqOp.H#Handle| this@@5) ($Box intType (int_2_U |seqinit#0#i0#0@@0|))) ($Box refType $o@@4))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@4 $f@@0)))
 :qid |Comprehensionsdfy.143:5|
 :skolemid |645|
)))
 :qid |Comprehensionsdfy.143:5|
 :skolemid |646|
))) (= (_module.SeqOp.T2 this@@5 |n#0@@3|) (|Seq#Create| TReal $Heap@@4 |n#0@@3| (|_module.SeqOp.H#Handle| this@@5)))) (and ($Is SeqType (_module.SeqOp.T2 this@@5 |n#0@@3|) (TSeq TReal)) (= (ControlFlow 0 3) (- 0 2)))) |b$reqreads#0@0|))))))))
(let ((anon5_Then_correct true))
(let ((anon0_correct  (=> (and (= $_ReadsFrame@0 (|lambda#0| null $Heap@@4 alloc false)) (<= |n#0@@3| (LitInt 20))) (and (=> (= (ControlFlow 0 7) 1) anon5_Then_correct) (=> (= (ControlFlow 0 7) 3) anon5_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@4) ($IsHeapAnchor $Heap@@4)) (=> (and (and (and (or (not (= this@@5 null)) (not true)) (and ($Is refType this@@5 Tclass._module.SeqOp) ($IsAlloc refType this@@5 Tclass._module.SeqOp $Heap@@4))) (<= (LitInt 0) |n#0@@3|)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 8) 7))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
