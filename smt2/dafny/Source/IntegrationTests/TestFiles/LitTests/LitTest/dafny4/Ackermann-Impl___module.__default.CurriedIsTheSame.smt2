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
(declare-fun tytagFamily$object () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
(declare-fun |tytagFamily$_#PartialFunc1| () T@U)
(declare-fun |tytagFamily$_#TotalFunc1| () T@U)
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
(declare-fun |Set#Empty| () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.A (T@U Int) T@U)
(declare-fun |_module.__default.A#canCall| (Int) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hTotalFunc1 (T@U T@U) T@U)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun _module.__default.Ack (T@U Int Int) Int)
(declare-fun |_module.__default.Ack#canCall| (Int Int) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun |lambda#9| (T@U T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun _module.__default.Iter (T@U T@U Int) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun null () T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun |lambda#4| (Int) T@U)
(declare-fun TSet (T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.__default.Iter#canCall| (T@U Int) Bool)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun AtLayer (T@T T@U T@U) T@U)
(declare-fun LayerTypeType () T@T)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun SetRef_to_SetBox (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1 (T@U T@U) T@U)
(declare-fun _module.__default.CurriedAckermann (Int Int) Int)
(declare-fun |_module.__default.CurriedAckermann#canCall| (Int Int) Bool)
(declare-fun $LZ () T@U)
(declare-fun |lambda#8| (T@U) T@U)
(declare-fun |lambda#7| (T@U) T@U)
(declare-fun |lambda#6| (Bool) T@U)
(declare-fun |lambda#23| (Int T@U T@U) T@U)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun |lambda#13| (Int T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
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
(assert (distinct TInt TagInt TagSet alloc Tagclass._System.object? Tagclass._System.object Tagclass._System.___hFunc1 Tagclass._System.___hPartialFunc1 Tagclass._System.___hTotalFunc1 tytagFamily$object |tytagFamily$_#Func1| |tytagFamily$_#PartialFunc1| |tytagFamily$_#TotalFunc1|)
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
(assert (forall ((|l#0| T@U) (|$l#0#heap#0| T@U) (|$l#0#n#0| T@U) ) (! (= (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#5| |l#0|) |$l#0#heap#0| |$l#0#n#0|)) ($IsBox |$l#0#n#0| |l#0|))
 :qid |DafnyPreludebpl.27:1|
 :skolemid |655|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#5| |l#0|) |$l#0#heap#0| |$l#0#n#0|))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (Ctor HandleTypeType) 8))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly T@U) (|m#0| Int) ) (!  (=> (or (|_module.__default.A#canCall| |m#0|) (< 1 $FunctionContextHeight)) ($Is HandleTypeType (_module.__default.A $ly |m#0|) (Tclass._System.___hTotalFunc1 TInt TInt)))
 :qid |Ackermanndfy.51:16|
 :skolemid |551|
 :pattern ( (_module.__default.A $ly |m#0|))
))))
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
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h) ($IsAlloc refType |c#0| Tclass._System.object? $h))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@0 T@U) (|m#0@@0| Int) (|n#0| Int) ) (!  (=> (or (|_module.__default.Ack#canCall| |m#0@@0| |n#0|) (and (< 0 $FunctionContextHeight) (and (<= (LitInt 0) |m#0@@0|) (<= (LitInt 0) |n#0|)))) (<= (LitInt 0) (_module.__default.Ack $ly@@0 |m#0@@0| |n#0|)))
 :qid |Ackermanndfy.12:10|
 :skolemid |533|
 :pattern ( (_module.__default.Ack $ly@@0 |m#0@@0| |n#0|))
))))
(assert (forall ((|l#0@@0| T@U) (|l#1| T@U) (|$l#1#heap#0| T@U) (|$l#1#n#0| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#9| |l#0@@0| |l#1|) |$l#1#heap#0| |$l#1#n#0|) ($Box intType (int_2_U (_module.__default.Iter |l#0@@0| |l#1| (U_2_int ($Unbox intType |$l#1#n#0|))))))
 :qid |unknown.0:0|
 :skolemid |659|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#9| |l#0@@0| |l#1|) |$l#1#heap#0| |$l#1#n#0|))
)))
(assert (forall (($o T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o Tclass._System.object? $h@@0)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@0 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o Tclass._System.object? $h@@0))
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
(assert (forall ((|l#0@@1| Int) (|$l#0#heap#0@@0| T@U) (|$l#0#n#0@@0| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#4| |l#0@@1|) |$l#0#heap#0@@0| |$l#0#n#0@@0|) ($Box intType (int_2_U (+ (U_2_int ($Unbox intType |$l#0#n#0@@0|)) |l#0@@1|))))
 :qid |unknown.0:0|
 :skolemid |654|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#4| |l#0@@1|) |$l#0#heap#0@@0| |$l#0#n#0@@0|))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@1 T@U) ($Heap T@U) (|f#0| T@U) (|n#0@@0| Int) ) (!  (=> (or (|_module.__default.Iter#canCall| (Lit HandleTypeType |f#0|) (LitInt |n#0@@0|)) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap) ($Is HandleTypeType |f#0| (Tclass._System.___hTotalFunc1 TInt TInt))))) (and (=> (< (LitInt 0) (LitInt |n#0@@0|)) (|_module.__default.Iter#canCall| (Lit HandleTypeType |f#0|) (LitInt (- |n#0@@0| 1)))) (= (_module.__default.Iter ($LS $ly@@1) (Lit HandleTypeType |f#0|) (LitInt |n#0@@0|)) (ite (<= (LitInt |n#0@@0|) (LitInt 0)) (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap (Lit HandleTypeType |f#0|) ($Box intType (int_2_U (LitInt 1)))))) (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap (Lit HandleTypeType |f#0|) ($Box intType (int_2_U (LitInt (_module.__default.Iter ($LS $ly@@1) (Lit HandleTypeType |f#0|) (LitInt (- |n#0@@0| 1)))))))))))))
 :qid |Ackermanndfy.59:16|
 :weight 3
 :skolemid |566|
 :pattern ( (_module.__default.Iter ($LS $ly@@1) (Lit HandleTypeType |f#0|) (LitInt |n#0@@0|)) ($IsGoodHeap $Heap))
))))
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
(assert (forall ((s T@U) (bx@@3 T@U) ) (! (= (|Set#IsMember| (SetRef_to_SetBox s) bx@@3) (U_2_bool (MapType1Select refType boolType s ($Unbox refType bx@@3))))
 :qid |DafnyPreludebpl.370:15|
 :skolemid |82|
 :pattern ( (|Set#IsMember| (SetRef_to_SetBox s) bx@@3))
)))
(assert (forall ((|#$T0| T@U) (|#$R| T@U) (|f#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h@@1) ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hFunc1 |#$T0| |#$R|) $h@@1))
 :qid |unknown.0:0|
 :skolemid |403|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h@@1))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$R@@0| T@U) (|f#0@@1| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc1 |#$T0@@0| |#$R@@0|) $h@@2) ($IsAlloc HandleTypeType |f#0@@1| (Tclass._System.___hPartialFunc1 |#$T0@@0| |#$R@@0|) $h@@2))
 :qid |unknown.0:0|
 :skolemid |410|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc1 |#$T0@@0| |#$R@@0|) $h@@2))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@0 T@U) (|m#0@@1| Int) (|n#0@@1| Int) ) (!  (=> (or (|_module.__default.CurriedAckermann#canCall| (LitInt |m#0@@1|) (LitInt |n#0@@1|)) (and (< 2 $FunctionContextHeight) ($IsGoodHeap $Heap@@0))) (and (|_module.__default.A#canCall| (LitInt |m#0@@1|)) (= (_module.__default.CurriedAckermann (LitInt |m#0@@1|) (LitInt |n#0@@1|)) (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@@0 (Lit HandleTypeType (_module.__default.A ($LS $LZ) (LitInt |m#0@@1|))) ($Box intType (int_2_U (LitInt |n#0@@1|)))))))))
 :qid |Ackermanndfy.46:16|
 :weight 3
 :skolemid |547|
 :pattern ( (_module.__default.CurriedAckermann (LitInt |m#0@@1|) (LitInt |n#0@@1|)) ($IsGoodHeap $Heap@@0))
))))
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
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._System.object)  (and ($Is refType |c#0@@0| Tclass._System.object?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@0| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@0| Tclass._System.object?))
)))
(assert (forall (($ly@@2 T@U) (|m#0@@2| Int) (|n#0@@2| Int) ) (! (= (_module.__default.Ack ($LS $ly@@2) |m#0@@2| |n#0@@2|) (_module.__default.Ack $ly@@2 |m#0@@2| |n#0@@2|))
 :qid |Ackermanndfy.12:10|
 :skolemid |531|
 :pattern ( (_module.__default.Ack ($LS $ly@@2) |m#0@@2| |n#0@@2|))
)))
(assert (forall (($ly@@3 T@U) (|f#0@@2| T@U) (|n#0@@3| Int) ) (! (= (_module.__default.Iter ($LS $ly@@3) |f#0@@2| |n#0@@3|) (_module.__default.Iter $ly@@3 |f#0@@2| |n#0@@3|))
 :qid |Ackermanndfy.59:16|
 :skolemid |560|
 :pattern ( (_module.__default.Iter ($LS $ly@@3) |f#0@@2| |n#0@@3|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@4 T@U) (|m#0@@3| Int) ) (!  (=> (or (|_module.__default.A#canCall| (LitInt |m#0@@3|)) (< 1 $FunctionContextHeight)) (and (=> (< (LitInt 0) (LitInt |m#0@@3|)) (forall ((|$l#7#n#0| Int) ) (!  (and (|_module.__default.A#canCall| (LitInt (- |m#0@@3| 1))) (|_module.__default.Iter#canCall| (Lit HandleTypeType (_module.__default.A ($LS $ly@@4) (LitInt (- |m#0@@3| 1)))) |$l#7#n#0|))
 :qid |unknown.0:0|
 :skolemid |555|
))) (= (_module.__default.A ($LS $ly@@4) (LitInt |m#0@@3|)) (ite (<= (LitInt |m#0@@3|) (LitInt 0)) (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#4| 1) (|lambda#5| TInt) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) ($LS $ly@@4)) (AtLayer HandleTypeType (|lambda#23| (LitInt (- |m#0@@3| 1)) (|lambda#5| TInt) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false)))) ($LS $ly@@4))))))
 :qid |Ackermanndfy.51:16|
 :weight 3
 :skolemid |556|
 :pattern ( (_module.__default.A ($LS $ly@@4) (LitInt |m#0@@3|)))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@5 T@U) ($Heap@@1 T@U) (|f#0@@3| T@U) (|n#0@@4| Int) ) (!  (=> (or (|_module.__default.Iter#canCall| |f#0@@3| (LitInt |n#0@@4|)) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@1) ($Is HandleTypeType |f#0@@3| (Tclass._System.___hTotalFunc1 TInt TInt))))) (and (=> (< (LitInt 0) (LitInt |n#0@@4|)) (|_module.__default.Iter#canCall| |f#0@@3| (LitInt (- |n#0@@4| 1)))) (= (_module.__default.Iter ($LS $ly@@5) |f#0@@3| (LitInt |n#0@@4|)) (ite (<= (LitInt |n#0@@4|) (LitInt 0)) (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@@1 |f#0@@3| ($Box intType (int_2_U (LitInt 1)))))) (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@@1 |f#0@@3| ($Box intType (int_2_U (_module.__default.Iter ($LS $ly@@5) |f#0@@3| (LitInt (- |n#0@@4| 1))))))))))))
 :qid |Ackermanndfy.59:16|
 :weight 3
 :skolemid |565|
 :pattern ( (_module.__default.Iter ($LS $ly@@5) |f#0@@3| (LitInt |n#0@@4|)) ($IsGoodHeap $Heap@@1))
))))
(assert (forall ((|l#0@@2| Bool) (|$l#0#o#0| T@U) ) (! (= (U_2_bool (MapType1Select refType boolType (|lambda#6| |l#0@@2|) |$l#0#o#0|)) |l#0@@2|)
 :qid |unknown.0:0|
 :skolemid |656|
 :pattern ( (MapType1Select refType boolType (|lambda#6| |l#0@@2|) |$l#0#o#0|))
)))
(assert (forall ((|l#0@@3| T@U) (|$l#0#ly#0| T@U) ) (! (= (MapType1Select LayerTypeType HandleTypeType (|lambda#8| |l#0@@3|) |$l#0#ly#0|) |l#0@@3|)
 :qid |Ackermanndfy.54:5|
 :skolemid |658|
 :pattern ( (MapType1Select LayerTypeType HandleTypeType (|lambda#8| |l#0@@3|) |$l#0#ly#0|))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@2 T@U) (|m#0@@4| Int) (|n#0@@5| Int) ) (!  (=> (or (|_module.__default.CurriedAckermann#canCall| |m#0@@4| |n#0@@5|) (and (< 2 $FunctionContextHeight) ($IsGoodHeap $Heap@@2))) (and (|_module.__default.A#canCall| |m#0@@4|) (= (_module.__default.CurriedAckermann |m#0@@4| |n#0@@5|) (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@@2 (_module.__default.A ($LS $LZ) |m#0@@4|) ($Box intType (int_2_U |n#0@@5|))))))))
 :qid |Ackermanndfy.46:16|
 :skolemid |546|
 :pattern ( (_module.__default.CurriedAckermann |m#0@@4| |n#0@@5|) ($IsGoodHeap $Heap@@2))
))))
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
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 TInt) (and (= ($Box intType ($Unbox intType bx@@6)) bx@@6) ($Is intType ($Unbox intType bx@@6) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@6 TInt))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@6 T@U) (|m#0@@5| Int) (|n#0@@6| Int) ) (!  (=> (or (|_module.__default.Ack#canCall| |m#0@@5| |n#0@@6|) (and (< 0 $FunctionContextHeight) (and (<= (LitInt 0) |m#0@@5|) (<= (LitInt 0) |n#0@@6|)))) (and (=> (or (not (= |m#0@@5| (LitInt 0))) (not true)) (and (=> (= |n#0@@6| (LitInt 0)) (|_module.__default.Ack#canCall| (- |m#0@@5| 1) (LitInt 1))) (=> (or (not (= |n#0@@6| (LitInt 0))) (not true)) (and (|_module.__default.Ack#canCall| |m#0@@5| (- |n#0@@6| 1)) (|_module.__default.Ack#canCall| (- |m#0@@5| 1) (_module.__default.Ack $ly@@6 |m#0@@5| (- |n#0@@6| 1))))))) (= (_module.__default.Ack ($LS $ly@@6) |m#0@@5| |n#0@@6|) (ite (= |m#0@@5| (LitInt 0)) (+ |n#0@@6| 1) (ite (= |n#0@@6| (LitInt 0)) (_module.__default.Ack $ly@@6 (- |m#0@@5| 1) (LitInt 1)) (_module.__default.Ack $ly@@6 (- |m#0@@5| 1) (_module.__default.Ack $ly@@6 |m#0@@5| (- |n#0@@6| 1))))))))
 :qid |Ackermanndfy.12:10|
 :skolemid |535|
 :pattern ( (_module.__default.Ack ($LS $ly@@6) |m#0@@5| |n#0@@6|))
))))
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
(assert (forall ((v@@2 T@U) (t0@@9 T@U) (h@@5 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@9) h@@5) (forall ((bx@@7 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@7) ($IsAllocBox bx@@7 t0@@9 h@@5))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@7))
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
(assert (forall (($ly@@7 T@U) (|m#0@@6| Int) ) (! (= (_module.__default.A ($LS $ly@@7) |m#0@@6|) (_module.__default.A $ly@@7 |m#0@@6|))
 :qid |Ackermanndfy.51:16|
 :skolemid |549|
 :pattern ( (_module.__default.A ($LS $ly@@7) |m#0@@6|))
)))
(assert (forall ((|#$T0@@7| T@U) (|#$R@@7| T@U) (|f#0@@4| T@U) ) (! (= ($Is HandleTypeType |f#0@@4| (Tclass._System.___hTotalFunc1 |#$T0@@7| |#$R@@7|))  (and ($Is HandleTypeType |f#0@@4| (Tclass._System.___hPartialFunc1 |#$T0@@7| |#$R@@7|)) (forall ((|x0#0| T@U) ) (!  (=> ($IsBox |x0#0| |#$T0@@7|) (Requires1 |#$T0@@7| |#$R@@7| $OneHeap |f#0@@4| |x0#0|))
 :qid |unknown.0:0|
 :skolemid |408|
))))
 :qid |unknown.0:0|
 :skolemid |409|
 :pattern ( ($Is HandleTypeType |f#0@@4| (Tclass._System.___hTotalFunc1 |#$T0@@7| |#$R@@7|)))
)))
(assert (forall ((|#$T0@@8| T@U) (|#$R@@8| T@U) (|f#0@@5| T@U) ) (! (= ($Is HandleTypeType |f#0@@5| (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|))  (and ($Is HandleTypeType |f#0@@5| (Tclass._System.___hFunc1 |#$T0@@8| |#$R@@8|)) (forall ((|x0#0@@0| T@U) ) (!  (=> ($IsBox |x0#0@@0| |#$T0@@8|) (|Set#Equal| (Reads1 |#$T0@@8| |#$R@@8| $OneHeap |f#0@@5| |x0#0@@0|) |Set#Empty|))
 :qid |unknown.0:0|
 :skolemid |401|
))))
 :qid |unknown.0:0|
 :skolemid |402|
 :pattern ( ($Is HandleTypeType |f#0@@5| (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@8 T@U) ($Heap@@3 T@U) (|f#0@@6| T@U) (|n#0@@7| Int) ) (!  (=> (or (|_module.__default.Iter#canCall| |f#0@@6| |n#0@@7|) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@3) ($Is HandleTypeType |f#0@@6| (Tclass._System.___hTotalFunc1 TInt TInt))))) (and (=> (< (LitInt 0) |n#0@@7|) (|_module.__default.Iter#canCall| |f#0@@6| (- |n#0@@7| 1))) (= (_module.__default.Iter ($LS $ly@@8) |f#0@@6| |n#0@@7|) (ite (<= |n#0@@7| (LitInt 0)) (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@@3 |f#0@@6| ($Box intType (int_2_U (LitInt 1)))))) (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@@3 |f#0@@6| ($Box intType (int_2_U (_module.__default.Iter $ly@@8 |f#0@@6| (- |n#0@@7| 1)))))))))))
 :qid |Ackermanndfy.59:16|
 :skolemid |564|
 :pattern ( (_module.__default.Iter ($LS $ly@@8) |f#0@@6| |n#0@@7|) ($IsGoodHeap $Heap@@3))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@9 T@U) (|m#0@@7| Int) ) (!  (=> (or (|_module.__default.A#canCall| |m#0@@7|) (< 1 $FunctionContextHeight)) (and (=> (< (LitInt 0) |m#0@@7|) (forall ((|$l#3#n#0| Int) ) (!  (and (|_module.__default.A#canCall| (- |m#0@@7| 1)) (|_module.__default.Iter#canCall| (_module.__default.A $ly@@9 (- |m#0@@7| 1)) |$l#3#n#0|))
 :qid |unknown.0:0|
 :skolemid |553|
))) (= (_module.__default.A ($LS $ly@@9) |m#0@@7|) (ite (<= |m#0@@7| (LitInt 0)) (AtLayer HandleTypeType (|lambda#8| (Handle1 (|lambda#4| 1) (|lambda#5| TInt) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false))))) $ly@@9) (AtLayer HandleTypeType (|lambda#13| (- |m#0@@7| 1) (|lambda#5| TInt) (|lambda#7| (SetRef_to_SetBox (|lambda#6| false)))) $ly@@9)))))
 :qid |Ackermanndfy.51:16|
 :skolemid |554|
 :pattern ( (_module.__default.A ($LS $ly@@9) |m#0@@7|))
))))
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
(assert (forall ((|#$T0@@9| T@U) (|#$R@@9| T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@8)) bx@@8) ($Is HandleTypeType ($Unbox HandleTypeType bx@@8) (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|))))
 :qid |unknown.0:0|
 :skolemid |369|
 :pattern ( ($IsBox bx@@8 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|)))
)))
(assert (forall ((|#$T0@@10| T@U) (|#$R@@10| T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@9)) bx@@9) ($Is HandleTypeType ($Unbox HandleTypeType bx@@9) (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|))))
 :qid |unknown.0:0|
 :skolemid |400|
 :pattern ( ($IsBox bx@@9 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|)))
)))
(assert (forall ((|#$T0@@11| T@U) (|#$R@@11| T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@10)) bx@@10) ($Is HandleTypeType ($Unbox HandleTypeType bx@@10) (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|))))
 :qid |unknown.0:0|
 :skolemid |407|
 :pattern ( ($IsBox bx@@10 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|)))
)))
(assert (forall ((|l#0@@4| T@U) (|l#1@@0| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@4| |l#1@@0| |l#2| |l#3|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0@@4|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1@@0| $o@@1) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |653|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@4| |l#1@@0| |l#2| |l#3|) $o@@1 $f))
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
(assert (forall ((|l#0@@5| Int) (|l#1@@1| T@U) (|l#2@@0| T@U) (|$l#1#ly#0| T@U) ) (! (= (MapType1Select LayerTypeType HandleTypeType (|lambda#13| |l#0@@5| |l#1@@1| |l#2@@0|) |$l#1#ly#0|) (Handle1 (|lambda#9| |$l#1#ly#0| (_module.__default.A |$l#1#ly#0| |l#0@@5|)) |l#1@@1| |l#2@@0|))
 :qid |Ackermanndfy.56:18|
 :skolemid |660|
 :pattern ( (MapType1Select LayerTypeType HandleTypeType (|lambda#13| |l#0@@5| |l#1@@1| |l#2@@0|) |$l#1#ly#0|))
)))
(assert (forall ((t0@@11 T@U) (t1@@9 T@U) (heap@@3 T@U) (f@@6 T@U) (bx0@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@3) (and ($IsBox bx0@@6 t0@@11) ($Is HandleTypeType f@@6 (Tclass._System.___hFunc1 t0@@11 t1@@9)))) (|Set#Equal| (Reads1 t0@@11 t1@@9 $OneHeap f@@6 bx0@@6) |Set#Empty|)) (= (Requires1 t0@@11 t1@@9 $OneHeap f@@6 bx0@@6) (Requires1 t0@@11 t1@@9 heap@@3 f@@6 bx0@@6)))
 :qid |unknown.0:0|
 :skolemid |386|
 :pattern ( (Requires1 t0@@11 t1@@9 $OneHeap f@@6 bx0@@6) ($IsGoodHeap heap@@3))
 :pattern ( (Requires1 t0@@11 t1@@9 heap@@3 f@@6 bx0@@6))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@10 T@U) (|m#0@@8| Int) (|n#0@@8| Int) ) (!  (=> (or (|_module.__default.Ack#canCall| (LitInt |m#0@@8|) (LitInt |n#0@@8|)) (and (< 0 $FunctionContextHeight) (and (<= (LitInt 0) |m#0@@8|) (<= (LitInt 0) |n#0@@8|)))) (and (=> (or (not (= (LitInt |m#0@@8|) (LitInt 0))) (not true)) (and (=> (= (LitInt |n#0@@8|) (LitInt 0)) (|_module.__default.Ack#canCall| (LitInt (- |m#0@@8| 1)) (LitInt 1))) (=> (or (not (= (LitInt |n#0@@8|) (LitInt 0))) (not true)) (and (|_module.__default.Ack#canCall| (LitInt |m#0@@8|) (LitInt (- |n#0@@8| 1))) (|_module.__default.Ack#canCall| (LitInt (- |m#0@@8| 1)) (LitInt (_module.__default.Ack ($LS $ly@@10) (LitInt |m#0@@8|) (LitInt (- |n#0@@8| 1))))))))) (= (_module.__default.Ack ($LS $ly@@10) (LitInt |m#0@@8|) (LitInt |n#0@@8|)) (ite (= (LitInt |m#0@@8|) (LitInt 0)) (+ |n#0@@8| 1) (ite (= (LitInt |n#0@@8|) (LitInt 0)) (_module.__default.Ack ($LS $ly@@10) (LitInt (- |m#0@@8| 1)) (LitInt 1)) (_module.__default.Ack ($LS $ly@@10) (LitInt (- |m#0@@8| 1)) (LitInt (_module.__default.Ack ($LS $ly@@10) (LitInt |m#0@@8|) (LitInt (- |n#0@@8| 1))))))))))
 :qid |Ackermanndfy.12:10|
 :weight 3
 :skolemid |536|
 :pattern ( (_module.__default.Ack ($LS $ly@@10) (LitInt |m#0@@8|) (LitInt |n#0@@8|)))
))))
(assert (forall ((bx@@11 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@11 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@11)) bx@@11) ($Is SetType ($Unbox SetType bx@@11) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@11 (TSet t@@3)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (forall ((|l#0@@6| Int) (|l#1@@2| T@U) (|l#2@@1| T@U) (|$l#5#ly#0| T@U) ) (! (= (MapType1Select LayerTypeType HandleTypeType (|lambda#23| |l#0@@6| |l#1@@2| |l#2@@1|) |$l#5#ly#0|) (Handle1 (|lambda#9| |$l#5#ly#0| (Lit HandleTypeType (_module.__default.A |$l#5#ly#0| |l#0@@6|))) |l#1@@2| |l#2@@1|))
 :qid |Ackermanndfy.56:18|
 :skolemid |661|
 :pattern ( (MapType1Select LayerTypeType HandleTypeType (|lambda#23| |l#0@@6| |l#1@@2| |l#2@@1|) |$l#5#ly#0|))
)))
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
(assert (forall ((h@@7 T@U) (v@@3 T@U) ) (! ($IsAlloc intType v@@3 TInt h@@7)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@3 TInt h@@7))
)))
(assert (forall ((|l#0@@7| T@U) (|$l#0#heap#0@@1| T@U) (|$l#0#n#0@@1| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#7| |l#0@@7|) |$l#0#heap#0@@1| |$l#0#n#0@@1|) |l#0@@7|)
 :qid |Ackermanndfy.54:5|
 :skolemid |657|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#7| |l#0@@7|) |$l#0#heap#0@@1| |$l#0#n#0@@1|))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is intType v@@4 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@4 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |m#0@@9| () Int)
(declare-fun |n#0@@9| () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun |##m#1_1_1@0| () Int)
(declare-fun |##m#1_1_2@0| () Int)
(declare-fun |##f#1_1_0@0| () T@U)
(declare-fun |##n#1_1_0@0| () Int)
(declare-fun |##m#1_0_1@0| () Int)
(declare-fun |##f#1_0_0@0| () T@U)
(declare-fun |##n#1_0_1@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@4 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id Impl$$_module.__default.CurriedIsTheSame)
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
 (=> (= (ControlFlow 0 0) 10) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= (_module.__default.CurriedAckermann |m#0@@9| |n#0@@9|) (_module.__default.Ack ($LS ($LS $LZ)) |m#0@@9| |n#0@@9|)))))
(let ((anon6_Else_correct  (=> (and (and (and (and (or (not (= |n#0@@9| (LitInt 0))) (not true)) ($IsAlloc intType (int_2_U |m#0@@9|) TInt $Heap@0)) (and (|_module.__default.A#canCall| |m#0@@9|) (= |##m#1_1_1@0| (- |m#0@@9| 1)))) (and (and ($IsAlloc intType (int_2_U |##m#1_1_1@0|) TInt $Heap@0) (|_module.__default.A#canCall| (- |m#0@@9| 1))) (and (= |##m#1_1_2@0| (- |m#0@@9| 1)) ($IsAlloc intType (int_2_U |##m#1_1_2@0|) TInt $Heap@0)))) (and (and (and (|_module.__default.A#canCall| (- |m#0@@9| 1)) (= |##f#1_1_0@0| (_module.__default.A ($LS $LZ) (- |m#0@@9| 1)))) (and ($IsAlloc HandleTypeType |##f#1_1_0@0| (Tclass._System.___hTotalFunc1 TInt TInt) $Heap@0) (= |##n#1_1_0@0| (- |n#0@@9| 1)))) (and (and ($IsAlloc intType (int_2_U |##n#1_1_0@0|) TInt $Heap@0) (|_module.__default.Iter#canCall| (_module.__default.A ($LS $LZ) (- |m#0@@9| 1)) (- |n#0@@9| 1))) (and (|_module.__default.A#canCall| |m#0@@9|) (and (|_module.__default.A#canCall| (- |m#0@@9| 1)) (and (|_module.__default.A#canCall| (- |m#0@@9| 1)) (|_module.__default.Iter#canCall| (_module.__default.A ($LS $LZ) (- |m#0@@9| 1)) (- |n#0@@9| 1)))))))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (= (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@0 (_module.__default.A ($LS ($LS $LZ)) |m#0@@9|) ($Box intType (int_2_U |n#0@@9|))))) (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@0 (_module.__default.A ($LS ($LS $LZ)) (- |m#0@@9| 1)) ($Box intType (int_2_U (_module.__default.Iter ($LS ($LS $LZ)) (_module.__default.A ($LS ($LS $LZ)) (- |m#0@@9| 1)) (- |n#0@@9| 1))))))))) (=> (and (= (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@0 (_module.__default.A ($LS $LZ) |m#0@@9|) ($Box intType (int_2_U |n#0@@9|))))) (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@0 (_module.__default.A ($LS $LZ) (- |m#0@@9| 1)) ($Box intType (int_2_U (_module.__default.Iter ($LS $LZ) (_module.__default.A ($LS $LZ) (- |m#0@@9| 1)) (- |n#0@@9| 1)))))))) (= (ControlFlow 0 6) 2)) GeneratedUnifiedExit_correct)))))
(let ((anon6_Then_correct  (=> (and (= |n#0@@9| (LitInt 0)) ($IsAlloc intType (int_2_U |m#0@@9|) TInt $Heap@0)) (=> (and (and ($IsAlloc intType (int_2_U |n#0@@9|) TInt $Heap@0) (|_module.__default.CurriedAckermann#canCall| |m#0@@9| |n#0@@9|)) (and (= |##m#1_0_1@0| (- |m#0@@9| 1)) ($IsAlloc intType (int_2_U |##m#1_0_1@0|) TInt $Heap@0))) (=> (and (and (and (|_module.__default.A#canCall| (- |m#0@@9| 1)) (= |##f#1_0_0@0| (_module.__default.A ($LS $LZ) (- |m#0@@9| 1)))) (and ($IsAlloc HandleTypeType |##f#1_0_0@0| (Tclass._System.___hTotalFunc1 TInt TInt) $Heap@0) (= |##n#1_0_1@0| (LitInt 0)))) (and (and ($IsAlloc intType (int_2_U |##n#1_0_1@0|) TInt $Heap@0) (|_module.__default.Iter#canCall| (_module.__default.A ($LS $LZ) (- |m#0@@9| 1)) (LitInt 0))) (and (|_module.__default.CurriedAckermann#canCall| |m#0@@9| |n#0@@9|) (and (|_module.__default.A#canCall| (- |m#0@@9| 1)) (|_module.__default.Iter#canCall| (_module.__default.A ($LS $LZ) (- |m#0@@9| 1)) (LitInt 0)))))) (and (=> (= (ControlFlow 0 4) (- 0 5)) (= (_module.__default.CurriedAckermann |m#0@@9| |n#0@@9|) (_module.__default.Iter ($LS ($LS $LZ)) (_module.__default.A ($LS ($LS $LZ)) (- |m#0@@9| 1)) (LitInt 0)))) (=> (and (= (_module.__default.CurriedAckermann |m#0@@9| |n#0@@9|) (_module.__default.Iter ($LS $LZ) (_module.__default.A ($LS $LZ) (- |m#0@@9| 1)) (LitInt 0))) (= (ControlFlow 0 4) 2)) GeneratedUnifiedExit_correct)))))))
(let ((anon5_Else_correct  (=> (or (not (= |m#0@@9| (LitInt 0))) (not true)) (and (=> (= (ControlFlow 0 8) 4) anon6_Then_correct) (=> (= (ControlFlow 0 8) 6) anon6_Else_correct)))))
(let ((anon5_Then_correct  (=> (and (= |m#0@@9| (LitInt 0)) (= (ControlFlow 0 3) 2)) GeneratedUnifiedExit_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@4 alloc false)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap@@4 $Heap@0) (forall ((|$ih#m0#0| Int) (|$ih#n0#0| Int) ) (!  (=> (and (and (and (<= (LitInt 0) |$ih#m0#0|) (<= (LitInt 0) |$ih#n0#0|)) (U_2_bool (Lit boolType (bool_2_U true)))) (or (and (<= 0 |$ih#m0#0|) (< |$ih#m0#0| |m#0@@9|)) (and (= |$ih#m0#0| |m#0@@9|) (and (<= 0 |$ih#n0#0|) (< |$ih#n0#0| |n#0@@9|))))) (= (_module.__default.CurriedAckermann |$ih#m0#0| |$ih#n0#0|) (_module.__default.Ack ($LS $LZ) |$ih#m0#0| |$ih#n0#0|)))
 :qid |Ackermanndfy.71:24|
 :skolemid |568|
 :pattern ( (_module.__default.Ack ($LS $LZ) |$ih#m0#0| |$ih#n0#0|))
 :pattern ( (_module.__default.CurriedAckermann |$ih#m0#0| |$ih#n0#0|))
)))) (and (=> (= (ControlFlow 0 9) 3) anon5_Then_correct) (=> (= (ControlFlow 0 9) 8) anon5_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@4) ($IsHeapAnchor $Heap@@4)) (=> (and (and (<= (LitInt 0) |m#0@@9|) (<= (LitInt 0) |n#0@@9|)) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 10) 9))) anon0_correct))))
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
