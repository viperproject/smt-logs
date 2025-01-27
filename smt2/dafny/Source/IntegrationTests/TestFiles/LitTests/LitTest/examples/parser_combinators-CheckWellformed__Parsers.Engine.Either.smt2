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
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun Tagclass._System.___hPartialFunc1 () T@U)
(declare-fun Tagclass._System.___hTotalFunc1 () T@U)
(declare-fun |##Parsers.Either.Left| () T@U)
(declare-fun Tagclass.Parsers.Either () T@U)
(declare-fun |##Parsers.Either.Right| () T@U)
(declare-fun |##Parsers.ParseResult.Failure| () T@U)
(declare-fun Tagclass.Parsers.ParseResult () T@U)
(declare-fun |##Parsers.ParseResult.Success| () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
(declare-fun |tytagFamily$_#PartialFunc1| () T@U)
(declare-fun |tytagFamily$_#TotalFunc1| () T@U)
(declare-fun tytagFamily$Either () T@U)
(declare-fun tytagFamily$ParseResult () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Parsers.ParseResult.MapResult (T@U T@U T@U T@U) T@U)
(declare-fun Tclass.Parsers.ParseResult (T@U) T@U)
(declare-fun |Parsers.ParseResult.MapResult#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hTotalFunc1 (T@U T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
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
(declare-fun |lambda#37| (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun Parsers.Engine.Either (T@U T@U Bool T@U T@U) T@U)
(declare-fun |Parsers.Engine.Either#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun Tclass._System.___hPartialFunc1 (T@U T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Parsers.ParseResult.Failure_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun Tclass.Parsers.Either (T@U T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun AtLayer (T@T T@U T@U) T@U)
(declare-fun |lambda#6| (T@U) T@U)
(declare-fun |lambda#36| () T@U)
(declare-fun |lambda#5| (T@U) T@U)
(declare-fun SetRef_to_SetBox (T@U) T@U)
(declare-fun |lambda#4| (Bool) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun $LZ () T@U)
(declare-fun |lambda#50| (T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun |lambda#47| (T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#Parsers.ParseResult.Failure| () T@U)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun null () T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun $OneHeap () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun |#Parsers.ParseResult.Success| (Int T@U) T@U)
(declare-fun Parsers.Either.Left_q (T@U) Bool)
(declare-fun Parsers.Either.Right_q (T@U) Bool)
(declare-fun Parsers.ParseResult.Success_q (T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun Parsers.ParseResult.t (T@U) T@U)
(declare-fun Parsers.ParseResult.pos (T@U) Int)
(declare-fun LayerTypeType () T@T)
(declare-fun |#Parsers.Either.Left| (T@U) T@U)
(declare-fun |#Parsers.Either.Right| (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |lambda#46| (T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_1 (T@U) T@U)
(declare-fun Tclass.Parsers.Either_0 (T@U) T@U)
(declare-fun Tclass.Parsers.Either_1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Parsers.Either.l (T@U) T@U)
(declare-fun Parsers.Either.r (T@U) T@U)
(declare-fun Tclass.Parsers.ParseResult_0 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
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
(assert (distinct TagSet alloc Tagclass._System.nat Tagclass._System.object? Tagclass._System.object Tagclass._System.___hFunc1 Tagclass._System.___hPartialFunc1 Tagclass._System.___hTotalFunc1 |##Parsers.Either.Left| Tagclass.Parsers.Either |##Parsers.Either.Right| |##Parsers.ParseResult.Failure| Tagclass.Parsers.ParseResult |##Parsers.ParseResult.Success| tytagFamily$nat tytagFamily$object |tytagFamily$_#Func1| |tytagFamily$_#PartialFunc1| |tytagFamily$_#TotalFunc1| tytagFamily$Either tytagFamily$ParseResult)
)
(assert  (and (= (Ctor DatatypeTypeType) 3) (= (Ctor HandleTypeType) 4)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (Parsers.ParseResult$T T@U) (|Parsers.ParseResult.MapResult$T'| T@U) (this T@U) (|f#0| T@U) ) (!  (=> (and (or (|Parsers.ParseResult.MapResult#canCall| Parsers.ParseResult$T |Parsers.ParseResult.MapResult$T'| this |f#0|) (and (< 1 $FunctionContextHeight) (and ($IsAlloc DatatypeTypeType this (Tclass.Parsers.ParseResult Parsers.ParseResult$T) $Heap) (and ($Is HandleTypeType |f#0| (Tclass._System.___hTotalFunc1 Parsers.ParseResult$T |Parsers.ParseResult.MapResult$T'|)) ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hTotalFunc1 Parsers.ParseResult$T |Parsers.ParseResult.MapResult$T'|) $Heap))))) ($IsGoodHeap $Heap)) ($IsAlloc DatatypeTypeType (Parsers.ParseResult.MapResult Parsers.ParseResult$T |Parsers.ParseResult.MapResult$T'| this |f#0|) (Tclass.Parsers.ParseResult |Parsers.ParseResult.MapResult$T'|) $Heap))
 :qid |parsercombinatorsdfy.83:14|
 :skolemid |605|
 :pattern ( ($IsAlloc DatatypeTypeType (Parsers.ParseResult.MapResult Parsers.ParseResult$T |Parsers.ParseResult.MapResult$T'| this |f#0|) (Tclass.Parsers.ParseResult |Parsers.ParseResult.MapResult$T'|) $Heap))
))))
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
(assert (forall ((|l#0| T@U) (|$l#4#heap#0| T@U) (|$l#4#r#0| T@U) ) (! (= (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#37| |l#0|) |$l#4#heap#0| |$l#4#r#0|)) ($IsBox |$l#4#r#0| |l#0|))
 :qid |unknown.0:0|
 :skolemid |1432|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#37| |l#0|) |$l#4#heap#0| |$l#4#r#0|))
)))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((Parsers.Engine.Either$L T@U) (Parsers.Engine.Either$R T@U) ($Heap@@0 T@U) (|left#0| T@U) (|right#0| T@U) ) (!  (=> (or (|Parsers.Engine.Either#canCall| Parsers.Engine.Either$L Parsers.Engine.Either$R |left#0| |right#0|) (and (< 2 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@0) ($Is HandleTypeType |left#0| (Tclass._System.___hPartialFunc1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L)))) ($Is HandleTypeType |right#0| (Tclass._System.___hPartialFunc1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$R)))))) (and (forall ((|$l#2#pos#0| T@U) (|$l#2#heap#0| T@U) ) (!  (=> (and (<= (LitInt 0) (U_2_int |$l#2#pos#0|)) ($IsGoodHeap |$l#2#heap#0|)) (and (and true (=> (Requires1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L) $Heap@@0 |left#0| ($Box intType |$l#2#pos#0|)) (=> (Parsers.ParseResult.Failure_q ($Unbox DatatypeTypeType (Apply1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L) $Heap@@0 |left#0| ($Box intType |$l#2#pos#0|)))) true))) (=> (and (Requires1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L) $Heap@@0 |left#0| ($Box intType |$l#2#pos#0|)) (=> (Parsers.ParseResult.Failure_q ($Unbox DatatypeTypeType (Apply1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L) $Heap@@0 |left#0| ($Box intType |$l#2#pos#0|)))) (Requires1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$R) $Heap@@0 |right#0| ($Box intType |$l#2#pos#0|)))) (=> (Parsers.ParseResult.Failure_q ($Unbox DatatypeTypeType (Apply1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L) |$l#2#heap#0| |left#0| ($Box intType |$l#2#pos#0|)))) (|Parsers.ParseResult.MapResult#canCall| Parsers.Engine.Either$R (Tclass.Parsers.Either Parsers.Engine.Either$L Parsers.Engine.Either$R) ($Unbox DatatypeTypeType (Apply1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$R) |$l#2#heap#0| |right#0| ($Box intType |$l#2#pos#0|))) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 |lambda#36| (|lambda#37| Parsers.Engine.Either$R) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ))))))))
 :qid |unknown.0:0|
 :skolemid |664|
)) (= (Parsers.Engine.Either Parsers.Engine.Either$L Parsers.Engine.Either$R true |left#0| |right#0|) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#50| Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L) |left#0| Parsers.Engine.Either$R (Tclass.Parsers.Either Parsers.Engine.Either$L Parsers.Engine.Either$R) Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$R) |right#0| (|lambda#6| (Handle1 |lambda#36| (|lambda#37| Parsers.Engine.Either$R) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L) |left#0| Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L) |left#0| (|lambda#47| Tclass._System.nat Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L) |left#0| Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L) |left#0| Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$R) |right#0|) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false)))) ($LS $LZ))))))
 :qid |unknown.0:0|
 :skolemid |665|
 :pattern ( (Parsers.Engine.Either Parsers.Engine.Either$L Parsers.Engine.Either$R true |left#0| |right#0|) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (DatatypeCtorId |#Parsers.ParseResult.Failure|) |##Parsers.ParseResult.Failure|))
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
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h@@0) ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
)))
(assert (forall ((Parsers.ParseResult$T@@0 T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) ($IsAlloc DatatypeTypeType |#Parsers.ParseResult.Failure| (Tclass.Parsers.ParseResult Parsers.ParseResult$T@@0) $h@@1))
 :qid |unknown.0:0|
 :skolemid |571|
 :pattern ( ($IsAlloc DatatypeTypeType |#Parsers.ParseResult.Failure| (Tclass.Parsers.ParseResult Parsers.ParseResult$T@@0) $h@@1))
)))
(assert (forall ((Parsers.ParseResult$T@@1 T@U) ) (! ($Is DatatypeTypeType |#Parsers.ParseResult.Failure| (Tclass.Parsers.ParseResult Parsers.ParseResult$T@@1))
 :qid |unknown.0:0|
 :skolemid |570|
 :pattern ( ($Is DatatypeTypeType |#Parsers.ParseResult.Failure| (Tclass.Parsers.ParseResult Parsers.ParseResult$T@@1)))
)))
(assert (forall (($o T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o Tclass._System.object? $h@@2)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@2 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o Tclass._System.object? $h@@2))
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
(assert (forall ((Parsers.ParseResult$T@@2 T@U) (|a#18#0#0| Int) (|a#18#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#Parsers.ParseResult.Success| |a#18#0#0| |a#18#1#0|) (Tclass.Parsers.ParseResult Parsers.ParseResult$T@@2))  (and ($Is intType (int_2_U |a#18#0#0|) Tclass._System.nat) ($IsBox |a#18#1#0| Parsers.ParseResult$T@@2)))
 :qid |unknown.0:0|
 :skolemid |576|
 :pattern ( ($Is DatatypeTypeType (|#Parsers.ParseResult.Success| |a#18#0#0| |a#18#1#0|) (Tclass.Parsers.ParseResult Parsers.ParseResult$T@@2)))
)))
(assert (forall ((d T@U) ) (! (= (Parsers.Either.Left_q d) (= (DatatypeCtorId d) |##Parsers.Either.Left|))
 :qid |unknown.0:0|
 :skolemid |535|
 :pattern ( (Parsers.Either.Left_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (Parsers.Either.Right_q d@@0) (= (DatatypeCtorId d@@0) |##Parsers.Either.Right|))
 :qid |unknown.0:0|
 :skolemid |550|
 :pattern ( (Parsers.Either.Right_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (Parsers.ParseResult.Failure_q d@@1) (= (DatatypeCtorId d@@1) |##Parsers.ParseResult.Failure|))
 :qid |unknown.0:0|
 :skolemid |565|
 :pattern ( (Parsers.ParseResult.Failure_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (Parsers.ParseResult.Success_q d@@2) (= (DatatypeCtorId d@@2) |##Parsers.ParseResult.Success|))
 :qid |unknown.0:0|
 :skolemid |573|
 :pattern ( (Parsers.ParseResult.Success_q d@@2))
)))
(assert (forall ((|l#0@@0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) (|l#5| T@U) (|l#6| T@U) (|l#7| T@U) (|l#8| T@U) (|l#9| T@U) (|$l#0#heap#0| T@U) (|$l#0#pos#0| T@U) ) (! (= (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#47| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6| |l#7| |l#8| |l#9|) |$l#0#heap#0| |$l#0#pos#0|))  (and ($IsBox |$l#0#pos#0| |l#0@@0|) (and (Requires1 |l#1| |l#2| |$l#0#heap#0| |l#3| |$l#0#pos#0|) (=> (Parsers.ParseResult.Failure_q ($Unbox DatatypeTypeType (Apply1 |l#4| |l#5| |$l#0#heap#0| |l#6| ($Box intType ($Unbox intType |$l#0#pos#0|))))) (Requires1 |l#7| |l#8| |$l#0#heap#0| |l#9| |$l#0#pos#0|)))))
 :qid |unknown.0:0|
 :skolemid |1434|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#47| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6| |l#7| |l#8| |l#9|) |$l#0#heap#0| |$l#0#pos#0|))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (Parsers.ParseResult.Success_q d@@3) (exists ((|a#17#0#0| Int) (|a#17#1#0| T@U) ) (! (= d@@3 (|#Parsers.ParseResult.Success| |a#17#0#0| |a#17#1#0|))
 :qid |parsercombinatorsdfy.73:48|
 :skolemid |574|
)))
 :qid |unknown.0:0|
 :skolemid |575|
 :pattern ( (Parsers.ParseResult.Success_q d@@3))
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
(assert (forall ((d@@4 T@U) ) (!  (=> (Parsers.ParseResult.Failure_q d@@4) (= d@@4 |#Parsers.ParseResult.Failure|))
 :qid |unknown.0:0|
 :skolemid |566|
 :pattern ( (Parsers.ParseResult.Failure_q d@@4))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((Parsers.ParseResult$T@@3 T@U) (|Parsers.ParseResult.MapResult$T'@@0| T@U) ($Heap@@1 T@U) (this@@0 T@U) (|f#0@@0| T@U) ) (!  (=> (or (|Parsers.ParseResult.MapResult#canCall| Parsers.ParseResult$T@@3 |Parsers.ParseResult.MapResult$T'@@0| (Lit DatatypeTypeType this@@0) (Lit HandleTypeType |f#0@@0|)) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@1) (and ($Is DatatypeTypeType this@@0 (Tclass.Parsers.ParseResult Parsers.ParseResult$T@@3)) ($IsAlloc DatatypeTypeType this@@0 (Tclass.Parsers.ParseResult Parsers.ParseResult$T@@3) $Heap@@1))) ($Is HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc1 Parsers.ParseResult$T@@3 |Parsers.ParseResult.MapResult$T'@@0|))))) (= (Parsers.ParseResult.MapResult Parsers.ParseResult$T@@3 |Parsers.ParseResult.MapResult$T'@@0| (Lit DatatypeTypeType this@@0) (Lit HandleTypeType |f#0@@0|)) (ite (Parsers.ParseResult.Failure_q (Lit DatatypeTypeType this@@0)) |#Parsers.ParseResult.Failure| (let ((|t#4| (Lit BoxType (Parsers.ParseResult.t (Lit DatatypeTypeType this@@0)))))
(let ((|pos#4| (LitInt (Parsers.ParseResult.pos (Lit DatatypeTypeType this@@0)))))
(|#Parsers.ParseResult.Success| |pos#4| (Apply1 Parsers.ParseResult$T@@3 |Parsers.ParseResult.MapResult$T'@@0| $Heap@@1 (Lit HandleTypeType |f#0@@0|) |t#4|)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |609|
 :pattern ( (Parsers.ParseResult.MapResult Parsers.ParseResult$T@@3 |Parsers.ParseResult.MapResult$T'@@0| (Lit DatatypeTypeType this@@0) (Lit HandleTypeType |f#0@@0|)) ($IsGoodHeap $Heap@@1))
))))
(assert (= (Ctor LayerTypeType) 10))
(assert (forall ((f@@3 T@U) (ly T@U) (A T@T) ) (! (= (AtLayer A f@@3 ly) (MapType1Select LayerTypeType A f@@3 ly))
 :qid |DafnyPreludebpl.501:18|
 :skolemid |101|
 :pattern ( (AtLayer A f@@3 ly))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (Parsers.Either.Left_q d@@5) (exists ((|a#1#0#0| T@U) ) (! (= d@@5 (|#Parsers.Either.Left| |a#1#0#0|))
 :qid |parsercombinatorsdfy.63:34|
 :skolemid |536|
)))
 :qid |unknown.0:0|
 :skolemid |537|
 :pattern ( (Parsers.Either.Left_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (Parsers.Either.Right_q d@@6) (exists ((|a#7#0#0| T@U) ) (! (= d@@6 (|#Parsers.Either.Right| |a#7#0#0|))
 :qid |parsercombinatorsdfy.63:48|
 :skolemid |551|
)))
 :qid |unknown.0:0|
 :skolemid |552|
 :pattern ( (Parsers.Either.Right_q d@@6))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert ($IsGoodHeap $OneHeap))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((Parsers.Engine.Either$L@@0 T@U) (Parsers.Engine.Either$R@@0 T@U) ($reveal Bool) ($Heap@@2 T@U) (|left#0@@0| T@U) (|right#0@@0| T@U) ) (!  (=> (or (|Parsers.Engine.Either#canCall| Parsers.Engine.Either$L@@0 Parsers.Engine.Either$R@@0 |left#0@@0| |right#0@@0|) (and (< 2 $FunctionContextHeight) (and (and ($Is HandleTypeType |left#0@@0| (Tclass._System.___hPartialFunc1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@0))) ($IsAlloc HandleTypeType |left#0@@0| (Tclass._System.___hPartialFunc1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@0)) $Heap@@2)) (and ($Is HandleTypeType |right#0@@0| (Tclass._System.___hPartialFunc1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$R@@0))) ($IsAlloc HandleTypeType |right#0@@0| (Tclass._System.___hPartialFunc1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$R@@0)) $Heap@@2))))) ($IsAlloc HandleTypeType (Parsers.Engine.Either Parsers.Engine.Either$L@@0 Parsers.Engine.Either$R@@0 $reveal |left#0@@0| |right#0@@0|) (Tclass._System.___hPartialFunc1 Tclass._System.nat (Tclass.Parsers.ParseResult (Tclass.Parsers.Either Parsers.Engine.Either$L@@0 Parsers.Engine.Either$R@@0))) $Heap@@2))
 :qid |unknown.0:0|
 :skolemid |662|
 :pattern ( ($IsAlloc HandleTypeType (Parsers.Engine.Either Parsers.Engine.Either$L@@0 Parsers.Engine.Either$R@@0 $reveal |left#0@@0| |right#0@@0|) (Tclass._System.___hPartialFunc1 Tclass._System.nat (Tclass.Parsers.ParseResult (Tclass.Parsers.Either Parsers.Engine.Either$L@@0 Parsers.Engine.Either$R@@0))) $Heap@@2))
))))
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
(assert (forall ((Parsers.ParseResult$T@@4 T@U) ) (!  (and (= (Tag (Tclass.Parsers.ParseResult Parsers.ParseResult$T@@4)) Tagclass.Parsers.ParseResult) (= (TagFamily (Tclass.Parsers.ParseResult Parsers.ParseResult$T@@4)) tytagFamily$ParseResult))
 :qid |unknown.0:0|
 :skolemid |567|
 :pattern ( (Tclass.Parsers.ParseResult Parsers.ParseResult$T@@4))
)))
(assert (forall ((s T@U) (bx@@4 T@U) ) (! (= (|Set#IsMember| (SetRef_to_SetBox s) bx@@4) (U_2_bool (MapType1Select refType boolType s ($Unbox refType bx@@4))))
 :qid |DafnyPreludebpl.370:15|
 :skolemid |82|
 :pattern ( (|Set#IsMember| (SetRef_to_SetBox s) bx@@4))
)))
(assert (forall ((|#$T0| T@U) (|#$R| T@U) (|f#0@@1| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@1| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h@@3) ($IsAlloc HandleTypeType |f#0@@1| (Tclass._System.___hFunc1 |#$T0| |#$R|) $h@@3))
 :qid |unknown.0:0|
 :skolemid |403|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@1| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h@@3))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$R@@0| T@U) (|f#0@@2| T@U) ($h@@4 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@2| (Tclass._System.___hTotalFunc1 |#$T0@@0| |#$R@@0|) $h@@4) ($IsAlloc HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc1 |#$T0@@0| |#$R@@0|) $h@@4))
 :qid |unknown.0:0|
 :skolemid |410|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@2| (Tclass._System.___hTotalFunc1 |#$T0@@0| |#$R@@0|) $h@@4))
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
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._System.object)  (and ($Is refType |c#0@@0| Tclass._System.object?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@0| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@0| Tclass._System.object?))
)))
(assert (forall ((f@@8 T@U) (t0@@12 T@U) (t1@@11 T@U) (h@@5 T@U) ) (!  (=> (and ($IsGoodHeap h@@5) ($IsAlloc HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@12 t1@@11) h@@5)) (forall ((bx0@@8 T@U) ) (!  (=> (and ($IsAllocBox bx0@@8 t0@@12 h@@5) (Requires1 t0@@12 t1@@11 h@@5 f@@8 bx0@@8)) ($IsAllocBox (Apply1 t0@@12 t1@@11 h@@5 f@@8 bx0@@8) t1@@11 h@@5))
 :qid |unknown.0:0|
 :skolemid |395|
 :pattern ( (Apply1 t0@@12 t1@@11 h@@5 f@@8 bx0@@8))
)))
 :qid |unknown.0:0|
 :skolemid |396|
 :pattern ( ($IsAlloc HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@12 t1@@11) h@@5))
)))
(assert (forall ((|l#0@@1| Bool) (|$l#0#o#0| T@U) ) (! (= (U_2_bool (MapType1Select refType boolType (|lambda#4| |l#0@@1|) |$l#0#o#0|)) |l#0@@1|)
 :qid |unknown.0:0|
 :skolemid |1428|
 :pattern ( (MapType1Select refType boolType (|lambda#4| |l#0@@1|) |$l#0#o#0|))
)))
(assert (forall ((|l#0@@2| T@U) (|$l#0#ly#0| T@U) ) (! (= (MapType1Select LayerTypeType HandleTypeType (|lambda#6| |l#0@@2|) |$l#0#ly#0|) |l#0@@2|)
 :qid |parsercombinatorsdfy.119:7|
 :skolemid |1430|
 :pattern ( (MapType1Select LayerTypeType HandleTypeType (|lambda#6| |l#0@@2|) |$l#0#ly#0|))
)))
(assert (forall ((|l#0@@3| T@U) (|l#1@@0| T@U) (|l#2@@0| T@U) (|l#3@@0| T@U) (|l#4@@0| T@U) (|l#5@@0| T@U) (|l#6@@0| T@U) (|l#7@@0| T@U) (|l#8@@0| T@U) (|l#9@@0| T@U) (|l#10| T@U) (|l#11| T@U) (|l#12| T@U) (|l#13| T@U) (|l#14| T@U) (|l#15| T@U) (|l#16| T@U) (|$l#0#ly#0@@0| T@U) ) (! (= (MapType1Select LayerTypeType HandleTypeType (|lambda#50| |l#0@@3| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0| |l#6@@0| |l#7@@0| |l#8@@0| |l#9@@0| |l#10| |l#11| |l#12| |l#13| |l#14| |l#15| |l#16|) |$l#0#ly#0@@0|) (Handle1 (|lambda#46| |l#0@@3| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0| |l#6@@0| |l#7@@0| (Lit HandleTypeType (AtLayer HandleTypeType |l#8@@0| |$l#0#ly#0@@0|)) |l#9@@0| |l#10| |l#11| |l#12| |l#13| |l#14|) |l#15| |l#16|))
 :qid |unknown.0:0|
 :skolemid |1435|
 :pattern ( (MapType1Select LayerTypeType HandleTypeType (|lambda#50| |l#0@@3| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0| |l#6@@0| |l#7@@0| |l#8@@0| |l#9@@0| |l#10| |l#11| |l#12| |l#13| |l#14| |l#15| |l#16|) |$l#0#ly#0@@0|))
)))
(assert (forall ((Parsers.Either$L T@U) (Parsers.Either$R T@U) (d@@7 T@U) ) (!  (=> ($Is DatatypeTypeType d@@7 (Tclass.Parsers.Either Parsers.Either$L Parsers.Either$R)) (or (Parsers.Either.Left_q d@@7) (Parsers.Either.Right_q d@@7)))
 :qid |unknown.0:0|
 :skolemid |561|
 :pattern ( (Parsers.Either.Right_q d@@7) ($Is DatatypeTypeType d@@7 (Tclass.Parsers.Either Parsers.Either$L Parsers.Either$R)))
 :pattern ( (Parsers.Either.Left_q d@@7) ($Is DatatypeTypeType d@@7 (Tclass.Parsers.Either Parsers.Either$L Parsers.Either$R)))
)))
(assert (forall ((Parsers.ParseResult$T@@5 T@U) (d@@8 T@U) ) (!  (=> ($Is DatatypeTypeType d@@8 (Tclass.Parsers.ParseResult Parsers.ParseResult$T@@5)) (or (Parsers.ParseResult.Failure_q d@@8) (Parsers.ParseResult.Success_q d@@8)))
 :qid |unknown.0:0|
 :skolemid |586|
 :pattern ( (Parsers.ParseResult.Success_q d@@8) ($Is DatatypeTypeType d@@8 (Tclass.Parsers.ParseResult Parsers.ParseResult$T@@5)))
 :pattern ( (Parsers.ParseResult.Failure_q d@@8) ($Is DatatypeTypeType d@@8 (Tclass.Parsers.ParseResult Parsers.ParseResult$T@@5)))
)))
(assert (forall ((d@@9 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (Parsers.ParseResult.Success_q d@@9) (exists ((Parsers.ParseResult$T@@6 T@U) ) (! ($IsAlloc DatatypeTypeType d@@9 (Tclass.Parsers.ParseResult Parsers.ParseResult$T@@6) $h@@5)
 :qid |unknown.0:0|
 :skolemid |578|
 :pattern ( ($IsAlloc DatatypeTypeType d@@9 (Tclass.Parsers.ParseResult Parsers.ParseResult$T@@6) $h@@5))
)))) ($IsAlloc intType (int_2_U (Parsers.ParseResult.pos d@@9)) Tclass._System.nat $h@@5))
 :qid |unknown.0:0|
 :skolemid |579|
 :pattern ( ($IsAlloc intType (int_2_U (Parsers.ParseResult.pos d@@9)) Tclass._System.nat $h@@5))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a b))
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
(assert (forall ((v@@3 T@U) (t0@@15 T@U) (h@@8 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@15) h@@8) (forall ((bx@@8 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@8) ($IsAllocBox bx@@8 t0@@15 h@@8))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@8))
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
(assert (forall ((Parsers.Either$L@@0 T@U) (Parsers.Either$R@@0 T@U) ) (! (= (Tclass.Parsers.Either_0 (Tclass.Parsers.Either Parsers.Either$L@@0 Parsers.Either$R@@0)) Parsers.Either$L@@0)
 :qid |unknown.0:0|
 :skolemid |539|
 :pattern ( (Tclass.Parsers.Either Parsers.Either$L@@0 Parsers.Either$R@@0))
)))
(assert (forall ((Parsers.Either$L@@1 T@U) (Parsers.Either$R@@1 T@U) ) (! (= (Tclass.Parsers.Either_1 (Tclass.Parsers.Either Parsers.Either$L@@1 Parsers.Either$R@@1)) Parsers.Either$R@@1)
 :qid |unknown.0:0|
 :skolemid |540|
 :pattern ( (Tclass.Parsers.Either Parsers.Either$L@@1 Parsers.Either$R@@1))
)))
(assert (forall ((|a#16#0#0| Int) (|a#16#1#0| T@U) ) (! (= (DatatypeCtorId (|#Parsers.ParseResult.Success| |a#16#0#0| |a#16#1#0|)) |##Parsers.ParseResult.Success|)
 :qid |parsercombinatorsdfy.73:48|
 :skolemid |572|
 :pattern ( (|#Parsers.ParseResult.Success| |a#16#0#0| |a#16#1#0|))
)))
(assert (forall ((|a#20#0#0| Int) (|a#20#1#0| T@U) ) (! (= (Parsers.ParseResult.pos (|#Parsers.ParseResult.Success| |a#20#0#0| |a#20#1#0|)) |a#20#0#0|)
 :qid |parsercombinatorsdfy.73:48|
 :skolemid |582|
 :pattern ( (|#Parsers.ParseResult.Success| |a#20#0#0| |a#20#1#0|))
)))
(assert (forall ((|a#21#0#0| Int) (|a#21#1#0| T@U) ) (! (= (Parsers.ParseResult.t (|#Parsers.ParseResult.Success| |a#21#0#0| |a#21#1#0|)) |a#21#1#0|)
 :qid |parsercombinatorsdfy.73:48|
 :skolemid |583|
 :pattern ( (|#Parsers.ParseResult.Success| |a#21#0#0| |a#21#1#0|))
)))
(assert (forall (($o@@0 T@U) ) (! ($Is refType $o@@0 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@0 Tclass._System.object?))
)))
(assert (forall ((|l#0@@4| T@U) (|l#1@@1| T@U) (|l#2@@1| T@U) (|l#3@@1| T@U) (|l#4@@1| T@U) (|l#5@@1| T@U) (|l#6@@1| T@U) (|l#7@@1| T@U) (|l#8@@1| T@U) (|l#9@@1| T@U) (|l#10@@0| T@U) (|l#11@@0| T@U) (|l#12@@0| T@U) (|l#13@@0| T@U) (|l#14@@0| T@U) (|$l#0#heap#0@@0| T@U) (|$l#0#pos#0@@0| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#46| |l#0@@4| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@1| |l#7@@1| |l#8@@1| |l#9@@1| |l#10@@0| |l#11@@0| |l#12@@0| |l#13@@0| |l#14@@0|) |$l#0#heap#0@@0| |$l#0#pos#0@@0|) ($Box DatatypeTypeType (ite (Parsers.ParseResult.Failure_q ($Unbox DatatypeTypeType (Apply1 |l#0@@4| |l#1@@1| |$l#0#heap#0@@0| |l#2@@1| ($Box intType ($Unbox intType |$l#0#pos#0@@0|))))) (Parsers.ParseResult.MapResult |l#3@@1| |l#4@@1| ($Unbox DatatypeTypeType (Apply1 |l#5@@1| |l#6@@1| |$l#0#heap#0@@0| |l#7@@1| ($Box intType ($Unbox intType |$l#0#pos#0@@0|)))) |l#8@@1|) (let ((|l#0@@5| (Parsers.ParseResult.t ($Unbox DatatypeTypeType (Apply1 |l#9@@1| |l#10@@0| |$l#0#heap#0@@0| |l#11@@0| ($Box intType ($Unbox intType |$l#0#pos#0@@0|)))))))
(let ((|pos#1| (Parsers.ParseResult.pos ($Unbox DatatypeTypeType (Apply1 |l#12@@0| |l#13@@0| |$l#0#heap#0@@0| |l#14@@0| ($Box intType ($Unbox intType |$l#0#pos#0@@0|)))))))
(|#Parsers.ParseResult.Success| |pos#1| ($Box DatatypeTypeType (|#Parsers.Either.Left| |l#0@@5|))))))))
 :qid |unknown.0:0|
 :skolemid |1433|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#46| |l#0@@4| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@1| |l#7@@1| |l#8@@1| |l#9@@1| |l#10@@0| |l#11@@0| |l#12@@0| |l#13@@0| |l#14@@0|) |$l#0#heap#0@@0| |$l#0#pos#0@@0|))
)))
(assert (forall ((Parsers.Either$L@@2 T@U) (Parsers.Either$R@@2 T@U) (|a#2#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#Parsers.Either.Left| |a#2#0#0|) (Tclass.Parsers.Either Parsers.Either$L@@2 Parsers.Either$R@@2)) ($IsBox |a#2#0#0| Parsers.Either$L@@2))
 :qid |unknown.0:0|
 :skolemid |542|
 :pattern ( ($Is DatatypeTypeType (|#Parsers.Either.Left| |a#2#0#0|) (Tclass.Parsers.Either Parsers.Either$L@@2 Parsers.Either$R@@2)))
)))
(assert (forall ((Parsers.Either$L@@3 T@U) (Parsers.Either$R@@3 T@U) (|a#8#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#Parsers.Either.Right| |a#8#0#0|) (Tclass.Parsers.Either Parsers.Either$L@@3 Parsers.Either$R@@3)) ($IsBox |a#8#0#0| Parsers.Either$R@@3))
 :qid |unknown.0:0|
 :skolemid |553|
 :pattern ( ($Is DatatypeTypeType (|#Parsers.Either.Right| |a#8#0#0|) (Tclass.Parsers.Either Parsers.Either$L@@3 Parsers.Either$R@@3)))
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
(assert (forall ((|a#0#0#0| T@U) ) (! (= (DatatypeCtorId (|#Parsers.Either.Left| |a#0#0#0|)) |##Parsers.Either.Left|)
 :qid |parsercombinatorsdfy.63:34|
 :skolemid |534|
 :pattern ( (|#Parsers.Either.Left| |a#0#0#0|))
)))
(assert (forall ((|a#4#0#0| T@U) ) (! (= (Parsers.Either.l (|#Parsers.Either.Left| |a#4#0#0|)) |a#4#0#0|)
 :qid |parsercombinatorsdfy.63:34|
 :skolemid |547|
 :pattern ( (|#Parsers.Either.Left| |a#4#0#0|))
)))
(assert (forall ((|a#6#0#0| T@U) ) (! (= (DatatypeCtorId (|#Parsers.Either.Right| |a#6#0#0|)) |##Parsers.Either.Right|)
 :qid |parsercombinatorsdfy.63:48|
 :skolemid |549|
 :pattern ( (|#Parsers.Either.Right| |a#6#0#0|))
)))
(assert (forall ((|a#10#0#0| T@U) ) (! (= (Parsers.Either.r (|#Parsers.Either.Right| |a#10#0#0|)) |a#10#0#0|)
 :qid |parsercombinatorsdfy.63:48|
 :skolemid |558|
 :pattern ( (|#Parsers.Either.Right| |a#10#0#0|))
)))
(assert (forall ((Parsers.ParseResult$T@@7 T@U) ) (! (= (Tclass.Parsers.ParseResult_0 (Tclass.Parsers.ParseResult Parsers.ParseResult$T@@7)) Parsers.ParseResult$T@@7)
 :qid |unknown.0:0|
 :skolemid |568|
 :pattern ( (Tclass.Parsers.ParseResult Parsers.ParseResult$T@@7))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((Parsers.Engine.Either$L@@1 T@U) (Parsers.Engine.Either$R@@1 T@U) ($reveal@@0 Bool) ($Heap@@3 T@U) (|left#0@@1| T@U) (|right#0@@1| T@U) ) (!  (=> (or (|Parsers.Engine.Either#canCall| Parsers.Engine.Either$L@@1 Parsers.Engine.Either$R@@1 |left#0@@1| |right#0@@1|) (and (< 2 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@3) (and ($Is HandleTypeType |left#0@@1| (Tclass._System.___hPartialFunc1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@1))) ($IsAlloc HandleTypeType |left#0@@1| (Tclass._System.___hPartialFunc1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@1)) $Heap@@3))) (and ($Is HandleTypeType |right#0@@1| (Tclass._System.___hPartialFunc1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$R@@1))) ($IsAlloc HandleTypeType |right#0@@1| (Tclass._System.___hPartialFunc1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$R@@1)) $Heap@@3))))) (and (forall ((|pos#0| T@U) ) (!  (=> (and (<= (LitInt 0) (U_2_int |pos#0|)) (and (Requires1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@1) $Heap@@3 |left#0@@1| ($Box intType |pos#0|)) (=> (Parsers.ParseResult.Failure_q ($Unbox DatatypeTypeType (Apply1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@1) $Heap@@3 |left#0@@1| ($Box intType |pos#0|)))) (Requires1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$R@@1) $Heap@@3 |right#0@@1| ($Box intType |pos#0|))))) (Requires1 Tclass._System.nat (Tclass.Parsers.ParseResult (Tclass.Parsers.Either Parsers.Engine.Either$L@@1 Parsers.Engine.Either$R@@1)) $Heap@@3 (Parsers.Engine.Either Parsers.Engine.Either$L@@1 Parsers.Engine.Either$R@@1 $reveal@@0 |left#0@@1| |right#0@@1|) ($Box intType |pos#0|)))
 :qid |parsercombinatorsdfy.172:22|
 :skolemid |660|
 :pattern ( (Requires1 Tclass._System.nat (Tclass.Parsers.ParseResult (Tclass.Parsers.Either Parsers.Engine.Either$L@@1 Parsers.Engine.Either$R@@1)) $Heap@@3 (Parsers.Engine.Either Parsers.Engine.Either$L@@1 Parsers.Engine.Either$R@@1 $reveal@@0 |left#0@@1| |right#0@@1|) ($Box intType |pos#0|)))
 :pattern ( (Requires1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$R@@1) $Heap@@3 |right#0@@1| ($Box intType |pos#0|)))
 :pattern ( ($Unbox DatatypeTypeType (Apply1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@1) $Heap@@3 |left#0@@1| ($Box intType |pos#0|))))
 :pattern ( (Requires1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@1) $Heap@@3 |left#0@@1| ($Box intType |pos#0|)))
)) ($Is HandleTypeType (Parsers.Engine.Either Parsers.Engine.Either$L@@1 Parsers.Engine.Either$R@@1 $reveal@@0 |left#0@@1| |right#0@@1|) (Tclass._System.___hPartialFunc1 Tclass._System.nat (Tclass.Parsers.ParseResult (Tclass.Parsers.Either Parsers.Engine.Either$L@@1 Parsers.Engine.Either$R@@1))))))
 :qid |unknown.0:0|
 :skolemid |661|
 :pattern ( (Parsers.Engine.Either Parsers.Engine.Either$L@@1 Parsers.Engine.Either$R@@1 $reveal@@0 |left#0@@1| |right#0@@1|) ($IsGoodHeap $Heap@@3))
))))
(assert (forall ((|a#22#0#0| Int) (|a#22#1#0| T@U) ) (! (< (BoxRank |a#22#1#0|) (DtRank (|#Parsers.ParseResult.Success| |a#22#0#0| |a#22#1#0|)))
 :qid |parsercombinatorsdfy.73:48|
 :skolemid |584|
 :pattern ( (|#Parsers.ParseResult.Success| |a#22#0#0| |a#22#1#0|))
)))
(assert (forall ((|#$T0@@7| T@U) (|#$R@@7| T@U) (|f#0@@3| T@U) ) (! (= ($Is HandleTypeType |f#0@@3| (Tclass._System.___hTotalFunc1 |#$T0@@7| |#$R@@7|))  (and ($Is HandleTypeType |f#0@@3| (Tclass._System.___hPartialFunc1 |#$T0@@7| |#$R@@7|)) (forall ((|x0#0| T@U) ) (!  (=> ($IsBox |x0#0| |#$T0@@7|) (Requires1 |#$T0@@7| |#$R@@7| $OneHeap |f#0@@3| |x0#0|))
 :qid |unknown.0:0|
 :skolemid |408|
))))
 :qid |unknown.0:0|
 :skolemid |409|
 :pattern ( ($Is HandleTypeType |f#0@@3| (Tclass._System.___hTotalFunc1 |#$T0@@7| |#$R@@7|)))
)))
(assert (forall ((|#$T0@@8| T@U) (|#$R@@8| T@U) (|f#0@@4| T@U) ) (! (= ($Is HandleTypeType |f#0@@4| (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|))  (and ($Is HandleTypeType |f#0@@4| (Tclass._System.___hFunc1 |#$T0@@8| |#$R@@8|)) (forall ((|x0#0@@0| T@U) ) (!  (=> ($IsBox |x0#0@@0| |#$T0@@8|) (|Set#Equal| (Reads1 |#$T0@@8| |#$R@@8| $OneHeap |f#0@@4| |x0#0@@0|) |Set#Empty|))
 :qid |unknown.0:0|
 :skolemid |401|
))))
 :qid |unknown.0:0|
 :skolemid |402|
 :pattern ( ($Is HandleTypeType |f#0@@4| (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|)))
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
(assert (forall ((|#$T0@@9| T@U) (|#$R@@9| T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@9)) bx@@9) ($Is HandleTypeType ($Unbox HandleTypeType bx@@9) (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|))))
 :qid |unknown.0:0|
 :skolemid |369|
 :pattern ( ($IsBox bx@@9 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|)))
)))
(assert (forall ((|#$T0@@10| T@U) (|#$R@@10| T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@10)) bx@@10) ($Is HandleTypeType ($Unbox HandleTypeType bx@@10) (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|))))
 :qid |unknown.0:0|
 :skolemid |400|
 :pattern ( ($IsBox bx@@10 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|)))
)))
(assert (forall ((|#$T0@@11| T@U) (|#$R@@11| T@U) (bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@11)) bx@@11) ($Is HandleTypeType ($Unbox HandleTypeType bx@@11) (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|))))
 :qid |unknown.0:0|
 :skolemid |407|
 :pattern ( ($IsBox bx@@11 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|)))
)))
(assert (forall ((Parsers.Either$L@@4 T@U) (Parsers.Either$R@@4 T@U) (bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 (Tclass.Parsers.Either Parsers.Either$L@@4 Parsers.Either$R@@4)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@12)) bx@@12) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@12) (Tclass.Parsers.Either Parsers.Either$L@@4 Parsers.Either$R@@4))))
 :qid |unknown.0:0|
 :skolemid |541|
 :pattern ( ($IsBox bx@@12 (Tclass.Parsers.Either Parsers.Either$L@@4 Parsers.Either$R@@4)))
)))
(assert (forall ((|a#5#0#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#Parsers.Either.Left| |a#5#0#0|)))
 :qid |parsercombinatorsdfy.63:34|
 :skolemid |548|
 :pattern ( (|#Parsers.Either.Left| |a#5#0#0|))
)))
(assert (forall ((|a#11#0#0| T@U) ) (! (< (BoxRank |a#11#0#0|) (DtRank (|#Parsers.Either.Right| |a#11#0#0|)))
 :qid |parsercombinatorsdfy.63:48|
 :skolemid |559|
 :pattern ( (|#Parsers.Either.Right| |a#11#0#0|))
)))
(assert (forall ((d@@10 T@U) (Parsers.ParseResult$T@@8 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (Parsers.ParseResult.Success_q d@@10) ($IsAlloc DatatypeTypeType d@@10 (Tclass.Parsers.ParseResult Parsers.ParseResult$T@@8) $h@@6))) ($IsAllocBox (Parsers.ParseResult.t d@@10) Parsers.ParseResult$T@@8 $h@@6))
 :qid |unknown.0:0|
 :skolemid |580|
 :pattern ( ($IsAllocBox (Parsers.ParseResult.t d@@10) Parsers.ParseResult$T@@8 $h@@6))
)))
(assert (forall ((|l#0@@6| T@U) (|l#1@@2| T@U) (|l#2@@2| T@U) (|l#3@@2| Bool) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@6| |l#1@@2| |l#2@@2| |l#3@@2|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0@@6|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1@@2| $o@@1) |l#2@@2|)))) |l#3@@2|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1425|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@6| |l#1@@2| |l#2@@2| |l#3@@2|) $o@@1 $f))
)))
(assert (forall ((|$l#4#heap#0@@0| T@U) (|$l#4#r#0@@0| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType |lambda#36| |$l#4#heap#0@@0| |$l#4#r#0@@0|) ($Box DatatypeTypeType (|#Parsers.Either.Right| |$l#4#r#0@@0|)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1431|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType |lambda#36| |$l#4#heap#0@@0| |$l#4#r#0@@0|))
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
(assert (forall ((Parsers.Either$L@@5 T@U) (Parsers.Either$R@@5 T@U) ) (!  (and (= (Tag (Tclass.Parsers.Either Parsers.Either$L@@5 Parsers.Either$R@@5)) Tagclass.Parsers.Either) (= (TagFamily (Tclass.Parsers.Either Parsers.Either$L@@5 Parsers.Either$R@@5)) tytagFamily$Either))
 :qid |unknown.0:0|
 :skolemid |538|
 :pattern ( (Tclass.Parsers.Either Parsers.Either$L@@5 Parsers.Either$R@@5))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((Parsers.ParseResult$T@@9 T@U) (|Parsers.ParseResult.MapResult$T'@@1| T@U) ($Heap@@4 T@U) (this@@1 T@U) (|f#0@@5| T@U) ) (!  (=> (or (|Parsers.ParseResult.MapResult#canCall| Parsers.ParseResult$T@@9 |Parsers.ParseResult.MapResult$T'@@1| (Lit DatatypeTypeType this@@1) |f#0@@5|) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@4) (and ($Is DatatypeTypeType this@@1 (Tclass.Parsers.ParseResult Parsers.ParseResult$T@@9)) ($IsAlloc DatatypeTypeType this@@1 (Tclass.Parsers.ParseResult Parsers.ParseResult$T@@9) $Heap@@4))) ($Is HandleTypeType |f#0@@5| (Tclass._System.___hTotalFunc1 Parsers.ParseResult$T@@9 |Parsers.ParseResult.MapResult$T'@@1|))))) (= (Parsers.ParseResult.MapResult Parsers.ParseResult$T@@9 |Parsers.ParseResult.MapResult$T'@@1| (Lit DatatypeTypeType this@@1) |f#0@@5|) (ite (Parsers.ParseResult.Failure_q (Lit DatatypeTypeType this@@1)) |#Parsers.ParseResult.Failure| (let ((|t#2| (Lit BoxType (Parsers.ParseResult.t (Lit DatatypeTypeType this@@1)))))
(let ((|pos#2| (LitInt (Parsers.ParseResult.pos (Lit DatatypeTypeType this@@1)))))
(|#Parsers.ParseResult.Success| |pos#2| (Apply1 Parsers.ParseResult$T@@9 |Parsers.ParseResult.MapResult$T'@@1| $Heap@@4 |f#0@@5| |t#2|)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |608|
 :pattern ( (Parsers.ParseResult.MapResult Parsers.ParseResult$T@@9 |Parsers.ParseResult.MapResult$T'@@1| (Lit DatatypeTypeType this@@1) |f#0@@5|) ($IsGoodHeap $Heap@@4))
))))
(assert (forall ((t0@@17 T@U) (t1@@15 T@U) (heap@@3 T@U) (f@@12 T@U) (bx0@@12 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@3) (and ($IsBox bx0@@12 t0@@17) ($Is HandleTypeType f@@12 (Tclass._System.___hFunc1 t0@@17 t1@@15)))) (|Set#Equal| (Reads1 t0@@17 t1@@15 $OneHeap f@@12 bx0@@12) |Set#Empty|)) (= (Requires1 t0@@17 t1@@15 $OneHeap f@@12 bx0@@12) (Requires1 t0@@17 t1@@15 heap@@3 f@@12 bx0@@12)))
 :qid |unknown.0:0|
 :skolemid |386|
 :pattern ( (Requires1 t0@@17 t1@@15 $OneHeap f@@12 bx0@@12) ($IsGoodHeap heap@@3))
 :pattern ( (Requires1 t0@@17 t1@@15 heap@@3 f@@12 bx0@@12))
)))
(assert (forall ((d@@11 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@11)) (DtRank d@@11))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@11)))
)))
(assert (forall ((bx@@13 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@13 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@13)) bx@@13) ($Is SetType ($Unbox SetType bx@@13) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@13 (TSet t@@5)))
)))
(assert (forall ((Parsers.ParseResult$T@@10 T@U) (bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 (Tclass.Parsers.ParseResult Parsers.ParseResult$T@@10)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@14)) bx@@14) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@14) (Tclass.Parsers.ParseResult Parsers.ParseResult$T@@10))))
 :qid |unknown.0:0|
 :skolemid |569|
 :pattern ( ($IsBox bx@@14 (Tclass.Parsers.ParseResult Parsers.ParseResult$T@@10)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= |#Parsers.ParseResult.Failure| (Lit DatatypeTypeType |#Parsers.ParseResult.Failure|)))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((Parsers.ParseResult$T@@11 T@U) (|Parsers.ParseResult.MapResult$T'@@2| T@U) (this@@2 T@U) (|f#0@@6| T@U) ) (!  (=> (or (|Parsers.ParseResult.MapResult#canCall| Parsers.ParseResult$T@@11 |Parsers.ParseResult.MapResult$T'@@2| this@@2 |f#0@@6|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType this@@2 (Tclass.Parsers.ParseResult Parsers.ParseResult$T@@11)) ($Is HandleTypeType |f#0@@6| (Tclass._System.___hTotalFunc1 Parsers.ParseResult$T@@11 |Parsers.ParseResult.MapResult$T'@@2|))))) ($Is DatatypeTypeType (Parsers.ParseResult.MapResult Parsers.ParseResult$T@@11 |Parsers.ParseResult.MapResult$T'@@2| this@@2 |f#0@@6|) (Tclass.Parsers.ParseResult |Parsers.ParseResult.MapResult$T'@@2|)))
 :qid |unknown.0:0|
 :skolemid |604|
 :pattern ( (Parsers.ParseResult.MapResult Parsers.ParseResult$T@@11 |Parsers.ParseResult.MapResult$T'@@2| this@@2 |f#0@@6|))
))))
(assert (forall ((d@@12 T@U) (Parsers.Either$L@@6 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (Parsers.Either.Left_q d@@12) (exists ((Parsers.Either$R@@6 T@U) ) (! ($IsAlloc DatatypeTypeType d@@12 (Tclass.Parsers.Either Parsers.Either$L@@6 Parsers.Either$R@@6) $h@@7)
 :qid |unknown.0:0|
 :skolemid |544|
 :pattern ( ($IsAlloc DatatypeTypeType d@@12 (Tclass.Parsers.Either Parsers.Either$L@@6 Parsers.Either$R@@6) $h@@7))
)))) ($IsAllocBox (Parsers.Either.l d@@12) Parsers.Either$L@@6 $h@@7))
 :qid |unknown.0:0|
 :skolemid |545|
 :pattern ( ($IsAllocBox (Parsers.Either.l d@@12) Parsers.Either$L@@6 $h@@7))
)))
(assert (forall ((d@@13 T@U) (Parsers.Either$R@@7 T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (Parsers.Either.Right_q d@@13) (exists ((Parsers.Either$L@@7 T@U) ) (! ($IsAlloc DatatypeTypeType d@@13 (Tclass.Parsers.Either Parsers.Either$L@@7 Parsers.Either$R@@7) $h@@8)
 :qid |unknown.0:0|
 :skolemid |555|
 :pattern ( ($IsAlloc DatatypeTypeType d@@13 (Tclass.Parsers.Either Parsers.Either$L@@7 Parsers.Either$R@@7) $h@@8))
)))) ($IsAllocBox (Parsers.Either.r d@@13) Parsers.Either$R@@7 $h@@8))
 :qid |unknown.0:0|
 :skolemid |556|
 :pattern ( ($IsAllocBox (Parsers.Either.r d@@13) Parsers.Either$R@@7 $h@@8))
)))
(assert (forall ((Parsers.Either$L@@8 T@U) (Parsers.Either$R@@8 T@U) (|a#2#0#0@@0| T@U) ($h@@9 T@U) ) (!  (=> ($IsGoodHeap $h@@9) (= ($IsAlloc DatatypeTypeType (|#Parsers.Either.Left| |a#2#0#0@@0|) (Tclass.Parsers.Either Parsers.Either$L@@8 Parsers.Either$R@@8) $h@@9) ($IsAllocBox |a#2#0#0@@0| Parsers.Either$L@@8 $h@@9)))
 :qid |unknown.0:0|
 :skolemid |543|
 :pattern ( ($IsAlloc DatatypeTypeType (|#Parsers.Either.Left| |a#2#0#0@@0|) (Tclass.Parsers.Either Parsers.Either$L@@8 Parsers.Either$R@@8) $h@@9))
)))
(assert (forall ((Parsers.Either$L@@9 T@U) (Parsers.Either$R@@9 T@U) (|a#8#0#0@@0| T@U) ($h@@10 T@U) ) (!  (=> ($IsGoodHeap $h@@10) (= ($IsAlloc DatatypeTypeType (|#Parsers.Either.Right| |a#8#0#0@@0|) (Tclass.Parsers.Either Parsers.Either$L@@9 Parsers.Either$R@@9) $h@@10) ($IsAllocBox |a#8#0#0@@0| Parsers.Either$R@@9 $h@@10)))
 :qid |unknown.0:0|
 :skolemid |554|
 :pattern ( ($IsAlloc DatatypeTypeType (|#Parsers.Either.Right| |a#8#0#0@@0|) (Tclass.Parsers.Either Parsers.Either$L@@9 Parsers.Either$R@@9) $h@@10))
)))
(assert (forall ((|a#19#0#0| Int) (|a#19#1#0| T@U) ) (! (= (|#Parsers.ParseResult.Success| (LitInt |a#19#0#0|) (Lit BoxType |a#19#1#0|)) (Lit DatatypeTypeType (|#Parsers.ParseResult.Success| |a#19#0#0| |a#19#1#0|)))
 :qid |parsercombinatorsdfy.73:48|
 :skolemid |581|
 :pattern ( (|#Parsers.ParseResult.Success| (LitInt |a#19#0#0|) (Lit BoxType |a#19#1#0|)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#3#0#0| T@U) ) (! (= (|#Parsers.Either.Left| (Lit BoxType |a#3#0#0|)) (Lit DatatypeTypeType (|#Parsers.Either.Left| |a#3#0#0|)))
 :qid |parsercombinatorsdfy.63:34|
 :skolemid |546|
 :pattern ( (|#Parsers.Either.Left| (Lit BoxType |a#3#0#0|)))
)))
(assert (forall ((|a#9#0#0| T@U) ) (! (= (|#Parsers.Either.Right| (Lit BoxType |a#9#0#0|)) (Lit DatatypeTypeType (|#Parsers.Either.Right| |a#9#0#0|)))
 :qid |parsercombinatorsdfy.63:48|
 :skolemid |557|
 :pattern ( (|#Parsers.Either.Right| (Lit BoxType |a#9#0#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((Parsers.ParseResult$T@@12 T@U) (|Parsers.ParseResult.MapResult$T'@@3| T@U) ($Heap@@5 T@U) (this@@3 T@U) (|f#0@@7| T@U) ) (!  (=> (or (|Parsers.ParseResult.MapResult#canCall| Parsers.ParseResult$T@@12 |Parsers.ParseResult.MapResult$T'@@3| this@@3 |f#0@@7|) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@5) (and ($Is DatatypeTypeType this@@3 (Tclass.Parsers.ParseResult Parsers.ParseResult$T@@12)) ($IsAlloc DatatypeTypeType this@@3 (Tclass.Parsers.ParseResult Parsers.ParseResult$T@@12) $Heap@@5))) ($Is HandleTypeType |f#0@@7| (Tclass._System.___hTotalFunc1 Parsers.ParseResult$T@@12 |Parsers.ParseResult.MapResult$T'@@3|))))) (= (Parsers.ParseResult.MapResult Parsers.ParseResult$T@@12 |Parsers.ParseResult.MapResult$T'@@3| this@@3 |f#0@@7|) (ite (Parsers.ParseResult.Failure_q this@@3) |#Parsers.ParseResult.Failure| (let ((|t#0| (Parsers.ParseResult.t this@@3)))
(let ((|pos#0@@0| (Parsers.ParseResult.pos this@@3)))
(|#Parsers.ParseResult.Success| |pos#0@@0| (Apply1 Parsers.ParseResult$T@@12 |Parsers.ParseResult.MapResult$T'@@3| $Heap@@5 |f#0@@7| |t#0|)))))))
 :qid |unknown.0:0|
 :skolemid |607|
 :pattern ( (Parsers.ParseResult.MapResult Parsers.ParseResult$T@@12 |Parsers.ParseResult.MapResult$T'@@3| this@@3 |f#0@@7|) ($IsGoodHeap $Heap@@5))
))))
(assert (forall ((Parsers.ParseResult$T@@13 T@U) (|a#18#0#0@@0| Int) (|a#18#1#0@@0| T@U) ($h@@11 T@U) ) (!  (=> ($IsGoodHeap $h@@11) (= ($IsAlloc DatatypeTypeType (|#Parsers.ParseResult.Success| |a#18#0#0@@0| |a#18#1#0@@0|) (Tclass.Parsers.ParseResult Parsers.ParseResult$T@@13) $h@@11)  (and ($IsAlloc intType (int_2_U |a#18#0#0@@0|) Tclass._System.nat $h@@11) ($IsAllocBox |a#18#1#0@@0| Parsers.ParseResult$T@@13 $h@@11))))
 :qid |unknown.0:0|
 :skolemid |577|
 :pattern ( ($IsAlloc DatatypeTypeType (|#Parsers.ParseResult.Success| |a#18#0#0@@0| |a#18#1#0@@0|) (Tclass.Parsers.ParseResult Parsers.ParseResult$T@@13) $h@@11))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((Parsers.Engine.Either$L@@2 T@U) (Parsers.Engine.Either$R@@2 T@U) ($Heap@@6 T@U) (|left#0@@2| T@U) (|right#0@@2| T@U) ) (!  (=> (or (|Parsers.Engine.Either#canCall| Parsers.Engine.Either$L@@2 Parsers.Engine.Either$R@@2 (Lit HandleTypeType |left#0@@2|) (Lit HandleTypeType |right#0@@2|)) (and (< 2 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@6) ($Is HandleTypeType |left#0@@2| (Tclass._System.___hPartialFunc1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@2)))) ($Is HandleTypeType |right#0@@2| (Tclass._System.___hPartialFunc1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$R@@2)))))) (and (forall ((|$l#7#pos#0| T@U) (|$l#7#heap#0| T@U) ) (!  (=> (and (<= (LitInt 0) (U_2_int |$l#7#pos#0|)) ($IsGoodHeap |$l#7#heap#0|)) (and (and true (=> (Requires1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@2) $Heap@@6 (Lit HandleTypeType |left#0@@2|) ($Box intType |$l#7#pos#0|)) (=> (Parsers.ParseResult.Failure_q ($Unbox DatatypeTypeType (Apply1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@2) $Heap@@6 (Lit HandleTypeType |left#0@@2|) ($Box intType |$l#7#pos#0|)))) true))) (=> (and (Requires1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@2) $Heap@@6 (Lit HandleTypeType |left#0@@2|) ($Box intType |$l#7#pos#0|)) (=> (Parsers.ParseResult.Failure_q ($Unbox DatatypeTypeType (Apply1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@2) $Heap@@6 (Lit HandleTypeType |left#0@@2|) ($Box intType |$l#7#pos#0|)))) (Requires1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$R@@2) $Heap@@6 (Lit HandleTypeType |right#0@@2|) ($Box intType |$l#7#pos#0|)))) (=> (Parsers.ParseResult.Failure_q ($Unbox DatatypeTypeType (Apply1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@2) |$l#7#heap#0| (Lit HandleTypeType |left#0@@2|) ($Box intType |$l#7#pos#0|)))) (|Parsers.ParseResult.MapResult#canCall| Parsers.Engine.Either$R@@2 (Tclass.Parsers.Either Parsers.Engine.Either$L@@2 Parsers.Engine.Either$R@@2) ($Unbox DatatypeTypeType (Apply1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$R@@2) |$l#7#heap#0| (Lit HandleTypeType |right#0@@2|) ($Box intType |$l#7#pos#0|))) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 |lambda#36| (|lambda#37| Parsers.Engine.Either$R@@2) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ))))))))
 :qid |unknown.0:0|
 :skolemid |666|
)) (= (Parsers.Engine.Either Parsers.Engine.Either$L@@2 Parsers.Engine.Either$R@@2 true (Lit HandleTypeType |left#0@@2|) (Lit HandleTypeType |right#0@@2|)) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#50| Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@2) (Lit HandleTypeType |left#0@@2|) Parsers.Engine.Either$R@@2 (Tclass.Parsers.Either Parsers.Engine.Either$L@@2 Parsers.Engine.Either$R@@2) Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$R@@2) (Lit HandleTypeType |right#0@@2|) (|lambda#6| (Handle1 |lambda#36| (|lambda#37| Parsers.Engine.Either$R@@2) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@2) (Lit HandleTypeType |left#0@@2|) Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@2) (Lit HandleTypeType |left#0@@2|) (|lambda#47| Tclass._System.nat Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@2) (Lit HandleTypeType |left#0@@2|) Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@2) (Lit HandleTypeType |left#0@@2|) Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$R@@2) (Lit HandleTypeType |right#0@@2|)) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false)))) ($LS $LZ))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |667|
 :pattern ( (Parsers.Engine.Either Parsers.Engine.Either$L@@2 Parsers.Engine.Either$R@@2 true (Lit HandleTypeType |left#0@@2|) (Lit HandleTypeType |right#0@@2|)) ($IsGoodHeap $Heap@@6))
))))
(assert (forall ((|l#0@@7| T@U) (|$l#0#heap#0@@1| T@U) (|$l#0#pos#0@@1| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#5| |l#0@@7|) |$l#0#heap#0@@1| |$l#0#pos#0@@1|) |l#0@@7|)
 :qid |parsercombinatorsdfy.119:7|
 :skolemid |1429|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#5| |l#0@@7|) |$l#0#heap#0@@1| |$l#0#pos#0@@1|))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Parsers.Engine.Either$L@@3 () T@U)
(declare-fun $Heap@@7 () T@U)
(declare-fun |left#0@@3| () T@U)
(declare-fun |pos#6@0| () Int)
(declare-fun Parsers.Engine.Either$R@@3 () T@U)
(declare-fun |right#0@@3| () T@U)
(declare-fun |p#0| () T@U)
(declare-fun reveal_Parsers.Engine.Either () Bool)
(declare-fun |r#0@0| () T@U)
(declare-fun |$lambdaHeap#1@0| () T@U)
(declare-fun |$_Frame#l1@0| () T@U)
(declare-fun |lambdaResult#1| () T@U)
(declare-fun |$lambdaHeap#0@0| () T@U)
(declare-fun |##f#0@0| () T@U)
(declare-fun |pos#7@0| () Int)
(declare-fun |lambdaResult#0| () T@U)
(declare-fun |_mcc#0#0| () Int)
(declare-fun |_mcc#1#0| () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |l#Z#0@0| () T@U)
(declare-fun |let#1#0#0| () Int)
(declare-fun |pos#Z#0@0| () Int)
(declare-fun |$_Frame#l0@0| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$Parsers.Engine.Either)
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
 (=> (= (ControlFlow 0 0) 37) (let ((anon7_correct true))
(let ((anon5_correct  (=> (=> (Parsers.ParseResult.Failure_q ($Unbox DatatypeTypeType (Apply1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@3) $Heap@@7 |left#0@@3| ($Box intType (int_2_U |pos#6@0|))))) (Requires1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$R@@3) $Heap@@7 |right#0@@3| ($Box intType (int_2_U |pos#6@0|)))) (=> (and (and ($IsAllocBox ($Box HandleTypeType |p#0|) (Tclass._System.___hFunc1 Tclass._System.nat (Tclass.Parsers.ParseResult (Tclass.Parsers.Either Parsers.Engine.Either$L@@3 Parsers.Engine.Either$R@@3))) $Heap@@7) ($IsAlloc intType (int_2_U |pos#6@0|) Tclass._System.nat $Heap@@7)) (and (Requires1 Tclass._System.nat (Tclass.Parsers.ParseResult (Tclass.Parsers.Either Parsers.Engine.Either$L@@3 Parsers.Engine.Either$R@@3)) $Heap@@7 |p#0| ($Box intType (int_2_U |pos#6@0|))) (= (ControlFlow 0 30) 28))) anon7_correct))))
(let ((anon27_Else_correct  (=> (and (not (Parsers.ParseResult.Failure_q ($Unbox DatatypeTypeType (Apply1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@3) $Heap@@7 |left#0@@3| ($Box intType (int_2_U |pos#6@0|)))))) (= (ControlFlow 0 32) 30)) anon5_correct)))
(let ((anon27_Then_correct  (=> (and (and (Parsers.ParseResult.Failure_q ($Unbox DatatypeTypeType (Apply1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@3) $Heap@@7 |left#0@@3| ($Box intType (int_2_U |pos#6@0|))))) ($IsAllocBox ($Box HandleTypeType |right#0@@3|) (Tclass._System.___hFunc1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$R@@3)) $Heap@@7)) (and ($IsAlloc intType (int_2_U |pos#6@0|) Tclass._System.nat $Heap@@7) (= (ControlFlow 0 31) 30))) anon5_correct)))
(let ((anon26_Then_correct  (=> ($IsAllocBox ($Box HandleTypeType |left#0@@3|) (Tclass._System.___hFunc1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@3)) $Heap@@7) (=> (and ($IsAlloc intType (int_2_U |pos#6@0|) Tclass._System.nat $Heap@@7) (Requires1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@3) $Heap@@7 |left#0@@3| ($Box intType (int_2_U |pos#6@0|)))) (and (=> (= (ControlFlow 0 33) (- 0 34)) (Requires1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@3) $Heap@@7 |left#0@@3| ($Box intType (int_2_U |pos#6@0|)))) (=> (Requires1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@3) $Heap@@7 |left#0@@3| ($Box intType (int_2_U |pos#6@0|))) (and (=> (= (ControlFlow 0 33) 31) anon27_Then_correct) (=> (= (ControlFlow 0 33) 32) anon27_Else_correct))))))))
(let ((anon26_Else_correct  (=> (and (=> (and (Requires1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@3) $Heap@@7 |left#0@@3| ($Box intType (int_2_U |pos#6@0|))) (=> (Parsers.ParseResult.Failure_q ($Unbox DatatypeTypeType (Apply1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@3) $Heap@@7 |left#0@@3| ($Box intType (int_2_U |pos#6@0|))))) (Requires1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$R@@3) $Heap@@7 |right#0@@3| ($Box intType (int_2_U |pos#6@0|))))) (Requires1 Tclass._System.nat (Tclass.Parsers.ParseResult (Tclass.Parsers.Either Parsers.Engine.Either$L@@3 Parsers.Engine.Either$R@@3)) $Heap@@7 |p#0| ($Box intType (int_2_U |pos#6@0|)))) (= (ControlFlow 0 29) 28)) anon7_correct)))
(let ((anon25_Then_correct  (=> ($Is HandleTypeType (Parsers.Engine.Either Parsers.Engine.Either$L@@3 Parsers.Engine.Either$R@@3 reveal_Parsers.Engine.Either |left#0@@3| |right#0@@3|) (Tclass._System.___hPartialFunc1 Tclass._System.nat (Tclass.Parsers.ParseResult (Tclass.Parsers.Either Parsers.Engine.Either$L@@3 Parsers.Engine.Either$R@@3)))) (=> (and ($Is HandleTypeType |p#0| (Tclass._System.___hPartialFunc1 Tclass._System.nat (Tclass.Parsers.ParseResult (Tclass.Parsers.Either Parsers.Engine.Either$L@@3 Parsers.Engine.Either$R@@3)))) (<= (LitInt 0) |pos#6@0|)) (and (=> (= (ControlFlow 0 35) 33) anon26_Then_correct) (=> (= (ControlFlow 0 35) 29) anon26_Else_correct))))))
(let ((anon18_correct true))
(let ((anon35_Else_correct  (=> (and (not (and ($IsBox |r#0@0| Parsers.Engine.Either$R@@3) ($IsAllocBox |r#0@0| Parsers.Engine.Either$R@@3 |$lambdaHeap#1@0|))) (= (ControlFlow 0 13) 11)) anon18_correct)))
(let ((anon35_Then_correct  (=> (and ($IsBox |r#0@0| Parsers.Engine.Either$R@@3) ($IsAllocBox |r#0@0| Parsers.Engine.Either$R@@3 |$lambdaHeap#1@0|)) (=> (and (and (= |$_Frame#l1@0| (|lambda#0| null |$lambdaHeap#1@0| alloc false)) (= |lambdaResult#1| (|#Parsers.Either.Right| |r#0@0|))) (and ($Is DatatypeTypeType |lambdaResult#1| (Tclass.Parsers.Either Parsers.Engine.Either$L@@3 Parsers.Engine.Either$R@@3)) (= (ControlFlow 0 12) 11))) anon18_correct))))
(let ((anon34_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#1@0|) (or (= |$lambdaHeap#0@0| |$lambdaHeap#1@0|) ($HeapSucc |$lambdaHeap#0@0| |$lambdaHeap#1@0|))) (and (=> (= (ControlFlow 0 14) 12) anon35_Then_correct) (=> (= (ControlFlow 0 14) 13) anon35_Else_correct)))))
(let ((anon36_Else_correct true))
(let ((anon22_correct true))
(let ((anon34_Else_correct  (=> (= |##f#0@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 |lambda#36| (|lambda#37| Parsers.Engine.Either$R@@3) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ)))) (=> (and ($IsAlloc HandleTypeType |##f#0@0| (Tclass._System.___hTotalFunc1 Parsers.Engine.Either$R@@3 (Tclass.Parsers.Either Parsers.Engine.Either$L@@3 Parsers.Engine.Either$R@@3)) |$lambdaHeap#0@0|) (|Parsers.ParseResult.MapResult#canCall| Parsers.Engine.Either$R@@3 (Tclass.Parsers.Either Parsers.Engine.Either$L@@3 Parsers.Engine.Either$R@@3) ($Unbox DatatypeTypeType (Apply1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$R@@3) |$lambdaHeap#0@0| |right#0@@3| ($Box intType (int_2_U |pos#7@0|)))) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 |lambda#36| (|lambda#37| Parsers.Engine.Either$R@@3) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ))))) (=> (and (and (= |lambdaResult#0| (Parsers.ParseResult.MapResult Parsers.Engine.Either$R@@3 (Tclass.Parsers.Either Parsers.Engine.Either$L@@3 Parsers.Engine.Either$R@@3) ($Unbox DatatypeTypeType (Apply1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$R@@3) $Heap@@7 |right#0@@3| ($Box intType (int_2_U |pos#7@0|)))) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 |lambda#36| (|lambda#37| Parsers.Engine.Either$R@@3) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ))))) (|Parsers.ParseResult.MapResult#canCall| Parsers.Engine.Either$R@@3 (Tclass.Parsers.Either Parsers.Engine.Either$L@@3 Parsers.Engine.Either$R@@3) ($Unbox DatatypeTypeType (Apply1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$R@@3) $Heap@@7 |right#0@@3| ($Box intType (int_2_U |pos#7@0|)))) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 |lambda#36| (|lambda#37| Parsers.Engine.Either$R@@3) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ))))) (and ($Is DatatypeTypeType |lambdaResult#0| (Tclass.Parsers.ParseResult (Tclass.Parsers.Either Parsers.Engine.Either$L@@3 Parsers.Engine.Either$R@@3))) (= (ControlFlow 0 10) 4))) anon22_correct)))))
(let ((anon33_Then_correct  (=> (= ($Unbox DatatypeTypeType (Apply1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@3) |$lambdaHeap#0@0| |left#0@@3| ($Box intType (int_2_U |pos#7@0|)))) |#Parsers.ParseResult.Failure|) (and (=> (= (ControlFlow 0 15) (- 0 16)) (Requires1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$R@@3) |$lambdaHeap#0@0| |right#0@@3| ($Box intType (int_2_U |pos#7@0|)))) (=> (Requires1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$R@@3) |$lambdaHeap#0@0| |right#0@@3| ($Box intType (int_2_U |pos#7@0|))) (=> ($IsAllocBox (Apply1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$R@@3) |$lambdaHeap#0@0| |right#0@@3| ($Box intType (int_2_U |pos#7@0|))) (Tclass.Parsers.ParseResult Parsers.Engine.Either$R@@3) |$lambdaHeap#0@0|) (and (=> (= (ControlFlow 0 15) 14) anon34_Then_correct) (=> (= (ControlFlow 0 15) 10) anon34_Else_correct))))))))
(let ((anon36_Then_correct  (=> (and (and (= ($Unbox DatatypeTypeType (Apply1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@3) |$lambdaHeap#0@0| |left#0@@3| ($Box intType (int_2_U |pos#7@0|)))) (|#Parsers.ParseResult.Success| |_mcc#0#0| |_mcc#1#0|)) (<= (LitInt 0) |_mcc#0#0|)) (and ($IsBox |_mcc#1#0| Parsers.Engine.Either$L@@3) (= |let#0#0#0| |_mcc#1#0|))) (=> (and (and (and ($IsBox |let#0#0#0| Parsers.Engine.Either$L@@3) (= |l#Z#0@0| |let#0#0#0|)) (and (= |let#1#0#0| |_mcc#0#0|) ($Is intType (int_2_U |let#1#0#0|) Tclass._System.nat))) (and (and (= |pos#Z#0@0| |let#1#0#0|) (= |lambdaResult#0| (|#Parsers.ParseResult.Success| |pos#Z#0@0| ($Box DatatypeTypeType (|#Parsers.Either.Left| |l#Z#0@0|))))) (and ($Is DatatypeTypeType |lambdaResult#0| (Tclass.Parsers.ParseResult (Tclass.Parsers.Either Parsers.Engine.Either$L@@3 Parsers.Engine.Either$R@@3))) (= (ControlFlow 0 7) 4)))) anon22_correct))))
(let ((anon33_Else_correct  (=> (or (not (= ($Unbox DatatypeTypeType (Apply1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@3) |$lambdaHeap#0@0| |left#0@@3| ($Box intType (int_2_U |pos#7@0|)))) |#Parsers.ParseResult.Failure|)) (not true)) (and (=> (= (ControlFlow 0 9) 7) anon36_Then_correct) (=> (= (ControlFlow 0 9) 8) anon36_Else_correct)))))
(let ((anon32_Then_correct  (=> (and (Requires1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@3) |$lambdaHeap#0@0| |left#0@@3| ($Box intType (int_2_U |pos#7@0|))) (=> (Parsers.ParseResult.Failure_q ($Unbox DatatypeTypeType (Apply1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@3) |$lambdaHeap#0@0| |left#0@@3| ($Box intType (int_2_U |pos#7@0|))))) (Requires1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$R@@3) |$lambdaHeap#0@0| |right#0@@3| ($Box intType (int_2_U |pos#7@0|))))) (and (=> (= (ControlFlow 0 17) (- 0 18)) (Requires1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@3) |$lambdaHeap#0@0| |left#0@@3| ($Box intType (int_2_U |pos#7@0|)))) (=> (Requires1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@3) |$lambdaHeap#0@0| |left#0@@3| ($Box intType (int_2_U |pos#7@0|))) (and (=> (= (ControlFlow 0 17) 15) anon33_Then_correct) (=> (= (ControlFlow 0 17) 9) anon33_Else_correct)))))))
(let ((anon32_Else_correct  (=> (and (not (and (Requires1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@3) |$lambdaHeap#0@0| |left#0@@3| ($Box intType (int_2_U |pos#7@0|))) (=> (Parsers.ParseResult.Failure_q ($Unbox DatatypeTypeType (Apply1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@3) |$lambdaHeap#0@0| |left#0@@3| ($Box intType (int_2_U |pos#7@0|))))) (Requires1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$R@@3) |$lambdaHeap#0@0| |right#0@@3| ($Box intType (int_2_U |pos#7@0|)))))) (= (ControlFlow 0 6) 4)) anon22_correct)))
(let ((anon31_Else_correct  (=> (not (Parsers.ParseResult.Failure_q ($Unbox DatatypeTypeType (Apply1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@3) |$lambdaHeap#0@0| |left#0@@3| ($Box intType (int_2_U |pos#7@0|)))))) (and (=> (= (ControlFlow 0 22) 17) anon32_Then_correct) (=> (= (ControlFlow 0 22) 6) anon32_Else_correct)))))
(let ((anon31_Then_correct  (=> (Parsers.ParseResult.Failure_q ($Unbox DatatypeTypeType (Apply1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@3) |$lambdaHeap#0@0| |left#0@@3| ($Box intType (int_2_U |pos#7@0|))))) (=> (and ($IsAllocBox ($Box HandleTypeType |right#0@@3|) (Tclass._System.___hFunc1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$R@@3)) |$lambdaHeap#0@0|) ($IsAlloc intType (int_2_U |pos#7@0|) Tclass._System.nat |$lambdaHeap#0@0|)) (and (=> (= (ControlFlow 0 20) (- 0 21)) (forall (($o@@2 T@U) ($f@@0 T@U) ) (!  (=> (and (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |$lambdaHeap#0@0| $o@@2) alloc)))) (|Set#IsMember| (Reads1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$R@@3) |$lambdaHeap#0@0| |right#0@@3| ($Box intType (int_2_U |pos#7@0|))) ($Box refType $o@@2))) (U_2_bool (MapType0Select refType FieldType boolType |$_Frame#l0@0| $o@@2 $f@@0)))
 :qid |parsercombinatorsdfy.179:47|
 :skolemid |671|
))) (=> (forall (($o@@3 T@U) ($f@@1 T@U) ) (!  (=> (and (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |$lambdaHeap#0@0| $o@@3) alloc)))) (|Set#IsMember| (Reads1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$R@@3) |$lambdaHeap#0@0| |right#0@@3| ($Box intType (int_2_U |pos#7@0|))) ($Box refType $o@@3))) (U_2_bool (MapType0Select refType FieldType boolType |$_Frame#l0@0| $o@@3 $f@@1)))
 :qid |parsercombinatorsdfy.179:47|
 :skolemid |671|
)) (and (=> (= (ControlFlow 0 20) 17) anon32_Then_correct) (=> (= (ControlFlow 0 20) 6) anon32_Else_correct))))))))
(let ((anon30_Then_correct  (=> (Requires1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@3) |$lambdaHeap#0@0| |left#0@@3| ($Box intType (int_2_U |pos#7@0|))) (and (=> (= (ControlFlow 0 23) (- 0 24)) (Requires1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@3) |$lambdaHeap#0@0| |left#0@@3| ($Box intType (int_2_U |pos#7@0|)))) (=> (Requires1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@3) |$lambdaHeap#0@0| |left#0@@3| ($Box intType (int_2_U |pos#7@0|))) (and (=> (= (ControlFlow 0 23) 20) anon31_Then_correct) (=> (= (ControlFlow 0 23) 22) anon31_Else_correct)))))))
(let ((anon30_Else_correct  (=> (not (Requires1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@3) |$lambdaHeap#0@0| |left#0@@3| ($Box intType (int_2_U |pos#7@0|)))) (and (=> (= (ControlFlow 0 19) 17) anon32_Then_correct) (=> (= (ControlFlow 0 19) 6) anon32_Else_correct)))))
(let ((anon29_Then_correct  (=> (and (and (<= (LitInt 0) |pos#7@0|) (= |$_Frame#l0@0| (|lambda#0| null |$lambdaHeap#0@0| alloc false))) (and ($IsAllocBox ($Box HandleTypeType |left#0@@3|) (Tclass._System.___hFunc1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@3)) |$lambdaHeap#0@0|) ($IsAlloc intType (int_2_U |pos#7@0|) Tclass._System.nat |$lambdaHeap#0@0|))) (and (=> (= (ControlFlow 0 25) (- 0 26)) (forall (($o@@4 T@U) ($f@@2 T@U) ) (!  (=> (and (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |$lambdaHeap#0@0| $o@@4) alloc)))) (|Set#IsMember| (Reads1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@3) |$lambdaHeap#0@0| |left#0@@3| ($Box intType (int_2_U |pos#7@0|))) ($Box refType $o@@4))) (U_2_bool (MapType0Select refType FieldType boolType |$_Frame#l0@0| $o@@4 $f@@2)))
 :qid |parsercombinatorsdfy.178:23|
 :skolemid |670|
))) (=> (forall (($o@@5 T@U) ($f@@3 T@U) ) (!  (=> (and (and (or (not (= $o@@5 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |$lambdaHeap#0@0| $o@@5) alloc)))) (|Set#IsMember| (Reads1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@3) |$lambdaHeap#0@0| |left#0@@3| ($Box intType (int_2_U |pos#7@0|))) ($Box refType $o@@5))) (U_2_bool (MapType0Select refType FieldType boolType |$_Frame#l0@0| $o@@5 $f@@3)))
 :qid |parsercombinatorsdfy.178:23|
 :skolemid |670|
)) (and (=> (= (ControlFlow 0 25) 23) anon30_Then_correct) (=> (= (ControlFlow 0 25) 19) anon30_Else_correct)))))))
(let ((anon29_Else_correct  (=> (and (< |pos#7@0| (LitInt 0)) (= (ControlFlow 0 5) 4)) anon22_correct)))
(let ((anon28_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0@0|) (or (= $Heap@@7 |$lambdaHeap#0@0|) ($HeapSucc $Heap@@7 |$lambdaHeap#0@0|))) (and (=> (= (ControlFlow 0 27) 25) anon29_Then_correct) (=> (= (ControlFlow 0 27) 5) anon29_Else_correct)))))
(let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (forall ((|pos#5| Int) ) (!  (=> (and (<= (LitInt 0) |pos#5|) (and (Requires1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@3) $Heap@@7 |left#0@@3| ($Box intType (int_2_U |pos#5|))) (=> (Parsers.ParseResult.Failure_q ($Unbox DatatypeTypeType (Apply1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@3) $Heap@@7 |left#0@@3| ($Box intType (int_2_U |pos#5|))))) (Requires1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$R@@3) $Heap@@7 |right#0@@3| ($Box intType (int_2_U |pos#5|)))))) (Requires1 Tclass._System.nat (Tclass.Parsers.ParseResult (Tclass.Parsers.Either Parsers.Engine.Either$L@@3 Parsers.Engine.Either$R@@3)) $Heap@@7 |p#0| ($Box intType (int_2_U |pos#5|))))
 :qid |parsercombinatorsdfy.172:22|
 :skolemid |668|
 :pattern ( (Requires1 Tclass._System.nat (Tclass.Parsers.ParseResult (Tclass.Parsers.Either Parsers.Engine.Either$L@@3 Parsers.Engine.Either$R@@3)) $Heap@@7 |p#0| ($Box intType (int_2_U |pos#5|))))
 :pattern ( (Requires1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$R@@3) $Heap@@7 |right#0@@3| ($Box intType (int_2_U |pos#5|))))
 :pattern ( ($Unbox DatatypeTypeType (Apply1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@3) $Heap@@7 |left#0@@3| ($Box intType (int_2_U |pos#5|)))))
 :pattern ( (Requires1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@3) $Heap@@7 |left#0@@3| ($Box intType (int_2_U |pos#5|))))
)))))
(let ((anon28_Else_correct  (=> (= (Parsers.Engine.Either Parsers.Engine.Either$L@@3 Parsers.Engine.Either$R@@3 reveal_Parsers.Engine.Either |left#0@@3| |right#0@@3|) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#50| Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@3) |left#0@@3| Parsers.Engine.Either$R@@3 (Tclass.Parsers.Either Parsers.Engine.Either$L@@3 Parsers.Engine.Either$R@@3) Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$R@@3) |right#0@@3| (|lambda#6| (Handle1 |lambda#36| (|lambda#37| Parsers.Engine.Either$R@@3) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@3) |left#0@@3| Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@3) |left#0@@3| (|lambda#47| Tclass._System.nat Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@3) |left#0@@3| Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@3) |left#0@@3| Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$R@@3) |right#0@@3|) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false)))) ($LS $LZ)))) (=> (and (and (forall ((|$l#21#pos#0| T@U) (|$l#21#heap#0| T@U) ) (!  (=> (and (<= (LitInt 0) (U_2_int |$l#21#pos#0|)) ($IsGoodHeap |$l#21#heap#0|)) (and (and true (=> (Requires1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@3) $Heap@@7 |left#0@@3| ($Box intType |$l#21#pos#0|)) (=> (Parsers.ParseResult.Failure_q ($Unbox DatatypeTypeType (Apply1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@3) $Heap@@7 |left#0@@3| ($Box intType |$l#21#pos#0|)))) true))) (=> (and (Requires1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@3) $Heap@@7 |left#0@@3| ($Box intType |$l#21#pos#0|)) (=> (Parsers.ParseResult.Failure_q ($Unbox DatatypeTypeType (Apply1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@3) $Heap@@7 |left#0@@3| ($Box intType |$l#21#pos#0|)))) (Requires1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$R@@3) $Heap@@7 |right#0@@3| ($Box intType |$l#21#pos#0|)))) (=> (Parsers.ParseResult.Failure_q ($Unbox DatatypeTypeType (Apply1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@3) |$l#21#heap#0| |left#0@@3| ($Box intType |$l#21#pos#0|)))) (|Parsers.ParseResult.MapResult#canCall| Parsers.Engine.Either$R@@3 (Tclass.Parsers.Either Parsers.Engine.Either$L@@3 Parsers.Engine.Either$R@@3) ($Unbox DatatypeTypeType (Apply1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$R@@3) |$l#21#heap#0| |right#0@@3| ($Box intType |$l#21#pos#0|))) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 |lambda#36| (|lambda#37| Parsers.Engine.Either$R@@3) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ))))))))
 :qid |unknown.0:0|
 :skolemid |673|
)) ($Is HandleTypeType (Parsers.Engine.Either Parsers.Engine.Either$L@@3 Parsers.Engine.Either$R@@3 reveal_Parsers.Engine.Either |left#0@@3| |right#0@@3|) (Tclass._System.___hPartialFunc1 Tclass._System.nat (Tclass.Parsers.ParseResult (Tclass.Parsers.Either Parsers.Engine.Either$L@@3 Parsers.Engine.Either$R@@3))))) (and (= (Parsers.Engine.Either Parsers.Engine.Either$L@@3 Parsers.Engine.Either$R@@3 reveal_Parsers.Engine.Either |left#0@@3| |right#0@@3|) |p#0|) (= (ControlFlow 0 3) 2))) GeneratedUnifiedExit_correct))))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap@@7 alloc false)) (and (and (=> (= (ControlFlow 0 36) 35) anon25_Then_correct) (=> (= (ControlFlow 0 36) 27) anon28_Then_correct)) (=> (= (ControlFlow 0 36) 3) anon28_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@7) ($IsHeapAnchor $Heap@@7)) (=> (and (and ($Is HandleTypeType |left#0@@3| (Tclass._System.___hPartialFunc1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$L@@3))) ($Is HandleTypeType |right#0@@3| (Tclass._System.___hPartialFunc1 Tclass._System.nat (Tclass.Parsers.ParseResult Parsers.Engine.Either$R@@3)))) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 37) 36))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
