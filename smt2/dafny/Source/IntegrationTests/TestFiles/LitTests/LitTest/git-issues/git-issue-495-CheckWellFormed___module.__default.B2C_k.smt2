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
(declare-fun TReal () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagReal () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._module.Gen () T@U)
(declare-fun Tagclass._module.IntB () T@U)
(declare-fun Tagclass._module.GenSub () T@U)
(declare-fun |##_module.Gen.Create| () T@U)
(declare-fun tytagFamily$Gen () T@U)
(declare-fun tytagFamily$IntB () T@U)
(declare-fun tytagFamily$GenSub () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.IntB () T@U)
(declare-fun |$IsA#_module.Gen| (T@U) Bool)
(declare-fun _module.Gen.Create_q (T@U) Bool)
(declare-fun Tclass._module.GenSub (T@U T@U T@U) T@U)
(declare-fun Tclass._module.GenSub_0 (T@U) T@U)
(declare-fun Tclass._module.GenSub_1 (T@U) T@U)
(declare-fun Tclass._module.GenSub_2 (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Gen (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun LitInt (Int) Int)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.Gen.Create| (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Mod (Int Int) Int)
(declare-fun Tclass._module.Gen_0 (T@U) T@U)
(declare-fun _module.Gen.x (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
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
(assert (distinct TBool TReal TagBool TagReal alloc Tagclass._module.Gen Tagclass._module.IntB Tagclass._module.GenSub |##_module.Gen.Create| tytagFamily$Gen tytagFamily$IntB tytagFamily$GenSub)
)
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TReal) TagReal))
(assert (forall ((|k#0| T@U) ($h T@U) ) (! ($IsAlloc intType |k#0| Tclass._module.IntB $h)
 :qid |unknown.0:0|
 :skolemid |550|
 :pattern ( ($IsAlloc intType |k#0| Tclass._module.IntB $h))
)))
(assert (forall ((d T@U) ) (!  (=> (|$IsA#_module.Gen| d) (_module.Gen.Create_q d))
 :qid |unknown.0:0|
 :skolemid |542|
 :pattern ( (|$IsA#_module.Gen| d))
)))
(assert (forall ((_module.GenSub$Y T@U) (_module.GenSub$L T@U) (_module.GenSub$V T@U) ) (! (= (Tclass._module.GenSub_0 (Tclass._module.GenSub _module.GenSub$Y _module.GenSub$L _module.GenSub$V)) _module.GenSub$Y)
 :qid |unknown.0:0|
 :skolemid |512|
 :pattern ( (Tclass._module.GenSub _module.GenSub$Y _module.GenSub$L _module.GenSub$V))
)))
(assert (forall ((_module.GenSub$Y@@0 T@U) (_module.GenSub$L@@0 T@U) (_module.GenSub$V@@0 T@U) ) (! (= (Tclass._module.GenSub_1 (Tclass._module.GenSub _module.GenSub$Y@@0 _module.GenSub$L@@0 _module.GenSub$V@@0)) _module.GenSub$L@@0)
 :qid |unknown.0:0|
 :skolemid |513|
 :pattern ( (Tclass._module.GenSub _module.GenSub$Y@@0 _module.GenSub$L@@0 _module.GenSub$V@@0))
)))
(assert (forall ((_module.GenSub$Y@@1 T@U) (_module.GenSub$L@@1 T@U) (_module.GenSub$V@@1 T@U) ) (! (= (Tclass._module.GenSub_2 (Tclass._module.GenSub _module.GenSub$Y@@1 _module.GenSub$L@@1 _module.GenSub$V@@1)) _module.GenSub$V@@1)
 :qid |unknown.0:0|
 :skolemid |514|
 :pattern ( (Tclass._module.GenSub _module.GenSub$Y@@1 _module.GenSub$L@@1 _module.GenSub$V@@1))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((_module.Gen$X T@U) (d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 (Tclass._module.Gen _module.Gen$X)) (_module.Gen.Create_q d@@0))
 :qid |unknown.0:0|
 :skolemid |543|
 :pattern ( (_module.Gen.Create_q d@@0) ($Is DatatypeTypeType d@@0 (Tclass._module.Gen _module.Gen$X)))
)))
(assert (forall ((_module.GenSub$Y@@2 T@U) (_module.GenSub$L@@2 T@U) (_module.GenSub$V@@2 T@U) ) (!  (and (= (Tag (Tclass._module.GenSub _module.GenSub$Y@@2 _module.GenSub$L@@2 _module.GenSub$V@@2)) Tagclass._module.GenSub) (= (TagFamily (Tclass._module.GenSub _module.GenSub$Y@@2 _module.GenSub$L@@2 _module.GenSub$V@@2)) tytagFamily$GenSub))
 :qid |unknown.0:0|
 :skolemid |511|
 :pattern ( (Tclass._module.GenSub _module.GenSub$Y@@2 _module.GenSub$L@@2 _module.GenSub$V@@2))
)))
(assert (forall ((_module.GenSub$Y@@3 T@U) (_module.GenSub$L@@3 T@U) (_module.GenSub$V@@3 T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass._module.GenSub _module.GenSub$Y@@3 _module.GenSub$L@@3 _module.GenSub$V@@3)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx)) bx) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx) (Tclass._module.GenSub _module.GenSub$Y@@3 _module.GenSub$L@@3 _module.GenSub$V@@3))))
 :qid |unknown.0:0|
 :skolemid |515|
 :pattern ( ($IsBox bx (Tclass._module.GenSub _module.GenSub$Y@@3 _module.GenSub$L@@3 _module.GenSub$V@@3)))
)))
(assert (forall ((_module.GenSub$Y@@4 T@U) (_module.GenSub$L@@4 T@U) (_module.GenSub$V@@4 T@U) (|g#0| T@U) ) (! (= ($Is DatatypeTypeType |g#0| (Tclass._module.GenSub _module.GenSub$Y@@4 _module.GenSub$L@@4 _module.GenSub$V@@4))  (and ($Is DatatypeTypeType |g#0| (Tclass._module.Gen _module.GenSub$L@@4)) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |unknown.0:0|
 :skolemid |554|
 :pattern ( ($Is DatatypeTypeType |g#0| (Tclass._module.GenSub _module.GenSub$Y@@4 _module.GenSub$L@@4 _module.GenSub$V@@4)))
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
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
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
(assert (forall ((d@@1 T@U) ) (! (= (_module.Gen.Create_q d@@1) (= (DatatypeCtorId d@@1) |##_module.Gen.Create|))
 :qid |unknown.0:0|
 :skolemid |533|
 :pattern ( (_module.Gen.Create_q d@@1))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.Gen.Create_q d@@2) (exists ((|a#6#0#0| T@U) ) (! (= d@@2 (|#_module.Gen.Create| |a#6#0#0|))
 :qid |gitissue495dfy.32:26|
 :skolemid |534|
)))
 :qid |unknown.0:0|
 :skolemid |535|
 :pattern ( (_module.Gen.Create_q d@@2))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@1) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@2) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@2))
)))
(assert (forall ((_module.GenSub$Y@@5 T@U) (_module.GenSub$L@@5 T@U) (_module.GenSub$V@@5 T@U) (|g#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc DatatypeTypeType |g#0@@0| (Tclass._module.GenSub _module.GenSub$Y@@5 _module.GenSub$L@@5 _module.GenSub$V@@5) $h@@0) ($IsAlloc DatatypeTypeType |g#0@@0| (Tclass._module.Gen _module.GenSub$L@@5) $h@@0))
 :qid |unknown.0:0|
 :skolemid |555|
 :pattern ( ($IsAlloc DatatypeTypeType |g#0@@0| (Tclass._module.GenSub _module.GenSub$Y@@5 _module.GenSub$L@@5 _module.GenSub$V@@5) $h@@0))
)))
(assert (forall ((_module.Gen$X@@0 T@U) ) (!  (and (= (Tag (Tclass._module.Gen _module.Gen$X@@0)) Tagclass._module.Gen) (= (TagFamily (Tclass._module.Gen _module.Gen$X@@0)) tytagFamily$Gen))
 :qid |unknown.0:0|
 :skolemid |494|
 :pattern ( (Tclass._module.Gen _module.Gen$X@@0))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.IntB) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) Tclass._module.IntB)))
 :qid |unknown.0:0|
 :skolemid |506|
 :pattern ( ($IsBox bx@@1 Tclass._module.IntB))
)))
(assert (forall ((_module.Gen$X@@1 T@U) (|a#7#0#0| T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) (= ($IsAlloc DatatypeTypeType (|#_module.Gen.Create| |a#7#0#0|) (Tclass._module.Gen _module.Gen$X@@1) $h@@1) ($IsAllocBox |a#7#0#0| _module.Gen$X@@1 $h@@1)))
 :qid |unknown.0:0|
 :skolemid |537|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Gen.Create| |a#7#0#0|) (Tclass._module.Gen _module.Gen$X@@1) $h@@1))
)))
(assert (forall ((|k#0@@0| T@U) ) (! (= ($Is intType |k#0@@0| Tclass._module.IntB) (= (Mod (U_2_int |k#0@@0|) (LitInt 2)) (LitInt 0)))
 :qid |unknown.0:0|
 :skolemid |549|
 :pattern ( ($Is intType |k#0@@0| Tclass._module.IntB))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TReal) (and (= ($Box realType ($Unbox realType bx@@2)) bx@@2) ($Is realType ($Unbox realType bx@@2) TReal)))
 :qid |DafnyPreludebpl.179:15|
 :skolemid |28|
 :pattern ( ($IsBox bx@@2 TReal))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TBool) (and (= ($Box boolType ($Unbox boolType bx@@3)) bx@@3) ($Is boolType ($Unbox boolType bx@@3) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@3 TBool))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@2) ($Is T@@3 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@2))
)))
(assert (forall ((_module.Gen$X@@2 T@U) ) (! (= (Tclass._module.Gen_0 (Tclass._module.Gen _module.Gen$X@@2)) _module.Gen$X@@2)
 :qid |unknown.0:0|
 :skolemid |495|
 :pattern ( (Tclass._module.Gen _module.Gen$X@@2))
)))
(assert (forall ((|a#5#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Gen.Create| |a#5#0#0|)) |##_module.Gen.Create|)
 :qid |gitissue495dfy.32:26|
 :skolemid |532|
 :pattern ( (|#_module.Gen.Create| |a#5#0#0|))
)))
(assert (forall ((|a#9#0#0| T@U) ) (! (= (_module.Gen.x (|#_module.Gen.Create| |a#9#0#0|)) |a#9#0#0|)
 :qid |gitissue495dfy.32:26|
 :skolemid |540|
 :pattern ( (|#_module.Gen.Create| |a#9#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((_module.Gen$X@@3 T@U) (|a#7#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Gen.Create| |a#7#0#0@@0|) (Tclass._module.Gen _module.Gen$X@@3)) ($IsBox |a#7#0#0@@0| _module.Gen$X@@3))
 :qid |unknown.0:0|
 :skolemid |536|
 :pattern ( ($Is DatatypeTypeType (|#_module.Gen.Create| |a#7#0#0@@0|) (Tclass._module.Gen _module.Gen$X@@3)))
)))
(assert (forall ((|a#10#0#0| T@U) ) (! (< (BoxRank |a#10#0#0|) (DtRank (|#_module.Gen.Create| |a#10#0#0|)))
 :qid |gitissue495dfy.32:26|
 :skolemid |541|
 :pattern ( (|#_module.Gen.Create| |a#10#0#0|))
)))
(assert (forall ((d@@3 T@U) (_module.Gen$X@@4 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.Gen.Create_q d@@3) ($IsAlloc DatatypeTypeType d@@3 (Tclass._module.Gen _module.Gen$X@@4) $h@@2))) ($IsAllocBox (_module.Gen.x d@@3) _module.Gen$X@@4 $h@@2))
 :qid |unknown.0:0|
 :skolemid |538|
 :pattern ( ($IsAllocBox (_module.Gen.x d@@3) _module.Gen$X@@4 $h@@2))
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
 :skolemid |556|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((x@@6 Int) (y Int) ) (! (= (Mod x@@6 y) (mod x@@6 y))
 :qid |DafnyPreludebpl.1649:14|
 :skolemid |340|
 :pattern ( (Mod x@@6 y))
)))
(assert (forall ((d@@4 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@4)) (DtRank d@@4))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@4)))
)))
(assert (forall ((_module.Gen$X@@5 T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass._module.Gen _module.Gen$X@@5)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@4)) bx@@4) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@4) (Tclass._module.Gen _module.Gen$X@@5))))
 :qid |unknown.0:0|
 :skolemid |496|
 :pattern ( ($IsBox bx@@4 (Tclass._module.Gen _module.Gen$X@@5)))
)))
(assert (= (Tag Tclass._module.IntB) Tagclass._module.IntB))
(assert (= (TagFamily Tclass._module.IntB) tytagFamily$IntB))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((|a#8#0#0| T@U) ) (! (= (|#_module.Gen.Create| (Lit BoxType |a#8#0#0|)) (Lit DatatypeTypeType (|#_module.Gen.Create| |a#8#0#0|)))
 :qid |gitissue495dfy.32:26|
 :skolemid |539|
 :pattern ( (|#_module.Gen.Create| (Lit BoxType |a#8#0#0|)))
)))
(assert (forall ((x@@8 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@8)) (Lit BoxType ($Box T@@5 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@8)))
)))
(assert (forall ((h@@3 T@U) (v@@2 T@U) ) (! ($IsAlloc realType v@@2 TReal h@@3)
 :qid |DafnyPreludebpl.290:14|
 :skolemid |62|
 :pattern ( ($IsAlloc realType v@@2 TReal h@@3))
)))
(assert (forall ((h@@4 T@U) (v@@3 T@U) ) (! ($IsAlloc boolType v@@3 TBool h@@4)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@3 TBool h@@4))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is realType v@@4 TReal)
 :qid |DafnyPreludebpl.229:14|
 :skolemid |41|
 :pattern ( ($Is realType v@@4 TReal))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is boolType v@@5 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@5 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |m#0| () Int)
(declare-fun |newtype$check#0@0| () Int)
(declare-fun |newtype$check#1@0| () Int)
(declare-fun |newtype$check#2@0| () Int)
(declare-fun |newtype$check#3@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |g#0@@1| () T@U)
(declare-fun |y#0| () Int)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id CheckWellFormed$$_module.__default.B2C_k)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon4_correct true))
(let ((anon5_Else_correct  (=> (and (=> (< |m#0| 0) (= (Mod |m#0| (LitInt 2)) (LitInt 1))) (= (ControlFlow 0 4) 1)) anon4_correct)))
(let ((anon5_Then_correct  (=> (= |newtype$check#0@0| (LitInt 0)) (=> (and (< |m#0| 0) (= |newtype$check#1@0| (LitInt 2))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= (LitInt 2) 0)) (not true))) (=> (or (not (= (LitInt 2) 0)) (not true)) (=> (and (and (= |newtype$check#2@0| (Mod |m#0| (LitInt 2))) (= |newtype$check#3@0| (LitInt 1))) (and (= (Mod |m#0| (LitInt 2)) (LitInt 1)) (= (ControlFlow 0 2) 1))) anon4_correct)))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 5) 2) anon5_Then_correct) (=> (= (ControlFlow 0 5) 4) anon5_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (and ($Is DatatypeTypeType |g#0@@1| (Tclass._module.GenSub TBool Tclass._module.IntB TReal)) ($IsAlloc DatatypeTypeType |g#0@@1| (Tclass._module.GenSub TBool Tclass._module.IntB TReal) $Heap)) (|$IsA#_module.Gen| |g#0@@1|)) (U_2_bool (Lit boolType (bool_2_U true)))) (and (and (= (Mod |y#0| (LitInt 2)) (LitInt 0)) (<= (LitInt 0) |y#0|)) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 6) 5)))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
