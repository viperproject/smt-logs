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
(declare-fun TBool () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagSet () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun Tagclass._module.Lang () T@U)
(declare-fun |##_module.Lang.L| () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
(declare-fun tytagFamily$Lang () T@U)
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
(declare-fun Tag (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |#_module.Lang.L| (Bool T@U) T@U)
(declare-fun Tclass._module.Lang (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun Reads1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun Handle1 (T@U T@U T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun SetType () T@T)
(declare-fun MapType0Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
(declare-fun |lambda#7| (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |ORD#Less| (T@U T@U) Bool)
(declare-fun |ORD#Minus| (T@U T@U) T@U)
(declare-fun |ORD#FromNat| (Int) T@U)
(declare-fun |ORD#Offset| (T@U) Int)
(declare-fun |Set#Empty| () T@U)
(declare-fun _module.Lang.L_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.Nothing (T@U T@U) T@U)
(declare-fun |_module.__default.Nothing#canCall| (T@U) Bool)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun null () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun TSet (T@U) T@U)
(declare-fun AtLayer (T@T T@U T@U) T@U)
(declare-fun LayerTypeType () T@T)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |ORD#IsNat| (T@U) Bool)
(declare-fun SetRef_to_SetBox (T@U) T@U)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun _module.Lang.nullable (T@U) Bool)
(declare-fun |lambda#10| (T@U T@U T@U) T@U)
(declare-fun |lambda#6| (T@U) T@U)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun |lambda#8| (Bool) T@U)
(declare-fun $AlwaysAllocated (T@U) Bool)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun _module.Lang.deriv (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tclass._module.Lang_0 (T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun _module.__default.TotalLang_h (T@U T@U T@U T@U T@U) Bool)
(declare-fun |lambda#9| (T@U) T@U)
(declare-fun |_module.__default.TotalLang_h#canCall| (T@U T@U T@U T@U) Bool)
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
(assert (distinct TBool TagBool TagSet alloc Tagclass._System.object? Tagclass._System.object Tagclass._System.___hFunc1 Tagclass._module.Lang |##_module.Lang.L| tytagFamily$object |tytagFamily$_#Func1| tytagFamily$Lang)
)
(assert (= (Tag TBool) TagBool))
(assert  (and (= (Ctor DatatypeTypeType) 3) (= (Ctor HandleTypeType) 4)))
(assert (forall ((_module.Lang$S T@U) (|a#15#0#0| Bool) (|a#15#1#0| T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) (= ($IsAlloc DatatypeTypeType (|#_module.Lang.L| |a#15#0#0| |a#15#1#0|) (Tclass._module.Lang _module.Lang$S) $h)  (and ($IsAlloc boolType (bool_2_U |a#15#0#0|) TBool $h) ($IsAlloc HandleTypeType |a#15#1#0| (Tclass._System.___hFunc1 _module.Lang$S (Tclass._module.Lang _module.Lang$S)) $h))))
 :qid |unknown.0:0|
 :skolemid |835|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Lang.L| |a#15#0#0| |a#15#1#0|) (Tclass._module.Lang _module.Lang$S) $h))
)))
(assert  (and (and (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 5)
 :qid |ctor:MapType1Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@4 arg1@@1))
))) (= (Ctor refType) 6)) (= (Ctor FieldType) 7)) (= (Ctor BoxType) 8)) (= (Ctor SetType) 9)))
(assert (forall ((t0@@1 T@U) (t1@@1 T@U) (heap T@U) (h T@U) (r T@U) (rd T@U) (bx0 T@U) (bx T@U) ) (! (= (|Set#IsMember| (Reads1 t0@@1 t1@@1 heap (Handle1 h r rd) bx0) bx) (|Set#IsMember| (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType rd heap bx0) bx))
 :qid |unknown.0:0|
 :skolemid |372|
 :pattern ( (|Set#IsMember| (Reads1 t0@@1 t1@@1 heap (Handle1 h r rd) bx0) bx))
)))
(assert (forall ((|l#0| T@U) (|$l#0#heap#0| T@U) (|$l#0#s#0| T@U) ) (! (= (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#7| |l#0|) |$l#0#heap#0| |$l#0#s#0|)) ($IsBox |$l#0#s#0| |l#0|))
 :qid |unknown.0:0|
 :skolemid |904|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#7| |l#0|) |$l#0#heap#0| |$l#0#s#0|))
)))
(assert (forall ((o T@U) (p T@U) (r@@0 T@U) ) (!  (=> (and (|ORD#Less| o p) (|ORD#Less| p r@@0)) (|ORD#Less| o r@@0))
 :qid |DafnyPreludebpl.427:15|
 :skolemid |90|
 :pattern ( (|ORD#Less| o p) (|ORD#Less| p r@@0))
 :pattern ( (|ORD#Less| o p) (|ORD#Less| o r@@0))
)))
(assert (forall ((o@@0 T@U) (m@@4 Int) (n Int) ) (!  (=> (and (and (<= 0 m@@4) (<= 0 n)) (<= (+ m@@4 n) (|ORD#Offset| o@@0))) (= (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m@@4)) (|ORD#FromNat| n)) (|ORD#Minus| o@@0 (|ORD#FromNat| (+ m@@4 n)))))
 :qid |DafnyPreludebpl.466:15|
 :skolemid |98|
 :pattern ( (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m@@4)) (|ORD#FromNat| n)))
)))
(assert (forall ((o@@1 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@1))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@1))
)))
(assert (forall ((_module.Lang$S@@0 T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._module.Lang _module.Lang$S@@0)) (_module.Lang.L_q d))
 :qid |unknown.0:0|
 :skolemid |842|
 :pattern ( (_module.Lang.L_q d) ($Is DatatypeTypeType d (Tclass._module.Lang _module.Lang$S@@0)))
)))
(assert (forall ((f T@U) (t0@@2 T@U) (t1@@2 T@U) (u0@@2 T@U) (u1@@2 T@U) ) (!  (=> (and (and ($Is HandleTypeType f (Tclass._System.___hFunc1 t0@@2 t1@@2)) (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 u0@@2) ($IsBox bx@@0 t0@@2))
 :qid |unknown.0:0|
 :skolemid |389|
 :pattern ( ($IsBox bx@@0 u0@@2))
 :pattern ( ($IsBox bx@@0 t0@@2))
))) (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 t1@@2) ($IsBox bx@@1 u1@@2))
 :qid |unknown.0:0|
 :skolemid |390|
 :pattern ( ($IsBox bx@@1 t1@@2))
 :pattern ( ($IsBox bx@@1 u1@@2))
))) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0@@2 u1@@2)))
 :qid |unknown.0:0|
 :skolemid |391|
 :pattern ( ($Is HandleTypeType f (Tclass._System.___hFunc1 t0@@2 t1@@2)) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0@@2 u1@@2)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Nothing$_T0 T@U) ($ly T@U) ) (!  (=> (or (|_module.__default.Nothing#canCall| _module._default.Nothing$_T0) (< 1 $FunctionContextHeight)) ($Is DatatypeTypeType (_module.__default.Nothing _module._default.Nothing$_T0 $ly) (Tclass._module.Lang _module._default.Nothing$_T0)))
 :qid |unknown.0:0|
 :skolemid |635|
 :pattern ( (_module.__default.Nothing _module._default.Nothing$_T0 $ly))
))))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h@@0) ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
)))
(assert (forall (($o T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o Tclass._System.object? $h@@1)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@1 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o Tclass._System.object? $h@@1))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (_module._default.Nothing$_T0@@0 T@U) ($ly@@0 T@U) ) (!  (=> (and (or (|_module.__default.Nothing#canCall| _module._default.Nothing$_T0@@0) (< 1 $FunctionContextHeight)) ($IsGoodHeap $Heap)) ($IsAlloc DatatypeTypeType (_module.__default.Nothing _module._default.Nothing$_T0@@0 $ly@@0) (Tclass._module.Lang _module._default.Nothing$_T0@@0) $Heap))
 :qid |ExpandedGuardednessdfy.131:10|
 :skolemid |636|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.__default.Nothing _module._default.Nothing$_T0@@0 $ly@@0) (Tclass._module.Lang _module._default.Nothing$_T0@@0) $Heap))
))))
(assert (forall ((t0@@3 T@U) (t1@@3 T@U) (heap@@0 T@U) (f@@0 T@U) (bx0@@0 T@U) ) (!  (=> (and ($IsGoodHeap heap@@0) (and ($IsBox bx0@@0 t0@@3) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@3 t1@@3)))) (= (|Set#Equal| (Reads1 t0@@3 t1@@3 $OneHeap f@@0 bx0@@0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@3 t1@@3 heap@@0 f@@0 bx0@@0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |385|
 :pattern ( (Reads1 t0@@3 t1@@3 $OneHeap f@@0 bx0@@0) ($IsGoodHeap heap@@0))
 :pattern ( (Reads1 t0@@3 t1@@3 heap@@0 f@@0 bx0@@0))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Lang.L_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Lang.L|))
 :qid |unknown.0:0|
 :skolemid |831|
 :pattern ( (_module.Lang.L_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.Lang.L_q d@@1) (exists ((|a#14#0#0| Bool) (|a#14#1#0| T@U) ) (! (= d@@1 (|#_module.Lang.L| |a#14#0#0| |a#14#1#0|))
 :qid |ExpandedGuardednessdfy.129:25|
 :skolemid |832|
)))
 :qid |unknown.0:0|
 :skolemid |833|
 :pattern ( (_module.Lang.L_q d@@1))
)))
(assert (forall ((_module.Lang$S@@1 T@U) (|a#15#0#0@@0| Bool) (|a#15#1#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Lang.L| |a#15#0#0@@0| |a#15#1#0@@0|) (Tclass._module.Lang _module.Lang$S@@1))  (and ($Is boolType (bool_2_U |a#15#0#0@@0|) TBool) ($Is HandleTypeType |a#15#1#0@@0| (Tclass._System.___hFunc1 _module.Lang$S@@1 (Tclass._module.Lang _module.Lang$S@@1)))))
 :qid |unknown.0:0|
 :skolemid |834|
 :pattern ( ($Is DatatypeTypeType (|#_module.Lang.L| |a#15#0#0@@0| |a#15#1#0@@0|) (Tclass._module.Lang _module.Lang$S@@1)))
)))
(assert (forall ((v T@U) (t0@@4 T@U) ) (! (= ($Is SetType v (TSet t0@@4)) (forall ((bx@@2 T@U) ) (!  (=> (|Set#IsMember| v bx@@2) ($IsBox bx@@2 t0@@4))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@2))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@4)))
)))
(assert (= (Ctor LayerTypeType) 10))
(assert (forall ((f@@1 T@U) (ly T@U) (A T@T) ) (! (= (AtLayer A f@@1 ly) (MapType1Select LayerTypeType A f@@1 ly))
 :qid |DafnyPreludebpl.501:18|
 :skolemid |101|
 :pattern ( (AtLayer A f@@1 ly))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((_module.Lang$S@@2 T@U) ) (!  (and (= (Tag (Tclass._module.Lang _module.Lang$S@@2)) Tagclass._module.Lang) (= (TagFamily (Tclass._module.Lang _module.Lang$S@@2)) tytagFamily$Lang))
 :qid |unknown.0:0|
 :skolemid |538|
 :pattern ( (Tclass._module.Lang _module.Lang$S@@2))
)))
(assert (forall ((o@@2 T@U) (p@@0 T@U) ) (!  (=> (and (|ORD#IsNat| p@@0) (<= (|ORD#Offset| p@@0) (|ORD#Offset| o@@2))) (and (= (|ORD#IsNat| (|ORD#Minus| o@@2 p@@0)) (|ORD#IsNat| o@@2)) (= (|ORD#Offset| (|ORD#Minus| o@@2 p@@0)) (- (|ORD#Offset| o@@2) (|ORD#Offset| p@@0)))))
 :qid |DafnyPreludebpl.451:15|
 :skolemid |95|
 :pattern ( (|ORD#Minus| o@@2 p@@0))
)))
(assert (forall ((s T@U) (bx@@3 T@U) ) (! (= (|Set#IsMember| (SetRef_to_SetBox s) bx@@3) (U_2_bool (MapType1Select refType boolType s ($Unbox refType bx@@3))))
 :qid |DafnyPreludebpl.370:15|
 :skolemid |82|
 :pattern ( (|Set#IsMember| (SetRef_to_SetBox s) bx@@3))
)))
(assert (forall ((n@@0 Int) ) (!  (=> (<= 0 n@@0) (and (|ORD#IsNat| (|ORD#FromNat| n@@0)) (= (|ORD#Offset| (|ORD#FromNat| n@@0)) n@@0)))
 :qid |DafnyPreludebpl.412:15|
 :skolemid |86|
 :pattern ( (|ORD#FromNat| n@@0))
)))
(assert (forall ((t0@@5 T@U) (t1@@4 T@U) (heap@@1 T@U) (h@@1 T@U) (r@@1 T@U) (rd@@0 T@U) (bx0@@1 T@U) ) (! (= (Apply1 t0@@5 t1@@4 heap@@1 (Handle1 h@@1 r@@1 rd@@0) bx0@@1) (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType h@@1 heap@@1 bx0@@1))
 :qid |unknown.0:0|
 :skolemid |370|
 :pattern ( (Apply1 t0@@5 t1@@4 heap@@1 (Handle1 h@@1 r@@1 rd@@0) bx0@@1))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( ($IsBox bx@@4 Tclass._System.object?))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsBox bx@@5 Tclass._System.object))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._System.object)  (and ($Is refType |c#0@@0| Tclass._System.object?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@0| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@0| Tclass._System.object?))
)))
(assert (forall ((d@@2 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.Lang.L_q d@@2) (exists ((_module.Lang$S@@3 T@U) ) (! ($IsAlloc DatatypeTypeType d@@2 (Tclass._module.Lang _module.Lang$S@@3) $h@@2)
 :qid |unknown.0:0|
 :skolemid |836|
 :pattern ( ($IsAlloc DatatypeTypeType d@@2 (Tclass._module.Lang _module.Lang$S@@3) $h@@2))
)))) ($IsAlloc boolType (bool_2_U (_module.Lang.nullable d@@2)) TBool $h@@2))
 :qid |unknown.0:0|
 :skolemid |837|
 :pattern ( ($IsAlloc boolType (bool_2_U (_module.Lang.nullable d@@2)) TBool $h@@2))
)))
(assert (forall ((|l#0@@0| T@U) (|l#1| T@U) (|l#2| T@U) (|$l#0#ly#0| T@U) ) (! (= (MapType1Select LayerTypeType HandleTypeType (|lambda#10| |l#0@@0| |l#1| |l#2|) |$l#0#ly#0|) (Handle1 (|lambda#6| ($Box DatatypeTypeType (Lit DatatypeTypeType (_module.__default.Nothing |l#0@@0| |$l#0#ly#0|)))) |l#1| |l#2|))
 :qid |unknown.0:0|
 :skolemid |907|
 :pattern ( (MapType1Select LayerTypeType HandleTypeType (|lambda#10| |l#0@@0| |l#1| |l#2|) |$l#0#ly#0|))
)))
(assert (forall ((f@@2 T@U) (t0@@6 T@U) (t1@@5 T@U) (h@@2 T@U) ) (!  (=> (and ($IsGoodHeap h@@2) ($IsAlloc HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@6 t1@@5) h@@2)) (forall ((bx0@@2 T@U) ) (!  (=> (and ($IsAllocBox bx0@@2 t0@@6 h@@2) (Requires1 t0@@6 t1@@5 h@@2 f@@2 bx0@@2)) ($IsAllocBox (Apply1 t0@@6 t1@@5 h@@2 f@@2 bx0@@2) t1@@5 h@@2))
 :qid |unknown.0:0|
 :skolemid |395|
 :pattern ( (Apply1 t0@@6 t1@@5 h@@2 f@@2 bx0@@2))
)))
 :qid |unknown.0:0|
 :skolemid |396|
 :pattern ( ($IsAlloc HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@6 t1@@5) h@@2))
)))
(assert (forall ((o@@3 T@U) (p@@1 T@U) ) (!  (or (or (|ORD#Less| o@@3 p@@1) (= o@@3 p@@1)) (|ORD#Less| p@@1 o@@3))
 :qid |DafnyPreludebpl.424:15|
 :skolemid |89|
 :pattern ( (|ORD#Less| o@@3 p@@1) (|ORD#Less| p@@1 o@@3))
)))
(assert (forall ((|l#0@@1| Bool) (|$l#0#o#0| T@U) ) (! (= (U_2_bool (MapType1Select refType boolType (|lambda#8| |l#0@@1|) |$l#0#o#0|)) |l#0@@1|)
 :qid |unknown.0:0|
 :skolemid |905|
 :pattern ( (MapType1Select refType boolType (|lambda#8| |l#0@@1|) |$l#0#o#0|))
)))
(assert (forall ((|a#16#0#0| Bool) (|a#16#1#0| T@U) ) (! (= (_module.Lang.nullable (|#_module.Lang.L| |a#16#0#0| |a#16#1#0|)) |a#16#0#0|)
 :qid |ExpandedGuardednessdfy.129:25|
 :skolemid |839|
 :pattern ( (|#_module.Lang.L| |a#16#0#0| |a#16#1#0|))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((f@@3 T@U) (t0@@7 T@U) (t1@@6 T@U) ) (! (= ($Is HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@7 t1@@6)) (forall ((h@@3 T@U) (bx0@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@3) ($IsBox bx0@@3 t0@@7)) (Requires1 t0@@7 t1@@6 h@@3 f@@3 bx0@@3)) ($IsBox (Apply1 t0@@7 t1@@6 h@@3 f@@3 bx0@@3) t1@@6))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |387|
 :pattern ( (Apply1 t0@@7 t1@@6 h@@3 f@@3 bx0@@3))
)))
 :qid |unknown.0:0|
 :skolemid |388|
 :pattern ( ($Is HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@7 t1@@6)))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 TBool) (and (= ($Box boolType ($Unbox boolType bx@@6)) bx@@6) ($Is boolType ($Unbox boolType bx@@6) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@6 TBool))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((t0@@8 T@U) (t1@@7 T@U) (heap@@2 T@U) (h@@4 T@U) (r@@2 T@U) (rd@@1 T@U) (bx0@@4 T@U) ) (!  (=> (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType r@@2 heap@@2 bx0@@4)) (Requires1 t0@@8 t1@@7 heap@@2 (Handle1 h@@4 r@@2 rd@@1) bx0@@4))
 :qid |unknown.0:0|
 :skolemid |371|
 :pattern ( (Requires1 t0@@8 t1@@7 heap@@2 (Handle1 h@@4 r@@2 rd@@1) bx0@@4))
)))
(assert (forall ((o@@4 T@U) ) (! (<= 0 (|ORD#Offset| o@@4))
 :qid |DafnyPreludebpl.406:15|
 :skolemid |85|
 :pattern ( (|ORD#Offset| o@@4))
)))
(assert (forall ((ty T@U) ) (!  (=> ($AlwaysAllocated ty) (forall ((h@@5 T@U) (v@@2 T@U) ) (!  (=> ($IsBox v@@2 ty) ($IsAllocBox v@@2 ty h@@5))
 :qid |DafnyPreludebpl.337:13|
 :skolemid |79|
 :pattern ( ($IsAllocBox v@@2 ty h@@5))
)))
 :qid |DafnyPreludebpl.335:17|
 :skolemid |80|
 :pattern ( ($AlwaysAllocated ty))
)))
(assert (forall ((v@@3 T@U) (t0@@9 T@U) (h@@6 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@9) h@@6) (forall ((bx@@7 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@7) ($IsAllocBox bx@@7 t0@@9 h@@6))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@7))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@9) h@@6))
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
(assert (forall ((|a#13#0#0| Bool) (|a#13#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Lang.L| |a#13#0#0| |a#13#1#0|)) |##_module.Lang.L|)
 :qid |ExpandedGuardednessdfy.129:25|
 :skolemid |830|
 :pattern ( (|#_module.Lang.L| |a#13#0#0| |a#13#1#0|))
)))
(assert (forall ((|a#17#0#0| Bool) (|a#17#1#0| T@U) ) (! (= (_module.Lang.deriv (|#_module.Lang.L| |a#17#0#0| |a#17#1#0|)) |a#17#1#0|)
 :qid |ExpandedGuardednessdfy.129:25|
 :skolemid |840|
 :pattern ( (|#_module.Lang.L| |a#17#0#0| |a#17#1#0|))
)))
(assert (forall (($o@@0 T@U) ) (! ($Is refType $o@@0 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@0 Tclass._System.object?))
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
(assert (forall ((_module.Lang$S@@4 T@U) ) (! (= (Tclass._module.Lang_0 (Tclass._module.Lang _module.Lang$S@@4)) _module.Lang$S@@4)
 :qid |unknown.0:0|
 :skolemid |539|
 :pattern ( (Tclass._module.Lang _module.Lang$S@@4))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((o@@5 T@U) (p@@2 T@U) ) (!  (and (and (and (=> (|ORD#Less| o@@5 p@@2) (or (not (= o@@5 p@@2)) (not true))) (=> (and (|ORD#IsNat| o@@5) (not (|ORD#IsNat| p@@2))) (|ORD#Less| o@@5 p@@2))) (=> (and (|ORD#IsNat| o@@5) (|ORD#IsNat| p@@2)) (= (|ORD#Less| o@@5 p@@2) (< (|ORD#Offset| o@@5) (|ORD#Offset| p@@2))))) (=> (and (|ORD#Less| o@@5 p@@2) (|ORD#IsNat| p@@2)) (|ORD#IsNat| o@@5)))
 :qid |DafnyPreludebpl.418:15|
 :skolemid |88|
 :pattern ( (|ORD#Less| o@@5 p@@2))
)))
(assert (forall ((_module._default.Nothing$_T0@@1 T@U) ($ly@@1 T@U) ) (! (= (_module.__default.Nothing _module._default.Nothing$_T0@@1 ($LS $ly@@1)) (_module.__default.Nothing _module._default.Nothing$_T0@@1 $ly@@1))
 :qid |unknown.0:0|
 :skolemid |633|
 :pattern ( (_module.__default.Nothing _module._default.Nothing$_T0@@1 ($LS $ly@@1)))
)))
(assert (forall ((f@@4 T@U) (ly@@0 T@U) (A@@0 T@T) ) (! (= (AtLayer A@@0 f@@4 ($LS ly@@0)) (AtLayer A@@0 f@@4 ly@@0))
 :qid |DafnyPreludebpl.502:18|
 :skolemid |102|
 :pattern ( (AtLayer A@@0 f@@4 ($LS ly@@0)))
)))
(assert (forall ((f@@5 T@U) (t0@@10 T@U) (t1@@8 T@U) (h@@7 T@U) ) (!  (=> ($IsGoodHeap h@@7) (= ($IsAlloc HandleTypeType f@@5 (Tclass._System.___hFunc1 t0@@10 t1@@8) h@@7) (forall ((bx0@@5 T@U) ) (!  (=> (and (and ($IsBox bx0@@5 t0@@10) ($IsAllocBox bx0@@5 t0@@10 h@@7)) (Requires1 t0@@10 t1@@8 h@@7 f@@5 bx0@@5)) (forall ((r@@3 T@U) ) (!  (=> (and (or (not (= r@@3 null)) (not true)) (|Set#IsMember| (Reads1 t0@@10 t1@@8 h@@7 f@@5 bx0@@5) ($Box refType r@@3))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@7 r@@3) alloc))))
 :qid |unknown.0:0|
 :skolemid |392|
 :pattern ( (|Set#IsMember| (Reads1 t0@@10 t1@@8 h@@7 f@@5 bx0@@5) ($Box refType r@@3)))
)))
 :qid |unknown.0:0|
 :skolemid |393|
 :pattern ( (Apply1 t0@@10 t1@@8 h@@7 f@@5 bx0@@5))
 :pattern ( (Reads1 t0@@10 t1@@8 h@@7 f@@5 bx0@@5))
))))
 :qid |unknown.0:0|
 :skolemid |394|
 :pattern ( ($IsAlloc HandleTypeType f@@5 (Tclass._System.___hFunc1 t0@@10 t1@@8) h@@7))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$R@@1| T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@8)) bx@@8) ($Is HandleTypeType ($Unbox HandleTypeType bx@@8) (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|))))
 :qid |unknown.0:0|
 :skolemid |369|
 :pattern ( ($IsBox bx@@8 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)))
)))
(assert (forall ((|l#0@@2| T@U) (|l#1@@0| T@U) (|l#2@@0| T@U) (|l#3| Bool) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@2| |l#1@@0| |l#2@@0| |l#3|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0@@2|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1@@0| $o@@1) |l#2@@0|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |902|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@2| |l#1@@0| |l#2@@0| |l#3|) $o@@1 $f))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|_module._default.TotalLang#$S| T@U) ($ly@@2 T@U) ($Heap@@0 T@U) (|l#0@@3| T@U) (|_k#0| T@U) ) (!  (=> (and (and ($IsGoodHeap $Heap@@0) ($Is DatatypeTypeType |l#0@@3| (Tclass._module.Lang |_module._default.TotalLang#$S|))) (= |_k#0| (|ORD#FromNat| 0))) (_module.__default.TotalLang_h |_module._default.TotalLang#$S| $ly@@2 $Heap@@0 |_k#0| |l#0@@3|))
 :qid |unknown.0:0|
 :skolemid |661|
 :pattern ( (_module.__default.TotalLang_h |_module._default.TotalLang#$S| $ly@@2 $Heap@@0 |_k#0| |l#0@@3|))
))))
(assert (forall ((|#$T0@@2| T@U) (|#$R@@2| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |366|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|))
)))
(assert (forall ((t0@@11 T@U) (t1@@9 T@U) (heap@@3 T@U) (f@@6 T@U) (bx0@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@3) (and ($IsBox bx0@@6 t0@@11) ($Is HandleTypeType f@@6 (Tclass._System.___hFunc1 t0@@11 t1@@9)))) (|Set#Equal| (Reads1 t0@@11 t1@@9 $OneHeap f@@6 bx0@@6) |Set#Empty|)) (= (Requires1 t0@@11 t1@@9 $OneHeap f@@6 bx0@@6) (Requires1 t0@@11 t1@@9 heap@@3 f@@6 bx0@@6)))
 :qid |unknown.0:0|
 :skolemid |386|
 :pattern ( (Requires1 t0@@11 t1@@9 $OneHeap f@@6 bx0@@6) ($IsGoodHeap heap@@3))
 :pattern ( (Requires1 t0@@11 t1@@9 heap@@3 f@@6 bx0@@6))
)))
(assert (forall ((bx@@9 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@9 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@9)) bx@@9) ($Is SetType ($Unbox SetType bx@@9) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@9 (TSet t@@3)))
)))
(assert (forall ((_module.Lang$S@@5 T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass._module.Lang _module.Lang$S@@5)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@10)) bx@@10) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@10) (Tclass._module.Lang _module.Lang$S@@5))))
 :qid |unknown.0:0|
 :skolemid |540|
 :pattern ( ($IsBox bx@@10 (Tclass._module.Lang _module.Lang$S@@5)))
)))
(assert (forall ((|_module._default.TotalLang#$S@@0| T@U) ($ly@@3 T@U) ($Heap@@1 T@U) (|_k#0@@0| T@U) (|l#0@@4| T@U) ) (! (= (_module.__default.TotalLang_h |_module._default.TotalLang#$S@@0| ($LS $ly@@3) $Heap@@1 |_k#0@@0| |l#0@@4|) (_module.__default.TotalLang_h |_module._default.TotalLang#$S@@0| $ly@@3 $Heap@@1 |_k#0@@0| |l#0@@4|))
 :qid |unknown.0:0|
 :skolemid |669|
 :pattern ( (_module.__default.TotalLang_h |_module._default.TotalLang#$S@@0| ($LS $ly@@3) $Heap@@1 |_k#0@@0| |l#0@@4|))
)))
(assert (forall ((o@@6 T@U) ) (!  (=> (|ORD#IsNat| o@@6) (= o@@6 (|ORD#FromNat| (|ORD#Offset| o@@6))))
 :qid |DafnyPreludebpl.414:15|
 :skolemid |87|
 :pattern ( (|ORD#Offset| o@@6))
 :pattern ( (|ORD#IsNat| o@@6))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (forall ((o@@7 T@U) (p@@3 T@U) ) (!  (=> (and (|ORD#IsNat| p@@3) (<= (|ORD#Offset| p@@3) (|ORD#Offset| o@@7))) (or (and (= p@@3 (|ORD#FromNat| 0)) (= (|ORD#Minus| o@@7 p@@3) o@@7)) (and (or (not (= p@@3 (|ORD#FromNat| 0))) (not true)) (|ORD#Less| (|ORD#Minus| o@@7 p@@3) o@@7))))
 :qid |DafnyPreludebpl.455:15|
 :skolemid |96|
 :pattern ( (|ORD#Minus| o@@7 p@@3))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Nothing$_T0@@2 T@U) ($ly@@4 T@U) ) (!  (=> (or (|_module.__default.Nothing#canCall| _module._default.Nothing$_T0@@2) (< 1 $FunctionContextHeight)) (and (|_module.__default.Nothing#canCall| _module._default.Nothing$_T0@@2) (= (_module.__default.Nothing _module._default.Nothing$_T0@@2 ($LS $ly@@4)) (Lit DatatypeTypeType (|#_module.Lang.L| (U_2_bool (Lit boolType (bool_2_U false))) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#10| _module._default.Nothing$_T0@@2 (|lambda#7| _module._default.Nothing$_T0@@2) (|lambda#9| (SetRef_to_SetBox (|lambda#8| false)))) $ly@@4)))))))
 :qid |unknown.0:0|
 :skolemid |638|
 :pattern ( (_module.__default.Nothing _module._default.Nothing$_T0@@2 ($LS $ly@@4)))
))))
(assert (forall ((s@@0 T@U) ) (! ($Is SetType (SetRef_to_SetBox s@@0) (TSet Tclass._System.object?))
 :qid |DafnyPreludebpl.372:15|
 :skolemid |83|
 :pattern ( (SetRef_to_SetBox s@@0))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|Set#Equal| a@@0 b@@0) (forall ((o@@8 T@U) ) (! (= (|Set#IsMember| a@@0 o@@8) (|Set#IsMember| b@@0 o@@8))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@0 o@@8))
 :pattern ( (|Set#IsMember| b@@0 o@@8))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@0 b@@0))
)))
(assert (forall ((d@@3 T@U) (_module.Lang$S@@6 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_module.Lang.L_q d@@3) ($IsAlloc DatatypeTypeType d@@3 (Tclass._module.Lang _module.Lang$S@@6) $h@@3))) ($IsAlloc HandleTypeType (_module.Lang.deriv d@@3) (Tclass._System.___hFunc1 _module.Lang$S@@6 (Tclass._module.Lang _module.Lang$S@@6)) $h@@3))
 :qid |unknown.0:0|
 :skolemid |838|
 :pattern ( ($IsAlloc HandleTypeType (_module.Lang.deriv d@@3) (Tclass._System.___hFunc1 _module.Lang$S@@6 (Tclass._module.Lang _module.Lang$S@@6)) $h@@3))
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
(assert (forall ((h@@8 T@U) (v@@4 T@U) ) (! ($IsAlloc boolType v@@4 TBool h@@8)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@4 TBool h@@8))
)))
(assert (forall ((|l#0@@5| T@U) (|$l#0#heap#0@@0| T@U) (|$l#0#s#0@@0| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#6| |l#0@@5|) |$l#0#heap#0@@0| |$l#0#s#0@@0|) |l#0@@5|)
 :qid |ExpandedGuardednessdfy.133:17|
 :skolemid |903|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#6| |l#0@@5|) |$l#0#heap#0@@0| |$l#0#s#0@@0|))
)))
(assert (forall ((|l#0@@6| T@U) (|$l#0#heap#0@@1| T@U) (|$l#0#s#0@@1| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#9| |l#0@@6|) |$l#0#heap#0@@1| |$l#0#s#0@@1|) |l#0@@6|)
 :qid |ExpandedGuardednessdfy.133:12|
 :skolemid |906|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#9| |l#0@@6|) |$l#0#heap#0@@1| |$l#0#s#0@@1|))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|_module._default.TotalLang#$S@@1| T@U) ($ly@@5 T@U) ($Heap@@2 T@U) (|_k#0@@1| T@U) (|l#0@@7| T@U) ) (!  (=> (or (|_module.__default.TotalLang_h#canCall| |_module._default.TotalLang#$S@@1| $Heap@@2 |_k#0@@1| |l#0@@7|) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@2) ($Is DatatypeTypeType |l#0@@7| (Tclass._module.Lang |_module._default.TotalLang#$S@@1|))))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@1|)) (forall ((|s#3| T@U) ) (!  (=> ($IsBox |s#3| |_module._default.TotalLang#$S@@1|) (and (and (_module.Lang.L_q |l#0@@7|) true) (=> (Requires1 |_module._default.TotalLang#$S@@1| (Tclass._module.Lang |_module._default.TotalLang#$S@@1|) $Heap@@2 (_module.Lang.deriv |l#0@@7|) |s#3|) (and (and (_module.Lang.L_q |l#0@@7|) true) (=> (|Set#Equal| (Reads1 |_module._default.TotalLang#$S@@1| (Tclass._module.Lang |_module._default.TotalLang#$S@@1|) $Heap@@2 (_module.Lang.deriv |l#0@@7|) |s#3|) |Set#Empty|) (and (_module.Lang.L_q |l#0@@7|) (|_module.__default.TotalLang_h#canCall| |_module._default.TotalLang#$S@@1| $Heap@@2 (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) ($Unbox DatatypeTypeType (Apply1 |_module._default.TotalLang#$S@@1| (Tclass._module.Lang |_module._default.TotalLang#$S@@1|) $Heap@@2 (_module.Lang.deriv |l#0@@7|) |s#3|)))))))))
 :qid |ExpandedGuardednessdfy.144:10|
 :skolemid |677|
 :pattern ( ($Unbox DatatypeTypeType (Apply1 |_module._default.TotalLang#$S@@1| (Tclass._module.Lang |_module._default.TotalLang#$S@@1|) $Heap@@2 (_module.Lang.deriv |l#0@@7|) |s#3|)))
 :pattern ( (Reads1 |_module._default.TotalLang#$S@@1| (Tclass._module.Lang |_module._default.TotalLang#$S@@1|) $Heap@@2 (_module.Lang.deriv |l#0@@7|) |s#3|))
 :pattern ( (Requires1 |_module._default.TotalLang#$S@@1| (Tclass._module.Lang |_module._default.TotalLang#$S@@1|) $Heap@@2 (_module.Lang.deriv |l#0@@7|) |s#3|))
))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@1|)) (forall ((|s#3@@0| T@U) ) (!  (=> ($IsBox |s#3@@0| |_module._default.TotalLang#$S@@1|) (and (and (Requires1 |_module._default.TotalLang#$S@@1| (Tclass._module.Lang |_module._default.TotalLang#$S@@1|) $Heap@@2 (_module.Lang.deriv |l#0@@7|) |s#3@@0|) (|Set#Equal| (Reads1 |_module._default.TotalLang#$S@@1| (Tclass._module.Lang |_module._default.TotalLang#$S@@1|) $Heap@@2 (_module.Lang.deriv |l#0@@7|) |s#3@@0|) |Set#Empty|)) (_module.__default.TotalLang_h |_module._default.TotalLang#$S@@1| $ly@@5 $Heap@@2 (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) ($Unbox DatatypeTypeType (Apply1 |_module._default.TotalLang#$S@@1| (Tclass._module.Lang |_module._default.TotalLang#$S@@1|) $Heap@@2 (_module.Lang.deriv |l#0@@7|) |s#3@@0|)))))
 :qid |ExpandedGuardednessdfy.144:10|
 :skolemid |679|
 :pattern ( ($Unbox DatatypeTypeType (Apply1 |_module._default.TotalLang#$S@@1| (Tclass._module.Lang |_module._default.TotalLang#$S@@1|) $Heap@@2 (_module.Lang.deriv |l#0@@7|) |s#3@@0|)))
 :pattern ( (Reads1 |_module._default.TotalLang#$S@@1| (Tclass._module.Lang |_module._default.TotalLang#$S@@1|) $Heap@@2 (_module.Lang.deriv |l#0@@7|) |s#3@@0|))
 :pattern ( (Requires1 |_module._default.TotalLang#$S@@1| (Tclass._module.Lang |_module._default.TotalLang#$S@@1|) $Heap@@2 (_module.Lang.deriv |l#0@@7|) |s#3@@0|))
))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@1|)) (forall ((|_k'#0| T@U) ) (!  (=> (|ORD#Less| |_k'#0| |_k#0@@1|) (|_module.__default.TotalLang_h#canCall| |_module._default.TotalLang#$S@@1| $Heap@@2 |_k'#0| |l#0@@7|))
 :qid |ExpandedGuardednessdfy.141:20|
 :skolemid |678|
 :pattern ( (_module.__default.TotalLang_h |_module._default.TotalLang#$S@@1| $ly@@5 $Heap@@2 |_k'#0| |l#0@@7|))
))))) (= (_module.__default.TotalLang_h |_module._default.TotalLang#$S@@1| ($LS $ly@@5) $Heap@@2 |_k#0@@1| |l#0@@7|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@1|)) (forall ((|s#3@@1| T@U) ) (!  (=> ($IsBox |s#3@@1| |_module._default.TotalLang#$S@@1|) (and (and (Requires1 |_module._default.TotalLang#$S@@1| (Tclass._module.Lang |_module._default.TotalLang#$S@@1|) $Heap@@2 (_module.Lang.deriv |l#0@@7|) |s#3@@1|) (|Set#Equal| (Reads1 |_module._default.TotalLang#$S@@1| (Tclass._module.Lang |_module._default.TotalLang#$S@@1|) $Heap@@2 (_module.Lang.deriv |l#0@@7|) |s#3@@1|) |Set#Empty|)) (_module.__default.TotalLang_h |_module._default.TotalLang#$S@@1| $ly@@5 $Heap@@2 (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) ($Unbox DatatypeTypeType (Apply1 |_module._default.TotalLang#$S@@1| (Tclass._module.Lang |_module._default.TotalLang#$S@@1|) $Heap@@2 (_module.Lang.deriv |l#0@@7|) |s#3@@1|)))))
 :qid |ExpandedGuardednessdfy.144:10|
 :skolemid |675|
 :pattern ( ($Unbox DatatypeTypeType (Apply1 |_module._default.TotalLang#$S@@1| (Tclass._module.Lang |_module._default.TotalLang#$S@@1|) $Heap@@2 (_module.Lang.deriv |l#0@@7|) |s#3@@1|)))
 :pattern ( (Reads1 |_module._default.TotalLang#$S@@1| (Tclass._module.Lang |_module._default.TotalLang#$S@@1|) $Heap@@2 (_module.Lang.deriv |l#0@@7|) |s#3@@1|))
 :pattern ( (Requires1 |_module._default.TotalLang#$S@@1| (Tclass._module.Lang |_module._default.TotalLang#$S@@1|) $Heap@@2 (_module.Lang.deriv |l#0@@7|) |s#3@@1|))
))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@1|)) (forall ((|_k'#0@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#0@@0| |_k#0@@1|) (_module.__default.TotalLang_h |_module._default.TotalLang#$S@@1| $ly@@5 $Heap@@2 |_k'#0@@0| |l#0@@7|))
 :qid |ExpandedGuardednessdfy.141:20|
 :skolemid |676|
 :pattern ( (_module.__default.TotalLang_h |_module._default.TotalLang#$S@@1| $ly@@5 $Heap@@2 |_k'#0@@0| |l#0@@7|))
)))))))
 :qid |unknown.0:0|
 :skolemid |680|
 :pattern ( (_module.__default.TotalLang_h |_module._default.TotalLang#$S@@1| ($LS $ly@@5) $Heap@@2 |_k#0@@1| |l#0@@7|) ($IsGoodHeap $Heap@@2))
))))
(assert (forall ((v@@5 T@U) ) (! ($Is boolType v@@5 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@5 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |_module._default.NothingTotal#$S| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |_k#0@@2| () T@U)
(declare-fun $LZ () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@3 () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.NothingTotal_h)
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
 (=> (= (ControlFlow 0 0) 7) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (|_module.__default.TotalLang_h#canCall| |_module._default.NothingTotal#$S| $Heap@2 |_k#0@@2| (Lit DatatypeTypeType (_module.__default.Nothing |_module._default.NothingTotal#$S| ($LS $LZ)))) (or (_module.__default.TotalLang_h |_module._default.NothingTotal#$S| ($LS $LZ) $Heap@2 |_k#0@@2| (Lit DatatypeTypeType (_module.__default.Nothing |_module._default.NothingTotal#$S| ($LS $LZ)))) (=> (< 0 (|ORD#Offset| |_k#0@@2|)) (forall ((|s#2| T@U) ) (!  (=> ($IsBox |s#2| |_module._default.NothingTotal#$S|) (and (and (Requires1 |_module._default.NothingTotal#$S| (Tclass._module.Lang |_module._default.NothingTotal#$S|) $Heap@2 (Lit HandleTypeType (_module.Lang.deriv (Lit DatatypeTypeType (_module.__default.Nothing |_module._default.NothingTotal#$S| ($LS ($LS $LZ)))))) |s#2|) (|Set#Equal| (Reads1 |_module._default.NothingTotal#$S| (Tclass._module.Lang |_module._default.NothingTotal#$S|) $Heap@2 (Lit HandleTypeType (_module.Lang.deriv (Lit DatatypeTypeType (_module.__default.Nothing |_module._default.NothingTotal#$S| ($LS ($LS $LZ)))))) |s#2|) |Set#Empty|)) (_module.__default.TotalLang_h |_module._default.NothingTotal#$S| ($LS ($LS $LZ)) $Heap@2 (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) ($Unbox DatatypeTypeType (Apply1 |_module._default.NothingTotal#$S| (Tclass._module.Lang |_module._default.NothingTotal#$S|) $Heap@2 (Lit HandleTypeType (_module.Lang.deriv (Lit DatatypeTypeType (_module.__default.Nothing |_module._default.NothingTotal#$S| ($LS ($LS $LZ)))))) |s#2|)))))
 :qid |ExpandedGuardednessdfy.144:10|
 :skolemid |690|
 :pattern ( ($Unbox DatatypeTypeType (Apply1 |_module._default.NothingTotal#$S| (Tclass._module.Lang |_module._default.NothingTotal#$S|) $Heap@2 (_module.Lang.deriv (_module.__default.Nothing |_module._default.NothingTotal#$S| ($LS ($LS $LZ)))) |s#2|)))
 :pattern ( (Reads1 |_module._default.NothingTotal#$S| (Tclass._module.Lang |_module._default.NothingTotal#$S|) $Heap@2 (_module.Lang.deriv (_module.__default.Nothing |_module._default.NothingTotal#$S| ($LS ($LS $LZ)))) |s#2|))
 :pattern ( (Requires1 |_module._default.NothingTotal#$S| (Tclass._module.Lang |_module._default.NothingTotal#$S|) $Heap@2 (_module.Lang.deriv (_module.__default.Nothing |_module._default.NothingTotal#$S| ($LS ($LS $LZ)))) |s#2|))
)))))) (=> (=> (|_module.__default.TotalLang_h#canCall| |_module._default.NothingTotal#$S| $Heap@2 |_k#0@@2| (Lit DatatypeTypeType (_module.__default.Nothing |_module._default.NothingTotal#$S| ($LS $LZ)))) (or (_module.__default.TotalLang_h |_module._default.NothingTotal#$S| ($LS $LZ) $Heap@2 |_k#0@@2| (Lit DatatypeTypeType (_module.__default.Nothing |_module._default.NothingTotal#$S| ($LS $LZ)))) (=> (< 0 (|ORD#Offset| |_k#0@@2|)) (forall ((|s#2@@0| T@U) ) (!  (=> ($IsBox |s#2@@0| |_module._default.NothingTotal#$S|) (and (and (Requires1 |_module._default.NothingTotal#$S| (Tclass._module.Lang |_module._default.NothingTotal#$S|) $Heap@2 (Lit HandleTypeType (_module.Lang.deriv (Lit DatatypeTypeType (_module.__default.Nothing |_module._default.NothingTotal#$S| ($LS ($LS $LZ)))))) |s#2@@0|) (|Set#Equal| (Reads1 |_module._default.NothingTotal#$S| (Tclass._module.Lang |_module._default.NothingTotal#$S|) $Heap@2 (Lit HandleTypeType (_module.Lang.deriv (Lit DatatypeTypeType (_module.__default.Nothing |_module._default.NothingTotal#$S| ($LS ($LS $LZ)))))) |s#2@@0|) |Set#Empty|)) (_module.__default.TotalLang_h |_module._default.NothingTotal#$S| ($LS ($LS $LZ)) $Heap@2 (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) ($Unbox DatatypeTypeType (Apply1 |_module._default.NothingTotal#$S| (Tclass._module.Lang |_module._default.NothingTotal#$S|) $Heap@2 (Lit HandleTypeType (_module.Lang.deriv (Lit DatatypeTypeType (_module.__default.Nothing |_module._default.NothingTotal#$S| ($LS ($LS $LZ)))))) |s#2@@0|)))))
 :qid |ExpandedGuardednessdfy.144:10|
 :skolemid |690|
 :pattern ( ($Unbox DatatypeTypeType (Apply1 |_module._default.NothingTotal#$S| (Tclass._module.Lang |_module._default.NothingTotal#$S|) $Heap@2 (_module.Lang.deriv (_module.__default.Nothing |_module._default.NothingTotal#$S| ($LS ($LS $LZ)))) |s#2@@0|)))
 :pattern ( (Reads1 |_module._default.NothingTotal#$S| (Tclass._module.Lang |_module._default.NothingTotal#$S|) $Heap@2 (_module.Lang.deriv (_module.__default.Nothing |_module._default.NothingTotal#$S| ($LS ($LS $LZ)))) |s#2@@0|))
 :pattern ( (Requires1 |_module._default.NothingTotal#$S| (Tclass._module.Lang |_module._default.NothingTotal#$S|) $Heap@2 (_module.Lang.deriv (_module.__default.Nothing |_module._default.NothingTotal#$S| ($LS ($LS $LZ)))) |s#2@@0|))
))))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (|_module.__default.TotalLang_h#canCall| |_module._default.NothingTotal#$S| $Heap@2 |_k#0@@2| (Lit DatatypeTypeType (_module.__default.Nothing |_module._default.NothingTotal#$S| ($LS $LZ)))) (or (_module.__default.TotalLang_h |_module._default.NothingTotal#$S| ($LS $LZ) $Heap@2 |_k#0@@2| (Lit DatatypeTypeType (_module.__default.Nothing |_module._default.NothingTotal#$S| ($LS $LZ)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@2|)) (forall ((|_k'#1| T@U) ) (!  (=> (|ORD#Less| |_k'#1| |_k#0@@2|) (_module.__default.TotalLang_h |_module._default.NothingTotal#$S| ($LS ($LS $LZ)) $Heap@2 |_k'#1| (Lit DatatypeTypeType (_module.__default.Nothing |_module._default.NothingTotal#$S| ($LS ($LS $LZ))))))
 :qid |ExpandedGuardednessdfy.141:20|
 :skolemid |692|
 :pattern ( (_module.__default.TotalLang_h |_module._default.NothingTotal#$S| ($LS ($LS $LZ)) $Heap@2 |_k'#1| (_module.__default.Nothing |_module._default.NothingTotal#$S| ($LS ($LS $LZ)))))
))))))))))
(let ((anon3_Else_correct  (=> (<= (|ORD#Offset| |_k#0@@2|) 0) (=> (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (=> (and (and (= $Heap@0 $Heap@1) (forall ((|_k'#2| T@U) ) (!  (=> (|ORD#Less| |_k'#2| |_k#0@@2|) (_module.__default.TotalLang_h |_module._default.NothingTotal#$S| ($LS $LZ) $Heap@1 |_k'#2| (Lit DatatypeTypeType (_module.__default.Nothing |_module._default.NothingTotal#$S| ($LS $LZ)))))
 :qid |ExpandedGuardednessdfy.147:16|
 :skolemid |697|
 :pattern ( (_module.__default.TotalLang_h |_module._default.NothingTotal#$S| ($LS $LZ) $Heap@1 |_k'#2| (_module.__default.Nothing |_module._default.NothingTotal#$S| ($LS $LZ))))
 :pattern ( (|ORD#Less| |_k'#2| |_k#0@@2|))
))) (and (= $Heap@2 $Heap@1) (= (ControlFlow 0 5) 2))) GeneratedUnifiedExit_correct)))))
(let ((anon3_Then_correct  (=> (< 0 (|ORD#Offset| |_k#0@@2|)) (=> (and (= $Heap@2 $Heap@0) (= (ControlFlow 0 4) 2)) GeneratedUnifiedExit_correct))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@3 alloc false)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap@@3 $Heap@0) (forall ((|$ih#_k0#0| T@U) ) (!  (=> (and (U_2_bool (Lit boolType (bool_2_U true))) (|ORD#Less| |$ih#_k0#0| |_k#0@@2|)) (_module.__default.TotalLang_h |_module._default.NothingTotal#$S| ($LS $LZ) $Heap@0 |$ih#_k0#0| (Lit DatatypeTypeType (_module.__default.Nothing |_module._default.NothingTotal#$S| ($LS $LZ)))))
 :qid |ExpandedGuardednessdfy.147:16|
 :skolemid |696|
 :pattern ( (_module.__default.TotalLang_h |_module._default.NothingTotal#$S| ($LS $LZ) $Heap@0 |$ih#_k0#0| (Lit DatatypeTypeType (_module.__default.Nothing |_module._default.NothingTotal#$S| ($LS $LZ)))))
)))) (and (=> (= (ControlFlow 0 6) 4) anon3_Then_correct) (=> (= (ControlFlow 0 6) 5) anon3_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@3) ($IsHeapAnchor $Heap@@3)) ($AlwaysAllocated |_module._default.NothingTotal#$S|)) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 7) 6))) anon0_correct)))
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
