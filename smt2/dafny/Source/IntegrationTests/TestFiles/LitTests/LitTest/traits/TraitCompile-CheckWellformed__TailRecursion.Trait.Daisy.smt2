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
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun Tagclass._System.___hPartialFunc1 () T@U)
(declare-fun Tagclass._System.___hTotalFunc1 () T@U)
(declare-fun Tagclass.TailRecursion.Trait? () T@U)
(declare-fun class.TailRecursion.Trait? () T@U)
(declare-fun Tagclass.TailRecursion.Trait () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
(declare-fun |tytagFamily$_#PartialFunc1| () T@U)
(declare-fun |tytagFamily$_#TotalFunc1| () T@U)
(declare-fun tytagFamily$Trait () T@U)
(declare-fun field$h () T@U)
(declare-fun field$K () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun refType () T@T)
(declare-fun Tclass.TailRecursion.Trait (T@U) T@U)
(declare-fun Tclass.TailRecursion.Trait? (T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun TailRecursion.Trait.Daisy (T@U T@U T@U T@U T@U Int) T@U)
(declare-fun |TailRecursion.Trait.Daisy#canCall| (T@U T@U T@U T@U Int) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun null () T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun TailRecursion.Trait.Combine (T@U T@U T@U T@U) T@U)
(declare-fun |TailRecursion.Trait.Combine#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun TailRecursion.Trait.h () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun TailRecursion.Trait.K () T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun Reads1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun TailRecursion.Trait.Id (T@U T@U T@U) T@U)
(declare-fun |TailRecursion.Trait.Id#canCall| (T@U T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun |TailRecursion.Trait.Id#Handle| (T@U T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#1| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1 (T@U T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1 (T@U T@U) T@U)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun |TailRecursion.Trait.Id#requires| (T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_1 (T@U) T@U)
(declare-fun Tclass.TailRecursion.Trait?_0 (T@U) T@U)
(declare-fun Tclass.TailRecursion.Trait_0 (T@U) T@U)
(declare-fun implements$TailRecursion.Trait (T@U T@U) Bool)
(declare-fun dtype (T@U) T@U)
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
(assert (distinct alloc allocName Tagclass._System.nat Tagclass._System.___hFunc1 Tagclass._System.___hPartialFunc1 Tagclass._System.___hTotalFunc1 Tagclass.TailRecursion.Trait? class.TailRecursion.Trait? Tagclass.TailRecursion.Trait tytagFamily$nat |tytagFamily$_#Func1| |tytagFamily$_#PartialFunc1| |tytagFamily$_#TotalFunc1| tytagFamily$Trait field$h field$K)
)
(assert (= (FDim alloc) 0))
(assert (= (DeclName alloc) allocName))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |5353|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |5354|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |5585|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (forall ((a@@1 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@1 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |5352|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o))
)))
(assert (= (Ctor refType) 3))
(assert (forall ((TailRecursion.Trait$G T@U) (|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass.TailRecursion.Trait TailRecursion.Trait$G) $h@@0) ($IsAlloc refType |c#0| (Tclass.TailRecursion.Trait? TailRecursion.Trait$G) $h@@0))
 :qid |unknown.0:0|
 :skolemid |5814|
 :pattern ( ($IsAlloc refType |c#0| (Tclass.TailRecursion.Trait TailRecursion.Trait$G) $h@@0))
 :pattern ( ($IsAlloc refType |c#0| (Tclass.TailRecursion.Trait? TailRecursion.Trait$G) $h@@0))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |5349|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (= (Ctor HandleTypeType) 4))
(assert (forall ((f T@U) (t0 T@U) (t1 T@U) (u0 T@U) (u1 T@U) ) (!  (=> (and (and ($Is HandleTypeType f (Tclass._System.___hFunc1 t0 t1)) (forall ((bx T@U) ) (!  (=> ($IsBox bx u0) ($IsBox bx t0))
 :qid |unknown.0:0|
 :skolemid |5629|
 :pattern ( ($IsBox bx u0))
 :pattern ( ($IsBox bx t0))
))) (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 t1) ($IsBox bx@@0 u1))
 :qid |unknown.0:0|
 :skolemid |5630|
 :pattern ( ($IsBox bx@@0 t1))
 :pattern ( ($IsBox bx@@0 u1))
))) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0 u1)))
 :qid |unknown.0:0|
 :skolemid |5631|
 :pattern ( ($Is HandleTypeType f (Tclass._System.___hFunc1 t0 t1)) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0 u1)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((TailRecursion.Trait$G@@0 T@U) ($ly T@U) ($Heap T@U) (this T@U) (|g#0| T@U) (|n#0| Int) ) (!  (=> (or (|TailRecursion.Trait.Daisy#canCall| TailRecursion.Trait$G@@0 $Heap this |g#0| |n#0|) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this (Tclass.TailRecursion.Trait TailRecursion.Trait$G@@0)) ($IsAlloc refType this (Tclass.TailRecursion.Trait TailRecursion.Trait$G@@0) $Heap)))) (and ($IsBox |g#0| TailRecursion.Trait$G@@0) ($IsAllocBox |g#0| TailRecursion.Trait$G@@0 $Heap))) (<= (LitInt 0) |n#0|)))) ($IsBox (TailRecursion.Trait.Daisy TailRecursion.Trait$G@@0 $ly $Heap this |g#0| |n#0|) TailRecursion.Trait$G@@0))
 :qid |unknown.0:0|
 :skolemid |5799|
 :pattern ( (TailRecursion.Trait.Daisy TailRecursion.Trait$G@@0 $ly $Heap this |g#0| |n#0|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((TailRecursion.Trait$G@@1 T@U) (this@@0 T@U) (|g0#0| T@U) (|g1#0| T@U) ) (!  (=> (or (|TailRecursion.Trait.Combine#canCall| TailRecursion.Trait$G@@1 this@@0 |g0#0| |g1#0|) (and (< 1 $FunctionContextHeight) (and (and (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 (Tclass.TailRecursion.Trait TailRecursion.Trait$G@@1))) ($IsBox |g0#0| TailRecursion.Trait$G@@1)) ($IsBox |g1#0| TailRecursion.Trait$G@@1)))) ($IsBox (TailRecursion.Trait.Combine TailRecursion.Trait$G@@1 this@@0 |g0#0| |g1#0|) TailRecursion.Trait$G@@1))
 :qid |unknown.0:0|
 :skolemid |5792|
 :pattern ( (TailRecursion.Trait.Combine TailRecursion.Trait$G@@1 this@@0 |g0#0| |g1#0|))
))))
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
(assert (forall ((TailRecursion.Trait$G@@2 T@U) ($o T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o (Tclass.TailRecursion.Trait? TailRecursion.Trait$G@@2) $h@@1)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |5779|
 :pattern ( ($IsAlloc refType $o (Tclass.TailRecursion.Trait? TailRecursion.Trait$G@@2) $h@@1))
)))
(assert (= (FDim TailRecursion.Trait.h) 0))
(assert (= (FieldOfDecl class.TailRecursion.Trait? field$h) TailRecursion.Trait.h))
(assert  (not ($IsGhostField TailRecursion.Trait.h)))
(assert (= (FDim TailRecursion.Trait.K) 0))
(assert (= (FieldOfDecl class.TailRecursion.Trait? field$K) TailRecursion.Trait.K))
(assert  (not ($IsGhostField TailRecursion.Trait.K)))
(assert (forall ((x@@5 Int) ) (! (= (LitInt x@@5) x@@5)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |5241|
 :pattern ( (LitInt x@@5))
)))
(assert (forall ((x@@6 T@U) (T T@T) ) (! (= (Lit T x@@6) x@@6)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |5239|
 :pattern ( (Lit T x@@6))
)))
(assert (forall ((t0@@1 T@U) (t1@@1 T@U) (heap T@U) (f@@0 T@U) (bx0 T@U) ) (!  (=> (and ($IsGoodHeap heap) (and ($IsBox bx0 t0@@1) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@1 t1@@1)))) (= (|Set#Equal| (Reads1 t0@@1 t1@@1 $OneHeap f@@0 bx0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@1 t1@@1 heap f@@0 bx0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |5625|
 :pattern ( (Reads1 t0@@1 t1@@1 $OneHeap f@@0 bx0) ($IsGoodHeap heap))
 :pattern ( (Reads1 t0@@1 t1@@1 heap f@@0 bx0))
)))
(assert (forall ((a@@2 T@U) (b T@U) ) (! (= (|Set#Subset| a@@2 b) (forall ((o@@1 T@U) ) (!  (=> (|Set#IsMember| a@@2 o@@1) (|Set#IsMember| b o@@1))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |5370|
 :pattern ( (|Set#IsMember| a@@2 o@@1))
 :pattern ( (|Set#IsMember| b o@@1))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |5371|
 :pattern ( (|Set#Subset| a@@2 b))
)))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |5250|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((TailRecursion.Trait$G@@3 T@U) (this@@1 T@U) (|g#0@@0| T@U) ) (!  (=> (or (|TailRecursion.Trait.Id#canCall| TailRecursion.Trait$G@@3 this@@1 |g#0@@0|) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 (Tclass.TailRecursion.Trait TailRecursion.Trait$G@@3))) ($IsBox |g#0@@0| TailRecursion.Trait$G@@3)))) ($IsBox (TailRecursion.Trait.Id TailRecursion.Trait$G@@3 this@@1 |g#0@@0|) TailRecursion.Trait$G@@3))
 :qid |unknown.0:0|
 :skolemid |5787|
 :pattern ( (TailRecursion.Trait.Id TailRecursion.Trait$G@@3 this@@1 |g#0@@0|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((TailRecursion.Trait$G@@4 T@U) ($ly@@0 T@U) ($Heap@@0 T@U) (this@@2 T@U) (|g#0@@1| T@U) (|n#0@@0| Int) ) (!  (=> (or (|TailRecursion.Trait.Daisy#canCall| TailRecursion.Trait$G@@4 $Heap@@0 this@@2 |g#0@@1| |n#0@@0|) (and (< 2 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $Heap@@0) (or (not (= this@@2 null)) (not true))) ($IsAlloc refType this@@2 (Tclass.TailRecursion.Trait TailRecursion.Trait$G@@4) $Heap@@0)) (and ($IsBox |g#0@@1| TailRecursion.Trait$G@@4) ($IsAllocBox |g#0@@1| TailRecursion.Trait$G@@4 $Heap@@0))) (<= (LitInt 0) |n#0@@0|)))) ($IsAllocBox (TailRecursion.Trait.Daisy TailRecursion.Trait$G@@4 $ly@@0 $Heap@@0 this@@2 |g#0@@1| |n#0@@0|) TailRecursion.Trait$G@@4 $Heap@@0))
 :qid |unknown.0:0|
 :skolemid |5800|
 :pattern ( ($IsAllocBox (TailRecursion.Trait.Daisy TailRecursion.Trait$G@@4 $ly@@0 $Heap@@0 this@@2 |g#0@@1| |n#0@@0|) TailRecursion.Trait$G@@4 $Heap@@0))
))))
(assert (forall ((TailRecursion.Trait$G@@5 T@U) ($h@@2 T@U) ($o@@0 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@0 null)) (not true)) ($Is refType $o@@0 (Tclass.TailRecursion.Trait? TailRecursion.Trait$G@@5)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@0) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@0) TailRecursion.Trait.h) TailRecursion.Trait$G@@5 $h@@2))
 :qid |unknown.0:0|
 :skolemid |5781|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@0) TailRecursion.Trait.h) (Tclass.TailRecursion.Trait? TailRecursion.Trait$G@@5))
)))
(assert (forall ((TailRecursion.Trait$G@@6 T@U) ($h@@3 T@U) ($o@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@1 null)) (not true)) ($Is refType $o@@1 (Tclass.TailRecursion.Trait? TailRecursion.Trait$G@@6)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@1) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@1) TailRecursion.Trait.K) TailRecursion.Trait$G@@6 $h@@3))
 :qid |unknown.0:0|
 :skolemid |5783|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@1) TailRecursion.Trait.K) (Tclass.TailRecursion.Trait? TailRecursion.Trait$G@@6))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |5584|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert ($IsGhostField alloc))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((TailRecursion.Trait$G@@7 T@U) (|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| (Tclass.TailRecursion.Trait TailRecursion.Trait$G@@7))  (and ($Is refType |c#0@@0| (Tclass.TailRecursion.Trait? TailRecursion.Trait$G@@7)) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |5813|
 :pattern ( ($Is refType |c#0@@0| (Tclass.TailRecursion.Trait TailRecursion.Trait$G@@7)))
 :pattern ( ($Is refType |c#0@@0| (Tclass.TailRecursion.Trait? TailRecursion.Trait$G@@7)))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |5263|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((TailRecursion.Trait$G@@8 T@U) ) (!  (and (= (Tag (Tclass.TailRecursion.Trait? TailRecursion.Trait$G@@8)) Tagclass.TailRecursion.Trait?) (= (TagFamily (Tclass.TailRecursion.Trait? TailRecursion.Trait$G@@8)) tytagFamily$Trait))
 :qid |unknown.0:0|
 :skolemid |5773|
 :pattern ( (Tclass.TailRecursion.Trait? TailRecursion.Trait$G@@8))
)))
(assert (forall ((TailRecursion.Trait$G@@9 T@U) ) (!  (and (= (Tag (Tclass.TailRecursion.Trait TailRecursion.Trait$G@@9)) Tagclass.TailRecursion.Trait) (= (TagFamily (Tclass.TailRecursion.Trait TailRecursion.Trait$G@@9)) tytagFamily$Trait))
 :qid |unknown.0:0|
 :skolemid |5784|
 :pattern ( (Tclass.TailRecursion.Trait TailRecursion.Trait$G@@9))
)))
(assert (forall ((TailRecursion.Trait$G@@10 T@U) ($self T@U) ($heap T@U) (|$fh$0x#0| T@U) ) (! (= (TailRecursion.Trait.Id TailRecursion.Trait$G@@10 $self |$fh$0x#0|) (Apply1 TailRecursion.Trait$G@@10 TailRecursion.Trait$G@@10 $heap (|TailRecursion.Trait.Id#Handle| TailRecursion.Trait$G@@10 $self) |$fh$0x#0|))
 :qid |unknown.0:0|
 :skolemid |5805|
 :pattern ( (TailRecursion.Trait.Id TailRecursion.Trait$G@@10 $self |$fh$0x#0|) ($IsGoodHeap $heap))
)))
(assert  (and (forall ((t0@@2 T@T) (t1@@2 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@2 t1@@2 t2 (MapType1Store t0@@2 t1@@2 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@1 T@T) (u1@@1 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@1 u1@@1 u2 (MapType1Store u0@@1 u1@@1 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@1 u1@@1 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@2 T@T) (u1@@2 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@2 u1@@2 u2@@0 (MapType1Store u0@@2 u1@@2 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@2 u1@@2 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@2 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3|) $o@@2 $f))  (=> (and (or (not (= $o@@2 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@2) |l#2|)))) (= $o@@2 |l#3|)))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |8406|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3|) $o@@2 $f))
)))
(assert (forall ((TailRecursion.Trait$G@@11 T@U) ($h@@4 T@U) ($o@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@3 null)) (not true)) ($Is refType $o@@3 (Tclass.TailRecursion.Trait? TailRecursion.Trait$G@@11)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) TailRecursion.Trait.h) TailRecursion.Trait$G@@11))
 :qid |unknown.0:0|
 :skolemid |5780|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) TailRecursion.Trait.h) (Tclass.TailRecursion.Trait? TailRecursion.Trait$G@@11))
)))
(assert (forall ((TailRecursion.Trait$G@@12 T@U) ($h@@5 T@U) ($o@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@4 null)) (not true)) ($Is refType $o@@4 (Tclass.TailRecursion.Trait? TailRecursion.Trait$G@@12)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) TailRecursion.Trait.K) TailRecursion.Trait$G@@12))
 :qid |unknown.0:0|
 :skolemid |5782|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) TailRecursion.Trait.K) (Tclass.TailRecursion.Trait? TailRecursion.Trait$G@@12))
)))
(assert (forall ((|#$T0| T@U) (|#$R| T@U) (|f#0| T@U) ($h@@6 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h@@6) ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hFunc1 |#$T0| |#$R|) $h@@6))
 :qid |unknown.0:0|
 :skolemid |5643|
 :pattern ( ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h@@6))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$R@@0| T@U) (|f#0@@0| T@U) ($h@@7 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc1 |#$T0@@0| |#$R@@0|) $h@@7) ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hPartialFunc1 |#$T0@@0| |#$R@@0|) $h@@7))
 :qid |unknown.0:0|
 :skolemid |5650|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc1 |#$T0@@0| |#$R@@0|) $h@@7))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@1 T@U) (TailRecursion.Trait$G@@13 T@U) (this@@3 T@U) (|g0#0@@0| T@U) (|g1#0@@0| T@U) ) (!  (=> (and (or (|TailRecursion.Trait.Combine#canCall| TailRecursion.Trait$G@@13 this@@3 |g0#0@@0| |g1#0@@0|) (and (< 1 $FunctionContextHeight) (and (and (and (or (not (= this@@3 null)) (not true)) ($IsAlloc refType this@@3 (Tclass.TailRecursion.Trait TailRecursion.Trait$G@@13) $Heap@@1)) (and ($IsBox |g0#0@@0| TailRecursion.Trait$G@@13) ($IsAllocBox |g0#0@@0| TailRecursion.Trait$G@@13 $Heap@@1))) (and ($IsBox |g1#0@@0| TailRecursion.Trait$G@@13) ($IsAllocBox |g1#0@@0| TailRecursion.Trait$G@@13 $Heap@@1))))) ($IsGoodHeap $Heap@@1)) ($IsAllocBox (TailRecursion.Trait.Combine TailRecursion.Trait$G@@13 this@@3 |g0#0@@0| |g1#0@@0|) TailRecursion.Trait$G@@13 $Heap@@1))
 :qid |TraitCompiledfy.699:14|
 :skolemid |5793|
 :pattern ( ($IsAllocBox (TailRecursion.Trait.Combine TailRecursion.Trait$G@@13 this@@3 |g0#0@@0| |g1#0@@0|) TailRecursion.Trait$G@@13 $Heap@@1))
))))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |5583|
 :pattern ( ($IsBox bx@@1 Tclass._System.nat))
)))
(assert (forall ((f@@1 T@U) (t0@@3 T@U) (t1@@3 T@U) (h@@0 T@U) ) (!  (=> (and ($IsGoodHeap h@@0) ($IsAlloc HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@3 t1@@3) h@@0)) (forall ((bx0@@0 T@U) ) (!  (=> (and ($IsAllocBox bx0@@0 t0@@3 h@@0) (Requires1 t0@@3 t1@@3 h@@0 f@@1 bx0@@0)) ($IsAllocBox (Apply1 t0@@3 t1@@3 h@@0 f@@1 bx0@@0) t1@@3 h@@0))
 :qid |unknown.0:0|
 :skolemid |5635|
 :pattern ( (Apply1 t0@@3 t1@@3 h@@0 f@@1 bx0@@0))
)))
 :qid |unknown.0:0|
 :skolemid |5636|
 :pattern ( ($IsAlloc HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@3 t1@@3) h@@0))
)))
(assert (forall ((TailRecursion.Trait$G@@14 T@U) ($self@@0 T@U) ($heap@@0 T@U) (|$fh$0x#0@@0| T@U) ) (! (= (Requires1 TailRecursion.Trait$G@@14 TailRecursion.Trait$G@@14 $heap@@0 (|TailRecursion.Trait.Id#Handle| TailRecursion.Trait$G@@14 $self@@0) |$fh$0x#0@@0|) (|TailRecursion.Trait.Id#requires| TailRecursion.Trait$G@@14 $self@@0 |$fh$0x#0@@0|))
 :qid |unknown.0:0|
 :skolemid |5803|
 :pattern ( (Requires1 TailRecursion.Trait$G@@14 TailRecursion.Trait$G@@14 $heap@@0 (|TailRecursion.Trait.Id#Handle| TailRecursion.Trait$G@@14 $self@@0) |$fh$0x#0@@0|))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((TailRecursion.Trait$G@@15 T@U) (this@@4 T@U) (|g#0@@2| T@U) ) (!  (=> (or (|TailRecursion.Trait.Id#canCall| TailRecursion.Trait$G@@15 (Lit refType this@@4) (Lit BoxType |g#0@@2|)) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@4 null)) (not true)) ($Is refType this@@4 (Tclass.TailRecursion.Trait TailRecursion.Trait$G@@15))) ($IsBox |g#0@@2| TailRecursion.Trait$G@@15)))) (= (TailRecursion.Trait.Id TailRecursion.Trait$G@@15 (Lit refType this@@4) (Lit BoxType |g#0@@2|)) (Lit BoxType |g#0@@2|)))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |5791|
 :pattern ( (TailRecursion.Trait.Id TailRecursion.Trait$G@@15 (Lit refType this@@4) (Lit BoxType |g#0@@2|)))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@2 T@U) (TailRecursion.Trait$G@@16 T@U) (this@@5 T@U) (|g#0@@3| T@U) ) (!  (=> (and (or (|TailRecursion.Trait.Id#canCall| TailRecursion.Trait$G@@16 this@@5 |g#0@@3|) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@5 null)) (not true)) ($IsAlloc refType this@@5 (Tclass.TailRecursion.Trait TailRecursion.Trait$G@@16) $Heap@@2)) (and ($IsBox |g#0@@3| TailRecursion.Trait$G@@16) ($IsAllocBox |g#0@@3| TailRecursion.Trait$G@@16 $Heap@@2))))) ($IsGoodHeap $Heap@@2)) ($IsAllocBox (TailRecursion.Trait.Id TailRecursion.Trait$G@@16 this@@5 |g#0@@3|) TailRecursion.Trait$G@@16 $Heap@@2))
 :qid |TraitCompiledfy.698:14|
 :skolemid |5788|
 :pattern ( ($IsAllocBox (TailRecursion.Trait.Id TailRecursion.Trait$G@@16 this@@5 |g#0@@3|) TailRecursion.Trait$G@@16 $Heap@@2))
))))
(assert (forall ((TailRecursion.Trait$G@@17 T@U) ($ly@@1 T@U) ($Heap@@3 T@U) (this@@6 T@U) (|g#0@@4| T@U) (|n#0@@1| Int) ) (! (= (TailRecursion.Trait.Daisy TailRecursion.Trait$G@@17 ($LS $ly@@1) $Heap@@3 this@@6 |g#0@@4| |n#0@@1|) (TailRecursion.Trait.Daisy TailRecursion.Trait$G@@17 $ly@@1 $Heap@@3 this@@6 |g#0@@4| |n#0@@1|))
 :qid |unknown.0:0|
 :skolemid |5795|
 :pattern ( (TailRecursion.Trait.Daisy TailRecursion.Trait$G@@17 ($LS $ly@@1) $Heap@@3 this@@6 |g#0@@4| |n#0@@1|))
)))
(assert (forall ((a@@3 T@U) (b@@0 T@U) ) (!  (=> (|Set#Equal| a@@3 b@@0) (= a@@3 b@@0))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |5374|
 :pattern ( (|Set#Equal| a@@3 b@@0))
)))
(assert (forall ((TailRecursion.Trait$G@@18 T@U) ($self@@1 T@U) ($heap@@1 T@U) (|$fh$0x#0@@1| T@U) ) (! (= (Apply1 TailRecursion.Trait$G@@18 TailRecursion.Trait$G@@18 $heap@@1 (|TailRecursion.Trait.Id#Handle| TailRecursion.Trait$G@@18 $self@@1) |$fh$0x#0@@1|) (TailRecursion.Trait.Id TailRecursion.Trait$G@@18 $self@@1 |$fh$0x#0@@1|))
 :qid |unknown.0:0|
 :skolemid |5802|
 :pattern ( (Apply1 TailRecursion.Trait$G@@18 TailRecursion.Trait$G@@18 $heap@@1 (|TailRecursion.Trait.Id#Handle| TailRecursion.Trait$G@@18 $self@@1) |$fh$0x#0@@1|))
)))
(assert (forall ((f@@2 T@U) (t0@@4 T@U) (t1@@4 T@U) ) (! (= ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@4 t1@@4)) (forall ((h@@1 T@U) (bx0@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@1) ($IsBox bx0@@1 t0@@4)) (Requires1 t0@@4 t1@@4 h@@1 f@@2 bx0@@1)) ($IsBox (Apply1 t0@@4 t1@@4 h@@1 f@@2 bx0@@1) t1@@4))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |5627|
 :pattern ( (Apply1 t0@@4 t1@@4 h@@1 f@@2 bx0@@1))
)))
 :qid |unknown.0:0|
 :skolemid |5628|
 :pattern ( ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@4 t1@@4)))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |5331|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |5262|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$R@@1| T@U) ) (! (= (Tclass._System.___hFunc1_0 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)) |#$T0@@1|)
 :qid |unknown.0:0|
 :skolemid |5607|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$R@@2| T@U) ) (! (= (Tclass._System.___hFunc1_1 (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) |#$R@@2|)
 :qid |unknown.0:0|
 :skolemid |5608|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|))
)))
(assert (forall ((|#$T0@@3| T@U) (|#$R@@3| T@U) ) (! (= (Tclass._System.___hPartialFunc1_0 (Tclass._System.___hPartialFunc1 |#$T0@@3| |#$R@@3|)) |#$T0@@3|)
 :qid |unknown.0:0|
 :skolemid |5638|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@3| |#$R@@3|))
)))
(assert (forall ((|#$T0@@4| T@U) (|#$R@@4| T@U) ) (! (= (Tclass._System.___hPartialFunc1_1 (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@4|)) |#$R@@4|)
 :qid |unknown.0:0|
 :skolemid |5639|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@4|))
)))
(assert (forall ((|#$T0@@5| T@U) (|#$R@@5| T@U) ) (! (= (Tclass._System.___hTotalFunc1_0 (Tclass._System.___hTotalFunc1 |#$T0@@5| |#$R@@5|)) |#$T0@@5|)
 :qid |unknown.0:0|
 :skolemid |5645|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@5| |#$R@@5|))
)))
(assert (forall ((|#$T0@@6| T@U) (|#$R@@6| T@U) ) (! (= (Tclass._System.___hTotalFunc1_1 (Tclass._System.___hTotalFunc1 |#$T0@@6| |#$R@@6|)) |#$R@@6|)
 :qid |unknown.0:0|
 :skolemid |5646|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@6| |#$R@@6|))
)))
(assert (forall ((TailRecursion.Trait$G@@19 T@U) ) (! (= (Tclass.TailRecursion.Trait?_0 (Tclass.TailRecursion.Trait? TailRecursion.Trait$G@@19)) TailRecursion.Trait$G@@19)
 :qid |unknown.0:0|
 :skolemid |5774|
 :pattern ( (Tclass.TailRecursion.Trait? TailRecursion.Trait$G@@19))
)))
(assert (forall ((TailRecursion.Trait$G@@20 T@U) ) (! (= (Tclass.TailRecursion.Trait_0 (Tclass.TailRecursion.Trait TailRecursion.Trait$G@@20)) TailRecursion.Trait$G@@20)
 :qid |unknown.0:0|
 :skolemid |5785|
 :pattern ( (Tclass.TailRecursion.Trait TailRecursion.Trait$G@@20))
)))
(assert (forall ((x@@8 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |5249|
 :pattern ( ($Box T@@3 x@@8))
)))
(assert (forall ((|#$T0@@7| T@U) (|#$R@@7| T@U) (|f#0@@1| T@U) ) (! (= ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc1 |#$T0@@7| |#$R@@7|))  (and ($Is HandleTypeType |f#0@@1| (Tclass._System.___hPartialFunc1 |#$T0@@7| |#$R@@7|)) (forall ((|x0#0| T@U) ) (!  (=> ($IsBox |x0#0| |#$T0@@7|) (Requires1 |#$T0@@7| |#$R@@7| $OneHeap |f#0@@1| |x0#0|))
 :qid |unknown.0:0|
 :skolemid |5648|
))))
 :qid |unknown.0:0|
 :skolemid |5649|
 :pattern ( ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc1 |#$T0@@7| |#$R@@7|)))
)))
(assert (forall ((|#$T0@@8| T@U) (|#$R@@8| T@U) (|f#0@@2| T@U) ) (! (= ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|))  (and ($Is HandleTypeType |f#0@@2| (Tclass._System.___hFunc1 |#$T0@@8| |#$R@@8|)) (forall ((|x0#0@@0| T@U) ) (!  (=> ($IsBox |x0#0@@0| |#$T0@@8|) (|Set#Equal| (Reads1 |#$T0@@8| |#$R@@8| $OneHeap |f#0@@2| |x0#0@@0|) |Set#Empty|))
 :qid |unknown.0:0|
 :skolemid |5641|
))))
 :qid |unknown.0:0|
 :skolemid |5642|
 :pattern ( ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|)))
)))
(assert (forall ((TailRecursion.Trait$G@@21 T@U) (this@@7 T@U) (|g#0@@5| T@U) ) (!  (=> (and (and (or (not (= this@@7 null)) (not true)) ($Is refType this@@7 (Tclass.TailRecursion.Trait TailRecursion.Trait$G@@21))) ($IsBox |g#0@@5| TailRecursion.Trait$G@@21)) (= (|TailRecursion.Trait.Id#requires| TailRecursion.Trait$G@@21 this@@7 |g#0@@5|) true))
 :qid |unknown.0:0|
 :skolemid |5789|
 :pattern ( (|TailRecursion.Trait.Id#requires| TailRecursion.Trait$G@@21 this@@7 |g#0@@5|))
)))
(assert (forall ((f@@3 T@U) (t0@@5 T@U) (t1@@5 T@U) (h@@2 T@U) ) (!  (=> ($IsGoodHeap h@@2) (= ($IsAlloc HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@5 t1@@5) h@@2) (forall ((bx0@@2 T@U) ) (!  (=> (and (and ($IsBox bx0@@2 t0@@5) ($IsAllocBox bx0@@2 t0@@5 h@@2)) (Requires1 t0@@5 t1@@5 h@@2 f@@3 bx0@@2)) (forall ((r T@U) ) (!  (=> (and (or (not (= r null)) (not true)) (|Set#IsMember| (Reads1 t0@@5 t1@@5 h@@2 f@@3 bx0@@2) ($Box refType r))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@2 r) alloc))))
 :qid |unknown.0:0|
 :skolemid |5632|
 :pattern ( (|Set#IsMember| (Reads1 t0@@5 t1@@5 h@@2 f@@3 bx0@@2) ($Box refType r)))
)))
 :qid |unknown.0:0|
 :skolemid |5633|
 :pattern ( (Apply1 t0@@5 t1@@5 h@@2 f@@3 bx0@@2))
 :pattern ( (Reads1 t0@@5 t1@@5 h@@2 f@@3 bx0@@2))
))))
 :qid |unknown.0:0|
 :skolemid |5634|
 :pattern ( ($IsAlloc HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@5 t1@@5) h@@2))
)))
(assert (forall ((|#$T0@@9| T@U) (|#$R@@9| T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@2)) bx@@2) ($Is HandleTypeType ($Unbox HandleTypeType bx@@2) (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|))))
 :qid |unknown.0:0|
 :skolemid |5609|
 :pattern ( ($IsBox bx@@2 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|)))
)))
(assert (forall ((|#$T0@@10| T@U) (|#$R@@10| T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@3)) bx@@3) ($Is HandleTypeType ($Unbox HandleTypeType bx@@3) (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|))))
 :qid |unknown.0:0|
 :skolemid |5640|
 :pattern ( ($IsBox bx@@3 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|)))
)))
(assert (forall ((|#$T0@@11| T@U) (|#$R@@11| T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@4)) bx@@4) ($Is HandleTypeType ($Unbox HandleTypeType bx@@4) (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|))))
 :qid |unknown.0:0|
 :skolemid |5647|
 :pattern ( ($IsBox bx@@4 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|)))
)))
(assert (forall ((TailRecursion.Trait$G@@22 T@U) ($o@@5 T@U) ) (! (= ($Is refType $o@@5 (Tclass.TailRecursion.Trait? TailRecursion.Trait$G@@22))  (or (= $o@@5 null) (implements$TailRecursion.Trait (dtype $o@@5) TailRecursion.Trait$G@@22)))
 :qid |unknown.0:0|
 :skolemid |5778|
 :pattern ( ($Is refType $o@@5 (Tclass.TailRecursion.Trait? TailRecursion.Trait$G@@22)))
)))
(assert (forall ((|#$T0@@12| T@U) (|#$R@@12| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |5606|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|))
)))
(assert (forall ((|#$T0@@13| T@U) (|#$R@@13| T@U) ) (!  (and (= (Tag (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|)) Tagclass._System.___hPartialFunc1) (= (TagFamily (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|)) |tytagFamily$_#PartialFunc1|))
 :qid |unknown.0:0|
 :skolemid |5637|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|))
)))
(assert (forall ((|#$T0@@14| T@U) (|#$R@@14| T@U) ) (!  (and (= (Tag (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|)) Tagclass._System.___hTotalFunc1) (= (TagFamily (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|)) |tytagFamily$_#TotalFunc1|))
 :qid |unknown.0:0|
 :skolemid |5644|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|))
)))
(assert (forall (($bx T@U) (TailRecursion.Trait$G@@23 T@U) ($self@@2 T@U) ($heap@@2 T@U) (|$fh$0x#0@@2| T@U) ) (! (= (|Set#IsMember| (Reads1 TailRecursion.Trait$G@@23 TailRecursion.Trait$G@@23 $heap@@2 (|TailRecursion.Trait.Id#Handle| TailRecursion.Trait$G@@23 $self@@2) |$fh$0x#0@@2|) $bx) false)
 :qid |unknown.0:0|
 :skolemid |5804|
 :pattern ( (|Set#IsMember| (Reads1 TailRecursion.Trait$G@@23 TailRecursion.Trait$G@@23 $heap@@2 (|TailRecursion.Trait.Id#Handle| TailRecursion.Trait$G@@23 $self@@2) |$fh$0x#0@@2|) $bx))
)))
(assert (forall ((t0@@6 T@U) (t1@@6 T@U) (heap@@0 T@U) (f@@4 T@U) (bx0@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@0) (and ($IsBox bx0@@3 t0@@6) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc1 t0@@6 t1@@6)))) (|Set#Equal| (Reads1 t0@@6 t1@@6 $OneHeap f@@4 bx0@@3) |Set#Empty|)) (= (Requires1 t0@@6 t1@@6 $OneHeap f@@4 bx0@@3) (Requires1 t0@@6 t1@@6 heap@@0 f@@4 bx0@@3)))
 :qid |unknown.0:0|
 :skolemid |5626|
 :pattern ( (Requires1 t0@@6 t1@@6 $OneHeap f@@4 bx0@@3) ($IsGoodHeap heap@@0))
 :pattern ( (Requires1 t0@@6 t1@@6 heap@@0 f@@4 bx0@@3))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((TailRecursion.Trait$G@@24 T@U) ($ly@@2 T@U) ($Heap@@4 T@U) (this@@8 T@U) (|g#0@@6| T@U) (|n#0@@2| Int) ) (!  (=> (or (|TailRecursion.Trait.Daisy#canCall| TailRecursion.Trait$G@@24 $Heap@@4 this@@8 |g#0@@6| |n#0@@2|) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@4) (and (or (not (= this@@8 null)) (not true)) (and ($Is refType this@@8 (Tclass.TailRecursion.Trait TailRecursion.Trait$G@@24)) ($IsAlloc refType this@@8 (Tclass.TailRecursion.Trait TailRecursion.Trait$G@@24) $Heap@@4)))) ($IsBox |g#0@@6| TailRecursion.Trait$G@@24)) (<= (LitInt 0) |n#0@@2|)))) (and (=> (or (not (= |n#0@@2| (LitInt 0))) (not true)) (and (=> (= |n#0@@2| (LitInt 1)) (let ((|f#0@@3| (|TailRecursion.Trait.Id#Handle| TailRecursion.Trait$G@@24 this@@8)))
(|TailRecursion.Trait.Combine#canCall| TailRecursion.Trait$G@@24 this@@8 (Apply1 TailRecursion.Trait$G@@24 TailRecursion.Trait$G@@24 $Heap@@4 |f#0@@3| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@8) TailRecursion.Trait.h)) (Apply1 TailRecursion.Trait$G@@24 TailRecursion.Trait$G@@24 $Heap@@4 |f#0@@3| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@8) TailRecursion.Trait.K))))) (=> (or (not (= |n#0@@2| (LitInt 1))) (not true)) (|TailRecursion.Trait.Daisy#canCall| TailRecursion.Trait$G@@24 $Heap@@4 this@@8 |g#0@@6| (- |n#0@@2| 2))))) (= (TailRecursion.Trait.Daisy TailRecursion.Trait$G@@24 ($LS $ly@@2) $Heap@@4 this@@8 |g#0@@6| |n#0@@2|) (ite (= |n#0@@2| (LitInt 0)) |g#0@@6| (ite (= |n#0@@2| (LitInt 1)) (let ((|f#0@@4| (|TailRecursion.Trait.Id#Handle| TailRecursion.Trait$G@@24 this@@8)))
(TailRecursion.Trait.Combine TailRecursion.Trait$G@@24 this@@8 (Apply1 TailRecursion.Trait$G@@24 TailRecursion.Trait$G@@24 $Heap@@4 |f#0@@4| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@8) TailRecursion.Trait.h)) (Apply1 TailRecursion.Trait$G@@24 TailRecursion.Trait$G@@24 $Heap@@4 |f#0@@4| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@8) TailRecursion.Trait.K)))) (TailRecursion.Trait.Daisy TailRecursion.Trait$G@@24 $ly@@2 $Heap@@4 this@@8 |g#0@@6| (- |n#0@@2| 2)))))))
 :qid |unknown.0:0|
 :skolemid |5806|
 :pattern ( (TailRecursion.Trait.Daisy TailRecursion.Trait$G@@24 ($LS $ly@@2) $Heap@@4 this@@8 |g#0@@6| |n#0@@2|) ($IsGoodHeap $Heap@@4))
))))
(assert (forall ((TailRecursion.Trait$G@@25 T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass.TailRecursion.Trait? TailRecursion.Trait$G@@25)) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) (Tclass.TailRecursion.Trait? TailRecursion.Trait$G@@25))))
 :qid |unknown.0:0|
 :skolemid |5775|
 :pattern ( ($IsBox bx@@5 (Tclass.TailRecursion.Trait? TailRecursion.Trait$G@@25)))
)))
(assert (forall ((TailRecursion.Trait$G@@26 T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass.TailRecursion.Trait TailRecursion.Trait$G@@26)) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) (Tclass.TailRecursion.Trait TailRecursion.Trait$G@@26))))
 :qid |unknown.0:0|
 :skolemid |5786|
 :pattern ( ($IsBox bx@@6 (Tclass.TailRecursion.Trait TailRecursion.Trait$G@@26)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (forall ((a@@4 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@4 b@@1) (forall ((o@@2 T@U) ) (! (= (|Set#IsMember| a@@4 o@@2) (|Set#IsMember| b@@1 o@@2))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |5372|
 :pattern ( (|Set#IsMember| a@@4 o@@2))
 :pattern ( (|Set#IsMember| b@@1 o@@2))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |5373|
 :pattern ( (|Set#Equal| a@@4 b@@1))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((TailRecursion.Trait$G@@27 T@U) (this@@9 T@U) (|g#0@@7| T@U) ) (!  (=> (or (|TailRecursion.Trait.Id#canCall| TailRecursion.Trait$G@@27 this@@9 |g#0@@7|) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@9 null)) (not true)) ($Is refType this@@9 (Tclass.TailRecursion.Trait TailRecursion.Trait$G@@27))) ($IsBox |g#0@@7| TailRecursion.Trait$G@@27)))) (= (TailRecursion.Trait.Id TailRecursion.Trait$G@@27 this@@9 |g#0@@7|) |g#0@@7|))
 :qid |unknown.0:0|
 :skolemid |5790|
 :pattern ( (TailRecursion.Trait.Id TailRecursion.Trait$G@@27 this@@9 |g#0@@7|))
))))
(assert (forall ((x@@9 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@9))) (Lit BoxType ($Box intType (int_2_U x@@9))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |5242|
 :pattern ( ($Box intType (int_2_U (LitInt x@@9))))
)))
(assert (forall ((x@@10 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@10)) (Lit BoxType ($Box T@@4 x@@10)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |5240|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@10)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |n#0@@3| () Int)
(declare-fun this@@10 () T@U)
(declare-fun TailRecursion.Trait$G@@28 () T@U)
(declare-fun $Heap@@5 () T@U)
(declare-fun |g#0@@8| () T@U)
(declare-fun |##n#0@0| () Int)
(declare-fun |b$reqreads#2@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun $LZ () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |f#Z#0@0| () T@U)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun |##g0#0@0| () T@U)
(declare-fun |b$reqreads#1@0| () Bool)
(declare-fun |##g1#0@0| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$TailRecursion.Trait.Daisy)
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
 (=> (= (ControlFlow 0 0) 16) (let ((anon11_Else_correct  (=> (or (not (= |n#0@@3| (LitInt 1))) (not true)) (=> (and ($IsAllocBox ($Box refType this@@10) (Tclass.TailRecursion.Trait? TailRecursion.Trait$G@@28) $Heap@@5) ($IsAllocBox |g#0@@8| TailRecursion.Trait$G@@28 $Heap@@5)) (and (=> (= (ControlFlow 0 8) (- 0 13)) ($Is intType (int_2_U (- |n#0@@3| 2)) Tclass._System.nat)) (=> ($Is intType (int_2_U (- |n#0@@3| 2)) Tclass._System.nat) (=> (= |##n#0@0| (- |n#0@@3| 2)) (=> (and ($IsAlloc intType (int_2_U |##n#0@0|) Tclass._System.nat $Heap@@5) (= |b$reqreads#2@0| (forall (($o@@6 T@U) ($f@@0 T@U) ) (!  (=> (and (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 $o@@6) alloc)))) (= $o@@6 this@@10)) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@6 $f@@0)))
 :qid |TraitCompiledfy.710:9|
 :skolemid |5808|
)))) (and (=> (= (ControlFlow 0 8) (- 0 12)) (or (or (<= 0 |n#0@@3|) (and (|Set#Subset| (|Set#UnionOne| |Set#Empty| ($Box refType this@@10)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@10))) (not (|Set#Subset| (|Set#UnionOne| |Set#Empty| ($Box refType this@@10)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@10)))))) (= |##n#0@0| |n#0@@3|))) (=> (or (or (<= 0 |n#0@@3|) (and (|Set#Subset| (|Set#UnionOne| |Set#Empty| ($Box refType this@@10)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@10))) (not (|Set#Subset| (|Set#UnionOne| |Set#Empty| ($Box refType this@@10)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@10)))))) (= |##n#0@0| |n#0@@3|)) (and (=> (= (ControlFlow 0 8) (- 0 11)) (or (and (|Set#Subset| (|Set#UnionOne| |Set#Empty| ($Box refType this@@10)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@10))) (not (|Set#Subset| (|Set#UnionOne| |Set#Empty| ($Box refType this@@10)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@10))))) (and (|Set#Equal| (|Set#UnionOne| |Set#Empty| ($Box refType this@@10)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@10))) (< |##n#0@0| |n#0@@3|)))) (=> (or (and (|Set#Subset| (|Set#UnionOne| |Set#Empty| ($Box refType this@@10)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@10))) (not (|Set#Subset| (|Set#UnionOne| |Set#Empty| ($Box refType this@@10)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@10))))) (and (|Set#Equal| (|Set#UnionOne| |Set#Empty| ($Box refType this@@10)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@10))) (< |##n#0@0| |n#0@@3|))) (=> (and (and (|TailRecursion.Trait.Daisy#canCall| TailRecursion.Trait$G@@28 $Heap@@5 this@@10 |g#0@@8| (- |n#0@@3| 2)) (= (TailRecursion.Trait.Daisy TailRecursion.Trait$G@@28 ($LS $LZ) $Heap@@5 this@@10 |g#0@@8| |n#0@@3|) (TailRecursion.Trait.Daisy TailRecursion.Trait$G@@28 ($LS $LZ) $Heap@@5 this@@10 |g#0@@8| (- |n#0@@3| 2)))) (and (|TailRecursion.Trait.Daisy#canCall| TailRecursion.Trait$G@@28 $Heap@@5 this@@10 |g#0@@8| (- |n#0@@3| 2)) ($IsBox (TailRecursion.Trait.Daisy TailRecursion.Trait$G@@28 ($LS $LZ) $Heap@@5 this@@10 |g#0@@8| |n#0@@3|) TailRecursion.Trait$G@@28))) (and (=> (= (ControlFlow 0 8) (- 0 10)) true) (and (=> (= (ControlFlow 0 8) (- 0 9)) true) (=> (= (ControlFlow 0 8) (- 0 7)) |b$reqreads#2@0|))))))))))))))))
(let ((anon11_Then_correct  (=> (= |n#0@@3| (LitInt 1)) (and (=> (= (ControlFlow 0 4) (- 0 6)) (or (not (= 0 $FunctionContextHeight)) (not true))) (=> (or (not (= 0 $FunctionContextHeight)) (not true)) (=> (and (= |let#0#0#0| (|TailRecursion.Trait.Id#Handle| TailRecursion.Trait$G@@28 this@@10)) ($Is HandleTypeType |let#0#0#0| (Tclass._System.___hTotalFunc1 TailRecursion.Trait$G@@28 TailRecursion.Trait$G@@28))) (=> (and (and (= |f#Z#0@0| |let#0#0#0|) ($IsAllocBox ($Box refType this@@10) (Tclass.TailRecursion.Trait? TailRecursion.Trait$G@@28) $Heap@@5)) (and (= |b$reqreads#0@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@10 TailRecursion.Trait.h))) (= |##g0#0@0| (Apply1 TailRecursion.Trait$G@@28 TailRecursion.Trait$G@@28 $Heap@@5 |f#Z#0@0| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@10) TailRecursion.Trait.h))))) (=> (and (and (and ($IsAllocBox |##g0#0@0| TailRecursion.Trait$G@@28 $Heap@@5) (= |b$reqreads#1@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@10 TailRecursion.Trait.K)))) (and (= |##g1#0@0| (Apply1 TailRecursion.Trait$G@@28 TailRecursion.Trait$G@@28 $Heap@@5 |f#Z#0@0| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@10) TailRecursion.Trait.K))) ($IsAllocBox |##g1#0@0| TailRecursion.Trait$G@@28 $Heap@@5))) (and (and (|TailRecursion.Trait.Combine#canCall| TailRecursion.Trait$G@@28 this@@10 (Apply1 TailRecursion.Trait$G@@28 TailRecursion.Trait$G@@28 $Heap@@5 |f#Z#0@0| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@10) TailRecursion.Trait.h)) (Apply1 TailRecursion.Trait$G@@28 TailRecursion.Trait$G@@28 $Heap@@5 |f#Z#0@0| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@10) TailRecursion.Trait.K))) (= (TailRecursion.Trait.Daisy TailRecursion.Trait$G@@28 ($LS $LZ) $Heap@@5 this@@10 |g#0@@8| |n#0@@3|) (TailRecursion.Trait.Combine TailRecursion.Trait$G@@28 this@@10 (Apply1 TailRecursion.Trait$G@@28 TailRecursion.Trait$G@@28 $Heap@@5 |f#Z#0@0| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@10) TailRecursion.Trait.h)) (Apply1 TailRecursion.Trait$G@@28 TailRecursion.Trait$G@@28 $Heap@@5 |f#Z#0@0| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@10) TailRecursion.Trait.K))))) (and (|TailRecursion.Trait.Combine#canCall| TailRecursion.Trait$G@@28 this@@10 (Apply1 TailRecursion.Trait$G@@28 TailRecursion.Trait$G@@28 $Heap@@5 |f#Z#0@0| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@10) TailRecursion.Trait.h)) (Apply1 TailRecursion.Trait$G@@28 TailRecursion.Trait$G@@28 $Heap@@5 |f#Z#0@0| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@10) TailRecursion.Trait.K))) ($IsBox (TailRecursion.Trait.Daisy TailRecursion.Trait$G@@28 ($LS $LZ) $Heap@@5 this@@10 |g#0@@8| |n#0@@3|) TailRecursion.Trait$G@@28)))) (and (=> (= (ControlFlow 0 4) (- 0 5)) |b$reqreads#0@0|) (=> |b$reqreads#0@0| (=> (= (ControlFlow 0 4) (- 0 3)) |b$reqreads#1@0|)))))))))))
(let ((anon10_Else_correct  (=> (or (not (= |n#0@@3| (LitInt 0))) (not true)) (and (=> (= (ControlFlow 0 14) 4) anon11_Then_correct) (=> (= (ControlFlow 0 14) 8) anon11_Else_correct)))))
(let ((anon10_Then_correct true))
(let ((anon9_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#1| null $Heap@@5 alloc this@@10)) (and (and (=> (= (ControlFlow 0 15) 1) anon9_Then_correct) (=> (= (ControlFlow 0 15) 2) anon10_Then_correct)) (=> (= (ControlFlow 0 15) 14) anon10_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@5) ($IsHeapAnchor $Heap@@5)) (and (or (not (= this@@10 null)) (not true)) (and ($Is refType this@@10 (Tclass.TailRecursion.Trait TailRecursion.Trait$G@@28)) ($IsAlloc refType this@@10 (Tclass.TailRecursion.Trait TailRecursion.Trait$G@@28) $Heap@@5)))) (and (and ($IsBox |g#0@@8| TailRecursion.Trait$G@@28) (<= (LitInt 0) |n#0@@3|)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 16) 15)))) anon0_correct)))
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
