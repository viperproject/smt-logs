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
(declare-fun TagSet () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._module.uint32 () T@U)
(declare-fun tytagFamily$uint32 () T@U)
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
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.uint32 () T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Set#Card| (T@U) Int)
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
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct TagSet alloc Tagclass._module.uint32 tytagFamily$uint32)
)
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |129|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |130|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((|i#0| T@U) ($h T@U) ) (! ($IsAlloc intType |i#0| Tclass._module.uint32 $h)
 :qid |unknown.0:0|
 :skolemid |543|
 :pattern ( ($IsAlloc intType |i#0| Tclass._module.uint32 $h))
)))
(assert (forall ((a@@1 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@1 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |128|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (forall ((s T@U) ) (!  (and (= (= (|Set#Card| s) 0) (= s |Set#Empty|)) (=> (or (not (= (|Set#Card| s) 0)) (not true)) (exists ((x@@5 T@U) ) (! (|Set#IsMember| s x@@5)
 :qid |DafnyPreludebpl.678:20|
 :skolemid |126|
 :pattern ( (|Set#IsMember| s x@@5))
))))
 :qid |DafnyPreludebpl.674:15|
 :skolemid |127|
 :pattern ( (|Set#Card| s))
)))
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
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@1 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@1) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@6 Int) ) (! (= (LitInt x@@6) x@@6)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@6))
)))
(assert (forall ((x@@7 T@U) (T T@T) ) (! (= (Lit T x@@7) x@@7)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@7))
)))
(assert (forall ((x@@8 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@8)) x@@8)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@8))
)))
(assert (= (Ctor SetType) 7))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@1) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.uint32) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) Tclass._module.uint32)))
 :qid |unknown.0:0|
 :skolemid |493|
 :pattern ( ($IsBox bx@@1 Tclass._module.uint32))
)))
(assert (forall ((|i#0@@0| T@U) ) (! (= ($Is intType |i#0@@0| Tclass._module.uint32)  (and (<= (LitInt 0) (U_2_int |i#0@@0|)) (< (U_2_int |i#0@@0|) 4294967296)))
 :qid |unknown.0:0|
 :skolemid |542|
 :pattern ( ($Is intType |i#0@@0| Tclass._module.uint32))
)))
(assert (forall ((a@@2 T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a@@2 c)) (not true)) (=> (and ($HeapSucc a@@2 b) ($HeapSucc b c)) ($HeapSucc a@@2 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@2 b) ($HeapSucc b c))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((s@@0 T@U) ) (! (<= 0 (|Set#Card| s@@0))
 :qid |DafnyPreludebpl.664:15|
 :skolemid |124|
 :pattern ( (|Set#Card| s@@0))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@2 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@2) ($IsAllocBox bx@@2 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@2))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((x@@9 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@9)) x@@9)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@9))
)))
(assert  (and (forall ((t0@@2 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@2 t1@@0 t2 (MapType1Store t0@@2 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
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
 :skolemid |581|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((bx@@3 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@3 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@3)) bx@@3) ($Is SetType ($Unbox SetType bx@@3) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@3 (TSet t@@5)))
)))
(assert (forall ((a@@3 T@U) (x@@10 T@U) ) (!  (=> (|Set#IsMember| a@@3 x@@10) (= (|Set#Card| (|Set#UnionOne| a@@3 x@@10)) (|Set#Card| a@@3)))
 :qid |DafnyPreludebpl.694:15|
 :skolemid |131|
 :pattern ( (|Set#Card| (|Set#UnionOne| a@@3 x@@10)))
)))
(assert (= (Tag Tclass._module.uint32) Tagclass._module.uint32))
(assert (= (TagFamily Tclass._module.uint32) tytagFamily$uint32))
(assert (forall ((x@@11 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@11))) (Lit BoxType ($Box intType (int_2_U x@@11))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@11))))
)))
(assert (forall ((x@@12 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@12)) (Lit BoxType ($Box T@@5 x@@12)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@12)))
)))
(assert (forall ((a@@4 T@U) (x@@13 T@U) ) (!  (=> (not (|Set#IsMember| a@@4 x@@13)) (= (|Set#Card| (|Set#UnionOne| a@@4 x@@13)) (+ (|Set#Card| a@@4) 1)))
 :qid |DafnyPreludebpl.698:15|
 :skolemid |132|
 :pattern ( (|Set#Card| (|Set#UnionOne| a@@4 x@@13)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap@1 () T@U)
(declare-fun |newtype$check#0@0| () Int)
(declare-fun |newtype$check#1@0| () Int)
(declare-fun |newtype$check#2@0| () Int)
(declare-fun |newtype$check#3@0| () Int)
(declare-fun |newtype$check#4@0| () Int)
(declare-fun |newtype$check#5@0| () Int)
(declare-fun |newtype$check#6@0| () Int)
(declare-fun |newtype$check#7@0| () Int)
(declare-fun |newtype$check#8@0| () Int)
(declare-fun |newtype$check#9@0| () Int)
(declare-fun |s#0@0| () T@U)
(declare-fun |s#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.Main)
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
 (=> (= (ControlFlow 0 0) 14) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0)))
 :qid |setsdfy.28:8|
 :skolemid |491|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0))
)) ($HeapSucc $Heap $Heap@0))) (=> (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (forall (($o@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@1) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@1) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@1)))
 :qid |setsdfy.46:8|
 :skolemid |507|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@1))
))) (and ($HeapSucc $Heap@0 $Heap@1) (= |newtype$check#0@0| (LitInt 0)))) (and (=> (= (ControlFlow 0 2) (- 0 13)) (and (<= (LitInt 0) |newtype$check#0@0|) (< |newtype$check#0@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#0@0|) (< |newtype$check#0@0| 4294967296)) (=> (= |newtype$check#1@0| (LitInt 1)) (and (=> (= (ControlFlow 0 2) (- 0 12)) (and (<= (LitInt 0) |newtype$check#1@0|) (< |newtype$check#1@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#1@0|) (< |newtype$check#1@0| 4294967296)) (=> (= |newtype$check#2@0| (LitInt 2)) (and (=> (= (ControlFlow 0 2) (- 0 11)) (and (<= (LitInt 0) |newtype$check#2@0|) (< |newtype$check#2@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#2@0|) (< |newtype$check#2@0| 4294967296)) (=> (= |newtype$check#3@0| (LitInt 3)) (and (=> (= (ControlFlow 0 2) (- 0 10)) (and (<= (LitInt 0) |newtype$check#3@0|) (< |newtype$check#3@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#3@0|) (< |newtype$check#3@0| 4294967296)) (=> (= |newtype$check#4@0| (LitInt 4)) (and (=> (= (ControlFlow 0 2) (- 0 9)) (and (<= (LitInt 0) |newtype$check#4@0|) (< |newtype$check#4@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#4@0|) (< |newtype$check#4@0| 4294967296)) (=> (= |newtype$check#5@0| (LitInt 5)) (and (=> (= (ControlFlow 0 2) (- 0 8)) (and (<= (LitInt 0) |newtype$check#5@0|) (< |newtype$check#5@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#5@0|) (< |newtype$check#5@0| 4294967296)) (=> (= |newtype$check#6@0| (LitInt 6)) (and (=> (= (ControlFlow 0 2) (- 0 7)) (and (<= (LitInt 0) |newtype$check#6@0|) (< |newtype$check#6@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#6@0|) (< |newtype$check#6@0| 4294967296)) (=> (= |newtype$check#7@0| (LitInt 7)) (and (=> (= (ControlFlow 0 2) (- 0 6)) (and (<= (LitInt 0) |newtype$check#7@0|) (< |newtype$check#7@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#7@0|) (< |newtype$check#7@0| 4294967296)) (=> (= |newtype$check#8@0| (LitInt 8)) (and (=> (= (ControlFlow 0 2) (- 0 5)) (and (<= (LitInt 0) |newtype$check#8@0|) (< |newtype$check#8@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#8@0|) (< |newtype$check#8@0| 4294967296)) (=> (= |newtype$check#9@0| (LitInt 9)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (and (<= (LitInt 0) |newtype$check#9@0|) (< |newtype$check#9@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#9@0|) (< |newtype$check#9@0| 4294967296)) (=> (= |s#0@0| (Lit SetType (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 0)))) ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 3)))) ($Box intType (int_2_U (LitInt 4)))) ($Box intType (int_2_U (LitInt 5)))) ($Box intType (int_2_U (LitInt 6)))) ($Box intType (int_2_U (LitInt 7)))) ($Box intType (int_2_U (LitInt 8)))) ($Box intType (int_2_U (LitInt 9)))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall ((|i#1| Int) ) (!  (=> (and (<= (LitInt 0) |i#1|) (< |i#1| 4294967296)) (=> (and (<= (LitInt 0) |i#1|) (< |i#1| 10)) (|Set#IsMember| |s#0@0| ($Box intType (int_2_U |i#1|)))))
 :qid |setsdfy.71:19|
 :skolemid |520|
 :pattern ( (|Set#IsMember| |s#0@0| ($Box intType (int_2_U |i#1|))))
))) (=> (forall ((|i#1@@0| T@U) ) (!  (=> (and (<= (LitInt 0) (U_2_int |i#1@@0|)) (< (U_2_int |i#1@@0|) 4294967296)) (=> (and (<= (LitInt 0) (U_2_int |i#1@@0|)) (< (U_2_int |i#1@@0|) 10)) (|Set#IsMember| |s#0@0| ($Box intType |i#1@@0|))))
 :qid |setsdfy.71:19|
 :skolemid |520|
 :pattern ( (|Set#IsMember| |s#0@0| ($Box intType |i#1@@0|)))
)) (=> (= (ControlFlow 0 2) (- 0 1)) (= (|Set#Card| |s#0@0|) (LitInt 10))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is SetType |s#0| (TSet Tclass._module.uint32)) ($IsAlloc SetType |s#0| (TSet Tclass._module.uint32) $Heap)) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 14) 2))) anon0_correct))))
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
