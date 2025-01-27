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
(declare-fun TagBool () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass.TypeMembers.Tr () T@U)
(declare-fun Tagclass.TypeMembers.Color () T@U)
(declare-fun Tagclass.TypeMembers.Tr? () T@U)
(declare-fun Tagclass.TypeMembers.Small () T@U)
(declare-fun |##TypeMembers.Color.Carrot| () T@U)
(declare-fun |##TypeMembers.Color.Pumpkin| () T@U)
(declare-fun tytagFamily$Tr () T@U)
(declare-fun tytagFamily$Color () T@U)
(declare-fun tytagFamily$Small () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun TypeMembers.Tr.IsFavorite (Bool T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun refType () T@T)
(declare-fun |TypeMembers.Tr.IsFavorite#canCall| (T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass.TypeMembers.Tr () T@U)
(declare-fun TypeMembers.Tr.fav (T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun TypeMembers.Small.IsFavorite (Bool Int) Bool)
(declare-fun |TypeMembers.Small.IsFavorite#canCall| (Int) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass.TypeMembers.Small () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#TypeMembers.Color.Carrot| () T@U)
(declare-fun |#TypeMembers.Color.Pumpkin| () T@U)
(declare-fun Tclass.TypeMembers.Tr? () T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.TypeMembers.Color () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun |TypeMembers.Color#Equal| (T@U T@U) Bool)
(declare-fun TypeMembers.Color.IsFavorite (Bool T@U) Bool)
(declare-fun |TypeMembers.Color.IsFavorite#canCall| (T@U) Bool)
(declare-fun |$IsA#TypeMembers.Color| (T@U) Bool)
(declare-fun TypeMembers.Color.Carrot_q (T@U) Bool)
(declare-fun TypeMembers.Color.Pumpkin_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$TypeMembers.Tr (T@U) Bool)
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
(assert (distinct TBool TagBool alloc Tagclass.TypeMembers.Tr Tagclass.TypeMembers.Color Tagclass.TypeMembers.Tr? Tagclass.TypeMembers.Small |##TypeMembers.Color.Carrot| |##TypeMembers.Color.Pumpkin| tytagFamily$Tr tytagFamily$Color tytagFamily$Small)
)
(assert (= (Ctor refType) 3))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this T@U) ) (!  (=> (or (|TypeMembers.Tr.IsFavorite#canCall| (Lit refType this)) (and (< 1 $FunctionContextHeight) (and (or (not (= this null)) (not true)) ($Is refType this Tclass.TypeMembers.Tr)))) (= (TypeMembers.Tr.IsFavorite true (Lit refType this)) (TypeMembers.Tr.fav (Lit refType this))))
 :qid |OpaqueFunctionsdfy.295:25|
 :weight 3
 :skolemid |7541|
 :pattern ( (TypeMembers.Tr.IsFavorite true (Lit refType this)))
))))
(assert (= (Tag TBool) TagBool))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@0 Int) ) (!  (=> (or (|TypeMembers.Small.IsFavorite#canCall| this@@0) (and (< 0 $FunctionContextHeight) (and (<= (LitInt 30) this@@0) (< this@@0 40)))) (= (TypeMembers.Small.IsFavorite true this@@0) (= this@@0 (LitInt 34))))
 :qid |OpaqueFunctionsdfy.315:25|
 :skolemid |7570|
 :pattern ( (TypeMembers.Small.IsFavorite true this@@0))
))))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass.TypeMembers.Small $h)
 :qid |unknown.0:0|
 :skolemid |7567|
 :pattern ( ($IsAlloc intType |x#0| Tclass.TypeMembers.Small $h))
)))
(assert (= (DatatypeCtorId |#TypeMembers.Color.Carrot|) |##TypeMembers.Color.Carrot|))
(assert (= (DatatypeCtorId |#TypeMembers.Color.Pumpkin|) |##TypeMembers.Color.Pumpkin|))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass.TypeMembers.Tr $h@@0) ($IsAlloc refType |c#0| Tclass.TypeMembers.Tr? $h@@0))
 :qid |unknown.0:0|
 :skolemid |7547|
 :pattern ( ($IsAlloc refType |c#0| Tclass.TypeMembers.Tr $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass.TypeMembers.Tr? $h@@0))
)))
(assert (= (Ctor DatatypeTypeType) 4))
(assert ($Is DatatypeTypeType |#TypeMembers.Color.Carrot| Tclass.TypeMembers.Color))
(assert ($Is DatatypeTypeType |#TypeMembers.Color.Pumpkin| Tclass.TypeMembers.Color))
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
(assert (forall (($o T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o Tclass.TypeMembers.Tr? $h@@1)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |7535|
 :pattern ( ($IsAlloc refType $o Tclass.TypeMembers.Tr? $h@@1))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@1 Int) ) (!  (=> (or (|TypeMembers.Small.IsFavorite#canCall| (LitInt this@@1)) (and (< 0 $FunctionContextHeight) (and (<= (LitInt 30) this@@1) (< this@@1 40)))) (= (TypeMembers.Small.IsFavorite true (LitInt this@@1)) (= (LitInt this@@1) (LitInt 34))))
 :qid |OpaqueFunctionsdfy.315:25|
 :weight 3
 :skolemid |7571|
 :pattern ( (TypeMembers.Small.IsFavorite true (LitInt this@@1)))
))))
(assert (forall ((a T@U) (b T@U) ) (! (= (|TypeMembers.Color#Equal| a b) (= a b))
 :qid |unknown.0:0|
 :skolemid |7557|
 :pattern ( (|TypeMembers.Color#Equal| a b))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |7050|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |7048|
 :pattern ( (Lit T x@@3))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@2 T@U) ) (!  (=> (or (|TypeMembers.Color.IsFavorite#canCall| this@@2) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType this@@2 Tclass.TypeMembers.Color))) (and (|$IsA#TypeMembers.Color| this@@2) (= (TypeMembers.Color.IsFavorite true this@@2) (|TypeMembers.Color#Equal| this@@2 |#TypeMembers.Color.Pumpkin|))))
 :qid |OpaqueFunctionsdfy.305:25|
 :skolemid |7560|
 :pattern ( (TypeMembers.Color.IsFavorite true this@@2))
))))
(assert (forall ((d T@U) ) (! (= (TypeMembers.Color.Carrot_q d) (= (DatatypeCtorId d) |##TypeMembers.Color.Carrot|))
 :qid |unknown.0:0|
 :skolemid |7548|
 :pattern ( (TypeMembers.Color.Carrot_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (TypeMembers.Color.Pumpkin_q d@@0) (= (DatatypeCtorId d@@0) |##TypeMembers.Color.Pumpkin|))
 :qid |unknown.0:0|
 :skolemid |7550|
 :pattern ( (TypeMembers.Color.Pumpkin_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |7059|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (=> (< 0 $FunctionContextHeight) (forall (($h@@2 T@U) ($o@@0 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@0 null)) (not true)) ($Is refType $o@@0 Tclass.TypeMembers.Tr?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@0) alloc)))) ($IsAlloc boolType (bool_2_U (TypeMembers.Tr.fav $o@@0)) TBool $h@@2))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |7537|
 :pattern ( (TypeMembers.Tr.fav $o@@0) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@0) alloc)))
))))
(assert (forall ((d@@1 T@U) ) (!  (=> (TypeMembers.Color.Carrot_q d@@1) (= d@@1 |#TypeMembers.Color.Carrot|))
 :qid |unknown.0:0|
 :skolemid |7549|
 :pattern ( (TypeMembers.Color.Carrot_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (TypeMembers.Color.Pumpkin_q d@@2) (= d@@2 |#TypeMembers.Color.Pumpkin|))
 :qid |unknown.0:0|
 :skolemid |7551|
 :pattern ( (TypeMembers.Color.Pumpkin_q d@@2))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |7072|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@3 T@U) ) (!  (=> (or (|TypeMembers.Color.IsFavorite#canCall| (Lit DatatypeTypeType this@@3)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType this@@3 Tclass.TypeMembers.Color))) (and (|$IsA#TypeMembers.Color| (Lit DatatypeTypeType this@@3)) (= (TypeMembers.Color.IsFavorite true (Lit DatatypeTypeType this@@3)) (|TypeMembers.Color#Equal| this@@3 |#TypeMembers.Color.Pumpkin|))))
 :qid |OpaqueFunctionsdfy.305:25|
 :weight 3
 :skolemid |7561|
 :pattern ( (TypeMembers.Color.IsFavorite true (Lit DatatypeTypeType this@@3)))
))))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass.TypeMembers.Tr)  (and ($Is refType |c#0@@0| Tclass.TypeMembers.Tr?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |7546|
 :pattern ( ($Is refType |c#0@@0| Tclass.TypeMembers.Tr))
 :pattern ( ($Is refType |c#0@@0| Tclass.TypeMembers.Tr?))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (|$IsA#TypeMembers.Color| d@@3) (or (TypeMembers.Color.Carrot_q d@@3) (TypeMembers.Color.Pumpkin_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |7553|
 :pattern ( (|$IsA#TypeMembers.Color| d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> ($Is DatatypeTypeType d@@4 Tclass.TypeMembers.Color) (or (TypeMembers.Color.Carrot_q d@@4) (TypeMembers.Color.Pumpkin_q d@@4)))
 :qid |unknown.0:0|
 :skolemid |7554|
 :pattern ( (TypeMembers.Color.Pumpkin_q d@@4) ($Is DatatypeTypeType d@@4 Tclass.TypeMembers.Color))
 :pattern ( (TypeMembers.Color.Carrot_q d@@4) ($Is DatatypeTypeType d@@4 Tclass.TypeMembers.Color))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (and (TypeMembers.Color.Carrot_q a@@0) (TypeMembers.Color.Carrot_q b@@0)) (|TypeMembers.Color#Equal| a@@0 b@@0))
 :qid |unknown.0:0|
 :skolemid |7555|
 :pattern ( (|TypeMembers.Color#Equal| a@@0 b@@0) (TypeMembers.Color.Carrot_q a@@0))
 :pattern ( (|TypeMembers.Color#Equal| a@@0 b@@0) (TypeMembers.Color.Carrot_q b@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (and (TypeMembers.Color.Pumpkin_q a@@1) (TypeMembers.Color.Pumpkin_q b@@1)) (|TypeMembers.Color#Equal| a@@1 b@@1))
 :qid |unknown.0:0|
 :skolemid |7556|
 :pattern ( (|TypeMembers.Color#Equal| a@@1 b@@1) (TypeMembers.Color.Pumpkin_q a@@1))
 :pattern ( (|TypeMembers.Color#Equal| a@@1 b@@1) (TypeMembers.Color.Pumpkin_q b@@1))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |7058|
 :pattern ( ($Box T@@2 x@@5))
)))
(assert  (=> (< 0 $FunctionContextHeight) (forall (($o@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) ($Is refType $o@@1 Tclass.TypeMembers.Tr?)) ($Is boolType (bool_2_U (TypeMembers.Tr.fav $o@@1)) TBool))
 :qid |unknown.0:0|
 :skolemid |7536|
 :pattern ( (TypeMembers.Tr.fav $o@@1))
))))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@2 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@2 $f))  (=> (and (or (not (= $o@@2 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@2) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |8292|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@2 $f))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@4 T@U) ) (!  (=> (or (|TypeMembers.Tr.IsFavorite#canCall| this@@4) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@4 null)) (not true)) ($Is refType this@@4 Tclass.TypeMembers.Tr)))) (= (TypeMembers.Tr.IsFavorite true this@@4) (TypeMembers.Tr.fav this@@4)))
 :qid |OpaqueFunctionsdfy.295:25|
 :skolemid |7540|
 :pattern ( (TypeMembers.Tr.IsFavorite true this@@4))
))))
(assert (forall ((d@@5 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) ($Is DatatypeTypeType d@@5 Tclass.TypeMembers.Color)) ($IsAlloc DatatypeTypeType d@@5 Tclass.TypeMembers.Color $h@@3))
 :qid |unknown.0:0|
 :skolemid |7552|
 :pattern ( ($IsAlloc DatatypeTypeType d@@5 Tclass.TypeMembers.Color $h@@3))
)))
(assert (= (Tag Tclass.TypeMembers.Tr) Tagclass.TypeMembers.Tr))
(assert (= (TagFamily Tclass.TypeMembers.Tr) tytagFamily$Tr))
(assert (= (Tag Tclass.TypeMembers.Color) Tagclass.TypeMembers.Color))
(assert (= (TagFamily Tclass.TypeMembers.Color) tytagFamily$Color))
(assert (= (Tag Tclass.TypeMembers.Tr?) Tagclass.TypeMembers.Tr?))
(assert (= (TagFamily Tclass.TypeMembers.Tr?) tytagFamily$Tr))
(assert (= (Tag Tclass.TypeMembers.Small) Tagclass.TypeMembers.Small))
(assert (= (TagFamily Tclass.TypeMembers.Small) tytagFamily$Small))
(assert (= |#TypeMembers.Color.Carrot| (Lit DatatypeTypeType |#TypeMembers.Color.Carrot|)))
(assert (= |#TypeMembers.Color.Pumpkin| (Lit DatatypeTypeType |#TypeMembers.Color.Pumpkin|)))
(assert (forall (($o@@3 T@U) ) (! (= ($Is refType $o@@3 Tclass.TypeMembers.Tr?)  (or (= $o@@3 null) (implements$TypeMembers.Tr (dtype $o@@3))))
 :qid |unknown.0:0|
 :skolemid |7534|
 :pattern ( ($Is refType $o@@3 Tclass.TypeMembers.Tr?))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass.TypeMembers.Small)  (and (<= (LitInt 30) (U_2_int |x#0@@0|)) (< (U_2_int |x#0@@0|) 40)))
 :qid |unknown.0:0|
 :skolemid |7566|
 :pattern ( ($Is intType |x#0@@0| Tclass.TypeMembers.Small))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |7051|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@7)) (Lit BoxType ($Box T@@3 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |7049|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@7)))
)))
(assert (forall ((h@@0 T@U) (v@@0 T@U) ) (! ($IsAlloc boolType v@@0 TBool h@@0)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |7096|
 :pattern ( ($IsAlloc boolType v@@0 TBool h@@0))
)))
(assert (forall ((v@@1 T@U) ) (! ($Is boolType v@@1 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |7075|
 :pattern ( ($Is boolType v@@1 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |tr#0| () T@U)
(declare-fun |c#0@@1| () T@U)
(declare-fun |s#0| () Int)
(declare-fun |newtype$check#0_0_0@0| () Int)
(declare-fun reveal_TypeMembers.Tr.IsFavorite () Bool)
(declare-fun reveal_TypeMembers.Color.IsFavorite () Bool)
(declare-fun reveal_TypeMembers.Small.IsFavorite () Bool)
(declare-fun $Heap@3 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |newtype$check#1_0@0| () Int)
(declare-fun $Heap@1 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |newtype$check#4_0@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(set-info :boogie-vc-id Impl$$TypeMembers.__default.Test)
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
 (=> (= (ControlFlow 0 0) 39) (let ((anon16_correct  (=> (and (=> (TypeMembers.Tr.fav |tr#0|) (|$IsA#TypeMembers.Color| |c#0@@1|)) (= (ControlFlow 0 23) (- 0 22))) (or (or (not (TypeMembers.Tr.fav |tr#0|)) (|TypeMembers.Color#Equal| |c#0@@1| |#TypeMembers.Color.Carrot|)) (= |s#0| (LitInt 39))))))
(let ((anon30_Else_correct  (=> (and (or (not (TypeMembers.Tr.fav |tr#0|)) (|TypeMembers.Color#Equal| |c#0@@1| |#TypeMembers.Color.Carrot|)) (= (ControlFlow 0 26) 23)) anon16_correct)))
(let ((anon30_Then_correct  (=> (and (not (or (not (TypeMembers.Tr.fav |tr#0|)) (|TypeMembers.Color#Equal| |c#0@@1| |#TypeMembers.Color.Carrot|))) (= |newtype$check#0_0_0@0| (LitInt 39))) (and (=> (= (ControlFlow 0 24) (- 0 25)) (and (<= (LitInt 30) |newtype$check#0_0_0@0|) (< |newtype$check#0_0_0@0| 40))) (=> (and (<= (LitInt 30) |newtype$check#0_0_0@0|) (< |newtype$check#0_0_0@0| 40)) (=> (= (ControlFlow 0 24) 23) anon16_correct))))))
(let ((anon29_Else_correct  (=> (not (TypeMembers.Tr.fav |tr#0|)) (and (=> (= (ControlFlow 0 28) 24) anon30_Then_correct) (=> (= (ControlFlow 0 28) 26) anon30_Else_correct)))))
(let ((anon29_Then_correct  (=> (TypeMembers.Tr.fav |tr#0|) (and (=> (= (ControlFlow 0 27) 24) anon30_Then_correct) (=> (= (ControlFlow 0 27) 26) anon30_Else_correct)))))
(let ((anon28_Then_correct  (=> (and (and (and (and (TypeMembers.Tr.IsFavorite reveal_TypeMembers.Tr.IsFavorite |tr#0|) (TypeMembers.Color.IsFavorite reveal_TypeMembers.Color.IsFavorite |c#0@@1|)) (TypeMembers.Small.IsFavorite reveal_TypeMembers.Small.IsFavorite |s#0|)) (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (and (= $Heap $Heap@3) reveal_TypeMembers.Tr.IsFavorite))) (and (and (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (and (= $Heap@3 $Heap@4) reveal_TypeMembers.Color.IsFavorite)) (and (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)) (and (= $Heap@4 $Heap@5) reveal_TypeMembers.Small.IsFavorite)))) (and (=> (= (ControlFlow 0 29) (- 0 30)) (or (not (= |tr#0| null)) (not true))) (and (=> (= (ControlFlow 0 29) 27) anon29_Then_correct) (=> (= (ControlFlow 0 29) 28) anon29_Else_correct))))))
(let ((anon28_Else_correct true))
(let ((anon11_correct  (=> (and (|TypeMembers.Tr.IsFavorite#canCall| |tr#0|) (=> (TypeMembers.Tr.IsFavorite reveal_TypeMembers.Tr.IsFavorite |tr#0|) (and (|TypeMembers.Color.IsFavorite#canCall| |c#0@@1|) (=> (TypeMembers.Color.IsFavorite reveal_TypeMembers.Color.IsFavorite |c#0@@1|) (|TypeMembers.Small.IsFavorite#canCall| |s#0|))))) (and (=> (= (ControlFlow 0 31) 29) anon28_Then_correct) (=> (= (ControlFlow 0 31) 21) anon28_Else_correct)))))
(let ((anon27_Else_correct  (=> (and (not (and (TypeMembers.Tr.IsFavorite reveal_TypeMembers.Tr.IsFavorite |tr#0|) (TypeMembers.Color.IsFavorite reveal_TypeMembers.Color.IsFavorite |c#0@@1|))) (= (ControlFlow 0 33) 31)) anon11_correct)))
(let ((anon27_Then_correct  (=> (and (and (and (TypeMembers.Tr.IsFavorite reveal_TypeMembers.Tr.IsFavorite |tr#0|) (TypeMembers.Color.IsFavorite reveal_TypeMembers.Color.IsFavorite |c#0@@1|)) ($IsAllocBox ($Box intType (int_2_U |s#0|)) Tclass.TypeMembers.Small $Heap)) (and (|TypeMembers.Small.IsFavorite#canCall| |s#0|) (= (ControlFlow 0 32) 31))) anon11_correct)))
(let ((anon26_Else_correct  (=> (not (TypeMembers.Tr.IsFavorite reveal_TypeMembers.Tr.IsFavorite |tr#0|)) (and (=> (= (ControlFlow 0 35) 32) anon27_Then_correct) (=> (= (ControlFlow 0 35) 33) anon27_Else_correct)))))
(let ((anon26_Then_correct  (=> (TypeMembers.Tr.IsFavorite reveal_TypeMembers.Tr.IsFavorite |tr#0|) (=> (and ($IsAllocBox ($Box DatatypeTypeType |c#0@@1|) Tclass.TypeMembers.Color $Heap) (|TypeMembers.Color.IsFavorite#canCall| |c#0@@1|)) (and (=> (= (ControlFlow 0 34) 32) anon27_Then_correct) (=> (= (ControlFlow 0 34) 33) anon27_Else_correct))))))
(let ((anon25_Then_correct  (and (=> (= (ControlFlow 0 36) (- 0 37)) (or (not (= |tr#0| null)) (not true))) (=> (or (not (= |tr#0| null)) (not true)) (=> (and ($IsAllocBox ($Box refType |tr#0|) Tclass.TypeMembers.Tr? $Heap) (|TypeMembers.Tr.IsFavorite#canCall| |tr#0|)) (and (=> (= (ControlFlow 0 36) 34) anon26_Then_correct) (=> (= (ControlFlow 0 36) 35) anon26_Else_correct)))))))
(let ((anon25_Else_correct  (=> (and (|TypeMembers.Tr.IsFavorite#canCall| |tr#0|) (|TypeMembers.Color.IsFavorite#canCall| |c#0@@1|)) (=> (and (and (|TypeMembers.Small.IsFavorite#canCall| |s#0|) (|TypeMembers.Tr.IsFavorite#canCall| |tr#0|)) (and (|TypeMembers.Color.IsFavorite#canCall| |c#0@@1|) (|TypeMembers.Small.IsFavorite#canCall| |s#0|))) (=> (and (and (and (and (and (and (and (not (TypeMembers.Tr.IsFavorite reveal_TypeMembers.Tr.IsFavorite |tr#0|)) (not (TypeMembers.Color.IsFavorite reveal_TypeMembers.Color.IsFavorite |c#0@@1|))) (not (TypeMembers.Small.IsFavorite reveal_TypeMembers.Small.IsFavorite |s#0|))) (not (TypeMembers.Tr.IsFavorite reveal_TypeMembers.Tr.IsFavorite |tr#0|))) (not (TypeMembers.Color.IsFavorite reveal_TypeMembers.Color.IsFavorite |c#0@@1|))) (not (TypeMembers.Small.IsFavorite reveal_TypeMembers.Small.IsFavorite |s#0|))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (= (ControlFlow 0 20) (- 0 19))) false)))))
(let ((anon24_Then_correct  (=> (and (and ($IsAllocBox ($Box intType (int_2_U |s#0|)) Tclass.TypeMembers.Small $Heap) (|TypeMembers.Small.IsFavorite#canCall| |s#0|)) (and (|TypeMembers.Small.IsFavorite#canCall| |s#0|) (TypeMembers.Small.IsFavorite reveal_TypeMembers.Small.IsFavorite |s#0|))) (=> (and (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (= $Heap $Heap@2)) (and reveal_TypeMembers.Small.IsFavorite (= |newtype$check#1_0@0| (LitInt 34)))) (and (=> (= (ControlFlow 0 17) (- 0 18)) (and (<= (LitInt 30) |newtype$check#1_0@0|) (< |newtype$check#1_0@0| 40))) (=> (and (<= (LitInt 30) |newtype$check#1_0@0|) (< |newtype$check#1_0@0| 40)) (=> (= (ControlFlow 0 17) (- 0 16)) (= |s#0| (LitInt 34)))))))))
(let ((anon23_Then_correct  (=> (and ($IsAllocBox ($Box DatatypeTypeType |c#0@@1|) Tclass.TypeMembers.Color $Heap) (|TypeMembers.Color.IsFavorite#canCall| |c#0@@1|)) (=> (and (and (and (|TypeMembers.Color.IsFavorite#canCall| |c#0@@1|) (TypeMembers.Color.IsFavorite reveal_TypeMembers.Color.IsFavorite |c#0@@1|)) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1))) (and (and (= $Heap $Heap@1) reveal_TypeMembers.Color.IsFavorite) (and (|$IsA#TypeMembers.Color| |c#0@@1|) (= (ControlFlow 0 15) (- 0 14))))) (|TypeMembers.Color#Equal| |c#0@@1| |#TypeMembers.Color.Pumpkin|)))))
(let ((anon22_Then_correct  (and (=> (= (ControlFlow 0 11) (- 0 13)) (or (not (= |tr#0| null)) (not true))) (=> (or (not (= |tr#0| null)) (not true)) (=> (and (and (and ($IsAllocBox ($Box refType |tr#0|) Tclass.TypeMembers.Tr? $Heap) (|TypeMembers.Tr.IsFavorite#canCall| |tr#0|)) (and (|TypeMembers.Tr.IsFavorite#canCall| |tr#0|) (TypeMembers.Tr.IsFavorite reveal_TypeMembers.Tr.IsFavorite |tr#0|))) (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap $Heap@0) reveal_TypeMembers.Tr.IsFavorite))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (or (not (= |tr#0| null)) (not true))) (=> (= (ControlFlow 0 11) (- 0 10)) (TypeMembers.Tr.fav |tr#0|))))))))
(let ((anon21_Then_correct  (=> ($IsAllocBox ($Box intType (int_2_U |s#0|)) Tclass.TypeMembers.Small $Heap) (=> (and (and (|TypeMembers.Small.IsFavorite#canCall| |s#0|) (|TypeMembers.Small.IsFavorite#canCall| |s#0|)) (and (TypeMembers.Small.IsFavorite reveal_TypeMembers.Small.IsFavorite |s#0|) (= |newtype$check#4_0@0| (LitInt 34)))) (and (=> (= (ControlFlow 0 8) (- 0 9)) (and (<= (LitInt 30) |newtype$check#4_0@0|) (< |newtype$check#4_0@0| 40))) (=> (and (<= (LitInt 30) |newtype$check#4_0@0|) (< |newtype$check#4_0@0| 40)) (=> (= (ControlFlow 0 8) (- 0 7)) (= |s#0| (LitInt 34)))))))))
(let ((anon20_Then_correct  (=> (and ($IsAllocBox ($Box DatatypeTypeType |c#0@@1|) Tclass.TypeMembers.Color $Heap) (|TypeMembers.Color.IsFavorite#canCall| |c#0@@1|)) (=> (and (and (|TypeMembers.Color.IsFavorite#canCall| |c#0@@1|) (TypeMembers.Color.IsFavorite reveal_TypeMembers.Color.IsFavorite |c#0@@1|)) (and (|$IsA#TypeMembers.Color| |c#0@@1|) (= (ControlFlow 0 6) (- 0 5)))) (|TypeMembers.Color#Equal| |c#0@@1| |#TypeMembers.Color.Pumpkin|)))))
(let ((anon19_Then_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (not (= |tr#0| null)) (not true))) (=> (or (not (= |tr#0| null)) (not true)) (=> (and (and ($IsAllocBox ($Box refType |tr#0|) Tclass.TypeMembers.Tr? $Heap) (|TypeMembers.Tr.IsFavorite#canCall| |tr#0|)) (and (|TypeMembers.Tr.IsFavorite#canCall| |tr#0|) (TypeMembers.Tr.IsFavorite reveal_TypeMembers.Tr.IsFavorite |tr#0|))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= |tr#0| null)) (not true))) (=> (= (ControlFlow 0 2) (- 0 1)) (TypeMembers.Tr.fav |tr#0|))))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (and (and (and (and (and (=> (= (ControlFlow 0 38) 2) anon19_Then_correct) (=> (= (ControlFlow 0 38) 6) anon20_Then_correct)) (=> (= (ControlFlow 0 38) 8) anon21_Then_correct)) (=> (= (ControlFlow 0 38) 11) anon22_Then_correct)) (=> (= (ControlFlow 0 38) 15) anon23_Then_correct)) (=> (= (ControlFlow 0 38) 17) anon24_Then_correct)) (=> (= (ControlFlow 0 38) 36) anon25_Then_correct)) (=> (= (ControlFlow 0 38) 20) anon25_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and ($Is refType |tr#0| Tclass.TypeMembers.Tr) ($IsAlloc refType |tr#0| Tclass.TypeMembers.Tr $Heap))) (=> (and (and (and ($Is DatatypeTypeType |c#0@@1| Tclass.TypeMembers.Color) ($IsAlloc DatatypeTypeType |c#0@@1| Tclass.TypeMembers.Color $Heap)) (|$IsA#TypeMembers.Color| |c#0@@1|)) (and (and (<= (LitInt 30) |s#0|) (< |s#0| 40)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 39) 38)))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 8) (- 7))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 6) (- 5))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 23) (- 22))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
