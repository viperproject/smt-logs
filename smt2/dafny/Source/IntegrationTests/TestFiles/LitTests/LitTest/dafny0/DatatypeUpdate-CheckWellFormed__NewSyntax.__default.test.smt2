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
(declare-fun TInt () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagInt () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass.NewSyntax.MyDataType () T@U)
(declare-fun |##NewSyntax.MyDataType.MyConstructor| () T@U)
(declare-fun |##NewSyntax.MyDataType.MyOtherConstructor| () T@U)
(declare-fun |##NewSyntax.MyDataType.MyNumericConstructor| () T@U)
(declare-fun tytagFamily$MyDataType () T@U)
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
(declare-fun |NewSyntax.MyDataType#Equal| (T@U T@U) Bool)
(declare-fun NewSyntax.MyDataType.MyOtherConstructor_q (T@U) Bool)
(declare-fun NewSyntax.MyDataType.otherbool (T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun NewSyntax.MyDataType.MyNumericConstructor_q (T@U) Bool)
(declare-fun NewSyntax.MyDataType._42 (T@U) Int)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |#NewSyntax.MyDataType.MyConstructor| (Int Bool) T@U)
(declare-fun Tclass.NewSyntax.MyDataType () T@U)
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
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun NewSyntax.MyDataType.MyConstructor_q (T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#NewSyntax.MyDataType.MyOtherConstructor| (Bool) T@U)
(declare-fun |#NewSyntax.MyDataType.MyNumericConstructor| (Int) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun NewSyntax.MyDataType.mybool (T@U) Bool)
(declare-fun NewSyntax.MyDataType.myint (T@U) Int)
(declare-fun |$IsA#NewSyntax.MyDataType| (T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
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
(assert (distinct TBool TInt TagBool TagInt alloc Tagclass.NewSyntax.MyDataType |##NewSyntax.MyDataType.MyConstructor| |##NewSyntax.MyDataType.MyOtherConstructor| |##NewSyntax.MyDataType.MyNumericConstructor| tytagFamily$MyDataType)
)
(assert (forall ((a T@U) (b T@U) ) (!  (=> (and (NewSyntax.MyDataType.MyOtherConstructor_q a) (NewSyntax.MyDataType.MyOtherConstructor_q b)) (= (|NewSyntax.MyDataType#Equal| a b) (= (NewSyntax.MyDataType.otherbool a) (NewSyntax.MyDataType.otherbool b))))
 :qid |unknown.0:0|
 :skolemid |535|
 :pattern ( (|NewSyntax.MyDataType#Equal| a b) (NewSyntax.MyDataType.MyOtherConstructor_q a))
 :pattern ( (|NewSyntax.MyDataType#Equal| a b) (NewSyntax.MyDataType.MyOtherConstructor_q b))
)))
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (and (NewSyntax.MyDataType.MyNumericConstructor_q a@@0) (NewSyntax.MyDataType.MyNumericConstructor_q b@@0)) (= (|NewSyntax.MyDataType#Equal| a@@0 b@@0) (= (NewSyntax.MyDataType._42 a@@0) (NewSyntax.MyDataType._42 b@@0))))
 :qid |unknown.0:0|
 :skolemid |536|
 :pattern ( (|NewSyntax.MyDataType#Equal| a@@0 b@@0) (NewSyntax.MyDataType.MyNumericConstructor_q a@@0))
 :pattern ( (|NewSyntax.MyDataType#Equal| a@@0 b@@0) (NewSyntax.MyDataType.MyNumericConstructor_q b@@0))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#2#0#0| Int) (|a#2#1#0| Bool) ) (! (= ($Is DatatypeTypeType (|#NewSyntax.MyDataType.MyConstructor| |a#2#0#0| |a#2#1#0|) Tclass.NewSyntax.MyDataType)  (and ($Is intType (int_2_U |a#2#0#0|) TInt) ($Is boolType (bool_2_U |a#2#1#0|) TBool)))
 :qid |DatatypeUpdatedfy.5:39|
 :skolemid |509|
 :pattern ( ($Is DatatypeTypeType (|#NewSyntax.MyDataType.MyConstructor| |a#2#0#0| |a#2#1#0|) Tclass.NewSyntax.MyDataType))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|NewSyntax.MyDataType#Equal| a@@1 b@@1) (= a@@1 b@@1))
 :qid |unknown.0:0|
 :skolemid |537|
 :pattern ( (|NewSyntax.MyDataType#Equal| a@@1 b@@1))
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
(assert (forall ((d T@U) ) (! (= (NewSyntax.MyDataType.MyConstructor_q d) (= (DatatypeCtorId d) |##NewSyntax.MyDataType.MyConstructor|))
 :qid |unknown.0:0|
 :skolemid |506|
 :pattern ( (NewSyntax.MyDataType.MyConstructor_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (NewSyntax.MyDataType.MyOtherConstructor_q d@@0) (= (DatatypeCtorId d@@0) |##NewSyntax.MyDataType.MyOtherConstructor|))
 :qid |unknown.0:0|
 :skolemid |516|
 :pattern ( (NewSyntax.MyDataType.MyOtherConstructor_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (NewSyntax.MyDataType.MyNumericConstructor_q d@@1) (= (DatatypeCtorId d@@1) |##NewSyntax.MyDataType.MyNumericConstructor|))
 :qid |unknown.0:0|
 :skolemid |524|
 :pattern ( (NewSyntax.MyDataType.MyNumericConstructor_q d@@1))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (NewSyntax.MyDataType.MyConstructor_q d@@2) (exists ((|a#1#0#0| Int) (|a#1#1#0| Bool) ) (! (= d@@2 (|#NewSyntax.MyDataType.MyConstructor| |a#1#0#0| |a#1#1#0|))
 :qid |DatatypeUpdatedfy.5:39|
 :skolemid |507|
)))
 :qid |unknown.0:0|
 :skolemid |508|
 :pattern ( (NewSyntax.MyDataType.MyConstructor_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (NewSyntax.MyDataType.MyOtherConstructor_q d@@3) (exists ((|a#7#0#0| Bool) ) (! (= d@@3 (|#NewSyntax.MyDataType.MyOtherConstructor| |a#7#0#0|))
 :qid |DatatypeUpdatedfy.6:44|
 :skolemid |517|
)))
 :qid |unknown.0:0|
 :skolemid |518|
 :pattern ( (NewSyntax.MyDataType.MyOtherConstructor_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (NewSyntax.MyDataType.MyNumericConstructor_q d@@4) (exists ((|a#12#0#0| Int) ) (! (= d@@4 (|#NewSyntax.MyDataType.MyNumericConstructor| |a#12#0#0|))
 :qid |DatatypeUpdatedfy.7:46|
 :skolemid |525|
)))
 :qid |unknown.0:0|
 :skolemid |526|
 :pattern ( (NewSyntax.MyDataType.MyNumericConstructor_q d@@4))
)))
(assert (forall ((h@@0 T@U) (k@@0 T@U) (v T@U) (t T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@0 k@@0) (=> ($IsAlloc T@@1 v t h@@0) ($IsAlloc T@@1 v t k@@0)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@0 k@@0) ($IsAlloc T@@1 v t h@@0))
)))
(assert (forall ((|a#5#0#0| Int) (|a#5#1#0| Bool) ) (! (= (NewSyntax.MyDataType.mybool (|#NewSyntax.MyDataType.MyConstructor| |a#5#0#0| |a#5#1#0|)) |a#5#1#0|)
 :qid |DatatypeUpdatedfy.5:39|
 :skolemid |514|
 :pattern ( (|#NewSyntax.MyDataType.MyConstructor| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#10#0#0| Bool) ) (! (= (NewSyntax.MyDataType.otherbool (|#NewSyntax.MyDataType.MyOtherConstructor| |a#10#0#0|)) |a#10#0#0|)
 :qid |DatatypeUpdatedfy.6:44|
 :skolemid |522|
 :pattern ( (|#NewSyntax.MyDataType.MyOtherConstructor| |a#10#0#0|))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) (c T@U) ) (!  (=> (or (not (= a@@2 c)) (not true)) (=> (and ($HeapSucc a@@2 b@@2) ($HeapSucc b@@2 c)) ($HeapSucc a@@2 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@2 b@@2) ($HeapSucc b@@2 c))
)))
(assert (forall ((|a#0#0#0| Int) (|a#0#1#0| Bool) ) (! (= (DatatypeCtorId (|#NewSyntax.MyDataType.MyConstructor| |a#0#0#0| |a#0#1#0|)) |##NewSyntax.MyDataType.MyConstructor|)
 :qid |DatatypeUpdatedfy.5:39|
 :skolemid |505|
 :pattern ( (|#NewSyntax.MyDataType.MyConstructor| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|a#4#0#0| Int) (|a#4#1#0| Bool) ) (! (= (NewSyntax.MyDataType.myint (|#NewSyntax.MyDataType.MyConstructor| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |DatatypeUpdatedfy.5:39|
 :skolemid |513|
 :pattern ( (|#NewSyntax.MyDataType.MyConstructor| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0| Bool) ) (! (= (DatatypeCtorId (|#NewSyntax.MyDataType.MyOtherConstructor| |a#6#0#0|)) |##NewSyntax.MyDataType.MyOtherConstructor|)
 :qid |DatatypeUpdatedfy.6:44|
 :skolemid |515|
 :pattern ( (|#NewSyntax.MyDataType.MyOtherConstructor| |a#6#0#0|))
)))
(assert (forall ((|a#11#0#0| Int) ) (! (= (DatatypeCtorId (|#NewSyntax.MyDataType.MyNumericConstructor| |a#11#0#0|)) |##NewSyntax.MyDataType.MyNumericConstructor|)
 :qid |DatatypeUpdatedfy.7:46|
 :skolemid |523|
 :pattern ( (|#NewSyntax.MyDataType.MyNumericConstructor| |a#11#0#0|))
)))
(assert (forall ((|a#15#0#0| Int) ) (! (= (NewSyntax.MyDataType._42 (|#NewSyntax.MyDataType.MyNumericConstructor| |a#15#0#0|)) |a#15#0#0|)
 :qid |DatatypeUpdatedfy.7:46|
 :skolemid |530|
 :pattern ( (|#NewSyntax.MyDataType.MyNumericConstructor| |a#15#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@5))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (|$IsA#NewSyntax.MyDataType| d@@5) (or (or (NewSyntax.MyDataType.MyConstructor_q d@@5) (NewSyntax.MyDataType.MyOtherConstructor_q d@@5)) (NewSyntax.MyDataType.MyNumericConstructor_q d@@5)))
 :qid |unknown.0:0|
 :skolemid |532|
 :pattern ( (|$IsA#NewSyntax.MyDataType| d@@5))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) ) (!  (=> (and (NewSyntax.MyDataType.MyConstructor_q a@@3) (NewSyntax.MyDataType.MyConstructor_q b@@3)) (= (|NewSyntax.MyDataType#Equal| a@@3 b@@3)  (and (= (NewSyntax.MyDataType.myint a@@3) (NewSyntax.MyDataType.myint b@@3)) (= (NewSyntax.MyDataType.mybool a@@3) (NewSyntax.MyDataType.mybool b@@3)))))
 :qid |unknown.0:0|
 :skolemid |534|
 :pattern ( (|NewSyntax.MyDataType#Equal| a@@3 b@@3) (NewSyntax.MyDataType.MyConstructor_q a@@3))
 :pattern ( (|NewSyntax.MyDataType#Equal| a@@3 b@@3) (NewSyntax.MyDataType.MyConstructor_q b@@3))
)))
(assert (forall ((|a#8#0#0| Bool) ) (! (= ($Is DatatypeTypeType (|#NewSyntax.MyDataType.MyOtherConstructor| |a#8#0#0|) Tclass.NewSyntax.MyDataType) ($Is boolType (bool_2_U |a#8#0#0|) TBool))
 :qid |DatatypeUpdatedfy.6:44|
 :skolemid |519|
 :pattern ( ($Is DatatypeTypeType (|#NewSyntax.MyDataType.MyOtherConstructor| |a#8#0#0|) Tclass.NewSyntax.MyDataType))
)))
(assert (forall ((|a#13#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#NewSyntax.MyDataType.MyNumericConstructor| |a#13#0#0|) Tclass.NewSyntax.MyDataType) ($Is intType (int_2_U |a#13#0#0|) TInt))
 :qid |DatatypeUpdatedfy.7:46|
 :skolemid |527|
 :pattern ( ($Is DatatypeTypeType (|#NewSyntax.MyDataType.MyNumericConstructor| |a#13#0#0|) Tclass.NewSyntax.MyDataType))
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
 :skolemid |1150|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@6 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (NewSyntax.MyDataType.MyConstructor_q d@@6) ($IsAlloc DatatypeTypeType d@@6 Tclass.NewSyntax.MyDataType $h))) ($IsAlloc intType (int_2_U (NewSyntax.MyDataType.myint d@@6)) TInt $h))
 :qid |unknown.0:0|
 :skolemid |510|
 :pattern ( ($IsAlloc intType (int_2_U (NewSyntax.MyDataType.myint d@@6)) TInt $h))
)))
(assert (forall ((d@@7 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (NewSyntax.MyDataType.MyConstructor_q d@@7) ($IsAlloc DatatypeTypeType d@@7 Tclass.NewSyntax.MyDataType $h@@0))) ($IsAlloc boolType (bool_2_U (NewSyntax.MyDataType.mybool d@@7)) TBool $h@@0))
 :qid |unknown.0:0|
 :skolemid |511|
 :pattern ( ($IsAlloc boolType (bool_2_U (NewSyntax.MyDataType.mybool d@@7)) TBool $h@@0))
)))
(assert (forall ((d@@8 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (NewSyntax.MyDataType.MyOtherConstructor_q d@@8) ($IsAlloc DatatypeTypeType d@@8 Tclass.NewSyntax.MyDataType $h@@1))) ($IsAlloc boolType (bool_2_U (NewSyntax.MyDataType.otherbool d@@8)) TBool $h@@1))
 :qid |unknown.0:0|
 :skolemid |520|
 :pattern ( ($IsAlloc boolType (bool_2_U (NewSyntax.MyDataType.otherbool d@@8)) TBool $h@@1))
)))
(assert (forall ((d@@9 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (NewSyntax.MyDataType.MyNumericConstructor_q d@@9) ($IsAlloc DatatypeTypeType d@@9 Tclass.NewSyntax.MyDataType $h@@2))) ($IsAlloc intType (int_2_U (NewSyntax.MyDataType._42 d@@9)) TInt $h@@2))
 :qid |unknown.0:0|
 :skolemid |528|
 :pattern ( ($IsAlloc intType (int_2_U (NewSyntax.MyDataType._42 d@@9)) TInt $h@@2))
)))
(assert (forall ((d@@10 T@U) ) (!  (=> ($Is DatatypeTypeType d@@10 Tclass.NewSyntax.MyDataType) (or (or (NewSyntax.MyDataType.MyConstructor_q d@@10) (NewSyntax.MyDataType.MyOtherConstructor_q d@@10)) (NewSyntax.MyDataType.MyNumericConstructor_q d@@10)))
 :qid |unknown.0:0|
 :skolemid |533|
 :pattern ( (NewSyntax.MyDataType.MyNumericConstructor_q d@@10) ($Is DatatypeTypeType d@@10 Tclass.NewSyntax.MyDataType))
 :pattern ( (NewSyntax.MyDataType.MyOtherConstructor_q d@@10) ($Is DatatypeTypeType d@@10 Tclass.NewSyntax.MyDataType))
 :pattern ( (NewSyntax.MyDataType.MyConstructor_q d@@10) ($Is DatatypeTypeType d@@10 Tclass.NewSyntax.MyDataType))
)))
(assert (forall ((d@@11 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) ($Is DatatypeTypeType d@@11 Tclass.NewSyntax.MyDataType)) ($IsAlloc DatatypeTypeType d@@11 Tclass.NewSyntax.MyDataType $h@@3))
 :qid |unknown.0:0|
 :skolemid |531|
 :pattern ( ($IsAlloc DatatypeTypeType d@@11 Tclass.NewSyntax.MyDataType $h@@3))
)))
(assert (= (Tag Tclass.NewSyntax.MyDataType) Tagclass.NewSyntax.MyDataType))
(assert (= (TagFamily Tclass.NewSyntax.MyDataType) tytagFamily$MyDataType))
(assert (forall ((|a#3#0#0| Int) (|a#3#1#0| T@U) ) (! (= (|#NewSyntax.MyDataType.MyConstructor| (LitInt |a#3#0#0|) (U_2_bool (Lit boolType |a#3#1#0|))) (Lit DatatypeTypeType (|#NewSyntax.MyDataType.MyConstructor| |a#3#0#0| (U_2_bool |a#3#1#0|))))
 :qid |DatatypeUpdatedfy.5:39|
 :skolemid |512|
 :pattern ( (|#NewSyntax.MyDataType.MyConstructor| (LitInt |a#3#0#0|) (U_2_bool (Lit boolType |a#3#1#0|))))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#9#0#0| T@U) ) (! (= (|#NewSyntax.MyDataType.MyOtherConstructor| (U_2_bool (Lit boolType |a#9#0#0|))) (Lit DatatypeTypeType (|#NewSyntax.MyDataType.MyOtherConstructor| (U_2_bool |a#9#0#0|))))
 :qid |DatatypeUpdatedfy.6:44|
 :skolemid |521|
 :pattern ( (|#NewSyntax.MyDataType.MyOtherConstructor| (U_2_bool (Lit boolType |a#9#0#0|))))
)))
(assert (forall ((|a#14#0#0| Int) ) (! (= (|#NewSyntax.MyDataType.MyNumericConstructor| (LitInt |a#14#0#0|)) (Lit DatatypeTypeType (|#NewSyntax.MyDataType.MyNumericConstructor| |a#14#0#0|)))
 :qid |DatatypeUpdatedfy.7:46|
 :skolemid |529|
 :pattern ( (|#NewSyntax.MyDataType.MyNumericConstructor| (LitInt |a#14#0#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@7)) (Lit BoxType ($Box T@@3 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@7)))
)))
(assert (forall ((h@@1 T@U) (v@@0 T@U) ) (! ($IsAlloc intType v@@0 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@0 TInt h@@1))
)))
(assert (forall ((h@@2 T@U) (v@@1 T@U) ) (! ($IsAlloc boolType v@@1 TBool h@@2)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@1 TBool h@@2))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is intType v@@2 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@2 TInt))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is boolType v@@3 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@3 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |foo#0| () T@U)
(declare-fun |goo#0| () T@U)
(declare-fun |hoo#0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |abc#0@0| () T@U)
(declare-fun |def#0@0| () T@U)
(declare-fun |ghi#0@0| () T@U)
(declare-fun |jkl#0@0| () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |dt_update_tmp#0#Z#0@0| () T@U)
(declare-fun |let#1#0#0| () Int)
(declare-fun |x#0| () Int)
(declare-fun |dt_update#myint#0#Z#0@0| () Int)
(declare-fun |let#2#0#0| () T@U)
(declare-fun |dt_update_tmp#1#Z#0@0| () T@U)
(declare-fun |let#3#0#0| () Bool)
(declare-fun |dt_update#otherbool#0#Z#0@0| () Bool)
(declare-fun |let#5#0#0| () T@U)
(declare-fun |dt_update_tmp#2#Z#0@0| () T@U)
(declare-fun |let#6#0#0| () Int)
(declare-fun |dt_update#myint#1#Z#0@0| () Int)
(declare-fun |let#4#0#0| () T@U)
(declare-fun |dt_update_tmp#3#Z#0@0| () T@U)
(declare-fun |let#7#0#0| () Bool)
(declare-fun |dt_update#mybool#0#Z#0@0| () Bool)
(declare-fun |abc#0| () T@U)
(declare-fun |def#0| () T@U)
(declare-fun |ghi#0| () T@U)
(declare-fun |jkl#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id CheckWellFormed$$NewSyntax.__default.test)
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
 (=> (= (ControlFlow 0 0) 11) (let ((anon0_correct  (=> (and (and (and (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (NewSyntax.MyDataType.MyConstructor_q |foo#0|)) (and (NewSyntax.MyDataType.MyOtherConstructor_q |goo#0|) (NewSyntax.MyDataType.MyNumericConstructor_q |hoo#0|))) (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0)))
 :qid |DatatypeUpdatedfy.9:10|
 :skolemid |484|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0))
)) ($HeapSucc $Heap $Heap@0)))) (and (and (and ($Is DatatypeTypeType |abc#0@0| Tclass.NewSyntax.MyDataType) ($IsAlloc DatatypeTypeType |abc#0@0| Tclass.NewSyntax.MyDataType $Heap@0)) (and ($Is DatatypeTypeType |def#0@0| Tclass.NewSyntax.MyDataType) ($IsAlloc DatatypeTypeType |def#0@0| Tclass.NewSyntax.MyDataType $Heap@0))) (and (and ($Is DatatypeTypeType |ghi#0@0| Tclass.NewSyntax.MyDataType) ($IsAlloc DatatypeTypeType |ghi#0@0| Tclass.NewSyntax.MyDataType $Heap@0)) (and ($Is DatatypeTypeType |jkl#0@0| Tclass.NewSyntax.MyDataType) ($IsAlloc DatatypeTypeType |jkl#0@0| Tclass.NewSyntax.MyDataType $Heap@0))))) (and (=> (= (ControlFlow 0 2) (- 0 10)) (NewSyntax.MyDataType.MyConstructor_q |foo#0|)) (=> (NewSyntax.MyDataType.MyConstructor_q |foo#0|) (=> (and (= |let#0#0#0| |foo#0|) ($Is DatatypeTypeType |let#0#0#0| Tclass.NewSyntax.MyDataType)) (=> (and (and (= |dt_update_tmp#0#Z#0@0| |let#0#0#0|) (= |let#1#0#0| (+ |x#0| 2))) (and ($Is intType (int_2_U |let#1#0#0|) TInt) (= |dt_update#myint#0#Z#0@0| |let#1#0#0|))) (and (=> (= (ControlFlow 0 2) (- 0 9)) (NewSyntax.MyDataType.MyConstructor_q |dt_update_tmp#0#Z#0@0|)) (=> (NewSyntax.MyDataType.MyConstructor_q |dt_update_tmp#0#Z#0@0|) (=> (|NewSyntax.MyDataType#Equal| |abc#0@0| (let ((|dt_update_tmp#0#0| |foo#0|))
(let ((|dt_update#myint#0#0| (+ |x#0| 2)))
(|#NewSyntax.MyDataType.MyConstructor| |dt_update#myint#0#0| (NewSyntax.MyDataType.mybool |dt_update_tmp#0#0|))))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (NewSyntax.MyDataType.MyOtherConstructor_q |goo#0|)) (=> (NewSyntax.MyDataType.MyOtherConstructor_q |goo#0|) (=> (= |let#2#0#0| |goo#0|) (=> (and ($Is DatatypeTypeType |let#2#0#0| Tclass.NewSyntax.MyDataType) (= |dt_update_tmp#1#Z#0@0| |let#2#0#0|)) (and (=> (= (ControlFlow 0 2) (- 0 7)) (NewSyntax.MyDataType.MyConstructor_q |foo#0|)) (=> (NewSyntax.MyDataType.MyConstructor_q |foo#0|) (=> (and (and (= |let#3#0#0|  (not (NewSyntax.MyDataType.mybool |foo#0|))) ($Is boolType (bool_2_U |let#3#0#0|) TBool)) (and (= |dt_update#otherbool#0#Z#0@0| |let#3#0#0|) (|NewSyntax.MyDataType#Equal| |def#0@0| (let ((|dt_update#otherbool#0#0|  (not (NewSyntax.MyDataType.mybool |foo#0|))))
(|#NewSyntax.MyDataType.MyOtherConstructor| |dt_update#otherbool#0#0|))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (NewSyntax.MyDataType.MyConstructor_q (let ((|dt_update_tmp#2#0| |foo#0|))
(let ((|dt_update#myint#1#0| (LitInt 2)))
(|#NewSyntax.MyDataType.MyConstructor| |dt_update#myint#1#0| (NewSyntax.MyDataType.mybool |dt_update_tmp#2#0|)))))) (=> (NewSyntax.MyDataType.MyConstructor_q (let ((|dt_update_tmp#2#0@@0| |foo#0|))
(let ((|dt_update#myint#1#0@@0| (LitInt 2)))
(|#NewSyntax.MyDataType.MyConstructor| |dt_update#myint#1#0@@0| (NewSyntax.MyDataType.mybool |dt_update_tmp#2#0@@0|))))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (NewSyntax.MyDataType.MyConstructor_q |foo#0|)) (=> (NewSyntax.MyDataType.MyConstructor_q |foo#0|) (=> (and (= |let#5#0#0| |foo#0|) ($Is DatatypeTypeType |let#5#0#0| Tclass.NewSyntax.MyDataType)) (=> (and (and (= |dt_update_tmp#2#Z#0@0| |let#5#0#0|) (= |let#6#0#0| (LitInt 2))) (and ($Is intType (int_2_U |let#6#0#0|) TInt) (= |dt_update#myint#1#Z#0@0| |let#6#0#0|))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (NewSyntax.MyDataType.MyConstructor_q |dt_update_tmp#2#Z#0@0|)) (=> (NewSyntax.MyDataType.MyConstructor_q |dt_update_tmp#2#Z#0@0|) (=> (and (= |let#4#0#0| (|#NewSyntax.MyDataType.MyConstructor| |dt_update#myint#1#Z#0@0| (NewSyntax.MyDataType.mybool |dt_update_tmp#2#Z#0@0|))) ($Is DatatypeTypeType |let#4#0#0| Tclass.NewSyntax.MyDataType)) (=> (and (and (= |dt_update_tmp#3#Z#0@0| |let#4#0#0|) (= |let#7#0#0| (U_2_bool (Lit boolType (bool_2_U false))))) (and ($Is boolType (bool_2_U |let#7#0#0|) TBool) (= |dt_update#mybool#0#Z#0@0| |let#7#0#0|))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (NewSyntax.MyDataType.MyConstructor_q |dt_update_tmp#3#Z#0@0|)) (=> (NewSyntax.MyDataType.MyConstructor_q |dt_update_tmp#3#Z#0@0|) (=> (and (|NewSyntax.MyDataType#Equal| |ghi#0@0| (let ((|dt_update_tmp#3#0| (let ((|dt_update_tmp#2#0@@1| |foo#0|))
(let ((|dt_update#myint#1#0@@1| (LitInt 2)))
(|#NewSyntax.MyDataType.MyConstructor| |dt_update#myint#1#0@@1| (NewSyntax.MyDataType.mybool |dt_update_tmp#2#0@@1|))))))
(let ((|dt_update#mybool#0#0| (U_2_bool (Lit boolType (bool_2_U false)))))
(|#NewSyntax.MyDataType.MyConstructor| (NewSyntax.MyDataType.myint |dt_update_tmp#3#0|) |dt_update#mybool#0#0|)))) (= (ControlFlow 0 2) (- 0 1))) (NewSyntax.MyDataType.MyNumericConstructor_q |hoo#0|)))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is DatatypeTypeType |foo#0| Tclass.NewSyntax.MyDataType) ($IsAlloc DatatypeTypeType |foo#0| Tclass.NewSyntax.MyDataType $Heap)) (|$IsA#NewSyntax.MyDataType| |foo#0|)) (and (and ($Is DatatypeTypeType |goo#0| Tclass.NewSyntax.MyDataType) ($IsAlloc DatatypeTypeType |goo#0| Tclass.NewSyntax.MyDataType $Heap)) (|$IsA#NewSyntax.MyDataType| |goo#0|))) (=> (and (and (and (and ($Is DatatypeTypeType |hoo#0| Tclass.NewSyntax.MyDataType) ($IsAlloc DatatypeTypeType |hoo#0| Tclass.NewSyntax.MyDataType $Heap)) (|$IsA#NewSyntax.MyDataType| |hoo#0|)) (and ($Is DatatypeTypeType |abc#0| Tclass.NewSyntax.MyDataType) ($IsAlloc DatatypeTypeType |abc#0| Tclass.NewSyntax.MyDataType $Heap))) (and (and (and ($Is DatatypeTypeType |def#0| Tclass.NewSyntax.MyDataType) ($IsAlloc DatatypeTypeType |def#0| Tclass.NewSyntax.MyDataType $Heap)) (and ($Is DatatypeTypeType |ghi#0| Tclass.NewSyntax.MyDataType) ($IsAlloc DatatypeTypeType |ghi#0| Tclass.NewSyntax.MyDataType $Heap))) (and (and ($Is DatatypeTypeType |jkl#0| Tclass.NewSyntax.MyDataType) ($IsAlloc DatatypeTypeType |jkl#0| Tclass.NewSyntax.MyDataType $Heap)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 11) 2))))) anon0_correct)))))
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
