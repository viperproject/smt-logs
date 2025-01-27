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
(declare-fun Tagclass._module.Cl () T@U)
(declare-fun Tagclass._module.Tr () T@U)
(declare-fun Tagclass._module.Y () T@U)
(declare-fun |##_module.Y.Y| () T@U)
(declare-fun Tagclass._module.Tr? () T@U)
(declare-fun Tagclass._module.Cl? () T@U)
(declare-fun tytagFamily$Cl () T@U)
(declare-fun tytagFamily$Tr () T@U)
(declare-fun tytagFamily$Y () T@U)
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
(declare-fun implements$_module.Tr (T@U) Bool)
(declare-fun Tclass._module.Cl? () T@U)
(declare-fun _module.Y.Y_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Y (T@U) T@U)
(declare-fun refType () T@T)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tclass._module.Tr? () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.Tr () T@U)
(declare-fun Tclass._module.Cl () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.Y.Y| (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Tclass._module.Y_0 (T@U) T@U)
(declare-fun _module.Y.y (T@U) T@U)
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
(assert (distinct alloc Tagclass._module.Cl Tagclass._module.Tr Tagclass._module.Y |##_module.Y.Y| Tagclass._module.Tr? Tagclass._module.Cl? tytagFamily$Cl tytagFamily$Tr tytagFamily$Y)
)
(assert (implements$_module.Tr Tclass._module.Cl?))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((_module.Y$U T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._module.Y _module.Y$U)) (_module.Y.Y_q d))
 :qid |unknown.0:0|
 :skolemid |499|
 :pattern ( (_module.Y.Y_q d) ($Is DatatypeTypeType d (Tclass._module.Y _module.Y$U)))
)))
(assert (= (Ctor refType) 4))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.Cl?)  (or (= $o null) (= (dtype $o) Tclass._module.Cl?)))
 :qid |unknown.0:0|
 :skolemid |508|
 :pattern ( ($Is refType $o Tclass._module.Cl?))
)))
(assert (forall ((bx T@U) ($h T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.Cl? $h) ($IsGoodHeap $h)) ($IsAllocBox bx Tclass._module.Tr? $h))
 :qid |unknown.0:0|
 :skolemid |516|
 :pattern ( ($IsAllocBox bx Tclass._module.Cl? $h))
)))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Tr $h@@0) ($IsAlloc refType |c#0| Tclass._module.Tr? $h@@0))
 :qid |unknown.0:0|
 :skolemid |506|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Tr $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Tr? $h@@0))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Cl $h@@1) ($IsAlloc refType |c#0@@0| Tclass._module.Cl? $h@@1))
 :qid |unknown.0:0|
 :skolemid |514|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Cl $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Cl? $h@@1))
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
(assert (forall (($o@@0 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._module.Tr? $h@@2)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |504|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.Tr? $h@@2))
)))
(assert (forall (($o@@1 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._module.Cl? $h@@3)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |509|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._module.Cl? $h@@3))
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
(assert (forall ((d@@0 T@U) ) (! (= (_module.Y.Y_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Y.Y|))
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( (_module.Y.Y_q d@@0))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@2)) x@@2)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T x@@2))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.Y.Y_q d@@1) (exists ((|a#1#0#0| T@U) ) (! (= d@@1 (|#_module.Y.Y| |a#1#0#0|))
 :qid |gitissue1815bdfy.3:20|
 :skolemid |490|
)))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( (_module.Y.Y_q d@@1))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v) t h@@0) ($IsAlloc T@@0 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@0 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@1) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@1 v@@0 t@@1 h@@2) ($IsAlloc T@@1 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@1 v@@0 t@@1 h@@2))
)))
(assert (forall ((_module.Y$U@@0 T@U) ) (!  (and (= (Tag (Tclass._module.Y _module.Y$U@@0)) Tagclass._module.Y) (= (TagFamily (Tclass._module.Y _module.Y$U@@0)) tytagFamily$Y))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( (Tclass._module.Y _module.Y$U@@0))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.Cl) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._module.Cl)))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( ($IsBox bx@@1 Tclass._module.Cl))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.Tr) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._module.Tr)))
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( ($IsBox bx@@2 Tclass._module.Tr))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.Tr?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._module.Tr?)))
 :qid |unknown.0:0|
 :skolemid |502|
 :pattern ( ($IsBox bx@@3 Tclass._module.Tr?))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.Cl?) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.Cl?)))
 :qid |unknown.0:0|
 :skolemid |507|
 :pattern ( ($IsBox bx@@4 Tclass._module.Cl?))
)))
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass._module.Tr)  (and ($Is refType |c#0@@1| Tclass._module.Tr?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |505|
 :pattern ( ($Is refType |c#0@@1| Tclass._module.Tr))
 :pattern ( ($Is refType |c#0@@1| Tclass._module.Tr?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._module.Cl)  (and ($Is refType |c#0@@2| Tclass._module.Cl?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |513|
 :pattern ( ($Is refType |c#0@@2| Tclass._module.Cl))
 :pattern ( ($Is refType |c#0@@2| Tclass._module.Cl?))
)))
(assert (forall ((_module.Y$U@@1 T@U) (|a#2#0#0| T@U) ($h@@4 T@U) ) (!  (=> ($IsGoodHeap $h@@4) (= ($IsAlloc DatatypeTypeType (|#_module.Y.Y| |a#2#0#0|) (Tclass._module.Y _module.Y$U@@1) $h@@4) ($IsAllocBox |a#2#0#0| _module.Y$U@@1 $h@@4)))
 :qid |unknown.0:0|
 :skolemid |493|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Y.Y| |a#2#0#0|) (Tclass._module.Y _module.Y$U@@1) $h@@4))
)))
(assert (forall (($o@@2 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@2 Tclass._module.Cl? $heap) ($IsAlloc refType $o@@2 Tclass._module.Tr? $heap))
 :qid |unknown.0:0|
 :skolemid |518|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.Cl? $heap))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@2) ($Is T@@2 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@2))
)))
(assert (forall ((_module.Y$U@@2 T@U) ) (! (= (Tclass._module.Y_0 (Tclass._module.Y _module.Y$U@@2)) _module.Y$U@@2)
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( (Tclass._module.Y _module.Y$U@@2))
)))
(assert (forall ((|a#0#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Y.Y| |a#0#0#0|)) |##_module.Y.Y|)
 :qid |gitissue1815bdfy.3:20|
 :skolemid |488|
 :pattern ( (|#_module.Y.Y| |a#0#0#0|))
)))
(assert (forall ((|a#4#0#0| T@U) ) (! (= (_module.Y.y (|#_module.Y.Y| |a#4#0#0|)) |a#4#0#0|)
 :qid |gitissue1815bdfy.3:20|
 :skolemid |496|
 :pattern ( (|#_module.Y.Y| |a#4#0#0|))
)))
(assert (forall ((x@@3 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@3)) x@@3)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@3))
)))
(assert (forall ((_module.Y$U@@3 T@U) (|a#2#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Y.Y| |a#2#0#0@@0|) (Tclass._module.Y _module.Y$U@@3)) ($IsBox |a#2#0#0@@0| _module.Y$U@@3))
 :qid |unknown.0:0|
 :skolemid |492|
 :pattern ( ($Is DatatypeTypeType (|#_module.Y.Y| |a#2#0#0@@0|) (Tclass._module.Y _module.Y$U@@3)))
)))
(assert (forall ((|a#5#0#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_module.Y.Y| |a#5#0#0|)))
 :qid |gitissue1815bdfy.3:20|
 :skolemid |497|
 :pattern ( (|#_module.Y.Y| |a#5#0#0|))
)))
(assert (forall ((d@@2 T@U) (_module.Y$U@@4 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_module.Y.Y_q d@@2) ($IsAlloc DatatypeTypeType d@@2 (Tclass._module.Y _module.Y$U@@4) $h@@5))) ($IsAllocBox (_module.Y.y d@@2) _module.Y$U@@4 $h@@5))
 :qid |unknown.0:0|
 :skolemid |494|
 :pattern ( ($IsAllocBox (_module.Y.y d@@2) _module.Y$U@@4 $h@@5))
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
 :skolemid |519|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))
)))
(assert (forall ((d@@3 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@3)) (DtRank d@@3))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@3)))
)))
(assert (forall ((_module.Y$U@@5 T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass._module.Y _module.Y$U@@5)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@5)) bx@@5) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@5) (Tclass._module.Y _module.Y$U@@5))))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( ($IsBox bx@@5 (Tclass._module.Y _module.Y$U@@5)))
)))
(assert (forall (($o@@4 T@U) ) (!  (=> ($Is refType $o@@4 Tclass._module.Cl?) ($Is refType $o@@4 Tclass._module.Tr?))
 :qid |unknown.0:0|
 :skolemid |517|
 :pattern ( ($Is refType $o@@4 Tclass._module.Cl?))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.Cl?) ($IsBox bx@@6 Tclass._module.Tr?))
 :qid |unknown.0:0|
 :skolemid |515|
 :pattern ( ($IsBox bx@@6 Tclass._module.Cl?))
)))
(assert (= (Tag Tclass._module.Cl) Tagclass._module.Cl))
(assert (= (TagFamily Tclass._module.Cl) tytagFamily$Cl))
(assert (= (Tag Tclass._module.Tr) Tagclass._module.Tr))
(assert (= (TagFamily Tclass._module.Tr) tytagFamily$Tr))
(assert (= (Tag Tclass._module.Tr?) Tagclass._module.Tr?))
(assert (= (TagFamily Tclass._module.Tr?) tytagFamily$Tr))
(assert (= (Tag Tclass._module.Cl?) Tagclass._module.Cl?))
(assert (= (TagFamily Tclass._module.Cl?) tytagFamily$Cl))
(assert (forall (($o@@5 T@U) ) (! (= ($Is refType $o@@5 Tclass._module.Tr?)  (or (= $o@@5 null) (implements$_module.Tr (dtype $o@@5))))
 :qid |unknown.0:0|
 :skolemid |503|
 :pattern ( ($Is refType $o@@5 Tclass._module.Tr?))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun call1formal@this () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun call1formal@this@0 () T@U)
(declare-fun |e#0@0| () T@U)
(declare-fun |defass#cl#0| () Bool)
(declare-fun |cl#0| () T@U)
(declare-fun |defass#e#0| () Bool)
(declare-fun |e#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon3_Else_correct true))
(let ((anon3_Then_correct true))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and (or (not (= call1formal@this null)) (not true)) (and ($Is refType call1formal@this Tclass._module.Cl) ($IsAlloc refType call1formal@this Tclass._module.Cl $Heap))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (=> (and (and (and (or (not (= call1formal@this@0 null)) (not true)) (and ($Is refType call1formal@this@0 Tclass._module.Cl) ($IsAlloc refType call1formal@this@0 Tclass._module.Cl $Heap@0))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap call1formal@this@0) alloc))))) (and (forall (($o@@6 T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@6) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@6) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@6)))
 :qid |gitissue1815bdfy.7:3|
 :skolemid |511|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@6))
)) ($HeapSucc $Heap $Heap@0))) (and (=> (= (ControlFlow 0 3) (- 0 5)) true) (=> (= |e#0@0| (|#_module.Y.Y| ($Box refType call1formal@this@0))) (and (=> (= (ControlFlow 0 3) (- 0 4)) true) (and (=> (= (ControlFlow 0 3) 1) anon3_Then_correct) (=> (= (ControlFlow 0 3) 2) anon3_Else_correct))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (=> |defass#cl#0| (and ($Is refType |cl#0| Tclass._module.Cl) ($IsAlloc refType |cl#0| Tclass._module.Cl $Heap))) true)) (and (and (=> |defass#e#0| (and ($Is DatatypeTypeType |e#0| (Tclass._module.Y Tclass._module.Tr)) ($IsAlloc DatatypeTypeType |e#0| (Tclass._module.Y Tclass._module.Tr) $Heap))) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 6) 3)))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
