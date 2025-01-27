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
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._module.ADT? () T@U)
(declare-fun Tagclass._module.ADT () T@U)
(declare-fun Tagclass._module.P? () T@U)
(declare-fun Tagclass._module.P () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$ADT () T@U)
(declare-fun tytagFamily$P () T@U)
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
(declare-fun implements$_module.ADT (T@U) Bool)
(declare-fun Tclass._module.P? () T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tclass._module.ADT? () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass._module.ADT () T@U)
(declare-fun Tclass._module.P () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.P.ReprFamily (T@U T@U T@U Int) T@U)
(declare-fun |_module.P.ReprFamily#canCall| (T@U T@U Int) Bool)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun $LS (T@U) T@U)
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
(assert (distinct TagSet alloc Tagclass._System.object? Tagclass._System.object Tagclass._module.ADT? Tagclass._module.ADT Tagclass._module.P? Tagclass._module.P tytagFamily$object tytagFamily$ADT tytagFamily$P)
)
(assert (implements$_module.ADT Tclass._module.P?))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.P?)  (or (= $o null) (= (dtype $o) Tclass._module.P?)))
 :qid |unknown.0:0|
 :skolemid |494|
 :pattern ( ($Is refType $o Tclass._module.P?))
)))
(assert (forall ((bx T@U) ($h T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.P? $h) ($IsGoodHeap $h)) ($IsAllocBox bx Tclass._module.ADT? $h))
 :qid |unknown.0:0|
 :skolemid |511|
 :pattern ( ($IsAllocBox bx Tclass._module.P? $h))
)))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h@@0) ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.ADT $h@@1) ($IsAlloc refType |c#0@@0| Tclass._module.ADT? $h@@1))
 :qid |unknown.0:0|
 :skolemid |492|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.ADT $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.ADT? $h@@1))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.P $h@@2) ($IsAlloc refType |c#0@@1| Tclass._module.P? $h@@2))
 :qid |unknown.0:0|
 :skolemid |509|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.P $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.P? $h@@2))
)))
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
(assert (forall (($o@@0 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._System.object? $h@@3)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._System.object? $h@@3))
)))
(assert (forall (($o@@1 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._module.ADT? $h@@4)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._module.ADT? $h@@4))
)))
(assert (forall (($o@@2 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._module.P? $h@@5)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |495|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.P? $h@@5))
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
(assert (= (Ctor SetType) 7))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly T@U) ($Heap T@U) (this T@U) (|n#0| Int) ) (!  (=> (or (|_module.P.ReprFamily#canCall| $Heap this |n#0|) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.P) ($IsAlloc refType this Tclass._module.P $Heap)))) (<= (LitInt 0) |n#0|)))) (and (=> (> |n#0| 0) (|Set#Subset| (_module.P.ReprFamily $ly $Heap this (- |n#0| 1)) (_module.P.ReprFamily $ly $Heap this |n#0|))) ($Is SetType (_module.P.ReprFamily $ly $Heap this |n#0|) (TSet Tclass._System.object))))
 :qid |gitissue4056dfy.12:18|
 :skolemid |501|
 :pattern ( (_module.P.ReprFamily $ly $Heap this |n#0|))
))))
(assert (forall ((a T@U) (b T@U) ) (! (= (|Set#Subset| a b) (forall ((o@@0 T@U) ) (!  (=> (|Set#IsMember| a o@@0) (|Set#IsMember| b o@@0))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a o@@0))
 :pattern ( (|Set#IsMember| b o@@0))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a b))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@3 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@3 $f))  (=> (and (or (not (= $o@@3 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@3) |l#2|)))) (or (= $o@@3 |l#3|) (|Set#IsMember| |l#4| ($Box refType $o@@3)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |514|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@3 $f))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( ($IsBox bx@@1 Tclass._System.object?))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsBox bx@@2 Tclass._System.object))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.ADT?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._module.ADT?)))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( ($IsBox bx@@3 Tclass._module.ADT?))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.ADT) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.ADT)))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( ($IsBox bx@@4 Tclass._module.ADT))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.P?) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.P?)))
 :qid |unknown.0:0|
 :skolemid |493|
 :pattern ( ($IsBox bx@@5 Tclass._module.P?))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.P) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.P)))
 :qid |unknown.0:0|
 :skolemid |499|
 :pattern ( ($IsBox bx@@6 Tclass._module.P))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._System.object)  (and ($Is refType |c#0@@2| Tclass._System.object?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object?))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass._module.ADT)  (and ($Is refType |c#0@@3| Tclass._module.ADT?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( ($Is refType |c#0@@3| Tclass._module.ADT))
 :pattern ( ($Is refType |c#0@@3| Tclass._module.ADT?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.P)  (and ($Is refType |c#0@@4| Tclass._module.P?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |508|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.P))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.P?))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@0 T@U) ($Heap@@0 T@U) (this@@0 T@U) (|n#0@@0| Int) ) (!  (=> (or (|_module.P.ReprFamily#canCall| $Heap@@0 this@@0 |n#0@@0|) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@0) (or (not (= this@@0 null)) (not true))) ($IsAlloc refType this@@0 Tclass._module.P $Heap@@0)) (<= (LitInt 0) |n#0@@0|)))) ($IsAlloc SetType (_module.P.ReprFamily $ly@@0 $Heap@@0 this@@0 |n#0@@0|) (TSet Tclass._System.object) $Heap@@0))
 :qid |gitissue4056dfy.12:18|
 :skolemid |502|
 :pattern ( ($IsAlloc SetType (_module.P.ReprFamily $ly@@0 $Heap@@0 this@@0 |n#0@@0|) (TSet Tclass._System.object) $Heap@@0))
))))
(assert (forall (($o@@4 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@4 Tclass._module.P? $heap) ($IsAlloc refType $o@@4 Tclass._module.ADT? $heap))
 :qid |unknown.0:0|
 :skolemid |513|
 :pattern ( ($IsAlloc refType $o@@4 Tclass._module.P? $heap))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((v@@2 T@U) (t0@@2 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@2) h@@0) (forall ((bx@@7 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@7) ($IsAllocBox bx@@7 t0@@2 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@7))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@2) h@@0))
)))
(assert (forall (($o@@5 T@U) ) (! ($Is refType $o@@5 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@5 Tclass._System.object?))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSet (TSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSet t@@2)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@2))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall (($ly@@1 T@U) ($Heap@@1 T@U) (this@@1 T@U) (|n#0@@1| Int) ) (! (= (_module.P.ReprFamily ($LS $ly@@1) $Heap@@1 this@@1 |n#0@@1|) (_module.P.ReprFamily $ly@@1 $Heap@@1 this@@1 |n#0@@1|))
 :qid |gitissue4056dfy.12:18|
 :skolemid |496|
 :pattern ( (_module.P.ReprFamily ($LS $ly@@1) $Heap@@1 this@@1 |n#0@@1|))
)))
(assert (forall ((bx@@8 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@8 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@8)) bx@@8) ($Is SetType ($Unbox SetType bx@@8) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@8 (TSet t@@3)))
)))
(assert (forall (($o@@6 T@U) ) (!  (=> ($Is refType $o@@6 Tclass._module.P?) ($Is refType $o@@6 Tclass._module.ADT?))
 :qid |unknown.0:0|
 :skolemid |512|
 :pattern ( ($Is refType $o@@6 Tclass._module.P?))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.P?) ($IsBox bx@@9 Tclass._module.ADT?))
 :qid |unknown.0:0|
 :skolemid |510|
 :pattern ( ($IsBox bx@@9 Tclass._module.P?))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass._module.ADT?) Tagclass._module.ADT?))
(assert (= (TagFamily Tclass._module.ADT?) tytagFamily$ADT))
(assert (= (Tag Tclass._module.ADT) Tagclass._module.ADT))
(assert (= (TagFamily Tclass._module.ADT) tytagFamily$ADT))
(assert (= (Tag Tclass._module.P?) Tagclass._module.P?))
(assert (= (TagFamily Tclass._module.P?) tytagFamily$P))
(assert (= (Tag Tclass._module.P) Tagclass._module.P))
(assert (= (TagFamily Tclass._module.P) tytagFamily$P))
(assert (forall (($o@@7 T@U) ) (! (= ($Is refType $o@@7 Tclass._module.ADT?)  (or (= $o@@7 null) (implements$_module.ADT (dtype $o@@7))))
 :qid |unknown.0:0|
 :skolemid |480|
 :pattern ( ($Is refType $o@@7 Tclass._module.ADT?))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@2 T@U) ($Heap@@2 T@U) (this@@2 T@U) (|n#0@@2| Int) ) (!  (=> (or (|_module.P.ReprFamily#canCall| $Heap@@2 this@@2 |n#0@@2|) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@2) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass._module.P) ($IsAlloc refType this@@2 Tclass._module.P $Heap@@2)))) (<= (LitInt 0) |n#0@@2|)))) (= (_module.P.ReprFamily ($LS $ly@@2) $Heap@@2 this@@2 |n#0@@2|) (Lit SetType |Set#Empty|)))
 :qid |gitissue4056dfy.12:18|
 :skolemid |504|
 :pattern ( (_module.P.ReprFamily ($LS $ly@@2) $Heap@@2 this@@2 |n#0@@2|) ($IsGoodHeap $Heap@@2))
))))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |n#0@@3| () Int)
(declare-fun P_$_ReadsFrame@0 () T@U)
(declare-fun $Heap@@3 () T@U)
(declare-fun this@@3 () T@U)
(declare-fun $LZ () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id OverrideCheck$$_module.P.ReprFamily)
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
 (=> (= (ControlFlow 0 0) 5) (let ((anon0_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (<= |n#0@@3| |n#0@@3|)) (=> (<= |n#0@@3| |n#0@@3|) (=> (= P_$_ReadsFrame@0 (|lambda#0| null $Heap@@3 alloc this@@3 (ite (= |n#0@@3| (LitInt 0)) |Set#Empty| (_module.P.ReprFamily ($LS $LZ) $Heap@@3 this@@3 (- |n#0@@3| 1))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall (($o@@8 T@U) ($f@@0 T@U) ) (!  (=> (and (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 $o@@8) alloc)))) (or (= $o@@8 this@@3) (|Set#IsMember| (ite (= |n#0@@3| (LitInt 0)) |Set#Empty| (_module.P.ReprFamily ($LS $LZ) $Heap@@3 this@@3 (- |n#0@@3| 1))) ($Box refType $o@@8)))) (or (= $o@@8 this@@3) (|Set#IsMember| (ite (= |n#0@@3| (LitInt 0)) |Set#Empty| (_module.P.ReprFamily ($LS $LZ) $Heap@@3 this@@3 (- |n#0@@3| 1))) ($Box refType $o@@8))))
 :qid |gitissue4056dfy.12:18|
 :skolemid |507|
))) (=> (forall (($o@@9 T@U) ($f@@1 T@U) ) (!  (=> (and (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 $o@@9) alloc)))) (or (= $o@@9 this@@3) (|Set#IsMember| (ite (= |n#0@@3| (LitInt 0)) |Set#Empty| (_module.P.ReprFamily ($LS $LZ) $Heap@@3 this@@3 (- |n#0@@3| 1))) ($Box refType $o@@9)))) (or (= $o@@9 this@@3) (|Set#IsMember| (ite (= |n#0@@3| (LitInt 0)) |Set#Empty| (_module.P.ReprFamily ($LS $LZ) $Heap@@3 this@@3 (- |n#0@@3| 1))) ($Box refType $o@@9))))
 :qid |gitissue4056dfy.12:18|
 :skolemid |507|
)) (=> (and (and (=> (> |n#0@@3| 0) (|Set#Subset| (_module.P.ReprFamily ($LS $LZ) $Heap@@3 this@@3 (- |n#0@@3| 1)) (_module.P.ReprFamily ($LS $LZ) $Heap@@3 this@@3 |n#0@@3|))) (= (ControlFlow 0 2) (- 0 1))) (> |n#0@@3| 0)) (|Set#Subset| (_module.P.ReprFamily ($LS ($LS $LZ)) $Heap@@3 this@@3 (- |n#0@@3| 1)) (_module.P.ReprFamily ($LS ($LS $LZ)) $Heap@@3 this@@3 |n#0@@3|))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@3) ($IsHeapAnchor $Heap@@3)) (=> (and (and (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 Tclass._module.P) ($IsAlloc refType this@@3 Tclass._module.P $Heap@@3))) (<= (LitInt 0) |n#0@@3|)) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 5) 2))) anon0_correct))))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
