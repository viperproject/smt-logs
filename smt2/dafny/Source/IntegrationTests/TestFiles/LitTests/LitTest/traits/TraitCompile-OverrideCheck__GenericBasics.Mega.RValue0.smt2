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
(declare-fun Tagclass.GenericBasics.Mega () T@U)
(declare-fun Tagclass.GenericBasics.Tr () T@U)
(declare-fun Tagclass.GenericBasics.Tr? () T@U)
(declare-fun Tagclass.GenericBasics.Mega? () T@U)
(declare-fun tytagFamily$Mega () T@U)
(declare-fun tytagFamily$Tr () T@U)
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
(declare-fun Tclass.GenericBasics.Mega (T@U T@U T@U) T@U)
(declare-fun Tclass.GenericBasics.Mega_0 (T@U) T@U)
(declare-fun Tclass.GenericBasics.Mega_1 (T@U) T@U)
(declare-fun Tclass.GenericBasics.Mega_2 (T@U) T@U)
(declare-fun Tclass.GenericBasics.Mega? (T@U T@U T@U) T@U)
(declare-fun Tclass.GenericBasics.Mega?_0 (T@U) T@U)
(declare-fun Tclass.GenericBasics.Mega?_1 (T@U) T@U)
(declare-fun Tclass.GenericBasics.Mega?_2 (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun refType () T@T)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun implements$GenericBasics.Tr (T@U T@U T@U) Bool)
(declare-fun Tclass.GenericBasics.Tr (T@U T@U) T@U)
(declare-fun Tclass.GenericBasics.Tr? (T@U T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun Tclass.GenericBasics.Tr_0 (T@U) T@U)
(declare-fun Tclass.GenericBasics.Tr_1 (T@U) T@U)
(declare-fun Tclass.GenericBasics.Tr?_0 (T@U) T@U)
(declare-fun Tclass.GenericBasics.Tr?_1 (T@U) T@U)
(declare-fun dtype (T@U) T@U)
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
(assert (distinct TInt TagInt alloc Tagclass.GenericBasics.Mega Tagclass.GenericBasics.Tr Tagclass.GenericBasics.Tr? Tagclass.GenericBasics.Mega? tytagFamily$Mega tytagFamily$Tr)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((GenericBasics.Mega$P T@U) (GenericBasics.Mega$Q T@U) (GenericBasics.Mega$L T@U) ) (! (= (Tclass.GenericBasics.Mega_0 (Tclass.GenericBasics.Mega GenericBasics.Mega$P GenericBasics.Mega$Q GenericBasics.Mega$L)) GenericBasics.Mega$P)
 :qid |unknown.0:0|
 :skolemid |1684|
 :pattern ( (Tclass.GenericBasics.Mega GenericBasics.Mega$P GenericBasics.Mega$Q GenericBasics.Mega$L))
)))
(assert (forall ((GenericBasics.Mega$P@@0 T@U) (GenericBasics.Mega$Q@@0 T@U) (GenericBasics.Mega$L@@0 T@U) ) (! (= (Tclass.GenericBasics.Mega_1 (Tclass.GenericBasics.Mega GenericBasics.Mega$P@@0 GenericBasics.Mega$Q@@0 GenericBasics.Mega$L@@0)) GenericBasics.Mega$Q@@0)
 :qid |unknown.0:0|
 :skolemid |1685|
 :pattern ( (Tclass.GenericBasics.Mega GenericBasics.Mega$P@@0 GenericBasics.Mega$Q@@0 GenericBasics.Mega$L@@0))
)))
(assert (forall ((GenericBasics.Mega$P@@1 T@U) (GenericBasics.Mega$Q@@1 T@U) (GenericBasics.Mega$L@@1 T@U) ) (! (= (Tclass.GenericBasics.Mega_2 (Tclass.GenericBasics.Mega GenericBasics.Mega$P@@1 GenericBasics.Mega$Q@@1 GenericBasics.Mega$L@@1)) GenericBasics.Mega$L@@1)
 :qid |unknown.0:0|
 :skolemid |1686|
 :pattern ( (Tclass.GenericBasics.Mega GenericBasics.Mega$P@@1 GenericBasics.Mega$Q@@1 GenericBasics.Mega$L@@1))
)))
(assert (forall ((GenericBasics.Mega$P@@2 T@U) (GenericBasics.Mega$Q@@2 T@U) (GenericBasics.Mega$L@@2 T@U) ) (! (= (Tclass.GenericBasics.Mega?_0 (Tclass.GenericBasics.Mega? GenericBasics.Mega$P@@2 GenericBasics.Mega$Q@@2 GenericBasics.Mega$L@@2)) GenericBasics.Mega$P@@2)
 :qid |unknown.0:0|
 :skolemid |1831|
 :pattern ( (Tclass.GenericBasics.Mega? GenericBasics.Mega$P@@2 GenericBasics.Mega$Q@@2 GenericBasics.Mega$L@@2))
)))
(assert (forall ((GenericBasics.Mega$P@@3 T@U) (GenericBasics.Mega$Q@@3 T@U) (GenericBasics.Mega$L@@3 T@U) ) (! (= (Tclass.GenericBasics.Mega?_1 (Tclass.GenericBasics.Mega? GenericBasics.Mega$P@@3 GenericBasics.Mega$Q@@3 GenericBasics.Mega$L@@3)) GenericBasics.Mega$Q@@3)
 :qid |unknown.0:0|
 :skolemid |1832|
 :pattern ( (Tclass.GenericBasics.Mega? GenericBasics.Mega$P@@3 GenericBasics.Mega$Q@@3 GenericBasics.Mega$L@@3))
)))
(assert (forall ((GenericBasics.Mega$P@@4 T@U) (GenericBasics.Mega$Q@@4 T@U) (GenericBasics.Mega$L@@4 T@U) ) (! (= (Tclass.GenericBasics.Mega?_2 (Tclass.GenericBasics.Mega? GenericBasics.Mega$P@@4 GenericBasics.Mega$Q@@4 GenericBasics.Mega$L@@4)) GenericBasics.Mega$L@@4)
 :qid |unknown.0:0|
 :skolemid |1833|
 :pattern ( (Tclass.GenericBasics.Mega? GenericBasics.Mega$P@@4 GenericBasics.Mega$Q@@4 GenericBasics.Mega$L@@4))
)))
(assert (forall ((GenericBasics.Mega$P@@5 T@U) (GenericBasics.Mega$Q@@5 T@U) (GenericBasics.Mega$L@@5 T@U) ) (!  (and (= (Tag (Tclass.GenericBasics.Mega GenericBasics.Mega$P@@5 GenericBasics.Mega$Q@@5 GenericBasics.Mega$L@@5)) Tagclass.GenericBasics.Mega) (= (TagFamily (Tclass.GenericBasics.Mega GenericBasics.Mega$P@@5 GenericBasics.Mega$Q@@5 GenericBasics.Mega$L@@5)) tytagFamily$Mega))
 :qid |unknown.0:0|
 :skolemid |1683|
 :pattern ( (Tclass.GenericBasics.Mega GenericBasics.Mega$P@@5 GenericBasics.Mega$Q@@5 GenericBasics.Mega$L@@5))
)))
(assert (forall ((GenericBasics.Mega$P@@6 T@U) (GenericBasics.Mega$Q@@6 T@U) (GenericBasics.Mega$L@@6 T@U) ) (!  (and (= (Tag (Tclass.GenericBasics.Mega? GenericBasics.Mega$P@@6 GenericBasics.Mega$Q@@6 GenericBasics.Mega$L@@6)) Tagclass.GenericBasics.Mega?) (= (TagFamily (Tclass.GenericBasics.Mega? GenericBasics.Mega$P@@6 GenericBasics.Mega$Q@@6 GenericBasics.Mega$L@@6)) tytagFamily$Mega))
 :qid |unknown.0:0|
 :skolemid |1830|
 :pattern ( (Tclass.GenericBasics.Mega? GenericBasics.Mega$P@@6 GenericBasics.Mega$Q@@6 GenericBasics.Mega$L@@6))
)))
(assert (= (Ctor refType) 3))
(assert (forall ((GenericBasics.Mega$P@@7 T@U) (GenericBasics.Mega$Q@@7 T@U) (GenericBasics.Mega$L@@7 T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass.GenericBasics.Mega GenericBasics.Mega$P@@7 GenericBasics.Mega$Q@@7 GenericBasics.Mega$L@@7)) (and (= ($Box refType ($Unbox refType bx)) bx) ($Is refType ($Unbox refType bx) (Tclass.GenericBasics.Mega GenericBasics.Mega$P@@7 GenericBasics.Mega$Q@@7 GenericBasics.Mega$L@@7))))
 :qid |unknown.0:0|
 :skolemid |1687|
 :pattern ( ($IsBox bx (Tclass.GenericBasics.Mega GenericBasics.Mega$P@@7 GenericBasics.Mega$Q@@7 GenericBasics.Mega$L@@7)))
)))
(assert (forall ((GenericBasics.Mega$P@@8 T@U) (GenericBasics.Mega$Q@@8 T@U) (GenericBasics.Mega$L@@8 T@U) (bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 (Tclass.GenericBasics.Mega? GenericBasics.Mega$P@@8 GenericBasics.Mega$Q@@8 GenericBasics.Mega$L@@8)) (and (= ($Box refType ($Unbox refType bx@@0)) bx@@0) ($Is refType ($Unbox refType bx@@0) (Tclass.GenericBasics.Mega? GenericBasics.Mega$P@@8 GenericBasics.Mega$Q@@8 GenericBasics.Mega$L@@8))))
 :qid |unknown.0:0|
 :skolemid |1834|
 :pattern ( ($IsBox bx@@0 (Tclass.GenericBasics.Mega? GenericBasics.Mega$P@@8 GenericBasics.Mega$Q@@8 GenericBasics.Mega$L@@8)))
)))
(assert (forall ((GenericBasics.Mega$P@@9 T@U) (GenericBasics.Mega$Q@@9 T@U) (GenericBasics.Mega$L@@9 T@U) (|c#0| T@U) ) (! (= ($Is refType |c#0| (Tclass.GenericBasics.Mega GenericBasics.Mega$P@@9 GenericBasics.Mega$Q@@9 GenericBasics.Mega$L@@9))  (and ($Is refType |c#0| (Tclass.GenericBasics.Mega? GenericBasics.Mega$P@@9 GenericBasics.Mega$Q@@9 GenericBasics.Mega$L@@9)) (or (not (= |c#0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1902|
 :pattern ( ($Is refType |c#0| (Tclass.GenericBasics.Mega GenericBasics.Mega$P@@9 GenericBasics.Mega$Q@@9 GenericBasics.Mega$L@@9)))
 :pattern ( ($Is refType |c#0| (Tclass.GenericBasics.Mega? GenericBasics.Mega$P@@9 GenericBasics.Mega$Q@@9 GenericBasics.Mega$L@@9)))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@2)) x@@2)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1158|
 :pattern ( ($Unbox T x@@2))
)))
(assert (forall ((GenericBasics.Mega$P@@10 T@U) (GenericBasics.Mega$Q@@10 T@U) (GenericBasics.Mega$L@@10 T@U) ) (! (implements$GenericBasics.Tr (Tclass.GenericBasics.Mega? GenericBasics.Mega$P@@10 GenericBasics.Mega$Q@@10 GenericBasics.Mega$L@@10) GenericBasics.Mega$Q@@10 TInt)
 :qid |unknown.0:0|
 :skolemid |1837|
)))
(assert (forall ((GenericBasics.Tr$A T@U) (GenericBasics.Tr$B T@U) (|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| (Tclass.GenericBasics.Tr GenericBasics.Tr$A GenericBasics.Tr$B))  (and ($Is refType |c#0@@0| (Tclass.GenericBasics.Tr? GenericBasics.Tr$A GenericBasics.Tr$B)) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1756|
 :pattern ( ($Is refType |c#0@@0| (Tclass.GenericBasics.Tr GenericBasics.Tr$A GenericBasics.Tr$B)))
 :pattern ( ($Is refType |c#0@@0| (Tclass.GenericBasics.Tr? GenericBasics.Tr$A GenericBasics.Tr$B)))
)))
(assert (forall ((GenericBasics.Tr$A@@0 T@U) (GenericBasics.Tr$B@@0 T@U) (|c#0@@1| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0@@1| (Tclass.GenericBasics.Tr GenericBasics.Tr$A@@0 GenericBasics.Tr$B@@0) $h) ($IsAlloc refType |c#0@@1| (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@0 GenericBasics.Tr$B@@0) $h))
 :qid |unknown.0:0|
 :skolemid |1757|
 :pattern ( ($IsAlloc refType |c#0@@1| (Tclass.GenericBasics.Tr GenericBasics.Tr$A@@0 GenericBasics.Tr$B@@0) $h))
 :pattern ( ($IsAlloc refType |c#0@@1| (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@0 GenericBasics.Tr$B@@0) $h))
)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 4)) (= (Ctor BoxType) 5)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 6)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((GenericBasics.Mega$P@@11 T@U) (GenericBasics.Mega$Q@@11 T@U) (GenericBasics.Mega$L@@11 T@U) ($o T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o (Tclass.GenericBasics.Mega? GenericBasics.Mega$P@@11 GenericBasics.Mega$Q@@11 GenericBasics.Mega$L@@11) $h@@0)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1836|
 :pattern ( ($IsAlloc refType $o (Tclass.GenericBasics.Mega? GenericBasics.Mega$P@@11 GenericBasics.Mega$Q@@11 GenericBasics.Mega$L@@11) $h@@0))
)))
(assert (forall ((GenericBasics.Mega$P@@12 T@U) (GenericBasics.Mega$Q@@12 T@U) (GenericBasics.Mega$L@@12 T@U) ($o@@0 T@U) ) (!  (=> ($Is refType $o@@0 (Tclass.GenericBasics.Mega? GenericBasics.Mega$P@@12 GenericBasics.Mega$Q@@12 GenericBasics.Mega$L@@12)) ($Is refType $o@@0 (Tclass.GenericBasics.Tr? GenericBasics.Mega$Q@@12 TInt)))
 :qid |unknown.0:0|
 :skolemid |1910|
 :pattern ( ($Is refType $o@@0 (Tclass.GenericBasics.Mega? GenericBasics.Mega$P@@12 GenericBasics.Mega$Q@@12 GenericBasics.Mega$L@@12)))
)))
(assert (forall ((GenericBasics.Mega$P@@13 T@U) (GenericBasics.Mega$Q@@13 T@U) (GenericBasics.Mega$L@@13 T@U) (bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 (Tclass.GenericBasics.Mega? GenericBasics.Mega$P@@13 GenericBasics.Mega$Q@@13 GenericBasics.Mega$L@@13)) ($IsBox bx@@1 (Tclass.GenericBasics.Tr? GenericBasics.Mega$Q@@13 TInt)))
 :qid |unknown.0:0|
 :skolemid |1908|
 :pattern ( ($IsBox bx@@1 (Tclass.GenericBasics.Mega? GenericBasics.Mega$P@@13 GenericBasics.Mega$Q@@13 GenericBasics.Mega$L@@13)))
)))
(assert (forall ((GenericBasics.Tr$A@@1 T@U) (GenericBasics.Tr$B@@1 T@U) ($o@@1 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@1 (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@1 GenericBasics.Tr$B@@1) $h@@1)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1704|
 :pattern ( ($IsAlloc refType $o@@1 (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@1 GenericBasics.Tr$B@@1) $h@@1))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TInt) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |1159|
 :pattern ( ($IsBox bx@@2 TInt))
)))
(assert (forall ((v T@U) (t T@U) (T@@0 T@T) ) (! (= ($IsBox ($Box T@@0 v) t) ($Is T@@0 v t))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1170|
 :pattern ( ($IsBox ($Box T@@0 v) t))
)))
(assert (forall ((GenericBasics.Tr$A@@2 T@U) (GenericBasics.Tr$B@@2 T@U) ) (! (= (Tclass.GenericBasics.Tr_0 (Tclass.GenericBasics.Tr GenericBasics.Tr$A@@2 GenericBasics.Tr$B@@2)) GenericBasics.Tr$A@@2)
 :qid |unknown.0:0|
 :skolemid |1690|
 :pattern ( (Tclass.GenericBasics.Tr GenericBasics.Tr$A@@2 GenericBasics.Tr$B@@2))
)))
(assert (forall ((GenericBasics.Tr$A@@3 T@U) (GenericBasics.Tr$B@@3 T@U) ) (! (= (Tclass.GenericBasics.Tr_1 (Tclass.GenericBasics.Tr GenericBasics.Tr$A@@3 GenericBasics.Tr$B@@3)) GenericBasics.Tr$B@@3)
 :qid |unknown.0:0|
 :skolemid |1691|
 :pattern ( (Tclass.GenericBasics.Tr GenericBasics.Tr$A@@3 GenericBasics.Tr$B@@3))
)))
(assert (forall ((GenericBasics.Tr$A@@4 T@U) (GenericBasics.Tr$B@@4 T@U) ) (! (= (Tclass.GenericBasics.Tr?_0 (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@4 GenericBasics.Tr$B@@4)) GenericBasics.Tr$A@@4)
 :qid |unknown.0:0|
 :skolemid |1698|
 :pattern ( (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@4 GenericBasics.Tr$B@@4))
)))
(assert (forall ((GenericBasics.Tr$A@@5 T@U) (GenericBasics.Tr$B@@5 T@U) ) (! (= (Tclass.GenericBasics.Tr?_1 (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@5 GenericBasics.Tr$B@@5)) GenericBasics.Tr$B@@5)
 :qid |unknown.0:0|
 :skolemid |1699|
 :pattern ( (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@5 GenericBasics.Tr$B@@5))
)))
(assert (forall ((GenericBasics.Tr$A@@6 T@U) (GenericBasics.Tr$B@@6 T@U) ($o@@2 T@U) ) (! (= ($Is refType $o@@2 (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@6 GenericBasics.Tr$B@@6))  (or (= $o@@2 null) (implements$GenericBasics.Tr (dtype $o@@2) GenericBasics.Tr$A@@6 GenericBasics.Tr$B@@6)))
 :qid |unknown.0:0|
 :skolemid |1703|
 :pattern ( ($Is refType $o@@2 (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@6 GenericBasics.Tr$B@@6)))
)))
(assert (forall ((x@@3 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@3)) x@@3)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1157|
 :pattern ( ($Box T@@1 x@@3))
)))
(assert (forall ((GenericBasics.Tr$A@@7 T@U) (GenericBasics.Tr$B@@7 T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass.GenericBasics.Tr GenericBasics.Tr$A@@7 GenericBasics.Tr$B@@7)) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) (Tclass.GenericBasics.Tr GenericBasics.Tr$A@@7 GenericBasics.Tr$B@@7))))
 :qid |unknown.0:0|
 :skolemid |1692|
 :pattern ( ($IsBox bx@@3 (Tclass.GenericBasics.Tr GenericBasics.Tr$A@@7 GenericBasics.Tr$B@@7)))
)))
(assert (forall ((GenericBasics.Tr$A@@8 T@U) (GenericBasics.Tr$B@@8 T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@8 GenericBasics.Tr$B@@8)) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@8 GenericBasics.Tr$B@@8))))
 :qid |unknown.0:0|
 :skolemid |1700|
 :pattern ( ($IsBox bx@@4 (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@8 GenericBasics.Tr$B@@8)))
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
 :skolemid |8388|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))
)))
(assert (forall ((GenericBasics.Mega$P@@14 T@U) (GenericBasics.Mega$Q@@14 T@U) (GenericBasics.Mega$L@@14 T@U) ($o@@4 T@U) ) (! (= ($Is refType $o@@4 (Tclass.GenericBasics.Mega? GenericBasics.Mega$P@@14 GenericBasics.Mega$Q@@14 GenericBasics.Mega$L@@14))  (or (= $o@@4 null) (= (dtype $o@@4) (Tclass.GenericBasics.Mega? GenericBasics.Mega$P@@14 GenericBasics.Mega$Q@@14 GenericBasics.Mega$L@@14))))
 :qid |unknown.0:0|
 :skolemid |1835|
 :pattern ( ($Is refType $o@@4 (Tclass.GenericBasics.Mega? GenericBasics.Mega$P@@14 GenericBasics.Mega$Q@@14 GenericBasics.Mega$L@@14)))
)))
(assert (forall ((GenericBasics.Mega$P@@15 T@U) (GenericBasics.Mega$Q@@15 T@U) (GenericBasics.Mega$L@@15 T@U) (|c#0@@2| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@2| (Tclass.GenericBasics.Mega GenericBasics.Mega$P@@15 GenericBasics.Mega$Q@@15 GenericBasics.Mega$L@@15) $h@@2) ($IsAlloc refType |c#0@@2| (Tclass.GenericBasics.Mega? GenericBasics.Mega$P@@15 GenericBasics.Mega$Q@@15 GenericBasics.Mega$L@@15) $h@@2))
 :qid |unknown.0:0|
 :skolemid |1903|
 :pattern ( ($IsAlloc refType |c#0@@2| (Tclass.GenericBasics.Mega GenericBasics.Mega$P@@15 GenericBasics.Mega$Q@@15 GenericBasics.Mega$L@@15) $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@2| (Tclass.GenericBasics.Mega? GenericBasics.Mega$P@@15 GenericBasics.Mega$Q@@15 GenericBasics.Mega$L@@15) $h@@2))
)))
(assert (forall ((GenericBasics.Tr$A@@9 T@U) (GenericBasics.Tr$B@@9 T@U) ) (!  (and (= (Tag (Tclass.GenericBasics.Tr GenericBasics.Tr$A@@9 GenericBasics.Tr$B@@9)) Tagclass.GenericBasics.Tr) (= (TagFamily (Tclass.GenericBasics.Tr GenericBasics.Tr$A@@9 GenericBasics.Tr$B@@9)) tytagFamily$Tr))
 :qid |unknown.0:0|
 :skolemid |1689|
 :pattern ( (Tclass.GenericBasics.Tr GenericBasics.Tr$A@@9 GenericBasics.Tr$B@@9))
)))
(assert (forall ((GenericBasics.Tr$A@@10 T@U) (GenericBasics.Tr$B@@10 T@U) ) (!  (and (= (Tag (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@10 GenericBasics.Tr$B@@10)) Tagclass.GenericBasics.Tr?) (= (TagFamily (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@10 GenericBasics.Tr$B@@10)) tytagFamily$Tr))
 :qid |unknown.0:0|
 :skolemid |1697|
 :pattern ( (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@10 GenericBasics.Tr$B@@10))
)))
(assert (forall ((GenericBasics.Mega$P@@16 T@U) (GenericBasics.Mega$Q@@16 T@U) (GenericBasics.Mega$L@@16 T@U) ($o@@5 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@5 (Tclass.GenericBasics.Mega? GenericBasics.Mega$P@@16 GenericBasics.Mega$Q@@16 GenericBasics.Mega$L@@16) $heap) ($IsAlloc refType $o@@5 (Tclass.GenericBasics.Tr? GenericBasics.Mega$Q@@16 TInt) $heap))
 :qid |unknown.0:0|
 :skolemid |1911|
 :pattern ( ($IsAlloc refType $o@@5 (Tclass.GenericBasics.Mega? GenericBasics.Mega$P@@16 GenericBasics.Mega$Q@@16 GenericBasics.Mega$L@@16) $heap))
)))
(assert (forall ((h T@U) (v@@0 T@U) ) (! ($IsAlloc intType v@@0 TInt h)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |1193|
 :pattern ( ($IsAlloc intType v@@0 TInt h))
)))
(assert (forall ((v@@1 T@U) ) (! ($Is intType v@@1 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |1172|
 :pattern ( ($Is intType v@@1 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun GenericBasics.Tr$A@@11 () T@U)
(declare-fun GenericBasics.Mega$Q@@17 () T@U)
(declare-fun GenericBasics.Tr$B@@11 () T@U)
(declare-fun GenericBasics.Tr.RValue0$X () T@U)
(declare-fun GenericBasics.Mega.RValue0$XX () T@U)
(declare-fun Mega_$_ReadsFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun this () T@U)
(declare-fun GenericBasics.Mega$P@@17 () T@U)
(declare-fun GenericBasics.Mega$L@@17 () T@U)
(declare-fun |x#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id OverrideCheck$$GenericBasics.Mega.RValue0)
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
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (= GenericBasics.Tr$A@@11 GenericBasics.Mega$Q@@17) (=> (and (= GenericBasics.Tr$B@@11 TInt) (= GenericBasics.Tr.RValue0$X GenericBasics.Mega.RValue0$XX)) (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (and (= Mega_$_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (= (ControlFlow 0 2) (- 0 1))) (forall (($o@@6 T@U) ($f@@0 T@U) ) (! true
 :qid |TraitCompiledfy.285:14|
 :skolemid |1864|
))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (or (not (= this null)) (not true)) (and ($Is refType this (Tclass.GenericBasics.Mega GenericBasics.Mega$P@@17 GenericBasics.Mega$Q@@17 GenericBasics.Mega$L@@17)) ($IsAlloc refType this (Tclass.GenericBasics.Mega GenericBasics.Mega$P@@17 GenericBasics.Mega$Q@@17 GenericBasics.Mega$L@@17) $Heap))) ($IsBox |x#0| GenericBasics.Mega.RValue0$XX)) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 4) 2))) anon0_correct))))
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
