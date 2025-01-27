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
(declare-fun TagSet () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.nat () T@U)
(declare-fun tytagFamily$nat () T@U)
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
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.BitSet (Int) T@U)
(declare-fun |_module.__default.BitSet#canCall| (Int) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun _module.__default.Bit (T@U Int Int) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.__default.Bit#canCall| (Int Int) Bool)
(declare-fun Div (Int Int) Int)
(declare-fun Mod (Int Int) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $LZ () T@U)
(declare-fun |lambda#1| (T@U Int Int T@U Int) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |lambda#11| (Int T@U Int T@U) T@U)
(declare-fun _module.__default.Suc (T@U) T@U)
(declare-fun |_module.__default.Suc#canCall| (T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
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
(assert (distinct TInt TagInt TagSet alloc Tagclass._System.nat tytagFamily$nat)
)
(assert (= (Tag TInt) TagInt))
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
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (forall ((a@@1 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@1 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |128|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o))
)))
(assert (forall ((a@@2 T@U) (b T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| b y@@0) (not (|Set#IsMember| (|Set#Difference| a@@2 b) y@@0)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |144|
 :pattern ( (|Set#Difference| a@@2 b) (|Set#IsMember| b y@@0))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (forall ((a@@3 T@U) (b@@0 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@3 b@@0) o@@1)  (and (|Set#IsMember| a@@3 o@@1) (not (|Set#IsMember| b@@0 o@@1))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |143|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@3 b@@0) o@@1))
)))
(assert (= (Ctor SetType) 3))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|n#0| Int) ) (!  (=> (or (|_module.__default.BitSet#canCall| |n#0|) (and (< 1 $FunctionContextHeight) (<= (LitInt 0) |n#0|))) ($Is SetType (_module.__default.BitSet |n#0|) (TSet Tclass._System.nat)))
 :qid |Lucasdowndfy.28:23|
 :skolemid |535|
 :pattern ( (_module.__default.BitSet |n#0|))
))))
(assert (forall ((x@@5 Int) ) (! (= (LitInt x@@5) x@@5)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@5))
)))
(assert (forall ((x@@6 T@U) (T T@T) ) (! (= (Lit T x@@6) x@@6)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@6))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly T@U) (|k#0| Int) (|n#0@@0| Int) ) (!  (=> (or (|_module.__default.Bit#canCall| (LitInt |k#0|) (LitInt |n#0@@0|)) (and (< 0 $FunctionContextHeight) (and (<= (LitInt 0) |k#0|) (<= (LitInt 0) |n#0@@0|)))) (and (=> (or (not (= (LitInt |k#0|) (LitInt 0))) (not true)) (|_module.__default.Bit#canCall| (LitInt (- |k#0| 1)) (LitInt (Div |n#0@@0| (LitInt 2))))) (= (_module.__default.Bit ($LS $ly) (LitInt |k#0|) (LitInt |n#0@@0|)) (ite (= (LitInt |k#0|) (LitInt 0)) (= (LitInt (Mod |n#0@@0| (LitInt 2))) (LitInt 1)) (_module.__default.Bit ($LS $ly) (LitInt (- |k#0| 1)) (LitInt (Div |n#0@@0| (LitInt 2))))))))
 :qid |Lucasdowndfy.20:17|
 :weight 3
 :skolemid |533|
 :pattern ( (_module.__default.Bit ($LS $ly) (LitInt |k#0|) (LitInt |n#0@@0|)))
))))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@7))
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
 :skolemid |153|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx))
)))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|n#0@@1| Int) ) (!  (=> (or (|_module.__default.BitSet#canCall| |n#0@@1|) (and (< 1 $FunctionContextHeight) (<= (LitInt 0) |n#0@@1|))) (and (forall ((|i#0| Int) ) (!  (=> (<= (LitInt 0) |i#0|) (=> (< |i#0| |n#0@@1|) (|_module.__default.Bit#canCall| |i#0| |n#0@@1|)))
 :qid |Lucasdowndfy.30:7|
 :skolemid |537|
 :pattern ( (_module.__default.Bit ($LS $LZ) |i#0| |n#0@@1|))
)) (= (_module.__default.BitSet |n#0@@1|) (|Set#FromBoogieMap| (|lambda#1| TInt (LitInt 0) |n#0@@1| ($LS $LZ) |n#0@@1|)))))
 :qid |Lucasdowndfy.28:23|
 :skolemid |538|
 :pattern ( (_module.__default.BitSet |n#0@@1|))
))))
(assert (forall ((|l#0| T@U) (|l#1| Int) (|l#2| Int) (|l#3| T@U) (|l#4| Int) (|$y#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3| |l#4|) |$y#0|))  (and ($IsBox |$y#0| |l#0|) (and (and (<= |l#1| (U_2_int ($Unbox intType |$y#0|))) (< (U_2_int ($Unbox intType |$y#0|)) |l#2|)) (_module.__default.Bit |l#3| (U_2_int ($Unbox intType |$y#0|)) |l#4|))))
 :qid |DafnyPreludebpl.27:1|
 :skolemid |582|
 :pattern ( (MapType0Select BoxType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3| |l#4|) |$y#0|))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert (forall (($ly@@0 T@U) (|k#0@@0| Int) (|n#0@@2| Int) ) (! (= (_module.__default.Bit ($LS $ly@@0) |k#0@@0| |n#0@@2|) (_module.__default.Bit $ly@@0 |k#0@@0| |n#0@@2|))
 :qid |Lucasdowndfy.20:17|
 :skolemid |528|
 :pattern ( (_module.__default.Bit ($LS $ly@@0) |k#0@@0| |n#0@@2|))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@1 T@U) (|k#0@@1| Int) (|n#0@@3| Int) ) (!  (=> (or (|_module.__default.Bit#canCall| |k#0@@1| |n#0@@3|) (and (< 0 $FunctionContextHeight) (and (<= (LitInt 0) |k#0@@1|) (<= (LitInt 0) |n#0@@3|)))) (and (=> (or (not (= |k#0@@1| (LitInt 0))) (not true)) (|_module.__default.Bit#canCall| (- |k#0@@1| 1) (Div |n#0@@3| (LitInt 2)))) (= (_module.__default.Bit ($LS $ly@@1) |k#0@@1| |n#0@@3|) (ite (= |k#0@@1| (LitInt 0)) (= (Mod |n#0@@3| (LitInt 2)) (LitInt 1)) (_module.__default.Bit $ly@@1 (- |k#0@@1| 1) (Div |n#0@@3| (LitInt 2)))))))
 :qid |Lucasdowndfy.20:17|
 :skolemid |532|
 :pattern ( (_module.__default.Bit ($LS $ly@@1) |k#0@@1| |n#0@@3|))
))))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx@@1 Tclass._System.nat))
)))
(assert (forall ((|l#0@@0| Int) (|l#1@@0| T@U) (|l#2@@0| Int) (|l#3@@0| T@U) (|$y#0@@0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#11| |l#0@@0| |l#1@@0| |l#2@@0| |l#3@@0|) |$y#0@@0|)) (exists ((|x#0@@1| Int) ) (!  (and (and (<= |l#0@@0| |x#0@@1|) (|Set#IsMember| |l#1@@0| ($Box intType (int_2_U |x#0@@1|)))) (= |$y#0@@0| ($Box intType (int_2_U (+ |x#0@@1| |l#2@@0|)))))
 :qid |Lucasdowndfy.78:7|
 :skolemid |561|
 :pattern ( (|Set#IsMember| |l#3@@0| ($Box intType (int_2_U |x#0@@1|))))
)))
 :qid |unknown.0:0|
 :skolemid |583|
 :pattern ( (MapType0Select BoxType boolType (|lambda#11| |l#0@@0| |l#1@@0| |l#2@@0| |l#3@@0|) |$y#0@@0|))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|S#0| T@U) ) (!  (=> (or (|_module.__default.Suc#canCall| |S#0|) (and (< 0 $FunctionContextHeight) ($Is SetType |S#0| (TSet Tclass._System.nat)))) (= (_module.__default.Suc |S#0|) (|Set#FromBoogieMap| (|lambda#11| (LitInt 0) |S#0| 1 |S#0|))))
 :qid |Lucasdowndfy.76:20|
 :skolemid |562|
 :pattern ( (_module.__default.Suc |S#0|))
))))
(assert (forall ((x@@8 Int) (y@@1 Int) ) (! (= (Div x@@8 y@@1) (div x@@8 y@@1))
 :qid |DafnyPreludebpl.1648:14|
 :skolemid |339|
 :pattern ( (Div x@@8 y@@1))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) ) (!  (=> (|Set#Equal| a@@4 b@@1) (= a@@4 b@@1))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@4 b@@1))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|n#0@@4| Int) ) (!  (=> (or (|_module.__default.BitSet#canCall| (LitInt |n#0@@4|)) (and (< 1 $FunctionContextHeight) (<= (LitInt 0) |n#0@@4|))) (and (forall ((|i#1| Int) ) (!  (=> (<= (LitInt 0) |i#1|) (=> (< |i#1| |n#0@@4|) (|_module.__default.Bit#canCall| |i#1| (LitInt |n#0@@4|))))
 :qid |Lucasdowndfy.30:7|
 :skolemid |539|
 :pattern ( (_module.__default.Bit ($LS $LZ) |i#1| |n#0@@4|))
)) (= (_module.__default.BitSet (LitInt |n#0@@4|)) (|Set#FromBoogieMap| (|lambda#1| TInt (LitInt 0) |n#0@@4| ($LS $LZ) (LitInt |n#0@@4|))))))
 :qid |Lucasdowndfy.28:23|
 :weight 3
 :skolemid |540|
 :pattern ( (_module.__default.BitSet (LitInt |n#0@@4|)))
))))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TInt) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@2 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((v@@2 T@U) (t0@@1 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0) (forall ((bx@@3 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@3) ($IsAllocBox bx@@3 t0@@1 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@3))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|S#0@@0| T@U) ) (!  (=> (or (|_module.__default.Suc#canCall| (Lit SetType |S#0@@0|)) (and (< 0 $FunctionContextHeight) ($Is SetType |S#0@@0| (TSet Tclass._System.nat)))) (= (_module.__default.Suc (Lit SetType |S#0@@0|)) (|Set#FromBoogieMap| (|lambda#11| (LitInt 0) (Lit SetType |S#0@@0|) 1 |S#0@@0|))))
 :qid |Lucasdowndfy.76:20|
 :weight 3
 :skolemid |564|
 :pattern ( (_module.__default.Suc (Lit SetType |S#0@@0|)))
))))
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
(assert (forall ((x@@9 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@9)) x@@9)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@9))
)))
(assert  (and (and (and (and (and (and (forall ((t0@@2 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@2 t1@@0 t2 (MapType1Store t0@@2 t1@@0 t2 m@@2 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@3 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@3 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@3 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@4 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@4 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))) (= (Ctor refType) 5)) (= (Ctor FieldType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0@@1| T@U) (|l#1@@1| T@U) (|l#2@@1| T@U) (|l#3@@1| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@1| |l#1@@1| |l#2@@1| |l#3@@1|) $o $f))  (=> (and (or (not (= $o |l#0@@1|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@1| $o) |l#2@@1|)))) |l#3@@1|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |581|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@1| |l#1@@1| |l#2@@1| |l#3@@1|) $o $f))
)))
(assert (forall ((x@@10 Int) (y@@2 Int) ) (! (= (Mod x@@10 y@@2) (mod x@@10 y@@2))
 :qid |DafnyPreludebpl.1649:14|
 :skolemid |340|
 :pattern ( (Mod x@@10 y@@2))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|S#0@@1| T@U) ) (!  (=> (or (|_module.__default.Suc#canCall| |S#0@@1|) (and (< 0 $FunctionContextHeight) ($Is SetType |S#0@@1| (TSet Tclass._System.nat)))) ($Is SetType (_module.__default.Suc |S#0@@1|) (TSet Tclass._System.nat)))
 :qid |Lucasdowndfy.76:20|
 :skolemid |559|
 :pattern ( (_module.__default.Suc |S#0@@1|))
))))
(assert (forall ((bx@@4 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@4 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@4)) bx@@4) ($Is SetType ($Unbox SetType bx@@4) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@4 (TSet t@@3)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (forall ((a@@5 T@U) (b@@2 T@U) ) (! (= (|Set#Equal| a@@5 b@@2) (forall ((o@@2 T@U) ) (! (= (|Set#IsMember| a@@5 o@@2) (|Set#IsMember| b@@2 o@@2))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@5 o@@2))
 :pattern ( (|Set#IsMember| b@@2 o@@2))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@5 b@@2))
)))
(assert (forall ((x@@11 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@11))) (Lit BoxType ($Box intType (int_2_U x@@11))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@11))))
)))
(assert (forall ((x@@12 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@12)) (Lit BoxType ($Box T@@4 x@@12)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@12)))
)))
(assert (forall ((h@@1 T@U) (v@@3 T@U) ) (! ($IsAlloc intType v@@3 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@3 TInt h@@1))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is intType v@@4 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@4 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |x#1_0_0@0| () Int)
(declare-fun |n#0@@5| () Int)
(declare-fun $Heap () T@U)
(declare-fun |##n#1_0_0_1_1@0| () Int)
(declare-fun |##k#1_0_0_1_0@0| () Int)
(declare-fun |##n#1_0_0_1_0@0| () Int)
(declare-fun |##k#1_0_0_2_2@0| () Int)
(declare-fun $Heap@2 () T@U)
(declare-fun |##n#1_0_0_2_2@0| () Int)
(declare-fun |i##1_0_0_2_0_0@0| () Int)
(declare-fun |n##1_0_0_2_0_0@0| () Int)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Heap@1 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |##k#1_0_0_2_1@0| () Int)
(declare-fun |##n#1_0_0_2_1@0| () Int)
(declare-fun |##k#1_0_0_2_0@0| () Int)
(declare-fun |##n#1_0_0_2_0@0| () Int)
(declare-fun |##k#1_0_0_3_1@0| () Int)
(declare-fun |##n#1_0_0_3_1@0| () Int)
(declare-fun |##n#1_0_0_0_0@0| () Int)
(declare-fun |##n#1_0_0_0_1@0| () Int)
(declare-fun |S##1_0_0_0_0@0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |##n#1_0_0_0_2@0| () Int)
(declare-fun |##S#1_0_0_0_0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.BitSet__Property)
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
 (=> (= (ControlFlow 0 0) 86) (let ((anon9_correct  (=> (and (=> (or (not (= |x#1_0_0@0| 0)) (not true)) (|_module.__default.BitSet#canCall| |n#0@@5|)) (= (ControlFlow 0 79) (- 0 78))) (= (|Set#IsMember| (|Set#Difference| (_module.__default.BitSet |n#0@@5|) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 0))))) ($Box intType (int_2_U |x#1_0_0@0|)))  (and (or (not (= |x#1_0_0@0| 0)) (not true)) (|Set#IsMember| (_module.__default.BitSet |n#0@@5|) ($Box intType (int_2_U |x#1_0_0@0|))))))))
(let ((anon53_Else_correct  (=> (and (= |x#1_0_0@0| 0) (= (ControlFlow 0 81) 79)) anon9_correct)))
(let ((anon53_Then_correct  (=> (and (and (or (not (= |x#1_0_0@0| 0)) (not true)) ($IsAlloc intType (int_2_U |n#0@@5|) Tclass._System.nat $Heap)) (and (|_module.__default.BitSet#canCall| |n#0@@5|) (= (ControlFlow 0 80) 79))) anon9_correct)))
(let ((anon52_Then_correct  (=> (and (and ($IsAlloc intType (int_2_U |n#0@@5|) Tclass._System.nat $Heap) (|_module.__default.BitSet#canCall| |n#0@@5|)) (and ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) (|_module.__default.BitSet#canCall| |n#0@@5|))) (and (=> (= (ControlFlow 0 82) 80) anon53_Then_correct) (=> (= (ControlFlow 0 82) 81) anon53_Else_correct)))))
(let ((anon44_correct  (=> (=> (and (<= (LitInt 0) (- |x#1_0_0@0| 1)) (< (- |x#1_0_0@0| 1) (Div |n#0@@5| (LitInt 2)))) (|_module.__default.Bit#canCall| (- |x#1_0_0@0| 1) (Div |n#0@@5| (LitInt 2)))) (and (=> (= (ControlFlow 0 71) (- 0 73)) (or (not (= (LitInt 2) 0)) (not true))) (and (=> (= (ControlFlow 0 71) (- 0 72)) ($Is intType (int_2_U (Div |n#0@@5| (LitInt 2))) Tclass._System.nat)) (=> ($Is intType (int_2_U (Div |n#0@@5| (LitInt 2))) Tclass._System.nat) (=> (= |##n#1_0_0_1_1@0| (Div |n#0@@5| (LitInt 2))) (=> (and (and ($IsAlloc intType (int_2_U |##n#1_0_0_1_1@0|) Tclass._System.nat $Heap) (|_module.__default.BitSet#canCall| (Div |n#0@@5| (LitInt 2)))) (and (|_module.__default.BitSet#canCall| (Div |n#0@@5| (LitInt 2))) (= (ControlFlow 0 71) (- 0 70)))) (=  (and (and (<= (LitInt 0) (- |x#1_0_0@0| 1)) (< (- |x#1_0_0@0| 1) (Div |n#0@@5| (LitInt 2)))) (_module.__default.Bit ($LS ($LS $LZ)) (- |x#1_0_0@0| 1) (Div |n#0@@5| (LitInt 2)))) (|Set#IsMember| (_module.__default.BitSet (Div |n#0@@5| (LitInt 2))) ($Box intType (int_2_U (- |x#1_0_0@0| 1)))))))))))))
(let ((anon72_Else_correct  (=> (and (not (and (<= (LitInt 0) (- |x#1_0_0@0| 1)) (< (- |x#1_0_0@0| 1) (Div |n#0@@5| (LitInt 2))))) (= (ControlFlow 0 75) 71)) anon44_correct)))
(let ((anon72_Then_correct  (=> (and (and (<= (LitInt 0) (- |x#1_0_0@0| 1)) (< (- |x#1_0_0@0| 1) (Div |n#0@@5| (LitInt 2)))) ($Is intType (int_2_U (- |x#1_0_0@0| 1)) Tclass._System.nat)) (=> (and (and (and (= |##k#1_0_0_1_0@0| (- |x#1_0_0@0| 1)) ($IsAlloc intType (int_2_U |##k#1_0_0_1_0@0|) Tclass._System.nat $Heap)) (and (or (not (= (LitInt 2) 0)) (not true)) ($Is intType (int_2_U (Div |n#0@@5| (LitInt 2))) Tclass._System.nat))) (and (and (= |##n#1_0_0_1_0@0| (Div |n#0@@5| (LitInt 2))) ($IsAlloc intType (int_2_U |##n#1_0_0_1_0@0|) Tclass._System.nat $Heap)) (and (|_module.__default.Bit#canCall| (- |x#1_0_0@0| 1) (Div |n#0@@5| (LitInt 2))) (= (ControlFlow 0 74) 71)))) anon44_correct))))
(let ((anon71_Else_correct  (=> (< (- |x#1_0_0@0| 1) (LitInt 0)) (and (=> (= (ControlFlow 0 77) 74) anon72_Then_correct) (=> (= (ControlFlow 0 77) 75) anon72_Else_correct)))))
(let ((anon71_Then_correct  (=> (and (<= (LitInt 0) (- |x#1_0_0@0| 1)) (or (not (= (LitInt 2) 0)) (not true))) (and (=> (= (ControlFlow 0 76) 74) anon72_Then_correct) (=> (= (ControlFlow 0 76) 75) anon72_Else_correct)))))
(let ((anon39_correct  (=> (and (=> (and (<= (LitInt 0) (- |x#1_0_0@0| 1)) (< (- |x#1_0_0@0| 1) (Div |n#0@@5| (LitInt 2)))) (|_module.__default.Bit#canCall| (- |x#1_0_0@0| 1) (Div |n#0@@5| (LitInt 2)))) (= (ControlFlow 0 43) (- 0 42))) (=  (and (and (< 0 |x#1_0_0@0|) (< |x#1_0_0@0| |n#0@@5|)) (_module.__default.Bit ($LS ($LS $LZ)) (- |x#1_0_0@0| 1) (Div |n#0@@5| (LitInt 2))))  (and (and (<= (LitInt 0) (- |x#1_0_0@0| 1)) (< (- |x#1_0_0@0| 1) (Div |n#0@@5| (LitInt 2)))) (_module.__default.Bit ($LS ($LS $LZ)) (- |x#1_0_0@0| 1) (Div |n#0@@5| (LitInt 2))))))))
(let ((anon69_Else_correct  (=> (and (not (and (<= (LitInt 0) (- |x#1_0_0@0| 1)) (< (- |x#1_0_0@0| 1) (Div |n#0@@5| (LitInt 2))))) (= (ControlFlow 0 48) 43)) anon39_correct)))
(let ((anon69_Then_correct  (=> (and (<= (LitInt 0) (- |x#1_0_0@0| 1)) (< (- |x#1_0_0@0| 1) (Div |n#0@@5| (LitInt 2)))) (and (=> (= (ControlFlow 0 44) (- 0 47)) ($Is intType (int_2_U (- |x#1_0_0@0| 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (- |x#1_0_0@0| 1)) Tclass._System.nat) (=> (and (= |##k#1_0_0_2_2@0| (- |x#1_0_0@0| 1)) ($IsAlloc intType (int_2_U |##k#1_0_0_2_2@0|) Tclass._System.nat $Heap@2)) (and (=> (= (ControlFlow 0 44) (- 0 46)) (or (not (= (LitInt 2) 0)) (not true))) (and (=> (= (ControlFlow 0 44) (- 0 45)) ($Is intType (int_2_U (Div |n#0@@5| (LitInt 2))) Tclass._System.nat)) (=> ($Is intType (int_2_U (Div |n#0@@5| (LitInt 2))) Tclass._System.nat) (=> (and (and (= |##n#1_0_0_2_2@0| (Div |n#0@@5| (LitInt 2))) ($IsAlloc intType (int_2_U |##n#1_0_0_2_2@0|) Tclass._System.nat $Heap@2)) (and (|_module.__default.Bit#canCall| (- |x#1_0_0@0| 1) (Div |n#0@@5| (LitInt 2))) (= (ControlFlow 0 44) 43))) anon39_correct))))))))))
(let ((anon68_Else_correct  (=> (< (- |x#1_0_0@0| 1) (LitInt 0)) (and (=> (= (ControlFlow 0 51) 44) anon69_Then_correct) (=> (= (ControlFlow 0 51) 48) anon69_Else_correct)))))
(let ((anon68_Then_correct  (=> (<= (LitInt 0) (- |x#1_0_0@0| 1)) (and (=> (= (ControlFlow 0 49) (- 0 50)) (or (not (= (LitInt 2) 0)) (not true))) (and (=> (= (ControlFlow 0 49) 44) anon69_Then_correct) (=> (= (ControlFlow 0 49) 48) anon69_Else_correct))))))
(let ((anon67_Else_correct  (=> (and (not (and (< 0 |x#1_0_0@0|) (_module.__default.Bit ($LS $LZ) (- |x#1_0_0@0| 1) (Div |n#0@@5| (LitInt 2))))) (= $Heap@2 $Heap)) (and (=> (= (ControlFlow 0 58) 49) anon68_Then_correct) (=> (= (ControlFlow 0 58) 51) anon68_Else_correct)))))
(let ((anon67_Then_correct  (=> (and (< 0 |x#1_0_0@0|) (_module.__default.Bit ($LS $LZ) (- |x#1_0_0@0| 1) (Div |n#0@@5| (LitInt 2)))) (and (=> (= (ControlFlow 0 52) (- 0 57)) ($Is intType (int_2_U (- |x#1_0_0@0| 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (- |x#1_0_0@0| 1)) Tclass._System.nat) (=> (= |i##1_0_0_2_0_0@0| (- |x#1_0_0@0| 1)) (and (=> (= (ControlFlow 0 52) (- 0 56)) (or (not (= (LitInt 2) 0)) (not true))) (=> (or (not (= (LitInt 2) 0)) (not true)) (and (=> (= (ControlFlow 0 52) (- 0 55)) ($Is intType (int_2_U (Div |n#0@@5| (LitInt 2))) Tclass._System.nat)) (=> ($Is intType (int_2_U (Div |n#0@@5| (LitInt 2))) Tclass._System.nat) (=> (= |n##1_0_0_2_0_0@0| (Div |n#0@@5| (LitInt 2))) (and (=> (= (ControlFlow 0 52) (- 0 54)) (=> (|_module.__default.Bit#canCall| |i##1_0_0_2_0_0@0| |n##1_0_0_2_0_0@0|) (or (_module.__default.Bit ($LS $LZ) |i##1_0_0_2_0_0@0| |n##1_0_0_2_0_0@0|) (=> (= |i##1_0_0_2_0_0@0| (LitInt 0)) (= (Mod |n##1_0_0_2_0_0@0| (LitInt 2)) (LitInt 1)))))) (=> (=> (|_module.__default.Bit#canCall| |i##1_0_0_2_0_0@0| |n##1_0_0_2_0_0@0|) (or (_module.__default.Bit ($LS $LZ) |i##1_0_0_2_0_0@0| |n##1_0_0_2_0_0@0|) (=> (= |i##1_0_0_2_0_0@0| (LitInt 0)) (= (Mod |n##1_0_0_2_0_0@0| (LitInt 2)) (LitInt 1))))) (and (=> (= (ControlFlow 0 52) (- 0 53)) (=> (|_module.__default.Bit#canCall| |i##1_0_0_2_0_0@0| |n##1_0_0_2_0_0@0|) (or (_module.__default.Bit ($LS $LZ) |i##1_0_0_2_0_0@0| |n##1_0_0_2_0_0@0|) (=> (or (not (= |i##1_0_0_2_0_0@0| (LitInt 0))) (not true)) (_module.__default.Bit ($LS ($LS $LZ)) (- |i##1_0_0_2_0_0@0| 1) (Div |n##1_0_0_2_0_0@0| (LitInt 2))))))) (=> (=> (|_module.__default.Bit#canCall| |i##1_0_0_2_0_0@0| |n##1_0_0_2_0_0@0|) (or (_module.__default.Bit ($LS $LZ) |i##1_0_0_2_0_0@0| |n##1_0_0_2_0_0@0|) (=> (or (not (= |i##1_0_0_2_0_0@0| (LitInt 0))) (not true)) (_module.__default.Bit ($LS ($LS $LZ)) (- |i##1_0_0_2_0_0@0| 1) (Div |n##1_0_0_2_0_0@0| (LitInt 2)))))) (=> (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (< |i##1_0_0_2_0_0@0| |n##1_0_0_2_0_0@0|)) (and (= $Heap $Heap@1) (= $Heap@2 $Heap@1))) (and (=> (= (ControlFlow 0 52) 49) anon68_Then_correct) (=> (= (ControlFlow 0 52) 51) anon68_Else_correct))))))))))))))))))
(let ((anon32_correct  (=> (=> (< 0 |x#1_0_0@0|) (|_module.__default.Bit#canCall| (- |x#1_0_0@0| 1) (Div |n#0@@5| (LitInt 2)))) (and (=> (= (ControlFlow 0 59) 52) anon67_Then_correct) (=> (= (ControlFlow 0 59) 58) anon67_Else_correct)))))
(let ((anon66_Else_correct  (=> (and (<= |x#1_0_0@0| 0) (= (ControlFlow 0 64) 59)) anon32_correct)))
(let ((anon66_Then_correct  (=> (< 0 |x#1_0_0@0|) (and (=> (= (ControlFlow 0 60) (- 0 63)) ($Is intType (int_2_U (- |x#1_0_0@0| 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (- |x#1_0_0@0| 1)) Tclass._System.nat) (=> (and (= |##k#1_0_0_2_1@0| (- |x#1_0_0@0| 1)) ($IsAlloc intType (int_2_U |##k#1_0_0_2_1@0|) Tclass._System.nat $Heap)) (and (=> (= (ControlFlow 0 60) (- 0 62)) (or (not (= (LitInt 2) 0)) (not true))) (=> (or (not (= (LitInt 2) 0)) (not true)) (and (=> (= (ControlFlow 0 60) (- 0 61)) ($Is intType (int_2_U (Div |n#0@@5| (LitInt 2))) Tclass._System.nat)) (=> ($Is intType (int_2_U (Div |n#0@@5| (LitInt 2))) Tclass._System.nat) (=> (and (and (= |##n#1_0_0_2_1@0| (Div |n#0@@5| (LitInt 2))) ($IsAlloc intType (int_2_U |##n#1_0_0_2_1@0|) Tclass._System.nat $Heap)) (and (|_module.__default.Bit#canCall| (- |x#1_0_0@0| 1) (Div |n#0@@5| (LitInt 2))) (= (ControlFlow 0 60) 59))) anon32_correct)))))))))))
(let ((anon30_correct  (=> (=> (and (< 0 |x#1_0_0@0|) (< |x#1_0_0@0| |n#0@@5|)) (|_module.__default.Bit#canCall| (- |x#1_0_0@0| 1) (Div |n#0@@5| (LitInt 2)))) (and (=> (= (ControlFlow 0 65) 60) anon66_Then_correct) (=> (= (ControlFlow 0 65) 64) anon66_Else_correct)))))
(let ((anon65_Else_correct  (=> (and (not (and (< 0 |x#1_0_0@0|) (< |x#1_0_0@0| |n#0@@5|))) (= (ControlFlow 0 67) 65)) anon30_correct)))
(let ((anon65_Then_correct  (=> (and (and (< 0 |x#1_0_0@0|) (< |x#1_0_0@0| |n#0@@5|)) ($Is intType (int_2_U (- |x#1_0_0@0| 1)) Tclass._System.nat)) (=> (and (and (and (= |##k#1_0_0_2_0@0| (- |x#1_0_0@0| 1)) ($IsAlloc intType (int_2_U |##k#1_0_0_2_0@0|) Tclass._System.nat $Heap)) (and (or (not (= (LitInt 2) 0)) (not true)) ($Is intType (int_2_U (Div |n#0@@5| (LitInt 2))) Tclass._System.nat))) (and (and (= |##n#1_0_0_2_0@0| (Div |n#0@@5| (LitInt 2))) ($IsAlloc intType (int_2_U |##n#1_0_0_2_0@0|) Tclass._System.nat $Heap)) (and (|_module.__default.Bit#canCall| (- |x#1_0_0@0| 1) (Div |n#0@@5| (LitInt 2))) (= (ControlFlow 0 66) 65)))) anon30_correct))))
(let ((anon64_Else_correct  (=> (<= |x#1_0_0@0| 0) (and (=> (= (ControlFlow 0 69) 66) anon65_Then_correct) (=> (= (ControlFlow 0 69) 67) anon65_Else_correct)))))
(let ((anon64_Then_correct  (=> (< 0 |x#1_0_0@0|) (and (=> (= (ControlFlow 0 68) 66) anon65_Then_correct) (=> (= (ControlFlow 0 68) 67) anon65_Else_correct)))))
(let ((anon25_correct  (=> (and (=> (and (< 0 |x#1_0_0@0|) (< |x#1_0_0@0| |n#0@@5|)) (|_module.__default.Bit#canCall| (- |x#1_0_0@0| 1) (Div |n#0@@5| (LitInt 2)))) (= (ControlFlow 0 29) (- 0 28))) (=  (and (and (< 0 |x#1_0_0@0|) (< |x#1_0_0@0| |n#0@@5|)) (_module.__default.Bit ($LS ($LS $LZ)) |x#1_0_0@0| |n#0@@5|))  (and (and (< 0 |x#1_0_0@0|) (< |x#1_0_0@0| |n#0@@5|)) (_module.__default.Bit ($LS ($LS $LZ)) (- |x#1_0_0@0| 1) (Div |n#0@@5| (LitInt 2))))))))
(let ((anon62_Else_correct  (=> (and (not (and (< 0 |x#1_0_0@0|) (< |x#1_0_0@0| |n#0@@5|))) (= (ControlFlow 0 34) 29)) anon25_correct)))
(let ((anon62_Then_correct  (=> (and (< 0 |x#1_0_0@0|) (< |x#1_0_0@0| |n#0@@5|)) (and (=> (= (ControlFlow 0 30) (- 0 33)) ($Is intType (int_2_U (- |x#1_0_0@0| 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (- |x#1_0_0@0| 1)) Tclass._System.nat) (=> (and (= |##k#1_0_0_3_1@0| (- |x#1_0_0@0| 1)) ($IsAlloc intType (int_2_U |##k#1_0_0_3_1@0|) Tclass._System.nat $Heap)) (and (=> (= (ControlFlow 0 30) (- 0 32)) (or (not (= (LitInt 2) 0)) (not true))) (and (=> (= (ControlFlow 0 30) (- 0 31)) ($Is intType (int_2_U (Div |n#0@@5| (LitInt 2))) Tclass._System.nat)) (=> ($Is intType (int_2_U (Div |n#0@@5| (LitInt 2))) Tclass._System.nat) (=> (and (and (= |##n#1_0_0_3_1@0| (Div |n#0@@5| (LitInt 2))) ($IsAlloc intType (int_2_U |##n#1_0_0_3_1@0|) Tclass._System.nat $Heap)) (and (|_module.__default.Bit#canCall| (- |x#1_0_0@0| 1) (Div |n#0@@5| (LitInt 2))) (= (ControlFlow 0 30) 29))) anon25_correct))))))))))
(let ((anon61_Else_correct  (=> (<= |x#1_0_0@0| 0) (and (=> (= (ControlFlow 0 36) 30) anon62_Then_correct) (=> (= (ControlFlow 0 36) 34) anon62_Else_correct)))))
(let ((anon61_Then_correct  (=> (< 0 |x#1_0_0@0|) (and (=> (= (ControlFlow 0 35) 30) anon62_Then_correct) (=> (= (ControlFlow 0 35) 34) anon62_Else_correct)))))
(let ((anon21_correct  (=> (=> (and (< 0 |x#1_0_0@0|) (< |x#1_0_0@0| |n#0@@5|)) (|_module.__default.Bit#canCall| |x#1_0_0@0| |n#0@@5|)) (and (=> (= (ControlFlow 0 37) 35) anon61_Then_correct) (=> (= (ControlFlow 0 37) 36) anon61_Else_correct)))))
(let ((anon60_Else_correct  (=> (and (not (and (< 0 |x#1_0_0@0|) (< |x#1_0_0@0| |n#0@@5|))) (= (ControlFlow 0 39) 37)) anon21_correct)))
(let ((anon60_Then_correct  (=> (and (< 0 |x#1_0_0@0|) (< |x#1_0_0@0| |n#0@@5|)) (=> (and (and ($IsAlloc intType (int_2_U |x#1_0_0@0|) Tclass._System.nat $Heap) ($IsAlloc intType (int_2_U |n#0@@5|) Tclass._System.nat $Heap)) (and (|_module.__default.Bit#canCall| |x#1_0_0@0| |n#0@@5|) (= (ControlFlow 0 38) 37))) anon21_correct))))
(let ((anon59_Else_correct  (=> (<= |x#1_0_0@0| 0) (and (=> (= (ControlFlow 0 41) 38) anon60_Then_correct) (=> (= (ControlFlow 0 41) 39) anon60_Else_correct)))))
(let ((anon59_Then_correct  (=> (< 0 |x#1_0_0@0|) (and (=> (= (ControlFlow 0 40) 38) anon60_Then_correct) (=> (= (ControlFlow 0 40) 39) anon60_Else_correct)))))
(let ((anon16_correct  (=> (and (=> (and (< 0 |x#1_0_0@0|) (< |x#1_0_0@0| |n#0@@5|)) (|_module.__default.Bit#canCall| |x#1_0_0@0| |n#0@@5|)) (= (ControlFlow 0 20) (- 0 19))) (=  (and (or (not (= |x#1_0_0@0| 0)) (not true)) (|Set#IsMember| (_module.__default.BitSet |n#0@@5|) ($Box intType (int_2_U |x#1_0_0@0|))))  (and (and (< 0 |x#1_0_0@0|) (< |x#1_0_0@0| |n#0@@5|)) (_module.__default.Bit ($LS ($LS $LZ)) |x#1_0_0@0| |n#0@@5|))))))
(let ((anon57_Else_correct  (=> (and (not (and (< 0 |x#1_0_0@0|) (< |x#1_0_0@0| |n#0@@5|))) (= (ControlFlow 0 22) 20)) anon16_correct)))
(let ((anon57_Then_correct  (=> (and (< 0 |x#1_0_0@0|) (< |x#1_0_0@0| |n#0@@5|)) (=> (and (and ($IsAlloc intType (int_2_U |x#1_0_0@0|) Tclass._System.nat $Heap) ($IsAlloc intType (int_2_U |n#0@@5|) Tclass._System.nat $Heap)) (and (|_module.__default.Bit#canCall| |x#1_0_0@0| |n#0@@5|) (= (ControlFlow 0 21) 20))) anon16_correct))))
(let ((anon56_Else_correct  (=> (<= |x#1_0_0@0| 0) (and (=> (= (ControlFlow 0 24) 21) anon57_Then_correct) (=> (= (ControlFlow 0 24) 22) anon57_Else_correct)))))
(let ((anon56_Then_correct  (=> (< 0 |x#1_0_0@0|) (and (=> (= (ControlFlow 0 23) 21) anon57_Then_correct) (=> (= (ControlFlow 0 23) 22) anon57_Else_correct)))))
(let ((anon12_correct  (=> (=> (or (not (= |x#1_0_0@0| 0)) (not true)) (|_module.__default.BitSet#canCall| |n#0@@5|)) (and (=> (= (ControlFlow 0 25) 23) anon56_Then_correct) (=> (= (ControlFlow 0 25) 24) anon56_Else_correct)))))
(let ((anon55_Else_correct  (=> (and (= |x#1_0_0@0| 0) (= (ControlFlow 0 27) 25)) anon12_correct)))
(let ((anon55_Then_correct  (=> (and (and (or (not (= |x#1_0_0@0| 0)) (not true)) ($IsAlloc intType (int_2_U |n#0@@5|) Tclass._System.nat $Heap)) (and (|_module.__default.BitSet#canCall| |n#0@@5|) (= (ControlFlow 0 26) 25))) anon12_correct)))
(let ((anon73_Else_correct  (=> (and (= (|Set#IsMember| (|Set#Difference| (_module.__default.BitSet |n#0@@5|) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 0))))) ($Box intType (int_2_U |x#1_0_0@0|))) (|Set#IsMember| (_module.__default.Suc (_module.__default.BitSet (Div |n#0@@5| (LitInt 2)))) ($Box intType (int_2_U |x#1_0_0@0|)))) (= (ControlFlow 0 18) (- 0 17))) (= (|Set#IsMember| (|Set#Difference| (_module.__default.BitSet |n#0@@5|) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 0))))) ($Box intType (int_2_U |x#1_0_0@0|))) (|Set#IsMember| (_module.__default.Suc (_module.__default.BitSet (Div |n#0@@5| (LitInt 2)))) ($Box intType (int_2_U |x#1_0_0@0|)))))))
(let ((anon73_Then_correct  (=> (and (or (not (= (LitInt 2) 0)) (not true)) ($Is intType (int_2_U (Div |n#0@@5| (LitInt 2))) Tclass._System.nat)) (=> (and (and (= |##n#1_0_0_0_0@0| (Div |n#0@@5| (LitInt 2))) ($IsAlloc intType (int_2_U |##n#1_0_0_0_0@0|) Tclass._System.nat $Heap)) (and (|_module.__default.BitSet#canCall| (Div |n#0@@5| (LitInt 2))) (|_module.__default.BitSet#canCall| (Div |n#0@@5| (LitInt 2))))) (and (=> (= (ControlFlow 0 12) (- 0 16)) (or (not (= (LitInt 2) 0)) (not true))) (=> (or (not (= (LitInt 2) 0)) (not true)) (and (=> (= (ControlFlow 0 12) (- 0 15)) ($Is intType (int_2_U (Div |n#0@@5| (LitInt 2))) Tclass._System.nat)) (=> ($Is intType (int_2_U (Div |n#0@@5| (LitInt 2))) Tclass._System.nat) (=> (= |##n#1_0_0_0_1@0| (Div |n#0@@5| (LitInt 2))) (=> (and (and ($IsAlloc intType (int_2_U |##n#1_0_0_0_1@0|) Tclass._System.nat $Heap) (|_module.__default.BitSet#canCall| (Div |n#0@@5| (LitInt 2)))) (and (|_module.__default.BitSet#canCall| (Div |n#0@@5| (LitInt 2))) (= |S##1_0_0_0_0@0| (_module.__default.BitSet (Div |n#0@@5| (LitInt 2)))))) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (|_module.__default.Suc#canCall| |S##1_0_0_0_0@0|)) (and (forall ((|x#1| T@U) ) (! (= (|Set#IsMember| |S##1_0_0_0_0@0| ($Box intType |x#1|)) (|Set#IsMember| (_module.__default.Suc |S##1_0_0_0_0@0|) ($Box intType (int_2_U (+ (U_2_int |x#1|) 1)))))
 :qid |Lucasdowndfy.84:18|
 :skolemid |568|
 :pattern ( (|Set#IsMember| |S##1_0_0_0_0@0| ($Box intType |x#1|)))
)) (= $Heap $Heap@0))) (and (=> (= (ControlFlow 0 12) (- 0 14)) (or (not (= (LitInt 2) 0)) (not true))) (and (=> (= (ControlFlow 0 12) (- 0 13)) ($Is intType (int_2_U (Div |n#0@@5| (LitInt 2))) Tclass._System.nat)) (=> ($Is intType (int_2_U (Div |n#0@@5| (LitInt 2))) Tclass._System.nat) (=> (and (= |##n#1_0_0_0_2@0| (Div |n#0@@5| (LitInt 2))) ($IsAlloc intType (int_2_U |##n#1_0_0_0_2@0|) Tclass._System.nat $Heap@0)) (=> (and (and (and (|_module.__default.BitSet#canCall| (Div |n#0@@5| (LitInt 2))) (= |##S#1_0_0_0_0@0| (_module.__default.BitSet (Div |n#0@@5| (LitInt 2))))) (and ($IsAlloc SetType |##S#1_0_0_0_0@0| (TSet Tclass._System.nat) $Heap@0) (|_module.__default.Suc#canCall| (_module.__default.BitSet (Div |n#0@@5| (LitInt 2)))))) (and (and (|_module.__default.BitSet#canCall| (Div |n#0@@5| (LitInt 2))) (|_module.__default.Suc#canCall| (_module.__default.BitSet (Div |n#0@@5| (LitInt 2))))) (= (ControlFlow 0 12) (- 0 11)))) (= (|Set#IsMember| (_module.__default.BitSet (Div |n#0@@5| (LitInt 2))) ($Box intType (int_2_U (- |x#1_0_0@0| 1)))) (|Set#IsMember| (_module.__default.Suc (_module.__default.BitSet (Div |n#0@@5| (LitInt 2)))) ($Box intType (int_2_U |x#1_0_0@0|))))))))))))))))))))
(let ((anon51_Then_correct  (=> ($IsAlloc intType (int_2_U |n#0@@5|) Tclass._System.nat $Heap) (=> (and (|_module.__default.BitSet#canCall| |n#0@@5|) (= (ControlFlow 0 10) (- 0 9))) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)))))
(let ((anon50_Then_correct  (=> (and ($IsAlloc intType (int_2_U |n#0@@5|) Tclass._System.nat $Heap) (|_module.__default.BitSet#canCall| |n#0@@5|)) (and (=> (= (ControlFlow 0 6) (- 0 8)) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) (and (=> (= (ControlFlow 0 6) (- 0 7)) (or (not (= (LitInt 2) 0)) (not true))) (=> (= (ControlFlow 0 6) (- 0 5)) ($Is intType (int_2_U (Div |n#0@@5| (LitInt 2))) Tclass._System.nat))))))))
(let ((anon49_Then_correct  (=> (<= (LitInt 0) |x#1_0_0@0|) (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 83) 6) anon50_Then_correct) (=> (= (ControlFlow 0 83) 10) anon51_Then_correct)) (=> (= (ControlFlow 0 83) 82) anon52_Then_correct)) (=> (= (ControlFlow 0 83) 12) anon73_Then_correct)) (=> (= (ControlFlow 0 83) 18) anon73_Else_correct)) (=> (= (ControlFlow 0 83) 76) anon71_Then_correct)) (=> (= (ControlFlow 0 83) 77) anon71_Else_correct)) (=> (= (ControlFlow 0 83) 68) anon64_Then_correct)) (=> (= (ControlFlow 0 83) 69) anon64_Else_correct)) (=> (= (ControlFlow 0 83) 40) anon59_Then_correct)) (=> (= (ControlFlow 0 83) 41) anon59_Else_correct)) (=> (= (ControlFlow 0 83) 26) anon55_Then_correct)) (=> (= (ControlFlow 0 83) 27) anon55_Else_correct)))))
(let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (|Set#Equal| (|Set#Difference| (_module.__default.BitSet |n#0@@5|) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 0))))) (_module.__default.Suc (_module.__default.BitSet (Div |n#0@@5| (LitInt 2))))))))
(let ((anon49_Else_correct  (=> (and (forall ((|x#1_0_1| T@U) ) (!  (=> (and (<= (LitInt 0) (U_2_int |x#1_0_1|)) (U_2_bool (Lit boolType (bool_2_U true)))) (= (|Set#IsMember| (|Set#Difference| (_module.__default.BitSet |n#0@@5|) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 0))))) ($Box intType |x#1_0_1|)) (|Set#IsMember| (_module.__default.Suc (_module.__default.BitSet (Div |n#0@@5| (LitInt 2)))) ($Box intType |x#1_0_1|))))
 :qid |Lucasdowndfy.94:12|
 :skolemid |572|
 :pattern ( (|Set#IsMember| (_module.__default.Suc (_module.__default.BitSet (Div |n#0@@5| 2))) ($Box intType |x#1_0_1|)))
 :pattern ( (|Set#IsMember| (|Set#Difference| (_module.__default.BitSet |n#0@@5|) (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U 0)))) ($Box intType |x#1_0_1|)))
)) (= (ControlFlow 0 4) 2)) GeneratedUnifiedExit_correct)))
(let ((anon48_Else_correct  (=> (or (not (= |n#0@@5| (LitInt 0))) (not true)) (and (=> (= (ControlFlow 0 84) 83) anon49_Then_correct) (=> (= (ControlFlow 0 84) 4) anon49_Else_correct)))))
(let ((anon48_Then_correct  (=> (and (= |n#0@@5| (LitInt 0)) (= (ControlFlow 0 3) 2)) GeneratedUnifiedExit_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 85) 3) anon48_Then_correct) (=> (= (ControlFlow 0 85) 84) anon48_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (<= (LitInt 0) |n#0@@5|)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 86) 85))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
