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
(declare-fun TagSet () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun tytagFamily$object () T@U)
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
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun EmptySet.__default.m_k (T@U T@U T@U Int) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |EmptySet.__default.m_k#canCall| (T@U T@U Int) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun LitInt (Int) Int)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun |EmptySet.__default.m#canCall| (T@U) Bool)
(declare-fun EmptySet.__default.m (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._System.object () T@U)
(declare-fun null () T@U)
(declare-fun |lambda#1| (Bool) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
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
(assert (distinct TBool TagBool TagSet alloc Tagclass._System.object? Tagclass._System.object tytagFamily$object)
)
(assert (= (Tag TBool) TagBool))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |1282|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (Ctor SetType) 3))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly T@U) ($Heap T@U) (|s#0| T@U) (|j#0| Int) ) (!  (=> (or (|EmptySet.__default.m_k#canCall| $Heap |s#0| |j#0|) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) ($Is SetType |s#0| (TSet Tclass._System.object?))) (<= (LitInt 0) |j#0|)))) (and (=> (not (|Set#Equal| |s#0| |Set#Empty|)) (|EmptySet.__default.m#canCall| $Heap)) (= (EmptySet.__default.m_k ($LS $ly) $Heap |s#0| |j#0|) (ite (|Set#Equal| |s#0| |Set#Empty|) true (EmptySet.__default.m $ly $Heap)))))
 :qid |githubissue4144dfy.39:15|
 :skolemid |1699|
 :pattern ( (EmptySet.__default.m_k ($LS $ly) $Heap |s#0| |j#0|) ($IsGoodHeap $Heap))
))))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |1174|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1172|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((a T@U) (b T@U) ) (! (= (|Set#Subset| a b) (forall ((o@@0 T@U) ) (!  (=> (|Set#IsMember| a o@@0) (|Set#IsMember| b o@@0))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |1303|
 :pattern ( (|Set#IsMember| a o@@0))
 :pattern ( (|Set#IsMember| b o@@0))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |1304|
 :pattern ( (|Set#Subset| a b))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1183|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 4)))
(assert (forall ((m@@1 T@U) (bx T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx) (U_2_bool (MapType0Select BoxType boolType m@@1 bx)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |1310|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx))
)))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |1203|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |1204|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (= (Ctor refType) 5))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |1503|
 :pattern ( ($IsBox bx@@1 Tclass._System.object?))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |1506|
 :pattern ( ($IsBox bx@@2 Tclass._System.object))
)))
(assert (forall ((|c#0| T@U) ) (! (= ($Is refType |c#0| Tclass._System.object)  (and ($Is refType |c#0| Tclass._System.object?) (or (not (= |c#0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1507|
 :pattern ( ($Is refType |c#0| Tclass._System.object))
 :pattern ( ($Is refType |c#0| Tclass._System.object?))
)))
(assert (forall ((|l#0| Bool) (|$y#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#1| |l#0|) |$y#0|)) |l#0|)
 :qid |unknown.0:0|
 :skolemid |1724|
 :pattern ( (MapType0Select BoxType boolType (|lambda#1| |l#0|) |$y#0|))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@0 T@U) ($Heap@@0 T@U) ) (!  (=> (or (|EmptySet.__default.m#canCall| $Heap@@0) (and (< 0 $FunctionContextHeight) ($IsGoodHeap $Heap@@0))) (and (|EmptySet.__default.m_k#canCall| $Heap@@0 (Lit SetType |Set#Empty|) (LitInt 0)) (= (EmptySet.__default.m ($LS $ly@@0) $Heap@@0) (EmptySet.__default.m_k $ly@@0 $Heap@@0 (Lit SetType |Set#Empty|) (LitInt 0)))))
 :qid |githubissue4144dfy.33:15|
 :skolemid |1691|
 :pattern ( (EmptySet.__default.m ($LS $ly@@0) $Heap@@0) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (|Set#Equal| a@@0 b@@0) (= a@@0 b@@0))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |1307|
 :pattern ( (|Set#Equal| a@@0 b@@0))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TBool) (and (= ($Box boolType ($Unbox boolType bx@@3)) bx@@3) ($Is boolType ($Unbox boolType bx@@3) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |1186|
 :pattern ( ($IsBox bx@@3 TBool))
)))
(assert (forall (($ly@@1 T@U) ($Heap@@1 T@U) ) (! (= (EmptySet.__default.m ($LS $ly@@1) $Heap@@1) (EmptySet.__default.m $ly@@1 $Heap@@1))
 :qid |githubissue4144dfy.33:15|
 :skolemid |1685|
 :pattern ( (EmptySet.__default.m ($LS $ly@@1) $Heap@@1))
)))
(assert (forall ((v@@0 T@U) (t T@U) (T@@1 T@T) ) (! (= ($IsBox ($Box T@@1 v@@0) t) ($Is T@@1 v@@0 t))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1195|
 :pattern ( ($IsBox ($Box T@@1 v@@0) t))
)))
(assert (forall (($ly@@2 T@U) ($Heap@@2 T@U) (|s#0@@0| T@U) (|j#0@@0| Int) ) (! (= (EmptySet.__default.m_k ($LS $ly@@2) $Heap@@2 |s#0@@0| |j#0@@0|) (EmptySet.__default.m_k $ly@@2 $Heap@@2 |s#0@@0| |j#0@@0|))
 :qid |githubissue4144dfy.39:15|
 :skolemid |1693|
 :pattern ( (EmptySet.__default.m_k ($LS $ly@@2) $Heap@@2 |s#0@@0| |j#0@@0|))
)))
(assert (forall (($o T@U) ) (! ($Is refType $o Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |1504|
 :pattern ( ($Is refType $o Tclass._System.object?))
)))
(assert (forall ((t@@0 T@U) ) (! (= (Inv0_TSet (TSet t@@0)) t@@0)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1158|
 :pattern ( (TSet t@@0))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Tag (TSet t@@1)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |1159|
 :pattern ( (TSet t@@1))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1182|
 :pattern ( ($Box T@@2 x@@5))
)))
(assert  (and (and (and (and (and (forall ((t0@@1 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@1 t1@@0 t2 (MapType1Store t0@@1 t1@@0 t2 m@@2 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@3 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@3 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@3 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@4 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@4 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))) (= (Ctor FieldType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0@@0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@0 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1| |l#2| |l#3|) $o@@0 $f))  (=> (and (or (not (= $o@@0 |l#0@@0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@0) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1723|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1| |l#2| |l#3|) $o@@0 $f))
)))
(assert (forall ((bx@@4 T@U) (t@@2 T@U) ) (!  (=> ($IsBox bx@@4 (TSet t@@2)) (and (= ($Box SetType ($Unbox SetType bx@@4)) bx@@4) ($Is SetType ($Unbox SetType bx@@4) (TSet t@@2))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |1189|
 :pattern ( ($IsBox bx@@4 (TSet t@@2)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@1 b@@1) (forall ((o@@1 T@U) ) (! (= (|Set#IsMember| a@@1 o@@1) (|Set#IsMember| b@@1 o@@1))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |1305|
 :pattern ( (|Set#IsMember| a@@1 o@@1))
 :pattern ( (|Set#IsMember| b@@1 o@@1))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |1306|
 :pattern ( (|Set#Equal| a@@1 b@@1))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |1175|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@7)) (Lit BoxType ($Box T@@3 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1173|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@7)))
)))
(assert (forall ((v@@1 T@U) ) (! ($Is boolType v@@1 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |1199|
 :pattern ( ($Is boolType v@@1 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |s#0@@1| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun $Heap@@3 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |j#0@@1| () Int)
(set-info :boogie-vc-id CheckWellformed$$EmptySet.__default.m_k)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon8_Else_correct  (=> (and (not (|Set#Equal| |s#0@@1| |Set#Empty|)) (= (ControlFlow 0 4) (- 0 3))) (and (|Set#Subset| (|Set#FromBoogieMap| (|lambda#1| false)) |s#0@@1|) (not (|Set#Subset| |s#0@@1| (|Set#FromBoogieMap| (|lambda#1| false))))))))
(let ((anon8_Then_correct true))
(let ((anon7_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap@@3 alloc false)) (and (and (=> (= (ControlFlow 0 5) 1) anon7_Then_correct) (=> (= (ControlFlow 0 5) 2) anon8_Then_correct)) (=> (= (ControlFlow 0 5) 4) anon8_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@3) ($IsHeapAnchor $Heap@@3)) (=> (and (and ($Is SetType |s#0@@1| (TSet Tclass._System.object?)) (<= (LitInt 0) |j#0@@1|)) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 6) 5))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
