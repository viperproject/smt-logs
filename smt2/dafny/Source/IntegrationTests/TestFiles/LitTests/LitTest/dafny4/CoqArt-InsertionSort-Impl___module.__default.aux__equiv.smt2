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
(declare-fun Tagclass._module.List () T@U)
(declare-fun |##_module.List.Nil| () T@U)
(declare-fun |##_module.List.Cons| () T@U)
(declare-fun tytagFamily$List () T@U)
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
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.List.Nil| () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.List (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |#_module.List.Cons| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.aux (T@U Int T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.__default.aux#canCall| (Int T@U) Bool)
(declare-fun _module.List.Nil_q (T@U) Bool)
(declare-fun _module.List.tail (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun _module.List.head (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun _module.List.Cons_q (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun _module.__default.nb__occ (T@U Int T@U) Int)
(declare-fun |$IsA#_module.List| (T@U) Bool)
(declare-fun Tclass._module.List_0 (T@U) T@U)
(declare-fun |_module.__default.nb__occ#canCall| (Int T@U) Bool)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
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
(declare-fun _module.__default.equiv (T@U T@U) Bool)
(declare-fun |_module.__default.equiv#canCall| (T@U T@U) Bool)
(declare-fun $LZ () T@U)
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
(assert (distinct TInt TagInt alloc Tagclass._module.List |##_module.List.Nil| |##_module.List.Cons| tytagFamily$List)
)
(assert (= (Tag TInt) TagInt))
(assert (= (DatatypeCtorId |#_module.List.Nil|) |##_module.List.Nil|))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((_module.List$T T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) ($IsAlloc DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T) $h))
 :qid |unknown.0:0|
 :skolemid |700|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T) $h))
)))
(assert (forall ((_module.List$T@@0 T@U) ) (! ($Is DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T@@0))
 :qid |unknown.0:0|
 :skolemid |699|
 :pattern ( ($Is DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T@@0)))
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
(assert (forall ((_module.List$T@@1 T@U) (|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass._module.List _module.List$T@@1))  (and ($IsBox |a#6#0#0| _module.List$T@@1) ($Is DatatypeTypeType |a#6#1#0| (Tclass._module.List _module.List$T@@1))))
 :qid |unknown.0:0|
 :skolemid |705|
 :pattern ( ($Is DatatypeTypeType (|#_module.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass._module.List _module.List$T@@1)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly T@U) (|z#0| Int) (|l#0| T@U) ) (!  (=> (or (|_module.__default.aux#canCall| (LitInt |z#0|) (Lit DatatypeTypeType |l#0|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |l#0| (Tclass._module.List TInt)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |l#0|)))))) (let ((|l'#3| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |l#0|)))))
(let ((|a#3| (LitInt (U_2_int ($Unbox intType (_module.List.head (Lit DatatypeTypeType |l#0|)))))))
 (=> (< |a#3| (LitInt |z#0|)) (|_module.__default.aux#canCall| (LitInt |z#0|) |l'#3|))))) (= (_module.__default.aux ($LS $ly) (LitInt |z#0|) (Lit DatatypeTypeType |l#0|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |l#0|)) (|#_module.List.Cons| ($Box intType (int_2_U (LitInt |z#0|))) (Lit DatatypeTypeType |#_module.List.Nil|)) (let ((|l'#2| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |l#0|)))))
(let ((|a#2| (LitInt (U_2_int ($Unbox intType (_module.List.head (Lit DatatypeTypeType |l#0|)))))))
(ite (<= (LitInt |z#0|) |a#2|) (|#_module.List.Cons| ($Box intType (int_2_U (LitInt |z#0|))) (Lit DatatypeTypeType |l#0|)) (|#_module.List.Cons| ($Box intType (int_2_U |a#2|)) (Lit DatatypeTypeType (_module.__default.aux ($LS $ly) (LitInt |z#0|) |l'#2|))))))))))
 :qid |CoqArtInsertionSortdfy.98:10|
 :weight 3
 :skolemid |625|
 :pattern ( (_module.__default.aux ($LS $ly) (LitInt |z#0|) (Lit DatatypeTypeType |l#0|)))
))))
(assert (forall ((d T@U) ) (! (= (_module.List.Nil_q d) (= (DatatypeCtorId d) |##_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |697|
 :pattern ( (_module.List.Nil_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.List.Cons_q d@@0) (= (DatatypeCtorId d@@0) |##_module.List.Cons|))
 :qid |unknown.0:0|
 :skolemid |702|
 :pattern ( (_module.List.Cons_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.List.Cons_q d@@1) (exists ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= d@@1 (|#_module.List.Cons| |a#5#0#0| |a#5#1#0|))
 :qid |CoqArtInsertionSortdfy.6:31|
 :skolemid |703|
)))
 :qid |unknown.0:0|
 :skolemid |704|
 :pattern ( (_module.List.Cons_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.List.Nil_q d@@2) (= d@@2 |#_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |698|
 :pattern ( (_module.List.Nil_q d@@2))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((_module.List$T@@2 T@U) ) (!  (and (= (Tag (Tclass._module.List _module.List$T@@2)) Tagclass._module.List) (= (TagFamily (Tclass._module.List _module.List$T@@2)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |530|
 :pattern ( (Tclass._module.List _module.List$T@@2))
)))
(assert (forall (($ly@@0 T@U) (|z#0@@0| Int) (|l#0@@0| T@U) ) (! (= (_module.__default.nb__occ ($LS $ly@@0) |z#0@@0| |l#0@@0|) (_module.__default.nb__occ $ly@@0 |z#0@@0| |l#0@@0|))
 :qid |CoqArtInsertionSortdfy.34:16|
 :skolemid |539|
 :pattern ( (_module.__default.nb__occ ($LS $ly@@0) |z#0@@0| |l#0@@0|))
)))
(assert (forall (($ly@@1 T@U) (|z#0@@1| Int) (|l#0@@1| T@U) ) (! (= (_module.__default.aux ($LS $ly@@1) |z#0@@1| |l#0@@1|) (_module.__default.aux $ly@@1 |z#0@@1| |l#0@@1|))
 :qid |CoqArtInsertionSortdfy.98:10|
 :skolemid |620|
 :pattern ( (_module.__default.aux ($LS $ly@@1) |z#0@@1| |l#0@@1|))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (|$IsA#_module.List| d@@3) (or (_module.List.Nil_q d@@3) (_module.List.Cons_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |714|
 :pattern ( (|$IsA#_module.List| d@@3))
)))
(assert (forall ((_module.List$T@@3 T@U) (d@@4 T@U) ) (!  (=> ($Is DatatypeTypeType d@@4 (Tclass._module.List _module.List$T@@3)) (or (_module.List.Nil_q d@@4) (_module.List.Cons_q d@@4)))
 :qid |unknown.0:0|
 :skolemid |715|
 :pattern ( (_module.List.Cons_q d@@4) ($Is DatatypeTypeType d@@4 (Tclass._module.List _module.List$T@@3)))
 :pattern ( (_module.List.Nil_q d@@4) ($Is DatatypeTypeType d@@4 (Tclass._module.List _module.List$T@@3)))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx TInt) (and (= ($Box intType ($Unbox intType bx)) bx) ($Is intType ($Unbox intType bx) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx TInt))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.List.Cons| |a#4#0#0| |a#4#1#0|)) |##_module.List.Cons|)
 :qid |CoqArtInsertionSortdfy.6:31|
 :skolemid |701|
 :pattern ( (|#_module.List.Cons| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) ) (! (= (_module.List.head (|#_module.List.Cons| |a#8#0#0| |a#8#1#0|)) |a#8#0#0|)
 :qid |CoqArtInsertionSortdfy.6:31|
 :skolemid |710|
 :pattern ( (|#_module.List.Cons| |a#8#0#0| |a#8#1#0|))
)))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| T@U) ) (! (= (_module.List.tail (|#_module.List.Cons| |a#10#0#0| |a#10#1#0|)) |a#10#1#0|)
 :qid |CoqArtInsertionSortdfy.6:31|
 :skolemid |712|
 :pattern ( (|#_module.List.Cons| |a#10#0#0| |a#10#1#0|))
)))
(assert (forall ((_module.List$T@@4 T@U) ) (! (= (Tclass._module.List_0 (Tclass._module.List _module.List$T@@4)) _module.List$T@@4)
 :qid |unknown.0:0|
 :skolemid |531|
 :pattern ( (Tclass._module.List _module.List$T@@4))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@2 T@U) (|z#0@@2| Int) (|l#0@@2| T@U) ) (!  (=> (or (|_module.__default.nb__occ#canCall| |z#0@@2| |l#0@@2|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |l#0@@2| (Tclass._module.List TInt)))) (and (=> (not (_module.List.Nil_q |l#0@@2|)) (let ((|l'#1| (_module.List.tail |l#0@@2|)))
(|_module.__default.nb__occ#canCall| |z#0@@2| |l'#1|))) (= (_module.__default.nb__occ ($LS $ly@@2) |z#0@@2| |l#0@@2|) (ite (_module.List.Nil_q |l#0@@2|) 0 (let ((|l'#0| (_module.List.tail |l#0@@2|)))
(let ((|z'#0| (U_2_int ($Unbox intType (_module.List.head |l#0@@2|)))))
(+ (ite (= |z#0@@2| |z'#0|) 1 0) (_module.__default.nb__occ $ly@@2 |z#0@@2| |l'#0|))))))))
 :qid |CoqArtInsertionSortdfy.34:16|
 :skolemid |543|
 :pattern ( (_module.__default.nb__occ ($LS $ly@@2) |z#0@@2| |l#0@@2|))
))))
(assert (forall ((|a#9#0#0| T@U) (|a#9#1#0| T@U) ) (! (< (BoxRank |a#9#0#0|) (DtRank (|#_module.List.Cons| |a#9#0#0| |a#9#1#0|)))
 :qid |CoqArtInsertionSortdfy.6:31|
 :skolemid |711|
 :pattern ( (|#_module.List.Cons| |a#9#0#0| |a#9#1#0|))
)))
(assert (forall ((|a#11#0#0| T@U) (|a#11#1#0| T@U) ) (! (< (DtRank |a#11#1#0|) (DtRank (|#_module.List.Cons| |a#11#0#0| |a#11#1#0|)))
 :qid |CoqArtInsertionSortdfy.6:31|
 :skolemid |713|
 :pattern ( (|#_module.List.Cons| |a#11#0#0| |a#11#1#0|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@3 T@U) (|z#0@@3| Int) (|l#0@@3| T@U) ) (!  (=> (or (|_module.__default.aux#canCall| |z#0@@3| |l#0@@3|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |l#0@@3| (Tclass._module.List TInt)))) ($Is DatatypeTypeType (_module.__default.aux $ly@@3 |z#0@@3| |l#0@@3|) (Tclass._module.List TInt)))
 :qid |CoqArtInsertionSortdfy.98:10|
 :skolemid |622|
 :pattern ( (_module.__default.aux $ly@@3 |z#0@@3| |l#0@@3|))
))))
(assert (forall ((d@@5 T@U) (_module.List$T@@5 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.List.Cons_q d@@5) ($IsAlloc DatatypeTypeType d@@5 (Tclass._module.List _module.List$T@@5) $h@@0))) ($IsAllocBox (_module.List.head d@@5) _module.List$T@@5 $h@@0))
 :qid |unknown.0:0|
 :skolemid |707|
 :pattern ( ($IsAllocBox (_module.List.head d@@5) _module.List$T@@5 $h@@0))
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
(assert (forall ((|l#0@@4| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@4| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0@@4|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |719|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@4| |l#1| |l#2| |l#3|) $o $f))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|l#0@@5| T@U) (|l'#0@@0| T@U) ) (!  (=> (or (|_module.__default.equiv#canCall| (Lit DatatypeTypeType |l#0@@5|) (Lit DatatypeTypeType |l'#0@@0|)) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |l#0@@5| (Tclass._module.List TInt)) ($Is DatatypeTypeType |l'#0@@0| (Tclass._module.List TInt))))) (and (forall ((|z#1| Int) ) (!  (and (|_module.__default.nb__occ#canCall| |z#1| (Lit DatatypeTypeType |l#0@@5|)) (|_module.__default.nb__occ#canCall| |z#1| (Lit DatatypeTypeType |l'#0@@0|)))
 :qid |CoqArtInsertionSortdfy.55:10|
 :skolemid |552|
 :pattern ( (_module.__default.nb__occ ($LS $LZ) |z#1| |l'#0@@0|))
 :pattern ( (_module.__default.nb__occ ($LS $LZ) |z#1| |l#0@@5|))
)) (= (_module.__default.equiv (Lit DatatypeTypeType |l#0@@5|) (Lit DatatypeTypeType |l'#0@@0|)) (forall ((|z#1@@0| Int) ) (! (= (_module.__default.nb__occ ($LS $LZ) |z#1@@0| (Lit DatatypeTypeType |l#0@@5|)) (_module.__default.nb__occ ($LS $LZ) |z#1@@0| (Lit DatatypeTypeType |l'#0@@0|)))
 :qid |CoqArtInsertionSortdfy.55:10|
 :skolemid |551|
 :pattern ( (_module.__default.nb__occ ($LS $LZ) |z#1@@0| |l'#0@@0|))
 :pattern ( (_module.__default.nb__occ ($LS $LZ) |z#1@@0| |l#0@@5|))
)))))
 :qid |CoqArtInsertionSortdfy.53:23|
 :weight 3
 :skolemid |553|
 :pattern ( (_module.__default.equiv (Lit DatatypeTypeType |l#0@@5|) (Lit DatatypeTypeType |l'#0@@0|)))
))))
(assert (forall ((d@@6 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@6)) (DtRank d@@6))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@6)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@4 T@U) (|z#0@@4| Int) (|l#0@@6| T@U) ) (!  (=> (or (|_module.__default.nb__occ#canCall| (LitInt |z#0@@4|) (Lit DatatypeTypeType |l#0@@6|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |l#0@@6| (Tclass._module.List TInt)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |l#0@@6|)))))) (let ((|l'#3@@0| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |l#0@@6|)))))
(|_module.__default.nb__occ#canCall| (LitInt |z#0@@4|) |l'#3@@0|))) (= (_module.__default.nb__occ ($LS $ly@@4) (LitInt |z#0@@4|) (Lit DatatypeTypeType |l#0@@6|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |l#0@@6|)) 0 (let ((|l'#2@@0| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |l#0@@6|)))))
(let ((|z'#2| (LitInt (U_2_int ($Unbox intType (_module.List.head (Lit DatatypeTypeType |l#0@@6|)))))))
(+ (ite (= (LitInt |z#0@@4|) |z'#2|) 1 0) (_module.__default.nb__occ ($LS $ly@@4) (LitInt |z#0@@4|) |l'#2@@0|))))))))
 :qid |CoqArtInsertionSortdfy.34:16|
 :weight 3
 :skolemid |544|
 :pattern ( (_module.__default.nb__occ ($LS $ly@@4) (LitInt |z#0@@4|) (Lit DatatypeTypeType |l#0@@6|)))
))))
(assert (forall ((_module.List$T@@6 T@U) (bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 (Tclass._module.List _module.List$T@@6)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@0)) bx@@0) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@0) (Tclass._module.List _module.List$T@@6))))
 :qid |unknown.0:0|
 :skolemid |532|
 :pattern ( ($IsBox bx@@0 (Tclass._module.List _module.List$T@@6)))
)))
(assert (forall ((d@@7 T@U) (_module.List$T@@7 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.List.Cons_q d@@7) ($IsAlloc DatatypeTypeType d@@7 (Tclass._module.List _module.List$T@@7) $h@@1))) ($IsAlloc DatatypeTypeType (_module.List.tail d@@7) (Tclass._module.List _module.List$T@@7) $h@@1))
 :qid |unknown.0:0|
 :skolemid |708|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.List.tail d@@7) (Tclass._module.List _module.List$T@@7) $h@@1))
)))
(assert (= |#_module.List.Nil| (Lit DatatypeTypeType |#_module.List.Nil|)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (= (|#_module.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)) (Lit DatatypeTypeType (|#_module.List.Cons| |a#7#0#0| |a#7#1#0|)))
 :qid |CoqArtInsertionSortdfy.6:31|
 :skolemid |709|
 :pattern ( (|#_module.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@5 T@U) (|z#0@@5| Int) (|l#0@@7| T@U) ) (!  (=> (or (|_module.__default.nb__occ#canCall| |z#0@@5| |l#0@@7|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |l#0@@7| (Tclass._module.List TInt)))) (<= (LitInt 0) (_module.__default.nb__occ $ly@@5 |z#0@@5| |l#0@@7|)))
 :qid |CoqArtInsertionSortdfy.34:16|
 :skolemid |541|
 :pattern ( (_module.__default.nb__occ $ly@@5 |z#0@@5| |l#0@@7|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|l#0@@8| T@U) (|l'#0@@1| T@U) ) (!  (=> (or (|_module.__default.equiv#canCall| |l#0@@8| |l'#0@@1|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |l#0@@8| (Tclass._module.List TInt)) ($Is DatatypeTypeType |l'#0@@1| (Tclass._module.List TInt))))) (and (forall ((|z#0@@6| Int) ) (!  (and (|_module.__default.nb__occ#canCall| |z#0@@6| |l#0@@8|) (|_module.__default.nb__occ#canCall| |z#0@@6| |l'#0@@1|))
 :qid |CoqArtInsertionSortdfy.55:10|
 :skolemid |549|
 :pattern ( (_module.__default.nb__occ ($LS $LZ) |z#0@@6| |l'#0@@1|))
 :pattern ( (_module.__default.nb__occ ($LS $LZ) |z#0@@6| |l#0@@8|))
)) (= (_module.__default.equiv |l#0@@8| |l'#0@@1|) (forall ((|z#0@@7| Int) ) (! (= (_module.__default.nb__occ ($LS $LZ) |z#0@@7| |l#0@@8|) (_module.__default.nb__occ ($LS $LZ) |z#0@@7| |l'#0@@1|))
 :qid |CoqArtInsertionSortdfy.55:10|
 :skolemid |548|
 :pattern ( (_module.__default.nb__occ ($LS $LZ) |z#0@@7| |l'#0@@1|))
 :pattern ( (_module.__default.nb__occ ($LS $LZ) |z#0@@7| |l#0@@8|))
)))))
 :qid |CoqArtInsertionSortdfy.53:23|
 :skolemid |550|
 :pattern ( (_module.__default.equiv |l#0@@8| |l'#0@@1|))
))))
(assert (forall ((h@@0 T@U) (v@@1 T@U) ) (! ($IsAlloc intType v@@1 TInt h@@0)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@1 TInt h@@0))
)))
(assert (forall ((_module.List$T@@8 T@U) (|a#6#0#0@@0| T@U) (|a#6#1#0@@0| T@U) ($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) (= ($IsAlloc DatatypeTypeType (|#_module.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass._module.List _module.List$T@@8) $h@@2)  (and ($IsAllocBox |a#6#0#0@@0| _module.List$T@@8 $h@@2) ($IsAlloc DatatypeTypeType |a#6#1#0@@0| (Tclass._module.List _module.List$T@@8) $h@@2))))
 :qid |unknown.0:0|
 :skolemid |706|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass._module.List _module.List$T@@8) $h@@2))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is intType v@@2 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@2 TInt))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@6 T@U) (|z#0@@8| Int) (|l#0@@9| T@U) ) (!  (=> (or (|_module.__default.aux#canCall| |z#0@@8| |l#0@@9|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |l#0@@9| (Tclass._module.List TInt)))) (and (=> (not (_module.List.Nil_q |l#0@@9|)) (let ((|l'#1@@0| (_module.List.tail |l#0@@9|)))
(let ((|a#1| (U_2_int ($Unbox intType (_module.List.head |l#0@@9|)))))
 (=> (< |a#1| |z#0@@8|) (|_module.__default.aux#canCall| |z#0@@8| |l'#1@@0|))))) (= (_module.__default.aux ($LS $ly@@6) |z#0@@8| |l#0@@9|) (ite (_module.List.Nil_q |l#0@@9|) (|#_module.List.Cons| ($Box intType (int_2_U |z#0@@8|)) (Lit DatatypeTypeType |#_module.List.Nil|)) (let ((|l'#0@@2| (_module.List.tail |l#0@@9|)))
(let ((|a#0| (U_2_int ($Unbox intType (_module.List.head |l#0@@9|)))))
(ite (<= |z#0@@8| |a#0|) (|#_module.List.Cons| ($Box intType (int_2_U |z#0@@8|)) |l#0@@9|) (|#_module.List.Cons| ($Box intType (int_2_U |a#0|)) (_module.__default.aux $ly@@6 |z#0@@8| |l'#0@@2|)))))))))
 :qid |CoqArtInsertionSortdfy.98:10|
 :skolemid |624|
 :pattern ( (_module.__default.aux ($LS $ly@@6) |z#0@@8| |l#0@@9|))
))))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |x#0| () Int)
(declare-fun |l#0@@10| () T@U)
(declare-fun |_mcc#0#0_0@0| () Int)
(declare-fun |_mcc#1#0_0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id Impl$$_module.__default.aux__equiv)
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
 (=> (= (ControlFlow 0 0) 8) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (=> (|_module.__default.equiv#canCall| (|#_module.List.Cons| ($Box intType (int_2_U |x#0|)) |l#0@@10|) (_module.__default.aux ($LS $LZ) |x#0| |l#0@@10|)) (or (_module.__default.equiv (|#_module.List.Cons| ($Box intType (int_2_U |x#0|)) |l#0@@10|) (_module.__default.aux ($LS $LZ) |x#0| |l#0@@10|)) (forall ((|z#1@@1| Int) ) (! (= (_module.__default.nb__occ ($LS ($LS $LZ)) |z#1@@1| (|#_module.List.Cons| ($Box intType (int_2_U |x#0|)) |l#0@@10|)) (_module.__default.nb__occ ($LS ($LS $LZ)) |z#1@@1| (_module.__default.aux ($LS ($LS $LZ)) |x#0| |l#0@@10|)))
 :qid |CoqArtInsertionSortdfy.55:10|
 :skolemid |630|
 :pattern ( (_module.__default.nb__occ ($LS ($LS $LZ)) |z#1@@1| (_module.__default.aux ($LS ($LS $LZ)) |x#0| |l#0@@10|)))
 :pattern ( (_module.__default.nb__occ ($LS ($LS $LZ)) |z#1@@1| (|#_module.List.Cons| ($Box intType (int_2_U |x#0|)) |l#0@@10|)))
)))))))
(let ((anon5_Then_correct  (=> (= |l#0@@10| (|#_module.List.Cons| ($Box intType (int_2_U |_mcc#0#0_0@0|)) |_mcc#1#0_0@0|)) (=> (and ($Is DatatypeTypeType |_mcc#1#0_0@0| (Tclass._module.List TInt)) (= (ControlFlow 0 5) 3)) GeneratedUnifiedExit_correct))))
(let ((anon4_Then_correct  (=> (and (= |l#0@@10| |#_module.List.Nil|) (= (ControlFlow 0 4) 3)) GeneratedUnifiedExit_correct)))
(let ((anon5_Else_correct true))
(let ((anon4_Else_correct  (=> (or (not (= |l#0@@10| |#_module.List.Nil|)) (not true)) (and (=> (= (ControlFlow 0 6) 5) anon5_Then_correct) (=> (= (ControlFlow 0 6) 1) anon5_Else_correct)))))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (|$IsA#_module.List| |l#0@@10|)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap $Heap@0) (forall ((|$ih#l0#0| T@U) (|$ih#x0#0| Int) ) (!  (=> (and (and ($Is DatatypeTypeType |$ih#l0#0| (Tclass._module.List TInt)) (U_2_bool (Lit boolType (bool_2_U true)))) (or (< (DtRank |$ih#l0#0|) (DtRank |l#0@@10|)) (and (= (DtRank |$ih#l0#0|) (DtRank |l#0@@10|)) (and (<= 0 |$ih#x0#0|) (< |$ih#x0#0| |x#0|))))) (_module.__default.equiv (|#_module.List.Cons| ($Box intType (int_2_U |$ih#x0#0|)) |$ih#l0#0|) (_module.__default.aux ($LS $LZ) |$ih#x0#0| |$ih#l0#0|)))
 :qid |CoqArtInsertionSortdfy.118:17|
 :skolemid |633|
 :pattern ( (_module.__default.aux ($LS $LZ) |$ih#x0#0| |$ih#l0#0|))
 :pattern ( (|#_module.List.Cons| ($Box intType (int_2_U |$ih#x0#0|)) |$ih#l0#0|))
)))) (and (=> (= (ControlFlow 0 7) 4) anon4_Then_correct) (=> (= (ControlFlow 0 7) 6) anon4_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is DatatypeTypeType |l#0@@10| (Tclass._module.List TInt)) ($IsAlloc DatatypeTypeType |l#0@@10| (Tclass._module.List TInt) $Heap)) (|$IsA#_module.List| |l#0@@10|)) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 8) 7))) anon0_correct))))
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
