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
(declare-fun Tagclass._module.DigitUnderscore__Names__Functions__and__Methods? () T@U)
(declare-fun Tagclass._module.DigitUnderscore__Names__Functions__and__Methods () T@U)
(declare-fun tytagFamily$DigitUnderscore_Names_Functions_and_Methods () T@U)
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
(declare-fun |ORD#Less| (T@U T@U) Bool)
(declare-fun |ORD#Minus| (T@U T@U) T@U)
(declare-fun |ORD#FromNat| (Int) T@U)
(declare-fun |ORD#Offset| (T@U) Int)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.DigitUnderscore__Names__Functions__and__Methods? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.DigitUnderscore__Names__Functions__and__Methods () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun |_module.DigitUnderscore__Names__Functions__and__Methods._500#| (T@U T@U T@U Int) Bool)
(declare-fun |ORD#LessThanLimit| (T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.DigitUnderscore__Names__Functions__and__Methods._500##canCall| (T@U T@U Int) Bool)
(declare-fun |ORD#IsNat| (T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun Tag (T@U) T@U)
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
(assert (distinct alloc Tagclass._module.DigitUnderscore__Names__Functions__and__Methods? Tagclass._module.DigitUnderscore__Names__Functions__and__Methods tytagFamily$DigitUnderscore_Names_Functions_and_Methods)
)
(assert (forall ((o T@U) (p T@U) (r T@U) ) (!  (=> (and (|ORD#Less| o p) (|ORD#Less| p r)) (|ORD#Less| o r))
 :qid |DafnyPreludebpl.427:15|
 :skolemid |10489|
 :pattern ( (|ORD#Less| o p) (|ORD#Less| p r))
 :pattern ( (|ORD#Less| o p) (|ORD#Less| o r))
)))
(assert (forall ((o@@0 T@U) (m Int) (n Int) ) (!  (=> (and (and (<= 0 m) (<= 0 n)) (<= (+ m n) (|ORD#Offset| o@@0))) (= (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)) (|ORD#Minus| o@@0 (|ORD#FromNat| (+ m n)))))
 :qid |DafnyPreludebpl.466:15|
 :skolemid |10497|
 :pattern ( (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)))
)))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.DigitUnderscore__Names__Functions__and__Methods?)  (or (= $o null) (= (dtype $o) Tclass._module.DigitUnderscore__Names__Functions__and__Methods?)))
 :qid |unknown.0:0|
 :skolemid |11015|
 :pattern ( ($Is refType $o Tclass._module.DigitUnderscore__Names__Functions__and__Methods?))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.DigitUnderscore__Names__Functions__and__Methods $h) ($IsAlloc refType |c#0| Tclass._module.DigitUnderscore__Names__Functions__and__Methods? $h))
 :qid |unknown.0:0|
 :skolemid |11085|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.DigitUnderscore__Names__Functions__and__Methods $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.DigitUnderscore__Names__Functions__and__Methods? $h))
)))
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
(assert (forall (($o@@0 T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._module.DigitUnderscore__Names__Functions__and__Methods? $h@@0)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |11016|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.DigitUnderscore__Names__Functions__and__Methods? $h@@0))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |10416|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |10414|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |10425|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly T@U) (this T@U) (|y#0| Int) (|_k#0| T@U) (_m T@U) (_limit T@U) ) (!  (=> (|ORD#Less| |_k#0| _m) (=> (|_module.DigitUnderscore__Names__Functions__and__Methods._500#| $ly this |_k#0| |y#0|) (|_module.DigitUnderscore__Names__Functions__and__Methods._500#| $ly this _m |y#0|)))
 :qid |Compilationlegacydfy.368:19|
 :skolemid |11047|
 :pattern ( (|_module.DigitUnderscore__Names__Functions__and__Methods._500#| $ly this |_k#0| |y#0|) (|ORD#LessThanLimit| |_k#0| _limit) (|ORD#LessThanLimit| _m _limit))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@0 T@U) (this@@0 T@U) (|y#0@@0| Int) (|_k#0@@0| T@U) ) (!  (=> (and (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass._module.DigitUnderscore__Names__Functions__and__Methods)) (= |_k#0@@0| (|ORD#FromNat| 0))) (not (|_module.DigitUnderscore__Names__Functions__and__Methods._500#| $ly@@0 this@@0 |_k#0@@0| |y#0@@0|)))
 :qid |Compilationlegacydfy.368:19|
 :skolemid |11046|
 :pattern ( (|_module.DigitUnderscore__Names__Functions__and__Methods._500#| $ly@@0 this@@0 |_k#0@@0| |y#0@@0|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@1 T@U) (this@@1 T@U) (|_k#0@@1| T@U) (|y#0@@1| Int) ) (!  (=> (or (|_module.DigitUnderscore__Names__Functions__and__Methods._500##canCall| this@@1 (Lit BoxType |_k#0@@1|) |y#0@@1|) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 Tclass._module.DigitUnderscore__Names__Functions__and__Methods)))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@1|)) (=> (or (not (= |y#0@@1| (LitInt 0))) (not true)) (|_module.DigitUnderscore__Names__Functions__and__Methods._500##canCall| this@@1 (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) (- |y#0@@1| 1)))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@1|)) (or (= |y#0@@1| (LitInt 0)) (|_module.DigitUnderscore__Names__Functions__and__Methods._500#| ($LS $ly@@1) this@@1 (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) (- |y#0@@1| 1)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@1|)) (forall ((|_k'#1| T@U) ) (!  (=> (|ORD#LessThanLimit| |_k'#1| |_k#0@@1|) (|_module.DigitUnderscore__Names__Functions__and__Methods._500##canCall| this@@1 |_k'#1| |y#0@@1|))
 :qid |Compilationlegacydfy.368:19|
 :skolemid |11057|
 :pattern ( (|_module.DigitUnderscore__Names__Functions__and__Methods._500#| ($LS $ly@@1) this@@1 |_k'#1| |y#0@@1|))
))))) (= (|_module.DigitUnderscore__Names__Functions__and__Methods._500#| ($LS $ly@@1) this@@1 (Lit BoxType |_k#0@@1|) |y#0@@1|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@1|)) (or (= |y#0@@1| (LitInt 0)) (|_module.DigitUnderscore__Names__Functions__and__Methods._500#| ($LS $ly@@1) this@@1 (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) (- |y#0@@1| 1)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@1|)) (exists ((|_k'#1@@0| T@U) ) (!  (and (|ORD#LessThanLimit| |_k'#1@@0| |_k#0@@1|) (|_module.DigitUnderscore__Names__Functions__and__Methods._500#| ($LS $ly@@1) this@@1 |_k'#1@@0| |y#0@@1|))
 :qid |Compilationlegacydfy.368:19|
 :skolemid |11056|
 :pattern ( (|_module.DigitUnderscore__Names__Functions__and__Methods._500#| ($LS $ly@@1) this@@1 |_k'#1@@0| |y#0@@1|))
)))))))
 :qid |Compilationlegacydfy.368:19|
 :weight 3
 :skolemid |11058|
 :pattern ( (|_module.DigitUnderscore__Names__Functions__and__Methods._500#| ($LS $ly@@1) this@@1 (Lit BoxType |_k#0@@1|) |y#0@@1|))
))))
(assert (forall ((o@@1 T@U) (p@@0 T@U) ) (!  (=> (and (|ORD#IsNat| p@@0) (<= (|ORD#Offset| p@@0) (|ORD#Offset| o@@1))) (and (= (|ORD#IsNat| (|ORD#Minus| o@@1 p@@0)) (|ORD#IsNat| o@@1)) (= (|ORD#Offset| (|ORD#Minus| o@@1 p@@0)) (- (|ORD#Offset| o@@1) (|ORD#Offset| p@@0)))))
 :qid |DafnyPreludebpl.451:15|
 :skolemid |10494|
 :pattern ( (|ORD#Minus| o@@1 p@@0))
)))
(assert (forall ((n@@0 Int) ) (!  (=> (<= 0 n@@0) (and (|ORD#IsNat| (|ORD#FromNat| n@@0)) (= (|ORD#Offset| (|ORD#FromNat| n@@0)) n@@0)))
 :qid |DafnyPreludebpl.412:15|
 :skolemid |10485|
 :pattern ( (|ORD#FromNat| n@@0))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._module.DigitUnderscore__Names__Functions__and__Methods)  (and ($Is refType |c#0@@0| Tclass._module.DigitUnderscore__Names__Functions__and__Methods?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |11084|
 :pattern ( ($Is refType |c#0@@0| Tclass._module.DigitUnderscore__Names__Functions__and__Methods))
 :pattern ( ($Is refType |c#0@@0| Tclass._module.DigitUnderscore__Names__Functions__and__Methods?))
)))
(assert (forall ((o@@2 T@U) (p@@1 T@U) ) (!  (or (or (|ORD#Less| o@@2 p@@1) (= o@@2 p@@1)) (|ORD#Less| p@@1 o@@2))
 :qid |DafnyPreludebpl.424:15|
 :skolemid |10488|
 :pattern ( (|ORD#Less| o@@2 p@@1) (|ORD#Less| p@@1 o@@2))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@2 T@U) (this@@2 T@U) (|_k#0@@2| T@U) (|y#0@@2| Int) ) (!  (=> (or (|_module.DigitUnderscore__Names__Functions__and__Methods._500##canCall| this@@2 |_k#0@@2| |y#0@@2|) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 Tclass._module.DigitUnderscore__Names__Functions__and__Methods)))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@2|)) (=> (or (not (= |y#0@@2| (LitInt 0))) (not true)) (|_module.DigitUnderscore__Names__Functions__and__Methods._500##canCall| this@@2 (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) (- |y#0@@2| 1)))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@2|)) (or (= |y#0@@2| (LitInt 0)) (|_module.DigitUnderscore__Names__Functions__and__Methods._500#| $ly@@2 this@@2 (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) (- |y#0@@2| 1)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@2|)) (forall ((|_k'#0| T@U) ) (!  (=> (|ORD#LessThanLimit| |_k'#0| |_k#0@@2|) (|_module.DigitUnderscore__Names__Functions__and__Methods._500##canCall| this@@2 |_k'#0| |y#0@@2|))
 :qid |Compilationlegacydfy.368:19|
 :skolemid |11054|
 :pattern ( (|_module.DigitUnderscore__Names__Functions__and__Methods._500#| $ly@@2 this@@2 |_k'#0| |y#0@@2|))
))))) (= (|_module.DigitUnderscore__Names__Functions__and__Methods._500#| ($LS $ly@@2) this@@2 |_k#0@@2| |y#0@@2|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@2|)) (or (= |y#0@@2| (LitInt 0)) (|_module.DigitUnderscore__Names__Functions__and__Methods._500#| $ly@@2 this@@2 (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) (- |y#0@@2| 1)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@2|)) (exists ((|_k'#0@@0| T@U) ) (!  (and (|ORD#LessThanLimit| |_k'#0@@0| |_k#0@@2|) (|_module.DigitUnderscore__Names__Functions__and__Methods._500#| $ly@@2 this@@2 |_k'#0@@0| |y#0@@2|))
 :qid |Compilationlegacydfy.368:19|
 :skolemid |11053|
 :pattern ( (|_module.DigitUnderscore__Names__Functions__and__Methods._500#| $ly@@2 this@@2 |_k'#0@@0| |y#0@@2|))
)))))))
 :qid |Compilationlegacydfy.368:19|
 :skolemid |11055|
 :pattern ( (|_module.DigitUnderscore__Names__Functions__and__Methods._500#| ($LS $ly@@2) this@@2 |_k#0@@2| |y#0@@2|))
))))
(assert (forall ((o@@3 T@U) (p@@2 T@U) ) (! (= (|ORD#LessThanLimit| o@@3 p@@2) (|ORD#Less| o@@3 p@@2))
 :qid |DafnyPreludebpl.434:15|
 :skolemid |10490|
 :pattern ( (|ORD#LessThanLimit| o@@3 p@@2))
)))
(assert (forall (($ly@@3 T@U) (this@@3 T@U) (|_k#0@@3| T@U) (|y#0@@3| Int) ) (! (= (|_module.DigitUnderscore__Names__Functions__and__Methods._500#| ($LS $ly@@3) this@@3 |_k#0@@3| |y#0@@3|) (|_module.DigitUnderscore__Names__Functions__and__Methods._500#| $ly@@3 this@@3 |_k#0@@3| |y#0@@3|))
 :qid |Compilationlegacydfy.368:19|
 :skolemid |11049|
 :pattern ( (|_module.DigitUnderscore__Names__Functions__and__Methods._500#| ($LS $ly@@3) this@@3 |_k#0@@3| |y#0@@3|))
)))
(assert (forall ((o@@4 T@U) ) (! (<= 0 (|ORD#Offset| o@@4))
 :qid |DafnyPreludebpl.406:15|
 :skolemid |10484|
 :pattern ( (|ORD#Offset| o@@4))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |10424|
 :pattern ( ($Box T@@1 x@@5))
)))
(assert (forall ((o@@5 T@U) (p@@3 T@U) ) (!  (and (and (and (=> (|ORD#Less| o@@5 p@@3) (or (not (= o@@5 p@@3)) (not true))) (=> (and (|ORD#IsNat| o@@5) (not (|ORD#IsNat| p@@3))) (|ORD#Less| o@@5 p@@3))) (=> (and (|ORD#IsNat| o@@5) (|ORD#IsNat| p@@3)) (= (|ORD#Less| o@@5 p@@3) (< (|ORD#Offset| o@@5) (|ORD#Offset| p@@3))))) (=> (and (|ORD#Less| o@@5 p@@3) (|ORD#IsNat| p@@3)) (|ORD#IsNat| o@@5)))
 :qid |DafnyPreludebpl.418:15|
 :skolemid |10487|
 :pattern ( (|ORD#Less| o@@5 p@@3))
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
 :skolemid |11318|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))
)))
(assert (forall ((o@@6 T@U) ) (!  (=> (|ORD#IsNat| o@@6) (= o@@6 (|ORD#FromNat| (|ORD#Offset| o@@6))))
 :qid |DafnyPreludebpl.414:15|
 :skolemid |10486|
 :pattern ( (|ORD#Offset| o@@6))
 :pattern ( (|ORD#IsNat| o@@6))
)))
(assert (= (Tag Tclass._module.DigitUnderscore__Names__Functions__and__Methods?) Tagclass._module.DigitUnderscore__Names__Functions__and__Methods?))
(assert (= (TagFamily Tclass._module.DigitUnderscore__Names__Functions__and__Methods?) tytagFamily$DigitUnderscore_Names_Functions_and_Methods))
(assert (= (Tag Tclass._module.DigitUnderscore__Names__Functions__and__Methods) Tagclass._module.DigitUnderscore__Names__Functions__and__Methods))
(assert (= (TagFamily Tclass._module.DigitUnderscore__Names__Functions__and__Methods) tytagFamily$DigitUnderscore_Names_Functions_and_Methods))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@4 T@U) (this@@4 T@U) (|_k#0@@4| T@U) (|y#0@@4| Int) ) (!  (=> (or (|_module.DigitUnderscore__Names__Functions__and__Methods._500##canCall| (Lit refType this@@4) (Lit BoxType |_k#0@@4|) (LitInt |y#0@@4|)) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@4 null)) (not true)) ($Is refType this@@4 Tclass._module.DigitUnderscore__Names__Functions__and__Methods)))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (=> (or (not (= (LitInt |y#0@@4|) (LitInt 0))) (not true)) (|_module.DigitUnderscore__Names__Functions__and__Methods._500##canCall| (Lit refType this@@4) (|ORD#Minus| |_k#0@@4| (|ORD#FromNat| 1)) (LitInt (- |y#0@@4| 1))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (or (= (LitInt |y#0@@4|) (LitInt 0)) (|_module.DigitUnderscore__Names__Functions__and__Methods._500#| ($LS $ly@@4) (Lit refType this@@4) (|ORD#Minus| |_k#0@@4| (|ORD#FromNat| 1)) (LitInt (- |y#0@@4| 1))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@4|)) (forall ((|_k'#2| T@U) ) (!  (=> (|ORD#LessThanLimit| |_k'#2| |_k#0@@4|) (|_module.DigitUnderscore__Names__Functions__and__Methods._500##canCall| this@@4 |_k'#2| |y#0@@4|))
 :qid |Compilationlegacydfy.368:19|
 :skolemid |11060|
 :pattern ( (|_module.DigitUnderscore__Names__Functions__and__Methods._500#| ($LS $ly@@4) this@@4 |_k'#2| |y#0@@4|))
))))) (= (|_module.DigitUnderscore__Names__Functions__and__Methods._500#| ($LS $ly@@4) (Lit refType this@@4) (Lit BoxType |_k#0@@4|) (LitInt |y#0@@4|))  (and (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (or (= (LitInt |y#0@@4|) (LitInt 0)) (|_module.DigitUnderscore__Names__Functions__and__Methods._500#| ($LS $ly@@4) (Lit refType this@@4) (|ORD#Minus| |_k#0@@4| (|ORD#FromNat| 1)) (LitInt (- |y#0@@4| 1))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@4|)) (exists ((|_k'#2@@0| T@U) ) (!  (and (|ORD#LessThanLimit| |_k'#2@@0| |_k#0@@4|) (|_module.DigitUnderscore__Names__Functions__and__Methods._500#| ($LS $ly@@4) this@@4 |_k'#2@@0| |y#0@@4|))
 :qid |Compilationlegacydfy.368:19|
 :skolemid |11059|
 :pattern ( (|_module.DigitUnderscore__Names__Functions__and__Methods._500#| ($LS $ly@@4) this@@4 |_k'#2@@0| |y#0@@4|))
)))))))
 :qid |Compilationlegacydfy.368:19|
 :weight 3
 :skolemid |11061|
 :pattern ( (|_module.DigitUnderscore__Names__Functions__and__Methods._500#| ($LS $ly@@4) (Lit refType this@@4) (Lit BoxType |_k#0@@4|) (LitInt |y#0@@4|)))
))))
(assert (forall ((o@@7 T@U) (p@@4 T@U) ) (!  (=> (and (|ORD#IsNat| p@@4) (<= (|ORD#Offset| p@@4) (|ORD#Offset| o@@7))) (or (and (= p@@4 (|ORD#FromNat| 0)) (= (|ORD#Minus| o@@7 p@@4) o@@7)) (and (or (not (= p@@4 (|ORD#FromNat| 0))) (not true)) (|ORD#Less| (|ORD#Minus| o@@7 p@@4) o@@7))))
 :qid |DafnyPreludebpl.455:15|
 :skolemid |10495|
 :pattern ( (|ORD#Minus| o@@7 p@@4))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |10417|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@7)) (Lit BoxType ($Box T@@2 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |10415|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@7)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |y#1| () Int)
(declare-fun |_k#0@@5| () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Heap@1 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun $LZ () T@U)
(declare-fun this@@5 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(set-info :boogie-vc-id |Impl$$_module.DigitUnderscore__Names__Functions__and__Methods._5_0_0#|)
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
 (=> (= (ControlFlow 0 0) 6) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (<= (LitInt 0) |y#1|))))
(let ((anon3_Else_correct  (=> (<= (|ORD#Offset| |_k#0@@5|) 0) (=> (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (= $Heap@0 $Heap@1)) (and (forall ((|_k'#2@@1| T@U) (|y#2| Int) ) (!  (=> (and (|ORD#Less| |_k'#2@@1| |_k#0@@5|) (|_module.DigitUnderscore__Names__Functions__and__Methods._500#| ($LS $LZ) this@@5 |_k'#2@@1| |y#2|)) (<= (LitInt 0) |y#2|))
 :qid |Compilationlegacydfy.373:15|
 :skolemid |11069|
 :pattern ( (|_module.DigitUnderscore__Names__Functions__and__Methods._500#| ($LS $LZ) this@@5 |_k'#2@@1| |y#2|))
)) (= (ControlFlow 0 4) 2))) GeneratedUnifiedExit_correct))))
(let ((anon3_Then_correct  (=> (and (< 0 (|ORD#Offset| |_k#0@@5|)) (= (ControlFlow 0 3) 2)) GeneratedUnifiedExit_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap $Heap@0) (forall ((|$ih#_k0#0| T@U) (|$ih#y0#0| Int) ) (!  (=> (and (|_module.DigitUnderscore__Names__Functions__and__Methods._500#| ($LS $LZ) this@@5 |$ih#_k0#0| |$ih#y0#0|) (or (|ORD#Less| |$ih#_k0#0| |_k#0@@5|) (and (= |$ih#_k0#0| |_k#0@@5|) (and (<= 0 |$ih#y0#0|) (< |$ih#y0#0| |y#1|))))) (<= (LitInt 0) |$ih#y0#0|))
 :qid |Compilationlegacydfy.373:15|
 :skolemid |11068|
 :pattern ( (|_module.DigitUnderscore__Names__Functions__and__Methods._500#| ($LS $LZ) this@@5 |$ih#_k0#0| |$ih#y0#0|))
)))) (and (=> (= (ControlFlow 0 5) 3) anon3_Then_correct) (=> (= (ControlFlow 0 5) 4) anon3_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (or (not (= this@@5 null)) (not true)) (and ($Is refType this@@5 Tclass._module.DigitUnderscore__Names__Functions__and__Methods) ($IsAlloc refType this@@5 Tclass._module.DigitUnderscore__Names__Functions__and__Methods $Heap))) (= 2 $FunctionContextHeight)) (and (and (|_module.DigitUnderscore__Names__Functions__and__Methods._500##canCall| this@@5 |_k#0@@5| |y#1|) (and (|_module.DigitUnderscore__Names__Functions__and__Methods._500#| ($LS $LZ) this@@5 |_k#0@@5| |y#1|) (and (=> (< 0 (|ORD#Offset| |_k#0@@5|)) (or (= |y#1| (LitInt 0)) (|_module.DigitUnderscore__Names__Functions__and__Methods._500#| ($LS $LZ) this@@5 (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) (- |y#1| 1)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@5|)) (exists ((|_k'#1@@1| T@U) ) (!  (and (|ORD#LessThanLimit| |_k'#1@@1| |_k#0@@5|) (|_module.DigitUnderscore__Names__Functions__and__Methods._500#| ($LS $LZ) this@@5 |_k'#1@@1| |y#1|))
 :qid |Compilationlegacydfy.368:19|
 :skolemid |11067|
 :pattern ( (|_module.DigitUnderscore__Names__Functions__and__Methods._500#| ($LS $LZ) this@@5 |_k'#1@@1| |y#1|))
)))))) (= (ControlFlow 0 6) 5))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
