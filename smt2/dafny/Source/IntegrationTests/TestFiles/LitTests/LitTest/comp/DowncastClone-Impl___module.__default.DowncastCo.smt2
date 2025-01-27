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
(declare-fun alloc () T@U)
(declare-fun Tagclass._module.Y () T@U)
(declare-fun Tagclass._module.X () T@U)
(declare-fun Tagclass._module.Co () T@U)
(declare-fun |##_module.Co.Co| () T@U)
(declare-fun |##_module.Co.C| () T@U)
(declare-fun Tagclass._module.X? () T@U)
(declare-fun Tagclass._module.Y? () T@U)
(declare-fun tytagFamily$Y () T@U)
(declare-fun tytagFamily$X () T@U)
(declare-fun tytagFamily$Co () T@U)
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
(declare-fun implements$_module.X (T@U) Bool)
(declare-fun Tclass._module.Y? () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.Co.C| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tclass._module.X? () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.X () T@U)
(declare-fun Tclass._module.Y () T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Co (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun _module.Co.Co_q (T@U) Bool)
(declare-fun _module.Co.C_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.Co.Co| (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Tclass._module.Co_0 (T@U) T@U)
(declare-fun _module.Co._h0 (T@U) T@U)
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
(assert (distinct alloc Tagclass._module.Y Tagclass._module.X Tagclass._module.Co |##_module.Co.Co| |##_module.Co.C| Tagclass._module.X? Tagclass._module.Y? tytagFamily$Y tytagFamily$X tytagFamily$Co)
)
(assert (implements$_module.X Tclass._module.Y?))
(assert (= (DatatypeCtorId |#_module.Co.C|) |##_module.Co.C|))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.Y?)  (or (= $o null) (= (dtype $o) Tclass._module.Y?)))
 :qid |unknown.0:0|
 :skolemid |593|
 :pattern ( ($Is refType $o Tclass._module.Y?))
)))
(assert (forall ((bx T@U) ($h T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.Y? $h) ($IsGoodHeap $h)) ($IsAllocBox bx Tclass._module.X? $h))
 :qid |unknown.0:0|
 :skolemid |611|
 :pattern ( ($IsAllocBox bx Tclass._module.Y? $h))
)))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.X $h@@0) ($IsAlloc refType |c#0| Tclass._module.X? $h@@0))
 :qid |unknown.0:0|
 :skolemid |591|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.X $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.X? $h@@0))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Y $h@@1) ($IsAlloc refType |c#0@@0| Tclass._module.Y? $h@@1))
 :qid |unknown.0:0|
 :skolemid |599|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Y $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Y? $h@@1))
)))
(assert (= (Ctor DatatypeTypeType) 4))
(assert (forall ((_module.Co$T T@U) ($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) ($IsAlloc DatatypeTypeType |#_module.Co.C| (Tclass._module.Co _module.Co$T) $h@@2))
 :qid |unknown.0:0|
 :skolemid |536|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.Co.C| (Tclass._module.Co _module.Co$T) $h@@2))
)))
(assert (forall ((_module.Co$T@@0 T@U) ) (! ($Is DatatypeTypeType |#_module.Co.C| (Tclass._module.Co _module.Co$T@@0))
 :qid |unknown.0:0|
 :skolemid |535|
 :pattern ( ($Is DatatypeTypeType |#_module.Co.C| (Tclass._module.Co _module.Co$T@@0)))
)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 5)) (= (Ctor BoxType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall (($o@@0 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._module.X? $h@@3)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |589|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.X? $h@@3))
)))
(assert (forall (($o@@1 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._module.Y? $h@@4)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |594|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._module.Y? $h@@4))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((d T@U) ) (! (= (_module.Co.Co_q d) (= (DatatypeCtorId d) |##_module.Co.Co|))
 :qid |unknown.0:0|
 :skolemid |524|
 :pattern ( (_module.Co.Co_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Co.C_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Co.C|))
 :qid |unknown.0:0|
 :skolemid |533|
 :pattern ( (_module.Co.C_q d@@0))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.Co.C_q d@@1) (= d@@1 |#_module.Co.C|))
 :qid |unknown.0:0|
 :skolemid |534|
 :pattern ( (_module.Co.C_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.Co.Co_q d@@2) (exists ((|a#1#0#0| T@U) ) (! (= d@@2 (|#_module.Co.Co| |a#1#0#0|))
 :qid |DowncastClonedfy.3:22|
 :skolemid |525|
)))
 :qid |unknown.0:0|
 :skolemid |526|
 :pattern ( (_module.Co.Co_q d@@2))
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
(assert (forall ((_module.Co$T@@1 T@U) ) (!  (and (= (Tag (Tclass._module.Co _module.Co$T@@1)) Tagclass._module.Co) (= (TagFamily (Tclass._module.Co _module.Co$T@@1)) tytagFamily$Co))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( (Tclass._module.Co _module.Co$T@@1))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.Y) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._module.Y)))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( ($IsBox bx@@1 Tclass._module.Y))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.X) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._module.X)))
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( ($IsBox bx@@2 Tclass._module.X))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.X?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._module.X?)))
 :qid |unknown.0:0|
 :skolemid |587|
 :pattern ( ($IsBox bx@@3 Tclass._module.X?))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.Y?) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.Y?)))
 :qid |unknown.0:0|
 :skolemid |592|
 :pattern ( ($IsBox bx@@4 Tclass._module.Y?))
)))
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass._module.X)  (and ($Is refType |c#0@@1| Tclass._module.X?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |590|
 :pattern ( ($Is refType |c#0@@1| Tclass._module.X))
 :pattern ( ($Is refType |c#0@@1| Tclass._module.X?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._module.Y)  (and ($Is refType |c#0@@2| Tclass._module.Y?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |598|
 :pattern ( ($Is refType |c#0@@2| Tclass._module.Y))
 :pattern ( ($Is refType |c#0@@2| Tclass._module.Y?))
)))
(assert (forall ((_module.Co$T@@2 T@U) (|a#2#0#0| T@U) ($h@@5 T@U) ) (!  (=> ($IsGoodHeap $h@@5) (= ($IsAlloc DatatypeTypeType (|#_module.Co.Co| |a#2#0#0|) (Tclass._module.Co _module.Co$T@@2) $h@@5) ($IsAllocBox |a#2#0#0| _module.Co$T@@2 $h@@5)))
 :qid |unknown.0:0|
 :skolemid |528|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Co.Co| |a#2#0#0|) (Tclass._module.Co _module.Co$T@@2) $h@@5))
)))
(assert (forall (($o@@2 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@2 Tclass._module.Y? $heap) ($IsAlloc refType $o@@2 Tclass._module.X? $heap))
 :qid |unknown.0:0|
 :skolemid |613|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.Y? $heap))
)))
(assert (forall ((_module.Co$T@@3 T@U) (d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 (Tclass._module.Co _module.Co$T@@3)) (or (_module.Co.Co_q d@@3) (_module.Co.C_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |538|
 :pattern ( (_module.Co.C_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass._module.Co _module.Co$T@@3)))
 :pattern ( (_module.Co.Co_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass._module.Co _module.Co$T@@3)))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@2) ($Is T@@3 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@2))
)))
(assert (forall ((_module.Co$T@@4 T@U) ) (! (= (Tclass._module.Co_0 (Tclass._module.Co _module.Co$T@@4)) _module.Co$T@@4)
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( (Tclass._module.Co _module.Co$T@@4))
)))
(assert (forall ((|a#0#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Co.Co| |a#0#0#0|)) |##_module.Co.Co|)
 :qid |DowncastClonedfy.3:22|
 :skolemid |523|
 :pattern ( (|#_module.Co.Co| |a#0#0#0|))
)))
(assert (forall ((|a#4#0#0| T@U) ) (! (= (_module.Co._h0 (|#_module.Co.Co| |a#4#0#0|)) |a#4#0#0|)
 :qid |DowncastClonedfy.3:22|
 :skolemid |531|
 :pattern ( (|#_module.Co.Co| |a#4#0#0|))
)))
(assert (forall ((x@@4 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@4))
)))
(assert (forall ((_module.Co$T@@5 T@U) (|a#2#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Co.Co| |a#2#0#0@@0|) (Tclass._module.Co _module.Co$T@@5)) ($IsBox |a#2#0#0@@0| _module.Co$T@@5))
 :qid |unknown.0:0|
 :skolemid |527|
 :pattern ( ($Is DatatypeTypeType (|#_module.Co.Co| |a#2#0#0@@0|) (Tclass._module.Co _module.Co$T@@5)))
)))
(assert (forall ((|a#5#0#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_module.Co.Co| |a#5#0#0|)))
 :qid |DowncastClonedfy.3:22|
 :skolemid |532|
 :pattern ( (|#_module.Co.Co| |a#5#0#0|))
)))
(assert (forall ((d@@4 T@U) (_module.Co$T@@6 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (_module.Co.Co_q d@@4) ($IsAlloc DatatypeTypeType d@@4 (Tclass._module.Co _module.Co$T@@6) $h@@6))) ($IsAllocBox (_module.Co._h0 d@@4) _module.Co$T@@6 $h@@6))
 :qid |unknown.0:0|
 :skolemid |529|
 :pattern ( ($IsAllocBox (_module.Co._h0 d@@4) _module.Co$T@@6 $h@@6))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@3 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))  (=> (and (or (not (= $o@@3 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@3) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |614|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))
)))
(assert (forall ((d@@5 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@5)) (DtRank d@@5))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@5)))
)))
(assert (forall ((_module.Co$T@@7 T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass._module.Co _module.Co$T@@7)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@5)) bx@@5) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@5) (Tclass._module.Co _module.Co$T@@7))))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( ($IsBox bx@@5 (Tclass._module.Co _module.Co$T@@7)))
)))
(assert (forall (($o@@4 T@U) ) (!  (=> ($Is refType $o@@4 Tclass._module.Y?) ($Is refType $o@@4 Tclass._module.X?))
 :qid |unknown.0:0|
 :skolemid |612|
 :pattern ( ($Is refType $o@@4 Tclass._module.Y?))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.Y?) ($IsBox bx@@6 Tclass._module.X?))
 :qid |unknown.0:0|
 :skolemid |610|
 :pattern ( ($IsBox bx@@6 Tclass._module.Y?))
)))
(assert (= (Tag Tclass._module.Y) Tagclass._module.Y))
(assert (= (TagFamily Tclass._module.Y) tytagFamily$Y))
(assert (= (Tag Tclass._module.X) Tagclass._module.X))
(assert (= (TagFamily Tclass._module.X) tytagFamily$X))
(assert (= (Tag Tclass._module.X?) Tagclass._module.X?))
(assert (= (TagFamily Tclass._module.X?) tytagFamily$X))
(assert (= (Tag Tclass._module.Y?) Tagclass._module.Y?))
(assert (= (TagFamily Tclass._module.Y?) tytagFamily$Y))
(assert (= |#_module.Co.C| (Lit DatatypeTypeType |#_module.Co.C|)))
(assert (forall (($o@@5 T@U) ) (! (= ($Is refType $o@@5 Tclass._module.X?)  (or (= $o@@5 null) (implements$_module.X (dtype $o@@5))))
 :qid |unknown.0:0|
 :skolemid |588|
 :pattern ( ($Is refType $o@@5 Tclass._module.X?))
)))
(assert (forall ((|a#3#0#0| T@U) ) (! (= (|#_module.Co.Co| (Lit BoxType |a#3#0#0|)) (Lit DatatypeTypeType (|#_module.Co.Co| |a#3#0#0|)))
 :qid |DowncastClonedfy.3:22|
 :skolemid |530|
 :pattern ( (|#_module.Co.Co| (Lit BoxType |a#3#0#0|)))
)))
(assert (forall ((x@@5 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@5)) (Lit BoxType ($Box T@@5 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@5)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun call1formal@this () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun call1formal@this@0 () T@U)
(declare-fun |a#0@0| () T@U)
(declare-fun |b#0@0| () T@U)
(declare-fun |defass#i#0| () Bool)
(declare-fun |i#0| () T@U)
(declare-fun |a#0| () T@U)
(declare-fun |b#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.DowncastCo)
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
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and (or (not (= call1formal@this null)) (not true)) (and ($Is refType call1formal@this Tclass._module.Y) ($IsAlloc refType call1formal@this Tclass._module.Y $Heap))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (=> (and (and (and (or (not (= call1formal@this@0 null)) (not true)) (and ($Is refType call1formal@this@0 Tclass._module.Y) ($IsAlloc refType call1formal@this@0 Tclass._module.Y $Heap@0))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap call1formal@this@0) alloc))))) (and (forall (($o@@6 T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@6) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@6) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@6)))
 :qid |DowncastClonedfy.11:3|
 :skolemid |596|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@6))
)) ($HeapSucc $Heap $Heap@0))) (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= |a#0@0| (|#_module.Co.Co| ($Box refType call1formal@this@0))) (=> (and (and ($Is DatatypeTypeType |b#0@0| (Tclass._module.Co Tclass._module.Y)) ($IsAlloc DatatypeTypeType |b#0@0| (Tclass._module.Co Tclass._module.Y) $Heap@0)) (= (ControlFlow 0 2) (- 0 1))) ($Is DatatypeTypeType |a#0@0| (Tclass._module.Co Tclass._module.Y))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (=> |defass#i#0| (and ($Is refType |i#0| Tclass._module.Y) ($IsAlloc refType |i#0| Tclass._module.Y $Heap))) true)) (and (and ($Is DatatypeTypeType |a#0| (Tclass._module.Co Tclass._module.X)) ($IsAlloc DatatypeTypeType |a#0| (Tclass._module.Co Tclass._module.X) $Heap)) true)) (and (and (and ($Is DatatypeTypeType |b#0| (Tclass._module.Co Tclass._module.Y)) ($IsAlloc DatatypeTypeType |b#0| (Tclass._module.Co Tclass._module.Y) $Heap)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 4) 2)))) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
