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
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun Tagclass._System.___hPartialFunc1 () T@U)
(declare-fun Tagclass._System.___hTotalFunc1 () T@U)
(declare-fun Tagclass._module.Pos () T@U)
(declare-fun Tagclass._module.Index () T@U)
(declare-fun tytagFamily$nat () T@U)
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
(declare-fun Tclass._System.nat () T@U)
(declare-fun Tclass._module.Pos () T@U)
(declare-fun Tclass._module.Index () T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun |lambda#874| (T@U T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun _module.__default.Sum (T@U) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun HandleTypeType () T@T)
(declare-fun AtLayer (T@T T@U T@U) T@U)
(declare-fun |lambda#8| (T@U) T@U)
(declare-fun |lambda#152| (T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |lambda#889| (T@U T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun |lambda#172| (T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.Sum__n (T@U T@U Int) Int)
(declare-fun $LS (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.__default.Sum__n#canCall| (T@U Int) Bool)
(declare-fun Tclass._System.___hTotalFunc1 (T@U T@U) T@U)
(declare-fun _module.__default.N () Int)
(declare-fun null () T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun $OneHeap () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun LayerTypeType () T@T)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |lambda#161| (T@U T@U T@U T@U T@U T@U T@U Int T@U T@U) T@U)
(declare-fun |lambda#157| (T@U T@U T@U T@U T@U T@U T@U T@U T@U Int) T@U)
(declare-fun |lambda#181| (T@U T@U T@U T@U T@U T@U T@U Int T@U T@U) T@U)
(declare-fun |lambda#177| (T@U T@U T@U T@U T@U T@U T@U T@U T@U Int) T@U)
(declare-fun SetRef_to_SetBox (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1 (T@U T@U) T@U)
(declare-fun |_module.__default.Sum#canCall| (T@U) Bool)
(declare-fun $LZ () T@U)
(declare-fun |lambda#6| (Bool) T@U)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |lambda#878| (T@U T@U T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun |lambda#893| (T@U T@U T@U T@U T@U T@U T@U T@U T@U) T@U)
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
(assert (distinct TInt TagInt TagSet alloc Tagclass._System.nat Tagclass._System.object? Tagclass._System.object Tagclass._System.___hFunc1 Tagclass._System.___hPartialFunc1 Tagclass._System.___hTotalFunc1 Tagclass._module.Pos Tagclass._module.Index tytagFamily$nat tytagFamily$object |tytagFamily$_#Func1| |tytagFamily$_#PartialFunc1| |tytagFamily$_#TotalFunc1| tytagFamily$Pos tytagFamily$Index)
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
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (forall ((|x#0@@0| T@U) ($h@@0 T@U) ) (! ($IsAlloc intType |x#0@@0| Tclass._module.Pos $h@@0)
 :qid |unknown.0:0|
 :skolemid |738|
 :pattern ( ($IsAlloc intType |x#0@@0| Tclass._module.Pos $h@@0))
)))
(assert (forall ((|x#0@@1| T@U) ($h@@1 T@U) ) (! ($IsAlloc intType |x#0@@1| Tclass._module.Index $h@@1)
 :qid |unknown.0:0|
 :skolemid |740|
 :pattern ( ($IsAlloc intType |x#0@@1| Tclass._module.Index $h@@1))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (Ctor HandleTypeType) 8))
(assert (forall ((|l#0@@0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) (|l#5| T@U) (|l#6| T@U) (|l#7| T@U) (|$l#33#heap#0| T@U) (|$l#33#k#0| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#874| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6| |l#7|) |$l#33#heap#0| |$l#33#k#0|) ($Box intType (int_2_U (LitInt (_module.__default.Sum (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#152| |l#0@@0| |l#1| |l#2| |l#3| |l#4| ($Box intType ($Unbox intType |$l#33#k#0|))) |l#5| |l#6|)) |l#7|)))))))
 :qid |MatrixAssocdfy.10:6|
 :skolemid |761|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#874| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6| |l#7|) |$l#33#heap#0| |$l#33#k#0|))
)))
(assert (forall ((|l#0@@1| T@U) (|l#1@@0| T@U) (|l#2@@0| T@U) (|l#3@@0| T@U) (|l#4@@0| T@U) (|l#5@@0| T@U) (|l#6@@0| T@U) (|l#7@@0| T@U) (|$l#38#heap#0| T@U) (|$l#38#l#0| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#889| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0| |l#6@@0| |l#7@@0|) |$l#38#heap#0| |$l#38#l#0|) ($Box intType (int_2_U (LitInt (_module.__default.Sum (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#172| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| ($Box intType ($Unbox intType |$l#38#l#0|))) |l#5@@0| |l#6@@0|)) |l#7@@0|)))))))
 :qid |MatrixAssocdfy.10:6|
 :skolemid |763|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#889| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0| |l#6@@0| |l#7@@0|) |$l#38#heap#0| |$l#38#l#0|))
)))
(assert (forall ((|l#0@@2| T@U) (|l#1@@1| T@U) (|l#2@@1| T@U) (|l#3@@1| T@U) (|l#4@@1| T@U) (|l#5@@1| T@U) (|$l#23#heap#0| T@U) (|$l#23#k#0| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#172| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1|) |$l#23#heap#0| |$l#23#k#0|) ($Box intType ($Unbox intType (Apply1 |l#0@@2| |l#1@@1| |$l#23#heap#0| ($Unbox HandleTypeType (Apply1 |l#2@@1| |l#3@@1| |$l#23#heap#0| |l#4@@1| ($Box intType ($Unbox intType |$l#23#k#0|)))) |l#5@@1|))))
 :qid |MatrixAssocdfy.10:6|
 :skolemid |756|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#172| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1|) |$l#23#heap#0| |$l#23#k#0|))
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
(assert (forall ((|c#0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h@@2) ($IsAlloc refType |c#0| Tclass._System.object? $h@@2))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h@@2))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h@@2))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly T@U) ($Heap T@U) (|f#0| T@U) (|n#0| Int) ) (!  (=> (or (|_module.__default.Sum__n#canCall| (Lit HandleTypeType |f#0|) (LitInt |n#0|)) (and (< 3 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap) ($Is HandleTypeType |f#0| (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt))) (<= (LitInt 0) |n#0|)) (<= (LitInt |n#0|) _module.__default.N)))) (and (=> (or (not (= (LitInt |n#0|) (LitInt 0))) (not true)) (|_module.__default.Sum__n#canCall| (Lit HandleTypeType |f#0|) (LitInt (- |n#0| 1)))) (= (_module.__default.Sum__n ($LS $ly) (Lit HandleTypeType |f#0|) (LitInt |n#0|)) (ite (= (LitInt |n#0|) (LitInt 0)) 0 (+ (U_2_int ($Unbox intType (Apply1 Tclass._module.Index TInt $Heap (Lit HandleTypeType |f#0|) ($Box intType (int_2_U (LitInt (- |n#0| 1))))))) (_module.__default.Sum__n ($LS $ly) (Lit HandleTypeType |f#0|) (LitInt (- |n#0| 1))))))))
 :qid |MatrixAssocdfy.35:10|
 :weight 3
 :skolemid |546|
 :pattern ( (_module.__default.Sum__n ($LS $ly) (Lit HandleTypeType |f#0|) (LitInt |n#0|)) ($IsGoodHeap $Heap))
))))
(assert (forall (($o T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o Tclass._System.object? $h@@3)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@3 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o Tclass._System.object? $h@@3))
)))
(assert (forall ((h@@0 T@U) (k T@U) ) (!  (=> ($HeapSucc h@@0 k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@0 o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) k o@@0) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h@@0 k))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@0 T@U) ($Heap@@0 T@U) (|f#0@@0| T@U) (|n#0@@0| Int) ) (!  (=> (or (|_module.__default.Sum__n#canCall| |f#0@@0| |n#0@@0|) (and (< 3 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@0) ($Is HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt))) (<= (LitInt 0) |n#0@@0|)) (<= |n#0@@0| _module.__default.N)))) (and (=> (or (not (= |n#0@@0| (LitInt 0))) (not true)) (|_module.__default.Sum__n#canCall| |f#0@@0| (- |n#0@@0| 1))) (= (_module.__default.Sum__n ($LS $ly@@0) |f#0@@0| |n#0@@0|) (ite (= |n#0@@0| (LitInt 0)) 0 (+ (U_2_int ($Unbox intType (Apply1 Tclass._module.Index TInt $Heap@@0 |f#0@@0| ($Box intType (int_2_U (- |n#0@@0| 1)))))) (_module.__default.Sum__n $ly@@0 |f#0@@0| (- |n#0@@0| 1)))))))
 :qid |MatrixAssocdfy.35:10|
 :skolemid |544|
 :pattern ( (_module.__default.Sum__n ($LS $ly@@0) |f#0@@0| |n#0@@0|) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((|x#0@@2| T@U) ) (! (= ($Is intType |x#0@@2| Tclass._module.Pos) (< 0 (U_2_int |x#0@@2|)))
 :qid |unknown.0:0|
 :skolemid |737|
 :pattern ( ($Is intType |x#0@@2| Tclass._module.Pos))
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
(assert (forall ((t0@@4 T@U) (t1@@4 T@U) (h0 T@U) (h1 T@U) (f@@1 T@U) (bx0@@1 T@U) ) (!  (=> (and (and (and ($HeapSucc h0 h1) (and ($IsGoodHeap h0) ($IsGoodHeap h1))) (and ($IsBox bx0@@1 t0@@4) ($Is HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@4 t1@@4)))) (forall ((o@@1 T@U) (fld T@U) ) (!  (=> (and (or (not (= o@@1 null)) (not true)) (|Set#IsMember| (Reads1 t0@@4 t1@@4 h0 f@@1 bx0@@1) ($Box refType o@@1))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0 o@@1) fld) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1 o@@1) fld)))
 :qid |unknown.0:0|
 :skolemid |377|
))) (= (Requires1 t0@@4 t1@@4 h0 f@@1 bx0@@1) (Requires1 t0@@4 t1@@4 h1 f@@1 bx0@@1)))
 :qid |unknown.0:0|
 :skolemid |378|
 :pattern ( ($HeapSucc h0 h1) (Requires1 t0@@4 t1@@4 h1 f@@1 bx0@@1))
)))
(assert (forall ((t0@@5 T@U) (t1@@5 T@U) (h0@@0 T@U) (h1@@0 T@U) (f@@2 T@U) (bx0@@2 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@0 h1@@0) (and ($IsGoodHeap h0@@0) ($IsGoodHeap h1@@0))) (and ($IsBox bx0@@2 t0@@5) ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@5 t1@@5)))) (forall ((o@@2 T@U) (fld@@0 T@U) ) (!  (=> (and (or (not (= o@@2 null)) (not true)) (|Set#IsMember| (Reads1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2) ($Box refType o@@2))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@0 o@@2) fld@@0) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@0 o@@2) fld@@0)))
 :qid |unknown.0:0|
 :skolemid |379|
))) (= (Requires1 t0@@5 t1@@5 h0@@0 f@@2 bx0@@2) (Requires1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2)))
 :qid |unknown.0:0|
 :skolemid |380|
 :pattern ( ($HeapSucc h0@@0 h1@@0) (Requires1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2))
)))
(assert (forall ((v T@U) (t0@@6 T@U) ) (! (= ($Is SetType v (TSet t0@@6)) (forall ((bx@@2 T@U) ) (!  (=> (|Set#IsMember| v bx@@2) ($IsBox bx@@2 t0@@6))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@2))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@6)))
)))
(assert (= (Ctor LayerTypeType) 9))
(assert (forall ((f@@3 T@U) (ly T@U) (A T@T) ) (! (= (AtLayer A f@@3 ly) (MapType1Select LayerTypeType A f@@3 ly))
 :qid |DafnyPreludebpl.501:18|
 :skolemid |101|
 :pattern ( (AtLayer A f@@3 ly))
)))
(assert (forall ((|x#0@@3| T@U) ) (! (= ($Is intType |x#0@@3| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@3|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@3| Tclass._System.nat))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((v@@0 T@U) (t T@U) (h@@1 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@1) ($IsAlloc T@@1 v@@0 t h@@1))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@0 T@U) (bx@@3 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@2 k@@0) (=> ($IsAllocBox bx@@3 t@@0 h@@2) ($IsAllocBox bx@@3 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@2 k@@0) ($IsAllocBox bx@@3 t@@0 h@@2))
)))
(assert (forall ((h@@3 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@3 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@3) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@3 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@3))
)))
(assert  (=> (< 1 $FunctionContextHeight) ($Is intType (int_2_U _module.__default.N) Tclass._module.Pos)))
(assert (forall ((t0@@7 T@U) (t1@@6 T@U) (h0@@1 T@U) (h1@@1 T@U) (f@@4 T@U) (bx0@@3 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@1 h1@@1) (and ($IsGoodHeap h0@@1) ($IsGoodHeap h1@@1))) (and ($IsBox bx0@@3 t0@@7) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc1 t0@@7 t1@@6)))) (forall ((o@@3 T@U) (fld@@1 T@U) ) (!  (=> (and (or (not (= o@@3 null)) (not true)) (|Set#IsMember| (Reads1 t0@@7 t1@@6 h0@@1 f@@4 bx0@@3) ($Box refType o@@3))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@1 o@@3) fld@@1) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@1 o@@3) fld@@1)))
 :qid |unknown.0:0|
 :skolemid |373|
))) (= (Reads1 t0@@7 t1@@6 h0@@1 f@@4 bx0@@3) (Reads1 t0@@7 t1@@6 h1@@1 f@@4 bx0@@3)))
 :qid |unknown.0:0|
 :skolemid |374|
 :pattern ( ($HeapSucc h0@@1 h1@@1) (Reads1 t0@@7 t1@@6 h1@@1 f@@4 bx0@@3))
)))
(assert (forall ((t0@@8 T@U) (t1@@7 T@U) (h0@@2 T@U) (h1@@2 T@U) (f@@5 T@U) (bx0@@4 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@2 h1@@2) (and ($IsGoodHeap h0@@2) ($IsGoodHeap h1@@2))) (and ($IsBox bx0@@4 t0@@8) ($Is HandleTypeType f@@5 (Tclass._System.___hFunc1 t0@@8 t1@@7)))) (forall ((o@@4 T@U) (fld@@2 T@U) ) (!  (=> (and (or (not (= o@@4 null)) (not true)) (|Set#IsMember| (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4) ($Box refType o@@4))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@2 o@@4) fld@@2) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@2 o@@4) fld@@2)))
 :qid |unknown.0:0|
 :skolemid |375|
))) (= (Reads1 t0@@8 t1@@7 h0@@2 f@@5 bx0@@4) (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4)))
 :qid |unknown.0:0|
 :skolemid |376|
 :pattern ( ($HeapSucc h0@@2 h1@@2) (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4))
)))
(assert (forall ((t0@@9 T@U) (t1@@8 T@U) (h0@@3 T@U) (h1@@3 T@U) (f@@6 T@U) (bx0@@5 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@3 h1@@3) (and ($IsGoodHeap h0@@3) ($IsGoodHeap h1@@3))) (and ($IsBox bx0@@5 t0@@9) ($Is HandleTypeType f@@6 (Tclass._System.___hFunc1 t0@@9 t1@@8)))) (forall ((o@@5 T@U) (fld@@3 T@U) ) (!  (=> (and (or (not (= o@@5 null)) (not true)) (|Set#IsMember| (Reads1 t0@@9 t1@@8 h0@@3 f@@6 bx0@@5) ($Box refType o@@5))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@3 o@@5) fld@@3) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@3 o@@5) fld@@3)))
 :qid |unknown.0:0|
 :skolemid |381|
))) (= (Apply1 t0@@9 t1@@8 h0@@3 f@@6 bx0@@5) (Apply1 t0@@9 t1@@8 h1@@3 f@@6 bx0@@5)))
 :qid |unknown.0:0|
 :skolemid |382|
 :pattern ( ($HeapSucc h0@@3 h1@@3) (Apply1 t0@@9 t1@@8 h1@@3 f@@6 bx0@@5))
)))
(assert (forall ((t0@@10 T@U) (t1@@9 T@U) (h0@@4 T@U) (h1@@4 T@U) (f@@7 T@U) (bx0@@6 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@4 h1@@4) (and ($IsGoodHeap h0@@4) ($IsGoodHeap h1@@4))) (and ($IsBox bx0@@6 t0@@10) ($Is HandleTypeType f@@7 (Tclass._System.___hFunc1 t0@@10 t1@@9)))) (forall ((o@@6 T@U) (fld@@4 T@U) ) (!  (=> (and (or (not (= o@@6 null)) (not true)) (|Set#IsMember| (Reads1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6) ($Box refType o@@6))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@4 o@@6) fld@@4) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@4 o@@6) fld@@4)))
 :qid |unknown.0:0|
 :skolemid |383|
))) (= (Apply1 t0@@10 t1@@9 h0@@4 f@@7 bx0@@6) (Apply1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6)))
 :qid |unknown.0:0|
 :skolemid |384|
 :pattern ( ($HeapSucc h0@@4 h1@@4) (Apply1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6))
)))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@4 T@U) ) (!  (=> ($IsGoodHeap $h@@4) ($IsAlloc intType (int_2_U _module.__default.N) Tclass._module.Pos $h@@4))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |529|
 :pattern ( ($IsAlloc intType (int_2_U _module.__default.N) Tclass._module.Pos $h@@4))
))))
(assert (forall ((|l#0@@3| T@U) (|l#1@@2| T@U) (|l#2@@2| T@U) (|l#3@@2| T@U) (|l#4@@2| T@U) (|l#5@@2| T@U) (|l#6@@1| T@U) (|l#7@@1| Int) (|l#8| T@U) (|l#9| T@U) (|$l#9#ly#0| T@U) ) (! (= (MapType1Select LayerTypeType HandleTypeType (|lambda#161| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1| |l#7@@1| |l#8| |l#9|) |$l#9#ly#0|) (Handle1 (|lambda#157| |$l#9#ly#0| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1| |$l#9#ly#0| |l#7@@1|) |l#8| |l#9|))
 :qid |MatrixAssocdfy.10:6|
 :skolemid |755|
 :pattern ( (MapType1Select LayerTypeType HandleTypeType (|lambda#161| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1| |l#7@@1| |l#8| |l#9|) |$l#9#ly#0|))
)))
(assert (forall ((|l#0@@4| T@U) (|l#1@@3| T@U) (|l#2@@3| T@U) (|l#3@@3| T@U) (|l#4@@3| T@U) (|l#5@@3| T@U) (|l#6@@2| T@U) (|l#7@@2| Int) (|l#8@@0| T@U) (|l#9@@0| T@U) (|$l#22#ly#0| T@U) ) (! (= (MapType1Select LayerTypeType HandleTypeType (|lambda#181| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3| |l#6@@2| |l#7@@2| |l#8@@0| |l#9@@0|) |$l#22#ly#0|) (Handle1 (|lambda#177| |$l#22#ly#0| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3| |l#6@@2| |$l#22#ly#0| |l#7@@2|) |l#8@@0| |l#9@@0|))
 :qid |MatrixAssocdfy.10:6|
 :skolemid |758|
 :pattern ( (MapType1Select LayerTypeType HandleTypeType (|lambda#181| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3| |l#6@@2| |l#7@@2| |l#8@@0| |l#9@@0|) |$l#22#ly#0|))
)))
(assert (forall ((s T@U) (bx@@4 T@U) ) (! (= (|Set#IsMember| (SetRef_to_SetBox s) bx@@4) (U_2_bool (MapType1Select refType boolType s ($Unbox refType bx@@4))))
 :qid |DafnyPreludebpl.370:15|
 :skolemid |82|
 :pattern ( (|Set#IsMember| (SetRef_to_SetBox s) bx@@4))
)))
(assert (forall ((|#$T0| T@U) (|#$R| T@U) (|f#0@@1| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@1| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h@@5) ($IsAlloc HandleTypeType |f#0@@1| (Tclass._System.___hFunc1 |#$T0| |#$R|) $h@@5))
 :qid |unknown.0:0|
 :skolemid |403|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@1| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h@@5))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$R@@0| T@U) (|f#0@@2| T@U) ($h@@6 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@2| (Tclass._System.___hTotalFunc1 |#$T0@@0| |#$R@@0|) $h@@6) ($IsAlloc HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc1 |#$T0@@0| |#$R@@0|) $h@@6))
 :qid |unknown.0:0|
 :skolemid |410|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@2| (Tclass._System.___hTotalFunc1 |#$T0@@0| |#$R@@0|) $h@@6))
)))
(assert (forall ((t0@@11 T@U) (t1@@10 T@U) (heap@@1 T@U) (h@@4 T@U) (r@@0 T@U) (rd@@0 T@U) (bx0@@7 T@U) ) (! (= (Apply1 t0@@11 t1@@10 heap@@1 (Handle1 h@@4 r@@0 rd@@0) bx0@@7) (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType h@@4 heap@@1 bx0@@7))
 :qid |unknown.0:0|
 :skolemid |370|
 :pattern ( (Apply1 t0@@11 t1@@10 heap@@1 (Handle1 h@@4 r@@0 rd@@0) bx0@@7))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@5)) bx@@5) ($Is intType ($Unbox intType bx@@5) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx@@5 Tclass._System.nat))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( ($IsBox bx@@6 Tclass._System.object?))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsBox bx@@7 Tclass._System.object))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.Pos) (and (= ($Box intType ($Unbox intType bx@@8)) bx@@8) ($Is intType ($Unbox intType bx@@8) Tclass._module.Pos)))
 :qid |unknown.0:0|
 :skolemid |528|
 :pattern ( ($IsBox bx@@8 Tclass._module.Pos))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.Index) (and (= ($Box intType ($Unbox intType bx@@9)) bx@@9) ($Is intType ($Unbox intType bx@@9) Tclass._module.Index)))
 :qid |unknown.0:0|
 :skolemid |533|
 :pattern ( ($IsBox bx@@9 Tclass._module.Index))
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
(assert (forall ((f@@8 T@U) (t0@@12 T@U) (t1@@11 T@U) (h@@5 T@U) ) (!  (=> (and ($IsGoodHeap h@@5) ($IsAlloc HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@12 t1@@11) h@@5)) (forall ((bx0@@8 T@U) ) (!  (=> (and ($IsAllocBox bx0@@8 t0@@12 h@@5) (Requires1 t0@@12 t1@@11 h@@5 f@@8 bx0@@8)) ($IsAllocBox (Apply1 t0@@12 t1@@11 h@@5 f@@8 bx0@@8) t1@@11 h@@5))
 :qid |unknown.0:0|
 :skolemid |395|
 :pattern ( (Apply1 t0@@12 t1@@11 h@@5 f@@8 bx0@@8))
)))
 :qid |unknown.0:0|
 :skolemid |396|
 :pattern ( ($IsAlloc HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@12 t1@@11) h@@5))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@2 T@U) ($Heap@@1 T@U) (|f#0@@5| T@U) (|n#0@@2| Int) ) (!  (=> (or (|_module.__default.Sum__n#canCall| |f#0@@5| (LitInt |n#0@@2|)) (and (< 3 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@1) ($Is HandleTypeType |f#0@@5| (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt))) (<= (LitInt 0) |n#0@@2|)) (<= (LitInt |n#0@@2|) _module.__default.N)))) (and (=> (or (not (= (LitInt |n#0@@2|) (LitInt 0))) (not true)) (|_module.__default.Sum__n#canCall| |f#0@@5| (LitInt (- |n#0@@2| 1)))) (= (_module.__default.Sum__n ($LS $ly@@2) |f#0@@5| (LitInt |n#0@@2|)) (ite (= (LitInt |n#0@@2|) (LitInt 0)) 0 (+ (U_2_int ($Unbox intType (Apply1 Tclass._module.Index TInt $Heap@@1 |f#0@@5| ($Box intType (int_2_U (LitInt (- |n#0@@2| 1))))))) (_module.__default.Sum__n ($LS $ly@@2) |f#0@@5| (LitInt (- |n#0@@2| 1))))))))
 :qid |MatrixAssocdfy.35:10|
 :weight 3
 :skolemid |545|
 :pattern ( (_module.__default.Sum__n ($LS $ly@@2) |f#0@@5| (LitInt |n#0@@2|)) ($IsGoodHeap $Heap@@1))
))))
(assert (forall ((|l#0@@5| Bool) (|$l#6#o#0| T@U) ) (! (= (U_2_bool (MapType1Select refType boolType (|lambda#6| |l#0@@5|) |$l#6#o#0|)) |l#0@@5|)
 :qid |unknown.0:0|
 :skolemid |744|
 :pattern ( (MapType1Select refType boolType (|lambda#6| |l#0@@5|) |$l#6#o#0|))
)))
(assert (forall ((|l#0@@6| T@U) (|$l#6#ly#0| T@U) ) (! (= (MapType1Select LayerTypeType HandleTypeType (|lambda#8| |l#0@@6|) |$l#6#ly#0|) |l#0@@6|)
 :qid |MatrixAssocdfy.50:9|
 :skolemid |746|
 :pattern ( (MapType1Select LayerTypeType HandleTypeType (|lambda#8| |l#0@@6|) |$l#6#ly#0|))
)))
(assert (forall ((|l#0@@7| T@U) (|l#1@@4| T@U) (|l#2@@4| T@U) (|l#3@@4| T@U) (|l#4@@4| T@U) (|l#5@@4| T@U) (|l#6@@3| T@U) (|l#7@@3| T@U) (|l#8@@1| T@U) (|l#9@@1| Int) (|$l#9#heap#0| T@U) (|$l#9#k#0| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#157| |l#0@@7| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@3| |l#7@@3| |l#8@@1| |l#9@@1|) |$l#9#heap#0| |$l#9#k#0|) ($Box intType (int_2_U (_module.__default.Sum__n |l#0@@7| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#152| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| ($Box intType ($Unbox intType |$l#9#k#0|))) |l#6@@3| |l#7@@3|)) |l#8@@1|)) |l#9@@1|))))
 :qid |unknown.0:0|
 :skolemid |754|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#157| |l#0@@7| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@3| |l#7@@3| |l#8@@1| |l#9@@1|) |$l#9#heap#0| |$l#9#k#0|))
)))
(assert (forall ((|l#0@@8| T@U) (|l#1@@5| T@U) (|l#2@@5| T@U) (|l#3@@5| T@U) (|l#4@@5| T@U) (|l#5@@5| T@U) (|l#6@@4| T@U) (|l#7@@4| T@U) (|l#8@@2| T@U) (|l#9@@2| Int) (|$l#22#heap#0| T@U) (|$l#22#l#0| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#177| |l#0@@8| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@4| |l#7@@4| |l#8@@2| |l#9@@2|) |$l#22#heap#0| |$l#22#l#0|) ($Box intType (int_2_U (_module.__default.Sum__n |l#0@@8| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#172| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| ($Box intType ($Unbox intType |$l#22#l#0|))) |l#6@@4| |l#7@@4|)) |l#8@@2|)) |l#9@@2|))))
 :qid |unknown.0:0|
 :skolemid |757|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#177| |l#0@@8| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5| |l#5@@5| |l#6@@4| |l#7@@4| |l#8@@2| |l#9@@2|) |$l#22#heap#0| |$l#22#l#0|))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((|l#0@@9| T@U) (|l#1@@6| T@U) (|l#2@@6| T@U) (|l#3@@6| T@U) (|l#4@@6| T@U) (|l#5@@6| T@U) (|$l#10#heap#0| T@U) (|$l#10#l#0| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#152| |l#0@@9| |l#1@@6| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) |$l#10#heap#0| |$l#10#l#0|) ($Box intType ($Unbox intType (Apply1 |l#0@@9| |l#1@@6| |$l#10#heap#0| ($Unbox HandleTypeType (Apply1 |l#2@@6| |l#3@@6| |$l#10#heap#0| |l#4@@6| |l#5@@6|)) ($Box intType ($Unbox intType |$l#10#l#0|))))))
 :qid |MatrixAssocdfy.10:6|
 :skolemid |753|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#152| |l#0@@9| |l#1@@6| |l#2@@6| |l#3@@6| |l#4@@6| |l#5@@6|) |$l#10#heap#0| |$l#10#l#0|))
)))
(assert (forall ((|x#0@@4| T@U) ) (! (= ($Is intType |x#0@@4| Tclass._module.Index)  (and (<= (LitInt 0) (U_2_int |x#0@@4|)) (< (U_2_int |x#0@@4|) _module.__default.N)))
 :qid |unknown.0:0|
 :skolemid |739|
 :pattern ( ($Is intType |x#0@@4| Tclass._module.Index))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((f@@9 T@U) (t0@@13 T@U) (t1@@12 T@U) ) (! (= ($Is HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@13 t1@@12)) (forall ((h@@6 T@U) (bx0@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@6) ($IsBox bx0@@9 t0@@13)) (Requires1 t0@@13 t1@@12 h@@6 f@@9 bx0@@9)) ($IsBox (Apply1 t0@@13 t1@@12 h@@6 f@@9 bx0@@9) t1@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |387|
 :pattern ( (Apply1 t0@@13 t1@@12 h@@6 f@@9 bx0@@9))
)))
 :qid |unknown.0:0|
 :skolemid |388|
 :pattern ( ($Is HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@13 t1@@12)))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 TInt) (and (= ($Box intType ($Unbox intType bx@@10)) bx@@10) ($Is intType ($Unbox intType bx@@10) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@10 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((t0@@14 T@U) (t1@@13 T@U) (heap@@2 T@U) (h@@7 T@U) (r@@1 T@U) (rd@@1 T@U) (bx0@@10 T@U) ) (!  (=> (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType r@@1 heap@@2 bx0@@10)) (Requires1 t0@@14 t1@@13 heap@@2 (Handle1 h@@7 r@@1 rd@@1) bx0@@10))
 :qid |unknown.0:0|
 :skolemid |371|
 :pattern ( (Requires1 t0@@14 t1@@13 heap@@2 (Handle1 h@@7 r@@1 rd@@1) bx0@@10))
)))
(assert (forall ((v@@3 T@U) (t0@@15 T@U) (h@@8 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@15) h@@8) (forall ((bx@@11 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@11) ($IsAllocBox bx@@11 t0@@15 h@@8))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@11))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@15) h@@8))
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
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@5))
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
(assert (forall ((|#$T0@@8| T@U) (|#$R@@8| T@U) (|f#0@@8| T@U) ) (! (= ($Is HandleTypeType |f#0@@8| (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|))  (and ($Is HandleTypeType |f#0@@8| (Tclass._System.___hFunc1 |#$T0@@8| |#$R@@8|)) (forall ((|x0#0@@0| T@U) ) (!  (=> ($IsBox |x0#0@@0| |#$T0@@8|) (|Set#Equal| (Reads1 |#$T0@@8| |#$R@@8| $OneHeap |f#0@@8| |x0#0@@0|) |Set#Empty|))
 :qid |unknown.0:0|
 :skolemid |401|
))))
 :qid |unknown.0:0|
 :skolemid |402|
 :pattern ( ($Is HandleTypeType |f#0@@8| (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|)))
)))
(assert (forall ((f@@10 T@U) (ly@@0 T@U) (A@@0 T@T) ) (! (= (AtLayer A@@0 f@@10 ($LS ly@@0)) (AtLayer A@@0 f@@10 ly@@0))
 :qid |DafnyPreludebpl.502:18|
 :skolemid |102|
 :pattern ( (AtLayer A@@0 f@@10 ($LS ly@@0)))
)))
(assert (forall ((f@@11 T@U) (t0@@16 T@U) (t1@@14 T@U) (h@@9 T@U) ) (!  (=> ($IsGoodHeap h@@9) (= ($IsAlloc HandleTypeType f@@11 (Tclass._System.___hFunc1 t0@@16 t1@@14) h@@9) (forall ((bx0@@11 T@U) ) (!  (=> (and (and ($IsBox bx0@@11 t0@@16) ($IsAllocBox bx0@@11 t0@@16 h@@9)) (Requires1 t0@@16 t1@@14 h@@9 f@@11 bx0@@11)) (forall ((r@@2 T@U) ) (!  (=> (and (or (not (= r@@2 null)) (not true)) (|Set#IsMember| (Reads1 t0@@16 t1@@14 h@@9 f@@11 bx0@@11) ($Box refType r@@2))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@9 r@@2) alloc))))
 :qid |unknown.0:0|
 :skolemid |392|
 :pattern ( (|Set#IsMember| (Reads1 t0@@16 t1@@14 h@@9 f@@11 bx0@@11) ($Box refType r@@2)))
)))
 :qid |unknown.0:0|
 :skolemid |393|
 :pattern ( (Apply1 t0@@16 t1@@14 h@@9 f@@11 bx0@@11))
 :pattern ( (Reads1 t0@@16 t1@@14 h@@9 f@@11 bx0@@11))
))))
 :qid |unknown.0:0|
 :skolemid |394|
 :pattern ( ($IsAlloc HandleTypeType f@@11 (Tclass._System.___hFunc1 t0@@16 t1@@14) h@@9))
)))
(assert (forall ((|#$T0@@9| T@U) (|#$R@@9| T@U) (bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@12)) bx@@12) ($Is HandleTypeType ($Unbox HandleTypeType bx@@12) (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|))))
 :qid |unknown.0:0|
 :skolemid |369|
 :pattern ( ($IsBox bx@@12 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|)))
)))
(assert (forall ((|#$T0@@10| T@U) (|#$R@@10| T@U) (bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@13)) bx@@13) ($Is HandleTypeType ($Unbox HandleTypeType bx@@13) (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|))))
 :qid |unknown.0:0|
 :skolemid |400|
 :pattern ( ($IsBox bx@@13 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|)))
)))
(assert (forall ((|#$T0@@11| T@U) (|#$R@@11| T@U) (bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@14)) bx@@14) ($Is HandleTypeType ($Unbox HandleTypeType bx@@14) (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|))))
 :qid |unknown.0:0|
 :skolemid |407|
 :pattern ( ($IsBox bx@@14 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|)))
)))
(assert (forall ((|l#0@@10| T@U) (|l#1@@7| T@U) (|l#2@@7| T@U) (|l#3@@7| Bool) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@10| |l#1@@7| |l#2@@7| |l#3@@7|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0@@10|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1@@7| $o@@1) |l#2@@7|)))) |l#3@@7|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |741|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@10| |l#1@@7| |l#2@@7| |l#3@@7|) $o@@1 $f))
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
(assert (forall ((t0@@17 T@U) (t1@@15 T@U) (heap@@3 T@U) (f@@12 T@U) (bx0@@12 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@3) (and ($IsBox bx0@@12 t0@@17) ($Is HandleTypeType f@@12 (Tclass._System.___hFunc1 t0@@17 t1@@15)))) (|Set#Equal| (Reads1 t0@@17 t1@@15 $OneHeap f@@12 bx0@@12) |Set#Empty|)) (= (Requires1 t0@@17 t1@@15 $OneHeap f@@12 bx0@@12) (Requires1 t0@@17 t1@@15 heap@@3 f@@12 bx0@@12)))
 :qid |unknown.0:0|
 :skolemid |386|
 :pattern ( (Requires1 t0@@17 t1@@15 $OneHeap f@@12 bx0@@12) ($IsGoodHeap heap@@3))
 :pattern ( (Requires1 t0@@17 t1@@15 heap@@3 f@@12 bx0@@12))
)))
(assert (forall ((bx@@15 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@15 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@15)) bx@@15) ($Is SetType ($Unbox SetType bx@@15) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@15 (TSet t@@5)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
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
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@1 b@@1) (forall ((o@@7 T@U) ) (! (= (|Set#IsMember| a@@1 o@@7) (|Set#IsMember| b@@1 o@@7))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@1 o@@7))
 :pattern ( (|Set#IsMember| b@@1 o@@7))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@1 b@@1))
)))
(assert (forall ((|l#0@@11| T@U) (|l#1@@8| T@U) (|l#2@@8| T@U) (|l#3@@8| T@U) (|l#4@@7| T@U) (|l#5@@7| T@U) (|l#6@@5| T@U) (|l#7@@5| T@U) (|l#8@@3| T@U) (|$l#33#ly#0| T@U) ) (! (= (MapType1Select LayerTypeType HandleTypeType (|lambda#878| |l#0@@11| |l#1@@8| |l#2@@8| |l#3@@8| |l#4@@7| |l#5@@7| |l#6@@5| |l#7@@5| |l#8@@3|) |$l#33#ly#0|) (Handle1 (|lambda#874| |l#0@@11| |l#1@@8| |l#2@@8| |l#3@@8| |l#4@@7| |l#5@@7| |l#6@@5| |$l#33#ly#0|) |l#7@@5| |l#8@@3|))
 :qid |MatrixAssocdfy.10:6|
 :skolemid |762|
 :pattern ( (MapType1Select LayerTypeType HandleTypeType (|lambda#878| |l#0@@11| |l#1@@8| |l#2@@8| |l#3@@8| |l#4@@7| |l#5@@7| |l#6@@5| |l#7@@5| |l#8@@3|) |$l#33#ly#0|))
)))
(assert (forall ((|l#0@@12| T@U) (|l#1@@9| T@U) (|l#2@@9| T@U) (|l#3@@9| T@U) (|l#4@@8| T@U) (|l#5@@8| T@U) (|l#6@@6| T@U) (|l#7@@6| T@U) (|l#8@@4| T@U) (|$l#38#ly#0| T@U) ) (! (= (MapType1Select LayerTypeType HandleTypeType (|lambda#893| |l#0@@12| |l#1@@9| |l#2@@9| |l#3@@9| |l#4@@8| |l#5@@8| |l#6@@6| |l#7@@6| |l#8@@4|) |$l#38#ly#0|) (Handle1 (|lambda#889| |l#0@@12| |l#1@@9| |l#2@@9| |l#3@@9| |l#4@@8| |l#5@@8| |l#6@@6| |$l#38#ly#0|) |l#7@@6| |l#8@@4|))
 :qid |MatrixAssocdfy.10:6|
 :skolemid |764|
 :pattern ( (MapType1Select LayerTypeType HandleTypeType (|lambda#893| |l#0@@12| |l#1@@9| |l#2@@9| |l#3@@9| |l#4@@8| |l#5@@8| |l#6@@6| |l#7@@6| |l#8@@4|) |$l#38#ly#0|))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert (forall ((h@@10 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@10)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@10))
)))
(assert (forall ((|l#0@@13| T@U) (|$l#6#heap#0@@0| T@U) (|$l#6#k#0@@0| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#7| |l#0@@13|) |$l#6#heap#0@@0| |$l#6#k#0@@0|) |l#0@@13|)
 :qid |MatrixAssocdfy.50:9|
 :skolemid |745|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#7| |l#0@@13|) |$l#6#heap#0@@0| |$l#6#k#0@@0|))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |m#0| () T@U)
(declare-fun |k#0_0_0@0| () Int)
(declare-fun |$_Frame#l0_0_1@0| () T@U)
(declare-fun |$lambdaHeap#0_0_1@0| () T@U)
(declare-fun |lambdaResult#0_0_1| () Int)
(declare-fun |$lambdaHeap#0_0_0@0| () T@U)
(declare-fun |l#0_0_0@0| () Int)
(declare-fun |##f#0_0_1@0| () T@U)
(declare-fun |##n#0_0_0@0| () Int)
(declare-fun |lambdaResult#0_0_0| () Int)
(declare-fun |$_Frame#l0_0_0@0| () T@U)
(declare-fun $Heap@@2 () T@U)
(declare-fun |k#0_0_1@0| () Int)
(declare-fun |$_Frame#l0_0_3@0| () T@U)
(declare-fun |$lambdaHeap#0_0_3@0| () T@U)
(declare-fun |lambdaResult#0_0_3| () Int)
(declare-fun |$lambdaHeap#0_0_2@0| () T@U)
(declare-fun |l#0_0_1@0| () Int)
(declare-fun |##f#0_0_2@0| () T@U)
(declare-fun |lambdaResult#0_0_2| () Int)
(declare-fun |$_Frame#l0_0_2@0| () T@U)
(declare-fun |k#0_0_2@0| () Int)
(declare-fun |$_Frame#l0_0_5@0| () T@U)
(declare-fun |$lambdaHeap#0_0_5@0| () T@U)
(declare-fun |lambdaResult#0_0_5| () Int)
(declare-fun |$lambdaHeap#0_0_4@0| () T@U)
(declare-fun |l#0_0_2@0| () Int)
(declare-fun |##f#0_0_3@0| () T@U)
(declare-fun |##n#0_0_2@0| () Int)
(declare-fun |lambdaResult#0_0_4| () Int)
(declare-fun |$_Frame#l0_0_4@0| () T@U)
(declare-fun |k#0_0_3@0| () Int)
(declare-fun |$_Frame#l0_0_7@0| () T@U)
(declare-fun |$lambdaHeap#0_0_7@0| () T@U)
(declare-fun |lambdaResult#0_0_7| () Int)
(declare-fun |$lambdaHeap#0_0_6@0| () T@U)
(declare-fun |l#0_0_3@0| () Int)
(declare-fun |##f#0_0_5@0| () T@U)
(declare-fun |lambdaResult#0_0_6| () Int)
(declare-fun |$_Frame#l0_0_6@0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |##f#0_0_4@0| () T@U)
(declare-fun |g##0_0_0@0| () T@U)
(declare-fun call0formal@_module._default.FunEq$X@0 () T@U)
(declare-fun |f##0_0_0@0| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |##f#0_0_0@0| () T@U)
(declare-fun |##n#0_0_1@0| () Int)
(declare-fun |l#0_1_0@0| () Int)
(declare-fun |$_Frame#l0_1_1@0| () T@U)
(declare-fun |$lambdaHeap#0_1_1@0| () T@U)
(declare-fun |lambdaResult#0_1_1| () Int)
(declare-fun |$lambdaHeap#0_1_0@0| () T@U)
(declare-fun |k#0_1_0@0| () Int)
(declare-fun |##f#0_1_1@0| () T@U)
(declare-fun |##n#0_1_0@0| () Int)
(declare-fun |lambdaResult#0_1_0| () Int)
(declare-fun |$_Frame#l0_1_0@0| () T@U)
(declare-fun |k#0_1_1@0| () Int)
(declare-fun |$_Frame#l0_1_3@0| () T@U)
(declare-fun |$lambdaHeap#0_1_3@0| () T@U)
(declare-fun |lambdaResult#0_1_3| () Int)
(declare-fun |$lambdaHeap#0_1_2@0| () T@U)
(declare-fun |l#0_1_1@0| () Int)
(declare-fun |##f#0_1_3@0| () T@U)
(declare-fun |##n#0_1_2@0| () Int)
(declare-fun |lambdaResult#0_1_2| () Int)
(declare-fun |$_Frame#l0_1_2@0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |##f#0_1_2@0| () T@U)
(declare-fun |##n#0_1_3@0| () Int)
(declare-fun |##f#0_1_0@0| () T@U)
(declare-fun |##n#0_1_1@0| () Int)
(declare-fun |n1##0_1_0@0| () Int)
(declare-fun |n2##0_1_0@0| () Int)
(declare-fun |l#0_2_0@0| () Int)
(declare-fun |$_Frame#l0_2_1@0| () T@U)
(declare-fun |$lambdaHeap#0_2_1@0| () T@U)
(declare-fun |lambdaResult#0_2_1| () Int)
(declare-fun |$lambdaHeap#0_2_0@0| () T@U)
(declare-fun |k#0_2_0@0| () Int)
(declare-fun |##f#0_2_1@0| () T@U)
(declare-fun |lambdaResult#0_2_0| () Int)
(declare-fun |$_Frame#l0_2_0@0| () T@U)
(declare-fun |l#0_2_1@0| () Int)
(declare-fun |$_Frame#l0_2_3@0| () T@U)
(declare-fun |$lambdaHeap#0_2_3@0| () T@U)
(declare-fun |lambdaResult#0_2_3| () Int)
(declare-fun |$lambdaHeap#0_2_2@0| () T@U)
(declare-fun |k#0_2_1@0| () Int)
(declare-fun |##f#0_2_2@0| () T@U)
(declare-fun |lambdaResult#0_2_2| () Int)
(declare-fun |$_Frame#l0_2_2@0| () T@U)
(declare-fun |l#0_2_2@0| () Int)
(declare-fun |$_Frame#l0_2_5@0| () T@U)
(declare-fun |$lambdaHeap#0_2_5@0| () T@U)
(declare-fun |lambdaResult#0_2_5| () Int)
(declare-fun |$lambdaHeap#0_2_4@0| () T@U)
(declare-fun |k#0_2_2@0| () Int)
(declare-fun |##f#0_2_3@0| () T@U)
(declare-fun |##n#0_2_0@0| () Int)
(declare-fun |lambdaResult#0_2_4| () Int)
(declare-fun |$_Frame#l0_2_4@0| () T@U)
(declare-fun |l#0_2_3@0| () Int)
(declare-fun |$_Frame#l0_2_7@0| () T@U)
(declare-fun |$lambdaHeap#0_2_7@0| () T@U)
(declare-fun |lambdaResult#0_2_7| () Int)
(declare-fun |$lambdaHeap#0_2_6@0| () T@U)
(declare-fun |k#0_2_3@0| () Int)
(declare-fun |##f#0_2_5@0| () T@U)
(declare-fun |##n#0_2_1@0| () Int)
(declare-fun |lambdaResult#0_2_6| () Int)
(declare-fun |$_Frame#l0_2_6@0| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |##f#0_2_4@0| () T@U)
(declare-fun |##n#0_2_2@0| () Int)
(declare-fun |g##0_2_0@0| () T@U)
(declare-fun call0formal@_module._default.FunEq$X@0@@0 () T@U)
(declare-fun |f##0_2_0@0| () T@U)
(declare-fun |##f#0_2_0@0| () T@U)
(declare-fun |l#0_0@0| () Int)
(declare-fun |$_Frame#l0_1@0| () T@U)
(declare-fun |$lambdaHeap#0_1@0| () T@U)
(declare-fun |lambdaResult#0_1| () Int)
(declare-fun |$lambdaHeap#0_0@0| () T@U)
(declare-fun |k#0_0@0| () Int)
(declare-fun |##f#0_1@0| () T@U)
(declare-fun |lambdaResult#0_0| () Int)
(declare-fun |$_Frame#l0_0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.sum__assoc)
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
 (=> (= (ControlFlow 0 0) 136) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 133) (- 0 132)) (= (LitInt (_module.__default.Sum (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#878| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false)))) ($LS $LZ))))) (LitInt (_module.__default.Sum (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#893| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false)))) ($LS $LZ)))))))))
(let ((anon125_Else_correct  (=> (and (= (LitInt (_module.__default.Sum (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#878| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false)))) ($LS $LZ))))) (LitInt (_module.__default.Sum (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#893| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false)))) ($LS $LZ)))))) (= (ControlFlow 0 134) 133)) GeneratedUnifiedExit_correct)))
(let ((anon65_correct true))
(let ((anon129_Else_correct  (=> (and (not (and (<= (LitInt 0) |k#0_0_0@0|) (< |k#0_0_0@0| _module.__default.N))) (= (ControlFlow 0 128) 126)) anon65_correct)))
(let ((anon129_Then_correct  (=> (and (<= (LitInt 0) |k#0_0_0@0|) (< |k#0_0_0@0| _module.__default.N)) (=> (and (and (= |$_Frame#l0_0_1@0| (|lambda#0| null |$lambdaHeap#0_0_1@0| alloc false)) (= |lambdaResult#0_0_1| (U_2_int ($Unbox intType (Apply1 Tclass._module.Index TInt |$lambdaHeap#0_0_0@0| ($Unbox HandleTypeType (Apply1 Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |$lambdaHeap#0_0_0@0| |m#0| ($Box intType (int_2_U |k#0_0_0@0|)))) ($Box intType (int_2_U |l#0_0_0@0|))))))) (and ($Is intType (int_2_U |lambdaResult#0_0_1|) TInt) (= (ControlFlow 0 127) 126))) anon65_correct))))
(let ((anon128_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0_0_1@0|) (or (= |$lambdaHeap#0_0_0@0| |$lambdaHeap#0_0_1@0|) ($HeapSucc |$lambdaHeap#0_0_0@0| |$lambdaHeap#0_0_1@0|))) (and (=> (= (ControlFlow 0 129) 127) anon129_Then_correct) (=> (= (ControlFlow 0 129) 128) anon129_Else_correct)))))
(let ((anon67_correct true))
(let ((anon128_Else_correct  (=> (= |##f#0_0_1@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#172| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType (int_2_U |l#0_0_0@0|))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ)))) (=> (and ($IsAlloc HandleTypeType |##f#0_0_1@0| (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |$lambdaHeap#0_0_0@0|) ($Is intType (int_2_U _module.__default.N) Tclass._System.nat)) (=> (and (and (and (= |##n#0_0_0@0| _module.__default.N) ($IsAlloc intType (int_2_U |##n#0_0_0@0|) Tclass._System.nat |$lambdaHeap#0_0_0@0|)) (and (<= |##n#0_0_0@0| _module.__default.N) (|_module.__default.Sum__n#canCall| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#172| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType (int_2_U |l#0_0_0@0|))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ))) _module.__default.N))) (and (and (= |lambdaResult#0_0_0| (_module.__default.Sum__n ($LS $LZ) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#172| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType (int_2_U |l#0_0_0@0|))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ))) _module.__default.N)) (|_module.__default.Sum__n#canCall| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#172| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType (int_2_U |l#0_0_0@0|))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ))) _module.__default.N)) (and ($Is intType (int_2_U |lambdaResult#0_0_0|) TInt) (= (ControlFlow 0 125) 123)))) anon67_correct)))))
(let ((anon127_Then_correct  (=> (and (and (<= (LitInt 0) |l#0_0_0@0|) (< |l#0_0_0@0| _module.__default.N)) (= |$_Frame#l0_0_0@0| (|lambda#0| null |$lambdaHeap#0_0_0@0| alloc false))) (and (=> (= (ControlFlow 0 130) 129) anon128_Then_correct) (=> (= (ControlFlow 0 130) 125) anon128_Else_correct)))))
(let ((anon127_Else_correct  (=> (and (not (and (<= (LitInt 0) |l#0_0_0@0|) (< |l#0_0_0@0| _module.__default.N))) (= (ControlFlow 0 124) 123)) anon67_correct)))
(let ((anon126_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0_0_0@0|) (or (= $Heap@@2 |$lambdaHeap#0_0_0@0|) ($HeapSucc $Heap@@2 |$lambdaHeap#0_0_0@0|))) (and (=> (= (ControlFlow 0 131) 130) anon127_Then_correct) (=> (= (ControlFlow 0 131) 124) anon127_Else_correct)))))
(let ((anon73_correct true))
(let ((anon133_Else_correct  (=> (and (not (and (<= (LitInt 0) |k#0_0_1@0|) (< |k#0_0_1@0| _module.__default.N))) (= (ControlFlow 0 118) 116)) anon73_correct)))
(let ((anon133_Then_correct  (=> (and (<= (LitInt 0) |k#0_0_1@0|) (< |k#0_0_1@0| _module.__default.N)) (=> (and (and (= |$_Frame#l0_0_3@0| (|lambda#0| null |$lambdaHeap#0_0_3@0| alloc false)) (= |lambdaResult#0_0_3| (U_2_int ($Unbox intType (Apply1 Tclass._module.Index TInt |$lambdaHeap#0_0_2@0| ($Unbox HandleTypeType (Apply1 Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |$lambdaHeap#0_0_2@0| |m#0| ($Box intType (int_2_U |k#0_0_1@0|)))) ($Box intType (int_2_U |l#0_0_1@0|))))))) (and ($Is intType (int_2_U |lambdaResult#0_0_3|) TInt) (= (ControlFlow 0 117) 116))) anon73_correct))))
(let ((anon132_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0_0_3@0|) (or (= |$lambdaHeap#0_0_2@0| |$lambdaHeap#0_0_3@0|) ($HeapSucc |$lambdaHeap#0_0_2@0| |$lambdaHeap#0_0_3@0|))) (and (=> (= (ControlFlow 0 119) 117) anon133_Then_correct) (=> (= (ControlFlow 0 119) 118) anon133_Else_correct)))))
(let ((anon75_correct true))
(let ((anon132_Else_correct  (=> (= |##f#0_0_2@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#172| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType (int_2_U |l#0_0_1@0|))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ)))) (=> (and ($IsAlloc HandleTypeType |##f#0_0_2@0| (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |$lambdaHeap#0_0_2@0|) (|_module.__default.Sum#canCall| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#172| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType (int_2_U |l#0_0_1@0|))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ))))) (=> (and (and (= |lambdaResult#0_0_2| (LitInt (_module.__default.Sum (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#172| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType (int_2_U |l#0_0_1@0|))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ)))))) (|_module.__default.Sum#canCall| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#172| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType (int_2_U |l#0_0_1@0|))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ))))) (and ($Is intType (int_2_U |lambdaResult#0_0_2|) TInt) (= (ControlFlow 0 115) 113))) anon75_correct)))))
(let ((anon131_Then_correct  (=> (and (and (<= (LitInt 0) |l#0_0_1@0|) (< |l#0_0_1@0| _module.__default.N)) (= |$_Frame#l0_0_2@0| (|lambda#0| null |$lambdaHeap#0_0_2@0| alloc false))) (and (=> (= (ControlFlow 0 120) 119) anon132_Then_correct) (=> (= (ControlFlow 0 120) 115) anon132_Else_correct)))))
(let ((anon131_Else_correct  (=> (and (not (and (<= (LitInt 0) |l#0_0_1@0|) (< |l#0_0_1@0| _module.__default.N))) (= (ControlFlow 0 114) 113)) anon75_correct)))
(let ((anon130_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0_0_2@0|) (or (= $Heap@@2 |$lambdaHeap#0_0_2@0|) ($HeapSucc $Heap@@2 |$lambdaHeap#0_0_2@0|))) (and (=> (= (ControlFlow 0 121) 120) anon131_Then_correct) (=> (= (ControlFlow 0 121) 114) anon131_Else_correct)))))
(let ((anon81_correct true))
(let ((anon137_Else_correct  (=> (and (not (and (<= (LitInt 0) |k#0_0_2@0|) (< |k#0_0_2@0| _module.__default.N))) (= (ControlFlow 0 108) 106)) anon81_correct)))
(let ((anon137_Then_correct  (=> (and (<= (LitInt 0) |k#0_0_2@0|) (< |k#0_0_2@0| _module.__default.N)) (=> (and (and (= |$_Frame#l0_0_5@0| (|lambda#0| null |$lambdaHeap#0_0_5@0| alloc false)) (= |lambdaResult#0_0_5| (U_2_int ($Unbox intType (Apply1 Tclass._module.Index TInt |$lambdaHeap#0_0_4@0| ($Unbox HandleTypeType (Apply1 Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |$lambdaHeap#0_0_4@0| |m#0| ($Box intType (int_2_U |k#0_0_2@0|)))) ($Box intType (int_2_U |l#0_0_2@0|))))))) (and ($Is intType (int_2_U |lambdaResult#0_0_5|) TInt) (= (ControlFlow 0 107) 106))) anon81_correct))))
(let ((anon136_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0_0_5@0|) (or (= |$lambdaHeap#0_0_4@0| |$lambdaHeap#0_0_5@0|) ($HeapSucc |$lambdaHeap#0_0_4@0| |$lambdaHeap#0_0_5@0|))) (and (=> (= (ControlFlow 0 109) 107) anon137_Then_correct) (=> (= (ControlFlow 0 109) 108) anon137_Else_correct)))))
(let ((anon83_correct true))
(let ((anon136_Else_correct  (=> (and (= |##f#0_0_3@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#172| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType (int_2_U |l#0_0_2@0|))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ)))) ($IsAlloc HandleTypeType |##f#0_0_3@0| (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |$lambdaHeap#0_0_4@0|)) (and (=> (= (ControlFlow 0 103) (- 0 105)) ($Is intType (int_2_U _module.__default.N) Tclass._System.nat)) (=> ($Is intType (int_2_U _module.__default.N) Tclass._System.nat) (=> (and (= |##n#0_0_2@0| _module.__default.N) ($IsAlloc intType (int_2_U |##n#0_0_2@0|) Tclass._System.nat |$lambdaHeap#0_0_4@0|)) (and (=> (= (ControlFlow 0 103) (- 0 104)) (<= |##n#0_0_2@0| _module.__default.N)) (=> (and (<= |##n#0_0_2@0| _module.__default.N) (|_module.__default.Sum__n#canCall| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#172| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType (int_2_U |l#0_0_2@0|))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ))) _module.__default.N)) (=> (and (and (= |lambdaResult#0_0_4| (_module.__default.Sum__n ($LS $LZ) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#172| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType (int_2_U |l#0_0_2@0|))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ))) _module.__default.N)) (|_module.__default.Sum__n#canCall| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#172| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType (int_2_U |l#0_0_2@0|))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ))) _module.__default.N)) (and ($Is intType (int_2_U |lambdaResult#0_0_4|) TInt) (= (ControlFlow 0 103) 101))) anon83_correct)))))))))
(let ((anon135_Then_correct  (=> (and (and (<= (LitInt 0) |l#0_0_2@0|) (< |l#0_0_2@0| _module.__default.N)) (= |$_Frame#l0_0_4@0| (|lambda#0| null |$lambdaHeap#0_0_4@0| alloc false))) (and (=> (= (ControlFlow 0 110) 109) anon136_Then_correct) (=> (= (ControlFlow 0 110) 103) anon136_Else_correct)))))
(let ((anon135_Else_correct  (=> (and (not (and (<= (LitInt 0) |l#0_0_2@0|) (< |l#0_0_2@0| _module.__default.N))) (= (ControlFlow 0 102) 101)) anon83_correct)))
(let ((anon134_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0_0_4@0|) (or (= $Heap@@2 |$lambdaHeap#0_0_4@0|) ($HeapSucc $Heap@@2 |$lambdaHeap#0_0_4@0|))) (and (=> (= (ControlFlow 0 111) 110) anon135_Then_correct) (=> (= (ControlFlow 0 111) 102) anon135_Else_correct)))))
(let ((anon89_correct true))
(let ((anon141_Else_correct  (=> (and (not (and (<= (LitInt 0) |k#0_0_3@0|) (< |k#0_0_3@0| _module.__default.N))) (= (ControlFlow 0 95) 93)) anon89_correct)))
(let ((anon141_Then_correct  (=> (and (<= (LitInt 0) |k#0_0_3@0|) (< |k#0_0_3@0| _module.__default.N)) (=> (and (and (= |$_Frame#l0_0_7@0| (|lambda#0| null |$lambdaHeap#0_0_7@0| alloc false)) (= |lambdaResult#0_0_7| (U_2_int ($Unbox intType (Apply1 Tclass._module.Index TInt |$lambdaHeap#0_0_6@0| ($Unbox HandleTypeType (Apply1 Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |$lambdaHeap#0_0_6@0| |m#0| ($Box intType (int_2_U |k#0_0_3@0|)))) ($Box intType (int_2_U |l#0_0_3@0|))))))) (and ($Is intType (int_2_U |lambdaResult#0_0_7|) TInt) (= (ControlFlow 0 94) 93))) anon89_correct))))
(let ((anon140_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0_0_7@0|) (or (= |$lambdaHeap#0_0_6@0| |$lambdaHeap#0_0_7@0|) ($HeapSucc |$lambdaHeap#0_0_6@0| |$lambdaHeap#0_0_7@0|))) (and (=> (= (ControlFlow 0 96) 94) anon141_Then_correct) (=> (= (ControlFlow 0 96) 95) anon141_Else_correct)))))
(let ((anon91_correct true))
(let ((anon140_Else_correct  (=> (= |##f#0_0_5@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#172| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType (int_2_U |l#0_0_3@0|))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ)))) (=> (and ($IsAlloc HandleTypeType |##f#0_0_5@0| (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |$lambdaHeap#0_0_6@0|) (|_module.__default.Sum#canCall| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#172| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType (int_2_U |l#0_0_3@0|))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ))))) (=> (and (and (= |lambdaResult#0_0_6| (LitInt (_module.__default.Sum (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#172| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType (int_2_U |l#0_0_3@0|))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ)))))) (|_module.__default.Sum#canCall| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#172| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType (int_2_U |l#0_0_3@0|))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ))))) (and ($Is intType (int_2_U |lambdaResult#0_0_6|) TInt) (= (ControlFlow 0 92) 90))) anon91_correct)))))
(let ((anon139_Then_correct  (=> (and (and (<= (LitInt 0) |l#0_0_3@0|) (< |l#0_0_3@0| _module.__default.N)) (= |$_Frame#l0_0_6@0| (|lambda#0| null |$lambdaHeap#0_0_6@0| alloc false))) (and (=> (= (ControlFlow 0 97) 96) anon140_Then_correct) (=> (= (ControlFlow 0 97) 92) anon140_Else_correct)))))
(let ((anon139_Else_correct  (=> (and (not (and (<= (LitInt 0) |l#0_0_3@0|) (< |l#0_0_3@0| _module.__default.N))) (= (ControlFlow 0 91) 90)) anon91_correct)))
(let ((anon138_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0_0_6@0|) (or (= $Heap@0 |$lambdaHeap#0_0_6@0|) ($HeapSucc $Heap@0 |$lambdaHeap#0_0_6@0|))) (and (=> (= (ControlFlow 0 98) 97) anon139_Then_correct) (=> (= (ControlFlow 0 98) 91) anon139_Else_correct)))))
(let ((anon138_Else_correct  (=> (= |##f#0_0_4@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#893| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false)))) ($LS $LZ)))) (=> (and ($IsAlloc HandleTypeType |##f#0_0_4@0| (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) $Heap@0) (|_module.__default.Sum#canCall| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#893| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false)))) ($LS $LZ))))) (=> (and (and (forall ((|$l#0_0_55#l#0| T@U) ) (!  (=> (and (<= (LitInt 0) (U_2_int |$l#0_0_55#l#0|)) (< (U_2_int |$l#0_0_55#l#0|) _module.__default.N)) (|_module.__default.Sum#canCall| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#172| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType |$l#0_0_55#l#0|)) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ)))))
 :qid |unknown.0:0|
 :skolemid |610|
)) (|_module.__default.Sum#canCall| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#893| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false)))) ($LS $LZ))))) (= (ControlFlow 0 89) (- 0 88))) (= (_module.__default.Sum__n ($LS ($LS $LZ)) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#181| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))) _module.__default.N (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false)))) ($LS $LZ))) _module.__default.N) (LitInt (_module.__default.Sum (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#893| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false)))) ($LS $LZ)))))))))))
(let ((anon134_Else_correct  (=> (forall ((|$l#0_0_37#l#0| T@U) ) (!  (=> (and (<= (LitInt 0) (U_2_int |$l#0_0_37#l#0|)) (< (U_2_int |$l#0_0_37#l#0|) _module.__default.N)) (|_module.__default.Sum__n#canCall| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#172| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType |$l#0_0_37#l#0|)) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ))) _module.__default.N))
 :qid |unknown.0:0|
 :skolemid |607|
)) (=> (and (= |g##0_0_0@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#181| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))) _module.__default.N (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false)))) ($LS $LZ)))) (= call0formal@_module._default.FunEq$X@0 Tclass._module.Index)) (and (=> (= (ControlFlow 0 99) (- 0 100)) (forall ((|x#1| T@U) ) (!  (=> (and ($IsBox |x#1| call0formal@_module._default.FunEq$X@0) ($IsAllocBox |x#1| call0formal@_module._default.FunEq$X@0 $Heap@@2)) (= (Apply1 call0formal@_module._default.FunEq$X@0 TInt $Heap@@2 |f##0_0_0@0| |x#1|) (Apply1 call0formal@_module._default.FunEq$X@0 TInt $Heap@@2 |g##0_0_0@0| |x#1|)))
 :qid |MatrixAssocdfy.16:19|
 :skolemid |531|
 :pattern ( (Apply1 call0formal@_module._default.FunEq$X@0 TInt $Heap@@2 |g##0_0_0@0| |x#1|))
 :pattern ( (Apply1 call0formal@_module._default.FunEq$X@0 TInt $Heap@@2 |f##0_0_0@0| |x#1|))
))) (=> (forall ((|x#1@@0| T@U) ) (!  (=> (and ($IsBox |x#1@@0| call0formal@_module._default.FunEq$X@0) ($IsAllocBox |x#1@@0| call0formal@_module._default.FunEq$X@0 $Heap@@2)) (= (Apply1 call0formal@_module._default.FunEq$X@0 TInt $Heap@@2 |f##0_0_0@0| |x#1@@0|) (Apply1 call0formal@_module._default.FunEq$X@0 TInt $Heap@@2 |g##0_0_0@0| |x#1@@0|)))
 :qid |MatrixAssocdfy.16:19|
 :skolemid |531|
 :pattern ( (Apply1 call0formal@_module._default.FunEq$X@0 TInt $Heap@@2 |g##0_0_0@0| |x#1@@0|))
 :pattern ( (Apply1 call0formal@_module._default.FunEq$X@0 TInt $Heap@@2 |f##0_0_0@0| |x#1@@0|))
)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= |f##0_0_0@0| |g##0_0_0@0|) (= $Heap@@2 $Heap@0))) (and (=> (= (ControlFlow 0 99) 98) anon138_Then_correct) (=> (= (ControlFlow 0 99) 89) anon138_Else_correct)))))))))
(let ((anon130_Else_correct  (=> (and (forall ((|$l#0_0_25#l#0| T@U) ) (!  (=> (and (<= (LitInt 0) (U_2_int |$l#0_0_25#l#0|)) (< (U_2_int |$l#0_0_25#l#0|) _module.__default.N)) (|_module.__default.Sum#canCall| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#172| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType |$l#0_0_25#l#0|)) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ)))))
 :qid |unknown.0:0|
 :skolemid |605|
)) (= |f##0_0_0@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#893| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false)))) ($LS $LZ))))) (and (=> (= (ControlFlow 0 112) 111) anon134_Then_correct) (=> (= (ControlFlow 0 112) 99) anon134_Else_correct)))))
(let ((anon126_Else_correct  (=> (= |##f#0_0_0@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#181| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))) _module.__default.N (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false)))) ($LS $LZ)))) (=> (and (and (and ($IsAlloc HandleTypeType |##f#0_0_0@0| (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) $Heap@@2) ($Is intType (int_2_U _module.__default.N) Tclass._System.nat)) (and (= |##n#0_0_1@0| _module.__default.N) ($IsAlloc intType (int_2_U |##n#0_0_1@0|) Tclass._System.nat $Heap@@2))) (and (and (<= |##n#0_0_1@0| _module.__default.N) (|_module.__default.Sum__n#canCall| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#181| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))) _module.__default.N (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false)))) ($LS $LZ))) _module.__default.N)) (and (forall ((|$l#0_0_13#l#0| T@U) ) (!  (=> (and (<= (LitInt 0) (U_2_int |$l#0_0_13#l#0|)) (< (U_2_int |$l#0_0_13#l#0|) _module.__default.N)) (|_module.__default.Sum__n#canCall| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#172| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType |$l#0_0_13#l#0|)) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ))) _module.__default.N))
 :qid |unknown.0:0|
 :skolemid |603|
)) (|_module.__default.Sum__n#canCall| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#181| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))) _module.__default.N (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false)))) ($LS $LZ))) _module.__default.N)))) (and (=> (= (ControlFlow 0 122) 121) anon130_Then_correct) (=> (= (ControlFlow 0 122) 112) anon130_Else_correct))))))
(let ((anon48_correct true))
(let ((anon120_Else_correct  (=> (and (not (and (<= (LitInt 0) |l#0_1_0@0|) (< |l#0_1_0@0| _module.__default.N))) (= (ControlFlow 0 84) 82)) anon48_correct)))
(let ((anon120_Then_correct  (=> (and (<= (LitInt 0) |l#0_1_0@0|) (< |l#0_1_0@0| _module.__default.N)) (=> (and (and (= |$_Frame#l0_1_1@0| (|lambda#0| null |$lambdaHeap#0_1_1@0| alloc false)) (= |lambdaResult#0_1_1| (U_2_int ($Unbox intType (Apply1 Tclass._module.Index TInt |$lambdaHeap#0_1_0@0| ($Unbox HandleTypeType (Apply1 Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |$lambdaHeap#0_1_0@0| |m#0| ($Box intType (int_2_U |k#0_1_0@0|)))) ($Box intType (int_2_U |l#0_1_0@0|))))))) (and ($Is intType (int_2_U |lambdaResult#0_1_1|) TInt) (= (ControlFlow 0 83) 82))) anon48_correct))))
(let ((anon119_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0_1_1@0|) (or (= |$lambdaHeap#0_1_0@0| |$lambdaHeap#0_1_1@0|) ($HeapSucc |$lambdaHeap#0_1_0@0| |$lambdaHeap#0_1_1@0|))) (and (=> (= (ControlFlow 0 85) 83) anon120_Then_correct) (=> (= (ControlFlow 0 85) 84) anon120_Else_correct)))))
(let ((anon50_correct true))
(let ((anon119_Else_correct  (=> (= |##f#0_1_1@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#152| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType (int_2_U |k#0_1_0@0|))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ)))) (=> (and ($IsAlloc HandleTypeType |##f#0_1_1@0| (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |$lambdaHeap#0_1_0@0|) ($Is intType (int_2_U _module.__default.N) Tclass._System.nat)) (=> (and (and (and (= |##n#0_1_0@0| _module.__default.N) ($IsAlloc intType (int_2_U |##n#0_1_0@0|) Tclass._System.nat |$lambdaHeap#0_1_0@0|)) (and (<= |##n#0_1_0@0| _module.__default.N) (|_module.__default.Sum__n#canCall| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#152| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType (int_2_U |k#0_1_0@0|))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ))) _module.__default.N))) (and (and (= |lambdaResult#0_1_0| (_module.__default.Sum__n ($LS $LZ) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#152| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType (int_2_U |k#0_1_0@0|))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ))) _module.__default.N)) (|_module.__default.Sum__n#canCall| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#152| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType (int_2_U |k#0_1_0@0|))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ))) _module.__default.N)) (and ($Is intType (int_2_U |lambdaResult#0_1_0|) TInt) (= (ControlFlow 0 81) 79)))) anon50_correct)))))
(let ((anon118_Then_correct  (=> (and (and (<= (LitInt 0) |k#0_1_0@0|) (< |k#0_1_0@0| _module.__default.N)) (= |$_Frame#l0_1_0@0| (|lambda#0| null |$lambdaHeap#0_1_0@0| alloc false))) (and (=> (= (ControlFlow 0 86) 85) anon119_Then_correct) (=> (= (ControlFlow 0 86) 81) anon119_Else_correct)))))
(let ((anon118_Else_correct  (=> (and (not (and (<= (LitInt 0) |k#0_1_0@0|) (< |k#0_1_0@0| _module.__default.N))) (= (ControlFlow 0 80) 79)) anon50_correct)))
(let ((anon117_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0_1_0@0|) (or (= $Heap@@2 |$lambdaHeap#0_1_0@0|) ($HeapSucc $Heap@@2 |$lambdaHeap#0_1_0@0|))) (and (=> (= (ControlFlow 0 87) 86) anon118_Then_correct) (=> (= (ControlFlow 0 87) 80) anon118_Else_correct)))))
(let ((anon56_correct true))
(let ((anon124_Else_correct  (=> (and (not (and (<= (LitInt 0) |k#0_1_1@0|) (< |k#0_1_1@0| _module.__default.N))) (= (ControlFlow 0 70) 68)) anon56_correct)))
(let ((anon124_Then_correct  (=> (and (<= (LitInt 0) |k#0_1_1@0|) (< |k#0_1_1@0| _module.__default.N)) (=> (and (and (= |$_Frame#l0_1_3@0| (|lambda#0| null |$lambdaHeap#0_1_3@0| alloc false)) (= |lambdaResult#0_1_3| (U_2_int ($Unbox intType (Apply1 Tclass._module.Index TInt |$lambdaHeap#0_1_2@0| ($Unbox HandleTypeType (Apply1 Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |$lambdaHeap#0_1_2@0| |m#0| ($Box intType (int_2_U |k#0_1_1@0|)))) ($Box intType (int_2_U |l#0_1_1@0|))))))) (and ($Is intType (int_2_U |lambdaResult#0_1_3|) TInt) (= (ControlFlow 0 69) 68))) anon56_correct))))
(let ((anon123_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0_1_3@0|) (or (= |$lambdaHeap#0_1_2@0| |$lambdaHeap#0_1_3@0|) ($HeapSucc |$lambdaHeap#0_1_2@0| |$lambdaHeap#0_1_3@0|))) (and (=> (= (ControlFlow 0 71) 69) anon124_Then_correct) (=> (= (ControlFlow 0 71) 70) anon124_Else_correct)))))
(let ((anon58_correct true))
(let ((anon123_Else_correct  (=> (and (= |##f#0_1_3@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#172| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType (int_2_U |l#0_1_1@0|))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ)))) ($IsAlloc HandleTypeType |##f#0_1_3@0| (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |$lambdaHeap#0_1_2@0|)) (and (=> (= (ControlFlow 0 65) (- 0 67)) ($Is intType (int_2_U _module.__default.N) Tclass._System.nat)) (=> ($Is intType (int_2_U _module.__default.N) Tclass._System.nat) (=> (and (= |##n#0_1_2@0| _module.__default.N) ($IsAlloc intType (int_2_U |##n#0_1_2@0|) Tclass._System.nat |$lambdaHeap#0_1_2@0|)) (and (=> (= (ControlFlow 0 65) (- 0 66)) (<= |##n#0_1_2@0| _module.__default.N)) (=> (and (<= |##n#0_1_2@0| _module.__default.N) (|_module.__default.Sum__n#canCall| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#172| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType (int_2_U |l#0_1_1@0|))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ))) _module.__default.N)) (=> (and (and (= |lambdaResult#0_1_2| (_module.__default.Sum__n ($LS $LZ) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#172| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType (int_2_U |l#0_1_1@0|))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ))) _module.__default.N)) (|_module.__default.Sum__n#canCall| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#172| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType (int_2_U |l#0_1_1@0|))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ))) _module.__default.N)) (and ($Is intType (int_2_U |lambdaResult#0_1_2|) TInt) (= (ControlFlow 0 65) 63))) anon58_correct)))))))))
(let ((anon122_Then_correct  (=> (and (and (<= (LitInt 0) |l#0_1_1@0|) (< |l#0_1_1@0| _module.__default.N)) (= |$_Frame#l0_1_2@0| (|lambda#0| null |$lambdaHeap#0_1_2@0| alloc false))) (and (=> (= (ControlFlow 0 72) 71) anon123_Then_correct) (=> (= (ControlFlow 0 72) 65) anon123_Else_correct)))))
(let ((anon122_Else_correct  (=> (and (not (and (<= (LitInt 0) |l#0_1_1@0|) (< |l#0_1_1@0| _module.__default.N))) (= (ControlFlow 0 64) 63)) anon58_correct)))
(let ((anon121_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0_1_2@0|) (or (= $Heap@1 |$lambdaHeap#0_1_2@0|) ($HeapSucc $Heap@1 |$lambdaHeap#0_1_2@0|))) (and (=> (= (ControlFlow 0 73) 72) anon122_Then_correct) (=> (= (ControlFlow 0 73) 64) anon122_Else_correct)))))
(let ((anon121_Else_correct  (=> (and (= |##f#0_1_2@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#181| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))) _module.__default.N (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false)))) ($LS $LZ)))) ($IsAlloc HandleTypeType |##f#0_1_2@0| (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) $Heap@1)) (and (=> (= (ControlFlow 0 60) (- 0 62)) ($Is intType (int_2_U _module.__default.N) Tclass._System.nat)) (=> ($Is intType (int_2_U _module.__default.N) Tclass._System.nat) (=> (and (= |##n#0_1_3@0| _module.__default.N) ($IsAlloc intType (int_2_U |##n#0_1_3@0|) Tclass._System.nat $Heap@1)) (and (=> (= (ControlFlow 0 60) (- 0 61)) (<= |##n#0_1_3@0| _module.__default.N)) (=> (|_module.__default.Sum__n#canCall| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#181| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))) _module.__default.N (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false)))) ($LS $LZ))) _module.__default.N) (=> (and (and (forall ((|$l#0_1_31#l#0| T@U) ) (!  (=> (and (<= (LitInt 0) (U_2_int |$l#0_1_31#l#0|)) (< (U_2_int |$l#0_1_31#l#0|) _module.__default.N)) (|_module.__default.Sum__n#canCall| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#172| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType |$l#0_1_31#l#0|)) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ))) _module.__default.N))
 :qid |unknown.0:0|
 :skolemid |615|
)) (|_module.__default.Sum__n#canCall| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#181| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))) _module.__default.N (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false)))) ($LS $LZ))) _module.__default.N)) (= (ControlFlow 0 60) (- 0 59))) (= (_module.__default.Sum__n ($LS ($LS $LZ)) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#161| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))) _module.__default.N (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false)))) ($LS $LZ))) _module.__default.N) (_module.__default.Sum__n ($LS ($LS $LZ)) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#181| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))) _module.__default.N (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false)))) ($LS $LZ))) _module.__default.N)))))))))))
(let ((anon117_Else_correct  (=> (= |##f#0_1_0@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#161| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))) _module.__default.N (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false)))) ($LS $LZ)))) (=> (and (and (and ($IsAlloc HandleTypeType |##f#0_1_0@0| (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) $Heap@@2) ($Is intType (int_2_U _module.__default.N) Tclass._System.nat)) (and (= |##n#0_1_1@0| _module.__default.N) ($IsAlloc intType (int_2_U |##n#0_1_1@0|) Tclass._System.nat $Heap@@2))) (and (and (<= |##n#0_1_1@0| _module.__default.N) (|_module.__default.Sum__n#canCall| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#161| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))) _module.__default.N (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false)))) ($LS $LZ))) _module.__default.N)) (and (forall ((|$l#0_1_13#k#0| T@U) ) (!  (=> (and (<= (LitInt 0) (U_2_int |$l#0_1_13#k#0|)) (< (U_2_int |$l#0_1_13#k#0|) _module.__default.N)) (|_module.__default.Sum__n#canCall| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#152| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType |$l#0_1_13#k#0|)) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ))) _module.__default.N))
 :qid |unknown.0:0|
 :skolemid |612|
)) (|_module.__default.Sum__n#canCall| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#161| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))) _module.__default.N (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false)))) ($LS $LZ))) _module.__default.N)))) (and (=> (= (ControlFlow 0 74) (- 0 78)) ($Is intType (int_2_U _module.__default.N) Tclass._System.nat)) (=> ($Is intType (int_2_U _module.__default.N) Tclass._System.nat) (=> (= |n1##0_1_0@0| _module.__default.N) (and (=> (= (ControlFlow 0 74) (- 0 77)) ($Is intType (int_2_U _module.__default.N) Tclass._System.nat)) (=> ($Is intType (int_2_U _module.__default.N) Tclass._System.nat) (=> (= |n2##0_1_0@0| _module.__default.N) (and (=> (= (ControlFlow 0 74) (- 0 76)) (<= |n1##0_1_0@0| _module.__default.N)) (=> (<= |n1##0_1_0@0| _module.__default.N) (and (=> (= (ControlFlow 0 74) (- 0 75)) (<= |n2##0_1_0@0| _module.__default.N)) (=> (<= |n2##0_1_0@0| _module.__default.N) (=> (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (=> (and (and (and (forall ((|$l#30#k#0| T@U) ) (!  (=> (and (<= (LitInt 0) (U_2_int |$l#30#k#0|)) (< (U_2_int |$l#30#k#0|) _module.__default.N)) (|_module.__default.Sum__n#canCall| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#152| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType |$l#30#k#0|)) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ))) |n1##0_1_0@0|))
 :qid |unknown.0:0|
 :skolemid |570|
)) (|_module.__default.Sum__n#canCall| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#161| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))) |n1##0_1_0@0| (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false)))) ($LS $LZ))) |n2##0_1_0@0|)) (and (forall ((|$l#35#l#0| T@U) ) (!  (=> (and (<= (LitInt 0) (U_2_int |$l#35#l#0|)) (< (U_2_int |$l#35#l#0|) _module.__default.N)) (|_module.__default.Sum__n#canCall| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#172| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType |$l#35#l#0|)) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ))) |n2##0_1_0@0|))
 :qid |unknown.0:0|
 :skolemid |571|
)) (|_module.__default.Sum__n#canCall| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#181| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))) |n2##0_1_0@0| (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false)))) ($LS $LZ))) |n1##0_1_0@0|))) (and (= (_module.__default.Sum__n ($LS ($LS $LZ)) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#161| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))) |n1##0_1_0@0| (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false)))) ($LS $LZ))) |n2##0_1_0@0|) (_module.__default.Sum__n ($LS ($LS $LZ)) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#181| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))) |n2##0_1_0@0| (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false)))) ($LS $LZ))) |n1##0_1_0@0|)) (= $Heap@@2 $Heap@1))) (and (=> (= (ControlFlow 0 74) 73) anon121_Then_correct) (=> (= (ControlFlow 0 74) 60) anon121_Else_correct))))))))))))))))))
(let ((anon15_correct true))
(let ((anon103_Else_correct  (=> (and (not (and (<= (LitInt 0) |l#0_2_0@0|) (< |l#0_2_0@0| _module.__default.N))) (= (ControlFlow 0 55) 53)) anon15_correct)))
(let ((anon103_Then_correct  (=> (and (<= (LitInt 0) |l#0_2_0@0|) (< |l#0_2_0@0| _module.__default.N)) (=> (and (and (= |$_Frame#l0_2_1@0| (|lambda#0| null |$lambdaHeap#0_2_1@0| alloc false)) (= |lambdaResult#0_2_1| (U_2_int ($Unbox intType (Apply1 Tclass._module.Index TInt |$lambdaHeap#0_2_0@0| ($Unbox HandleTypeType (Apply1 Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |$lambdaHeap#0_2_0@0| |m#0| ($Box intType (int_2_U |k#0_2_0@0|)))) ($Box intType (int_2_U |l#0_2_0@0|))))))) (and ($Is intType (int_2_U |lambdaResult#0_2_1|) TInt) (= (ControlFlow 0 54) 53))) anon15_correct))))
(let ((anon102_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0_2_1@0|) (or (= |$lambdaHeap#0_2_0@0| |$lambdaHeap#0_2_1@0|) ($HeapSucc |$lambdaHeap#0_2_0@0| |$lambdaHeap#0_2_1@0|))) (and (=> (= (ControlFlow 0 56) 54) anon103_Then_correct) (=> (= (ControlFlow 0 56) 55) anon103_Else_correct)))))
(let ((anon17_correct true))
(let ((anon102_Else_correct  (=> (= |##f#0_2_1@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#152| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType (int_2_U |k#0_2_0@0|))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ)))) (=> (and ($IsAlloc HandleTypeType |##f#0_2_1@0| (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |$lambdaHeap#0_2_0@0|) (|_module.__default.Sum#canCall| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#152| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType (int_2_U |k#0_2_0@0|))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ))))) (=> (and (and (= |lambdaResult#0_2_0| (LitInt (_module.__default.Sum (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#152| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType (int_2_U |k#0_2_0@0|))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ)))))) (|_module.__default.Sum#canCall| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#152| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType (int_2_U |k#0_2_0@0|))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ))))) (and ($Is intType (int_2_U |lambdaResult#0_2_0|) TInt) (= (ControlFlow 0 52) 50))) anon17_correct)))))
(let ((anon101_Then_correct  (=> (and (and (<= (LitInt 0) |k#0_2_0@0|) (< |k#0_2_0@0| _module.__default.N)) (= |$_Frame#l0_2_0@0| (|lambda#0| null |$lambdaHeap#0_2_0@0| alloc false))) (and (=> (= (ControlFlow 0 57) 56) anon102_Then_correct) (=> (= (ControlFlow 0 57) 52) anon102_Else_correct)))))
(let ((anon101_Else_correct  (=> (and (not (and (<= (LitInt 0) |k#0_2_0@0|) (< |k#0_2_0@0| _module.__default.N))) (= (ControlFlow 0 51) 50)) anon17_correct)))
(let ((anon100_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0_2_0@0|) (or (= $Heap@@2 |$lambdaHeap#0_2_0@0|) ($HeapSucc $Heap@@2 |$lambdaHeap#0_2_0@0|))) (and (=> (= (ControlFlow 0 58) 57) anon101_Then_correct) (=> (= (ControlFlow 0 58) 51) anon101_Else_correct)))))
(let ((anon23_correct true))
(let ((anon107_Else_correct  (=> (and (not (and (<= (LitInt 0) |l#0_2_1@0|) (< |l#0_2_1@0| _module.__default.N))) (= (ControlFlow 0 45) 43)) anon23_correct)))
(let ((anon107_Then_correct  (=> (and (<= (LitInt 0) |l#0_2_1@0|) (< |l#0_2_1@0| _module.__default.N)) (=> (and (and (= |$_Frame#l0_2_3@0| (|lambda#0| null |$lambdaHeap#0_2_3@0| alloc false)) (= |lambdaResult#0_2_3| (U_2_int ($Unbox intType (Apply1 Tclass._module.Index TInt |$lambdaHeap#0_2_2@0| ($Unbox HandleTypeType (Apply1 Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |$lambdaHeap#0_2_2@0| |m#0| ($Box intType (int_2_U |k#0_2_1@0|)))) ($Box intType (int_2_U |l#0_2_1@0|))))))) (and ($Is intType (int_2_U |lambdaResult#0_2_3|) TInt) (= (ControlFlow 0 44) 43))) anon23_correct))))
(let ((anon106_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0_2_3@0|) (or (= |$lambdaHeap#0_2_2@0| |$lambdaHeap#0_2_3@0|) ($HeapSucc |$lambdaHeap#0_2_2@0| |$lambdaHeap#0_2_3@0|))) (and (=> (= (ControlFlow 0 46) 44) anon107_Then_correct) (=> (= (ControlFlow 0 46) 45) anon107_Else_correct)))))
(let ((anon25_correct true))
(let ((anon106_Else_correct  (=> (= |##f#0_2_2@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#152| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType (int_2_U |k#0_2_1@0|))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ)))) (=> (and ($IsAlloc HandleTypeType |##f#0_2_2@0| (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |$lambdaHeap#0_2_2@0|) (|_module.__default.Sum#canCall| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#152| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType (int_2_U |k#0_2_1@0|))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ))))) (=> (and (and (= |lambdaResult#0_2_2| (LitInt (_module.__default.Sum (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#152| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType (int_2_U |k#0_2_1@0|))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ)))))) (|_module.__default.Sum#canCall| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#152| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType (int_2_U |k#0_2_1@0|))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ))))) (and ($Is intType (int_2_U |lambdaResult#0_2_2|) TInt) (= (ControlFlow 0 42) 40))) anon25_correct)))))
(let ((anon105_Then_correct  (=> (and (and (<= (LitInt 0) |k#0_2_1@0|) (< |k#0_2_1@0| _module.__default.N)) (= |$_Frame#l0_2_2@0| (|lambda#0| null |$lambdaHeap#0_2_2@0| alloc false))) (and (=> (= (ControlFlow 0 47) 46) anon106_Then_correct) (=> (= (ControlFlow 0 47) 42) anon106_Else_correct)))))
(let ((anon105_Else_correct  (=> (and (not (and (<= (LitInt 0) |k#0_2_1@0|) (< |k#0_2_1@0| _module.__default.N))) (= (ControlFlow 0 41) 40)) anon25_correct)))
(let ((anon104_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0_2_2@0|) (or (= $Heap@@2 |$lambdaHeap#0_2_2@0|) ($HeapSucc $Heap@@2 |$lambdaHeap#0_2_2@0|))) (and (=> (= (ControlFlow 0 48) 47) anon105_Then_correct) (=> (= (ControlFlow 0 48) 41) anon105_Else_correct)))))
(let ((anon31_correct true))
(let ((anon111_Else_correct  (=> (and (not (and (<= (LitInt 0) |l#0_2_2@0|) (< |l#0_2_2@0| _module.__default.N))) (= (ControlFlow 0 35) 33)) anon31_correct)))
(let ((anon111_Then_correct  (=> (and (<= (LitInt 0) |l#0_2_2@0|) (< |l#0_2_2@0| _module.__default.N)) (=> (and (and (= |$_Frame#l0_2_5@0| (|lambda#0| null |$lambdaHeap#0_2_5@0| alloc false)) (= |lambdaResult#0_2_5| (U_2_int ($Unbox intType (Apply1 Tclass._module.Index TInt |$lambdaHeap#0_2_4@0| ($Unbox HandleTypeType (Apply1 Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |$lambdaHeap#0_2_4@0| |m#0| ($Box intType (int_2_U |k#0_2_2@0|)))) ($Box intType (int_2_U |l#0_2_2@0|))))))) (and ($Is intType (int_2_U |lambdaResult#0_2_5|) TInt) (= (ControlFlow 0 34) 33))) anon31_correct))))
(let ((anon110_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0_2_5@0|) (or (= |$lambdaHeap#0_2_4@0| |$lambdaHeap#0_2_5@0|) ($HeapSucc |$lambdaHeap#0_2_4@0| |$lambdaHeap#0_2_5@0|))) (and (=> (= (ControlFlow 0 36) 34) anon111_Then_correct) (=> (= (ControlFlow 0 36) 35) anon111_Else_correct)))))
(let ((anon33_correct true))
(let ((anon110_Else_correct  (=> (and (= |##f#0_2_3@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#152| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType (int_2_U |k#0_2_2@0|))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ)))) ($IsAlloc HandleTypeType |##f#0_2_3@0| (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |$lambdaHeap#0_2_4@0|)) (and (=> (= (ControlFlow 0 30) (- 0 32)) ($Is intType (int_2_U _module.__default.N) Tclass._System.nat)) (=> ($Is intType (int_2_U _module.__default.N) Tclass._System.nat) (=> (and (= |##n#0_2_0@0| _module.__default.N) ($IsAlloc intType (int_2_U |##n#0_2_0@0|) Tclass._System.nat |$lambdaHeap#0_2_4@0|)) (and (=> (= (ControlFlow 0 30) (- 0 31)) (<= |##n#0_2_0@0| _module.__default.N)) (=> (and (<= |##n#0_2_0@0| _module.__default.N) (|_module.__default.Sum__n#canCall| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#152| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType (int_2_U |k#0_2_2@0|))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ))) _module.__default.N)) (=> (and (and (= |lambdaResult#0_2_4| (_module.__default.Sum__n ($LS $LZ) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#152| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType (int_2_U |k#0_2_2@0|))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ))) _module.__default.N)) (|_module.__default.Sum__n#canCall| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#152| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType (int_2_U |k#0_2_2@0|))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ))) _module.__default.N)) (and ($Is intType (int_2_U |lambdaResult#0_2_4|) TInt) (= (ControlFlow 0 30) 28))) anon33_correct)))))))))
(let ((anon109_Then_correct  (=> (and (and (<= (LitInt 0) |k#0_2_2@0|) (< |k#0_2_2@0| _module.__default.N)) (= |$_Frame#l0_2_4@0| (|lambda#0| null |$lambdaHeap#0_2_4@0| alloc false))) (and (=> (= (ControlFlow 0 37) 36) anon110_Then_correct) (=> (= (ControlFlow 0 37) 30) anon110_Else_correct)))))
(let ((anon109_Else_correct  (=> (and (not (and (<= (LitInt 0) |k#0_2_2@0|) (< |k#0_2_2@0| _module.__default.N))) (= (ControlFlow 0 29) 28)) anon33_correct)))
(let ((anon108_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0_2_4@0|) (or (= $Heap@@2 |$lambdaHeap#0_2_4@0|) ($HeapSucc $Heap@@2 |$lambdaHeap#0_2_4@0|))) (and (=> (= (ControlFlow 0 38) 37) anon109_Then_correct) (=> (= (ControlFlow 0 38) 29) anon109_Else_correct)))))
(let ((anon39_correct true))
(let ((anon115_Else_correct  (=> (and (not (and (<= (LitInt 0) |l#0_2_3@0|) (< |l#0_2_3@0| _module.__default.N))) (= (ControlFlow 0 22) 20)) anon39_correct)))
(let ((anon115_Then_correct  (=> (and (<= (LitInt 0) |l#0_2_3@0|) (< |l#0_2_3@0| _module.__default.N)) (=> (and (and (= |$_Frame#l0_2_7@0| (|lambda#0| null |$lambdaHeap#0_2_7@0| alloc false)) (= |lambdaResult#0_2_7| (U_2_int ($Unbox intType (Apply1 Tclass._module.Index TInt |$lambdaHeap#0_2_6@0| ($Unbox HandleTypeType (Apply1 Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |$lambdaHeap#0_2_6@0| |m#0| ($Box intType (int_2_U |k#0_2_3@0|)))) ($Box intType (int_2_U |l#0_2_3@0|))))))) (and ($Is intType (int_2_U |lambdaResult#0_2_7|) TInt) (= (ControlFlow 0 21) 20))) anon39_correct))))
(let ((anon114_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0_2_7@0|) (or (= |$lambdaHeap#0_2_6@0| |$lambdaHeap#0_2_7@0|) ($HeapSucc |$lambdaHeap#0_2_6@0| |$lambdaHeap#0_2_7@0|))) (and (=> (= (ControlFlow 0 23) 21) anon115_Then_correct) (=> (= (ControlFlow 0 23) 22) anon115_Else_correct)))))
(let ((anon41_correct true))
(let ((anon114_Else_correct  (=> (and (= |##f#0_2_5@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#152| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType (int_2_U |k#0_2_3@0|))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ)))) ($IsAlloc HandleTypeType |##f#0_2_5@0| (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |$lambdaHeap#0_2_6@0|)) (and (=> (= (ControlFlow 0 17) (- 0 19)) ($Is intType (int_2_U _module.__default.N) Tclass._System.nat)) (=> ($Is intType (int_2_U _module.__default.N) Tclass._System.nat) (=> (and (= |##n#0_2_1@0| _module.__default.N) ($IsAlloc intType (int_2_U |##n#0_2_1@0|) Tclass._System.nat |$lambdaHeap#0_2_6@0|)) (and (=> (= (ControlFlow 0 17) (- 0 18)) (<= |##n#0_2_1@0| _module.__default.N)) (=> (and (<= |##n#0_2_1@0| _module.__default.N) (|_module.__default.Sum__n#canCall| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#152| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType (int_2_U |k#0_2_3@0|))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ))) _module.__default.N)) (=> (and (and (= |lambdaResult#0_2_6| (_module.__default.Sum__n ($LS $LZ) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#152| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType (int_2_U |k#0_2_3@0|))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ))) _module.__default.N)) (|_module.__default.Sum__n#canCall| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#152| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType (int_2_U |k#0_2_3@0|))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ))) _module.__default.N)) (and ($Is intType (int_2_U |lambdaResult#0_2_6|) TInt) (= (ControlFlow 0 17) 15))) anon41_correct)))))))))
(let ((anon113_Then_correct  (=> (and (and (<= (LitInt 0) |k#0_2_3@0|) (< |k#0_2_3@0| _module.__default.N)) (= |$_Frame#l0_2_6@0| (|lambda#0| null |$lambdaHeap#0_2_6@0| alloc false))) (and (=> (= (ControlFlow 0 24) 23) anon114_Then_correct) (=> (= (ControlFlow 0 24) 17) anon114_Else_correct)))))
(let ((anon113_Else_correct  (=> (and (not (and (<= (LitInt 0) |k#0_2_3@0|) (< |k#0_2_3@0| _module.__default.N))) (= (ControlFlow 0 16) 15)) anon41_correct)))
(let ((anon112_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0_2_6@0|) (or (= $Heap@2 |$lambdaHeap#0_2_6@0|) ($HeapSucc $Heap@2 |$lambdaHeap#0_2_6@0|))) (and (=> (= (ControlFlow 0 25) 24) anon113_Then_correct) (=> (= (ControlFlow 0 25) 16) anon113_Else_correct)))))
(let ((anon112_Else_correct  (=> (and (= |##f#0_2_4@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#161| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))) _module.__default.N (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false)))) ($LS $LZ)))) ($IsAlloc HandleTypeType |##f#0_2_4@0| (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) $Heap@2)) (and (=> (= (ControlFlow 0 12) (- 0 14)) ($Is intType (int_2_U _module.__default.N) Tclass._System.nat)) (=> ($Is intType (int_2_U _module.__default.N) Tclass._System.nat) (=> (and (= |##n#0_2_2@0| _module.__default.N) ($IsAlloc intType (int_2_U |##n#0_2_2@0|) Tclass._System.nat $Heap@2)) (and (=> (= (ControlFlow 0 12) (- 0 13)) (<= |##n#0_2_2@0| _module.__default.N)) (=> (|_module.__default.Sum__n#canCall| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#161| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))) _module.__default.N (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false)))) ($LS $LZ))) _module.__default.N) (=> (and (and (forall ((|$l#0_2_55#k#0| T@U) ) (!  (=> (and (<= (LitInt 0) (U_2_int |$l#0_2_55#k#0|)) (< (U_2_int |$l#0_2_55#k#0|) _module.__default.N)) (|_module.__default.Sum__n#canCall| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#152| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType |$l#0_2_55#k#0|)) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ))) _module.__default.N))
 :qid |unknown.0:0|
 :skolemid |624|
)) (|_module.__default.Sum__n#canCall| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#161| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))) _module.__default.N (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false)))) ($LS $LZ))) _module.__default.N)) (= (ControlFlow 0 12) (- 0 11))) (= (LitInt (_module.__default.Sum (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#878| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false)))) ($LS $LZ))))) (_module.__default.Sum__n ($LS ($LS $LZ)) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#161| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))) _module.__default.N (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false)))) ($LS $LZ))) _module.__default.N)))))))))))
(let ((anon108_Else_correct  (=> (forall ((|$l#0_2_37#k#0| T@U) ) (!  (=> (and (<= (LitInt 0) (U_2_int |$l#0_2_37#k#0|)) (< (U_2_int |$l#0_2_37#k#0|) _module.__default.N)) (|_module.__default.Sum__n#canCall| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#152| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType |$l#0_2_37#k#0|)) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ))) _module.__default.N))
 :qid |unknown.0:0|
 :skolemid |621|
)) (=> (and (= |g##0_2_0@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#161| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))) _module.__default.N (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false)))) ($LS $LZ)))) (= call0formal@_module._default.FunEq$X@0@@0 Tclass._module.Index)) (and (=> (= (ControlFlow 0 26) (- 0 27)) (forall ((|x#1@@1| T@U) ) (!  (=> (and ($IsBox |x#1@@1| call0formal@_module._default.FunEq$X@0@@0) ($IsAllocBox |x#1@@1| call0formal@_module._default.FunEq$X@0@@0 $Heap@@2)) (= (Apply1 call0formal@_module._default.FunEq$X@0@@0 TInt $Heap@@2 |f##0_2_0@0| |x#1@@1|) (Apply1 call0formal@_module._default.FunEq$X@0@@0 TInt $Heap@@2 |g##0_2_0@0| |x#1@@1|)))
 :qid |MatrixAssocdfy.16:19|
 :skolemid |531|
 :pattern ( (Apply1 call0formal@_module._default.FunEq$X@0@@0 TInt $Heap@@2 |g##0_2_0@0| |x#1@@1|))
 :pattern ( (Apply1 call0formal@_module._default.FunEq$X@0@@0 TInt $Heap@@2 |f##0_2_0@0| |x#1@@1|))
))) (=> (forall ((|x#1@@2| T@U) ) (!  (=> (and ($IsBox |x#1@@2| call0formal@_module._default.FunEq$X@0@@0) ($IsAllocBox |x#1@@2| call0formal@_module._default.FunEq$X@0@@0 $Heap@@2)) (= (Apply1 call0formal@_module._default.FunEq$X@0@@0 TInt $Heap@@2 |f##0_2_0@0| |x#1@@2|) (Apply1 call0formal@_module._default.FunEq$X@0@@0 TInt $Heap@@2 |g##0_2_0@0| |x#1@@2|)))
 :qid |MatrixAssocdfy.16:19|
 :skolemid |531|
 :pattern ( (Apply1 call0formal@_module._default.FunEq$X@0@@0 TInt $Heap@@2 |g##0_2_0@0| |x#1@@2|))
 :pattern ( (Apply1 call0formal@_module._default.FunEq$X@0@@0 TInt $Heap@@2 |f##0_2_0@0| |x#1@@2|))
)) (=> (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (and (= |f##0_2_0@0| |g##0_2_0@0|) (= $Heap@@2 $Heap@2))) (and (=> (= (ControlFlow 0 26) 25) anon112_Then_correct) (=> (= (ControlFlow 0 26) 12) anon112_Else_correct)))))))))
(let ((anon104_Else_correct  (=> (and (forall ((|$l#0_2_25#k#0| T@U) ) (!  (=> (and (<= (LitInt 0) (U_2_int |$l#0_2_25#k#0|)) (< (U_2_int |$l#0_2_25#k#0|) _module.__default.N)) (|_module.__default.Sum#canCall| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#152| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType |$l#0_2_25#k#0|)) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ)))))
 :qid |unknown.0:0|
 :skolemid |619|
)) (= |f##0_2_0@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#878| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false)))) ($LS $LZ))))) (and (=> (= (ControlFlow 0 39) 38) anon108_Then_correct) (=> (= (ControlFlow 0 39) 26) anon108_Else_correct)))))
(let ((anon100_Else_correct  (=> (= |##f#0_2_0@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#878| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false)))) ($LS $LZ)))) (=> (and (and ($IsAlloc HandleTypeType |##f#0_2_0@0| (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) $Heap@@2) (|_module.__default.Sum#canCall| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#878| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false)))) ($LS $LZ))))) (and (forall ((|$l#0_2_13#k#0| T@U) ) (!  (=> (and (<= (LitInt 0) (U_2_int |$l#0_2_13#k#0|)) (< (U_2_int |$l#0_2_13#k#0|) _module.__default.N)) (|_module.__default.Sum#canCall| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#152| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType |$l#0_2_13#k#0|)) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ)))))
 :qid |unknown.0:0|
 :skolemid |617|
)) (|_module.__default.Sum#canCall| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#878| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false)))) ($LS $LZ)))))) (and (=> (= (ControlFlow 0 49) 48) anon104_Then_correct) (=> (= (ControlFlow 0 49) 39) anon104_Else_correct))))))
(let ((anon6_correct true))
(let ((anon98_Else_correct  (=> (and (not (and (<= (LitInt 0) |l#0_0@0|) (< |l#0_0@0| _module.__default.N))) (= (ControlFlow 0 7) 5)) anon6_correct)))
(let ((anon98_Then_correct  (=> (and (<= (LitInt 0) |l#0_0@0|) (< |l#0_0@0| _module.__default.N)) (=> (and (and (= |$_Frame#l0_1@0| (|lambda#0| null |$lambdaHeap#0_1@0| alloc false)) (= |lambdaResult#0_1| (U_2_int ($Unbox intType (Apply1 Tclass._module.Index TInt |$lambdaHeap#0_0@0| ($Unbox HandleTypeType (Apply1 Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |$lambdaHeap#0_0@0| |m#0| ($Box intType (int_2_U |k#0_0@0|)))) ($Box intType (int_2_U |l#0_0@0|))))))) (and ($Is intType (int_2_U |lambdaResult#0_1|) TInt) (= (ControlFlow 0 6) 5))) anon6_correct))))
(let ((anon97_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0_1@0|) (or (= |$lambdaHeap#0_0@0| |$lambdaHeap#0_1@0|) ($HeapSucc |$lambdaHeap#0_0@0| |$lambdaHeap#0_1@0|))) (and (=> (= (ControlFlow 0 8) 6) anon98_Then_correct) (=> (= (ControlFlow 0 8) 7) anon98_Else_correct)))))
(let ((anon8_correct true))
(let ((anon97_Else_correct  (=> (= |##f#0_1@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#152| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType (int_2_U |k#0_0@0|))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ)))) (=> (and ($IsAlloc HandleTypeType |##f#0_1@0| (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |$lambdaHeap#0_0@0|) (|_module.__default.Sum#canCall| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#152| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType (int_2_U |k#0_0@0|))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ))))) (=> (and (and (= |lambdaResult#0_0| (LitInt (_module.__default.Sum (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#152| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType (int_2_U |k#0_0@0|))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ)))))) (|_module.__default.Sum#canCall| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#152| Tclass._module.Index TInt Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt) |m#0| ($Box intType (int_2_U |k#0_0@0|))) (|lambda#5| Tclass._module.Index) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $LZ))))) (and ($Is intType (int_2_U |lambdaResult#0_0|) TInt) (= (ControlFlow 0 4) 2))) anon8_correct)))))
(let ((anon96_Then_correct  (=> (and (and (<= (LitInt 0) |k#0_0@0|) (< |k#0_0@0| _module.__default.N)) (= |$_Frame#l0_0@0| (|lambda#0| null |$lambdaHeap#0_0@0| alloc false))) (and (=> (= (ControlFlow 0 9) 8) anon97_Then_correct) (=> (= (ControlFlow 0 9) 4) anon97_Else_correct)))))
(let ((anon96_Else_correct  (=> (and (not (and (<= (LitInt 0) |k#0_0@0|) (< |k#0_0@0| _module.__default.N))) (= (ControlFlow 0 3) 2)) anon8_correct)))
(let ((anon95_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0_0@0|) (or (= $Heap@@2 |$lambdaHeap#0_0@0|) ($HeapSucc $Heap@@2 |$lambdaHeap#0_0@0|))) (and (=> (= (ControlFlow 0 10) 9) anon96_Then_correct) (=> (= (ControlFlow 0 10) 3) anon96_Else_correct)))))
(let ((anon95_Else_correct true))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@2 alloc false)) (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 135) 134) anon125_Else_correct) (=> (= (ControlFlow 0 135) 131) anon126_Then_correct)) (=> (= (ControlFlow 0 135) 122) anon126_Else_correct)) (=> (= (ControlFlow 0 135) 87) anon117_Then_correct)) (=> (= (ControlFlow 0 135) 74) anon117_Else_correct)) (=> (= (ControlFlow 0 135) 58) anon100_Then_correct)) (=> (= (ControlFlow 0 135) 49) anon100_Else_correct)) (=> (= (ControlFlow 0 135) 10) anon95_Then_correct)) (=> (= (ControlFlow 0 135) 1) anon95_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@2) ($IsHeapAnchor $Heap@@2)) (=> (and (and ($Is HandleTypeType |m#0| (Tclass._System.___hTotalFunc1 Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt))) ($IsAlloc HandleTypeType |m#0| (Tclass._System.___hTotalFunc1 Tclass._module.Index (Tclass._System.___hTotalFunc1 Tclass._module.Index TInt)) $Heap@@2)) (and (= 6 $FunctionContextHeight) (= (ControlFlow 0 136) 135))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
