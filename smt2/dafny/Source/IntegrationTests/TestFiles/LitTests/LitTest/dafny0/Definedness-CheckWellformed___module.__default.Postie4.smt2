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
(declare-fun Tagclass._module.Mountain? () T@U)
(declare-fun class._module.Mountain? () T@U)
(declare-fun Tagclass._module.Mountain () T@U)
(declare-fun tytagFamily$Mountain () T@U)
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
(declare-fun |Set#Empty| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Mountain? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.Mountain () T@U)
(declare-fun _module.Mountain.x () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#2| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.Postie4 (T@U T@U) T@U)
(declare-fun |_module.__default.Postie4#canCall| (T@U T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
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
(assert (distinct TInt TagInt alloc allocName Tagclass._module.Mountain? class._module.Mountain? Tagclass._module.Mountain tytagFamily$Mountain field$x)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
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
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.Mountain?)  (or (= $o null) (= (dtype $o) Tclass._module.Mountain?)))
 :qid |unknown.0:0|
 :skolemid |632|
 :pattern ( ($Is refType $o Tclass._module.Mountain?))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Mountain $h) ($IsAlloc refType |c#0| Tclass._module.Mountain? $h))
 :qid |unknown.0:0|
 :skolemid |638|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Mountain $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Mountain? $h))
)))
(assert (= (FDim _module.Mountain.x) 0))
(assert (= (FieldOfDecl class._module.Mountain? field$x) _module.Mountain.x))
(assert  (not ($IsGhostField _module.Mountain.x)))
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
(assert (forall (($o@@0 T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._module.Mountain? $h@@0)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |633|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.Mountain? $h@@0))
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
(assert (forall ((a@@2 T@U) (b T@U) ) (! (= (|Set#Subset| a@@2 b) (forall ((o@@1 T@U) ) (!  (=> (|Set#IsMember| a@@2 o@@1) (|Set#IsMember| b o@@1))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a@@2 o@@1))
 :pattern ( (|Set#IsMember| b o@@1))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a@@2 b))
)))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h@@1 T@U) ($o@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@1) (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) Tclass._module.Mountain?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) _module.Mountain.x)) TInt $h@@1))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |635|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) _module.Mountain.x)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@2 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#2| |l#0| |l#1| |l#2| |l#3|) $o@@2 $f))  (=> (and (or (not (= $o@@2 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@2) |l#2|)))) (= $o@@2 |l#3|)))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |640|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#2| |l#0| |l#1| |l#2| |l#3|) $o@@2 $f))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._module.Mountain)  (and ($Is refType |c#0@@0| Tclass._module.Mountain?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |637|
 :pattern ( ($Is refType |c#0@@0| Tclass._module.Mountain))
 :pattern ( ($Is refType |c#0@@0| Tclass._module.Mountain?))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (|c#0@@1| T@U) ) (!  (=> (or (|_module.__default.Postie4#canCall| $Heap |c#0@@1|) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) (and ($Is refType |c#0@@1| Tclass._module.Mountain?) ($IsAlloc refType |c#0@@1| Tclass._module.Mountain? $Heap))) (and (or (not (= |c#0@@1| null)) (not true)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |c#0@@1|) _module.Mountain.x))) (LitInt 5)))))) ($IsAlloc refType (_module.__default.Postie4 $Heap |c#0@@1|) Tclass._module.Mountain? $Heap))
 :qid |Definednessdfy.237:16|
 :skolemid |505|
 :pattern ( ($IsAlloc refType (_module.__default.Postie4 $Heap |c#0@@1|) Tclass._module.Mountain? $Heap))
))))
(assert (forall ((a@@3 T@U) (b@@0 T@U) ) (!  (=> (|Set#Equal| a@@3 b@@0) (= a@@3 b@@0))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@3 b@@0))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@0 T@U) (|c#0@@2| T@U) ) (!  (=> (or (|_module.__default.Postie4#canCall| $Heap@@0 |c#0@@2|) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@0) ($Is refType |c#0@@2| Tclass._module.Mountain?)) (and (or (not (= |c#0@@2| null)) (not true)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |c#0@@2|) _module.Mountain.x))) (LitInt 5)))))) (= (_module.__default.Postie4 $Heap@@0 |c#0@@2|) |c#0@@2|))
 :qid |Definednessdfy.237:16|
 :skolemid |507|
 :pattern ( (_module.__default.Postie4 $Heap@@0 |c#0@@2|) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((x@@8 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@8))
)))
(assert (forall (($h@@2 T@U) ($o@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) Tclass._module.Mountain?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@3) _module.Mountain.x)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |634|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@3) _module.Mountain.x)))
)))
(assert (= (Tag Tclass._module.Mountain?) Tagclass._module.Mountain?))
(assert (= (TagFamily Tclass._module.Mountain?) tytagFamily$Mountain))
(assert (= (Tag Tclass._module.Mountain) Tagclass._module.Mountain))
(assert (= (TagFamily Tclass._module.Mountain) tytagFamily$Mountain))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@1 T@U) (|c#0@@3| T@U) ) (!  (=> (or (|_module.__default.Postie4#canCall| $Heap@@1 |c#0@@3|) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@1) (and ($Is refType |c#0@@3| Tclass._module.Mountain?) ($IsAlloc refType |c#0@@3| Tclass._module.Mountain? $Heap@@1))) (and (or (not (= |c#0@@3| null)) (not true)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |c#0@@3|) _module.Mountain.x))) (LitInt 5)))))) (and (and (and (or (not (= (_module.__default.Postie4 $Heap@@1 |c#0@@3|) null)) (not true)) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 (_module.__default.Postie4 $Heap@@1 |c#0@@3|)) _module.Mountain.x))) 10)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 (_module.__default.Postie4 $Heap@@1 |c#0@@3|)) _module.Mountain.x))) (LitInt 5))) ($Is refType (_module.__default.Postie4 $Heap@@1 |c#0@@3|) Tclass._module.Mountain?)))
 :qid |Definednessdfy.237:16|
 :skolemid |504|
 :pattern ( (_module.__default.Postie4 $Heap@@1 |c#0@@3|))
))))
(assert (forall ((a@@4 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@4 b@@1) (forall ((o@@2 T@U) ) (! (= (|Set#IsMember| a@@4 o@@2) (|Set#IsMember| b@@1 o@@2))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@4 o@@2))
 :pattern ( (|Set#IsMember| b@@1 o@@2))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@4 b@@1))
)))
(assert (forall ((x@@9 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@9))) (Lit BoxType ($Box intType (int_2_U x@@9))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@9))))
)))
(assert (forall ((x@@10 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@10)) (Lit BoxType ($Box T@@2 x@@10)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@10)))
)))
(assert (forall ((h T@U) (v T@U) ) (! ($IsAlloc intType v TInt h)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v TInt h))
)))
(assert (forall ((v@@0 T@U) ) (! ($Is intType v@@0 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@0 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@@2 () T@U)
(declare-fun |c#0@@4| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.Postie4)
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
 (=> (= (ControlFlow 0 0) 21) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 14) (- 0 16)) (or (not (= (_module.__default.Postie4 $Heap@@2 |c#0@@4|) null)) (not true))) (=> (or (not (= (_module.__default.Postie4 $Heap@@2 |c#0@@4|) null)) (not true)) (and (=> (= (ControlFlow 0 14) (- 0 15)) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 (_module.__default.Postie4 $Heap@@2 |c#0@@4|)) _module.Mountain.x))) 10)) (=> (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 (_module.__default.Postie4 $Heap@@2 |c#0@@4|)) _module.Mountain.x))) 10) (=> (= (ControlFlow 0 14) (- 0 13)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 (_module.__default.Postie4 $Heap@@2 |c#0@@4|)) _module.Mountain.x))) (LitInt 5)))))))))
(let ((anon5_Else_correct  (=> (= (_module.__default.Postie4 $Heap@@2 |c#0@@4|) |c#0@@4|) (=> (and ($Is refType (_module.__default.Postie4 $Heap@@2 |c#0@@4|) Tclass._module.Mountain?) (= (ControlFlow 0 17) 14)) GeneratedUnifiedExit_correct))))
(let ((anon5_Then_correct  (=> (and ($Is refType (_module.__default.Postie4 $Heap@@2 |c#0@@4|) Tclass._module.Mountain?) ($IsAlloc refType |c#0@@4| Tclass._module.Mountain? $Heap@@2)) (and (=> (= (ControlFlow 0 2) (- 0 12)) (or (not (= |c#0@@4| null)) (not true))) (and (=> (= (ControlFlow 0 2) (- 0 11)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |c#0@@4|) _module.Mountain.x))) (LitInt 5))) (=> (and (or (not (= |c#0@@4| null)) (not true)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |c#0@@4|) _module.Mountain.x))) (LitInt 5))) (and (=> (= (ControlFlow 0 2) (- 0 10)) (or (= |c#0@@4| |c#0@@4|) (or (and (|Set#Subset| (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@4|)) (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@4|))) (not (|Set#Subset| (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@4|)) (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@4|))))) (and (|Set#Equal| (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@4|)) (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@4|))) (and (= |c#0@@4| null) (or (not (= |c#0@@4| null)) (not true))))))) (=> (or (= |c#0@@4| |c#0@@4|) (or (and (|Set#Subset| (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@4|)) (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@4|))) (not (|Set#Subset| (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@4|)) (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@4|))))) (and (|Set#Equal| (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@4|)) (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@4|))) (and (= |c#0@@4| null) (or (not (= |c#0@@4| null)) (not true)))))) (=> (or (= |c#0@@4| |c#0@@4|) (|_module.__default.Postie4#canCall| $Heap@@2 |c#0@@4|)) (=> (and (or (not (= (_module.__default.Postie4 $Heap@@2 |c#0@@4|) null)) (not true)) ($IsAlloc refType |c#0@@4| Tclass._module.Mountain? $Heap@@2)) (and (=> (= (ControlFlow 0 2) (- 0 9)) (or (not (= |c#0@@4| null)) (not true))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |c#0@@4|) _module.Mountain.x))) (LitInt 5))) (=> (and (or (not (= |c#0@@4| null)) (not true)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |c#0@@4|) _module.Mountain.x))) (LitInt 5))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (or (= |c#0@@4| |c#0@@4|) (or (and (|Set#Subset| (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@4|)) (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@4|))) (not (|Set#Subset| (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@4|)) (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@4|))))) (and (|Set#Equal| (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@4|)) (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@4|))) (and (= |c#0@@4| null) (or (not (= |c#0@@4| null)) (not true))))))) (=> (or (= |c#0@@4| |c#0@@4|) (or (and (|Set#Subset| (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@4|)) (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@4|))) (not (|Set#Subset| (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@4|)) (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@4|))))) (and (|Set#Equal| (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@4|)) (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@4|))) (and (= |c#0@@4| null) (or (not (= |c#0@@4| null)) (not true)))))) (=> (or (= |c#0@@4| |c#0@@4|) (|_module.__default.Postie4#canCall| $Heap@@2 |c#0@@4|)) (and (=> (= (ControlFlow 0 2) (- 0 6)) (or (not (= (_module.__default.Postie4 $Heap@@2 |c#0@@4|) null)) (not true))) (=> (or (not (= (_module.__default.Postie4 $Heap@@2 |c#0@@4|) null)) (not true)) (=> (and (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 (_module.__default.Postie4 $Heap@@2 |c#0@@4|)) _module.Mountain.x))) 10) ($IsAlloc refType |c#0@@4| Tclass._module.Mountain? $Heap@@2)) (and (=> (= (ControlFlow 0 2) (- 0 5)) (or (not (= |c#0@@4| null)) (not true))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |c#0@@4|) _module.Mountain.x))) (LitInt 5))) (=> (and (or (not (= |c#0@@4| null)) (not true)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |c#0@@4|) _module.Mountain.x))) (LitInt 5))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (= |c#0@@4| |c#0@@4|) (or (and (|Set#Subset| (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@4|)) (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@4|))) (not (|Set#Subset| (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@4|)) (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@4|))))) (and (|Set#Equal| (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@4|)) (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@4|))) (and (= |c#0@@4| null) (or (not (= |c#0@@4| null)) (not true))))))) (=> (or (= |c#0@@4| |c#0@@4|) (or (and (|Set#Subset| (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@4|)) (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@4|))) (not (|Set#Subset| (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@4|)) (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@4|))))) (and (|Set#Equal| (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@4|)) (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@4|))) (and (= |c#0@@4| null) (or (not (= |c#0@@4| null)) (not true)))))) (=> (and (or (= |c#0@@4| |c#0@@4|) (|_module.__default.Postie4#canCall| $Heap@@2 |c#0@@4|)) (= (ControlFlow 0 2) (- 0 1))) (or (not (= (_module.__default.Postie4 $Heap@@2 |c#0@@4|) null)) (not true)))))))))))))))))))))))))))
(let ((anon0_correct  (=> (and (= $_ReadsFrame@0 (|lambda#2| null $Heap@@2 alloc |c#0@@4|)) (or (not (= |c#0@@4| null)) (not true))) (and (=> (= (ControlFlow 0 18) (- 0 20)) (or (not (= |c#0@@4| null)) (not true))) (=> (or (not (= |c#0@@4| null)) (not true)) (=> (and (= |b$reqreads#0@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 |c#0@@4| _module.Mountain.x))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |c#0@@4|) _module.Mountain.x))) (LitInt 5))) (and (=> (= (ControlFlow 0 18) (- 0 19)) |b$reqreads#0@0|) (=> |b$reqreads#0@0| (and (=> (= (ControlFlow 0 18) 2) anon5_Then_correct) (=> (= (ControlFlow 0 18) 17) anon5_Else_correct))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@2) ($IsHeapAnchor $Heap@@2)) ($Is refType |c#0@@4| Tclass._module.Mountain?)) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 21) 18))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 14) (- 13))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
