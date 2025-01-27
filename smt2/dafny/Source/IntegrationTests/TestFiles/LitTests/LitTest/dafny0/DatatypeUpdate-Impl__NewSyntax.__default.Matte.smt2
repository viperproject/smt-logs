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
(declare-fun TReal () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagReal () T@U)
(declare-fun TagSet () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass.NewSyntax.Datte () T@U)
(declare-fun |##NewSyntax.Datte.AA| () T@U)
(declare-fun |##NewSyntax.Datte.BB| () T@U)
(declare-fun |##NewSyntax.Datte.CC| () T@U)
(declare-fun |##NewSyntax.Datte.DD| () T@U)
(declare-fun tytagFamily$Datte () T@U)
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
(declare-fun |#NewSyntax.Datte.DD| (Int T@U (_ BitVec 27) T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun NewSyntax.Datte.x (T@U) Int)
(declare-fun NewSyntax.Datte.o (T@U) T@U)
(declare-fun NewSyntax.Datte.p (T@U) (_ BitVec 27))
(declare-fun NewSyntax.Datte.q (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun TBitvector (Int) T@U)
(declare-fun bv27Type () T@T)
(declare-fun bv27_2_U ((_ BitVec 27)) T@U)
(declare-fun U_2_bv27 (T@U) (_ BitVec 27))
(declare-fun |NewSyntax.Datte#Equal| (T@U T@U) Bool)
(declare-fun NewSyntax.Datte.CC_q (T@U) Bool)
(declare-fun NewSyntax.Datte.c (T@U) Real)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |#NewSyntax.Datte.AA| (Int Int) T@U)
(declare-fun Tclass.NewSyntax.Datte (T@U) T@U)
(declare-fun |#NewSyntax.Datte.BB| (Bool Int) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun LitReal (Real) Real)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun NewSyntax.Datte.BB_q (T@U) Bool)
(declare-fun NewSyntax.Datte.b (T@U) Bool)
(declare-fun NewSyntax.Datte.AA_q (T@U) Bool)
(declare-fun NewSyntax.Datte.DD_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |#NewSyntax.Datte.CC| (Real) T@U)
(declare-fun BoxType () T@T)
(declare-fun TagFamily (T@U) T@U)
(declare-fun NewSyntax.Datte.a (T@U) Int)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun Inv0_TBitvector (T@U) Int)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tclass.NewSyntax.Datte_0 (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
(declare-fun |$IsA#NewSyntax.Datte| (T@U) Bool)
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
(assert (distinct TBool TInt TReal TagBool TagInt TagReal TagSet alloc Tagclass.NewSyntax.Datte |##NewSyntax.Datte.AA| |##NewSyntax.Datte.BB| |##NewSyntax.Datte.CC| |##NewSyntax.Datte.DD| tytagFamily$Datte)
)
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert (= (Tag TReal) TagReal))
(assert (forall ((|a#46#0#0| Int) (|a#46#1#0| T@U) (|a#46#2#0| (_ BitVec 27)) (|a#46#3#0| T@U) ) (! (= (DatatypeCtorId (|#NewSyntax.Datte.DD| |a#46#0#0| |a#46#1#0| |a#46#2#0| |a#46#3#0|)) |##NewSyntax.Datte.DD|)
 :qid |DatatypeUpdatedfy.51:83|
 :skolemid |606|
 :pattern ( (|#NewSyntax.Datte.DD| |a#46#0#0| |a#46#1#0| |a#46#2#0| |a#46#3#0|))
)))
(assert (forall ((|a#50#0#0| Int) (|a#50#1#0| T@U) (|a#50#2#0| (_ BitVec 27)) (|a#50#3#0| T@U) ) (! (= (NewSyntax.Datte.x (|#NewSyntax.Datte.DD| |a#50#0#0| |a#50#1#0| |a#50#2#0| |a#50#3#0|)) |a#50#0#0|)
 :qid |DatatypeUpdatedfy.51:83|
 :skolemid |620|
 :pattern ( (|#NewSyntax.Datte.DD| |a#50#0#0| |a#50#1#0| |a#50#2#0| |a#50#3#0|))
)))
(assert (forall ((|a#51#0#0| Int) (|a#51#1#0| T@U) (|a#51#2#0| (_ BitVec 27)) (|a#51#3#0| T@U) ) (! (= (NewSyntax.Datte.o (|#NewSyntax.Datte.DD| |a#51#0#0| |a#51#1#0| |a#51#2#0| |a#51#3#0|)) |a#51#1#0|)
 :qid |DatatypeUpdatedfy.51:83|
 :skolemid |621|
 :pattern ( (|#NewSyntax.Datte.DD| |a#51#0#0| |a#51#1#0| |a#51#2#0| |a#51#3#0|))
)))
(assert (forall ((|a#53#0#0| Int) (|a#53#1#0| T@U) (|a#53#2#0| (_ BitVec 27)) (|a#53#3#0| T@U) ) (! (= (NewSyntax.Datte.p (|#NewSyntax.Datte.DD| |a#53#0#0| |a#53#1#0| |a#53#2#0| |a#53#3#0|)) |a#53#2#0|)
 :qid |DatatypeUpdatedfy.51:83|
 :skolemid |623|
 :pattern ( (|#NewSyntax.Datte.DD| |a#53#0#0| |a#53#1#0| |a#53#2#0| |a#53#3#0|))
)))
(assert (forall ((|a#54#0#0| Int) (|a#54#1#0| T@U) (|a#54#2#0| (_ BitVec 27)) (|a#54#3#0| T@U) ) (! (= (NewSyntax.Datte.q (|#NewSyntax.Datte.DD| |a#54#0#0| |a#54#1#0| |a#54#2#0| |a#54#3#0|)) |a#54#3#0|)
 :qid |DatatypeUpdatedfy.51:83|
 :skolemid |624|
 :pattern ( (|#NewSyntax.Datte.DD| |a#54#0#0| |a#54#1#0| |a#54#2#0| |a#54#3#0|))
)))
(assert (forall ((v T@U) (h T@U) ) (! ($IsAlloc intType v (TBitvector 0) h)
 :qid |DafnyPreludebpl.295:15|
 :skolemid |66|
 :pattern ( ($IsAlloc intType v (TBitvector 0) h))
)))
(assert  (and (and (= (Ctor bv27Type) 3) (forall ((arg0@@2 (_ BitVec 27)) ) (! (= (U_2_bv27 (bv27_2_U arg0@@2)) arg0@@2)
 :qid |typeInv:U_2_bv27|
 :pattern ( (bv27_2_U arg0@@2))
))) (forall ((x@@2 T@U) ) (! (= (bv27_2_U (U_2_bv27 x@@2)) x@@2)
 :qid |cast:U_2_bv27|
 :pattern ( (U_2_bv27 x@@2))
))))
(assert (forall ((v@@0 T@U) (heap T@U) ) (! ($IsAlloc bv27Type v@@0 (TBitvector 27) heap)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc bv27Type v@@0 (TBitvector 27) heap))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (and (NewSyntax.Datte.CC_q a) (NewSyntax.Datte.CC_q b)) (= (|NewSyntax.Datte#Equal| a b) (= (NewSyntax.Datte.c a) (NewSyntax.Datte.c b))))
 :qid |unknown.0:0|
 :skolemid |630|
 :pattern ( (|NewSyntax.Datte#Equal| a b) (NewSyntax.Datte.CC_q a))
 :pattern ( (|NewSyntax.Datte#Equal| a b) (NewSyntax.Datte.CC_q b))
)))
(assert (forall ((v@@1 T@U) ) (! ($Is intType v@@1 (TBitvector 0))
 :qid |DafnyPreludebpl.236:15|
 :skolemid |45|
 :pattern ( ($Is intType v@@1 (TBitvector 0)))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is bv27Type v@@2 (TBitvector 27))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is bv27Type v@@2 (TBitvector 27)))
)))
(assert (forall ((|a#55#0#0| Int) (|a#55#1#0| T@U) (|a#55#2#0| (_ BitVec 27)) (|a#55#3#0| T@U) ) (! (< (BoxRank |a#55#3#0|) (DtRank (|#NewSyntax.Datte.DD| |a#55#0#0| |a#55#1#0| |a#55#2#0| |a#55#3#0|)))
 :qid |DatatypeUpdatedfy.51:83|
 :skolemid |625|
 :pattern ( (|#NewSyntax.Datte.DD| |a#55#0#0| |a#55#1#0| |a#55#2#0| |a#55#3#0|))
)))
(assert (= (Ctor DatatypeTypeType) 4))
(assert (forall ((NewSyntax.Datte$T T@U) (|a#31#0#0| Int) (|a#31#1#0| Int) ) (! (= ($Is DatatypeTypeType (|#NewSyntax.Datte.AA| |a#31#0#0| |a#31#1#0|) (Tclass.NewSyntax.Datte NewSyntax.Datte$T))  (and ($Is intType (int_2_U |a#31#0#0|) TInt) ($Is intType (int_2_U |a#31#1#0|) TInt)))
 :qid |unknown.0:0|
 :skolemid |574|
 :pattern ( ($Is DatatypeTypeType (|#NewSyntax.Datte.AA| |a#31#0#0| |a#31#1#0|) (Tclass.NewSyntax.Datte NewSyntax.Datte$T)))
)))
(assert (forall ((NewSyntax.Datte$T@@0 T@U) (|a#37#0#0| Bool) (|a#37#1#0| Int) ) (! (= ($Is DatatypeTypeType (|#NewSyntax.Datte.BB| |a#37#0#0| |a#37#1#0|) (Tclass.NewSyntax.Datte NewSyntax.Datte$T@@0))  (and ($Is boolType (bool_2_U |a#37#0#0|) TBool) ($Is intType (int_2_U |a#37#1#0|) TInt)))
 :qid |unknown.0:0|
 :skolemid |587|
 :pattern ( ($Is DatatypeTypeType (|#NewSyntax.Datte.BB| |a#37#0#0| |a#37#1#0|) (Tclass.NewSyntax.Datte NewSyntax.Datte$T@@0)))
)))
(assert (= (Ctor SetType) 5))
(assert (forall ((NewSyntax.Datte$T@@1 T@U) (|a#48#0#0| Int) (|a#48#1#0| T@U) (|a#48#2#0| (_ BitVec 27)) (|a#48#3#0| T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) (= ($IsAlloc DatatypeTypeType (|#NewSyntax.Datte.DD| |a#48#0#0| |a#48#1#0| |a#48#2#0| |a#48#3#0|) (Tclass.NewSyntax.Datte NewSyntax.Datte$T@@1) $h)  (and (and (and ($IsAlloc intType (int_2_U |a#48#0#0|) TInt $h) ($IsAlloc SetType |a#48#1#0| (TSet TInt) $h)) ($IsAlloc bv27Type (bv27_2_U |a#48#2#0|) (TBitvector 27) $h)) ($IsAllocBox |a#48#3#0| NewSyntax.Datte$T@@1 $h))))
 :qid |unknown.0:0|
 :skolemid |611|
 :pattern ( ($IsAlloc DatatypeTypeType (|#NewSyntax.Datte.DD| |a#48#0#0| |a#48#1#0| |a#48#2#0| |a#48#3#0|) (Tclass.NewSyntax.Datte NewSyntax.Datte$T@@1) $h))
)))
(assert (forall ((|a#52#0#0| Int) (|a#52#1#0| T@U) (|a#52#2#0| (_ BitVec 27)) (|a#52#3#0| T@U) (d T@U) ) (!  (=> (|Set#IsMember| |a#52#1#0| ($Box DatatypeTypeType d)) (< (DtRank d) (DtRank (|#NewSyntax.Datte.DD| |a#52#0#0| |a#52#1#0| |a#52#2#0| |a#52#3#0|))))
 :qid |DatatypeUpdatedfy.51:83|
 :skolemid |622|
 :pattern ( (|Set#IsMember| |a#52#1#0| ($Box DatatypeTypeType d)) (|#NewSyntax.Datte.DD| |a#52#0#0| |a#52#1#0| |a#52#2#0| |a#52#3#0|))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|NewSyntax.Datte#Equal| a@@0 b@@0) (= a@@0 b@@0))
 :qid |unknown.0:0|
 :skolemid |632|
 :pattern ( (|NewSyntax.Datte#Equal| a@@0 b@@0))
)))
(assert (forall ((x@@3 Int) ) (! (= (LitInt x@@3) x@@3)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@3))
)))
(assert (forall ((x@@4 Real) ) (! (= (LitReal x@@4) x@@4)
 :qid |DafnyPreludebpl.111:30|
 :skolemid |19|
 :pattern ( (LitReal x@@4))
)))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= (Lit T x@@5) x@@5)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@5))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (and (NewSyntax.Datte.BB_q a@@1) (NewSyntax.Datte.BB_q b@@1)) (= (|NewSyntax.Datte#Equal| a@@1 b@@1)  (and (= (NewSyntax.Datte.b a@@1) (NewSyntax.Datte.b b@@1)) (= (NewSyntax.Datte.x a@@1) (NewSyntax.Datte.x b@@1)))))
 :qid |unknown.0:0|
 :skolemid |629|
 :pattern ( (|NewSyntax.Datte#Equal| a@@1 b@@1) (NewSyntax.Datte.BB_q a@@1))
 :pattern ( (|NewSyntax.Datte#Equal| a@@1 b@@1) (NewSyntax.Datte.BB_q b@@1))
)))
(assert (forall ((d@@0 T@U) ) (! (= (NewSyntax.Datte.AA_q d@@0) (= (DatatypeCtorId d@@0) |##NewSyntax.Datte.AA|))
 :qid |unknown.0:0|
 :skolemid |571|
 :pattern ( (NewSyntax.Datte.AA_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (NewSyntax.Datte.BB_q d@@1) (= (DatatypeCtorId d@@1) |##NewSyntax.Datte.BB|))
 :qid |unknown.0:0|
 :skolemid |584|
 :pattern ( (NewSyntax.Datte.BB_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (NewSyntax.Datte.CC_q d@@2) (= (DatatypeCtorId d@@2) |##NewSyntax.Datte.CC|))
 :qid |unknown.0:0|
 :skolemid |597|
 :pattern ( (NewSyntax.Datte.CC_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (NewSyntax.Datte.DD_q d@@3) (= (DatatypeCtorId d@@3) |##NewSyntax.Datte.DD|))
 :qid |unknown.0:0|
 :skolemid |607|
 :pattern ( (NewSyntax.Datte.DD_q d@@3))
)))
(assert (forall ((x@@6 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@6)) x@@6)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@6))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (NewSyntax.Datte.AA_q d@@4) (exists ((|a#30#0#0| Int) (|a#30#1#0| Int) ) (! (= d@@4 (|#NewSyntax.Datte.AA| |a#30#0#0| |a#30#1#0|))
 :qid |DatatypeUpdatedfy.51:26|
 :skolemid |572|
)))
 :qid |unknown.0:0|
 :skolemid |573|
 :pattern ( (NewSyntax.Datte.AA_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (NewSyntax.Datte.BB_q d@@5) (exists ((|a#36#0#0| Bool) (|a#36#1#0| Int) ) (! (= d@@5 (|#NewSyntax.Datte.BB| |a#36#0#0| |a#36#1#0|))
 :qid |DatatypeUpdatedfy.51:47|
 :skolemid |585|
)))
 :qid |unknown.0:0|
 :skolemid |586|
 :pattern ( (NewSyntax.Datte.BB_q d@@5))
)))
(assert (forall ((v@@3 T@U) (t0 T@U) ) (! (= ($Is SetType v@@3 (TSet t0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v@@3 bx) ($IsBox bx t0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v@@3 bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v@@3 (TSet t0)))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (NewSyntax.Datte.CC_q d@@6) (exists ((|a#42#0#0| Real) ) (! (= d@@6 (|#NewSyntax.Datte.CC| |a#42#0#0|))
 :qid |DatatypeUpdatedfy.51:69|
 :skolemid |598|
)))
 :qid |unknown.0:0|
 :skolemid |599|
 :pattern ( (NewSyntax.Datte.CC_q d@@6))
)))
(assert (= (Ctor BoxType) 6))
(assert (forall ((|a#49#0#0| Int) (|a#49#1#0| T@U) (|a#49#2#0| T@U) (|a#49#3#0| T@U) ) (! (= (|#NewSyntax.Datte.DD| (LitInt |a#49#0#0|) (Lit SetType |a#49#1#0|) (U_2_bv27 (Lit bv27Type |a#49#2#0|)) (Lit BoxType |a#49#3#0|)) (Lit DatatypeTypeType (|#NewSyntax.Datte.DD| |a#49#0#0| |a#49#1#0| (U_2_bv27 |a#49#2#0|) |a#49#3#0|)))
 :qid |DatatypeUpdatedfy.51:83|
 :skolemid |619|
 :pattern ( (|#NewSyntax.Datte.DD| (LitInt |a#49#0#0|) (Lit SetType |a#49#1#0|) (U_2_bv27 (Lit bv27Type |a#49#2#0|)) (Lit BoxType |a#49#3#0|)))
)))
(assert (forall ((v@@4 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@4) t h@@0) ($IsAlloc T@@1 v@@4 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@4) t h@@0))
)))
(assert (forall ((NewSyntax.Datte$T@@2 T@U) ) (!  (and (= (Tag (Tclass.NewSyntax.Datte NewSyntax.Datte$T@@2)) Tagclass.NewSyntax.Datte) (= (TagFamily (Tclass.NewSyntax.Datte NewSyntax.Datte$T@@2)) tytagFamily$Datte))
 :qid |unknown.0:0|
 :skolemid |499|
 :pattern ( (Tclass.NewSyntax.Datte NewSyntax.Datte$T@@2))
)))
(assert (forall ((d@@7 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (NewSyntax.Datte.AA_q d@@7) (exists ((NewSyntax.Datte$T@@3 T@U) ) (! ($IsAlloc DatatypeTypeType d@@7 (Tclass.NewSyntax.Datte NewSyntax.Datte$T@@3) $h@@0)
 :qid |unknown.0:0|
 :skolemid |576|
 :pattern ( ($IsAlloc DatatypeTypeType d@@7 (Tclass.NewSyntax.Datte NewSyntax.Datte$T@@3) $h@@0))
)))) ($IsAlloc intType (int_2_U (NewSyntax.Datte.a d@@7)) TInt $h@@0))
 :qid |unknown.0:0|
 :skolemid |577|
 :pattern ( ($IsAlloc intType (int_2_U (NewSyntax.Datte.a d@@7)) TInt $h@@0))
)))
(assert (forall ((d@@8 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (NewSyntax.Datte.AA_q d@@8) (exists ((NewSyntax.Datte$T@@4 T@U) ) (! ($IsAlloc DatatypeTypeType d@@8 (Tclass.NewSyntax.Datte NewSyntax.Datte$T@@4) $h@@1)
 :qid |unknown.0:0|
 :skolemid |578|
 :pattern ( ($IsAlloc DatatypeTypeType d@@8 (Tclass.NewSyntax.Datte NewSyntax.Datte$T@@4) $h@@1))
)))) ($IsAlloc intType (int_2_U (NewSyntax.Datte.x d@@8)) TInt $h@@1))
 :qid |unknown.0:0|
 :skolemid |579|
 :pattern ( ($IsAlloc intType (int_2_U (NewSyntax.Datte.x d@@8)) TInt $h@@1))
)))
(assert (forall ((d@@9 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (NewSyntax.Datte.BB_q d@@9) (exists ((NewSyntax.Datte$T@@5 T@U) ) (! ($IsAlloc DatatypeTypeType d@@9 (Tclass.NewSyntax.Datte NewSyntax.Datte$T@@5) $h@@2)
 :qid |unknown.0:0|
 :skolemid |589|
 :pattern ( ($IsAlloc DatatypeTypeType d@@9 (Tclass.NewSyntax.Datte NewSyntax.Datte$T@@5) $h@@2))
)))) ($IsAlloc boolType (bool_2_U (NewSyntax.Datte.b d@@9)) TBool $h@@2))
 :qid |unknown.0:0|
 :skolemid |590|
 :pattern ( ($IsAlloc boolType (bool_2_U (NewSyntax.Datte.b d@@9)) TBool $h@@2))
)))
(assert (forall ((d@@10 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (NewSyntax.Datte.BB_q d@@10) (exists ((NewSyntax.Datte$T@@6 T@U) ) (! ($IsAlloc DatatypeTypeType d@@10 (Tclass.NewSyntax.Datte NewSyntax.Datte$T@@6) $h@@3)
 :qid |unknown.0:0|
 :skolemid |591|
 :pattern ( ($IsAlloc DatatypeTypeType d@@10 (Tclass.NewSyntax.Datte NewSyntax.Datte$T@@6) $h@@3))
)))) ($IsAlloc intType (int_2_U (NewSyntax.Datte.x d@@10)) TInt $h@@3))
 :qid |unknown.0:0|
 :skolemid |592|
 :pattern ( ($IsAlloc intType (int_2_U (NewSyntax.Datte.x d@@10)) TInt $h@@3))
)))
(assert (forall ((d@@11 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (NewSyntax.Datte.CC_q d@@11) (exists ((NewSyntax.Datte$T@@7 T@U) ) (! ($IsAlloc DatatypeTypeType d@@11 (Tclass.NewSyntax.Datte NewSyntax.Datte$T@@7) $h@@4)
 :qid |unknown.0:0|
 :skolemid |602|
 :pattern ( ($IsAlloc DatatypeTypeType d@@11 (Tclass.NewSyntax.Datte NewSyntax.Datte$T@@7) $h@@4))
)))) ($IsAlloc realType (real_2_U (NewSyntax.Datte.c d@@11)) TReal $h@@4))
 :qid |unknown.0:0|
 :skolemid |603|
 :pattern ( ($IsAlloc realType (real_2_U (NewSyntax.Datte.c d@@11)) TReal $h@@4))
)))
(assert (forall ((d@@12 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (NewSyntax.Datte.DD_q d@@12) (exists ((NewSyntax.Datte$T@@8 T@U) ) (! ($IsAlloc DatatypeTypeType d@@12 (Tclass.NewSyntax.Datte NewSyntax.Datte$T@@8) $h@@5)
 :qid |unknown.0:0|
 :skolemid |612|
 :pattern ( ($IsAlloc DatatypeTypeType d@@12 (Tclass.NewSyntax.Datte NewSyntax.Datte$T@@8) $h@@5))
)))) ($IsAlloc intType (int_2_U (NewSyntax.Datte.x d@@12)) TInt $h@@5))
 :qid |unknown.0:0|
 :skolemid |613|
 :pattern ( ($IsAlloc intType (int_2_U (NewSyntax.Datte.x d@@12)) TInt $h@@5))
)))
(assert (forall ((NewSyntax.Datte$T@@9 T@U) (|a#43#0#0| Real) ($h@@6 T@U) ) (!  (=> ($IsGoodHeap $h@@6) (= ($IsAlloc DatatypeTypeType (|#NewSyntax.Datte.CC| |a#43#0#0|) (Tclass.NewSyntax.Datte NewSyntax.Datte$T@@9) $h@@6) ($IsAlloc realType (real_2_U |a#43#0#0|) TReal $h@@6)))
 :qid |unknown.0:0|
 :skolemid |601|
 :pattern ( ($IsAlloc DatatypeTypeType (|#NewSyntax.Datte.CC| |a#43#0#0|) (Tclass.NewSyntax.Datte NewSyntax.Datte$T@@9) $h@@6))
)))
(assert (forall ((d@@13 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (NewSyntax.Datte.DD_q d@@13) (exists ((NewSyntax.Datte$T@@10 T@U) ) (! ($IsAlloc DatatypeTypeType d@@13 (Tclass.NewSyntax.Datte NewSyntax.Datte$T@@10) $h@@7)
 :qid |unknown.0:0|
 :skolemid |614|
 :pattern ( ($IsAlloc DatatypeTypeType d@@13 (Tclass.NewSyntax.Datte NewSyntax.Datte$T@@10) $h@@7))
)))) ($IsAlloc SetType (NewSyntax.Datte.o d@@13) (TSet TInt) $h@@7))
 :qid |unknown.0:0|
 :skolemid |615|
 :pattern ( ($IsAlloc SetType (NewSyntax.Datte.o d@@13) (TSet TInt) $h@@7))
)))
(assert (forall ((d@@14 T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (NewSyntax.Datte.DD_q d@@14) (exists ((NewSyntax.Datte$T@@11 T@U) ) (! ($IsAlloc DatatypeTypeType d@@14 (Tclass.NewSyntax.Datte NewSyntax.Datte$T@@11) $h@@8)
 :qid |unknown.0:0|
 :skolemid |616|
 :pattern ( ($IsAlloc DatatypeTypeType d@@14 (Tclass.NewSyntax.Datte NewSyntax.Datte$T@@11) $h@@8))
)))) ($IsAlloc bv27Type (bv27_2_U (NewSyntax.Datte.p d@@14)) (TBitvector 27) $h@@8))
 :qid |unknown.0:0|
 :skolemid |617|
 :pattern ( ($IsAlloc bv27Type (bv27_2_U (NewSyntax.Datte.p d@@14)) (TBitvector 27) $h@@8))
)))
(assert (forall ((NewSyntax.Datte$T@@12 T@U) (|a#48#0#0@@0| Int) (|a#48#1#0@@0| T@U) (|a#48#2#0@@0| (_ BitVec 27)) (|a#48#3#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#NewSyntax.Datte.DD| |a#48#0#0@@0| |a#48#1#0@@0| |a#48#2#0@@0| |a#48#3#0@@0|) (Tclass.NewSyntax.Datte NewSyntax.Datte$T@@12))  (and (and (and ($Is intType (int_2_U |a#48#0#0@@0|) TInt) ($Is SetType |a#48#1#0@@0| (TSet TInt))) ($Is bv27Type (bv27_2_U |a#48#2#0@@0|) (TBitvector 27))) ($IsBox |a#48#3#0@@0| NewSyntax.Datte$T@@12)))
 :qid |unknown.0:0|
 :skolemid |610|
 :pattern ( ($Is DatatypeTypeType (|#NewSyntax.Datte.DD| |a#48#0#0@@0| |a#48#1#0@@0| |a#48#2#0@@0| |a#48#3#0@@0|) (Tclass.NewSyntax.Datte NewSyntax.Datte$T@@12)))
)))
(assert (forall ((|a#39#0#0| Bool) (|a#39#1#0| Int) ) (! (= (NewSyntax.Datte.b (|#NewSyntax.Datte.BB| |a#39#0#0| |a#39#1#0|)) |a#39#0#0|)
 :qid |DatatypeUpdatedfy.51:47|
 :skolemid |594|
 :pattern ( (|#NewSyntax.Datte.BB| |a#39#0#0| |a#39#1#0|))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (!  (=> (|Set#Equal| a@@2 b@@2) (= a@@2 b@@2))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@2 b@@2))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TInt) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@0 TInt))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TReal) (and (= ($Box realType ($Unbox realType bx@@1)) bx@@1) ($Is realType ($Unbox realType bx@@1) TReal)))
 :qid |DafnyPreludebpl.179:15|
 :skolemid |28|
 :pattern ( ($IsBox bx@@1 TReal))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TBool) (and (= ($Box boolType ($Unbox boolType bx@@2)) bx@@2) ($Is boolType ($Unbox boolType bx@@2) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@2 TBool))
)))
(assert (forall ((v@@5 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@5) t@@0) ($Is T@@2 v@@5 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@5) t@@0))
)))
(assert (forall ((v@@6 T@U) (t0@@0 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SetType v@@6 (TSet t0@@0) h@@1) (forall ((bx@@3 T@U) ) (!  (=> (|Set#IsMember| v@@6 bx@@3) ($IsAllocBox bx@@3 t0@@0 h@@1))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@6 bx@@3))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@6 (TSet t0@@0) h@@1))
)))
(assert (forall ((|a#29#0#0| Int) (|a#29#1#0| Int) ) (! (= (DatatypeCtorId (|#NewSyntax.Datte.AA| |a#29#0#0| |a#29#1#0|)) |##NewSyntax.Datte.AA|)
 :qid |DatatypeUpdatedfy.51:26|
 :skolemid |570|
 :pattern ( (|#NewSyntax.Datte.AA| |a#29#0#0| |a#29#1#0|))
)))
(assert (forall ((|a#33#0#0| Int) (|a#33#1#0| Int) ) (! (= (NewSyntax.Datte.a (|#NewSyntax.Datte.AA| |a#33#0#0| |a#33#1#0|)) |a#33#0#0|)
 :qid |DatatypeUpdatedfy.51:26|
 :skolemid |581|
 :pattern ( (|#NewSyntax.Datte.AA| |a#33#0#0| |a#33#1#0|))
)))
(assert (forall ((|a#34#0#0| Int) (|a#34#1#0| Int) ) (! (= (NewSyntax.Datte.x (|#NewSyntax.Datte.AA| |a#34#0#0| |a#34#1#0|)) |a#34#1#0|)
 :qid |DatatypeUpdatedfy.51:26|
 :skolemid |582|
 :pattern ( (|#NewSyntax.Datte.AA| |a#34#0#0| |a#34#1#0|))
)))
(assert (forall ((|a#35#0#0| Bool) (|a#35#1#0| Int) ) (! (= (DatatypeCtorId (|#NewSyntax.Datte.BB| |a#35#0#0| |a#35#1#0|)) |##NewSyntax.Datte.BB|)
 :qid |DatatypeUpdatedfy.51:47|
 :skolemid |583|
 :pattern ( (|#NewSyntax.Datte.BB| |a#35#0#0| |a#35#1#0|))
)))
(assert (forall ((|a#40#0#0| Bool) (|a#40#1#0| Int) ) (! (= (NewSyntax.Datte.x (|#NewSyntax.Datte.BB| |a#40#0#0| |a#40#1#0|)) |a#40#1#0|)
 :qid |DatatypeUpdatedfy.51:47|
 :skolemid |595|
 :pattern ( (|#NewSyntax.Datte.BB| |a#40#0#0| |a#40#1#0|))
)))
(assert (forall ((d@@15 T@U) ) (!  (=> (NewSyntax.Datte.DD_q d@@15) (exists ((|a#47#0#0| Int) (|a#47#1#0| T@U) (|a#47#2#0| (_ BitVec 27)) (|a#47#3#0| T@U) ) (! (= d@@15 (|#NewSyntax.Datte.DD| |a#47#0#0| |a#47#1#0| |a#47#2#0| |a#47#3#0|))
 :qid |DatatypeUpdatedfy.51:83|
 :skolemid |608|
)))
 :qid |unknown.0:0|
 :skolemid |609|
 :pattern ( (NewSyntax.Datte.DD_q d@@15))
)))
(assert (forall ((w Int) ) (! (= (Inv0_TBitvector (TBitvector w)) w)
 :qid |DafnyPreludebpl.38:15|
 :skolemid |0|
 :pattern ( (TBitvector w))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSet (TSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSet t@@2)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@2))
)))
(assert (forall ((NewSyntax.Datte$T@@13 T@U) ) (! (= (Tclass.NewSyntax.Datte_0 (Tclass.NewSyntax.Datte NewSyntax.Datte$T@@13)) NewSyntax.Datte$T@@13)
 :qid |unknown.0:0|
 :skolemid |500|
 :pattern ( (Tclass.NewSyntax.Datte NewSyntax.Datte$T@@13))
)))
(assert (forall ((|a#41#0#0| Real) ) (! (= (DatatypeCtorId (|#NewSyntax.Datte.CC| |a#41#0#0|)) |##NewSyntax.Datte.CC|)
 :qid |DatatypeUpdatedfy.51:69|
 :skolemid |596|
 :pattern ( (|#NewSyntax.Datte.CC| |a#41#0#0|))
)))
(assert (forall ((|a#45#0#0| Real) ) (! (= (NewSyntax.Datte.c (|#NewSyntax.Datte.CC| |a#45#0#0|)) |a#45#0#0|)
 :qid |DatatypeUpdatedfy.51:69|
 :skolemid |605|
 :pattern ( (|#NewSyntax.Datte.CC| |a#45#0#0|))
)))
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@7)) x@@7)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@7))
)))
(assert (forall ((NewSyntax.Datte$T@@14 T@U) (|a#43#0#0@@0| Real) ) (! (= ($Is DatatypeTypeType (|#NewSyntax.Datte.CC| |a#43#0#0@@0|) (Tclass.NewSyntax.Datte NewSyntax.Datte$T@@14)) ($Is realType (real_2_U |a#43#0#0@@0|) TReal))
 :qid |unknown.0:0|
 :skolemid |600|
 :pattern ( ($Is DatatypeTypeType (|#NewSyntax.Datte.CC| |a#43#0#0@@0|) (Tclass.NewSyntax.Datte NewSyntax.Datte$T@@14)))
)))
(assert (forall ((d@@16 T@U) (NewSyntax.Datte$T@@15 T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (NewSyntax.Datte.DD_q d@@16) ($IsAlloc DatatypeTypeType d@@16 (Tclass.NewSyntax.Datte NewSyntax.Datte$T@@15) $h@@9))) ($IsAllocBox (NewSyntax.Datte.q d@@16) NewSyntax.Datte$T@@15 $h@@9))
 :qid |unknown.0:0|
 :skolemid |618|
 :pattern ( ($IsAllocBox (NewSyntax.Datte.q d@@16) NewSyntax.Datte$T@@15 $h@@9))
)))
(assert  (and (and (and (and (and (and (and (and (forall ((t0@@1 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0@@1 t1 t2 (MapType0Store t0@@1 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 7)) (= (Ctor FieldType) 8)) (forall ((t0@@2 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@2 t1@@0 (MapType1Store t0@@2 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (forall ((arg0@@3 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@3 arg1)) 9)
 :qid |ctor:MapType1Type|
))) (forall ((arg0@@4 T@T) (arg1@@0 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@4 arg1@@0)) arg0@@4)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@4 arg1@@0))
))) (forall ((arg0@@5 T@T) (arg1@@1 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@5 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@5 arg1@@1))
))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1150|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) ) (!  (=> (and (NewSyntax.Datte.AA_q a@@3) (NewSyntax.Datte.AA_q b@@3)) (= (|NewSyntax.Datte#Equal| a@@3 b@@3)  (and (= (NewSyntax.Datte.a a@@3) (NewSyntax.Datte.a b@@3)) (= (NewSyntax.Datte.x a@@3) (NewSyntax.Datte.x b@@3)))))
 :qid |unknown.0:0|
 :skolemid |628|
 :pattern ( (|NewSyntax.Datte#Equal| a@@3 b@@3) (NewSyntax.Datte.AA_q a@@3))
 :pattern ( (|NewSyntax.Datte#Equal| a@@3 b@@3) (NewSyntax.Datte.AA_q b@@3))
)))
(assert (forall ((d@@17 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@17)) (DtRank d@@17))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@17)))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (TBitvector 0)) (and (= ($Box intType ($Unbox intType bx@@4)) bx@@4) ($Is intType ($Unbox intType bx@@4) (TBitvector 0))))
 :qid |DafnyPreludebpl.191:15|
 :skolemid |31|
 :pattern ( ($IsBox bx@@4 (TBitvector 0)))
)))
(assert (forall ((bx@@5 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@5 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@5)) bx@@5) ($Is SetType ($Unbox SetType bx@@5) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@5 (TSet t@@3)))
)))
(assert (forall ((NewSyntax.Datte$T@@16 T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass.NewSyntax.Datte NewSyntax.Datte$T@@16)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@6)) bx@@6) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@6) (Tclass.NewSyntax.Datte NewSyntax.Datte$T@@16))))
 :qid |unknown.0:0|
 :skolemid |501|
 :pattern ( ($IsBox bx@@6 (Tclass.NewSyntax.Datte NewSyntax.Datte$T@@16)))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 (TBitvector 27)) (and (= ($Box bv27Type ($Unbox bv27Type bx@@7)) bx@@7) ($Is bv27Type ($Unbox bv27Type bx@@7) (TBitvector 27))))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx@@7 (TBitvector 27)))
)))
(assert (forall ((a@@4 T@U) (b@@4 T@U) ) (! (= (|Set#Equal| a@@4 b@@4) (forall ((o T@U) ) (! (= (|Set#IsMember| a@@4 o) (|Set#IsMember| b@@4 o))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@4 o))
 :pattern ( (|Set#IsMember| b@@4 o))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@4 b@@4))
)))
(assert (forall ((d@@18 T@U) ) (!  (=> (|$IsA#NewSyntax.Datte| d@@18) (or (or (or (NewSyntax.Datte.AA_q d@@18) (NewSyntax.Datte.BB_q d@@18)) (NewSyntax.Datte.CC_q d@@18)) (NewSyntax.Datte.DD_q d@@18)))
 :qid |unknown.0:0|
 :skolemid |626|
 :pattern ( (|$IsA#NewSyntax.Datte| d@@18))
)))
(assert (forall ((NewSyntax.Datte$T@@17 T@U) (|a#31#0#0@@0| Int) (|a#31#1#0@@0| Int) ($h@@10 T@U) ) (!  (=> ($IsGoodHeap $h@@10) (= ($IsAlloc DatatypeTypeType (|#NewSyntax.Datte.AA| |a#31#0#0@@0| |a#31#1#0@@0|) (Tclass.NewSyntax.Datte NewSyntax.Datte$T@@17) $h@@10)  (and ($IsAlloc intType (int_2_U |a#31#0#0@@0|) TInt $h@@10) ($IsAlloc intType (int_2_U |a#31#1#0@@0|) TInt $h@@10))))
 :qid |unknown.0:0|
 :skolemid |575|
 :pattern ( ($IsAlloc DatatypeTypeType (|#NewSyntax.Datte.AA| |a#31#0#0@@0| |a#31#1#0@@0|) (Tclass.NewSyntax.Datte NewSyntax.Datte$T@@17) $h@@10))
)))
(assert (forall ((NewSyntax.Datte$T@@18 T@U) (|a#37#0#0@@0| Bool) (|a#37#1#0@@0| Int) ($h@@11 T@U) ) (!  (=> ($IsGoodHeap $h@@11) (= ($IsAlloc DatatypeTypeType (|#NewSyntax.Datte.BB| |a#37#0#0@@0| |a#37#1#0@@0|) (Tclass.NewSyntax.Datte NewSyntax.Datte$T@@18) $h@@11)  (and ($IsAlloc boolType (bool_2_U |a#37#0#0@@0|) TBool $h@@11) ($IsAlloc intType (int_2_U |a#37#1#0@@0|) TInt $h@@11))))
 :qid |unknown.0:0|
 :skolemid |588|
 :pattern ( ($IsAlloc DatatypeTypeType (|#NewSyntax.Datte.BB| |a#37#0#0@@0| |a#37#1#0@@0|) (Tclass.NewSyntax.Datte NewSyntax.Datte$T@@18) $h@@11))
)))
(assert (forall ((|a#32#0#0| Int) (|a#32#1#0| Int) ) (! (= (|#NewSyntax.Datte.AA| (LitInt |a#32#0#0|) (LitInt |a#32#1#0|)) (Lit DatatypeTypeType (|#NewSyntax.Datte.AA| |a#32#0#0| |a#32#1#0|)))
 :qid |DatatypeUpdatedfy.51:26|
 :skolemid |580|
 :pattern ( (|#NewSyntax.Datte.AA| (LitInt |a#32#0#0|) (LitInt |a#32#1#0|)))
)))
(assert (forall ((|a#38#0#0| T@U) (|a#38#1#0| Int) ) (! (= (|#NewSyntax.Datte.BB| (U_2_bool (Lit boolType |a#38#0#0|)) (LitInt |a#38#1#0|)) (Lit DatatypeTypeType (|#NewSyntax.Datte.BB| (U_2_bool |a#38#0#0|) |a#38#1#0|)))
 :qid |DatatypeUpdatedfy.51:47|
 :skolemid |593|
 :pattern ( (|#NewSyntax.Datte.BB| (U_2_bool (Lit boolType |a#38#0#0|)) (LitInt |a#38#1#0|)))
)))
(assert (forall ((x@@8 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@8))) (Lit BoxType ($Box intType (int_2_U x@@8))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@8))))
)))
(assert (forall ((x@@9 Real) ) (! (= ($Box realType (real_2_U (LitReal x@@9))) (Lit BoxType ($Box realType (real_2_U x@@9))))
 :qid |DafnyPreludebpl.112:15|
 :skolemid |20|
 :pattern ( ($Box realType (real_2_U (LitReal x@@9))))
)))
(assert (forall ((|a#44#0#0| Real) ) (! (= (|#NewSyntax.Datte.CC| (LitReal |a#44#0#0|)) (Lit DatatypeTypeType (|#NewSyntax.Datte.CC| |a#44#0#0|)))
 :qid |DatatypeUpdatedfy.51:69|
 :skolemid |604|
 :pattern ( (|#NewSyntax.Datte.CC| (LitReal |a#44#0#0|)))
)))
(assert (forall ((x@@10 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@10)) (Lit BoxType ($Box T@@4 x@@10)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@10)))
)))
(assert (forall ((NewSyntax.Datte$T@@19 T@U) (d@@19 T@U) ) (!  (=> ($Is DatatypeTypeType d@@19 (Tclass.NewSyntax.Datte NewSyntax.Datte$T@@19)) (or (or (or (NewSyntax.Datte.AA_q d@@19) (NewSyntax.Datte.BB_q d@@19)) (NewSyntax.Datte.CC_q d@@19)) (NewSyntax.Datte.DD_q d@@19)))
 :qid |unknown.0:0|
 :skolemid |627|
 :pattern ( (NewSyntax.Datte.DD_q d@@19) ($Is DatatypeTypeType d@@19 (Tclass.NewSyntax.Datte NewSyntax.Datte$T@@19)))
 :pattern ( (NewSyntax.Datte.CC_q d@@19) ($Is DatatypeTypeType d@@19 (Tclass.NewSyntax.Datte NewSyntax.Datte$T@@19)))
 :pattern ( (NewSyntax.Datte.BB_q d@@19) ($Is DatatypeTypeType d@@19 (Tclass.NewSyntax.Datte NewSyntax.Datte$T@@19)))
 :pattern ( (NewSyntax.Datte.AA_q d@@19) ($Is DatatypeTypeType d@@19 (Tclass.NewSyntax.Datte NewSyntax.Datte$T@@19)))
)))
(assert (forall ((h@@2 T@U) (v@@7 T@U) ) (! ($IsAlloc intType v@@7 TInt h@@2)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@7 TInt h@@2))
)))
(assert (forall ((h@@3 T@U) (v@@8 T@U) ) (! ($IsAlloc realType v@@8 TReal h@@3)
 :qid |DafnyPreludebpl.290:14|
 :skolemid |62|
 :pattern ( ($IsAlloc realType v@@8 TReal h@@3))
)))
(assert (forall ((h@@4 T@U) (v@@9 T@U) ) (! ($IsAlloc boolType v@@9 TBool h@@4)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@9 TBool h@@4))
)))
(assert (forall ((a@@5 T@U) (b@@5 T@U) ) (!  (=> (and (NewSyntax.Datte.DD_q a@@5) (NewSyntax.Datte.DD_q b@@5)) (= (|NewSyntax.Datte#Equal| a@@5 b@@5)  (and (and (and (= (NewSyntax.Datte.x a@@5) (NewSyntax.Datte.x b@@5)) (|Set#Equal| (NewSyntax.Datte.o a@@5) (NewSyntax.Datte.o b@@5))) (= (NewSyntax.Datte.p a@@5) (NewSyntax.Datte.p b@@5))) (= (NewSyntax.Datte.q a@@5) (NewSyntax.Datte.q b@@5)))))
 :qid |unknown.0:0|
 :skolemid |631|
 :pattern ( (|NewSyntax.Datte#Equal| a@@5 b@@5) (NewSyntax.Datte.DD_q a@@5))
 :pattern ( (|NewSyntax.Datte#Equal| a@@5 b@@5) (NewSyntax.Datte.DD_q b@@5))
)))
(assert (forall ((v@@10 T@U) ) (! ($Is intType v@@10 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@10 TInt))
)))
(assert (forall ((v@@11 T@U) ) (! ($Is realType v@@11 TReal)
 :qid |DafnyPreludebpl.229:14|
 :skolemid |41|
 :pattern ( ($Is realType v@@11 TReal))
)))
(assert (forall ((v@@12 T@U) ) (! ($Is boolType v@@12 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@12 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |s#0@2| () T@U)
(declare-fun |let#2_0#0#0| () T@U)
(declare-fun |dt_update_tmp#4#Z#2_0@0| () T@U)
(declare-fun |let#2_1#0#0| () Bool)
(declare-fun |dt_update#b#0#Z#2_0@0| () Bool)
(declare-fun |s#0@0| () T@U)
(declare-fun |d#0| () T@U)
(declare-fun |let#0_0#0#0| () T@U)
(declare-fun |dt_update_tmp#3#Z#0_0@0| () T@U)
(declare-fun |let#0_1#0#0| () Int)
(declare-fun |dt_update#x#2#Z#0_0@0| () Int)
(declare-fun |let#0_2#0#0| () Real)
(declare-fun |dt_update#q#0#Z#0_0@0| () Real)
(declare-fun |s#0@1| () T@U)
(declare-fun |let#4#0#0| () T@U)
(declare-fun |dt_update_tmp#2#Z#0@0| () T@U)
(declare-fun |let#5#0#0| () (_ BitVec 27))
(declare-fun |dt_update#p#0#Z#0@0| () (_ BitVec 27))
(declare-fun |dt_update_tmp#1#Z#0@0| () T@U)
(declare-fun |let#2#0#0| () T@U)
(declare-fun |let#3#0#0| () Int)
(declare-fun |dt_update#x#1#Z#0@0| () Int)
(declare-fun |dt_update_tmp#0#Z#0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |let#1#0#0| () Int)
(declare-fun |dt_update#x#0#Z#0@0| () Int)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |s#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$NewSyntax.__default.Matte)
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
 (=> (= (ControlFlow 0 0) 74) (let ((anon29_correct  (=> (= (ControlFlow 0 7) (- 0 6)) (=> (NewSyntax.Datte.b |s#0@2|) (NewSyntax.Datte.BB_q |s#0@2|)))))
(let ((anon45_Else_correct  (=> (and (not (NewSyntax.Datte.b |s#0@2|)) (= (ControlFlow 0 9) 7)) anon29_correct)))
(let ((anon45_Then_correct  (=> (and (NewSyntax.Datte.b |s#0@2|) (= (ControlFlow 0 8) 7)) anon29_correct)))
(let ((anon44_Then_correct  (and (=> (= (ControlFlow 0 10) (- 0 11)) (NewSyntax.Datte.BB_q |s#0@2|)) (=> (NewSyntax.Datte.BB_q |s#0@2|) (and (=> (= (ControlFlow 0 10) 8) anon45_Then_correct) (=> (= (ControlFlow 0 10) 9) anon45_Else_correct))))))
(let ((anon44_Else_correct  (and (=> (= (ControlFlow 0 2) (- 0 5)) (NewSyntax.Datte.BB_q |s#0@2|)) (=> (NewSyntax.Datte.BB_q |s#0@2|) (=> (and (= |let#2_0#0#0| |s#0@2|) ($Is DatatypeTypeType |let#2_0#0#0| (Tclass.NewSyntax.Datte TReal))) (=> (and (and (= |dt_update_tmp#4#Z#2_0@0| |let#2_0#0#0|) (= |let#2_1#0#0| (U_2_bool (Lit boolType (bool_2_U true))))) (and ($Is boolType (bool_2_U |let#2_1#0#0|) TBool) (= |dt_update#b#0#Z#2_0@0| |let#2_1#0#0|))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (or (NewSyntax.Datte.AA_q |dt_update_tmp#4#Z#2_0@0|) (NewSyntax.Datte.BB_q |dt_update_tmp#4#Z#2_0@0|)) (NewSyntax.Datte.DD_q |dt_update_tmp#4#Z#2_0@0|))) (=> (or (or (NewSyntax.Datte.AA_q |dt_update_tmp#4#Z#2_0@0|) (NewSyntax.Datte.BB_q |dt_update_tmp#4#Z#2_0@0|)) (NewSyntax.Datte.DD_q |dt_update_tmp#4#Z#2_0@0|)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (NewSyntax.Datte.BB_q (let ((|dt_update_tmp#4#2_0| |s#0@2|))
(let ((|dt_update#b#0#2_0| (U_2_bool (Lit boolType (bool_2_U true)))))
(|#NewSyntax.Datte.BB| |dt_update#b#0#2_0| (NewSyntax.Datte.x |dt_update_tmp#4#2_0|)))))) (=> (NewSyntax.Datte.BB_q (let ((|dt_update_tmp#4#2_0@@0| |s#0@2|))
(let ((|dt_update#b#0#2_0@@0| (U_2_bool (Lit boolType (bool_2_U true)))))
(|#NewSyntax.Datte.BB| |dt_update#b#0#2_0@@0| (NewSyntax.Datte.x |dt_update_tmp#4#2_0@@0|))))) (=> (= (ControlFlow 0 2) (- 0 1)) (NewSyntax.Datte.b (let ((|dt_update_tmp#4#2_0@@1| |s#0@2|))
(let ((|dt_update#b#0#2_0@@1| (U_2_bool (Lit boolType (bool_2_U true)))))
(|#NewSyntax.Datte.BB| |dt_update#b#0#2_0@@1| (NewSyntax.Datte.x |dt_update_tmp#4#2_0@@1|))))))))))))))))
(let ((anon26_correct  (and (=> (= (ControlFlow 0 12) (- 0 14)) (=> (< (NewSyntax.Datte.x |s#0@2|) 4) (NewSyntax.Datte.DD_q |s#0@2|))) (=> (and (=> (< (NewSyntax.Datte.x |s#0@2|) 4) (NewSyntax.Datte.DD_q |s#0@2|)) (|$IsA#NewSyntax.Datte| |s#0@2|)) (and (=> (= (ControlFlow 0 12) (- 0 13)) (not (|NewSyntax.Datte#Equal| |s#0@2| (|#NewSyntax.Datte.CC| (LitReal 4.0))))) (=> (not (|NewSyntax.Datte#Equal| |s#0@2| (|#NewSyntax.Datte.CC| (LitReal 4.0)))) (and (=> (= (ControlFlow 0 12) 10) anon44_Then_correct) (=> (= (ControlFlow 0 12) 2) anon44_Else_correct))))))))
(let ((anon43_Else_correct  (=> (and (<= 4 (NewSyntax.Datte.x |s#0@2|)) (= (ControlFlow 0 16) 12)) anon26_correct)))
(let ((anon43_Then_correct  (=> (and (< (NewSyntax.Datte.x |s#0@2|) 4) (= (ControlFlow 0 15) 12)) anon26_correct)))
(let ((anon24_correct  (and (=> (= (ControlFlow 0 17) (- 0 19)) (or (= (NewSyntax.Datte.x |s#0@2|) (LitInt 5)) (= (NewSyntax.Datte.x |s#0@2|) (LitInt 3)))) (=> (or (= (NewSyntax.Datte.x |s#0@2|) (LitInt 5)) (= (NewSyntax.Datte.x |s#0@2|) (LitInt 3))) (and (=> (= (ControlFlow 0 17) (- 0 18)) (or (or (NewSyntax.Datte.AA_q |s#0@2|) (NewSyntax.Datte.BB_q |s#0@2|)) (NewSyntax.Datte.DD_q |s#0@2|))) (=> (or (or (NewSyntax.Datte.AA_q |s#0@2|) (NewSyntax.Datte.BB_q |s#0@2|)) (NewSyntax.Datte.DD_q |s#0@2|)) (and (=> (= (ControlFlow 0 17) 15) anon43_Then_correct) (=> (= (ControlFlow 0 17) 16) anon43_Else_correct))))))))
(let ((anon42_Else_correct  (=> (and (= (NewSyntax.Datte.x |s#0@2|) (LitInt 5)) (= (ControlFlow 0 22) 17)) anon24_correct)))
(let ((anon42_Then_correct  (=> (or (not (= (NewSyntax.Datte.x |s#0@2|) (LitInt 5))) (not true)) (and (=> (= (ControlFlow 0 20) (- 0 21)) (or (or (NewSyntax.Datte.AA_q |s#0@2|) (NewSyntax.Datte.BB_q |s#0@2|)) (NewSyntax.Datte.DD_q |s#0@2|))) (=> (or (or (NewSyntax.Datte.AA_q |s#0@2|) (NewSyntax.Datte.BB_q |s#0@2|)) (NewSyntax.Datte.DD_q |s#0@2|)) (=> (= (ControlFlow 0 20) 17) anon24_correct))))))
(let ((anon22_correct  (and (=> (= (ControlFlow 0 23) (- 0 24)) (or (or (NewSyntax.Datte.AA_q |s#0@2|) (NewSyntax.Datte.BB_q |s#0@2|)) (NewSyntax.Datte.DD_q |s#0@2|))) (=> (or (or (NewSyntax.Datte.AA_q |s#0@2|) (NewSyntax.Datte.BB_q |s#0@2|)) (NewSyntax.Datte.DD_q |s#0@2|)) (and (=> (= (ControlFlow 0 23) 20) anon42_Then_correct) (=> (= (ControlFlow 0 23) 22) anon42_Else_correct))))))
(let ((anon41_Else_correct  (=> (not (NewSyntax.Datte.DD_q |s#0@0|)) (=> (and (= |s#0@2| |s#0@0|) (= (ControlFlow 0 29) 23)) anon22_correct))))
(let ((anon41_Then_correct  (=> (NewSyntax.Datte.DD_q |s#0@0|) (and (=> (= (ControlFlow 0 25) (- 0 28)) (NewSyntax.Datte.DD_q |d#0|)) (=> (NewSyntax.Datte.DD_q |d#0|) (=> (= |let#0_0#0#0| |d#0|) (=> (and (and (and ($Is DatatypeTypeType |let#0_0#0#0| (Tclass.NewSyntax.Datte TReal)) (= |dt_update_tmp#3#Z#0_0@0| |let#0_0#0#0|)) (and (= |let#0_1#0#0| (LitInt 3)) ($Is intType (int_2_U |let#0_1#0#0|) TInt))) (and (and (= |dt_update#x#2#Z#0_0@0| |let#0_1#0#0|) (= |let#0_2#0#0| (LitReal 2.2))) (and ($Is realType (real_2_U |let#0_2#0#0|) TReal) (= |dt_update#q#0#Z#0_0@0| |let#0_2#0#0|)))) (and (=> (= (ControlFlow 0 25) (- 0 27)) (NewSyntax.Datte.DD_q |dt_update_tmp#3#Z#0_0@0|)) (=> (NewSyntax.Datte.DD_q |dt_update_tmp#3#Z#0_0@0|) (and (=> (= (ControlFlow 0 25) (- 0 26)) (NewSyntax.Datte.DD_q |dt_update_tmp#3#Z#0_0@0|)) (=> (NewSyntax.Datte.DD_q |dt_update_tmp#3#Z#0_0@0|) (=> (= |s#0@1| (let ((|dt_update_tmp#3#0_0| |d#0|))
(let ((|dt_update#x#2#0_0| (LitInt 3)))
(let ((|dt_update#q#0#0_0| (LitReal 2.2)))
(|#NewSyntax.Datte.DD| |dt_update#x#2#0_0| (NewSyntax.Datte.o |dt_update_tmp#3#0_0|) (NewSyntax.Datte.p |dt_update_tmp#3#0_0|) ($Box realType (real_2_U |dt_update#q#0#0_0|))))))) (=> (and (= |s#0@2| |s#0@1|) (= (ControlFlow 0 25) 23)) anon22_correct)))))))))))))
(let ((anon19_correct  (=> (and (=> (NewSyntax.Datte.AA_q |d#0|) (|$IsA#NewSyntax.Datte| |s#0@0|)) (=> (not (and (NewSyntax.Datte.AA_q |d#0|) (|NewSyntax.Datte#Equal| |s#0@0| (|#NewSyntax.Datte.AA| (NewSyntax.Datte.a |d#0|) (LitInt 5))))) (and (=> (NewSyntax.Datte.BB_q |d#0|) (and (|$IsA#NewSyntax.Datte| |s#0@0|) (=> (not (|NewSyntax.Datte#Equal| |s#0@0| (|#NewSyntax.Datte.BB| (U_2_bool (Lit boolType (bool_2_U false))) (LitInt 5)))) (|$IsA#NewSyntax.Datte| |s#0@0|)))) (=> (not (and (NewSyntax.Datte.BB_q |d#0|) (or (|NewSyntax.Datte#Equal| |s#0@0| (|#NewSyntax.Datte.BB| (U_2_bool (Lit boolType (bool_2_U false))) (LitInt 5))) (|NewSyntax.Datte#Equal| |s#0@0| (|#NewSyntax.Datte.BB| (U_2_bool (Lit boolType (bool_2_U true))) (LitInt 5)))))) (=> (NewSyntax.Datte.DD_q |d#0|) (and (|$IsA#NewSyntax.Datte| (let ((|dt_update_tmp#1#0| |s#0@0|))
(let ((|dt_update#x#1#0| (NewSyntax.Datte.x |d#0|)))
(ite (NewSyntax.Datte.AA_q |dt_update_tmp#1#0|) (|#NewSyntax.Datte.AA| (NewSyntax.Datte.a |dt_update_tmp#1#0|) |dt_update#x#1#0|) (ite (NewSyntax.Datte.BB_q |dt_update_tmp#1#0|) (|#NewSyntax.Datte.BB| (NewSyntax.Datte.b |dt_update_tmp#1#0|) |dt_update#x#1#0|) (|#NewSyntax.Datte.DD| |dt_update#x#1#0| (NewSyntax.Datte.o |dt_update_tmp#1#0|) (NewSyntax.Datte.p |dt_update_tmp#1#0|) (NewSyntax.Datte.q |dt_update_tmp#1#0|))))))) (|$IsA#NewSyntax.Datte| (let ((|dt_update_tmp#2#0| |d#0|))
(let ((|dt_update#p#0#0| (NewSyntax.Datte.p |d#0|)))
(|#NewSyntax.Datte.DD| (NewSyntax.Datte.x |dt_update_tmp#2#0|) (NewSyntax.Datte.o |dt_update_tmp#2#0|) |dt_update#p#0#0| (NewSyntax.Datte.q |dt_update_tmp#2#0|))))))))))) (and (=> (= (ControlFlow 0 30) (- 0 31)) (or (or (and (NewSyntax.Datte.AA_q |d#0|) (|NewSyntax.Datte#Equal| |s#0@0| (|#NewSyntax.Datte.AA| (NewSyntax.Datte.a |d#0|) (LitInt 5)))) (and (NewSyntax.Datte.BB_q |d#0|) (or (|NewSyntax.Datte#Equal| |s#0@0| (|#NewSyntax.Datte.BB| (U_2_bool (Lit boolType (bool_2_U false))) (LitInt 5))) (|NewSyntax.Datte#Equal| |s#0@0| (|#NewSyntax.Datte.BB| (U_2_bool (Lit boolType (bool_2_U true))) (LitInt 5)))))) (and (NewSyntax.Datte.DD_q |d#0|) (|NewSyntax.Datte#Equal| (let ((|dt_update_tmp#1#0@@0| |s#0@0|))
(let ((|dt_update#x#1#0@@0| (NewSyntax.Datte.x |d#0|)))
(ite (NewSyntax.Datte.AA_q |dt_update_tmp#1#0@@0|) (|#NewSyntax.Datte.AA| (NewSyntax.Datte.a |dt_update_tmp#1#0@@0|) |dt_update#x#1#0@@0|) (ite (NewSyntax.Datte.BB_q |dt_update_tmp#1#0@@0|) (|#NewSyntax.Datte.BB| (NewSyntax.Datte.b |dt_update_tmp#1#0@@0|) |dt_update#x#1#0@@0|) (|#NewSyntax.Datte.DD| |dt_update#x#1#0@@0| (NewSyntax.Datte.o |dt_update_tmp#1#0@@0|) (NewSyntax.Datte.p |dt_update_tmp#1#0@@0|) (NewSyntax.Datte.q |dt_update_tmp#1#0@@0|)))))) (let ((|dt_update_tmp#2#0@@0| |d#0|))
(let ((|dt_update#p#0#0@@0| (NewSyntax.Datte.p |d#0|)))
(|#NewSyntax.Datte.DD| (NewSyntax.Datte.x |dt_update_tmp#2#0@@0|) (NewSyntax.Datte.o |dt_update_tmp#2#0@@0|) |dt_update#p#0#0@@0| (NewSyntax.Datte.q |dt_update_tmp#2#0@@0|)))))))) (=> (or (or (and (NewSyntax.Datte.AA_q |d#0|) (|NewSyntax.Datte#Equal| |s#0@0| (|#NewSyntax.Datte.AA| (NewSyntax.Datte.a |d#0|) (LitInt 5)))) (and (NewSyntax.Datte.BB_q |d#0|) (or (|NewSyntax.Datte#Equal| |s#0@0| (|#NewSyntax.Datte.BB| (U_2_bool (Lit boolType (bool_2_U false))) (LitInt 5))) (|NewSyntax.Datte#Equal| |s#0@0| (|#NewSyntax.Datte.BB| (U_2_bool (Lit boolType (bool_2_U true))) (LitInt 5)))))) (and (NewSyntax.Datte.DD_q |d#0|) (|NewSyntax.Datte#Equal| (let ((|dt_update_tmp#1#0@@1| |s#0@0|))
(let ((|dt_update#x#1#0@@1| (NewSyntax.Datte.x |d#0|)))
(ite (NewSyntax.Datte.AA_q |dt_update_tmp#1#0@@1|) (|#NewSyntax.Datte.AA| (NewSyntax.Datte.a |dt_update_tmp#1#0@@1|) |dt_update#x#1#0@@1|) (ite (NewSyntax.Datte.BB_q |dt_update_tmp#1#0@@1|) (|#NewSyntax.Datte.BB| (NewSyntax.Datte.b |dt_update_tmp#1#0@@1|) |dt_update#x#1#0@@1|) (|#NewSyntax.Datte.DD| |dt_update#x#1#0@@1| (NewSyntax.Datte.o |dt_update_tmp#1#0@@1|) (NewSyntax.Datte.p |dt_update_tmp#1#0@@1|) (NewSyntax.Datte.q |dt_update_tmp#1#0@@1|)))))) (let ((|dt_update_tmp#2#0@@1| |d#0|))
(let ((|dt_update#p#0#0@@1| (NewSyntax.Datte.p |d#0|)))
(|#NewSyntax.Datte.DD| (NewSyntax.Datte.x |dt_update_tmp#2#0@@1|) (NewSyntax.Datte.o |dt_update_tmp#2#0@@1|) |dt_update#p#0#0@@1| (NewSyntax.Datte.q |dt_update_tmp#2#0@@1|))))))) (and (=> (= (ControlFlow 0 30) 25) anon41_Then_correct) (=> (= (ControlFlow 0 30) 29) anon41_Else_correct)))))))
(let ((anon18_correct  (and (=> (= (ControlFlow 0 34) (- 0 39)) (NewSyntax.Datte.DD_q |d#0|)) (=> (NewSyntax.Datte.DD_q |d#0|) (=> (= |let#4#0#0| |d#0|) (=> (and ($Is DatatypeTypeType |let#4#0#0| (Tclass.NewSyntax.Datte TReal)) (= |dt_update_tmp#2#Z#0@0| |let#4#0#0|)) (and (=> (= (ControlFlow 0 34) (- 0 38)) (NewSyntax.Datte.DD_q |d#0|)) (=> (NewSyntax.Datte.DD_q |d#0|) (=> (= |let#5#0#0| (NewSyntax.Datte.p |d#0|)) (=> (and ($Is bv27Type (bv27_2_U |let#5#0#0|) (TBitvector 27)) (= |dt_update#p#0#Z#0@0| |let#5#0#0|)) (and (=> (= (ControlFlow 0 34) (- 0 37)) (or (or (NewSyntax.Datte.AA_q |dt_update_tmp#2#Z#0@0|) (NewSyntax.Datte.BB_q |dt_update_tmp#2#Z#0@0|)) (NewSyntax.Datte.DD_q |dt_update_tmp#2#Z#0@0|))) (=> (or (or (NewSyntax.Datte.AA_q |dt_update_tmp#2#Z#0@0|) (NewSyntax.Datte.BB_q |dt_update_tmp#2#Z#0@0|)) (NewSyntax.Datte.DD_q |dt_update_tmp#2#Z#0@0|)) (and (=> (= (ControlFlow 0 34) (- 0 36)) (NewSyntax.Datte.DD_q |dt_update_tmp#2#Z#0@0|)) (=> (NewSyntax.Datte.DD_q |dt_update_tmp#2#Z#0@0|) (and (=> (= (ControlFlow 0 34) (- 0 35)) (NewSyntax.Datte.DD_q |dt_update_tmp#2#Z#0@0|)) (=> (NewSyntax.Datte.DD_q |dt_update_tmp#2#Z#0@0|) (=> (= (ControlFlow 0 34) 30) anon19_correct)))))))))))))))))
(let ((anon40_Else_correct  (=> (not (NewSyntax.Datte.BB_q |dt_update_tmp#1#Z#0@0|)) (and (=> (= (ControlFlow 0 44) (- 0 47)) (NewSyntax.Datte.DD_q |dt_update_tmp#1#Z#0@0|)) (=> (NewSyntax.Datte.DD_q |dt_update_tmp#1#Z#0@0|) (and (=> (= (ControlFlow 0 44) (- 0 46)) (NewSyntax.Datte.DD_q |dt_update_tmp#1#Z#0@0|)) (=> (NewSyntax.Datte.DD_q |dt_update_tmp#1#Z#0@0|) (and (=> (= (ControlFlow 0 44) (- 0 45)) (NewSyntax.Datte.DD_q |dt_update_tmp#1#Z#0@0|)) (=> (NewSyntax.Datte.DD_q |dt_update_tmp#1#Z#0@0|) (=> (= (ControlFlow 0 44) 34) anon18_correct))))))))))
(let ((anon40_Then_correct  (=> (NewSyntax.Datte.BB_q |dt_update_tmp#1#Z#0@0|) (and (=> (= (ControlFlow 0 42) (- 0 43)) (NewSyntax.Datte.BB_q |dt_update_tmp#1#Z#0@0|)) (=> (NewSyntax.Datte.BB_q |dt_update_tmp#1#Z#0@0|) (=> (= (ControlFlow 0 42) 34) anon18_correct))))))
(let ((anon39_Else_correct  (=> (not (NewSyntax.Datte.AA_q |dt_update_tmp#1#Z#0@0|)) (and (=> (= (ControlFlow 0 48) 42) anon40_Then_correct) (=> (= (ControlFlow 0 48) 44) anon40_Else_correct)))))
(let ((anon39_Then_correct  (=> (NewSyntax.Datte.AA_q |dt_update_tmp#1#Z#0@0|) (and (=> (= (ControlFlow 0 40) (- 0 41)) (NewSyntax.Datte.AA_q |dt_update_tmp#1#Z#0@0|)) (=> (NewSyntax.Datte.AA_q |dt_update_tmp#1#Z#0@0|) (=> (= (ControlFlow 0 40) 34) anon18_correct))))))
(let ((anon38_Then_correct  (=> (NewSyntax.Datte.DD_q |d#0|) (and (=> (= (ControlFlow 0 49) (- 0 51)) (or (or (NewSyntax.Datte.DD_q |s#0@0|) (NewSyntax.Datte.BB_q |s#0@0|)) (NewSyntax.Datte.AA_q |s#0@0|))) (=> (or (or (NewSyntax.Datte.DD_q |s#0@0|) (NewSyntax.Datte.BB_q |s#0@0|)) (NewSyntax.Datte.AA_q |s#0@0|)) (=> (= |let#2#0#0| |s#0@0|) (=> (and ($Is DatatypeTypeType |let#2#0#0| (Tclass.NewSyntax.Datte TReal)) (= |dt_update_tmp#1#Z#0@0| |let#2#0#0|)) (and (=> (= (ControlFlow 0 49) (- 0 50)) (or (or (NewSyntax.Datte.AA_q |d#0|) (NewSyntax.Datte.BB_q |d#0|)) (NewSyntax.Datte.DD_q |d#0|))) (=> (or (or (NewSyntax.Datte.AA_q |d#0|) (NewSyntax.Datte.BB_q |d#0|)) (NewSyntax.Datte.DD_q |d#0|)) (=> (= |let#3#0#0| (NewSyntax.Datte.x |d#0|)) (=> (and ($Is intType (int_2_U |let#3#0#0|) TInt) (= |dt_update#x#1#Z#0@0| |let#3#0#0|)) (and (=> (= (ControlFlow 0 49) 40) anon39_Then_correct) (=> (= (ControlFlow 0 49) 48) anon39_Else_correct)))))))))))))
(let ((anon38_Else_correct  (=> (and (not (NewSyntax.Datte.DD_q |d#0|)) (= (ControlFlow 0 33) 30)) anon19_correct)))
(let ((anon37_Then_correct  (=> (not (or (and (NewSyntax.Datte.AA_q |d#0|) (|NewSyntax.Datte#Equal| |s#0@0| (|#NewSyntax.Datte.AA| (NewSyntax.Datte.a |d#0|) (LitInt 5)))) (and (NewSyntax.Datte.BB_q |d#0|) (or (|NewSyntax.Datte#Equal| |s#0@0| (|#NewSyntax.Datte.BB| (U_2_bool (Lit boolType (bool_2_U false))) (LitInt 5))) (|NewSyntax.Datte#Equal| |s#0@0| (|#NewSyntax.Datte.BB| (U_2_bool (Lit boolType (bool_2_U true))) (LitInt 5))))))) (and (=> (= (ControlFlow 0 52) 49) anon38_Then_correct) (=> (= (ControlFlow 0 52) 33) anon38_Else_correct)))))
(let ((anon37_Else_correct  (=> (and (or (and (NewSyntax.Datte.AA_q |d#0|) (|NewSyntax.Datte#Equal| |s#0@0| (|#NewSyntax.Datte.AA| (NewSyntax.Datte.a |d#0|) (LitInt 5)))) (and (NewSyntax.Datte.BB_q |d#0|) (or (|NewSyntax.Datte#Equal| |s#0@0| (|#NewSyntax.Datte.BB| (U_2_bool (Lit boolType (bool_2_U false))) (LitInt 5))) (|NewSyntax.Datte#Equal| |s#0@0| (|#NewSyntax.Datte.BB| (U_2_bool (Lit boolType (bool_2_U true))) (LitInt 5)))))) (= (ControlFlow 0 32) 30)) anon19_correct)))
(let ((anon36_Else_correct  (=> (|NewSyntax.Datte#Equal| |s#0@0| (|#NewSyntax.Datte.BB| (U_2_bool (Lit boolType (bool_2_U false))) (LitInt 5))) (and (=> (= (ControlFlow 0 56) 52) anon37_Then_correct) (=> (= (ControlFlow 0 56) 32) anon37_Else_correct)))))
(let ((anon36_Then_correct  (=> (not (|NewSyntax.Datte#Equal| |s#0@0| (|#NewSyntax.Datte.BB| (U_2_bool (Lit boolType (bool_2_U false))) (LitInt 5)))) (and (=> (= (ControlFlow 0 55) 52) anon37_Then_correct) (=> (= (ControlFlow 0 55) 32) anon37_Else_correct)))))
(let ((anon35_Then_correct  (=> (NewSyntax.Datte.BB_q |d#0|) (and (=> (= (ControlFlow 0 57) 55) anon36_Then_correct) (=> (= (ControlFlow 0 57) 56) anon36_Else_correct)))))
(let ((anon35_Else_correct  (=> (not (NewSyntax.Datte.BB_q |d#0|)) (and (=> (= (ControlFlow 0 54) 52) anon37_Then_correct) (=> (= (ControlFlow 0 54) 32) anon37_Else_correct)))))
(let ((anon34_Then_correct  (=> (not (and (NewSyntax.Datte.AA_q |d#0|) (|NewSyntax.Datte#Equal| |s#0@0| (|#NewSyntax.Datte.AA| (NewSyntax.Datte.a |d#0|) (LitInt 5))))) (and (=> (= (ControlFlow 0 58) 57) anon35_Then_correct) (=> (= (ControlFlow 0 58) 54) anon35_Else_correct)))))
(let ((anon34_Else_correct  (=> (and (NewSyntax.Datte.AA_q |d#0|) (|NewSyntax.Datte#Equal| |s#0@0| (|#NewSyntax.Datte.AA| (NewSyntax.Datte.a |d#0|) (LitInt 5)))) (and (=> (= (ControlFlow 0 53) 52) anon37_Then_correct) (=> (= (ControlFlow 0 53) 32) anon37_Else_correct)))))
(let ((anon33_Else_correct  (=> (not (NewSyntax.Datte.AA_q |d#0|)) (and (=> (= (ControlFlow 0 61) 58) anon34_Then_correct) (=> (= (ControlFlow 0 61) 53) anon34_Else_correct)))))
(let ((anon33_Then_correct  (=> (NewSyntax.Datte.AA_q |d#0|) (and (=> (= (ControlFlow 0 59) (- 0 60)) (NewSyntax.Datte.AA_q |d#0|)) (=> (NewSyntax.Datte.AA_q |d#0|) (and (=> (= (ControlFlow 0 59) 58) anon34_Then_correct) (=> (= (ControlFlow 0 59) 53) anon34_Else_correct)))))))
(let ((anon5_correct  (=> (= |s#0@0| (let ((|dt_update_tmp#0#0| |d#0|))
(let ((|dt_update#x#0#0| (LitInt 5)))
(ite (NewSyntax.Datte.AA_q |dt_update_tmp#0#0|) (|#NewSyntax.Datte.AA| (NewSyntax.Datte.a |dt_update_tmp#0#0|) |dt_update#x#0#0|) (ite (NewSyntax.Datte.BB_q |dt_update_tmp#0#0|) (|#NewSyntax.Datte.BB| (NewSyntax.Datte.b |dt_update_tmp#0#0|) |dt_update#x#0#0|) (|#NewSyntax.Datte.DD| |dt_update#x#0#0| (NewSyntax.Datte.o |dt_update_tmp#0#0|) (NewSyntax.Datte.p |dt_update_tmp#0#0|) (NewSyntax.Datte.q |dt_update_tmp#0#0|))))))) (and (=> (= (ControlFlow 0 62) 59) anon33_Then_correct) (=> (= (ControlFlow 0 62) 61) anon33_Else_correct)))))
(let ((anon32_Else_correct  (=> (not (NewSyntax.Datte.BB_q |dt_update_tmp#0#Z#0@0|)) (and (=> (= (ControlFlow 0 67) (- 0 70)) (NewSyntax.Datte.DD_q |dt_update_tmp#0#Z#0@0|)) (=> (NewSyntax.Datte.DD_q |dt_update_tmp#0#Z#0@0|) (and (=> (= (ControlFlow 0 67) (- 0 69)) (NewSyntax.Datte.DD_q |dt_update_tmp#0#Z#0@0|)) (=> (NewSyntax.Datte.DD_q |dt_update_tmp#0#Z#0@0|) (and (=> (= (ControlFlow 0 67) (- 0 68)) (NewSyntax.Datte.DD_q |dt_update_tmp#0#Z#0@0|)) (=> (NewSyntax.Datte.DD_q |dt_update_tmp#0#Z#0@0|) (=> (= (ControlFlow 0 67) 62) anon5_correct))))))))))
(let ((anon32_Then_correct  (=> (NewSyntax.Datte.BB_q |dt_update_tmp#0#Z#0@0|) (and (=> (= (ControlFlow 0 65) (- 0 66)) (NewSyntax.Datte.BB_q |dt_update_tmp#0#Z#0@0|)) (=> (NewSyntax.Datte.BB_q |dt_update_tmp#0#Z#0@0|) (=> (= (ControlFlow 0 65) 62) anon5_correct))))))
(let ((anon31_Else_correct  (=> (not (NewSyntax.Datte.AA_q |dt_update_tmp#0#Z#0@0|)) (and (=> (= (ControlFlow 0 71) 65) anon32_Then_correct) (=> (= (ControlFlow 0 71) 67) anon32_Else_correct)))))
(let ((anon31_Then_correct  (=> (NewSyntax.Datte.AA_q |dt_update_tmp#0#Z#0@0|) (and (=> (= (ControlFlow 0 63) (- 0 64)) (NewSyntax.Datte.AA_q |dt_update_tmp#0#Z#0@0|)) (=> (NewSyntax.Datte.AA_q |dt_update_tmp#0#Z#0@0|) (=> (= (ControlFlow 0 63) 62) anon5_correct))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 72) (- 0 73)) (or (or (NewSyntax.Datte.DD_q |d#0|) (NewSyntax.Datte.BB_q |d#0|)) (NewSyntax.Datte.AA_q |d#0|))) (=> (or (or (NewSyntax.Datte.DD_q |d#0|) (NewSyntax.Datte.BB_q |d#0|)) (NewSyntax.Datte.AA_q |d#0|)) (=> (and (= |let#0#0#0| |d#0|) ($Is DatatypeTypeType |let#0#0#0| (Tclass.NewSyntax.Datte TReal))) (=> (and (and (= |dt_update_tmp#0#Z#0@0| |let#0#0#0|) (= |let#1#0#0| (LitInt 5))) (and ($Is intType (int_2_U |let#1#0#0|) TInt) (= |dt_update#x#0#Z#0@0| |let#1#0#0|))) (and (=> (= (ControlFlow 0 72) 63) anon31_Then_correct) (=> (= (ControlFlow 0 72) 71) anon31_Else_correct)))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is DatatypeTypeType |d#0| (Tclass.NewSyntax.Datte TReal)) ($IsAlloc DatatypeTypeType |d#0| (Tclass.NewSyntax.Datte TReal) $Heap)) (|$IsA#NewSyntax.Datte| |d#0|)) (=> (and (and (and (and ($Is DatatypeTypeType |s#0| (Tclass.NewSyntax.Datte TReal)) ($IsAlloc DatatypeTypeType |s#0| (Tclass.NewSyntax.Datte TReal) $Heap)) true) (= 1 $FunctionContextHeight)) (and (not (NewSyntax.Datte.CC_q |d#0|)) (= (ControlFlow 0 74) 72))) anon0_correct)))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 10) (- 11))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 5))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
