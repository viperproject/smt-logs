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
(declare-fun TChar () T@U)
(declare-fun TInt () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagChar () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagSet () T@U)
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass.EnumerationRegression.Long () T@U)
(declare-fun Tagclass.EnumerationRegression.AlsoLong () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$Long () T@U)
(declare-fun tytagFamily$AlsoLong () T@U)
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
(declare-fun EnumerationRegression.AlsoLong.True (Int) Bool)
(declare-fun |EnumerationRegression.AlsoLong.True#canCall| (Int) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun |lambda#3| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@T T@T T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass.EnumerationRegression.Long () T@U)
(declare-fun Tclass.EnumerationRegression.AlsoLong () T@U)
(declare-fun |lambda#7| (T@U Int) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun null () T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun |lambda#2| () T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun AtLayer (T@T T@U T@U) T@U)
(declare-fun LayerTypeType () T@T)
(declare-fun |lambda#15| () T@U)
(declare-fun |char#ToInt| (T@U) Int)
(declare-fun charType () T@T)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun SetRef_to_SetBox (T@U) T@U)
(declare-fun EnumerationRegression.Long.True (Int) Bool)
(declare-fun |EnumerationRegression.Long.True#canCall| (Int) Bool)
(declare-fun EnumerationRegression.__default.Digit (Int) T@U)
(declare-fun |EnumerationRegression.__default.Digit#canCall| (Int) Bool)
(declare-fun |char#Plus| (T@U T@U) T@U)
(declare-fun |char#FromInt| (Int) T@U)
(declare-fun |lambda#9| (Int Int Int) T@U)
(declare-fun |lambda#8| (Int Int T@U T@U) T@U)
(declare-fun |lambda#4| (Bool) T@U)
(declare-fun HandleTypeType () T@T)
(declare-fun |lambda#6| (T@U) T@U)
(declare-fun |lambda#1| (T@U Int Int Int) T@U)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun |lambda#5| (T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun MapType2Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType2Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct TBool TChar TInt TagBool TagChar TagInt TagSet TagSeq alloc Tagclass._System.object? Tagclass._System.object Tagclass.EnumerationRegression.Long Tagclass.EnumerationRegression.AlsoLong tytagFamily$object tytagFamily$Long tytagFamily$AlsoLong)
)
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this Int) ) (!  (=> (or (|EnumerationRegression.AlsoLong.True#canCall| this) (and (< 0 $FunctionContextHeight) (and (<= (LitInt 137438953474) this) (< this 137438953480)))) (= (EnumerationRegression.AlsoLong.True this) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |Comprehensionsdfy.561:15|
 :skolemid |2330|
 :pattern ( (EnumerationRegression.AlsoLong.True this))
))))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (t3 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) (x2 T@U) ) (! (= (MapType0Select t0 t1 t2 t3 (MapType0Store t0 t1 t2 t3 m x0 x1 x2 val) x0 x1 x2) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (u3 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (x2@@0 T@U) (y0 T@U) (y1 T@U) (y2 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 u3 (MapType0Store u0 u1 u2 u3 m@@0 x0@@0 x1@@0 x2@@0 val@@0) y0 y1 y2) (MapType0Select u0 u1 u2 u3 m@@0 y0 y1 y2)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (u3@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (x2@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) (y2@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 u3@@0 (MapType0Store u0@@0 u1@@0 u2@@0 u3@@0 m@@1 x0@@1 x1@@1 x2@@1 val@@1) y0@@0 y1@@0 y2@@0) (MapType0Select u0@@0 u1@@0 u2@@0 u3@@0 m@@1 y0@@0 y1@@0 y2@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@1 T@T) (u3@@1 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@2 T@U) (x2@@2 T@U) (y0@@1 T@U) (y1@@1 T@U) (y2@@1 T@U) ) (!  (or (= x2@@2 y2@@1) (= (MapType0Select u0@@1 u1@@1 u2@@1 u3@@1 (MapType0Store u0@@1 u1@@1 u2@@1 u3@@1 m@@2 x0@@2 x1@@2 x2@@2 val@@2) y0@@1 y1@@1 y2@@1) (MapType0Select u0@@1 u1@@1 u2@@1 u3@@1 m@@2 y0@@1 y1@@1 y2@@1)))
 :qid |mapAx1:MapType0Select:2|
 :weight 0
)))) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@3 x0@@3 val@@3) x0@@3) val@@3)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@2 T@T) (u1@@2 T@T) (val@@4 T@U) (m@@4 T@U) (x0@@4 T@U) (y0@@2 T@U) ) (!  (or (= x0@@4 y0@@2) (= (MapType1Select u0@@2 u1@@2 (MapType1Store u0@@2 u1@@2 m@@4 x0@@4 val@@4) y0@@2) (MapType1Select u0@@2 u1@@2 m@@4 y0@@2)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 3)
 :qid |ctor:MapType1Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@4 arg1@@1))
))) (= (Ctor refType) 4)) (= (Ctor FieldType) 5)) (= (Ctor BoxType) 6)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|$l#1#heap#0| T@U) (|$l#1#x#0| T@U) (|$l#1#y#0| T@U) ) (! (= (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType boolType (|lambda#3| |l#0| |l#1|) |$l#1#heap#0| |$l#1#x#0| |$l#1#y#0|))  (and ($IsBox |$l#1#x#0| |l#0|) ($IsBox |$l#1#y#0| |l#1|)))
 :qid |Comprehensionsdfy.556:11|
 :skolemid |3327|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType boolType (|lambda#3| |l#0| |l#1|) |$l#1#heap#0| |$l#1#x#0| |$l#1#y#0|))
)))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass.EnumerationRegression.Long $h)
 :qid |unknown.0:0|
 :skolemid |2321|
 :pattern ( ($IsAlloc intType |x#0| Tclass.EnumerationRegression.Long $h))
)))
(assert (forall ((|x#0@@0| T@U) ($h@@0 T@U) ) (! ($IsAlloc intType |x#0@@0| Tclass.EnumerationRegression.AlsoLong $h@@0)
 :qid |unknown.0:0|
 :skolemid |2327|
 :pattern ( ($IsAlloc intType |x#0@@0| Tclass.EnumerationRegression.AlsoLong $h@@0))
)))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| Int) (|$y#1| T@U) ) (! (= (U_2_bool (MapType1Select BoxType boolType (|lambda#7| |l#0@@0| |l#1@@0|) |$y#1|))  (and ($IsBox |$y#1| |l#0@@0|) (and (EnumerationRegression.AlsoLong.True (U_2_int ($Unbox intType |$y#1|))) (or (not (= (U_2_int ($Unbox intType |$y#1|)) |l#1@@0|)) (not true)))))
 :qid |Comprehensionsdfy.560:11|
 :skolemid |3331|
 :pattern ( (MapType1Select BoxType boolType (|lambda#7| |l#0@@0| |l#1@@0|) |$y#1|))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@0 Int) ) (!  (=> (or (|EnumerationRegression.AlsoLong.True#canCall| (LitInt this@@0)) (and (< 0 $FunctionContextHeight) (and (<= (LitInt 137438953474) this@@0) (< this@@0 137438953480)))) (= (EnumerationRegression.AlsoLong.True (LitInt this@@0)) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |Comprehensionsdfy.561:15|
 :weight 3
 :skolemid |2331|
 :pattern ( (EnumerationRegression.AlsoLong.True (LitInt this@@0)))
))))
(assert (forall ((|c#0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h@@1) ($IsAlloc refType |c#0| Tclass._System.object? $h@@1))
 :qid |unknown.0:0|
 :skolemid |2086|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h@@1))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h@@1))
)))
(assert (forall (($o T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o Tclass._System.object? $h@@2)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@2 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2083|
 :pattern ( ($IsAlloc refType $o Tclass._System.object? $h@@2))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |1853|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |1854|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |1752|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1750|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((|$l#1#heap#0@@0| T@U) (|$l#1#x#0@@0| T@U) (|$l#1#y#0@@0| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType BoxType |lambda#2| |$l#1#heap#0@@0| |$l#1#x#0@@0| |$l#1#y#0@@0|) ($Box boolType (bool_2_U (< (U_2_int ($Unbox intType |$l#1#x#0@@0|)) (U_2_int ($Unbox intType |$l#1#y#0@@0|))))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3326|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType BoxType |lambda#2| |$l#1#heap#0@@0| |$l#1#x#0@@0| |$l#1#y#0@@0|))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1761|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((m@@5 T@U) (bx T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@5) bx) (U_2_bool (MapType1Select BoxType boolType m@@5 bx)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |1888|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@5) bx))
)))
(assert (= (Ctor SetType) 7))
(assert (forall ((v T@U) (t0@@1 T@U) ) (! (= ($Is SetType v (TSet t0@@1)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@1))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |1781|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |1782|
 :pattern ( ($Is SetType v (TSet t0@@1)))
)))
(assert (= (Ctor LayerTypeType) 8))
(assert (forall ((f T@U) (ly T@U) (A T@T) ) (! (= (AtLayer A f ly) (MapType1Select LayerTypeType A f ly))
 :qid |DafnyPreludebpl.501:18|
 :skolemid |1836|
 :pattern ( (AtLayer A f ly))
)))
(assert (= (Ctor charType) 9))
(assert (forall ((|$l#5#heap#0| T@U) (|$l#5#x#0| T@U) (|$l#5#y#0| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType BoxType |lambda#15| |$l#5#heap#0| |$l#5#x#0| |$l#5#y#0|) ($Box boolType (bool_2_U (< (|char#ToInt| ($Unbox charType |$l#5#x#0|)) (|char#ToInt| ($Unbox charType |$l#5#y#0|))))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3334|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType BoxType |lambda#15| |$l#5#heap#0| |$l#5#x#0| |$l#5#y#0|))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1774|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@1 t@@0 h@@1) ($IsAllocBox bx@@1 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |1846|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@1 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |1845|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert (forall ((s T@U) (bx@@2 T@U) ) (! (= (|Set#IsMember| (SetRef_to_SetBox s) bx@@2) (U_2_bool (MapType1Select refType boolType s ($Unbox refType bx@@2))))
 :qid |DafnyPreludebpl.370:15|
 :skolemid |1817|
 :pattern ( (|Set#IsMember| (SetRef_to_SetBox s) bx@@2))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@1 Int) ) (!  (=> (or (|EnumerationRegression.Long.True#canCall| this@@1) (and (< 0 $FunctionContextHeight) (and (<= (LitInt 137438953456) this@@1) (< this@@1 137438953728)))) (= (EnumerationRegression.Long.True this@@1) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |Comprehensionsdfy.557:15|
 :skolemid |2324|
 :pattern ( (EnumerationRegression.Long.True this@@1))
))))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |2081|
 :pattern ( ($IsBox bx@@3 Tclass._System.object?))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |2084|
 :pattern ( ($IsBox bx@@4 Tclass._System.object))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass.EnumerationRegression.Long) (and (= ($Box intType ($Unbox intType bx@@5)) bx@@5) ($Is intType ($Unbox intType bx@@5) Tclass.EnumerationRegression.Long)))
 :qid |unknown.0:0|
 :skolemid |2294|
 :pattern ( ($IsBox bx@@5 Tclass.EnumerationRegression.Long))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass.EnumerationRegression.AlsoLong) (and (= ($Box intType ($Unbox intType bx@@6)) bx@@6) ($Is intType ($Unbox intType bx@@6) Tclass.EnumerationRegression.AlsoLong)))
 :qid |unknown.0:0|
 :skolemid |2297|
 :pattern ( ($IsBox bx@@6 Tclass.EnumerationRegression.AlsoLong))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0@@1| Int) ) (!  (=> (or (|EnumerationRegression.__default.Digit#canCall| |x#0@@1|) (and (< 0 $FunctionContextHeight) (and (<= (LitInt 137438953472) |x#0@@1|) (< |x#0@@1| 137438953482)))) (= (EnumerationRegression.__default.Digit |x#0@@1|) (|char#Plus| (|char#FromInt| 97) (|char#FromInt| (- |x#0@@1| 137438953472)))))
 :qid |Comprehensionsdfy.564:18|
 :skolemid |2308|
 :pattern ( (EnumerationRegression.__default.Digit |x#0@@1|))
))))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._System.object)  (and ($Is refType |c#0@@0| Tclass._System.object?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2085|
 :pattern ( ($Is refType |c#0@@0| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@0| Tclass._System.object?))
)))
(assert (forall ((a T@U) (b T@U) ) (! (= (|char#Plus| a b) (|char#FromInt| (+ (|char#ToInt| a) (|char#ToInt| b))))
 :qid |DafnyPreludebpl.142:15|
 :skolemid |1758|
 :pattern ( (|char#Plus| a b))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@1| Int) (|l#2| Int) (|$y#3| T@U) ) (! (= (U_2_bool (MapType1Select BoxType boolType (|lambda#9| |l#0@@1| |l#1@@1| |l#2|) |$y#3|)) (exists ((|l#6| Int) ) (!  (and (and (and (<= |l#0@@1| |l#6|) (< |l#6| |l#1@@1|)) (and (EnumerationRegression.AlsoLong.True |l#6|) (or (not (= |l#6| |l#2|)) (not true)))) (= |$y#3| ($Box charType (EnumerationRegression.__default.Digit |l#6|))))
 :qid |Comprehensionsdfy.545:18|
 :skolemid |2301|
 :pattern ( (EnumerationRegression.AlsoLong.True |l#6|))
)))
 :qid |unknown.0:0|
 :skolemid |3333|
 :pattern ( (MapType1Select BoxType boolType (|lambda#9| |l#0@@1| |l#1@@1| |l#2|) |$y#3|))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@2| Int) (|l#2@@0| T@U) (|l#3| T@U) (|$y#2| T@U) ) (! (= (U_2_bool (MapType1Select BoxType boolType (|lambda#8| |l#0@@2| |l#1@@2| |l#2@@0| |l#3|) |$y#2|)) (exists ((|l#4| Int) ) (!  (and (and (and (<= |l#0@@2| |l#4|) (< |l#4| |l#1@@2|)) (|Set#IsMember| |l#2@@0| ($Box intType (int_2_U |l#4|)))) (= |$y#2| ($Box charType (EnumerationRegression.__default.Digit |l#4|))))
 :qid |Comprehensionsdfy.544:18|
 :skolemid |2299|
 :pattern ( (|Set#IsMember| |l#3| ($Box intType (int_2_U |l#4|))))
)))
 :qid |unknown.0:0|
 :skolemid |3332|
 :pattern ( (MapType1Select BoxType boolType (|lambda#8| |l#0@@2| |l#1@@2| |l#2@@0| |l#3|) |$y#2|))
)))
(assert (forall ((|l#0@@3| Bool) (|$l#1#o#0| T@U) ) (! (= (U_2_bool (MapType1Select refType boolType (|lambda#4| |l#0@@3|) |$l#1#o#0|)) |l#0@@3|)
 :qid |unknown.0:0|
 :skolemid |3328|
 :pattern ( (MapType1Select refType boolType (|lambda#4| |l#0@@3|) |$l#1#o#0|))
)))
(assert (= (Ctor HandleTypeType) 10))
(assert (forall ((|l#0@@4| T@U) (|$l#1#ly#0| T@U) ) (! (= (MapType1Select LayerTypeType HandleTypeType (|lambda#6| |l#0@@4|) |$l#1#ly#0|) |l#0@@4|)
 :qid |Comprehensionsdfy.540:24|
 :skolemid |3330|
 :pattern ( (MapType1Select LayerTypeType HandleTypeType (|lambda#6| |l#0@@4|) |$l#1#ly#0|))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@2 Int) ) (!  (=> (or (|EnumerationRegression.Long.True#canCall| (LitInt this@@2)) (and (< 0 $FunctionContextHeight) (and (<= (LitInt 137438953456) this@@2) (< this@@2 137438953728)))) (= (EnumerationRegression.Long.True (LitInt this@@2)) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |Comprehensionsdfy.557:15|
 :weight 3
 :skolemid |2325|
 :pattern ( (EnumerationRegression.Long.True (LitInt this@@2)))
))))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |1852|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 TInt) (and (= ($Box intType ($Unbox intType bx@@7)) bx@@7) ($Is intType ($Unbox intType bx@@7) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |1762|
 :pattern ( ($IsBox bx@@7 TInt))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 TBool) (and (= ($Box boolType ($Unbox boolType bx@@8)) bx@@8) ($Is boolType ($Unbox boolType bx@@8) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |1764|
 :pattern ( ($IsBox bx@@8 TBool))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 TChar) (and (= ($Box charType ($Unbox charType bx@@9)) bx@@9) ($Is charType ($Unbox charType bx@@9) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |1765|
 :pattern ( ($IsBox bx@@9 TChar))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1773|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((s@@0 T@U) ) (! (<= 0 (|Seq#Length| s@@0))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |1956|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((|l#0@@5| T@U) (|l#1@@3| Int) (|l#2@@1| Int) (|l#3@@0| Int) (|$y#0| T@U) ) (! (= (U_2_bool (MapType1Select BoxType boolType (|lambda#1| |l#0@@5| |l#1@@3| |l#2@@1| |l#3@@0|) |$y#0|))  (and ($IsBox |$y#0| |l#0@@5|) (and (and (and (<= |l#1@@3| (U_2_int ($Unbox intType |$y#0|))) (< (U_2_int ($Unbox intType |$y#0|)) |l#2@@1|)) (EnumerationRegression.Long.True (U_2_int ($Unbox intType |$y#0|)))) (or (not (= (U_2_int ($Unbox intType |$y#0|)) |l#3@@0|)) (not true)))))
 :qid |Comprehensionsdfy.556:11|
 :skolemid |3325|
 :pattern ( (MapType1Select BoxType boolType (|lambda#1| |l#0@@5| |l#1@@3| |l#2@@1| |l#3@@0|) |$y#0|))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3) (forall ((bx@@10 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@10) ($IsAllocBox bx@@10 t0@@2 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |1802|
 :pattern ( (|Set#IsMember| v@@3 bx@@10))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |1803|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3))
)))
(assert (forall (($o@@0 T@U) ) (! ($Is refType $o@@0 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |2082|
 :pattern ( ($Is refType $o@@0 Tclass._System.object?))
)))
(assert (= (Ctor SeqType) 11))
(assert (forall ((v@@4 T@U) (t0@@3 T@U) (h@@4 T@U) ) (! (= ($IsAlloc SeqType v@@4 (TSeq t0@@3) h@@4) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| v@@4))) ($IsAllocBox (|Seq#Index| v@@4 i) t0@@3 h@@4))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |1808|
 :pattern ( (|Seq#Index| v@@4 i))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |1809|
 :pattern ( ($IsAlloc SeqType v@@4 (TSeq t0@@3) h@@4))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1736|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |1737|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Inv0_TSeq (TSeq t@@5)) t@@5)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |1742|
 :pattern ( (TSeq t@@5))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Tag (TSeq t@@6)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |1743|
 :pattern ( (TSeq t@@6))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1760|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((|l#0@@6| T@U) (|$l#1#heap#0@@1| T@U) (|$l#1#x#0@@1| T@U) (|$l#1#y#0@@1| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType SetType (|lambda#5| |l#0@@6|) |$l#1#heap#0@@1| |$l#1#x#0@@1| |$l#1#y#0@@1|) |l#0@@6|)
 :qid |Comprehensionsdfy.540:24|
 :skolemid |3329|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType SetType (|lambda#5| |l#0@@6|) |$l#1#heap#0@@1| |$l#1#x#0@@1| |$l#1#y#0@@1|))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0@@2| Int) ) (!  (=> (or (|EnumerationRegression.__default.Digit#canCall| (LitInt |x#0@@2|)) (and (< 0 $FunctionContextHeight) (and (<= (LitInt 137438953472) (LitInt |x#0@@2|)) (< |x#0@@2| 137438953482)))) (= (EnumerationRegression.__default.Digit (LitInt |x#0@@2|)) (|char#Plus| (|char#FromInt| 97) (|char#FromInt| (LitInt (- |x#0@@2| 137438953472))))))
 :qid |Comprehensionsdfy.564:18|
 :weight 3
 :skolemid |2309|
 :pattern ( (EnumerationRegression.__default.Digit (LitInt |x#0@@2|)))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0@@3| Int) ) (!  (=> (or (|EnumerationRegression.__default.Digit#canCall| |x#0@@3|) (and (< 0 $FunctionContextHeight) (and (<= (LitInt 137438953472) |x#0@@3|) (< |x#0@@3| 137438953482)))) ($Is charType (EnumerationRegression.__default.Digit |x#0@@3|) TChar))
 :qid |Comprehensionsdfy.564:18|
 :skolemid |2306|
 :pattern ( (EnumerationRegression.__default.Digit |x#0@@3|))
))))
(assert (forall ((f@@0 T@U) (ly@@0 T@U) (A@@0 T@T) ) (! (= (AtLayer A@@0 f@@0 ($LS ly@@0)) (AtLayer A@@0 f@@0 ly@@0))
 :qid |DafnyPreludebpl.502:18|
 :skolemid |1837|
 :pattern ( (AtLayer A@@0 f@@0 ($LS ly@@0)))
)))
(assert (forall ((n Int) ) (!  (=> (or (and (<= 0 n) (< n 55296)) (and (<= 57344 n) (< n 1114112))) (= (|char#ToInt| (|char#FromInt| n)) n))
 :qid |DafnyPreludebpl.131:15|
 :skolemid |1756|
 :pattern ( (|char#FromInt| n))
)))
(assert  (and (forall ((t0@@4 T@T) (t1@@1 T@T) (t2@@0 T@T) (val@@5 T@U) (m@@6 T@U) (x0@@5 T@U) (x1@@3 T@U) ) (! (= (MapType2Select t0@@4 t1@@1 t2@@0 (MapType2Store t0@@4 t1@@1 t2@@0 m@@6 x0@@5 x1@@3 val@@5) x0@@5 x1@@3) val@@5)
 :qid |mapAx0:MapType2Select|
 :weight 0
)) (and (forall ((u0@@3 T@T) (u1@@3 T@T) (u2@@2 T@T) (val@@6 T@U) (m@@7 T@U) (x0@@6 T@U) (x1@@4 T@U) (y0@@3 T@U) (y1@@2 T@U) ) (!  (or (= x0@@6 y0@@3) (= (MapType2Select u0@@3 u1@@3 u2@@2 (MapType2Store u0@@3 u1@@3 u2@@2 m@@7 x0@@6 x1@@4 val@@6) y0@@3 y1@@2) (MapType2Select u0@@3 u1@@3 u2@@2 m@@7 y0@@3 y1@@2)))
 :qid |mapAx1:MapType2Select:0|
 :weight 0
)) (forall ((u0@@4 T@T) (u1@@4 T@T) (u2@@3 T@T) (val@@7 T@U) (m@@8 T@U) (x0@@7 T@U) (x1@@5 T@U) (y0@@4 T@U) (y1@@3 T@U) ) (!  (or (= x1@@5 y1@@3) (= (MapType2Select u0@@4 u1@@4 u2@@3 (MapType2Store u0@@4 u1@@4 u2@@3 m@@8 x0@@7 x1@@5 val@@7) y0@@4 y1@@3) (MapType2Select u0@@4 u1@@4 u2@@3 m@@8 y0@@4 y1@@3)))
 :qid |mapAx1:MapType2Select:1|
 :weight 0
)))))
(assert (forall ((|l#0@@7| T@U) (|l#1@@4| T@U) (|l#2@@2| T@U) (|l#3@@1| Bool) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType2Select refType FieldType boolType (|lambda#0| |l#0@@7| |l#1@@4| |l#2@@2| |l#3@@1|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0@@7|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1@@4| $o@@1) |l#2@@2|)))) |l#3@@1|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3324|
 :pattern ( (MapType2Select refType FieldType boolType (|lambda#0| |l#0@@7| |l#1@@4| |l#2@@2| |l#3@@1|) $o@@1 $f))
)))
(assert (forall ((bx@@11 T@U) (t@@7 T@U) ) (!  (=> ($IsBox bx@@11 (TSet t@@7)) (and (= ($Box SetType ($Unbox SetType bx@@11)) bx@@11) ($Is SetType ($Unbox SetType bx@@11) (TSet t@@7))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |1767|
 :pattern ( ($IsBox bx@@11 (TSet t@@7)))
)))
(assert (forall ((bx@@12 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@12 (TSeq t@@8)) (and (= ($Box SeqType ($Unbox SeqType bx@@12)) bx@@12) ($Is SeqType ($Unbox SeqType bx@@12) (TSeq t@@8))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |1770|
 :pattern ( ($IsBox bx@@12 (TSeq t@@8)))
)))
(assert (forall ((ch T@U) ) (!  (and (= (|char#FromInt| (|char#ToInt| ch)) ch) (or (and (<= 0 (|char#ToInt| ch)) (< (|char#ToInt| ch) 55296)) (and (<= 57344 (|char#ToInt| ch)) (< (|char#ToInt| ch) 1114112))))
 :qid |DafnyPreludebpl.136:15|
 :skolemid |1757|
 :pattern ( (|char#ToInt| ch))
)))
(assert (forall ((|x#0@@4| T@U) ) (! (= ($Is intType |x#0@@4| Tclass.EnumerationRegression.Long)  (and (<= (LitInt 137438953456) (U_2_int |x#0@@4|)) (< (U_2_int |x#0@@4|) 137438953728)))
 :qid |unknown.0:0|
 :skolemid |2320|
 :pattern ( ($Is intType |x#0@@4| Tclass.EnumerationRegression.Long))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass.EnumerationRegression.Long) Tagclass.EnumerationRegression.Long))
(assert (= (TagFamily Tclass.EnumerationRegression.Long) tytagFamily$Long))
(assert (= (Tag Tclass.EnumerationRegression.AlsoLong) Tagclass.EnumerationRegression.AlsoLong))
(assert (= (TagFamily Tclass.EnumerationRegression.AlsoLong) tytagFamily$AlsoLong))
(assert (forall ((s@@1 T@U) ) (! ($Is SetType (SetRef_to_SetBox s@@1) (TSet Tclass._System.object?))
 :qid |DafnyPreludebpl.372:15|
 :skolemid |1818|
 :pattern ( (SetRef_to_SetBox s@@1))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |1753|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1751|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert (forall ((|x#0@@5| T@U) ) (! (= ($Is intType |x#0@@5| Tclass.EnumerationRegression.AlsoLong)  (and (<= (LitInt 137438953474) (U_2_int |x#0@@5|)) (< (U_2_int |x#0@@5|) 137438953480)))
 :qid |unknown.0:0|
 :skolemid |2326|
 :pattern ( ($Is intType |x#0@@5| Tclass.EnumerationRegression.AlsoLong))
)))
(assert (forall ((s@@2 T@U) ) (!  (=> (= (|Seq#Length| s@@2) 0) (= s@@2 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |1957|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert (forall ((h@@5 T@U) (v@@5 T@U) ) (! ($IsAlloc intType v@@5 TInt h@@5)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |1796|
 :pattern ( ($IsAlloc intType v@@5 TInt h@@5))
)))
(assert (forall ((h@@6 T@U) (v@@6 T@U) ) (! ($IsAlloc boolType v@@6 TBool h@@6)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |1798|
 :pattern ( ($IsAlloc boolType v@@6 TBool h@@6))
)))
(assert (forall ((h@@7 T@U) (v@@7 T@U) ) (! ($IsAlloc charType v@@7 TChar h@@7)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |1799|
 :pattern ( ($IsAlloc charType v@@7 TChar h@@7))
)))
(assert (forall ((v@@8 T@U) (t0@@5 T@U) ) (! (= ($Is SeqType v@@8 (TSeq t0@@5)) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@8))) ($IsBox (|Seq#Index| v@@8 i@@0) t0@@5))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |1788|
 :pattern ( (|Seq#Index| v@@8 i@@0))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |1789|
 :pattern ( ($Is SeqType v@@8 (TSeq t0@@5)))
)))
(assert (forall ((v@@9 T@U) ) (! ($Is intType v@@9 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |1775|
 :pattern ( ($Is intType v@@9 TInt))
)))
(assert (forall ((v@@10 T@U) ) (! ($Is boolType v@@10 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |1777|
 :pattern ( ($Is boolType v@@10 TBool))
)))
(assert (forall ((v@@11 T@U) ) (! ($Is charType v@@11 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |1778|
 :pattern ( ($Is charType v@@11 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |x#0@0| () Int)
(declare-fun |y#0@0| () Int)
(declare-fun |$_Frame#l0@0| () T@U)
(declare-fun |$lambdaHeap#0@0| () T@U)
(declare-fun |lambdaResult#0| () Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Heap () T@U)
(declare-fun |x#1@0| () Int)
(declare-fun |y#1@0| () Int)
(declare-fun |$_Frame#l1@0| () T@U)
(declare-fun |$lambdaHeap#1@0| () T@U)
(declare-fun |lambdaResult#1| () Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun |x#2@0| () T@U)
(declare-fun |y#2@0| () T@U)
(declare-fun |$_Frame#l2@0| () T@U)
(declare-fun |$lambdaHeap#2@0| () T@U)
(declare-fun |lambdaResult#2| () Bool)
(declare-fun $Heap@1 () T@U)
(declare-fun |x#3@0| () T@U)
(declare-fun |y#3@0| () T@U)
(declare-fun |$_Frame#l3@0| () T@U)
(declare-fun |$lambdaHeap#3@0| () T@U)
(declare-fun |lambdaResult#3| () Bool)
(declare-fun $Heap@2 () T@U)
(declare-fun |below##2@0| () T@U)
(declare-fun Handle2 (T@U T@U T@U) T@U)
(declare-fun $LZ () T@U)
(declare-fun |call4formal@r#0| () T@U)
(declare-fun call0formal@EnumerationRegression._default.ToSeq$X () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |call4formal@r#0@0| () T@U)
(declare-fun |below##1@0| () T@U)
(declare-fun |call4formal@r#0@@0| () T@U)
(declare-fun call0formal@EnumerationRegression._default.ToSeq$X@@0 () T@U)
(declare-fun call0formal@EnumerationRegression._default.ToSeq$X@0 () T@U)
(declare-fun |call4formal@r#0@0@@0| () T@U)
(declare-fun |u#0@0| () T@U)
(declare-fun |l#7@0| () Int)
(declare-fun |newtype$check#4@0| () Int)
(declare-fun |s#0@0| () T@U)
(declare-fun |c#0@0| () T@U)
(declare-fun |l#5@0| () Int)
(declare-fun |t#0@0| () T@U)
(declare-fun |l#2@0| () Int)
(declare-fun |newtype$check#3@0| () Int)
(declare-fun |below##0@0| () T@U)
(declare-fun |call4formal@r#0@@1| () T@U)
(declare-fun call0formal@EnumerationRegression._default.ToSeq$X@@1 () T@U)
(declare-fun call0formal@EnumerationRegression._default.ToSeq$X@0@@0 () T@U)
(declare-fun |call4formal@r#0@0@@1| () T@U)
(declare-fun |l#0@0| () Int)
(declare-fun |newtype$check#2@0| () Int)
(declare-fun |newtype$check#1@0| () Int)
(declare-fun |newtype$check#0@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |s#0| () T@U)
(declare-fun |s'#0| () T@U)
(declare-fun |t#0| () T@U)
(declare-fun |c#0@@1| () T@U)
(declare-fun |u#0| () T@U)
(declare-fun |t'#0| () T@U)
(declare-fun |c'#0| () T@U)
(declare-fun |u'#0| () T@U)
(set-info :boogie-vc-id Impl$$EnumerationRegression.__default.Test)
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
 (=> (= (ControlFlow 0 0) 61) (let ((anon12_correct true))
(let ((anon45_Else_correct  (=> (and (not (and (and (<= (LitInt 137438953456) |x#0@0|) (< |x#0@0| 137438953728)) (and (<= (LitInt 137438953456) |y#0@0|) (< |y#0@0| 137438953728)))) (= (ControlFlow 0 44) 42)) anon12_correct)))
(let ((anon45_Then_correct  (=> (and (and (and (<= (LitInt 137438953456) |x#0@0|) (< |x#0@0| 137438953728)) (and (<= (LitInt 137438953456) |y#0@0|) (< |y#0@0| 137438953728))) (and (and (= |$_Frame#l0@0| (|lambda#0| null |$lambdaHeap#0@0| alloc false)) (= |lambdaResult#0| (< |x#0@0| |y#0@0|))) (and ($Is boolType (bool_2_U |lambdaResult#0|) TBool) (= (ControlFlow 0 43) 42)))) anon12_correct)))
(let ((anon44_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0@0|) (or (= $Heap |$lambdaHeap#0@0|) ($HeapSucc $Heap |$lambdaHeap#0@0|))) (and (=> (= (ControlFlow 0 45) 43) anon45_Then_correct) (=> (= (ControlFlow 0 45) 44) anon45_Else_correct)))))
(let ((anon29_correct true))
(let ((anon55_Else_correct  (=> (and (not (and (and (<= (LitInt 137438953474) |x#1@0|) (< |x#1@0| 137438953480)) (and (<= (LitInt 137438953474) |y#1@0|) (< |y#1@0| 137438953480)))) (= (ControlFlow 0 14) 12)) anon29_correct)))
(let ((anon55_Then_correct  (=> (and (and (and (<= (LitInt 137438953474) |x#1@0|) (< |x#1@0| 137438953480)) (and (<= (LitInt 137438953474) |y#1@0|) (< |y#1@0| 137438953480))) (and (and (= |$_Frame#l1@0| (|lambda#0| null |$lambdaHeap#1@0| alloc false)) (= |lambdaResult#1| (< |x#1@0| |y#1@0|))) (and ($Is boolType (bool_2_U |lambdaResult#1|) TBool) (= (ControlFlow 0 13) 12)))) anon29_correct)))
(let ((anon54_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#1@0|) (or (= $Heap@0 |$lambdaHeap#1@0|) ($HeapSucc $Heap@0 |$lambdaHeap#1@0|))) (and (=> (= (ControlFlow 0 15) 13) anon55_Then_correct) (=> (= (ControlFlow 0 15) 14) anon55_Else_correct)))))
(let ((anon33_correct true))
(let ((anon57_Else_correct  (=> (and (not (and ($Is charType |x#2@0| TChar) ($Is charType |y#2@0| TChar))) (= (ControlFlow 0 9) 7)) anon33_correct)))
(let ((anon57_Then_correct  (=> (and ($Is charType |x#2@0| TChar) ($Is charType |y#2@0| TChar)) (=> (and (and (= |$_Frame#l2@0| (|lambda#0| null |$lambdaHeap#2@0| alloc false)) (= |lambdaResult#2| (< (|char#ToInt| |x#2@0|) (|char#ToInt| |y#2@0|)))) (and ($Is boolType (bool_2_U |lambdaResult#2|) TBool) (= (ControlFlow 0 8) 7))) anon33_correct))))
(let ((anon56_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#2@0|) (or (= $Heap@1 |$lambdaHeap#2@0|) ($HeapSucc $Heap@1 |$lambdaHeap#2@0|))) (and (=> (= (ControlFlow 0 10) 8) anon57_Then_correct) (=> (= (ControlFlow 0 10) 9) anon57_Else_correct)))))
(let ((anon37_correct true))
(let ((anon59_Else_correct  (=> (and (not (and ($Is charType |x#3@0| TChar) ($Is charType |y#3@0| TChar))) (= (ControlFlow 0 4) 2)) anon37_correct)))
(let ((anon59_Then_correct  (=> (and ($Is charType |x#3@0| TChar) ($Is charType |y#3@0| TChar)) (=> (and (and (= |$_Frame#l3@0| (|lambda#0| null |$lambdaHeap#3@0| alloc false)) (= |lambdaResult#3| (< (|char#ToInt| |x#3@0|) (|char#ToInt| |y#3@0|)))) (and ($Is boolType (bool_2_U |lambdaResult#3|) TBool) (= (ControlFlow 0 3) 2))) anon37_correct))))
(let ((anon58_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#3@0|) (or (= $Heap@2 |$lambdaHeap#3@0|) ($HeapSucc $Heap@2 |$lambdaHeap#3@0|))) (and (=> (= (ControlFlow 0 5) 3) anon59_Then_correct) (=> (= (ControlFlow 0 5) 4) anon59_Else_correct)))))
(let ((anon58_Else_correct true))
(let ((anon56_Else_correct  (=> (= |below##2@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle2 |lambda#15| (|lambda#3| TChar TChar) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ)))) (=> (and (and (and ($Is SeqType |call4formal@r#0| (TSeq call0formal@EnumerationRegression._default.ToSeq$X)) ($IsAlloc SeqType |call4formal@r#0| (TSeq call0formal@EnumerationRegression._default.ToSeq$X) $Heap)) (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2))) (and (and ($Is SeqType |call4formal@r#0@0| (TSeq TChar)) ($IsAlloc SeqType |call4formal@r#0@0| (TSeq TChar) $Heap@2)) (and (forall (($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $o@@2) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 $o@@2) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $o@@2)))
 :qid |Comprehensionsdfy.570:10|
 :skolemid |2311|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 $o@@2))
)) ($HeapSucc $Heap@1 $Heap@2)))) (and (=> (= (ControlFlow 0 6) 5) anon58_Then_correct) (=> (= (ControlFlow 0 6) 1) anon58_Else_correct))))))
(let ((anon54_Else_correct  (=> (= |below##1@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle2 |lambda#2| (|lambda#3| Tclass.EnumerationRegression.AlsoLong Tclass.EnumerationRegression.AlsoLong) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ)))) (=> (and (and (and (and ($Is SeqType |call4formal@r#0@@0| (TSeq call0formal@EnumerationRegression._default.ToSeq$X@@0)) ($IsAlloc SeqType |call4formal@r#0@@0| (TSeq call0formal@EnumerationRegression._default.ToSeq$X@@0) $Heap)) (= call0formal@EnumerationRegression._default.ToSeq$X@0 Tclass.EnumerationRegression.AlsoLong)) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1))) (and (and ($Is SeqType |call4formal@r#0@0@@0| (TSeq call0formal@EnumerationRegression._default.ToSeq$X@0)) ($IsAlloc SeqType |call4formal@r#0@0@@0| (TSeq call0formal@EnumerationRegression._default.ToSeq$X@0) $Heap@1)) (and (forall (($o@@3 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@3) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $o@@3) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@3)))
 :qid |Comprehensionsdfy.570:10|
 :skolemid |2311|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $o@@3))
)) ($HeapSucc $Heap@0 $Heap@1)))) (and (=> (= (ControlFlow 0 11) 10) anon56_Then_correct) (=> (= (ControlFlow 0 11) 6) anon56_Else_correct))))))
(let ((anon26_correct  (=> (and (forall ((|l#6@@0| Int) ) (!  (=> (and (<= (LitInt 137438953474) |l#6@@0|) (< |l#6@@0| 137438953480)) (and (|EnumerationRegression.AlsoLong.True#canCall| |l#6@@0|) (=> (and (EnumerationRegression.AlsoLong.True |l#6@@0|) (or (not (= |l#6@@0| 137438953478)) (not true))) (|EnumerationRegression.__default.Digit#canCall| |l#6@@0|))))
 :qid |Comprehensionsdfy.545:18|
 :skolemid |2302|
 :pattern ( (EnumerationRegression.AlsoLong.True |l#6@@0|))
)) (= |u#0@0| (|Set#FromBoogieMap| (|lambda#9| (LitInt 137438953474) 137438953480 137438953478)))) (and (=> (= (ControlFlow 0 16) 15) anon54_Then_correct) (=> (= (ControlFlow 0 16) 11) anon54_Else_correct)))))
(let ((anon53_Else_correct  (=> (and (not (and (EnumerationRegression.AlsoLong.True |l#7@0|) (or (not (= |l#7@0| 137438953478)) (not true)))) (= (ControlFlow 0 21) 16)) anon26_correct)))
(let ((anon53_Then_correct  (=> (and (and (EnumerationRegression.AlsoLong.True |l#7@0|) (or (not (= |l#7@0| 137438953478)) (not true))) ($IsAlloc intType (int_2_U |l#7@0|) TInt $Heap@0)) (and (=> (= (ControlFlow 0 18) (- 0 20)) (<= (LitInt 137438953472) |l#7@0|)) (and (=> (= (ControlFlow 0 18) (- 0 19)) (< |l#7@0| 137438953482)) (=> (and (and (<= (LitInt 137438953472) |l#7@0|) (< |l#7@0| 137438953482)) (and (|EnumerationRegression.__default.Digit#canCall| |l#7@0|) (= (ControlFlow 0 18) 16))) anon26_correct))))))
(let ((anon52_Else_correct  (=> (not (EnumerationRegression.AlsoLong.True |l#7@0|)) (and (=> (= (ControlFlow 0 24) 18) anon53_Then_correct) (=> (= (ControlFlow 0 24) 21) anon53_Else_correct)))))
(let ((anon52_Then_correct  (=> (and (EnumerationRegression.AlsoLong.True |l#7@0|) (= |newtype$check#4@0| (LitInt 137438953478))) (and (=> (= (ControlFlow 0 22) (- 0 23)) (and (<= (LitInt 137438953474) |newtype$check#4@0|) (< |newtype$check#4@0| 137438953480))) (=> (and (<= (LitInt 137438953474) |newtype$check#4@0|) (< |newtype$check#4@0| 137438953480)) (and (=> (= (ControlFlow 0 22) 18) anon53_Then_correct) (=> (= (ControlFlow 0 22) 21) anon53_Else_correct)))))))
(let ((anon51_Then_correct  (=> (and (and (<= (LitInt 137438953474) |l#7@0|) (< |l#7@0| 137438953480)) (and ($IsAllocBox ($Box intType (int_2_U |l#7@0|)) Tclass.EnumerationRegression.AlsoLong $Heap@0) (|EnumerationRegression.AlsoLong.True#canCall| |l#7@0|))) (and (=> (= (ControlFlow 0 25) 22) anon52_Then_correct) (=> (= (ControlFlow 0 25) 24) anon52_Else_correct)))))
(let ((anon51_Else_correct  (=> (and (not (and (<= (LitInt 137438953474) |l#7@0|) (< |l#7@0| 137438953480))) (= (ControlFlow 0 17) 16)) anon26_correct)))
(let ((anon21_correct  (=> (and (forall ((|l#4@@0| T@U) ) (!  (=> (and (<= (LitInt 137438953456) (U_2_int |l#4@@0|)) (< (U_2_int |l#4@@0|) 137438953728)) (=> (|Set#IsMember| |s#0@0| ($Box intType |l#4@@0|)) (|EnumerationRegression.__default.Digit#canCall| (U_2_int |l#4@@0|))))
 :qid |Comprehensionsdfy.544:18|
 :skolemid |2300|
 :pattern ( (|Set#IsMember| |s#0@0| ($Box intType |l#4@@0|)))
)) (= |c#0@0| (|Set#FromBoogieMap| (|lambda#8| (LitInt 137438953456) 137438953728 |s#0@0| |s#0@0|)))) (and (=> (= (ControlFlow 0 26) 25) anon51_Then_correct) (=> (= (ControlFlow 0 26) 17) anon51_Else_correct)))))
(let ((anon50_Else_correct  (=> (and (not (|Set#IsMember| |s#0@0| ($Box intType (int_2_U |l#5@0|)))) (= (ControlFlow 0 31) 26)) anon21_correct)))
(let ((anon50_Then_correct  (=> (and (|Set#IsMember| |s#0@0| ($Box intType (int_2_U |l#5@0|))) ($IsAlloc intType (int_2_U |l#5@0|) TInt $Heap@0)) (and (=> (= (ControlFlow 0 28) (- 0 30)) (<= (LitInt 137438953472) |l#5@0|)) (and (=> (= (ControlFlow 0 28) (- 0 29)) (< |l#5@0| 137438953482)) (=> (and (and (<= (LitInt 137438953472) |l#5@0|) (< |l#5@0| 137438953482)) (and (|EnumerationRegression.__default.Digit#canCall| |l#5@0|) (= (ControlFlow 0 28) 26))) anon21_correct))))))
(let ((anon49_Then_correct  (=> (and (<= (LitInt 137438953456) |l#5@0|) (< |l#5@0| 137438953728)) (and (=> (= (ControlFlow 0 32) 28) anon50_Then_correct) (=> (= (ControlFlow 0 32) 31) anon50_Else_correct)))))
(let ((anon49_Else_correct  (=> (and (not (and (<= (LitInt 137438953456) |l#5@0|) (< |l#5@0| 137438953728))) (= (ControlFlow 0 27) 26)) anon21_correct)))
(let ((anon18_correct  (=> (and (forall ((|l#3@@2| Int) ) (!  (=> (and (<= (LitInt 137438953474) |l#3@@2|) (< |l#3@@2| 137438953480)) (|EnumerationRegression.AlsoLong.True#canCall| |l#3@@2|))
 :qid |Comprehensionsdfy.543:18|
 :skolemid |2298|
 :pattern ( (EnumerationRegression.AlsoLong.True |l#3@@2|))
)) (= |t#0@0| (|Set#FromBoogieMap| (|lambda#7| Tclass.EnumerationRegression.AlsoLong 137438953478)))) (and (=> (= (ControlFlow 0 33) 32) anon49_Then_correct) (=> (= (ControlFlow 0 33) 27) anon49_Else_correct)))))
(let ((anon48_Else_correct  (=> (and (not (and (EnumerationRegression.AlsoLong.True |l#2@0|) (or (not (= |l#2@0| 137438953478)) (not true)))) (= (ControlFlow 0 36) 33)) anon18_correct)))
(let ((anon48_Then_correct  (=> (and (and (EnumerationRegression.AlsoLong.True |l#2@0|) (or (not (= |l#2@0| 137438953478)) (not true))) (= (ControlFlow 0 35) 33)) anon18_correct)))
(let ((anon47_Else_correct  (=> (not (EnumerationRegression.AlsoLong.True |l#2@0|)) (and (=> (= (ControlFlow 0 39) 35) anon48_Then_correct) (=> (= (ControlFlow 0 39) 36) anon48_Else_correct)))))
(let ((anon47_Then_correct  (=> (and (EnumerationRegression.AlsoLong.True |l#2@0|) (= |newtype$check#3@0| (LitInt 137438953478))) (and (=> (= (ControlFlow 0 37) (- 0 38)) (and (<= (LitInt 137438953474) |newtype$check#3@0|) (< |newtype$check#3@0| 137438953480))) (=> (and (<= (LitInt 137438953474) |newtype$check#3@0|) (< |newtype$check#3@0| 137438953480)) (and (=> (= (ControlFlow 0 37) 35) anon48_Then_correct) (=> (= (ControlFlow 0 37) 36) anon48_Else_correct)))))))
(let ((anon46_Then_correct  (=> (and (and (<= (LitInt 137438953474) |l#2@0|) (< |l#2@0| 137438953480)) (and ($IsAllocBox ($Box intType (int_2_U |l#2@0|)) Tclass.EnumerationRegression.AlsoLong $Heap@0) (|EnumerationRegression.AlsoLong.True#canCall| |l#2@0|))) (and (=> (= (ControlFlow 0 40) 37) anon47_Then_correct) (=> (= (ControlFlow 0 40) 39) anon47_Else_correct)))))
(let ((anon46_Else_correct  (=> (and (not (and (<= (LitInt 137438953474) |l#2@0|) (< |l#2@0| 137438953480))) (= (ControlFlow 0 34) 33)) anon18_correct)))
(let ((anon44_Else_correct  (=> (= |below##0@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle2 |lambda#2| (|lambda#3| Tclass.EnumerationRegression.Long Tclass.EnumerationRegression.Long) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false))))) ($LS $LZ)))) (=> (and (and (and (and ($Is SeqType |call4formal@r#0@@1| (TSeq call0formal@EnumerationRegression._default.ToSeq$X@@1)) ($IsAlloc SeqType |call4formal@r#0@@1| (TSeq call0formal@EnumerationRegression._default.ToSeq$X@@1) $Heap)) (= call0formal@EnumerationRegression._default.ToSeq$X@0@@0 Tclass.EnumerationRegression.Long)) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (and (and ($Is SeqType |call4formal@r#0@0@@1| (TSeq call0formal@EnumerationRegression._default.ToSeq$X@0@@0)) ($IsAlloc SeqType |call4formal@r#0@0@@1| (TSeq call0formal@EnumerationRegression._default.ToSeq$X@0@@0) $Heap@0)) (and (forall (($o@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $o@@4) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@4) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $o@@4)))
 :qid |Comprehensionsdfy.570:10|
 :skolemid |2311|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@4))
)) ($HeapSucc $Heap $Heap@0)))) (and (=> (= (ControlFlow 0 41) 40) anon46_Then_correct) (=> (= (ControlFlow 0 41) 34) anon46_Else_correct))))))
(let ((anon9_correct  (=> (and (forall ((|l#1@@5| Int) ) (!  (=> (and (<= (LitInt 137438953456) |l#1@@5|) (< |l#1@@5| 137438953728)) (=> (and (<= (LitInt 137438953474) |l#1@@5|) (< |l#1@@5| 137438953480)) (|EnumerationRegression.Long.True#canCall| |l#1@@5|)))
 :qid |Comprehensionsdfy.539:18|
 :skolemid |2295|
 :pattern ( (EnumerationRegression.Long.True |l#1@@5|))
)) (= |s#0@0| (|Set#FromBoogieMap| (|lambda#1| Tclass.EnumerationRegression.Long (LitInt 137438953474) 137438953480 137438953478)))) (and (=> (= (ControlFlow 0 46) 45) anon44_Then_correct) (=> (= (ControlFlow 0 46) 41) anon44_Else_correct)))))
(let ((anon43_Else_correct  (=> (and (not (and (and (and (<= (LitInt 137438953474) |l#0@0|) (< |l#0@0| 137438953480)) (EnumerationRegression.Long.True |l#0@0|)) (or (not (= |l#0@0| 137438953478)) (not true)))) (= (ControlFlow 0 49) 46)) anon9_correct)))
(let ((anon43_Then_correct  (=> (and (and (and (and (<= (LitInt 137438953474) |l#0@0|) (< |l#0@0| 137438953480)) (EnumerationRegression.Long.True |l#0@0|)) (or (not (= |l#0@0| 137438953478)) (not true))) (= (ControlFlow 0 48) 46)) anon9_correct)))
(let ((anon42_Else_correct  (=> (not (and (and (<= (LitInt 137438953474) |l#0@0|) (< |l#0@0| 137438953480)) (EnumerationRegression.Long.True |l#0@0|))) (and (=> (= (ControlFlow 0 52) 48) anon43_Then_correct) (=> (= (ControlFlow 0 52) 49) anon43_Else_correct)))))
(let ((anon42_Then_correct  (=> (and (and (and (<= (LitInt 137438953474) |l#0@0|) (< |l#0@0| 137438953480)) (EnumerationRegression.Long.True |l#0@0|)) (= |newtype$check#2@0| (LitInt 137438953478))) (and (=> (= (ControlFlow 0 50) (- 0 51)) (and (<= (LitInt 137438953456) |newtype$check#2@0|) (< |newtype$check#2@0| 137438953728))) (=> (and (<= (LitInt 137438953456) |newtype$check#2@0|) (< |newtype$check#2@0| 137438953728)) (and (=> (= (ControlFlow 0 50) 48) anon43_Then_correct) (=> (= (ControlFlow 0 50) 49) anon43_Else_correct)))))))
(let ((anon41_Else_correct  (=> (not (and (<= (LitInt 137438953474) |l#0@0|) (< |l#0@0| 137438953480))) (and (=> (= (ControlFlow 0 54) 50) anon42_Then_correct) (=> (= (ControlFlow 0 54) 52) anon42_Else_correct)))))
(let ((anon41_Then_correct  (=> (and (and (<= (LitInt 137438953474) |l#0@0|) (< |l#0@0| 137438953480)) (and ($IsAllocBox ($Box intType (int_2_U |l#0@0|)) Tclass.EnumerationRegression.Long $Heap) (|EnumerationRegression.Long.True#canCall| |l#0@0|))) (and (=> (= (ControlFlow 0 53) 50) anon42_Then_correct) (=> (= (ControlFlow 0 53) 52) anon42_Else_correct)))))
(let ((anon40_Else_correct  (=> (< |l#0@0| (LitInt 137438953474)) (and (=> (= (ControlFlow 0 57) 53) anon41_Then_correct) (=> (= (ControlFlow 0 57) 54) anon41_Else_correct)))))
(let ((anon40_Then_correct  (=> (and (<= (LitInt 137438953474) |l#0@0|) (= |newtype$check#1@0| (LitInt 137438953480))) (and (=> (= (ControlFlow 0 55) (- 0 56)) (and (<= (LitInt 137438953456) |newtype$check#1@0|) (< |newtype$check#1@0| 137438953728))) (=> (and (<= (LitInt 137438953456) |newtype$check#1@0|) (< |newtype$check#1@0| 137438953728)) (and (=> (= (ControlFlow 0 55) 53) anon41_Then_correct) (=> (= (ControlFlow 0 55) 54) anon41_Else_correct)))))))
(let ((anon39_Then_correct  (=> (and (and (<= (LitInt 137438953456) |l#0@0|) (< |l#0@0| 137438953728)) (= |newtype$check#0@0| (LitInt 137438953474))) (and (=> (= (ControlFlow 0 58) (- 0 59)) (and (<= (LitInt 137438953456) |newtype$check#0@0|) (< |newtype$check#0@0| 137438953728))) (=> (and (<= (LitInt 137438953456) |newtype$check#0@0|) (< |newtype$check#0@0| 137438953728)) (and (=> (= (ControlFlow 0 58) 55) anon40_Then_correct) (=> (= (ControlFlow 0 58) 57) anon40_Else_correct)))))))
(let ((anon39_Else_correct  (=> (and (not (and (<= (LitInt 137438953456) |l#0@0|) (< |l#0@0| 137438953728))) (= (ControlFlow 0 47) 46)) anon9_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 60) 58) anon39_Then_correct) (=> (= (ControlFlow 0 60) 47) anon39_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is SetType |s#0| (TSet Tclass.EnumerationRegression.Long)) ($IsAlloc SetType |s#0| (TSet Tclass.EnumerationRegression.Long) $Heap)) true) (=> (and (and (and (and (and ($Is SeqType |s'#0| (TSeq Tclass.EnumerationRegression.Long)) ($IsAlloc SeqType |s'#0| (TSeq Tclass.EnumerationRegression.Long) $Heap)) true) (and (and ($Is SetType |t#0| (TSet Tclass.EnumerationRegression.AlsoLong)) ($IsAlloc SetType |t#0| (TSet Tclass.EnumerationRegression.AlsoLong) $Heap)) true)) (and (and (and ($Is SetType |c#0@@1| (TSet TChar)) ($IsAlloc SetType |c#0@@1| (TSet TChar) $Heap)) true) (and (and ($Is SetType |u#0| (TSet TChar)) ($IsAlloc SetType |u#0| (TSet TChar) $Heap)) true))) (and (and (and (and ($Is SeqType |t'#0| (TSeq Tclass.EnumerationRegression.AlsoLong)) ($IsAlloc SeqType |t'#0| (TSeq Tclass.EnumerationRegression.AlsoLong) $Heap)) true) (and (and ($Is SeqType |c'#0| (TSeq TChar)) ($IsAlloc SeqType |c'#0| (TSeq TChar) $Heap)) true)) (and (and (and ($Is SeqType |u'#0| (TSeq TChar)) ($IsAlloc SeqType |u'#0| (TSeq TChar) $Heap)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 61) 60))))) anon0_correct)))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
