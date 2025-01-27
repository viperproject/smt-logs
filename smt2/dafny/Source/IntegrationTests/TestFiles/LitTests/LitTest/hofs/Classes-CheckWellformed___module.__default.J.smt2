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
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun Tagclass._module.T () T@U)
(declare-fun class._module.T? () T@U)
(declare-fun Tagclass._module.T? () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
(declare-fun tytagFamily$T () T@U)
(declare-fun field$h () T@U)
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
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.T? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.T () T@U)
(declare-fun _module.T.h () T@U)
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
(declare-fun Reads1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.J (T@U T@U) Int)
(declare-fun |_module.__default.J#canCall| (T@U T@U) Bool)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun |_module.__default.B#canCall| (T@U T@U) Bool)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun _module.__default.B (T@U T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#2| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
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
(assert (distinct TInt TagInt alloc allocName Tagclass._System.___hFunc1 Tagclass._module.T class._module.T? Tagclass._module.T? |tytagFamily$_#Func1| tytagFamily$T field$h)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.T?)  (or (= $o null) (= (dtype $o) Tclass._module.T?)))
 :qid |unknown.0:0|
 :skolemid |513|
 :pattern ( ($Is refType $o Tclass._module.T?))
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
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.T $h) ($IsAlloc refType |c#0| Tclass._module.T? $h))
 :qid |unknown.0:0|
 :skolemid |518|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.T $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.T? $h))
)))
(assert (= (FDim _module.T.h) 0))
(assert (= (FieldOfDecl class._module.T? field$h) _module.T.h))
(assert  (not ($IsGhostField _module.T.h)))
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
(assert (forall (($o@@0 T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._module.T? $h@@0)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |514|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.T? $h@@0))
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
(assert (forall ((t0@@1 T@U) (t1@@1 T@U) (heap T@U) (f@@0 T@U) (bx0 T@U) ) (!  (=> (and ($IsGoodHeap heap) (and ($IsBox bx0 t0@@1) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@1 t1@@1)))) (= (|Set#Equal| (Reads1 t0@@1 t1@@1 $OneHeap f@@0 bx0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@1 t1@@1 heap f@@0 bx0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |385|
 :pattern ( (Reads1 t0@@1 t1@@1 $OneHeap f@@0 bx0) ($IsGoodHeap heap))
 :pattern ( (Reads1 t0@@1 t1@@1 heap f@@0 bx0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap T@U) (|t#0| T@U) ) (!  (=> (or (|_module.__default.J#canCall| $Heap |t#0|) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap) ($Is refType |t#0| Tclass._module.T)))) (and (and (and true (=> (Requires1 TInt TInt $Heap ($Unbox HandleTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |t#0|) _module.T.h)) ($Box intType (int_2_U (LitInt 0)))) (|_module.__default.B#canCall| $Heap |t#0|))) (=> (not (Requires1 TInt TInt $Heap ($Unbox HandleTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |t#0|) _module.T.h)) ($Box intType (int_2_U (LitInt 0))))) (|_module.__default.B#canCall| $Heap |t#0|))) (= (_module.__default.J $Heap |t#0|) (ite (Requires1 TInt TInt $Heap ($Unbox HandleTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |t#0|) _module.T.h)) ($Box intType (int_2_U (LitInt 0)))) (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap (_module.__default.B $Heap |t#0|) ($Box intType (int_2_U (LitInt 0)))))) (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap (_module.__default.B $Heap |t#0|) ($Box intType (int_2_U (LitInt 0))))))))))
 :qid |Classesdfy.31:16|
 :skolemid |496|
 :pattern ( (_module.__default.J $Heap |t#0|) ($IsGoodHeap $Heap))
))))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#2| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@1) |l#2|)))) (or (= $o@@1 |l#3|) (|Set#IsMember| |l#4| ($Box refType $o@@1)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |541|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#2| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@1 $f))
)))
(assert ($IsGhostField alloc))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall (($h@@1 T@U) ($o@@2 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@1) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) Tclass._module.T?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@2) alloc)))) ($IsAlloc HandleTypeType ($Unbox HandleTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@2) _module.T.h)) (Tclass._System.___hFunc1 TInt TInt) $h@@1))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |516|
 :pattern ( ($Unbox HandleTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@2) _module.T.h)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@0 T@U) (|t#0@@0| T@U) ) (!  (=> (or (|_module.__default.B#canCall| $Heap@@0 |t#0@@0|) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and ($Is refType |t#0@@0| Tclass._module.T) ($IsAlloc refType |t#0@@0| Tclass._module.T $Heap@@0))))) ($Is HandleTypeType (_module.__default.B $Heap@@0 |t#0@@0|) (Tclass._System.___hFunc1 TInt TInt)))
 :qid |Classesdfy.25:16|
 :skolemid |489|
 :pattern ( (_module.__default.B $Heap@@0 |t#0@@0|))
))))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.T) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._module.T)))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( ($IsBox bx@@1 Tclass._module.T))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.T?) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._module.T?)))
 :qid |unknown.0:0|
 :skolemid |512|
 :pattern ( ($IsBox bx@@2 Tclass._module.T?))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._module.T)  (and ($Is refType |c#0@@0| Tclass._module.T?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |517|
 :pattern ( ($Is refType |c#0@@0| Tclass._module.T))
 :pattern ( ($Is refType |c#0@@0| Tclass._module.T?))
)))
(assert (forall ((f@@1 T@U) (t0@@3 T@U) (t1@@3 T@U) (h@@0 T@U) ) (!  (=> (and ($IsGoodHeap h@@0) ($IsAlloc HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@3 t1@@3) h@@0)) (forall ((bx0@@0 T@U) ) (!  (=> (and ($IsAllocBox bx0@@0 t0@@3 h@@0) (Requires1 t0@@3 t1@@3 h@@0 f@@1 bx0@@0)) ($IsAllocBox (Apply1 t0@@3 t1@@3 h@@0 f@@1 bx0@@0) t1@@3 h@@0))
 :qid |unknown.0:0|
 :skolemid |395|
 :pattern ( (Apply1 t0@@3 t1@@3 h@@0 f@@1 bx0@@0))
)))
 :qid |unknown.0:0|
 :skolemid |396|
 :pattern ( ($IsAlloc HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@3 t1@@3) h@@0))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((f@@2 T@U) (t0@@4 T@U) (t1@@4 T@U) ) (! (= ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@4 t1@@4)) (forall ((h@@1 T@U) (bx0@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@1) ($IsBox bx0@@1 t0@@4)) (Requires1 t0@@4 t1@@4 h@@1 f@@2 bx0@@1)) ($IsBox (Apply1 t0@@4 t1@@4 h@@1 f@@2 bx0@@1) t1@@4))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |387|
 :pattern ( (Apply1 t0@@4 t1@@4 h@@1 f@@2 bx0@@1))
)))
 :qid |unknown.0:0|
 :skolemid |388|
 :pattern ( ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@4 t1@@4)))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TInt) (and (= ($Box intType ($Unbox intType bx@@3)) bx@@3) ($Is intType ($Unbox intType bx@@3) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@3 TInt))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@1 T@U) (|t#0@@1| T@U) ) (!  (=> (or (|_module.__default.B#canCall| $Heap@@1 |t#0@@1|) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@1) ($Is refType |t#0@@1| Tclass._module.T)))) (= (_module.__default.B $Heap@@1 |t#0@@1|) ($Unbox HandleTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |t#0@@1|) _module.T.h))))
 :qid |Classesdfy.25:16|
 :skolemid |491|
 :pattern ( (_module.__default.B $Heap@@1 |t#0@@1|) ($IsGoodHeap $Heap@@1))
))))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((f@@3 T@U) (t0@@5 T@U) (t1@@5 T@U) (h@@2 T@U) ) (!  (=> ($IsGoodHeap h@@2) (= ($IsAlloc HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@5 t1@@5) h@@2) (forall ((bx0@@2 T@U) ) (!  (=> (and (and ($IsBox bx0@@2 t0@@5) ($IsAllocBox bx0@@2 t0@@5 h@@2)) (Requires1 t0@@5 t1@@5 h@@2 f@@3 bx0@@2)) (forall ((r T@U) ) (!  (=> (and (or (not (= r null)) (not true)) (|Set#IsMember| (Reads1 t0@@5 t1@@5 h@@2 f@@3 bx0@@2) ($Box refType r))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@2 r) alloc))))
 :qid |unknown.0:0|
 :skolemid |392|
 :pattern ( (|Set#IsMember| (Reads1 t0@@5 t1@@5 h@@2 f@@3 bx0@@2) ($Box refType r)))
)))
 :qid |unknown.0:0|
 :skolemid |393|
 :pattern ( (Apply1 t0@@5 t1@@5 h@@2 f@@3 bx0@@2))
 :pattern ( (Reads1 t0@@5 t1@@5 h@@2 f@@3 bx0@@2))
))))
 :qid |unknown.0:0|
 :skolemid |394|
 :pattern ( ($IsAlloc HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@5 t1@@5) h@@2))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$R@@1| T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@4)) bx@@4) ($Is HandleTypeType ($Unbox HandleTypeType bx@@4) (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|))))
 :qid |unknown.0:0|
 :skolemid |369|
 :pattern ( ($IsBox bx@@4 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$R@@2| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |366|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|))
)))
(assert (forall (($h@@2 T@U) ($o@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) Tclass._module.T?))) ($Is HandleTypeType ($Unbox HandleTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@3) _module.T.h)) (Tclass._System.___hFunc1 TInt TInt)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |515|
 :pattern ( ($Unbox HandleTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@3) _module.T.h)))
)))
(assert (forall ((t0@@6 T@U) (t1@@6 T@U) (heap@@0 T@U) (f@@4 T@U) (bx0@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@0) (and ($IsBox bx0@@3 t0@@6) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc1 t0@@6 t1@@6)))) (|Set#Equal| (Reads1 t0@@6 t1@@6 $OneHeap f@@4 bx0@@3) |Set#Empty|)) (= (Requires1 t0@@6 t1@@6 $OneHeap f@@4 bx0@@3) (Requires1 t0@@6 t1@@6 heap@@0 f@@4 bx0@@3)))
 :qid |unknown.0:0|
 :skolemid |386|
 :pattern ( (Requires1 t0@@6 t1@@6 $OneHeap f@@4 bx0@@3) ($IsGoodHeap heap@@0))
 :pattern ( (Requires1 t0@@6 t1@@6 heap@@0 f@@4 bx0@@3))
)))
(assert (= (Tag Tclass._module.T) Tagclass._module.T))
(assert (= (TagFamily Tclass._module.T) tytagFamily$T))
(assert (= (Tag Tclass._module.T?) Tagclass._module.T?))
(assert (= (TagFamily Tclass._module.T?) tytagFamily$T))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|Set#Equal| a@@0 b@@0) (forall ((o@@0 T@U) ) (! (= (|Set#IsMember| a@@0 o@@0) (|Set#IsMember| b@@0 o@@0))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@0 o@@0))
 :pattern ( (|Set#IsMember| b@@0 o@@0))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@0 b@@0))
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
(assert (forall ((h@@3 T@U) (v@@1 T@U) ) (! ($IsAlloc intType v@@1 TInt h@@3)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@1 TInt h@@3))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is intType v@@2 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@2 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@@2 () T@U)
(declare-fun |t#0@@2| () T@U)
(declare-fun |b$reqreads#6@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun |b$reqreads#7@0| () Bool)
(declare-fun |b$reqreads#2@0| () Bool)
(declare-fun |b$reqreads#3@0| () Bool)
(declare-fun |b$reqreads#4@0| () Bool)
(declare-fun |b$reqreads#5@0| () Bool)
(declare-fun |##x0#2@0| () Int)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun |##x0#0@0| () Int)
(declare-fun |b$reqreads#1@0| () Bool)
(declare-fun |##x0#1@0| () Int)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.J)
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
 (=> (= (ControlFlow 0 0) 25) (let ((anon8_Else_correct  (=> (and (and (not (Requires1 TInt TInt $Heap@@2 ($Unbox HandleTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |t#0@@2|) _module.T.h)) ($Box intType (int_2_U (LitInt 0))))) ($IsAlloc refType |t#0@@2| Tclass._module.T $Heap@@2)) (and (= |b$reqreads#6@0| (forall (($o@@4 T@U) ($f@@0 T@U) ) (!  (=> (and (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@4) alloc)))) (= $o@@4 |t#0@@2|)) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@4 $f@@0)))
 :qid |Classesdfy.38:5|
 :skolemid |501|
))) (|_module.__default.B#canCall| $Heap@@2 |t#0@@2|))) (and (=> (= (ControlFlow 0 9) (- 0 15)) (Requires1 TInt TInt $Heap@@2 (_module.__default.B $Heap@@2 |t#0@@2|) ($Box intType (int_2_U (LitInt 0))))) (=> (Requires1 TInt TInt $Heap@@2 (_module.__default.B $Heap@@2 |t#0@@2|) ($Box intType (int_2_U (LitInt 0)))) (=> (and (and (= |b$reqreads#7@0| (forall (($o@@5 T@U) ($f@@1 T@U) ) (!  (=> (and (and (or (not (= $o@@5 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@5) alloc)))) (|Set#IsMember| (Reads1 TInt TInt $Heap@@2 (_module.__default.B $Heap@@2 |t#0@@2|) ($Box intType (int_2_U (LitInt 0)))) ($Box refType $o@@5))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@5 $f@@1)))
 :qid |Classesdfy.38:6|
 :skolemid |502|
))) (= (_module.__default.J $Heap@@2 |t#0@@2|) (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@@2 (_module.__default.B $Heap@@2 |t#0@@2|) ($Box intType (int_2_U (LitInt 0)))))))) (and (|_module.__default.B#canCall| $Heap@@2 |t#0@@2|) ($Is intType (int_2_U (_module.__default.J $Heap@@2 |t#0@@2|)) TInt))) (and (=> (= (ControlFlow 0 9) (- 0 14)) |b$reqreads#2@0|) (=> |b$reqreads#2@0| (and (=> (= (ControlFlow 0 9) (- 0 13)) |b$reqreads#3@0|) (=> |b$reqreads#3@0| (and (=> (= (ControlFlow 0 9) (- 0 12)) true) (and (=> (= (ControlFlow 0 9) (- 0 11)) true) (and (=> (= (ControlFlow 0 9) (- 0 10)) |b$reqreads#6@0|) (=> |b$reqreads#6@0| (=> (= (ControlFlow 0 9) (- 0 8)) |b$reqreads#7@0|)))))))))))))))
(let ((anon8_Then_correct  (=> (and (and (Requires1 TInt TInt $Heap@@2 ($Unbox HandleTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |t#0@@2|) _module.T.h)) ($Box intType (int_2_U (LitInt 0)))) ($IsAlloc refType |t#0@@2| Tclass._module.T $Heap@@2)) (and (= |b$reqreads#4@0| (forall (($o@@6 T@U) ($f@@2 T@U) ) (!  (=> (and (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@6) alloc)))) (= $o@@6 |t#0@@2|)) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@6 $f@@2)))
 :qid |Classesdfy.36:5|
 :skolemid |499|
))) (|_module.__default.B#canCall| $Heap@@2 |t#0@@2|))) (and (=> (= (ControlFlow 0 3) (- 0 7)) (Requires1 TInt TInt $Heap@@2 (_module.__default.B $Heap@@2 |t#0@@2|) ($Box intType (int_2_U (LitInt 0))))) (=> (Requires1 TInt TInt $Heap@@2 (_module.__default.B $Heap@@2 |t#0@@2|) ($Box intType (int_2_U (LitInt 0)))) (=> (and (and (= |b$reqreads#5@0| (forall (($o@@7 T@U) ($f@@3 T@U) ) (!  (=> (and (and (or (not (= $o@@7 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@7) alloc)))) (|Set#IsMember| (Reads1 TInt TInt $Heap@@2 (_module.__default.B $Heap@@2 |t#0@@2|) ($Box intType (int_2_U (LitInt 0)))) ($Box refType $o@@7))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@7 $f@@3)))
 :qid |Classesdfy.36:6|
 :skolemid |500|
))) (= (_module.__default.J $Heap@@2 |t#0@@2|) (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@@2 (_module.__default.B $Heap@@2 |t#0@@2|) ($Box intType (int_2_U (LitInt 0)))))))) (and (|_module.__default.B#canCall| $Heap@@2 |t#0@@2|) ($Is intType (int_2_U (_module.__default.J $Heap@@2 |t#0@@2|)) TInt))) (and (=> (= (ControlFlow 0 3) (- 0 6)) |b$reqreads#2@0|) (=> |b$reqreads#2@0| (and (=> (= (ControlFlow 0 3) (- 0 5)) |b$reqreads#3@0|) (=> |b$reqreads#3@0| (and (=> (= (ControlFlow 0 3) (- 0 4)) |b$reqreads#4@0|) (=> |b$reqreads#4@0| (=> (= (ControlFlow 0 3) (- 0 2)) |b$reqreads#5@0|)))))))))))))
(let ((anon7_Else_correct  (and (=> (= (ControlFlow 0 16) (- 0 17)) (or (not (= |t#0@@2| null)) (not true))) (=> (or (not (= |t#0@@2| null)) (not true)) (=> (= |b$reqreads#2@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 |t#0@@2| _module.T.h))) (=> (and (and ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |t#0@@2|) _module.T.h) (Tclass._System.___hFunc1 TInt TInt) $Heap@@2) (= |##x0#2@0| (LitInt 0))) (and ($IsAlloc intType (int_2_U |##x0#2@0|) TInt $Heap@@2) (= |b$reqreads#3@0| (forall (($o@@8 T@U) ($f@@4 T@U) ) (!  (=> (and (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@8) alloc)))) (|Set#IsMember| (Reads1 TInt TInt $Heap@@2 ($Unbox HandleTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |t#0@@2|) _module.T.h)) ($Box intType (int_2_U |##x0#2@0|))) ($Box refType $o@@8))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@8 $f@@4)))
 :qid |Classesdfy.35:10|
 :skolemid |498|
))))) (and (=> (= (ControlFlow 0 16) 3) anon8_Then_correct) (=> (= (ControlFlow 0 16) 9) anon8_Else_correct))))))))
(let ((anon7_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#2| null $Heap@@2 alloc |t#0@@2| (Reads1 TInt TInt $Heap@@2 ($Unbox HandleTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |t#0@@2|) _module.T.h)) ($Box intType (int_2_U (LitInt 0)))))) (and (=> (= (ControlFlow 0 18) (- 0 24)) (or (not (= |t#0@@2| null)) (not true))) (=> (or (not (= |t#0@@2| null)) (not true)) (=> (and (and (= |b$reqreads#0@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 |t#0@@2| _module.T.h))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |t#0@@2|) _module.T.h) (Tclass._System.___hFunc1 TInt TInt) $Heap@@2)) (and (= |##x0#0@0| (LitInt 0)) ($IsAlloc intType (int_2_U |##x0#0@0|) TInt $Heap@@2))) (and (=> (= (ControlFlow 0 18) (- 0 23)) (Requires1 TInt TInt $Heap@@2 ($Unbox HandleTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |t#0@@2|) _module.T.h)) ($Box intType (int_2_U (LitInt 0))))) (=> (Requires1 TInt TInt $Heap@@2 ($Unbox HandleTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |t#0@@2|) _module.T.h)) ($Box intType (int_2_U (LitInt 0)))) (=> (= |b$reqreads#1@0| (forall (($o@@9 T@U) ($f@@5 T@U) ) (!  (=> (and (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@9) alloc)))) (|Set#IsMember| (Reads1 TInt TInt $Heap@@2 ($Unbox HandleTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |t#0@@2|) _module.T.h)) ($Box intType (int_2_U (LitInt 0)))) ($Box refType $o@@9))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@9 $f@@5)))
 :qid |Classesdfy.33:13|
 :skolemid |497|
))) (and (=> (= (ControlFlow 0 18) (- 0 22)) |b$reqreads#0@0|) (=> |b$reqreads#0@0| (and (=> (= (ControlFlow 0 18) (- 0 21)) |b$reqreads#1@0|) (=> |b$reqreads#1@0| (and (=> (= (ControlFlow 0 18) (- 0 20)) (or (not (= |t#0@@2| null)) (not true))) (=> (or (not (= |t#0@@2| null)) (not true)) (=> ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |t#0@@2|) _module.T.h) (Tclass._System.___hFunc1 TInt TInt) $Heap@@2) (=> (and (= |##x0#1@0| (LitInt 0)) ($IsAlloc intType (int_2_U |##x0#1@0|) TInt $Heap@@2)) (and (=> (= (ControlFlow 0 18) (- 0 19)) (Requires1 TInt TInt $Heap@@2 ($Unbox HandleTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |t#0@@2|) _module.T.h)) ($Box intType (int_2_U (LitInt 0))))) (=> (Requires1 TInt TInt $Heap@@2 ($Unbox HandleTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |t#0@@2|) _module.T.h)) ($Box intType (int_2_U (LitInt 0)))) (and (=> (= (ControlFlow 0 18) 1) anon7_Then_correct) (=> (= (ControlFlow 0 18) 16) anon7_Else_correct)))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@2) ($IsHeapAnchor $Heap@@2)) ($Is refType |t#0@@2| Tclass._module.T)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 25) 18))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 18) (- 23))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
