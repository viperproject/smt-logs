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
(declare-fun TReal () T@U)
(declare-fun TagReal () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._System.nat () T@U)
(declare-fun class._module.SeqOp? () T@U)
(declare-fun Tagclass._module.SeqOp? () T@U)
(declare-fun Tagclass._module.SeqOp () T@U)
(declare-fun tytagFamily$nat () T@U)
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
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.SeqOp? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
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
(declare-fun LitReal (Real) Real)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun |_module.SeqOp.H#canCall| (T@U T@U Int) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#48| (T@U T@U T@U T@U) T@U)
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
(assert (distinct TReal TagReal alloc allocName Tagclass._System.nat class._module.SeqOp? Tagclass._module.SeqOp? Tagclass._module.SeqOp tytagFamily$nat tytagFamily$SeqOp field$x)
)
(assert (= (FDim alloc) 0))
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
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.SeqOp?)  (or (= $o null) (= (dtype $o) Tclass._module.SeqOp?)))
 :qid |unknown.0:0|
 :skolemid |536|
 :pattern ( ($Is refType $o Tclass._module.SeqOp?))
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
(assert (forall ((x@@6 Real) ) (! (= (LitReal x@@6) x@@6)
 :qid |DafnyPreludebpl.111:30|
 :skolemid |19|
 :pattern ( (LitReal x@@6))
)))
(assert (forall ((x@@7 T@U) (T T@T) ) (! (= (Lit T x@@7) x@@7)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@7))
)))
(assert (forall ((x@@8 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@8)) x@@8)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@8))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h@@2 T@U) ($o@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) Tclass._module.SeqOp?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) alloc)))) ($IsAlloc realType ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) _module.SeqOp.x)) TReal $h@@2))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |539|
 :pattern ( ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) _module.SeqOp.x)))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._module.SeqOp)  (and ($Is refType |c#0@@0| Tclass._module.SeqOp?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |757|
 :pattern ( ($Is refType |c#0@@0| Tclass._module.SeqOp))
 :pattern ( ($Is refType |c#0@@0| Tclass._module.SeqOp?))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((x@@9 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@9)) x@@9)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@9))
)))
(assert (forall (($h@@3 T@U) ($o@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) Tclass._module.SeqOp?))) ($Is realType ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) _module.SeqOp.x)) TReal))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |538|
 :pattern ( ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) _module.SeqOp.x)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (this T@U) (|i#0| Int) ) (!  (=> (or (|_module.SeqOp.H#canCall| $Heap this |i#0|) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.SeqOp) ($IsAlloc refType this Tclass._module.SeqOp $Heap)))) (<= (LitInt 0) |i#0|)))) (= (_module.SeqOp.H $Heap this |i#0|) (ite (< |i#0| 20) 2.5 (U_2_real ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.SeqOp.x))))))
 :qid |Comprehensionsdfy.92:12|
 :skolemid |550|
 :pattern ( (_module.SeqOp.H $Heap this |i#0|) ($IsGoodHeap $Heap))
))))
(assert (forall (($self@@0 T@U) ($heap@@0 T@U) (|$fh$0x#0@@0| T@U) ) (! (= (Apply1 Tclass._System.nat TReal $heap@@0 (|_module.SeqOp.H#Handle| $self@@0) |$fh$0x#0@@0|) ($Box realType (real_2_U (_module.SeqOp.H $heap@@0 $self@@0 (U_2_int ($Unbox intType |$fh$0x#0@@0|))))))
 :qid |unknown.0:0|
 :skolemid |573|
 :pattern ( (Apply1 Tclass._System.nat TReal $heap@@0 (|_module.SeqOp.H#Handle| $self@@0) |$fh$0x#0@@0|))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._module.SeqOp?) Tagclass._module.SeqOp?))
(assert (= (TagFamily Tclass._module.SeqOp?) tytagFamily$SeqOp))
(assert (= (Tag Tclass._module.SeqOp) Tagclass._module.SeqOp))
(assert (= (TagFamily Tclass._module.SeqOp) tytagFamily$SeqOp))
(assert (forall ((x@@10 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@10))) (Lit BoxType ($Box intType (int_2_U x@@10))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@10))))
)))
(assert (forall ((x@@11 Real) ) (! (= ($Box realType (real_2_U (LitReal x@@11))) (Lit BoxType ($Box realType (real_2_U x@@11))))
 :qid |DafnyPreludebpl.112:15|
 :skolemid |20|
 :pattern ( ($Box realType (real_2_U (LitReal x@@11))))
)))
(assert (forall ((x@@12 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@12)) (Lit BoxType ($Box T@@2 x@@12)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@12)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@3 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#48| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))  (=> (and (or (not (= $o@@3 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@3) |l#2|)))) (|Set#IsMember| |l#3| ($Box refType $o@@3))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |777|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#48| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))
)))
(assert (forall ((h T@U) (v T@U) ) (! ($IsAlloc realType v TReal h)
 :qid |DafnyPreludebpl.290:14|
 :skolemid |62|
 :pattern ( ($IsAlloc realType v TReal h))
)))
(assert (forall ((v@@0 T@U) ) (! ($Is realType v@@0 TReal)
 :qid |DafnyPreludebpl.229:14|
 :skolemid |41|
 :pattern ( ($Is realType v@@0 TReal))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |i#0@@0| () Int)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun this@@0 () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.SeqOp.H)
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
 (=> (= (ControlFlow 0 0) 10) (let ((anon16_Else_correct  (=> (<= 20 |i#0@@0|) (=> (and (and (= |b$reqreads#0@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@0 _module.SeqOp.x))) (= (_module.SeqOp.H $Heap@@0 this@@0 |i#0@@0|) (U_2_real ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.SeqOp.x))))) (and ($Is realType (real_2_U (_module.SeqOp.H $Heap@@0 this@@0 |i#0@@0|)) TReal) (= (ControlFlow 0 4) (- 0 3)))) |b$reqreads#0@0|))))
(let ((anon16_Then_correct true))
(let ((anon15_Then_correct true))
(let ((anon14_Else_correct  (=> (<= 20 |i#0@@0|) (and (and (=> (= (ControlFlow 0 6) 1) anon15_Then_correct) (=> (= (ControlFlow 0 6) 2) anon16_Then_correct)) (=> (= (ControlFlow 0 6) 4) anon16_Else_correct)))))
(let ((anon14_Then_correct  (=> (< |i#0@@0| 20) (and (and (=> (= (ControlFlow 0 5) 1) anon15_Then_correct) (=> (= (ControlFlow 0 5) 2) anon16_Then_correct)) (=> (= (ControlFlow 0 5) 4) anon16_Else_correct)))))
(let ((anon13_Else_correct  (=> (<= 20 |i#0@@0|) (and (=> (= (ControlFlow 0 8) 5) anon14_Then_correct) (=> (= (ControlFlow 0 8) 6) anon14_Else_correct)))))
(let ((anon13_Then_correct  (=> (< |i#0@@0| 20) (and (=> (= (ControlFlow 0 7) 5) anon14_Then_correct) (=> (= (ControlFlow 0 7) 6) anon14_Else_correct)))))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#48| null $Heap@@0 alloc (ite (< |i#0@@0| 20) |Set#Empty| (|Set#UnionOne| |Set#Empty| ($Box refType this@@0))))) (and (=> (= (ControlFlow 0 9) 7) anon13_Then_correct) (=> (= (ControlFlow 0 9) 8) anon13_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (=> (and (and (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.SeqOp) ($IsAlloc refType this@@0 Tclass._module.SeqOp $Heap@@0))) (<= (LitInt 0) |i#0@@0|)) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 10) 9))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
