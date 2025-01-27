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
(declare-fun TChar () T@U)
(declare-fun TInt () T@U)
(declare-fun TagChar () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun Tagclass._System.___hPartialFunc1 () T@U)
(declare-fun Tagclass._System.___hTotalFunc1 () T@U)
(declare-fun Tagclass._module.List () T@U)
(declare-fun Tagclass._module.instr () T@U)
(declare-fun |##_module.List.Nil| () T@U)
(declare-fun |##_module.List.Cons| () T@U)
(declare-fun |##_module.instr.LOADI| () T@U)
(declare-fun |##_module.instr.LOAD| () T@U)
(declare-fun |##_module.instr.ADD| () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
(declare-fun |tytagFamily$_#PartialFunc1| () T@U)
(declare-fun |tytagFamily$_#TotalFunc1| () T@U)
(declare-fun tytagFamily$List () T@U)
(declare-fun tytagFamily$instr () T@U)
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
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |#_module.instr.LOAD| (T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.List.Nil| () T@U)
(declare-fun |#_module.instr.ADD| () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.exec1 (T@U T@U T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.__default.exec1#canCall| (T@U T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._module.instr () T@U)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hTotalFunc1 (T@U T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun Tclass._module.List (T@U) T@U)
(declare-fun _module.instr.LOADI_q (T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun _module.instr._h12 (T@U) Int)
(declare-fun |#_module.List.Cons| (T@U T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun _module.instr.LOAD_q (T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun _module.instr._h13 (T@U) T@U)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun _module.List.Cons_q (T@U) Bool)
(declare-fun _module.List.tail (T@U) T@U)
(declare-fun _module.List.head (T@U) T@U)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Reads1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun _module.List.Nil_q (T@U) Bool)
(declare-fun _module.instr.ADD_q (T@U) Bool)
(declare-fun |#_module.instr.LOADI| (Int) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun charType () T@T)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1 (T@U T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_1 (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass._module.List_0 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun |Seq#Rank| (T@U) Int)
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
(assert (distinct TChar TInt TagChar TagInt TagSeq alloc Tagclass._System.___hFunc1 Tagclass._System.___hPartialFunc1 Tagclass._System.___hTotalFunc1 Tagclass._module.List Tagclass._module.instr |##_module.List.Nil| |##_module.List.Cons| |##_module.instr.LOADI| |##_module.instr.LOAD| |##_module.instr.ADD| |tytagFamily$_#Func1| |tytagFamily$_#PartialFunc1| |tytagFamily$_#TotalFunc1| tytagFamily$List tytagFamily$instr)
)
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#69#0#0| T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| |a#69#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#69#0#0| i))) (DtRank (|#_module.instr.LOAD| |a#69#0#0|))))
 :qid |NipkowKleinchapter3dfy.199:36|
 :skolemid |831|
 :pattern ( (|Seq#Index| |a#69#0#0| i) (|#_module.instr.LOAD| |a#69#0#0|))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#_module.List.Nil|) |##_module.List.Nil|))
(assert (= (DatatypeCtorId |#_module.instr.ADD|) |##_module.instr.ADD|))
(assert  (and (= (Ctor HandleTypeType) 4) (= (Ctor SeqType) 5)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap T@U) (|i#0| T@U) (|s#0| T@U) (|stk#0| T@U) ) (!  (=> (or (|_module.__default.exec1#canCall| (Lit DatatypeTypeType |i#0|) |s#0| (Lit DatatypeTypeType |stk#0|)) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap) ($Is DatatypeTypeType |i#0| Tclass._module.instr)) ($Is HandleTypeType |s#0| (Tclass._System.___hTotalFunc1 (TSeq TChar) TInt))) ($Is DatatypeTypeType |stk#0| (Tclass._module.List TInt))))) (= (_module.__default.exec1 (Lit DatatypeTypeType |i#0|) |s#0| (Lit DatatypeTypeType |stk#0|)) (ite (_module.instr.LOADI_q (Lit DatatypeTypeType |i#0|)) (let ((|n#2| (LitInt (_module.instr._h12 (Lit DatatypeTypeType |i#0|)))))
(Lit DatatypeTypeType (|#_module.List.Cons| ($Box intType (int_2_U |n#2|)) (Lit DatatypeTypeType |stk#0|)))) (ite (_module.instr.LOAD_q (Lit DatatypeTypeType |i#0|)) (let ((|x#2| (Lit SeqType (_module.instr._h13 (Lit DatatypeTypeType |i#0|)))))
(|#_module.List.Cons| (Apply1 (TSeq TChar) TInt $Heap |s#0| ($Box SeqType |x#2|)) (Lit DatatypeTypeType |stk#0|))) (ite  (and (_module.List.Cons_q (Lit DatatypeTypeType |stk#0|)) (_module.List.Cons_q (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |stk#0|))))) (let ((|tail#2| (_module.List.tail (_module.List.tail (Lit DatatypeTypeType |stk#0|)))))
(let ((|a0#2| (U_2_int ($Unbox intType (_module.List.head (_module.List.tail (Lit DatatypeTypeType |stk#0|)))))))
(let ((|a1#2| (U_2_int ($Unbox intType (_module.List.head (Lit DatatypeTypeType |stk#0|))))))
(|#_module.List.Cons| ($Box intType (int_2_U (+ |a0#2| |a1#2|))) |tail#2|)))) |#_module.List.Nil|)))))
 :qid |NipkowKleinchapter3dfy.203:16|
 :weight 3
 :skolemid |680|
 :pattern ( (_module.__default.exec1 (Lit DatatypeTypeType |i#0|) |s#0| (Lit DatatypeTypeType |stk#0|)) ($IsGoodHeap $Heap))
))))
(assert (forall ((f T@U) (t0 T@U) (t1 T@U) (u0 T@U) (u1 T@U) ) (!  (=> (and (and ($Is HandleTypeType f (Tclass._System.___hFunc1 t0 t1)) (forall ((bx T@U) ) (!  (=> ($IsBox bx u0) ($IsBox bx t0))
 :qid |unknown.0:0|
 :skolemid |389|
 :pattern ( ($IsBox bx u0))
 :pattern ( ($IsBox bx t0))
))) (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 t1) ($IsBox bx@@0 u1))
 :qid |unknown.0:0|
 :skolemid |390|
 :pattern ( ($IsBox bx@@0 t1))
 :pattern ( ($IsBox bx@@0 u1))
))) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0 u1)))
 :qid |unknown.0:0|
 :skolemid |391|
 :pattern ( ($Is HandleTypeType f (Tclass._System.___hFunc1 t0 t1)) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0 u1)))
)))
(assert ($Is DatatypeTypeType |#_module.instr.ADD| Tclass._module.instr))
(assert (forall ((_module.List$T T@U) ) (! ($Is DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T))
 :qid |unknown.0:0|
 :skolemid |709|
 :pattern ( ($Is DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T)))
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
(assert (forall ((t0@@0 T@U) (t1@@0 T@U) (heap T@U) (f@@0 T@U) (bx0 T@U) ) (!  (=> (and ($IsGoodHeap heap) (and ($IsBox bx0 t0@@0) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@0 t1@@0)))) (= (|Set#Equal| (Reads1 t0@@0 t1@@0 $OneHeap f@@0 bx0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@0 t1@@0 heap f@@0 bx0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |385|
 :pattern ( (Reads1 t0@@0 t1@@0 $OneHeap f@@0 bx0) ($IsGoodHeap heap))
 :pattern ( (Reads1 t0@@0 t1@@0 heap f@@0 bx0))
)))
(assert (forall ((_module.List$T@@0 T@U) (|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass._module.List _module.List$T@@0))  (and ($IsBox |a#6#0#0| _module.List$T@@0) ($Is DatatypeTypeType |a#6#1#0| (Tclass._module.List _module.List$T@@0))))
 :qid |unknown.0:0|
 :skolemid |715|
 :pattern ( ($Is DatatypeTypeType (|#_module.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass._module.List _module.List$T@@0)))
)))
(assert (forall ((d T@U) ) (! (= (_module.List.Nil_q d) (= (DatatypeCtorId d) |##_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |707|
 :pattern ( (_module.List.Nil_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.List.Cons_q d@@0) (= (DatatypeCtorId d@@0) |##_module.List.Cons|))
 :qid |unknown.0:0|
 :skolemid |712|
 :pattern ( (_module.List.Cons_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.instr.LOADI_q d@@1) (= (DatatypeCtorId d@@1) |##_module.instr.LOADI|))
 :qid |unknown.0:0|
 :skolemid |816|
 :pattern ( (_module.instr.LOADI_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.instr.LOAD_q d@@2) (= (DatatypeCtorId d@@2) |##_module.instr.LOAD|))
 :qid |unknown.0:0|
 :skolemid |824|
 :pattern ( (_module.instr.LOAD_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (_module.instr.ADD_q d@@3) (= (DatatypeCtorId d@@3) |##_module.instr.ADD|))
 :qid |unknown.0:0|
 :skolemid |833|
 :pattern ( (_module.instr.ADD_q d@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.List.Cons_q d@@4) (exists ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= d@@4 (|#_module.List.Cons| |a#5#0#0| |a#5#1#0|))
 :qid |NipkowKleinchapter3dfy.9:31|
 :skolemid |713|
)))
 :qid |unknown.0:0|
 :skolemid |714|
 :pattern ( (_module.List.Cons_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (_module.List.Nil_q d@@5) (= d@@5 |#_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |708|
 :pattern ( (_module.List.Nil_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (_module.instr.ADD_q d@@6) (= d@@6 |#_module.instr.ADD|))
 :qid |unknown.0:0|
 :skolemid |834|
 :pattern ( (_module.instr.ADD_q d@@6))
)))
(assert (forall ((d@@7 T@U) ) (!  (=> (_module.instr.LOADI_q d@@7) (exists ((|a#60#0#0| Int) ) (! (= d@@7 (|#_module.instr.LOADI| |a#60#0#0|))
 :qid |NipkowKleinchapter3dfy.199:24|
 :skolemid |817|
)))
 :qid |unknown.0:0|
 :skolemid |818|
 :pattern ( (_module.instr.LOADI_q d@@7))
)))
(assert (forall ((d@@8 T@U) ) (!  (=> (_module.instr.LOAD_q d@@8) (exists ((|a#65#0#0| T@U) ) (! (= d@@8 (|#_module.instr.LOAD| |a#65#0#0|))
 :qid |NipkowKleinchapter3dfy.199:36|
 :skolemid |825|
)))
 :qid |unknown.0:0|
 :skolemid |826|
 :pattern ( (_module.instr.LOAD_q d@@8))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((_module.List$T@@1 T@U) ) (!  (and (= (Tag (Tclass._module.List _module.List$T@@1)) Tagclass._module.List) (= (TagFamily (Tclass._module.List _module.List$T@@1)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |583|
 :pattern ( (Tclass._module.List _module.List$T@@1))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.instr) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) Tclass._module.instr)))
 :qid |unknown.0:0|
 :skolemid |676|
 :pattern ( ($IsBox bx@@1 Tclass._module.instr))
)))
(assert (forall ((_module.List$T@@2 T@U) (d@@9 T@U) ) (!  (=> ($Is DatatypeTypeType d@@9 (Tclass._module.List _module.List$T@@2)) (or (_module.List.Nil_q d@@9) (_module.List.Cons_q d@@9)))
 :qid |unknown.0:0|
 :skolemid |725|
 :pattern ( (_module.List.Cons_q d@@9) ($Is DatatypeTypeType d@@9 (Tclass._module.List _module.List$T@@2)))
 :pattern ( (_module.List.Nil_q d@@9) ($Is DatatypeTypeType d@@9 (Tclass._module.List _module.List$T@@2)))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a b))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@0 T@U) (|i#0@@0| T@U) (|s#0@@0| T@U) (|stk#0@@0| T@U) ) (!  (=> (or (|_module.__default.exec1#canCall| |i#0@@0| |s#0@@0| |stk#0@@0|) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@0) ($Is DatatypeTypeType |i#0@@0| Tclass._module.instr)) ($Is HandleTypeType |s#0@@0| (Tclass._System.___hTotalFunc1 (TSeq TChar) TInt))) ($Is DatatypeTypeType |stk#0@@0| (Tclass._module.List TInt))))) (= (_module.__default.exec1 |i#0@@0| |s#0@@0| |stk#0@@0|) (ite (_module.instr.LOADI_q |i#0@@0|) (let ((|n#0| (_module.instr._h12 |i#0@@0|)))
(|#_module.List.Cons| ($Box intType (int_2_U |n#0|)) |stk#0@@0|)) (ite (_module.instr.LOAD_q |i#0@@0|) (let ((|x#0| (_module.instr._h13 |i#0@@0|)))
(|#_module.List.Cons| (Apply1 (TSeq TChar) TInt $Heap@@0 |s#0@@0| ($Box SeqType |x#0|)) |stk#0@@0|)) (ite  (and (_module.List.Cons_q |stk#0@@0|) (_module.List.Cons_q (_module.List.tail |stk#0@@0|))) (let ((|tail#0| (_module.List.tail (_module.List.tail |stk#0@@0|))))
(let ((|a0#0| (U_2_int ($Unbox intType (_module.List.head (_module.List.tail |stk#0@@0|))))))
(let ((|a1#0| (U_2_int ($Unbox intType (_module.List.head |stk#0@@0|)))))
(|#_module.List.Cons| ($Box intType (int_2_U (+ |a0#0| |a1#0|))) |tail#0|)))) |#_module.List.Nil|)))))
 :qid |NipkowKleinchapter3dfy.203:16|
 :skolemid |679|
 :pattern ( (_module.__default.exec1 |i#0@@0| |s#0@@0| |stk#0@@0|) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((f@@1 T@U) (t0@@1 T@U) (t1@@1 T@U) ) (! (= ($Is HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@1 t1@@1)) (forall ((h T@U) (bx0@@0 T@U) ) (!  (=> (and (and ($IsGoodHeap h) ($IsBox bx0@@0 t0@@1)) (Requires1 t0@@1 t1@@1 h f@@1 bx0@@0)) ($IsBox (Apply1 t0@@1 t1@@1 h f@@1 bx0@@0) t1@@1))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |387|
 :pattern ( (Apply1 t0@@1 t1@@1 h f@@1 bx0@@0))
)))
 :qid |unknown.0:0|
 :skolemid |388|
 :pattern ( ($Is HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@1 t1@@1)))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TInt) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@2 TInt))
)))
(assert (= (Ctor charType) 6))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TChar) (and (= ($Box charType ($Unbox charType bx@@3)) bx@@3) ($Is charType ($Unbox charType bx@@3) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |30|
 :pattern ( ($IsBox bx@@3 TChar))
)))
(assert (forall ((v T@U) (t T@U) (T@@1 T@T) ) (! (= ($IsBox ($Box T@@1 v) t) ($Is T@@1 v t))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@1 v) t))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s))
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
(assert (forall ((|#$T0@@1| T@U) (|#$R@@1| T@U) ) (! (= (Tclass._System.___hPartialFunc1_0 (Tclass._System.___hPartialFunc1 |#$T0@@1| |#$R@@1|)) |#$T0@@1|)
 :qid |unknown.0:0|
 :skolemid |398|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@1| |#$R@@1|))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$R@@2| T@U) ) (! (= (Tclass._System.___hPartialFunc1_1 (Tclass._System.___hPartialFunc1 |#$T0@@2| |#$R@@2|)) |#$R@@2|)
 :qid |unknown.0:0|
 :skolemid |399|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@2| |#$R@@2|))
)))
(assert (forall ((|#$T0@@3| T@U) (|#$R@@3| T@U) ) (! (= (Tclass._System.___hTotalFunc1_0 (Tclass._System.___hTotalFunc1 |#$T0@@3| |#$R@@3|)) |#$T0@@3|)
 :qid |unknown.0:0|
 :skolemid |405|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@3| |#$R@@3|))
)))
(assert (forall ((|#$T0@@4| T@U) (|#$R@@4| T@U) ) (! (= (Tclass._System.___hTotalFunc1_1 (Tclass._System.___hTotalFunc1 |#$T0@@4| |#$R@@4|)) |#$R@@4|)
 :qid |unknown.0:0|
 :skolemid |406|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@4| |#$R@@4|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.List.Cons| |a#4#0#0| |a#4#1#0|)) |##_module.List.Cons|)
 :qid |NipkowKleinchapter3dfy.9:31|
 :skolemid |711|
 :pattern ( (|#_module.List.Cons| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) ) (! (= (_module.List.head (|#_module.List.Cons| |a#8#0#0| |a#8#1#0|)) |a#8#0#0|)
 :qid |NipkowKleinchapter3dfy.9:31|
 :skolemid |720|
 :pattern ( (|#_module.List.Cons| |a#8#0#0| |a#8#1#0|))
)))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| T@U) ) (! (= (_module.List.tail (|#_module.List.Cons| |a#10#0#0| |a#10#1#0|)) |a#10#1#0|)
 :qid |NipkowKleinchapter3dfy.9:31|
 :skolemid |722|
 :pattern ( (|#_module.List.Cons| |a#10#0#0| |a#10#1#0|))
)))
(assert (forall ((t@@0 T@U) ) (! (= (Inv0_TSeq (TSeq t@@0)) t@@0)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@0))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Tag (TSeq t@@1)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@1))
)))
(assert (forall ((_module.List$T@@3 T@U) ) (! (= (Tclass._module.List_0 (Tclass._module.List _module.List$T@@3)) _module.List$T@@3)
 :qid |unknown.0:0|
 :skolemid |584|
 :pattern ( (Tclass._module.List _module.List$T@@3))
)))
(assert (forall ((|a#59#0#0| Int) ) (! (= (DatatypeCtorId (|#_module.instr.LOADI| |a#59#0#0|)) |##_module.instr.LOADI|)
 :qid |NipkowKleinchapter3dfy.199:24|
 :skolemid |815|
 :pattern ( (|#_module.instr.LOADI| |a#59#0#0|))
)))
(assert (forall ((|a#63#0#0| Int) ) (! (= (_module.instr._h12 (|#_module.instr.LOADI| |a#63#0#0|)) |a#63#0#0|)
 :qid |NipkowKleinchapter3dfy.199:24|
 :skolemid |822|
 :pattern ( (|#_module.instr.LOADI| |a#63#0#0|))
)))
(assert (forall ((|a#64#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.instr.LOAD| |a#64#0#0|)) |##_module.instr.LOAD|)
 :qid |NipkowKleinchapter3dfy.199:36|
 :skolemid |823|
 :pattern ( (|#_module.instr.LOAD| |a#64#0#0|))
)))
(assert (forall ((|a#68#0#0| T@U) ) (! (= (_module.instr._h13 (|#_module.instr.LOAD| |a#68#0#0|)) |a#68#0#0|)
 :qid |NipkowKleinchapter3dfy.199:36|
 :skolemid |830|
 :pattern ( (|#_module.instr.LOAD| |a#68#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@5))
)))
(assert (forall ((|a#9#0#0| T@U) (|a#9#1#0| T@U) ) (! (< (BoxRank |a#9#0#0|) (DtRank (|#_module.List.Cons| |a#9#0#0| |a#9#1#0|)))
 :qid |NipkowKleinchapter3dfy.9:31|
 :skolemid |721|
 :pattern ( (|#_module.List.Cons| |a#9#0#0| |a#9#1#0|))
)))
(assert (forall ((|a#11#0#0| T@U) (|a#11#1#0| T@U) ) (! (< (DtRank |a#11#1#0|) (DtRank (|#_module.List.Cons| |a#11#0#0| |a#11#1#0|)))
 :qid |NipkowKleinchapter3dfy.9:31|
 :skolemid |723|
 :pattern ( (|#_module.List.Cons| |a#11#0#0| |a#11#1#0|))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|i#0@@1| T@U) (|s#0@@1| T@U) (|stk#0@@1| T@U) ) (!  (=> (or (|_module.__default.exec1#canCall| |i#0@@1| |s#0@@1| |stk#0@@1|) (and (< 2 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |i#0@@1| Tclass._module.instr) ($Is HandleTypeType |s#0@@1| (Tclass._System.___hTotalFunc1 (TSeq TChar) TInt))) ($Is DatatypeTypeType |stk#0@@1| (Tclass._module.List TInt))))) ($Is DatatypeTypeType (_module.__default.exec1 |i#0@@1| |s#0@@1| |stk#0@@1|) (Tclass._module.List TInt)))
 :qid |NipkowKleinchapter3dfy.203:22|
 :skolemid |677|
 :pattern ( (_module.__default.exec1 |i#0@@1| |s#0@@1| |stk#0@@1|))
))))
(assert (forall ((|#$T0@@5| T@U) (|#$R@@5| T@U) (|f#0| T@U) ) (! (= ($Is HandleTypeType |f#0| (Tclass._System.___hTotalFunc1 |#$T0@@5| |#$R@@5|))  (and ($Is HandleTypeType |f#0| (Tclass._System.___hPartialFunc1 |#$T0@@5| |#$R@@5|)) (forall ((|x0#0| T@U) ) (!  (=> ($IsBox |x0#0| |#$T0@@5|) (Requires1 |#$T0@@5| |#$R@@5| $OneHeap |f#0| |x0#0|))
 :qid |unknown.0:0|
 :skolemid |408|
))))
 :qid |unknown.0:0|
 :skolemid |409|
 :pattern ( ($Is HandleTypeType |f#0| (Tclass._System.___hTotalFunc1 |#$T0@@5| |#$R@@5|)))
)))
(assert (forall ((|#$T0@@6| T@U) (|#$R@@6| T@U) (|f#0@@0| T@U) ) (! (= ($Is HandleTypeType |f#0@@0| (Tclass._System.___hPartialFunc1 |#$T0@@6| |#$R@@6|))  (and ($Is HandleTypeType |f#0@@0| (Tclass._System.___hFunc1 |#$T0@@6| |#$R@@6|)) (forall ((|x0#0@@0| T@U) ) (!  (=> ($IsBox |x0#0@@0| |#$T0@@6|) (|Set#Equal| (Reads1 |#$T0@@6| |#$R@@6| $OneHeap |f#0@@0| |x0#0@@0|) |Set#Empty|))
 :qid |unknown.0:0|
 :skolemid |401|
))))
 :qid |unknown.0:0|
 :skolemid |402|
 :pattern ( ($Is HandleTypeType |f#0@@0| (Tclass._System.___hPartialFunc1 |#$T0@@6| |#$R@@6|)))
)))
(assert (forall ((|a#61#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.instr.LOADI| |a#61#0#0|) Tclass._module.instr) ($Is intType (int_2_U |a#61#0#0|) TInt))
 :qid |NipkowKleinchapter3dfy.199:24|
 :skolemid |819|
 :pattern ( ($Is DatatypeTypeType (|#_module.instr.LOADI| |a#61#0#0|) Tclass._module.instr))
)))
(assert (forall ((|#$T0@@7| T@U) (|#$R@@7| T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass._System.___hFunc1 |#$T0@@7| |#$R@@7|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@4)) bx@@4) ($Is HandleTypeType ($Unbox HandleTypeType bx@@4) (Tclass._System.___hFunc1 |#$T0@@7| |#$R@@7|))))
 :qid |unknown.0:0|
 :skolemid |369|
 :pattern ( ($IsBox bx@@4 (Tclass._System.___hFunc1 |#$T0@@7| |#$R@@7|)))
)))
(assert (forall ((|#$T0@@8| T@U) (|#$R@@8| T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@5)) bx@@5) ($Is HandleTypeType ($Unbox HandleTypeType bx@@5) (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|))))
 :qid |unknown.0:0|
 :skolemid |400|
 :pattern ( ($IsBox bx@@5 (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|)))
)))
(assert (forall ((|#$T0@@9| T@U) (|#$R@@9| T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass._System.___hTotalFunc1 |#$T0@@9| |#$R@@9|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@6)) bx@@6) ($Is HandleTypeType ($Unbox HandleTypeType bx@@6) (Tclass._System.___hTotalFunc1 |#$T0@@9| |#$R@@9|))))
 :qid |unknown.0:0|
 :skolemid |407|
 :pattern ( ($IsBox bx@@6 (Tclass._System.___hTotalFunc1 |#$T0@@9| |#$R@@9|)))
)))
(assert (forall ((|a#70#0#0| T@U) ) (! (< (|Seq#Rank| |a#70#0#0|) (DtRank (|#_module.instr.LOAD| |a#70#0#0|)))
 :qid |NipkowKleinchapter3dfy.199:36|
 :skolemid |832|
 :pattern ( (|#_module.instr.LOAD| |a#70#0#0|))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0@@2 T@T) (t1@@2 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0@@2 t1@@2 t2 (MapType0Store t0@@2 t1@@2 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0@@0 u1@@0 u2 (MapType0Store u0@@0 u1@@0 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0@@0 u1@@0 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@1 u1@@1 u2@@0 (MapType0Store u0@@1 u1@@1 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@1 u1@@1 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 7)) (= (Ctor FieldType) 8)) (forall ((t0@@3 T@T) (t1@@3 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@3 t1@@3 (MapType1Store t0@@3 t1@@3 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@2 T@T) (u1@@2 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@2 u1@@2 (MapType1Store u0@@2 u1@@2 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@2 u1@@2 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (= (Ctor BoxType) 9)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 10)
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
 :skolemid |842|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((|#$T0@@10| T@U) (|#$R@@10| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@10| |#$R@@10|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@10| |#$R@@10|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |366|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@10| |#$R@@10|))
)))
(assert (forall ((|#$T0@@11| T@U) (|#$R@@11| T@U) ) (!  (and (= (Tag (Tclass._System.___hPartialFunc1 |#$T0@@11| |#$R@@11|)) Tagclass._System.___hPartialFunc1) (= (TagFamily (Tclass._System.___hPartialFunc1 |#$T0@@11| |#$R@@11|)) |tytagFamily$_#PartialFunc1|))
 :qid |unknown.0:0|
 :skolemid |397|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@11| |#$R@@11|))
)))
(assert (forall ((|#$T0@@12| T@U) (|#$R@@12| T@U) ) (!  (and (= (Tag (Tclass._System.___hTotalFunc1 |#$T0@@12| |#$R@@12|)) Tagclass._System.___hTotalFunc1) (= (TagFamily (Tclass._System.___hTotalFunc1 |#$T0@@12| |#$R@@12|)) |tytagFamily$_#TotalFunc1|))
 :qid |unknown.0:0|
 :skolemid |404|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@12| |#$R@@12|))
)))
(assert (forall ((d@@10 T@U) ) (!  (=> ($Is DatatypeTypeType d@@10 Tclass._module.instr) (or (or (_module.instr.LOADI_q d@@10) (_module.instr.LOAD_q d@@10)) (_module.instr.ADD_q d@@10)))
 :qid |unknown.0:0|
 :skolemid |837|
 :pattern ( (_module.instr.ADD_q d@@10) ($Is DatatypeTypeType d@@10 Tclass._module.instr))
 :pattern ( (_module.instr.LOAD_q d@@10) ($Is DatatypeTypeType d@@10 Tclass._module.instr))
 :pattern ( (_module.instr.LOADI_q d@@10) ($Is DatatypeTypeType d@@10 Tclass._module.instr))
)))
(assert (forall ((t0@@4 T@U) (t1@@4 T@U) (heap@@0 T@U) (f@@2 T@U) (bx0@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@0) (and ($IsBox bx0@@1 t0@@4) ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@4 t1@@4)))) (|Set#Equal| (Reads1 t0@@4 t1@@4 $OneHeap f@@2 bx0@@1) |Set#Empty|)) (= (Requires1 t0@@4 t1@@4 $OneHeap f@@2 bx0@@1) (Requires1 t0@@4 t1@@4 heap@@0 f@@2 bx0@@1)))
 :qid |unknown.0:0|
 :skolemid |386|
 :pattern ( (Requires1 t0@@4 t1@@4 $OneHeap f@@2 bx0@@1) ($IsGoodHeap heap@@0))
 :pattern ( (Requires1 t0@@4 t1@@4 heap@@0 f@@2 bx0@@1))
)))
(assert (forall ((d@@11 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@11)) (DtRank d@@11))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@11)))
)))
(assert (forall ((bx@@7 T@U) (t@@2 T@U) ) (!  (=> ($IsBox bx@@7 (TSeq t@@2)) (and (= ($Box SeqType ($Unbox SeqType bx@@7)) bx@@7) ($Is SeqType ($Unbox SeqType bx@@7) (TSeq t@@2))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@7 (TSeq t@@2)))
)))
(assert (forall ((_module.List$T@@4 T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass._module.List _module.List$T@@4)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@8)) bx@@8) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@8) (Tclass._module.List _module.List$T@@4))))
 :qid |unknown.0:0|
 :skolemid |585|
 :pattern ( ($IsBox bx@@8 (Tclass._module.List _module.List$T@@4)))
)))
(assert (= (Tag Tclass._module.instr) Tagclass._module.instr))
(assert (= (TagFamily Tclass._module.instr) tytagFamily$instr))
(assert (= |#_module.List.Nil| (Lit DatatypeTypeType |#_module.List.Nil|)))
(assert (= |#_module.instr.ADD| (Lit DatatypeTypeType |#_module.instr.ADD|)))
(assert (forall ((|a#66#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.instr.LOAD| |a#66#0#0|) Tclass._module.instr) ($Is SeqType |a#66#0#0| (TSeq TChar)))
 :qid |NipkowKleinchapter3dfy.199:36|
 :skolemid |827|
 :pattern ( ($Is DatatypeTypeType (|#_module.instr.LOAD| |a#66#0#0|) Tclass._module.instr))
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
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (= (|#_module.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)) (Lit DatatypeTypeType (|#_module.List.Cons| |a#7#0#0| |a#7#1#0|)))
 :qid |NipkowKleinchapter3dfy.9:31|
 :skolemid |719|
 :pattern ( (|#_module.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#62#0#0| Int) ) (! (= (|#_module.instr.LOADI| (LitInt |a#62#0#0|)) (Lit DatatypeTypeType (|#_module.instr.LOADI| |a#62#0#0|)))
 :qid |NipkowKleinchapter3dfy.199:24|
 :skolemid |821|
 :pattern ( (|#_module.instr.LOADI| (LitInt |a#62#0#0|)))
)))
(assert (forall ((|a#67#0#0| T@U) ) (! (= (|#_module.instr.LOAD| (Lit SeqType |a#67#0#0|)) (Lit DatatypeTypeType (|#_module.instr.LOAD| |a#67#0#0|)))
 :qid |NipkowKleinchapter3dfy.199:36|
 :skolemid |829|
 :pattern ( (|#_module.instr.LOAD| (Lit SeqType |a#67#0#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@7)) (Lit BoxType ($Box T@@3 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@7)))
)))
(assert (forall ((s@@0 T@U) ) (!  (=> (= (|Seq#Length| s@@0) 0) (= s@@0 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((v@@0 T@U) (t0@@5 T@U) ) (! (= ($Is SeqType v@@0 (TSeq t0@@5)) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@0))) ($IsBox (|Seq#Index| v@@0 i@@0) t0@@5))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@0 i@@0))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@0 (TSeq t0@@5)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@1 T@U) (|i#0@@2| T@U) (|s#0@@2| T@U) (|stk#0@@2| T@U) ) (!  (=> (or (|_module.__default.exec1#canCall| (Lit DatatypeTypeType |i#0@@2|) (Lit HandleTypeType |s#0@@2|) (Lit DatatypeTypeType |stk#0@@2|)) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@1) ($Is DatatypeTypeType |i#0@@2| Tclass._module.instr)) ($Is HandleTypeType |s#0@@2| (Tclass._System.___hTotalFunc1 (TSeq TChar) TInt))) ($Is DatatypeTypeType |stk#0@@2| (Tclass._module.List TInt))))) (= (_module.__default.exec1 (Lit DatatypeTypeType |i#0@@2|) (Lit HandleTypeType |s#0@@2|) (Lit DatatypeTypeType |stk#0@@2|)) (ite (_module.instr.LOADI_q (Lit DatatypeTypeType |i#0@@2|)) (let ((|n#4| (LitInt (_module.instr._h12 (Lit DatatypeTypeType |i#0@@2|)))))
(Lit DatatypeTypeType (|#_module.List.Cons| ($Box intType (int_2_U |n#4|)) (Lit DatatypeTypeType |stk#0@@2|)))) (ite (_module.instr.LOAD_q (Lit DatatypeTypeType |i#0@@2|)) (let ((|x#4| (Lit SeqType (_module.instr._h13 (Lit DatatypeTypeType |i#0@@2|)))))
(|#_module.List.Cons| (Apply1 (TSeq TChar) TInt $Heap@@1 (Lit HandleTypeType |s#0@@2|) ($Box SeqType |x#4|)) (Lit DatatypeTypeType |stk#0@@2|))) (ite  (and (_module.List.Cons_q (Lit DatatypeTypeType |stk#0@@2|)) (_module.List.Cons_q (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |stk#0@@2|))))) (let ((|tail#4| (_module.List.tail (_module.List.tail (Lit DatatypeTypeType |stk#0@@2|)))))
(let ((|a0#4| (U_2_int ($Unbox intType (_module.List.head (_module.List.tail (Lit DatatypeTypeType |stk#0@@2|)))))))
(let ((|a1#4| (U_2_int ($Unbox intType (_module.List.head (Lit DatatypeTypeType |stk#0@@2|))))))
(|#_module.List.Cons| ($Box intType (int_2_U (+ |a0#4| |a1#4|))) |tail#4|)))) |#_module.List.Nil|)))))
 :qid |NipkowKleinchapter3dfy.203:16|
 :weight 3
 :skolemid |681|
 :pattern ( (_module.__default.exec1 (Lit DatatypeTypeType |i#0@@2|) (Lit HandleTypeType |s#0@@2|) (Lit DatatypeTypeType |stk#0@@2|)) ($IsGoodHeap $Heap@@1))
))))
(assert (forall ((s@@1 T@U) (i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| s@@1))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@1 i@@1))) (|Seq#Rank| s@@1)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@1 i@@1))))
)))
(assert (forall ((v@@1 T@U) ) (! ($Is intType v@@1 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@1 TInt))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is charType v@@2 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |43|
 :pattern ( ($Is charType v@@2 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |stk#0@@3| () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |i#0@@3| () T@U)
(declare-fun |_mcc#1#0| () T@U)
(declare-fun |_mcc#0#0| () Int)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap@@2 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |s#0@@3| () T@U)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.exec1)
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
 (=> (= (ControlFlow 0 0) 16) (let ((anon18_Else_correct true))
(let ((anon18_Then_correct  (=> (and (and (_module.List.Cons_q |stk#0@@3|) (_module.List.Cons_q (_module.List.tail |stk#0@@3|))) (and (= |let#0#0#0| |stk#0@@3|) ($Is DatatypeTypeType |let#0#0#0| (Tclass._module.List TInt)))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (_module.List.Cons_q |let#0#0#0|)) (=> (_module.List.Cons_q |let#0#0#0|) (=> (= (ControlFlow 0 6) (- 0 5)) (_module.List.Cons_q (_module.List.tail |let#0#0#0|))))))))
(let ((anon17_Else_correct  (=> (not (_module.List.Cons_q |stk#0@@3|)) (and (=> (= (ControlFlow 0 11) 6) anon18_Then_correct) (=> (= (ControlFlow 0 11) 8) anon18_Else_correct)))))
(let ((anon17_Then_correct  (=> (_module.List.Cons_q |stk#0@@3|) (and (=> (= (ControlFlow 0 9) (- 0 10)) (_module.List.Cons_q |stk#0@@3|)) (=> (_module.List.Cons_q |stk#0@@3|) (and (=> (= (ControlFlow 0 9) 6) anon18_Then_correct) (=> (= (ControlFlow 0 9) 8) anon18_Else_correct)))))))
(let ((anon16_Then_correct  (=> (= |i#0@@3| |#_module.instr.ADD|) (and (=> (= (ControlFlow 0 12) 9) anon17_Then_correct) (=> (= (ControlFlow 0 12) 11) anon17_Else_correct)))))
(let ((anon16_Else_correct true))
(let ((anon15_Else_correct  (=> (or (not (= |i#0@@3| (|#_module.instr.LOAD| |_mcc#1#0|))) (not true)) (and (=> (= (ControlFlow 0 13) 12) anon16_Then_correct) (=> (= (ControlFlow 0 13) 4) anon16_Else_correct)))))
(let ((anon15_Then_correct true))
(let ((anon14_Else_correct  (=> (or (not (= |i#0@@3| (|#_module.instr.LOADI| |_mcc#0#0|))) (not true)) (and (=> (= (ControlFlow 0 14) 3) anon15_Then_correct) (=> (= (ControlFlow 0 14) 13) anon15_Else_correct)))))
(let ((anon14_Then_correct true))
(let ((anon13_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap@@2 alloc false)) (and (and (=> (= (ControlFlow 0 15) 1) anon13_Then_correct) (=> (= (ControlFlow 0 15) 2) anon14_Then_correct)) (=> (= (ControlFlow 0 15) 14) anon14_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@2) ($IsHeapAnchor $Heap@@2)) ($Is DatatypeTypeType |i#0@@3| Tclass._module.instr)) (and (and ($Is HandleTypeType |s#0@@3| (Tclass._System.___hTotalFunc1 (TSeq TChar) TInt)) ($Is DatatypeTypeType |stk#0@@3| (Tclass._module.List TInt))) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 16) 15)))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
