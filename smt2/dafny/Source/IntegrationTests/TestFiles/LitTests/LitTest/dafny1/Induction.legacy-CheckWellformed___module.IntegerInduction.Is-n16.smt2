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
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._module.IntegerInduction? () T@U)
(declare-fun Tagclass._module.IntegerInduction () T@U)
(declare-fun tytagFamily$IntegerInduction () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.IntegerInduction.IsSorted (T@U T@U) Bool)
(declare-fun |_module.IntegerInduction.IsSorted#canCall| (T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.IntegerInduction () T@U)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun Tclass._module.IntegerInduction? () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Inv0_TSeq (T@U) T@U)
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
(assert (distinct TBool TInt TagBool TagInt TagSeq alloc Tagclass._module.IntegerInduction? Tagclass._module.IntegerInduction tytagFamily$IntegerInduction)
)
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert  (and (= (Ctor refType) 3) (= (Ctor SeqType) 4)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this T@U) (|s#0| T@U) ) (!  (=> (or (|_module.IntegerInduction.IsSorted#canCall| this |s#0|) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this null)) (not true)) ($Is refType this Tclass._module.IntegerInduction)) ($Is SeqType |s#0| (TSeq TInt))))) (= (_module.IntegerInduction.IsSorted this |s#0|) (forall ((|i#2| Int) ) (!  (=> (and (<= (LitInt 1) |i#2|) (< |i#2| (|Seq#Length| |s#0|))) (<= (U_2_int ($Unbox intType (|Seq#Index| |s#0| (- |i#2| 1)))) (U_2_int ($Unbox intType (|Seq#Index| |s#0| |i#2|)))))
 :qid |Inductionlegacydfy.155:13|
 :skolemid |611|
 :pattern ( ($Unbox intType (|Seq#Index| |s#0| |i#2|)))
))))
 :qid |Inductionlegacydfy.151:12|
 :skolemid |612|
 :pattern ( (_module.IntegerInduction.IsSorted this |s#0|))
))))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.IntegerInduction?)  (or (= $o null) (= (dtype $o) Tclass._module.IntegerInduction?)))
 :qid |unknown.0:0|
 :skolemid |541|
 :pattern ( ($Is refType $o Tclass._module.IntegerInduction?))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.IntegerInduction $h) ($IsAlloc refType |c#0| Tclass._module.IntegerInduction? $h))
 :qid |unknown.0:0|
 :skolemid |628|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.IntegerInduction $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.IntegerInduction? $h))
)))
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
(assert (forall (($o@@0 T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._module.IntegerInduction? $h@@0)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |542|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.IntegerInduction? $h@@0))
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
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Equal| s0 s1)  (and (= (|Seq#Length| s0) (|Seq#Length| s1)) (forall ((j Int) ) (!  (=> (and (<= 0 j) (< j (|Seq#Length| s0))) (= (|Seq#Index| s0 j) (|Seq#Index| s1 j)))
 :qid |DafnyPreludebpl.1221:19|
 :skolemid |239|
 :pattern ( (|Seq#Index| s0 j))
 :pattern ( (|Seq#Index| s1 j))
))))
 :qid |DafnyPreludebpl.1217:15|
 :skolemid |240|
 :pattern ( (|Seq#Equal| s0 s1))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@0 T@U) (|s#0@@0| T@U) ) (!  (=> (or (|_module.IntegerInduction.IsSorted#canCall| this@@0 (Lit SeqType |s#0@@0|)) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass._module.IntegerInduction)) ($Is SeqType |s#0@@0| (TSeq TInt))))) (= (_module.IntegerInduction.IsSorted this@@0 (Lit SeqType |s#0@@0|)) (forall ((|i#3| Int) ) (!  (=> (and (<= (LitInt 1) |i#3|) (< |i#3| (|Seq#Length| (Lit SeqType |s#0@@0|)))) (<= (U_2_int ($Unbox intType (|Seq#Index| (Lit SeqType |s#0@@0|) (- |i#3| 1)))) (U_2_int ($Unbox intType (|Seq#Index| (Lit SeqType |s#0@@0|) |i#3|)))))
 :qid |Inductionlegacydfy.155:13|
 :skolemid |613|
 :pattern ( ($Unbox intType (|Seq#Index| |s#0@@0| |i#3|)))
))))
 :qid |Inductionlegacydfy.151:12|
 :weight 3
 :skolemid |614|
 :pattern ( (_module.IntegerInduction.IsSorted this@@0 (Lit SeqType |s#0@@0|)))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@1 T@U) (|s#0@@1| T@U) ) (!  (=> (or (|_module.IntegerInduction.IsSorted#canCall| this@@1 |s#0@@1|) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 Tclass._module.IntegerInduction)) ($Is SeqType |s#0@@1| (TSeq TInt))))) (and (=> (_module.IntegerInduction.IsSorted this@@1 |s#0@@1|) (forall ((|i#0| Int) (|j#0| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#0|) (< |i#0| |j#0|)) (< |j#0| (|Seq#Length| |s#0@@1|))) (<= (U_2_int ($Unbox intType (|Seq#Index| |s#0@@1| |i#0|))) (U_2_int ($Unbox intType (|Seq#Index| |s#0@@1| |j#0|)))))
 :qid |Inductionlegacydfy.152:37|
 :skolemid |607|
))) (=> (forall ((|i#1| Int) (|j#1| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#1|) (< |i#1| |j#1|)) (< |j#1| (|Seq#Length| |s#0@@1|))) (<= (U_2_int ($Unbox intType (|Seq#Index| |s#0@@1| |i#1|))) (U_2_int ($Unbox intType (|Seq#Index| |s#0@@1| |j#1|)))))
 :qid |Inductionlegacydfy.153:21|
 :skolemid |608|
 :pattern ( ($Unbox intType (|Seq#Index| |s#0@@1| |j#1|)) ($Unbox intType (|Seq#Index| |s#0@@1| |i#1|)))
)) (_module.IntegerInduction.IsSorted this@@1 |s#0@@1|))))
 :qid |Inductionlegacydfy.151:12|
 :skolemid |609|
 :pattern ( (_module.IntegerInduction.IsSorted this@@1 |s#0@@1|))
))))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx Tclass._module.IntegerInduction?) (and (= ($Box refType ($Unbox refType bx)) bx) ($Is refType ($Unbox refType bx) Tclass._module.IntegerInduction?)))
 :qid |unknown.0:0|
 :skolemid |540|
 :pattern ( ($IsBox bx Tclass._module.IntegerInduction?))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._module.IntegerInduction) (and (= ($Box refType ($Unbox refType bx@@0)) bx@@0) ($Is refType ($Unbox refType bx@@0) Tclass._module.IntegerInduction)))
 :qid |unknown.0:0|
 :skolemid |545|
 :pattern ( ($IsBox bx@@0 Tclass._module.IntegerInduction))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._module.IntegerInduction)  (and ($Is refType |c#0@@0| Tclass._module.IntegerInduction?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |627|
 :pattern ( ($Is refType |c#0@@0| Tclass._module.IntegerInduction))
 :pattern ( ($Is refType |c#0@@0| Tclass._module.IntegerInduction?))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Seq#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |241|
 :pattern ( (|Seq#Equal| a b))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TInt) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@1 TInt))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TBool) (and (= ($Box boolType ($Unbox boolType bx@@2)) bx@@2) ($Is boolType ($Unbox boolType bx@@2) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@2 TBool))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s))
)))
(assert (forall ((v@@1 T@U) (t0@@0 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SeqType v@@1 (TSeq t0@@0) h@@0) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| v@@1))) ($IsAllocBox (|Seq#Index| v@@1 i) t0@@0 h@@0))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@1 i))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@1 (TSeq t0@@0) h@@0))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSeq (TSeq t@@1)) t@@1)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSeq t@@2)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@2))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert  (and (forall ((t0@@1 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@1 t1@@0 t2 (MapType1Store t0@@1 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@1) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |748|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))
)))
(assert (forall ((bx@@3 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@3 (TSeq t@@3)) (and (= ($Box SeqType ($Unbox SeqType bx@@3)) bx@@3) ($Is SeqType ($Unbox SeqType bx@@3) (TSeq t@@3))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@3 (TSeq t@@3)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@2 T@U) (|s#0@@2| T@U) ) (!  (=> (or (|_module.IntegerInduction.IsSorted#canCall| (Lit refType this@@2) (Lit SeqType |s#0@@2|)) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 Tclass._module.IntegerInduction)) ($Is SeqType |s#0@@2| (TSeq TInt))))) (= (_module.IntegerInduction.IsSorted (Lit refType this@@2) (Lit SeqType |s#0@@2|)) (forall ((|i#4| Int) ) (!  (=> (and (<= (LitInt 1) |i#4|) (< |i#4| (|Seq#Length| (Lit SeqType |s#0@@2|)))) (<= (U_2_int ($Unbox intType (|Seq#Index| (Lit SeqType |s#0@@2|) (- |i#4| 1)))) (U_2_int ($Unbox intType (|Seq#Index| (Lit SeqType |s#0@@2|) |i#4|)))))
 :qid |Inductionlegacydfy.155:13|
 :skolemid |615|
 :pattern ( ($Unbox intType (|Seq#Index| |s#0@@2| |i#4|)))
))))
 :qid |Inductionlegacydfy.151:12|
 :weight 3
 :skolemid |616|
 :pattern ( (_module.IntegerInduction.IsSorted (Lit refType this@@2) (Lit SeqType |s#0@@2|)))
))))
(assert (= (Tag Tclass._module.IntegerInduction?) Tagclass._module.IntegerInduction?))
(assert (= (TagFamily Tclass._module.IntegerInduction?) tytagFamily$IntegerInduction))
(assert (= (Tag Tclass._module.IntegerInduction) Tagclass._module.IntegerInduction))
(assert (= (TagFamily Tclass._module.IntegerInduction) tytagFamily$IntegerInduction))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((s@@0 T@U) ) (!  (=> (= (|Seq#Length| s@@0) 0) (= s@@0 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((h@@1 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@2 TInt h@@1))
)))
(assert (forall ((h@@2 T@U) (v@@3 T@U) ) (! ($IsAlloc boolType v@@3 TBool h@@2)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@3 TBool h@@2))
)))
(assert (forall ((v@@4 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@4 (TSeq t0@@2)) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@4))) ($IsBox (|Seq#Index| v@@4 i@@0) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@4 i@@0))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@4 (TSeq t0@@2)))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@5 TInt))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is boolType v@@6 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@6 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun this@@3 () T@U)
(declare-fun |s#0@@3| () T@U)
(declare-fun |i#9@0| () Int)
(declare-fun $Heap () T@U)
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun |i#8@0| () Int)
(declare-fun |j#5@0| () Int)
(declare-fun |i#7@0| () Int)
(declare-fun |j#4@0| () Int)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.IntegerInduction.IsSorted)
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
 (=> (= (ControlFlow 0 0) 42) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 31) (- 0 32)) (=> (_module.IntegerInduction.IsSorted this@@3 |s#0@@3|) (forall ((|i#5| Int) (|j#2| Int) ) (!  (=> (and (forall ((|j$ih#0#0| Int) ) (!  (=> (and (<= 0 |j$ih#0#0|) (< |j$ih#0#0| |j#2|)) (=> (and (and (<= (LitInt 0) |i#5|) (< |i#5| |j$ih#0#0|)) (< |j$ih#0#0| (|Seq#Length| |s#0@@3|))) (<= (U_2_int ($Unbox intType (|Seq#Index| |s#0@@3| |i#5|))) (U_2_int ($Unbox intType (|Seq#Index| |s#0@@3| |j$ih#0#0|))))))
 :qid |Inductionlegacydfy.152:39|
 :skolemid |617|
)) true) (=> (and (and (<= (LitInt 0) |i#5|) (< |i#5| |j#2|)) (< |j#2| (|Seq#Length| |s#0@@3|))) (<= (U_2_int ($Unbox intType (|Seq#Index| |s#0@@3| |i#5|))) (U_2_int ($Unbox intType (|Seq#Index| |s#0@@3| |j#2|))))))
 :qid |Inductionlegacydfy.152:37|
 :skolemid |618|
)))) (=> (=> (_module.IntegerInduction.IsSorted this@@3 |s#0@@3|) (forall ((|i#5@@0| Int) (|j#2@@0| Int) ) (!  (=> (and (forall ((|j$ih#0#0@@0| Int) ) (!  (=> (and (<= 0 |j$ih#0#0@@0|) (< |j$ih#0#0@@0| |j#2@@0|)) (=> (and (and (<= (LitInt 0) |i#5@@0|) (< |i#5@@0| |j$ih#0#0@@0|)) (< |j$ih#0#0@@0| (|Seq#Length| |s#0@@3|))) (<= (U_2_int ($Unbox intType (|Seq#Index| |s#0@@3| |i#5@@0|))) (U_2_int ($Unbox intType (|Seq#Index| |s#0@@3| |j$ih#0#0@@0|))))))
 :qid |Inductionlegacydfy.152:39|
 :skolemid |617|
)) true) (=> (and (and (<= (LitInt 0) |i#5@@0|) (< |i#5@@0| |j#2@@0|)) (< |j#2@@0| (|Seq#Length| |s#0@@3|))) (<= (U_2_int ($Unbox intType (|Seq#Index| |s#0@@3| |i#5@@0|))) (U_2_int ($Unbox intType (|Seq#Index| |s#0@@3| |j#2@@0|))))))
 :qid |Inductionlegacydfy.152:37|
 :skolemid |618|
))) (=> (= (ControlFlow 0 31) (- 0 30)) (=> (forall ((|i#6| Int) (|j#3| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#6|) (< |i#6| |j#3|)) (< |j#3| (|Seq#Length| |s#0@@3|))) (<= (U_2_int ($Unbox intType (|Seq#Index| |s#0@@3| |i#6|))) (U_2_int ($Unbox intType (|Seq#Index| |s#0@@3| |j#3|)))))
 :qid |Inductionlegacydfy.153:21|
 :skolemid |620|
 :pattern ( ($Unbox intType (|Seq#Index| |s#0@@3| |j#3|)) ($Unbox intType (|Seq#Index| |s#0@@3| |i#6|)))
)) (_module.IntegerInduction.IsSorted this@@3 |s#0@@3|)))))))
(let ((anon28_correct  (=> (= (_module.IntegerInduction.IsSorted this@@3 |s#0@@3|) (forall ((|i#10| Int) ) (!  (=> (and (<= (LitInt 1) |i#10|) (< |i#10| (|Seq#Length| |s#0@@3|))) (<= (U_2_int ($Unbox intType (|Seq#Index| |s#0@@3| (- |i#10| 1)))) (U_2_int ($Unbox intType (|Seq#Index| |s#0@@3| |i#10|)))))
 :qid |Inductionlegacydfy.155:13|
 :skolemid |626|
 :pattern ( ($Unbox intType (|Seq#Index| |s#0@@3| |i#10|)))
))) (=> (and ($Is boolType (bool_2_U (_module.IntegerInduction.IsSorted this@@3 |s#0@@3|)) TBool) (= (ControlFlow 0 33) 31)) GeneratedUnifiedExit_correct))))
(let ((anon43_Else_correct  (=> (and (not (and (<= (LitInt 1) |i#9@0|) (< |i#9@0| (|Seq#Length| |s#0@@3|)))) (= (ControlFlow 0 37) 33)) anon28_correct)))
(let ((anon43_Then_correct  (=> (and (<= (LitInt 1) |i#9@0|) (< |i#9@0| (|Seq#Length| |s#0@@3|))) (and (=> (= (ControlFlow 0 34) (- 0 36)) (and (<= 0 (- |i#9@0| 1)) (< (- |i#9@0| 1) (|Seq#Length| |s#0@@3|)))) (=> (and (<= 0 (- |i#9@0| 1)) (< (- |i#9@0| 1) (|Seq#Length| |s#0@@3|))) (and (=> (= (ControlFlow 0 34) (- 0 35)) (and (<= 0 |i#9@0|) (< |i#9@0| (|Seq#Length| |s#0@@3|)))) (=> (and (<= 0 |i#9@0|) (< |i#9@0| (|Seq#Length| |s#0@@3|))) (=> (= (ControlFlow 0 34) 33) anon28_correct))))))))
(let ((anon42_Else_correct  (=> (< |i#9@0| (LitInt 1)) (and (=> (= (ControlFlow 0 39) 34) anon43_Then_correct) (=> (= (ControlFlow 0 39) 37) anon43_Else_correct)))))
(let ((anon42_Then_correct  (=> (<= (LitInt 1) |i#9@0|) (and (=> (= (ControlFlow 0 38) 34) anon43_Then_correct) (=> (= (ControlFlow 0 38) 37) anon43_Else_correct)))))
(let ((anon41_Then_correct  (and (=> (= (ControlFlow 0 40) 38) anon42_Then_correct) (=> (= (ControlFlow 0 40) 39) anon42_Else_correct))))
(let ((anon32_Else_correct true))
(let ((anon22_correct true))
(let ((anon20_correct  (=> (forall ((|i#6@@0| Int) (|j#3@@0| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#6@@0|) (< |i#6@@0| |j#3@@0|)) (< |j#3@@0| (|Seq#Length| |s#0@@3|))) (<= (U_2_int ($Unbox intType (|Seq#Index| |s#0@@3| |i#6@@0|))) (U_2_int ($Unbox intType (|Seq#Index| |s#0@@3| |j#3@@0|)))))
 :qid |Inductionlegacydfy.153:21|
 :skolemid |623|
 :pattern ( ($Unbox intType (|Seq#Index| |s#0@@3| |j#3@@0|)) ($Unbox intType (|Seq#Index| |s#0@@3| |i#6@@0|)))
)) (=> (and ($IsAllocBox ($Box refType this@@3) Tclass._module.IntegerInduction? $Heap) ($IsAlloc SeqType |s#0@@3| (TSeq TInt) $Heap)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (or (and (= this@@3 this@@3) (|Seq#Equal| |s#0@@3| |s#0@@3|)) (< (|Seq#Rank| |s#0@@3|) (|Seq#Rank| |s#0@@3|)))) (=> (or (and (= this@@3 this@@3) (|Seq#Equal| |s#0@@3| |s#0@@3|)) (< (|Seq#Rank| |s#0@@3|) (|Seq#Rank| |s#0@@3|))) (=> (or (and (= this@@3 this@@3) (|Seq#Equal| |s#0@@3| |s#0@@3|)) (|_module.IntegerInduction.IsSorted#canCall| this@@3 |s#0@@3|)) (=> (and (_module.IntegerInduction.IsSorted this@@3 |s#0@@3|) (= (ControlFlow 0 5) 3)) anon22_correct))))))))
(let ((anon40_Else_correct  (=> (and (not (and (and (<= (LitInt 0) |i#8@0|) (< |i#8@0| |j#5@0|)) (< |j#5@0| (|Seq#Length| |s#0@@3|)))) (= (ControlFlow 0 10) 5)) anon20_correct)))
(let ((anon40_Then_correct  (=> (and (and (<= (LitInt 0) |i#8@0|) (< |i#8@0| |j#5@0|)) (< |j#5@0| (|Seq#Length| |s#0@@3|))) (and (=> (= (ControlFlow 0 7) (- 0 9)) (and (<= 0 |i#8@0|) (< |i#8@0| (|Seq#Length| |s#0@@3|)))) (=> (and (<= 0 |i#8@0|) (< |i#8@0| (|Seq#Length| |s#0@@3|))) (and (=> (= (ControlFlow 0 7) (- 0 8)) (and (<= 0 |j#5@0|) (< |j#5@0| (|Seq#Length| |s#0@@3|)))) (=> (and (<= 0 |j#5@0|) (< |j#5@0| (|Seq#Length| |s#0@@3|))) (=> (= (ControlFlow 0 7) 5) anon20_correct))))))))
(let ((anon39_Else_correct  (=> (not (and (<= (LitInt 0) |i#8@0|) (< |i#8@0| |j#5@0|))) (and (=> (= (ControlFlow 0 12) 7) anon40_Then_correct) (=> (= (ControlFlow 0 12) 10) anon40_Else_correct)))))
(let ((anon39_Then_correct  (=> (and (<= (LitInt 0) |i#8@0|) (< |i#8@0| |j#5@0|)) (and (=> (= (ControlFlow 0 11) 7) anon40_Then_correct) (=> (= (ControlFlow 0 11) 10) anon40_Else_correct)))))
(let ((anon38_Else_correct  (=> (< |i#8@0| (LitInt 0)) (and (=> (= (ControlFlow 0 14) 11) anon39_Then_correct) (=> (= (ControlFlow 0 14) 12) anon39_Else_correct)))))
(let ((anon38_Then_correct  (=> (<= (LitInt 0) |i#8@0|) (and (=> (= (ControlFlow 0 13) 11) anon39_Then_correct) (=> (= (ControlFlow 0 13) 12) anon39_Else_correct)))))
(let ((anon37_Then_correct  (and (=> (= (ControlFlow 0 15) 13) anon38_Then_correct) (=> (= (ControlFlow 0 15) 14) anon38_Else_correct))))
(let ((anon36_Else_correct  (=> (and (=> (forall ((|i#6@@1| Int) (|j#3@@1| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#6@@1|) (< |i#6@@1| |j#3@@1|)) (< |j#3@@1| (|Seq#Length| |s#0@@3|))) (<= (U_2_int ($Unbox intType (|Seq#Index| |s#0@@3| |i#6@@1|))) (U_2_int ($Unbox intType (|Seq#Index| |s#0@@3| |j#3@@1|)))))
 :qid |Inductionlegacydfy.153:21|
 :skolemid |624|
 :pattern ( ($Unbox intType (|Seq#Index| |s#0@@3| |j#3@@1|)) ($Unbox intType (|Seq#Index| |s#0@@3| |i#6@@1|)))
)) (_module.IntegerInduction.IsSorted this@@3 |s#0@@3|)) (= (ControlFlow 0 4) 3)) anon22_correct)))
(let ((anon37_Else_correct true))
(let ((anon10_correct  (=> (forall ((|i#5@@1| Int) (|j#2@@1| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#5@@1|) (< |i#5@@1| |j#2@@1|)) (< |j#2@@1| (|Seq#Length| |s#0@@3|))) (<= (U_2_int ($Unbox intType (|Seq#Index| |s#0@@3| |i#5@@1|))) (U_2_int ($Unbox intType (|Seq#Index| |s#0@@3| |j#2@@1|)))))
 :qid |Inductionlegacydfy.152:37|
 :skolemid |621|
)) (and (and (=> (= (ControlFlow 0 18) 4) anon36_Else_correct) (=> (= (ControlFlow 0 18) 15) anon37_Then_correct)) (=> (= (ControlFlow 0 18) 2) anon37_Else_correct)))))
(let ((anon35_Else_correct  (=> (and (not (and (and (<= (LitInt 0) |i#7@0|) (< |i#7@0| |j#4@0|)) (< |j#4@0| (|Seq#Length| |s#0@@3|)))) (= (ControlFlow 0 22) 18)) anon10_correct)))
(let ((anon35_Then_correct  (=> (and (and (<= (LitInt 0) |i#7@0|) (< |i#7@0| |j#4@0|)) (< |j#4@0| (|Seq#Length| |s#0@@3|))) (and (=> (= (ControlFlow 0 19) (- 0 21)) (and (<= 0 |i#7@0|) (< |i#7@0| (|Seq#Length| |s#0@@3|)))) (=> (and (<= 0 |i#7@0|) (< |i#7@0| (|Seq#Length| |s#0@@3|))) (and (=> (= (ControlFlow 0 19) (- 0 20)) (and (<= 0 |j#4@0|) (< |j#4@0| (|Seq#Length| |s#0@@3|)))) (=> (and (<= 0 |j#4@0|) (< |j#4@0| (|Seq#Length| |s#0@@3|))) (=> (= (ControlFlow 0 19) 18) anon10_correct))))))))
(let ((anon34_Else_correct  (=> (not (and (<= (LitInt 0) |i#7@0|) (< |i#7@0| |j#4@0|))) (and (=> (= (ControlFlow 0 24) 19) anon35_Then_correct) (=> (= (ControlFlow 0 24) 22) anon35_Else_correct)))))
(let ((anon34_Then_correct  (=> (and (<= (LitInt 0) |i#7@0|) (< |i#7@0| |j#4@0|)) (and (=> (= (ControlFlow 0 23) 19) anon35_Then_correct) (=> (= (ControlFlow 0 23) 22) anon35_Else_correct)))))
(let ((anon33_Else_correct  (=> (< |i#7@0| (LitInt 0)) (and (=> (= (ControlFlow 0 26) 23) anon34_Then_correct) (=> (= (ControlFlow 0 26) 24) anon34_Else_correct)))))
(let ((anon33_Then_correct  (=> (<= (LitInt 0) |i#7@0|) (and (=> (= (ControlFlow 0 25) 23) anon34_Then_correct) (=> (= (ControlFlow 0 25) 24) anon34_Else_correct)))))
(let ((anon32_Then_correct  (and (=> (= (ControlFlow 0 27) 25) anon33_Then_correct) (=> (= (ControlFlow 0 27) 26) anon33_Else_correct))))
(let ((anon31_Then_correct  (=> (and ($IsAllocBox ($Box refType this@@3) Tclass._module.IntegerInduction? $Heap) ($IsAlloc SeqType |s#0@@3| (TSeq TInt) $Heap)) (and (=> (= (ControlFlow 0 28) (- 0 29)) (or (and (= this@@3 this@@3) (|Seq#Equal| |s#0@@3| |s#0@@3|)) (< (|Seq#Rank| |s#0@@3|) (|Seq#Rank| |s#0@@3|)))) (=> (or (and (= this@@3 this@@3) (|Seq#Equal| |s#0@@3| |s#0@@3|)) (< (|Seq#Rank| |s#0@@3|) (|Seq#Rank| |s#0@@3|))) (=> (and (or (and (= this@@3 this@@3) (|Seq#Equal| |s#0@@3| |s#0@@3|)) (|_module.IntegerInduction.IsSorted#canCall| this@@3 |s#0@@3|)) (_module.IntegerInduction.IsSorted this@@3 |s#0@@3|)) (and (=> (= (ControlFlow 0 28) 27) anon32_Then_correct) (=> (= (ControlFlow 0 28) 17) anon32_Else_correct))))))))
(let ((anon31_Else_correct  (=> (=> (_module.IntegerInduction.IsSorted this@@3 |s#0@@3|) (forall ((|i#5@@2| Int) (|j#2@@2| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#5@@2|) (< |i#5@@2| |j#2@@2|)) (< |j#2@@2| (|Seq#Length| |s#0@@3|))) (<= (U_2_int ($Unbox intType (|Seq#Index| |s#0@@3| |i#5@@2|))) (U_2_int ($Unbox intType (|Seq#Index| |s#0@@3| |j#2@@2|)))))
 :qid |Inductionlegacydfy.152:37|
 :skolemid |622|
))) (and (and (=> (= (ControlFlow 0 16) 4) anon36_Else_correct) (=> (= (ControlFlow 0 16) 15) anon37_Then_correct)) (=> (= (ControlFlow 0 16) 2) anon37_Else_correct)))))
(let ((anon41_Else_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (and (=> (= (ControlFlow 0 41) 40) anon41_Then_correct) (=> (= (ControlFlow 0 41) 1) anon41_Else_correct)) (=> (= (ControlFlow 0 41) 28) anon31_Then_correct)) (=> (= (ControlFlow 0 41) 16) anon31_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 Tclass._module.IntegerInduction) ($IsAlloc refType this@@3 Tclass._module.IntegerInduction $Heap))) ($Is SeqType |s#0@@3| (TSeq TInt))) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 42) 41))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
