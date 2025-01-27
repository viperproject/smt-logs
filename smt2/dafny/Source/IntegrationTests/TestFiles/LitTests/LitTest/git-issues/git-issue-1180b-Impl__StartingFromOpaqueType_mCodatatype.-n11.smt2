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
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass.StartingFromOpaqueType_mCodatatype.Ty () T@U)
(declare-fun |##StartingFromOpaqueType.Codatatype.Ty.Make| () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$Ty () T@U)
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
(declare-fun Tclass._System.nat () T@U)
(declare-fun |$IsA#StartingFromOpaqueType_mCodatatype.Ty| (T@U) Bool)
(declare-fun StartingFromOpaqueType_mCodatatype.Ty.Make_q (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun StartingFromOpaqueType_mCodatatype.Ty.c (T@U) Int)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.StartingFromOpaqueType_mCodatatype.Ty () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun StartingFromOpaqueType_mCodatatype.Ty.F (T@U Int) Int)
(declare-fun |StartingFromOpaqueType_mCodatatype.Ty.F#canCall| (T@U Int) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#StartingFromOpaqueType.Codatatype.Ty.Make| (Int) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun StartingFromOpaqueType_mCodatatype.Ty.w (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun Mul (Int Int) Int)
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
(assert (distinct TInt TagInt alloc Tagclass._System.nat Tagclass.StartingFromOpaqueType_mCodatatype.Ty |##StartingFromOpaqueType.Codatatype.Ty.Make| tytagFamily$nat tytagFamily$Ty)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |1834|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (forall ((d T@U) ) (!  (=> (|$IsA#StartingFromOpaqueType_mCodatatype.Ty| d) (StartingFromOpaqueType_mCodatatype.Ty.Make_q d))
 :qid |unknown.0:0|
 :skolemid |1981|
 :pattern ( (|$IsA#StartingFromOpaqueType_mCodatatype.Ty| d))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert  (=> (< 0 $FunctionContextHeight) (forall (($h@@0 T@U) ($o T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@0) ($Is DatatypeTypeType $o Tclass.StartingFromOpaqueType_mCodatatype.Ty)) ($IsAlloc DatatypeTypeType $o Tclass.StartingFromOpaqueType_mCodatatype.Ty $h@@0)) ($IsAlloc intType (int_2_U (StartingFromOpaqueType_mCodatatype.Ty.c $o)) Tclass._System.nat $h@@0))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2003|
 :pattern ( (StartingFromOpaqueType_mCodatatype.Ty.c $o) ($IsAlloc DatatypeTypeType $o Tclass.StartingFromOpaqueType_mCodatatype.Ty $h@@0))
))))
(assert (forall ((d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 Tclass.StartingFromOpaqueType_mCodatatype.Ty) (StartingFromOpaqueType_mCodatatype.Ty.Make_q d@@0))
 :qid |unknown.0:0|
 :skolemid |1982|
 :pattern ( (StartingFromOpaqueType_mCodatatype.Ty.Make_q d@@0) ($Is DatatypeTypeType d@@0 Tclass.StartingFromOpaqueType_mCodatatype.Ty))
)))
(assert  (=> (< 0 $FunctionContextHeight) (forall (($o@@0 T@U) ) (!  (=> ($Is DatatypeTypeType $o@@0 Tclass.StartingFromOpaqueType_mCodatatype.Ty) ($Is intType (int_2_U (StartingFromOpaqueType_mCodatatype.Ty.c $o@@0)) Tclass._System.nat))
 :qid |unknown.0:0|
 :skolemid |2002|
 :pattern ( (StartingFromOpaqueType_mCodatatype.Ty.c $o@@0))
))))
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
 :skolemid |1607|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |1608|
 :pattern ( ($HeapSucc h k))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this T@U) (|x#0@@0| Int) ) (!  (=> (or (|StartingFromOpaqueType_mCodatatype.Ty.F#canCall| this |x#0@@0|) (and (< 1 $FunctionContextHeight) (and (and ($Is DatatypeTypeType this Tclass.StartingFromOpaqueType_mCodatatype.Ty) (<= (LitInt 0) |x#0@@0|)) (or (not (= |x#0@@0| 7)) (not true))))) (= (StartingFromOpaqueType_mCodatatype.Ty.F this |x#0@@0|) |x#0@@0|))
 :qid |gitissue1180bdfy.40:16|
 :skolemid |1996|
 :pattern ( (StartingFromOpaqueType_mCodatatype.Ty.F this |x#0@@0|))
))))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |1506|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1504|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((d@@1 T@U) ) (! (= (StartingFromOpaqueType_mCodatatype.Ty.Make_q d@@1) (= (DatatypeCtorId d@@1) |##StartingFromOpaqueType.Codatatype.Ty.Make|))
 :qid |unknown.0:0|
 :skolemid |1974|
 :pattern ( (StartingFromOpaqueType_mCodatatype.Ty.Make_q d@@1))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1515|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (StartingFromOpaqueType_mCodatatype.Ty.Make_q d@@2) (exists ((|a#1#0#0| Int) ) (! (= d@@2 (|#StartingFromOpaqueType.Codatatype.Ty.Make| |a#1#0#0|))
 :qid |gitissue1180bdfy.39:26|
 :skolemid |1975|
)))
 :qid |unknown.0:0|
 :skolemid |1976|
 :pattern ( (StartingFromOpaqueType_mCodatatype.Ty.Make_q d@@2))
)))
(assert (forall ((|x#0@@1| T@U) ) (! (= ($Is intType |x#0@@1| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@1|)))
 :qid |unknown.0:0|
 :skolemid |1833|
 :pattern ( ($Is intType |x#0@@1| Tclass._System.nat))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1528|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx t@@0 h@@1) ($IsAllocBox bx t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |1600|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@2) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |1599|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@2))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@0 T@U) (|x#0@@2| Int) ) (!  (=> (or (|StartingFromOpaqueType_mCodatatype.Ty.F#canCall| this@@0 |x#0@@2|) (and (< 1 $FunctionContextHeight) (and (and ($Is DatatypeTypeType this@@0 Tclass.StartingFromOpaqueType_mCodatatype.Ty) (<= (LitInt 0) |x#0@@2|)) (or (not (= |x#0@@2| 7)) (not true))))) (and (= (StartingFromOpaqueType_mCodatatype.Ty.F this@@0 |x#0@@2|) (StartingFromOpaqueType_mCodatatype.Ty.c this@@0)) (<= (LitInt 0) (StartingFromOpaqueType_mCodatatype.Ty.F this@@0 |x#0@@2|))))
 :qid |gitissue1180bdfy.40:16|
 :skolemid |1994|
 :pattern ( (StartingFromOpaqueType_mCodatatype.Ty.F this@@0 |x#0@@2|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@1 T@U) (|x#0@@3| Int) ) (!  (=> (or (|StartingFromOpaqueType_mCodatatype.Ty.F#canCall| this@@1 (LitInt |x#0@@3|)) (and (< 1 $FunctionContextHeight) (and (and ($Is DatatypeTypeType this@@1 Tclass.StartingFromOpaqueType_mCodatatype.Ty) (<= (LitInt 0) |x#0@@3|)) (U_2_bool (Lit boolType (bool_2_U  (or (not (= |x#0@@3| 7)) (not true)))))))) (= (StartingFromOpaqueType_mCodatatype.Ty.F this@@1 (LitInt |x#0@@3|)) (LitInt |x#0@@3|)))
 :qid |gitissue1180bdfy.40:16|
 :weight 3
 :skolemid |1997|
 :pattern ( (StartingFromOpaqueType_mCodatatype.Ty.F this@@1 (LitInt |x#0@@3|)))
))))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |1606|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((|a#0#0#0| Int) ) (! (= (DatatypeCtorId (|#StartingFromOpaqueType.Codatatype.Ty.Make| |a#0#0#0|)) |##StartingFromOpaqueType.Codatatype.Ty.Make|)
 :qid |gitissue1180bdfy.39:26|
 :skolemid |1973|
 :pattern ( (|#StartingFromOpaqueType.Codatatype.Ty.Make| |a#0#0#0|))
)))
(assert (forall ((|a#3#0#0| Int) ) (! (= (StartingFromOpaqueType_mCodatatype.Ty.w (|#StartingFromOpaqueType.Codatatype.Ty.Make| |a#3#0#0|)) |a#3#0#0|)
 :qid |gitissue1180bdfy.39:26|
 :skolemid |1979|
 :pattern ( (|#StartingFromOpaqueType.Codatatype.Ty.Make| |a#3#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1514|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((|a#2#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#StartingFromOpaqueType.Codatatype.Ty.Make| |a#2#0#0|) Tclass.StartingFromOpaqueType_mCodatatype.Ty) ($Is intType (int_2_U |a#2#0#0|) TInt))
 :qid |gitissue1180bdfy.39:26|
 :skolemid |1977|
 :pattern ( ($Is DatatypeTypeType (|#StartingFromOpaqueType.Codatatype.Ty.Make| |a#2#0#0|) Tclass.StartingFromOpaqueType_mCodatatype.Ty))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@1) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |7461|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))
)))
(assert (forall ((d@@3 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (StartingFromOpaqueType_mCodatatype.Ty.Make_q d@@3) ($IsAlloc DatatypeTypeType d@@3 Tclass.StartingFromOpaqueType_mCodatatype.Ty $h@@1))) ($IsAlloc intType (int_2_U (StartingFromOpaqueType_mCodatatype.Ty.w d@@3)) TInt $h@@1))
 :qid |unknown.0:0|
 :skolemid |1978|
 :pattern ( ($IsAlloc intType (int_2_U (StartingFromOpaqueType_mCodatatype.Ty.w d@@3)) TInt $h@@1))
)))
(assert (forall ((x@@6 Int) (y Int) ) (! (= (Mul x@@6 y) (* x@@6 y))
 :qid |DafnyPreludebpl.1647:14|
 :skolemid |1827|
 :pattern ( (Mul x@@6 y))
)))
(assert (forall ((d@@4 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) ($Is DatatypeTypeType d@@4 Tclass.StartingFromOpaqueType_mCodatatype.Ty)) ($IsAlloc DatatypeTypeType d@@4 Tclass.StartingFromOpaqueType_mCodatatype.Ty $h@@2))
 :qid |unknown.0:0|
 :skolemid |1980|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 Tclass.StartingFromOpaqueType_mCodatatype.Ty $h@@2))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass.StartingFromOpaqueType_mCodatatype.Ty) Tagclass.StartingFromOpaqueType_mCodatatype.Ty))
(assert (= (TagFamily Tclass.StartingFromOpaqueType_mCodatatype.Ty) tytagFamily$Ty))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |1507|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@8)) (Lit BoxType ($Box T@@4 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1505|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@8)))
)))
(assert (forall ((h@@3 T@U) (v@@1 T@U) ) (! ($IsAlloc intType v@@1 TInt h@@3)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |1550|
 :pattern ( ($IsAlloc intType v@@1 TInt h@@3))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@2 T@U) (|x#0@@4| Int) ) (!  (=> (or (|StartingFromOpaqueType_mCodatatype.Ty.F#canCall| (Lit DatatypeTypeType this@@2) (LitInt |x#0@@4|)) (and (< 1 $FunctionContextHeight) (and (and ($Is DatatypeTypeType this@@2 Tclass.StartingFromOpaqueType_mCodatatype.Ty) (<= (LitInt 0) |x#0@@4|)) (U_2_bool (Lit boolType (bool_2_U  (or (not (= |x#0@@4| 7)) (not true)))))))) (= (StartingFromOpaqueType_mCodatatype.Ty.F (Lit DatatypeTypeType this@@2) (LitInt |x#0@@4|)) (LitInt |x#0@@4|)))
 :qid |gitissue1180bdfy.40:16|
 :weight 3
 :skolemid |1998|
 :pattern ( (StartingFromOpaqueType_mCodatatype.Ty.F (Lit DatatypeTypeType this@@2) (LitInt |x#0@@4|)))
))))
(assert (forall ((v@@2 T@U) ) (! ($Is intType v@@2 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |1529|
 :pattern ( ($Is intType v@@2 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |c#0@0| () Int)
(declare-fun |x##0_0@0| () Int)
(declare-fun |t#0| () T@U)
(declare-fun |call3formal@r#0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |c#0| () Int)
(declare-fun |r#0_0| () Int)
(declare-fun |u#0_0| () Int)
(set-info :boogie-vc-id Impl$$StartingFromOpaqueType_mCodatatype.__default.Caller)
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
(let ((anon3_Then_correct  (=> (and (and (or (not (= |c#0@0| 9)) (not true)) (= |x##0_0@0| (StartingFromOpaqueType_mCodatatype.Ty.c |t#0|))) (and (<= (LitInt 0) |call3formal@r#0|) (= (ControlFlow 0 2) (- 0 1)))) (or (not (= |x##0_0@0| 9)) (not true)))))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |c#0@0| (StartingFromOpaqueType_mCodatatype.Ty.c |t#0|))) (and (=> (= (ControlFlow 0 4) 2) anon3_Then_correct) (=> (= (ControlFlow 0 4) 3) anon3_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is DatatypeTypeType |t#0| Tclass.StartingFromOpaqueType_mCodatatype.Ty) ($IsAlloc DatatypeTypeType |t#0| Tclass.StartingFromOpaqueType_mCodatatype.Ty $Heap)) (|$IsA#StartingFromOpaqueType_mCodatatype.Ty| |t#0|)) (=> (and (and (and (<= (LitInt 0) |c#0|) true) (and (<= (LitInt 0) |r#0_0|) true)) (and (and (<= (LitInt 0) |u#0_0|) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 5) 4)))) anon0_correct)))))
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
