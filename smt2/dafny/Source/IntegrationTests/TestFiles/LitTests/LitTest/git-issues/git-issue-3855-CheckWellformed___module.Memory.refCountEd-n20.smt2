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
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._module.Object () T@U)
(declare-fun Tagclass._module.Memory () T@U)
(declare-fun Tagclass._module.Memory? () T@U)
(declare-fun Tagclass._module.Object? () T@U)
(declare-fun |##_module.Edge.Edge| () T@U)
(declare-fun Tagclass._module.Edge () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$Object () T@U)
(declare-fun tytagFamily$Memory () T@U)
(declare-fun tytagFamily$Edge () T@U)
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
(declare-fun |#_module.Edge.Edge| (T@U T@U T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._module.Edge () T@U)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Object () T@U)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.Memory.refCountEdges (T@U T@U T@U) Int)
(declare-fun |_module.Memory.refCountEdges#canCall| (T@U T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun Tclass._module.Memory () T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |_module.Memory.incomingEdges#canCall| (T@U T@U T@U) Bool)
(declare-fun |Set#Card| (T@U) Int)
(declare-fun _module.Memory.incomingEdges (T@U T@U T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun _module.Edge.f (T@U) T@U)
(declare-fun _module.Edge.n (T@U) T@U)
(declare-fun _module.Edge.t (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun Tclass._module.Object? () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._module.Memory? () T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun _module.Edge.Edge_q (T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |lambda#41| (T@U T@U T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun charType () T@T)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct TChar TagChar TagSet TagSeq alloc Tagclass._System.nat Tagclass._module.Object Tagclass._module.Memory Tagclass._module.Memory? Tagclass._module.Object? |##_module.Edge.Edge| Tagclass._module.Edge tytagFamily$nat tytagFamily$Object tytagFamily$Memory tytagFamily$Edge)
)
(assert (= (Tag TChar) TagChar))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) (|a#6#2#0| T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| |a#6#1#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#6#1#0| i))) (DtRank (|#_module.Edge.Edge| |a#6#0#0| |a#6#1#0| |a#6#2#0|))))
 :qid |gitissue3855dfy.149:22|
 :skolemid |817|
 :pattern ( (|Seq#Index| |a#6#1#0| i) (|#_module.Edge.Edge| |a#6#0#0| |a#6#1#0| |a#6#2#0|))
)))
(assert  (and (= (Ctor refType) 4) (= (Ctor SeqType) 5)))
(assert (forall ((|a#2#0#0| T@U) (|a#2#1#0| T@U) (|a#2#2#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Edge.Edge| |a#2#0#0| |a#2#1#0| |a#2#2#0|) Tclass._module.Edge)  (and (and ($Is refType |a#2#0#0| Tclass._module.Object) ($Is SeqType |a#2#1#0| (TSeq TChar))) ($Is refType |a#2#2#0| Tclass._module.Object)))
 :qid |gitissue3855dfy.149:22|
 :skolemid |809|
 :pattern ( ($Is DatatypeTypeType (|#_module.Edge.Edge| |a#2#0#0| |a#2#1#0| |a#2#2#0|) Tclass._module.Edge))
)))
(assert (= (Ctor SetType) 6))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((this T@U) (|t#0| T@U) (|edges#0| T@U) ) (!  (=> (or (|_module.Memory.refCountEdges#canCall| this |t#0| |edges#0|) (and (< 3 $FunctionContextHeight) (and (and (and (or (not (= this null)) (not true)) ($Is refType this Tclass._module.Memory)) ($Is refType |t#0| Tclass._module.Object)) ($Is SetType |edges#0| (TSet Tclass._module.Edge))))) (and (|_module.Memory.incomingEdges#canCall| this |t#0| |edges#0|) (= (_module.Memory.refCountEdges this |t#0| |edges#0|) (|Set#Card| (_module.Memory.incomingEdges this |t#0| |edges#0|)))))
 :qid |gitissue3855dfy.251:12|
 :skolemid |910|
 :pattern ( (_module.Memory.refCountEdges this |t#0| |edges#0|))
))))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) (|a#0#2#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Edge.Edge| |a#0#0#0| |a#0#1#0| |a#0#2#0|)) |##_module.Edge.Edge|)
 :qid |gitissue3855dfy.149:22|
 :skolemid |804|
 :pattern ( (|#_module.Edge.Edge| |a#0#0#0| |a#0#1#0| |a#0#2#0|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) (|a#4#2#0| T@U) ) (! (= (_module.Edge.f (|#_module.Edge.Edge| |a#4#0#0| |a#4#1#0| |a#4#2#0|)) |a#4#0#0|)
 :qid |gitissue3855dfy.149:22|
 :skolemid |815|
 :pattern ( (|#_module.Edge.Edge| |a#4#0#0| |a#4#1#0| |a#4#2#0|))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) (|a#5#2#0| T@U) ) (! (= (_module.Edge.n (|#_module.Edge.Edge| |a#5#0#0| |a#5#1#0| |a#5#2#0|)) |a#5#1#0|)
 :qid |gitissue3855dfy.149:22|
 :skolemid |816|
 :pattern ( (|#_module.Edge.Edge| |a#5#0#0| |a#5#1#0| |a#5#2#0|))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) (|a#8#2#0| T@U) ) (! (= (_module.Edge.t (|#_module.Edge.Edge| |a#8#0#0| |a#8#1#0| |a#8#2#0|)) |a#8#2#0|)
 :qid |gitissue3855dfy.149:22|
 :skolemid |819|
 :pattern ( (|#_module.Edge.Edge| |a#8#0#0| |a#8#1#0| |a#8#2#0|))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.Object?)  (or (= $o null) (= (dtype $o) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |738|
 :pattern ( ($Is refType $o Tclass._module.Object?))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass._module.Memory?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass._module.Memory?)))
 :qid |unknown.0:0|
 :skolemid |824|
 :pattern ( ($Is refType $o@@0 Tclass._module.Memory?))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((this@@0 T@U) (|t#0@@0| T@U) (|edges#0@@0| T@U) ) (!  (=> (or (|_module.Memory.incomingEdges#canCall| this@@0 |t#0@@0| |edges#0@@0|) (and (< 2 $FunctionContextHeight) (and (and (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass._module.Memory)) ($Is refType |t#0@@0| Tclass._module.Object)) ($Is SetType |edges#0@@0| (TSet Tclass._module.Edge))))) (and (|Set#Subset| (_module.Memory.incomingEdges this@@0 |t#0@@0| |edges#0@@0|) |edges#0@@0|) ($Is SetType (_module.Memory.incomingEdges this@@0 |t#0@@0| |edges#0@@0|) (TSet Tclass._module.Edge))))
 :qid |gitissue3855dfy.245:12|
 :skolemid |898|
 :pattern ( (_module.Memory.incomingEdges this@@0 |t#0@@0| |edges#0@@0|))
))))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Object $h@@0) ($IsAlloc refType |c#0| Tclass._module.Object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |803|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Object $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Object? $h@@0))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Memory $h@@1) ($IsAlloc refType |c#0@@0| Tclass._module.Memory? $h@@1))
 :qid |unknown.0:0|
 :skolemid |1378|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Memory $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Memory? $h@@1))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((this@@1 T@U) (|t#0@@1| T@U) (|edges#0@@1| T@U) ) (!  (=> (or (|_module.Memory.refCountEdges#canCall| this@@1 |t#0@@1| |edges#0@@1|) (and (< 3 $FunctionContextHeight) (and (and (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 Tclass._module.Memory)) ($Is refType |t#0@@1| Tclass._module.Object)) ($Is SetType |edges#0@@1| (TSet Tclass._module.Edge))))) (<= (LitInt 0) (_module.Memory.refCountEdges this@@1 |t#0@@1| |edges#0@@1|)))
 :qid |gitissue3855dfy.251:12|
 :skolemid |908|
 :pattern ( (_module.Memory.refCountEdges this@@1 |t#0@@1| |edges#0@@1|))
))))
(assert (forall ((d T@U) ) (!  (=> ($Is DatatypeTypeType d Tclass._module.Edge) (_module.Edge.Edge_q d))
 :qid |unknown.0:0|
 :skolemid |821|
 :pattern ( (_module.Edge.Edge_q d) ($Is DatatypeTypeType d Tclass._module.Edge))
)))
(assert (forall ((s T@U) ) (!  (and (= (= (|Set#Card| s) 0) (= s |Set#Empty|)) (=> (or (not (= (|Set#Card| s) 0)) (not true)) (exists ((x@@2 T@U) ) (! (|Set#IsMember| s x@@2)
 :qid |DafnyPreludebpl.678:20|
 :skolemid |126|
 :pattern ( (|Set#IsMember| s x@@2))
))))
 :qid |DafnyPreludebpl.674:15|
 :skolemid |127|
 :pattern ( (|Set#Card| s))
)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 7)) (= (Ctor BoxType) 8)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 9)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall (($o@@1 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._module.Object? $h@@2)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |739|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._module.Object? $h@@2))
)))
(assert (forall (($o@@2 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._module.Memory? $h@@3)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |825|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.Memory? $h@@3))
)))
(assert (forall ((x@@3 Int) ) (! (= (LitInt x@@3) x@@3)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@3))
)))
(assert (forall ((x@@4 T@U) (T T@T) ) (! (= (Lit T x@@4) x@@4)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@4))
)))
(assert (forall ((a T@U) (b T@U) ) (! (= (|Set#Subset| a b) (forall ((o@@0 T@U) ) (!  (=> (|Set#IsMember| a o@@0) (|Set#IsMember| b o@@0))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a o@@0))
 :pattern ( (|Set#IsMember| b o@@0))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a b))
)))
(assert (forall ((|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) (|a#2#2#0@@0| T@U) ($h@@4 T@U) ) (!  (=> ($IsGoodHeap $h@@4) (= ($IsAlloc DatatypeTypeType (|#_module.Edge.Edge| |a#2#0#0@@0| |a#2#1#0@@0| |a#2#2#0@@0|) Tclass._module.Edge $h@@4)  (and (and ($IsAlloc refType |a#2#0#0@@0| Tclass._module.Object $h@@4) ($IsAlloc SeqType |a#2#1#0@@0| (TSeq TChar) $h@@4)) ($IsAlloc refType |a#2#2#0@@0| Tclass._module.Object $h@@4))))
 :qid |gitissue3855dfy.149:22|
 :skolemid |810|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Edge.Edge| |a#2#0#0@@0| |a#2#1#0@@0| |a#2#2#0@@0|) Tclass._module.Edge $h@@4))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Edge.Edge_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Edge.Edge|))
 :qid |unknown.0:0|
 :skolemid |805|
 :pattern ( (_module.Edge.Edge_q d@@0))
)))
(assert (forall ((x@@5 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@5)) x@@5)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@5))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((this@@2 T@U) (|t#0@@2| T@U) (|edges#0@@2| T@U) ) (!  (=> (or (|_module.Memory.refCountEdges#canCall| (Lit refType this@@2) (Lit refType |t#0@@2|) (Lit SetType |edges#0@@2|)) (and (< 3 $FunctionContextHeight) (and (and (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 Tclass._module.Memory)) ($Is refType |t#0@@2| Tclass._module.Object)) ($Is SetType |edges#0@@2| (TSet Tclass._module.Edge))))) (and (|_module.Memory.incomingEdges#canCall| (Lit refType this@@2) (Lit refType |t#0@@2|) (Lit SetType |edges#0@@2|)) (= (_module.Memory.refCountEdges (Lit refType this@@2) (Lit refType |t#0@@2|) (Lit SetType |edges#0@@2|)) (|Set#Card| (Lit SetType (_module.Memory.incomingEdges (Lit refType this@@2) (Lit refType |t#0@@2|) (Lit SetType |edges#0@@2|)))))))
 :qid |gitissue3855dfy.251:12|
 :weight 3
 :skolemid |912|
 :pattern ( (_module.Memory.refCountEdges (Lit refType this@@2) (Lit refType |t#0@@2|) (Lit SetType |edges#0@@2|)))
))))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.Edge.Edge_q d@@1) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) (|a#1#2#0| T@U) ) (! (= d@@1 (|#_module.Edge.Edge| |a#1#0#0| |a#1#1#0| |a#1#2#0|))
 :qid |gitissue3855dfy.149:22|
 :skolemid |806|
)))
 :qid |unknown.0:0|
 :skolemid |807|
 :pattern ( (_module.Edge.Edge_q d@@1))
)))
(assert (forall ((m@@1 T@U) (bx T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx) (U_2_bool (MapType0Select BoxType boolType m@@1 bx)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |153|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx))
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
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|$y#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#41| |l#0| |l#1| |l#2|) |$y#0|))  (and ($IsBox |$y#0| |l#0|) (and (|Set#IsMember| |l#1| |$y#0|) (= (_module.Edge.t ($Unbox DatatypeTypeType |$y#0|)) |l#2|))))
 :qid |gitissue3855dfy.149:10|
 :skolemid |1415|
 :pattern ( (MapType0Select BoxType boolType (|lambda#41| |l#0| |l#1| |l#2|) |$y#0|))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx@@1 Tclass._System.nat))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.Object) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._module.Object)))
 :qid |unknown.0:0|
 :skolemid |590|
 :pattern ( ($IsBox bx@@2 Tclass._module.Object))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.Memory) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._module.Memory)))
 :qid |unknown.0:0|
 :skolemid |600|
 :pattern ( ($IsBox bx@@3 Tclass._module.Memory))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.Memory?) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.Memory?)))
 :qid |unknown.0:0|
 :skolemid |601|
 :pattern ( ($IsBox bx@@4 Tclass._module.Memory?))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.Object?) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |622|
 :pattern ( ($IsBox bx@@5 Tclass._module.Object?))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.Edge) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@6)) bx@@6) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@6) Tclass._module.Edge)))
 :qid |unknown.0:0|
 :skolemid |808|
 :pattern ( ($IsBox bx@@6 Tclass._module.Edge))
)))
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass._module.Object)  (and ($Is refType |c#0@@1| Tclass._module.Object?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |802|
 :pattern ( ($Is refType |c#0@@1| Tclass._module.Object))
 :pattern ( ($Is refType |c#0@@1| Tclass._module.Object?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._module.Memory)  (and ($Is refType |c#0@@2| Tclass._module.Memory?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1377|
 :pattern ( ($Is refType |c#0@@2| Tclass._module.Memory))
 :pattern ( ($Is refType |c#0@@2| Tclass._module.Memory?))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((this@@3 T@U) (|t#0@@3| T@U) (|edges#0@@3| T@U) ) (!  (=> (or (|_module.Memory.incomingEdges#canCall| (Lit refType this@@3) (Lit refType |t#0@@3|) (Lit SetType |edges#0@@3|)) (and (< 2 $FunctionContextHeight) (and (and (and (or (not (= this@@3 null)) (not true)) ($Is refType this@@3 Tclass._module.Memory)) ($Is refType |t#0@@3| Tclass._module.Object)) ($Is SetType |edges#0@@3| (TSet Tclass._module.Edge))))) (and (forall ((|e#2| T@U) ) (!  (=> ($Is DatatypeTypeType |e#2| Tclass._module.Edge) (=> (|Set#IsMember| (Lit SetType |edges#0@@3|) ($Box DatatypeTypeType |e#2|)) (_module.Edge.Edge_q |e#2|)))
 :qid |gitissue3855dfy.248:9|
 :skolemid |905|
 :pattern ( (_module.Edge.t |e#2|))
 :pattern ( (|Set#IsMember| |edges#0@@3| ($Box DatatypeTypeType |e#2|)))
)) (= (_module.Memory.incomingEdges (Lit refType this@@3) (Lit refType |t#0@@3|) (Lit SetType |edges#0@@3|)) (|Set#FromBoogieMap| (|lambda#41| Tclass._module.Edge (Lit SetType |edges#0@@3|) (Lit refType |t#0@@3|))))))
 :qid |gitissue3855dfy.245:12|
 :weight 3
 :skolemid |906|
 :pattern ( (_module.Memory.incomingEdges (Lit refType this@@3) (Lit refType |t#0@@3|) (Lit SetType |edges#0@@3|)))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((this@@4 T@U) (|t#0@@4| T@U) (|edges#0@@4| T@U) ) (!  (=> (or (|_module.Memory.incomingEdges#canCall| this@@4 |t#0@@4| |edges#0@@4|) (and (< 2 $FunctionContextHeight) (and (and (and (or (not (= this@@4 null)) (not true)) ($Is refType this@@4 Tclass._module.Memory)) ($Is refType |t#0@@4| Tclass._module.Object)) ($Is SetType |edges#0@@4| (TSet Tclass._module.Edge))))) (and (forall ((|e#0| T@U) ) (!  (=> ($Is DatatypeTypeType |e#0| Tclass._module.Edge) (=> (|Set#IsMember| |edges#0@@4| ($Box DatatypeTypeType |e#0|)) (_module.Edge.Edge_q |e#0|)))
 :qid |gitissue3855dfy.248:9|
 :skolemid |901|
 :pattern ( (_module.Edge.t |e#0|))
 :pattern ( (|Set#IsMember| |edges#0@@4| ($Box DatatypeTypeType |e#0|)))
)) (= (_module.Memory.incomingEdges this@@4 |t#0@@4| |edges#0@@4|) (|Set#FromBoogieMap| (|lambda#41| Tclass._module.Edge |edges#0@@4| |t#0@@4|)))))
 :qid |gitissue3855dfy.245:12|
 :skolemid |902|
 :pattern ( (_module.Memory.incomingEdges this@@4 |t#0@@4| |edges#0@@4|))
))))
(assert (= (Ctor charType) 10))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 TChar) (and (= ($Box charType ($Unbox charType bx@@7)) bx@@7) ($Is charType ($Unbox charType bx@@7) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |30|
 :pattern ( ($IsBox bx@@7 TChar))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((s@@0 T@U) ) (! (<= 0 (|Set#Card| s@@0))
 :qid |DafnyPreludebpl.664:15|
 :skolemid |124|
 :pattern ( (|Set#Card| s@@0))
)))
(assert (forall ((s@@1 T@U) ) (! (<= 0 (|Seq#Length| s@@1))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@1))
)))
(assert (forall ((v@@2 T@U) (t0@@1 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0) (forall ((bx@@8 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@8) ($IsAllocBox bx@@8 t0@@1 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@8))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SeqType v@@3 (TSeq t0@@2) h@@1) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@3))) ($IsAllocBox (|Seq#Index| v@@3 i@@0) t0@@2 h@@1))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@3 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@3 (TSeq t0@@2) h@@1))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) (|a#3#2#0| T@U) ) (! (= (|#_module.Edge.Edge| (Lit refType |a#3#0#0|) (Lit SeqType |a#3#1#0|) (Lit refType |a#3#2#0|)) (Lit DatatypeTypeType (|#_module.Edge.Edge| |a#3#0#0| |a#3#1#0| |a#3#2#0|)))
 :qid |gitissue3855dfy.149:22|
 :skolemid |814|
 :pattern ( (|#_module.Edge.Edge| (Lit refType |a#3#0#0|) (Lit SeqType |a#3#1#0|) (Lit refType |a#3#2#0|)))
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
(assert (forall ((x@@6 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@6))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) (|a#7#2#0| T@U) ) (! (< (|Seq#Rank| |a#7#1#0|) (DtRank (|#_module.Edge.Edge| |a#7#0#0| |a#7#1#0| |a#7#2#0|)))
 :qid |gitissue3855dfy.149:22|
 :skolemid |818|
 :pattern ( (|#_module.Edge.Edge| |a#7#0#0| |a#7#1#0| |a#7#2#0|))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap T@U) (this@@5 T@U) (|t#0@@5| T@U) (|edges#0@@5| T@U) ) (!  (=> (and (or (|_module.Memory.incomingEdges#canCall| this@@5 |t#0@@5| |edges#0@@5|) (and (< 2 $FunctionContextHeight) (and (and (and (or (not (= this@@5 null)) (not true)) ($IsAlloc refType this@@5 Tclass._module.Memory $Heap)) (and ($Is refType |t#0@@5| Tclass._module.Object) ($IsAlloc refType |t#0@@5| Tclass._module.Object $Heap))) (and ($Is SetType |edges#0@@5| (TSet Tclass._module.Edge)) ($IsAlloc SetType |edges#0@@5| (TSet Tclass._module.Edge) $Heap))))) ($IsGoodHeap $Heap)) ($IsAlloc SetType (_module.Memory.incomingEdges this@@5 |t#0@@5| |edges#0@@5|) (TSet Tclass._module.Edge) $Heap))
 :qid |gitissue3855dfy.245:12|
 :skolemid |899|
 :pattern ( ($IsAlloc SetType (_module.Memory.incomingEdges this@@5 |t#0@@5| |edges#0@@5|) (TSet Tclass._module.Edge) $Heap))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((this@@6 T@U) (|t#0@@6| T@U) (|edges#0@@6| T@U) ) (!  (=> (or (|_module.Memory.incomingEdges#canCall| this@@6 (Lit refType |t#0@@6|) (Lit SetType |edges#0@@6|)) (and (< 2 $FunctionContextHeight) (and (and (and (or (not (= this@@6 null)) (not true)) ($Is refType this@@6 Tclass._module.Memory)) ($Is refType |t#0@@6| Tclass._module.Object)) ($Is SetType |edges#0@@6| (TSet Tclass._module.Edge))))) (and (forall ((|e#1| T@U) ) (!  (=> ($Is DatatypeTypeType |e#1| Tclass._module.Edge) (=> (|Set#IsMember| (Lit SetType |edges#0@@6|) ($Box DatatypeTypeType |e#1|)) (_module.Edge.Edge_q |e#1|)))
 :qid |gitissue3855dfy.248:9|
 :skolemid |903|
 :pattern ( (_module.Edge.t |e#1|))
 :pattern ( (|Set#IsMember| |edges#0@@6| ($Box DatatypeTypeType |e#1|)))
)) (= (_module.Memory.incomingEdges this@@6 (Lit refType |t#0@@6|) (Lit SetType |edges#0@@6|)) (|Set#FromBoogieMap| (|lambda#41| Tclass._module.Edge (Lit SetType |edges#0@@6|) (Lit refType |t#0@@6|))))))
 :qid |gitissue3855dfy.245:12|
 :weight 3
 :skolemid |904|
 :pattern ( (_module.Memory.incomingEdges this@@6 (Lit refType |t#0@@6|) (Lit SetType |edges#0@@6|)))
))))
(assert  (and (forall ((t0@@3 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@3 t1@@0 t2 (MapType1Store t0@@3 t1@@0 t2 m@@2 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@3 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@3 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@3 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@4 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@4 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2@@0| T@U) (|l#3| Bool) ($o@@3 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2@@0| |l#3|) $o@@3 $f))  (=> (and (or (not (= $o@@3 |l#0@@0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@0| $o@@3) |l#2@@0|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1406|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2@@0| |l#3|) $o@@3 $f))
)))
(assert (forall ((bx@@9 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@9 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@9)) bx@@9) ($Is SetType ($Unbox SetType bx@@9) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@9 (TSet t@@5)))
)))
(assert (forall ((bx@@10 T@U) (t@@6 T@U) ) (!  (=> ($IsBox bx@@10 (TSeq t@@6)) (and (= ($Box SeqType ($Unbox SeqType bx@@10)) bx@@10) ($Is SeqType ($Unbox SeqType bx@@10) (TSeq t@@6))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@10 (TSeq t@@6)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._module.Object) Tagclass._module.Object))
(assert (= (TagFamily Tclass._module.Object) tytagFamily$Object))
(assert (= (Tag Tclass._module.Memory) Tagclass._module.Memory))
(assert (= (TagFamily Tclass._module.Memory) tytagFamily$Memory))
(assert (= (Tag Tclass._module.Memory?) Tagclass._module.Memory?))
(assert (= (TagFamily Tclass._module.Memory?) tytagFamily$Memory))
(assert (= (Tag Tclass._module.Object?) Tagclass._module.Object?))
(assert (= (TagFamily Tclass._module.Object?) tytagFamily$Object))
(assert (= (Tag Tclass._module.Edge) Tagclass._module.Edge))
(assert (= (TagFamily Tclass._module.Edge) tytagFamily$Edge))
(assert (forall ((d@@2 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_module.Edge.Edge_q d@@2) ($IsAlloc DatatypeTypeType d@@2 Tclass._module.Edge $h@@5))) ($IsAlloc SeqType (_module.Edge.n d@@2) (TSeq TChar) $h@@5))
 :qid |unknown.0:0|
 :skolemid |812|
 :pattern ( ($IsAlloc SeqType (_module.Edge.n d@@2) (TSeq TChar) $h@@5))
)))
(assert (forall ((d@@3 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (_module.Edge.Edge_q d@@3) ($IsAlloc DatatypeTypeType d@@3 Tclass._module.Edge $h@@6))) ($IsAlloc refType (_module.Edge.f d@@3) Tclass._module.Object $h@@6))
 :qid |unknown.0:0|
 :skolemid |811|
 :pattern ( ($IsAlloc refType (_module.Edge.f d@@3) Tclass._module.Object $h@@6))
)))
(assert (forall ((d@@4 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (_module.Edge.Edge_q d@@4) ($IsAlloc DatatypeTypeType d@@4 Tclass._module.Edge $h@@7))) ($IsAlloc refType (_module.Edge.t d@@4) Tclass._module.Object $h@@7))
 :qid |unknown.0:0|
 :skolemid |813|
 :pattern ( ($IsAlloc refType (_module.Edge.t d@@4) Tclass._module.Object $h@@7))
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
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((this@@7 T@U) (|t#0@@7| T@U) (|edges#0@@7| T@U) ) (!  (=> (or (|_module.Memory.refCountEdges#canCall| this@@7 (Lit refType |t#0@@7|) (Lit SetType |edges#0@@7|)) (and (< 3 $FunctionContextHeight) (and (and (and (or (not (= this@@7 null)) (not true)) ($Is refType this@@7 Tclass._module.Memory)) ($Is refType |t#0@@7| Tclass._module.Object)) ($Is SetType |edges#0@@7| (TSet Tclass._module.Edge))))) (and (|_module.Memory.incomingEdges#canCall| this@@7 (Lit refType |t#0@@7|) (Lit SetType |edges#0@@7|)) (= (_module.Memory.refCountEdges this@@7 (Lit refType |t#0@@7|) (Lit SetType |edges#0@@7|)) (|Set#Card| (_module.Memory.incomingEdges this@@7 (Lit refType |t#0@@7|) (Lit SetType |edges#0@@7|))))))
 :qid |gitissue3855dfy.251:12|
 :weight 3
 :skolemid |911|
 :pattern ( (_module.Memory.refCountEdges this@@7 (Lit refType |t#0@@7|) (Lit SetType |edges#0@@7|)))
))))
(assert (forall ((s@@2 T@U) ) (!  (=> (= (|Seq#Length| s@@2) 0) (= s@@2 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert (forall ((h@@2 T@U) (v@@4 T@U) ) (! ($IsAlloc charType v@@4 TChar h@@2)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |64|
 :pattern ( ($IsAlloc charType v@@4 TChar h@@2))
)))
(assert (forall ((v@@5 T@U) (t0@@4 T@U) ) (! (= ($Is SeqType v@@5 (TSeq t0@@4)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@5))) ($IsBox (|Seq#Index| v@@5 i@@1) t0@@4))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@5 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@5 (TSeq t0@@4)))
)))
(assert (forall ((s@@3 T@U) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| s@@3))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@3 i@@2))) (|Seq#Rank| s@@3)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@3 i@@2))))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is charType v@@6 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |43|
 :pattern ( ($Is charType v@@6 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun this@@8 () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun |t#0@@8| () T@U)
(declare-fun |edges#0@@8| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.Memory.refCountEdges)
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
 (=> (= (ControlFlow 0 0) 5) (let ((anon5_Else_correct  (=> ($IsAllocBox ($Box refType this@@8) Tclass._module.Memory? $Heap@@0) (=> (and (and ($IsAlloc refType |t#0@@8| Tclass._module.Object $Heap@@0) ($IsAlloc SetType |edges#0@@8| (TSet Tclass._module.Edge) $Heap@@0)) (and (|_module.Memory.incomingEdges#canCall| this@@8 |t#0@@8| |edges#0@@8|) (= (ControlFlow 0 3) (- 0 2)))) ($Is intType (int_2_U (|Set#Card| (_module.Memory.incomingEdges this@@8 |t#0@@8| |edges#0@@8|))) Tclass._System.nat)))))
(let ((anon5_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap@@0 alloc false)) (and (=> (= (ControlFlow 0 4) 1) anon5_Then_correct) (=> (= (ControlFlow 0 4) 3) anon5_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (and (or (not (= this@@8 null)) (not true)) (and ($Is refType this@@8 Tclass._module.Memory) ($IsAlloc refType this@@8 Tclass._module.Memory $Heap@@0)))) (and (and ($Is refType |t#0@@8| Tclass._module.Object) ($Is SetType |edges#0@@8| (TSet Tclass._module.Edge))) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 5) 4)))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
