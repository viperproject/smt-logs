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
(declare-fun Tagclass._module.Expr () T@U)
(declare-fun Tagclass._module.List () T@U)
(declare-fun |##_module.List.Nil| () T@U)
(declare-fun |##_module.List.Cons| () T@U)
(declare-fun |##_module.Expr.Const| () T@U)
(declare-fun |##_module.Expr.Var| () T@U)
(declare-fun |##_module.Expr.Nary| () T@U)
(declare-fun tytagFamily$Expr () T@U)
(declare-fun tytagFamily$List () T@U)
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
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |#_module.List.Cons| (T@U T@U) T@U)
(declare-fun Tclass._module.List () T@U)
(declare-fun Tclass._module.Expr () T@U)
(declare-fun |_module.Expr#Equal| (T@U T@U) Bool)
(declare-fun _module.Expr.Const_q (T@U) Bool)
(declare-fun _module.Expr._h2 (T@U) Int)
(declare-fun _module.Expr.Var_q (T@U) Bool)
(declare-fun _module.Expr._h3 (T@U) Int)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.List.Nil| () T@U)
(declare-fun |_module.List#Equal| (T@U T@U) Bool)
(declare-fun _module.Expr.Nary_q (T@U) Bool)
(declare-fun _module.Expr._h4 (T@U) Int)
(declare-fun _module.Expr._h5 (T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.Subst (T@U T@U Int Int) T@U)
(declare-fun |_module.__default.Subst#canCall| (T@U Int Int) Bool)
(declare-fun _module.__default.SubstList (T@U T@U Int Int) T@U)
(declare-fun |_module.__default.SubstList#canCall| (T@U Int Int) Bool)
(declare-fun _module.List.Nil_q (T@U) Bool)
(declare-fun _module.List.Cons_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.Expr.Nary| (Int T@U) T@U)
(declare-fun |#_module.Expr.Const| (Int) T@U)
(declare-fun |#_module.Expr.Var| (Int) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |$IsA#_module.List| (T@U) Bool)
(declare-fun _module.List._h0 (T@U) T@U)
(declare-fun _module.List._h1 (T@U) T@U)
(declare-fun |$IsA#_module.Expr| (T@U) Bool)
(declare-fun DtRank (T@U) Int)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
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
(assert (distinct TInt TagInt alloc Tagclass._module.Expr Tagclass._module.List |##_module.List.Nil| |##_module.List.Cons| |##_module.Expr.Const| |##_module.Expr.Var| |##_module.Expr.Nary| tytagFamily$Expr tytagFamily$List)
)
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.List.Cons| |a#6#0#0| |a#6#1#0|) Tclass._module.List)  (and ($Is DatatypeTypeType |a#6#0#0| Tclass._module.Expr) ($Is DatatypeTypeType |a#6#1#0| Tclass._module.List)))
 :qid |Substitutiondfy.4:28|
 :skolemid |677|
 :pattern ( ($Is DatatypeTypeType (|#_module.List.Cons| |a#6#0#0| |a#6#1#0|) Tclass._module.List))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (and (_module.Expr.Const_q a) (_module.Expr.Const_q b)) (= (|_module.Expr#Equal| a b) (= (_module.Expr._h2 a) (_module.Expr._h2 b))))
 :qid |unknown.0:0|
 :skolemid |721|
 :pattern ( (|_module.Expr#Equal| a b) (_module.Expr.Const_q a))
 :pattern ( (|_module.Expr#Equal| a b) (_module.Expr.Const_q b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (and (_module.Expr.Var_q a@@0) (_module.Expr.Var_q b@@0)) (= (|_module.Expr#Equal| a@@0 b@@0) (= (_module.Expr._h3 a@@0) (_module.Expr._h3 b@@0))))
 :qid |unknown.0:0|
 :skolemid |722|
 :pattern ( (|_module.Expr#Equal| a@@0 b@@0) (_module.Expr.Var_q a@@0))
 :pattern ( (|_module.Expr#Equal| a@@0 b@@0) (_module.Expr.Var_q b@@0))
)))
(assert (= (DatatypeCtorId |#_module.List.Nil|) |##_module.List.Nil|))
(assert ($Is DatatypeTypeType |#_module.List.Nil| Tclass._module.List))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|_module.List#Equal| a@@1 b@@1) (= a@@1 b@@1))
 :qid |unknown.0:0|
 :skolemid |690|
 :pattern ( (|_module.List#Equal| a@@1 b@@1))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (! (= (|_module.Expr#Equal| a@@2 b@@2) (= a@@2 b@@2))
 :qid |unknown.0:0|
 :skolemid |724|
 :pattern ( (|_module.Expr#Equal| a@@2 b@@2))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) ) (!  (=> (and (_module.Expr.Nary_q a@@3) (_module.Expr.Nary_q b@@3)) (= (|_module.Expr#Equal| a@@3 b@@3)  (and (= (_module.Expr._h4 a@@3) (_module.Expr._h4 b@@3)) (|_module.List#Equal| (_module.Expr._h5 a@@3) (_module.Expr._h5 b@@3)))))
 :qid |unknown.0:0|
 :skolemid |723|
 :pattern ( (|_module.Expr#Equal| a@@3 b@@3) (_module.Expr.Nary_q a@@3))
 :pattern ( (|_module.Expr#Equal| a@@3 b@@3) (_module.Expr.Nary_q b@@3))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly T@U) (|e#0| T@U) (|v#0| Int) (|val#0| Int) ) (!  (=> (or (|_module.__default.Subst#canCall| |e#0| |v#0| |val#0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |e#0| Tclass._module.Expr))) ($Is DatatypeTypeType (_module.__default.Subst $ly |e#0| |v#0| |val#0|) Tclass._module.Expr))
 :qid |Substitutiondfy.11:16|
 :skolemid |592|
 :pattern ( (_module.__default.Subst $ly |e#0| |v#0| |val#0|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@0 T@U) (|l#0| T@U) (|v#0@@0| Int) (|val#0@@0| Int) ) (!  (=> (or (|_module.__default.SubstList#canCall| |l#0| |v#0@@0| |val#0@@0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |l#0| Tclass._module.List))) ($Is DatatypeTypeType (_module.__default.SubstList $ly@@0 |l#0| |v#0@@0| |val#0@@0|) Tclass._module.List))
 :qid |Substitutiondfy.19:16|
 :skolemid |600|
 :pattern ( (_module.__default.SubstList $ly@@0 |l#0| |v#0@@0| |val#0@@0|))
))))
(assert (forall ((d T@U) ) (! (= (_module.List.Nil_q d) (= (DatatypeCtorId d) |##_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |671|
 :pattern ( (_module.List.Nil_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.List.Cons_q d@@0) (= (DatatypeCtorId d@@0) |##_module.List.Cons|))
 :qid |unknown.0:0|
 :skolemid |674|
 :pattern ( (_module.List.Cons_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.Expr.Const_q d@@1) (= (DatatypeCtorId d@@1) |##_module.Expr.Const|))
 :qid |unknown.0:0|
 :skolemid |692|
 :pattern ( (_module.Expr.Const_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.Expr.Var_q d@@2) (= (DatatypeCtorId d@@2) |##_module.Expr.Var|))
 :qid |unknown.0:0|
 :skolemid |700|
 :pattern ( (_module.Expr.Var_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (_module.Expr.Nary_q d@@3) (= (DatatypeCtorId d@@3) |##_module.Expr.Nary|))
 :qid |unknown.0:0|
 :skolemid |708|
 :pattern ( (_module.Expr.Nary_q d@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.List.Cons_q d@@4) (exists ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= d@@4 (|#_module.List.Cons| |a#5#0#0| |a#5#1#0|))
 :qid |Substitutiondfy.4:28|
 :skolemid |675|
)))
 :qid |unknown.0:0|
 :skolemid |676|
 :pattern ( (_module.List.Cons_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (_module.Expr.Nary_q d@@5) (exists ((|a#23#0#0| Int) (|a#23#1#0| T@U) ) (! (= d@@5 (|#_module.Expr.Nary| |a#23#0#0| |a#23#1#0|))
 :qid |Substitutiondfy.9:8|
 :skolemid |709|
)))
 :qid |unknown.0:0|
 :skolemid |710|
 :pattern ( (_module.Expr.Nary_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (_module.List.Nil_q d@@6) (= d@@6 |#_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |672|
 :pattern ( (_module.List.Nil_q d@@6))
)))
(assert (forall ((d@@7 T@U) ) (!  (=> (_module.Expr.Const_q d@@7) (exists ((|a#13#0#0| Int) ) (! (= d@@7 (|#_module.Expr.Const| |a#13#0#0|))
 :qid |Substitutiondfy.7:9|
 :skolemid |693|
)))
 :qid |unknown.0:0|
 :skolemid |694|
 :pattern ( (_module.Expr.Const_q d@@7))
)))
(assert (forall ((d@@8 T@U) ) (!  (=> (_module.Expr.Var_q d@@8) (exists ((|a#18#0#0| Int) ) (! (= d@@8 (|#_module.Expr.Var| |a#18#0#0|))
 :qid |Substitutiondfy.8:7|
 :skolemid |701|
)))
 :qid |unknown.0:0|
 :skolemid |702|
 :pattern ( (_module.Expr.Var_q d@@8))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@1 T@U) (|e#0@@0| T@U) (|v#0@@1| Int) (|val#0@@1| Int) ) (!  (=> (or (|_module.__default.Subst#canCall| (Lit DatatypeTypeType |e#0@@0|) (LitInt |v#0@@1|) (LitInt |val#0@@1|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |e#0@@0| Tclass._module.Expr))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Expr.Const_q (Lit DatatypeTypeType |e#0@@0|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Expr.Var_q (Lit DatatypeTypeType |e#0@@0|)))))) (let ((|args#3| (Lit DatatypeTypeType (_module.Expr._h5 (Lit DatatypeTypeType |e#0@@0|)))))
(|_module.__default.SubstList#canCall| |args#3| (LitInt |v#0@@1|) (LitInt |val#0@@1|))))) (= (_module.__default.Subst ($LS $ly@@1) (Lit DatatypeTypeType |e#0@@0|) (LitInt |v#0@@1|) (LitInt |val#0@@1|)) (ite (_module.Expr.Const_q (Lit DatatypeTypeType |e#0@@0|)) (Lit DatatypeTypeType |e#0@@0|) (ite (_module.Expr.Var_q (Lit DatatypeTypeType |e#0@@0|)) (let ((|x#2| (LitInt (_module.Expr._h3 (Lit DatatypeTypeType |e#0@@0|)))))
(ite (= |x#2| (LitInt |v#0@@1|)) (|#_module.Expr.Const| (LitInt |val#0@@1|)) |e#0@@0|)) (let ((|args#2| (Lit DatatypeTypeType (_module.Expr._h5 (Lit DatatypeTypeType |e#0@@0|)))))
(let ((|op#2| (LitInt (_module.Expr._h4 (Lit DatatypeTypeType |e#0@@0|)))))
(Lit DatatypeTypeType (|#_module.Expr.Nary| |op#2| (Lit DatatypeTypeType (_module.__default.SubstList ($LS $ly@@1) |args#2| (LitInt |v#0@@1|) (LitInt |val#0@@1|))))))))))))
 :qid |Substitutiondfy.11:16|
 :weight 3
 :skolemid |595|
 :pattern ( (_module.__default.Subst ($LS $ly@@1) (Lit DatatypeTypeType |e#0@@0|) (LitInt |v#0@@1|) (LitInt |val#0@@1|)))
))))
(assert (forall ((d@@9 T@U) ) (!  (=> (|$IsA#_module.List| d@@9) (or (_module.List.Nil_q d@@9) (_module.List.Cons_q d@@9)))
 :qid |unknown.0:0|
 :skolemid |686|
 :pattern ( (|$IsA#_module.List| d@@9))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@2 T@U) (|e#0@@1| T@U) (|v#0@@2| Int) (|val#0@@2| Int) ) (!  (=> (or (|_module.__default.Subst#canCall| |e#0@@1| |v#0@@2| |val#0@@2|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |e#0@@1| Tclass._module.Expr))) (and (=> (not (_module.Expr.Const_q |e#0@@1|)) (=> (not (_module.Expr.Var_q |e#0@@1|)) (let ((|args#1| (_module.Expr._h5 |e#0@@1|)))
(|_module.__default.SubstList#canCall| |args#1| |v#0@@2| |val#0@@2|)))) (= (_module.__default.Subst ($LS $ly@@2) |e#0@@1| |v#0@@2| |val#0@@2|) (ite (_module.Expr.Const_q |e#0@@1|) |e#0@@1| (ite (_module.Expr.Var_q |e#0@@1|) (let ((|x#0| (_module.Expr._h3 |e#0@@1|)))
(ite (= |x#0| |v#0@@2|) (|#_module.Expr.Const| |val#0@@2|) |e#0@@1|)) (let ((|args#0| (_module.Expr._h5 |e#0@@1|)))
(let ((|op#0| (_module.Expr._h4 |e#0@@1|)))
(|#_module.Expr.Nary| |op#0| (_module.__default.SubstList $ly@@2 |args#0| |v#0@@2| |val#0@@2|)))))))))
 :qid |Substitutiondfy.11:16|
 :skolemid |594|
 :pattern ( (_module.__default.Subst ($LS $ly@@2) |e#0@@1| |v#0@@2| |val#0@@2|))
))))
(assert (forall ((d@@10 T@U) ) (!  (=> ($Is DatatypeTypeType d@@10 Tclass._module.List) (or (_module.List.Nil_q d@@10) (_module.List.Cons_q d@@10)))
 :qid |unknown.0:0|
 :skolemid |687|
 :pattern ( (_module.List.Cons_q d@@10) ($Is DatatypeTypeType d@@10 Tclass._module.List))
 :pattern ( (_module.List.Nil_q d@@10) ($Is DatatypeTypeType d@@10 Tclass._module.List))
)))
(assert (forall ((a@@4 T@U) (b@@4 T@U) ) (!  (=> (and (_module.List.Cons_q a@@4) (_module.List.Cons_q b@@4)) (= (|_module.List#Equal| a@@4 b@@4)  (and (|_module.Expr#Equal| (_module.List._h0 a@@4) (_module.List._h0 b@@4)) (|_module.List#Equal| (_module.List._h1 a@@4) (_module.List._h1 b@@4)))))
 :qid |unknown.0:0|
 :skolemid |689|
 :pattern ( (|_module.List#Equal| a@@4 b@@4) (_module.List.Cons_q a@@4))
 :pattern ( (|_module.List#Equal| a@@4 b@@4) (_module.List.Cons_q b@@4))
)))
(assert (forall ((a@@5 T@U) (b@@5 T@U) ) (!  (=> (and (_module.List.Nil_q a@@5) (_module.List.Nil_q b@@5)) (|_module.List#Equal| a@@5 b@@5))
 :qid |unknown.0:0|
 :skolemid |688|
 :pattern ( (|_module.List#Equal| a@@5 b@@5) (_module.List.Nil_q a@@5))
 :pattern ( (|_module.List#Equal| a@@5 b@@5) (_module.List.Nil_q b@@5))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.List.Cons| |a#4#0#0| |a#4#1#0|)) |##_module.List.Cons|)
 :qid |Substitutiondfy.4:28|
 :skolemid |673|
 :pattern ( (|#_module.List.Cons| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) ) (! (= (_module.List._h0 (|#_module.List.Cons| |a#8#0#0| |a#8#1#0|)) |a#8#0#0|)
 :qid |Substitutiondfy.4:28|
 :skolemid |681|
 :pattern ( (|#_module.List.Cons| |a#8#0#0| |a#8#1#0|))
)))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| T@U) ) (! (= (_module.List._h1 (|#_module.List.Cons| |a#10#0#0| |a#10#1#0|)) |a#10#1#0|)
 :qid |Substitutiondfy.4:28|
 :skolemid |683|
 :pattern ( (|#_module.List.Cons| |a#10#0#0| |a#10#1#0|))
)))
(assert (forall ((|a#22#0#0| Int) (|a#22#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Expr.Nary| |a#22#0#0| |a#22#1#0|)) |##_module.Expr.Nary|)
 :qid |Substitutiondfy.9:8|
 :skolemid |707|
 :pattern ( (|#_module.Expr.Nary| |a#22#0#0| |a#22#1#0|))
)))
(assert (forall ((|a#26#0#0| Int) (|a#26#1#0| T@U) ) (! (= (_module.Expr._h4 (|#_module.Expr.Nary| |a#26#0#0| |a#26#1#0|)) |a#26#0#0|)
 :qid |Substitutiondfy.9:8|
 :skolemid |715|
 :pattern ( (|#_module.Expr.Nary| |a#26#0#0| |a#26#1#0|))
)))
(assert (forall ((|a#27#0#0| Int) (|a#27#1#0| T@U) ) (! (= (_module.Expr._h5 (|#_module.Expr.Nary| |a#27#0#0| |a#27#1#0|)) |a#27#1#0|)
 :qid |Substitutiondfy.9:8|
 :skolemid |716|
 :pattern ( (|#_module.Expr.Nary| |a#27#0#0| |a#27#1#0|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@3 T@U) (|l#0@@0| T@U) (|v#0@@3| Int) (|val#0@@3| Int) ) (!  (=> (or (|_module.__default.SubstList#canCall| (Lit DatatypeTypeType |l#0@@0|) (LitInt |v#0@@3|) (LitInt |val#0@@3|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |l#0@@0| Tclass._module.List))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |l#0@@0|)))))) (let ((|tail#3| (Lit DatatypeTypeType (_module.List._h1 (Lit DatatypeTypeType |l#0@@0|)))))
(let ((|e#3| (Lit DatatypeTypeType (_module.List._h0 (Lit DatatypeTypeType |l#0@@0|)))))
 (and (|_module.__default.Subst#canCall| |e#3| (LitInt |v#0@@3|) (LitInt |val#0@@3|)) (|_module.__default.SubstList#canCall| |tail#3| (LitInt |v#0@@3|) (LitInt |val#0@@3|)))))) (= (_module.__default.SubstList ($LS $ly@@3) (Lit DatatypeTypeType |l#0@@0|) (LitInt |v#0@@3|) (LitInt |val#0@@3|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |l#0@@0|)) |l#0@@0| (let ((|tail#2| (Lit DatatypeTypeType (_module.List._h1 (Lit DatatypeTypeType |l#0@@0|)))))
(let ((|e#2| (Lit DatatypeTypeType (_module.List._h0 (Lit DatatypeTypeType |l#0@@0|)))))
(Lit DatatypeTypeType (|#_module.List.Cons| (Lit DatatypeTypeType (_module.__default.Subst ($LS $ly@@3) |e#2| (LitInt |v#0@@3|) (LitInt |val#0@@3|))) (Lit DatatypeTypeType (_module.__default.SubstList ($LS $ly@@3) |tail#2| (LitInt |v#0@@3|) (LitInt |val#0@@3|)))))))))))
 :qid |Substitutiondfy.19:16|
 :weight 3
 :skolemid |603|
 :pattern ( (_module.__default.SubstList ($LS $ly@@3) (Lit DatatypeTypeType |l#0@@0|) (LitInt |v#0@@3|) (LitInt |val#0@@3|)))
))))
(assert (forall ((|a#12#0#0| Int) ) (! (= (DatatypeCtorId (|#_module.Expr.Const| |a#12#0#0|)) |##_module.Expr.Const|)
 :qid |Substitutiondfy.7:9|
 :skolemid |691|
 :pattern ( (|#_module.Expr.Const| |a#12#0#0|))
)))
(assert (forall ((|a#16#0#0| Int) ) (! (= (_module.Expr._h2 (|#_module.Expr.Const| |a#16#0#0|)) |a#16#0#0|)
 :qid |Substitutiondfy.7:9|
 :skolemid |698|
 :pattern ( (|#_module.Expr.Const| |a#16#0#0|))
)))
(assert (forall ((|a#17#0#0| Int) ) (! (= (DatatypeCtorId (|#_module.Expr.Var| |a#17#0#0|)) |##_module.Expr.Var|)
 :qid |Substitutiondfy.8:7|
 :skolemid |699|
 :pattern ( (|#_module.Expr.Var| |a#17#0#0|))
)))
(assert (forall ((|a#21#0#0| Int) ) (! (= (_module.Expr._h3 (|#_module.Expr.Var| |a#21#0#0|)) |a#21#0#0|)
 :qid |Substitutiondfy.8:7|
 :skolemid |706|
 :pattern ( (|#_module.Expr.Var| |a#21#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@5))
)))
(assert (forall ((d@@11 T@U) ) (!  (=> (|$IsA#_module.Expr| d@@11) (or (or (_module.Expr.Const_q d@@11) (_module.Expr.Var_q d@@11)) (_module.Expr.Nary_q d@@11)))
 :qid |unknown.0:0|
 :skolemid |719|
 :pattern ( (|$IsA#_module.Expr| d@@11))
)))
(assert (forall ((|a#9#0#0| T@U) (|a#9#1#0| T@U) ) (! (< (DtRank |a#9#0#0|) (DtRank (|#_module.List.Cons| |a#9#0#0| |a#9#1#0|)))
 :qid |Substitutiondfy.4:28|
 :skolemid |682|
 :pattern ( (|#_module.List.Cons| |a#9#0#0| |a#9#1#0|))
)))
(assert (forall ((|a#11#0#0| T@U) (|a#11#1#0| T@U) ) (! (< (DtRank |a#11#1#0|) (DtRank (|#_module.List.Cons| |a#11#0#0| |a#11#1#0|)))
 :qid |Substitutiondfy.4:28|
 :skolemid |684|
 :pattern ( (|#_module.List.Cons| |a#11#0#0| |a#11#1#0|))
)))
(assert (forall ((|a#28#0#0| Int) (|a#28#1#0| T@U) ) (! (< (DtRank |a#28#1#0|) (DtRank (|#_module.Expr.Nary| |a#28#0#0| |a#28#1#0|)))
 :qid |Substitutiondfy.9:8|
 :skolemid |717|
 :pattern ( (|#_module.Expr.Nary| |a#28#0#0| |a#28#1#0|))
)))
(assert (forall ((|a#14#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.Expr.Const| |a#14#0#0|) Tclass._module.Expr) ($Is intType (int_2_U |a#14#0#0|) TInt))
 :qid |Substitutiondfy.7:9|
 :skolemid |695|
 :pattern ( ($Is DatatypeTypeType (|#_module.Expr.Const| |a#14#0#0|) Tclass._module.Expr))
)))
(assert (forall ((|a#19#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.Expr.Var| |a#19#0#0|) Tclass._module.Expr) ($Is intType (int_2_U |a#19#0#0|) TInt))
 :qid |Substitutiondfy.8:7|
 :skolemid |703|
 :pattern ( ($Is DatatypeTypeType (|#_module.Expr.Var| |a#19#0#0|) Tclass._module.Expr))
)))
(assert (forall (($ly@@4 T@U) (|e#0@@2| T@U) (|v#0@@4| Int) (|val#0@@4| Int) ) (! (= (_module.__default.Subst ($LS $ly@@4) |e#0@@2| |v#0@@4| |val#0@@4|) (_module.__default.Subst $ly@@4 |e#0@@2| |v#0@@4| |val#0@@4|))
 :qid |Substitutiondfy.11:16|
 :skolemid |589|
 :pattern ( (_module.__default.Subst ($LS $ly@@4) |e#0@@2| |v#0@@4| |val#0@@4|))
)))
(assert (forall (($ly@@5 T@U) (|l#0@@1| T@U) (|v#0@@5| Int) (|val#0@@5| Int) ) (! (= (_module.__default.SubstList ($LS $ly@@5) |l#0@@1| |v#0@@5| |val#0@@5|) (_module.__default.SubstList $ly@@5 |l#0@@1| |v#0@@5| |val#0@@5|))
 :qid |Substitutiondfy.19:16|
 :skolemid |598|
 :pattern ( (_module.__default.SubstList ($LS $ly@@5) |l#0@@1| |v#0@@5| |val#0@@5|))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 4)) (= (Ctor FieldType) 5)) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (= (Ctor BoxType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType1Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0@@2| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@2| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0@@2|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |760|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@2| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@12 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (_module.Expr.Const_q d@@12) ($IsAlloc DatatypeTypeType d@@12 Tclass._module.Expr $h))) ($IsAlloc intType (int_2_U (_module.Expr._h2 d@@12)) TInt $h))
 :qid |unknown.0:0|
 :skolemid |696|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Expr._h2 d@@12)) TInt $h))
)))
(assert (forall ((d@@13 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.Expr.Var_q d@@13) ($IsAlloc DatatypeTypeType d@@13 Tclass._module.Expr $h@@0))) ($IsAlloc intType (int_2_U (_module.Expr._h3 d@@13)) TInt $h@@0))
 :qid |unknown.0:0|
 :skolemid |704|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Expr._h3 d@@13)) TInt $h@@0))
)))
(assert (forall ((d@@14 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.Expr.Nary_q d@@14) ($IsAlloc DatatypeTypeType d@@14 Tclass._module.Expr $h@@1))) ($IsAlloc intType (int_2_U (_module.Expr._h4 d@@14)) TInt $h@@1))
 :qid |unknown.0:0|
 :skolemid |712|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Expr._h4 d@@14)) TInt $h@@1))
)))
(assert (forall ((d@@15 T@U) ) (!  (=> ($Is DatatypeTypeType d@@15 Tclass._module.Expr) (or (or (_module.Expr.Const_q d@@15) (_module.Expr.Var_q d@@15)) (_module.Expr.Nary_q d@@15)))
 :qid |unknown.0:0|
 :skolemid |720|
 :pattern ( (_module.Expr.Nary_q d@@15) ($Is DatatypeTypeType d@@15 Tclass._module.Expr))
 :pattern ( (_module.Expr.Var_q d@@15) ($Is DatatypeTypeType d@@15 Tclass._module.Expr))
 :pattern ( (_module.Expr.Const_q d@@15) ($Is DatatypeTypeType d@@15 Tclass._module.Expr))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@6 T@U) (|l#0@@3| T@U) (|v#0@@6| Int) (|val#0@@6| Int) ) (!  (=> (or (|_module.__default.SubstList#canCall| |l#0@@3| |v#0@@6| |val#0@@6|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |l#0@@3| Tclass._module.List))) (and (=> (not (_module.List.Nil_q |l#0@@3|)) (let ((|tail#1| (_module.List._h1 |l#0@@3|)))
(let ((|e#1| (_module.List._h0 |l#0@@3|)))
 (and (|_module.__default.Subst#canCall| |e#1| |v#0@@6| |val#0@@6|) (|_module.__default.SubstList#canCall| |tail#1| |v#0@@6| |val#0@@6|))))) (= (_module.__default.SubstList ($LS $ly@@6) |l#0@@3| |v#0@@6| |val#0@@6|) (ite (_module.List.Nil_q |l#0@@3|) |l#0@@3| (let ((|tail#0| (_module.List._h1 |l#0@@3|)))
(let ((|e#0@@3| (_module.List._h0 |l#0@@3|)))
(|#_module.List.Cons| (_module.__default.Subst $ly@@6 |e#0@@3| |v#0@@6| |val#0@@6|) (_module.__default.SubstList $ly@@6 |tail#0| |v#0@@6| |val#0@@6|))))))))
 :qid |Substitutiondfy.19:16|
 :skolemid |602|
 :pattern ( (_module.__default.SubstList ($LS $ly@@6) |l#0@@3| |v#0@@6| |val#0@@6|))
))))
(assert (forall ((d@@16 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) ($Is DatatypeTypeType d@@16 Tclass._module.List)) ($IsAlloc DatatypeTypeType d@@16 Tclass._module.List $h@@2))
 :qid |unknown.0:0|
 :skolemid |685|
 :pattern ( ($IsAlloc DatatypeTypeType d@@16 Tclass._module.List $h@@2))
)))
(assert (forall ((d@@17 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) ($Is DatatypeTypeType d@@17 Tclass._module.Expr)) ($IsAlloc DatatypeTypeType d@@17 Tclass._module.Expr $h@@3))
 :qid |unknown.0:0|
 :skolemid |718|
 :pattern ( ($IsAlloc DatatypeTypeType d@@17 Tclass._module.Expr $h@@3))
)))
(assert (= (Tag Tclass._module.Expr) Tagclass._module.Expr))
(assert (= (TagFamily Tclass._module.Expr) tytagFamily$Expr))
(assert (= (Tag Tclass._module.List) Tagclass._module.List))
(assert (= (TagFamily Tclass._module.List) tytagFamily$List))
(assert (= |#_module.List.Nil| (Lit DatatypeTypeType |#_module.List.Nil|)))
(assert (forall ((d@@18 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_module.List.Cons_q d@@18) ($IsAlloc DatatypeTypeType d@@18 Tclass._module.List $h@@4))) ($IsAlloc DatatypeTypeType (_module.List._h0 d@@18) Tclass._module.Expr $h@@4))
 :qid |unknown.0:0|
 :skolemid |678|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.List._h0 d@@18) Tclass._module.Expr $h@@4))
)))
(assert (forall ((d@@19 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_module.List.Cons_q d@@19) ($IsAlloc DatatypeTypeType d@@19 Tclass._module.List $h@@5))) ($IsAlloc DatatypeTypeType (_module.List._h1 d@@19) Tclass._module.List $h@@5))
 :qid |unknown.0:0|
 :skolemid |679|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.List._h1 d@@19) Tclass._module.List $h@@5))
)))
(assert (forall ((d@@20 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (_module.Expr.Nary_q d@@20) ($IsAlloc DatatypeTypeType d@@20 Tclass._module.Expr $h@@6))) ($IsAlloc DatatypeTypeType (_module.Expr._h5 d@@20) Tclass._module.List $h@@6))
 :qid |unknown.0:0|
 :skolemid |713|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Expr._h5 d@@20) Tclass._module.List $h@@6))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (= (|#_module.List.Cons| (Lit DatatypeTypeType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)) (Lit DatatypeTypeType (|#_module.List.Cons| |a#7#0#0| |a#7#1#0|)))
 :qid |Substitutiondfy.4:28|
 :skolemid |680|
 :pattern ( (|#_module.List.Cons| (Lit DatatypeTypeType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)))
)))
(assert (forall ((|a#25#0#0| Int) (|a#25#1#0| T@U) ) (! (= (|#_module.Expr.Nary| (LitInt |a#25#0#0|) (Lit DatatypeTypeType |a#25#1#0|)) (Lit DatatypeTypeType (|#_module.Expr.Nary| |a#25#0#0| |a#25#1#0|)))
 :qid |Substitutiondfy.9:8|
 :skolemid |714|
 :pattern ( (|#_module.Expr.Nary| (LitInt |a#25#0#0|) (Lit DatatypeTypeType |a#25#1#0|)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#15#0#0| Int) ) (! (= (|#_module.Expr.Const| (LitInt |a#15#0#0|)) (Lit DatatypeTypeType (|#_module.Expr.Const| |a#15#0#0|)))
 :qid |Substitutiondfy.7:9|
 :skolemid |697|
 :pattern ( (|#_module.Expr.Const| (LitInt |a#15#0#0|)))
)))
(assert (forall ((|a#20#0#0| Int) ) (! (= (|#_module.Expr.Var| (LitInt |a#20#0#0|)) (Lit DatatypeTypeType (|#_module.Expr.Var| |a#20#0#0|)))
 :qid |Substitutiondfy.8:7|
 :skolemid |705|
 :pattern ( (|#_module.Expr.Var| (LitInt |a#20#0#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@7)) (Lit BoxType ($Box T@@2 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@7)))
)))
(assert (forall ((|a#24#0#0| Int) (|a#24#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Expr.Nary| |a#24#0#0| |a#24#1#0|) Tclass._module.Expr)  (and ($Is intType (int_2_U |a#24#0#0|) TInt) ($Is DatatypeTypeType |a#24#1#0| Tclass._module.List)))
 :qid |Substitutiondfy.9:8|
 :skolemid |711|
 :pattern ( ($Is DatatypeTypeType (|#_module.Expr.Nary| |a#24#0#0| |a#24#1#0|) Tclass._module.Expr))
)))
(assert (forall ((h T@U) (v T@U) ) (! ($IsAlloc intType v TInt h)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v TInt h))
)))
(assert (forall ((v@@0 T@U) ) (! ($Is intType v@@0 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@0 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $LZ () T@U)
(declare-fun |l#0@@4| () T@U)
(declare-fun |v#0@@7| () Int)
(declare-fun |val#0@@7| () Int)
(declare-fun |_mcc#0#0_0@0| () T@U)
(declare-fun |_mcc#1#0_0@0| () T@U)
(declare-fun |tail#0_0@0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |let#0_0#0#0| () T@U)
(declare-fun |e#0_0@0| () T@U)
(declare-fun |let#0_1#0#0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap@2 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.Lemma)
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
 (=> (= (ControlFlow 0 0) 14) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (|_module.List#Equal| (_module.__default.SubstList ($LS ($LS $LZ)) (_module.__default.SubstList ($LS ($LS $LZ)) |l#0@@4| |v#0@@7| |val#0@@7|) |v#0@@7| |val#0@@7|) (_module.__default.SubstList ($LS ($LS $LZ)) |l#0@@4| |v#0@@7| |val#0@@7|)))))
(let ((anon5_Then_correct  (=> (= |l#0@@4| (|#_module.List.Cons| |_mcc#0#0_0@0| |_mcc#1#0_0@0|)) (=> (and ($Is DatatypeTypeType |_mcc#0#0_0@0| Tclass._module.Expr) ($Is DatatypeTypeType |_mcc#1#0_0@0| Tclass._module.List)) (=> (and (and (and (and ($Is DatatypeTypeType |tail#0_0@0| Tclass._module.List) ($IsAlloc DatatypeTypeType |tail#0_0@0| Tclass._module.List $Heap@0)) (= |let#0_0#0#0| |_mcc#1#0_0@0|)) (and ($Is DatatypeTypeType |let#0_0#0#0| Tclass._module.List) (= |tail#0_0@0| |let#0_0#0#0|))) (and (and (and ($Is DatatypeTypeType |e#0_0@0| Tclass._module.Expr) ($IsAlloc DatatypeTypeType |e#0_0@0| Tclass._module.Expr $Heap@0)) (= |let#0_1#0#0| |_mcc#0#0_0@0|)) (and ($Is DatatypeTypeType |let#0_1#0#0| Tclass._module.Expr) (= |e#0_0@0| |let#0_1#0#0|)))) (and (=> (= (ControlFlow 0 5) (- 0 11)) (or (or (<= 0 |v#0@@7|) (< (DtRank |e#0_0@0|) (DtRank |l#0@@4|))) (= |v#0@@7| |v#0@@7|))) (=> (or (or (<= 0 |v#0@@7|) (< (DtRank |e#0_0@0|) (DtRank |l#0@@4|))) (= |v#0@@7| |v#0@@7|)) (and (=> (= (ControlFlow 0 5) (- 0 10)) (or (or (or (<= 0 |val#0@@7|) (< (DtRank |e#0_0@0|) (DtRank |l#0@@4|))) (< |v#0@@7| |v#0@@7|)) (= |val#0@@7| |val#0@@7|))) (=> (or (or (or (<= 0 |val#0@@7|) (< (DtRank |e#0_0@0|) (DtRank |l#0@@4|))) (< |v#0@@7| |v#0@@7|)) (= |val#0@@7| |val#0@@7|)) (and (=> (= (ControlFlow 0 5) (- 0 9)) (or (< (DtRank |e#0_0@0|) (DtRank |l#0@@4|)) (and (= (DtRank |e#0_0@0|) (DtRank |l#0@@4|)) (or (< |v#0@@7| |v#0@@7|) (and (= |v#0@@7| |v#0@@7|) (< |val#0@@7| |val#0@@7|)))))) (=> (or (< (DtRank |e#0_0@0|) (DtRank |l#0@@4|)) (and (= (DtRank |e#0_0@0|) (DtRank |l#0@@4|)) (or (< |v#0@@7| |v#0@@7|) (and (= |v#0@@7| |v#0@@7|) (< |val#0@@7| |val#0@@7|))))) (=> (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (=> (and (and (and (|$IsA#_module.Expr| (_module.__default.Subst ($LS $LZ) (_module.__default.Subst ($LS $LZ) |e#0_0@0| |v#0@@7| |val#0@@7|) |v#0@@7| |val#0@@7|)) (|$IsA#_module.Expr| (_module.__default.Subst ($LS $LZ) |e#0_0@0| |v#0@@7| |val#0@@7|))) (and (and (|_module.__default.Subst#canCall| |e#0_0@0| |v#0@@7| |val#0@@7|) (|_module.__default.Subst#canCall| (_module.__default.Subst ($LS $LZ) |e#0_0@0| |v#0@@7| |val#0@@7|) |v#0@@7| |val#0@@7|)) (|_module.__default.Subst#canCall| |e#0_0@0| |v#0@@7| |val#0@@7|))) (and (|_module.Expr#Equal| (_module.__default.Subst ($LS ($LS $LZ)) (_module.__default.Subst ($LS ($LS $LZ)) |e#0_0@0| |v#0@@7| |val#0@@7|) |v#0@@7| |val#0@@7|) (_module.__default.Subst ($LS ($LS $LZ)) |e#0_0@0| |v#0@@7| |val#0@@7|)) (= $Heap@0 $Heap@1))) (and (=> (= (ControlFlow 0 5) (- 0 8)) (or (or (<= 0 |v#0@@7|) (< (DtRank |tail#0_0@0|) (DtRank |l#0@@4|))) (= |v#0@@7| |v#0@@7|))) (=> (or (or (<= 0 |v#0@@7|) (< (DtRank |tail#0_0@0|) (DtRank |l#0@@4|))) (= |v#0@@7| |v#0@@7|)) (and (=> (= (ControlFlow 0 5) (- 0 7)) (or (or (or (<= 0 |val#0@@7|) (< (DtRank |tail#0_0@0|) (DtRank |l#0@@4|))) (< |v#0@@7| |v#0@@7|)) (= |val#0@@7| |val#0@@7|))) (=> (or (or (or (<= 0 |val#0@@7|) (< (DtRank |tail#0_0@0|) (DtRank |l#0@@4|))) (< |v#0@@7| |v#0@@7|)) (= |val#0@@7| |val#0@@7|)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (or (< (DtRank |tail#0_0@0|) (DtRank |l#0@@4|)) (and (= (DtRank |tail#0_0@0|) (DtRank |l#0@@4|)) (or (< |v#0@@7| |v#0@@7|) (and (= |v#0@@7| |v#0@@7|) (< |val#0@@7| |val#0@@7|)))))) (=> (or (< (DtRank |tail#0_0@0|) (DtRank |l#0@@4|)) (and (= (DtRank |tail#0_0@0|) (DtRank |l#0@@4|)) (or (< |v#0@@7| |v#0@@7|) (and (= |v#0@@7| |v#0@@7|) (< |val#0@@7| |val#0@@7|))))) (=> (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (=> (and (and (and (and (|$IsA#_module.List| (_module.__default.SubstList ($LS $LZ) (_module.__default.SubstList ($LS $LZ) |tail#0_0@0| |v#0@@7| |val#0@@7|) |v#0@@7| |val#0@@7|)) (|$IsA#_module.List| (_module.__default.SubstList ($LS $LZ) |tail#0_0@0| |v#0@@7| |val#0@@7|))) (and (and (|_module.__default.SubstList#canCall| |tail#0_0@0| |v#0@@7| |val#0@@7|) (|_module.__default.SubstList#canCall| (_module.__default.SubstList ($LS $LZ) |tail#0_0@0| |v#0@@7| |val#0@@7|) |v#0@@7| |val#0@@7|)) (|_module.__default.SubstList#canCall| |tail#0_0@0| |v#0@@7| |val#0@@7|))) (|_module.List#Equal| (_module.__default.SubstList ($LS ($LS $LZ)) (_module.__default.SubstList ($LS ($LS $LZ)) |tail#0_0@0| |v#0@@7| |val#0@@7|) |v#0@@7| |val#0@@7|) (_module.__default.SubstList ($LS ($LS $LZ)) |tail#0_0@0| |v#0@@7| |val#0@@7|))) (and (= $Heap@1 $Heap@2) (= (ControlFlow 0 5) 3))) GeneratedUnifiedExit_correct)))))))))))))))))))))
(let ((anon4_Then_correct  (=> (and (= |l#0@@4| |#_module.List.Nil|) (= (ControlFlow 0 4) 3)) GeneratedUnifiedExit_correct)))
(let ((anon5_Else_correct true))
(let ((anon4_Else_correct  (=> (or (not (= |l#0@@4| |#_module.List.Nil|)) (not true)) (and (=> (= (ControlFlow 0 12) 5) anon5_Then_correct) (=> (= (ControlFlow 0 12) 1) anon5_Else_correct)))))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (|$IsA#_module.List| |l#0@@4|)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap $Heap@0) (forall ((|$ih#l0#0| T@U) (|$ih#v0#0| Int) (|$ih#val0#0| Int) ) (!  (=> (and (and ($Is DatatypeTypeType |$ih#l0#0| Tclass._module.List) (U_2_bool (Lit boolType (bool_2_U true)))) (or (< (DtRank |$ih#l0#0|) (DtRank |l#0@@4|)) (and (= (DtRank |$ih#l0#0|) (DtRank |l#0@@4|)) (or (and (<= 0 |$ih#v0#0|) (< |$ih#v0#0| |v#0@@7|)) (and (= |$ih#v0#0| |v#0@@7|) (and (<= 0 |$ih#val0#0|) (< |$ih#val0#0| |val#0@@7|))))))) (|_module.List#Equal| (_module.__default.SubstList ($LS $LZ) (_module.__default.SubstList ($LS $LZ) |$ih#l0#0| |$ih#v0#0| |$ih#val0#0|) |$ih#v0#0| |$ih#val0#0|) (_module.__default.SubstList ($LS $LZ) |$ih#l0#0| |$ih#v0#0| |$ih#val0#0|)))
 :qid |Substitutiondfy.37:13|
 :skolemid |608|
 :pattern ( (_module.__default.SubstList ($LS $LZ) (_module.__default.SubstList ($LS $LZ) |$ih#l0#0| |$ih#v0#0| |$ih#val0#0|) |$ih#v0#0| |$ih#val0#0|))
)))) (and (=> (= (ControlFlow 0 13) 4) anon4_Then_correct) (=> (= (ControlFlow 0 13) 12) anon4_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is DatatypeTypeType |l#0@@4| Tclass._module.List) ($IsAlloc DatatypeTypeType |l#0@@4| Tclass._module.List $Heap)) (|$IsA#_module.List| |l#0@@4|)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 14) 13))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
