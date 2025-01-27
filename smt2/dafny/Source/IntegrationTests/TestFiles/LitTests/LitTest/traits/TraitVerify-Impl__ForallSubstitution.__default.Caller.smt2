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
(declare-fun TReal () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagReal () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass.ForallSubstitution.Cl () T@U)
(declare-fun Tagclass.ForallSubstitution.Tr? () T@U)
(declare-fun Tagclass.ForallSubstitution.Tr () T@U)
(declare-fun Tagclass.ForallSubstitution.Cl? () T@U)
(declare-fun tytagFamily$Cl () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.ForallSubstitution.Tr (T@U) T@U)
(declare-fun Tclass.ForallSubstitution.Tr? (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass.ForallSubstitution.Cl? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass.ForallSubstitution.Cl () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun ForallSubstitution.Tr.P (T@U T@U T@U T@U T@U) Bool)
(declare-fun |ForallSubstitution.Tr.P#canCall| (T@U T@U T@U T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$ForallSubstitution.Tr (T@U T@U) Bool)
(declare-fun Tclass.ForallSubstitution.Tr?_0 (T@U) T@U)
(declare-fun Tclass.ForallSubstitution.Tr_0 (T@U) T@U)
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
(assert (distinct TInt TReal TagInt TagReal alloc Tagclass.ForallSubstitution.Cl Tagclass.ForallSubstitution.Tr? Tagclass.ForallSubstitution.Tr Tagclass.ForallSubstitution.Cl? tytagFamily$Cl tytagFamily$Tr)
)
(assert (= (Tag TInt) TagInt))
(assert (= (Tag TReal) TagReal))
(assert (= (Ctor refType) 3))
(assert (forall ((ForallSubstitution.Tr$X T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass.ForallSubstitution.Tr ForallSubstitution.Tr$X) $h) ($IsAlloc refType |c#0| (Tclass.ForallSubstitution.Tr? ForallSubstitution.Tr$X) $h))
 :qid |unknown.0:0|
 :skolemid |544|
 :pattern ( ($IsAlloc refType |c#0| (Tclass.ForallSubstitution.Tr ForallSubstitution.Tr$X) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass.ForallSubstitution.Tr? ForallSubstitution.Tr$X) $h))
)))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.ForallSubstitution.Cl?)  (or (= $o null) (= (dtype $o) Tclass.ForallSubstitution.Cl?)))
 :qid |unknown.0:0|
 :skolemid |546|
 :pattern ( ($Is refType $o Tclass.ForallSubstitution.Cl?))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass.ForallSubstitution.Cl $h@@0) ($IsAlloc refType |c#0@@0| Tclass.ForallSubstitution.Cl? $h@@0))
 :qid |unknown.0:0|
 :skolemid |549|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.ForallSubstitution.Cl $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.ForallSubstitution.Cl? $h@@0))
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
(assert (forall ((ForallSubstitution.Tr$X@@0 T@U) ($o@@0 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@0 (Tclass.ForallSubstitution.Tr? ForallSubstitution.Tr$X@@0) $h@@1)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |535|
 :pattern ( ($IsAlloc refType $o@@0 (Tclass.ForallSubstitution.Tr? ForallSubstitution.Tr$X@@0) $h@@1))
)))
(assert (forall (($o@@1 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass.ForallSubstitution.Cl? $h@@2)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |547|
 :pattern ( ($IsAlloc refType $o@@1 Tclass.ForallSubstitution.Cl? $h@@2))
)))
(assert (forall (($o@@2 T@U) ) (!  (=> ($Is refType $o@@2 Tclass.ForallSubstitution.Cl?) ($Is refType $o@@2 (Tclass.ForallSubstitution.Tr? TInt)))
 :qid |unknown.0:0|
 :skolemid |552|
 :pattern ( ($Is refType $o@@2 Tclass.ForallSubstitution.Cl?))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx Tclass.ForallSubstitution.Cl?) ($IsBox bx (Tclass.ForallSubstitution.Tr? TInt)))
 :qid |unknown.0:0|
 :skolemid |550|
 :pattern ( ($IsBox bx Tclass.ForallSubstitution.Cl?))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((ForallSubstitution.Tr$X@@1 T@U) (ForallSubstitution.Tr.P$Y T@U) (this T@U) (|x#0| T@U) (|y#0| T@U) ) (!  (=> (or (|ForallSubstitution.Tr.P#canCall| ForallSubstitution.Tr$X@@1 ForallSubstitution.Tr.P$Y this |x#0| |y#0|) (and (< 0 $FunctionContextHeight) (and (and (and (or (not (= this null)) (not true)) ($Is refType this (Tclass.ForallSubstitution.Tr ForallSubstitution.Tr$X@@1))) ($IsBox |x#0| ForallSubstitution.Tr$X@@1)) ($IsBox |y#0| ForallSubstitution.Tr.P$Y)))) (= (ForallSubstitution.Tr.P ForallSubstitution.Tr$X@@1 ForallSubstitution.Tr.P$Y this |x#0| |y#0|) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |unknown.0:0|
 :skolemid |541|
 :pattern ( (ForallSubstitution.Tr.P ForallSubstitution.Tr$X@@1 ForallSubstitution.Tr.P$Y this |x#0| |y#0|))
))))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((ForallSubstitution.Tr$X@@2 T@U) (|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| (Tclass.ForallSubstitution.Tr ForallSubstitution.Tr$X@@2))  (and ($Is refType |c#0@@1| (Tclass.ForallSubstitution.Tr? ForallSubstitution.Tr$X@@2)) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |543|
 :pattern ( ($Is refType |c#0@@1| (Tclass.ForallSubstitution.Tr ForallSubstitution.Tr$X@@2)))
 :pattern ( ($Is refType |c#0@@1| (Tclass.ForallSubstitution.Tr? ForallSubstitution.Tr$X@@2)))
)))
(assert (forall ((ForallSubstitution.Tr$X@@3 T@U) ) (!  (and (= (Tag (Tclass.ForallSubstitution.Tr? ForallSubstitution.Tr$X@@3)) Tagclass.ForallSubstitution.Tr?) (= (TagFamily (Tclass.ForallSubstitution.Tr? ForallSubstitution.Tr$X@@3)) tytagFamily$Tr))
 :qid |unknown.0:0|
 :skolemid |531|
 :pattern ( (Tclass.ForallSubstitution.Tr? ForallSubstitution.Tr$X@@3))
)))
(assert (forall ((ForallSubstitution.Tr$X@@4 T@U) ) (!  (and (= (Tag (Tclass.ForallSubstitution.Tr ForallSubstitution.Tr$X@@4)) Tagclass.ForallSubstitution.Tr) (= (TagFamily (Tclass.ForallSubstitution.Tr ForallSubstitution.Tr$X@@4)) tytagFamily$Tr))
 :qid |unknown.0:0|
 :skolemid |536|
 :pattern ( (Tclass.ForallSubstitution.Tr ForallSubstitution.Tr$X@@4))
)))
(assert (implements$ForallSubstitution.Tr Tclass.ForallSubstitution.Cl? TInt))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass.ForallSubstitution.Cl) (and (= ($Box refType ($Unbox refType bx@@0)) bx@@0) ($Is refType ($Unbox refType bx@@0) Tclass.ForallSubstitution.Cl)))
 :qid |unknown.0:0|
 :skolemid |528|
 :pattern ( ($IsBox bx@@0 Tclass.ForallSubstitution.Cl))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass.ForallSubstitution.Cl?) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass.ForallSubstitution.Cl?)))
 :qid |unknown.0:0|
 :skolemid |545|
 :pattern ( ($IsBox bx@@1 Tclass.ForallSubstitution.Cl?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass.ForallSubstitution.Cl)  (and ($Is refType |c#0@@2| Tclass.ForallSubstitution.Cl?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |548|
 :pattern ( ($Is refType |c#0@@2| Tclass.ForallSubstitution.Cl))
 :pattern ( ($Is refType |c#0@@2| Tclass.ForallSubstitution.Cl?))
)))
(assert (forall (($o@@3 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@3 Tclass.ForallSubstitution.Cl? $heap) ($IsAlloc refType $o@@3 (Tclass.ForallSubstitution.Tr? TInt) $heap))
 :qid |unknown.0:0|
 :skolemid |553|
 :pattern ( ($IsAlloc refType $o@@3 Tclass.ForallSubstitution.Cl? $heap))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TInt) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@2 TInt))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TReal) (and (= ($Box realType ($Unbox realType bx@@3)) bx@@3) ($Is realType ($Unbox realType bx@@3) TReal)))
 :qid |DafnyPreludebpl.179:15|
 :skolemid |28|
 :pattern ( ($IsBox bx@@3 TReal))
)))
(assert (forall ((v T@U) (t T@U) (T@@1 T@T) ) (! (= ($IsBox ($Box T@@1 v) t) ($Is T@@1 v t))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@1 v) t))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((ForallSubstitution.Tr$X@@5 T@U) (ForallSubstitution.Tr.P$Y@@0 T@U) (this@@0 T@U) (|x#0@@0| T@U) (|y#0@@0| T@U) ) (!  (=> (or (|ForallSubstitution.Tr.P#canCall| ForallSubstitution.Tr$X@@5 ForallSubstitution.Tr.P$Y@@0 (Lit refType this@@0) (Lit BoxType |x#0@@0|) (Lit BoxType |y#0@@0|)) (and (< 0 $FunctionContextHeight) (and (and (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 (Tclass.ForallSubstitution.Tr ForallSubstitution.Tr$X@@5))) ($IsBox |x#0@@0| ForallSubstitution.Tr$X@@5)) ($IsBox |y#0@@0| ForallSubstitution.Tr.P$Y@@0)))) (= (ForallSubstitution.Tr.P ForallSubstitution.Tr$X@@5 ForallSubstitution.Tr.P$Y@@0 (Lit refType this@@0) (Lit BoxType |x#0@@0|) (Lit BoxType |y#0@@0|)) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |542|
 :pattern ( (ForallSubstitution.Tr.P ForallSubstitution.Tr$X@@5 ForallSubstitution.Tr.P$Y@@0 (Lit refType this@@0) (Lit BoxType |x#0@@0|) (Lit BoxType |y#0@@0|)))
))))
(assert (forall ((ForallSubstitution.Tr$X@@6 T@U) ) (! (= (Tclass.ForallSubstitution.Tr?_0 (Tclass.ForallSubstitution.Tr? ForallSubstitution.Tr$X@@6)) ForallSubstitution.Tr$X@@6)
 :qid |unknown.0:0|
 :skolemid |532|
 :pattern ( (Tclass.ForallSubstitution.Tr? ForallSubstitution.Tr$X@@6))
)))
(assert (forall ((ForallSubstitution.Tr$X@@7 T@U) ) (! (= (Tclass.ForallSubstitution.Tr_0 (Tclass.ForallSubstitution.Tr ForallSubstitution.Tr$X@@7)) ForallSubstitution.Tr$X@@7)
 :qid |unknown.0:0|
 :skolemid |537|
 :pattern ( (Tclass.ForallSubstitution.Tr ForallSubstitution.Tr$X@@7))
)))
(assert (forall ((x@@4 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@4))
)))
(assert (forall ((ForallSubstitution.Tr$X@@8 T@U) ($o@@4 T@U) ) (! (= ($Is refType $o@@4 (Tclass.ForallSubstitution.Tr? ForallSubstitution.Tr$X@@8))  (or (= $o@@4 null) (implements$ForallSubstitution.Tr (dtype $o@@4) ForallSubstitution.Tr$X@@8)))
 :qid |unknown.0:0|
 :skolemid |534|
 :pattern ( ($Is refType $o@@4 (Tclass.ForallSubstitution.Tr? ForallSubstitution.Tr$X@@8)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@5 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f))  (=> (and (or (not (= $o@@5 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@5) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1775|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f))
)))
(assert (forall ((ForallSubstitution.Tr$X@@9 T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass.ForallSubstitution.Tr? ForallSubstitution.Tr$X@@9)) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) (Tclass.ForallSubstitution.Tr? ForallSubstitution.Tr$X@@9))))
 :qid |unknown.0:0|
 :skolemid |533|
 :pattern ( ($IsBox bx@@4 (Tclass.ForallSubstitution.Tr? ForallSubstitution.Tr$X@@9)))
)))
(assert (forall ((ForallSubstitution.Tr$X@@10 T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass.ForallSubstitution.Tr ForallSubstitution.Tr$X@@10)) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) (Tclass.ForallSubstitution.Tr ForallSubstitution.Tr$X@@10))))
 :qid |unknown.0:0|
 :skolemid |538|
 :pattern ( ($IsBox bx@@5 (Tclass.ForallSubstitution.Tr ForallSubstitution.Tr$X@@10)))
)))
(assert (= (Tag Tclass.ForallSubstitution.Cl) Tagclass.ForallSubstitution.Cl))
(assert (= (TagFamily Tclass.ForallSubstitution.Cl) tytagFamily$Cl))
(assert (= (Tag Tclass.ForallSubstitution.Cl?) Tagclass.ForallSubstitution.Cl?))
(assert (= (TagFamily Tclass.ForallSubstitution.Cl?) tytagFamily$Cl))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@5)) (Lit BoxType ($Box T@@3 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@5)))
)))
(assert (forall ((h T@U) (v@@0 T@U) ) (! ($IsAlloc intType v@@0 TInt h)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@0 TInt h))
)))
(assert (forall ((h@@0 T@U) (v@@1 T@U) ) (! ($IsAlloc realType v@@1 TReal h@@0)
 :qid |DafnyPreludebpl.290:14|
 :skolemid |62|
 :pattern ( ($IsAlloc realType v@@1 TReal h@@0))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is intType v@@2 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@2 TInt))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is realType v@@3 TReal)
 :qid |DafnyPreludebpl.229:14|
 :skolemid |41|
 :pattern ( ($Is realType v@@3 TReal))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |c#0@@3| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id Impl$$ForallSubstitution.__default.Caller)
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
 (=> (= (ControlFlow 0 0) 5) (let ((anon3_Else_correct true))
(let ((anon3_Then_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (or (not (= |c#0@@3| null)) (not true)))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 4) 2) anon3_Then_correct) (=> (= (ControlFlow 0 4) 3) anon3_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is refType |c#0@@3| Tclass.ForallSubstitution.Cl) ($IsAlloc refType |c#0@@3| Tclass.ForallSubstitution.Cl $Heap)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 5) 4))) anon0_correct))))
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
