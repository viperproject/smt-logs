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
(declare-fun class._module.TrickySubstitution? () T@U)
(declare-fun Tagclass._module.TrickySubstitution? () T@U)
(declare-fun Tagclass._module.TrickySubstitution () T@U)
(declare-fun tytagFamily$TrickySubstitution () T@U)
(declare-fun field$v () T@U)
(declare-fun field$w () T@U)
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
(declare-fun Tclass._module.TrickySubstitution? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.TrickySubstitution () T@U)
(declare-fun _module.TrickySubstitution.v () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.TrickySubstitution.w () T@U)
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
(declare-fun |$let#32_g| (T@U T@U Int) Int)
(declare-fun |$let#32$canCall| (T@U T@U Int) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#30| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.TrickySubstitution.F4 (T@U T@U Int) Int)
(declare-fun |_module.TrickySubstitution.F4#canCall| (T@U T@U Int) Bool)
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
(assert (distinct TInt TagInt alloc allocName class._module.TrickySubstitution? Tagclass._module.TrickySubstitution? Tagclass._module.TrickySubstitution tytagFamily$TrickySubstitution field$v field$w)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |1832|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |1833|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@1 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |1831|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |1828|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.TrickySubstitution?)  (or (= $o null) (= (dtype $o) Tclass._module.TrickySubstitution?)))
 :qid |unknown.0:0|
 :skolemid |2368|
 :pattern ( ($Is refType $o Tclass._module.TrickySubstitution?))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.TrickySubstitution $h) ($IsAlloc refType |c#0| Tclass._module.TrickySubstitution? $h))
 :qid |unknown.0:0|
 :skolemid |2451|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.TrickySubstitution $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.TrickySubstitution? $h))
)))
(assert (= (FDim _module.TrickySubstitution.v) 0))
(assert (= (FieldOfDecl class._module.TrickySubstitution? field$v) _module.TrickySubstitution.v))
(assert  (not ($IsGhostField _module.TrickySubstitution.v)))
(assert (= (FDim _module.TrickySubstitution.w) 0))
(assert (= (FieldOfDecl class._module.TrickySubstitution? field$w) _module.TrickySubstitution.w))
(assert  (not ($IsGhostField _module.TrickySubstitution.w)))
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
(assert (forall (($o@@0 T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._module.TrickySubstitution? $h@@0)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2369|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.TrickySubstitution? $h@@0))
)))
(assert (forall ((x@@5 Int) ) (! (= (LitInt x@@5) x@@5)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |1720|
 :pattern ( (LitInt x@@5))
)))
(assert (forall ((x@@6 T@U) (T T@T) ) (! (= (Lit T x@@6) x@@6)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1718|
 :pattern ( (Lit T x@@6))
)))
(assert (forall ((a@@2 T@U) (b T@U) ) (! (= (|Set#Subset| a@@2 b) (forall ((o@@1 T@U) ) (!  (=> (|Set#IsMember| a@@2 o@@1) (|Set#IsMember| b o@@1))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |1849|
 :pattern ( (|Set#IsMember| a@@2 o@@1))
 :pattern ( (|Set#IsMember| b o@@1))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |1850|
 :pattern ( (|Set#Subset| a@@2 b))
)))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1729|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h@@1 T@U) ($o@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@1) (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) Tclass._module.TrickySubstitution?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) _module.TrickySubstitution.v)) TInt $h@@1))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2407|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) _module.TrickySubstitution.v)))
)))
(assert (forall (($h@@2 T@U) ($o@@2 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) Tclass._module.TrickySubstitution?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) _module.TrickySubstitution.w)) TInt $h@@2))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2409|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) _module.TrickySubstitution.w)))
)))
(assert (forall (($heap T@U) (this T@U) (f Int) ) (!  (=> (|$let#32$canCall| $heap this f) (= (+ f (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $heap this) _module.TrickySubstitution.w)))) (|$let#32_g| $heap this f)))
 :qid |LetExprdfy.199:5|
 :skolemid |2414|
 :pattern ( (|$let#32_g| $heap this f))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1742|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@3 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#30| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))  (=> (and (or (not (= $o@@3 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@3) |l#2|)))) (= $o@@3 |l#3|)))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2617|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#30| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._module.TrickySubstitution)  (and ($Is refType |c#0@@0| Tclass._module.TrickySubstitution?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2450|
 :pattern ( ($Is refType |c#0@@0| Tclass._module.TrickySubstitution))
 :pattern ( ($Is refType |c#0@@0| Tclass._module.TrickySubstitution?))
)))
(assert (forall ((a@@3 T@U) (b@@0 T@U) ) (!  (=> (|Set#Equal| a@@3 b@@0) (= a@@3 b@@0))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |1853|
 :pattern ( (|Set#Equal| a@@3 b@@0))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |1810|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((x@@8 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1728|
 :pattern ( ($Box T@@2 x@@8))
)))
(assert (forall (($h@@3 T@U) ($o@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) Tclass._module.TrickySubstitution?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) _module.TrickySubstitution.v)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2406|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) _module.TrickySubstitution.v)))
)))
(assert (forall (($h@@4 T@U) ($o@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) Tclass._module.TrickySubstitution?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) _module.TrickySubstitution.w)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2408|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) _module.TrickySubstitution.w)))
)))
(assert (= (Tag Tclass._module.TrickySubstitution?) Tagclass._module.TrickySubstitution?))
(assert (= (TagFamily Tclass._module.TrickySubstitution?) tytagFamily$TrickySubstitution))
(assert (= (Tag Tclass._module.TrickySubstitution) Tagclass._module.TrickySubstitution))
(assert (= (TagFamily Tclass._module.TrickySubstitution) tytagFamily$TrickySubstitution))
(assert (forall ((a@@4 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@4 b@@1) (forall ((o@@2 T@U) ) (! (= (|Set#IsMember| a@@4 o@@2) (|Set#IsMember| b@@1 o@@2))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |1851|
 :pattern ( (|Set#IsMember| a@@4 o@@2))
 :pattern ( (|Set#IsMember| b@@1 o@@2))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |1852|
 :pattern ( (|Set#Equal| a@@4 b@@1))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (this@@0 T@U) (|x#0| Int) ) (!  (=> (or (|_module.TrickySubstitution.F4#canCall| $Heap this@@0 |x#0|) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.TrickySubstitution) ($IsAlloc refType this@@0 Tclass._module.TrickySubstitution $Heap)))) (and (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.TrickySubstitution.v))) |x#0|) (LitInt 3)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.TrickySubstitution.w))) (LitInt 2)))))) (= (_module.TrickySubstitution.F4 $Heap this@@0 |x#0|) (LitInt 5)))
 :qid |LetExprdfy.193:18|
 :skolemid |2412|
 :pattern ( (_module.TrickySubstitution.F4 $Heap this@@0 |x#0|))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@1 T@U) (|x#0@@0| Int) ) (!  (=> (or (|_module.TrickySubstitution.F4#canCall| $Heap@@0 this@@1 |x#0@@0|) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.TrickySubstitution) ($IsAlloc refType this@@1 Tclass._module.TrickySubstitution $Heap@@0)))) (and (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.TrickySubstitution.v))) |x#0@@0|) (LitInt 3)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.TrickySubstitution.w))) (LitInt 2)))))) (and (let ((|f#0| (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.TrickySubstitution.v))) |x#0@@0|)))
(|$let#32$canCall| $Heap@@0 this@@1 |f#0|)) (= (_module.TrickySubstitution.F4 $Heap@@0 this@@1 |x#0@@0|) (let ((|f#0@@0| (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.TrickySubstitution.v))) |x#0@@0|)))
(let ((|g#0| (|$let#32_g| $Heap@@0 this@@1 |f#0@@0|)))
|g#0|)))))
 :qid |LetExprdfy.193:18|
 :skolemid |2415|
 :pattern ( (_module.TrickySubstitution.F4 $Heap@@0 this@@1 |x#0@@0|) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((x@@9 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@9))) (Lit BoxType ($Box intType (int_2_U x@@9))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |1721|
 :pattern ( ($Box intType (int_2_U (LitInt x@@9))))
)))
(assert (forall ((x@@10 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@10)) (Lit BoxType ($Box T@@3 x@@10)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1719|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@10)))
)))
(assert (forall ((h@@0 T@U) (v@@0 T@U) ) (! ($IsAlloc intType v@@0 TInt h@@0)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |1764|
 :pattern ( ($IsAlloc intType v@@0 TInt h@@0))
)))
(assert (forall ((v@@1 T@U) ) (! ($Is intType v@@1 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |1743|
 :pattern ( ($Is intType v@@1 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@@1 () T@U)
(declare-fun this@@2 () T@U)
(declare-fun |x#0@@1| () Int)
(declare-fun |b$reqreads#3@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun |f#Z#0@0| () Int)
(declare-fun |g#1@0| () Int)
(declare-fun |b$reqreads#2@0| () Bool)
(declare-fun |let#0#0#0| () Int)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun |b$reqreads#1@0| () Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.TrickySubstitution.F4)
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
 (=> (= (ControlFlow 0 0) 17) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 8) (- 0 7)) (= (_module.TrickySubstitution.F4 $Heap@@1 this@@2 |x#0@@1|) (LitInt 5)))))
(let ((anon8_Then_correct  (=> (= |b$reqreads#3@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@2 _module.TrickySubstitution.w))) (and (=> (= (ControlFlow 0 9) (- 0 12)) (or (and ($Is intType (int_2_U (+ |f#Z#0@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.TrickySubstitution.w))))) TInt) (= (+ |f#Z#0@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.TrickySubstitution.w)))) (+ |f#Z#0@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.TrickySubstitution.w)))))) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (= (+ |f#Z#0@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.TrickySubstitution.w)))) (LitInt 0))) (exists ((|g#2| Int) ) (! (= (+ |f#Z#0@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.TrickySubstitution.w)))) |g#2|)
 :qid |LetExprdfy.199:9|
 :skolemid |2416|
))))) (=> (or (and ($Is intType (int_2_U (+ |f#Z#0@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.TrickySubstitution.w))))) TInt) (= (+ |f#Z#0@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.TrickySubstitution.w)))) (+ |f#Z#0@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.TrickySubstitution.w)))))) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (= (+ |f#Z#0@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.TrickySubstitution.w)))) (LitInt 0))) (exists ((|g#2@@0| Int) ) (! (= (+ |f#Z#0@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.TrickySubstitution.w)))) |g#2@@0|)
 :qid |LetExprdfy.199:9|
 :skolemid |2416|
)))) (=> (and (and (= (+ |f#Z#0@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.TrickySubstitution.w)))) |g#1@0|) (|$let#32$canCall| $Heap@@1 this@@2 |f#Z#0@0|)) (and (= (_module.TrickySubstitution.F4 $Heap@@1 this@@2 |x#0@@1|) |g#1@0|) ($Is intType (int_2_U (_module.TrickySubstitution.F4 $Heap@@1 this@@2 |x#0@@1|)) TInt))) (and (=> (= (ControlFlow 0 9) (- 0 11)) |b$reqreads#2@0|) (=> |b$reqreads#2@0| (and (=> (= (ControlFlow 0 9) (- 0 10)) |b$reqreads#3@0|) (=> |b$reqreads#3@0| (=> (= (ControlFlow 0 9) 8) GeneratedUnifiedExit_correct)))))))))))
(let ((anon8_Else_correct true))
(let ((anon7_Else_correct  (=> (and (and (= |b$reqreads#2@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@2 _module.TrickySubstitution.v))) (= |let#0#0#0| (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.TrickySubstitution.v))) |x#0@@1|))) (and ($Is intType (int_2_U |let#0#0#0|) TInt) (= |f#Z#0@0| |let#0#0#0|))) (and (=> (= (ControlFlow 0 13) 9) anon8_Then_correct) (=> (= (ControlFlow 0 13) 6) anon8_Else_correct)))))
(let ((anon7_Then_correct  (=> (and ($IsAllocBox ($Box refType this@@2) Tclass._module.TrickySubstitution? $Heap@@1) ($IsAlloc intType (int_2_U |x#0@@1|) TInt $Heap@@1)) (and (=> (= (ControlFlow 0 2) (- 0 5)) (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.TrickySubstitution.v))) |x#0@@1|) (LitInt 3))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.TrickySubstitution.w))) (LitInt 2))) (=> (and (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.TrickySubstitution.v))) |x#0@@1|) (LitInt 3)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.TrickySubstitution.w))) (LitInt 2))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (or (<= 0 |x#0@@1|) (and (|Set#Subset| (|Set#UnionOne| |Set#Empty| ($Box refType this@@2)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@2))) (not (|Set#Subset| (|Set#UnionOne| |Set#Empty| ($Box refType this@@2)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@2)))))) (= |x#0@@1| |x#0@@1|))) (=> (or (or (<= 0 |x#0@@1|) (and (|Set#Subset| (|Set#UnionOne| |Set#Empty| ($Box refType this@@2)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@2))) (not (|Set#Subset| (|Set#UnionOne| |Set#Empty| ($Box refType this@@2)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@2)))))) (= |x#0@@1| |x#0@@1|)) (=> (= (ControlFlow 0 2) (- 0 1)) (or (and (= this@@2 this@@2) (= |x#0@@1| |x#0@@1|)) (or (and (|Set#Subset| (|Set#UnionOne| |Set#Empty| ($Box refType this@@2)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@2))) (not (|Set#Subset| (|Set#UnionOne| |Set#Empty| ($Box refType this@@2)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@2))))) (and (|Set#Equal| (|Set#UnionOne| |Set#Empty| ($Box refType this@@2)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@2))) (< |x#0@@1| |x#0@@1|)))))))))))))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#30| null $Heap@@1 alloc this@@2)) (=> (and (and (= |b$reqreads#0@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@2 _module.TrickySubstitution.v))) (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.TrickySubstitution.v))) |x#0@@1|) (LitInt 3))) (and (= |b$reqreads#1@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@2 _module.TrickySubstitution.w))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.TrickySubstitution.w))) (LitInt 2)))) (and (=> (= (ControlFlow 0 14) (- 0 16)) |b$reqreads#0@0|) (=> |b$reqreads#0@0| (and (=> (= (ControlFlow 0 14) (- 0 15)) |b$reqreads#1@0|) (=> |b$reqreads#1@0| (and (=> (= (ControlFlow 0 14) 2) anon7_Then_correct) (=> (= (ControlFlow 0 14) 13) anon7_Else_correct))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (=> (and (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass._module.TrickySubstitution) ($IsAlloc refType this@@2 Tclass._module.TrickySubstitution $Heap@@1))) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 17) 14))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
