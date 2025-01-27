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
(declare-fun |##_System._tuple#0._#Make0| () T@U)
(declare-fun Tagclass._System.Tuple0 () T@U)
(declare-fun Tagclass._module.Foo () T@U)
(declare-fun |##_module.Result.Success| () T@U)
(declare-fun |##_module.C.C1| () T@U)
(declare-fun Tagclass._module.C () T@U)
(declare-fun |##_module.C.C2| () T@U)
(declare-fun Tagclass._module.Foo? () T@U)
(declare-fun |tytagFamily$_tuple#0| () T@U)
(declare-fun tytagFamily$Foo () T@U)
(declare-fun tytagFamily$C () T@U)
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
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_System._tuple#0._#Make0| () T@U)
(declare-fun |#_module.C.C1| () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Foo () T@U)
(declare-fun Tclass._module.Foo? () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple0 () T@U)
(declare-fun Tclass._module.C () T@U)
(declare-fun null () T@U)
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
(declare-fun _module.Result.Success_q (T@U) Bool)
(declare-fun _module.C.C1_q (T@U) Bool)
(declare-fun _module.C.C2_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.Result.Success| (T@U) T@U)
(declare-fun |#_module.C.C2| (Int) T@U)
(declare-fun _module.Result.value (T@U) T@U)
(declare-fun _module.C.x (T@U) Int)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$_module.Foo (T@U) Bool)
(declare-fun dtype (T@U) T@U)
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
(assert (distinct TInt TagInt alloc |##_System._tuple#0._#Make0| Tagclass._System.Tuple0 Tagclass._module.Foo |##_module.Result.Success| |##_module.C.C1| Tagclass._module.C |##_module.C.C2| Tagclass._module.Foo? |tytagFamily$_tuple#0| tytagFamily$Foo tytagFamily$C)
)
(assert (= (Tag TInt) TagInt))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#_System._tuple#0._#Make0|) |##_System._tuple#0._#Make0|))
(assert (= (DatatypeCtorId |#_module.C.C1|) |##_module.C.C1|))
(assert (= (Ctor refType) 3))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Foo $h) ($IsAlloc refType |c#0| Tclass._module.Foo? $h))
 :qid |unknown.0:0|
 :skolemid |568|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Foo $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Foo? $h))
)))
(assert (= (Ctor DatatypeTypeType) 4))
(assert ($Is DatatypeTypeType |#_System._tuple#0._#Make0| Tclass._System.Tuple0))
(assert ($Is DatatypeTypeType |#_module.C.C1| Tclass._module.C))
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
(assert (forall (($o T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o Tclass._module.Foo? $h@@0)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |545|
 :pattern ( ($IsAlloc refType $o Tclass._module.Foo? $h@@0))
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
(assert (forall ((d T@U) ) (! (= (_module.Result.Success_q d) (= (DatatypeCtorId d) |##_module.Result.Success|))
 :qid |unknown.0:0|
 :skolemid |497|
 :pattern ( (_module.Result.Success_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.C.C1_q d@@0) (= (DatatypeCtorId d@@0) |##_module.C.C1|))
 :qid |unknown.0:0|
 :skolemid |526|
 :pattern ( (_module.C.C1_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.C.C2_q d@@1) (= (DatatypeCtorId d@@1) |##_module.C.C2|))
 :qid |unknown.0:0|
 :skolemid |530|
 :pattern ( (_module.C.C2_q d@@1))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.C.C1_q d@@2) (= d@@2 |#_module.C.C1|))
 :qid |unknown.0:0|
 :skolemid |527|
 :pattern ( (_module.C.C1_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_module.Result.Success_q d@@3) (exists ((|a#1#0#0| T@U) ) (! (= d@@3 (|#_module.Result.Success| |a#1#0#0|))
 :qid |gitissue283dfy.4:13|
 :skolemid |498|
)))
 :qid |unknown.0:0|
 :skolemid |499|
 :pattern ( (_module.Result.Success_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.C.C2_q d@@4) (exists ((|a#18#0#0| Int) ) (! (= d@@4 (|#_module.C.C2| |a#18#0#0|))
 :qid |gitissue283dfy.7:22|
 :skolemid |531|
)))
 :qid |unknown.0:0|
 :skolemid |532|
 :pattern ( (_module.C.C2_q d@@4))
)))
(assert (forall ((h@@0 T@U) (k@@0 T@U) (v T@U) (t T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@0 k@@0) (=> ($IsAlloc T@@1 v t h@@0) ($IsAlloc T@@1 v t k@@0)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@0 k@@0) ($IsAlloc T@@1 v t h@@0))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._module.Foo)  (and ($Is refType |c#0@@0| Tclass._module.Foo?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |567|
 :pattern ( ($Is refType |c#0@@0| Tclass._module.Foo))
 :pattern ( ($Is refType |c#0@@0| Tclass._module.Foo?))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> ($Is DatatypeTypeType d@@5 Tclass._module.C) (or (_module.C.C1_q d@@5) (_module.C.C2_q d@@5)))
 :qid |unknown.0:0|
 :skolemid |539|
 :pattern ( (_module.C.C2_q d@@5) ($Is DatatypeTypeType d@@5 Tclass._module.C))
 :pattern ( (_module.C.C1_q d@@5) ($Is DatatypeTypeType d@@5 Tclass._module.C))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s))
)))
(assert (forall ((|a#0#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Result.Success| |a#0#0#0|)) |##_module.Result.Success|)
 :qid |gitissue283dfy.4:13|
 :skolemid |496|
 :pattern ( (|#_module.Result.Success| |a#0#0#0|))
)))
(assert (forall ((|a#4#0#0| T@U) ) (! (= (_module.Result.value (|#_module.Result.Success| |a#4#0#0|)) |a#4#0#0|)
 :qid |gitissue283dfy.4:13|
 :skolemid |507|
 :pattern ( (|#_module.Result.Success| |a#4#0#0|))
)))
(assert (forall ((|a#17#0#0| Int) ) (! (= (DatatypeCtorId (|#_module.C.C2| |a#17#0#0|)) |##_module.C.C2|)
 :qid |gitissue283dfy.7:22|
 :skolemid |529|
 :pattern ( (|#_module.C.C2| |a#17#0#0|))
)))
(assert (forall ((|a#21#0#0| Int) ) (! (= (_module.C.x (|#_module.C.C2| |a#21#0#0|)) |a#21#0#0|)
 :qid |gitissue283dfy.7:22|
 :skolemid |536|
 :pattern ( (|#_module.C.C2| |a#21#0#0|))
)))
(assert (forall ((x@@4 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@4))
)))
(assert (forall ((|a#19#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.C.C2| |a#19#0#0|) Tclass._module.C) ($Is intType (int_2_U |a#19#0#0|) TInt))
 :qid |gitissue283dfy.7:22|
 :skolemid |533|
 :pattern ( ($Is DatatypeTypeType (|#_module.C.C2| |a#19#0#0|) Tclass._module.C))
)))
(assert (forall ((|a#5#0#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_module.Result.Success| |a#5#0#0|)))
 :qid |gitissue283dfy.4:13|
 :skolemid |508|
 :pattern ( (|#_module.Result.Success| |a#5#0#0|))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@0 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@0 $f))  (=> (and (or (not (= $o@@0 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@0) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |577|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@0 $f))
)))
(assert (forall ((d@@6 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.C.C2_q d@@6) ($IsAlloc DatatypeTypeType d@@6 Tclass._module.C $h@@1))) ($IsAlloc intType (int_2_U (_module.C.x d@@6)) TInt $h@@1))
 :qid |unknown.0:0|
 :skolemid |534|
 :pattern ( ($IsAlloc intType (int_2_U (_module.C.x d@@6)) TInt $h@@1))
)))
(assert (forall ((d@@7 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@7)) (DtRank d@@7))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@7)))
)))
(assert (forall ((d@@8 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) ($Is DatatypeTypeType d@@8 Tclass._System.Tuple0)) ($IsAlloc DatatypeTypeType d@@8 Tclass._System.Tuple0 $h@@2))
 :qid |unknown.0:0|
 :skolemid |474|
 :pattern ( ($IsAlloc DatatypeTypeType d@@8 Tclass._System.Tuple0 $h@@2))
)))
(assert (forall ((d@@9 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) ($Is DatatypeTypeType d@@9 Tclass._module.C)) ($IsAlloc DatatypeTypeType d@@9 Tclass._module.C $h@@3))
 :qid |unknown.0:0|
 :skolemid |537|
 :pattern ( ($IsAlloc DatatypeTypeType d@@9 Tclass._module.C $h@@3))
)))
(assert (= (Tag Tclass._System.Tuple0) Tagclass._System.Tuple0))
(assert (= (TagFamily Tclass._System.Tuple0) |tytagFamily$_tuple#0|))
(assert (= (Tag Tclass._module.Foo) Tagclass._module.Foo))
(assert (= (TagFamily Tclass._module.Foo) tytagFamily$Foo))
(assert (= (Tag Tclass._module.C) Tagclass._module.C))
(assert (= (TagFamily Tclass._module.C) tytagFamily$C))
(assert (= (Tag Tclass._module.Foo?) Tagclass._module.Foo?))
(assert (= (TagFamily Tclass._module.Foo?) tytagFamily$Foo))
(assert (= |#_System._tuple#0._#Make0| (Lit DatatypeTypeType |#_System._tuple#0._#Make0|)))
(assert (= |#_module.C.C1| (Lit DatatypeTypeType |#_module.C.C1|)))
(assert (forall (($o@@1 T@U) ) (! (= ($Is refType $o@@1 Tclass._module.Foo?)  (or (= $o@@1 null) (implements$_module.Foo (dtype $o@@1))))
 :qid |unknown.0:0|
 :skolemid |544|
 :pattern ( ($Is refType $o@@1 Tclass._module.Foo?))
)))
(assert (forall ((|a#3#0#0| T@U) ) (! (= (|#_module.Result.Success| (Lit BoxType |a#3#0#0|)) (Lit DatatypeTypeType (|#_module.Result.Success| |a#3#0#0|)))
 :qid |gitissue283dfy.4:13|
 :skolemid |506|
 :pattern ( (|#_module.Result.Success| (Lit BoxType |a#3#0#0|)))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@5)) (Lit BoxType ($Box T@@3 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@5)))
)))
(assert (forall ((s@@0 T@U) ) (!  (=> (= (|Seq#Length| s@@0) 0) (= s@@0 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((h@@1 T@U) (v@@0 T@U) ) (! ($IsAlloc intType v@@0 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@0 TInt h@@1))
)))
(assert (forall ((v@@1 T@U) ) (! ($Is intType v@@1 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@1 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |t#0| () T@U)
(declare-fun |r##0@0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |r##1@0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |r##2@0| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |r##3@0| () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |r##4@0| () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun |r##5@0| () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.m)
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
 (=> (= (ControlFlow 0 0) 9) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 2) (- 0 8)) (or (not (= |t#0| null)) (not true))) (=> (or (not (= |t#0| null)) (not true)) (=> (= |r##0@0| (Lit DatatypeTypeType (|#_module.Result.Success| ($Box DatatypeTypeType (Lit DatatypeTypeType |#_System._tuple#0._#Make0|))))) (=> (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (=> (and (and (=> (_module.Result.Success_q |r##0@0|) (U_2_bool (Lit boolType (bool_2_U true)))) (=> (not (_module.Result.Success_q |r##0@0|)) (U_2_bool (Lit boolType (bool_2_U true))))) (and (forall (($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@2) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2)))
 :qid |gitissue283dfy.11:10|
 :skolemid |547|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@2))
)) ($HeapSucc $Heap $Heap@0))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (or (not (= |t#0| null)) (not true))) (=> (or (not (= |t#0| null)) (not true)) (=> (= |r##1@0| (Lit DatatypeTypeType (|#_module.Result.Success| ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.C.C1|))))) (=> (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (=> (_module.Result.Success_q |r##1@0|) (=> (_module.C.C1_q ($Unbox DatatypeTypeType (_module.Result.value |r##1@0|))) (U_2_bool (Lit boolType (bool_2_U true)))))) (and (and (=> (_module.Result.Success_q |r##1@0|) (=> (not (_module.C.C1_q ($Unbox DatatypeTypeType (_module.Result.value |r##1@0|)))) (U_2_bool (Lit boolType (bool_2_U true))))) (=> (not (_module.Result.Success_q |r##1@0|)) (U_2_bool (Lit boolType (bool_2_U true))))) (and (forall (($o@@3 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@3) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@3) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@3)))
 :qid |gitissue283dfy.26:10|
 :skolemid |550|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@3))
)) ($HeapSucc $Heap@0 $Heap@1)))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (or (not (= |t#0| null)) (not true))) (=> (or (not (= |t#0| null)) (not true)) (=> (= |r##2@0| (Lit DatatypeTypeType (|#_module.Result.Success| ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.C.C1|))))) (=> (and (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (=> (_module.Result.Success_q |r##2@0|) (=> (_module.C.C1_q ($Unbox DatatypeTypeType (_module.Result.value |r##2@0|))) (U_2_bool (Lit boolType (bool_2_U true)))))) (and (and (=> (_module.Result.Success_q |r##2@0|) (=> (not (_module.C.C1_q ($Unbox DatatypeTypeType (_module.Result.value |r##2@0|)))) (U_2_bool (Lit boolType (bool_2_U true))))) (=> (not (_module.Result.Success_q |r##2@0|)) (U_2_bool (Lit boolType (bool_2_U true))))) (and (forall (($o@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@4) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@4) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@4)))
 :qid |gitissue283dfy.43:10|
 :skolemid |553|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@4))
)) ($HeapSucc $Heap@1 $Heap@2)))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (or (not (= |t#0| null)) (not true))) (=> (or (not (= |t#0| null)) (not true)) (=> (= |r##3@0| (Lit DatatypeTypeType (|#_module.Result.Success| ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.C.C1|))))) (=> (and (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (=> (_module.Result.Success_q |r##3@0|) (=> (_module.C.C1_q ($Unbox DatatypeTypeType (_module.Result.value |r##3@0|))) (U_2_bool (Lit boolType (bool_2_U true)))))) (and (and (=> (_module.Result.Success_q |r##3@0|) (=> (not (_module.C.C1_q ($Unbox DatatypeTypeType (_module.Result.value |r##3@0|)))) (U_2_bool (Lit boolType (bool_2_U true))))) (=> (not (_module.Result.Success_q |r##3@0|)) (U_2_bool (Lit boolType (bool_2_U true))))) (and (forall (($o@@5 T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@5) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@5) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@5)))
 :qid |gitissue283dfy.60:10|
 :skolemid |556|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@5))
)) ($HeapSucc $Heap@2 $Heap@3)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (not (= |t#0| null)) (not true))) (=> (or (not (= |t#0| null)) (not true)) (=> (= |r##4@0| (Lit DatatypeTypeType (|#_module.Result.Success| ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.C.C1|))))) (=> (and (and (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (=> (_module.Result.Success_q |r##4@0|) (=> (_module.C.C1_q ($Unbox DatatypeTypeType (_module.Result.value |r##4@0|))) (U_2_bool (Lit boolType (bool_2_U true)))))) (and (and (=> (_module.Result.Success_q |r##4@0|) (=> (not (_module.C.C1_q ($Unbox DatatypeTypeType (_module.Result.value |r##4@0|)))) (U_2_bool (Lit boolType (bool_2_U true))))) (=> (not (_module.Result.Success_q |r##4@0|)) (U_2_bool (Lit boolType (bool_2_U true))))) (and (forall (($o@@6 T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@6) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@6) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@6)))
 :qid |gitissue283dfy.77:10|
 :skolemid |559|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@6))
)) ($HeapSucc $Heap@3 $Heap@4)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= |t#0| null)) (not true))) (=> (or (not (= |t#0| null)) (not true)) (=> (= |r##5@0| (Lit DatatypeTypeType (|#_module.Result.Success| ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.C.C1|))))) (=> (and (and (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)) (=> (_module.Result.Success_q |r##5@0|) (U_2_bool (Lit boolType (bool_2_U true))))) (and (and (=> (not (_module.Result.Success_q |r##5@0|)) (U_2_bool (Lit boolType (bool_2_U true)))) (forall (($o@@7 T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@7) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@7) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@7)))
 :qid |gitissue283dfy.94:10|
 :skolemid |562|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@7))
))) (and ($HeapSucc $Heap@4 $Heap@5) (= (ControlFlow 0 2) (- 0 1))))) (or (not (= |t#0| null)) (not true))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is refType |t#0| Tclass._module.Foo) ($IsAlloc refType |t#0| Tclass._module.Foo $Heap)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 9) 2))) anon0_correct))))
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
