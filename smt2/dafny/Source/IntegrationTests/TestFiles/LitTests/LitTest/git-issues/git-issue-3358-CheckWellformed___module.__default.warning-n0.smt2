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
(declare-fun TagChar () T@U)
(declare-fun TagSet () T@U)
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._module.MyResult () T@U)
(declare-fun |##_module.MyResult.Ok| () T@U)
(declare-fun |##_module.MyResult.Err| () T@U)
(declare-fun tytagFamily$MyResult () T@U)
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
(declare-fun _module.__default.warningTriggerTest (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun |_module.__default.warningTriggerTest#canCall| (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun TSeq (T@U) T@U)
(declare-fun Tclass._module.MyResult () T@U)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun |lambda#0| (T@U Int Int T@U T@U T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Set#Empty| () T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun _module.MyResult.Err_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun _module.MyResult.error (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.MyResult.Ok| () T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun _module.MyResult.Ok_q (T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |#_module.MyResult.Err| (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun charType () T@T)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#2| (T@U T@U T@U Bool) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun DtRank (T@U) Int)
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
(assert (distinct TChar TagChar TagSet TagSeq alloc Tagclass._module.MyResult |##_module.MyResult.Ok| |##_module.MyResult.Err| tytagFamily$MyResult)
)
(assert (= (Tag TChar) TagChar))
(assert (= (Ctor SeqType) 3))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|sr#0| T@U) ) (!  (=> (or (|_module.__default.warningTriggerTest#canCall| (Lit SeqType |sr#0|)) (and (< 1 $FunctionContextHeight) ($Is SeqType |sr#0| (TSeq Tclass._module.MyResult)))) (= (_module.__default.warningTriggerTest (Lit SeqType |sr#0|)) (|Set#FromBoogieMap| (|lambda#0| (TSeq TChar) (LitInt 0) (|Seq#Length| (Lit SeqType |sr#0|)) (Lit SeqType |sr#0|) (Lit SeqType |sr#0|) |Set#Empty|))))
 :qid |gitissue3358dfy.5:29|
 :weight 3
 :skolemid |485|
 :pattern ( (_module.__default.warningTriggerTest (Lit SeqType |sr#0|)))
))))
(assert  (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 4)) (= (Ctor DatatypeTypeType) 5)))
(assert (forall ((|l#0| T@U) (|l#1| Int) (|l#2| Int) (|l#3| T@U) (|l#4| T@U) (|l#5| T@U) (|$y#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3| |l#4| |l#5|) |$y#0|)) (exists ((|i#0| Int) (|err#0| T@U) ) (!  (and (and ($Is SeqType |err#0| |l#0|) (and (and (<= |l#1| |i#0|) (< |i#0| |l#2|)) (|Set#IsMember| (ite (_module.MyResult.Err_q ($Unbox DatatypeTypeType (|Seq#Index| |l#3| |i#0|))) (_module.MyResult.error ($Unbox DatatypeTypeType (|Seq#Index| |l#4| |i#0|))) |l#5|) ($Box SeqType |err#0|)))) (= |$y#0| ($Box SeqType |err#0|)))
 :qid |gitissue3358dfy.6:7|
 :skolemid |482|
)))
 :qid |unknown.0:0|
 :skolemid |505|
 :pattern ( (MapType0Select BoxType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3| |l#4| |l#5|) |$y#0|))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#_module.MyResult.Ok|) |##_module.MyResult.Ok|))
(assert ($Is DatatypeTypeType |#_module.MyResult.Ok| Tclass._module.MyResult))
(assert (= (Ctor SetType) 6))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|sr#0@@0| T@U) ) (!  (=> (or (|_module.__default.warningTriggerTest#canCall| |sr#0@@0|) (and (< 1 $FunctionContextHeight) ($Is SeqType |sr#0@@0| (TSeq Tclass._module.MyResult)))) ($Is SetType (_module.__default.warningTriggerTest |sr#0@@0|) (TSet (TSeq TChar))))
 :qid |gitissue3358dfy.5:29|
 :skolemid |480|
 :pattern ( (_module.__default.warningTriggerTest |sr#0@@0|))
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
(assert (forall ((d T@U) ) (! (= (_module.MyResult.Ok_q d) (= (DatatypeCtorId d) |##_module.MyResult.Ok|))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( (_module.MyResult.Ok_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.MyResult.Err_q d@@0) (= (DatatypeCtorId d@@0) |##_module.MyResult.Err|))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( (_module.MyResult.Err_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((m@@1 T@U) (bx T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx) (U_2_bool (MapType0Select BoxType boolType m@@1 bx)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |153|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.MyResult.Ok_q d@@1) (= d@@1 |#_module.MyResult.Ok|))
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( (_module.MyResult.Ok_q d@@1))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|sr#0@@1| T@U) ) (!  (=> (or (|_module.__default.warningTriggerTest#canCall| |sr#0@@1|) (and (< 1 $FunctionContextHeight) ($Is SeqType |sr#0@@1| (TSeq Tclass._module.MyResult)))) (= (_module.__default.warningTriggerTest |sr#0@@1|) (|Set#FromBoogieMap| (|lambda#0| (TSeq TChar) (LitInt 0) (|Seq#Length| |sr#0@@1|) |sr#0@@1| |sr#0@@1| |Set#Empty|))))
 :qid |gitissue3358dfy.5:29|
 :skolemid |483|
 :pattern ( (_module.__default.warningTriggerTest |sr#0@@1|))
))))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.MyResult.Err_q d@@2) (exists ((|a#5#0#0| T@U) ) (! (= d@@2 (|#_module.MyResult.Err| |a#5#0#0|))
 :qid |gitissue3358dfy.4:30|
 :skolemid |492|
)))
 :qid |unknown.0:0|
 :skolemid |493|
 :pattern ( (_module.MyResult.Err_q d@@2))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.MyResult) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) Tclass._module.MyResult)))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( ($IsBox bx@@1 Tclass._module.MyResult))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 Tclass._module.MyResult) (or (_module.MyResult.Ok_q d@@3) (_module.MyResult.Err_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |501|
 :pattern ( (_module.MyResult.Err_q d@@3) ($Is DatatypeTypeType d@@3 Tclass._module.MyResult))
 :pattern ( (_module.MyResult.Ok_q d@@3) ($Is DatatypeTypeType d@@3 Tclass._module.MyResult))
)))
(assert (= (Ctor charType) 7))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TChar) (and (= ($Box charType ($Unbox charType bx@@2)) bx@@2) ($Is charType ($Unbox charType bx@@2) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |30|
 :pattern ( ($IsBox bx@@2 TChar))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s))
)))
(assert (forall ((v@@2 T@U) (t0@@1 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0) (forall ((bx@@3 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@3) ($IsAllocBox bx@@3 t0@@1 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@3))
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
(assert (forall ((|a#4#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.MyResult.Err| |a#4#0#0|)) |##_module.MyResult.Err|)
 :qid |gitissue3358dfy.4:30|
 :skolemid |490|
 :pattern ( (|#_module.MyResult.Err| |a#4#0#0|))
)))
(assert (forall ((|a#8#0#0| T@U) ) (! (= (_module.MyResult.error (|#_module.MyResult.Err| |a#8#0#0|)) |a#8#0#0|)
 :qid |gitissue3358dfy.4:30|
 :skolemid |497|
 :pattern ( (|#_module.MyResult.Err| |a#8#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
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
)))) (= (Ctor refType) 8)) (= (Ctor FieldType) 9)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 10)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2@@0| T@U) (|l#3@@0| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#2| |l#0@@0| |l#1@@0| |l#2@@0| |l#3@@0|) $o $f))  (=> (and (or (not (= $o |l#0@@0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@0| $o) |l#2@@0|)))) |l#3@@0|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |506|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#2| |l#0@@0| |l#1@@0| |l#2@@0| |l#3@@0|) $o $f))
)))
(assert (forall ((bx@@4 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@4 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@4)) bx@@4) ($Is SetType ($Unbox SetType bx@@4) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@4 (TSet t@@5)))
)))
(assert (forall ((bx@@5 T@U) (t@@6 T@U) ) (!  (=> ($IsBox bx@@5 (TSeq t@@6)) (and (= ($Box SeqType ($Unbox SeqType bx@@5)) bx@@5) ($Is SeqType ($Unbox SeqType bx@@5) (TSeq t@@6))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@5 (TSeq t@@6)))
)))
(assert (forall ((d@@4 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) ($Is DatatypeTypeType d@@4 Tclass._module.MyResult)) ($IsAlloc DatatypeTypeType d@@4 Tclass._module.MyResult $h))
 :qid |unknown.0:0|
 :skolemid |499|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 Tclass._module.MyResult $h))
)))
(assert (= (Tag Tclass._module.MyResult) Tagclass._module.MyResult))
(assert (= (TagFamily Tclass._module.MyResult) tytagFamily$MyResult))
(assert (= |#_module.MyResult.Ok| (Lit DatatypeTypeType |#_module.MyResult.Ok|)))
(assert (forall ((|a#9#0#0| T@U) (d@@5 T@U) ) (!  (=> (|Set#IsMember| |a#9#0#0| ($Box DatatypeTypeType d@@5)) (< (DtRank d@@5) (DtRank (|#_module.MyResult.Err| |a#9#0#0|))))
 :qid |gitissue3358dfy.4:30|
 :skolemid |498|
 :pattern ( (|Set#IsMember| |a#9#0#0| ($Box DatatypeTypeType d@@5)) (|#_module.MyResult.Err| |a#9#0#0|))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#7#0#0| T@U) ) (! (= (|#_module.MyResult.Err| (Lit SetType |a#7#0#0|)) (Lit DatatypeTypeType (|#_module.MyResult.Err| |a#7#0#0|)))
 :qid |gitissue3358dfy.4:30|
 :skolemid |496|
 :pattern ( (|#_module.MyResult.Err| (Lit SetType |a#7#0#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((d@@6 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.MyResult.Err_q d@@6) ($IsAlloc DatatypeTypeType d@@6 Tclass._module.MyResult $h@@0))) ($IsAlloc SetType (_module.MyResult.error d@@6) (TSet (TSeq TChar)) $h@@0))
 :qid |unknown.0:0|
 :skolemid |495|
 :pattern ( ($IsAlloc SetType (_module.MyResult.error d@@6) (TSet (TSeq TChar)) $h@@0))
)))
(assert (forall ((s@@0 T@U) ) (!  (=> (= (|Seq#Length| s@@0) 0) (= s@@0 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((|a#6#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.MyResult.Err| |a#6#0#0|) Tclass._module.MyResult) ($Is SetType |a#6#0#0| (TSet (TSeq TChar))))
 :qid |gitissue3358dfy.4:30|
 :skolemid |494|
 :pattern ( ($Is DatatypeTypeType (|#_module.MyResult.Err| |a#6#0#0|) Tclass._module.MyResult))
)))
(assert (forall ((h@@2 T@U) (v@@4 T@U) ) (! ($IsAlloc charType v@@4 TChar h@@2)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |64|
 :pattern ( ($IsAlloc charType v@@4 TChar h@@2))
)))
(assert (forall ((v@@5 T@U) (t0@@4 T@U) ) (! (= ($Is SeqType v@@5 (TSeq t0@@4)) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@5))) ($IsBox (|Seq#Index| v@@5 i@@0) t0@@4))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@5 i@@0))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@5 (TSeq t0@@4)))
)))
(assert (forall ((s@@1 T@U) (i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| s@@1))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@1 i@@1))) (|Seq#Rank| s@@1)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@1 i@@1))))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is charType v@@6 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |43|
 :pattern ( ($Is charType v@@6 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |i#2@0| () Int)
(declare-fun |sr#0@@2| () T@U)
(declare-fun |err#2@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.warningTriggerTest)
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
 (=> (= (ControlFlow 0 0) 17) (let ((anon12_correct true))
(let ((anon19_Else_correct  (=> (and (not (and (and (<= (LitInt 0) |i#2@0|) (< |i#2@0| (|Seq#Length| |sr#0@@2|))) (|Set#IsMember| (ite (_module.MyResult.Err_q ($Unbox DatatypeTypeType (|Seq#Index| |sr#0@@2| |i#2@0|))) (_module.MyResult.error ($Unbox DatatypeTypeType (|Seq#Index| |sr#0@@2| |i#2@0|))) |Set#Empty|) ($Box SeqType |err#2@0|)))) (= (ControlFlow 0 5) 2)) anon12_correct)))
(let ((anon19_Then_correct  (=> (and (and (and (<= (LitInt 0) |i#2@0|) (< |i#2@0| (|Seq#Length| |sr#0@@2|))) (|Set#IsMember| (ite (_module.MyResult.Err_q ($Unbox DatatypeTypeType (|Seq#Index| |sr#0@@2| |i#2@0|))) (_module.MyResult.error ($Unbox DatatypeTypeType (|Seq#Index| |sr#0@@2| |i#2@0|))) |Set#Empty|) ($Box SeqType |err#2@0|))) (= (ControlFlow 0 4) 2)) anon12_correct)))
(let ((anon18_Else_correct  (=> (not (_module.MyResult.Err_q ($Unbox DatatypeTypeType (|Seq#Index| |sr#0@@2| |i#2@0|)))) (and (=> (= (ControlFlow 0 10) 4) anon19_Then_correct) (=> (= (ControlFlow 0 10) 5) anon19_Else_correct)))))
(let ((anon18_Then_correct  (=> (_module.MyResult.Err_q ($Unbox DatatypeTypeType (|Seq#Index| |sr#0@@2| |i#2@0|))) (and (=> (= (ControlFlow 0 7) (- 0 9)) (and (<= 0 |i#2@0|) (< |i#2@0| (|Seq#Length| |sr#0@@2|)))) (=> (and (<= 0 |i#2@0|) (< |i#2@0| (|Seq#Length| |sr#0@@2|))) (and (=> (= (ControlFlow 0 7) (- 0 8)) (_module.MyResult.Err_q ($Unbox DatatypeTypeType (|Seq#Index| |sr#0@@2| |i#2@0|)))) (=> (_module.MyResult.Err_q ($Unbox DatatypeTypeType (|Seq#Index| |sr#0@@2| |i#2@0|))) (and (=> (= (ControlFlow 0 7) 4) anon19_Then_correct) (=> (= (ControlFlow 0 7) 5) anon19_Else_correct)))))))))
(let ((anon17_Then_correct  (=> (and (<= (LitInt 0) |i#2@0|) (< |i#2@0| (|Seq#Length| |sr#0@@2|))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (and (<= 0 |i#2@0|) (< |i#2@0| (|Seq#Length| |sr#0@@2|)))) (=> (and (<= 0 |i#2@0|) (< |i#2@0| (|Seq#Length| |sr#0@@2|))) (and (=> (= (ControlFlow 0 11) 7) anon18_Then_correct) (=> (= (ControlFlow 0 11) 10) anon18_Else_correct)))))))
(let ((anon17_Else_correct  (=> (not (and (<= (LitInt 0) |i#2@0|) (< |i#2@0| (|Seq#Length| |sr#0@@2|)))) (and (=> (= (ControlFlow 0 6) 4) anon19_Then_correct) (=> (= (ControlFlow 0 6) 5) anon19_Else_correct)))))
(let ((anon16_Else_correct  (=> (< |i#2@0| (LitInt 0)) (and (=> (= (ControlFlow 0 14) 11) anon17_Then_correct) (=> (= (ControlFlow 0 14) 6) anon17_Else_correct)))))
(let ((anon16_Then_correct  (=> (<= (LitInt 0) |i#2@0|) (and (=> (= (ControlFlow 0 13) 11) anon17_Then_correct) (=> (= (ControlFlow 0 13) 6) anon17_Else_correct)))))
(let ((anon15_Then_correct  (=> (and ($Is SeqType |err#2@0| (TSeq TChar)) ($IsAlloc SeqType |err#2@0| (TSeq TChar) $Heap)) (and (=> (= (ControlFlow 0 15) 13) anon16_Then_correct) (=> (= (ControlFlow 0 15) 14) anon16_Else_correct)))))
(let ((anon15_Else_correct  (=> (and (not (and ($Is SeqType |err#2@0| (TSeq TChar)) ($IsAlloc SeqType |err#2@0| (TSeq TChar) $Heap))) (= (ControlFlow 0 3) 2)) anon12_correct)))
(let ((anon14_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#2| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 16) 1) anon14_Then_correct) (=> (= (ControlFlow 0 16) 15) anon15_Then_correct)) (=> (= (ControlFlow 0 16) 3) anon15_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) ($Is SeqType |sr#0@@2| (TSeq Tclass._module.MyResult))) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 17) 16))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
