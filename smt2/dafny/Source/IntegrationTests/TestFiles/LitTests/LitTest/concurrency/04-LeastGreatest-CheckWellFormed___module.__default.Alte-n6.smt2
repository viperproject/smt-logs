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
(declare-fun Tagclass._module.TraitA () T@U)
(declare-fun Tagclass._module.TraitB () T@U)
(declare-fun class._module.TraitA? () T@U)
(declare-fun Tagclass._module.TraitA? () T@U)
(declare-fun class._module.TraitB? () T@U)
(declare-fun Tagclass._module.TraitB? () T@U)
(declare-fun tytagFamily$TraitA () T@U)
(declare-fun tytagFamily$TraitB () T@U)
(declare-fun field$b () T@U)
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
(declare-fun DeclName (T@U) T@U)
(declare-fun |ORD#Less| (T@U T@U) Bool)
(declare-fun |ORD#Minus| (T@U T@U) T@U)
(declare-fun |ORD#FromNat| (Int) T@U)
(declare-fun |ORD#Offset| (T@U) Int)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.invA (T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.TraitA () T@U)
(declare-fun _module.__default.invA_h (T@U T@U T@U T@U) Bool)
(declare-fun _module.__default.invB (T@U T@U T@U) Bool)
(declare-fun Tclass._module.TraitB () T@U)
(declare-fun _module.__default.invB_h (T@U T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.TraitA? () T@U)
(declare-fun Tclass._module.TraitB? () T@U)
(declare-fun _module.TraitA.b () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.TraitB.a () T@U)
(declare-fun null () T@U)
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
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |ORD#IsNat| (T@U) Bool)
(declare-fun |_module.__default.invA#canCall| (T@U T@U) Bool)
(declare-fun |_module.__default.invB#canCall| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$_module.TraitA (T@U) Bool)
(declare-fun dtype (T@U) T@U)
(declare-fun implements$_module.TraitB (T@U) Bool)
(declare-fun |_module.__default.invA_h#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.__default.invB_h#canCall| (T@U T@U T@U) Bool)
(declare-fun $LZ () T@U)
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
(assert (distinct alloc allocName Tagclass._module.TraitA Tagclass._module.TraitB class._module.TraitA? Tagclass._module.TraitA? class._module.TraitB? Tagclass._module.TraitB? tytagFamily$TraitA tytagFamily$TraitB field$b field$a)
)
(assert (= (FDim alloc) 0))
(assert (= (DeclName alloc) allocName))
(assert (forall ((o T@U) (p T@U) (r T@U) ) (!  (=> (and (|ORD#Less| o p) (|ORD#Less| p r)) (|ORD#Less| o r))
 :qid |DafnyPreludebpl.427:15|
 :skolemid |90|
 :pattern ( (|ORD#Less| o p) (|ORD#Less| p r))
 :pattern ( (|ORD#Less| o p) (|ORD#Less| o r))
)))
(assert (forall ((o@@0 T@U) (m Int) (n Int) ) (!  (=> (and (and (<= 0 m) (<= 0 n)) (<= (+ m n) (|ORD#Offset| o@@0))) (= (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)) (|ORD#Minus| o@@0 (|ORD#FromNat| (+ m n)))))
 :qid |DafnyPreludebpl.466:15|
 :skolemid |98|
 :pattern ( (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)))
)))
(assert (= (Ctor refType) 3))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly T@U) ($Heap T@U) (|self#0| T@U) ) (!  (=> (and (and ($IsGoodHeap $Heap) ($Is refType |self#0| Tclass._module.TraitA)) (_module.__default.invA ($LS $ly) $Heap |self#0|)) (forall ((|_k#0| T@U) ) (! (_module.__default.invA_h ($LS $ly) $Heap |_k#0| |self#0|)
 :qid |_04LeastGreatestdfy.75:20|
 :skolemid |701|
 :pattern ( (_module.__default.invA_h ($LS $ly) $Heap |_k#0| |self#0|))
)))
 :qid |_04LeastGreatestdfy.75:20|
 :skolemid |702|
 :pattern ( (_module.__default.invA ($LS $ly) $Heap |self#0|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@0 T@U) ($Heap@@0 T@U) (|self#0@@0| T@U) ) (!  (=> (and (and ($IsGoodHeap $Heap@@0) ($Is refType |self#0@@0| Tclass._module.TraitB)) (_module.__default.invB ($LS $ly@@0) $Heap@@0 |self#0@@0|)) (forall ((|_k#0@@0| T@U) ) (! (_module.__default.invB_h ($LS $ly@@0) $Heap@@0 |_k#0@@0| |self#0@@0|)
 :qid |_04LeastGreatestdfy.79:20|
 :skolemid |723|
 :pattern ( (_module.__default.invB_h ($LS $ly@@0) $Heap@@0 |_k#0@@0| |self#0@@0|))
)))
 :qid |_04LeastGreatestdfy.79:20|
 :skolemid |724|
 :pattern ( (_module.__default.invB ($LS $ly@@0) $Heap@@0 |self#0@@0|))
))))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.TraitA $h) ($IsAlloc refType |c#0| Tclass._module.TraitA? $h))
 :qid |unknown.0:0|
 :skolemid |800|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.TraitA $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.TraitA? $h))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.TraitB $h@@0) ($IsAlloc refType |c#0@@0| Tclass._module.TraitB? $h@@0))
 :qid |unknown.0:0|
 :skolemid |807|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.TraitB $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.TraitB? $h@@0))
)))
(assert (= (FDim _module.TraitA.b) 0))
(assert (= (FieldOfDecl class._module.TraitA? field$b) _module.TraitA.b))
(assert  (not ($IsGhostField _module.TraitA.b)))
(assert (= (FDim _module.TraitB.a) 0))
(assert (= (FieldOfDecl class._module.TraitB? field$a) _module.TraitB.a))
(assert  (not ($IsGhostField _module.TraitB.a)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m@@0 T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m@@0 x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@1 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@1 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@1 y0)))
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
(assert (forall (($o T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o Tclass._module.TraitA? $h@@1)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |796|
 :pattern ( ($IsAlloc refType $o Tclass._module.TraitA? $h@@1))
)))
(assert (forall (($o@@0 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._module.TraitB? $h@@2)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |803|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.TraitB? $h@@2))
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
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@1 T@U) ($Heap@@1 T@U) (|self#0@@1| T@U) ) (!  (=> (and (and ($IsGoodHeap $Heap@@1) ($Is refType |self#0@@1| Tclass._module.TraitA)) (forall ((|_k#0@@1| T@U) ) (! (_module.__default.invA_h ($LS $ly@@1) $Heap@@1 |_k#0@@1| |self#0@@1|)
 :qid |_04LeastGreatestdfy.75:20|
 :skolemid |701|
 :pattern ( (_module.__default.invA_h ($LS $ly@@1) $Heap@@1 |_k#0@@1| |self#0@@1|))
))) (_module.__default.invA ($LS $ly@@1) $Heap@@1 |self#0@@1|))
 :qid |_04LeastGreatestdfy.75:20|
 :skolemid |703|
 :pattern ( (_module.__default.invA ($LS $ly@@1) $Heap@@1 |self#0@@1|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@2 T@U) ($Heap@@2 T@U) (|self#0@@2| T@U) ) (!  (=> (and (and ($IsGoodHeap $Heap@@2) ($Is refType |self#0@@2| Tclass._module.TraitB)) (forall ((|_k#0@@2| T@U) ) (! (_module.__default.invB_h ($LS $ly@@2) $Heap@@2 |_k#0@@2| |self#0@@2|)
 :qid |_04LeastGreatestdfy.79:20|
 :skolemid |723|
 :pattern ( (_module.__default.invB_h ($LS $ly@@2) $Heap@@2 |_k#0@@2| |self#0@@2|))
))) (_module.__default.invB ($LS $ly@@2) $Heap@@2 |self#0@@2|))
 :qid |_04LeastGreatestdfy.79:20|
 :skolemid |725|
 :pattern ( (_module.__default.invB ($LS $ly@@2) $Heap@@2 |self#0@@2|))
))))
(assert ($IsGhostField alloc))
(assert (forall (($ly@@3 T@U) ($Heap@@3 T@U) (|self#0@@3| T@U) ) (! (= (_module.__default.invA ($LS $ly@@3) $Heap@@3 |self#0@@3|) (_module.__default.invA $ly@@3 $Heap@@3 |self#0@@3|))
 :qid |_04LeastGreatestdfy.75:20|
 :skolemid |693|
 :pattern ( (_module.__default.invA ($LS $ly@@3) $Heap@@3 |self#0@@3|))
)))
(assert (forall (($ly@@4 T@U) ($Heap@@4 T@U) (|self#0@@4| T@U) ) (! (= (_module.__default.invB ($LS $ly@@4) $Heap@@4 |self#0@@4|) (_module.__default.invB $ly@@4 $Heap@@4 |self#0@@4|))
 :qid |_04LeastGreatestdfy.79:20|
 :skolemid |716|
 :pattern ( (_module.__default.invB ($LS $ly@@4) $Heap@@4 |self#0@@4|))
)))
(assert (forall ((o@@1 T@U) (p@@0 T@U) ) (!  (=> (and (|ORD#IsNat| p@@0) (<= (|ORD#Offset| p@@0) (|ORD#Offset| o@@1))) (and (= (|ORD#IsNat| (|ORD#Minus| o@@1 p@@0)) (|ORD#IsNat| o@@1)) (= (|ORD#Offset| (|ORD#Minus| o@@1 p@@0)) (- (|ORD#Offset| o@@1) (|ORD#Offset| p@@0)))))
 :qid |DafnyPreludebpl.451:15|
 :skolemid |95|
 :pattern ( (|ORD#Minus| o@@1 p@@0))
)))
(assert (forall ((n@@0 Int) ) (!  (=> (<= 0 n@@0) (and (|ORD#IsNat| (|ORD#FromNat| n@@0)) (= (|ORD#Offset| (|ORD#FromNat| n@@0)) n@@0)))
 :qid |DafnyPreludebpl.412:15|
 :skolemid |86|
 :pattern ( (|ORD#FromNat| n@@0))
)))
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass._module.TraitA)  (and ($Is refType |c#0@@1| Tclass._module.TraitA?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |799|
 :pattern ( ($Is refType |c#0@@1| Tclass._module.TraitA))
 :pattern ( ($Is refType |c#0@@1| Tclass._module.TraitA?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._module.TraitB)  (and ($Is refType |c#0@@2| Tclass._module.TraitB?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |806|
 :pattern ( ($Is refType |c#0@@2| Tclass._module.TraitB))
 :pattern ( ($Is refType |c#0@@2| Tclass._module.TraitB?))
)))
(assert (forall ((o@@2 T@U) (p@@1 T@U) ) (!  (or (or (|ORD#Less| o@@2 p@@1) (= o@@2 p@@1)) (|ORD#Less| p@@1 o@@2))
 :qid |DafnyPreludebpl.424:15|
 :skolemid |89|
 :pattern ( (|ORD#Less| o@@2 p@@1) (|ORD#Less| p@@1 o@@2))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@5 T@U) ($Heap@@5 T@U) (|self#0@@5| T@U) ) (!  (=> (or (|_module.__default.invA#canCall| $Heap@@5 |self#0@@5|) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@5) ($Is refType |self#0@@5| Tclass._module.TraitA)))) (and (|_module.__default.invB#canCall| $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |self#0@@5|) _module.TraitA.b))) (= (_module.__default.invA ($LS $ly@@5) $Heap@@5 |self#0@@5|) (_module.__default.invB $ly@@5 $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |self#0@@5|) _module.TraitA.b))))))
 :qid |_04LeastGreatestdfy.75:20|
 :skolemid |700|
 :pattern ( (_module.__default.invA ($LS $ly@@5) $Heap@@5 |self#0@@5|) ($IsGoodHeap $Heap@@5))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@6 T@U) ($Heap@@6 T@U) (|self#0@@6| T@U) ) (!  (=> (or (|_module.__default.invB#canCall| $Heap@@6 |self#0@@6|) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@6) ($Is refType |self#0@@6| Tclass._module.TraitB)))) (and (|_module.__default.invA#canCall| $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 |self#0@@6|) _module.TraitB.a))) (= (_module.__default.invB ($LS $ly@@6) $Heap@@6 |self#0@@6|) (_module.__default.invA $ly@@6 $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 |self#0@@6|) _module.TraitB.a))))))
 :qid |_04LeastGreatestdfy.79:20|
 :skolemid |722|
 :pattern ( (_module.__default.invB ($LS $ly@@6) $Heap@@6 |self#0@@6|) ($IsGoodHeap $Heap@@6))
))))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall (($ly@@7 T@U) ($Heap@@7 T@U) (|_k#0@@3| T@U) (|self#0@@7| T@U) ) (! (= (_module.__default.invA_h ($LS $ly@@7) $Heap@@7 |_k#0@@3| |self#0@@7|) (_module.__default.invA_h $ly@@7 $Heap@@7 |_k#0@@3| |self#0@@7|))
 :qid |_04LeastGreatestdfy.75:20|
 :skolemid |707|
 :pattern ( (_module.__default.invA_h ($LS $ly@@7) $Heap@@7 |_k#0@@3| |self#0@@7|))
)))
(assert (forall (($ly@@8 T@U) ($Heap@@8 T@U) (|_k#0@@4| T@U) (|self#0@@8| T@U) ) (! (= (_module.__default.invB_h ($LS $ly@@8) $Heap@@8 |_k#0@@4| |self#0@@8|) (_module.__default.invB_h $ly@@8 $Heap@@8 |_k#0@@4| |self#0@@8|))
 :qid |_04LeastGreatestdfy.79:20|
 :skolemid |728|
 :pattern ( (_module.__default.invB_h ($LS $ly@@8) $Heap@@8 |_k#0@@4| |self#0@@8|))
)))
(assert (forall ((o@@3 T@U) ) (! (<= 0 (|ORD#Offset| o@@3))
 :qid |DafnyPreludebpl.406:15|
 :skolemid |85|
 :pattern ( (|ORD#Offset| o@@3))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@5))
)))
(assert (forall ((o@@4 T@U) (p@@2 T@U) ) (!  (and (and (and (=> (|ORD#Less| o@@4 p@@2) (or (not (= o@@4 p@@2)) (not true))) (=> (and (|ORD#IsNat| o@@4) (not (|ORD#IsNat| p@@2))) (|ORD#Less| o@@4 p@@2))) (=> (and (|ORD#IsNat| o@@4) (|ORD#IsNat| p@@2)) (= (|ORD#Less| o@@4 p@@2) (< (|ORD#Offset| o@@4) (|ORD#Offset| p@@2))))) (=> (and (|ORD#Less| o@@4 p@@2) (|ORD#IsNat| p@@2)) (|ORD#IsNat| o@@4)))
 :qid |DafnyPreludebpl.418:15|
 :skolemid |88|
 :pattern ( (|ORD#Less| o@@4 p@@2))
)))
(assert  (and (forall ((t0@@0 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 t2 (MapType1Store t0@@0 t1@@0 t2 m@@2 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@3 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@3 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@3 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@4 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@4 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@1) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |808|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))
)))
(assert (forall (($h@@3 T@U) ($o@@2 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@2 null)) (not true)) ($Is refType $o@@2 Tclass._module.TraitA?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) _module.TraitA.b)) Tclass._module.TraitB $h@@3))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |798|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) _module.TraitA.b)))
)))
(assert (forall (($h@@4 T@U) ($o@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@3 null)) (not true)) ($Is refType $o@@3 Tclass._module.TraitB?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) _module.TraitB.a)) Tclass._module.TraitA $h@@4))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |805|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) _module.TraitB.a)))
)))
(assert (forall ((o@@5 T@U) ) (!  (=> (|ORD#IsNat| o@@5) (= o@@5 (|ORD#FromNat| (|ORD#Offset| o@@5))))
 :qid |DafnyPreludebpl.414:15|
 :skolemid |87|
 :pattern ( (|ORD#Offset| o@@5))
 :pattern ( (|ORD#IsNat| o@@5))
)))
(assert (= (Tag Tclass._module.TraitA) Tagclass._module.TraitA))
(assert (= (TagFamily Tclass._module.TraitA) tytagFamily$TraitA))
(assert (= (Tag Tclass._module.TraitB) Tagclass._module.TraitB))
(assert (= (TagFamily Tclass._module.TraitB) tytagFamily$TraitB))
(assert (= (Tag Tclass._module.TraitA?) Tagclass._module.TraitA?))
(assert (= (TagFamily Tclass._module.TraitA?) tytagFamily$TraitA))
(assert (= (Tag Tclass._module.TraitB?) Tagclass._module.TraitB?))
(assert (= (TagFamily Tclass._module.TraitB?) tytagFamily$TraitB))
(assert (forall (($h@@5 T@U) ($o@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@4 null)) (not true)) ($Is refType $o@@4 Tclass._module.TraitA?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) _module.TraitA.b)) Tclass._module.TraitB))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |797|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) _module.TraitA.b)))
)))
(assert (forall (($h@@6 T@U) ($o@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@5 null)) (not true)) ($Is refType $o@@5 Tclass._module.TraitB?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) _module.TraitB.a)) Tclass._module.TraitA))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |804|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) _module.TraitB.a)))
)))
(assert (forall ((o@@6 T@U) (p@@3 T@U) ) (!  (=> (and (|ORD#IsNat| p@@3) (<= (|ORD#Offset| p@@3) (|ORD#Offset| o@@6))) (or (and (= p@@3 (|ORD#FromNat| 0)) (= (|ORD#Minus| o@@6 p@@3) o@@6)) (and (or (not (= p@@3 (|ORD#FromNat| 0))) (not true)) (|ORD#Less| (|ORD#Minus| o@@6 p@@3) o@@6))))
 :qid |DafnyPreludebpl.455:15|
 :skolemid |96|
 :pattern ( (|ORD#Minus| o@@6 p@@3))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@9 T@U) ($Heap@@9 T@U) (|self#0@@9| T@U) (|_k#0@@5| T@U) ) (!  (=> (and (and ($IsGoodHeap $Heap@@9) ($Is refType |self#0@@9| Tclass._module.TraitA)) (= |_k#0@@5| (|ORD#FromNat| 0))) (_module.__default.invA_h $ly@@9 $Heap@@9 |_k#0@@5| |self#0@@9|))
 :qid |_04LeastGreatestdfy.75:20|
 :skolemid |704|
 :pattern ( (_module.__default.invA_h $ly@@9 $Heap@@9 |_k#0@@5| |self#0@@9|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@10 T@U) ($Heap@@10 T@U) (|self#0@@10| T@U) (|_k#0@@6| T@U) ) (!  (=> (and (and ($IsGoodHeap $Heap@@10) ($Is refType |self#0@@10| Tclass._module.TraitB)) (= |_k#0@@6| (|ORD#FromNat| 0))) (_module.__default.invB_h $ly@@10 $Heap@@10 |_k#0@@6| |self#0@@10|))
 :qid |_04LeastGreatestdfy.79:20|
 :skolemid |726|
 :pattern ( (_module.__default.invB_h $ly@@10 $Heap@@10 |_k#0@@6| |self#0@@10|))
))))
(assert (forall (($o@@6 T@U) ) (! (= ($Is refType $o@@6 Tclass._module.TraitA?)  (or (= $o@@6 null) (implements$_module.TraitA (dtype $o@@6))))
 :qid |unknown.0:0|
 :skolemid |795|
 :pattern ( ($Is refType $o@@6 Tclass._module.TraitA?))
)))
(assert (forall (($o@@7 T@U) ) (! (= ($Is refType $o@@7 Tclass._module.TraitB?)  (or (= $o@@7 null) (implements$_module.TraitB (dtype $o@@7))))
 :qid |unknown.0:0|
 :skolemid |802|
 :pattern ( ($Is refType $o@@7 Tclass._module.TraitB?))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@7)) (Lit BoxType ($Box T@@2 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@7)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@11 T@U) ($Heap@@11 T@U) (|_k#0@@7| T@U) (|self#0@@11| T@U) ) (!  (=> (or (|_module.__default.invA_h#canCall| $Heap@@11 |_k#0@@7| |self#0@@11|) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@11) ($Is refType |self#0@@11| Tclass._module.TraitA)))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@7|)) (|_module.__default.invB_h#canCall| $Heap@@11 (|ORD#Minus| |_k#0@@7| (|ORD#FromNat| 1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@11 |self#0@@11|) _module.TraitA.b)))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@7|)) (_module.__default.invB_h ($LS $LZ) $Heap@@11 (|ORD#Minus| |_k#0@@7| (|ORD#FromNat| 1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@11 |self#0@@11|) _module.TraitA.b)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@7|)) (forall ((|_k'#0| T@U) ) (!  (=> (|ORD#Less| |_k'#0| |_k#0@@7|) (|_module.__default.invA_h#canCall| $Heap@@11 |_k'#0| |self#0@@11|))
 :qid |_04LeastGreatestdfy.75:20|
 :skolemid |714|
 :pattern ( (_module.__default.invA_h $ly@@11 $Heap@@11 |_k'#0| |self#0@@11|))
))))) (= (_module.__default.invA_h ($LS $ly@@11) $Heap@@11 |_k#0@@7| |self#0@@11|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@7|)) (_module.__default.invB_h ($LS $LZ) $Heap@@11 (|ORD#Minus| |_k#0@@7| (|ORD#FromNat| 1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@11 |self#0@@11|) _module.TraitA.b)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@7|)) (forall ((|_k'#0@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#0@@0| |_k#0@@7|) (_module.__default.invA_h $ly@@11 $Heap@@11 |_k'#0@@0| |self#0@@11|))
 :qid |_04LeastGreatestdfy.75:20|
 :skolemid |713|
 :pattern ( (_module.__default.invA_h $ly@@11 $Heap@@11 |_k'#0@@0| |self#0@@11|))
)))))))
 :qid |_04LeastGreatestdfy.75:20|
 :skolemid |715|
 :pattern ( (_module.__default.invA_h ($LS $ly@@11) $Heap@@11 |_k#0@@7| |self#0@@11|) ($IsGoodHeap $Heap@@11))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@12 T@U) ($Heap@@12 T@U) (|_k#0@@8| T@U) (|self#0@@12| T@U) ) (!  (=> (or (|_module.__default.invB_h#canCall| $Heap@@12 |_k#0@@8| |self#0@@12|) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@12) ($Is refType |self#0@@12| Tclass._module.TraitB)))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@8|)) (|_module.__default.invA_h#canCall| $Heap@@12 (|ORD#Minus| |_k#0@@8| (|ORD#FromNat| 1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@12 |self#0@@12|) _module.TraitB.a)))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@8|)) (_module.__default.invA_h ($LS $LZ) $Heap@@12 (|ORD#Minus| |_k#0@@8| (|ORD#FromNat| 1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@12 |self#0@@12|) _module.TraitB.a)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@8|)) (forall ((|_k'#0@@1| T@U) ) (!  (=> (|ORD#Less| |_k'#0@@1| |_k#0@@8|) (|_module.__default.invB_h#canCall| $Heap@@12 |_k'#0@@1| |self#0@@12|))
 :qid |_04LeastGreatestdfy.79:20|
 :skolemid |735|
 :pattern ( (_module.__default.invB_h $ly@@12 $Heap@@12 |_k'#0@@1| |self#0@@12|))
))))) (= (_module.__default.invB_h ($LS $ly@@12) $Heap@@12 |_k#0@@8| |self#0@@12|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@8|)) (_module.__default.invA_h ($LS $LZ) $Heap@@12 (|ORD#Minus| |_k#0@@8| (|ORD#FromNat| 1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@12 |self#0@@12|) _module.TraitB.a)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@8|)) (forall ((|_k'#0@@2| T@U) ) (!  (=> (|ORD#Less| |_k'#0@@2| |_k#0@@8|) (_module.__default.invB_h $ly@@12 $Heap@@12 |_k'#0@@2| |self#0@@12|))
 :qid |_04LeastGreatestdfy.79:20|
 :skolemid |734|
 :pattern ( (_module.__default.invB_h $ly@@12 $Heap@@12 |_k'#0@@2| |self#0@@12|))
)))))))
 :qid |_04LeastGreatestdfy.79:20|
 :skolemid |736|
 :pattern ( (_module.__default.invB_h ($LS $ly@@12) $Heap@@12 |_k#0@@8| |self#0@@12|) ($IsGoodHeap $Heap@@12))
))))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@13 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |self#0@@13| () T@U)
(set-info :boogie-vc-id CheckWellFormed$$_module.__default.AlternativeEstablishInvB)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@13 alloc false)) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (= $Heap@@13 $Heap@0)) (and (and ($IsAlloc refType |self#0@@13| Tclass._module.TraitB $Heap@0) (|_module.__default.invB#canCall| $Heap@0 |self#0@@13|)) (and (_module.__default.invB ($LS $LZ) $Heap@0 |self#0@@13|) (= (ControlFlow 0 2) (- 0 1))))) (or (not (= |self#0@@13| null)) (not true))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@13) ($IsHeapAnchor $Heap@@13)) (=> (and (and ($Is refType |self#0@@13| Tclass._module.TraitB) ($IsAlloc refType |self#0@@13| Tclass._module.TraitB $Heap@@13)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 3) 2))) anon0_correct))))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
