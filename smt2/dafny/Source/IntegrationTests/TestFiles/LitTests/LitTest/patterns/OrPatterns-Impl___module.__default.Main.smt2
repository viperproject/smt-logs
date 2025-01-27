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
(declare-fun Tagclass._module.Enum () T@U)
(declare-fun Tagclass.Lists.List () T@U)
(declare-fun Tagclass.TestVariables.DT () T@U)
(declare-fun |##_module.Enum.One| () T@U)
(declare-fun |##_module.Enum.Two| () T@U)
(declare-fun |##_module.Enum.Three| () T@U)
(declare-fun |##Lists.List.Nil| () T@U)
(declare-fun |##Lists.List.Cons| () T@U)
(declare-fun |##TestVariables.DT.A| () T@U)
(declare-fun |##TestVariables.DT.B| () T@U)
(declare-fun |##TestVariables.DT.C| () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
(declare-fun tytagFamily$Enum () T@U)
(declare-fun tytagFamily$List () T@U)
(declare-fun tytagFamily$DT () T@U)
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
(declare-fun |lambda#3| (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Lists.__default.ContainsOne (T@U) Bool)
(declare-fun |Lists.__default.ContainsOne#canCall| (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.Lists.List (T@U) T@U)
(declare-fun Lists.List.Length (T@U T@U T@U) Int)
(declare-fun StartFuelAssert_Lists.List.Length () T@U)
(declare-fun LitInt (Int) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun Lists.List.car (T@U) T@U)
(declare-fun Lists.List.cdr (T@U) T@U)
(declare-fun AsFuelBottom (T@U) T@U)
(declare-fun $LZ () T@U)
(declare-fun TestVariables.__default.F (T@U) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |TestVariables.__default.F#canCall| (T@U) Bool)
(declare-fun Tclass.TestVariables.DT () T@U)
(declare-fun TestVariables.DT.A_q (T@U) Bool)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun HandleTypeType () T@T)
(declare-fun AtLayer (T@T T@U T@U) T@U)
(declare-fun |lambda#6| (T@U) T@U)
(declare-fun |lambda#2| () T@U)
(declare-fun |lambda#5| (T@U) T@U)
(declare-fun SetRef_to_SetBox (T@U) T@U)
(declare-fun |lambda#4| (Bool) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun TestVariables.DT.B_q (T@U) Bool)
(declare-fun TestVariables.__default.F2 (T@U) Int)
(declare-fun |TestVariables.__default.F2#canCall| (T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.Enum.One| () T@U)
(declare-fun |#_module.Enum.Two| () T@U)
(declare-fun |#_module.Enum.Three| () T@U)
(declare-fun |#Lists.List.Nil| () T@U)
(declare-fun |#TestVariables.DT.A| () T@U)
(declare-fun |#TestVariables.DT.B| () T@U)
(declare-fun |#TestVariables.DT.C| () T@U)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass._module.Enum () T@U)
(declare-fun null () T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun $OneHeap () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun |#Lists.List.Cons| (T@U T@U) T@U)
(declare-fun _module.Enum.One_q (T@U) Bool)
(declare-fun _module.Enum.Two_q (T@U) Bool)
(declare-fun _module.Enum.Three_q (T@U) Bool)
(declare-fun Lists.List.Nil_q (T@U) Bool)
(declare-fun Lists.List.Cons_q (T@U) Bool)
(declare-fun TestVariables.DT.C_q (T@U) Bool)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun |Lists.List.Length#canCall| (T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun LayerTypeType () T@T)
(declare-fun Lists.__default.ContainsOne_k (T@U) Bool)
(declare-fun |Lists.__default.ContainsOne_k#canCall| (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.Enum.Even_k (T@U) Bool)
(declare-fun |_module.Enum.Even_k#canCall| (T@U) Bool)
(declare-fun _module.Enum.Even_k_k (T@U) Bool)
(declare-fun |_module.Enum.Even_k_k#canCall| (T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun _module.Enum.Even (T@U) Bool)
(declare-fun |_module.Enum.Even#canCall| (T@U) Bool)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tclass.Lists.List_0 (T@U) T@U)
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
(assert (distinct TInt TagInt TagSet alloc Tagclass._System.object? Tagclass._System.object Tagclass._System.___hFunc1 Tagclass._module.Enum Tagclass.Lists.List Tagclass.TestVariables.DT |##_module.Enum.One| |##_module.Enum.Two| |##_module.Enum.Three| |##Lists.List.Nil| |##Lists.List.Cons| |##TestVariables.DT.A| |##TestVariables.DT.B| |##TestVariables.DT.C| tytagFamily$object |tytagFamily$_#Func1| tytagFamily$Enum tytagFamily$List tytagFamily$DT)
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
 :skolemid |2403|
 :pattern ( (|Set#IsMember| (Reads1 t0@@1 t1@@1 heap (Handle1 h r rd) bx0) bx))
)))
(assert (forall ((|l#0| T@U) (|$l#20#heap#0| T@U) (|$l#20#y#0| T@U) ) (! (= (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#3| |l#0|) |$l#20#heap#0| |$l#20#y#0|)) ($IsBox |$l#20#y#0| |l#0|))
 :qid |DafnyPreludebpl.27:1|
 :skolemid |2646|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#3| |l#0|) |$l#20#heap#0| |$l#20#y#0|))
)))
(assert (= (Ctor DatatypeTypeType) 8))
(assert (forall ((|l#0@@0| T@U) ) (!  (=> (or (|Lists.__default.ContainsOne#canCall| |l#0@@0|) (and ($Is DatatypeTypeType |l#0@@0| (Tclass.Lists.List TInt)) (= (Lists.List.Length TInt StartFuelAssert_Lists.List.Length |l#0@@0|) (LitInt 3)))) (= (Lists.__default.ContainsOne |l#0@@0|)  (or (or (= (U_2_int ($Unbox intType (Lists.List.car |l#0@@0|))) (LitInt 1)) (= (U_2_int ($Unbox intType (Lists.List.car (Lists.List.cdr |l#0@@0|)))) (LitInt 1))) (= (U_2_int ($Unbox intType (Lists.List.car (Lists.List.cdr (Lists.List.cdr |l#0@@0|))))) (LitInt 1)))))
 :qid |OrPatternsdfy.43:25|
 :skolemid |2552|
 :pattern ( (Lists.__default.ContainsOne |l#0@@0|))
)))
(assert (forall ((Lists.List$T T@U) ($ly T@U) (this T@U) ) (! (= (Lists.List.Length Lists.List$T $ly this) (Lists.List.Length Lists.List$T $LZ this))
 :qid |unknown.0:0|
 :skolemid |2581|
 :pattern ( (Lists.List.Length Lists.List$T (AsFuelBottom $ly) this))
)))
(assert (= (Ctor HandleTypeType) 9))
(assert (forall (($Heap T@U) (|dt#0| T@U) ) (!  (=> (or (|TestVariables.__default.F#canCall| (Lit DatatypeTypeType |dt#0|)) (and ($IsGoodHeap $Heap) ($Is DatatypeTypeType |dt#0| Tclass.TestVariables.DT))) (= (TestVariables.__default.F (Lit DatatypeTypeType |dt#0|)) (ite (TestVariables.DT.A_q (Lit DatatypeTypeType |dt#0|)) (let ((|x#12| (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 |lambda#2| (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ))) ($Box intType (int_2_U (LitInt 1))))))))
|x#12|) (ite (TestVariables.DT.B_q (Lit DatatypeTypeType |dt#0|)) (let ((|x#13| (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 |lambda#2| (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ))) ($Box intType (int_2_U (LitInt 1))))))))
|x#13|) 0))))
 :qid |OrPatternsdfy.88:12|
 :weight 3
 :skolemid |2591|
 :pattern ( (TestVariables.__default.F (Lit DatatypeTypeType |dt#0|)) ($IsGoodHeap $Heap))
)))
(assert (forall (($Heap@@0 T@U) (|dt#0@@0| T@U) ) (!  (=> (or (|TestVariables.__default.F2#canCall| (Lit DatatypeTypeType |dt#0@@0|)) (and ($IsGoodHeap $Heap@@0) ($Is DatatypeTypeType |dt#0@@0| Tclass.TestVariables.DT))) (= (TestVariables.__default.F2 (Lit DatatypeTypeType |dt#0@@0|)) (ite (TestVariables.DT.A_q (Lit DatatypeTypeType |dt#0@@0|)) (let ((|x#12@@0| (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@@0 (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 |lambda#2| (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ))) ($Box intType (int_2_U (LitInt 1))))))))
|x#12@@0|) (ite (TestVariables.DT.B_q (Lit DatatypeTypeType |dt#0@@0|)) (let ((|x#13@@0| (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@@0 (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 |lambda#2| (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ))) ($Box intType (int_2_U (LitInt 1))))))))
|x#13@@0|) 0))))
 :qid |OrPatternsdfy.94:12|
 :weight 3
 :skolemid |2595|
 :pattern ( (TestVariables.__default.F2 (Lit DatatypeTypeType |dt#0@@0|)) ($IsGoodHeap $Heap@@0))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |2156|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (forall ((Lists.List$T@@0 T@U) ($ly@@0 T@U) (this@@0 T@U) ) (! (= (Lists.List.Length Lists.List$T@@0 ($LS $ly@@0) this@@0) (Lists.List.Length Lists.List$T@@0 $ly@@0 this@@0))
 :qid |unknown.0:0|
 :skolemid |2580|
 :pattern ( (Lists.List.Length Lists.List$T@@0 ($LS $ly@@0) this@@0))
)))
(assert (= (DatatypeCtorId |#_module.Enum.One|) |##_module.Enum.One|))
(assert (= (DatatypeCtorId |#_module.Enum.Two|) |##_module.Enum.Two|))
(assert (= (DatatypeCtorId |#_module.Enum.Three|) |##_module.Enum.Three|))
(assert (= (DatatypeCtorId |#Lists.List.Nil|) |##Lists.List.Nil|))
(assert (= (DatatypeCtorId |#TestVariables.DT.A|) |##TestVariables.DT.A|))
(assert (= (DatatypeCtorId |#TestVariables.DT.B|) |##TestVariables.DT.B|))
(assert (= (DatatypeCtorId |#TestVariables.DT.C|) |##TestVariables.DT.C|))
(assert (forall ((f T@U) (t0@@2 T@U) (t1@@2 T@U) (u0@@2 T@U) (u1@@2 T@U) ) (!  (=> (and (and ($Is HandleTypeType f (Tclass._System.___hFunc1 t0@@2 t1@@2)) (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 u0@@2) ($IsBox bx@@0 t0@@2))
 :qid |unknown.0:0|
 :skolemid |2420|
 :pattern ( ($IsBox bx@@0 u0@@2))
 :pattern ( ($IsBox bx@@0 t0@@2))
))) (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 t1@@2) ($IsBox bx@@1 u1@@2))
 :qid |unknown.0:0|
 :skolemid |2421|
 :pattern ( ($IsBox bx@@1 t1@@2))
 :pattern ( ($IsBox bx@@1 u1@@2))
))) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0@@2 u1@@2)))
 :qid |unknown.0:0|
 :skolemid |2422|
 :pattern ( ($Is HandleTypeType f (Tclass._System.___hFunc1 t0@@2 t1@@2)) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0@@2 u1@@2)))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h) ($IsAlloc refType |c#0| Tclass._System.object? $h))
 :qid |unknown.0:0|
 :skolemid |2382|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h))
)))
(assert (forall ((Lists.List$T@@1 T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) ($IsAlloc DatatypeTypeType |#Lists.List.Nil| (Tclass.Lists.List Lists.List$T@@1) $h@@0))
 :qid |unknown.0:0|
 :skolemid |2561|
 :pattern ( ($IsAlloc DatatypeTypeType |#Lists.List.Nil| (Tclass.Lists.List Lists.List$T@@1) $h@@0))
)))
(assert ($Is DatatypeTypeType |#_module.Enum.One| Tclass._module.Enum))
(assert ($Is DatatypeTypeType |#_module.Enum.Two| Tclass._module.Enum))
(assert ($Is DatatypeTypeType |#_module.Enum.Three| Tclass._module.Enum))
(assert ($Is DatatypeTypeType |#TestVariables.DT.A| Tclass.TestVariables.DT))
(assert ($Is DatatypeTypeType |#TestVariables.DT.B| Tclass.TestVariables.DT))
(assert ($Is DatatypeTypeType |#TestVariables.DT.C| Tclass.TestVariables.DT))
(assert (forall ((Lists.List$T@@2 T@U) ) (! ($Is DatatypeTypeType |#Lists.List.Nil| (Tclass.Lists.List Lists.List$T@@2))
 :qid |unknown.0:0|
 :skolemid |2560|
 :pattern ( ($Is DatatypeTypeType |#Lists.List.Nil| (Tclass.Lists.List Lists.List$T@@2)))
)))
(assert (forall (($o T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o Tclass._System.object? $h@@1)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@1 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2379|
 :pattern ( ($IsAlloc refType $o Tclass._System.object? $h@@1))
)))
(assert (forall ((h@@0 T@U) (k T@U) ) (!  (=> ($HeapSucc h@@0 k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@0 o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |2149|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) k o@@0) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |2150|
 :pattern ( ($HeapSucc h@@0 k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |2048|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |2046|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((t0@@3 T@U) (t1@@3 T@U) (heap@@0 T@U) (f@@0 T@U) (bx0@@0 T@U) ) (!  (=> (and ($IsGoodHeap heap@@0) (and ($IsBox bx0@@0 t0@@3) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@3 t1@@3)))) (= (|Set#Equal| (Reads1 t0@@3 t1@@3 $OneHeap f@@0 bx0@@0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@3 t1@@3 heap@@0 f@@0 bx0@@0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |2416|
 :pattern ( (Reads1 t0@@3 t1@@3 $OneHeap f@@0 bx0@@0) ($IsGoodHeap heap@@0))
 :pattern ( (Reads1 t0@@3 t1@@3 heap@@0 f@@0 bx0@@0))
)))
(assert (forall ((Lists.List$T@@3 T@U) (|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#Lists.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass.Lists.List Lists.List$T@@3))  (and ($IsBox |a#6#0#0| Lists.List$T@@3) ($Is DatatypeTypeType |a#6#1#0| (Tclass.Lists.List Lists.List$T@@3))))
 :qid |unknown.0:0|
 :skolemid |2566|
 :pattern ( ($Is DatatypeTypeType (|#Lists.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass.Lists.List Lists.List$T@@3)))
)))
(assert (forall ((d T@U) ) (! (= (_module.Enum.One_q d) (= (DatatypeCtorId d) |##_module.Enum.One|))
 :qid |unknown.0:0|
 :skolemid |2523|
 :pattern ( (_module.Enum.One_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Enum.Two_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Enum.Two|))
 :qid |unknown.0:0|
 :skolemid |2525|
 :pattern ( (_module.Enum.Two_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.Enum.Three_q d@@1) (= (DatatypeCtorId d@@1) |##_module.Enum.Three|))
 :qid |unknown.0:0|
 :skolemid |2527|
 :pattern ( (_module.Enum.Three_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (Lists.List.Nil_q d@@2) (= (DatatypeCtorId d@@2) |##Lists.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |2558|
 :pattern ( (Lists.List.Nil_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (Lists.List.Cons_q d@@3) (= (DatatypeCtorId d@@3) |##Lists.List.Cons|))
 :qid |unknown.0:0|
 :skolemid |2563|
 :pattern ( (Lists.List.Cons_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (! (= (TestVariables.DT.A_q d@@4) (= (DatatypeCtorId d@@4) |##TestVariables.DT.A|))
 :qid |unknown.0:0|
 :skolemid |2596|
 :pattern ( (TestVariables.DT.A_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (! (= (TestVariables.DT.B_q d@@5) (= (DatatypeCtorId d@@5) |##TestVariables.DT.B|))
 :qid |unknown.0:0|
 :skolemid |2598|
 :pattern ( (TestVariables.DT.B_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (! (= (TestVariables.DT.C_q d@@6) (= (DatatypeCtorId d@@6) |##TestVariables.DT.C|))
 :qid |unknown.0:0|
 :skolemid |2600|
 :pattern ( (TestVariables.DT.C_q d@@6))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2057|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@7 T@U) ) (!  (=> (Lists.List.Cons_q d@@7) (exists ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= d@@7 (|#Lists.List.Cons| |a#5#0#0| |a#5#1#0|))
 :qid |OrPatternsdfy.35:33|
 :skolemid |2564|
)))
 :qid |unknown.0:0|
 :skolemid |2565|
 :pattern ( (Lists.List.Cons_q d@@7))
)))
(assert (forall ((t0@@4 T@U) (t1@@4 T@U) (h0 T@U) (h1 T@U) (f@@1 T@U) (bx0@@1 T@U) ) (!  (=> (and (and (and ($HeapSucc h0 h1) (and ($IsGoodHeap h0) ($IsGoodHeap h1))) (and ($IsBox bx0@@1 t0@@4) ($Is HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@4 t1@@4)))) (forall ((o@@1 T@U) (fld T@U) ) (!  (=> (and (or (not (= o@@1 null)) (not true)) (|Set#IsMember| (Reads1 t0@@4 t1@@4 h0 f@@1 bx0@@1) ($Box refType o@@1))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0 o@@1) fld) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1 o@@1) fld)))
 :qid |unknown.0:0|
 :skolemid |2408|
))) (= (Requires1 t0@@4 t1@@4 h0 f@@1 bx0@@1) (Requires1 t0@@4 t1@@4 h1 f@@1 bx0@@1)))
 :qid |unknown.0:0|
 :skolemid |2409|
 :pattern ( ($HeapSucc h0 h1) (Requires1 t0@@4 t1@@4 h1 f@@1 bx0@@1))
)))
(assert (forall ((t0@@5 T@U) (t1@@5 T@U) (h0@@0 T@U) (h1@@0 T@U) (f@@2 T@U) (bx0@@2 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@0 h1@@0) (and ($IsGoodHeap h0@@0) ($IsGoodHeap h1@@0))) (and ($IsBox bx0@@2 t0@@5) ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@5 t1@@5)))) (forall ((o@@2 T@U) (fld@@0 T@U) ) (!  (=> (and (or (not (= o@@2 null)) (not true)) (|Set#IsMember| (Reads1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2) ($Box refType o@@2))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@0 o@@2) fld@@0) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@0 o@@2) fld@@0)))
 :qid |unknown.0:0|
 :skolemid |2410|
))) (= (Requires1 t0@@5 t1@@5 h0@@0 f@@2 bx0@@2) (Requires1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2)))
 :qid |unknown.0:0|
 :skolemid |2411|
 :pattern ( ($HeapSucc h0@@0 h1@@0) (Requires1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2))
)))
(assert (forall ((Lists.List$T@@4 T@U) ($ly@@1 T@U) (this@@1 T@U) ) (!  (=> (or (|Lists.List.Length#canCall| Lists.List$T@@4 this@@1) ($Is DatatypeTypeType this@@1 (Tclass.Lists.List Lists.List$T@@4))) (<= (LitInt 0) (Lists.List.Length Lists.List$T@@4 $ly@@1 this@@1)))
 :qid |unknown.0:0|
 :skolemid |2582|
 :pattern ( (Lists.List.Length Lists.List$T@@4 $ly@@1 this@@1))
)))
(assert (forall ((d@@8 T@U) ) (!  (=> (_module.Enum.One_q d@@8) (= d@@8 |#_module.Enum.One|))
 :qid |unknown.0:0|
 :skolemid |2524|
 :pattern ( (_module.Enum.One_q d@@8))
)))
(assert (forall ((d@@9 T@U) ) (!  (=> (_module.Enum.Two_q d@@9) (= d@@9 |#_module.Enum.Two|))
 :qid |unknown.0:0|
 :skolemid |2526|
 :pattern ( (_module.Enum.Two_q d@@9))
)))
(assert (forall ((d@@10 T@U) ) (!  (=> (_module.Enum.Three_q d@@10) (= d@@10 |#_module.Enum.Three|))
 :qid |unknown.0:0|
 :skolemid |2528|
 :pattern ( (_module.Enum.Three_q d@@10))
)))
(assert (forall ((d@@11 T@U) ) (!  (=> (Lists.List.Nil_q d@@11) (= d@@11 |#Lists.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |2559|
 :pattern ( (Lists.List.Nil_q d@@11))
)))
(assert (forall ((d@@12 T@U) ) (!  (=> (TestVariables.DT.A_q d@@12) (= d@@12 |#TestVariables.DT.A|))
 :qid |unknown.0:0|
 :skolemid |2597|
 :pattern ( (TestVariables.DT.A_q d@@12))
)))
(assert (forall ((d@@13 T@U) ) (!  (=> (TestVariables.DT.B_q d@@13) (= d@@13 |#TestVariables.DT.B|))
 :qid |unknown.0:0|
 :skolemid |2599|
 :pattern ( (TestVariables.DT.B_q d@@13))
)))
(assert (forall ((d@@14 T@U) ) (!  (=> (TestVariables.DT.C_q d@@14) (= d@@14 |#TestVariables.DT.C|))
 :qid |unknown.0:0|
 :skolemid |2601|
 :pattern ( (TestVariables.DT.C_q d@@14))
)))
(assert (forall ((v T@U) (t0@@6 T@U) ) (! (= ($Is SetType v (TSet t0@@6)) (forall ((bx@@2 T@U) ) (!  (=> (|Set#IsMember| v bx@@2) ($IsBox bx@@2 t0@@6))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |2077|
 :pattern ( (|Set#IsMember| v bx@@2))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |2078|
 :pattern ( ($Is SetType v (TSet t0@@6)))
)))
(assert (= (Ctor LayerTypeType) 10))
(assert (forall ((f@@3 T@U) (ly T@U) (A T@T) ) (! (= (AtLayer A f@@3 ly) (MapType1Select LayerTypeType A f@@3 ly))
 :qid |DafnyPreludebpl.501:18|
 :skolemid |2132|
 :pattern ( (AtLayer A f@@3 ly))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((|l#0@@1| T@U) ) (!  (=> (or (|Lists.__default.ContainsOne_k#canCall| |l#0@@1|) (and ($Is DatatypeTypeType |l#0@@1| (Tclass.Lists.List TInt)) (= (Lists.List.Length TInt StartFuelAssert_Lists.List.Length |l#0@@1|) (LitInt 3)))) (= (Lists.__default.ContainsOne_k |l#0@@1|) (ite (= (U_2_int ($Unbox intType (Lists.List.car |l#0@@1|))) (LitInt 1)) (ite (= (U_2_int ($Unbox intType (Lists.List.car (Lists.List.cdr |l#0@@1|)))) (LitInt 1)) (ite (= (U_2_int ($Unbox intType (Lists.List.car (Lists.List.cdr (Lists.List.cdr |l#0@@1|))))) (LitInt 1)) true true) (ite (= (U_2_int ($Unbox intType (Lists.List.car (Lists.List.cdr (Lists.List.cdr |l#0@@1|))))) (LitInt 1)) true true)) (ite (= (U_2_int ($Unbox intType (Lists.List.car (Lists.List.cdr |l#0@@1|)))) (LitInt 1)) (ite (= (U_2_int ($Unbox intType (Lists.List.car (Lists.List.cdr (Lists.List.cdr |l#0@@1|))))) (LitInt 1)) true true) (ite (= (U_2_int ($Unbox intType (Lists.List.car (Lists.List.cdr (Lists.List.cdr |l#0@@1|))))) (LitInt 1)) true false)))))
 :qid |OrPatternsdfy.49:26|
 :skolemid |2556|
 :pattern ( (Lists.__default.ContainsOne_k |l#0@@1|))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@1 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@1) ($IsAlloc T@@1 v@@0 t h@@1))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |2070|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@0 T@U) (bx@@3 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@2 k@@0) (=> ($IsAllocBox bx@@3 t@@0 h@@2) ($IsAllocBox bx@@3 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |2142|
 :pattern ( ($HeapSucc h@@2 k@@0) ($IsAllocBox bx@@3 t@@0 h@@2))
)))
(assert (forall ((h@@3 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@3 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@3) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |2141|
 :pattern ( ($HeapSucc h@@3 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@3))
)))
(assert (forall ((t0@@7 T@U) (t1@@6 T@U) (h0@@1 T@U) (h1@@1 T@U) (f@@4 T@U) (bx0@@3 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@1 h1@@1) (and ($IsGoodHeap h0@@1) ($IsGoodHeap h1@@1))) (and ($IsBox bx0@@3 t0@@7) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc1 t0@@7 t1@@6)))) (forall ((o@@3 T@U) (fld@@1 T@U) ) (!  (=> (and (or (not (= o@@3 null)) (not true)) (|Set#IsMember| (Reads1 t0@@7 t1@@6 h0@@1 f@@4 bx0@@3) ($Box refType o@@3))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@1 o@@3) fld@@1) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@1 o@@3) fld@@1)))
 :qid |unknown.0:0|
 :skolemid |2404|
))) (= (Reads1 t0@@7 t1@@6 h0@@1 f@@4 bx0@@3) (Reads1 t0@@7 t1@@6 h1@@1 f@@4 bx0@@3)))
 :qid |unknown.0:0|
 :skolemid |2405|
 :pattern ( ($HeapSucc h0@@1 h1@@1) (Reads1 t0@@7 t1@@6 h1@@1 f@@4 bx0@@3))
)))
(assert (forall ((t0@@8 T@U) (t1@@7 T@U) (h0@@2 T@U) (h1@@2 T@U) (f@@5 T@U) (bx0@@4 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@2 h1@@2) (and ($IsGoodHeap h0@@2) ($IsGoodHeap h1@@2))) (and ($IsBox bx0@@4 t0@@8) ($Is HandleTypeType f@@5 (Tclass._System.___hFunc1 t0@@8 t1@@7)))) (forall ((o@@4 T@U) (fld@@2 T@U) ) (!  (=> (and (or (not (= o@@4 null)) (not true)) (|Set#IsMember| (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4) ($Box refType o@@4))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@2 o@@4) fld@@2) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@2 o@@4) fld@@2)))
 :qid |unknown.0:0|
 :skolemid |2406|
))) (= (Reads1 t0@@8 t1@@7 h0@@2 f@@5 bx0@@4) (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4)))
 :qid |unknown.0:0|
 :skolemid |2407|
 :pattern ( ($HeapSucc h0@@2 h1@@2) (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4))
)))
(assert (forall ((t0@@9 T@U) (t1@@8 T@U) (h0@@3 T@U) (h1@@3 T@U) (f@@6 T@U) (bx0@@5 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@3 h1@@3) (and ($IsGoodHeap h0@@3) ($IsGoodHeap h1@@3))) (and ($IsBox bx0@@5 t0@@9) ($Is HandleTypeType f@@6 (Tclass._System.___hFunc1 t0@@9 t1@@8)))) (forall ((o@@5 T@U) (fld@@3 T@U) ) (!  (=> (and (or (not (= o@@5 null)) (not true)) (|Set#IsMember| (Reads1 t0@@9 t1@@8 h0@@3 f@@6 bx0@@5) ($Box refType o@@5))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@3 o@@5) fld@@3) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@3 o@@5) fld@@3)))
 :qid |unknown.0:0|
 :skolemid |2412|
))) (= (Apply1 t0@@9 t1@@8 h0@@3 f@@6 bx0@@5) (Apply1 t0@@9 t1@@8 h1@@3 f@@6 bx0@@5)))
 :qid |unknown.0:0|
 :skolemid |2413|
 :pattern ( ($HeapSucc h0@@3 h1@@3) (Apply1 t0@@9 t1@@8 h1@@3 f@@6 bx0@@5))
)))
(assert (forall ((t0@@10 T@U) (t1@@9 T@U) (h0@@4 T@U) (h1@@4 T@U) (f@@7 T@U) (bx0@@6 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@4 h1@@4) (and ($IsGoodHeap h0@@4) ($IsGoodHeap h1@@4))) (and ($IsBox bx0@@6 t0@@10) ($Is HandleTypeType f@@7 (Tclass._System.___hFunc1 t0@@10 t1@@9)))) (forall ((o@@6 T@U) (fld@@4 T@U) ) (!  (=> (and (or (not (= o@@6 null)) (not true)) (|Set#IsMember| (Reads1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6) ($Box refType o@@6))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@4 o@@6) fld@@4) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@4 o@@6) fld@@4)))
 :qid |unknown.0:0|
 :skolemid |2414|
))) (= (Apply1 t0@@10 t1@@9 h0@@4 f@@7 bx0@@6) (Apply1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6)))
 :qid |unknown.0:0|
 :skolemid |2415|
 :pattern ( ($HeapSucc h0@@4 h1@@4) (Apply1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@2 T@U) ) (!  (=> (or (|_module.Enum.Even_k#canCall| this@@2) (and (< 0 $FunctionContextHeight) ($Is DatatypeTypeType this@@2 Tclass._module.Enum))) (= (_module.Enum.Even_k this@@2) (ite (_module.Enum.One_q this@@2) false (ite (_module.Enum.Two_q this@@2) true false))))
 :qid |OrPatternsdfy.8:13|
 :skolemid |2542|
 :pattern ( (_module.Enum.Even_k this@@2))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@3 T@U) ) (!  (=> (or (|_module.Enum.Even_k_k#canCall| this@@3) (and (< 0 $FunctionContextHeight) ($Is DatatypeTypeType this@@3 Tclass._module.Enum))) (= (_module.Enum.Even_k_k this@@3) (ite (_module.Enum.One_q this@@3) false (ite (_module.Enum.Two_q this@@3) true false))))
 :qid |OrPatternsdfy.14:13|
 :skolemid |2546|
 :pattern ( (_module.Enum.Even_k_k this@@3))
))))
(assert (forall ((Lists.List$T@@5 T@U) ) (!  (and (= (Tag (Tclass.Lists.List Lists.List$T@@5)) Tagclass.Lists.List) (= (TagFamily (Tclass.Lists.List Lists.List$T@@5)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |2514|
 :pattern ( (Tclass.Lists.List Lists.List$T@@5))
)))
(assert (forall ((s T@U) (bx@@4 T@U) ) (! (= (|Set#IsMember| (SetRef_to_SetBox s) bx@@4) (U_2_bool (MapType1Select refType boolType s ($Unbox refType bx@@4))))
 :qid |DafnyPreludebpl.370:15|
 :skolemid |2113|
 :pattern ( (|Set#IsMember| (SetRef_to_SetBox s) bx@@4))
)))
(assert (forall ((t0@@11 T@U) (t1@@10 T@U) (heap@@1 T@U) (h@@4 T@U) (r@@0 T@U) (rd@@0 T@U) (bx0@@7 T@U) ) (! (= (Apply1 t0@@11 t1@@10 heap@@1 (Handle1 h@@4 r@@0 rd@@0) bx0@@7) (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType h@@4 heap@@1 bx0@@7))
 :qid |unknown.0:0|
 :skolemid |2401|
 :pattern ( (Apply1 t0@@11 t1@@10 heap@@1 (Handle1 h@@4 r@@0 rd@@0) bx0@@7))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |2377|
 :pattern ( ($IsBox bx@@5 Tclass._System.object?))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |2380|
 :pattern ( ($IsBox bx@@6 Tclass._System.object))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.Enum) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@7)) bx@@7) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@7) Tclass._module.Enum)))
 :qid |unknown.0:0|
 :skolemid |2513|
 :pattern ( ($IsBox bx@@7 Tclass._module.Enum))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass.TestVariables.DT) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@8)) bx@@8) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@8) Tclass.TestVariables.DT)))
 :qid |unknown.0:0|
 :skolemid |2521|
 :pattern ( ($IsBox bx@@8 Tclass.TestVariables.DT))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._System.object)  (and ($Is refType |c#0@@0| Tclass._System.object?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2381|
 :pattern ( ($Is refType |c#0@@0| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@0| Tclass._System.object?))
)))
(assert (forall ((f@@8 T@U) (t0@@12 T@U) (t1@@11 T@U) (h@@5 T@U) ) (!  (=> (and ($IsGoodHeap h@@5) ($IsAlloc HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@12 t1@@11) h@@5)) (forall ((bx0@@8 T@U) ) (!  (=> (and ($IsAllocBox bx0@@8 t0@@12 h@@5) (Requires1 t0@@12 t1@@11 h@@5 f@@8 bx0@@8)) ($IsAllocBox (Apply1 t0@@12 t1@@11 h@@5 f@@8 bx0@@8) t1@@11 h@@5))
 :qid |unknown.0:0|
 :skolemid |2426|
 :pattern ( (Apply1 t0@@12 t1@@11 h@@5 f@@8 bx0@@8))
)))
 :qid |unknown.0:0|
 :skolemid |2427|
 :pattern ( ($IsAlloc HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@12 t1@@11) h@@5))
)))
(assert (forall ((Lists.List$T@@6 T@U) ($ly@@2 T@U) (this@@4 T@U) ) (!  (=> (or (|Lists.List.Length#canCall| Lists.List$T@@6 (Lit DatatypeTypeType this@@4)) ($Is DatatypeTypeType this@@4 (Tclass.Lists.List Lists.List$T@@6))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (Lists.List.Nil_q (Lit DatatypeTypeType this@@4)))))) (let ((|t#7| (Lit DatatypeTypeType (Lists.List.cdr (Lit DatatypeTypeType this@@4)))))
(|Lists.List.Length#canCall| Lists.List$T@@6 |t#7|))) (= (Lists.List.Length Lists.List$T@@6 ($LS $ly@@2) (Lit DatatypeTypeType this@@4)) (ite (Lists.List.Nil_q (Lit DatatypeTypeType this@@4)) 0 (let ((|t#6| (Lit DatatypeTypeType (Lists.List.cdr (Lit DatatypeTypeType this@@4)))))
(LitInt (+ 1 (Lists.List.Length Lists.List$T@@6 ($LS $ly@@2) |t#6|))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |2585|
 :pattern ( (Lists.List.Length Lists.List$T@@6 ($LS $ly@@2) (Lit DatatypeTypeType this@@4)))
)))
(assert (forall ((|l#0@@2| T@U) ) (!  (=> (or (|Lists.__default.ContainsOne#canCall| (Lit DatatypeTypeType |l#0@@2|)) (and ($Is DatatypeTypeType |l#0@@2| (Tclass.Lists.List TInt)) (= (LitInt (Lists.List.Length TInt StartFuelAssert_Lists.List.Length (Lit DatatypeTypeType |l#0@@2|))) (LitInt 3)))) (= (Lists.__default.ContainsOne (Lit DatatypeTypeType |l#0@@2|))  (or (or (= (LitInt (U_2_int ($Unbox intType (Lists.List.car (Lit DatatypeTypeType |l#0@@2|))))) (LitInt 1)) (= (LitInt (U_2_int ($Unbox intType (Lists.List.car (Lit DatatypeTypeType (Lists.List.cdr (Lit DatatypeTypeType |l#0@@2|))))))) (LitInt 1))) (= (LitInt (U_2_int ($Unbox intType (Lists.List.car (Lit DatatypeTypeType (Lists.List.cdr (Lit DatatypeTypeType (Lists.List.cdr (Lit DatatypeTypeType |l#0@@2|))))))))) (LitInt 1)))))
 :qid |OrPatternsdfy.43:25|
 :weight 3
 :skolemid |2553|
 :pattern ( (Lists.__default.ContainsOne (Lit DatatypeTypeType |l#0@@2|)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@5 T@U) ) (!  (=> (or (|_module.Enum.Even#canCall| this@@5) (and (< 0 $FunctionContextHeight) ($Is DatatypeTypeType this@@5 Tclass._module.Enum))) (= (_module.Enum.Even this@@5) (_module.Enum.Two_q this@@5)))
 :qid |OrPatternsdfy.4:13|
 :skolemid |2538|
 :pattern ( (_module.Enum.Even this@@5))
))))
(assert (forall ((|l#0@@3| Bool) (|$l#20#o#0| T@U) ) (! (= (U_2_bool (MapType1Select refType boolType (|lambda#4| |l#0@@3|) |$l#20#o#0|)) |l#0@@3|)
 :qid |unknown.0:0|
 :skolemid |2647|
 :pattern ( (MapType1Select refType boolType (|lambda#4| |l#0@@3|) |$l#20#o#0|))
)))
(assert (forall ((|l#0@@4| T@U) (|$l#20#ly#0| T@U) ) (! (= (MapType1Select LayerTypeType HandleTypeType (|lambda#6| |l#0@@4|) |$l#20#ly#0|) |l#0@@4|)
 :qid |OrPatternsdfy.91:31|
 :skolemid |2649|
 :pattern ( (MapType1Select LayerTypeType HandleTypeType (|lambda#6| |l#0@@4|) |$l#20#ly#0|))
)))
(assert (forall ((Lists.List$T@@7 T@U) (d@@15 T@U) ) (!  (=> ($Is DatatypeTypeType d@@15 (Tclass.Lists.List Lists.List$T@@7)) (or (Lists.List.Nil_q d@@15) (Lists.List.Cons_q d@@15)))
 :qid |unknown.0:0|
 :skolemid |2576|
 :pattern ( (Lists.List.Cons_q d@@15) ($Is DatatypeTypeType d@@15 (Tclass.Lists.List Lists.List$T@@7)))
 :pattern ( (Lists.List.Nil_q d@@15) ($Is DatatypeTypeType d@@15 (Tclass.Lists.List Lists.List$T@@7)))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |2181|
 :pattern ( (|Set#Equal| a b))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@6 T@U) ) (!  (=> (or (|_module.Enum.Even_k#canCall| (Lit DatatypeTypeType this@@6)) (and (< 0 $FunctionContextHeight) ($Is DatatypeTypeType this@@6 Tclass._module.Enum))) (= (_module.Enum.Even_k (Lit DatatypeTypeType this@@6)) (ite (_module.Enum.One_q (Lit DatatypeTypeType this@@6)) false (ite (_module.Enum.Two_q (Lit DatatypeTypeType this@@6)) true false))))
 :qid |OrPatternsdfy.8:13|
 :weight 3
 :skolemid |2543|
 :pattern ( (_module.Enum.Even_k (Lit DatatypeTypeType this@@6)))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@7 T@U) ) (!  (=> (or (|_module.Enum.Even_k_k#canCall| (Lit DatatypeTypeType this@@7)) (and (< 0 $FunctionContextHeight) ($Is DatatypeTypeType this@@7 Tclass._module.Enum))) (= (_module.Enum.Even_k_k (Lit DatatypeTypeType this@@7)) (ite (_module.Enum.One_q (Lit DatatypeTypeType this@@7)) false (ite (_module.Enum.Two_q (Lit DatatypeTypeType this@@7)) true false))))
 :qid |OrPatternsdfy.14:13|
 :weight 3
 :skolemid |2547|
 :pattern ( (_module.Enum.Even_k_k (Lit DatatypeTypeType this@@7)))
))))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |2148|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((f@@9 T@U) (t0@@13 T@U) (t1@@12 T@U) ) (! (= ($Is HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@13 t1@@12)) (forall ((h@@6 T@U) (bx0@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@6) ($IsBox bx0@@9 t0@@13)) (Requires1 t0@@13 t1@@12 h@@6 f@@9 bx0@@9)) ($IsBox (Apply1 t0@@13 t1@@12 h@@6 f@@9 bx0@@9) t1@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2418|
 :pattern ( (Apply1 t0@@13 t1@@12 h@@6 f@@9 bx0@@9))
)))
 :qid |unknown.0:0|
 :skolemid |2419|
 :pattern ( ($Is HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@13 t1@@12)))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 TInt) (and (= ($Box intType ($Unbox intType bx@@9)) bx@@9) ($Is intType ($Unbox intType bx@@9) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |2058|
 :pattern ( ($IsBox bx@@9 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |2069|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((t0@@14 T@U) (t1@@13 T@U) (heap@@2 T@U) (h@@7 T@U) (r@@1 T@U) (rd@@1 T@U) (bx0@@10 T@U) ) (!  (=> (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType r@@1 heap@@2 bx0@@10)) (Requires1 t0@@14 t1@@13 heap@@2 (Handle1 h@@7 r@@1 rd@@1) bx0@@10))
 :qid |unknown.0:0|
 :skolemid |2402|
 :pattern ( (Requires1 t0@@14 t1@@13 heap@@2 (Handle1 h@@7 r@@1 rd@@1) bx0@@10))
)))
(assert (forall ((v@@3 T@U) (t0@@15 T@U) (h@@8 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@15) h@@8) (forall ((bx@@10 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@10) ($IsAllocBox bx@@10 t0@@15 h@@8))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |2098|
 :pattern ( (|Set#IsMember| v@@3 bx@@10))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |2099|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@15) h@@8))
)))
(assert (forall ((|#$T0| T@U) (|#$R| T@U) ) (! (= (Tclass._System.___hFunc1_0 (Tclass._System.___hFunc1 |#$T0| |#$R|)) |#$T0|)
 :qid |unknown.0:0|
 :skolemid |2398|
 :pattern ( (Tclass._System.___hFunc1 |#$T0| |#$R|))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$R@@0| T@U) ) (! (= (Tclass._System.___hFunc1_1 (Tclass._System.___hFunc1 |#$T0@@0| |#$R@@0|)) |#$R@@0|)
 :qid |unknown.0:0|
 :skolemid |2399|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@0| |#$R@@0|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (DatatypeCtorId (|#Lists.List.Cons| |a#4#0#0| |a#4#1#0|)) |##Lists.List.Cons|)
 :qid |OrPatternsdfy.35:33|
 :skolemid |2562|
 :pattern ( (|#Lists.List.Cons| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) ) (! (= (Lists.List.car (|#Lists.List.Cons| |a#8#0#0| |a#8#1#0|)) |a#8#0#0|)
 :qid |OrPatternsdfy.35:33|
 :skolemid |2571|
 :pattern ( (|#Lists.List.Cons| |a#8#0#0| |a#8#1#0|))
)))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| T@U) ) (! (= (Lists.List.cdr (|#Lists.List.Cons| |a#10#0#0| |a#10#1#0|)) |a#10#1#0|)
 :qid |OrPatternsdfy.35:33|
 :skolemid |2573|
 :pattern ( (|#Lists.List.Cons| |a#10#0#0| |a#10#1#0|))
)))
(assert (forall (($o@@0 T@U) ) (! ($Is refType $o@@0 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |2378|
 :pattern ( ($Is refType $o@@0 Tclass._System.object?))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |2032|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2033|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((Lists.List$T@@8 T@U) ) (! (= (Tclass.Lists.List_0 (Tclass.Lists.List Lists.List$T@@8)) Lists.List$T@@8)
 :qid |unknown.0:0|
 :skolemid |2515|
 :pattern ( (Tclass.Lists.List Lists.List$T@@8))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2056|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((|a#9#0#0| T@U) (|a#9#1#0| T@U) ) (! (< (BoxRank |a#9#0#0|) (DtRank (|#Lists.List.Cons| |a#9#0#0| |a#9#1#0|)))
 :qid |OrPatternsdfy.35:33|
 :skolemid |2572|
 :pattern ( (|#Lists.List.Cons| |a#9#0#0| |a#9#1#0|))
)))
(assert (forall ((|a#11#0#0| T@U) (|a#11#1#0| T@U) ) (! (< (DtRank |a#11#1#0|) (DtRank (|#Lists.List.Cons| |a#11#0#0| |a#11#1#0|)))
 :qid |OrPatternsdfy.35:33|
 :skolemid |2574|
 :pattern ( (|#Lists.List.Cons| |a#11#0#0| |a#11#1#0|))
)))
(assert (forall ((f@@10 T@U) (ly@@0 T@U) (A@@0 T@T) ) (! (= (AtLayer A@@0 f@@10 ($LS ly@@0)) (AtLayer A@@0 f@@10 ly@@0))
 :qid |DafnyPreludebpl.502:18|
 :skolemid |2133|
 :pattern ( (AtLayer A@@0 f@@10 ($LS ly@@0)))
)))
(assert (forall ((f@@11 T@U) (t0@@16 T@U) (t1@@14 T@U) (h@@9 T@U) ) (!  (=> ($IsGoodHeap h@@9) (= ($IsAlloc HandleTypeType f@@11 (Tclass._System.___hFunc1 t0@@16 t1@@14) h@@9) (forall ((bx0@@11 T@U) ) (!  (=> (and (and ($IsBox bx0@@11 t0@@16) ($IsAllocBox bx0@@11 t0@@16 h@@9)) (Requires1 t0@@16 t1@@14 h@@9 f@@11 bx0@@11)) (forall ((r@@2 T@U) ) (!  (=> (and (or (not (= r@@2 null)) (not true)) (|Set#IsMember| (Reads1 t0@@16 t1@@14 h@@9 f@@11 bx0@@11) ($Box refType r@@2))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@9 r@@2) alloc))))
 :qid |unknown.0:0|
 :skolemid |2423|
 :pattern ( (|Set#IsMember| (Reads1 t0@@16 t1@@14 h@@9 f@@11 bx0@@11) ($Box refType r@@2)))
)))
 :qid |unknown.0:0|
 :skolemid |2424|
 :pattern ( (Apply1 t0@@16 t1@@14 h@@9 f@@11 bx0@@11))
 :pattern ( (Reads1 t0@@16 t1@@14 h@@9 f@@11 bx0@@11))
))))
 :qid |unknown.0:0|
 :skolemid |2425|
 :pattern ( ($IsAlloc HandleTypeType f@@11 (Tclass._System.___hFunc1 t0@@16 t1@@14) h@@9))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$R@@1| T@U) (bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@11)) bx@@11) ($Is HandleTypeType ($Unbox HandleTypeType bx@@11) (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|))))
 :qid |unknown.0:0|
 :skolemid |2400|
 :pattern ( ($IsBox bx@@11 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)))
)))
(assert (forall ((d@@16 T@U) (Lists.List$T@@9 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (Lists.List.Cons_q d@@16) ($IsAlloc DatatypeTypeType d@@16 (Tclass.Lists.List Lists.List$T@@9) $h@@2))) ($IsAllocBox (Lists.List.car d@@16) Lists.List$T@@9 $h@@2))
 :qid |unknown.0:0|
 :skolemid |2568|
 :pattern ( ($IsAllocBox (Lists.List.car d@@16) Lists.List$T@@9 $h@@2))
)))
(assert (forall ((|l#0@@5| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@5| |l#1| |l#2| |l#3|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0@@5|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o@@1) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2644|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@5| |l#1| |l#2| |l#3|) $o@@1 $f))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$R@@2| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |2397|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|))
)))
(assert (forall ((d@@17 T@U) ) (!  (=> ($Is DatatypeTypeType d@@17 Tclass._module.Enum) (or (or (_module.Enum.One_q d@@17) (_module.Enum.Two_q d@@17)) (_module.Enum.Three_q d@@17)))
 :qid |unknown.0:0|
 :skolemid |2531|
 :pattern ( (_module.Enum.Three_q d@@17) ($Is DatatypeTypeType d@@17 Tclass._module.Enum))
 :pattern ( (_module.Enum.Two_q d@@17) ($Is DatatypeTypeType d@@17 Tclass._module.Enum))
 :pattern ( (_module.Enum.One_q d@@17) ($Is DatatypeTypeType d@@17 Tclass._module.Enum))
)))
(assert (forall ((d@@18 T@U) ) (!  (=> ($Is DatatypeTypeType d@@18 Tclass.TestVariables.DT) (or (or (TestVariables.DT.A_q d@@18) (TestVariables.DT.B_q d@@18)) (TestVariables.DT.C_q d@@18)))
 :qid |unknown.0:0|
 :skolemid |2604|
 :pattern ( (TestVariables.DT.C_q d@@18) ($Is DatatypeTypeType d@@18 Tclass.TestVariables.DT))
 :pattern ( (TestVariables.DT.B_q d@@18) ($Is DatatypeTypeType d@@18 Tclass.TestVariables.DT))
 :pattern ( (TestVariables.DT.A_q d@@18) ($Is DatatypeTypeType d@@18 Tclass.TestVariables.DT))
)))
(assert (forall ((|$l#20#heap#0@@0| T@U) (|$l#20#y#0@@0| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType |lambda#2| |$l#20#heap#0@@0| |$l#20#y#0@@0|) ($Box intType ($Unbox intType |$l#20#y#0@@0|)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2645|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType |lambda#2| |$l#20#heap#0@@0| |$l#20#y#0@@0|))
)))
(assert (forall ((t0@@17 T@U) (t1@@15 T@U) (heap@@3 T@U) (f@@12 T@U) (bx0@@12 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@3) (and ($IsBox bx0@@12 t0@@17) ($Is HandleTypeType f@@12 (Tclass._System.___hFunc1 t0@@17 t1@@15)))) (|Set#Equal| (Reads1 t0@@17 t1@@15 $OneHeap f@@12 bx0@@12) |Set#Empty|)) (= (Requires1 t0@@17 t1@@15 $OneHeap f@@12 bx0@@12) (Requires1 t0@@17 t1@@15 heap@@3 f@@12 bx0@@12)))
 :qid |unknown.0:0|
 :skolemid |2417|
 :pattern ( (Requires1 t0@@17 t1@@15 $OneHeap f@@12 bx0@@12) ($IsGoodHeap heap@@3))
 :pattern ( (Requires1 t0@@17 t1@@15 heap@@3 f@@12 bx0@@12))
)))
(assert (forall ((d@@19 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@19)) (DtRank d@@19))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |2115|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@19)))
)))
(assert (forall ((bx@@12 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@12 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@12)) bx@@12) ($Is SetType ($Unbox SetType bx@@12) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |2063|
 :pattern ( ($IsBox bx@@12 (TSet t@@5)))
)))
(assert (forall ((Lists.List$T@@10 T@U) (bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 (Tclass.Lists.List Lists.List$T@@10)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@13)) bx@@13) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@13) (Tclass.Lists.List Lists.List$T@@10))))
 :qid |unknown.0:0|
 :skolemid |2516|
 :pattern ( ($IsBox bx@@13 (Tclass.Lists.List Lists.List$T@@10)))
)))
(assert (forall ((Lists.List$T@@11 T@U) ($ly@@3 T@U) (this@@8 T@U) ) (!  (=> (or (|Lists.List.Length#canCall| Lists.List$T@@11 this@@8) ($Is DatatypeTypeType this@@8 (Tclass.Lists.List Lists.List$T@@11))) (and (=> (not (Lists.List.Nil_q this@@8)) (let ((|t#5| (Lists.List.cdr this@@8)))
(|Lists.List.Length#canCall| Lists.List$T@@11 |t#5|))) (= (Lists.List.Length Lists.List$T@@11 ($LS $ly@@3) this@@8) (ite (Lists.List.Nil_q this@@8) 0 (let ((|t#4| (Lists.List.cdr this@@8)))
(+ 1 (Lists.List.Length Lists.List$T@@11 $ly@@3 |t#4|)))))))
 :qid |unknown.0:0|
 :skolemid |2584|
 :pattern ( (Lists.List.Length Lists.List$T@@11 ($LS $ly@@3) this@@8))
)))
(assert (forall ((d@@20 T@U) (Lists.List$T@@12 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (Lists.List.Cons_q d@@20) ($IsAlloc DatatypeTypeType d@@20 (Tclass.Lists.List Lists.List$T@@12) $h@@3))) ($IsAlloc DatatypeTypeType (Lists.List.cdr d@@20) (Tclass.Lists.List Lists.List$T@@12) $h@@3))
 :qid |unknown.0:0|
 :skolemid |2569|
 :pattern ( ($IsAlloc DatatypeTypeType (Lists.List.cdr d@@20) (Tclass.Lists.List Lists.List$T@@12) $h@@3))
)))
(assert (forall ((d@@21 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) ($Is DatatypeTypeType d@@21 Tclass._module.Enum)) ($IsAlloc DatatypeTypeType d@@21 Tclass._module.Enum $h@@4))
 :qid |unknown.0:0|
 :skolemid |2529|
 :pattern ( ($IsAlloc DatatypeTypeType d@@21 Tclass._module.Enum $h@@4))
)))
(assert (forall ((d@@22 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) ($Is DatatypeTypeType d@@22 Tclass.TestVariables.DT)) ($IsAlloc DatatypeTypeType d@@22 Tclass.TestVariables.DT $h@@5))
 :qid |unknown.0:0|
 :skolemid |2602|
 :pattern ( ($IsAlloc DatatypeTypeType d@@22 Tclass.TestVariables.DT $h@@5))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass._module.Enum) Tagclass._module.Enum))
(assert (= (TagFamily Tclass._module.Enum) tytagFamily$Enum))
(assert (= (Tag Tclass.TestVariables.DT) Tagclass.TestVariables.DT))
(assert (= (TagFamily Tclass.TestVariables.DT) tytagFamily$DT))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@9 T@U) ) (!  (=> (or (|_module.Enum.Even#canCall| (Lit DatatypeTypeType this@@9)) (and (< 0 $FunctionContextHeight) ($Is DatatypeTypeType this@@9 Tclass._module.Enum))) (= (_module.Enum.Even (Lit DatatypeTypeType this@@9)) (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Two_q (Lit DatatypeTypeType this@@9)))))))
 :qid |OrPatternsdfy.4:13|
 :weight 3
 :skolemid |2539|
 :pattern ( (_module.Enum.Even (Lit DatatypeTypeType this@@9)))
))))
(assert (= |#_module.Enum.One| (Lit DatatypeTypeType |#_module.Enum.One|)))
(assert (= |#_module.Enum.Two| (Lit DatatypeTypeType |#_module.Enum.Two|)))
(assert (= |#_module.Enum.Three| (Lit DatatypeTypeType |#_module.Enum.Three|)))
(assert (= |#Lists.List.Nil| (Lit DatatypeTypeType |#Lists.List.Nil|)))
(assert (= |#TestVariables.DT.A| (Lit DatatypeTypeType |#TestVariables.DT.A|)))
(assert (= |#TestVariables.DT.B| (Lit DatatypeTypeType |#TestVariables.DT.B|)))
(assert (= |#TestVariables.DT.C| (Lit DatatypeTypeType |#TestVariables.DT.C|)))
(assert (forall ((s@@0 T@U) ) (! ($Is SetType (SetRef_to_SetBox s@@0) (TSet Tclass._System.object?))
 :qid |DafnyPreludebpl.372:15|
 :skolemid |2114|
 :pattern ( (SetRef_to_SetBox s@@0))
)))
(assert (forall (($Heap@@1 T@U) (|dt#0@@1| T@U) ) (!  (=> (or (|TestVariables.__default.F#canCall| |dt#0@@1|) (and ($IsGoodHeap $Heap@@1) ($Is DatatypeTypeType |dt#0@@1| Tclass.TestVariables.DT))) (= (TestVariables.__default.F |dt#0@@1|) (ite (TestVariables.DT.A_q |dt#0@@1|) (let ((|x#8| (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@@1 (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 |lambda#2| (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ))) ($Box intType (int_2_U (LitInt 1))))))))
|x#8|) (ite (TestVariables.DT.B_q |dt#0@@1|) (let ((|x#9| (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@@1 (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 |lambda#2| (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ))) ($Box intType (int_2_U (LitInt 1))))))))
|x#9|) 0))))
 :qid |OrPatternsdfy.88:12|
 :skolemid |2590|
 :pattern ( (TestVariables.__default.F |dt#0@@1|) ($IsGoodHeap $Heap@@1))
)))
(assert (forall (($Heap@@2 T@U) (|dt#0@@2| T@U) ) (!  (=> (or (|TestVariables.__default.F2#canCall| |dt#0@@2|) (and ($IsGoodHeap $Heap@@2) ($Is DatatypeTypeType |dt#0@@2| Tclass.TestVariables.DT))) (= (TestVariables.__default.F2 |dt#0@@2|) (ite (TestVariables.DT.A_q |dt#0@@2|) (let ((|x#8@@0| (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@@2 (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 |lambda#2| (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ))) ($Box intType (int_2_U (LitInt 1))))))))
|x#8@@0|) (ite (TestVariables.DT.B_q |dt#0@@2|) (let ((|x#9@@0| (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@@2 (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle1 |lambda#2| (|lambda#3| TInt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ))) ($Box intType (int_2_U (LitInt 1))))))))
|x#9@@0|) 0))))
 :qid |OrPatternsdfy.94:12|
 :skolemid |2594|
 :pattern ( (TestVariables.__default.F2 |dt#0@@2|) ($IsGoodHeap $Heap@@2))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@1 b@@1) (forall ((o@@7 T@U) ) (! (= (|Set#IsMember| a@@1 o@@7) (|Set#IsMember| b@@1 o@@7))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |2179|
 :pattern ( (|Set#IsMember| a@@1 o@@7))
 :pattern ( (|Set#IsMember| b@@1 o@@7))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |2180|
 :pattern ( (|Set#Equal| a@@1 b@@1))
)))
(assert (forall ((|l#0@@6| T@U) ) (!  (=> (or (|Lists.__default.ContainsOne_k#canCall| (Lit DatatypeTypeType |l#0@@6|)) (and ($Is DatatypeTypeType |l#0@@6| (Tclass.Lists.List TInt)) (= (LitInt (Lists.List.Length TInt StartFuelAssert_Lists.List.Length (Lit DatatypeTypeType |l#0@@6|))) (LitInt 3)))) (= (Lists.__default.ContainsOne_k (Lit DatatypeTypeType |l#0@@6|)) (ite (= (LitInt (U_2_int ($Unbox intType (Lists.List.car (Lit DatatypeTypeType |l#0@@6|))))) (LitInt 1)) (ite (= (LitInt (U_2_int ($Unbox intType (Lists.List.car (Lit DatatypeTypeType (Lists.List.cdr (Lit DatatypeTypeType |l#0@@6|))))))) (LitInt 1)) (ite (= (LitInt (U_2_int ($Unbox intType (Lists.List.car (Lit DatatypeTypeType (Lists.List.cdr (Lit DatatypeTypeType (Lists.List.cdr (Lit DatatypeTypeType |l#0@@6|))))))))) (LitInt 1)) true true) (ite (= (LitInt (U_2_int ($Unbox intType (Lists.List.car (Lit DatatypeTypeType (Lists.List.cdr (Lit DatatypeTypeType (Lists.List.cdr (Lit DatatypeTypeType |l#0@@6|))))))))) (LitInt 1)) true true)) (ite (= (LitInt (U_2_int ($Unbox intType (Lists.List.car (Lit DatatypeTypeType (Lists.List.cdr (Lit DatatypeTypeType |l#0@@6|))))))) (LitInt 1)) (ite (= (LitInt (U_2_int ($Unbox intType (Lists.List.car (Lit DatatypeTypeType (Lists.List.cdr (Lit DatatypeTypeType (Lists.List.cdr (Lit DatatypeTypeType |l#0@@6|))))))))) (LitInt 1)) true true) (ite (= (LitInt (U_2_int ($Unbox intType (Lists.List.car (Lit DatatypeTypeType (Lists.List.cdr (Lit DatatypeTypeType (Lists.List.cdr (Lit DatatypeTypeType |l#0@@6|))))))))) (LitInt 1)) true false)))))
 :qid |OrPatternsdfy.49:26|
 :weight 3
 :skolemid |2557|
 :pattern ( (Lists.__default.ContainsOne_k (Lit DatatypeTypeType |l#0@@6|)))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (= (|#Lists.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)) (Lit DatatypeTypeType (|#Lists.List.Cons| |a#7#0#0| |a#7#1#0|)))
 :qid |OrPatternsdfy.35:33|
 :skolemid |2570|
 :pattern ( (|#Lists.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |2049|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |2047|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert (forall ((h@@10 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@10)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |2092|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@10))
)))
(assert (forall ((Lists.List$T@@13 T@U) (|a#6#0#0@@0| T@U) (|a#6#1#0@@0| T@U) ($h@@6 T@U) ) (!  (=> ($IsGoodHeap $h@@6) (= ($IsAlloc DatatypeTypeType (|#Lists.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass.Lists.List Lists.List$T@@13) $h@@6)  (and ($IsAllocBox |a#6#0#0@@0| Lists.List$T@@13 $h@@6) ($IsAlloc DatatypeTypeType |a#6#1#0@@0| (Tclass.Lists.List Lists.List$T@@13) $h@@6))))
 :qid |unknown.0:0|
 :skolemid |2567|
 :pattern ( ($IsAlloc DatatypeTypeType (|#Lists.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass.Lists.List Lists.List$T@@13) $h@@6))
)))
(assert (forall ((|l#0@@7| T@U) (|$l#20#heap#0@@1| T@U) (|$l#20#y#0@@1| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#5| |l#0@@7|) |$l#20#heap#0@@1| |$l#20#y#0@@1|) |l#0@@7|)
 :qid |OrPatternsdfy.91:31|
 :skolemid |2648|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#5| |l#0@@7|) |$l#20#heap#0@@1| |$l#20#y#0@@1|))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |2071|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |call2formal@j#0@0| () Int)
(declare-fun |call2formal@j#0@0@@0| () Int)
(declare-fun |call2formal@j#0@0@@1| () Int)
(declare-fun |call2formal@j#0@0@@2| () Int)
(declare-fun |b4#0@0| () Int)
(declare-fun |b5#0@0| () Int)
(declare-fun |b6#0@0| () Int)
(declare-fun |a3#0@0| () T@U)
(declare-fun |dt##0@0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap@@3 () T@U)
(declare-fun |dt##1@0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |dt##2@0| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |dt##3@0| () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |##dt#0@0| () T@U)
(declare-fun |##dt#1@0| () T@U)
(declare-fun |##dt#2@0| () T@U)
(declare-fun |##dt#3@0| () T@U)
(declare-fun |b7#0@0| () Int)
(declare-fun |a2#0@0| () T@U)
(declare-fun |a1#0@0| () T@U)
(declare-fun |a0#0@0| () T@U)
(declare-fun StartFuel_Lists.List.Length () T@U)
(declare-fun BaseFuel_Lists.List.Length () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |a0#0| () T@U)
(declare-fun |a1#0| () T@U)
(declare-fun |a2#0| () T@U)
(declare-fun |a3#0| () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.Main)
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
 (=> (= (ControlFlow 0 0) 72) (let ((anon75_Else_correct true))
(let ((anon75_Then_correct true))
(let ((anon48_correct  (and (=> (= (ControlFlow 0 10) 8) anon75_Then_correct) (=> (= (ControlFlow 0 10) 9) anon75_Else_correct))))
(let ((anon74_Else_correct  (=> (and (not (and (and (and (and (and (and (= (LitInt 1) |call2formal@j#0@0|) (= |call2formal@j#0@0| |call2formal@j#0@0@@0|)) (= |call2formal@j#0@0@@0| |call2formal@j#0@0@@1|)) (= |call2formal@j#0@0@@1| |call2formal@j#0@0@@2|)) (= |call2formal@j#0@0@@2| |b4#0@0|)) (= |b4#0@0| |b5#0@0|)) (= |b5#0@0| |b6#0@0|))) (= (ControlFlow 0 12) 10)) anon48_correct)))
(let ((anon74_Then_correct  (=> (and (and (and (and (and (and (and (= (LitInt 1) |call2formal@j#0@0|) (= |call2formal@j#0@0| |call2formal@j#0@0@@0|)) (= |call2formal@j#0@0@@0| |call2formal@j#0@0@@1|)) (= |call2formal@j#0@0@@1| |call2formal@j#0@0@@2|)) (= |call2formal@j#0@0@@2| |b4#0@0|)) (= |b4#0@0| |b5#0@0|)) (= |b5#0@0| |b6#0@0|)) (= (ControlFlow 0 11) 10)) anon48_correct)))
(let ((anon73_Else_correct  (=> (not (and (and (and (and (and (= (LitInt 1) |call2formal@j#0@0|) (= |call2formal@j#0@0| |call2formal@j#0@0@@0|)) (= |call2formal@j#0@0@@0| |call2formal@j#0@0@@1|)) (= |call2formal@j#0@0@@1| |call2formal@j#0@0@@2|)) (= |call2formal@j#0@0@@2| |b4#0@0|)) (= |b4#0@0| |b5#0@0|))) (and (=> (= (ControlFlow 0 14) 11) anon74_Then_correct) (=> (= (ControlFlow 0 14) 12) anon74_Else_correct)))))
(let ((anon73_Then_correct  (=> (and (and (and (and (and (= (LitInt 1) |call2formal@j#0@0|) (= |call2formal@j#0@0| |call2formal@j#0@0@@0|)) (= |call2formal@j#0@0@@0| |call2formal@j#0@0@@1|)) (= |call2formal@j#0@0@@1| |call2formal@j#0@0@@2|)) (= |call2formal@j#0@0@@2| |b4#0@0|)) (= |b4#0@0| |b5#0@0|)) (and (=> (= (ControlFlow 0 13) 11) anon74_Then_correct) (=> (= (ControlFlow 0 13) 12) anon74_Else_correct)))))
(let ((anon72_Else_correct  (=> (not (and (and (and (and (= (LitInt 1) |call2formal@j#0@0|) (= |call2formal@j#0@0| |call2formal@j#0@0@@0|)) (= |call2formal@j#0@0@@0| |call2formal@j#0@0@@1|)) (= |call2formal@j#0@0@@1| |call2formal@j#0@0@@2|)) (= |call2formal@j#0@0@@2| |b4#0@0|))) (and (=> (= (ControlFlow 0 16) 13) anon73_Then_correct) (=> (= (ControlFlow 0 16) 14) anon73_Else_correct)))))
(let ((anon72_Then_correct  (=> (and (and (and (and (= (LitInt 1) |call2formal@j#0@0|) (= |call2formal@j#0@0| |call2formal@j#0@0@@0|)) (= |call2formal@j#0@0@@0| |call2formal@j#0@0@@1|)) (= |call2formal@j#0@0@@1| |call2formal@j#0@0@@2|)) (= |call2formal@j#0@0@@2| |b4#0@0|)) (and (=> (= (ControlFlow 0 15) 13) anon73_Then_correct) (=> (= (ControlFlow 0 15) 14) anon73_Else_correct)))))
(let ((anon71_Else_correct  (=> (not (and (and (and (= (LitInt 1) |call2formal@j#0@0|) (= |call2formal@j#0@0| |call2formal@j#0@0@@0|)) (= |call2formal@j#0@0@@0| |call2formal@j#0@0@@1|)) (= |call2formal@j#0@0@@1| |call2formal@j#0@0@@2|))) (and (=> (= (ControlFlow 0 18) 15) anon72_Then_correct) (=> (= (ControlFlow 0 18) 16) anon72_Else_correct)))))
(let ((anon71_Then_correct  (=> (and (and (and (= (LitInt 1) |call2formal@j#0@0|) (= |call2formal@j#0@0| |call2formal@j#0@0@@0|)) (= |call2formal@j#0@0@@0| |call2formal@j#0@0@@1|)) (= |call2formal@j#0@0@@1| |call2formal@j#0@0@@2|)) (and (=> (= (ControlFlow 0 17) 15) anon72_Then_correct) (=> (= (ControlFlow 0 17) 16) anon72_Else_correct)))))
(let ((anon70_Else_correct  (=> (not (and (and (= (LitInt 1) |call2formal@j#0@0|) (= |call2formal@j#0@0| |call2formal@j#0@0@@0|)) (= |call2formal@j#0@0@@0| |call2formal@j#0@0@@1|))) (and (=> (= (ControlFlow 0 20) 17) anon71_Then_correct) (=> (= (ControlFlow 0 20) 18) anon71_Else_correct)))))
(let ((anon70_Then_correct  (=> (and (and (= (LitInt 1) |call2formal@j#0@0|) (= |call2formal@j#0@0| |call2formal@j#0@0@@0|)) (= |call2formal@j#0@0@@0| |call2formal@j#0@0@@1|)) (and (=> (= (ControlFlow 0 19) 17) anon71_Then_correct) (=> (= (ControlFlow 0 19) 18) anon71_Else_correct)))))
(let ((anon69_Else_correct  (=> (not (and (= (LitInt 1) |call2formal@j#0@0|) (= |call2formal@j#0@0| |call2formal@j#0@0@@0|))) (and (=> (= (ControlFlow 0 22) 19) anon70_Then_correct) (=> (= (ControlFlow 0 22) 20) anon70_Else_correct)))))
(let ((anon69_Then_correct  (=> (and (= (LitInt 1) |call2formal@j#0@0|) (= |call2formal@j#0@0| |call2formal@j#0@0@@0|)) (and (=> (= (ControlFlow 0 21) 19) anon70_Then_correct) (=> (= (ControlFlow 0 21) 20) anon70_Else_correct)))))
(let ((anon68_Else_correct  (=> (or (not (= (LitInt 1) |call2formal@j#0@0|)) (not true)) (and (=> (= (ControlFlow 0 24) 21) anon69_Then_correct) (=> (= (ControlFlow 0 24) 22) anon69_Else_correct)))))
(let ((anon68_Then_correct  (=> (= (LitInt 1) |call2formal@j#0@0|) (and (=> (= (ControlFlow 0 23) 21) anon69_Then_correct) (=> (= (ControlFlow 0 23) 22) anon69_Else_correct)))))
(let ((anon67_Else_correct  (=> (and (and (= (Lists.__default.ContainsOne |a3#0@0|) (Lists.__default.ContainsOne_k |a3#0@0|)) (= (Lists.__default.ContainsOne_k |a3#0@0|) (U_2_bool (Lit boolType (bool_2_U true))))) (= |dt##0@0| (Lit DatatypeTypeType |#TestVariables.DT.A|))) (=> (and (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (forall (($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@3 $o@@2) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@2) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@3 $o@@2)))
 :qid |OrPatternsdfy.72:10|
 :skolemid |2586|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@2))
))) (and ($HeapSucc $Heap@@3 $Heap@0) (= |dt##1@0| (Lit DatatypeTypeType |#TestVariables.DT.B|)))) (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (forall (($o@@3 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@3) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $o@@3) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@3)))
 :qid |OrPatternsdfy.72:10|
 :skolemid |2586|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $o@@3))
))) (and ($HeapSucc $Heap@0 $Heap@1) (= |dt##2@0| (Lit DatatypeTypeType |#TestVariables.DT.A|))))) (=> (and (and (and (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (forall (($o@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $o@@4) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 $o@@4) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $o@@4)))
 :qid |OrPatternsdfy.80:10|
 :skolemid |2587|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 $o@@4))
))) (and ($HeapSucc $Heap@1 $Heap@2) (= |dt##3@0| (Lit DatatypeTypeType |#TestVariables.DT.B|)))) (and (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (and (forall (($o@@5 T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 $o@@5) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@3 $o@@5) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 $o@@5)))
 :qid |OrPatternsdfy.80:10|
 :skolemid |2587|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@3 $o@@5))
)) ($HeapSucc $Heap@2 $Heap@3))) (and (and (= |##dt#0@0| (Lit DatatypeTypeType |#TestVariables.DT.A|)) ($IsAlloc DatatypeTypeType |##dt#0@0| Tclass.TestVariables.DT $Heap@3)) (and (|TestVariables.__default.F#canCall| (Lit DatatypeTypeType |#TestVariables.DT.A|)) (|TestVariables.__default.F#canCall| (Lit DatatypeTypeType |#TestVariables.DT.A|)))))) (and (and (and (and (= |b4#0@0| (LitInt (TestVariables.__default.F (Lit DatatypeTypeType |#TestVariables.DT.A|)))) (= |##dt#1@0| (Lit DatatypeTypeType |#TestVariables.DT.B|))) (and ($IsAlloc DatatypeTypeType |##dt#1@0| Tclass.TestVariables.DT $Heap@3) (|TestVariables.__default.F#canCall| (Lit DatatypeTypeType |#TestVariables.DT.B|)))) (and (and (|TestVariables.__default.F#canCall| (Lit DatatypeTypeType |#TestVariables.DT.B|)) (= |b5#0@0| (LitInt (TestVariables.__default.F (Lit DatatypeTypeType |#TestVariables.DT.B|))))) (and (= |##dt#2@0| (Lit DatatypeTypeType |#TestVariables.DT.A|)) ($IsAlloc DatatypeTypeType |##dt#2@0| Tclass.TestVariables.DT $Heap@3)))) (and (and (and (|TestVariables.__default.F2#canCall| (Lit DatatypeTypeType |#TestVariables.DT.A|)) (|TestVariables.__default.F2#canCall| (Lit DatatypeTypeType |#TestVariables.DT.A|))) (and (= |b6#0@0| (LitInt (TestVariables.__default.F2 (Lit DatatypeTypeType |#TestVariables.DT.A|)))) (= |##dt#3@0| (Lit DatatypeTypeType |#TestVariables.DT.B|)))) (and (and ($IsAlloc DatatypeTypeType |##dt#3@0| Tclass.TestVariables.DT $Heap@3) (|TestVariables.__default.F2#canCall| (Lit DatatypeTypeType |#TestVariables.DT.B|))) (and (|TestVariables.__default.F2#canCall| (Lit DatatypeTypeType |#TestVariables.DT.B|)) (= |b7#0@0| (LitInt (TestVariables.__default.F2 (Lit DatatypeTypeType |#TestVariables.DT.B|))))))))) (and (=> (= (ControlFlow 0 25) 23) anon68_Then_correct) (=> (= (ControlFlow 0 25) 24) anon68_Else_correct)))))))
(let ((anon67_Then_correct true))
(let ((anon32_correct  (=> (and (and (|Lists.__default.ContainsOne#canCall| |a3#0@0|) (|Lists.__default.ContainsOne_k#canCall| |a3#0@0|)) (=> (= (Lists.__default.ContainsOne |a3#0@0|) (Lists.__default.ContainsOne_k |a3#0@0|)) (|Lists.__default.ContainsOne_k#canCall| |a3#0@0|))) (and (=> (= (ControlFlow 0 26) 7) anon67_Then_correct) (=> (= (ControlFlow 0 26) 25) anon67_Else_correct)))))
(let ((anon66_Else_correct  (=> (and (= (Lists.__default.ContainsOne |a3#0@0|)  (not (Lists.__default.ContainsOne_k |a3#0@0|))) (= (ControlFlow 0 29) 26)) anon32_correct)))
(let ((anon66_Then_correct  (=> (and (= (Lists.__default.ContainsOne |a3#0@0|) (Lists.__default.ContainsOne_k |a3#0@0|)) ($IsAlloc DatatypeTypeType |a3#0@0| (Tclass.Lists.List TInt) $Heap@@3)) (and (=> (= (ControlFlow 0 27) (- 0 28)) (= (Lists.List.Length TInt StartFuelAssert_Lists.List.Length |a3#0@0|) (LitInt 3))) (=> (and (|Lists.__default.ContainsOne_k#canCall| |a3#0@0|) (= (ControlFlow 0 27) 26)) anon32_correct)))))
(let ((anon65_Else_correct  (=> (and (and (= (Lists.__default.ContainsOne |a2#0@0|) (Lists.__default.ContainsOne_k |a2#0@0|)) (= (Lists.__default.ContainsOne_k |a2#0@0|) (U_2_bool (Lit boolType (bool_2_U true))))) (and (= |a3#0@0| (Lit DatatypeTypeType (|#Lists.List.Cons| ($Box intType (int_2_U (LitInt 0))) (Lit DatatypeTypeType (|#Lists.List.Cons| ($Box intType (int_2_U (LitInt 0))) (Lit DatatypeTypeType (|#Lists.List.Cons| ($Box intType (int_2_U (LitInt 1))) (Lit DatatypeTypeType |#Lists.List.Nil|)))))))) ($IsAlloc DatatypeTypeType |a3#0@0| (Tclass.Lists.List TInt) $Heap@@3))) (and (=> (= (ControlFlow 0 30) (- 0 32)) (= (Lists.List.Length TInt StartFuelAssert_Lists.List.Length |a3#0@0|) (LitInt 3))) (=> (and (|Lists.__default.ContainsOne#canCall| |a3#0@0|) ($IsAlloc DatatypeTypeType |a3#0@0| (Tclass.Lists.List TInt) $Heap@@3)) (and (=> (= (ControlFlow 0 30) (- 0 31)) (= (Lists.List.Length TInt StartFuelAssert_Lists.List.Length |a3#0@0|) (LitInt 3))) (=> (|Lists.__default.ContainsOne_k#canCall| |a3#0@0|) (and (=> (= (ControlFlow 0 30) 27) anon66_Then_correct) (=> (= (ControlFlow 0 30) 29) anon66_Else_correct)))))))))
(let ((anon65_Then_correct true))
(let ((anon28_correct  (=> (and (and (|Lists.__default.ContainsOne#canCall| |a2#0@0|) (|Lists.__default.ContainsOne_k#canCall| |a2#0@0|)) (=> (= (Lists.__default.ContainsOne |a2#0@0|) (Lists.__default.ContainsOne_k |a2#0@0|)) (|Lists.__default.ContainsOne_k#canCall| |a2#0@0|))) (and (=> (= (ControlFlow 0 33) 6) anon65_Then_correct) (=> (= (ControlFlow 0 33) 30) anon65_Else_correct)))))
(let ((anon64_Else_correct  (=> (and (= (Lists.__default.ContainsOne |a2#0@0|)  (not (Lists.__default.ContainsOne_k |a2#0@0|))) (= (ControlFlow 0 36) 33)) anon28_correct)))
(let ((anon64_Then_correct  (=> (and (= (Lists.__default.ContainsOne |a2#0@0|) (Lists.__default.ContainsOne_k |a2#0@0|)) ($IsAlloc DatatypeTypeType |a2#0@0| (Tclass.Lists.List TInt) $Heap@@3)) (and (=> (= (ControlFlow 0 34) (- 0 35)) (= (Lists.List.Length TInt StartFuelAssert_Lists.List.Length |a2#0@0|) (LitInt 3))) (=> (and (|Lists.__default.ContainsOne_k#canCall| |a2#0@0|) (= (ControlFlow 0 34) 33)) anon28_correct)))))
(let ((anon63_Else_correct  (=> (and (and (= (Lists.__default.ContainsOne |a1#0@0|) (Lists.__default.ContainsOne_k |a1#0@0|)) (= (Lists.__default.ContainsOne_k |a1#0@0|) (U_2_bool (Lit boolType (bool_2_U true))))) (and (= |a2#0@0| (Lit DatatypeTypeType (|#Lists.List.Cons| ($Box intType (int_2_U (LitInt 0))) (Lit DatatypeTypeType (|#Lists.List.Cons| ($Box intType (int_2_U (LitInt 1))) (Lit DatatypeTypeType (|#Lists.List.Cons| ($Box intType (int_2_U (LitInt 0))) (Lit DatatypeTypeType |#Lists.List.Nil|)))))))) ($IsAlloc DatatypeTypeType |a2#0@0| (Tclass.Lists.List TInt) $Heap@@3))) (and (=> (= (ControlFlow 0 37) (- 0 39)) (= (Lists.List.Length TInt StartFuelAssert_Lists.List.Length |a2#0@0|) (LitInt 3))) (=> (and (|Lists.__default.ContainsOne#canCall| |a2#0@0|) ($IsAlloc DatatypeTypeType |a2#0@0| (Tclass.Lists.List TInt) $Heap@@3)) (and (=> (= (ControlFlow 0 37) (- 0 38)) (= (Lists.List.Length TInt StartFuelAssert_Lists.List.Length |a2#0@0|) (LitInt 3))) (=> (|Lists.__default.ContainsOne_k#canCall| |a2#0@0|) (and (=> (= (ControlFlow 0 37) 34) anon64_Then_correct) (=> (= (ControlFlow 0 37) 36) anon64_Else_correct)))))))))
(let ((anon63_Then_correct true))
(let ((anon24_correct  (=> (and (and (|Lists.__default.ContainsOne#canCall| |a1#0@0|) (|Lists.__default.ContainsOne_k#canCall| |a1#0@0|)) (=> (= (Lists.__default.ContainsOne |a1#0@0|) (Lists.__default.ContainsOne_k |a1#0@0|)) (|Lists.__default.ContainsOne_k#canCall| |a1#0@0|))) (and (=> (= (ControlFlow 0 40) 5) anon63_Then_correct) (=> (= (ControlFlow 0 40) 37) anon63_Else_correct)))))
(let ((anon62_Else_correct  (=> (and (= (Lists.__default.ContainsOne |a1#0@0|)  (not (Lists.__default.ContainsOne_k |a1#0@0|))) (= (ControlFlow 0 43) 40)) anon24_correct)))
(let ((anon62_Then_correct  (=> (and (= (Lists.__default.ContainsOne |a1#0@0|) (Lists.__default.ContainsOne_k |a1#0@0|)) ($IsAlloc DatatypeTypeType |a1#0@0| (Tclass.Lists.List TInt) $Heap@@3)) (and (=> (= (ControlFlow 0 41) (- 0 42)) (= (Lists.List.Length TInt StartFuelAssert_Lists.List.Length |a1#0@0|) (LitInt 3))) (=> (and (|Lists.__default.ContainsOne_k#canCall| |a1#0@0|) (= (ControlFlow 0 41) 40)) anon24_correct)))))
(let ((anon61_Else_correct  (=> (and (and (= (Lists.__default.ContainsOne |a0#0@0|) (Lists.__default.ContainsOne_k |a0#0@0|)) (= (Lists.__default.ContainsOne_k |a0#0@0|) (U_2_bool (Lit boolType (bool_2_U false))))) (and (= |a1#0@0| (Lit DatatypeTypeType (|#Lists.List.Cons| ($Box intType (int_2_U (LitInt 1))) (Lit DatatypeTypeType (|#Lists.List.Cons| ($Box intType (int_2_U (LitInt 0))) (Lit DatatypeTypeType (|#Lists.List.Cons| ($Box intType (int_2_U (LitInt 0))) (Lit DatatypeTypeType |#Lists.List.Nil|)))))))) ($IsAlloc DatatypeTypeType |a1#0@0| (Tclass.Lists.List TInt) $Heap@@3))) (and (=> (= (ControlFlow 0 44) (- 0 46)) (= (Lists.List.Length TInt StartFuelAssert_Lists.List.Length |a1#0@0|) (LitInt 3))) (=> (and (|Lists.__default.ContainsOne#canCall| |a1#0@0|) ($IsAlloc DatatypeTypeType |a1#0@0| (Tclass.Lists.List TInt) $Heap@@3)) (and (=> (= (ControlFlow 0 44) (- 0 45)) (= (Lists.List.Length TInt StartFuelAssert_Lists.List.Length |a1#0@0|) (LitInt 3))) (=> (|Lists.__default.ContainsOne_k#canCall| |a1#0@0|) (and (=> (= (ControlFlow 0 44) 41) anon62_Then_correct) (=> (= (ControlFlow 0 44) 43) anon62_Else_correct)))))))))
(let ((anon61_Then_correct true))
(let ((anon20_correct  (=> (and (and (|Lists.__default.ContainsOne#canCall| |a0#0@0|) (|Lists.__default.ContainsOne_k#canCall| |a0#0@0|)) (=> (= (Lists.__default.ContainsOne |a0#0@0|) (Lists.__default.ContainsOne_k |a0#0@0|)) (|Lists.__default.ContainsOne_k#canCall| |a0#0@0|))) (and (=> (= (ControlFlow 0 47) 4) anon61_Then_correct) (=> (= (ControlFlow 0 47) 44) anon61_Else_correct)))))
(let ((anon60_Else_correct  (=> (and (= (Lists.__default.ContainsOne |a0#0@0|)  (not (Lists.__default.ContainsOne_k |a0#0@0|))) (= (ControlFlow 0 50) 47)) anon20_correct)))
(let ((anon60_Then_correct  (=> (and (= (Lists.__default.ContainsOne |a0#0@0|) (Lists.__default.ContainsOne_k |a0#0@0|)) ($IsAlloc DatatypeTypeType |a0#0@0| (Tclass.Lists.List TInt) $Heap@@3)) (and (=> (= (ControlFlow 0 48) (- 0 49)) (= (Lists.List.Length TInt StartFuelAssert_Lists.List.Length |a0#0@0|) (LitInt 3))) (=> (and (|Lists.__default.ContainsOne_k#canCall| |a0#0@0|) (= (ControlFlow 0 48) 47)) anon20_correct)))))
(let ((anon59_Else_correct  (=> (and (and (and (= (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even (Lit DatatypeTypeType |#_module.Enum.Three|))))) (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even_k (Lit DatatypeTypeType |#_module.Enum.Three|)))))) (= (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even_k (Lit DatatypeTypeType |#_module.Enum.Three|))))) (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even_k_k (Lit DatatypeTypeType |#_module.Enum.Three|))))))) (= (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even_k_k (Lit DatatypeTypeType |#_module.Enum.Three|))))) (U_2_bool (Lit boolType (bool_2_U false))))) (and (= |a0#0@0| (Lit DatatypeTypeType (|#Lists.List.Cons| ($Box intType (int_2_U (LitInt 0))) (Lit DatatypeTypeType (|#Lists.List.Cons| ($Box intType (int_2_U (LitInt 0))) (Lit DatatypeTypeType (|#Lists.List.Cons| ($Box intType (int_2_U (LitInt 0))) (Lit DatatypeTypeType |#Lists.List.Nil|)))))))) ($IsAlloc DatatypeTypeType |a0#0@0| (Tclass.Lists.List TInt) $Heap@@3))) (and (=> (= (ControlFlow 0 51) (- 0 53)) (= (Lists.List.Length TInt StartFuelAssert_Lists.List.Length |a0#0@0|) (LitInt 3))) (=> (and (|Lists.__default.ContainsOne#canCall| |a0#0@0|) ($IsAlloc DatatypeTypeType |a0#0@0| (Tclass.Lists.List TInt) $Heap@@3)) (and (=> (= (ControlFlow 0 51) (- 0 52)) (= (Lists.List.Length TInt StartFuelAssert_Lists.List.Length |a0#0@0|) (LitInt 3))) (=> (|Lists.__default.ContainsOne_k#canCall| |a0#0@0|) (and (=> (= (ControlFlow 0 51) 48) anon60_Then_correct) (=> (= (ControlFlow 0 51) 50) anon60_Else_correct)))))))))
(let ((anon59_Then_correct true))
(let ((anon16_correct  (=> (and (and (|_module.Enum.Even#canCall| (Lit DatatypeTypeType |#_module.Enum.Three|)) (|_module.Enum.Even_k#canCall| (Lit DatatypeTypeType |#_module.Enum.Three|))) (=> (= (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even (Lit DatatypeTypeType |#_module.Enum.Three|))))) (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even_k (Lit DatatypeTypeType |#_module.Enum.Three|)))))) (and (and (|_module.Enum.Even_k#canCall| (Lit DatatypeTypeType |#_module.Enum.Three|)) (|_module.Enum.Even_k_k#canCall| (Lit DatatypeTypeType |#_module.Enum.Three|))) (=> (= (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even_k (Lit DatatypeTypeType |#_module.Enum.Three|))))) (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even_k_k (Lit DatatypeTypeType |#_module.Enum.Three|)))))) (|_module.Enum.Even_k_k#canCall| (Lit DatatypeTypeType |#_module.Enum.Three|)))))) (and (=> (= (ControlFlow 0 54) 3) anon59_Then_correct) (=> (= (ControlFlow 0 54) 51) anon59_Else_correct)))))
(let ((anon58_Else_correct  (=> (and (not (and (= (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even (Lit DatatypeTypeType |#_module.Enum.Three|))))) (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even_k (Lit DatatypeTypeType |#_module.Enum.Three|)))))) (= (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even_k (Lit DatatypeTypeType |#_module.Enum.Three|))))) (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even_k_k (Lit DatatypeTypeType |#_module.Enum.Three|)))))))) (= (ControlFlow 0 56) 54)) anon16_correct)))
(let ((anon58_Then_correct  (=> (and (and (and (= (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even (Lit DatatypeTypeType |#_module.Enum.Three|))))) (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even_k (Lit DatatypeTypeType |#_module.Enum.Three|)))))) (= (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even_k (Lit DatatypeTypeType |#_module.Enum.Three|))))) (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even_k_k (Lit DatatypeTypeType |#_module.Enum.Three|))))))) ($IsAllocBox ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.Enum.Three|)) Tclass._module.Enum $Heap@@3)) (and (|_module.Enum.Even_k_k#canCall| (Lit DatatypeTypeType |#_module.Enum.Three|)) (= (ControlFlow 0 55) 54))) anon16_correct)))
(let ((anon57_Else_correct  (=> (= (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even (Lit DatatypeTypeType |#_module.Enum.Three|)))))  (not (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even_k (Lit DatatypeTypeType |#_module.Enum.Three|))))))) (and (=> (= (ControlFlow 0 58) 55) anon58_Then_correct) (=> (= (ControlFlow 0 58) 56) anon58_Else_correct)))))
(let ((anon57_Then_correct  (=> (= (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even (Lit DatatypeTypeType |#_module.Enum.Three|))))) (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even_k (Lit DatatypeTypeType |#_module.Enum.Three|)))))) (=> (and (and ($IsAllocBox ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.Enum.Three|)) Tclass._module.Enum $Heap@@3) (|_module.Enum.Even_k#canCall| (Lit DatatypeTypeType |#_module.Enum.Three|))) (and ($IsAllocBox ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.Enum.Three|)) Tclass._module.Enum $Heap@@3) (|_module.Enum.Even_k_k#canCall| (Lit DatatypeTypeType |#_module.Enum.Three|)))) (and (=> (= (ControlFlow 0 57) 55) anon58_Then_correct) (=> (= (ControlFlow 0 57) 56) anon58_Else_correct))))))
(let ((anon56_Else_correct  (=> (and (and (and (= (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even (Lit DatatypeTypeType |#_module.Enum.Two|))))) (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even_k (Lit DatatypeTypeType |#_module.Enum.Two|)))))) (= (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even_k (Lit DatatypeTypeType |#_module.Enum.Two|))))) (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even_k_k (Lit DatatypeTypeType |#_module.Enum.Two|))))))) (= (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even_k_k (Lit DatatypeTypeType |#_module.Enum.Two|))))) (U_2_bool (Lit boolType (bool_2_U true))))) (and (and ($IsAllocBox ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.Enum.Three|)) Tclass._module.Enum $Heap@@3) (|_module.Enum.Even#canCall| (Lit DatatypeTypeType |#_module.Enum.Three|))) (and ($IsAllocBox ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.Enum.Three|)) Tclass._module.Enum $Heap@@3) (|_module.Enum.Even_k#canCall| (Lit DatatypeTypeType |#_module.Enum.Three|))))) (and (=> (= (ControlFlow 0 59) 57) anon57_Then_correct) (=> (= (ControlFlow 0 59) 58) anon57_Else_correct)))))
(let ((anon56_Then_correct true))
(let ((anon10_correct  (=> (and (and (|_module.Enum.Even#canCall| (Lit DatatypeTypeType |#_module.Enum.Two|)) (|_module.Enum.Even_k#canCall| (Lit DatatypeTypeType |#_module.Enum.Two|))) (=> (= (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even (Lit DatatypeTypeType |#_module.Enum.Two|))))) (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even_k (Lit DatatypeTypeType |#_module.Enum.Two|)))))) (and (and (|_module.Enum.Even_k#canCall| (Lit DatatypeTypeType |#_module.Enum.Two|)) (|_module.Enum.Even_k_k#canCall| (Lit DatatypeTypeType |#_module.Enum.Two|))) (=> (= (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even_k (Lit DatatypeTypeType |#_module.Enum.Two|))))) (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even_k_k (Lit DatatypeTypeType |#_module.Enum.Two|)))))) (|_module.Enum.Even_k_k#canCall| (Lit DatatypeTypeType |#_module.Enum.Two|)))))) (and (=> (= (ControlFlow 0 60) 2) anon56_Then_correct) (=> (= (ControlFlow 0 60) 59) anon56_Else_correct)))))
(let ((anon55_Else_correct  (=> (and (not (and (= (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even (Lit DatatypeTypeType |#_module.Enum.Two|))))) (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even_k (Lit DatatypeTypeType |#_module.Enum.Two|)))))) (= (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even_k (Lit DatatypeTypeType |#_module.Enum.Two|))))) (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even_k_k (Lit DatatypeTypeType |#_module.Enum.Two|)))))))) (= (ControlFlow 0 62) 60)) anon10_correct)))
(let ((anon55_Then_correct  (=> (and (and (and (= (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even (Lit DatatypeTypeType |#_module.Enum.Two|))))) (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even_k (Lit DatatypeTypeType |#_module.Enum.Two|)))))) (= (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even_k (Lit DatatypeTypeType |#_module.Enum.Two|))))) (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even_k_k (Lit DatatypeTypeType |#_module.Enum.Two|))))))) ($IsAllocBox ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.Enum.Two|)) Tclass._module.Enum $Heap@@3)) (and (|_module.Enum.Even_k_k#canCall| (Lit DatatypeTypeType |#_module.Enum.Two|)) (= (ControlFlow 0 61) 60))) anon10_correct)))
(let ((anon54_Else_correct  (=> (= (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even (Lit DatatypeTypeType |#_module.Enum.Two|)))))  (not (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even_k (Lit DatatypeTypeType |#_module.Enum.Two|))))))) (and (=> (= (ControlFlow 0 64) 61) anon55_Then_correct) (=> (= (ControlFlow 0 64) 62) anon55_Else_correct)))))
(let ((anon54_Then_correct  (=> (= (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even (Lit DatatypeTypeType |#_module.Enum.Two|))))) (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even_k (Lit DatatypeTypeType |#_module.Enum.Two|)))))) (=> (and (and ($IsAllocBox ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.Enum.Two|)) Tclass._module.Enum $Heap@@3) (|_module.Enum.Even_k#canCall| (Lit DatatypeTypeType |#_module.Enum.Two|))) (and ($IsAllocBox ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.Enum.Two|)) Tclass._module.Enum $Heap@@3) (|_module.Enum.Even_k_k#canCall| (Lit DatatypeTypeType |#_module.Enum.Two|)))) (and (=> (= (ControlFlow 0 63) 61) anon55_Then_correct) (=> (= (ControlFlow 0 63) 62) anon55_Else_correct))))))
(let ((anon53_Else_correct  (=> (and (and (and (= (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even (Lit DatatypeTypeType |#_module.Enum.One|))))) (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even_k (Lit DatatypeTypeType |#_module.Enum.One|)))))) (= (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even_k (Lit DatatypeTypeType |#_module.Enum.One|))))) (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even_k_k (Lit DatatypeTypeType |#_module.Enum.One|))))))) (= (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even_k_k (Lit DatatypeTypeType |#_module.Enum.One|))))) (U_2_bool (Lit boolType (bool_2_U false))))) (and (and ($IsAllocBox ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.Enum.Two|)) Tclass._module.Enum $Heap@@3) (|_module.Enum.Even#canCall| (Lit DatatypeTypeType |#_module.Enum.Two|))) (and ($IsAllocBox ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.Enum.Two|)) Tclass._module.Enum $Heap@@3) (|_module.Enum.Even_k#canCall| (Lit DatatypeTypeType |#_module.Enum.Two|))))) (and (=> (= (ControlFlow 0 65) 63) anon54_Then_correct) (=> (= (ControlFlow 0 65) 64) anon54_Else_correct)))))
(let ((anon53_Then_correct true))
(let ((anon4_correct  (=> (and (and (|_module.Enum.Even#canCall| (Lit DatatypeTypeType |#_module.Enum.One|)) (|_module.Enum.Even_k#canCall| (Lit DatatypeTypeType |#_module.Enum.One|))) (=> (= (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even (Lit DatatypeTypeType |#_module.Enum.One|))))) (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even_k (Lit DatatypeTypeType |#_module.Enum.One|)))))) (and (and (|_module.Enum.Even_k#canCall| (Lit DatatypeTypeType |#_module.Enum.One|)) (|_module.Enum.Even_k_k#canCall| (Lit DatatypeTypeType |#_module.Enum.One|))) (=> (= (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even_k (Lit DatatypeTypeType |#_module.Enum.One|))))) (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even_k_k (Lit DatatypeTypeType |#_module.Enum.One|)))))) (|_module.Enum.Even_k_k#canCall| (Lit DatatypeTypeType |#_module.Enum.One|)))))) (and (=> (= (ControlFlow 0 66) 1) anon53_Then_correct) (=> (= (ControlFlow 0 66) 65) anon53_Else_correct)))))
(let ((anon52_Else_correct  (=> (and (not (and (= (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even (Lit DatatypeTypeType |#_module.Enum.One|))))) (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even_k (Lit DatatypeTypeType |#_module.Enum.One|)))))) (= (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even_k (Lit DatatypeTypeType |#_module.Enum.One|))))) (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even_k_k (Lit DatatypeTypeType |#_module.Enum.One|)))))))) (= (ControlFlow 0 68) 66)) anon4_correct)))
(let ((anon52_Then_correct  (=> (and (and (and (= (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even (Lit DatatypeTypeType |#_module.Enum.One|))))) (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even_k (Lit DatatypeTypeType |#_module.Enum.One|)))))) (= (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even_k (Lit DatatypeTypeType |#_module.Enum.One|))))) (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even_k_k (Lit DatatypeTypeType |#_module.Enum.One|))))))) ($IsAllocBox ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.Enum.One|)) Tclass._module.Enum $Heap@@3)) (and (|_module.Enum.Even_k_k#canCall| (Lit DatatypeTypeType |#_module.Enum.One|)) (= (ControlFlow 0 67) 66))) anon4_correct)))
(let ((anon51_Else_correct  (=> (= (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even (Lit DatatypeTypeType |#_module.Enum.One|)))))  (not (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even_k (Lit DatatypeTypeType |#_module.Enum.One|))))))) (and (=> (= (ControlFlow 0 70) 67) anon52_Then_correct) (=> (= (ControlFlow 0 70) 68) anon52_Else_correct)))))
(let ((anon51_Then_correct  (=> (= (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even (Lit DatatypeTypeType |#_module.Enum.One|))))) (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Even_k (Lit DatatypeTypeType |#_module.Enum.One|)))))) (=> (and (and ($IsAllocBox ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.Enum.One|)) Tclass._module.Enum $Heap@@3) (|_module.Enum.Even_k#canCall| (Lit DatatypeTypeType |#_module.Enum.One|))) (and ($IsAllocBox ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.Enum.One|)) Tclass._module.Enum $Heap@@3) (|_module.Enum.Even_k_k#canCall| (Lit DatatypeTypeType |#_module.Enum.One|)))) (and (=> (= (ControlFlow 0 69) 67) anon52_Then_correct) (=> (= (ControlFlow 0 69) 68) anon52_Else_correct))))))
(let ((anon0_correct  (=> (and (and (and (= StartFuel_Lists.List.Length ($LS ($LS ($LS ($LS ($LS BaseFuel_Lists.List.Length)))))) (= StartFuelAssert_Lists.List.Length ($LS ($LS ($LS ($LS ($LS ($LS BaseFuel_Lists.List.Length)))))))) (and (= (AsFuelBottom BaseFuel_Lists.List.Length) BaseFuel_Lists.List.Length) (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@3 alloc false)))) (and (and ($IsAllocBox ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.Enum.One|)) Tclass._module.Enum $Heap@@3) (|_module.Enum.Even#canCall| (Lit DatatypeTypeType |#_module.Enum.One|))) (and ($IsAllocBox ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.Enum.One|)) Tclass._module.Enum $Heap@@3) (|_module.Enum.Even_k#canCall| (Lit DatatypeTypeType |#_module.Enum.One|))))) (and (=> (= (ControlFlow 0 71) 69) anon51_Then_correct) (=> (= (ControlFlow 0 71) 70) anon51_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@3) ($IsHeapAnchor $Heap@@3)) (=> (and (and ($Is DatatypeTypeType |a0#0| (Tclass.Lists.List TInt)) ($IsAlloc DatatypeTypeType |a0#0| (Tclass.Lists.List TInt) $Heap@@3)) true) (=> (and (and (and (and ($Is DatatypeTypeType |a1#0| (Tclass.Lists.List TInt)) ($IsAlloc DatatypeTypeType |a1#0| (Tclass.Lists.List TInt) $Heap@@3)) true) (and (and ($Is DatatypeTypeType |a2#0| (Tclass.Lists.List TInt)) ($IsAlloc DatatypeTypeType |a2#0| (Tclass.Lists.List TInt) $Heap@@3)) true)) (and (and (and ($Is DatatypeTypeType |a3#0| (Tclass.Lists.List TInt)) ($IsAlloc DatatypeTypeType |a3#0| (Tclass.Lists.List TInt) $Heap@@3)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 72) 71)))) anon0_correct)))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
