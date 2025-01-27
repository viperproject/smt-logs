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
(declare-fun TInt () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagInt () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass.DatatypeTests.u8 () T@U)
(declare-fun Tagclass.RustStdOption.Option () T@U)
(declare-fun Tagclass.DatatypeTests.NoArg () T@U)
(declare-fun Tagclass.DatatypeTests.AlmostOption () T@U)
(declare-fun Tagclass.DatatypeTests.Peano () T@U)
(declare-fun Tagclass.DatatypeTests.Multiple () T@U)
(declare-fun Tagclass.DatatypeTests.Struct () T@U)
(declare-fun Tagclass.DatatypeTests.RcMultiple () T@U)
(declare-fun Tagclass.DatatypeTests.RcStruct () T@U)
(declare-fun Tagclass.DatatypeTests.Recursive () T@U)
(declare-fun Tagclass.RustStdCompare.Option () T@U)
(declare-fun |##DatatypeTests.NoArg.OptionA| () T@U)
(declare-fun |##DatatypeTests.NoArg.OptionB| () T@U)
(declare-fun |##DatatypeTests.NoArg.OptionC| () T@U)
(declare-fun |##DatatypeTests.AlmostOption.Nothing| () T@U)
(declare-fun |##DatatypeTests.AlmostOption.ThereItIs| () T@U)
(declare-fun |##DatatypeTests.Peano.Zero| () T@U)
(declare-fun |##DatatypeTests.Peano.One| () T@U)
(declare-fun |##DatatypeTests.Struct.StructConstructor| () T@U)
(declare-fun |##DatatypeTests.Multiple.ConstructorA| () T@U)
(declare-fun |##DatatypeTests.Multiple.ConstructorB| () T@U)
(declare-fun |##DatatypeTests.Multiple.ConstructorAB| () T@U)
(declare-fun |##DatatypeTests.RcStruct.RcStructConstructor| () T@U)
(declare-fun |##DatatypeTests.RcMultiple.RcConstructorA| () T@U)
(declare-fun |##DatatypeTests.RcMultiple.RcConstructorB| () T@U)
(declare-fun |##DatatypeTests.RcMultiple.RcConstructorAB| () T@U)
(declare-fun |##DatatypeTests.Recursive.Recursive| () T@U)
(declare-fun |##RustStdOption.Option.Some| () T@U)
(declare-fun |##RustStdOption.Option.None| () T@U)
(declare-fun |##RustStdCompare.Option.Some| () T@U)
(declare-fun |##RustStdCompare.Option.None| () T@U)
(declare-fun tytagFamily$u8 () T@U)
(declare-fun tytagFamily$Option () T@U)
(declare-fun tytagFamily$NoArg () T@U)
(declare-fun tytagFamily$AlmostOption () T@U)
(declare-fun tytagFamily$Peano () T@U)
(declare-fun tytagFamily$Multiple () T@U)
(declare-fun tytagFamily$Struct () T@U)
(declare-fun tytagFamily$RcMultiple () T@U)
(declare-fun tytagFamily$RcStruct () T@U)
(declare-fun tytagFamily$Recursive () T@U)
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
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |#DatatypeTests.Recursive.Recursive| (Int T@U) T@U)
(declare-fun Tclass.DatatypeTests.Recursive () T@U)
(declare-fun Tclass.RustStdOption.Option (T@U) T@U)
(declare-fun |DatatypeTests.Struct#Equal| (T@U T@U) Bool)
(declare-fun DatatypeTests.Struct.a (T@U) Int)
(declare-fun DatatypeTests.Struct.b (T@U) Bool)
(declare-fun |DatatypeTests.RcStruct#Equal| (T@U T@U) Bool)
(declare-fun DatatypeTests.RcStruct.a (T@U) Int)
(declare-fun DatatypeTests.RcStruct.b (T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass.DatatypeTests.u8 () T@U)
(declare-fun |$IsA#DatatypeTests.Struct| (T@U) Bool)
(declare-fun DatatypeTests.Struct.StructConstructor_q (T@U) Bool)
(declare-fun |$IsA#DatatypeTests.RcStruct| (T@U) Bool)
(declare-fun DatatypeTests.RcStruct.RcStructConstructor_q (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun DatatypeTests.Multiple.Gather (T@U T@U) T@U)
(declare-fun |DatatypeTests.Multiple.Gather#canCall| (T@U T@U) Bool)
(declare-fun Tclass.DatatypeTests.Multiple () T@U)
(declare-fun DatatypeTests.RcMultiple.Gather (T@U T@U) T@U)
(declare-fun |DatatypeTests.RcMultiple.Gather#canCall| (T@U T@U) Bool)
(declare-fun Tclass.DatatypeTests.RcMultiple () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#DatatypeTests.NoArg.OptionA| () T@U)
(declare-fun |#DatatypeTests.NoArg.OptionB| () T@U)
(declare-fun |#DatatypeTests.NoArg.OptionC| () T@U)
(declare-fun |#DatatypeTests.AlmostOption.Nothing| () T@U)
(declare-fun |#DatatypeTests.Peano.Zero| () T@U)
(declare-fun |#RustStdOption.Option.None| () T@U)
(declare-fun |#RustStdCompare.Option.None| () T@U)
(declare-fun DatatypeTests.Struct.BTrue (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |DatatypeTests.Struct.BTrue#canCall| (T@U) Bool)
(declare-fun Tclass.DatatypeTests.Struct () T@U)
(declare-fun |#DatatypeTests.Struct.StructConstructor| (Int Bool) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun DatatypeTests.RcStruct.BTrue (T@U) T@U)
(declare-fun |DatatypeTests.RcStruct.BTrue#canCall| (T@U) Bool)
(declare-fun Tclass.DatatypeTests.RcStruct () T@U)
(declare-fun |#DatatypeTests.RcStruct.RcStructConstructor| (Int Bool) T@U)
(declare-fun DatatypeTests.Recursive.Recursive_q (T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tclass.RustStdCompare.Option (T@U) T@U)
(declare-fun Tclass.DatatypeTests.NoArg () T@U)
(declare-fun Tclass.DatatypeTests.AlmostOption () T@U)
(declare-fun Tclass.DatatypeTests.Peano () T@U)
(declare-fun DatatypeTests.Multiple.ConstructorA_q (T@U) Bool)
(declare-fun DatatypeTests.Multiple.a (T@U) Int)
(declare-fun DatatypeTests.Multiple.ConstructorB_q (T@U) Bool)
(declare-fun |#DatatypeTests.Multiple.ConstructorAB| (Int Bool) T@U)
(declare-fun DatatypeTests.Multiple.b (T@U) Bool)
(declare-fun |DatatypeTests.Peano#Equal| (T@U T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun DatatypeTests.NoArg.OptionA_q (T@U) Bool)
(declare-fun DatatypeTests.NoArg.OptionB_q (T@U) Bool)
(declare-fun DatatypeTests.NoArg.OptionC_q (T@U) Bool)
(declare-fun DatatypeTests.AlmostOption.Nothing_q (T@U) Bool)
(declare-fun DatatypeTests.AlmostOption.ThereItIs_q (T@U) Bool)
(declare-fun DatatypeTests.Peano.Zero_q (T@U) Bool)
(declare-fun DatatypeTests.Peano.One_q (T@U) Bool)
(declare-fun DatatypeTests.Multiple.ConstructorAB_q (T@U) Bool)
(declare-fun DatatypeTests.RcMultiple.RcConstructorA_q (T@U) Bool)
(declare-fun DatatypeTests.RcMultiple.RcConstructorB_q (T@U) Bool)
(declare-fun DatatypeTests.RcMultiple.RcConstructorAB_q (T@U) Bool)
(declare-fun RustStdOption.Option.Some_q (T@U) Bool)
(declare-fun RustStdOption.Option.None_q (T@U) Bool)
(declare-fun RustStdCompare.Option.Some_q (T@U) Bool)
(declare-fun RustStdCompare.Option.None_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#DatatypeTests.RcMultiple.RcConstructorAB| (Int Bool) T@U)
(declare-fun |#DatatypeTests.AlmostOption.ThereItIs| (Int) T@U)
(declare-fun |#DatatypeTests.Peano.One| (T@U) T@U)
(declare-fun |#DatatypeTests.Multiple.ConstructorA| (Int) T@U)
(declare-fun |#DatatypeTests.Multiple.ConstructorB| (Bool) T@U)
(declare-fun |#DatatypeTests.RcMultiple.RcConstructorA| (Int) T@U)
(declare-fun |#DatatypeTests.RcMultiple.RcConstructorB| (Bool) T@U)
(declare-fun |#RustStdOption.Option.Some| (T@U) T@U)
(declare-fun |#RustStdCompare.Option.Some| (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun DatatypeTests.RcMultiple.a (T@U) Int)
(declare-fun DatatypeTests.RcMultiple.b (T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun DatatypeTests.Peano.p (T@U) T@U)
(declare-fun |$IsA#DatatypeTests.Peano| (T@U) Bool)
(declare-fun DatatypeTests.Recursive.head (T@U) Int)
(declare-fun DatatypeTests.Recursive.tail (T@U) T@U)
(declare-fun Tclass.RustStdOption.Option_0 (T@U) T@U)
(declare-fun Tclass.RustStdCompare.Option_0 (T@U) T@U)
(declare-fun DatatypeTests.AlmostOption.u (T@U) Int)
(declare-fun RustStdOption.Option.value (T@U) T@U)
(declare-fun RustStdCompare.Option.value (T@U) T@U)
(declare-fun DtRank (T@U) Int)
(declare-fun BoxRank (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct TBool TInt TagBool TagInt alloc Tagclass.DatatypeTests.u8 Tagclass.RustStdOption.Option Tagclass.DatatypeTests.NoArg Tagclass.DatatypeTests.AlmostOption Tagclass.DatatypeTests.Peano Tagclass.DatatypeTests.Multiple Tagclass.DatatypeTests.Struct Tagclass.DatatypeTests.RcMultiple Tagclass.DatatypeTests.RcStruct Tagclass.DatatypeTests.Recursive Tagclass.RustStdCompare.Option |##DatatypeTests.NoArg.OptionA| |##DatatypeTests.NoArg.OptionB| |##DatatypeTests.NoArg.OptionC| |##DatatypeTests.AlmostOption.Nothing| |##DatatypeTests.AlmostOption.ThereItIs| |##DatatypeTests.Peano.Zero| |##DatatypeTests.Peano.One| |##DatatypeTests.Struct.StructConstructor| |##DatatypeTests.Multiple.ConstructorA| |##DatatypeTests.Multiple.ConstructorB| |##DatatypeTests.Multiple.ConstructorAB| |##DatatypeTests.RcStruct.RcStructConstructor| |##DatatypeTests.RcMultiple.RcConstructorA| |##DatatypeTests.RcMultiple.RcConstructorB| |##DatatypeTests.RcMultiple.RcConstructorAB| |##DatatypeTests.Recursive.Recursive| |##RustStdOption.Option.Some| |##RustStdOption.Option.None| |##RustStdCompare.Option.Some| |##RustStdCompare.Option.None| tytagFamily$u8 tytagFamily$Option tytagFamily$NoArg tytagFamily$AlmostOption tytagFamily$Peano tytagFamily$Multiple tytagFamily$Struct tytagFamily$RcMultiple tytagFamily$RcStruct tytagFamily$Recursive)
)
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#2#0#0| Int) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#DatatypeTests.Recursive.Recursive| |a#2#0#0| |a#2#1#0|) Tclass.DatatypeTests.Recursive)  (and ($Is intType (int_2_U |a#2#0#0|) TInt) ($Is DatatypeTypeType |a#2#1#0| (Tclass.RustStdOption.Option Tclass.DatatypeTests.Recursive))))
 :qid |datatypesdfy.107:34|
 :skolemid |1708|
 :pattern ( ($Is DatatypeTypeType (|#DatatypeTests.Recursive.Recursive| |a#2#0#0| |a#2#1#0|) Tclass.DatatypeTests.Recursive))
)))
(assert (forall ((a T@U) (b T@U) ) (! (= (|DatatypeTests.Struct#Equal| a b)  (and (= (DatatypeTests.Struct.a a) (DatatypeTests.Struct.a b)) (= (DatatypeTests.Struct.b a) (DatatypeTests.Struct.b b))))
 :qid |unknown.0:0|
 :skolemid |1605|
 :pattern ( (|DatatypeTests.Struct#Equal| a b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|DatatypeTests.RcStruct#Equal| a@@0 b@@0)  (and (= (DatatypeTests.RcStruct.a a@@0) (DatatypeTests.RcStruct.a b@@0)) (= (DatatypeTests.RcStruct.b a@@0) (DatatypeTests.RcStruct.b b@@0))))
 :qid |unknown.0:0|
 :skolemid |1661|
 :pattern ( (|DatatypeTests.RcStruct#Equal| a@@0 b@@0))
)))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass.DatatypeTests.u8 $h)
 :qid |unknown.0:0|
 :skolemid |1505|
 :pattern ( ($IsAlloc intType |x#0| Tclass.DatatypeTests.u8 $h))
)))
(assert (forall ((d T@U) ) (!  (=> (|$IsA#DatatypeTests.Struct| d) (DatatypeTests.Struct.StructConstructor_q d))
 :qid |unknown.0:0|
 :skolemid |1603|
 :pattern ( (|$IsA#DatatypeTests.Struct| d))
)))
(assert (forall ((d@@0 T@U) ) (!  (=> (|$IsA#DatatypeTests.RcStruct| d@@0) (DatatypeTests.RcStruct.RcStructConstructor_q d@@0))
 :qid |unknown.0:0|
 :skolemid |1659|
 :pattern ( (|$IsA#DatatypeTests.RcStruct| d@@0))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((this T@U) (|other#0| T@U) ) (!  (=> (or (|DatatypeTests.Multiple.Gather#canCall| this |other#0|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType this Tclass.DatatypeTests.Multiple) ($Is DatatypeTypeType |other#0| Tclass.DatatypeTests.Multiple)))) ($Is DatatypeTypeType (DatatypeTests.Multiple.Gather this |other#0|) Tclass.DatatypeTests.Multiple))
 :qid |datatypesdfy.59:14|
 :skolemid |1644|
 :pattern ( (DatatypeTests.Multiple.Gather this |other#0|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((this@@0 T@U) (|other#0@@0| T@U) ) (!  (=> (or (|DatatypeTests.RcMultiple.Gather#canCall| this@@0 |other#0@@0|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType this@@0 Tclass.DatatypeTests.RcMultiple) ($Is DatatypeTypeType |other#0@@0| Tclass.DatatypeTests.RcMultiple)))) ($Is DatatypeTypeType (DatatypeTests.RcMultiple.Gather this@@0 |other#0@@0|) Tclass.DatatypeTests.RcMultiple))
 :qid |datatypesdfy.89:14|
 :skolemid |1700|
 :pattern ( (DatatypeTests.RcMultiple.Gather this@@0 |other#0@@0|))
))))
(assert (= (DatatypeCtorId |#DatatypeTests.NoArg.OptionA|) |##DatatypeTests.NoArg.OptionA|))
(assert (= (DatatypeCtorId |#DatatypeTests.NoArg.OptionB|) |##DatatypeTests.NoArg.OptionB|))
(assert (= (DatatypeCtorId |#DatatypeTests.NoArg.OptionC|) |##DatatypeTests.NoArg.OptionC|))
(assert (= (DatatypeCtorId |#DatatypeTests.AlmostOption.Nothing|) |##DatatypeTests.AlmostOption.Nothing|))
(assert (= (DatatypeCtorId |#DatatypeTests.Peano.Zero|) |##DatatypeTests.Peano.Zero|))
(assert (= (DatatypeCtorId |#RustStdOption.Option.None|) |##RustStdOption.Option.None|))
(assert (= (DatatypeCtorId |#RustStdCompare.Option.None|) |##RustStdCompare.Option.None|))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((this@@1 T@U) ) (!  (=> (or (|DatatypeTests.Struct.BTrue#canCall| (Lit DatatypeTypeType this@@1)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType this@@1 Tclass.DatatypeTests.Struct))) (and (and (DatatypeTests.Struct.StructConstructor_q (Lit DatatypeTypeType this@@1)) (=> (not (U_2_bool (Lit boolType (bool_2_U (DatatypeTests.Struct.b (Lit DatatypeTypeType this@@1)))))) (let ((|dt_update_tmp#0#1| (Lit DatatypeTypeType this@@1)))
(DatatypeTests.Struct.StructConstructor_q |dt_update_tmp#0#1|)))) (= (DatatypeTests.Struct.BTrue (Lit DatatypeTypeType this@@1)) (ite (DatatypeTests.Struct.b (Lit DatatypeTypeType this@@1)) this@@1 (let ((|dt_update_tmp#0#1@@0| (Lit DatatypeTypeType this@@1)))
(let ((|dt_update#b#0#1| (U_2_bool (Lit boolType (bool_2_U true)))))
(Lit DatatypeTypeType (|#DatatypeTests.Struct.StructConstructor| (LitInt (DatatypeTests.Struct.a |dt_update_tmp#0#1@@0|)) |dt_update#b#0#1|))))))))
 :qid |datatypesdfy.48:14|
 :weight 3
 :skolemid |1610|
 :pattern ( (DatatypeTests.Struct.BTrue (Lit DatatypeTypeType this@@1)))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((this@@2 T@U) ) (!  (=> (or (|DatatypeTests.RcStruct.BTrue#canCall| (Lit DatatypeTypeType this@@2)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType this@@2 Tclass.DatatypeTests.RcStruct))) (and (and (DatatypeTests.RcStruct.RcStructConstructor_q (Lit DatatypeTypeType this@@2)) (=> (not (U_2_bool (Lit boolType (bool_2_U (DatatypeTests.RcStruct.b (Lit DatatypeTypeType this@@2)))))) (let ((|dt_update_tmp#0#1@@1| (Lit DatatypeTypeType this@@2)))
(DatatypeTests.RcStruct.RcStructConstructor_q |dt_update_tmp#0#1@@1|)))) (= (DatatypeTests.RcStruct.BTrue (Lit DatatypeTypeType this@@2)) (ite (DatatypeTests.RcStruct.b (Lit DatatypeTypeType this@@2)) this@@2 (let ((|dt_update_tmp#0#1@@2| (Lit DatatypeTypeType this@@2)))
(let ((|dt_update#b#0#1@@0| (U_2_bool (Lit boolType (bool_2_U true)))))
(Lit DatatypeTypeType (|#DatatypeTests.RcStruct.RcStructConstructor| (LitInt (DatatypeTests.RcStruct.a |dt_update_tmp#0#1@@2|)) |dt_update#b#0#1@@0|))))))))
 :qid |datatypesdfy.78:14|
 :weight 3
 :skolemid |1666|
 :pattern ( (DatatypeTests.RcStruct.BTrue (Lit DatatypeTypeType this@@2)))
))))
(assert (forall ((d@@1 T@U) ) (!  (=> ($Is DatatypeTypeType d@@1 Tclass.DatatypeTests.Struct) (DatatypeTests.Struct.StructConstructor_q d@@1))
 :qid |unknown.0:0|
 :skolemid |1604|
 :pattern ( (DatatypeTests.Struct.StructConstructor_q d@@1) ($Is DatatypeTypeType d@@1 Tclass.DatatypeTests.Struct))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> ($Is DatatypeTypeType d@@2 Tclass.DatatypeTests.RcStruct) (DatatypeTests.RcStruct.RcStructConstructor_q d@@2))
 :qid |unknown.0:0|
 :skolemid |1660|
 :pattern ( (DatatypeTests.RcStruct.RcStructConstructor_q d@@2) ($Is DatatypeTypeType d@@2 Tclass.DatatypeTests.RcStruct))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 Tclass.DatatypeTests.Recursive) (DatatypeTests.Recursive.Recursive_q d@@3))
 :qid |unknown.0:0|
 :skolemid |1717|
 :pattern ( (DatatypeTests.Recursive.Recursive_q d@@3) ($Is DatatypeTypeType d@@3 Tclass.DatatypeTests.Recursive))
)))
(assert (forall ((RustStdOption.Option$T T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) ($IsAlloc DatatypeTypeType |#RustStdOption.Option.None| (Tclass.RustStdOption.Option RustStdOption.Option$T) $h@@0))
 :qid |unknown.0:0|
 :skolemid |1733|
 :pattern ( ($IsAlloc DatatypeTypeType |#RustStdOption.Option.None| (Tclass.RustStdOption.Option RustStdOption.Option$T) $h@@0))
)))
(assert (forall ((RustStdCompare.Option$T T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) ($IsAlloc DatatypeTypeType |#RustStdCompare.Option.None| (Tclass.RustStdCompare.Option RustStdCompare.Option$T) $h@@1))
 :qid |unknown.0:0|
 :skolemid |1752|
 :pattern ( ($IsAlloc DatatypeTypeType |#RustStdCompare.Option.None| (Tclass.RustStdCompare.Option RustStdCompare.Option$T) $h@@1))
)))
(assert ($Is DatatypeTypeType |#DatatypeTests.NoArg.OptionA| Tclass.DatatypeTests.NoArg))
(assert ($Is DatatypeTypeType |#DatatypeTests.NoArg.OptionB| Tclass.DatatypeTests.NoArg))
(assert ($Is DatatypeTypeType |#DatatypeTests.NoArg.OptionC| Tclass.DatatypeTests.NoArg))
(assert ($Is DatatypeTypeType |#DatatypeTests.AlmostOption.Nothing| Tclass.DatatypeTests.AlmostOption))
(assert ($Is DatatypeTypeType |#DatatypeTests.Peano.Zero| Tclass.DatatypeTests.Peano))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((this@@3 T@U) ) (!  (=> (or (|DatatypeTests.Struct.BTrue#canCall| this@@3) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType this@@3 Tclass.DatatypeTests.Struct))) (and (and (DatatypeTests.Struct.StructConstructor_q this@@3) (=> (not (DatatypeTests.Struct.b this@@3)) (let ((|dt_update_tmp#0#0| this@@3))
(DatatypeTests.Struct.StructConstructor_q |dt_update_tmp#0#0|)))) (= (DatatypeTests.Struct.BTrue this@@3) (ite (DatatypeTests.Struct.b this@@3) this@@3 (let ((|dt_update_tmp#0#0@@0| this@@3))
(let ((|dt_update#b#0#0| (U_2_bool (Lit boolType (bool_2_U true)))))
(|#DatatypeTests.Struct.StructConstructor| (DatatypeTests.Struct.a |dt_update_tmp#0#0@@0|) |dt_update#b#0#0|)))))))
 :qid |datatypesdfy.48:14|
 :skolemid |1609|
 :pattern ( (DatatypeTests.Struct.BTrue this@@3))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((this@@4 T@U) ) (!  (=> (or (|DatatypeTests.RcStruct.BTrue#canCall| this@@4) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType this@@4 Tclass.DatatypeTests.RcStruct))) (and (and (DatatypeTests.RcStruct.RcStructConstructor_q this@@4) (=> (not (DatatypeTests.RcStruct.b this@@4)) (let ((|dt_update_tmp#0#0@@1| this@@4))
(DatatypeTests.RcStruct.RcStructConstructor_q |dt_update_tmp#0#0@@1|)))) (= (DatatypeTests.RcStruct.BTrue this@@4) (ite (DatatypeTests.RcStruct.b this@@4) this@@4 (let ((|dt_update_tmp#0#0@@2| this@@4))
(let ((|dt_update#b#0#0@@0| (U_2_bool (Lit boolType (bool_2_U true)))))
(|#DatatypeTests.RcStruct.RcStructConstructor| (DatatypeTests.RcStruct.a |dt_update_tmp#0#0@@2|) |dt_update#b#0#0@@0|)))))))
 :qid |datatypesdfy.78:14|
 :skolemid |1665|
 :pattern ( (DatatypeTests.RcStruct.BTrue this@@4))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((this@@5 T@U) (|other#0@@1| T@U) ) (!  (=> (or (|DatatypeTests.Multiple.Gather#canCall| (Lit DatatypeTypeType this@@5) (Lit DatatypeTypeType |other#0@@1|)) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType this@@5 Tclass.DatatypeTests.Multiple) ($Is DatatypeTypeType |other#0@@1| Tclass.DatatypeTests.Multiple)))) (= (DatatypeTests.Multiple.Gather (Lit DatatypeTypeType this@@5) (Lit DatatypeTypeType |other#0@@1|)) (ite (DatatypeTests.Multiple.ConstructorA_q (Lit DatatypeTypeType this@@5)) (let ((|a#4| (LitInt (DatatypeTests.Multiple.a (Lit DatatypeTypeType this@@5)))))
(ite (DatatypeTests.Multiple.ConstructorB_q (Lit DatatypeTypeType |other#0@@1|)) (|#DatatypeTests.Multiple.ConstructorAB| |a#4| (U_2_bool (Lit boolType (bool_2_U (DatatypeTests.Multiple.b (Lit DatatypeTypeType |other#0@@1|)))))) this@@5)) (ite (DatatypeTests.Multiple.ConstructorB_q (Lit DatatypeTypeType this@@5)) (let ((|b#4| (U_2_bool (Lit boolType (bool_2_U (DatatypeTests.Multiple.b (Lit DatatypeTypeType this@@5)))))))
(ite (DatatypeTests.Multiple.ConstructorA_q (Lit DatatypeTypeType |other#0@@1|)) (|#DatatypeTests.Multiple.ConstructorAB| (LitInt (DatatypeTests.Multiple.a (Lit DatatypeTypeType |other#0@@1|))) |b#4|) this@@5)) (Lit DatatypeTypeType this@@5)))))
 :qid |datatypesdfy.59:14|
 :weight 3
 :skolemid |1647|
 :pattern ( (DatatypeTests.Multiple.Gather (Lit DatatypeTypeType this@@5) (Lit DatatypeTypeType |other#0@@1|)))
))))
(assert (forall ((RustStdOption.Option$T@@0 T@U) ) (! ($Is DatatypeTypeType |#RustStdOption.Option.None| (Tclass.RustStdOption.Option RustStdOption.Option$T@@0))
 :qid |unknown.0:0|
 :skolemid |1732|
 :pattern ( ($Is DatatypeTypeType |#RustStdOption.Option.None| (Tclass.RustStdOption.Option RustStdOption.Option$T@@0)))
)))
(assert (forall ((RustStdCompare.Option$T@@0 T@U) ) (! ($Is DatatypeTypeType |#RustStdCompare.Option.None| (Tclass.RustStdCompare.Option RustStdCompare.Option$T@@0))
 :qid |unknown.0:0|
 :skolemid |1751|
 :pattern ( ($Is DatatypeTypeType |#RustStdCompare.Option.None| (Tclass.RustStdCompare.Option RustStdCompare.Option$T@@0)))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|DatatypeTests.Peano#Equal| a@@1 b@@1) (= a@@1 b@@1))
 :qid |unknown.0:0|
 :skolemid |1591|
 :pattern ( (|DatatypeTests.Peano#Equal| a@@1 b@@1))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (! (= (|DatatypeTests.Struct#Equal| a@@2 b@@2) (= a@@2 b@@2))
 :qid |unknown.0:0|
 :skolemid |1606|
 :pattern ( (|DatatypeTests.Struct#Equal| a@@2 b@@2))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) ) (! (= (|DatatypeTests.RcStruct#Equal| a@@3 b@@3) (= a@@3 b@@3))
 :qid |unknown.0:0|
 :skolemid |1662|
 :pattern ( (|DatatypeTests.RcStruct#Equal| a@@3 b@@3))
)))
(assert  (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 4)) (= (Ctor BoxType) 5)) (= (Ctor refType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |1120|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |1121|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |1019|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1017|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((d@@4 T@U) ) (! (= (DatatypeTests.NoArg.OptionA_q d@@4) (= (DatatypeCtorId d@@4) |##DatatypeTests.NoArg.OptionA|))
 :qid |unknown.0:0|
 :skolemid |1506|
 :pattern ( (DatatypeTests.NoArg.OptionA_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (! (= (DatatypeTests.NoArg.OptionB_q d@@5) (= (DatatypeCtorId d@@5) |##DatatypeTests.NoArg.OptionB|))
 :qid |unknown.0:0|
 :skolemid |1508|
 :pattern ( (DatatypeTests.NoArg.OptionB_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (! (= (DatatypeTests.NoArg.OptionC_q d@@6) (= (DatatypeCtorId d@@6) |##DatatypeTests.NoArg.OptionC|))
 :qid |unknown.0:0|
 :skolemid |1510|
 :pattern ( (DatatypeTests.NoArg.OptionC_q d@@6))
)))
(assert (forall ((d@@7 T@U) ) (! (= (DatatypeTests.AlmostOption.Nothing_q d@@7) (= (DatatypeCtorId d@@7) |##DatatypeTests.AlmostOption.Nothing|))
 :qid |unknown.0:0|
 :skolemid |1519|
 :pattern ( (DatatypeTests.AlmostOption.Nothing_q d@@7))
)))
(assert (forall ((d@@8 T@U) ) (! (= (DatatypeTests.AlmostOption.ThereItIs_q d@@8) (= (DatatypeCtorId d@@8) |##DatatypeTests.AlmostOption.ThereItIs|))
 :qid |unknown.0:0|
 :skolemid |1522|
 :pattern ( (DatatypeTests.AlmostOption.ThereItIs_q d@@8))
)))
(assert (forall ((d@@9 T@U) ) (! (= (DatatypeTests.Peano.Zero_q d@@9) (= (DatatypeCtorId d@@9) |##DatatypeTests.Peano.Zero|))
 :qid |unknown.0:0|
 :skolemid |1575|
 :pattern ( (DatatypeTests.Peano.Zero_q d@@9))
)))
(assert (forall ((d@@10 T@U) ) (! (= (DatatypeTests.Peano.One_q d@@10) (= (DatatypeCtorId d@@10) |##DatatypeTests.Peano.One|))
 :qid |unknown.0:0|
 :skolemid |1578|
 :pattern ( (DatatypeTests.Peano.One_q d@@10))
)))
(assert (forall ((d@@11 T@U) ) (! (= (DatatypeTests.Struct.StructConstructor_q d@@11) (= (DatatypeCtorId d@@11) |##DatatypeTests.Struct.StructConstructor|))
 :qid |unknown.0:0|
 :skolemid |1593|
 :pattern ( (DatatypeTests.Struct.StructConstructor_q d@@11))
)))
(assert (forall ((d@@12 T@U) ) (! (= (DatatypeTests.Multiple.ConstructorA_q d@@12) (= (DatatypeCtorId d@@12) |##DatatypeTests.Multiple.ConstructorA|))
 :qid |unknown.0:0|
 :skolemid |1612|
 :pattern ( (DatatypeTests.Multiple.ConstructorA_q d@@12))
)))
(assert (forall ((d@@13 T@U) ) (! (= (DatatypeTests.Multiple.ConstructorB_q d@@13) (= (DatatypeCtorId d@@13) |##DatatypeTests.Multiple.ConstructorB|))
 :qid |unknown.0:0|
 :skolemid |1620|
 :pattern ( (DatatypeTests.Multiple.ConstructorB_q d@@13))
)))
(assert (forall ((d@@14 T@U) ) (! (= (DatatypeTests.Multiple.ConstructorAB_q d@@14) (= (DatatypeCtorId d@@14) |##DatatypeTests.Multiple.ConstructorAB|))
 :qid |unknown.0:0|
 :skolemid |1628|
 :pattern ( (DatatypeTests.Multiple.ConstructorAB_q d@@14))
)))
(assert (forall ((d@@15 T@U) ) (! (= (DatatypeTests.RcStruct.RcStructConstructor_q d@@15) (= (DatatypeCtorId d@@15) |##DatatypeTests.RcStruct.RcStructConstructor|))
 :qid |unknown.0:0|
 :skolemid |1649|
 :pattern ( (DatatypeTests.RcStruct.RcStructConstructor_q d@@15))
)))
(assert (forall ((d@@16 T@U) ) (! (= (DatatypeTests.RcMultiple.RcConstructorA_q d@@16) (= (DatatypeCtorId d@@16) |##DatatypeTests.RcMultiple.RcConstructorA|))
 :qid |unknown.0:0|
 :skolemid |1668|
 :pattern ( (DatatypeTests.RcMultiple.RcConstructorA_q d@@16))
)))
(assert (forall ((d@@17 T@U) ) (! (= (DatatypeTests.RcMultiple.RcConstructorB_q d@@17) (= (DatatypeCtorId d@@17) |##DatatypeTests.RcMultiple.RcConstructorB|))
 :qid |unknown.0:0|
 :skolemid |1676|
 :pattern ( (DatatypeTests.RcMultiple.RcConstructorB_q d@@17))
)))
(assert (forall ((d@@18 T@U) ) (! (= (DatatypeTests.RcMultiple.RcConstructorAB_q d@@18) (= (DatatypeCtorId d@@18) |##DatatypeTests.RcMultiple.RcConstructorAB|))
 :qid |unknown.0:0|
 :skolemid |1684|
 :pattern ( (DatatypeTests.RcMultiple.RcConstructorAB_q d@@18))
)))
(assert (forall ((d@@19 T@U) ) (! (= (DatatypeTests.Recursive.Recursive_q d@@19) (= (DatatypeCtorId d@@19) |##DatatypeTests.Recursive.Recursive|))
 :qid |unknown.0:0|
 :skolemid |1705|
 :pattern ( (DatatypeTests.Recursive.Recursive_q d@@19))
)))
(assert (forall ((d@@20 T@U) ) (! (= (RustStdOption.Option.Some_q d@@20) (= (DatatypeCtorId d@@20) |##RustStdOption.Option.Some|))
 :qid |unknown.0:0|
 :skolemid |1721|
 :pattern ( (RustStdOption.Option.Some_q d@@20))
)))
(assert (forall ((d@@21 T@U) ) (! (= (RustStdOption.Option.None_q d@@21) (= (DatatypeCtorId d@@21) |##RustStdOption.Option.None|))
 :qid |unknown.0:0|
 :skolemid |1730|
 :pattern ( (RustStdOption.Option.None_q d@@21))
)))
(assert (forall ((d@@22 T@U) ) (! (= (RustStdCompare.Option.Some_q d@@22) (= (DatatypeCtorId d@@22) |##RustStdCompare.Option.Some|))
 :qid |unknown.0:0|
 :skolemid |1740|
 :pattern ( (RustStdCompare.Option.Some_q d@@22))
)))
(assert (forall ((d@@23 T@U) ) (! (= (RustStdCompare.Option.None_q d@@23) (= (DatatypeCtorId d@@23) |##RustStdCompare.Option.None|))
 :qid |unknown.0:0|
 :skolemid |1749|
 :pattern ( (RustStdCompare.Option.None_q d@@23))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1028|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((|a#32#0#0| Int) (|a#32#1#0| Bool) ) (! (= ($Is DatatypeTypeType (|#DatatypeTests.Struct.StructConstructor| |a#32#0#0| |a#32#1#0|) Tclass.DatatypeTests.Struct)  (and ($Is intType (int_2_U |a#32#0#0|) Tclass.DatatypeTests.u8) ($Is boolType (bool_2_U |a#32#1#0|) TBool)))
 :qid |datatypesdfy.47:56|
 :skolemid |1596|
 :pattern ( ($Is DatatypeTypeType (|#DatatypeTests.Struct.StructConstructor| |a#32#0#0| |a#32#1#0|) Tclass.DatatypeTests.Struct))
)))
(assert (forall ((|a#12#0#0| Int) (|a#12#1#0| Bool) ) (! (= ($Is DatatypeTypeType (|#DatatypeTests.Multiple.ConstructorAB| |a#12#0#0| |a#12#1#0|) Tclass.DatatypeTests.Multiple)  (and ($Is intType (int_2_U |a#12#0#0|) Tclass.DatatypeTests.u8) ($Is boolType (bool_2_U |a#12#1#0|) TBool)))
 :qid |datatypesdfy.57:21|
 :skolemid |1631|
 :pattern ( ($Is DatatypeTypeType (|#DatatypeTests.Multiple.ConstructorAB| |a#12#0#0| |a#12#1#0|) Tclass.DatatypeTests.Multiple))
)))
(assert (forall ((|a#2#0#0@@0| Int) (|a#2#1#0@@0| Bool) ) (! (= ($Is DatatypeTypeType (|#DatatypeTests.RcStruct.RcStructConstructor| |a#2#0#0@@0| |a#2#1#0@@0|) Tclass.DatatypeTests.RcStruct)  (and ($Is intType (int_2_U |a#2#0#0@@0|) Tclass.DatatypeTests.u8) ($Is boolType (bool_2_U |a#2#1#0@@0|) TBool)))
 :qid |datatypesdfy.77:43|
 :skolemid |1652|
 :pattern ( ($Is DatatypeTypeType (|#DatatypeTests.RcStruct.RcStructConstructor| |a#2#0#0@@0| |a#2#1#0@@0|) Tclass.DatatypeTests.RcStruct))
)))
(assert (forall ((|a#12#0#0@@0| Int) (|a#12#1#0@@0| Bool) ) (! (= ($Is DatatypeTypeType (|#DatatypeTests.RcMultiple.RcConstructorAB| |a#12#0#0@@0| |a#12#1#0@@0|) Tclass.DatatypeTests.RcMultiple)  (and ($Is intType (int_2_U |a#12#0#0@@0|) Tclass.DatatypeTests.u8) ($Is boolType (bool_2_U |a#12#1#0@@0|) TBool)))
 :qid |datatypesdfy.87:23|
 :skolemid |1687|
 :pattern ( ($Is DatatypeTypeType (|#DatatypeTests.RcMultiple.RcConstructorAB| |a#12#0#0@@0| |a#12#1#0@@0|) Tclass.DatatypeTests.RcMultiple))
)))
(assert (forall ((d@@24 T@U) ) (!  (=> (DatatypeTests.Struct.StructConstructor_q d@@24) (exists ((|a#31#0#0| Int) (|a#31#1#0| Bool) ) (! (= d@@24 (|#DatatypeTests.Struct.StructConstructor| |a#31#0#0| |a#31#1#0|))
 :qid |datatypesdfy.47:56|
 :skolemid |1594|
)))
 :qid |unknown.0:0|
 :skolemid |1595|
 :pattern ( (DatatypeTests.Struct.StructConstructor_q d@@24))
)))
(assert (forall ((d@@25 T@U) ) (!  (=> (DatatypeTests.Multiple.ConstructorAB_q d@@25) (exists ((|a#11#0#0| Int) (|a#11#1#0| Bool) ) (! (= d@@25 (|#DatatypeTests.Multiple.ConstructorAB| |a#11#0#0| |a#11#1#0|))
 :qid |datatypesdfy.57:21|
 :skolemid |1629|
)))
 :qid |unknown.0:0|
 :skolemid |1630|
 :pattern ( (DatatypeTests.Multiple.ConstructorAB_q d@@25))
)))
(assert (forall ((d@@26 T@U) ) (!  (=> (DatatypeTests.RcStruct.RcStructConstructor_q d@@26) (exists ((|a#1#0#0| Int) (|a#1#1#0| Bool) ) (! (= d@@26 (|#DatatypeTests.RcStruct.RcStructConstructor| |a#1#0#0| |a#1#1#0|))
 :qid |datatypesdfy.77:43|
 :skolemid |1650|
)))
 :qid |unknown.0:0|
 :skolemid |1651|
 :pattern ( (DatatypeTests.RcStruct.RcStructConstructor_q d@@26))
)))
(assert (forall ((d@@27 T@U) ) (!  (=> (DatatypeTests.RcMultiple.RcConstructorAB_q d@@27) (exists ((|a#11#0#0@@0| Int) (|a#11#1#0@@0| Bool) ) (! (= d@@27 (|#DatatypeTests.RcMultiple.RcConstructorAB| |a#11#0#0@@0| |a#11#1#0@@0|))
 :qid |datatypesdfy.87:23|
 :skolemid |1685|
)))
 :qid |unknown.0:0|
 :skolemid |1686|
 :pattern ( (DatatypeTests.RcMultiple.RcConstructorAB_q d@@27))
)))
(assert (forall ((d@@28 T@U) ) (!  (=> (DatatypeTests.Recursive.Recursive_q d@@28) (exists ((|a#1#0#0@@0| Int) (|a#1#1#0@@0| T@U) ) (! (= d@@28 (|#DatatypeTests.Recursive.Recursive| |a#1#0#0@@0| |a#1#1#0@@0|))
 :qid |datatypesdfy.107:34|
 :skolemid |1706|
)))
 :qid |unknown.0:0|
 :skolemid |1707|
 :pattern ( (DatatypeTests.Recursive.Recursive_q d@@28))
)))
(assert (forall ((d@@29 T@U) ) (!  (=> (DatatypeTests.NoArg.OptionA_q d@@29) (= d@@29 |#DatatypeTests.NoArg.OptionA|))
 :qid |unknown.0:0|
 :skolemid |1507|
 :pattern ( (DatatypeTests.NoArg.OptionA_q d@@29))
)))
(assert (forall ((d@@30 T@U) ) (!  (=> (DatatypeTests.NoArg.OptionB_q d@@30) (= d@@30 |#DatatypeTests.NoArg.OptionB|))
 :qid |unknown.0:0|
 :skolemid |1509|
 :pattern ( (DatatypeTests.NoArg.OptionB_q d@@30))
)))
(assert (forall ((d@@31 T@U) ) (!  (=> (DatatypeTests.NoArg.OptionC_q d@@31) (= d@@31 |#DatatypeTests.NoArg.OptionC|))
 :qid |unknown.0:0|
 :skolemid |1511|
 :pattern ( (DatatypeTests.NoArg.OptionC_q d@@31))
)))
(assert (forall ((d@@32 T@U) ) (!  (=> (DatatypeTests.AlmostOption.Nothing_q d@@32) (= d@@32 |#DatatypeTests.AlmostOption.Nothing|))
 :qid |unknown.0:0|
 :skolemid |1520|
 :pattern ( (DatatypeTests.AlmostOption.Nothing_q d@@32))
)))
(assert (forall ((d@@33 T@U) ) (!  (=> (DatatypeTests.Peano.Zero_q d@@33) (= d@@33 |#DatatypeTests.Peano.Zero|))
 :qid |unknown.0:0|
 :skolemid |1576|
 :pattern ( (DatatypeTests.Peano.Zero_q d@@33))
)))
(assert (forall ((d@@34 T@U) ) (!  (=> (RustStdOption.Option.None_q d@@34) (= d@@34 |#RustStdOption.Option.None|))
 :qid |unknown.0:0|
 :skolemid |1731|
 :pattern ( (RustStdOption.Option.None_q d@@34))
)))
(assert (forall ((d@@35 T@U) ) (!  (=> (RustStdCompare.Option.None_q d@@35) (= d@@35 |#RustStdCompare.Option.None|))
 :qid |unknown.0:0|
 :skolemid |1750|
 :pattern ( (RustStdCompare.Option.None_q d@@35))
)))
(assert (forall ((d@@36 T@U) ) (!  (=> (DatatypeTests.AlmostOption.ThereItIs_q d@@36) (exists ((|a#17#0#0| Int) ) (! (= d@@36 (|#DatatypeTests.AlmostOption.ThereItIs| |a#17#0#0|))
 :qid |datatypesdfy.31:64|
 :skolemid |1523|
)))
 :qid |unknown.0:0|
 :skolemid |1524|
 :pattern ( (DatatypeTests.AlmostOption.ThereItIs_q d@@36))
)))
(assert (forall ((d@@37 T@U) ) (!  (=> (DatatypeTests.Peano.One_q d@@37) (exists ((|a#25#0#0| T@U) ) (! (= d@@37 (|#DatatypeTests.Peano.One| |a#25#0#0|))
 :qid |datatypesdfy.44:31|
 :skolemid |1579|
)))
 :qid |unknown.0:0|
 :skolemid |1580|
 :pattern ( (DatatypeTests.Peano.One_q d@@37))
)))
(assert (forall ((d@@38 T@U) ) (!  (=> (DatatypeTests.Multiple.ConstructorA_q d@@38) (exists ((|a#1#0#0@@1| Int) ) (! (= d@@38 (|#DatatypeTests.Multiple.ConstructorA| |a#1#0#0@@1|))
 :qid |datatypesdfy.55:20|
 :skolemid |1613|
)))
 :qid |unknown.0:0|
 :skolemid |1614|
 :pattern ( (DatatypeTests.Multiple.ConstructorA_q d@@38))
)))
(assert (forall ((d@@39 T@U) ) (!  (=> (DatatypeTests.Multiple.ConstructorB_q d@@39) (exists ((|a#6#0#0| Bool) ) (! (= d@@39 (|#DatatypeTests.Multiple.ConstructorB| |a#6#0#0|))
 :qid |datatypesdfy.56:20|
 :skolemid |1621|
)))
 :qid |unknown.0:0|
 :skolemid |1622|
 :pattern ( (DatatypeTests.Multiple.ConstructorB_q d@@39))
)))
(assert (forall ((d@@40 T@U) ) (!  (=> (DatatypeTests.RcMultiple.RcConstructorA_q d@@40) (exists ((|a#1#0#0@@2| Int) ) (! (= d@@40 (|#DatatypeTests.RcMultiple.RcConstructorA| |a#1#0#0@@2|))
 :qid |datatypesdfy.85:22|
 :skolemid |1669|
)))
 :qid |unknown.0:0|
 :skolemid |1670|
 :pattern ( (DatatypeTests.RcMultiple.RcConstructorA_q d@@40))
)))
(assert (forall ((d@@41 T@U) ) (!  (=> (DatatypeTests.RcMultiple.RcConstructorB_q d@@41) (exists ((|a#6#0#0@@0| Bool) ) (! (= d@@41 (|#DatatypeTests.RcMultiple.RcConstructorB| |a#6#0#0@@0|))
 :qid |datatypesdfy.86:22|
 :skolemid |1677|
)))
 :qid |unknown.0:0|
 :skolemid |1678|
 :pattern ( (DatatypeTests.RcMultiple.RcConstructorB_q d@@41))
)))
(assert (forall ((d@@42 T@U) ) (!  (=> (RustStdOption.Option.Some_q d@@42) (exists ((|a#8#0#0| T@U) ) (! (= d@@42 (|#RustStdOption.Option.Some| |a#8#0#0|))
 :qid |datatypesdfy.10:51|
 :skolemid |1722|
)))
 :qid |unknown.0:0|
 :skolemid |1723|
 :pattern ( (RustStdOption.Option.Some_q d@@42))
)))
(assert (forall ((d@@43 T@U) ) (!  (=> (RustStdCompare.Option.Some_q d@@43) (exists ((|a#18#0#0| T@U) ) (! (= d@@43 (|#RustStdCompare.Option.Some| |a#18#0#0|))
 :qid |datatypesdfy.17:51|
 :skolemid |1741|
)))
 :qid |unknown.0:0|
 :skolemid |1742|
 :pattern ( (RustStdCompare.Option.Some_q d@@43))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1041|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx t@@0 h@@1) ($IsAllocBox bx t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |1113|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@2) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |1112|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@2))
)))
(assert (forall ((RustStdOption.Option$T@@1 T@U) ) (!  (and (= (Tag (Tclass.RustStdOption.Option RustStdOption.Option$T@@1)) Tagclass.RustStdOption.Option) (= (TagFamily (Tclass.RustStdOption.Option RustStdOption.Option$T@@1)) tytagFamily$Option))
 :qid |unknown.0:0|
 :skolemid |1482|
 :pattern ( (Tclass.RustStdOption.Option RustStdOption.Option$T@@1))
)))
(assert (forall ((RustStdCompare.Option$T@@1 T@U) ) (!  (and (= (Tag (Tclass.RustStdCompare.Option RustStdCompare.Option$T@@1)) Tagclass.RustStdCompare.Option) (= (TagFamily (Tclass.RustStdCompare.Option RustStdCompare.Option$T@@1)) tytagFamily$Option))
 :qid |unknown.0:0|
 :skolemid |1501|
 :pattern ( (Tclass.RustStdCompare.Option RustStdCompare.Option$T@@1))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((this@@6 T@U) (|other#0@@2| T@U) ) (!  (=> (or (|DatatypeTests.RcMultiple.Gather#canCall| (Lit DatatypeTypeType this@@6) (Lit DatatypeTypeType |other#0@@2|)) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType this@@6 Tclass.DatatypeTests.RcMultiple) ($Is DatatypeTypeType |other#0@@2| Tclass.DatatypeTests.RcMultiple)))) (= (DatatypeTests.RcMultiple.Gather (Lit DatatypeTypeType this@@6) (Lit DatatypeTypeType |other#0@@2|)) (ite (DatatypeTests.RcMultiple.RcConstructorAB_q (Lit DatatypeTypeType this@@6)) this@@6 (ite (DatatypeTests.RcMultiple.RcConstructorA_q (Lit DatatypeTypeType this@@6)) (ite (DatatypeTests.RcMultiple.RcConstructorB_q (Lit DatatypeTypeType |other#0@@2|)) (|#DatatypeTests.RcMultiple.RcConstructorAB| (LitInt (DatatypeTests.RcMultiple.a (Lit DatatypeTypeType this@@6))) (U_2_bool (Lit boolType (bool_2_U (DatatypeTests.RcMultiple.b (Lit DatatypeTypeType |other#0@@2|)))))) this@@6) (ite (DatatypeTests.RcMultiple.RcConstructorB_q (Lit DatatypeTypeType this@@6)) (ite (DatatypeTests.RcMultiple.RcConstructorA_q (Lit DatatypeTypeType |other#0@@2|)) (|#DatatypeTests.RcMultiple.RcConstructorAB| (LitInt (DatatypeTests.RcMultiple.a (Lit DatatypeTypeType |other#0@@2|))) (U_2_bool (Lit boolType (bool_2_U (DatatypeTests.RcMultiple.b (Lit DatatypeTypeType this@@6)))))) this@@6) this@@6)))))
 :qid |datatypesdfy.89:14|
 :weight 3
 :skolemid |1703|
 :pattern ( (DatatypeTests.RcMultiple.Gather (Lit DatatypeTypeType this@@6) (Lit DatatypeTypeType |other#0@@2|)))
))))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass.DatatypeTests.u8) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) Tclass.DatatypeTests.u8)))
 :qid |unknown.0:0|
 :skolemid |1481|
 :pattern ( ($IsBox bx@@0 Tclass.DatatypeTests.u8))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass.DatatypeTests.NoArg) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) Tclass.DatatypeTests.NoArg)))
 :qid |unknown.0:0|
 :skolemid |1491|
 :pattern ( ($IsBox bx@@1 Tclass.DatatypeTests.NoArg))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass.DatatypeTests.AlmostOption) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@2)) bx@@2) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@2) Tclass.DatatypeTests.AlmostOption)))
 :qid |unknown.0:0|
 :skolemid |1492|
 :pattern ( ($IsBox bx@@2 Tclass.DatatypeTests.AlmostOption))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass.DatatypeTests.Peano) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@3)) bx@@3) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@3) Tclass.DatatypeTests.Peano)))
 :qid |unknown.0:0|
 :skolemid |1493|
 :pattern ( ($IsBox bx@@3 Tclass.DatatypeTests.Peano))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass.DatatypeTests.Multiple) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@4)) bx@@4) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@4) Tclass.DatatypeTests.Multiple)))
 :qid |unknown.0:0|
 :skolemid |1494|
 :pattern ( ($IsBox bx@@4 Tclass.DatatypeTests.Multiple))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass.DatatypeTests.Struct) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@5)) bx@@5) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@5) Tclass.DatatypeTests.Struct)))
 :qid |unknown.0:0|
 :skolemid |1495|
 :pattern ( ($IsBox bx@@5 Tclass.DatatypeTests.Struct))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass.DatatypeTests.RcMultiple) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@6)) bx@@6) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@6) Tclass.DatatypeTests.RcMultiple)))
 :qid |unknown.0:0|
 :skolemid |1496|
 :pattern ( ($IsBox bx@@6 Tclass.DatatypeTests.RcMultiple))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass.DatatypeTests.RcStruct) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@7)) bx@@7) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@7) Tclass.DatatypeTests.RcStruct)))
 :qid |unknown.0:0|
 :skolemid |1497|
 :pattern ( ($IsBox bx@@7 Tclass.DatatypeTests.RcStruct))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass.DatatypeTests.Recursive) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@8)) bx@@8) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@8) Tclass.DatatypeTests.Recursive)))
 :qid |unknown.0:0|
 :skolemid |1498|
 :pattern ( ($IsBox bx@@8 Tclass.DatatypeTests.Recursive))
)))
(assert (forall ((|a#18#0#0@@0| Int) ) (! (= ($Is DatatypeTypeType (|#DatatypeTests.AlmostOption.ThereItIs| |a#18#0#0@@0|) Tclass.DatatypeTests.AlmostOption) ($Is intType (int_2_U |a#18#0#0@@0|) Tclass.DatatypeTests.u8))
 :qid |datatypesdfy.31:64|
 :skolemid |1525|
 :pattern ( ($Is DatatypeTypeType (|#DatatypeTests.AlmostOption.ThereItIs| |a#18#0#0@@0|) Tclass.DatatypeTests.AlmostOption))
)))
(assert (forall ((|a#26#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#DatatypeTests.Peano.One| |a#26#0#0|) Tclass.DatatypeTests.Peano) ($Is DatatypeTypeType |a#26#0#0| Tclass.DatatypeTests.Peano))
 :qid |datatypesdfy.44:31|
 :skolemid |1581|
 :pattern ( ($Is DatatypeTypeType (|#DatatypeTests.Peano.One| |a#26#0#0|) Tclass.DatatypeTests.Peano))
)))
(assert (forall ((|a#2#0#0@@1| Int) ) (! (= ($Is DatatypeTypeType (|#DatatypeTests.Multiple.ConstructorA| |a#2#0#0@@1|) Tclass.DatatypeTests.Multiple) ($Is intType (int_2_U |a#2#0#0@@1|) Tclass.DatatypeTests.u8))
 :qid |datatypesdfy.55:20|
 :skolemid |1615|
 :pattern ( ($Is DatatypeTypeType (|#DatatypeTests.Multiple.ConstructorA| |a#2#0#0@@1|) Tclass.DatatypeTests.Multiple))
)))
(assert (forall ((|a#2#0#0@@2| Int) ) (! (= ($Is DatatypeTypeType (|#DatatypeTests.RcMultiple.RcConstructorA| |a#2#0#0@@2|) Tclass.DatatypeTests.RcMultiple) ($Is intType (int_2_U |a#2#0#0@@2|) Tclass.DatatypeTests.u8))
 :qid |datatypesdfy.85:22|
 :skolemid |1671|
 :pattern ( ($Is DatatypeTypeType (|#DatatypeTests.RcMultiple.RcConstructorA| |a#2#0#0@@2|) Tclass.DatatypeTests.RcMultiple))
)))
(assert (forall ((a@@4 T@U) (b@@4 T@U) ) (!  (=> (and (DatatypeTests.Peano.One_q a@@4) (DatatypeTests.Peano.One_q b@@4)) (= (|DatatypeTests.Peano#Equal| a@@4 b@@4) (|DatatypeTests.Peano#Equal| (DatatypeTests.Peano.p a@@4) (DatatypeTests.Peano.p b@@4))))
 :qid |unknown.0:0|
 :skolemid |1590|
 :pattern ( (|DatatypeTests.Peano#Equal| a@@4 b@@4) (DatatypeTests.Peano.One_q a@@4))
 :pattern ( (|DatatypeTests.Peano#Equal| a@@4 b@@4) (DatatypeTests.Peano.One_q b@@4))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((this@@7 T@U) (|other#0@@3| T@U) ) (!  (=> (or (|DatatypeTests.Multiple.Gather#canCall| this@@7 |other#0@@3|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType this@@7 Tclass.DatatypeTests.Multiple) ($Is DatatypeTypeType |other#0@@3| Tclass.DatatypeTests.Multiple)))) (= (DatatypeTests.Multiple.Gather this@@7 |other#0@@3|) (ite (DatatypeTests.Multiple.ConstructorA_q this@@7) (let ((|a#0| (DatatypeTests.Multiple.a this@@7)))
(ite (DatatypeTests.Multiple.ConstructorB_q |other#0@@3|) (|#DatatypeTests.Multiple.ConstructorAB| |a#0| (DatatypeTests.Multiple.b |other#0@@3|)) this@@7)) (ite (DatatypeTests.Multiple.ConstructorB_q this@@7) (let ((|b#0| (DatatypeTests.Multiple.b this@@7)))
(ite (DatatypeTests.Multiple.ConstructorA_q |other#0@@3|) (|#DatatypeTests.Multiple.ConstructorAB| (DatatypeTests.Multiple.a |other#0@@3|) |b#0|) this@@7)) this@@7))))
 :qid |datatypesdfy.59:14|
 :skolemid |1646|
 :pattern ( (DatatypeTests.Multiple.Gather this@@7 |other#0@@3|))
))))
(assert (forall ((RustStdOption.Option$T@@2 T@U) (|a#9#0#0| T@U) ($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) (= ($IsAlloc DatatypeTypeType (|#RustStdOption.Option.Some| |a#9#0#0|) (Tclass.RustStdOption.Option RustStdOption.Option$T@@2) $h@@2) ($IsAllocBox |a#9#0#0| RustStdOption.Option$T@@2 $h@@2)))
 :qid |unknown.0:0|
 :skolemid |1725|
 :pattern ( ($IsAlloc DatatypeTypeType (|#RustStdOption.Option.Some| |a#9#0#0|) (Tclass.RustStdOption.Option RustStdOption.Option$T@@2) $h@@2))
)))
(assert (forall ((RustStdCompare.Option$T@@2 T@U) (|a#19#0#0| T@U) ($h@@3 T@U) ) (!  (=> ($IsGoodHeap $h@@3) (= ($IsAlloc DatatypeTypeType (|#RustStdCompare.Option.Some| |a#19#0#0|) (Tclass.RustStdCompare.Option RustStdCompare.Option$T@@2) $h@@3) ($IsAllocBox |a#19#0#0| RustStdCompare.Option$T@@2 $h@@3)))
 :qid |unknown.0:0|
 :skolemid |1744|
 :pattern ( ($IsAlloc DatatypeTypeType (|#RustStdCompare.Option.Some| |a#19#0#0|) (Tclass.RustStdCompare.Option RustStdCompare.Option$T@@2) $h@@3))
)))
(assert (forall ((d@@44 T@U) ) (!  (=> (|$IsA#DatatypeTests.Peano| d@@44) (or (DatatypeTests.Peano.Zero_q d@@44) (DatatypeTests.Peano.One_q d@@44)))
 :qid |unknown.0:0|
 :skolemid |1587|
 :pattern ( (|$IsA#DatatypeTests.Peano| d@@44))
)))
(assert (forall ((RustStdOption.Option$T@@3 T@U) (d@@45 T@U) ) (!  (=> ($Is DatatypeTypeType d@@45 (Tclass.RustStdOption.Option RustStdOption.Option$T@@3)) (or (RustStdOption.Option.Some_q d@@45) (RustStdOption.Option.None_q d@@45)))
 :qid |unknown.0:0|
 :skolemid |1735|
 :pattern ( (RustStdOption.Option.None_q d@@45) ($Is DatatypeTypeType d@@45 (Tclass.RustStdOption.Option RustStdOption.Option$T@@3)))
 :pattern ( (RustStdOption.Option.Some_q d@@45) ($Is DatatypeTypeType d@@45 (Tclass.RustStdOption.Option RustStdOption.Option$T@@3)))
)))
(assert (forall ((RustStdCompare.Option$T@@3 T@U) (d@@46 T@U) ) (!  (=> ($Is DatatypeTypeType d@@46 (Tclass.RustStdCompare.Option RustStdCompare.Option$T@@3)) (or (RustStdCompare.Option.Some_q d@@46) (RustStdCompare.Option.None_q d@@46)))
 :qid |unknown.0:0|
 :skolemid |1754|
 :pattern ( (RustStdCompare.Option.None_q d@@46) ($Is DatatypeTypeType d@@46 (Tclass.RustStdCompare.Option RustStdCompare.Option$T@@3)))
 :pattern ( (RustStdCompare.Option.Some_q d@@46) ($Is DatatypeTypeType d@@46 (Tclass.RustStdCompare.Option RustStdCompare.Option$T@@3)))
)))
(assert (forall ((|a#35#0#0| Int) (|a#35#1#0| Bool) ) (! (= (DatatypeTests.Struct.b (|#DatatypeTests.Struct.StructConstructor| |a#35#0#0| |a#35#1#0|)) |a#35#1#0|)
 :qid |datatypesdfy.47:56|
 :skolemid |1601|
 :pattern ( (|#DatatypeTests.Struct.StructConstructor| |a#35#0#0| |a#35#1#0|))
)))
(assert (forall ((|a#15#0#0| Int) (|a#15#1#0| Bool) ) (! (= (DatatypeTests.Multiple.b (|#DatatypeTests.Multiple.ConstructorAB| |a#15#0#0| |a#15#1#0|)) |a#15#1#0|)
 :qid |datatypesdfy.57:21|
 :skolemid |1636|
 :pattern ( (|#DatatypeTests.Multiple.ConstructorAB| |a#15#0#0| |a#15#1#0|))
)))
(assert (forall ((|a#5#0#0| Int) (|a#5#1#0| Bool) ) (! (= (DatatypeTests.RcStruct.b (|#DatatypeTests.RcStruct.RcStructConstructor| |a#5#0#0| |a#5#1#0|)) |a#5#1#0|)
 :qid |datatypesdfy.77:43|
 :skolemid |1657|
 :pattern ( (|#DatatypeTests.RcStruct.RcStructConstructor| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#15#0#0@@0| Int) (|a#15#1#0@@0| Bool) ) (! (= (DatatypeTests.RcMultiple.b (|#DatatypeTests.RcMultiple.RcConstructorAB| |a#15#0#0@@0| |a#15#1#0@@0|)) |a#15#1#0@@0|)
 :qid |datatypesdfy.87:23|
 :skolemid |1692|
 :pattern ( (|#DatatypeTests.RcMultiple.RcConstructorAB| |a#15#0#0@@0| |a#15#1#0@@0|))
)))
(assert (forall ((|a#9#0#0@@0| Bool) ) (! (= (DatatypeTests.Multiple.b (|#DatatypeTests.Multiple.ConstructorB| |a#9#0#0@@0|)) |a#9#0#0@@0|)
 :qid |datatypesdfy.56:20|
 :skolemid |1626|
 :pattern ( (|#DatatypeTests.Multiple.ConstructorB| |a#9#0#0@@0|))
)))
(assert (forall ((|a#9#0#0@@1| Bool) ) (! (= (DatatypeTests.RcMultiple.b (|#DatatypeTests.RcMultiple.RcConstructorB| |a#9#0#0@@1|)) |a#9#0#0@@1|)
 :qid |datatypesdfy.86:22|
 :skolemid |1682|
 :pattern ( (|#DatatypeTests.RcMultiple.RcConstructorB| |a#9#0#0@@1|))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((this@@8 T@U) ) (!  (=> (or (|DatatypeTests.Struct.BTrue#canCall| this@@8) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType this@@8 Tclass.DatatypeTests.Struct))) ($Is DatatypeTypeType (DatatypeTests.Struct.BTrue this@@8) Tclass.DatatypeTests.Struct))
 :qid |datatypesdfy.48:14|
 :skolemid |1607|
 :pattern ( (DatatypeTests.Struct.BTrue this@@8))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((this@@9 T@U) ) (!  (=> (or (|DatatypeTests.RcStruct.BTrue#canCall| this@@9) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType this@@9 Tclass.DatatypeTests.RcStruct))) ($Is DatatypeTypeType (DatatypeTests.RcStruct.BTrue this@@9) Tclass.DatatypeTests.RcStruct))
 :qid |datatypesdfy.78:14|
 :skolemid |1663|
 :pattern ( (DatatypeTests.RcStruct.BTrue this@@9))
))))
(assert (forall ((d@@47 T@U) ) (!  (=> ($Is DatatypeTypeType d@@47 Tclass.DatatypeTests.AlmostOption) (or (DatatypeTests.AlmostOption.Nothing_q d@@47) (DatatypeTests.AlmostOption.ThereItIs_q d@@47)))
 :qid |unknown.0:0|
 :skolemid |1531|
 :pattern ( (DatatypeTests.AlmostOption.ThereItIs_q d@@47) ($Is DatatypeTypeType d@@47 Tclass.DatatypeTests.AlmostOption))
 :pattern ( (DatatypeTests.AlmostOption.Nothing_q d@@47) ($Is DatatypeTypeType d@@47 Tclass.DatatypeTests.AlmostOption))
)))
(assert (forall ((d@@48 T@U) ) (!  (=> ($Is DatatypeTypeType d@@48 Tclass.DatatypeTests.Peano) (or (DatatypeTests.Peano.Zero_q d@@48) (DatatypeTests.Peano.One_q d@@48)))
 :qid |unknown.0:0|
 :skolemid |1588|
 :pattern ( (DatatypeTests.Peano.One_q d@@48) ($Is DatatypeTypeType d@@48 Tclass.DatatypeTests.Peano))
 :pattern ( (DatatypeTests.Peano.Zero_q d@@48) ($Is DatatypeTypeType d@@48 Tclass.DatatypeTests.Peano))
)))
(assert (forall ((a@@5 T@U) (b@@5 T@U) (c T@U) ) (!  (=> (or (not (= a@@5 c)) (not true)) (=> (and ($HeapSucc a@@5 b@@5) ($HeapSucc b@@5 c)) ($HeapSucc a@@5 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |1119|
 :pattern ( ($HeapSucc a@@5 b@@5) ($HeapSucc b@@5 c))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 TInt) (and (= ($Box intType ($Unbox intType bx@@9)) bx@@9) ($Is intType ($Unbox intType bx@@9) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |1029|
 :pattern ( ($IsBox bx@@9 TInt))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 TBool) (and (= ($Box boolType ($Unbox boolType bx@@10)) bx@@10) ($Is boolType ($Unbox boolType bx@@10) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |1031|
 :pattern ( ($IsBox bx@@10 TBool))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@2) ($Is T@@3 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1040|
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@2))
)))
(assert (forall ((a@@6 T@U) (b@@6 T@U) ) (!  (=> (and (DatatypeTests.Peano.Zero_q a@@6) (DatatypeTests.Peano.Zero_q b@@6)) (|DatatypeTests.Peano#Equal| a@@6 b@@6))
 :qid |unknown.0:0|
 :skolemid |1589|
 :pattern ( (|DatatypeTests.Peano#Equal| a@@6 b@@6) (DatatypeTests.Peano.Zero_q a@@6))
 :pattern ( (|DatatypeTests.Peano#Equal| a@@6 b@@6) (DatatypeTests.Peano.Zero_q b@@6))
)))
(assert (forall ((|a#30#0#0| Int) (|a#30#1#0| Bool) ) (! (= (DatatypeCtorId (|#DatatypeTests.Struct.StructConstructor| |a#30#0#0| |a#30#1#0|)) |##DatatypeTests.Struct.StructConstructor|)
 :qid |datatypesdfy.47:56|
 :skolemid |1592|
 :pattern ( (|#DatatypeTests.Struct.StructConstructor| |a#30#0#0| |a#30#1#0|))
)))
(assert (forall ((|a#34#0#0| Int) (|a#34#1#0| Bool) ) (! (= (DatatypeTests.Struct.a (|#DatatypeTests.Struct.StructConstructor| |a#34#0#0| |a#34#1#0|)) |a#34#0#0|)
 :qid |datatypesdfy.47:56|
 :skolemid |1600|
 :pattern ( (|#DatatypeTests.Struct.StructConstructor| |a#34#0#0| |a#34#1#0|))
)))
(assert (forall ((|a#10#0#0| Int) (|a#10#1#0| Bool) ) (! (= (DatatypeCtorId (|#DatatypeTests.Multiple.ConstructorAB| |a#10#0#0| |a#10#1#0|)) |##DatatypeTests.Multiple.ConstructorAB|)
 :qid |datatypesdfy.57:21|
 :skolemid |1627|
 :pattern ( (|#DatatypeTests.Multiple.ConstructorAB| |a#10#0#0| |a#10#1#0|))
)))
(assert (forall ((|a#14#0#0| Int) (|a#14#1#0| Bool) ) (! (= (DatatypeTests.Multiple.a (|#DatatypeTests.Multiple.ConstructorAB| |a#14#0#0| |a#14#1#0|)) |a#14#0#0|)
 :qid |datatypesdfy.57:21|
 :skolemid |1635|
 :pattern ( (|#DatatypeTests.Multiple.ConstructorAB| |a#14#0#0| |a#14#1#0|))
)))
(assert (forall ((|a#0#0#0| Int) (|a#0#1#0| Bool) ) (! (= (DatatypeCtorId (|#DatatypeTests.RcStruct.RcStructConstructor| |a#0#0#0| |a#0#1#0|)) |##DatatypeTests.RcStruct.RcStructConstructor|)
 :qid |datatypesdfy.77:43|
 :skolemid |1648|
 :pattern ( (|#DatatypeTests.RcStruct.RcStructConstructor| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|a#4#0#0| Int) (|a#4#1#0| Bool) ) (! (= (DatatypeTests.RcStruct.a (|#DatatypeTests.RcStruct.RcStructConstructor| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |datatypesdfy.77:43|
 :skolemid |1656|
 :pattern ( (|#DatatypeTests.RcStruct.RcStructConstructor| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#10#0#0@@0| Int) (|a#10#1#0@@0| Bool) ) (! (= (DatatypeCtorId (|#DatatypeTests.RcMultiple.RcConstructorAB| |a#10#0#0@@0| |a#10#1#0@@0|)) |##DatatypeTests.RcMultiple.RcConstructorAB|)
 :qid |datatypesdfy.87:23|
 :skolemid |1683|
 :pattern ( (|#DatatypeTests.RcMultiple.RcConstructorAB| |a#10#0#0@@0| |a#10#1#0@@0|))
)))
(assert (forall ((|a#14#0#0@@0| Int) (|a#14#1#0@@0| Bool) ) (! (= (DatatypeTests.RcMultiple.a (|#DatatypeTests.RcMultiple.RcConstructorAB| |a#14#0#0@@0| |a#14#1#0@@0|)) |a#14#0#0@@0|)
 :qid |datatypesdfy.87:23|
 :skolemid |1691|
 :pattern ( (|#DatatypeTests.RcMultiple.RcConstructorAB| |a#14#0#0@@0| |a#14#1#0@@0|))
)))
(assert (forall ((|a#0#0#0@@0| Int) (|a#0#1#0@@0| T@U) ) (! (= (DatatypeCtorId (|#DatatypeTests.Recursive.Recursive| |a#0#0#0@@0| |a#0#1#0@@0|)) |##DatatypeTests.Recursive.Recursive|)
 :qid |datatypesdfy.107:34|
 :skolemid |1704|
 :pattern ( (|#DatatypeTests.Recursive.Recursive| |a#0#0#0@@0| |a#0#1#0@@0|))
)))
(assert (forall ((|a#4#0#0@@0| Int) (|a#4#1#0@@0| T@U) ) (! (= (DatatypeTests.Recursive.head (|#DatatypeTests.Recursive.Recursive| |a#4#0#0@@0| |a#4#1#0@@0|)) |a#4#0#0@@0|)
 :qid |datatypesdfy.107:34|
 :skolemid |1712|
 :pattern ( (|#DatatypeTests.Recursive.Recursive| |a#4#0#0@@0| |a#4#1#0@@0|))
)))
(assert (forall ((|a#5#0#0@@0| Int) (|a#5#1#0@@0| T@U) ) (! (= (DatatypeTests.Recursive.tail (|#DatatypeTests.Recursive.Recursive| |a#5#0#0@@0| |a#5#1#0@@0|)) |a#5#1#0@@0|)
 :qid |datatypesdfy.107:34|
 :skolemid |1713|
 :pattern ( (|#DatatypeTests.Recursive.Recursive| |a#5#0#0@@0| |a#5#1#0@@0|))
)))
(assert (forall ((RustStdOption.Option$T@@4 T@U) ) (! (= (Tclass.RustStdOption.Option_0 (Tclass.RustStdOption.Option RustStdOption.Option$T@@4)) RustStdOption.Option$T@@4)
 :qid |unknown.0:0|
 :skolemid |1483|
 :pattern ( (Tclass.RustStdOption.Option RustStdOption.Option$T@@4))
)))
(assert (forall ((RustStdCompare.Option$T@@4 T@U) ) (! (= (Tclass.RustStdCompare.Option_0 (Tclass.RustStdCompare.Option RustStdCompare.Option$T@@4)) RustStdCompare.Option$T@@4)
 :qid |unknown.0:0|
 :skolemid |1502|
 :pattern ( (Tclass.RustStdCompare.Option RustStdCompare.Option$T@@4))
)))
(assert (forall ((|a#16#0#0| Int) ) (! (= (DatatypeCtorId (|#DatatypeTests.AlmostOption.ThereItIs| |a#16#0#0|)) |##DatatypeTests.AlmostOption.ThereItIs|)
 :qid |datatypesdfy.31:64|
 :skolemid |1521|
 :pattern ( (|#DatatypeTests.AlmostOption.ThereItIs| |a#16#0#0|))
)))
(assert (forall ((|a#20#0#0| Int) ) (! (= (DatatypeTests.AlmostOption.u (|#DatatypeTests.AlmostOption.ThereItIs| |a#20#0#0|)) |a#20#0#0|)
 :qid |datatypesdfy.31:64|
 :skolemid |1528|
 :pattern ( (|#DatatypeTests.AlmostOption.ThereItIs| |a#20#0#0|))
)))
(assert (forall ((|a#24#0#0| T@U) ) (! (= (DatatypeCtorId (|#DatatypeTests.Peano.One| |a#24#0#0|)) |##DatatypeTests.Peano.One|)
 :qid |datatypesdfy.44:31|
 :skolemid |1577|
 :pattern ( (|#DatatypeTests.Peano.One| |a#24#0#0|))
)))
(assert (forall ((|a#28#0#0| T@U) ) (! (= (DatatypeTests.Peano.p (|#DatatypeTests.Peano.One| |a#28#0#0|)) |a#28#0#0|)
 :qid |datatypesdfy.44:31|
 :skolemid |1584|
 :pattern ( (|#DatatypeTests.Peano.One| |a#28#0#0|))
)))
(assert (forall ((|a#0#0#0@@1| Int) ) (! (= (DatatypeCtorId (|#DatatypeTests.Multiple.ConstructorA| |a#0#0#0@@1|)) |##DatatypeTests.Multiple.ConstructorA|)
 :qid |datatypesdfy.55:20|
 :skolemid |1611|
 :pattern ( (|#DatatypeTests.Multiple.ConstructorA| |a#0#0#0@@1|))
)))
(assert (forall ((|a#4#0#0@@1| Int) ) (! (= (DatatypeTests.Multiple.a (|#DatatypeTests.Multiple.ConstructorA| |a#4#0#0@@1|)) |a#4#0#0@@1|)
 :qid |datatypesdfy.55:20|
 :skolemid |1618|
 :pattern ( (|#DatatypeTests.Multiple.ConstructorA| |a#4#0#0@@1|))
)))
(assert (forall ((|a#5#0#0@@1| Bool) ) (! (= (DatatypeCtorId (|#DatatypeTests.Multiple.ConstructorB| |a#5#0#0@@1|)) |##DatatypeTests.Multiple.ConstructorB|)
 :qid |datatypesdfy.56:20|
 :skolemid |1619|
 :pattern ( (|#DatatypeTests.Multiple.ConstructorB| |a#5#0#0@@1|))
)))
(assert (forall ((|a#0#0#0@@2| Int) ) (! (= (DatatypeCtorId (|#DatatypeTests.RcMultiple.RcConstructorA| |a#0#0#0@@2|)) |##DatatypeTests.RcMultiple.RcConstructorA|)
 :qid |datatypesdfy.85:22|
 :skolemid |1667|
 :pattern ( (|#DatatypeTests.RcMultiple.RcConstructorA| |a#0#0#0@@2|))
)))
(assert (forall ((|a#4#0#0@@2| Int) ) (! (= (DatatypeTests.RcMultiple.a (|#DatatypeTests.RcMultiple.RcConstructorA| |a#4#0#0@@2|)) |a#4#0#0@@2|)
 :qid |datatypesdfy.85:22|
 :skolemid |1674|
 :pattern ( (|#DatatypeTests.RcMultiple.RcConstructorA| |a#4#0#0@@2|))
)))
(assert (forall ((|a#5#0#0@@2| Bool) ) (! (= (DatatypeCtorId (|#DatatypeTests.RcMultiple.RcConstructorB| |a#5#0#0@@2|)) |##DatatypeTests.RcMultiple.RcConstructorB|)
 :qid |datatypesdfy.86:22|
 :skolemid |1675|
 :pattern ( (|#DatatypeTests.RcMultiple.RcConstructorB| |a#5#0#0@@2|))
)))
(assert (forall ((|a#7#0#0| T@U) ) (! (= (DatatypeCtorId (|#RustStdOption.Option.Some| |a#7#0#0|)) |##RustStdOption.Option.Some|)
 :qid |datatypesdfy.10:51|
 :skolemid |1720|
 :pattern ( (|#RustStdOption.Option.Some| |a#7#0#0|))
)))
(assert (forall ((|a#11#0#0@@1| T@U) ) (! (= (RustStdOption.Option.value (|#RustStdOption.Option.Some| |a#11#0#0@@1|)) |a#11#0#0@@1|)
 :qid |datatypesdfy.10:51|
 :skolemid |1728|
 :pattern ( (|#RustStdOption.Option.Some| |a#11#0#0@@1|))
)))
(assert (forall ((|a#17#0#0@@0| T@U) ) (! (= (DatatypeCtorId (|#RustStdCompare.Option.Some| |a#17#0#0@@0|)) |##RustStdCompare.Option.Some|)
 :qid |datatypesdfy.17:51|
 :skolemid |1739|
 :pattern ( (|#RustStdCompare.Option.Some| |a#17#0#0@@0|))
)))
(assert (forall ((|a#21#0#0| T@U) ) (! (= (RustStdCompare.Option.value (|#RustStdCompare.Option.Some| |a#21#0#0|)) |a#21#0#0|)
 :qid |datatypesdfy.17:51|
 :skolemid |1747|
 :pattern ( (|#RustStdCompare.Option.Some| |a#21#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1027|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((RustStdOption.Option$T@@5 T@U) (|a#9#0#0@@2| T@U) ) (! (= ($Is DatatypeTypeType (|#RustStdOption.Option.Some| |a#9#0#0@@2|) (Tclass.RustStdOption.Option RustStdOption.Option$T@@5)) ($IsBox |a#9#0#0@@2| RustStdOption.Option$T@@5))
 :qid |unknown.0:0|
 :skolemid |1724|
 :pattern ( ($Is DatatypeTypeType (|#RustStdOption.Option.Some| |a#9#0#0@@2|) (Tclass.RustStdOption.Option RustStdOption.Option$T@@5)))
)))
(assert (forall ((RustStdCompare.Option$T@@5 T@U) (|a#19#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#RustStdCompare.Option.Some| |a#19#0#0@@0|) (Tclass.RustStdCompare.Option RustStdCompare.Option$T@@5)) ($IsBox |a#19#0#0@@0| RustStdCompare.Option$T@@5))
 :qid |unknown.0:0|
 :skolemid |1743|
 :pattern ( ($Is DatatypeTypeType (|#RustStdCompare.Option.Some| |a#19#0#0@@0|) (Tclass.RustStdCompare.Option RustStdCompare.Option$T@@5)))
)))
(assert (forall ((|a#6#0#0@@1| Int) (|a#6#1#0| T@U) ) (! (< (DtRank |a#6#1#0|) (DtRank (|#DatatypeTests.Recursive.Recursive| |a#6#0#0@@1| |a#6#1#0|)))
 :qid |datatypesdfy.107:34|
 :skolemid |1714|
 :pattern ( (|#DatatypeTests.Recursive.Recursive| |a#6#0#0@@1| |a#6#1#0|))
)))
(assert (forall ((|a#7#0#0@@0| Bool) ) (! (= ($Is DatatypeTypeType (|#DatatypeTests.Multiple.ConstructorB| |a#7#0#0@@0|) Tclass.DatatypeTests.Multiple) ($Is boolType (bool_2_U |a#7#0#0@@0|) TBool))
 :qid |datatypesdfy.56:20|
 :skolemid |1623|
 :pattern ( ($Is DatatypeTypeType (|#DatatypeTests.Multiple.ConstructorB| |a#7#0#0@@0|) Tclass.DatatypeTests.Multiple))
)))
(assert (forall ((|a#7#0#0@@1| Bool) ) (! (= ($Is DatatypeTypeType (|#DatatypeTests.RcMultiple.RcConstructorB| |a#7#0#0@@1|) Tclass.DatatypeTests.RcMultiple) ($Is boolType (bool_2_U |a#7#0#0@@1|) TBool))
 :qid |datatypesdfy.86:22|
 :skolemid |1679|
 :pattern ( ($Is DatatypeTypeType (|#DatatypeTests.RcMultiple.RcConstructorB| |a#7#0#0@@1|) Tclass.DatatypeTests.RcMultiple))
)))
(assert (forall ((|a#29#0#0| T@U) ) (! (< (DtRank |a#29#0#0|) (DtRank (|#DatatypeTests.Peano.One| |a#29#0#0|)))
 :qid |datatypesdfy.44:31|
 :skolemid |1585|
 :pattern ( (|#DatatypeTests.Peano.One| |a#29#0#0|))
)))
(assert (forall ((|a#12#0#0@@1| T@U) ) (! (< (BoxRank |a#12#0#0@@1|) (DtRank (|#RustStdOption.Option.Some| |a#12#0#0@@1|)))
 :qid |datatypesdfy.10:51|
 :skolemid |1729|
 :pattern ( (|#RustStdOption.Option.Some| |a#12#0#0@@1|))
)))
(assert (forall ((|a#22#0#0| T@U) ) (! (< (BoxRank |a#22#0#0|) (DtRank (|#RustStdCompare.Option.Some| |a#22#0#0|)))
 :qid |datatypesdfy.17:51|
 :skolemid |1748|
 :pattern ( (|#RustStdCompare.Option.Some| |a#22#0#0|))
)))
(assert (forall ((d@@49 T@U) (RustStdOption.Option$T@@6 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (RustStdOption.Option.Some_q d@@49) ($IsAlloc DatatypeTypeType d@@49 (Tclass.RustStdOption.Option RustStdOption.Option$T@@6) $h@@4))) ($IsAllocBox (RustStdOption.Option.value d@@49) RustStdOption.Option$T@@6 $h@@4))
 :qid |unknown.0:0|
 :skolemid |1726|
 :pattern ( ($IsAllocBox (RustStdOption.Option.value d@@49) RustStdOption.Option$T@@6 $h@@4))
)))
(assert (forall ((d@@50 T@U) (RustStdCompare.Option$T@@6 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (RustStdCompare.Option.Some_q d@@50) ($IsAlloc DatatypeTypeType d@@50 (Tclass.RustStdCompare.Option RustStdCompare.Option$T@@6) $h@@5))) ($IsAllocBox (RustStdCompare.Option.value d@@50) RustStdCompare.Option$T@@6 $h@@5))
 :qid |unknown.0:0|
 :skolemid |1745|
 :pattern ( ($IsAllocBox (RustStdCompare.Option.value d@@50) RustStdCompare.Option$T@@6 $h@@5))
)))
(assert  (and (forall ((t0@@0 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 t2 (MapType1Store t0@@0 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1758|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@51 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (DatatypeTests.Struct.StructConstructor_q d@@51) ($IsAlloc DatatypeTypeType d@@51 Tclass.DatatypeTests.Struct $h@@6))) ($IsAlloc boolType (bool_2_U (DatatypeTests.Struct.b d@@51)) TBool $h@@6))
 :qid |unknown.0:0|
 :skolemid |1598|
 :pattern ( ($IsAlloc boolType (bool_2_U (DatatypeTests.Struct.b d@@51)) TBool $h@@6))
)))
(assert (forall ((d@@52 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (DatatypeTests.Multiple.ConstructorB_q d@@52) ($IsAlloc DatatypeTypeType d@@52 Tclass.DatatypeTests.Multiple $h@@7))) ($IsAlloc boolType (bool_2_U (DatatypeTests.Multiple.b d@@52)) TBool $h@@7))
 :qid |unknown.0:0|
 :skolemid |1624|
 :pattern ( ($IsAlloc boolType (bool_2_U (DatatypeTests.Multiple.b d@@52)) TBool $h@@7))
)))
(assert (forall ((d@@53 T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (DatatypeTests.Multiple.ConstructorAB_q d@@53) ($IsAlloc DatatypeTypeType d@@53 Tclass.DatatypeTests.Multiple $h@@8))) ($IsAlloc boolType (bool_2_U (DatatypeTests.Multiple.b d@@53)) TBool $h@@8))
 :qid |unknown.0:0|
 :skolemid |1633|
 :pattern ( ($IsAlloc boolType (bool_2_U (DatatypeTests.Multiple.b d@@53)) TBool $h@@8))
)))
(assert (forall ((d@@54 T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (DatatypeTests.RcStruct.RcStructConstructor_q d@@54) ($IsAlloc DatatypeTypeType d@@54 Tclass.DatatypeTests.RcStruct $h@@9))) ($IsAlloc boolType (bool_2_U (DatatypeTests.RcStruct.b d@@54)) TBool $h@@9))
 :qid |unknown.0:0|
 :skolemid |1654|
 :pattern ( ($IsAlloc boolType (bool_2_U (DatatypeTests.RcStruct.b d@@54)) TBool $h@@9))
)))
(assert (forall ((d@@55 T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (DatatypeTests.RcMultiple.RcConstructorB_q d@@55) ($IsAlloc DatatypeTypeType d@@55 Tclass.DatatypeTests.RcMultiple $h@@10))) ($IsAlloc boolType (bool_2_U (DatatypeTests.RcMultiple.b d@@55)) TBool $h@@10))
 :qid |unknown.0:0|
 :skolemid |1680|
 :pattern ( ($IsAlloc boolType (bool_2_U (DatatypeTests.RcMultiple.b d@@55)) TBool $h@@10))
)))
(assert (forall ((d@@56 T@U) ($h@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (DatatypeTests.RcMultiple.RcConstructorAB_q d@@56) ($IsAlloc DatatypeTypeType d@@56 Tclass.DatatypeTests.RcMultiple $h@@11))) ($IsAlloc boolType (bool_2_U (DatatypeTests.RcMultiple.b d@@56)) TBool $h@@11))
 :qid |unknown.0:0|
 :skolemid |1689|
 :pattern ( ($IsAlloc boolType (bool_2_U (DatatypeTests.RcMultiple.b d@@56)) TBool $h@@11))
)))
(assert (forall ((d@@57 T@U) ($h@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (DatatypeTests.Recursive.Recursive_q d@@57) ($IsAlloc DatatypeTypeType d@@57 Tclass.DatatypeTests.Recursive $h@@12))) ($IsAlloc intType (int_2_U (DatatypeTests.Recursive.head d@@57)) TInt $h@@12))
 :qid |unknown.0:0|
 :skolemid |1709|
 :pattern ( ($IsAlloc intType (int_2_U (DatatypeTests.Recursive.head d@@57)) TInt $h@@12))
)))
(assert (forall ((d@@58 T@U) ) (!  (=> ($Is DatatypeTypeType d@@58 Tclass.DatatypeTests.NoArg) (or (or (DatatypeTests.NoArg.OptionA_q d@@58) (DatatypeTests.NoArg.OptionB_q d@@58)) (DatatypeTests.NoArg.OptionC_q d@@58)))
 :qid |unknown.0:0|
 :skolemid |1514|
 :pattern ( (DatatypeTests.NoArg.OptionC_q d@@58) ($Is DatatypeTypeType d@@58 Tclass.DatatypeTests.NoArg))
 :pattern ( (DatatypeTests.NoArg.OptionB_q d@@58) ($Is DatatypeTypeType d@@58 Tclass.DatatypeTests.NoArg))
 :pattern ( (DatatypeTests.NoArg.OptionA_q d@@58) ($Is DatatypeTypeType d@@58 Tclass.DatatypeTests.NoArg))
)))
(assert (forall ((d@@59 T@U) ) (!  (=> ($Is DatatypeTypeType d@@59 Tclass.DatatypeTests.Multiple) (or (or (DatatypeTests.Multiple.ConstructorA_q d@@59) (DatatypeTests.Multiple.ConstructorB_q d@@59)) (DatatypeTests.Multiple.ConstructorAB_q d@@59)))
 :qid |unknown.0:0|
 :skolemid |1639|
 :pattern ( (DatatypeTests.Multiple.ConstructorAB_q d@@59) ($Is DatatypeTypeType d@@59 Tclass.DatatypeTests.Multiple))
 :pattern ( (DatatypeTests.Multiple.ConstructorB_q d@@59) ($Is DatatypeTypeType d@@59 Tclass.DatatypeTests.Multiple))
 :pattern ( (DatatypeTests.Multiple.ConstructorA_q d@@59) ($Is DatatypeTypeType d@@59 Tclass.DatatypeTests.Multiple))
)))
(assert (forall ((d@@60 T@U) ) (!  (=> ($Is DatatypeTypeType d@@60 Tclass.DatatypeTests.RcMultiple) (or (or (DatatypeTests.RcMultiple.RcConstructorA_q d@@60) (DatatypeTests.RcMultiple.RcConstructorB_q d@@60)) (DatatypeTests.RcMultiple.RcConstructorAB_q d@@60)))
 :qid |unknown.0:0|
 :skolemid |1695|
 :pattern ( (DatatypeTests.RcMultiple.RcConstructorAB_q d@@60) ($Is DatatypeTypeType d@@60 Tclass.DatatypeTests.RcMultiple))
 :pattern ( (DatatypeTests.RcMultiple.RcConstructorB_q d@@60) ($Is DatatypeTypeType d@@60 Tclass.DatatypeTests.RcMultiple))
 :pattern ( (DatatypeTests.RcMultiple.RcConstructorA_q d@@60) ($Is DatatypeTypeType d@@60 Tclass.DatatypeTests.RcMultiple))
)))
(assert (forall ((d@@61 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@61)) (DtRank d@@61))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |1086|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@61)))
)))
(assert (forall ((RustStdOption.Option$T@@7 T@U) (bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 (Tclass.RustStdOption.Option RustStdOption.Option$T@@7)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@11)) bx@@11) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@11) (Tclass.RustStdOption.Option RustStdOption.Option$T@@7))))
 :qid |unknown.0:0|
 :skolemid |1484|
 :pattern ( ($IsBox bx@@11 (Tclass.RustStdOption.Option RustStdOption.Option$T@@7)))
)))
(assert (forall ((RustStdCompare.Option$T@@7 T@U) (bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 (Tclass.RustStdCompare.Option RustStdCompare.Option$T@@7)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@12)) bx@@12) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@12) (Tclass.RustStdCompare.Option RustStdCompare.Option$T@@7))))
 :qid |unknown.0:0|
 :skolemid |1503|
 :pattern ( ($IsBox bx@@12 (Tclass.RustStdCompare.Option RustStdCompare.Option$T@@7)))
)))
(assert (forall ((d@@62 T@U) ($h@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) ($Is DatatypeTypeType d@@62 Tclass.DatatypeTests.NoArg)) ($IsAlloc DatatypeTypeType d@@62 Tclass.DatatypeTests.NoArg $h@@13))
 :qid |unknown.0:0|
 :skolemid |1512|
 :pattern ( ($IsAlloc DatatypeTypeType d@@62 Tclass.DatatypeTests.NoArg $h@@13))
)))
(assert (forall ((d@@63 T@U) ($h@@14 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) ($Is DatatypeTypeType d@@63 Tclass.DatatypeTests.AlmostOption)) ($IsAlloc DatatypeTypeType d@@63 Tclass.DatatypeTests.AlmostOption $h@@14))
 :qid |unknown.0:0|
 :skolemid |1529|
 :pattern ( ($IsAlloc DatatypeTypeType d@@63 Tclass.DatatypeTests.AlmostOption $h@@14))
)))
(assert (forall ((d@@64 T@U) ($h@@15 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) ($Is DatatypeTypeType d@@64 Tclass.DatatypeTests.Peano)) ($IsAlloc DatatypeTypeType d@@64 Tclass.DatatypeTests.Peano $h@@15))
 :qid |unknown.0:0|
 :skolemid |1586|
 :pattern ( ($IsAlloc DatatypeTypeType d@@64 Tclass.DatatypeTests.Peano $h@@15))
)))
(assert (forall ((d@@65 T@U) ($h@@16 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) ($Is DatatypeTypeType d@@65 Tclass.DatatypeTests.Struct)) ($IsAlloc DatatypeTypeType d@@65 Tclass.DatatypeTests.Struct $h@@16))
 :qid |unknown.0:0|
 :skolemid |1602|
 :pattern ( ($IsAlloc DatatypeTypeType d@@65 Tclass.DatatypeTests.Struct $h@@16))
)))
(assert (forall ((d@@66 T@U) ($h@@17 T@U) ) (!  (=> (and ($IsGoodHeap $h@@17) ($Is DatatypeTypeType d@@66 Tclass.DatatypeTests.Multiple)) ($IsAlloc DatatypeTypeType d@@66 Tclass.DatatypeTests.Multiple $h@@17))
 :qid |unknown.0:0|
 :skolemid |1637|
 :pattern ( ($IsAlloc DatatypeTypeType d@@66 Tclass.DatatypeTests.Multiple $h@@17))
)))
(assert (forall ((d@@67 T@U) ($h@@18 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) ($Is DatatypeTypeType d@@67 Tclass.DatatypeTests.RcStruct)) ($IsAlloc DatatypeTypeType d@@67 Tclass.DatatypeTests.RcStruct $h@@18))
 :qid |unknown.0:0|
 :skolemid |1658|
 :pattern ( ($IsAlloc DatatypeTypeType d@@67 Tclass.DatatypeTests.RcStruct $h@@18))
)))
(assert (forall ((d@@68 T@U) ($h@@19 T@U) ) (!  (=> (and ($IsGoodHeap $h@@19) ($Is DatatypeTypeType d@@68 Tclass.DatatypeTests.RcMultiple)) ($IsAlloc DatatypeTypeType d@@68 Tclass.DatatypeTests.RcMultiple $h@@19))
 :qid |unknown.0:0|
 :skolemid |1693|
 :pattern ( ($IsAlloc DatatypeTypeType d@@68 Tclass.DatatypeTests.RcMultiple $h@@19))
)))
(assert (forall ((d@@69 T@U) ($h@@20 T@U) ) (!  (=> (and ($IsGoodHeap $h@@20) ($Is DatatypeTypeType d@@69 Tclass.DatatypeTests.Recursive)) ($IsAlloc DatatypeTypeType d@@69 Tclass.DatatypeTests.Recursive $h@@20))
 :qid |unknown.0:0|
 :skolemid |1715|
 :pattern ( ($IsAlloc DatatypeTypeType d@@69 Tclass.DatatypeTests.Recursive $h@@20))
)))
(assert (= (Tag Tclass.DatatypeTests.u8) Tagclass.DatatypeTests.u8))
(assert (= (TagFamily Tclass.DatatypeTests.u8) tytagFamily$u8))
(assert (= (Tag Tclass.DatatypeTests.NoArg) Tagclass.DatatypeTests.NoArg))
(assert (= (TagFamily Tclass.DatatypeTests.NoArg) tytagFamily$NoArg))
(assert (= (Tag Tclass.DatatypeTests.AlmostOption) Tagclass.DatatypeTests.AlmostOption))
(assert (= (TagFamily Tclass.DatatypeTests.AlmostOption) tytagFamily$AlmostOption))
(assert (= (Tag Tclass.DatatypeTests.Peano) Tagclass.DatatypeTests.Peano))
(assert (= (TagFamily Tclass.DatatypeTests.Peano) tytagFamily$Peano))
(assert (= (Tag Tclass.DatatypeTests.Multiple) Tagclass.DatatypeTests.Multiple))
(assert (= (TagFamily Tclass.DatatypeTests.Multiple) tytagFamily$Multiple))
(assert (= (Tag Tclass.DatatypeTests.Struct) Tagclass.DatatypeTests.Struct))
(assert (= (TagFamily Tclass.DatatypeTests.Struct) tytagFamily$Struct))
(assert (= (Tag Tclass.DatatypeTests.RcMultiple) Tagclass.DatatypeTests.RcMultiple))
(assert (= (TagFamily Tclass.DatatypeTests.RcMultiple) tytagFamily$RcMultiple))
(assert (= (Tag Tclass.DatatypeTests.RcStruct) Tagclass.DatatypeTests.RcStruct))
(assert (= (TagFamily Tclass.DatatypeTests.RcStruct) tytagFamily$RcStruct))
(assert (= (Tag Tclass.DatatypeTests.Recursive) Tagclass.DatatypeTests.Recursive))
(assert (= (TagFamily Tclass.DatatypeTests.Recursive) tytagFamily$Recursive))
(assert (= |#DatatypeTests.NoArg.OptionA| (Lit DatatypeTypeType |#DatatypeTests.NoArg.OptionA|)))
(assert (= |#DatatypeTests.NoArg.OptionB| (Lit DatatypeTypeType |#DatatypeTests.NoArg.OptionB|)))
(assert (= |#DatatypeTests.NoArg.OptionC| (Lit DatatypeTypeType |#DatatypeTests.NoArg.OptionC|)))
(assert (= |#DatatypeTests.AlmostOption.Nothing| (Lit DatatypeTypeType |#DatatypeTests.AlmostOption.Nothing|)))
(assert (= |#DatatypeTests.Peano.Zero| (Lit DatatypeTypeType |#DatatypeTests.Peano.Zero|)))
(assert (= |#RustStdOption.Option.None| (Lit DatatypeTypeType |#RustStdOption.Option.None|)))
(assert (= |#RustStdCompare.Option.None| (Lit DatatypeTypeType |#RustStdCompare.Option.None|)))
(assert (forall ((d@@70 T@U) ($h@@21 T@U) ) (!  (=> (and ($IsGoodHeap $h@@21) (and (DatatypeTests.AlmostOption.ThereItIs_q d@@70) ($IsAlloc DatatypeTypeType d@@70 Tclass.DatatypeTests.AlmostOption $h@@21))) ($IsAlloc intType (int_2_U (DatatypeTests.AlmostOption.u d@@70)) Tclass.DatatypeTests.u8 $h@@21))
 :qid |unknown.0:0|
 :skolemid |1526|
 :pattern ( ($IsAlloc intType (int_2_U (DatatypeTests.AlmostOption.u d@@70)) Tclass.DatatypeTests.u8 $h@@21))
)))
(assert (forall ((d@@71 T@U) ($h@@22 T@U) ) (!  (=> (and ($IsGoodHeap $h@@22) (and (DatatypeTests.Peano.One_q d@@71) ($IsAlloc DatatypeTypeType d@@71 Tclass.DatatypeTests.Peano $h@@22))) ($IsAlloc DatatypeTypeType (DatatypeTests.Peano.p d@@71) Tclass.DatatypeTests.Peano $h@@22))
 :qid |unknown.0:0|
 :skolemid |1582|
 :pattern ( ($IsAlloc DatatypeTypeType (DatatypeTests.Peano.p d@@71) Tclass.DatatypeTests.Peano $h@@22))
)))
(assert (forall ((d@@72 T@U) ($h@@23 T@U) ) (!  (=> (and ($IsGoodHeap $h@@23) (and (DatatypeTests.Struct.StructConstructor_q d@@72) ($IsAlloc DatatypeTypeType d@@72 Tclass.DatatypeTests.Struct $h@@23))) ($IsAlloc intType (int_2_U (DatatypeTests.Struct.a d@@72)) Tclass.DatatypeTests.u8 $h@@23))
 :qid |unknown.0:0|
 :skolemid |1597|
 :pattern ( ($IsAlloc intType (int_2_U (DatatypeTests.Struct.a d@@72)) Tclass.DatatypeTests.u8 $h@@23))
)))
(assert (forall ((d@@73 T@U) ($h@@24 T@U) ) (!  (=> (and ($IsGoodHeap $h@@24) (and (DatatypeTests.Multiple.ConstructorA_q d@@73) ($IsAlloc DatatypeTypeType d@@73 Tclass.DatatypeTests.Multiple $h@@24))) ($IsAlloc intType (int_2_U (DatatypeTests.Multiple.a d@@73)) Tclass.DatatypeTests.u8 $h@@24))
 :qid |unknown.0:0|
 :skolemid |1616|
 :pattern ( ($IsAlloc intType (int_2_U (DatatypeTests.Multiple.a d@@73)) Tclass.DatatypeTests.u8 $h@@24))
)))
(assert (forall ((d@@74 T@U) ($h@@25 T@U) ) (!  (=> (and ($IsGoodHeap $h@@25) (and (DatatypeTests.Multiple.ConstructorAB_q d@@74) ($IsAlloc DatatypeTypeType d@@74 Tclass.DatatypeTests.Multiple $h@@25))) ($IsAlloc intType (int_2_U (DatatypeTests.Multiple.a d@@74)) Tclass.DatatypeTests.u8 $h@@25))
 :qid |unknown.0:0|
 :skolemid |1632|
 :pattern ( ($IsAlloc intType (int_2_U (DatatypeTests.Multiple.a d@@74)) Tclass.DatatypeTests.u8 $h@@25))
)))
(assert (forall ((d@@75 T@U) ($h@@26 T@U) ) (!  (=> (and ($IsGoodHeap $h@@26) (and (DatatypeTests.RcStruct.RcStructConstructor_q d@@75) ($IsAlloc DatatypeTypeType d@@75 Tclass.DatatypeTests.RcStruct $h@@26))) ($IsAlloc intType (int_2_U (DatatypeTests.RcStruct.a d@@75)) Tclass.DatatypeTests.u8 $h@@26))
 :qid |unknown.0:0|
 :skolemid |1653|
 :pattern ( ($IsAlloc intType (int_2_U (DatatypeTests.RcStruct.a d@@75)) Tclass.DatatypeTests.u8 $h@@26))
)))
(assert (forall ((d@@76 T@U) ($h@@27 T@U) ) (!  (=> (and ($IsGoodHeap $h@@27) (and (DatatypeTests.RcMultiple.RcConstructorA_q d@@76) ($IsAlloc DatatypeTypeType d@@76 Tclass.DatatypeTests.RcMultiple $h@@27))) ($IsAlloc intType (int_2_U (DatatypeTests.RcMultiple.a d@@76)) Tclass.DatatypeTests.u8 $h@@27))
 :qid |unknown.0:0|
 :skolemid |1672|
 :pattern ( ($IsAlloc intType (int_2_U (DatatypeTests.RcMultiple.a d@@76)) Tclass.DatatypeTests.u8 $h@@27))
)))
(assert (forall ((d@@77 T@U) ($h@@28 T@U) ) (!  (=> (and ($IsGoodHeap $h@@28) (and (DatatypeTests.RcMultiple.RcConstructorAB_q d@@77) ($IsAlloc DatatypeTypeType d@@77 Tclass.DatatypeTests.RcMultiple $h@@28))) ($IsAlloc intType (int_2_U (DatatypeTests.RcMultiple.a d@@77)) Tclass.DatatypeTests.u8 $h@@28))
 :qid |unknown.0:0|
 :skolemid |1688|
 :pattern ( ($IsAlloc intType (int_2_U (DatatypeTests.RcMultiple.a d@@77)) Tclass.DatatypeTests.u8 $h@@28))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass.DatatypeTests.u8)  (and (<= (LitInt 0) (U_2_int |x#0@@0|)) (< (U_2_int |x#0@@0|) 255)))
 :qid |unknown.0:0|
 :skolemid |1504|
 :pattern ( ($Is intType |x#0@@0| Tclass.DatatypeTests.u8))
)))
(assert (forall ((|a#33#0#0| Int) (|a#33#1#0| T@U) ) (! (= (|#DatatypeTests.Struct.StructConstructor| (LitInt |a#33#0#0|) (U_2_bool (Lit boolType |a#33#1#0|))) (Lit DatatypeTypeType (|#DatatypeTests.Struct.StructConstructor| |a#33#0#0| (U_2_bool |a#33#1#0|))))
 :qid |datatypesdfy.47:56|
 :skolemid |1599|
 :pattern ( (|#DatatypeTests.Struct.StructConstructor| (LitInt |a#33#0#0|) (U_2_bool (Lit boolType |a#33#1#0|))))
)))
(assert (forall ((|a#13#0#0| Int) (|a#13#1#0| T@U) ) (! (= (|#DatatypeTests.Multiple.ConstructorAB| (LitInt |a#13#0#0|) (U_2_bool (Lit boolType |a#13#1#0|))) (Lit DatatypeTypeType (|#DatatypeTests.Multiple.ConstructorAB| |a#13#0#0| (U_2_bool |a#13#1#0|))))
 :qid |datatypesdfy.57:21|
 :skolemid |1634|
 :pattern ( (|#DatatypeTests.Multiple.ConstructorAB| (LitInt |a#13#0#0|) (U_2_bool (Lit boolType |a#13#1#0|))))
)))
(assert (forall ((|a#3#0#0| Int) (|a#3#1#0| T@U) ) (! (= (|#DatatypeTests.RcStruct.RcStructConstructor| (LitInt |a#3#0#0|) (U_2_bool (Lit boolType |a#3#1#0|))) (Lit DatatypeTypeType (|#DatatypeTests.RcStruct.RcStructConstructor| |a#3#0#0| (U_2_bool |a#3#1#0|))))
 :qid |datatypesdfy.77:43|
 :skolemid |1655|
 :pattern ( (|#DatatypeTests.RcStruct.RcStructConstructor| (LitInt |a#3#0#0|) (U_2_bool (Lit boolType |a#3#1#0|))))
)))
(assert (forall ((|a#13#0#0@@0| Int) (|a#13#1#0@@0| T@U) ) (! (= (|#DatatypeTests.RcMultiple.RcConstructorAB| (LitInt |a#13#0#0@@0|) (U_2_bool (Lit boolType |a#13#1#0@@0|))) (Lit DatatypeTypeType (|#DatatypeTests.RcMultiple.RcConstructorAB| |a#13#0#0@@0| (U_2_bool |a#13#1#0@@0|))))
 :qid |datatypesdfy.87:23|
 :skolemid |1690|
 :pattern ( (|#DatatypeTests.RcMultiple.RcConstructorAB| (LitInt |a#13#0#0@@0|) (U_2_bool (Lit boolType |a#13#1#0@@0|))))
)))
(assert (forall ((|a#3#0#0@@0| Int) (|a#3#1#0@@0| T@U) ) (! (= (|#DatatypeTests.Recursive.Recursive| (LitInt |a#3#0#0@@0|) (Lit DatatypeTypeType |a#3#1#0@@0|)) (Lit DatatypeTypeType (|#DatatypeTests.Recursive.Recursive| |a#3#0#0@@0| |a#3#1#0@@0|)))
 :qid |datatypesdfy.107:34|
 :skolemid |1711|
 :pattern ( (|#DatatypeTests.Recursive.Recursive| (LitInt |a#3#0#0@@0|) (Lit DatatypeTypeType |a#3#1#0@@0|)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |1020|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#19#0#0@@1| Int) ) (! (= (|#DatatypeTests.AlmostOption.ThereItIs| (LitInt |a#19#0#0@@1|)) (Lit DatatypeTypeType (|#DatatypeTests.AlmostOption.ThereItIs| |a#19#0#0@@1|)))
 :qid |datatypesdfy.31:64|
 :skolemid |1527|
 :pattern ( (|#DatatypeTests.AlmostOption.ThereItIs| (LitInt |a#19#0#0@@1|)))
)))
(assert (forall ((|a#27#0#0| T@U) ) (! (= (|#DatatypeTests.Peano.One| (Lit DatatypeTypeType |a#27#0#0|)) (Lit DatatypeTypeType (|#DatatypeTests.Peano.One| |a#27#0#0|)))
 :qid |datatypesdfy.44:31|
 :skolemid |1583|
 :pattern ( (|#DatatypeTests.Peano.One| (Lit DatatypeTypeType |a#27#0#0|)))
)))
(assert (forall ((|a#3#0#0@@1| Int) ) (! (= (|#DatatypeTests.Multiple.ConstructorA| (LitInt |a#3#0#0@@1|)) (Lit DatatypeTypeType (|#DatatypeTests.Multiple.ConstructorA| |a#3#0#0@@1|)))
 :qid |datatypesdfy.55:20|
 :skolemid |1617|
 :pattern ( (|#DatatypeTests.Multiple.ConstructorA| (LitInt |a#3#0#0@@1|)))
)))
(assert (forall ((|a#8#0#0@@0| T@U) ) (! (= (|#DatatypeTests.Multiple.ConstructorB| (U_2_bool (Lit boolType |a#8#0#0@@0|))) (Lit DatatypeTypeType (|#DatatypeTests.Multiple.ConstructorB| (U_2_bool |a#8#0#0@@0|))))
 :qid |datatypesdfy.56:20|
 :skolemid |1625|
 :pattern ( (|#DatatypeTests.Multiple.ConstructorB| (U_2_bool (Lit boolType |a#8#0#0@@0|))))
)))
(assert (forall ((|a#3#0#0@@2| Int) ) (! (= (|#DatatypeTests.RcMultiple.RcConstructorA| (LitInt |a#3#0#0@@2|)) (Lit DatatypeTypeType (|#DatatypeTests.RcMultiple.RcConstructorA| |a#3#0#0@@2|)))
 :qid |datatypesdfy.85:22|
 :skolemid |1673|
 :pattern ( (|#DatatypeTests.RcMultiple.RcConstructorA| (LitInt |a#3#0#0@@2|)))
)))
(assert (forall ((|a#8#0#0@@1| T@U) ) (! (= (|#DatatypeTests.RcMultiple.RcConstructorB| (U_2_bool (Lit boolType |a#8#0#0@@1|))) (Lit DatatypeTypeType (|#DatatypeTests.RcMultiple.RcConstructorB| (U_2_bool |a#8#0#0@@1|))))
 :qid |datatypesdfy.86:22|
 :skolemid |1681|
 :pattern ( (|#DatatypeTests.RcMultiple.RcConstructorB| (U_2_bool (Lit boolType |a#8#0#0@@1|))))
)))
(assert (forall ((|a#10#0#0@@1| T@U) ) (! (= (|#RustStdOption.Option.Some| (Lit BoxType |a#10#0#0@@1|)) (Lit DatatypeTypeType (|#RustStdOption.Option.Some| |a#10#0#0@@1|)))
 :qid |datatypesdfy.10:51|
 :skolemid |1727|
 :pattern ( (|#RustStdOption.Option.Some| (Lit BoxType |a#10#0#0@@1|)))
)))
(assert (forall ((|a#20#0#0@@0| T@U) ) (! (= (|#RustStdCompare.Option.Some| (Lit BoxType |a#20#0#0@@0|)) (Lit DatatypeTypeType (|#RustStdCompare.Option.Some| |a#20#0#0@@0|)))
 :qid |datatypesdfy.17:51|
 :skolemid |1746|
 :pattern ( (|#RustStdCompare.Option.Some| (Lit BoxType |a#20#0#0@@0|)))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1018|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert (forall ((d@@78 T@U) ($h@@29 T@U) ) (!  (=> (and ($IsGoodHeap $h@@29) (and (DatatypeTests.Recursive.Recursive_q d@@78) ($IsAlloc DatatypeTypeType d@@78 Tclass.DatatypeTests.Recursive $h@@29))) ($IsAlloc DatatypeTypeType (DatatypeTests.Recursive.tail d@@78) (Tclass.RustStdOption.Option Tclass.DatatypeTests.Recursive) $h@@29))
 :qid |unknown.0:0|
 :skolemid |1710|
 :pattern ( ($IsAlloc DatatypeTypeType (DatatypeTests.Recursive.tail d@@78) (Tclass.RustStdOption.Option Tclass.DatatypeTests.Recursive) $h@@29))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((this@@10 T@U) (|other#0@@4| T@U) ) (!  (=> (or (|DatatypeTests.RcMultiple.Gather#canCall| this@@10 |other#0@@4|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType this@@10 Tclass.DatatypeTests.RcMultiple) ($Is DatatypeTypeType |other#0@@4| Tclass.DatatypeTests.RcMultiple)))) (= (DatatypeTests.RcMultiple.Gather this@@10 |other#0@@4|) (ite (DatatypeTests.RcMultiple.RcConstructorAB_q this@@10) this@@10 (ite (DatatypeTests.RcMultiple.RcConstructorA_q this@@10) (ite (DatatypeTests.RcMultiple.RcConstructorB_q |other#0@@4|) (|#DatatypeTests.RcMultiple.RcConstructorAB| (DatatypeTests.RcMultiple.a this@@10) (DatatypeTests.RcMultiple.b |other#0@@4|)) this@@10) (ite (DatatypeTests.RcMultiple.RcConstructorB_q this@@10) (ite (DatatypeTests.RcMultiple.RcConstructorA_q |other#0@@4|) (|#DatatypeTests.RcMultiple.RcConstructorAB| (DatatypeTests.RcMultiple.a |other#0@@4|) (DatatypeTests.RcMultiple.b this@@10)) this@@10) this@@10)))))
 :qid |datatypesdfy.89:14|
 :skolemid |1702|
 :pattern ( (DatatypeTests.RcMultiple.Gather this@@10 |other#0@@4|))
))))
(assert (forall ((h@@3 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@3)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |1063|
 :pattern ( ($IsAlloc intType v@@2 TInt h@@3))
)))
(assert (forall ((h@@4 T@U) (v@@3 T@U) ) (! ($IsAlloc boolType v@@3 TBool h@@4)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |1065|
 :pattern ( ($IsAlloc boolType v@@3 TBool h@@4))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is intType v@@4 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |1042|
 :pattern ( ($Is intType v@@4 TInt))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is boolType v@@5 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |1044|
 :pattern ( ($Is boolType v@@5 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |homeMadeOption#0@0| () T@U)
(declare-fun |x#0@0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |o##1@0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |no#0@0| () T@U)
(declare-fun |i#0_0@0| () Int)
(declare-fun |newtype$check#17@0| () Int)
(declare-fun |_mcc#0#0_0@0| () Int)
(declare-fun |let#0_0#0#0| () Int)
(declare-fun |newtype$check#0_0@0| () Int)
(declare-fun |u#0@0| () Int)
(declare-fun |rc_a#0@0| () T@U)
(declare-fun |r#0@0| () T@U)
(declare-fun |r#0@1| () T@U)
(declare-fun |newtype$check#14@0| () Int)
(declare-fun |newtype$check#15@0| () Int)
(declare-fun |newtype$check#16@0| () Int)
(declare-fun |c2#0@3| () T@U)
(declare-fun |newtype$check#12@0| () Int)
(declare-fun |newtype$check#13@0| () Int)
(declare-fun |c2#0@2| () T@U)
(declare-fun |##other#3@0| () T@U)
(declare-fun |c2#0@1| () T@U)
(declare-fun |c2#0@0| () T@U)
(declare-fun |newtype$check#11@0| () Int)
(declare-fun |##other#2@0| () T@U)
(declare-fun |dt_update_tmp#1#Z#0@0| () T@U)
(declare-fun |a#0@0| () T@U)
(declare-fun |newtype$check#9@0| () Int)
(declare-fun |let#2#0#0| () T@U)
(declare-fun |newtype$check#10@0| () Int)
(declare-fun |let#3#0#0| () Int)
(declare-fun |dt_update#a#1#Z#0@0| () Int)
(declare-fun |c#0@3| () T@U)
(declare-fun |newtype$check#7@0| () Int)
(declare-fun |newtype$check#8@0| () Int)
(declare-fun |newtype$check#6@0| () Int)
(declare-fun |c#0@2| () T@U)
(declare-fun |##other#1@0| () T@U)
(declare-fun |newtype$check#5@0| () Int)
(declare-fun |c#0@1| () T@U)
(declare-fun |c#0@0| () T@U)
(declare-fun |newtype$check#4@0| () Int)
(declare-fun |##other#0@0| () T@U)
(declare-fun |dt_update_tmp#0#Z#0@0| () T@U)
(declare-fun |p#0@2| () T@U)
(declare-fun |q#0@0| () T@U)
(declare-fun |newtype$check#2@0| () Int)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |newtype$check#3@0| () Int)
(declare-fun |let#1#0#0| () Int)
(declare-fun |dt_update#a#0#Z#0@0| () Int)
(declare-fun |n#0@1| () T@U)
(declare-fun |d#0@0| () T@U)
(declare-fun |newtype$check#0@0| () Int)
(declare-fun |newtype$check#1@0| () Int)
(declare-fun |d#0@1| () T@U)
(declare-fun |p#0@0| () T@U)
(declare-fun |p#0@1| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |n#0@0| () T@U)
(declare-fun |n#0| () T@U)
(declare-fun |d#0| () T@U)
(declare-fun |p#0| () T@U)
(declare-fun |q#0| () T@U)
(declare-fun |c#0| () T@U)
(declare-fun |a#0@@0| () T@U)
(declare-fun |c2#0| () T@U)
(declare-fun |rc_a#0| () T@U)
(declare-fun |r#0| () T@U)
(declare-fun |x#0@@1| () T@U)
(declare-fun |u#0| () Int)
(declare-fun |no#0| () T@U)
(declare-fun |homeMadeOption#0| () T@U)
(set-info :boogie-vc-id Impl$$DatatypeTests.__default.Main)
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
 (=> (= (ControlFlow 0 0) 94) (let ((anon56_correct true))
(let ((anon83_Else_correct  (=> (and (not (RustStdCompare.Option.Some_q |homeMadeOption#0@0|)) (= (ControlFlow 0 21) 18)) anon56_correct)))
(let ((anon83_Then_correct  (=> (RustStdCompare.Option.Some_q |homeMadeOption#0@0|) (and (=> (= (ControlFlow 0 19) (- 0 20)) (RustStdCompare.Option.Some_q |homeMadeOption#0@0|)) (=> (RustStdCompare.Option.Some_q |homeMadeOption#0@0|) (=> (= (ControlFlow 0 19) 18) anon56_correct))))))
(let ((anon82_Else_correct  (=> (= (U_2_int ($Unbox intType (RustStdOption.Option.value |x#0@0|))) (LitInt 3)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0)))
 :qid |datatypesdfy.109:10|
 :skolemid |1486|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0))
))) (=> (and (and (and ($HeapSucc $Heap $Heap@0) (= |o##1@0| (Lit DatatypeTypeType |#RustStdOption.Option.None|))) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1))) (and (and (forall (($o@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@1) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@1) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@1)))
 :qid |datatypesdfy.109:10|
 :skolemid |1486|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@1))
)) ($HeapSucc $Heap@0 $Heap@1)) (and (= |no#0@0| (Lit DatatypeTypeType |#RustStdOption.Option.None|)) (= |homeMadeOption#0@0| (Lit DatatypeTypeType (|#RustStdCompare.Option.Some| ($Box intType (int_2_U (LitInt 3))))))))) (and (=> (= (ControlFlow 0 22) 19) anon83_Then_correct) (=> (= (ControlFlow 0 22) 21) anon83_Else_correct)))))))
(let ((anon82_Then_correct true))
(let ((anon80_Else_correct  (=> (= |i#0_0@0| (LitInt 3)) (and (=> (= (ControlFlow 0 23) (- 0 25)) (RustStdOption.Option.Some_q |x#0@0|)) (=> (RustStdOption.Option.Some_q |x#0@0|) (=> (= |newtype$check#17@0| (LitInt 3)) (and (=> (= (ControlFlow 0 23) (- 0 24)) (and (<= (LitInt 0) |newtype$check#17@0|) (< |newtype$check#17@0| 255))) (=> (and (<= (LitInt 0) |newtype$check#17@0|) (< |newtype$check#17@0| 255)) (and (=> (= (ControlFlow 0 23) 17) anon82_Then_correct) (=> (= (ControlFlow 0 23) 22) anon82_Else_correct))))))))))
(let ((anon80_Then_correct true))
(let ((anon79_Then_correct  (=> (= |x#0@0| (|#RustStdOption.Option.Some| ($Box intType (int_2_U |_mcc#0#0_0@0|)))) (=> (and (and (and (<= (LitInt 0) |_mcc#0#0_0@0|) (< |_mcc#0#0_0@0| 255)) (and (<= (LitInt 0) |i#0_0@0|) (< |i#0_0@0| 255))) (and (and (= |let#0_0#0#0| |_mcc#0#0_0@0|) ($Is intType (int_2_U |let#0_0#0#0|) Tclass.DatatypeTests.u8)) (and (= |i#0_0@0| |let#0_0#0#0|) (= |newtype$check#0_0@0| (LitInt 3))))) (and (=> (= (ControlFlow 0 26) (- 0 27)) (and (<= (LitInt 0) |newtype$check#0_0@0|) (< |newtype$check#0_0@0| 255))) (=> (and (<= (LitInt 0) |newtype$check#0_0@0|) (< |newtype$check#0_0@0| 255)) (and (=> (= (ControlFlow 0 26) 16) anon80_Then_correct) (=> (= (ControlFlow 0 26) 23) anon80_Else_correct))))))))
(let ((anon81_Else_correct true))
(let ((anon81_Then_correct  (=> (and (= |x#0@0| |#RustStdOption.Option.None|) (= (ControlFlow 0 13) (- 0 12))) false)))
(let ((anon79_Else_correct  (=> (or (not (= |x#0@0| (|#RustStdOption.Option.Some| ($Box intType (int_2_U |_mcc#0#0_0@0|))))) (not true)) (and (=> (= (ControlFlow 0 15) 13) anon81_Then_correct) (=> (= (ControlFlow 0 15) 14) anon81_Else_correct)))))
(let ((anon78_Else_correct  (=> (= |u#0@0| (LitInt 3)) (and (=> (= (ControlFlow 0 28) 26) anon79_Then_correct) (=> (= (ControlFlow 0 28) 15) anon79_Else_correct)))))
(let ((anon78_Then_correct true))
(let ((anon77_Else_correct  (=> (and (and (|DatatypeTests.RcStruct#Equal| (DatatypeTests.RcStruct.BTrue |rc_a#0@0|) (|#DatatypeTests.RcStruct.RcStructConstructor| (LitInt 1) (U_2_bool (Lit boolType (bool_2_U true))))) (= |r#0@0| (Lit DatatypeTypeType (|#DatatypeTests.Recursive.Recursive| (LitInt 0) (Lit DatatypeTypeType |#RustStdOption.Option.None|))))) (and (= |r#0@1| (|#DatatypeTests.Recursive.Recursive| (LitInt 1) (|#RustStdOption.Option.Some| ($Box DatatypeTypeType |r#0@0|)))) (= |newtype$check#14@0| (LitInt 3)))) (and (=> (= (ControlFlow 0 29) (- 0 33)) (and (<= (LitInt 0) |newtype$check#14@0|) (< |newtype$check#14@0| 255))) (=> (and (<= (LitInt 0) |newtype$check#14@0|) (< |newtype$check#14@0| 255)) (=> (= |newtype$check#15@0| (LitInt 3)) (and (=> (= (ControlFlow 0 29) (- 0 32)) (and (<= (LitInt 0) |newtype$check#15@0|) (< |newtype$check#15@0| 255))) (=> (and (<= (LitInt 0) |newtype$check#15@0|) (< |newtype$check#15@0| 255)) (=> (= |x#0@0| (Lit DatatypeTypeType (|#RustStdOption.Option.Some| ($Box intType (int_2_U (LitInt 3)))))) (and (=> (= (ControlFlow 0 29) (- 0 31)) (RustStdOption.Option.Some_q |x#0@0|)) (=> (RustStdOption.Option.Some_q |x#0@0|) (=> (and (= |u#0@0| (U_2_int ($Unbox intType (RustStdOption.Option.value |x#0@0|)))) (= |newtype$check#16@0| (LitInt 3))) (and (=> (= (ControlFlow 0 29) (- 0 30)) (and (<= (LitInt 0) |newtype$check#16@0|) (< |newtype$check#16@0| 255))) (=> (and (<= (LitInt 0) |newtype$check#16@0|) (< |newtype$check#16@0| 255)) (and (=> (= (ControlFlow 0 29) 11) anon78_Then_correct) (=> (= (ControlFlow 0 29) 28) anon78_Else_correct))))))))))))))))
(let ((anon77_Then_correct true))
(let ((anon76_Else_correct  (=> (and (and (and (DatatypeTests.RcMultiple.RcConstructorAB_q |c2#0@3|) (not (DatatypeTests.RcMultiple.RcConstructorA_q |c2#0@3|))) (not (DatatypeTests.RcMultiple.RcConstructorB_q |c2#0@3|))) (= |newtype$check#12@0| (LitInt 1))) (and (=> (= (ControlFlow 0 34) (- 0 36)) (and (<= (LitInt 0) |newtype$check#12@0|) (< |newtype$check#12@0| 255))) (=> (and (<= (LitInt 0) |newtype$check#12@0|) (< |newtype$check#12@0| 255)) (=> (= |rc_a#0@0| (Lit DatatypeTypeType (|#DatatypeTests.RcStruct.RcStructConstructor| (LitInt 1) (U_2_bool (Lit boolType (bool_2_U false)))))) (=> (and (and ($IsAllocBox ($Box DatatypeTypeType |rc_a#0@0|) Tclass.DatatypeTests.RcStruct $Heap) (|DatatypeTests.RcStruct.BTrue#canCall| |rc_a#0@0|)) (and (DatatypeTests.RcStruct.RcStructConstructor_q (DatatypeTests.RcStruct.BTrue |rc_a#0@0|)) (= |newtype$check#13@0| (LitInt 1)))) (and (=> (= (ControlFlow 0 34) (- 0 35)) (and (<= (LitInt 0) |newtype$check#13@0|) (< |newtype$check#13@0| 255))) (=> (and (<= (LitInt 0) |newtype$check#13@0|) (< |newtype$check#13@0| 255)) (=> (and (|$IsA#DatatypeTests.RcStruct| (DatatypeTests.RcStruct.BTrue |rc_a#0@0|)) (|DatatypeTests.RcStruct.BTrue#canCall| |rc_a#0@0|)) (and (=> (= (ControlFlow 0 34) 10) anon77_Then_correct) (=> (= (ControlFlow 0 34) 29) anon77_Else_correct))))))))))))
(let ((anon76_Then_correct true))
(let ((anon40_correct  (and (=> (= (ControlFlow 0 37) 9) anon76_Then_correct) (=> (= (ControlFlow 0 37) 34) anon76_Else_correct))))
(let ((anon75_Else_correct  (=> (and (not (and (DatatypeTests.RcMultiple.RcConstructorAB_q |c2#0@3|) (not (DatatypeTests.RcMultiple.RcConstructorA_q |c2#0@3|)))) (= (ControlFlow 0 39) 37)) anon40_correct)))
(let ((anon75_Then_correct  (=> (and (and (DatatypeTests.RcMultiple.RcConstructorAB_q |c2#0@3|) (not (DatatypeTests.RcMultiple.RcConstructorA_q |c2#0@3|))) (= (ControlFlow 0 38) 37)) anon40_correct)))
(let ((anon74_Else_correct  (=> (not (DatatypeTests.RcMultiple.RcConstructorAB_q |c2#0@3|)) (and (=> (= (ControlFlow 0 41) 38) anon75_Then_correct) (=> (= (ControlFlow 0 41) 39) anon75_Else_correct)))))
(let ((anon74_Then_correct  (=> (DatatypeTests.RcMultiple.RcConstructorAB_q |c2#0@3|) (and (=> (= (ControlFlow 0 40) 38) anon75_Then_correct) (=> (= (ControlFlow 0 40) 39) anon75_Else_correct)))))
(let ((anon73_Else_correct  (=> (and (and (and (and (DatatypeTests.RcMultiple.RcConstructorA_q |c2#0@2|) (not (DatatypeTests.RcMultiple.RcConstructorB_q |c2#0@2|))) (not (DatatypeTests.RcMultiple.RcConstructorAB_q |c2#0@2|))) (and ($IsAllocBox ($Box DatatypeTypeType |c2#0@2|) Tclass.DatatypeTests.RcMultiple $Heap) (= |##other#3@0| (Lit DatatypeTypeType (|#DatatypeTests.RcMultiple.RcConstructorB| (U_2_bool (Lit boolType (bool_2_U true)))))))) (and (and ($IsAlloc DatatypeTypeType |##other#3@0| Tclass.DatatypeTests.RcMultiple $Heap) (|DatatypeTests.RcMultiple.Gather#canCall| |c2#0@2| (Lit DatatypeTypeType (|#DatatypeTests.RcMultiple.RcConstructorB| (U_2_bool (Lit boolType (bool_2_U true))))))) (and (|DatatypeTests.RcMultiple.Gather#canCall| |c2#0@2| (Lit DatatypeTypeType (|#DatatypeTests.RcMultiple.RcConstructorB| (U_2_bool (Lit boolType (bool_2_U true)))))) (= |c2#0@3| (DatatypeTests.RcMultiple.Gather |c2#0@2| (Lit DatatypeTypeType (|#DatatypeTests.RcMultiple.RcConstructorB| (U_2_bool (Lit boolType (bool_2_U true)))))))))) (and (=> (= (ControlFlow 0 42) 40) anon74_Then_correct) (=> (= (ControlFlow 0 42) 41) anon74_Else_correct)))))
(let ((anon73_Then_correct true))
(let ((anon34_correct  (and (=> (= (ControlFlow 0 43) 8) anon73_Then_correct) (=> (= (ControlFlow 0 43) 42) anon73_Else_correct))))
(let ((anon72_Else_correct  (=> (and (not (and (DatatypeTests.RcMultiple.RcConstructorA_q |c2#0@2|) (not (DatatypeTests.RcMultiple.RcConstructorB_q |c2#0@2|)))) (= (ControlFlow 0 45) 43)) anon34_correct)))
(let ((anon72_Then_correct  (=> (and (and (DatatypeTests.RcMultiple.RcConstructorA_q |c2#0@2|) (not (DatatypeTests.RcMultiple.RcConstructorB_q |c2#0@2|))) (= (ControlFlow 0 44) 43)) anon34_correct)))
(let ((anon71_Else_correct  (=> (not (DatatypeTests.RcMultiple.RcConstructorA_q |c2#0@2|)) (and (=> (= (ControlFlow 0 47) 44) anon72_Then_correct) (=> (= (ControlFlow 0 47) 45) anon72_Else_correct)))))
(let ((anon71_Then_correct  (=> (DatatypeTests.RcMultiple.RcConstructorA_q |c2#0@2|) (and (=> (= (ControlFlow 0 46) 44) anon72_Then_correct) (=> (= (ControlFlow 0 46) 45) anon72_Else_correct)))))
(let ((anon30_correct  (=> (= |c2#0@1| (let ((|dt_update_tmp#1#0| |c2#0@0|))
(let ((|dt_update#a#1#0| (LitInt 2)))
(ite (DatatypeTests.RcMultiple.RcConstructorA_q |dt_update_tmp#1#0|) (|#DatatypeTests.RcMultiple.RcConstructorA| |dt_update#a#1#0|) (|#DatatypeTests.RcMultiple.RcConstructorAB| |dt_update#a#1#0| (DatatypeTests.RcMultiple.b |dt_update_tmp#1#0|)))))) (=> (and ($IsAllocBox ($Box DatatypeTypeType |c2#0@1|) Tclass.DatatypeTests.RcMultiple $Heap) (= |newtype$check#11@0| (LitInt 1))) (and (=> (= (ControlFlow 0 48) (- 0 49)) (and (<= (LitInt 0) |newtype$check#11@0|) (< |newtype$check#11@0| 255))) (=> (and (<= (LitInt 0) |newtype$check#11@0|) (< |newtype$check#11@0| 255)) (=> (= |##other#2@0| (Lit DatatypeTypeType (|#DatatypeTests.RcMultiple.RcConstructorA| (LitInt 1)))) (=> (and (and ($IsAlloc DatatypeTypeType |##other#2@0| Tclass.DatatypeTests.RcMultiple $Heap) (|DatatypeTests.RcMultiple.Gather#canCall| |c2#0@1| (Lit DatatypeTypeType (|#DatatypeTests.RcMultiple.RcConstructorA| (LitInt 1))))) (and (|DatatypeTests.RcMultiple.Gather#canCall| |c2#0@1| (Lit DatatypeTypeType (|#DatatypeTests.RcMultiple.RcConstructorA| (LitInt 1)))) (= |c2#0@2| (DatatypeTests.RcMultiple.Gather |c2#0@1| (Lit DatatypeTypeType (|#DatatypeTests.RcMultiple.RcConstructorA| (LitInt 1))))))) (and (=> (= (ControlFlow 0 48) 46) anon71_Then_correct) (=> (= (ControlFlow 0 48) 47) anon71_Else_correct))))))))))
(let ((anon70_Else_correct  (=> (not (DatatypeTests.RcMultiple.RcConstructorA_q |dt_update_tmp#1#Z#0@0|)) (and (=> (= (ControlFlow 0 51) (- 0 52)) (or (DatatypeTests.RcMultiple.RcConstructorB_q |dt_update_tmp#1#Z#0@0|) (DatatypeTests.RcMultiple.RcConstructorAB_q |dt_update_tmp#1#Z#0@0|))) (=> (or (DatatypeTests.RcMultiple.RcConstructorB_q |dt_update_tmp#1#Z#0@0|) (DatatypeTests.RcMultiple.RcConstructorAB_q |dt_update_tmp#1#Z#0@0|)) (=> (= (ControlFlow 0 51) 48) anon30_correct))))))
(let ((anon70_Then_correct  (=> (and (DatatypeTests.RcMultiple.RcConstructorA_q |dt_update_tmp#1#Z#0@0|) (= (ControlFlow 0 50) 48)) anon30_correct)))
(let ((anon69_Else_correct  (=> (and (|DatatypeTests.Struct#Equal| (DatatypeTests.Struct.BTrue |a#0@0|) (|#DatatypeTests.Struct.StructConstructor| (LitInt 1) (U_2_bool (Lit boolType (bool_2_U true))))) (= |newtype$check#9@0| (LitInt 0))) (and (=> (= (ControlFlow 0 53) (- 0 56)) (and (<= (LitInt 0) |newtype$check#9@0|) (< |newtype$check#9@0| 255))) (=> (and (<= (LitInt 0) |newtype$check#9@0|) (< |newtype$check#9@0| 255)) (=> (= |c2#0@0| (Lit DatatypeTypeType (|#DatatypeTests.RcMultiple.RcConstructorA| (LitInt 0)))) (and (=> (= (ControlFlow 0 53) (- 0 55)) (or (DatatypeTests.RcMultiple.RcConstructorAB_q |c2#0@0|) (DatatypeTests.RcMultiple.RcConstructorA_q |c2#0@0|))) (=> (or (DatatypeTests.RcMultiple.RcConstructorAB_q |c2#0@0|) (DatatypeTests.RcMultiple.RcConstructorA_q |c2#0@0|)) (=> (and (and (= |let#2#0#0| |c2#0@0|) ($Is DatatypeTypeType |let#2#0#0| Tclass.DatatypeTests.RcMultiple)) (and (= |dt_update_tmp#1#Z#0@0| |let#2#0#0|) (= |newtype$check#10@0| (LitInt 2)))) (and (=> (= (ControlFlow 0 53) (- 0 54)) (and (<= (LitInt 0) |newtype$check#10@0|) (< |newtype$check#10@0| 255))) (=> (and (<= (LitInt 0) |newtype$check#10@0|) (< |newtype$check#10@0| 255)) (=> (= |let#3#0#0| (LitInt 2)) (=> (and ($Is intType (int_2_U |let#3#0#0|) Tclass.DatatypeTests.u8) (= |dt_update#a#1#Z#0@0| |let#3#0#0|)) (and (=> (= (ControlFlow 0 53) 50) anon70_Then_correct) (=> (= (ControlFlow 0 53) 51) anon70_Else_correct)))))))))))))))
(let ((anon69_Then_correct true))
(let ((anon68_Else_correct  (=> (and (and (= (DatatypeTests.Multiple.a |c#0@3|) (LitInt 2)) (DatatypeTests.Multiple.b |c#0@3|)) (= |newtype$check#7@0| (LitInt 1))) (and (=> (= (ControlFlow 0 57) (- 0 59)) (and (<= (LitInt 0) |newtype$check#7@0|) (< |newtype$check#7@0| 255))) (=> (and (<= (LitInt 0) |newtype$check#7@0|) (< |newtype$check#7@0| 255)) (=> (= |a#0@0| (Lit DatatypeTypeType (|#DatatypeTests.Struct.StructConstructor| (LitInt 1) (U_2_bool (Lit boolType (bool_2_U false)))))) (=> (and (and ($IsAllocBox ($Box DatatypeTypeType |a#0@0|) Tclass.DatatypeTests.Struct $Heap) (|DatatypeTests.Struct.BTrue#canCall| |a#0@0|)) (and (DatatypeTests.Struct.StructConstructor_q (DatatypeTests.Struct.BTrue |a#0@0|)) (= |newtype$check#8@0| (LitInt 1)))) (and (=> (= (ControlFlow 0 57) (- 0 58)) (and (<= (LitInt 0) |newtype$check#8@0|) (< |newtype$check#8@0| 255))) (=> (and (<= (LitInt 0) |newtype$check#8@0|) (< |newtype$check#8@0| 255)) (=> (and (|$IsA#DatatypeTests.Struct| (DatatypeTests.Struct.BTrue |a#0@0|)) (|DatatypeTests.Struct.BTrue#canCall| |a#0@0|)) (and (=> (= (ControlFlow 0 57) 7) anon69_Then_correct) (=> (= (ControlFlow 0 57) 53) anon69_Else_correct))))))))))))
(let ((anon68_Then_correct true))
(let ((anon23_correct  (and (=> (= (ControlFlow 0 60) 6) anon68_Then_correct) (=> (= (ControlFlow 0 60) 57) anon68_Else_correct))))
(let ((anon67_Else_correct  (=> (and (or (not (= (DatatypeTests.Multiple.a |c#0@3|) (LitInt 2))) (not true)) (= (ControlFlow 0 63) 60)) anon23_correct)))
(let ((anon67_Then_correct  (=> (= (DatatypeTests.Multiple.a |c#0@3|) (LitInt 2)) (and (=> (= (ControlFlow 0 61) (- 0 62)) (or (DatatypeTests.Multiple.ConstructorB_q |c#0@3|) (DatatypeTests.Multiple.ConstructorAB_q |c#0@3|))) (=> (or (DatatypeTests.Multiple.ConstructorB_q |c#0@3|) (DatatypeTests.Multiple.ConstructorAB_q |c#0@3|)) (=> (= (ControlFlow 0 61) 60) anon23_correct))))))
(let ((anon66_Else_correct  (=> (and (and (DatatypeTests.Multiple.ConstructorAB_q |c#0@3|) (not (DatatypeTests.Multiple.ConstructorA_q |c#0@3|))) (not (DatatypeTests.Multiple.ConstructorB_q |c#0@3|))) (and (=> (= (ControlFlow 0 64) (- 0 66)) (or (DatatypeTests.Multiple.ConstructorA_q |c#0@3|) (DatatypeTests.Multiple.ConstructorAB_q |c#0@3|))) (=> (or (DatatypeTests.Multiple.ConstructorA_q |c#0@3|) (DatatypeTests.Multiple.ConstructorAB_q |c#0@3|)) (=> (= |newtype$check#6@0| (LitInt 2)) (and (=> (= (ControlFlow 0 64) (- 0 65)) (and (<= (LitInt 0) |newtype$check#6@0|) (< |newtype$check#6@0| 255))) (=> (and (<= (LitInt 0) |newtype$check#6@0|) (< |newtype$check#6@0| 255)) (and (=> (= (ControlFlow 0 64) 61) anon67_Then_correct) (=> (= (ControlFlow 0 64) 63) anon67_Else_correct))))))))))
(let ((anon66_Then_correct true))
(let ((anon19_correct  (and (=> (= (ControlFlow 0 67) 5) anon66_Then_correct) (=> (= (ControlFlow 0 67) 64) anon66_Else_correct))))
(let ((anon65_Else_correct  (=> (and (not (and (DatatypeTests.Multiple.ConstructorAB_q |c#0@3|) (not (DatatypeTests.Multiple.ConstructorA_q |c#0@3|)))) (= (ControlFlow 0 69) 67)) anon19_correct)))
(let ((anon65_Then_correct  (=> (and (and (DatatypeTests.Multiple.ConstructorAB_q |c#0@3|) (not (DatatypeTests.Multiple.ConstructorA_q |c#0@3|))) (= (ControlFlow 0 68) 67)) anon19_correct)))
(let ((anon64_Else_correct  (=> (not (DatatypeTests.Multiple.ConstructorAB_q |c#0@3|)) (and (=> (= (ControlFlow 0 71) 68) anon65_Then_correct) (=> (= (ControlFlow 0 71) 69) anon65_Else_correct)))))
(let ((anon64_Then_correct  (=> (DatatypeTests.Multiple.ConstructorAB_q |c#0@3|) (and (=> (= (ControlFlow 0 70) 68) anon65_Then_correct) (=> (= (ControlFlow 0 70) 69) anon65_Else_correct)))))
(let ((anon63_Else_correct  (=> (= (DatatypeTests.Multiple.a |c#0@2|) (LitInt 2)) (=> (and ($IsAllocBox ($Box DatatypeTypeType |c#0@2|) Tclass.DatatypeTests.Multiple $Heap) (= |##other#1@0| (Lit DatatypeTypeType (|#DatatypeTests.Multiple.ConstructorB| (U_2_bool (Lit boolType (bool_2_U true))))))) (=> (and (and ($IsAlloc DatatypeTypeType |##other#1@0| Tclass.DatatypeTests.Multiple $Heap) (|DatatypeTests.Multiple.Gather#canCall| |c#0@2| (Lit DatatypeTypeType (|#DatatypeTests.Multiple.ConstructorB| (U_2_bool (Lit boolType (bool_2_U true))))))) (and (|DatatypeTests.Multiple.Gather#canCall| |c#0@2| (Lit DatatypeTypeType (|#DatatypeTests.Multiple.ConstructorB| (U_2_bool (Lit boolType (bool_2_U true)))))) (= |c#0@3| (DatatypeTests.Multiple.Gather |c#0@2| (Lit DatatypeTypeType (|#DatatypeTests.Multiple.ConstructorB| (U_2_bool (Lit boolType (bool_2_U true))))))))) (and (=> (= (ControlFlow 0 72) 70) anon64_Then_correct) (=> (= (ControlFlow 0 72) 71) anon64_Else_correct)))))))
(let ((anon63_Then_correct true))
(let ((anon62_Else_correct  (=> (and (and (DatatypeTests.Multiple.ConstructorA_q |c#0@2|) (not (DatatypeTests.Multiple.ConstructorB_q |c#0@2|))) (not (DatatypeTests.Multiple.ConstructorAB_q |c#0@2|))) (and (=> (= (ControlFlow 0 73) (- 0 75)) (or (DatatypeTests.Multiple.ConstructorA_q |c#0@2|) (DatatypeTests.Multiple.ConstructorAB_q |c#0@2|))) (=> (or (DatatypeTests.Multiple.ConstructorA_q |c#0@2|) (DatatypeTests.Multiple.ConstructorAB_q |c#0@2|)) (=> (= |newtype$check#5@0| (LitInt 2)) (and (=> (= (ControlFlow 0 73) (- 0 74)) (and (<= (LitInt 0) |newtype$check#5@0|) (< |newtype$check#5@0| 255))) (=> (and (<= (LitInt 0) |newtype$check#5@0|) (< |newtype$check#5@0| 255)) (and (=> (= (ControlFlow 0 73) 4) anon63_Then_correct) (=> (= (ControlFlow 0 73) 72) anon63_Else_correct))))))))))
(let ((anon62_Then_correct true))
(let ((anon11_correct  (and (=> (= (ControlFlow 0 76) 3) anon62_Then_correct) (=> (= (ControlFlow 0 76) 73) anon62_Else_correct))))
(let ((anon61_Else_correct  (=> (and (not (and (DatatypeTests.Multiple.ConstructorA_q |c#0@2|) (not (DatatypeTests.Multiple.ConstructorB_q |c#0@2|)))) (= (ControlFlow 0 78) 76)) anon11_correct)))
(let ((anon61_Then_correct  (=> (and (and (DatatypeTests.Multiple.ConstructorA_q |c#0@2|) (not (DatatypeTests.Multiple.ConstructorB_q |c#0@2|))) (= (ControlFlow 0 77) 76)) anon11_correct)))
(let ((anon60_Else_correct  (=> (not (DatatypeTests.Multiple.ConstructorA_q |c#0@2|)) (and (=> (= (ControlFlow 0 80) 77) anon61_Then_correct) (=> (= (ControlFlow 0 80) 78) anon61_Else_correct)))))
(let ((anon60_Then_correct  (=> (DatatypeTests.Multiple.ConstructorA_q |c#0@2|) (and (=> (= (ControlFlow 0 79) 77) anon61_Then_correct) (=> (= (ControlFlow 0 79) 78) anon61_Else_correct)))))
(let ((anon7_correct  (=> (= |c#0@1| (let ((|dt_update_tmp#0#0@@3| |c#0@0|))
(let ((|dt_update#a#0#0| (LitInt 2)))
(ite (DatatypeTests.Multiple.ConstructorA_q |dt_update_tmp#0#0@@3|) (|#DatatypeTests.Multiple.ConstructorA| |dt_update#a#0#0|) (|#DatatypeTests.Multiple.ConstructorAB| |dt_update#a#0#0| (DatatypeTests.Multiple.b |dt_update_tmp#0#0@@3|)))))) (=> (and ($IsAllocBox ($Box DatatypeTypeType |c#0@1|) Tclass.DatatypeTests.Multiple $Heap) (= |newtype$check#4@0| (LitInt 1))) (and (=> (= (ControlFlow 0 81) (- 0 82)) (and (<= (LitInt 0) |newtype$check#4@0|) (< |newtype$check#4@0| 255))) (=> (and (<= (LitInt 0) |newtype$check#4@0|) (< |newtype$check#4@0| 255)) (=> (= |##other#0@0| (Lit DatatypeTypeType (|#DatatypeTests.Multiple.ConstructorA| (LitInt 1)))) (=> (and (and ($IsAlloc DatatypeTypeType |##other#0@0| Tclass.DatatypeTests.Multiple $Heap) (|DatatypeTests.Multiple.Gather#canCall| |c#0@1| (Lit DatatypeTypeType (|#DatatypeTests.Multiple.ConstructorA| (LitInt 1))))) (and (|DatatypeTests.Multiple.Gather#canCall| |c#0@1| (Lit DatatypeTypeType (|#DatatypeTests.Multiple.ConstructorA| (LitInt 1)))) (= |c#0@2| (DatatypeTests.Multiple.Gather |c#0@1| (Lit DatatypeTypeType (|#DatatypeTests.Multiple.ConstructorA| (LitInt 1))))))) (and (=> (= (ControlFlow 0 81) 79) anon60_Then_correct) (=> (= (ControlFlow 0 81) 80) anon60_Else_correct))))))))))
(let ((anon59_Else_correct  (=> (not (DatatypeTests.Multiple.ConstructorA_q |dt_update_tmp#0#Z#0@0|)) (and (=> (= (ControlFlow 0 84) (- 0 85)) (or (DatatypeTests.Multiple.ConstructorB_q |dt_update_tmp#0#Z#0@0|) (DatatypeTests.Multiple.ConstructorAB_q |dt_update_tmp#0#Z#0@0|))) (=> (or (DatatypeTests.Multiple.ConstructorB_q |dt_update_tmp#0#Z#0@0|) (DatatypeTests.Multiple.ConstructorAB_q |dt_update_tmp#0#Z#0@0|)) (=> (= (ControlFlow 0 84) 81) anon7_correct))))))
(let ((anon59_Then_correct  (=> (and (DatatypeTests.Multiple.ConstructorA_q |dt_update_tmp#0#Z#0@0|) (= (ControlFlow 0 83) 81)) anon7_correct)))
(let ((anon58_Else_correct  (=> (and (|DatatypeTests.Peano#Equal| |p#0@2| |q#0@0|) (= |newtype$check#2@0| (LitInt 0))) (and (=> (= (ControlFlow 0 86) (- 0 89)) (and (<= (LitInt 0) |newtype$check#2@0|) (< |newtype$check#2@0| 255))) (=> (and (<= (LitInt 0) |newtype$check#2@0|) (< |newtype$check#2@0| 255)) (=> (= |c#0@0| (Lit DatatypeTypeType (|#DatatypeTests.Multiple.ConstructorA| (LitInt 0)))) (and (=> (= (ControlFlow 0 86) (- 0 88)) (or (DatatypeTests.Multiple.ConstructorAB_q |c#0@0|) (DatatypeTests.Multiple.ConstructorA_q |c#0@0|))) (=> (or (DatatypeTests.Multiple.ConstructorAB_q |c#0@0|) (DatatypeTests.Multiple.ConstructorA_q |c#0@0|)) (=> (and (and (= |let#0#0#0| |c#0@0|) ($Is DatatypeTypeType |let#0#0#0| Tclass.DatatypeTests.Multiple)) (and (= |dt_update_tmp#0#Z#0@0| |let#0#0#0|) (= |newtype$check#3@0| (LitInt 2)))) (and (=> (= (ControlFlow 0 86) (- 0 87)) (and (<= (LitInt 0) |newtype$check#3@0|) (< |newtype$check#3@0| 255))) (=> (and (<= (LitInt 0) |newtype$check#3@0|) (< |newtype$check#3@0| 255)) (=> (= |let#1#0#0| (LitInt 2)) (=> (and ($Is intType (int_2_U |let#1#0#0|) Tclass.DatatypeTests.u8) (= |dt_update#a#0#Z#0@0| |let#1#0#0|)) (and (=> (= (ControlFlow 0 86) 83) anon59_Then_correct) (=> (= (ControlFlow 0 86) 84) anon59_Else_correct)))))))))))))))
(let ((anon58_Then_correct true))
(let ((anon57_Else_correct  (=> (not (DatatypeTests.NoArg.OptionC_q |n#0@1|)) (=> (and (= |d#0@0| (Lit DatatypeTypeType |#DatatypeTests.AlmostOption.Nothing|)) (= |newtype$check#0@0| (LitInt 4))) (and (=> (= (ControlFlow 0 90) (- 0 92)) (and (<= (LitInt 0) |newtype$check#0@0|) (< |newtype$check#0@0| 255))) (=> (and (<= (LitInt 0) |newtype$check#0@0|) (< |newtype$check#0@0| 255)) (=> (= |newtype$check#1@0| (LitInt 4)) (and (=> (= (ControlFlow 0 90) (- 0 91)) (and (<= (LitInt 0) |newtype$check#1@0|) (< |newtype$check#1@0| 255))) (=> (and (<= (LitInt 0) |newtype$check#1@0|) (< |newtype$check#1@0| 255)) (=> (= |d#0@1| (Lit DatatypeTypeType (|#DatatypeTests.AlmostOption.ThereItIs| (LitInt 4)))) (=> (and (= |p#0@0| (Lit DatatypeTypeType |#DatatypeTests.Peano.Zero|)) (= |p#0@1| (|#DatatypeTests.Peano.One| |p#0@0|))) (=> (and (and (= |p#0@2| (|#DatatypeTests.Peano.One| |p#0@1|)) (= |q#0@0| (|#DatatypeTests.Peano.One| |p#0@1|))) (and (|$IsA#DatatypeTests.Peano| |p#0@2|) (|$IsA#DatatypeTests.Peano| |q#0@0|))) (and (=> (= (ControlFlow 0 90) 2) anon58_Then_correct) (=> (= (ControlFlow 0 90) 86) anon58_Else_correct))))))))))))))
(let ((anon57_Then_correct true))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (= |n#0@0| (Lit DatatypeTypeType |#DatatypeTests.NoArg.OptionA|)) (= |n#0@1| (Lit DatatypeTypeType |#DatatypeTests.NoArg.OptionB|))) (and (=> (= (ControlFlow 0 93) 1) anon57_Then_correct) (=> (= (ControlFlow 0 93) 90) anon57_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is DatatypeTypeType |n#0| Tclass.DatatypeTests.NoArg) ($IsAlloc DatatypeTypeType |n#0| Tclass.DatatypeTests.NoArg $Heap)) true) (and (and ($Is DatatypeTypeType |d#0| Tclass.DatatypeTests.AlmostOption) ($IsAlloc DatatypeTypeType |d#0| Tclass.DatatypeTests.AlmostOption $Heap)) true)) (=> (and (and (and (and ($Is DatatypeTypeType |p#0| Tclass.DatatypeTests.Peano) ($IsAlloc DatatypeTypeType |p#0| Tclass.DatatypeTests.Peano $Heap)) true) (and (and ($Is DatatypeTypeType |q#0| Tclass.DatatypeTests.Peano) ($IsAlloc DatatypeTypeType |q#0| Tclass.DatatypeTests.Peano $Heap)) true)) (and (and (and ($Is DatatypeTypeType |c#0| Tclass.DatatypeTests.Multiple) ($IsAlloc DatatypeTypeType |c#0| Tclass.DatatypeTests.Multiple $Heap)) true) (and (and ($Is DatatypeTypeType |a#0@@0| Tclass.DatatypeTests.Struct) ($IsAlloc DatatypeTypeType |a#0@@0| Tclass.DatatypeTests.Struct $Heap)) true))) (=> (and (and (and (and (and ($Is DatatypeTypeType |c2#0| Tclass.DatatypeTests.RcMultiple) ($IsAlloc DatatypeTypeType |c2#0| Tclass.DatatypeTests.RcMultiple $Heap)) true) (and (and ($Is DatatypeTypeType |rc_a#0| Tclass.DatatypeTests.RcStruct) ($IsAlloc DatatypeTypeType |rc_a#0| Tclass.DatatypeTests.RcStruct $Heap)) true)) (and (and (and ($Is DatatypeTypeType |r#0| Tclass.DatatypeTests.Recursive) ($IsAlloc DatatypeTypeType |r#0| Tclass.DatatypeTests.Recursive $Heap)) true) (and (and ($Is DatatypeTypeType |x#0@@1| (Tclass.RustStdOption.Option Tclass.DatatypeTests.u8)) ($IsAlloc DatatypeTypeType |x#0@@1| (Tclass.RustStdOption.Option Tclass.DatatypeTests.u8) $Heap)) true))) (and (and (and (and (<= (LitInt 0) |u#0|) (< |u#0| 255)) true) (and (and ($Is DatatypeTypeType |no#0| (Tclass.RustStdOption.Option Tclass.DatatypeTests.u8)) ($IsAlloc DatatypeTypeType |no#0| (Tclass.RustStdOption.Option Tclass.DatatypeTests.u8) $Heap)) true)) (and (and (and ($Is DatatypeTypeType |homeMadeOption#0| (Tclass.RustStdCompare.Option TInt)) ($IsAlloc DatatypeTypeType |homeMadeOption#0| (Tclass.RustStdCompare.Option TInt) $Heap)) true) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 94) 93))))) anon0_correct))))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
