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
(declare-fun allocName () T@U)
(declare-fun Tagclass.OtherNamesWithSpecialCharacters_q__.A_q__ () T@U)
(declare-fun Tagclass.OtherNamesWithSpecialCharacters_q__.B_q__ () T@U)
(declare-fun Tagclass.OtherNamesWithSpecialCharacters_q__.Cl_q__ () T@U)
(declare-fun Tagclass.OtherNamesWithSpecialCharacters_q__.Cl_q__? () T@U)
(declare-fun Tagclass.OtherNamesWithSpecialCharacters_q__.Tr_q__ () T@U)
(declare-fun |##OtherNamesWithSpecialCharacters?_.B?_.B?_| () T@U)
(declare-fun class.OtherNamesWithSpecialCharacters_q__.Tr_q__? () T@U)
(declare-fun Tagclass.OtherNamesWithSpecialCharacters_q__.Tr_q__? () T@U)
(declare-fun tytagFamily$A?_ () T@U)
(declare-fun tytagFamily$B?_ () T@U)
(declare-fun tytagFamily$Cl?_ () T@U)
(declare-fun tytagFamily$Tr?_ () T@U)
(declare-fun field$data () T@U)
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
(declare-fun FDim (T@U) Int)
(declare-fun Tag (T@U) T@U)
(declare-fun DeclName (T@U) T@U)
(declare-fun implements$OtherNamesWithSpecialCharacters_q__.Tr_q__ (T@U) Bool)
(declare-fun Tclass.OtherNamesWithSpecialCharacters_q__.Cl_q__? () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#OtherNamesWithSpecialCharacters?_.B?_.B?_| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun OtherNamesWithSpecialCharacters_q__.Tr_q__.data () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tclass.OtherNamesWithSpecialCharacters_q__.Tr_q__? () T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass.OtherNamesWithSpecialCharacters_q__.Tr_q__ () T@U)
(declare-fun Tclass.OtherNamesWithSpecialCharacters_q__.Cl_q__ () T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.OtherNamesWithSpecialCharacters_q__.B_q__ () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun Mod (Int Int) Int)
(declare-fun Tclass.OtherNamesWithSpecialCharacters_q__.A_q__ () T@U)
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
(assert (distinct TInt TagInt alloc allocName Tagclass.OtherNamesWithSpecialCharacters_q__.A_q__ Tagclass.OtherNamesWithSpecialCharacters_q__.B_q__ Tagclass.OtherNamesWithSpecialCharacters_q__.Cl_q__ Tagclass.OtherNamesWithSpecialCharacters_q__.Cl_q__? Tagclass.OtherNamesWithSpecialCharacters_q__.Tr_q__ |##OtherNamesWithSpecialCharacters?_.B?_.B?_| class.OtherNamesWithSpecialCharacters_q__.Tr_q__? Tagclass.OtherNamesWithSpecialCharacters_q__.Tr_q__? tytagFamily$A?_ tytagFamily$B?_ tytagFamily$Cl?_ tytagFamily$Tr?_ field$data)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (implements$OtherNamesWithSpecialCharacters_q__.Tr_q__ Tclass.OtherNamesWithSpecialCharacters_q__.Cl_q__?))
(assert (= (DatatypeCtorId |#OtherNamesWithSpecialCharacters?_.B?_.B?_|) |##OtherNamesWithSpecialCharacters?_.B?_.B?_|))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.OtherNamesWithSpecialCharacters_q__.Cl_q__?)  (or (= $o null) (= (dtype $o) Tclass.OtherNamesWithSpecialCharacters_q__.Cl_q__?)))
 :qid |unknown.0:0|
 :skolemid |1512|
 :pattern ( ($Is refType $o Tclass.OtherNamesWithSpecialCharacters_q__.Cl_q__?))
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
(assert (forall (($h T@U) ($o@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (or (not (= $o@@0 null)) (not true)) ($Is refType $o@@0 Tclass.OtherNamesWithSpecialCharacters_q__.Tr_q__?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@0) OtherNamesWithSpecialCharacters_q__.Tr_q__.data)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1508|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@0) OtherNamesWithSpecialCharacters_q__.Tr_q__.data)))
)))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass.OtherNamesWithSpecialCharacters_q__.Tr_q__ $h@@0) ($IsAlloc refType |c#0| Tclass.OtherNamesWithSpecialCharacters_q__.Tr_q__? $h@@0))
 :qid |unknown.0:0|
 :skolemid |1511|
 :pattern ( ($IsAlloc refType |c#0| Tclass.OtherNamesWithSpecialCharacters_q__.Tr_q__ $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass.OtherNamesWithSpecialCharacters_q__.Tr_q__? $h@@0))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass.OtherNamesWithSpecialCharacters_q__.Cl_q__ $h@@1) ($IsAlloc refType |c#0@@0| Tclass.OtherNamesWithSpecialCharacters_q__.Cl_q__? $h@@1))
 :qid |unknown.0:0|
 :skolemid |1515|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.OtherNamesWithSpecialCharacters_q__.Cl_q__ $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.OtherNamesWithSpecialCharacters_q__.Cl_q__? $h@@1))
)))
(assert (= (Ctor DatatypeTypeType) 7))
(assert ($Is DatatypeTypeType |#OtherNamesWithSpecialCharacters?_.B?_.B?_| Tclass.OtherNamesWithSpecialCharacters_q__.B_q__))
(assert (= (FDim OtherNamesWithSpecialCharacters_q__.Tr_q__.data) 0))
(assert (= (FieldOfDecl class.OtherNamesWithSpecialCharacters_q__.Tr_q__? field$data) OtherNamesWithSpecialCharacters_q__.Tr_q__.data))
(assert  (not ($IsGhostField OtherNamesWithSpecialCharacters_q__.Tr_q__.data)))
(assert (forall (($o@@1 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass.OtherNamesWithSpecialCharacters_q__.Tr_q__? $h@@2)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1507|
 :pattern ( ($IsAlloc refType $o@@1 Tclass.OtherNamesWithSpecialCharacters_q__.Tr_q__? $h@@2))
)))
(assert (forall (($o@@2 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass.OtherNamesWithSpecialCharacters_q__.Cl_q__? $h@@3)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1513|
 :pattern ( ($IsAlloc refType $o@@2 Tclass.OtherNamesWithSpecialCharacters_q__.Cl_q__? $h@@3))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |1113|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |1114|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |1012|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1010|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1021|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert ($IsGhostField alloc))
(assert (forall ((h@@0 T@U) (k@@0 T@U) (v T@U) (t T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@0 k@@0) (=> ($IsAlloc T@@1 v t h@@0) ($IsAlloc T@@1 v t k@@0)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |1105|
 :pattern ( ($HeapSucc h@@0 k@@0) ($IsAlloc T@@1 v t h@@0))
)))
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass.OtherNamesWithSpecialCharacters_q__.Tr_q__)  (and ($Is refType |c#0@@1| Tclass.OtherNamesWithSpecialCharacters_q__.Tr_q__?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1510|
 :pattern ( ($Is refType |c#0@@1| Tclass.OtherNamesWithSpecialCharacters_q__.Tr_q__))
 :pattern ( ($Is refType |c#0@@1| Tclass.OtherNamesWithSpecialCharacters_q__.Tr_q__?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass.OtherNamesWithSpecialCharacters_q__.Cl_q__)  (and ($Is refType |c#0@@2| Tclass.OtherNamesWithSpecialCharacters_q__.Cl_q__?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1514|
 :pattern ( ($Is refType |c#0@@2| Tclass.OtherNamesWithSpecialCharacters_q__.Cl_q__))
 :pattern ( ($Is refType |c#0@@2| Tclass.OtherNamesWithSpecialCharacters_q__.Cl_q__?))
)))
(assert (forall (($o@@3 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@3 Tclass.OtherNamesWithSpecialCharacters_q__.Cl_q__? $heap) ($IsAlloc refType $o@@3 Tclass.OtherNamesWithSpecialCharacters_q__.Tr_q__? $heap))
 :qid |unknown.0:0|
 :skolemid |1525|
 :pattern ( ($IsAlloc refType $o@@3 Tclass.OtherNamesWithSpecialCharacters_q__.Cl_q__? $heap))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |1112|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |1102|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall (($h@@4 T@U) ($o@@4 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@4 null)) (not true)) ($Is refType $o@@4 Tclass.OtherNamesWithSpecialCharacters_q__.Tr_q__?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) OtherNamesWithSpecialCharacters_q__.Tr_q__.data)) TInt $h@@4))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1509|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) OtherNamesWithSpecialCharacters_q__.Tr_q__.data)))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1020|
 :pattern ( ($Box T@@2 x@@5))
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
 :skolemid |3157|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f))
)))
(assert (forall ((x@@6 Int) (y Int) ) (! (= (Mod x@@6 y) (mod x@@6 y))
 :qid |DafnyPreludebpl.1649:14|
 :skolemid |1335|
 :pattern ( (Mod x@@6 y))
)))
(assert (forall (($o@@6 T@U) ) (!  (=> ($Is refType $o@@6 Tclass.OtherNamesWithSpecialCharacters_q__.Cl_q__?) ($Is refType $o@@6 Tclass.OtherNamesWithSpecialCharacters_q__.Tr_q__?))
 :qid |unknown.0:0|
 :skolemid |1524|
 :pattern ( ($Is refType $o@@6 Tclass.OtherNamesWithSpecialCharacters_q__.Cl_q__?))
)))
(assert (forall ((h@@1 T@U) (r T@U) (f T@U) (x@@7 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@1 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 r) f x@@7))) ($HeapSucc h@@1 (MapType0Store refType (MapType0Type FieldType BoxType) h@@1 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 r) f x@@7))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |1111|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@1 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 r) f x@@7)))
)))
(assert (forall ((d T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) ($Is DatatypeTypeType d Tclass.OtherNamesWithSpecialCharacters_q__.A_q__)) ($IsAlloc DatatypeTypeType d Tclass.OtherNamesWithSpecialCharacters_q__.A_q__ $h@@5))
 :qid |unknown.0:0|
 :skolemid |1484|
 :pattern ( ($IsAlloc DatatypeTypeType d Tclass.OtherNamesWithSpecialCharacters_q__.A_q__ $h@@5))
)))
(assert (forall ((d@@0 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) ($Is DatatypeTypeType d@@0 Tclass.OtherNamesWithSpecialCharacters_q__.B_q__)) ($IsAlloc DatatypeTypeType d@@0 Tclass.OtherNamesWithSpecialCharacters_q__.B_q__ $h@@6))
 :qid |unknown.0:0|
 :skolemid |1491|
 :pattern ( ($IsAlloc DatatypeTypeType d@@0 Tclass.OtherNamesWithSpecialCharacters_q__.B_q__ $h@@6))
)))
(assert (= (Tag Tclass.OtherNamesWithSpecialCharacters_q__.A_q__) Tagclass.OtherNamesWithSpecialCharacters_q__.A_q__))
(assert (= (TagFamily Tclass.OtherNamesWithSpecialCharacters_q__.A_q__) tytagFamily$A?_))
(assert (= (Tag Tclass.OtherNamesWithSpecialCharacters_q__.B_q__) Tagclass.OtherNamesWithSpecialCharacters_q__.B_q__))
(assert (= (TagFamily Tclass.OtherNamesWithSpecialCharacters_q__.B_q__) tytagFamily$B?_))
(assert (= (Tag Tclass.OtherNamesWithSpecialCharacters_q__.Cl_q__) Tagclass.OtherNamesWithSpecialCharacters_q__.Cl_q__))
(assert (= (TagFamily Tclass.OtherNamesWithSpecialCharacters_q__.Cl_q__) tytagFamily$Cl?_))
(assert (= (Tag Tclass.OtherNamesWithSpecialCharacters_q__.Cl_q__?) Tagclass.OtherNamesWithSpecialCharacters_q__.Cl_q__?))
(assert (= (TagFamily Tclass.OtherNamesWithSpecialCharacters_q__.Cl_q__?) tytagFamily$Cl?_))
(assert (= (Tag Tclass.OtherNamesWithSpecialCharacters_q__.Tr_q__) Tagclass.OtherNamesWithSpecialCharacters_q__.Tr_q__))
(assert (= (TagFamily Tclass.OtherNamesWithSpecialCharacters_q__.Tr_q__) tytagFamily$Tr?_))
(assert (= (Tag Tclass.OtherNamesWithSpecialCharacters_q__.Tr_q__?) Tagclass.OtherNamesWithSpecialCharacters_q__.Tr_q__?))
(assert (= (TagFamily Tclass.OtherNamesWithSpecialCharacters_q__.Tr_q__?) tytagFamily$Tr?_))
(assert (forall (($o@@7 T@U) ) (! (= ($Is refType $o@@7 Tclass.OtherNamesWithSpecialCharacters_q__.Tr_q__?)  (or (= $o@@7 null) (implements$OtherNamesWithSpecialCharacters_q__.Tr_q__ (dtype $o@@7))))
 :qid |unknown.0:0|
 :skolemid |1506|
 :pattern ( ($Is refType $o@@7 Tclass.OtherNamesWithSpecialCharacters_q__.Tr_q__?))
)))
(assert (forall ((x@@8 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@8))) (Lit BoxType ($Box intType (int_2_U x@@8))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |1013|
 :pattern ( ($Box intType (int_2_U (LitInt x@@8))))
)))
(assert (forall ((x@@9 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@9)) (Lit BoxType ($Box T@@3 x@@9)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1011|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@9)))
)))
(assert (forall ((h@@2 T@U) (v@@0 T@U) ) (! ($IsAlloc intType v@@0 TInt h@@2)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |1056|
 :pattern ( ($IsAlloc intType v@@0 TInt h@@2))
)))
(assert (forall ((v@@1 T@U) ) (! ($Is intType v@@1 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |1035|
 :pattern ( ($Is intType v@@1 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |a#0@0| () T@U)
(declare-fun |b#0@0| () T@U)
(declare-fun $nw@0 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |$rhs#0@0| () Int)
(declare-fun $Heap@1 () T@U)
(declare-fun |x3#0@0| () Int)
(declare-fun |x5#0@0| () Int)
(declare-fun |a#0| () T@U)
(declare-fun |b#0| () T@U)
(declare-fun |defass#c#0| () Bool)
(declare-fun |c#0@@3| () T@U)
(declare-fun |defass#t#0| () Bool)
(declare-fun |t#0| () T@U)
(declare-fun |x3#0| () Int)
(declare-fun |x5#0| () Int)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$OtherNamesWithSpecialCharacters_q__.__default.Test)
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
 (=> (= (ControlFlow 0 0) 10) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and (and (and ($Is DatatypeTypeType |a#0@0| Tclass.OtherNamesWithSpecialCharacters_q__.A_q__) ($IsAlloc DatatypeTypeType |a#0@0| Tclass.OtherNamesWithSpecialCharacters_q__.A_q__ $Heap)) (= |b#0@0| (Lit DatatypeTypeType |#OtherNamesWithSpecialCharacters?_.B?_.B?_|))) (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 Tclass.OtherNamesWithSpecialCharacters_q__.Cl_q__?))) (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc)))) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)))) (and (=> (= (ControlFlow 0 2) (- 0 9)) true) (and (=> (= (ControlFlow 0 2) (- 0 8)) true) (and (=> (= (ControlFlow 0 2) (- 0 7)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 6)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 OtherNamesWithSpecialCharacters_q__.Tr_q__.data))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 OtherNamesWithSpecialCharacters_q__.Tr_q__.data)) (=> (= |$rhs#0@0| (LitInt 17)) (=> (and (and (= $Heap@1 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0) OtherNamesWithSpecialCharacters_q__.Tr_q__.data ($Box intType (int_2_U |$rhs#0@0|))))) ($IsGoodHeap $Heap@1)) (and (= (Mod |x3#0@0| (LitInt 3)) (LitInt 0)) (= (Mod |x5#0@0| (LitInt 5)) (LitInt 0)))) (and (=> (= (ControlFlow 0 2) (- 0 5)) true) (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (not (= $nw@0 null)) (not true))) (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (or (not (= $nw@0 null)) (not true))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is DatatypeTypeType |a#0| Tclass.OtherNamesWithSpecialCharacters_q__.A_q__) ($IsAlloc DatatypeTypeType |a#0| Tclass.OtherNamesWithSpecialCharacters_q__.A_q__ $Heap)) true) (=> (and (and (and (and ($Is DatatypeTypeType |b#0| Tclass.OtherNamesWithSpecialCharacters_q__.B_q__) ($IsAlloc DatatypeTypeType |b#0| Tclass.OtherNamesWithSpecialCharacters_q__.B_q__ $Heap)) true) (and (=> |defass#c#0| (and ($Is refType |c#0@@3| Tclass.OtherNamesWithSpecialCharacters_q__.Cl_q__) ($IsAlloc refType |c#0@@3| Tclass.OtherNamesWithSpecialCharacters_q__.Cl_q__ $Heap))) true)) (and (and (and (=> |defass#t#0| (and ($Is refType |t#0| Tclass.OtherNamesWithSpecialCharacters_q__.Tr_q__) ($IsAlloc refType |t#0| Tclass.OtherNamesWithSpecialCharacters_q__.Tr_q__ $Heap))) true) (and (= (Mod |x3#0| (LitInt 3)) (LitInt 0)) true)) (and (and (= (Mod |x5#0| (LitInt 5)) (LitInt 0)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 10) 2))))) anon0_correct)))))
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
