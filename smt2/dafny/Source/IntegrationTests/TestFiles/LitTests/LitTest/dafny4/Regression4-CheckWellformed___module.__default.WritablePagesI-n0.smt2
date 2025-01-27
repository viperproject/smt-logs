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
(declare-fun TagSet () T@U)
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._module.Maybe () T@U)
(declare-fun Tagclass._module.AbsPTE () T@U)
(declare-fun |##_module.Maybe.Nothing| () T@U)
(declare-fun |##_module.Maybe.Just| () T@U)
(declare-fun |##_module.AbsPTE.AbsPTE| () T@U)
(declare-fun tytagFamily$Maybe () T@U)
(declare-fun tytagFamily$AbsPTE () T@U)
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
(declare-fun |#_module.AbsPTE.AbsPTE| (Int Bool Bool) T@U)
(declare-fun _module.AbsPTE.write (T@U) Bool)
(declare-fun _module.AbsPTE.exec (T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun _module.__default.fromJust (T@U T@U) T@U)
(declare-fun |_module.__default.fromJust#canCall| (T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Maybe (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun _module.Maybe.Just_q (T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun _module.AbsPTE.phys (T@U) Int)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |#_module.Maybe.Nothing| () T@U)
(declare-fun _module.AbsPTE.AbsPTE_q (T@U) Bool)
(declare-fun Tclass._module.AbsPTE () T@U)
(declare-fun _module.Maybe._h0 (T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun _module.__default.WritablePagesInTable (T@U) T@U)
(declare-fun |_module.__default.WritablePagesInTable#canCall| (T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun _module.Maybe.Nothing_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun |#_module.Maybe.Just| (T@U) T@U)
(declare-fun |lambda#1| (Int Int T@U Int T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass._module.Maybe_0 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun |Seq#Rank| (T@U) Int)
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
(assert (distinct TBool TInt TagBool TagInt TagSet TagSeq alloc Tagclass._module.Maybe Tagclass._module.AbsPTE |##_module.Maybe.Nothing| |##_module.Maybe.Just| |##_module.AbsPTE.AbsPTE| tytagFamily$Maybe tytagFamily$AbsPTE)
)
(assert (forall ((|a#15#0#0| Int) (|a#15#1#0| Bool) (|a#15#2#0| Bool) ) (! (= (_module.AbsPTE.write (|#_module.AbsPTE.AbsPTE| |a#15#0#0| |a#15#1#0| |a#15#2#0|)) |a#15#1#0|)
 :qid |Regression4dfy.16:26|
 :skolemid |540|
 :pattern ( (|#_module.AbsPTE.AbsPTE| |a#15#0#0| |a#15#1#0| |a#15#2#0|))
)))
(assert (forall ((|a#16#0#0| Int) (|a#16#1#0| Bool) (|a#16#2#0| Bool) ) (! (= (_module.AbsPTE.exec (|#_module.AbsPTE.AbsPTE| |a#16#0#0| |a#16#1#0| |a#16#2#0|)) |a#16#2#0|)
 :qid |Regression4dfy.16:26|
 :skolemid |541|
 :pattern ( (|#_module.AbsPTE.AbsPTE| |a#16#0#0| |a#16#1#0| |a#16#2#0|))
)))
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor DatatypeTypeType) 3))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (_module._default.fromJust$T T@U) (|x#0| T@U) ) (!  (=> (and (or (|_module.__default.fromJust#canCall| _module._default.fromJust$T |x#0|) (and (< 1 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |x#0| (Tclass._module.Maybe _module._default.fromJust$T)) ($IsAlloc DatatypeTypeType |x#0| (Tclass._module.Maybe _module._default.fromJust$T) $Heap)) (_module.Maybe.Just_q |x#0|)))) ($IsGoodHeap $Heap)) ($IsAllocBox (_module.__default.fromJust _module._default.fromJust$T |x#0|) _module._default.fromJust$T $Heap))
 :qid |Regression4dfy.7:10|
 :skolemid |486|
 :pattern ( ($IsAllocBox (_module.__default.fromJust _module._default.fromJust$T |x#0|) _module._default.fromJust$T $Heap))
))))
(assert (forall ((|a#10#0#0| Int) (|a#10#1#0| Bool) (|a#10#2#0| Bool) ) (! (= (DatatypeCtorId (|#_module.AbsPTE.AbsPTE| |a#10#0#0| |a#10#1#0| |a#10#2#0|)) |##_module.AbsPTE.AbsPTE|)
 :qid |Regression4dfy.16:26|
 :skolemid |530|
 :pattern ( (|#_module.AbsPTE.AbsPTE| |a#10#0#0| |a#10#1#0| |a#10#2#0|))
)))
(assert (forall ((|a#14#0#0| Int) (|a#14#1#0| Bool) (|a#14#2#0| Bool) ) (! (= (_module.AbsPTE.phys (|#_module.AbsPTE.AbsPTE| |a#14#0#0| |a#14#1#0| |a#14#2#0|)) |a#14#0#0|)
 :qid |Regression4dfy.16:26|
 :skolemid |539|
 :pattern ( (|#_module.AbsPTE.AbsPTE| |a#14#0#0| |a#14#1#0| |a#14#2#0|))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#_module.Maybe.Nothing|) |##_module.Maybe.Nothing|))
(assert (forall ((d T@U) ) (!  (=> ($Is DatatypeTypeType d Tclass._module.AbsPTE) (_module.AbsPTE.AbsPTE_q d))
 :qid |unknown.0:0|
 :skolemid |544|
 :pattern ( (_module.AbsPTE.AbsPTE_q d) ($Is DatatypeTypeType d Tclass._module.AbsPTE))
)))
(assert (forall ((_module.Maybe$T T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) ($IsAlloc DatatypeTypeType |#_module.Maybe.Nothing| (Tclass._module.Maybe _module.Maybe$T) $h))
 :qid |unknown.0:0|
 :skolemid |514|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.Maybe.Nothing| (Tclass._module.Maybe _module.Maybe$T) $h))
)))
(assert (forall ((_module.Maybe$T@@0 T@U) ) (! ($Is DatatypeTypeType |#_module.Maybe.Nothing| (Tclass._module.Maybe _module.Maybe$T@@0))
 :qid |unknown.0:0|
 :skolemid |513|
 :pattern ( ($Is DatatypeTypeType |#_module.Maybe.Nothing| (Tclass._module.Maybe _module.Maybe$T@@0)))
)))
(assert (forall ((|a#12#0#0| Int) (|a#12#1#0| Bool) (|a#12#2#0| Bool) ) (! (= ($Is DatatypeTypeType (|#_module.AbsPTE.AbsPTE| |a#12#0#0| |a#12#1#0| |a#12#2#0|) Tclass._module.AbsPTE)  (and (and ($Is intType (int_2_U |a#12#0#0|) TInt) ($Is boolType (bool_2_U |a#12#1#0|) TBool)) ($Is boolType (bool_2_U |a#12#2#0|) TBool)))
 :qid |Regression4dfy.16:26|
 :skolemid |534|
 :pattern ( ($Is DatatypeTypeType (|#_module.AbsPTE.AbsPTE| |a#12#0#0| |a#12#1#0| |a#12#2#0|) Tclass._module.AbsPTE))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.fromJust$T@@0 T@U) (|x#0@@0| T@U) ) (!  (=> (or (|_module.__default.fromJust#canCall| _module._default.fromJust$T@@0 |x#0@@0|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |x#0@@0| (Tclass._module.Maybe _module._default.fromJust$T@@0)) (_module.Maybe.Just_q |x#0@@0|)))) (= (_module.__default.fromJust _module._default.fromJust$T@@0 |x#0@@0|) (let ((|v#0| (_module.Maybe._h0 |x#0@@0|)))
|v#0|)))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( (_module.__default.fromJust _module._default.fromJust$T@@0 |x#0@@0|))
))))
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
(assert  (and (= (Ctor SeqType) 4) (= (Ctor SetType) 5)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|pt#0| T@U) ) (!  (=> (or (|_module.__default.WritablePagesInTable#canCall| |pt#0|) (and (< 4 $FunctionContextHeight) ($Is SeqType |pt#0| (TSeq (Tclass._module.Maybe (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE))))))) ($Is SetType (_module.__default.WritablePagesInTable |pt#0|) (TSet TInt)))
 :qid |Regression4dfy.18:37|
 :skolemid |491|
 :pattern ( (_module.__default.WritablePagesInTable |pt#0|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.fromJust$T@@1 T@U) (|x#0@@1| T@U) ) (!  (=> (or (|_module.__default.fromJust#canCall| _module._default.fromJust$T@@1 |x#0@@1|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |x#0@@1| (Tclass._module.Maybe _module._default.fromJust$T@@1)) (_module.Maybe.Just_q |x#0@@1|)))) ($IsBox (_module.__default.fromJust _module._default.fromJust$T@@1 |x#0@@1|) _module._default.fromJust$T@@1))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( (_module.__default.fromJust _module._default.fromJust$T@@1 |x#0@@1|))
))))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Maybe.Nothing_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Maybe.Nothing|))
 :qid |unknown.0:0|
 :skolemid |511|
 :pattern ( (_module.Maybe.Nothing_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.Maybe.Just_q d@@1) (= (DatatypeCtorId d@@1) |##_module.Maybe.Just|))
 :qid |unknown.0:0|
 :skolemid |516|
 :pattern ( (_module.Maybe.Just_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.AbsPTE.AbsPTE_q d@@2) (= (DatatypeCtorId d@@2) |##_module.AbsPTE.AbsPTE|))
 :qid |unknown.0:0|
 :skolemid |531|
 :pattern ( (_module.AbsPTE.AbsPTE_q d@@2))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_module.AbsPTE.AbsPTE_q d@@3) (exists ((|a#11#0#0| Int) (|a#11#1#0| Bool) (|a#11#2#0| Bool) ) (! (= d@@3 (|#_module.AbsPTE.AbsPTE| |a#11#0#0| |a#11#1#0| |a#11#2#0|))
 :qid |Regression4dfy.16:26|
 :skolemid |532|
)))
 :qid |unknown.0:0|
 :skolemid |533|
 :pattern ( (_module.AbsPTE.AbsPTE_q d@@3))
)))
(assert  (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 6)))
(assert (forall ((m@@1 T@U) (bx T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx) (U_2_bool (MapType0Select BoxType boolType m@@1 bx)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |153|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.Maybe.Nothing_q d@@4) (= d@@4 |#_module.Maybe.Nothing|))
 :qid |unknown.0:0|
 :skolemid |512|
 :pattern ( (_module.Maybe.Nothing_q d@@4))
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
(assert (forall ((d@@5 T@U) ) (!  (=> (_module.Maybe.Just_q d@@5) (exists ((|a#5#0#0| T@U) ) (! (= d@@5 (|#_module.Maybe.Just| |a#5#0#0|))
 :qid |Regression4dfy.5:36|
 :skolemid |517|
)))
 :qid |unknown.0:0|
 :skolemid |518|
 :pattern ( (_module.Maybe.Just_q d@@5))
)))
(assert (forall ((|l#0| Int) (|l#1| Int) (|l#2| T@U) (|l#3| Int) (|l#4| T@U) (|l#5| T@U) (|l#6| T@U) (|l#7| T@U) (|l#8| T@U) (|l#9| T@U) (|l#10| T@U) (|l#11| T@U) (|l#12| T@U) (|l#13| T@U) (|l#14| T@U) (|l#15| T@U) (|$y#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6| |l#7| |l#8| |l#9| |l#10| |l#11| |l#12| |l#13| |l#14| |l#15|) |$y#0|)) (exists ((|i#0| Int) (|j#0| Int) ) (!  (and (and (and (and (and (and (<= |l#0| |i#0|) (< |i#0| |l#1|)) (_module.Maybe.Just_q ($Unbox DatatypeTypeType (|Seq#Index| |l#2| |i#0|)))) (and (<= |l#3| |j#0|) (< |j#0| (|Seq#Length| ($Unbox SeqType (_module.__default.fromJust |l#4| ($Unbox DatatypeTypeType (|Seq#Index| |l#5| |i#0|)))))))) (_module.Maybe.Just_q ($Unbox DatatypeTypeType (|Seq#Index| ($Unbox SeqType (_module.__default.fromJust |l#6| ($Unbox DatatypeTypeType (|Seq#Index| |l#7| |i#0|)))) |j#0|)))) (_module.AbsPTE.write ($Unbox DatatypeTypeType (_module.__default.fromJust |l#8| ($Unbox DatatypeTypeType (|Seq#Index| ($Unbox SeqType (_module.__default.fromJust |l#9| ($Unbox DatatypeTypeType (|Seq#Index| |l#10| |i#0|)))) |j#0|)))))) (= |$y#0| ($Box intType (int_2_U (_module.AbsPTE.phys ($Unbox DatatypeTypeType (_module.__default.fromJust |l#11| ($Unbox DatatypeTypeType (|Seq#Index| ($Unbox SeqType (_module.__default.fromJust |l#12| ($Unbox DatatypeTypeType (|Seq#Index| |l#13| |i#0|)))) |j#0|)))))))))
 :qid |Regression4dfy.20:10|
 :skolemid |493|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| ($Unbox SeqType (_module.__default.fromJust |l#14| ($Unbox DatatypeTypeType (|Seq#Index| |l#15| |i#0|)))) |j#0|)))
)))
 :qid |unknown.0:0|
 :skolemid |548|
 :pattern ( (MapType0Select BoxType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6| |l#7| |l#8| |l#9| |l#10| |l#11| |l#12| |l#13| |l#14| |l#15|) |$y#0|))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall ((_module.Maybe$T@@1 T@U) ) (!  (and (= (Tag (Tclass._module.Maybe _module.Maybe$T@@1)) Tagclass._module.Maybe) (= (TagFamily (Tclass._module.Maybe _module.Maybe$T@@1)) tytagFamily$Maybe))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( (Tclass._module.Maybe _module.Maybe$T@@1))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.AbsPTE) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) Tclass._module.AbsPTE)))
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( ($IsBox bx@@1 Tclass._module.AbsPTE))
)))
(assert (forall ((_module.Maybe$T@@2 T@U) (|a#6#0#0| T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) (= ($IsAlloc DatatypeTypeType (|#_module.Maybe.Just| |a#6#0#0|) (Tclass._module.Maybe _module.Maybe$T@@2) $h@@0) ($IsAllocBox |a#6#0#0| _module.Maybe$T@@2 $h@@0)))
 :qid |unknown.0:0|
 :skolemid |520|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Maybe.Just| |a#6#0#0|) (Tclass._module.Maybe _module.Maybe$T@@2) $h@@0))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|pt#0@@0| T@U) ) (!  (=> (or (|_module.__default.WritablePagesInTable#canCall| (Lit SeqType |pt#0@@0|)) (and (< 4 $FunctionContextHeight) ($Is SeqType |pt#0@@0| (TSeq (Tclass._module.Maybe (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE))))))) (and (forall ((|i#1| Int) (|j#1| Int) ) (!  (and (=> (<= (LitInt 0) |i#1|) (=> (< |i#1| (|Seq#Length| (Lit SeqType |pt#0@@0|))) (=> (_module.Maybe.Just_q ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |pt#0@@0|) |i#1|))) (=> (<= (LitInt 0) |j#1|) (and (|_module.__default.fromJust#canCall| (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |pt#0@@0|) |i#1|))) (=> (< |j#1| (|Seq#Length| ($Unbox SeqType (_module.__default.fromJust (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |pt#0@@0|) |i#1|)))))) (and (|_module.__default.fromJust#canCall| (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |pt#0@@0|) |i#1|))) (=> (_module.Maybe.Just_q ($Unbox DatatypeTypeType (|Seq#Index| ($Unbox SeqType (_module.__default.fromJust (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |pt#0@@0|) |i#1|)))) |j#1|))) (and (and (|_module.__default.fromJust#canCall| (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |pt#0@@0|) |i#1|))) (|_module.__default.fromJust#canCall| Tclass._module.AbsPTE ($Unbox DatatypeTypeType (|Seq#Index| ($Unbox SeqType (_module.__default.fromJust (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |pt#0@@0|) |i#1|)))) |j#1|)))) (_module.AbsPTE.AbsPTE_q ($Unbox DatatypeTypeType (_module.__default.fromJust Tclass._module.AbsPTE ($Unbox DatatypeTypeType (|Seq#Index| ($Unbox SeqType (_module.__default.fromJust (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |pt#0@@0|) |i#1|)))) |j#1|)))))))))))))) (=> (and (and (and (and (and (<= (LitInt 0) |i#1|) (< |i#1| (|Seq#Length| (Lit SeqType |pt#0@@0|)))) (_module.Maybe.Just_q ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |pt#0@@0|) |i#1|)))) (and (<= (LitInt 0) |j#1|) (< |j#1| (|Seq#Length| ($Unbox SeqType (_module.__default.fromJust (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |pt#0@@0|) |i#1|)))))))) (_module.Maybe.Just_q ($Unbox DatatypeTypeType (|Seq#Index| ($Unbox SeqType (_module.__default.fromJust (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |pt#0@@0|) |i#1|)))) |j#1|)))) (_module.AbsPTE.write ($Unbox DatatypeTypeType (_module.__default.fromJust Tclass._module.AbsPTE ($Unbox DatatypeTypeType (|Seq#Index| ($Unbox SeqType (_module.__default.fromJust (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |pt#0@@0|) |i#1|)))) |j#1|)))))) (and (and (|_module.__default.fromJust#canCall| (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |pt#0@@0|) |i#1|))) (|_module.__default.fromJust#canCall| Tclass._module.AbsPTE ($Unbox DatatypeTypeType (|Seq#Index| ($Unbox SeqType (_module.__default.fromJust (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |pt#0@@0|) |i#1|)))) |j#1|)))) (_module.AbsPTE.AbsPTE_q ($Unbox DatatypeTypeType (_module.__default.fromJust Tclass._module.AbsPTE ($Unbox DatatypeTypeType (|Seq#Index| ($Unbox SeqType (_module.__default.fromJust (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |pt#0@@0|) |i#1|)))) |j#1|))))))))
 :qid |Regression4dfy.20:10|
 :skolemid |497|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| ($Unbox SeqType (_module.__default.fromJust (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@0| |i#1|)))) |j#1|)))
)) (= (_module.__default.WritablePagesInTable (Lit SeqType |pt#0@@0|)) (|Set#FromBoogieMap| (|lambda#1| (LitInt 0) (|Seq#Length| (Lit SeqType |pt#0@@0|)) (Lit SeqType |pt#0@@0|) (LitInt 0) (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) (Lit SeqType |pt#0@@0|) (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) (Lit SeqType |pt#0@@0|) Tclass._module.AbsPTE (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) (Lit SeqType |pt#0@@0|) Tclass._module.AbsPTE (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) (Lit SeqType |pt#0@@0|) (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) |pt#0@@0|)))))
 :qid |Regression4dfy.18:37|
 :weight 3
 :skolemid |498|
 :pattern ( (_module.__default.WritablePagesInTable (Lit SeqType |pt#0@@0|)))
))))
(assert (forall ((_module.Maybe$T@@3 T@U) (d@@6 T@U) ) (!  (=> ($Is DatatypeTypeType d@@6 (Tclass._module.Maybe _module.Maybe$T@@3)) (or (_module.Maybe.Nothing_q d@@6) (_module.Maybe.Just_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |526|
 :pattern ( (_module.Maybe.Just_q d@@6) ($Is DatatypeTypeType d@@6 (Tclass._module.Maybe _module.Maybe$T@@3)))
 :pattern ( (_module.Maybe.Nothing_q d@@6) ($Is DatatypeTypeType d@@6 (Tclass._module.Maybe _module.Maybe$T@@3)))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TInt) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@2 TInt))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TBool) (and (= ($Box boolType ($Unbox boolType bx@@3)) bx@@3) ($Is boolType ($Unbox boolType bx@@3) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@3 TBool))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.fromJust$T@@2 T@U) (|x#0@@2| T@U) ) (!  (=> (or (|_module.__default.fromJust#canCall| _module._default.fromJust$T@@2 (Lit DatatypeTypeType |x#0@@2|)) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |x#0@@2| (Tclass._module.Maybe _module._default.fromJust$T@@2)) (U_2_bool (Lit boolType (bool_2_U (_module.Maybe.Just_q (Lit DatatypeTypeType |x#0@@2|)))))))) (= (_module.__default.fromJust _module._default.fromJust$T@@2 (Lit DatatypeTypeType |x#0@@2|)) (let ((|v#2| (Lit BoxType (_module.Maybe._h0 (Lit DatatypeTypeType |x#0@@2|)))))
|v#2|)))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |489|
 :pattern ( (_module.__default.fromJust _module._default.fromJust$T@@2 (Lit DatatypeTypeType |x#0@@2|)))
))))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s))
)))
(assert (forall ((v@@2 T@U) (t0@@1 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0) (forall ((bx@@4 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@4) ($IsAllocBox bx@@4 t0@@1 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@4))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SeqType v@@3 (TSeq t0@@2) h@@1) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| v@@3))) ($IsAllocBox (|Seq#Index| v@@3 i) t0@@2 h@@1))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@3 i))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@3 (TSeq t0@@2) h@@1))
)))
(assert (forall ((|a#13#0#0| Int) (|a#13#1#0| T@U) (|a#13#2#0| T@U) ) (! (= (|#_module.AbsPTE.AbsPTE| (LitInt |a#13#0#0|) (U_2_bool (Lit boolType |a#13#1#0|)) (U_2_bool (Lit boolType |a#13#2#0|))) (Lit DatatypeTypeType (|#_module.AbsPTE.AbsPTE| |a#13#0#0| (U_2_bool |a#13#1#0|) (U_2_bool |a#13#2#0|))))
 :qid |Regression4dfy.16:26|
 :skolemid |538|
 :pattern ( (|#_module.AbsPTE.AbsPTE| (LitInt |a#13#0#0|) (U_2_bool (Lit boolType |a#13#1#0|)) (U_2_bool (Lit boolType |a#13#2#0|))))
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
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSeq (TSeq t@@3)) t@@3)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSeq t@@4)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@4))
)))
(assert (forall ((_module.Maybe$T@@4 T@U) ) (! (= (Tclass._module.Maybe_0 (Tclass._module.Maybe _module.Maybe$T@@4)) _module.Maybe$T@@4)
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( (Tclass._module.Maybe _module.Maybe$T@@4))
)))
(assert (forall ((|a#4#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Maybe.Just| |a#4#0#0|)) |##_module.Maybe.Just|)
 :qid |Regression4dfy.5:36|
 :skolemid |515|
 :pattern ( (|#_module.Maybe.Just| |a#4#0#0|))
)))
(assert (forall ((|a#8#0#0| T@U) ) (! (= (_module.Maybe._h0 (|#_module.Maybe.Just| |a#8#0#0|)) |a#8#0#0|)
 :qid |Regression4dfy.5:36|
 :skolemid |523|
 :pattern ( (|#_module.Maybe.Just| |a#8#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((_module.Maybe$T@@5 T@U) (|a#6#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Maybe.Just| |a#6#0#0@@0|) (Tclass._module.Maybe _module.Maybe$T@@5)) ($IsBox |a#6#0#0@@0| _module.Maybe$T@@5))
 :qid |unknown.0:0|
 :skolemid |519|
 :pattern ( ($Is DatatypeTypeType (|#_module.Maybe.Just| |a#6#0#0@@0|) (Tclass._module.Maybe _module.Maybe$T@@5)))
)))
(assert (forall ((|a#9#0#0| T@U) ) (! (< (BoxRank |a#9#0#0|) (DtRank (|#_module.Maybe.Just| |a#9#0#0|)))
 :qid |Regression4dfy.5:36|
 :skolemid |524|
 :pattern ( (|#_module.Maybe.Just| |a#9#0#0|))
)))
(assert (forall ((d@@7 T@U) (_module.Maybe$T@@6 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.Maybe.Just_q d@@7) ($IsAlloc DatatypeTypeType d@@7 (Tclass._module.Maybe _module.Maybe$T@@6) $h@@1))) ($IsAllocBox (_module.Maybe._h0 d@@7) _module.Maybe$T@@6 $h@@1))
 :qid |unknown.0:0|
 :skolemid |521|
 :pattern ( ($IsAllocBox (_module.Maybe._h0 d@@7) _module.Maybe$T@@6 $h@@1))
)))
(assert  (and (and (and (and (and (and (forall ((t0@@3 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@3 t1@@0 t2 (MapType1Store t0@@3 t1@@0 t2 m@@2 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@3 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@3 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@3 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@4 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@4 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))) (= (Ctor refType) 7)) (= (Ctor FieldType) 8)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 9)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2@@0| T@U) (|l#3@@0| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2@@0| |l#3@@0|) $o $f))  (=> (and (or (not (= $o |l#0@@0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@0| $o) |l#2@@0|)))) |l#3@@0|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |547|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2@@0| |l#3@@0|) $o $f))
)))
(assert (forall ((d@@8 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.AbsPTE.AbsPTE_q d@@8) ($IsAlloc DatatypeTypeType d@@8 Tclass._module.AbsPTE $h@@2))) ($IsAlloc intType (int_2_U (_module.AbsPTE.phys d@@8)) TInt $h@@2))
 :qid |unknown.0:0|
 :skolemid |535|
 :pattern ( ($IsAlloc intType (int_2_U (_module.AbsPTE.phys d@@8)) TInt $h@@2))
)))
(assert (forall ((d@@9 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_module.AbsPTE.AbsPTE_q d@@9) ($IsAlloc DatatypeTypeType d@@9 Tclass._module.AbsPTE $h@@3))) ($IsAlloc boolType (bool_2_U (_module.AbsPTE.write d@@9)) TBool $h@@3))
 :qid |unknown.0:0|
 :skolemid |536|
 :pattern ( ($IsAlloc boolType (bool_2_U (_module.AbsPTE.write d@@9)) TBool $h@@3))
)))
(assert (forall ((d@@10 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_module.AbsPTE.AbsPTE_q d@@10) ($IsAlloc DatatypeTypeType d@@10 Tclass._module.AbsPTE $h@@4))) ($IsAlloc boolType (bool_2_U (_module.AbsPTE.exec d@@10)) TBool $h@@4))
 :qid |unknown.0:0|
 :skolemid |537|
 :pattern ( ($IsAlloc boolType (bool_2_U (_module.AbsPTE.exec d@@10)) TBool $h@@4))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|pt#0@@1| T@U) ) (!  (=> (or (|_module.__default.WritablePagesInTable#canCall| |pt#0@@1|) (and (< 4 $FunctionContextHeight) ($Is SeqType |pt#0@@1| (TSeq (Tclass._module.Maybe (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE))))))) (and (forall ((|i#0@@0| Int) (|j#0@@0| Int) ) (!  (and (=> (<= (LitInt 0) |i#0@@0|) (=> (< |i#0@@0| (|Seq#Length| |pt#0@@1|)) (=> (_module.Maybe.Just_q ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@1| |i#0@@0|))) (=> (<= (LitInt 0) |j#0@@0|) (and (|_module.__default.fromJust#canCall| (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@1| |i#0@@0|))) (=> (< |j#0@@0| (|Seq#Length| ($Unbox SeqType (_module.__default.fromJust (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@1| |i#0@@0|)))))) (and (|_module.__default.fromJust#canCall| (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@1| |i#0@@0|))) (=> (_module.Maybe.Just_q ($Unbox DatatypeTypeType (|Seq#Index| ($Unbox SeqType (_module.__default.fromJust (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@1| |i#0@@0|)))) |j#0@@0|))) (and (and (|_module.__default.fromJust#canCall| (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@1| |i#0@@0|))) (|_module.__default.fromJust#canCall| Tclass._module.AbsPTE ($Unbox DatatypeTypeType (|Seq#Index| ($Unbox SeqType (_module.__default.fromJust (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@1| |i#0@@0|)))) |j#0@@0|)))) (_module.AbsPTE.AbsPTE_q ($Unbox DatatypeTypeType (_module.__default.fromJust Tclass._module.AbsPTE ($Unbox DatatypeTypeType (|Seq#Index| ($Unbox SeqType (_module.__default.fromJust (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@1| |i#0@@0|)))) |j#0@@0|)))))))))))))) (=> (and (and (and (and (and (<= (LitInt 0) |i#0@@0|) (< |i#0@@0| (|Seq#Length| |pt#0@@1|))) (_module.Maybe.Just_q ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@1| |i#0@@0|)))) (and (<= (LitInt 0) |j#0@@0|) (< |j#0@@0| (|Seq#Length| ($Unbox SeqType (_module.__default.fromJust (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@1| |i#0@@0|)))))))) (_module.Maybe.Just_q ($Unbox DatatypeTypeType (|Seq#Index| ($Unbox SeqType (_module.__default.fromJust (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@1| |i#0@@0|)))) |j#0@@0|)))) (_module.AbsPTE.write ($Unbox DatatypeTypeType (_module.__default.fromJust Tclass._module.AbsPTE ($Unbox DatatypeTypeType (|Seq#Index| ($Unbox SeqType (_module.__default.fromJust (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@1| |i#0@@0|)))) |j#0@@0|)))))) (and (and (|_module.__default.fromJust#canCall| (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@1| |i#0@@0|))) (|_module.__default.fromJust#canCall| Tclass._module.AbsPTE ($Unbox DatatypeTypeType (|Seq#Index| ($Unbox SeqType (_module.__default.fromJust (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@1| |i#0@@0|)))) |j#0@@0|)))) (_module.AbsPTE.AbsPTE_q ($Unbox DatatypeTypeType (_module.__default.fromJust Tclass._module.AbsPTE ($Unbox DatatypeTypeType (|Seq#Index| ($Unbox SeqType (_module.__default.fromJust (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@1| |i#0@@0|)))) |j#0@@0|))))))))
 :qid |Regression4dfy.20:10|
 :skolemid |494|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| ($Unbox SeqType (_module.__default.fromJust (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@1| |i#0@@0|)))) |j#0@@0|)))
)) (= (_module.__default.WritablePagesInTable |pt#0@@1|) (|Set#FromBoogieMap| (|lambda#1| (LitInt 0) (|Seq#Length| |pt#0@@1|) |pt#0@@1| (LitInt 0) (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) |pt#0@@1| (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) |pt#0@@1| Tclass._module.AbsPTE (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) |pt#0@@1| Tclass._module.AbsPTE (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) |pt#0@@1| (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) |pt#0@@1|)))))
 :qid |Regression4dfy.18:37|
 :skolemid |495|
 :pattern ( (_module.__default.WritablePagesInTable |pt#0@@1|))
))))
(assert (forall ((d@@11 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@11)) (DtRank d@@11))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@11)))
)))
(assert (forall ((bx@@5 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@5 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@5)) bx@@5) ($Is SetType ($Unbox SetType bx@@5) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@5 (TSet t@@5)))
)))
(assert (forall ((bx@@6 T@U) (t@@6 T@U) ) (!  (=> ($IsBox bx@@6 (TSeq t@@6)) (and (= ($Box SeqType ($Unbox SeqType bx@@6)) bx@@6) ($Is SeqType ($Unbox SeqType bx@@6) (TSeq t@@6))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@6 (TSeq t@@6)))
)))
(assert (forall ((_module.Maybe$T@@7 T@U) (bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 (Tclass._module.Maybe _module.Maybe$T@@7)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@7)) bx@@7) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@7) (Tclass._module.Maybe _module.Maybe$T@@7))))
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( ($IsBox bx@@7 (Tclass._module.Maybe _module.Maybe$T@@7)))
)))
(assert (forall ((d@@12 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) ($Is DatatypeTypeType d@@12 Tclass._module.AbsPTE)) ($IsAlloc DatatypeTypeType d@@12 Tclass._module.AbsPTE $h@@5))
 :qid |unknown.0:0|
 :skolemid |542|
 :pattern ( ($IsAlloc DatatypeTypeType d@@12 Tclass._module.AbsPTE $h@@5))
)))
(assert (= (Tag Tclass._module.AbsPTE) Tagclass._module.AbsPTE))
(assert (= (TagFamily Tclass._module.AbsPTE) tytagFamily$AbsPTE))
(assert (= |#_module.Maybe.Nothing| (Lit DatatypeTypeType |#_module.Maybe.Nothing|)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#7#0#0| T@U) ) (! (= (|#_module.Maybe.Just| (Lit BoxType |a#7#0#0|)) (Lit DatatypeTypeType (|#_module.Maybe.Just| |a#7#0#0|)))
 :qid |Regression4dfy.5:36|
 :skolemid |522|
 :pattern ( (|#_module.Maybe.Just| (Lit BoxType |a#7#0#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((s@@0 T@U) ) (!  (=> (= (|Seq#Length| s@@0) 0) (= s@@0 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((h@@2 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@2)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@2))
)))
(assert (forall ((h@@3 T@U) (v@@5 T@U) ) (! ($IsAlloc boolType v@@5 TBool h@@3)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@5 TBool h@@3))
)))
(assert (forall ((v@@6 T@U) (t0@@4 T@U) ) (! (= ($Is SeqType v@@6 (TSeq t0@@4)) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@6))) ($IsBox (|Seq#Index| v@@6 i@@0) t0@@4))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@6 i@@0))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@6 (TSeq t0@@4)))
)))
(assert (forall ((s@@1 T@U) (i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| s@@1))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@1 i@@1))) (|Seq#Rank| s@@1)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@1 i@@1))))
)))
(assert (forall ((v@@7 T@U) ) (! ($Is intType v@@7 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@7 TInt))
)))
(assert (forall ((v@@8 T@U) ) (! ($Is boolType v@@8 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@8 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |i#2@0| () Int)
(declare-fun |pt#0@@2| () T@U)
(declare-fun |j#2@0| () Int)
(declare-fun |##x#5@0| () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun |##x#4@0| () T@U)
(declare-fun |##x#3@0| () T@U)
(declare-fun |##x#2@0| () T@U)
(declare-fun |##x#1@0| () T@U)
(declare-fun |##x#0@0| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.WritablePagesInTable)
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
 (=> (= (ControlFlow 0 0) 34) (let ((anon17_correct true))
(let ((anon27_Else_correct  (=> (and (not (and (and (and (and (and (<= (LitInt 0) |i#2@0|) (< |i#2@0| (|Seq#Length| |pt#0@@2|))) (_module.Maybe.Just_q ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@2| |i#2@0|)))) (and (<= (LitInt 0) |j#2@0|) (< |j#2@0| (|Seq#Length| ($Unbox SeqType (_module.__default.fromJust (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@2| |i#2@0|)))))))) (_module.Maybe.Just_q ($Unbox DatatypeTypeType (|Seq#Index| ($Unbox SeqType (_module.__default.fromJust (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@2| |i#2@0|)))) |j#2@0|)))) (_module.AbsPTE.write ($Unbox DatatypeTypeType (_module.__default.fromJust Tclass._module.AbsPTE ($Unbox DatatypeTypeType (|Seq#Index| ($Unbox SeqType (_module.__default.fromJust (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@2| |i#2@0|)))) |j#2@0|))))))) (= (ControlFlow 0 9) 3)) anon17_correct)))
(let ((anon27_Then_correct  (=> (and (and (and (and (and (<= (LitInt 0) |i#2@0|) (< |i#2@0| (|Seq#Length| |pt#0@@2|))) (_module.Maybe.Just_q ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@2| |i#2@0|)))) (and (<= (LitInt 0) |j#2@0|) (< |j#2@0| (|Seq#Length| ($Unbox SeqType (_module.__default.fromJust (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@2| |i#2@0|)))))))) (_module.Maybe.Just_q ($Unbox DatatypeTypeType (|Seq#Index| ($Unbox SeqType (_module.__default.fromJust (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@2| |i#2@0|)))) |j#2@0|)))) (_module.AbsPTE.write ($Unbox DatatypeTypeType (_module.__default.fromJust Tclass._module.AbsPTE ($Unbox DatatypeTypeType (|Seq#Index| ($Unbox SeqType (_module.__default.fromJust (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@2| |i#2@0|)))) |j#2@0|)))))) (and (=> (= (ControlFlow 0 4) (- 0 8)) (and (<= 0 |i#2@0|) (< |i#2@0| (|Seq#Length| |pt#0@@2|)))) (=> (and (<= 0 |i#2@0|) (< |i#2@0| (|Seq#Length| |pt#0@@2|))) (=> (and (= |##x#5@0| ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@2| |i#2@0|))) ($IsAlloc DatatypeTypeType |##x#5@0| (Tclass._module.Maybe (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE))) $Heap@@0)) (and (=> (= (ControlFlow 0 4) (- 0 7)) (_module.Maybe.Just_q |##x#5@0|)) (=> (and (_module.Maybe.Just_q |##x#5@0|) (|_module.__default.fromJust#canCall| (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@2| |i#2@0|)))) (and (=> (= (ControlFlow 0 4) (- 0 6)) (and (<= 0 |j#2@0|) (< |j#2@0| (|Seq#Length| ($Unbox SeqType (_module.__default.fromJust (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@2| |i#2@0|)))))))) (=> (and (<= 0 |j#2@0|) (< |j#2@0| (|Seq#Length| ($Unbox SeqType (_module.__default.fromJust (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@2| |i#2@0|))))))) (=> (and (= |##x#4@0| ($Unbox DatatypeTypeType (|Seq#Index| ($Unbox SeqType (_module.__default.fromJust (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@2| |i#2@0|)))) |j#2@0|))) ($IsAlloc DatatypeTypeType |##x#4@0| (Tclass._module.Maybe Tclass._module.AbsPTE) $Heap@@0)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (_module.Maybe.Just_q |##x#4@0|)) (=> (_module.Maybe.Just_q |##x#4@0|) (=> (and (and (|_module.__default.fromJust#canCall| Tclass._module.AbsPTE ($Unbox DatatypeTypeType (|Seq#Index| ($Unbox SeqType (_module.__default.fromJust (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@2| |i#2@0|)))) |j#2@0|))) (_module.AbsPTE.AbsPTE_q ($Unbox DatatypeTypeType (_module.__default.fromJust Tclass._module.AbsPTE ($Unbox DatatypeTypeType (|Seq#Index| ($Unbox SeqType (_module.__default.fromJust (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@2| |i#2@0|)))) |j#2@0|)))))) (and (_module.AbsPTE.AbsPTE_q ($Unbox DatatypeTypeType (_module.__default.fromJust Tclass._module.AbsPTE ($Unbox DatatypeTypeType (|Seq#Index| ($Unbox SeqType (_module.__default.fromJust (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@2| |i#2@0|)))) |j#2@0|))))) (= (ControlFlow 0 4) 3))) anon17_correct))))))))))))))
(let ((anon26_Else_correct  (=> (not (and (and (and (and (<= (LitInt 0) |i#2@0|) (< |i#2@0| (|Seq#Length| |pt#0@@2|))) (_module.Maybe.Just_q ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@2| |i#2@0|)))) (and (<= (LitInt 0) |j#2@0|) (< |j#2@0| (|Seq#Length| ($Unbox SeqType (_module.__default.fromJust (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@2| |i#2@0|)))))))) (_module.Maybe.Just_q ($Unbox DatatypeTypeType (|Seq#Index| ($Unbox SeqType (_module.__default.fromJust (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@2| |i#2@0|)))) |j#2@0|))))) (and (=> (= (ControlFlow 0 15) 4) anon27_Then_correct) (=> (= (ControlFlow 0 15) 9) anon27_Else_correct)))))
(let ((anon26_Then_correct  (=> (and (and (and (and (<= (LitInt 0) |i#2@0|) (< |i#2@0| (|Seq#Length| |pt#0@@2|))) (_module.Maybe.Just_q ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@2| |i#2@0|)))) (and (<= (LitInt 0) |j#2@0|) (< |j#2@0| (|Seq#Length| ($Unbox SeqType (_module.__default.fromJust (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@2| |i#2@0|)))))))) (_module.Maybe.Just_q ($Unbox DatatypeTypeType (|Seq#Index| ($Unbox SeqType (_module.__default.fromJust (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@2| |i#2@0|)))) |j#2@0|)))) (and (=> (= (ControlFlow 0 10) (- 0 14)) (and (<= 0 |i#2@0|) (< |i#2@0| (|Seq#Length| |pt#0@@2|)))) (=> (and (<= 0 |i#2@0|) (< |i#2@0| (|Seq#Length| |pt#0@@2|))) (=> (and (= |##x#3@0| ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@2| |i#2@0|))) ($IsAlloc DatatypeTypeType |##x#3@0| (Tclass._module.Maybe (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE))) $Heap@@0)) (and (=> (= (ControlFlow 0 10) (- 0 13)) (_module.Maybe.Just_q |##x#3@0|)) (=> (and (_module.Maybe.Just_q |##x#3@0|) (|_module.__default.fromJust#canCall| (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@2| |i#2@0|)))) (and (=> (= (ControlFlow 0 10) (- 0 12)) (and (<= 0 |j#2@0|) (< |j#2@0| (|Seq#Length| ($Unbox SeqType (_module.__default.fromJust (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@2| |i#2@0|)))))))) (=> (and (<= 0 |j#2@0|) (< |j#2@0| (|Seq#Length| ($Unbox SeqType (_module.__default.fromJust (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@2| |i#2@0|))))))) (=> (and (= |##x#2@0| ($Unbox DatatypeTypeType (|Seq#Index| ($Unbox SeqType (_module.__default.fromJust (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@2| |i#2@0|)))) |j#2@0|))) ($IsAlloc DatatypeTypeType |##x#2@0| (Tclass._module.Maybe Tclass._module.AbsPTE) $Heap@@0)) (and (=> (= (ControlFlow 0 10) (- 0 11)) (_module.Maybe.Just_q |##x#2@0|)) (=> (and (and (_module.Maybe.Just_q |##x#2@0|) (|_module.__default.fromJust#canCall| Tclass._module.AbsPTE ($Unbox DatatypeTypeType (|Seq#Index| ($Unbox SeqType (_module.__default.fromJust (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@2| |i#2@0|)))) |j#2@0|)))) (and (_module.AbsPTE.AbsPTE_q ($Unbox DatatypeTypeType (_module.__default.fromJust Tclass._module.AbsPTE ($Unbox DatatypeTypeType (|Seq#Index| ($Unbox SeqType (_module.__default.fromJust (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@2| |i#2@0|)))) |j#2@0|))))) (_module.AbsPTE.AbsPTE_q ($Unbox DatatypeTypeType (_module.__default.fromJust Tclass._module.AbsPTE ($Unbox DatatypeTypeType (|Seq#Index| ($Unbox SeqType (_module.__default.fromJust (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@2| |i#2@0|)))) |j#2@0|))))))) (and (=> (= (ControlFlow 0 10) 4) anon27_Then_correct) (=> (= (ControlFlow 0 10) 9) anon27_Else_correct)))))))))))))))
(let ((anon25_Else_correct  (=> (not (and (and (and (<= (LitInt 0) |i#2@0|) (< |i#2@0| (|Seq#Length| |pt#0@@2|))) (_module.Maybe.Just_q ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@2| |i#2@0|)))) (and (<= (LitInt 0) |j#2@0|) (< |j#2@0| (|Seq#Length| ($Unbox SeqType (_module.__default.fromJust (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@2| |i#2@0|))))))))) (and (=> (= (ControlFlow 0 20) 10) anon26_Then_correct) (=> (= (ControlFlow 0 20) 15) anon26_Else_correct)))))
(let ((anon25_Then_correct  (=> (and (and (and (<= (LitInt 0) |i#2@0|) (< |i#2@0| (|Seq#Length| |pt#0@@2|))) (_module.Maybe.Just_q ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@2| |i#2@0|)))) (and (<= (LitInt 0) |j#2@0|) (< |j#2@0| (|Seq#Length| ($Unbox SeqType (_module.__default.fromJust (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@2| |i#2@0|)))))))) (and (=> (= (ControlFlow 0 16) (- 0 19)) (and (<= 0 |i#2@0|) (< |i#2@0| (|Seq#Length| |pt#0@@2|)))) (=> (and (<= 0 |i#2@0|) (< |i#2@0| (|Seq#Length| |pt#0@@2|))) (=> (and (= |##x#1@0| ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@2| |i#2@0|))) ($IsAlloc DatatypeTypeType |##x#1@0| (Tclass._module.Maybe (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE))) $Heap@@0)) (and (=> (= (ControlFlow 0 16) (- 0 18)) (_module.Maybe.Just_q |##x#1@0|)) (=> (and (_module.Maybe.Just_q |##x#1@0|) (|_module.__default.fromJust#canCall| (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@2| |i#2@0|)))) (and (=> (= (ControlFlow 0 16) (- 0 17)) (and (<= 0 |j#2@0|) (< |j#2@0| (|Seq#Length| ($Unbox SeqType (_module.__default.fromJust (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@2| |i#2@0|)))))))) (=> (and (<= 0 |j#2@0|) (< |j#2@0| (|Seq#Length| ($Unbox SeqType (_module.__default.fromJust (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@2| |i#2@0|))))))) (and (=> (= (ControlFlow 0 16) 10) anon26_Then_correct) (=> (= (ControlFlow 0 16) 15) anon26_Else_correct))))))))))))
(let ((anon24_Else_correct  (=> (< |j#2@0| (LitInt 0)) (and (=> (= (ControlFlow 0 25) 16) anon25_Then_correct) (=> (= (ControlFlow 0 25) 20) anon25_Else_correct)))))
(let ((anon24_Then_correct  (=> (<= (LitInt 0) |j#2@0|) (and (=> (= (ControlFlow 0 22) (- 0 24)) (and (<= 0 |i#2@0|) (< |i#2@0| (|Seq#Length| |pt#0@@2|)))) (=> (and (<= 0 |i#2@0|) (< |i#2@0| (|Seq#Length| |pt#0@@2|))) (=> (and (= |##x#0@0| ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@2| |i#2@0|))) ($IsAlloc DatatypeTypeType |##x#0@0| (Tclass._module.Maybe (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE))) $Heap@@0)) (and (=> (= (ControlFlow 0 22) (- 0 23)) (_module.Maybe.Just_q |##x#0@0|)) (=> (and (_module.Maybe.Just_q |##x#0@0|) (|_module.__default.fromJust#canCall| (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)) ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@2| |i#2@0|)))) (and (=> (= (ControlFlow 0 22) 16) anon25_Then_correct) (=> (= (ControlFlow 0 22) 20) anon25_Else_correct))))))))))
(let ((anon23_Then_correct  (=> (and (and (<= (LitInt 0) |i#2@0|) (< |i#2@0| (|Seq#Length| |pt#0@@2|))) (_module.Maybe.Just_q ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@2| |i#2@0|)))) (and (=> (= (ControlFlow 0 26) 22) anon24_Then_correct) (=> (= (ControlFlow 0 26) 25) anon24_Else_correct)))))
(let ((anon23_Else_correct  (=> (not (and (and (<= (LitInt 0) |i#2@0|) (< |i#2@0| (|Seq#Length| |pt#0@@2|))) (_module.Maybe.Just_q ($Unbox DatatypeTypeType (|Seq#Index| |pt#0@@2| |i#2@0|))))) (and (=> (= (ControlFlow 0 21) 16) anon25_Then_correct) (=> (= (ControlFlow 0 21) 20) anon25_Else_correct)))))
(let ((anon22_Else_correct  (=> (not (and (<= (LitInt 0) |i#2@0|) (< |i#2@0| (|Seq#Length| |pt#0@@2|)))) (and (=> (= (ControlFlow 0 29) 26) anon23_Then_correct) (=> (= (ControlFlow 0 29) 21) anon23_Else_correct)))))
(let ((anon22_Then_correct  (=> (and (<= (LitInt 0) |i#2@0|) (< |i#2@0| (|Seq#Length| |pt#0@@2|))) (and (=> (= (ControlFlow 0 27) (- 0 28)) (and (<= 0 |i#2@0|) (< |i#2@0| (|Seq#Length| |pt#0@@2|)))) (=> (and (<= 0 |i#2@0|) (< |i#2@0| (|Seq#Length| |pt#0@@2|))) (and (=> (= (ControlFlow 0 27) 26) anon23_Then_correct) (=> (= (ControlFlow 0 27) 21) anon23_Else_correct)))))))
(let ((anon21_Else_correct  (=> (< |i#2@0| (LitInt 0)) (and (=> (= (ControlFlow 0 31) 27) anon22_Then_correct) (=> (= (ControlFlow 0 31) 29) anon22_Else_correct)))))
(let ((anon21_Then_correct  (=> (<= (LitInt 0) |i#2@0|) (and (=> (= (ControlFlow 0 30) 27) anon22_Then_correct) (=> (= (ControlFlow 0 30) 29) anon22_Else_correct)))))
(let ((anon20_Then_correct  (and (=> (= (ControlFlow 0 32) 30) anon21_Then_correct) (=> (= (ControlFlow 0 32) 31) anon21_Else_correct))))
(let ((anon20_Else_correct true))
(let ((anon19_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap@@0 alloc false)) (and (and (=> (= (ControlFlow 0 33) 1) anon19_Then_correct) (=> (= (ControlFlow 0 33) 32) anon20_Then_correct)) (=> (= (ControlFlow 0 33) 2) anon20_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) ($Is SeqType |pt#0@@2| (TSeq (Tclass._module.Maybe (TSeq (Tclass._module.Maybe Tclass._module.AbsPTE)))))) (and (= 4 $FunctionContextHeight) (= (ControlFlow 0 34) 33))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
