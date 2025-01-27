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
(declare-fun Tagclass.GenericBasics.Cl () T@U)
(declare-fun Tagclass.GenericBasics.Tr () T@U)
(declare-fun Tagclass.GenericBasics.Tr? () T@U)
(declare-fun class.GenericBasics.Tr? () T@U)
(declare-fun Tagclass.GenericBasics.Cl? () T@U)
(declare-fun tytagFamily$Cl () T@U)
(declare-fun tytagFamily$Tr () T@U)
(declare-fun field$xyz () T@U)
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
(declare-fun implements$GenericBasics.Tr (T@U T@U T@U) Bool)
(declare-fun Tclass.GenericBasics.Cl? (T@U) T@U)
(declare-fun FDim (T@U) Int)
(declare-fun Tag (T@U) T@U)
(declare-fun DeclName (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun GenericBasics.Tr.abc (T@U T@U T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass.GenericBasics.Tr? (T@U T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass.GenericBasics.Cl (T@U) T@U)
(declare-fun GenericBasics.Tr.xyz () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Tclass.GenericBasics.Tr (T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun Tclass.GenericBasics.Tr_0 (T@U) T@U)
(declare-fun Tclass.GenericBasics.Tr_1 (T@U) T@U)
(declare-fun Tclass.GenericBasics.Tr?_0 (T@U) T@U)
(declare-fun Tclass.GenericBasics.Tr?_1 (T@U) T@U)
(declare-fun Tclass.GenericBasics.Cl_0 (T@U) T@U)
(declare-fun Tclass.GenericBasics.Cl?_0 (T@U) T@U)
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
(assert (distinct TInt TagInt alloc allocName Tagclass.GenericBasics.Cl Tagclass.GenericBasics.Tr Tagclass.GenericBasics.Tr? class.GenericBasics.Tr? Tagclass.GenericBasics.Cl? tytagFamily$Cl tytagFamily$Tr field$xyz)
)
(assert (forall ((GenericBasics.Cl$Q T@U) ) (! (implements$GenericBasics.Tr (Tclass.GenericBasics.Cl? GenericBasics.Cl$Q) GenericBasics.Cl$Q TInt)
 :qid |unknown.0:0|
 :skolemid |1763|
)))
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert  (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 3)) (= (Ctor BoxType) 4)) (= (Ctor refType) 5)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 6)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert  (=> (< 0 $FunctionContextHeight) (forall ((GenericBasics.Tr$A T@U) (GenericBasics.Tr$B T@U) ($h T@U) ($o T@U) ) (!  (=> (and (and ($IsGoodHeap $h) (and (or (not (= $o null)) (not true)) ($Is refType $o (Tclass.GenericBasics.Tr? GenericBasics.Tr$A GenericBasics.Tr$B)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o) alloc)))) ($IsAllocBox (GenericBasics.Tr.abc GenericBasics.Tr$A GenericBasics.Tr$B $o) GenericBasics.Tr$B $h))
 :qid |unknown.0:0|
 :skolemid |1708|
 :pattern ( (GenericBasics.Tr.abc GenericBasics.Tr$A GenericBasics.Tr$B $o) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o) alloc)))
))))
(assert  (=> (< 0 $FunctionContextHeight) (forall ((GenericBasics.Tr$A@@0 T@U) (GenericBasics.Tr$B@@0 T@U) ($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) ($Is refType $o@@0 (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@0 GenericBasics.Tr$B@@0))) ($IsBox (GenericBasics.Tr.abc GenericBasics.Tr$A@@0 GenericBasics.Tr$B@@0 $o@@0) GenericBasics.Tr$B@@0))
 :qid |unknown.0:0|
 :skolemid |1707|
 :pattern ( (GenericBasics.Tr.abc GenericBasics.Tr$A@@0 GenericBasics.Tr$B@@0 $o@@0))
))))
(assert (forall ((GenericBasics.Cl$Q@@0 T@U) (|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass.GenericBasics.Cl GenericBasics.Cl$Q@@0) $h@@0) ($IsAlloc refType |c#0| (Tclass.GenericBasics.Cl? GenericBasics.Cl$Q@@0) $h@@0))
 :qid |unknown.0:0|
 :skolemid |1829|
 :pattern ( ($IsAlloc refType |c#0| (Tclass.GenericBasics.Cl GenericBasics.Cl$Q@@0) $h@@0))
 :pattern ( ($IsAlloc refType |c#0| (Tclass.GenericBasics.Cl? GenericBasics.Cl$Q@@0) $h@@0))
)))
(assert (forall ((GenericBasics.Cl$Q@@1 T@U) ($o@@1 T@U) ) (!  (=> ($Is refType $o@@1 (Tclass.GenericBasics.Cl? GenericBasics.Cl$Q@@1)) ($Is refType $o@@1 (Tclass.GenericBasics.Tr? GenericBasics.Cl$Q@@1 TInt)))
 :qid |unknown.0:0|
 :skolemid |1906|
 :pattern ( ($Is refType $o@@1 (Tclass.GenericBasics.Cl? GenericBasics.Cl$Q@@1)))
)))
(assert (forall ((GenericBasics.Cl$Q@@2 T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass.GenericBasics.Cl? GenericBasics.Cl$Q@@2)) ($IsBox bx (Tclass.GenericBasics.Tr? GenericBasics.Cl$Q@@2 TInt)))
 :qid |unknown.0:0|
 :skolemid |1904|
 :pattern ( ($IsBox bx (Tclass.GenericBasics.Cl? GenericBasics.Cl$Q@@2)))
)))
(assert (forall ((GenericBasics.Cl$Q@@3 T@U) ($o@@2 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@2 (Tclass.GenericBasics.Cl? GenericBasics.Cl$Q@@3) $h@@1)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1762|
 :pattern ( ($IsAlloc refType $o@@2 (Tclass.GenericBasics.Cl? GenericBasics.Cl$Q@@3) $h@@1))
)))
(assert (= (FDim GenericBasics.Tr.xyz) 0))
(assert (= (FieldOfDecl class.GenericBasics.Tr? field$xyz) GenericBasics.Tr.xyz))
(assert  (not ($IsGhostField GenericBasics.Tr.xyz)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |1250|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |1251|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |1149|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1147|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1158|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((GenericBasics.Tr$A@@1 T@U) (GenericBasics.Tr$B@@1 T@U) (|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| (Tclass.GenericBasics.Tr GenericBasics.Tr$A@@1 GenericBasics.Tr$B@@1))  (and ($Is refType |c#0@@0| (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@1 GenericBasics.Tr$B@@1)) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1756|
 :pattern ( ($Is refType |c#0@@0| (Tclass.GenericBasics.Tr GenericBasics.Tr$A@@1 GenericBasics.Tr$B@@1)))
 :pattern ( ($Is refType |c#0@@0| (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@1 GenericBasics.Tr$B@@1)))
)))
(assert ($IsGhostField alloc))
(assert (forall ((GenericBasics.Cl$Q@@4 T@U) (|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| (Tclass.GenericBasics.Cl GenericBasics.Cl$Q@@4))  (and ($Is refType |c#0@@1| (Tclass.GenericBasics.Cl? GenericBasics.Cl$Q@@4)) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1828|
 :pattern ( ($Is refType |c#0@@1| (Tclass.GenericBasics.Cl GenericBasics.Cl$Q@@4)))
 :pattern ( ($Is refType |c#0@@1| (Tclass.GenericBasics.Cl? GenericBasics.Cl$Q@@4)))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1171|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@1) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |1243|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@2) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |1242|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@2))
)))
(assert (forall ((GenericBasics.Tr$A@@2 T@U) (GenericBasics.Tr$B@@2 T@U) ($h@@2 T@U) ($o@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@3 null)) (not true)) ($Is refType $o@@3 (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@2 GenericBasics.Tr$B@@2)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@3) GenericBasics.Tr.xyz) GenericBasics.Tr$B@@2))
 :qid |unknown.0:0|
 :skolemid |1705|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@3) GenericBasics.Tr.xyz) (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@2 GenericBasics.Tr$B@@2))
)))
(assert (forall ((GenericBasics.Cl$Q@@5 T@U) ) (!  (and (= (Tag (Tclass.GenericBasics.Cl GenericBasics.Cl$Q@@5)) Tagclass.GenericBasics.Cl) (= (TagFamily (Tclass.GenericBasics.Cl GenericBasics.Cl$Q@@5)) tytagFamily$Cl))
 :qid |unknown.0:0|
 :skolemid |1679|
 :pattern ( (Tclass.GenericBasics.Cl GenericBasics.Cl$Q@@5))
)))
(assert (forall ((GenericBasics.Cl$Q@@6 T@U) ) (!  (and (= (Tag (Tclass.GenericBasics.Cl? GenericBasics.Cl$Q@@6)) Tagclass.GenericBasics.Cl?) (= (TagFamily (Tclass.GenericBasics.Cl? GenericBasics.Cl$Q@@6)) tytagFamily$Cl))
 :qid |unknown.0:0|
 :skolemid |1758|
 :pattern ( (Tclass.GenericBasics.Cl? GenericBasics.Cl$Q@@6))
)))
(assert (forall ((GenericBasics.Tr$A@@3 T@U) (GenericBasics.Tr$B@@3 T@U) (|c#0@@2| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@2| (Tclass.GenericBasics.Tr GenericBasics.Tr$A@@3 GenericBasics.Tr$B@@3) $h@@3) ($IsAlloc refType |c#0@@2| (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@3 GenericBasics.Tr$B@@3) $h@@3))
 :qid |unknown.0:0|
 :skolemid |1757|
 :pattern ( ($IsAlloc refType |c#0@@2| (Tclass.GenericBasics.Tr GenericBasics.Tr$A@@3 GenericBasics.Tr$B@@3) $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@2| (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@3 GenericBasics.Tr$B@@3) $h@@3))
)))
(assert (forall ((GenericBasics.Cl$Q@@7 T@U) ($o@@4 T@U) ) (! (= ($Is refType $o@@4 (Tclass.GenericBasics.Cl? GenericBasics.Cl$Q@@7))  (or (= $o@@4 null) (= (dtype $o@@4) (Tclass.GenericBasics.Cl? GenericBasics.Cl$Q@@7))))
 :qid |unknown.0:0|
 :skolemid |1761|
 :pattern ( ($Is refType $o@@4 (Tclass.GenericBasics.Cl? GenericBasics.Cl$Q@@7)))
)))
(assert (forall ((GenericBasics.Cl$Q@@8 T@U) (bx@@1 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsAllocBox bx@@1 (Tclass.GenericBasics.Cl? GenericBasics.Cl$Q@@8) $h@@4) ($IsGoodHeap $h@@4)) ($IsAllocBox bx@@1 (Tclass.GenericBasics.Tr? GenericBasics.Cl$Q@@8 TInt) $h@@4))
 :qid |unknown.0:0|
 :skolemid |1905|
 :pattern ( ($IsAllocBox bx@@1 (Tclass.GenericBasics.Cl? GenericBasics.Cl$Q@@8) $h@@4))
)))
(assert (forall ((GenericBasics.Cl$Q@@9 T@U) ($o@@5 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@5 (Tclass.GenericBasics.Cl? GenericBasics.Cl$Q@@9) $heap) ($IsAlloc refType $o@@5 (Tclass.GenericBasics.Tr? GenericBasics.Cl$Q@@9 TInt) $heap))
 :qid |unknown.0:0|
 :skolemid |1907|
 :pattern ( ($IsAlloc refType $o@@5 (Tclass.GenericBasics.Cl? GenericBasics.Cl$Q@@9) $heap))
)))
(assert (forall ((GenericBasics.Tr$A@@4 T@U) (GenericBasics.Tr$B@@4 T@U) ($o@@6 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@6 (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@4 GenericBasics.Tr$B@@4) $h@@5)  (or (= $o@@6 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1704|
 :pattern ( ($IsAlloc refType $o@@6 (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@4 GenericBasics.Tr$B@@4) $h@@5))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |1249|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |1239|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TInt) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |1159|
 :pattern ( ($IsBox bx@@2 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@2) ($Is T@@3 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1170|
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@2))
)))
(assert (forall ((GenericBasics.Tr$A@@5 T@U) (GenericBasics.Tr$B@@5 T@U) ) (! (= (Tclass.GenericBasics.Tr_0 (Tclass.GenericBasics.Tr GenericBasics.Tr$A@@5 GenericBasics.Tr$B@@5)) GenericBasics.Tr$A@@5)
 :qid |unknown.0:0|
 :skolemid |1690|
 :pattern ( (Tclass.GenericBasics.Tr GenericBasics.Tr$A@@5 GenericBasics.Tr$B@@5))
)))
(assert (forall ((GenericBasics.Tr$A@@6 T@U) (GenericBasics.Tr$B@@6 T@U) ) (! (= (Tclass.GenericBasics.Tr_1 (Tclass.GenericBasics.Tr GenericBasics.Tr$A@@6 GenericBasics.Tr$B@@6)) GenericBasics.Tr$B@@6)
 :qid |unknown.0:0|
 :skolemid |1691|
 :pattern ( (Tclass.GenericBasics.Tr GenericBasics.Tr$A@@6 GenericBasics.Tr$B@@6))
)))
(assert (forall ((GenericBasics.Tr$A@@7 T@U) (GenericBasics.Tr$B@@7 T@U) ) (! (= (Tclass.GenericBasics.Tr?_0 (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@7 GenericBasics.Tr$B@@7)) GenericBasics.Tr$A@@7)
 :qid |unknown.0:0|
 :skolemid |1698|
 :pattern ( (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@7 GenericBasics.Tr$B@@7))
)))
(assert (forall ((GenericBasics.Tr$A@@8 T@U) (GenericBasics.Tr$B@@8 T@U) ) (! (= (Tclass.GenericBasics.Tr?_1 (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@8 GenericBasics.Tr$B@@8)) GenericBasics.Tr$B@@8)
 :qid |unknown.0:0|
 :skolemid |1699|
 :pattern ( (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@8 GenericBasics.Tr$B@@8))
)))
(assert (forall ((GenericBasics.Tr$A@@9 T@U) (GenericBasics.Tr$B@@9 T@U) ($o@@7 T@U) ) (! (= ($Is refType $o@@7 (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@9 GenericBasics.Tr$B@@9))  (or (= $o@@7 null) (implements$GenericBasics.Tr (dtype $o@@7) GenericBasics.Tr$A@@9 GenericBasics.Tr$B@@9)))
 :qid |unknown.0:0|
 :skolemid |1703|
 :pattern ( ($Is refType $o@@7 (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@9 GenericBasics.Tr$B@@9)))
)))
(assert (forall ((GenericBasics.Cl$Q@@10 T@U) ) (! (= (Tclass.GenericBasics.Cl_0 (Tclass.GenericBasics.Cl GenericBasics.Cl$Q@@10)) GenericBasics.Cl$Q@@10)
 :qid |unknown.0:0|
 :skolemid |1680|
 :pattern ( (Tclass.GenericBasics.Cl GenericBasics.Cl$Q@@10))
)))
(assert (forall ((GenericBasics.Cl$Q@@11 T@U) ) (! (= (Tclass.GenericBasics.Cl?_0 (Tclass.GenericBasics.Cl? GenericBasics.Cl$Q@@11)) GenericBasics.Cl$Q@@11)
 :qid |unknown.0:0|
 :skolemid |1759|
 :pattern ( (Tclass.GenericBasics.Cl? GenericBasics.Cl$Q@@11))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1157|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((GenericBasics.Tr$A@@10 T@U) (GenericBasics.Tr$B@@10 T@U) ($h@@6 T@U) ($o@@8 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@8 null)) (not true)) ($Is refType $o@@8 (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@10 GenericBasics.Tr$B@@10)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@8) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@8) GenericBasics.Tr.xyz) GenericBasics.Tr$B@@10 $h@@6))
 :qid |unknown.0:0|
 :skolemid |1706|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@8) GenericBasics.Tr.xyz) (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@10 GenericBasics.Tr$B@@10))
)))
(assert (forall ((GenericBasics.Tr$A@@11 T@U) (GenericBasics.Tr$B@@11 T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass.GenericBasics.Tr GenericBasics.Tr$A@@11 GenericBasics.Tr$B@@11)) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) (Tclass.GenericBasics.Tr GenericBasics.Tr$A@@11 GenericBasics.Tr$B@@11))))
 :qid |unknown.0:0|
 :skolemid |1692|
 :pattern ( ($IsBox bx@@3 (Tclass.GenericBasics.Tr GenericBasics.Tr$A@@11 GenericBasics.Tr$B@@11)))
)))
(assert (forall ((GenericBasics.Tr$A@@12 T@U) (GenericBasics.Tr$B@@12 T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@12 GenericBasics.Tr$B@@12)) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@12 GenericBasics.Tr$B@@12))))
 :qid |unknown.0:0|
 :skolemid |1700|
 :pattern ( ($IsBox bx@@4 (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@12 GenericBasics.Tr$B@@12)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@9 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@9 $f))  (=> (and (or (not (= $o@@9 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@9) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |8388|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@9 $f))
)))
(assert (forall ((GenericBasics.Tr$A@@13 T@U) (GenericBasics.Tr$B@@13 T@U) ) (!  (and (= (Tag (Tclass.GenericBasics.Tr GenericBasics.Tr$A@@13 GenericBasics.Tr$B@@13)) Tagclass.GenericBasics.Tr) (= (TagFamily (Tclass.GenericBasics.Tr GenericBasics.Tr$A@@13 GenericBasics.Tr$B@@13)) tytagFamily$Tr))
 :qid |unknown.0:0|
 :skolemid |1689|
 :pattern ( (Tclass.GenericBasics.Tr GenericBasics.Tr$A@@13 GenericBasics.Tr$B@@13))
)))
(assert (forall ((GenericBasics.Tr$A@@14 T@U) (GenericBasics.Tr$B@@14 T@U) ) (!  (and (= (Tag (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@14 GenericBasics.Tr$B@@14)) Tagclass.GenericBasics.Tr?) (= (TagFamily (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@14 GenericBasics.Tr$B@@14)) tytagFamily$Tr))
 :qid |unknown.0:0|
 :skolemid |1697|
 :pattern ( (Tclass.GenericBasics.Tr? GenericBasics.Tr$A@@14 GenericBasics.Tr$B@@14))
)))
(assert (forall ((GenericBasics.Cl$Q@@12 T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass.GenericBasics.Cl GenericBasics.Cl$Q@@12)) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) (Tclass.GenericBasics.Cl GenericBasics.Cl$Q@@12))))
 :qid |unknown.0:0|
 :skolemid |1681|
 :pattern ( ($IsBox bx@@5 (Tclass.GenericBasics.Cl GenericBasics.Cl$Q@@12)))
)))
(assert (forall ((GenericBasics.Cl$Q@@13 T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass.GenericBasics.Cl? GenericBasics.Cl$Q@@13)) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) (Tclass.GenericBasics.Cl? GenericBasics.Cl$Q@@13))))
 :qid |unknown.0:0|
 :skolemid |1760|
 :pattern ( ($IsBox bx@@6 (Tclass.GenericBasics.Cl? GenericBasics.Cl$Q@@13)))
)))
(assert (forall ((h@@3 T@U) (r T@U) (f T@U) (x@@6 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@6))) ($HeapSucc h@@3 (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@6))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |1248|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@6)))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |1150|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@8)) (Lit BoxType ($Box T@@5 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1148|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@8)))
)))
(assert (forall ((h@@4 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |1193|
 :pattern ( ($IsAlloc intType v@@2 TInt h@@4))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is intType v@@3 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |1172|
 :pattern ( ($Is intType v@@3 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun this.abc@0 () T@U)
(declare-fun this.abc@1 () T@U)
(declare-fun this.xyz@0 () T@U)
(declare-fun this.xyz@1 () T@U)
(declare-fun this () T@U)
(declare-fun GenericBasics.Cl$Q@@14 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |$rhs#0@0| () Int)
(declare-fun $Heap@1 () T@U)
(set-info :boogie-vc-id Impl$$GenericBasics.Cl.__ctor)
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
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and (= this.abc@0 ($Box intType (int_2_U (LitInt 100)))) (= this.abc@1 ($Box intType (int_2_U (LitInt 101))))) (and (= this.xyz@0 ($Box intType (int_2_U (LitInt 20)))) (= this.xyz@1 ($Box intType (int_2_U (LitInt 21)))))) (=> (and (and (and (or (not (= this null)) (not true)) ($Is refType this (Tclass.GenericBasics.Cl? GenericBasics.Cl$Q@@14))) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) alloc)))) (= (U_2_int ($Unbox intType (GenericBasics.Tr.abc GenericBasics.Cl$Q@@14 TInt this))) (U_2_int ($Unbox intType this.abc@1))))) (and (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) GenericBasics.Tr.xyz))) (U_2_int ($Unbox intType this.xyz@1))) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap this (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this GenericBasics.Tr.xyz))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this GenericBasics.Tr.xyz)) (=> (and (and (= |$rhs#0@0| (LitInt 22)) (= $Heap@1 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@0 this (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this) GenericBasics.Tr.xyz ($Box intType (int_2_U |$rhs#0@0|)))))) (and ($IsGoodHeap $Heap@1) (= (ControlFlow 0 2) (- 0 1)))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this GenericBasics.Tr.xyz))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 4) 2))) anon0_correct)))
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
