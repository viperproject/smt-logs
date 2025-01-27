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
(declare-fun Tagclass._module.ABC () T@U)
(declare-fun Tagclass._module.XYZ () T@U)
(declare-fun |##_module.ABC.ABC| () T@U)
(declare-fun |##_module.XYZ.XYZ| () T@U)
(declare-fun tytagFamily$ABC () T@U)
(declare-fun tytagFamily$XYZ () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.JustChangeB (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |_module.__default.JustChangeB#canCall| (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._module.ABC () T@U)
(declare-fun _module.ABC.ABC_q (T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun |#_module.ABC.ABC| (Int Int Int) T@U)
(declare-fun _module.ABC.a (T@U) Int)
(declare-fun _module.ABC.c (T@U) Int)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun _module.ABC.b (T@U) Int)
(declare-fun |#_module.XYZ.XYZ| (Int Int Int) T@U)
(declare-fun _module.XYZ.x (T@U) Int)
(declare-fun _module.XYZ.y (T@U) Int)
(declare-fun _module.XYZ.z (T@U) Int)
(declare-fun _module.__default.ChangeEvathang (T@U) T@U)
(declare-fun |_module.__default.ChangeEvathang#canCall| (T@U) Bool)
(declare-fun _module.__default.MakeSureDefaultValuesAreNotUsedInUpdate (T@U) T@U)
(declare-fun |_module.__default.MakeSureDefaultValuesAreNotUsedInUpdate#canCall| (T@U) Bool)
(declare-fun Tclass._module.XYZ () T@U)
(declare-fun _module.XYZ.XYZ_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
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
(assert (distinct TInt TagInt alloc Tagclass._module.ABC Tagclass._module.XYZ |##_module.ABC.ABC| |##_module.XYZ.XYZ| tytagFamily$ABC tytagFamily$XYZ)
)
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor DatatypeTypeType) 3))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|abc#0| T@U) ) (!  (=> (or (|_module.__default.JustChangeB#canCall| (Lit DatatypeTypeType |abc#0|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |abc#0| Tclass._module.ABC))) (and (let ((|dt_update_tmp#0#1| (Lit DatatypeTypeType |abc#0|)))
 (and (_module.ABC.ABC_q |dt_update_tmp#0#1|) (_module.ABC.ABC_q |dt_update_tmp#0#1|))) (= (_module.__default.JustChangeB (Lit DatatypeTypeType |abc#0|)) (let ((|dt_update_tmp#0#1@@0| (Lit DatatypeTypeType |abc#0|)))
(let ((|dt_update#b#0#1| (LitInt 42)))
(Lit DatatypeTypeType (|#_module.ABC.ABC| (LitInt (_module.ABC.a |dt_update_tmp#0#1@@0|)) |dt_update#b#0#1| (LitInt (_module.ABC.c |dt_update_tmp#0#1@@0|)))))))))
 :qid |gitissue1909dfy.5:22|
 :weight 3
 :skolemid |483|
 :pattern ( (_module.__default.JustChangeB (Lit DatatypeTypeType |abc#0|)))
))))
(assert (forall ((|a#0#0#0| Int) (|a#0#1#0| Int) (|a#0#2#0| Int) ) (! (= (DatatypeCtorId (|#_module.ABC.ABC| |a#0#0#0| |a#0#1#0| |a#0#2#0|)) |##_module.ABC.ABC|)
 :qid |gitissue1909dfy.3:29|
 :skolemid |496|
 :pattern ( (|#_module.ABC.ABC| |a#0#0#0| |a#0#1#0| |a#0#2#0|))
)))
(assert (forall ((|a#4#0#0| Int) (|a#4#1#0| Int) (|a#4#2#0| Int) ) (! (= (_module.ABC.a (|#_module.ABC.ABC| |a#4#0#0| |a#4#1#0| |a#4#2#0|)) |a#4#0#0|)
 :qid |gitissue1909dfy.3:29|
 :skolemid |505|
 :pattern ( (|#_module.ABC.ABC| |a#4#0#0| |a#4#1#0| |a#4#2#0|))
)))
(assert (forall ((|a#5#0#0| Int) (|a#5#1#0| Int) (|a#5#2#0| Int) ) (! (= (_module.ABC.b (|#_module.ABC.ABC| |a#5#0#0| |a#5#1#0| |a#5#2#0|)) |a#5#1#0|)
 :qid |gitissue1909dfy.3:29|
 :skolemid |506|
 :pattern ( (|#_module.ABC.ABC| |a#5#0#0| |a#5#1#0| |a#5#2#0|))
)))
(assert (forall ((|a#6#0#0| Int) (|a#6#1#0| Int) (|a#6#2#0| Int) ) (! (= (_module.ABC.c (|#_module.ABC.ABC| |a#6#0#0| |a#6#1#0| |a#6#2#0|)) |a#6#2#0|)
 :qid |gitissue1909dfy.3:29|
 :skolemid |507|
 :pattern ( (|#_module.ABC.ABC| |a#6#0#0| |a#6#1#0| |a#6#2#0|))
)))
(assert (forall ((|a#7#0#0| Int) (|a#7#1#0| Int) (|a#7#2#0| Int) ) (! (= (DatatypeCtorId (|#_module.XYZ.XYZ| |a#7#0#0| |a#7#1#0| |a#7#2#0|)) |##_module.XYZ.XYZ|)
 :qid |gitissue1909dfy.15:20|
 :skolemid |513|
 :pattern ( (|#_module.XYZ.XYZ| |a#7#0#0| |a#7#1#0| |a#7#2#0|))
)))
(assert (forall ((|a#3#0#0| Int) (|a#3#1#0| Int) (|a#3#2#0| Int) ) (! (= (_module.XYZ.x (|#_module.XYZ.XYZ| |a#3#0#0| |a#3#1#0| |a#3#2#0|)) |a#3#0#0|)
 :qid |gitissue1909dfy.15:20|
 :skolemid |522|
 :pattern ( (|#_module.XYZ.XYZ| |a#3#0#0| |a#3#1#0| |a#3#2#0|))
)))
(assert (forall ((|a#4#0#0@@0| Int) (|a#4#1#0@@0| Int) (|a#4#2#0@@0| Int) ) (! (= (_module.XYZ.y (|#_module.XYZ.XYZ| |a#4#0#0@@0| |a#4#1#0@@0| |a#4#2#0@@0|)) |a#4#1#0@@0|)
 :qid |gitissue1909dfy.15:20|
 :skolemid |523|
 :pattern ( (|#_module.XYZ.XYZ| |a#4#0#0@@0| |a#4#1#0@@0| |a#4#2#0@@0|))
)))
(assert (forall ((|a#5#0#0@@0| Int) (|a#5#1#0@@0| Int) (|a#5#2#0@@0| Int) ) (! (= (_module.XYZ.z (|#_module.XYZ.XYZ| |a#5#0#0@@0| |a#5#1#0@@0| |a#5#2#0@@0|)) |a#5#2#0@@0|)
 :qid |gitissue1909dfy.15:20|
 :skolemid |524|
 :pattern ( (|#_module.XYZ.XYZ| |a#5#0#0@@0| |a#5#1#0@@0| |a#5#2#0@@0|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|abc#0@@0| T@U) ) (!  (=> (or (|_module.__default.ChangeEvathang#canCall| (Lit DatatypeTypeType |abc#0@@0|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |abc#0@@0| Tclass._module.ABC))) (= (_module.__default.ChangeEvathang (Lit DatatypeTypeType |abc#0@@0|)) (let ((|dt_update#c#0#1| (LitInt 90)))
(let ((|dt_update#a#0#1| (LitInt 100)))
(let ((|dt_update#b#0#1@@0| (LitInt 42)))
(Lit DatatypeTypeType (|#_module.ABC.ABC| |dt_update#a#0#1| |dt_update#b#0#1@@0| |dt_update#c#0#1|)))))))
 :qid |gitissue1909dfy.10:25|
 :weight 3
 :skolemid |487|
 :pattern ( (_module.__default.ChangeEvathang (Lit DatatypeTypeType |abc#0@@0|)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|xyz#0| T@U) ) (!  (=> (or (|_module.__default.MakeSureDefaultValuesAreNotUsedInUpdate#canCall| (Lit DatatypeTypeType |xyz#0|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xyz#0| Tclass._module.XYZ))) (and (let ((|dt_update_tmp#0#1@@1| (Lit DatatypeTypeType |xyz#0|)))
 (and (_module.XYZ.XYZ_q |dt_update_tmp#0#1@@1|) (_module.XYZ.XYZ_q |dt_update_tmp#0#1@@1|))) (= (_module.__default.MakeSureDefaultValuesAreNotUsedInUpdate (Lit DatatypeTypeType |xyz#0|)) (let ((|dt_update_tmp#0#1@@2| (Lit DatatypeTypeType |xyz#0|)))
(let ((|dt_update#x#0#1| (LitInt 3)))
(Lit DatatypeTypeType (|#_module.XYZ.XYZ| |dt_update#x#0#1| (LitInt (_module.XYZ.y |dt_update_tmp#0#1@@2|)) (LitInt (_module.XYZ.z |dt_update_tmp#0#1@@2|)))))))))
 :qid |gitissue1909dfy.17:50|
 :weight 3
 :skolemid |492|
 :pattern ( (_module.__default.MakeSureDefaultValuesAreNotUsedInUpdate (Lit DatatypeTypeType |xyz#0|)))
))))
(assert (forall ((d T@U) ) (!  (=> ($Is DatatypeTypeType d Tclass._module.ABC) (_module.ABC.ABC_q d))
 :qid |unknown.0:0|
 :skolemid |510|
 :pattern ( (_module.ABC.ABC_q d) ($Is DatatypeTypeType d Tclass._module.ABC))
)))
(assert (forall ((d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 Tclass._module.XYZ) (_module.XYZ.XYZ_q d@@0))
 :qid |unknown.0:0|
 :skolemid |527|
 :pattern ( (_module.XYZ.XYZ_q d@@0) ($Is DatatypeTypeType d@@0 Tclass._module.XYZ))
)))
(assert (forall ((|a#2#0#0| Int) (|a#2#1#0| Int) (|a#2#2#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.ABC.ABC| |a#2#0#0| |a#2#1#0| |a#2#2#0|) Tclass._module.ABC)  (and (and ($Is intType (int_2_U |a#2#0#0|) TInt) ($Is intType (int_2_U |a#2#1#0|) TInt)) ($Is intType (int_2_U |a#2#2#0|) TInt)))
 :qid |gitissue1909dfy.3:29|
 :skolemid |500|
 :pattern ( ($Is DatatypeTypeType (|#_module.ABC.ABC| |a#2#0#0| |a#2#1#0| |a#2#2#0|) Tclass._module.ABC))
)))
(assert (forall ((|a#1#0#0| Int) (|a#1#1#0| Int) (|a#1#2#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.XYZ.XYZ| |a#1#0#0| |a#1#1#0| |a#1#2#0|) Tclass._module.XYZ)  (and (and ($Is intType (int_2_U |a#1#0#0|) TInt) ($Is intType (int_2_U |a#1#1#0|) TInt)) ($Is intType (int_2_U |a#1#2#0|) TInt)))
 :qid |gitissue1909dfy.15:20|
 :skolemid |517|
 :pattern ( ($Is DatatypeTypeType (|#_module.XYZ.XYZ| |a#1#0#0| |a#1#1#0| |a#1#2#0|) Tclass._module.XYZ))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|abc#0@@1| T@U) ) (!  (=> (or (|_module.__default.JustChangeB#canCall| |abc#0@@1|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |abc#0@@1| Tclass._module.ABC))) (and (let ((|dt_update_tmp#0#0| |abc#0@@1|))
 (and (_module.ABC.ABC_q |dt_update_tmp#0#0|) (_module.ABC.ABC_q |dt_update_tmp#0#0|))) (= (_module.__default.JustChangeB |abc#0@@1|) (let ((|dt_update_tmp#0#0@@0| |abc#0@@1|))
(let ((|dt_update#b#0#0| (LitInt 42)))
(|#_module.ABC.ABC| (_module.ABC.a |dt_update_tmp#0#0@@0|) |dt_update#b#0#0| (_module.ABC.c |dt_update_tmp#0#0@@0|)))))))
 :qid |gitissue1909dfy.5:22|
 :skolemid |482|
 :pattern ( (_module.__default.JustChangeB |abc#0@@1|))
))))
(assert (forall ((d@@1 T@U) ) (! (= (_module.ABC.ABC_q d@@1) (= (DatatypeCtorId d@@1) |##_module.ABC.ABC|))
 :qid |unknown.0:0|
 :skolemid |497|
 :pattern ( (_module.ABC.ABC_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.XYZ.XYZ_q d@@2) (= (DatatypeCtorId d@@2) |##_module.XYZ.XYZ|))
 :qid |unknown.0:0|
 :skolemid |514|
 :pattern ( (_module.XYZ.XYZ_q d@@2))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_module.ABC.ABC_q d@@3) (exists ((|a#1#0#0@@0| Int) (|a#1#1#0@@0| Int) (|a#1#2#0@@0| Int) ) (! (= d@@3 (|#_module.ABC.ABC| |a#1#0#0@@0| |a#1#1#0@@0| |a#1#2#0@@0|))
 :qid |gitissue1909dfy.3:29|
 :skolemid |498|
)))
 :qid |unknown.0:0|
 :skolemid |499|
 :pattern ( (_module.ABC.ABC_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.XYZ.XYZ_q d@@4) (exists ((|a#0#0#0@@0| Int) (|a#0#1#0@@0| Int) (|a#0#2#0@@0| Int) ) (! (= d@@4 (|#_module.XYZ.XYZ| |a#0#0#0@@0| |a#0#1#0@@0| |a#0#2#0@@0|))
 :qid |gitissue1909dfy.15:20|
 :skolemid |515|
)))
 :qid |unknown.0:0|
 :skolemid |516|
 :pattern ( (_module.XYZ.XYZ_q d@@4))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|xyz#0@@0| T@U) ) (!  (=> (or (|_module.__default.MakeSureDefaultValuesAreNotUsedInUpdate#canCall| |xyz#0@@0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xyz#0@@0| Tclass._module.XYZ))) (and (let ((|dt_update_tmp#0#0@@1| |xyz#0@@0|))
 (and (_module.XYZ.XYZ_q |dt_update_tmp#0#0@@1|) (_module.XYZ.XYZ_q |dt_update_tmp#0#0@@1|))) (= (_module.__default.MakeSureDefaultValuesAreNotUsedInUpdate |xyz#0@@0|) (let ((|dt_update_tmp#0#0@@2| |xyz#0@@0|))
(let ((|dt_update#x#0#0| (LitInt 3)))
(|#_module.XYZ.XYZ| |dt_update#x#0#0| (_module.XYZ.y |dt_update_tmp#0#0@@2|) (_module.XYZ.z |dt_update_tmp#0#0@@2|)))))))
 :qid |gitissue1909dfy.17:50|
 :skolemid |491|
 :pattern ( (_module.__default.MakeSureDefaultValuesAreNotUsedInUpdate |xyz#0@@0|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|abc#0@@2| T@U) ) (!  (=> (or (|_module.__default.JustChangeB#canCall| |abc#0@@2|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |abc#0@@2| Tclass._module.ABC))) ($Is DatatypeTypeType (_module.__default.JustChangeB |abc#0@@2|) Tclass._module.ABC))
 :qid |gitissue1909dfy.5:22|
 :skolemid |480|
 :pattern ( (_module.__default.JustChangeB |abc#0@@2|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|abc#0@@3| T@U) ) (!  (=> (or (|_module.__default.ChangeEvathang#canCall| |abc#0@@3|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |abc#0@@3| Tclass._module.ABC))) ($Is DatatypeTypeType (_module.__default.ChangeEvathang |abc#0@@3|) Tclass._module.ABC))
 :qid |gitissue1909dfy.10:25|
 :skolemid |484|
 :pattern ( (_module.__default.ChangeEvathang |abc#0@@3|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|xyz#0@@1| T@U) ) (!  (=> (or (|_module.__default.MakeSureDefaultValuesAreNotUsedInUpdate#canCall| |xyz#0@@1|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xyz#0@@1| Tclass._module.XYZ))) ($Is DatatypeTypeType (_module.__default.MakeSureDefaultValuesAreNotUsedInUpdate |xyz#0@@1|) Tclass._module.XYZ))
 :qid |gitissue1909dfy.17:50|
 :skolemid |489|
 :pattern ( (_module.__default.MakeSureDefaultValuesAreNotUsedInUpdate |xyz#0@@1|))
))))
(assert (forall ((|a#3#0#0@@0| Int) (|a#3#1#0@@0| Int) (|a#3#2#0@@0| Int) ) (! (= (|#_module.ABC.ABC| (LitInt |a#3#0#0@@0|) (LitInt |a#3#1#0@@0|) (LitInt |a#3#2#0@@0|)) (Lit DatatypeTypeType (|#_module.ABC.ABC| |a#3#0#0@@0| |a#3#1#0@@0| |a#3#2#0@@0|)))
 :qid |gitissue1909dfy.3:29|
 :skolemid |504|
 :pattern ( (|#_module.ABC.ABC| (LitInt |a#3#0#0@@0|) (LitInt |a#3#1#0@@0|) (LitInt |a#3#2#0@@0|)))
)))
(assert (forall ((|a#2#0#0@@0| Int) (|a#2#1#0@@0| Int) (|a#2#2#0@@0| Int) ) (! (= (|#_module.XYZ.XYZ| (LitInt |a#2#0#0@@0|) (LitInt |a#2#1#0@@0|) (LitInt |a#2#2#0@@0|)) (Lit DatatypeTypeType (|#_module.XYZ.XYZ| |a#2#0#0@@0| |a#2#1#0@@0| |a#2#2#0@@0|)))
 :qid |gitissue1909dfy.15:20|
 :skolemid |521|
 :pattern ( (|#_module.XYZ.XYZ| (LitInt |a#2#0#0@@0|) (LitInt |a#2#1#0@@0|) (LitInt |a#2#2#0@@0|)))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@5))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 4)) (= (Ctor FieldType) 5)) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (= (Ctor BoxType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType1Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |530|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@5 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (_module.ABC.ABC_q d@@5) ($IsAlloc DatatypeTypeType d@@5 Tclass._module.ABC $h))) ($IsAlloc intType (int_2_U (_module.ABC.a d@@5)) TInt $h))
 :qid |unknown.0:0|
 :skolemid |501|
 :pattern ( ($IsAlloc intType (int_2_U (_module.ABC.a d@@5)) TInt $h))
)))
(assert (forall ((d@@6 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.ABC.ABC_q d@@6) ($IsAlloc DatatypeTypeType d@@6 Tclass._module.ABC $h@@0))) ($IsAlloc intType (int_2_U (_module.ABC.b d@@6)) TInt $h@@0))
 :qid |unknown.0:0|
 :skolemid |502|
 :pattern ( ($IsAlloc intType (int_2_U (_module.ABC.b d@@6)) TInt $h@@0))
)))
(assert (forall ((d@@7 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.ABC.ABC_q d@@7) ($IsAlloc DatatypeTypeType d@@7 Tclass._module.ABC $h@@1))) ($IsAlloc intType (int_2_U (_module.ABC.c d@@7)) TInt $h@@1))
 :qid |unknown.0:0|
 :skolemid |503|
 :pattern ( ($IsAlloc intType (int_2_U (_module.ABC.c d@@7)) TInt $h@@1))
)))
(assert (forall ((d@@8 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.XYZ.XYZ_q d@@8) ($IsAlloc DatatypeTypeType d@@8 Tclass._module.XYZ $h@@2))) ($IsAlloc intType (int_2_U (_module.XYZ.x d@@8)) TInt $h@@2))
 :qid |unknown.0:0|
 :skolemid |518|
 :pattern ( ($IsAlloc intType (int_2_U (_module.XYZ.x d@@8)) TInt $h@@2))
)))
(assert (forall ((d@@9 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_module.XYZ.XYZ_q d@@9) ($IsAlloc DatatypeTypeType d@@9 Tclass._module.XYZ $h@@3))) ($IsAlloc intType (int_2_U (_module.XYZ.y d@@9)) TInt $h@@3))
 :qid |unknown.0:0|
 :skolemid |519|
 :pattern ( ($IsAlloc intType (int_2_U (_module.XYZ.y d@@9)) TInt $h@@3))
)))
(assert (forall ((d@@10 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_module.XYZ.XYZ_q d@@10) ($IsAlloc DatatypeTypeType d@@10 Tclass._module.XYZ $h@@4))) ($IsAlloc intType (int_2_U (_module.XYZ.z d@@10)) TInt $h@@4))
 :qid |unknown.0:0|
 :skolemid |520|
 :pattern ( ($IsAlloc intType (int_2_U (_module.XYZ.z d@@10)) TInt $h@@4))
)))
(assert (forall ((d@@11 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) ($Is DatatypeTypeType d@@11 Tclass._module.ABC)) ($IsAlloc DatatypeTypeType d@@11 Tclass._module.ABC $h@@5))
 :qid |unknown.0:0|
 :skolemid |508|
 :pattern ( ($IsAlloc DatatypeTypeType d@@11 Tclass._module.ABC $h@@5))
)))
(assert (forall ((d@@12 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) ($Is DatatypeTypeType d@@12 Tclass._module.XYZ)) ($IsAlloc DatatypeTypeType d@@12 Tclass._module.XYZ $h@@6))
 :qid |unknown.0:0|
 :skolemid |525|
 :pattern ( ($IsAlloc DatatypeTypeType d@@12 Tclass._module.XYZ $h@@6))
)))
(assert (= (Tag Tclass._module.ABC) Tagclass._module.ABC))
(assert (= (TagFamily Tclass._module.ABC) tytagFamily$ABC))
(assert (= (Tag Tclass._module.XYZ) Tagclass._module.XYZ))
(assert (= (TagFamily Tclass._module.XYZ) tytagFamily$XYZ))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|abc#0@@4| T@U) ) (!  (=> (or (|_module.__default.ChangeEvathang#canCall| |abc#0@@4|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |abc#0@@4| Tclass._module.ABC))) (= (_module.__default.ChangeEvathang |abc#0@@4|) (let ((|dt_update#c#0#0| (LitInt 90)))
(let ((|dt_update#a#0#0| (LitInt 100)))
(let ((|dt_update#b#0#0@@0| (LitInt 42)))
(Lit DatatypeTypeType (|#_module.ABC.ABC| |dt_update#a#0#0| |dt_update#b#0#0@@0| |dt_update#c#0#0|)))))))
 :qid |gitissue1909dfy.10:25|
 :skolemid |486|
 :pattern ( (_module.__default.ChangeEvathang |abc#0@@4|))
))))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@7)) (Lit BoxType ($Box T@@2 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@7)))
)))
(assert (forall ((h T@U) (v T@U) ) (! ($IsAlloc intType v TInt h)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v TInt h))
)))
(assert (forall ((v@@0 T@U) ) (! ($Is intType v@@0 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@0 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |abc#0@2| () T@U)
(declare-fun |xyz#0@0| () T@U)
(declare-fun |xyz#0@1| () T@U)
(declare-fun $Heap () T@U)
(declare-fun |xyz#0@2| () T@U)
(declare-fun |abc#0@1| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun |abc#0@0| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |abc#0@@5| () T@U)
(declare-fun |xyz#0@@2| () T@U)
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
 (=> (= (ControlFlow 0 0) 16) (let ((anon4_correct  (=> (and (_module.ABC.ABC_q |abc#0@2|) (=> (= (_module.ABC.b |abc#0@2|) (LitInt 42)) (_module.ABC.ABC_q |abc#0@2|))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (= (_module.ABC.b |abc#0@2|) (LitInt 42))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (= (_module.ABC.c |abc#0@2|) (LitInt 90))) (=> (and (and (and (= (_module.ABC.b |abc#0@2|) (LitInt 42)) (= (_module.ABC.c |abc#0@2|) (LitInt 90))) (= |xyz#0@0| (Lit DatatypeTypeType (|#_module.XYZ.XYZ| (LitInt 0) (LitInt 5) (LitInt 7))))) (and (_module.XYZ.XYZ_q |xyz#0@0|) (_module.XYZ.XYZ_q |xyz#0@0|))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (= (_module.XYZ.y |xyz#0@0|) (LitInt 5))) (=> (= (_module.XYZ.y |xyz#0@0|) (LitInt 5)) (=> (= |xyz#0@1| (Lit DatatypeTypeType (|#_module.XYZ.XYZ| (LitInt 88) (LitInt 89) (LitInt 90)))) (=> (and (_module.XYZ.XYZ_q |xyz#0@1|) (_module.XYZ.XYZ_q |xyz#0@1|)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= (_module.XYZ.y |xyz#0@1|) (LitInt 89))) (=> (= (_module.XYZ.y |xyz#0@1|) (LitInt 89)) (=> (and (and (and ($IsAlloc DatatypeTypeType |xyz#0@1| Tclass._module.XYZ $Heap) (|_module.__default.MakeSureDefaultValuesAreNotUsedInUpdate#canCall| |xyz#0@1|)) (and (_module.XYZ.XYZ_q (_module.__default.MakeSureDefaultValuesAreNotUsedInUpdate |xyz#0@1|)) (|_module.__default.MakeSureDefaultValuesAreNotUsedInUpdate#canCall| |xyz#0@1|))) (and (and (= |xyz#0@2| (_module.__default.MakeSureDefaultValuesAreNotUsedInUpdate |xyz#0@1|)) (_module.XYZ.XYZ_q |xyz#0@2|)) (and (_module.XYZ.XYZ_q |xyz#0@2|) (= (ControlFlow 0 2) (- 0 1))))) (= (_module.XYZ.y |xyz#0@2|) (LitInt 89)))))))))))))))
(let ((anon6_Else_correct  (=> (and (or (not (= (_module.ABC.b |abc#0@2|) (LitInt 42))) (not true)) (= (ControlFlow 0 8) 2)) anon4_correct)))
(let ((anon6_Then_correct  (=> (= (_module.ABC.b |abc#0@2|) (LitInt 42)) (=> (and (_module.ABC.ABC_q |abc#0@2|) (= (ControlFlow 0 7) 2)) anon4_correct))))
(let ((anon2_correct  (=> (and (_module.ABC.ABC_q |abc#0@1|) (=> (= (_module.ABC.b |abc#0@1|) (LitInt 42)) (_module.ABC.ABC_q |abc#0@1|))) (and (=> (= (ControlFlow 0 9) (- 0 11)) (= (_module.ABC.b |abc#0@1|) (LitInt 42))) (and (=> (= (ControlFlow 0 9) (- 0 10)) (= (_module.ABC.c |abc#0@1|) (LitInt 23))) (=> (and (and (and (= (_module.ABC.b |abc#0@1|) (LitInt 42)) (= (_module.ABC.c |abc#0@1|) (LitInt 23))) (and ($IsAlloc DatatypeTypeType |abc#0@1| Tclass._module.ABC $Heap) (|_module.__default.ChangeEvathang#canCall| |abc#0@1|))) (and (and (_module.ABC.ABC_q (_module.__default.ChangeEvathang |abc#0@1|)) (|_module.__default.ChangeEvathang#canCall| |abc#0@1|)) (and (= |abc#0@2| (_module.__default.ChangeEvathang |abc#0@1|)) (_module.ABC.ABC_q |abc#0@2|)))) (and (=> (= (ControlFlow 0 9) 7) anon6_Then_correct) (=> (= (ControlFlow 0 9) 8) anon6_Else_correct))))))))
(let ((anon5_Else_correct  (=> (and (or (not (= (_module.ABC.b |abc#0@1|) (LitInt 42))) (not true)) (= (ControlFlow 0 13) 9)) anon2_correct)))
(let ((anon5_Then_correct  (=> (= (_module.ABC.b |abc#0@1|) (LitInt 42)) (=> (and (_module.ABC.ABC_q |abc#0@1|) (= (ControlFlow 0 12) 9)) anon2_correct))))
(let ((anon0_correct  (=> (and (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |abc#0@0| (Lit DatatypeTypeType (|#_module.ABC.ABC| (LitInt 19) (LitInt 21) (LitInt 23))))) (and (_module.ABC.ABC_q |abc#0@0|) (_module.ABC.ABC_q |abc#0@0|))) (and (=> (= (ControlFlow 0 14) (- 0 15)) (= (_module.ABC.b |abc#0@0|) (LitInt 21))) (=> (= (_module.ABC.b |abc#0@0|) (LitInt 21)) (=> (and ($IsAlloc DatatypeTypeType |abc#0@0| Tclass._module.ABC $Heap) (|_module.__default.JustChangeB#canCall| |abc#0@0|)) (=> (and (and (_module.ABC.ABC_q (_module.__default.JustChangeB |abc#0@0|)) (|_module.__default.JustChangeB#canCall| |abc#0@0|)) (and (= |abc#0@1| (_module.__default.JustChangeB |abc#0@0|)) (_module.ABC.ABC_q |abc#0@1|))) (and (=> (= (ControlFlow 0 14) 12) anon5_Then_correct) (=> (= (ControlFlow 0 14) 13) anon5_Else_correct)))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is DatatypeTypeType |abc#0@@5| Tclass._module.ABC) ($IsAlloc DatatypeTypeType |abc#0@@5| Tclass._module.ABC $Heap)) true) (=> (and (and (and ($Is DatatypeTypeType |xyz#0@@2| Tclass._module.XYZ) ($IsAlloc DatatypeTypeType |xyz#0@@2| Tclass._module.XYZ $Heap)) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 16) 14))) anon0_correct)))))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
