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
(declare-fun TagSet () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun Tagclass._System.___hPartialFunc1 () T@U)
(declare-fun Tagclass._System.___hTotalFunc1 () T@U)
(declare-fun Tagclass._module.Pos () T@U)
(declare-fun Tagclass._module.Index () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
(declare-fun |tytagFamily$_#PartialFunc1| () T@U)
(declare-fun |tytagFamily$_#TotalFunc1| () T@U)
(declare-fun tytagFamily$Pos () T@U)
(declare-fun tytagFamily$Index () T@U)
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
(declare-fun |lambda#5| (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.Pos () T@U)
(declare-fun Tclass._module.Index () T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.Sum__n (T@U T@U Int) Int)
(declare-fun $LS (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.__default.Sum__n#canCall| (T@U Int) Bool)
(declare-fun Tclass._System.___hTotalFunc1 (T@U T@U) T@U)
(declare-fun _module.__default.N () Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |lambda#4| (T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun Mul (Int Int) Int)
(declare-fun null () T@U)
(declare-fun |lambda#2791| (T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun _module.__default.Sum (T@U) Int)
(declare-fun AtLayer (T@T T@U T@U) T@U)
(declare-fun |lambda#8| (T@U) T@U)
(declare-fun |lambda#1592| (T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun LayerTypeType () T@T)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun SetRef_to_SetBox (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1 (T@U T@U) T@U)
(declare-fun |_module.__default.Sum#canCall| (T@U) Bool)
(declare-fun $LZ () T@U)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun |lambda#6| (Bool) T@U)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun |lambda#2587| (T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun |lambda#2583| (T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun |lambda#2795| (T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |lambda#7| (T@U) T@U)
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
(assert (distinct TInt TagInt TagSet alloc Tagclass._System.object? Tagclass._System.object Tagclass._System.___hFunc1 Tagclass._System.___hPartialFunc1 Tagclass._System.___hTotalFunc1 Tagclass._module.Pos Tagclass._module.Index tytagFamily$object |tytagFamily$_#Func1| |tytagFamily$_#PartialFunc1| |tytagFamily$_#TotalFunc1| tytagFamily$Pos tytagFamily$Index)
)
(assert (= (Tag TInt) TagInt))
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
))) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 3)
 :qid |ctor:MapType1Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@4 arg1@@1))
))) (= (Ctor refType) 4)) (= (Ctor FieldType) 5)) (= (Ctor BoxType) 6)) (= (Ctor SetType) 7)))
(assert (forall ((t0@@1 T@U) (t1@@1 T@U) (heap T@U) (h T@U) (r T@U) (rd T@U) (bx0 T@U) (bx T@U) ) (! (= (|Set#IsMember| (Reads1 t0@@1 t1@@1 heap (Handle1 h r rd) bx0) bx) (|Set#IsMember| (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType rd heap bx0) bx))
 :qid |unknown.0:0|
 :skolemid |372|
 :pattern ( (|Set#IsMember| (Reads1 t0@@1 t1@@1 heap (Handle1 h r rd) bx0) bx))
)))
(assert (forall ((|l#0| T@U) (|$l#6#heap#0| T@U) (|$l#6#k#0| T@U) ) (! (= (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#5| |l#0|) |$l#6#heap#0| |$l#6#k#0|)) ($IsBox |$l#6#k#0| |l#0|))
 :qid |MatrixAssocdfy.10:6|
 :skolemid |743|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#5| |l#0|) |$l#6#heap#0| |$l#6#k#0|))
)))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._module.Pos $h)
 :qid |unknown.0:0|
 :skolemid |738|
 :pattern ( ($IsAlloc intType |x#0| Tclass._module.Pos $h))
)))
(assert (forall ((|x#0@@0| T@U) ($h@@0 T@U) ) (! ($IsAlloc intType |x#0@@0| Tclass._module.Index $h@@0)
 :qid |unknown.0:0|
 :skolemid |740|
 :pattern ( ($IsAlloc intType |x#0@@0| Tclass._module.Index $h@@0))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (Ctor HandleTypeType) 8))
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
(assert (forall ((|c#0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h@@1) ($IsAlloc refType |c#0| Tclass._System.object? $h@@1))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h@@1))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h@@1))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly T@U) ($Heap T@U) (|f#0| T@U) (|n#0| Int) ) (!  (=> (or (|_module.__default.Sum__n#canCall| (Lit HandleTypeType |f#0|) (LitInt |n#0|)) (and (< 3 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap) ($Is HandleTypeType |f#0| (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt))) (<= (LitInt 0) |n#0|)) (<= (LitInt |n#0|) _module.__default.N)))) (and (=> (or (not (= (LitInt |n#0|) (LitInt 0))) (not true)) (|_module.__default.Sum__n#canCall| (Lit HandleTypeType |f#0|) (LitInt (- |n#0| 1)))) (= (_module.__default.Sum__n ($LS $ly) (Lit HandleTypeType |f#0|) (LitInt |n#0|)) (ite (= (LitInt |n#0|) (LitInt 0)) 0 (+ (U_2_int ($Unbox intType (Apply1 Tclass._module.Index TInt $Heap (Lit HandleTypeType |f#0|) ($Box intType (int_2_U (LitInt (- |n#0| 1))))))) (_module.__default.Sum__n ($LS $ly) (Lit HandleTypeType |f#0|) (LitInt (- |n#0| 1))))))))
 :qid |MatrixAssocdfy.35:10|
 :weight 3
 :skolemid |546|
 :pattern ( (_module.__default.Sum__n ($LS $ly) (Lit HandleTypeType |f#0|) (LitInt |n#0|)) ($IsGoodHeap $Heap))
))))
(assert (forall ((|l#0@@0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) (|l#5| T@U) (|l#6| T@U) (|l#7| T@U) (|l#8| T@U) (|l#9| T@U) (|l#10| T@U) (|l#11| T@U) (|$l#6#heap#0@@0| T@U) (|$l#6#k#0@@0| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#4| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6| |l#7| |l#8| |l#9| |l#10| |l#11|) |$l#6#heap#0@@0| |$l#6#k#0@@0|) ($Box intType (int_2_U (Mul (U_2_int ($Unbox intType (Apply1 |l#0@@0| |l#1| |$l#6#heap#0@@0| ($Unbox HandleTypeType (Apply1 |l#2| |l#3| |$l#6#heap#0@@0| |l#4| |l#5|)) ($Box intType ($Unbox intType |$l#6#k#0@@0|))))) (U_2_int ($Unbox intType (Apply1 |l#6| |l#7| |$l#6#heap#0@@0| ($Unbox HandleTypeType (Apply1 |l#8| |l#9| |$l#6#heap#0@@0| |l#10| ($Box intType ($Unbox intType |$l#6#k#0@@0|)))) |l#11|)))))))
 :qid |MatrixAssocdfy.10:6|
 :skolemid |742|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#4| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6| |l#7| |l#8| |l#9| |l#10| |l#11|) |$l#6#heap#0@@0| |$l#6#k#0@@0|))
)))
(assert (forall (($o T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o Tclass._System.object? $h@@2)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@2 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o Tclass._System.object? $h@@2))
)))
(assert (forall ((|l#0@@1| T@U) (|l#1@@0| T@U) (|l#2@@0| T@U) (|l#3@@0| T@U) (|l#4@@0| T@U) (|l#5@@0| T@U) (|l#6@@0| T@U) (|l#7@@0| T@U) (|l#8@@0| T@U) (|l#9@@0| T@U) (|l#10@@0| T@U) (|l#11@@0| T@U) (|l#12| T@U) (|l#13| T@U) (|l#14| T@U) (|l#15| T@U) (|l#16| T@U) (|l#17| T@U) (|l#18| T@U) (|l#19| T@U) (|$l#0_3_9#heap#0| T@U) (|$l#0_3_9#k#0| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#2791| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0| |l#6@@0| |l#7@@0| |l#8@@0| |l#9@@0| |l#10@@0| |l#11@@0| |l#12| |l#13| |l#14| |l#15| |l#16| |l#17| |l#18| |l#19|) |$l#0_3_9#heap#0| |$l#0_3_9#k#0|) ($Box intType (int_2_U (LitInt (_module.__default.Sum (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#1592| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| ($Box intType ($Unbox intType |$l#0_3_9#k#0|)) |l#5@@0| |l#6@@0| |l#7@@0| |l#8@@0| |l#9@@0| |l#10@@0| |l#11@@0| |l#12| |l#13| |l#14| |l#15| |l#16| ($Box intType ($Unbox intType |$l#0_3_9#k#0|))) |l#17| |l#18|)) |l#19|)))))))
 :qid |MatrixAssocdfy.10:6|
 :skolemid |777|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#2791| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0| |l#6@@0| |l#7@@0| |l#8@@0| |l#9@@0| |l#10@@0| |l#11@@0| |l#12| |l#13| |l#14| |l#15| |l#16| |l#17| |l#18| |l#19|) |$l#0_3_9#heap#0| |$l#0_3_9#k#0|))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@0 T@U) ($Heap@@0 T@U) (|f#0@@0| T@U) (|n#0@@0| Int) ) (!  (=> (or (|_module.__default.Sum__n#canCall| |f#0@@0| |n#0@@0|) (and (< 3 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@0) ($Is HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt))) (<= (LitInt 0) |n#0@@0|)) (<= |n#0@@0| _module.__default.N)))) (and (=> (or (not (= |n#0@@0| (LitInt 0))) (not true)) (|_module.__default.Sum__n#canCall| |f#0@@0| (- |n#0@@0| 1))) (= (_module.__default.Sum__n ($LS $ly@@0) |f#0@@0| |n#0@@0|) (ite (= |n#0@@0| (LitInt 0)) 0 (+ (U_2_int ($Unbox intType (Apply1 Tclass._module.Index TInt $Heap@@0 |f#0@@0| ($Box intType (int_2_U (- |n#0@@0| 1)))))) (_module.__default.Sum__n $ly@@0 |f#0@@0| (- |n#0@@0| 1)))))))
 :qid |MatrixAssocdfy.35:10|
 :skolemid |544|
 :pattern ( (_module.__default.Sum__n ($LS $ly@@0) |f#0@@0| |n#0@@0|) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((|x#0@@1| T@U) ) (! (= ($Is intType |x#0@@1| Tclass._module.Pos) (< 0 (U_2_int |x#0@@1|)))
 :qid |unknown.0:0|
 :skolemid |737|
 :pattern ( ($Is intType |x#0@@1| Tclass._module.Pos))
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
(assert (forall ((t0@@3 T@U) (t1@@3 T@U) (heap@@0 T@U) (f@@0 T@U) (bx0@@0 T@U) ) (!  (=> (and ($IsGoodHeap heap@@0) (and ($IsBox bx0@@0 t0@@3) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@3 t1@@3)))) (= (|Set#Equal| (Reads1 t0@@3 t1@@3 $OneHeap f@@0 bx0@@0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@3 t1@@3 heap@@0 f@@0 bx0@@0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |385|
 :pattern ( (Reads1 t0@@3 t1@@3 $OneHeap f@@0 bx0@@0) ($IsGoodHeap heap@@0))
 :pattern ( (Reads1 t0@@3 t1@@3 heap@@0 f@@0 bx0@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
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
(assert (= (Ctor LayerTypeType) 9))
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
(assert  (=> (< 1 $FunctionContextHeight) ($Is intType (int_2_U _module.__default.N) Tclass._module.Pos)))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@3 T@U) ) (!  (=> ($IsGoodHeap $h@@3) ($IsAlloc intType (int_2_U _module.__default.N) Tclass._module.Pos $h@@3))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |529|
 :pattern ( ($IsAlloc intType (int_2_U _module.__default.N) Tclass._module.Pos $h@@3))
))))
(assert (forall ((s T@U) (bx@@3 T@U) ) (! (= (|Set#IsMember| (SetRef_to_SetBox s) bx@@3) (U_2_bool (MapType1Select refType boolType s ($Unbox refType bx@@3))))
 :qid |DafnyPreludebpl.370:15|
 :skolemid |82|
 :pattern ( (|Set#IsMember| (SetRef_to_SetBox s) bx@@3))
)))
(assert (forall ((|#$T0| T@U) (|#$R| T@U) (|f#0@@1| T@U) ($h@@4 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@1| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h@@4) ($IsAlloc HandleTypeType |f#0@@1| (Tclass._System.___hFunc1 |#$T0| |#$R|) $h@@4))
 :qid |unknown.0:0|
 :skolemid |403|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@1| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h@@4))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$R@@0| T@U) (|f#0@@2| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@2| (Tclass._System.___hTotalFunc1 |#$T0@@0| |#$R@@0|) $h@@5) ($IsAlloc HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc1 |#$T0@@0| |#$R@@0|) $h@@5))
 :qid |unknown.0:0|
 :skolemid |410|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@2| (Tclass._System.___hTotalFunc1 |#$T0@@0| |#$R@@0|) $h@@5))
)))
(assert (forall ((t0@@5 T@U) (t1@@4 T@U) (heap@@1 T@U) (h@@1 T@U) (r@@0 T@U) (rd@@0 T@U) (bx0@@1 T@U) ) (! (= (Apply1 t0@@5 t1@@4 heap@@1 (Handle1 h@@1 r@@0 rd@@0) bx0@@1) (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType h@@1 heap@@1 bx0@@1))
 :qid |unknown.0:0|
 :skolemid |370|
 :pattern ( (Apply1 t0@@5 t1@@4 heap@@1 (Handle1 h@@1 r@@0 rd@@0) bx0@@1))
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
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.Pos) (and (= ($Box intType ($Unbox intType bx@@6)) bx@@6) ($Is intType ($Unbox intType bx@@6) Tclass._module.Pos)))
 :qid |unknown.0:0|
 :skolemid |528|
 :pattern ( ($IsBox bx@@6 Tclass._module.Pos))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.Index) (and (= ($Box intType ($Unbox intType bx@@7)) bx@@7) ($Is intType ($Unbox intType bx@@7) Tclass._module.Index)))
 :qid |unknown.0:0|
 :skolemid |533|
 :pattern ( ($IsBox bx@@7 Tclass._module.Index))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._System.object)  (and ($Is refType |c#0@@0| Tclass._System.object?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@0| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@0| Tclass._System.object?))
)))
(assert (forall (($ly@@1 T@U) (|f#0@@3| T@U) (|n#0@@1| Int) ) (! (= (_module.__default.Sum__n ($LS $ly@@1) |f#0@@3| |n#0@@1|) (_module.__default.Sum__n $ly@@1 |f#0@@3| |n#0@@1|))
 :qid |MatrixAssocdfy.35:10|
 :skolemid |540|
 :pattern ( (_module.__default.Sum__n ($LS $ly@@1) |f#0@@3| |n#0@@1|))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|f#0@@4| T@U) ) (!  (=> (or (|_module.__default.Sum#canCall| |f#0@@4|) (and (< 4 $FunctionContextHeight) ($Is HandleTypeType |f#0@@4| (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt)))) (and (|_module.__default.Sum__n#canCall| |f#0@@4| _module.__default.N) (= (_module.__default.Sum |f#0@@4|) (_module.__default.Sum__n ($LS $LZ) |f#0@@4| _module.__default.N))))
 :qid |MatrixAssocdfy.42:14|
 :skolemid |550|
 :pattern ( (_module.__default.Sum |f#0@@4|))
))))
(assert (forall ((f@@2 T@U) (t0@@6 T@U) (t1@@5 T@U) (h@@2 T@U) ) (!  (=> (and ($IsGoodHeap h@@2) ($IsAlloc HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@6 t1@@5) h@@2)) (forall ((bx0@@2 T@U) ) (!  (=> (and ($IsAllocBox bx0@@2 t0@@6 h@@2) (Requires1 t0@@6 t1@@5 h@@2 f@@2 bx0@@2)) ($IsAllocBox (Apply1 t0@@6 t1@@5 h@@2 f@@2 bx0@@2) t1@@5 h@@2))
 :qid |unknown.0:0|
 :skolemid |395|
 :pattern ( (Apply1 t0@@6 t1@@5 h@@2 f@@2 bx0@@2))
)))
 :qid |unknown.0:0|
 :skolemid |396|
 :pattern ( ($IsAlloc HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@6 t1@@5) h@@2))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@2 T@U) ($Heap@@1 T@U) (|f#0@@5| T@U) (|n#0@@2| Int) ) (!  (=> (or (|_module.__default.Sum__n#canCall| |f#0@@5| (LitInt |n#0@@2|)) (and (< 3 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@1) ($Is HandleTypeType |f#0@@5| (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt))) (<= (LitInt 0) |n#0@@2|)) (<= (LitInt |n#0@@2|) _module.__default.N)))) (and (=> (or (not (= (LitInt |n#0@@2|) (LitInt 0))) (not true)) (|_module.__default.Sum__n#canCall| |f#0@@5| (LitInt (- |n#0@@2| 1)))) (= (_module.__default.Sum__n ($LS $ly@@2) |f#0@@5| (LitInt |n#0@@2|)) (ite (= (LitInt |n#0@@2|) (LitInt 0)) 0 (+ (U_2_int ($Unbox intType (Apply1 Tclass._module.Index TInt $Heap@@1 |f#0@@5| ($Box intType (int_2_U (LitInt (- |n#0@@2| 1))))))) (_module.__default.Sum__n ($LS $ly@@2) |f#0@@5| (LitInt (- |n#0@@2| 1))))))))
 :qid |MatrixAssocdfy.35:10|
 :weight 3
 :skolemid |545|
 :pattern ( (_module.__default.Sum__n ($LS $ly@@2) |f#0@@5| (LitInt |n#0@@2|)) ($IsGoodHeap $Heap@@1))
))))
(assert (forall ((|l#0@@2| Bool) (|$l#6#o#0| T@U) ) (! (= (U_2_bool (MapType1Select refType boolType (|lambda#6| |l#0@@2|) |$l#6#o#0|)) |l#0@@2|)
 :qid |unknown.0:0|
 :skolemid |744|
 :pattern ( (MapType1Select refType boolType (|lambda#6| |l#0@@2|) |$l#6#o#0|))
)))
(assert (forall ((|l#0@@3| T@U) (|$l#6#ly#0| T@U) ) (! (= (MapType1Select LayerTypeType HandleTypeType (|lambda#8| |l#0@@3|) |$l#6#ly#0|) |l#0@@3|)
 :qid |MatrixAssocdfy.50:9|
 :skolemid |746|
 :pattern ( (MapType1Select LayerTypeType HandleTypeType (|lambda#8| |l#0@@3|) |$l#6#ly#0|))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((|x#0@@2| T@U) ) (! (= ($Is intType |x#0@@2| Tclass._module.Index)  (and (<= (LitInt 0) (U_2_int |x#0@@2|)) (< (U_2_int |x#0@@2|) _module.__default.N)))
 :qid |unknown.0:0|
 :skolemid |739|
 :pattern ( ($Is intType |x#0@@2| Tclass._module.Index))
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
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 TInt) (and (= ($Box intType ($Unbox intType bx@@8)) bx@@8) ($Is intType ($Unbox intType bx@@8) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@8 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((t0@@8 T@U) (t1@@7 T@U) (heap@@2 T@U) (h@@4 T@U) (r@@1 T@U) (rd@@1 T@U) (bx0@@4 T@U) ) (!  (=> (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType r@@1 heap@@2 bx0@@4)) (Requires1 t0@@8 t1@@7 heap@@2 (Handle1 h@@4 r@@1 rd@@1) bx0@@4))
 :qid |unknown.0:0|
 :skolemid |371|
 :pattern ( (Requires1 t0@@8 t1@@7 heap@@2 (Handle1 h@@4 r@@1 rd@@1) bx0@@4))
)))
(assert (forall ((v@@2 T@U) (t0@@9 T@U) (h@@5 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@9) h@@5) (forall ((bx@@9 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@9) ($IsAllocBox bx@@9 t0@@9 h@@5))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@9))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@9) h@@5))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$R@@1| T@U) ) (! (= (Tclass._System.___hFunc1_0 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)) |#$T0@@1|)
 :qid |unknown.0:0|
 :skolemid |367|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$R@@2| T@U) ) (! (= (Tclass._System.___hFunc1_1 (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) |#$R@@2|)
 :qid |unknown.0:0|
 :skolemid |368|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|))
)))
(assert (forall ((|#$T0@@3| T@U) (|#$R@@3| T@U) ) (! (= (Tclass._System.___hPartialFunc1_0 (Tclass._System.___hPartialFunc1 |#$T0@@3| |#$R@@3|)) |#$T0@@3|)
 :qid |unknown.0:0|
 :skolemid |398|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@3| |#$R@@3|))
)))
(assert (forall ((|#$T0@@4| T@U) (|#$R@@4| T@U) ) (! (= (Tclass._System.___hPartialFunc1_1 (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@4|)) |#$R@@4|)
 :qid |unknown.0:0|
 :skolemid |399|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@4|))
)))
(assert (forall ((|#$T0@@5| T@U) (|#$R@@5| T@U) ) (! (= (Tclass._System.___hTotalFunc1_0 (Tclass._System.___hTotalFunc1 |#$T0@@5| |#$R@@5|)) |#$T0@@5|)
 :qid |unknown.0:0|
 :skolemid |405|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@5| |#$R@@5|))
)))
(assert (forall ((|#$T0@@6| T@U) (|#$R@@6| T@U) ) (! (= (Tclass._System.___hTotalFunc1_1 (Tclass._System.___hTotalFunc1 |#$T0@@6| |#$R@@6|)) |#$R@@6|)
 :qid |unknown.0:0|
 :skolemid |406|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@6| |#$R@@6|))
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
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((|l#0@@4| T@U) (|l#1@@1| T@U) (|l#2@@1| T@U) (|l#3@@1| T@U) (|l#4@@1| T@U) (|l#5@@1| T@U) (|l#6@@1| T@U) (|l#7@@1| T@U) (|l#8@@1| T@U) (|l#9@@1| T@U) (|l#10@@1| T@U) (|l#11@@1| T@U) (|l#12@@0| T@U) (|l#13@@0| T@U) (|l#14@@0| T@U) (|l#15@@0| T@U) (|l#16@@0| T@U) (|l#17@@0| T@U) (|l#18@@0| T@U) (|$l#32#heap#0| T@U) (|$l#32#l#0| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#1592| |l#0@@4| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@1| |l#7@@1| |l#8@@1| |l#9@@1| |l#10@@1| |l#11@@1| |l#12@@0| |l#13@@0| |l#14@@0| |l#15@@0| |l#16@@0| |l#17@@0| |l#18@@0|) |$l#32#heap#0| |$l#32#l#0|) ($Box intType (int_2_U (Mul (Mul (U_2_int ($Unbox intType (Apply1 |l#0@@4| |l#1@@1| |$l#32#heap#0| ($Unbox HandleTypeType (Apply1 |l#2@@1| |l#3@@1| |$l#32#heap#0| |l#4@@1| |l#5@@1|)) ($Box intType ($Unbox intType |$l#32#l#0|))))) (U_2_int ($Unbox intType (Apply1 |l#6@@1| |l#7@@1| |$l#32#heap#0| ($Unbox HandleTypeType (Apply1 |l#8@@1| |l#9@@1| |$l#32#heap#0| |l#10@@1| ($Box intType ($Unbox intType |$l#32#l#0|)))) |l#11@@1|)))) (U_2_int ($Unbox intType (Apply1 |l#12@@0| |l#13@@0| |$l#32#heap#0| ($Unbox HandleTypeType (Apply1 |l#14@@0| |l#15@@0| |$l#32#heap#0| |l#16@@0| |l#17@@0|)) |l#18@@0|)))))))
 :qid |MatrixAssocdfy.10:6|
 :skolemid |765|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#1592| |l#0@@4| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@1| |l#7@@1| |l#8@@1| |l#9@@1| |l#10@@1| |l#11@@1| |l#12@@0| |l#13@@0| |l#14@@0| |l#15@@0| |l#16@@0| |l#17@@0| |l#18@@0|) |$l#32#heap#0| |$l#32#l#0|))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|f#0@@6| T@U) ) (!  (=> (or (|_module.__default.Sum#canCall| (Lit HandleTypeType |f#0@@6|)) (and (< 4 $FunctionContextHeight) ($Is HandleTypeType |f#0@@6| (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt)))) (and (|_module.__default.Sum__n#canCall| (Lit HandleTypeType |f#0@@6|) _module.__default.N) (= (_module.__default.Sum (Lit HandleTypeType |f#0@@6|)) (_module.__default.Sum__n ($LS $LZ) (Lit HandleTypeType |f#0@@6|) _module.__default.N))))
 :qid |MatrixAssocdfy.42:14|
 :weight 3
 :skolemid |551|
 :pattern ( (_module.__default.Sum (Lit HandleTypeType |f#0@@6|)))
))))
(assert (forall ((|#$T0@@7| T@U) (|#$R@@7| T@U) (|f#0@@7| T@U) ) (! (= ($Is HandleTypeType |f#0@@7| (Tclass._System.___hTotalFunc1 |#$T0@@7| |#$R@@7|))  (and ($Is HandleTypeType |f#0@@7| (Tclass._System.___hPartialFunc1 |#$T0@@7| |#$R@@7|)) (forall ((|x0#0| T@U) ) (!  (=> ($IsBox |x0#0| |#$T0@@7|) (Requires1 |#$T0@@7| |#$R@@7| $OneHeap |f#0@@7| |x0#0|))
 :qid |unknown.0:0|
 :skolemid |408|
))))
 :qid |unknown.0:0|
 :skolemid |409|
 :pattern ( ($Is HandleTypeType |f#0@@7| (Tclass._System.___hTotalFunc1 |#$T0@@7| |#$R@@7|)))
)))
(assert (forall ((|l#0@@5| T@U) (|l#1@@2| T@U) (|l#2@@2| T@U) (|l#3@@2| T@U) (|l#4@@2| T@U) (|l#5@@2| T@U) (|l#6@@2| T@U) (|l#7@@2| T@U) (|l#8@@2| T@U) (|l#9@@2| T@U) (|l#10@@2| T@U) (|l#11@@2| T@U) (|l#12@@1| T@U) (|l#13@@1| T@U) (|l#14@@1| T@U) (|l#15@@1| T@U) (|l#16@@1| T@U) (|l#17@@1| T@U) (|l#18@@1| T@U) (|l#19@@0| T@U) (|l#20| T@U) (|$l#0_2_9#ly#0| T@U) ) (! (= (MapType1Select LayerTypeType HandleTypeType (|lambda#2587| |l#0@@5| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@2| |l#7@@2| |l#8@@2| |l#9@@2| |l#10@@2| |l#11@@2| |l#12@@1| |l#13@@1| |l#14@@1| |l#15@@1| |l#16@@1| |l#17@@1| |l#18@@1| |l#19@@0| |l#20|) |$l#0_2_9#ly#0|) (Handle1 (|lambda#2583| |l#0@@5| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@2| |l#7@@2| |l#8@@2| |l#9@@2| |l#10@@2| |l#11@@2| |l#12@@1| |$l#0_2_9#ly#0| |l#13@@1| |l#14@@1| |l#15@@1| |l#16@@1| |l#17@@1| |l#18@@1|) |l#19@@0| |l#20|))
 :qid |MatrixAssocdfy.10:6|
 :skolemid |776|
 :pattern ( (MapType1Select LayerTypeType HandleTypeType (|lambda#2587| |l#0@@5| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@2| |l#7@@2| |l#8@@2| |l#9@@2| |l#10@@2| |l#11@@2| |l#12@@1| |l#13@@1| |l#14@@1| |l#15@@1| |l#16@@1| |l#17@@1| |l#18@@1| |l#19@@0| |l#20|) |$l#0_2_9#ly#0|))
)))
(assert (forall ((|l#0@@6| T@U) (|l#1@@3| T@U) (|l#2@@3| T@U) (|l#3@@3| T@U) (|l#4@@3| T@U) (|l#5@@3| T@U) (|l#6@@3| T@U) (|l#7@@3| T@U) (|l#8@@3| T@U) (|l#9@@3| T@U) (|l#10@@3| T@U) (|l#11@@3| T@U) (|l#12@@2| T@U) (|l#13@@2| T@U) (|l#14@@2| T@U) (|l#15@@2| T@U) (|l#16@@2| T@U) (|l#17@@2| T@U) (|l#18@@2| T@U) (|l#19@@1| T@U) (|l#20@@0| T@U) (|$l#0_3_9#ly#0| T@U) ) (! (= (MapType1Select LayerTypeType HandleTypeType (|lambda#2795| |l#0@@6| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3| |l#6@@3| |l#7@@3| |l#8@@3| |l#9@@3| |l#10@@3| |l#11@@3| |l#12@@2| |l#13@@2| |l#14@@2| |l#15@@2| |l#16@@2| |l#17@@2| |l#18@@2| |l#19@@1| |l#20@@0|) |$l#0_3_9#ly#0|) (Handle1 (|lambda#2791| |l#0@@6| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3| |l#6@@3| |l#7@@3| |l#8@@3| |l#9@@3| |l#10@@3| |l#11@@3| |l#12@@2| |l#13@@2| |l#14@@2| |l#15@@2| |l#16@@2| |l#17@@2| |l#18@@2| |$l#0_3_9#ly#0|) |l#19@@1| |l#20@@0|))
 :qid |MatrixAssocdfy.10:6|
 :skolemid |778|
 :pattern ( (MapType1Select LayerTypeType HandleTypeType (|lambda#2795| |l#0@@6| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3| |l#6@@3| |l#7@@3| |l#8@@3| |l#9@@3| |l#10@@3| |l#11@@3| |l#12@@2| |l#13@@2| |l#14@@2| |l#15@@2| |l#16@@2| |l#17@@2| |l#18@@2| |l#19@@1| |l#20@@0|) |$l#0_3_9#ly#0|))
)))
(assert (forall ((|#$T0@@8| T@U) (|#$R@@8| T@U) (|f#0@@8| T@U) ) (! (= ($Is HandleTypeType |f#0@@8| (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|))  (and ($Is HandleTypeType |f#0@@8| (Tclass._System.___hFunc1 |#$T0@@8| |#$R@@8|)) (forall ((|x0#0@@0| T@U) ) (!  (=> ($IsBox |x0#0@@0| |#$T0@@8|) (|Set#Equal| (Reads1 |#$T0@@8| |#$R@@8| $OneHeap |f#0@@8| |x0#0@@0|) |Set#Empty|))
 :qid |unknown.0:0|
 :skolemid |401|
))))
 :qid |unknown.0:0|
 :skolemid |402|
 :pattern ( ($Is HandleTypeType |f#0@@8| (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|)))
)))
(assert (forall ((f@@4 T@U) (ly@@0 T@U) (A@@0 T@T) ) (! (= (AtLayer A@@0 f@@4 ($LS ly@@0)) (AtLayer A@@0 f@@4 ly@@0))
 :qid |DafnyPreludebpl.502:18|
 :skolemid |102|
 :pattern ( (AtLayer A@@0 f@@4 ($LS ly@@0)))
)))
(assert (forall ((f@@5 T@U) (t0@@10 T@U) (t1@@8 T@U) (h@@6 T@U) ) (!  (=> ($IsGoodHeap h@@6) (= ($IsAlloc HandleTypeType f@@5 (Tclass._System.___hFunc1 t0@@10 t1@@8) h@@6) (forall ((bx0@@5 T@U) ) (!  (=> (and (and ($IsBox bx0@@5 t0@@10) ($IsAllocBox bx0@@5 t0@@10 h@@6)) (Requires1 t0@@10 t1@@8 h@@6 f@@5 bx0@@5)) (forall ((r@@2 T@U) ) (!  (=> (and (or (not (= r@@2 null)) (not true)) (|Set#IsMember| (Reads1 t0@@10 t1@@8 h@@6 f@@5 bx0@@5) ($Box refType r@@2))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@6 r@@2) alloc))))
 :qid |unknown.0:0|
 :skolemid |392|
 :pattern ( (|Set#IsMember| (Reads1 t0@@10 t1@@8 h@@6 f@@5 bx0@@5) ($Box refType r@@2)))
)))
 :qid |unknown.0:0|
 :skolemid |393|
 :pattern ( (Apply1 t0@@10 t1@@8 h@@6 f@@5 bx0@@5))
 :pattern ( (Reads1 t0@@10 t1@@8 h@@6 f@@5 bx0@@5))
))))
 :qid |unknown.0:0|
 :skolemid |394|
 :pattern ( ($IsAlloc HandleTypeType f@@5 (Tclass._System.___hFunc1 t0@@10 t1@@8) h@@6))
)))
(assert (forall ((|#$T0@@9| T@U) (|#$R@@9| T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@10)) bx@@10) ($Is HandleTypeType ($Unbox HandleTypeType bx@@10) (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|))))
 :qid |unknown.0:0|
 :skolemid |369|
 :pattern ( ($IsBox bx@@10 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|)))
)))
(assert (forall ((|#$T0@@10| T@U) (|#$R@@10| T@U) (bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@11)) bx@@11) ($Is HandleTypeType ($Unbox HandleTypeType bx@@11) (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|))))
 :qid |unknown.0:0|
 :skolemid |400|
 :pattern ( ($IsBox bx@@11 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|)))
)))
(assert (forall ((|#$T0@@11| T@U) (|#$R@@11| T@U) (bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@12)) bx@@12) ($Is HandleTypeType ($Unbox HandleTypeType bx@@12) (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|))))
 :qid |unknown.0:0|
 :skolemid |407|
 :pattern ( ($IsBox bx@@12 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|)))
)))
(assert (forall ((|l#0@@7| T@U) (|l#1@@4| T@U) (|l#2@@4| T@U) (|l#3@@4| Bool) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@7| |l#1@@4| |l#2@@4| |l#3@@4|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0@@7|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1@@4| $o@@1) |l#2@@4|)))) |l#3@@4|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |741|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@7| |l#1@@4| |l#2@@4| |l#3@@4|) $o@@1 $f))
)))
(assert (forall ((|#$T0@@12| T@U) (|#$R@@12| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |366|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|))
)))
(assert (forall ((|#$T0@@13| T@U) (|#$R@@13| T@U) ) (!  (and (= (Tag (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|)) Tagclass._System.___hPartialFunc1) (= (TagFamily (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|)) |tytagFamily$_#PartialFunc1|))
 :qid |unknown.0:0|
 :skolemid |397|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|))
)))
(assert (forall ((|#$T0@@14| T@U) (|#$R@@14| T@U) ) (!  (and (= (Tag (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|)) Tagclass._System.___hTotalFunc1) (= (TagFamily (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|)) |tytagFamily$_#TotalFunc1|))
 :qid |unknown.0:0|
 :skolemid |404|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|))
)))
(assert (forall ((x@@6 Int) (y Int) ) (! (= (Mul x@@6 y) (* x@@6 y))
 :qid |DafnyPreludebpl.1647:14|
 :skolemid |338|
 :pattern ( (Mul x@@6 y))
)))
(assert (forall ((t0@@11 T@U) (t1@@9 T@U) (heap@@3 T@U) (f@@6 T@U) (bx0@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@3) (and ($IsBox bx0@@6 t0@@11) ($Is HandleTypeType f@@6 (Tclass._System.___hFunc1 t0@@11 t1@@9)))) (|Set#Equal| (Reads1 t0@@11 t1@@9 $OneHeap f@@6 bx0@@6) |Set#Empty|)) (= (Requires1 t0@@11 t1@@9 $OneHeap f@@6 bx0@@6) (Requires1 t0@@11 t1@@9 heap@@3 f@@6 bx0@@6)))
 :qid |unknown.0:0|
 :skolemid |386|
 :pattern ( (Requires1 t0@@11 t1@@9 $OneHeap f@@6 bx0@@6) ($IsGoodHeap heap@@3))
 :pattern ( (Requires1 t0@@11 t1@@9 heap@@3 f@@6 bx0@@6))
)))
(assert (forall ((bx@@13 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@13 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@13)) bx@@13) ($Is SetType ($Unbox SetType bx@@13) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@13 (TSet t@@3)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass._module.Pos) Tagclass._module.Pos))
(assert (= (TagFamily Tclass._module.Pos) tytagFamily$Pos))
(assert (= (Tag Tclass._module.Index) Tagclass._module.Index))
(assert (= (TagFamily Tclass._module.Index) tytagFamily$Index))
(assert (forall ((s@@0 T@U) ) (! ($Is SetType (SetRef_to_SetBox s@@0) (TSet Tclass._System.object?))
 :qid |DafnyPreludebpl.372:15|
 :skolemid |83|
 :pattern ( (SetRef_to_SetBox s@@0))
)))
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
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@8)) (Lit BoxType ($Box T@@4 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@8)))
)))
(assert (forall ((h@@7 T@U) (v@@3 T@U) ) (! ($IsAlloc intType v@@3 TInt h@@7)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@3 TInt h@@7))
)))
(assert (forall ((|l#0@@8| T@U) (|$l#6#heap#0@@1| T@U) (|$l#6#k#0@@1| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#7| |l#0@@8|) |$l#6#heap#0@@1| |$l#6#k#0@@1|) |l#0@@8|)
 :qid |MatrixAssocdfy.50:9|
 :skolemid |745|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#7| |l#0@@8|) |$l#6#heap#0@@1| |$l#6#k#0@@1|))
)))
(assert (forall ((|l#0@@9| T@U) (|l#1@@5| T@U) (|l#2@@5| T@U) (|l#3@@5| T@U) (|l#4@@4| T@U) (|l#5@@4| T@U) (|l#6@@4| T@U) (|l#7@@4| T@U) (|l#8@@4| T@U) (|l#9@@4| T@U) (|l#10@@4| T@U) (|l#11@@4| T@U) (|l#12@@3| T@U) (|l#13@@3| T@U) (|l#14@@3| T@U) (|l#15@@3| T@U) (|l#16@@3| T@U) (|l#17@@3| T@U) (|l#18@@3| T@U) (|l#19@@2| T@U) (|$l#0_2_9#heap#0| T@U) (|$l#0_2_9#k#0| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#2583| |l#0@@9| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@4| |l#5@@4| |l#6@@4| |l#7@@4| |l#8@@4| |l#9@@4| |l#10@@4| |l#11@@4| |l#12@@3| |l#13@@3| |l#14@@3| |l#15@@3| |l#16@@3| |l#17@@3| |l#18@@3| |l#19@@2|) |$l#0_2_9#heap#0| |$l#0_2_9#k#0|) ($Box intType (int_2_U (Mul (LitInt (_module.__default.Sum (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#4| |l#0@@9| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@4| ($Box intType ($Unbox intType |$l#0_2_9#k#0|)) |l#5@@4| |l#6@@4| |l#7@@4| |l#8@@4| |l#9@@4| |l#10@@4|) |l#11@@4| |l#12@@3|)) |l#13@@3|)))) (U_2_int ($Unbox intType (Apply1 |l#14@@3| |l#15@@3| |$l#0_2_9#heap#0| ($Unbox HandleTypeType (Apply1 |l#16@@3| |l#17@@3| |$l#0_2_9#heap#0| |l#18@@3| |l#19@@2|)) ($Box intType ($Unbox intType |$l#0_2_9#k#0|)))))))))
 :qid |MatrixAssocdfy.10:6|
 :skolemid |775|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#2583| |l#0@@9| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@4| |l#5@@4| |l#6@@4| |l#7@@4| |l#8@@4| |l#9@@4| |l#10@@4| |l#11@@4| |l#12@@3| |l#13@@3| |l#14@@3| |l#15@@3| |l#16@@3| |l#17@@3| |l#18@@3| |l#19@@2|) |$l#0_2_9#heap#0| |$l#0_2_9#k#0|))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is intType v@@4 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@4 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@@2 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |a#0| () T@U)
(declare-fun |b#0| () T@U)
(declare-fun |c#0@@1| () T@U)
(declare-fun |i#0| () Int)
(declare-fun |j#0| () Int)
(declare-fun |g#0_3_0_0| () T@U)
(declare-fun |g#0_7_0_0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |##f#0_3_0@0| () T@U)
(declare-fun |f##0_3_0@0| () T@U)
(declare-fun |g##0_3_0@0| () T@U)
(declare-fun call0formal@_module._default.FunEq$X@0 () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.mult__assoc__ij_split16)
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
 (=> (= (ControlFlow 0 0) 2) (let ((anon0_correct  (=> (and (and (and (and ($IsGoodHeap $Heap@@2) ($IsHeapAnchor $Heap@@2)) (and ($Is HandleTypeType |a#0| (Tclass._System.___hTotalFunc1 Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt))) ($IsAlloc HandleTypeType |a#0| (Tclass._System.___hTotalFunc1 Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt)) $Heap@@2))) (and (and ($Is HandleTypeType |b#0| (Tclass._System.___hTotalFunc1 Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt))) ($IsAlloc HandleTypeType |b#0| (Tclass._System.___hTotalFunc1 Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt)) $Heap@@2)) (and ($Is HandleTypeType |c#0@@1| (Tclass._System.___hTotalFunc1 Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt))) ($IsAlloc HandleTypeType |c#0@@1| (Tclass._System.___hTotalFunc1 Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt)) $Heap@@2)))) (and (and (and (<= (LitInt 0) |i#0|) (< |i#0| _module.__default.N)) (and (<= (LitInt 0) |j#0|) (< |j#0| _module.__default.N))) (and (and ($Is HandleTypeType |g#0_3_0_0| (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt)) ($IsAlloc HandleTypeType |g#0_3_0_0| (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) $Heap@@2)) true))) (=> (and (and (and (and (and ($Is HandleTypeType |g#0_7_0_0| (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt)) ($IsAlloc HandleTypeType |g#0_7_0_0| (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) $Heap@@2)) true) (= 8 $FunctionContextHeight)) (and (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@2 alloc false)) (= |##f#0_3_0@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#2795| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |b#0| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |c#0@@1| ($Box intType (int_2_U |j#0|)) Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |a#0| ($Box intType (int_2_U |i#0|)) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false)))) ($LS $LZ))))) (and ($IsAlloc HandleTypeType |##f#0_3_0@0| (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) $Heap@@2) (|_module.__default.Sum#canCall| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#2795| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |b#0| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |c#0@@1| ($Box intType (int_2_U |j#0|)) Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |a#0| ($Box intType (int_2_U |i#0|)) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false)))) ($LS $LZ))))))) (and (and (and (and (forall ((|$l#0_3_13#k#0| T@U) ) (!  (=> (and (<= (LitInt 0) (U_2_int |$l#0_3_13#k#0|)) (< (U_2_int |$l#0_3_13#k#0|) _module.__default.N)) (|_module.__default.Sum#canCall| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#1592| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |b#0| ($Box intType |$l#0_3_13#k#0|) Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |c#0@@1| ($Box intType (int_2_U |j#0|)) Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |a#0| ($Box intType (int_2_U |i#0|)) ($Box intType |$l#0_3_13#k#0|)) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ)))))
 :qid |unknown.0:0|
 :skolemid |680|
)) (|_module.__default.Sum#canCall| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#2795| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |b#0| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |c#0@@1| ($Box intType (int_2_U |j#0|)) Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |a#0| ($Box intType (int_2_U |i#0|)) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false)))) ($LS $LZ))))) (forall ((|k#0_3_0_1| T@U) ) (!  (=> (and (and (<= (LitInt 0) (U_2_int |k#0_3_0_1|)) (< (U_2_int |k#0_3_0_1|) _module.__default.N)) (U_2_bool (Lit boolType (bool_2_U true)))) (= (Mul (LitInt (_module.__default.Sum (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#4| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |b#0| ($Box intType |k#0_3_0_1|) Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |c#0@@1| ($Box intType (int_2_U |j#0|))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ))))) (U_2_int ($Unbox intType (Apply1 Tclass._module.Index TInt $Heap@@2 ($Unbox HandleTypeType (Apply1 Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) $Heap@@2 |a#0| ($Box intType (int_2_U |i#0|)))) ($Box intType |k#0_3_0_1|))))) (LitInt (_module.__default.Sum (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#1592| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |b#0| ($Box intType |k#0_3_0_1|) Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |c#0@@1| ($Box intType (int_2_U |j#0|)) Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |a#0| ($Box intType (int_2_U |i#0|)) ($Box intType |k#0_3_0_1|)) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ)))))))
 :qid |MatrixAssocdfy.225:18|
 :skolemid |683|
 :pattern ( ($Unbox intType (Apply1 Tclass._module.Index TInt $Heap@@2 ($Unbox HandleTypeType (Apply1 Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) $Heap@@2 |a#0| ($Box intType (int_2_U |i#0|)))) ($Box intType |k#0_3_0_1|))))
 :pattern ( ($Unbox HandleTypeType (Apply1 Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) $Heap@@2 |b#0| ($Box intType |k#0_3_0_1|))))
))) (and (forall ((|$l#0_3_25#k#0| T@U) ) (!  (=> (and (<= (LitInt 0) (U_2_int |$l#0_3_25#k#0|)) (< (U_2_int |$l#0_3_25#k#0|) _module.__default.N)) (|_module.__default.Sum#canCall| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#1592| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |b#0| ($Box intType |$l#0_3_25#k#0|) Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |c#0@@1| ($Box intType (int_2_U |j#0|)) Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |a#0| ($Box intType (int_2_U |i#0|)) ($Box intType |$l#0_3_25#k#0|)) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ)))))
 :qid |unknown.0:0|
 :skolemid |685|
)) (= |f##0_3_0@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#2795| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |b#0| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |c#0@@1| ($Box intType (int_2_U |j#0|)) Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |a#0| ($Box intType (int_2_U |i#0|)) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false)))) ($LS $LZ)))))) (and (and (forall ((|$l#0_3_37#k#0| T@U) ) (!  (=> (and (<= (LitInt 0) (U_2_int |$l#0_3_37#k#0|)) (< (U_2_int |$l#0_3_37#k#0|) _module.__default.N)) (|_module.__default.Sum#canCall| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#4| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |b#0| ($Box intType |$l#0_3_37#k#0|) Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |c#0@@1| ($Box intType (int_2_U |j#0|))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ)))))
 :qid |unknown.0:0|
 :skolemid |687|
)) (= |g##0_3_0@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#2587| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |b#0| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |c#0@@1| ($Box intType (int_2_U |j#0|)) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))) Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |a#0| ($Box intType (int_2_U |i#0|)) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false)))) ($LS $LZ))))) (and (= call0formal@_module._default.FunEq$X@0 Tclass._module.Index) (= (ControlFlow 0 2) (- 0 1)))))) (forall ((|x#1| T@U) ) (!  (=> (and ($IsBox |x#1| call0formal@_module._default.FunEq$X@0) ($IsAllocBox |x#1| call0formal@_module._default.FunEq$X@0 $Heap@@2)) (= (Apply1 call0formal@_module._default.FunEq$X@0 TInt $Heap@@2 |f##0_3_0@0| |x#1|) (Apply1 call0formal@_module._default.FunEq$X@0 TInt $Heap@@2 |g##0_3_0@0| |x#1|)))
 :qid |MatrixAssocdfy.16:19|
 :skolemid |531|
 :pattern ( (Apply1 call0formal@_module._default.FunEq$X@0 TInt $Heap@@2 |g##0_3_0@0| |x#1|))
 :pattern ( (Apply1 call0formal@_module._default.FunEq$X@0 TInt $Heap@@2 |f##0_3_0@0| |x#1|))
))))))
anon0_correct))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
