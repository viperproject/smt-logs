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
(declare-fun |Set#Union| (T@U T@U) T@U)
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
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun _module.__default.Bit (T@U Int Int) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.__default.Bit#canCall| (Int Int) Bool)
(declare-fun Div (Int Int) Int)
(declare-fun Mod (Int Int) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $LZ () T@U)
(declare-fun |lambda#3| (T@U Int Int T@U Int) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |lambda#25| (Int T@U Int T@U) T@U)
(declare-fun _module.__default.Suc (T@U) T@U)
(declare-fun |_module.__default.Suc#canCall| (T@U) Bool)
(declare-fun _module.__default.binom (T@U Bool Int Int) Int)
(declare-fun |_module.__default.binom#canCall| (Int Int) Bool)
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
(declare-fun _module.__default.EVEN (Bool Int) Bool)
(declare-fun |_module.__default.EVEN#canCall| (Int) Bool)
(declare-fun Mul (Int Int) Int)
(declare-fun reveal__module._default.binom () Bool)
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
(assert (forall ((a@@1 T@U) (b T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| a@@1 y@@0) (|Set#IsMember| (|Set#Union| a@@1 b) y@@0))
 :qid |DafnyPreludebpl.708:15|
 :skolemid |134|
 :pattern ( (|Set#Union| a@@1 b) (|Set#IsMember| a@@1 y@@0))
)))
(assert (forall ((a@@2 T@U) (b@@0 T@U) (y@@1 T@U) ) (!  (=> (|Set#IsMember| b@@0 y@@1) (|Set#IsMember| (|Set#Union| a@@2 b@@0) y@@1))
 :qid |DafnyPreludebpl.712:15|
 :skolemid |135|
 :pattern ( (|Set#Union| a@@2 b@@0) (|Set#IsMember| b@@0 y@@1))
)))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (forall ((a@@3 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@3 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |128|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) (y@@2 T@U) ) (!  (=> (|Set#IsMember| b@@1 y@@2) (not (|Set#IsMember| (|Set#Difference| a@@4 b@@1) y@@2)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |144|
 :pattern ( (|Set#Difference| a@@4 b@@1) (|Set#IsMember| b@@1 y@@2))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@5 b@@2) b@@2) (|Set#Union| a@@5 b@@2))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |138|
 :pattern ( (|Set#Union| (|Set#Union| a@@5 b@@2) b@@2))
)))
(assert (forall ((a@@6 T@U) (b@@3 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@6 b@@3) o@@1)  (and (|Set#IsMember| a@@6 o@@1) (not (|Set#IsMember| b@@3 o@@1))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |143|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@6 b@@3) o@@1))
)))
(assert (= (Ctor SetType) 3))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|n#0| Int) ) (!  (=> (or (|_module.__default.BitSet#canCall| |n#0|) (and (< 1 $FunctionContextHeight) (<= (LitInt 0) |n#0|))) ($Is SetType (_module.__default.BitSet |n#0|) (TSet Tclass._System.nat)))
 :qid |Lucasupdfy.36:23|
 :skolemid |536|
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
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|Set#Subset| a@@7 b@@4) (forall ((o@@2 T@U) ) (!  (=> (|Set#IsMember| a@@7 o@@2) (|Set#IsMember| b@@4 o@@2))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a@@7 o@@2))
 :pattern ( (|Set#IsMember| b@@4 o@@2))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a@@7 b@@4))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly T@U) (|k#0| Int) (|n#0@@0| Int) ) (!  (=> (or (|_module.__default.Bit#canCall| (LitInt |k#0|) (LitInt |n#0@@0|)) (and (< 0 $FunctionContextHeight) (and (<= (LitInt 0) |k#0|) (<= (LitInt 0) |n#0@@0|)))) (and (=> (or (not (= (LitInt |k#0|) (LitInt 0))) (not true)) (|_module.__default.Bit#canCall| (LitInt (- |k#0| 1)) (LitInt (Div |n#0@@0| (LitInt 2))))) (= (_module.__default.Bit ($LS $ly) (LitInt |k#0|) (LitInt |n#0@@0|)) (ite (= (LitInt |k#0|) (LitInt 0)) (= (LitInt (Mod |n#0@@0| (LitInt 2))) (LitInt 1)) (_module.__default.Bit ($LS $ly) (LitInt (- |k#0| 1)) (LitInt (Div |n#0@@0| (LitInt 2))))))))
 :qid |Lucasupdfy.20:17|
 :weight 3
 :skolemid |533|
 :pattern ( (_module.__default.Bit ($LS $ly) (LitInt |k#0|) (LitInt |n#0@@0|)))
))))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) ) (! (= (|Set#Disjoint| a@@8 b@@5) (forall ((o@@3 T@U) ) (!  (or (not (|Set#IsMember| a@@8 o@@3)) (not (|Set#IsMember| b@@5 o@@3)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@8 o@@3))
 :pattern ( (|Set#IsMember| b@@5 o@@3))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@8 b@@5))
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
 :qid |Lucasupdfy.38:7|
 :skolemid |538|
 :pattern ( (_module.__default.Bit ($LS $LZ) |i#0| |n#0@@1|))
)) (= (_module.__default.BitSet |n#0@@1|) (|Set#FromBoogieMap| (|lambda#3| TInt (LitInt 0) |n#0@@1| ($LS $LZ) |n#0@@1|)))))
 :qid |Lucasupdfy.36:23|
 :skolemid |539|
 :pattern ( (_module.__default.BitSet |n#0@@1|))
))))
(assert (forall ((|l#0| T@U) (|l#1| Int) (|l#2| Int) (|l#3| T@U) (|l#4| Int) (|$y#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#3| |l#0| |l#1| |l#2| |l#3| |l#4|) |$y#0|))  (and ($IsBox |$y#0| |l#0|) (and (and (<= |l#1| (U_2_int ($Unbox intType |$y#0|))) (< (U_2_int ($Unbox intType |$y#0|)) |l#2|)) (_module.__default.Bit |l#3| (U_2_int ($Unbox intType |$y#0|)) |l#4|))))
 :qid |DafnyPreludebpl.27:1|
 :skolemid |646|
 :pattern ( (MapType0Select BoxType boolType (|lambda#3| |l#0| |l#1| |l#2| |l#3| |l#4|) |$y#0|))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert (forall (($ly@@0 T@U) (|k#0@@0| Int) (|n#0@@2| Int) ) (! (= (_module.__default.Bit ($LS $ly@@0) |k#0@@0| |n#0@@2|) (_module.__default.Bit $ly@@0 |k#0@@0| |n#0@@2|))
 :qid |Lucasupdfy.20:17|
 :skolemid |528|
 :pattern ( (_module.__default.Bit ($LS $ly@@0) |k#0@@0| |n#0@@2|))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@1 T@U) (|k#0@@1| Int) (|n#0@@3| Int) ) (!  (=> (or (|_module.__default.Bit#canCall| |k#0@@1| |n#0@@3|) (and (< 0 $FunctionContextHeight) (and (<= (LitInt 0) |k#0@@1|) (<= (LitInt 0) |n#0@@3|)))) (and (=> (or (not (= |k#0@@1| (LitInt 0))) (not true)) (|_module.__default.Bit#canCall| (- |k#0@@1| 1) (Div |n#0@@3| (LitInt 2)))) (= (_module.__default.Bit ($LS $ly@@1) |k#0@@1| |n#0@@3|) (ite (= |k#0@@1| (LitInt 0)) (= (Mod |n#0@@3| (LitInt 2)) (LitInt 1)) (_module.__default.Bit $ly@@1 (- |k#0@@1| 1) (Div |n#0@@3| (LitInt 2)))))))
 :qid |Lucasupdfy.20:17|
 :skolemid |532|
 :pattern ( (_module.__default.Bit ($LS $ly@@1) |k#0@@1| |n#0@@3|))
))))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx@@1 Tclass._System.nat))
)))
(assert (forall ((|l#0@@0| Int) (|l#1@@0| T@U) (|l#2@@0| Int) (|l#3@@0| T@U) (|$y#0@@0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#25| |l#0@@0| |l#1@@0| |l#2@@0| |l#3@@0|) |$y#0@@0|)) (exists ((|x#0@@1| Int) ) (!  (and (and (<= |l#0@@0| |x#0@@1|) (|Set#IsMember| |l#1@@0| ($Box intType (int_2_U |x#0@@1|)))) (= |$y#0@@0| ($Box intType (int_2_U (+ |x#0@@1| |l#2@@0|)))))
 :qid |Lucasupdfy.235:7|
 :skolemid |593|
 :pattern ( (|Set#IsMember| |l#3@@0| ($Box intType (int_2_U |x#0@@1|))))
)))
 :qid |unknown.0:0|
 :skolemid |647|
 :pattern ( (MapType0Select BoxType boolType (|lambda#25| |l#0@@0| |l#1@@0| |l#2@@0| |l#3@@0|) |$y#0@@0|))
)))
(assert (forall ((a@@9 T@U) (b@@6 T@U) (o@@4 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@9 b@@6) o@@4)  (or (|Set#IsMember| a@@9 o@@4) (|Set#IsMember| b@@6 o@@4)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@9 b@@6) o@@4))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) ) (!  (=> (|Set#Disjoint| a@@10 b@@7) (and (= (|Set#Difference| (|Set#Union| a@@10 b@@7) a@@10) b@@7) (= (|Set#Difference| (|Set#Union| a@@10 b@@7) b@@7) a@@10)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@10 b@@7))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|S#0| T@U) ) (!  (=> (or (|_module.__default.Suc#canCall| |S#0|) (and (< 0 $FunctionContextHeight) ($Is SetType |S#0| (TSet Tclass._System.nat)))) (= (_module.__default.Suc |S#0|) (|Set#FromBoogieMap| (|lambda#25| (LitInt 0) |S#0| 1 |S#0|))))
 :qid |Lucasupdfy.233:20|
 :skolemid |594|
 :pattern ( (_module.__default.Suc |S#0|))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@2 T@U) ($reveal Bool) (|a#0| Int) (|b#0| Int) ) (!  (=> (or (|_module.__default.binom#canCall| |a#0| |b#0|) (and (< 0 $FunctionContextHeight) (and (<= (LitInt 0) |a#0|) (<= (LitInt 0) |b#0|)))) (<= (LitInt 0) (_module.__default.binom $ly@@2 $reveal |a#0| |b#0|)))
 :qid |Lucasupdfy.65:23|
 :skolemid |552|
 :pattern ( (_module.__default.binom $ly@@2 $reveal |a#0| |b#0|))
))))
(assert (forall ((x@@8 Int) (y@@3 Int) ) (! (= (Div x@@8 y@@3) (div x@@8 y@@3))
 :qid |DafnyPreludebpl.1648:14|
 :skolemid |339|
 :pattern ( (Div x@@8 y@@3))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (!  (=> (|Set#Equal| a@@11 b@@8) (= a@@11 b@@8))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@11 b@@8))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|n#0@@4| Int) ) (!  (=> (or (|_module.__default.BitSet#canCall| (LitInt |n#0@@4|)) (and (< 1 $FunctionContextHeight) (<= (LitInt 0) |n#0@@4|))) (and (forall ((|i#1| Int) ) (!  (=> (<= (LitInt 0) |i#1|) (=> (< |i#1| |n#0@@4|) (|_module.__default.Bit#canCall| |i#1| (LitInt |n#0@@4|))))
 :qid |Lucasupdfy.38:7|
 :skolemid |540|
 :pattern ( (_module.__default.Bit ($LS $LZ) |i#1| |n#0@@4|))
)) (= (_module.__default.BitSet (LitInt |n#0@@4|)) (|Set#FromBoogieMap| (|lambda#3| TInt (LitInt 0) |n#0@@4| ($LS $LZ) (LitInt |n#0@@4|))))))
 :qid |Lucasupdfy.36:23|
 :weight 3
 :skolemid |541|
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|S#0@@0| T@U) ) (!  (=> (or (|_module.__default.Suc#canCall| (Lit SetType |S#0@@0|)) (and (< 0 $FunctionContextHeight) ($Is SetType |S#0@@0| (TSet Tclass._System.nat)))) (= (_module.__default.Suc (Lit SetType |S#0@@0|)) (|Set#FromBoogieMap| (|lambda#25| (LitInt 0) (Lit SetType |S#0@@0|) 1 |S#0@@0|))))
 :qid |Lucasupdfy.233:20|
 :weight 3
 :skolemid |596|
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
(assert (forall ((a@@12 T@U) (b@@9 T@U) ) (! (= (|Set#Union| a@@12 (|Set#Union| a@@12 b@@9)) (|Set#Union| a@@12 b@@9))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@12 (|Set#Union| a@@12 b@@9)))
)))
(assert (forall (($ly@@3 T@U) ($reveal@@0 Bool) (|a#0@@0| Int) (|b#0@@0| Int) ) (! (= (_module.__default.binom ($LS $ly@@3) $reveal@@0 |a#0@@0| |b#0@@0|) (_module.__default.binom $ly@@3 $reveal@@0 |a#0@@0| |b#0@@0|))
 :qid |Lucasupdfy.65:23|
 :skolemid |550|
 :pattern ( (_module.__default.binom ($LS $ly@@3) $reveal@@0 |a#0@@0| |b#0@@0|))
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
 :skolemid |645|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@1| |l#1@@1| |l#2@@1| |l#3@@1|) $o $f))
)))
(assert (forall ((x@@10 Int) (y@@4 Int) ) (! (= (Mod x@@10 y@@4) (mod x@@10 y@@4))
 :qid |DafnyPreludebpl.1649:14|
 :skolemid |340|
 :pattern ( (Mod x@@10 y@@4))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|n#0@@5| Int) ) (!  (=> (or (|_module.__default.EVEN#canCall| |n#0@@5|) (and (< 0 $FunctionContextHeight) (<= (LitInt 0) |n#0@@5|))) (= (_module.__default.EVEN true |n#0@@5|) (= (Mod |n#0@@5| (LitInt 2)) (LitInt 0))))
 :qid |Lucasupdfy.52:29|
 :skolemid |547|
 :pattern ( (_module.__default.EVEN true |n#0@@5|))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|S#0@@1| T@U) ) (!  (=> (or (|_module.__default.Suc#canCall| |S#0@@1|) (and (< 0 $FunctionContextHeight) ($Is SetType |S#0@@1| (TSet Tclass._System.nat)))) ($Is SetType (_module.__default.Suc |S#0@@1|) (TSet Tclass._System.nat)))
 :qid |Lucasupdfy.233:20|
 :skolemid |591|
 :pattern ( (_module.__default.Suc |S#0@@1|))
))))
(assert (forall ((x@@11 Int) (y@@5 Int) ) (! (= (Mul x@@11 y@@5) (* x@@11 y@@5))
 :qid |DafnyPreludebpl.1647:14|
 :skolemid |338|
 :pattern ( (Mul x@@11 y@@5))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@4 T@U) (|a#0@@1| Int) (|b#0@@1| Int) ) (!  (=> (or (|_module.__default.binom#canCall| (LitInt |a#0@@1|) (LitInt |b#0@@1|)) (and (< 0 $FunctionContextHeight) (and (<= (LitInt 0) |a#0@@1|) (<= (LitInt 0) |b#0@@1|)))) (and (=> (or (not (= (LitInt |b#0@@1|) (LitInt 0))) (not true)) (=> (or (not (= (LitInt |a#0@@1|) (LitInt 0))) (not true)) (and (|_module.__default.binom#canCall| (LitInt (- |a#0@@1| 1)) (LitInt |b#0@@1|)) (|_module.__default.binom#canCall| (LitInt (- |a#0@@1| 1)) (LitInt (- |b#0@@1| 1)))))) (= (_module.__default.binom ($LS $ly@@4) true (LitInt |a#0@@1|) (LitInt |b#0@@1|)) (ite (= (LitInt |b#0@@1|) (LitInt 0)) 1 (ite (= (LitInt |a#0@@1|) (LitInt 0)) 0 (+ (_module.__default.binom ($LS $ly@@4) reveal__module._default.binom (LitInt (- |a#0@@1| 1)) (LitInt |b#0@@1|)) (_module.__default.binom ($LS $ly@@4) reveal__module._default.binom (LitInt (- |a#0@@1| 1)) (LitInt (- |b#0@@1| 1)))))))))
 :qid |Lucasupdfy.65:23|
 :weight 3
 :skolemid |555|
 :pattern ( (_module.__default.binom ($LS $ly@@4) true (LitInt |a#0@@1|) (LitInt |b#0@@1|)))
))))
(assert (forall ((bx@@4 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@4 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@4)) bx@@4) ($Is SetType ($Unbox SetType bx@@4) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@4 (TSet t@@3)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@5 T@U) (|a#0@@2| Int) (|b#0@@2| Int) ) (!  (=> (or (|_module.__default.binom#canCall| |a#0@@2| |b#0@@2|) (and (< 0 $FunctionContextHeight) (and (<= (LitInt 0) |a#0@@2|) (<= (LitInt 0) |b#0@@2|)))) (and (=> (or (not (= |b#0@@2| (LitInt 0))) (not true)) (=> (or (not (= |a#0@@2| (LitInt 0))) (not true)) (and (|_module.__default.binom#canCall| (- |a#0@@2| 1) |b#0@@2|) (|_module.__default.binom#canCall| (- |a#0@@2| 1) (- |b#0@@2| 1))))) (= (_module.__default.binom ($LS $ly@@5) true |a#0@@2| |b#0@@2|) (ite (= |b#0@@2| (LitInt 0)) 1 (ite (= |a#0@@2| (LitInt 0)) 0 (+ (_module.__default.binom $ly@@5 reveal__module._default.binom (- |a#0@@2| 1) |b#0@@2|) (_module.__default.binom $ly@@5 reveal__module._default.binom (- |a#0@@2| 1) (- |b#0@@2| 1))))))))
 :qid |Lucasupdfy.65:23|
 :skolemid |554|
 :pattern ( (_module.__default.binom ($LS $ly@@5) true |a#0@@2| |b#0@@2|))
))))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (! (= (|Set#Equal| a@@13 b@@10) (forall ((o@@5 T@U) ) (! (= (|Set#IsMember| a@@13 o@@5) (|Set#IsMember| b@@10 o@@5))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@13 o@@5))
 :pattern ( (|Set#IsMember| b@@10 o@@5))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@13 b@@10))
)))
(assert (forall ((x@@12 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@12))) (Lit BoxType ($Box intType (int_2_U x@@12))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@12))))
)))
(assert (forall ((x@@13 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@13)) (Lit BoxType ($Box T@@4 x@@13)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@13)))
)))
(assert (forall ((h@@1 T@U) (v@@3 T@U) ) (! ($IsAlloc intType v@@3 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@3 TInt h@@1))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|n#0@@6| Int) ) (!  (=> (or (|_module.__default.EVEN#canCall| (LitInt |n#0@@6|)) (and (< 0 $FunctionContextHeight) (<= (LitInt 0) |n#0@@6|))) (= (_module.__default.EVEN true (LitInt |n#0@@6|)) (= (LitInt (Mod |n#0@@6| (LitInt 2))) (LitInt 0))))
 :qid |Lucasupdfy.52:29|
 :weight 3
 :skolemid |548|
 :pattern ( (_module.__default.EVEN true (LitInt |n#0@@6|)))
))))
(assert (forall ((v@@4 T@U) ) (! ($Is intType v@@4 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@4 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |n#0@@7| () Int)
(declare-fun |m#0| () Int)
(declare-fun reveal__module._default.EVEN () Bool)
(declare-fun |##n#0_0@0| () Int)
(declare-fun $Heap@24 () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Heap@23 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun |$rhs#1_0@0| () Int)
(declare-fun |##S#1_0_0_0_0@0| () T@U)
(declare-fun |$rhs#1_1@0| () Int)
(declare-fun |##S#1_0_0_0_1@0| () T@U)
(declare-fun $Heap@7 () T@U)
(declare-fun $Heap@8 () T@U)
(declare-fun |##n#1_0_0_0_2@0| () Int)
(declare-fun |##n#1_0_0_0_3@0| () Int)
(declare-fun |##S#1_0_0_1_0@0| () T@U)
(declare-fun |##S#1_0_0_1_1@0| () T@U)
(declare-fun |S##1_0_0_1_0@0| () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun |S##1_0_0_1_1@0| () T@U)
(declare-fun $Heap@6 () T@U)
(declare-fun |##S#1_0_0_1_2@0| () T@U)
(declare-fun |##S#1_0_0_1_3@0| () T@U)
(declare-fun |S##1_0_0_2_0@0| () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |S##1_0_0_2_1@0| () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun |##S#1_0_0_2_0@0| () T@U)
(declare-fun |##S#1_0_0_2_1@0| () T@U)
(declare-fun |##n#1_0_0_3_0@0| () Int)
(declare-fun $Heap@2 () T@U)
(declare-fun |##n#1_0_0_4_0@0| () Int)
(declare-fun $Heap@1 () T@U)
(declare-fun |##n#1_0_0_4_1@0| () Int)
(declare-fun |##n#1_1_0_1_0@0| () Int)
(declare-fun $Heap@9 () T@U)
(declare-fun |##S#1_2_0_0_0@0| () T@U)
(declare-fun |##S#1_2_0_0_1@0| () T@U)
(declare-fun $Heap@15 () T@U)
(declare-fun $Heap@16 () T@U)
(declare-fun |##n#1_2_0_0_2@0| () Int)
(declare-fun |##n#1_2_0_0_3@0| () Int)
(declare-fun |##S#1_2_0_1_0@0| () T@U)
(declare-fun |##S#1_2_0_1_1@0| () T@U)
(declare-fun |S##1_2_0_1_0@0| () T@U)
(declare-fun $Heap@14 () T@U)
(declare-fun |##S#1_2_0_1_2@0| () T@U)
(declare-fun |##S#1_2_0_1_3@0| () T@U)
(declare-fun |S##1_2_0_2_0@0| () T@U)
(declare-fun $Heap@12 () T@U)
(declare-fun |S##1_2_0_2_1@0| () T@U)
(declare-fun $Heap@13 () T@U)
(declare-fun |##S#1_2_0_2_0@0| () T@U)
(declare-fun |##S#1_2_0_2_1@0| () T@U)
(declare-fun |##n#1_2_0_3_0@0| () Int)
(declare-fun $Heap@11 () T@U)
(declare-fun |##n#1_2_0_4_0@0| () Int)
(declare-fun $Heap@10 () T@U)
(declare-fun |##n#1_2_0_4_1@0| () Int)
(declare-fun |##n#0_1@0| () Int)
(declare-fun |##S#1_3_0_0_0@0| () T@U)
(declare-fun |##S#1_3_0_0_1@0| () T@U)
(declare-fun $Heap@21 () T@U)
(declare-fun $Heap@22 () T@U)
(declare-fun |##n#1_3_0_0_2@0| () Int)
(declare-fun |##n#1_3_0_0_3@0| () Int)
(declare-fun |S##1_3_0_1_0@0| () T@U)
(declare-fun $Heap@19 () T@U)
(declare-fun |S##1_3_0_1_1@0| () T@U)
(declare-fun $Heap@20 () T@U)
(declare-fun |##S#1_3_0_1_0@0| () T@U)
(declare-fun |##S#1_3_0_1_1@0| () T@U)
(declare-fun |##n#1_3_0_2_0@0| () Int)
(declare-fun $Heap@18 () T@U)
(declare-fun |##n#1_3_0_3_0@0| () Int)
(declare-fun $Heap@17 () T@U)
(declare-fun |##n#1_3_0_3_1@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.Lucas__Theorem)
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
 (=> (= (ControlFlow 0 0) 150) (let ((anon6_correct  (=> (and (|_module.__default.binom#canCall| |n#0@@7| |m#0|) (=> (= (_module.__default.binom ($LS $LZ) reveal__module._default.binom |n#0@@7| |m#0|) (LitInt 1)) (|_module.__default.EVEN#canCall| (LitInt 1)))) (and (=> (= (ControlFlow 0 139) (- 0 140)) (= (_module.__default.binom ($LS ($LS $LZ)) reveal__module._default.binom |n#0@@7| |m#0|) (LitInt 1))) (=> (= (ControlFlow 0 139) (- 0 138)) (not (_module.__default.EVEN reveal__module._default.EVEN (LitInt 1))))))))
(let ((anon53_Else_correct  (=> (and (or (not (= (_module.__default.binom ($LS $LZ) reveal__module._default.binom |n#0@@7| |m#0|) (LitInt 1))) (not true)) (= (ControlFlow 0 143) 139)) anon6_correct)))
(let ((anon53_Then_correct  (=> (= (_module.__default.binom ($LS $LZ) reveal__module._default.binom |n#0@@7| |m#0|) (LitInt 1)) (and (=> (= (ControlFlow 0 141) (- 0 142)) ($Is intType (int_2_U (LitInt 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 1)) Tclass._System.nat) (=> (and (and (= |##n#0_0@0| (LitInt 1)) ($IsAlloc intType (int_2_U |##n#0_0@0|) Tclass._System.nat $Heap@24)) (and (|_module.__default.EVEN#canCall| (LitInt 1)) (= (ControlFlow 0 141) 139))) anon6_correct))))))
(let ((anon52_Then_correct  (=> (and (and ($IsGoodHeap $Heap@23) ($IsHeapAnchor $Heap@23)) (and (= $Heap@0 $Heap@23) reveal__module._default.binom)) (=> (and (and (and ($IsGoodHeap $Heap@24) ($IsHeapAnchor $Heap@24)) (= $Heap@23 $Heap@24)) (and (and reveal__module._default.EVEN ($IsAlloc intType (int_2_U |n#0@@7|) Tclass._System.nat $Heap@24)) (and ($IsAlloc intType (int_2_U |m#0|) Tclass._System.nat $Heap@24) (|_module.__default.binom#canCall| |n#0@@7| |m#0|)))) (and (=> (= (ControlFlow 0 144) 141) anon53_Then_correct) (=> (= (ControlFlow 0 144) 143) anon53_Else_correct))))))
(let ((anon83_Then_correct  (=> (and ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat)) (=> (and (and (and (and ($IsAlloc intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat $Heap@0) (|_module.__default.BitSet#canCall| |$rhs#1_0@0|)) (and (= |##S#1_0_0_0_0@0| (_module.__default.BitSet |$rhs#1_0@0|)) ($IsAlloc SetType |##S#1_0_0_0_0@0| (TSet Tclass._System.nat) $Heap@0))) (and (and (|_module.__default.Suc#canCall| (_module.__default.BitSet |$rhs#1_0@0|)) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)) (and ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat) ($IsAlloc intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat $Heap@0)))) (and (and (and (|_module.__default.BitSet#canCall| |$rhs#1_1@0|) (= |##S#1_0_0_0_1@0| (_module.__default.BitSet |$rhs#1_1@0|))) (and ($IsAlloc SetType |##S#1_0_0_0_1@0| (TSet Tclass._System.nat) $Heap@0) (|_module.__default.Suc#canCall| (_module.__default.BitSet |$rhs#1_1@0|)))) (and (and (|_module.__default.BitSet#canCall| |$rhs#1_0@0|) (|_module.__default.Suc#canCall| (_module.__default.BitSet |$rhs#1_0@0|))) (and (|_module.__default.BitSet#canCall| |$rhs#1_1@0|) (|_module.__default.Suc#canCall| (_module.__default.BitSet |$rhs#1_1@0|)))))) (and (=> (= (ControlFlow 0 122) (- 0 126)) ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat) (=> (and ($IsGoodHeap $Heap@7) ($IsHeapAnchor $Heap@7)) (=> (and (and (and (|_module.__default.BitSet#canCall| (Mul (LitInt 2) |$rhs#1_0@0|)) (and (|_module.__default.BitSet#canCall| |$rhs#1_0@0|) (|_module.__default.Suc#canCall| (_module.__default.BitSet |$rhs#1_0@0|)))) (|Set#Equal| (_module.__default.BitSet (Mul (LitInt 2) |$rhs#1_0@0|)) (_module.__default.Suc (_module.__default.BitSet |$rhs#1_0@0|)))) (and (and (|_module.__default.BitSet#canCall| (+ (Mul (LitInt 2) |$rhs#1_0@0|) 1)) (and (|_module.__default.BitSet#canCall| |$rhs#1_0@0|) (|_module.__default.Suc#canCall| (_module.__default.BitSet |$rhs#1_0@0|)))) (and (|Set#Equal| (_module.__default.BitSet (+ (Mul (LitInt 2) |$rhs#1_0@0|) 1)) (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 0)))) (_module.__default.Suc (_module.__default.BitSet |$rhs#1_0@0|)))) (= $Heap@0 $Heap@7)))) (and (=> (= (ControlFlow 0 122) (- 0 125)) ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat) (=> (and ($IsGoodHeap $Heap@8) ($IsHeapAnchor $Heap@8)) (=> (and (and (and (|_module.__default.BitSet#canCall| (Mul (LitInt 2) |$rhs#1_1@0|)) (and (|_module.__default.BitSet#canCall| |$rhs#1_1@0|) (|_module.__default.Suc#canCall| (_module.__default.BitSet |$rhs#1_1@0|)))) (|Set#Equal| (_module.__default.BitSet (Mul (LitInt 2) |$rhs#1_1@0|)) (_module.__default.Suc (_module.__default.BitSet |$rhs#1_1@0|)))) (and (and (|_module.__default.BitSet#canCall| (+ (Mul (LitInt 2) |$rhs#1_1@0|) 1)) (and (|_module.__default.BitSet#canCall| |$rhs#1_1@0|) (|_module.__default.Suc#canCall| (_module.__default.BitSet |$rhs#1_1@0|)))) (and (|Set#Equal| (_module.__default.BitSet (+ (Mul (LitInt 2) |$rhs#1_1@0|) 1)) (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 0)))) (_module.__default.Suc (_module.__default.BitSet |$rhs#1_1@0|)))) (= $Heap@7 $Heap@8)))) (and (=> (= (ControlFlow 0 122) (- 0 124)) ($Is intType (int_2_U (+ (Mul (LitInt 2) |$rhs#1_0@0|) 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (+ (Mul (LitInt 2) |$rhs#1_0@0|) 1)) Tclass._System.nat) (=> (= |##n#1_0_0_0_2@0| (+ (Mul (LitInt 2) |$rhs#1_0@0|) 1)) (=> (and ($IsAlloc intType (int_2_U |##n#1_0_0_0_2@0|) Tclass._System.nat $Heap@8) (|_module.__default.BitSet#canCall| (+ (Mul (LitInt 2) |$rhs#1_0@0|) 1))) (and (=> (= (ControlFlow 0 122) (- 0 123)) ($Is intType (int_2_U (+ (Mul (LitInt 2) |$rhs#1_1@0|) 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (+ (Mul (LitInt 2) |$rhs#1_1@0|) 1)) Tclass._System.nat) (=> (= |##n#1_0_0_0_3@0| (+ (Mul (LitInt 2) |$rhs#1_1@0|) 1)) (=> (and ($IsAlloc intType (int_2_U |##n#1_0_0_0_3@0|) Tclass._System.nat $Heap@8) (|_module.__default.BitSet#canCall| (+ (Mul (LitInt 2) |$rhs#1_1@0|) 1))) (=> (and (and (|_module.__default.BitSet#canCall| (+ (Mul (LitInt 2) |$rhs#1_0@0|) 1)) (|_module.__default.BitSet#canCall| (+ (Mul (LitInt 2) |$rhs#1_1@0|) 1))) (= (ControlFlow 0 122) (- 0 121))) (= (|Set#Subset| (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 0)))) (_module.__default.Suc (_module.__default.BitSet |$rhs#1_0@0|))) (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 0)))) (_module.__default.Suc (_module.__default.BitSet |$rhs#1_1@0|)))) (|Set#Subset| (_module.__default.BitSet (+ (Mul (LitInt 2) |$rhs#1_0@0|) 1)) (_module.__default.BitSet (+ (Mul (LitInt 2) |$rhs#1_1@0|) 1)))))))))))))))))))))))))
(let ((anon82_Then_correct  (=> (and (and (and (and ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat) ($IsAlloc intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat $Heap@0)) (and (|_module.__default.BitSet#canCall| |$rhs#1_0@0|) (= |##S#1_0_0_1_0@0| (_module.__default.BitSet |$rhs#1_0@0|)))) (and (and ($IsAlloc SetType |##S#1_0_0_1_0@0| (TSet Tclass._System.nat) $Heap@0) (|_module.__default.Suc#canCall| (_module.__default.BitSet |$rhs#1_0@0|))) (and ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat) ($IsAlloc intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat $Heap@0)))) (and (and (and (|_module.__default.BitSet#canCall| |$rhs#1_1@0|) (= |##S#1_0_0_1_1@0| (_module.__default.BitSet |$rhs#1_1@0|))) (and ($IsAlloc SetType |##S#1_0_0_1_1@0| (TSet Tclass._System.nat) $Heap@0) (|_module.__default.Suc#canCall| (_module.__default.BitSet |$rhs#1_1@0|)))) (and (and (|_module.__default.BitSet#canCall| |$rhs#1_0@0|) (|_module.__default.Suc#canCall| (_module.__default.BitSet |$rhs#1_0@0|))) (and (|_module.__default.BitSet#canCall| |$rhs#1_1@0|) (|_module.__default.Suc#canCall| (_module.__default.BitSet |$rhs#1_1@0|)))))) (and (=> (= (ControlFlow 0 114) (- 0 120)) ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat) (=> (and (and ($IsAlloc intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat $Heap@0) (|_module.__default.BitSet#canCall| |$rhs#1_0@0|)) (and (|_module.__default.BitSet#canCall| |$rhs#1_0@0|) (= |S##1_0_0_1_0@0| (_module.__default.BitSet |$rhs#1_0@0|)))) (=> (and (and (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)) (|_module.__default.Suc#canCall| |S##1_0_0_1_0@0|)) (and (not (|Set#IsMember| (_module.__default.Suc |S##1_0_0_1_0@0|) ($Box intType (int_2_U (LitInt 0))))) (= $Heap@0 $Heap@5))) (and (=> (= (ControlFlow 0 114) (- 0 119)) ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat) (=> (and (and ($IsAlloc intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat $Heap@5) (|_module.__default.BitSet#canCall| |$rhs#1_1@0|)) (and (|_module.__default.BitSet#canCall| |$rhs#1_1@0|) (= |S##1_0_0_1_1@0| (_module.__default.BitSet |$rhs#1_1@0|)))) (=> (and (and (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6)) (|_module.__default.Suc#canCall| |S##1_0_0_1_1@0|)) (and (not (|Set#IsMember| (_module.__default.Suc |S##1_0_0_1_1@0|) ($Box intType (int_2_U (LitInt 0))))) (= $Heap@5 $Heap@6))) (and (=> (= (ControlFlow 0 114) (- 0 118)) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) (and (=> (= (ControlFlow 0 114) (- 0 117)) ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat) (=> ($IsAlloc intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat $Heap@6) (=> (and (and (|_module.__default.BitSet#canCall| |$rhs#1_0@0|) (= |##S#1_0_0_1_2@0| (_module.__default.BitSet |$rhs#1_0@0|))) (and ($IsAlloc SetType |##S#1_0_0_1_2@0| (TSet Tclass._System.nat) $Heap@6) (|_module.__default.Suc#canCall| (_module.__default.BitSet |$rhs#1_0@0|)))) (and (=> (= (ControlFlow 0 114) (- 0 116)) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) (and (=> (= (ControlFlow 0 114) (- 0 115)) ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat) (=> ($IsAlloc intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat $Heap@6) (=> (and (and (|_module.__default.BitSet#canCall| |$rhs#1_1@0|) (= |##S#1_0_0_1_3@0| (_module.__default.BitSet |$rhs#1_1@0|))) (and ($IsAlloc SetType |##S#1_0_0_1_3@0| (TSet Tclass._System.nat) $Heap@6) (|_module.__default.Suc#canCall| (_module.__default.BitSet |$rhs#1_1@0|)))) (=> (and (and (and (|_module.__default.BitSet#canCall| |$rhs#1_0@0|) (|_module.__default.Suc#canCall| (_module.__default.BitSet |$rhs#1_0@0|))) (and (|_module.__default.BitSet#canCall| |$rhs#1_1@0|) (|_module.__default.Suc#canCall| (_module.__default.BitSet |$rhs#1_1@0|)))) (= (ControlFlow 0 114) (- 0 113))) (= (|Set#Subset| (_module.__default.Suc (_module.__default.BitSet |$rhs#1_0@0|)) (_module.__default.Suc (_module.__default.BitSet |$rhs#1_1@0|))) (|Set#Subset| (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 0)))) (_module.__default.Suc (_module.__default.BitSet |$rhs#1_0@0|))) (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 0)))) (_module.__default.Suc (_module.__default.BitSet |$rhs#1_1@0|)))))))))))))))))))))))))))))
(let ((anon81_Then_correct  (=> (and (and (and ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat) ($IsAlloc intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat $Heap@0)) (and (|_module.__default.BitSet#canCall| |$rhs#1_0@0|) ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat))) (and (and ($IsAlloc intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat $Heap@0) (|_module.__default.BitSet#canCall| |$rhs#1_1@0|)) (and (|_module.__default.BitSet#canCall| |$rhs#1_0@0|) (|_module.__default.BitSet#canCall| |$rhs#1_1@0|)))) (and (=> (= (ControlFlow 0 108) (- 0 112)) ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat) (=> (and (and ($IsAlloc intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat $Heap@0) (|_module.__default.BitSet#canCall| |$rhs#1_0@0|)) (and (|_module.__default.BitSet#canCall| |$rhs#1_0@0|) (= |S##1_0_0_2_0@0| (_module.__default.BitSet |$rhs#1_0@0|)))) (=> (and (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (|_module.__default.Suc#canCall| |S##1_0_0_2_0@0|)) (and (forall ((|x#1| T@U) ) (! (= (|Set#IsMember| |S##1_0_0_2_0@0| ($Box intType |x#1|)) (|Set#IsMember| (_module.__default.Suc |S##1_0_0_2_0@0|) ($Box intType (int_2_U (+ (U_2_int |x#1|) 1)))))
 :qid |Lucasupdfy.241:18|
 :skolemid |600|
 :pattern ( (|Set#IsMember| |S##1_0_0_2_0@0| ($Box intType |x#1|)))
)) (= $Heap@0 $Heap@3))) (and (=> (= (ControlFlow 0 108) (- 0 111)) ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat) (=> (and (and ($IsAlloc intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat $Heap@3) (|_module.__default.BitSet#canCall| |$rhs#1_1@0|)) (and (|_module.__default.BitSet#canCall| |$rhs#1_1@0|) (= |S##1_0_0_2_1@0| (_module.__default.BitSet |$rhs#1_1@0|)))) (=> (and (and (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (|_module.__default.Suc#canCall| |S##1_0_0_2_1@0|)) (and (forall ((|x#1@@0| T@U) ) (! (= (|Set#IsMember| |S##1_0_0_2_1@0| ($Box intType |x#1@@0|)) (|Set#IsMember| (_module.__default.Suc |S##1_0_0_2_1@0|) ($Box intType (int_2_U (+ (U_2_int |x#1@@0|) 1)))))
 :qid |Lucasupdfy.241:18|
 :skolemid |600|
 :pattern ( (|Set#IsMember| |S##1_0_0_2_1@0| ($Box intType |x#1@@0|)))
)) (= $Heap@3 $Heap@4))) (and (=> (= (ControlFlow 0 108) (- 0 110)) ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat) (=> ($IsAlloc intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat $Heap@4) (=> (and (and (|_module.__default.BitSet#canCall| |$rhs#1_0@0|) (= |##S#1_0_0_2_0@0| (_module.__default.BitSet |$rhs#1_0@0|))) (and ($IsAlloc SetType |##S#1_0_0_2_0@0| (TSet Tclass._System.nat) $Heap@4) (|_module.__default.Suc#canCall| (_module.__default.BitSet |$rhs#1_0@0|)))) (and (=> (= (ControlFlow 0 108) (- 0 109)) ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat) (=> ($IsAlloc intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat $Heap@4) (=> (and (and (|_module.__default.BitSet#canCall| |$rhs#1_1@0|) (= |##S#1_0_0_2_1@0| (_module.__default.BitSet |$rhs#1_1@0|))) (and ($IsAlloc SetType |##S#1_0_0_2_1@0| (TSet Tclass._System.nat) $Heap@4) (|_module.__default.Suc#canCall| (_module.__default.BitSet |$rhs#1_1@0|)))) (=> (and (and (and (|_module.__default.BitSet#canCall| |$rhs#1_0@0|) (|_module.__default.Suc#canCall| (_module.__default.BitSet |$rhs#1_0@0|))) (and (|_module.__default.BitSet#canCall| |$rhs#1_1@0|) (|_module.__default.Suc#canCall| (_module.__default.BitSet |$rhs#1_1@0|)))) (= (ControlFlow 0 108) (- 0 107))) (= (|Set#Subset| (_module.__default.BitSet |$rhs#1_0@0|) (_module.__default.BitSet |$rhs#1_1@0|)) (|Set#Subset| (_module.__default.Suc (_module.__default.BitSet |$rhs#1_0@0|)) (_module.__default.Suc (_module.__default.BitSet |$rhs#1_1@0|))))))))))))))))))))))))
(let ((anon80_Then_correct  (=> (and ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat) ($IsAlloc intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat $Heap@0)) (=> (and (and (and ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat) ($IsAlloc intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat $Heap@0)) (and (|_module.__default.binom#canCall| |$rhs#1_1@0| |$rhs#1_0@0|) (= |##n#1_0_0_3_0@0| (_module.__default.binom ($LS $LZ) reveal__module._default.binom |$rhs#1_1@0| |$rhs#1_0@0|)))) (and (and ($IsAlloc intType (int_2_U |##n#1_0_0_3_0@0|) Tclass._System.nat $Heap@0) (|_module.__default.EVEN#canCall| (_module.__default.binom ($LS $LZ) reveal__module._default.binom |$rhs#1_1@0| |$rhs#1_0@0|))) (and (|_module.__default.binom#canCall| |$rhs#1_1@0| |$rhs#1_0@0|) (|_module.__default.EVEN#canCall| (_module.__default.binom ($LS $LZ) reveal__module._default.binom |$rhs#1_1@0| |$rhs#1_0@0|))))) (and (=> (= (ControlFlow 0 99) (- 0 106)) ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat) (and (=> (= (ControlFlow 0 99) (- 0 105)) ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat) (and (=> (= (ControlFlow 0 99) (- 0 104)) (or (<= 0 |m#0|) (= |$rhs#1_0@0| |m#0|))) (=> (or (<= 0 |m#0|) (= |$rhs#1_0@0| |m#0|)) (and (=> (= (ControlFlow 0 99) (- 0 103)) (or (or (<= 0 |n#0@@7|) (< |$rhs#1_0@0| |m#0|)) (= |$rhs#1_1@0| |n#0@@7|))) (=> (or (or (<= 0 |n#0@@7|) (< |$rhs#1_0@0| |m#0|)) (= |$rhs#1_1@0| |n#0@@7|)) (and (=> (= (ControlFlow 0 99) (- 0 102)) (or (< |$rhs#1_0@0| |m#0|) (and (= |$rhs#1_0@0| |m#0|) (< |$rhs#1_1@0| |n#0@@7|)))) (=> (or (< |$rhs#1_0@0| |m#0|) (and (= |$rhs#1_0@0| |m#0|) (< |$rhs#1_1@0| |n#0@@7|))) (=> (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (=> (and (and (and (|_module.__default.BitSet#canCall| |$rhs#1_0@0|) (|_module.__default.BitSet#canCall| |$rhs#1_1@0|)) (and (|_module.__default.binom#canCall| |$rhs#1_1@0| |$rhs#1_0@0|) (|_module.__default.EVEN#canCall| (_module.__default.binom ($LS $LZ) reveal__module._default.binom |$rhs#1_1@0| |$rhs#1_0@0|)))) (and (= (|Set#Subset| (_module.__default.BitSet |$rhs#1_0@0|) (_module.__default.BitSet |$rhs#1_1@0|))  (not (_module.__default.EVEN reveal__module._default.EVEN (_module.__default.binom ($LS ($LS $LZ)) reveal__module._default.binom |$rhs#1_1@0| |$rhs#1_0@0|)))) (= $Heap@0 $Heap@2))) (and (=> (= (ControlFlow 0 99) (- 0 101)) ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat) (=> (and ($IsAlloc intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat $Heap@2) (|_module.__default.BitSet#canCall| |$rhs#1_0@0|)) (and (=> (= (ControlFlow 0 99) (- 0 100)) ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat) (=> (and ($IsAlloc intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat $Heap@2) (|_module.__default.BitSet#canCall| |$rhs#1_1@0|)) (=> (and (and (|_module.__default.BitSet#canCall| |$rhs#1_0@0|) (|_module.__default.BitSet#canCall| |$rhs#1_1@0|)) (= (ControlFlow 0 99) (- 0 98))) (=  (not (_module.__default.EVEN reveal__module._default.EVEN (_module.__default.binom ($LS ($LS $LZ)) reveal__module._default.binom |$rhs#1_1@0| |$rhs#1_0@0|))) (|Set#Subset| (_module.__default.BitSet |$rhs#1_0@0|) (_module.__default.BitSet |$rhs#1_1@0|))))))))))))))))))))))))))
(let ((anon79_Then_correct  (=> (and (and (and ($IsAlloc intType (int_2_U |n#0@@7|) Tclass._System.nat $Heap@0) ($IsAlloc intType (int_2_U |m#0|) Tclass._System.nat $Heap@0)) (and (|_module.__default.binom#canCall| |n#0@@7| |m#0|) (= |##n#1_0_0_4_0@0| (_module.__default.binom ($LS $LZ) reveal__module._default.binom |n#0@@7| |m#0|)))) (and (and ($IsAlloc intType (int_2_U |##n#1_0_0_4_0@0|) Tclass._System.nat $Heap@0) (|_module.__default.EVEN#canCall| (_module.__default.binom ($LS $LZ) reveal__module._default.binom |n#0@@7| |m#0|))) (and (|_module.__default.binom#canCall| |n#0@@7| |m#0|) (|_module.__default.EVEN#canCall| (_module.__default.binom ($LS $LZ) reveal__module._default.binom |n#0@@7| |m#0|))))) (and (=> (= (ControlFlow 0 93) (- 0 97)) ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat) (and (=> (= (ControlFlow 0 93) (- 0 96)) ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat) (=> (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (=> (and (and (|_module.__default.binom#canCall| (Mul (LitInt 2) |$rhs#1_1@0|) (+ (Mul (LitInt 2) |$rhs#1_0@0|) 1)) (|_module.__default.EVEN#canCall| (_module.__default.binom ($LS $LZ) reveal__module._default.binom (Mul (LitInt 2) |$rhs#1_1@0|) (+ (Mul (LitInt 2) |$rhs#1_0@0|) 1)))) (_module.__default.EVEN reveal__module._default.EVEN (_module.__default.binom ($LS ($LS $LZ)) reveal__module._default.binom (Mul (LitInt 2) |$rhs#1_1@0|) (+ (Mul (LitInt 2) |$rhs#1_0@0|) 1)))) (=> (and (and (and (|_module.__default.binom#canCall| (Mul (LitInt 2) |$rhs#1_1@0|) (Mul (LitInt 2) |$rhs#1_0@0|)) (|_module.__default.EVEN#canCall| (_module.__default.binom ($LS $LZ) reveal__module._default.binom (Mul (LitInt 2) |$rhs#1_1@0|) (Mul (LitInt 2) |$rhs#1_0@0|)))) (and (|_module.__default.binom#canCall| |$rhs#1_1@0| |$rhs#1_0@0|) (|_module.__default.EVEN#canCall| (_module.__default.binom ($LS $LZ) reveal__module._default.binom |$rhs#1_1@0| |$rhs#1_0@0|)))) (= (_module.__default.EVEN reveal__module._default.EVEN (_module.__default.binom ($LS ($LS $LZ)) reveal__module._default.binom (Mul (LitInt 2) |$rhs#1_1@0|) (Mul (LitInt 2) |$rhs#1_0@0|))) (_module.__default.EVEN reveal__module._default.EVEN (_module.__default.binom ($LS ($LS $LZ)) reveal__module._default.binom |$rhs#1_1@0| |$rhs#1_0@0|)))) (=> (and (and (and (and (|_module.__default.binom#canCall| (+ (Mul (LitInt 2) |$rhs#1_1@0|) 1) (+ (Mul (LitInt 2) |$rhs#1_0@0|) 1)) (|_module.__default.EVEN#canCall| (_module.__default.binom ($LS $LZ) reveal__module._default.binom (+ (Mul (LitInt 2) |$rhs#1_1@0|) 1) (+ (Mul (LitInt 2) |$rhs#1_0@0|) 1)))) (and (|_module.__default.binom#canCall| |$rhs#1_1@0| |$rhs#1_0@0|) (|_module.__default.EVEN#canCall| (_module.__default.binom ($LS $LZ) reveal__module._default.binom |$rhs#1_1@0| |$rhs#1_0@0|)))) (= (_module.__default.EVEN reveal__module._default.EVEN (_module.__default.binom ($LS ($LS $LZ)) reveal__module._default.binom (+ (Mul (LitInt 2) |$rhs#1_1@0|) 1) (+ (Mul (LitInt 2) |$rhs#1_0@0|) 1))) (_module.__default.EVEN reveal__module._default.EVEN (_module.__default.binom ($LS ($LS $LZ)) reveal__module._default.binom |$rhs#1_1@0| |$rhs#1_0@0|)))) (and (and (and (|_module.__default.binom#canCall| (+ (Mul (LitInt 2) |$rhs#1_1@0|) 1) (Mul (LitInt 2) |$rhs#1_0@0|)) (|_module.__default.EVEN#canCall| (_module.__default.binom ($LS $LZ) reveal__module._default.binom (+ (Mul (LitInt 2) |$rhs#1_1@0|) 1) (Mul (LitInt 2) |$rhs#1_0@0|)))) (and (|_module.__default.binom#canCall| |$rhs#1_1@0| |$rhs#1_0@0|) (|_module.__default.EVEN#canCall| (_module.__default.binom ($LS $LZ) reveal__module._default.binom |$rhs#1_1@0| |$rhs#1_0@0|)))) (and (= (_module.__default.EVEN reveal__module._default.EVEN (_module.__default.binom ($LS ($LS $LZ)) reveal__module._default.binom (+ (Mul (LitInt 2) |$rhs#1_1@0|) 1) (Mul (LitInt 2) |$rhs#1_0@0|))) (_module.__default.EVEN reveal__module._default.EVEN (_module.__default.binom ($LS ($LS $LZ)) reveal__module._default.binom |$rhs#1_1@0| |$rhs#1_0@0|))) (= $Heap@0 $Heap@1)))) (and (=> (= (ControlFlow 0 93) (- 0 95)) ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat) (=> ($IsAlloc intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat $Heap@1) (and (=> (= (ControlFlow 0 93) (- 0 94)) ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat) (=> ($IsAlloc intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat $Heap@1) (=> (and (and (and (|_module.__default.binom#canCall| |$rhs#1_1@0| |$rhs#1_0@0|) (= |##n#1_0_0_4_1@0| (_module.__default.binom ($LS $LZ) reveal__module._default.binom |$rhs#1_1@0| |$rhs#1_0@0|))) (and ($IsAlloc intType (int_2_U |##n#1_0_0_4_1@0|) Tclass._System.nat $Heap@1) (|_module.__default.EVEN#canCall| (_module.__default.binom ($LS $LZ) reveal__module._default.binom |$rhs#1_1@0| |$rhs#1_0@0|)))) (and (and (|_module.__default.binom#canCall| |$rhs#1_1@0| |$rhs#1_0@0|) (|_module.__default.EVEN#canCall| (_module.__default.binom ($LS $LZ) reveal__module._default.binom |$rhs#1_1@0| |$rhs#1_0@0|))) (= (ControlFlow 0 93) (- 0 92)))) (=  (not (_module.__default.EVEN reveal__module._default.EVEN (_module.__default.binom ($LS ($LS $LZ)) reveal__module._default.binom |n#0@@7| |m#0|)))  (not (_module.__default.EVEN reveal__module._default.EVEN (_module.__default.binom ($LS ($LS $LZ)) reveal__module._default.binom |$rhs#1_1@0| |$rhs#1_0@0|))))))))))))))))))))))
(let ((anon78_Then_correct true))
(let ((anon37_correct  (=> (and (|_module.__default.BitSet#canCall| |m#0|) (=> (|Set#IsMember| (_module.__default.BitSet |m#0|) ($Box intType (int_2_U (LitInt 0)))) (|_module.__default.BitSet#canCall| |n#0@@7|))) (and (=> (= (ControlFlow 0 82) (- 0 84)) (|Set#IsMember| (_module.__default.BitSet |m#0|) ($Box intType (int_2_U (LitInt 0))))) (and (=> (= (ControlFlow 0 82) (- 0 83)) (not (|Set#IsMember| (_module.__default.BitSet |n#0@@7|) ($Box intType (int_2_U (LitInt 0)))))) (=> (and (|Set#IsMember| (_module.__default.BitSet |m#0|) ($Box intType (int_2_U (LitInt 0)))) (not (|Set#IsMember| (_module.__default.BitSet |n#0@@7|) ($Box intType (int_2_U (LitInt 0)))))) (=> (and (and (and ($IsAlloc intType (int_2_U |m#0|) Tclass._System.nat $Heap@0) (|_module.__default.BitSet#canCall| |m#0|)) (and ($IsAlloc intType (int_2_U |n#0@@7|) Tclass._System.nat $Heap@0) (|_module.__default.BitSet#canCall| |n#0@@7|))) (and (and (|_module.__default.BitSet#canCall| |m#0|) (|_module.__default.BitSet#canCall| |n#0@@7|)) (= (ControlFlow 0 82) (- 0 81)))) (= (U_2_bool (Lit boolType (bool_2_U false))) (|Set#Subset| (_module.__default.BitSet |m#0|) (_module.__default.BitSet |n#0@@7|))))))))))
(let ((anon75_Else_correct  (=> (and (not (|Set#IsMember| (_module.__default.BitSet |m#0|) ($Box intType (int_2_U (LitInt 0))))) (= (ControlFlow 0 86) 82)) anon37_correct)))
(let ((anon75_Then_correct  (=> (and (and (|Set#IsMember| (_module.__default.BitSet |m#0|) ($Box intType (int_2_U (LitInt 0)))) ($IsAlloc intType (int_2_U |n#0@@7|) Tclass._System.nat $Heap@0)) (and (|_module.__default.BitSet#canCall| |n#0@@7|) (= (ControlFlow 0 85) 82))) anon37_correct)))
(let ((anon74_Then_correct  (=> (and ($IsAlloc intType (int_2_U |m#0|) Tclass._System.nat $Heap@0) (|_module.__default.BitSet#canCall| |m#0|)) (and (=> (= (ControlFlow 0 87) 85) anon75_Then_correct) (=> (= (ControlFlow 0 87) 86) anon75_Else_correct)))))
(let ((anon73_Then_correct  (=> (and (and (and ($IsAlloc intType (int_2_U |n#0@@7|) Tclass._System.nat $Heap@0) ($IsAlloc intType (int_2_U |m#0|) Tclass._System.nat $Heap@0)) (and (|_module.__default.binom#canCall| |n#0@@7| |m#0|) (= |##n#1_1_0_1_0@0| (_module.__default.binom ($LS $LZ) reveal__module._default.binom |n#0@@7| |m#0|)))) (and (and ($IsAlloc intType (int_2_U |##n#1_1_0_1_0@0|) Tclass._System.nat $Heap@0) (|_module.__default.EVEN#canCall| (_module.__default.binom ($LS $LZ) reveal__module._default.binom |n#0@@7| |m#0|))) (and (|_module.__default.binom#canCall| |n#0@@7| |m#0|) (|_module.__default.EVEN#canCall| (_module.__default.binom ($LS $LZ) reveal__module._default.binom |n#0@@7| |m#0|))))) (and (=> (= (ControlFlow 0 77) (- 0 79)) ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat) (and (=> (= (ControlFlow 0 77) (- 0 78)) ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat) (=> (and ($IsGoodHeap $Heap@9) ($IsHeapAnchor $Heap@9)) (=> (and (and (|_module.__default.binom#canCall| (Mul (LitInt 2) |$rhs#1_1@0|) (+ (Mul (LitInt 2) |$rhs#1_0@0|) 1)) (|_module.__default.EVEN#canCall| (_module.__default.binom ($LS $LZ) reveal__module._default.binom (Mul (LitInt 2) |$rhs#1_1@0|) (+ (Mul (LitInt 2) |$rhs#1_0@0|) 1)))) (_module.__default.EVEN reveal__module._default.EVEN (_module.__default.binom ($LS ($LS $LZ)) reveal__module._default.binom (Mul (LitInt 2) |$rhs#1_1@0|) (+ (Mul (LitInt 2) |$rhs#1_0@0|) 1)))) (=> (and (and (and (and (and (|_module.__default.binom#canCall| (Mul (LitInt 2) |$rhs#1_1@0|) (Mul (LitInt 2) |$rhs#1_0@0|)) (|_module.__default.EVEN#canCall| (_module.__default.binom ($LS $LZ) reveal__module._default.binom (Mul (LitInt 2) |$rhs#1_1@0|) (Mul (LitInt 2) |$rhs#1_0@0|)))) (and (|_module.__default.binom#canCall| |$rhs#1_1@0| |$rhs#1_0@0|) (|_module.__default.EVEN#canCall| (_module.__default.binom ($LS $LZ) reveal__module._default.binom |$rhs#1_1@0| |$rhs#1_0@0|)))) (= (_module.__default.EVEN reveal__module._default.EVEN (_module.__default.binom ($LS ($LS $LZ)) reveal__module._default.binom (Mul (LitInt 2) |$rhs#1_1@0|) (Mul (LitInt 2) |$rhs#1_0@0|))) (_module.__default.EVEN reveal__module._default.EVEN (_module.__default.binom ($LS ($LS $LZ)) reveal__module._default.binom |$rhs#1_1@0| |$rhs#1_0@0|)))) (and (and (and (|_module.__default.binom#canCall| (+ (Mul (LitInt 2) |$rhs#1_1@0|) 1) (+ (Mul (LitInt 2) |$rhs#1_0@0|) 1)) (|_module.__default.EVEN#canCall| (_module.__default.binom ($LS $LZ) reveal__module._default.binom (+ (Mul (LitInt 2) |$rhs#1_1@0|) 1) (+ (Mul (LitInt 2) |$rhs#1_0@0|) 1)))) (and (|_module.__default.binom#canCall| |$rhs#1_1@0| |$rhs#1_0@0|) (|_module.__default.EVEN#canCall| (_module.__default.binom ($LS $LZ) reveal__module._default.binom |$rhs#1_1@0| |$rhs#1_0@0|)))) (= (_module.__default.EVEN reveal__module._default.EVEN (_module.__default.binom ($LS ($LS $LZ)) reveal__module._default.binom (+ (Mul (LitInt 2) |$rhs#1_1@0|) 1) (+ (Mul (LitInt 2) |$rhs#1_0@0|) 1))) (_module.__default.EVEN reveal__module._default.EVEN (_module.__default.binom ($LS ($LS $LZ)) reveal__module._default.binom |$rhs#1_1@0| |$rhs#1_0@0|))))) (and (and (and (and (|_module.__default.binom#canCall| (+ (Mul (LitInt 2) |$rhs#1_1@0|) 1) (Mul (LitInt 2) |$rhs#1_0@0|)) (|_module.__default.EVEN#canCall| (_module.__default.binom ($LS $LZ) reveal__module._default.binom (+ (Mul (LitInt 2) |$rhs#1_1@0|) 1) (Mul (LitInt 2) |$rhs#1_0@0|)))) (and (|_module.__default.binom#canCall| |$rhs#1_1@0| |$rhs#1_0@0|) (|_module.__default.EVEN#canCall| (_module.__default.binom ($LS $LZ) reveal__module._default.binom |$rhs#1_1@0| |$rhs#1_0@0|)))) (= (_module.__default.EVEN reveal__module._default.EVEN (_module.__default.binom ($LS ($LS $LZ)) reveal__module._default.binom (+ (Mul (LitInt 2) |$rhs#1_1@0|) 1) (Mul (LitInt 2) |$rhs#1_0@0|))) (_module.__default.EVEN reveal__module._default.EVEN (_module.__default.binom ($LS ($LS $LZ)) reveal__module._default.binom |$rhs#1_1@0| |$rhs#1_0@0|)))) (and (= $Heap@0 $Heap@9) (= (ControlFlow 0 77) (- 0 76))))) (=  (not (_module.__default.EVEN reveal__module._default.EVEN (_module.__default.binom ($LS ($LS $LZ)) reveal__module._default.binom |n#0@@7| |m#0|))) (U_2_bool (Lit boolType (bool_2_U false))))))))))))))
(let ((anon72_Then_correct true))
(let ((anon69_Then_correct  (=> ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat) (=> (and (and (and (and ($IsAlloc intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat $Heap@0) (|_module.__default.BitSet#canCall| |$rhs#1_0@0|)) (and (= |##S#1_2_0_0_0@0| (_module.__default.BitSet |$rhs#1_0@0|)) ($IsAlloc SetType |##S#1_2_0_0_0@0| (TSet Tclass._System.nat) $Heap@0))) (and (and (|_module.__default.Suc#canCall| (_module.__default.BitSet |$rhs#1_0@0|)) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)) (and ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat) ($IsAlloc intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat $Heap@0)))) (and (and (and (|_module.__default.BitSet#canCall| |$rhs#1_1@0|) (= |##S#1_2_0_0_1@0| (_module.__default.BitSet |$rhs#1_1@0|))) (and ($IsAlloc SetType |##S#1_2_0_0_1@0| (TSet Tclass._System.nat) $Heap@0) (|_module.__default.Suc#canCall| (_module.__default.BitSet |$rhs#1_1@0|)))) (and (and (|_module.__default.BitSet#canCall| |$rhs#1_0@0|) (|_module.__default.Suc#canCall| (_module.__default.BitSet |$rhs#1_0@0|))) (and (|_module.__default.BitSet#canCall| |$rhs#1_1@0|) (|_module.__default.Suc#canCall| (_module.__default.BitSet |$rhs#1_1@0|)))))) (and (=> (= (ControlFlow 0 66) (- 0 70)) ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat) (=> (and ($IsGoodHeap $Heap@15) ($IsHeapAnchor $Heap@15)) (=> (and (and (and (|_module.__default.BitSet#canCall| (Mul (LitInt 2) |$rhs#1_0@0|)) (and (|_module.__default.BitSet#canCall| |$rhs#1_0@0|) (|_module.__default.Suc#canCall| (_module.__default.BitSet |$rhs#1_0@0|)))) (|Set#Equal| (_module.__default.BitSet (Mul (LitInt 2) |$rhs#1_0@0|)) (_module.__default.Suc (_module.__default.BitSet |$rhs#1_0@0|)))) (and (and (|_module.__default.BitSet#canCall| (+ (Mul (LitInt 2) |$rhs#1_0@0|) 1)) (and (|_module.__default.BitSet#canCall| |$rhs#1_0@0|) (|_module.__default.Suc#canCall| (_module.__default.BitSet |$rhs#1_0@0|)))) (and (|Set#Equal| (_module.__default.BitSet (+ (Mul (LitInt 2) |$rhs#1_0@0|) 1)) (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 0)))) (_module.__default.Suc (_module.__default.BitSet |$rhs#1_0@0|)))) (= $Heap@0 $Heap@15)))) (and (=> (= (ControlFlow 0 66) (- 0 69)) ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat) (=> (and ($IsGoodHeap $Heap@16) ($IsHeapAnchor $Heap@16)) (=> (and (and (and (|_module.__default.BitSet#canCall| (Mul (LitInt 2) |$rhs#1_1@0|)) (and (|_module.__default.BitSet#canCall| |$rhs#1_1@0|) (|_module.__default.Suc#canCall| (_module.__default.BitSet |$rhs#1_1@0|)))) (|Set#Equal| (_module.__default.BitSet (Mul (LitInt 2) |$rhs#1_1@0|)) (_module.__default.Suc (_module.__default.BitSet |$rhs#1_1@0|)))) (and (and (|_module.__default.BitSet#canCall| (+ (Mul (LitInt 2) |$rhs#1_1@0|) 1)) (and (|_module.__default.BitSet#canCall| |$rhs#1_1@0|) (|_module.__default.Suc#canCall| (_module.__default.BitSet |$rhs#1_1@0|)))) (and (|Set#Equal| (_module.__default.BitSet (+ (Mul (LitInt 2) |$rhs#1_1@0|) 1)) (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 0)))) (_module.__default.Suc (_module.__default.BitSet |$rhs#1_1@0|)))) (= $Heap@15 $Heap@16)))) (and (=> (= (ControlFlow 0 66) (- 0 68)) ($Is intType (int_2_U (Mul (LitInt 2) |$rhs#1_0@0|)) Tclass._System.nat)) (=> ($Is intType (int_2_U (Mul (LitInt 2) |$rhs#1_0@0|)) Tclass._System.nat) (=> (= |##n#1_2_0_0_2@0| (Mul (LitInt 2) |$rhs#1_0@0|)) (=> (and ($IsAlloc intType (int_2_U |##n#1_2_0_0_2@0|) Tclass._System.nat $Heap@16) (|_module.__default.BitSet#canCall| (Mul (LitInt 2) |$rhs#1_0@0|))) (and (=> (= (ControlFlow 0 66) (- 0 67)) ($Is intType (int_2_U (+ (Mul (LitInt 2) |$rhs#1_1@0|) 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (+ (Mul (LitInt 2) |$rhs#1_1@0|) 1)) Tclass._System.nat) (=> (= |##n#1_2_0_0_3@0| (+ (Mul (LitInt 2) |$rhs#1_1@0|) 1)) (=> (and ($IsAlloc intType (int_2_U |##n#1_2_0_0_3@0|) Tclass._System.nat $Heap@16) (|_module.__default.BitSet#canCall| (+ (Mul (LitInt 2) |$rhs#1_1@0|) 1))) (=> (and (and (|_module.__default.BitSet#canCall| (Mul (LitInt 2) |$rhs#1_0@0|)) (|_module.__default.BitSet#canCall| (+ (Mul (LitInt 2) |$rhs#1_1@0|) 1))) (= (ControlFlow 0 66) (- 0 65))) (= (|Set#Subset| (_module.__default.Suc (_module.__default.BitSet |$rhs#1_0@0|)) (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 0)))) (_module.__default.Suc (_module.__default.BitSet |$rhs#1_1@0|)))) (|Set#Subset| (_module.__default.BitSet (Mul (LitInt 2) |$rhs#1_0@0|)) (_module.__default.BitSet (+ (Mul (LitInt 2) |$rhs#1_1@0|) 1)))))))))))))))))))))))))
(let ((anon68_Then_correct  (=> (and (and (and (and ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat) ($IsAlloc intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat $Heap@0)) (and (|_module.__default.BitSet#canCall| |$rhs#1_0@0|) (= |##S#1_2_0_1_0@0| (_module.__default.BitSet |$rhs#1_0@0|)))) (and (and ($IsAlloc SetType |##S#1_2_0_1_0@0| (TSet Tclass._System.nat) $Heap@0) (|_module.__default.Suc#canCall| (_module.__default.BitSet |$rhs#1_0@0|))) (and ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat) ($IsAlloc intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat $Heap@0)))) (and (and (and (|_module.__default.BitSet#canCall| |$rhs#1_1@0|) (= |##S#1_2_0_1_1@0| (_module.__default.BitSet |$rhs#1_1@0|))) (and ($IsAlloc SetType |##S#1_2_0_1_1@0| (TSet Tclass._System.nat) $Heap@0) (|_module.__default.Suc#canCall| (_module.__default.BitSet |$rhs#1_1@0|)))) (and (and (|_module.__default.BitSet#canCall| |$rhs#1_0@0|) (|_module.__default.Suc#canCall| (_module.__default.BitSet |$rhs#1_0@0|))) (and (|_module.__default.BitSet#canCall| |$rhs#1_1@0|) (|_module.__default.Suc#canCall| (_module.__default.BitSet |$rhs#1_1@0|)))))) (and (=> (= (ControlFlow 0 60) (- 0 64)) ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat) (=> (and (and ($IsAlloc intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat $Heap@0) (|_module.__default.BitSet#canCall| |$rhs#1_0@0|)) (and (|_module.__default.BitSet#canCall| |$rhs#1_0@0|) (= |S##1_2_0_1_0@0| (_module.__default.BitSet |$rhs#1_0@0|)))) (=> (and (and (and ($IsGoodHeap $Heap@14) ($IsHeapAnchor $Heap@14)) (|_module.__default.Suc#canCall| |S##1_2_0_1_0@0|)) (and (not (|Set#IsMember| (_module.__default.Suc |S##1_2_0_1_0@0|) ($Box intType (int_2_U (LitInt 0))))) (= $Heap@0 $Heap@14))) (and (=> (= (ControlFlow 0 60) (- 0 63)) ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat) (=> ($IsAlloc intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat $Heap@14) (=> (and (and (|_module.__default.BitSet#canCall| |$rhs#1_0@0|) (= |##S#1_2_0_1_2@0| (_module.__default.BitSet |$rhs#1_0@0|))) (and ($IsAlloc SetType |##S#1_2_0_1_2@0| (TSet Tclass._System.nat) $Heap@14) (|_module.__default.Suc#canCall| (_module.__default.BitSet |$rhs#1_0@0|)))) (and (=> (= (ControlFlow 0 60) (- 0 62)) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) (and (=> (= (ControlFlow 0 60) (- 0 61)) ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat) (=> ($IsAlloc intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat $Heap@14) (=> (and (and (|_module.__default.BitSet#canCall| |$rhs#1_1@0|) (= |##S#1_2_0_1_3@0| (_module.__default.BitSet |$rhs#1_1@0|))) (and ($IsAlloc SetType |##S#1_2_0_1_3@0| (TSet Tclass._System.nat) $Heap@14) (|_module.__default.Suc#canCall| (_module.__default.BitSet |$rhs#1_1@0|)))) (=> (and (and (and (|_module.__default.BitSet#canCall| |$rhs#1_0@0|) (|_module.__default.Suc#canCall| (_module.__default.BitSet |$rhs#1_0@0|))) (and (|_module.__default.BitSet#canCall| |$rhs#1_1@0|) (|_module.__default.Suc#canCall| (_module.__default.BitSet |$rhs#1_1@0|)))) (= (ControlFlow 0 60) (- 0 59))) (= (|Set#Subset| (_module.__default.Suc (_module.__default.BitSet |$rhs#1_0@0|)) (_module.__default.Suc (_module.__default.BitSet |$rhs#1_1@0|))) (|Set#Subset| (_module.__default.Suc (_module.__default.BitSet |$rhs#1_0@0|)) (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 0)))) (_module.__default.Suc (_module.__default.BitSet |$rhs#1_1@0|)))))))))))))))))))))))
(let ((anon67_Then_correct  (=> (and (and (and ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat) ($IsAlloc intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat $Heap@0)) (and (|_module.__default.BitSet#canCall| |$rhs#1_0@0|) ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat))) (and (and ($IsAlloc intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat $Heap@0) (|_module.__default.BitSet#canCall| |$rhs#1_1@0|)) (and (|_module.__default.BitSet#canCall| |$rhs#1_0@0|) (|_module.__default.BitSet#canCall| |$rhs#1_1@0|)))) (and (=> (= (ControlFlow 0 54) (- 0 58)) ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat) (=> (and (and ($IsAlloc intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat $Heap@0) (|_module.__default.BitSet#canCall| |$rhs#1_0@0|)) (and (|_module.__default.BitSet#canCall| |$rhs#1_0@0|) (= |S##1_2_0_2_0@0| (_module.__default.BitSet |$rhs#1_0@0|)))) (=> (and (and (and ($IsGoodHeap $Heap@12) ($IsHeapAnchor $Heap@12)) (|_module.__default.Suc#canCall| |S##1_2_0_2_0@0|)) (and (forall ((|x#1@@1| T@U) ) (! (= (|Set#IsMember| |S##1_2_0_2_0@0| ($Box intType |x#1@@1|)) (|Set#IsMember| (_module.__default.Suc |S##1_2_0_2_0@0|) ($Box intType (int_2_U (+ (U_2_int |x#1@@1|) 1)))))
 :qid |Lucasupdfy.241:18|
 :skolemid |600|
 :pattern ( (|Set#IsMember| |S##1_2_0_2_0@0| ($Box intType |x#1@@1|)))
)) (= $Heap@0 $Heap@12))) (and (=> (= (ControlFlow 0 54) (- 0 57)) ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat) (=> (and (and ($IsAlloc intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat $Heap@12) (|_module.__default.BitSet#canCall| |$rhs#1_1@0|)) (and (|_module.__default.BitSet#canCall| |$rhs#1_1@0|) (= |S##1_2_0_2_1@0| (_module.__default.BitSet |$rhs#1_1@0|)))) (=> (and (and (and ($IsGoodHeap $Heap@13) ($IsHeapAnchor $Heap@13)) (|_module.__default.Suc#canCall| |S##1_2_0_2_1@0|)) (and (forall ((|x#1@@2| T@U) ) (! (= (|Set#IsMember| |S##1_2_0_2_1@0| ($Box intType |x#1@@2|)) (|Set#IsMember| (_module.__default.Suc |S##1_2_0_2_1@0|) ($Box intType (int_2_U (+ (U_2_int |x#1@@2|) 1)))))
 :qid |Lucasupdfy.241:18|
 :skolemid |600|
 :pattern ( (|Set#IsMember| |S##1_2_0_2_1@0| ($Box intType |x#1@@2|)))
)) (= $Heap@12 $Heap@13))) (and (=> (= (ControlFlow 0 54) (- 0 56)) ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat) (=> ($IsAlloc intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat $Heap@13) (=> (and (and (|_module.__default.BitSet#canCall| |$rhs#1_0@0|) (= |##S#1_2_0_2_0@0| (_module.__default.BitSet |$rhs#1_0@0|))) (and ($IsAlloc SetType |##S#1_2_0_2_0@0| (TSet Tclass._System.nat) $Heap@13) (|_module.__default.Suc#canCall| (_module.__default.BitSet |$rhs#1_0@0|)))) (and (=> (= (ControlFlow 0 54) (- 0 55)) ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat) (=> ($IsAlloc intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat $Heap@13) (=> (and (and (|_module.__default.BitSet#canCall| |$rhs#1_1@0|) (= |##S#1_2_0_2_1@0| (_module.__default.BitSet |$rhs#1_1@0|))) (and ($IsAlloc SetType |##S#1_2_0_2_1@0| (TSet Tclass._System.nat) $Heap@13) (|_module.__default.Suc#canCall| (_module.__default.BitSet |$rhs#1_1@0|)))) (=> (and (and (and (|_module.__default.BitSet#canCall| |$rhs#1_0@0|) (|_module.__default.Suc#canCall| (_module.__default.BitSet |$rhs#1_0@0|))) (and (|_module.__default.BitSet#canCall| |$rhs#1_1@0|) (|_module.__default.Suc#canCall| (_module.__default.BitSet |$rhs#1_1@0|)))) (= (ControlFlow 0 54) (- 0 53))) (= (|Set#Subset| (_module.__default.BitSet |$rhs#1_0@0|) (_module.__default.BitSet |$rhs#1_1@0|)) (|Set#Subset| (_module.__default.Suc (_module.__default.BitSet |$rhs#1_0@0|)) (_module.__default.Suc (_module.__default.BitSet |$rhs#1_1@0|))))))))))))))))))))))))
(let ((anon66_Then_correct  (=> (and ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat) ($IsAlloc intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat $Heap@0)) (=> (and (and (and ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat) ($IsAlloc intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat $Heap@0)) (and (|_module.__default.binom#canCall| |$rhs#1_1@0| |$rhs#1_0@0|) (= |##n#1_2_0_3_0@0| (_module.__default.binom ($LS $LZ) reveal__module._default.binom |$rhs#1_1@0| |$rhs#1_0@0|)))) (and (and ($IsAlloc intType (int_2_U |##n#1_2_0_3_0@0|) Tclass._System.nat $Heap@0) (|_module.__default.EVEN#canCall| (_module.__default.binom ($LS $LZ) reveal__module._default.binom |$rhs#1_1@0| |$rhs#1_0@0|))) (and (|_module.__default.binom#canCall| |$rhs#1_1@0| |$rhs#1_0@0|) (|_module.__default.EVEN#canCall| (_module.__default.binom ($LS $LZ) reveal__module._default.binom |$rhs#1_1@0| |$rhs#1_0@0|))))) (and (=> (= (ControlFlow 0 45) (- 0 52)) ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat) (and (=> (= (ControlFlow 0 45) (- 0 51)) ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat) (and (=> (= (ControlFlow 0 45) (- 0 50)) (or (<= 0 |m#0|) (= |$rhs#1_0@0| |m#0|))) (=> (or (<= 0 |m#0|) (= |$rhs#1_0@0| |m#0|)) (and (=> (= (ControlFlow 0 45) (- 0 49)) (or (or (<= 0 |n#0@@7|) (< |$rhs#1_0@0| |m#0|)) (= |$rhs#1_1@0| |n#0@@7|))) (=> (or (or (<= 0 |n#0@@7|) (< |$rhs#1_0@0| |m#0|)) (= |$rhs#1_1@0| |n#0@@7|)) (and (=> (= (ControlFlow 0 45) (- 0 48)) (or (< |$rhs#1_0@0| |m#0|) (and (= |$rhs#1_0@0| |m#0|) (< |$rhs#1_1@0| |n#0@@7|)))) (=> (or (< |$rhs#1_0@0| |m#0|) (and (= |$rhs#1_0@0| |m#0|) (< |$rhs#1_1@0| |n#0@@7|))) (=> (and ($IsGoodHeap $Heap@11) ($IsHeapAnchor $Heap@11)) (=> (and (and (and (|_module.__default.BitSet#canCall| |$rhs#1_0@0|) (|_module.__default.BitSet#canCall| |$rhs#1_1@0|)) (and (|_module.__default.binom#canCall| |$rhs#1_1@0| |$rhs#1_0@0|) (|_module.__default.EVEN#canCall| (_module.__default.binom ($LS $LZ) reveal__module._default.binom |$rhs#1_1@0| |$rhs#1_0@0|)))) (and (= (|Set#Subset| (_module.__default.BitSet |$rhs#1_0@0|) (_module.__default.BitSet |$rhs#1_1@0|))  (not (_module.__default.EVEN reveal__module._default.EVEN (_module.__default.binom ($LS ($LS $LZ)) reveal__module._default.binom |$rhs#1_1@0| |$rhs#1_0@0|)))) (= $Heap@0 $Heap@11))) (and (=> (= (ControlFlow 0 45) (- 0 47)) ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat) (=> (and ($IsAlloc intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat $Heap@11) (|_module.__default.BitSet#canCall| |$rhs#1_0@0|)) (and (=> (= (ControlFlow 0 45) (- 0 46)) ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat) (=> (and ($IsAlloc intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat $Heap@11) (|_module.__default.BitSet#canCall| |$rhs#1_1@0|)) (=> (and (and (|_module.__default.BitSet#canCall| |$rhs#1_0@0|) (|_module.__default.BitSet#canCall| |$rhs#1_1@0|)) (= (ControlFlow 0 45) (- 0 44))) (=  (not (_module.__default.EVEN reveal__module._default.EVEN (_module.__default.binom ($LS ($LS $LZ)) reveal__module._default.binom |$rhs#1_1@0| |$rhs#1_0@0|))) (|Set#Subset| (_module.__default.BitSet |$rhs#1_0@0|) (_module.__default.BitSet |$rhs#1_1@0|))))))))))))))))))))))))))
(let ((anon65_Then_correct  (=> (and (and (and ($IsAlloc intType (int_2_U |n#0@@7|) Tclass._System.nat $Heap@0) ($IsAlloc intType (int_2_U |m#0|) Tclass._System.nat $Heap@0)) (and (|_module.__default.binom#canCall| |n#0@@7| |m#0|) (= |##n#1_2_0_4_0@0| (_module.__default.binom ($LS $LZ) reveal__module._default.binom |n#0@@7| |m#0|)))) (and (and ($IsAlloc intType (int_2_U |##n#1_2_0_4_0@0|) Tclass._System.nat $Heap@0) (|_module.__default.EVEN#canCall| (_module.__default.binom ($LS $LZ) reveal__module._default.binom |n#0@@7| |m#0|))) (and (|_module.__default.binom#canCall| |n#0@@7| |m#0|) (|_module.__default.EVEN#canCall| (_module.__default.binom ($LS $LZ) reveal__module._default.binom |n#0@@7| |m#0|))))) (and (=> (= (ControlFlow 0 39) (- 0 43)) ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat) (and (=> (= (ControlFlow 0 39) (- 0 42)) ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat) (=> (and ($IsGoodHeap $Heap@10) ($IsHeapAnchor $Heap@10)) (=> (and (and (|_module.__default.binom#canCall| (Mul (LitInt 2) |$rhs#1_1@0|) (+ (Mul (LitInt 2) |$rhs#1_0@0|) 1)) (|_module.__default.EVEN#canCall| (_module.__default.binom ($LS $LZ) reveal__module._default.binom (Mul (LitInt 2) |$rhs#1_1@0|) (+ (Mul (LitInt 2) |$rhs#1_0@0|) 1)))) (_module.__default.EVEN reveal__module._default.EVEN (_module.__default.binom ($LS ($LS $LZ)) reveal__module._default.binom (Mul (LitInt 2) |$rhs#1_1@0|) (+ (Mul (LitInt 2) |$rhs#1_0@0|) 1)))) (=> (and (and (and (|_module.__default.binom#canCall| (Mul (LitInt 2) |$rhs#1_1@0|) (Mul (LitInt 2) |$rhs#1_0@0|)) (|_module.__default.EVEN#canCall| (_module.__default.binom ($LS $LZ) reveal__module._default.binom (Mul (LitInt 2) |$rhs#1_1@0|) (Mul (LitInt 2) |$rhs#1_0@0|)))) (and (|_module.__default.binom#canCall| |$rhs#1_1@0| |$rhs#1_0@0|) (|_module.__default.EVEN#canCall| (_module.__default.binom ($LS $LZ) reveal__module._default.binom |$rhs#1_1@0| |$rhs#1_0@0|)))) (= (_module.__default.EVEN reveal__module._default.EVEN (_module.__default.binom ($LS ($LS $LZ)) reveal__module._default.binom (Mul (LitInt 2) |$rhs#1_1@0|) (Mul (LitInt 2) |$rhs#1_0@0|))) (_module.__default.EVEN reveal__module._default.EVEN (_module.__default.binom ($LS ($LS $LZ)) reveal__module._default.binom |$rhs#1_1@0| |$rhs#1_0@0|)))) (=> (and (and (and (and (|_module.__default.binom#canCall| (+ (Mul (LitInt 2) |$rhs#1_1@0|) 1) (+ (Mul (LitInt 2) |$rhs#1_0@0|) 1)) (|_module.__default.EVEN#canCall| (_module.__default.binom ($LS $LZ) reveal__module._default.binom (+ (Mul (LitInt 2) |$rhs#1_1@0|) 1) (+ (Mul (LitInt 2) |$rhs#1_0@0|) 1)))) (and (|_module.__default.binom#canCall| |$rhs#1_1@0| |$rhs#1_0@0|) (|_module.__default.EVEN#canCall| (_module.__default.binom ($LS $LZ) reveal__module._default.binom |$rhs#1_1@0| |$rhs#1_0@0|)))) (= (_module.__default.EVEN reveal__module._default.EVEN (_module.__default.binom ($LS ($LS $LZ)) reveal__module._default.binom (+ (Mul (LitInt 2) |$rhs#1_1@0|) 1) (+ (Mul (LitInt 2) |$rhs#1_0@0|) 1))) (_module.__default.EVEN reveal__module._default.EVEN (_module.__default.binom ($LS ($LS $LZ)) reveal__module._default.binom |$rhs#1_1@0| |$rhs#1_0@0|)))) (and (and (and (|_module.__default.binom#canCall| (+ (Mul (LitInt 2) |$rhs#1_1@0|) 1) (Mul (LitInt 2) |$rhs#1_0@0|)) (|_module.__default.EVEN#canCall| (_module.__default.binom ($LS $LZ) reveal__module._default.binom (+ (Mul (LitInt 2) |$rhs#1_1@0|) 1) (Mul (LitInt 2) |$rhs#1_0@0|)))) (and (|_module.__default.binom#canCall| |$rhs#1_1@0| |$rhs#1_0@0|) (|_module.__default.EVEN#canCall| (_module.__default.binom ($LS $LZ) reveal__module._default.binom |$rhs#1_1@0| |$rhs#1_0@0|)))) (and (= (_module.__default.EVEN reveal__module._default.EVEN (_module.__default.binom ($LS ($LS $LZ)) reveal__module._default.binom (+ (Mul (LitInt 2) |$rhs#1_1@0|) 1) (Mul (LitInt 2) |$rhs#1_0@0|))) (_module.__default.EVEN reveal__module._default.EVEN (_module.__default.binom ($LS ($LS $LZ)) reveal__module._default.binom |$rhs#1_1@0| |$rhs#1_0@0|))) (= $Heap@0 $Heap@10)))) (and (=> (= (ControlFlow 0 39) (- 0 41)) ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat) (=> ($IsAlloc intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat $Heap@10) (and (=> (= (ControlFlow 0 39) (- 0 40)) ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat) (=> ($IsAlloc intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat $Heap@10) (=> (and (and (and (|_module.__default.binom#canCall| |$rhs#1_1@0| |$rhs#1_0@0|) (= |##n#1_2_0_4_1@0| (_module.__default.binom ($LS $LZ) reveal__module._default.binom |$rhs#1_1@0| |$rhs#1_0@0|))) (and ($IsAlloc intType (int_2_U |##n#1_2_0_4_1@0|) Tclass._System.nat $Heap@10) (|_module.__default.EVEN#canCall| (_module.__default.binom ($LS $LZ) reveal__module._default.binom |$rhs#1_1@0| |$rhs#1_0@0|)))) (and (and (|_module.__default.binom#canCall| |$rhs#1_1@0| |$rhs#1_0@0|) (|_module.__default.EVEN#canCall| (_module.__default.binom ($LS $LZ) reveal__module._default.binom |$rhs#1_1@0| |$rhs#1_0@0|))) (= (ControlFlow 0 39) (- 0 38)))) (=  (not (_module.__default.EVEN reveal__module._default.EVEN (_module.__default.binom ($LS ($LS $LZ)) reveal__module._default.binom |n#0@@7| |m#0|)))  (not (_module.__default.EVEN reveal__module._default.EVEN (_module.__default.binom ($LS ($LS $LZ)) reveal__module._default.binom |$rhs#1_1@0| |$rhs#1_0@0|))))))))))))))))))))))
(let ((anon64_Then_correct true))
(let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 32) (- 0 31)) (= (|Set#Subset| (_module.__default.BitSet |m#0|) (_module.__default.BitSet |n#0@@7|))  (not (_module.__default.EVEN reveal__module._default.EVEN (_module.__default.binom ($LS ($LS $LZ)) reveal__module._default.binom |n#0@@7| |m#0|)))))))
(let ((anon9_correct  (=> (and (|_module.__default.binom#canCall| |n#0@@7| |m#0|) (=> (= (_module.__default.binom ($LS $LZ) reveal__module._default.binom |n#0@@7| |m#0|) (LitInt 1)) (|_module.__default.EVEN#canCall| (LitInt 1)))) (=> (and (and (= (_module.__default.binom ($LS $LZ) reveal__module._default.binom |n#0@@7| |m#0|) (LitInt 1)) (not (_module.__default.EVEN reveal__module._default.EVEN (LitInt 1)))) (= (ControlFlow 0 134) 32)) GeneratedUnifiedExit_correct))))
(let ((anon54_Else_correct  (=> (and (or (not (= (_module.__default.binom ($LS $LZ) reveal__module._default.binom |n#0@@7| |m#0|) (LitInt 1))) (not true)) (= (ControlFlow 0 136) 134)) anon9_correct)))
(let ((anon54_Then_correct  (=> (and (= (_module.__default.binom ($LS $LZ) reveal__module._default.binom |n#0@@7| |m#0|) (LitInt 1)) ($Is intType (int_2_U (LitInt 1)) Tclass._System.nat)) (=> (and (and (= |##n#0_1@0| (LitInt 1)) ($IsAlloc intType (int_2_U |##n#0_1@0|) Tclass._System.nat $Heap@0)) (and (|_module.__default.EVEN#canCall| (LitInt 1)) (= (ControlFlow 0 135) 134))) anon9_correct))))
(let ((anon52_Else_correct  (=> ($IsAlloc intType (int_2_U |n#0@@7|) Tclass._System.nat $Heap@0) (=> (and ($IsAlloc intType (int_2_U |m#0|) Tclass._System.nat $Heap@0) (|_module.__default.binom#canCall| |n#0@@7| |m#0|)) (and (=> (= (ControlFlow 0 137) 135) anon54_Then_correct) (=> (= (ControlFlow 0 137) 136) anon54_Else_correct))))))
(let ((anon51_Then_correct  (=> (and (= |m#0| (LitInt 0)) (= |n#0@@7| (LitInt 0))) (and (=> (= (ControlFlow 0 145) 144) anon52_Then_correct) (=> (= (ControlFlow 0 145) 137) anon52_Else_correct)))))
(let ((anon83_Else_correct  (=> (and (=  (not (_module.__default.EVEN reveal__module._default.EVEN (_module.__default.binom ($LS $LZ) reveal__module._default.binom |n#0@@7| |m#0|))) (|Set#Subset| (_module.__default.BitSet (+ (Mul (LitInt 2) |$rhs#1_0@0|) 1)) (_module.__default.BitSet (+ (Mul (LitInt 2) |$rhs#1_1@0|) 1)))) (= (ControlFlow 0 127) 32)) GeneratedUnifiedExit_correct)))
(let ((anon41_correct  (=> (and (= |m#0| (+ (Mul (LitInt 2) |$rhs#1_0@0|) 1)) (= |n#0@@7| (+ (Mul (LitInt 2) |$rhs#1_1@0|) 1))) (and (and (and (and (and (and (=> (= (ControlFlow 0 128) 91) anon78_Then_correct) (=> (= (ControlFlow 0 128) 93) anon79_Then_correct)) (=> (= (ControlFlow 0 128) 99) anon80_Then_correct)) (=> (= (ControlFlow 0 128) 108) anon81_Then_correct)) (=> (= (ControlFlow 0 128) 114) anon82_Then_correct)) (=> (= (ControlFlow 0 128) 122) anon83_Then_correct)) (=> (= (ControlFlow 0 128) 127) anon83_Else_correct)))))
(let ((anon77_Else_correct  (=> (and (or (not (= |m#0| (+ (Mul (LitInt 2) |$rhs#1_0@0|) 1))) (not true)) (= (ControlFlow 0 130) 128)) anon41_correct)))
(let ((anon77_Then_correct  (=> (and (= |m#0| (+ (Mul (LitInt 2) |$rhs#1_0@0|) 1)) (= (ControlFlow 0 129) 128)) anon41_correct)))
(let ((anon74_Else_correct  (=> (and (=  (not (_module.__default.EVEN reveal__module._default.EVEN (_module.__default.binom ($LS $LZ) reveal__module._default.binom |n#0@@7| |m#0|))) (|Set#Subset| (_module.__default.BitSet |m#0|) (_module.__default.BitSet |n#0@@7|))) (= (ControlFlow 0 80) 32)) GeneratedUnifiedExit_correct)))
(let ((anon32_correct  (=> (and (= |m#0| (+ (Mul (LitInt 2) |$rhs#1_0@0|) 1)) (= |n#0@@7| (Mul (LitInt 2) |$rhs#1_1@0|))) (and (and (and (=> (= (ControlFlow 0 88) 75) anon72_Then_correct) (=> (= (ControlFlow 0 88) 77) anon73_Then_correct)) (=> (= (ControlFlow 0 88) 87) anon74_Then_correct)) (=> (= (ControlFlow 0 88) 80) anon74_Else_correct)))))
(let ((anon71_Else_correct  (=> (and (or (not (= |m#0| (+ (Mul (LitInt 2) |$rhs#1_0@0|) 1))) (not true)) (= (ControlFlow 0 90) 88)) anon32_correct)))
(let ((anon71_Then_correct  (=> (and (= |m#0| (+ (Mul (LitInt 2) |$rhs#1_0@0|) 1)) (= (ControlFlow 0 89) 88)) anon32_correct)))
(let ((anon69_Else_correct  (=> (and (=  (not (_module.__default.EVEN reveal__module._default.EVEN (_module.__default.binom ($LS $LZ) reveal__module._default.binom |n#0@@7| |m#0|))) (|Set#Subset| (_module.__default.BitSet (Mul (LitInt 2) |$rhs#1_0@0|)) (_module.__default.BitSet (+ (Mul (LitInt 2) |$rhs#1_1@0|) 1)))) (= (ControlFlow 0 71) 32)) GeneratedUnifiedExit_correct)))
(let ((anon22_correct  (=> (and (= |m#0| (Mul (LitInt 2) |$rhs#1_0@0|)) (= |n#0@@7| (+ (Mul (LitInt 2) |$rhs#1_1@0|) 1))) (and (and (and (and (and (and (=> (= (ControlFlow 0 72) 37) anon64_Then_correct) (=> (= (ControlFlow 0 72) 39) anon65_Then_correct)) (=> (= (ControlFlow 0 72) 45) anon66_Then_correct)) (=> (= (ControlFlow 0 72) 54) anon67_Then_correct)) (=> (= (ControlFlow 0 72) 60) anon68_Then_correct)) (=> (= (ControlFlow 0 72) 66) anon69_Then_correct)) (=> (= (ControlFlow 0 72) 71) anon69_Else_correct)))))
(let ((anon63_Else_correct  (=> (and (or (not (= |m#0| (Mul (LitInt 2) |$rhs#1_0@0|))) (not true)) (= (ControlFlow 0 74) 72)) anon22_correct)))
(let ((anon63_Then_correct  (=> (and (= |m#0| (Mul (LitInt 2) |$rhs#1_0@0|)) (= (ControlFlow 0 73) 72)) anon22_correct)))
(let ((anon61_Else_correct  (=> (and (=  (not (_module.__default.EVEN reveal__module._default.EVEN (_module.__default.binom ($LS $LZ) reveal__module._default.binom |n#0@@7| |m#0|))) (|Set#Subset| (_module.__default.BitSet (Mul (LitInt 2) |$rhs#1_0@0|)) (_module.__default.BitSet (Mul (LitInt 2) |$rhs#1_1@0|)))) (= (ControlFlow 0 33) 32)) GeneratedUnifiedExit_correct)))
(let ((anon61_Then_correct  (=> (and (and (and (and ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat) ($IsAlloc intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat $Heap@0)) (and (|_module.__default.BitSet#canCall| |$rhs#1_0@0|) (= |##S#1_3_0_0_0@0| (_module.__default.BitSet |$rhs#1_0@0|)))) (and (and ($IsAlloc SetType |##S#1_3_0_0_0@0| (TSet Tclass._System.nat) $Heap@0) (|_module.__default.Suc#canCall| (_module.__default.BitSet |$rhs#1_0@0|))) (and ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat) ($IsAlloc intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat $Heap@0)))) (and (and (and (|_module.__default.BitSet#canCall| |$rhs#1_1@0|) (= |##S#1_3_0_0_1@0| (_module.__default.BitSet |$rhs#1_1@0|))) (and ($IsAlloc SetType |##S#1_3_0_0_1@0| (TSet Tclass._System.nat) $Heap@0) (|_module.__default.Suc#canCall| (_module.__default.BitSet |$rhs#1_1@0|)))) (and (and (|_module.__default.BitSet#canCall| |$rhs#1_0@0|) (|_module.__default.Suc#canCall| (_module.__default.BitSet |$rhs#1_0@0|))) (and (|_module.__default.BitSet#canCall| |$rhs#1_1@0|) (|_module.__default.Suc#canCall| (_module.__default.BitSet |$rhs#1_1@0|)))))) (and (=> (= (ControlFlow 0 26) (- 0 30)) ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat) (=> (and ($IsGoodHeap $Heap@21) ($IsHeapAnchor $Heap@21)) (=> (and (and (and (|_module.__default.BitSet#canCall| (Mul (LitInt 2) |$rhs#1_0@0|)) (and (|_module.__default.BitSet#canCall| |$rhs#1_0@0|) (|_module.__default.Suc#canCall| (_module.__default.BitSet |$rhs#1_0@0|)))) (|Set#Equal| (_module.__default.BitSet (Mul (LitInt 2) |$rhs#1_0@0|)) (_module.__default.Suc (_module.__default.BitSet |$rhs#1_0@0|)))) (and (and (|_module.__default.BitSet#canCall| (+ (Mul (LitInt 2) |$rhs#1_0@0|) 1)) (and (|_module.__default.BitSet#canCall| |$rhs#1_0@0|) (|_module.__default.Suc#canCall| (_module.__default.BitSet |$rhs#1_0@0|)))) (and (|Set#Equal| (_module.__default.BitSet (+ (Mul (LitInt 2) |$rhs#1_0@0|) 1)) (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 0)))) (_module.__default.Suc (_module.__default.BitSet |$rhs#1_0@0|)))) (= $Heap@0 $Heap@21)))) (and (=> (= (ControlFlow 0 26) (- 0 29)) ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat) (=> (and ($IsGoodHeap $Heap@22) ($IsHeapAnchor $Heap@22)) (=> (and (and (and (|_module.__default.BitSet#canCall| (Mul (LitInt 2) |$rhs#1_1@0|)) (and (|_module.__default.BitSet#canCall| |$rhs#1_1@0|) (|_module.__default.Suc#canCall| (_module.__default.BitSet |$rhs#1_1@0|)))) (|Set#Equal| (_module.__default.BitSet (Mul (LitInt 2) |$rhs#1_1@0|)) (_module.__default.Suc (_module.__default.BitSet |$rhs#1_1@0|)))) (and (and (|_module.__default.BitSet#canCall| (+ (Mul (LitInt 2) |$rhs#1_1@0|) 1)) (and (|_module.__default.BitSet#canCall| |$rhs#1_1@0|) (|_module.__default.Suc#canCall| (_module.__default.BitSet |$rhs#1_1@0|)))) (and (|Set#Equal| (_module.__default.BitSet (+ (Mul (LitInt 2) |$rhs#1_1@0|) 1)) (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 0)))) (_module.__default.Suc (_module.__default.BitSet |$rhs#1_1@0|)))) (= $Heap@21 $Heap@22)))) (and (=> (= (ControlFlow 0 26) (- 0 28)) ($Is intType (int_2_U (Mul (LitInt 2) |$rhs#1_0@0|)) Tclass._System.nat)) (=> ($Is intType (int_2_U (Mul (LitInt 2) |$rhs#1_0@0|)) Tclass._System.nat) (=> (= |##n#1_3_0_0_2@0| (Mul (LitInt 2) |$rhs#1_0@0|)) (=> (and ($IsAlloc intType (int_2_U |##n#1_3_0_0_2@0|) Tclass._System.nat $Heap@22) (|_module.__default.BitSet#canCall| (Mul (LitInt 2) |$rhs#1_0@0|))) (and (=> (= (ControlFlow 0 26) (- 0 27)) ($Is intType (int_2_U (Mul (LitInt 2) |$rhs#1_1@0|)) Tclass._System.nat)) (=> ($Is intType (int_2_U (Mul (LitInt 2) |$rhs#1_1@0|)) Tclass._System.nat) (=> (= |##n#1_3_0_0_3@0| (Mul (LitInt 2) |$rhs#1_1@0|)) (=> (and ($IsAlloc intType (int_2_U |##n#1_3_0_0_3@0|) Tclass._System.nat $Heap@22) (|_module.__default.BitSet#canCall| (Mul (LitInt 2) |$rhs#1_1@0|))) (=> (and (and (|_module.__default.BitSet#canCall| (Mul (LitInt 2) |$rhs#1_0@0|)) (|_module.__default.BitSet#canCall| (Mul (LitInt 2) |$rhs#1_1@0|))) (= (ControlFlow 0 26) (- 0 25))) (= (|Set#Subset| (_module.__default.Suc (_module.__default.BitSet |$rhs#1_0@0|)) (_module.__default.Suc (_module.__default.BitSet |$rhs#1_1@0|))) (|Set#Subset| (_module.__default.BitSet (Mul (LitInt 2) |$rhs#1_0@0|)) (_module.__default.BitSet (Mul (LitInt 2) |$rhs#1_1@0|))))))))))))))))))))))))
(let ((anon60_Then_correct  (=> (and (and (and ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat) ($IsAlloc intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat $Heap@0)) (and (|_module.__default.BitSet#canCall| |$rhs#1_0@0|) ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat))) (and (and ($IsAlloc intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat $Heap@0) (|_module.__default.BitSet#canCall| |$rhs#1_1@0|)) (and (|_module.__default.BitSet#canCall| |$rhs#1_0@0|) (|_module.__default.BitSet#canCall| |$rhs#1_1@0|)))) (and (=> (= (ControlFlow 0 20) (- 0 24)) ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat) (=> (and (and ($IsAlloc intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat $Heap@0) (|_module.__default.BitSet#canCall| |$rhs#1_0@0|)) (and (|_module.__default.BitSet#canCall| |$rhs#1_0@0|) (= |S##1_3_0_1_0@0| (_module.__default.BitSet |$rhs#1_0@0|)))) (=> (and (and (and ($IsGoodHeap $Heap@19) ($IsHeapAnchor $Heap@19)) (|_module.__default.Suc#canCall| |S##1_3_0_1_0@0|)) (and (forall ((|x#1@@3| T@U) ) (! (= (|Set#IsMember| |S##1_3_0_1_0@0| ($Box intType |x#1@@3|)) (|Set#IsMember| (_module.__default.Suc |S##1_3_0_1_0@0|) ($Box intType (int_2_U (+ (U_2_int |x#1@@3|) 1)))))
 :qid |Lucasupdfy.241:18|
 :skolemid |600|
 :pattern ( (|Set#IsMember| |S##1_3_0_1_0@0| ($Box intType |x#1@@3|)))
)) (= $Heap@0 $Heap@19))) (and (=> (= (ControlFlow 0 20) (- 0 23)) ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat) (=> (and (and ($IsAlloc intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat $Heap@19) (|_module.__default.BitSet#canCall| |$rhs#1_1@0|)) (and (|_module.__default.BitSet#canCall| |$rhs#1_1@0|) (= |S##1_3_0_1_1@0| (_module.__default.BitSet |$rhs#1_1@0|)))) (=> (and (and (and ($IsGoodHeap $Heap@20) ($IsHeapAnchor $Heap@20)) (|_module.__default.Suc#canCall| |S##1_3_0_1_1@0|)) (and (forall ((|x#1@@4| T@U) ) (! (= (|Set#IsMember| |S##1_3_0_1_1@0| ($Box intType |x#1@@4|)) (|Set#IsMember| (_module.__default.Suc |S##1_3_0_1_1@0|) ($Box intType (int_2_U (+ (U_2_int |x#1@@4|) 1)))))
 :qid |Lucasupdfy.241:18|
 :skolemid |600|
 :pattern ( (|Set#IsMember| |S##1_3_0_1_1@0| ($Box intType |x#1@@4|)))
)) (= $Heap@19 $Heap@20))) (and (=> (= (ControlFlow 0 20) (- 0 22)) ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat) (=> ($IsAlloc intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat $Heap@20) (=> (and (and (|_module.__default.BitSet#canCall| |$rhs#1_0@0|) (= |##S#1_3_0_1_0@0| (_module.__default.BitSet |$rhs#1_0@0|))) (and ($IsAlloc SetType |##S#1_3_0_1_0@0| (TSet Tclass._System.nat) $Heap@20) (|_module.__default.Suc#canCall| (_module.__default.BitSet |$rhs#1_0@0|)))) (and (=> (= (ControlFlow 0 20) (- 0 21)) ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat) (=> ($IsAlloc intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat $Heap@20) (=> (and (and (|_module.__default.BitSet#canCall| |$rhs#1_1@0|) (= |##S#1_3_0_1_1@0| (_module.__default.BitSet |$rhs#1_1@0|))) (and ($IsAlloc SetType |##S#1_3_0_1_1@0| (TSet Tclass._System.nat) $Heap@20) (|_module.__default.Suc#canCall| (_module.__default.BitSet |$rhs#1_1@0|)))) (=> (and (and (and (|_module.__default.BitSet#canCall| |$rhs#1_0@0|) (|_module.__default.Suc#canCall| (_module.__default.BitSet |$rhs#1_0@0|))) (and (|_module.__default.BitSet#canCall| |$rhs#1_1@0|) (|_module.__default.Suc#canCall| (_module.__default.BitSet |$rhs#1_1@0|)))) (= (ControlFlow 0 20) (- 0 19))) (= (|Set#Subset| (_module.__default.BitSet |$rhs#1_0@0|) (_module.__default.BitSet |$rhs#1_1@0|)) (|Set#Subset| (_module.__default.Suc (_module.__default.BitSet |$rhs#1_0@0|)) (_module.__default.Suc (_module.__default.BitSet |$rhs#1_1@0|))))))))))))))))))))))))
(let ((anon59_Then_correct  (=> (and ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat) ($IsAlloc intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat $Heap@0)) (=> (and (and (and ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat) ($IsAlloc intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat $Heap@0)) (and (|_module.__default.binom#canCall| |$rhs#1_1@0| |$rhs#1_0@0|) (= |##n#1_3_0_2_0@0| (_module.__default.binom ($LS $LZ) reveal__module._default.binom |$rhs#1_1@0| |$rhs#1_0@0|)))) (and (and ($IsAlloc intType (int_2_U |##n#1_3_0_2_0@0|) Tclass._System.nat $Heap@0) (|_module.__default.EVEN#canCall| (_module.__default.binom ($LS $LZ) reveal__module._default.binom |$rhs#1_1@0| |$rhs#1_0@0|))) (and (|_module.__default.binom#canCall| |$rhs#1_1@0| |$rhs#1_0@0|) (|_module.__default.EVEN#canCall| (_module.__default.binom ($LS $LZ) reveal__module._default.binom |$rhs#1_1@0| |$rhs#1_0@0|))))) (and (=> (= (ControlFlow 0 11) (- 0 18)) ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat) (and (=> (= (ControlFlow 0 11) (- 0 17)) ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat) (and (=> (= (ControlFlow 0 11) (- 0 16)) (or (<= 0 |m#0|) (= |$rhs#1_0@0| |m#0|))) (=> (or (<= 0 |m#0|) (= |$rhs#1_0@0| |m#0|)) (and (=> (= (ControlFlow 0 11) (- 0 15)) (or (or (<= 0 |n#0@@7|) (< |$rhs#1_0@0| |m#0|)) (= |$rhs#1_1@0| |n#0@@7|))) (=> (or (or (<= 0 |n#0@@7|) (< |$rhs#1_0@0| |m#0|)) (= |$rhs#1_1@0| |n#0@@7|)) (and (=> (= (ControlFlow 0 11) (- 0 14)) (or (< |$rhs#1_0@0| |m#0|) (and (= |$rhs#1_0@0| |m#0|) (< |$rhs#1_1@0| |n#0@@7|)))) (=> (or (< |$rhs#1_0@0| |m#0|) (and (= |$rhs#1_0@0| |m#0|) (< |$rhs#1_1@0| |n#0@@7|))) (=> (and ($IsGoodHeap $Heap@18) ($IsHeapAnchor $Heap@18)) (=> (and (and (and (|_module.__default.BitSet#canCall| |$rhs#1_0@0|) (|_module.__default.BitSet#canCall| |$rhs#1_1@0|)) (and (|_module.__default.binom#canCall| |$rhs#1_1@0| |$rhs#1_0@0|) (|_module.__default.EVEN#canCall| (_module.__default.binom ($LS $LZ) reveal__module._default.binom |$rhs#1_1@0| |$rhs#1_0@0|)))) (and (= (|Set#Subset| (_module.__default.BitSet |$rhs#1_0@0|) (_module.__default.BitSet |$rhs#1_1@0|))  (not (_module.__default.EVEN reveal__module._default.EVEN (_module.__default.binom ($LS ($LS $LZ)) reveal__module._default.binom |$rhs#1_1@0| |$rhs#1_0@0|)))) (= $Heap@0 $Heap@18))) (and (=> (= (ControlFlow 0 11) (- 0 13)) ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat) (=> (and ($IsAlloc intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat $Heap@18) (|_module.__default.BitSet#canCall| |$rhs#1_0@0|)) (and (=> (= (ControlFlow 0 11) (- 0 12)) ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat) (=> (and ($IsAlloc intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat $Heap@18) (|_module.__default.BitSet#canCall| |$rhs#1_1@0|)) (=> (and (and (|_module.__default.BitSet#canCall| |$rhs#1_0@0|) (|_module.__default.BitSet#canCall| |$rhs#1_1@0|)) (= (ControlFlow 0 11) (- 0 10))) (=  (not (_module.__default.EVEN reveal__module._default.EVEN (_module.__default.binom ($LS ($LS $LZ)) reveal__module._default.binom |$rhs#1_1@0| |$rhs#1_0@0|))) (|Set#Subset| (_module.__default.BitSet |$rhs#1_0@0|) (_module.__default.BitSet |$rhs#1_1@0|))))))))))))))))))))))))))
(let ((anon58_Then_correct  (=> (and (and (and ($IsAlloc intType (int_2_U |n#0@@7|) Tclass._System.nat $Heap@0) ($IsAlloc intType (int_2_U |m#0|) Tclass._System.nat $Heap@0)) (and (|_module.__default.binom#canCall| |n#0@@7| |m#0|) (= |##n#1_3_0_3_0@0| (_module.__default.binom ($LS $LZ) reveal__module._default.binom |n#0@@7| |m#0|)))) (and (and ($IsAlloc intType (int_2_U |##n#1_3_0_3_0@0|) Tclass._System.nat $Heap@0) (|_module.__default.EVEN#canCall| (_module.__default.binom ($LS $LZ) reveal__module._default.binom |n#0@@7| |m#0|))) (and (|_module.__default.binom#canCall| |n#0@@7| |m#0|) (|_module.__default.EVEN#canCall| (_module.__default.binom ($LS $LZ) reveal__module._default.binom |n#0@@7| |m#0|))))) (and (=> (= (ControlFlow 0 5) (- 0 9)) ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat) (and (=> (= (ControlFlow 0 5) (- 0 8)) ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat) (=> (and ($IsGoodHeap $Heap@17) ($IsHeapAnchor $Heap@17)) (=> (and (and (|_module.__default.binom#canCall| (Mul (LitInt 2) |$rhs#1_1@0|) (+ (Mul (LitInt 2) |$rhs#1_0@0|) 1)) (|_module.__default.EVEN#canCall| (_module.__default.binom ($LS $LZ) reveal__module._default.binom (Mul (LitInt 2) |$rhs#1_1@0|) (+ (Mul (LitInt 2) |$rhs#1_0@0|) 1)))) (_module.__default.EVEN reveal__module._default.EVEN (_module.__default.binom ($LS ($LS $LZ)) reveal__module._default.binom (Mul (LitInt 2) |$rhs#1_1@0|) (+ (Mul (LitInt 2) |$rhs#1_0@0|) 1)))) (=> (and (and (and (|_module.__default.binom#canCall| (Mul (LitInt 2) |$rhs#1_1@0|) (Mul (LitInt 2) |$rhs#1_0@0|)) (|_module.__default.EVEN#canCall| (_module.__default.binom ($LS $LZ) reveal__module._default.binom (Mul (LitInt 2) |$rhs#1_1@0|) (Mul (LitInt 2) |$rhs#1_0@0|)))) (and (|_module.__default.binom#canCall| |$rhs#1_1@0| |$rhs#1_0@0|) (|_module.__default.EVEN#canCall| (_module.__default.binom ($LS $LZ) reveal__module._default.binom |$rhs#1_1@0| |$rhs#1_0@0|)))) (= (_module.__default.EVEN reveal__module._default.EVEN (_module.__default.binom ($LS ($LS $LZ)) reveal__module._default.binom (Mul (LitInt 2) |$rhs#1_1@0|) (Mul (LitInt 2) |$rhs#1_0@0|))) (_module.__default.EVEN reveal__module._default.EVEN (_module.__default.binom ($LS ($LS $LZ)) reveal__module._default.binom |$rhs#1_1@0| |$rhs#1_0@0|)))) (=> (and (and (and (and (|_module.__default.binom#canCall| (+ (Mul (LitInt 2) |$rhs#1_1@0|) 1) (+ (Mul (LitInt 2) |$rhs#1_0@0|) 1)) (|_module.__default.EVEN#canCall| (_module.__default.binom ($LS $LZ) reveal__module._default.binom (+ (Mul (LitInt 2) |$rhs#1_1@0|) 1) (+ (Mul (LitInt 2) |$rhs#1_0@0|) 1)))) (and (|_module.__default.binom#canCall| |$rhs#1_1@0| |$rhs#1_0@0|) (|_module.__default.EVEN#canCall| (_module.__default.binom ($LS $LZ) reveal__module._default.binom |$rhs#1_1@0| |$rhs#1_0@0|)))) (= (_module.__default.EVEN reveal__module._default.EVEN (_module.__default.binom ($LS ($LS $LZ)) reveal__module._default.binom (+ (Mul (LitInt 2) |$rhs#1_1@0|) 1) (+ (Mul (LitInt 2) |$rhs#1_0@0|) 1))) (_module.__default.EVEN reveal__module._default.EVEN (_module.__default.binom ($LS ($LS $LZ)) reveal__module._default.binom |$rhs#1_1@0| |$rhs#1_0@0|)))) (and (and (and (|_module.__default.binom#canCall| (+ (Mul (LitInt 2) |$rhs#1_1@0|) 1) (Mul (LitInt 2) |$rhs#1_0@0|)) (|_module.__default.EVEN#canCall| (_module.__default.binom ($LS $LZ) reveal__module._default.binom (+ (Mul (LitInt 2) |$rhs#1_1@0|) 1) (Mul (LitInt 2) |$rhs#1_0@0|)))) (and (|_module.__default.binom#canCall| |$rhs#1_1@0| |$rhs#1_0@0|) (|_module.__default.EVEN#canCall| (_module.__default.binom ($LS $LZ) reveal__module._default.binom |$rhs#1_1@0| |$rhs#1_0@0|)))) (and (= (_module.__default.EVEN reveal__module._default.EVEN (_module.__default.binom ($LS ($LS $LZ)) reveal__module._default.binom (+ (Mul (LitInt 2) |$rhs#1_1@0|) 1) (Mul (LitInt 2) |$rhs#1_0@0|))) (_module.__default.EVEN reveal__module._default.EVEN (_module.__default.binom ($LS ($LS $LZ)) reveal__module._default.binom |$rhs#1_1@0| |$rhs#1_0@0|))) (= $Heap@0 $Heap@17)))) (and (=> (= (ControlFlow 0 5) (- 0 7)) ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat) (=> ($IsAlloc intType (int_2_U |$rhs#1_1@0|) Tclass._System.nat $Heap@17) (and (=> (= (ControlFlow 0 5) (- 0 6)) ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat) (=> ($IsAlloc intType (int_2_U |$rhs#1_0@0|) Tclass._System.nat $Heap@17) (=> (and (and (and (|_module.__default.binom#canCall| |$rhs#1_1@0| |$rhs#1_0@0|) (= |##n#1_3_0_3_1@0| (_module.__default.binom ($LS $LZ) reveal__module._default.binom |$rhs#1_1@0| |$rhs#1_0@0|))) (and ($IsAlloc intType (int_2_U |##n#1_3_0_3_1@0|) Tclass._System.nat $Heap@17) (|_module.__default.EVEN#canCall| (_module.__default.binom ($LS $LZ) reveal__module._default.binom |$rhs#1_1@0| |$rhs#1_0@0|)))) (and (and (|_module.__default.binom#canCall| |$rhs#1_1@0| |$rhs#1_0@0|) (|_module.__default.EVEN#canCall| (_module.__default.binom ($LS $LZ) reveal__module._default.binom |$rhs#1_1@0| |$rhs#1_0@0|))) (= (ControlFlow 0 5) (- 0 4)))) (=  (not (_module.__default.EVEN reveal__module._default.EVEN (_module.__default.binom ($LS ($LS $LZ)) reveal__module._default.binom |n#0@@7| |m#0|)))  (not (_module.__default.EVEN reveal__module._default.EVEN (_module.__default.binom ($LS ($LS $LZ)) reveal__module._default.binom |$rhs#1_1@0| |$rhs#1_0@0|))))))))))))))))))))))
(let ((anon57_Then_correct true))
(let ((anon13_correct  (=> (and (= |m#0| (Mul (LitInt 2) |$rhs#1_0@0|)) (= |n#0@@7| (Mul (LitInt 2) |$rhs#1_1@0|))) (and (and (and (and (and (=> (= (ControlFlow 0 34) 3) anon57_Then_correct) (=> (= (ControlFlow 0 34) 5) anon58_Then_correct)) (=> (= (ControlFlow 0 34) 11) anon59_Then_correct)) (=> (= (ControlFlow 0 34) 20) anon60_Then_correct)) (=> (= (ControlFlow 0 34) 26) anon61_Then_correct)) (=> (= (ControlFlow 0 34) 33) anon61_Else_correct)))))
(let ((anon56_Else_correct  (=> (and (or (not (= |m#0| (Mul (LitInt 2) |$rhs#1_0@0|))) (not true)) (= (ControlFlow 0 36) 34)) anon13_correct)))
(let ((anon56_Then_correct  (=> (and (= |m#0| (Mul (LitInt 2) |$rhs#1_0@0|)) (= (ControlFlow 0 35) 34)) anon13_correct)))
(let ((anon76_Else_correct  (=> (and (and (and (and (not (and (= |m#0| (Mul (LitInt 2) |$rhs#1_0@0|)) (= |n#0@@7| (Mul (LitInt 2) |$rhs#1_1@0|)))) (not (and (= |m#0| (Mul (LitInt 2) |$rhs#1_0@0|)) (= |n#0@@7| (+ (Mul (LitInt 2) |$rhs#1_1@0|) 1))))) (not (and (= |m#0| (+ (Mul (LitInt 2) |$rhs#1_0@0|) 1)) (= |n#0@@7| (Mul (LitInt 2) |$rhs#1_1@0|))))) (not (and (= |m#0| (+ (Mul (LitInt 2) |$rhs#1_0@0|) 1)) (= |n#0@@7| (+ (Mul (LitInt 2) |$rhs#1_1@0|) 1))))) (= (ControlFlow 0 2) (- 0 1))) false)))
(let ((anon51_Else_correct  (=> (not (and (= |m#0| (LitInt 0)) (= |n#0@@7| (LitInt 0)))) (and (=> (= (ControlFlow 0 131) (- 0 133)) (or (not (= (LitInt 2) 0)) (not true))) (=> (or (not (= (LitInt 2) 0)) (not true)) (=> (= |$rhs#1_0@0| (Div |m#0| (LitInt 2))) (and (=> (= (ControlFlow 0 131) (- 0 132)) (or (not (= (LitInt 2) 0)) (not true))) (=> (or (not (= (LitInt 2) 0)) (not true)) (=> (= |$rhs#1_1@0| (Div |n#0@@7| (LitInt 2))) (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 131) 2) anon76_Else_correct) (=> (= (ControlFlow 0 131) 129) anon77_Then_correct)) (=> (= (ControlFlow 0 131) 130) anon77_Else_correct)) (=> (= (ControlFlow 0 131) 89) anon71_Then_correct)) (=> (= (ControlFlow 0 131) 90) anon71_Else_correct)) (=> (= (ControlFlow 0 131) 73) anon63_Then_correct)) (=> (= (ControlFlow 0 131) 74) anon63_Else_correct)) (=> (= (ControlFlow 0 131) 35) anon56_Then_correct)) (=> (= (ControlFlow 0 131) 36) anon56_Else_correct)))))))))))
(let ((anon2_correct  (and (=> (= (ControlFlow 0 146) 145) anon51_Then_correct) (=> (= (ControlFlow 0 146) 131) anon51_Else_correct))))
(let ((anon50_Else_correct  (=> (and (or (not (= |m#0| (LitInt 0))) (not true)) (= (ControlFlow 0 148) 146)) anon2_correct)))
(let ((anon50_Then_correct  (=> (and (= |m#0| (LitInt 0)) (= (ControlFlow 0 147) 146)) anon2_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap $Heap@0) (forall ((|$ih#m0#0| Int) (|$ih#n0#0| Int) ) (!  (=> (and (and (and (<= (LitInt 0) |$ih#m0#0|) (<= (LitInt 0) |$ih#n0#0|)) (U_2_bool (Lit boolType (bool_2_U true)))) (or (and (<= 0 |$ih#m0#0|) (< |$ih#m0#0| |m#0|)) (and (= |$ih#m0#0| |m#0|) (and (<= 0 |$ih#n0#0|) (< |$ih#n0#0| |n#0@@7|))))) (= (|Set#Subset| (_module.__default.BitSet |$ih#m0#0|) (_module.__default.BitSet |$ih#n0#0|))  (not (_module.__default.EVEN reveal__module._default.EVEN (_module.__default.binom ($LS $LZ) reveal__module._default.binom |$ih#n0#0| |$ih#m0#0|)))))
 :qid |Lucasupdfy.315:21|
 :skolemid |620|
 :pattern ( (_module.__default.binom ($LS $LZ) reveal__module._default.binom |$ih#n0#0| |$ih#m0#0|))
 :pattern ( (_module.__default.BitSet |$ih#n0#0|) (_module.__default.BitSet |$ih#m0#0|))
)))) (and (=> (= (ControlFlow 0 149) 147) anon50_Then_correct) (=> (= (ControlFlow 0 149) 148) anon50_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (<= (LitInt 0) |m#0|) (<= (LitInt 0) |n#0@@7|)) (and (= 4 $FunctionContextHeight) (= (ControlFlow 0 150) 149))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
