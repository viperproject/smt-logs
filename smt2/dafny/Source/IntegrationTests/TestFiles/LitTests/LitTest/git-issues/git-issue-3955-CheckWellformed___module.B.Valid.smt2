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
(declare-fun allocName () T@U)
(declare-fun class._module.A? () T@U)
(declare-fun Tagclass._module.A? () T@U)
(declare-fun Tagclass._module.A () T@U)
(declare-fun |##_module.B.B| () T@U)
(declare-fun Tagclass._module.B () T@U)
(declare-fun tytagFamily$A () T@U)
(declare-fun tytagFamily$B () T@U)
(declare-fun field$x () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.A.Valid (T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.A.Valid#canCall| (T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.A () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun _module.A.x () T@U)
(declare-fun LitInt (Int) Int)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun Tclass._module.A? () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun _module.B.B_q (T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.B () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun _module.B.Valid (Bool T@U T@U) Bool)
(declare-fun |_module.B.Valid#canCall| (T@U T@U) Bool)
(declare-fun _module.B.a (T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.B.B| (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun DeclType (T@U) T@U)
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
(assert (distinct TBool TInt TagBool TagInt alloc allocName class._module.A? Tagclass._module.A? Tagclass._module.A |##_module.B.B| Tagclass._module.B tytagFamily$A tytagFamily$B field$x)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert  (and (and (and (and (and (and (and (= (Ctor refType) 3) (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (this T@U) ) (!  (=> (or (|_module.A.Valid#canCall| $Heap this) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.A) ($IsAlloc refType this Tclass._module.A $Heap)))))) (= (_module.A.Valid $Heap this) (>= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.A.x))) (LitInt 0))))
 :qid |gitissue3955dfy.6:13|
 :skolemid |489|
 :pattern ( (_module.A.Valid $Heap this) ($IsGoodHeap $Heap))
))))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.A?)  (or (= $o null) (= (dtype $o) Tclass._module.A?)))
 :qid |unknown.0:0|
 :skolemid |480|
 :pattern ( ($Is refType $o Tclass._module.A?))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.A $h) ($IsAlloc refType |c#0| Tclass._module.A? $h))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.A $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.A? $h))
)))
(assert (= (Ctor DatatypeTypeType) 7))
(assert (forall ((d T@U) ) (!  (=> ($Is DatatypeTypeType d Tclass._module.B) (_module.B.B_q d))
 :qid |unknown.0:0|
 :skolemid |503|
 :pattern ( (_module.B.B_q d) ($Is DatatypeTypeType d Tclass._module.B))
)))
(assert (= (FDim _module.A.x) 0))
(assert (= (FieldOfDecl class._module.A? field$x) _module.A.x))
(assert  (not ($IsGhostField _module.A.x)))
(assert (forall (($o@@0 T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._module.A? $h@@0)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.A? $h@@0))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|_module.B.Valid#canCall| $Heap@@0 this@@0) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and ($Is DatatypeTypeType this@@0 Tclass._module.B) ($IsAlloc DatatypeTypeType this@@0 Tclass._module.B $Heap@@0))))) (and (and (_module.B.B_q this@@0) (|_module.A.Valid#canCall| $Heap@@0 (_module.B.a this@@0))) (= (_module.B.Valid true $Heap@@0 this@@0) (_module.A.Valid $Heap@@0 (_module.B.a this@@0)))))
 :qid |gitissue3955dfy.14:20|
 :skolemid |510|
 :pattern ( (_module.B.Valid true $Heap@@0 this@@0) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((d@@0 T@U) ) (! (= (_module.B.B_q d@@0) (= (DatatypeCtorId d@@0) |##_module.B.B|))
 :qid |unknown.0:0|
 :skolemid |493|
 :pattern ( (_module.B.B_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.B.B_q d@@1) (exists ((|a#1#0#0| T@U) ) (! (= d@@1 (|#_module.B.B| |a#1#0#0|))
 :qid |gitissue3955dfy.12:3|
 :skolemid |494|
)))
 :qid |unknown.0:0|
 :skolemid |495|
 :pattern ( (_module.B.B_q d@@1))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h@@1 T@U) ($o@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@1) (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) Tclass._module.A?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) _module.A.x)) TInt $h@@1))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |483|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) _module.A.x)))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@2 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@2 $f))  (=> (and (or (not (= $o@@2 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@2) |l#2|)))) (= $o@@2 |l#3|)))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |528|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@2 $f))
)))
(assert (forall ((|a#2#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.B.B| |a#2#0#0|) Tclass._module.B) ($Is refType |a#2#0#0| Tclass._module.A))
 :qid |gitissue3955dfy.12:3|
 :skolemid |497|
 :pattern ( ($Is DatatypeTypeType (|#_module.B.B| |a#2#0#0|) Tclass._module.B))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._module.A)  (and ($Is refType |c#0@@0| Tclass._module.A?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( ($Is refType |c#0@@0| Tclass._module.A))
 :pattern ( ($Is refType |c#0@@0| Tclass._module.A?))
)))
(assert (forall ((|a#2#0#0@@0| T@U) ($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) (= ($IsAlloc DatatypeTypeType (|#_module.B.B| |a#2#0#0@@0|) Tclass._module.B $h@@2) ($IsAlloc refType |a#2#0#0@@0| Tclass._module.A $h@@2)))
 :qid |gitissue3955dfy.12:3|
 :skolemid |498|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.B.B| |a#2#0#0@@0|) Tclass._module.B $h@@2))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((|a#0#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.B.B| |a#0#0#0|)) |##_module.B.B|)
 :qid |gitissue3955dfy.12:3|
 :skolemid |492|
 :pattern ( (|#_module.B.B| |a#0#0#0|))
)))
(assert (forall ((|a#4#0#0| T@U) ) (! (= (_module.B.a (|#_module.B.B| |a#4#0#0|)) |a#4#0#0|)
 :qid |gitissue3955dfy.12:3|
 :skolemid |501|
 :pattern ( (|#_module.B.B| |a#4#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@5))
)))
(assert (forall (($h@@3 T@U) ($o@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) Tclass._module.A?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) _module.A.x)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |482|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) _module.A.x)))
)))
(assert (= (Tag Tclass._module.A?) Tagclass._module.A?))
(assert (= (TagFamily Tclass._module.A?) tytagFamily$A))
(assert (= (Tag Tclass._module.A) Tagclass._module.A))
(assert (= (TagFamily Tclass._module.A) tytagFamily$A))
(assert (= (Tag Tclass._module.B) Tagclass._module.B))
(assert (= (TagFamily Tclass._module.B) tytagFamily$B))
(assert (forall ((d@@2 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_module.B.B_q d@@2) ($IsAlloc DatatypeTypeType d@@2 Tclass._module.B $h@@4))) ($IsAlloc refType (_module.B.a d@@2) Tclass._module.A $h@@4))
 :qid |unknown.0:0|
 :skolemid |499|
 :pattern ( ($IsAlloc refType (_module.B.a d@@2) Tclass._module.A $h@@4))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#3#0#0| T@U) ) (! (= (|#_module.B.B| (Lit refType |a#3#0#0|)) (Lit DatatypeTypeType (|#_module.B.B| |a#3#0#0|)))
 :qid |gitissue3955dfy.12:3|
 :skolemid |500|
 :pattern ( (|#_module.B.B| (Lit refType |a#3#0#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@7)) (Lit BoxType ($Box T@@3 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@7)))
)))
(assert (forall ((h@@0 T@U) (v@@0 T@U) ) (! ($IsAlloc intType v@@0 TInt h@@0)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@0 TInt h@@0))
)))
(assert (forall ((h@@1 T@U) (v@@1 T@U) ) (! ($IsAlloc boolType v@@1 TBool h@@1)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@1 TBool h@@1))
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
(declare-fun this@@1 () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun reveal__module.B.Valid () Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.B.Valid)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon5_Else_correct  (=> (_module.B.B_q this@@1) (and (=> (= (ControlFlow 0 3) (- 0 4)) (or (not (= (_module.B.a this@@1) null)) (not true))) (=> (or (not (= (_module.B.a this@@1) null)) (not true)) (=> (and (and (and ($IsAllocBox ($Box refType (_module.B.a this@@1)) Tclass._module.A? $Heap@@1) (= |b$reqreads#0@0| (forall (($o@@4 T@U) ($f@@0 T@U) ) (!  (=> (and (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@4) alloc)))) (= $o@@4 (_module.B.a this@@1))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@4 $f@@0)))
 :qid |gitissue3955dfy.17:7|
 :skolemid |511|
)))) (and (|_module.A.Valid#canCall| $Heap@@1 (_module.B.a this@@1)) (= (_module.B.Valid reveal__module.B.Valid $Heap@@1 this@@1) (_module.A.Valid $Heap@@1 (_module.B.a this@@1))))) (and (and (_module.B.B_q this@@1) (|_module.A.Valid#canCall| $Heap@@1 (_module.B.a this@@1))) (and ($Is boolType (bool_2_U (_module.B.Valid reveal__module.B.Valid $Heap@@1 this@@1)) TBool) (= (ControlFlow 0 3) (- 0 2))))) |b$reqreads#0@0|))))))
(let ((anon5_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap@@1 alloc (_module.B.a this@@1))) (=> (and (_module.B.B_q this@@1) (_module.B.B_q this@@1)) (and (=> (= (ControlFlow 0 5) 1) anon5_Then_correct) (=> (= (ControlFlow 0 5) 3) anon5_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (=> (and (and ($Is DatatypeTypeType this@@1 Tclass._module.B) ($IsAlloc DatatypeTypeType this@@1 Tclass._module.B $Heap@@1)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 6) 5))) anon0_correct))))
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
