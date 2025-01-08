(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-08 21:27:12
; Silicon.version: 1.1-SNAPSHOT (457c6eca@(detached))
; Input file: <unknown>
; Verifier id: 00
; ------------------------------------------------------------
; Begin preamble
; ////////// Static preamble
; 
; ; /z3config.smt2
(set-option :print-success true) ; Boogie: false
(set-option :global-decls true) ; Necessary for push pop mode
(set-option :auto_config false)
(set-option :smt.case_split 3)
(set-option :smt.delay_units true)
(set-option :type_check true)
(set-option :smt.mbqi false)
(set-option :pp.bv_literals false)
(set-option :smt.qi.eager_threshold 100)
(set-option :smt.arith.solver 2)
(set-option :model.v2 true)
(set-option :smt.qi.max_multi_patterns 1000)
; 
; ; /preamble.smt2
(declare-datatypes (($Snap 0)) ((
    ($Snap.unit)
    ($Snap.combine ($Snap.first $Snap) ($Snap.second $Snap)))))
(declare-sort $Ref 0)
(declare-const $Ref.null $Ref)
(declare-sort $FPM 0)
(declare-sort $PPM 0)
(define-sort $Perm () Real)
(define-const $Perm.Write $Perm 1.0)
(define-const $Perm.No $Perm 0.0)
(define-fun $Perm.isValidVar ((p $Perm)) Bool
	(<= $Perm.No p))
(define-fun $Perm.isReadVar ((p $Perm)) Bool
    (and ($Perm.isValidVar p)
         (not (= p $Perm.No))))
(define-fun $Perm.min ((p1 $Perm) (p2 $Perm)) Real
    (ite (<= p1 p2) p1 p2))
(define-fun $Math.min ((a Int) (b Int)) Int
    (ite (<= a b) a b))
(define-fun $Math.clip ((a Int)) Int
    (ite (< a 0) 0 a))
; ////////// Sorts
(declare-sort ListWellFoundedOrder<Val> 0)
(declare-sort WellFoundedOrder<List<Val>> 0)
(declare-sort List<Val> 0)
(declare-sort Val 0)
; ////////// Sort wrappers
; Declaring additional sort wrappers
(declare-fun $SortWrappers.IntTo$Snap (Int) $Snap)
(declare-fun $SortWrappers.$SnapToInt ($Snap) Int)
(assert (forall ((x Int)) (!
    (= x ($SortWrappers.$SnapToInt($SortWrappers.IntTo$Snap x)))
    :pattern (($SortWrappers.IntTo$Snap x))
    :qid |$Snap.$SnapToIntTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.IntTo$Snap($SortWrappers.$SnapToInt x)))
    :pattern (($SortWrappers.$SnapToInt x))
    :qid |$Snap.IntTo$SnapToInt|
    )))
(declare-fun $SortWrappers.BoolTo$Snap (Bool) $Snap)
(declare-fun $SortWrappers.$SnapToBool ($Snap) Bool)
(assert (forall ((x Bool)) (!
    (= x ($SortWrappers.$SnapToBool($SortWrappers.BoolTo$Snap x)))
    :pattern (($SortWrappers.BoolTo$Snap x))
    :qid |$Snap.$SnapToBoolTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.BoolTo$Snap($SortWrappers.$SnapToBool x)))
    :pattern (($SortWrappers.$SnapToBool x))
    :qid |$Snap.BoolTo$SnapToBool|
    )))
(declare-fun $SortWrappers.$RefTo$Snap ($Ref) $Snap)
(declare-fun $SortWrappers.$SnapTo$Ref ($Snap) $Ref)
(assert (forall ((x $Ref)) (!
    (= x ($SortWrappers.$SnapTo$Ref($SortWrappers.$RefTo$Snap x)))
    :pattern (($SortWrappers.$RefTo$Snap x))
    :qid |$Snap.$SnapTo$RefTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$RefTo$Snap($SortWrappers.$SnapTo$Ref x)))
    :pattern (($SortWrappers.$SnapTo$Ref x))
    :qid |$Snap.$RefTo$SnapTo$Ref|
    )))
(declare-fun $SortWrappers.$PermTo$Snap ($Perm) $Snap)
(declare-fun $SortWrappers.$SnapTo$Perm ($Snap) $Perm)
(assert (forall ((x $Perm)) (!
    (= x ($SortWrappers.$SnapTo$Perm($SortWrappers.$PermTo$Snap x)))
    :pattern (($SortWrappers.$PermTo$Snap x))
    :qid |$Snap.$SnapTo$PermTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$PermTo$Snap($SortWrappers.$SnapTo$Perm x)))
    :pattern (($SortWrappers.$SnapTo$Perm x))
    :qid |$Snap.$PermTo$SnapTo$Perm|
    )))
; Declaring additional sort wrappers
(declare-fun $SortWrappers.ListWellFoundedOrder<Val>To$Snap (ListWellFoundedOrder<Val>) $Snap)
(declare-fun $SortWrappers.$SnapToListWellFoundedOrder<Val> ($Snap) ListWellFoundedOrder<Val>)
(assert (forall ((x ListWellFoundedOrder<Val>)) (!
    (= x ($SortWrappers.$SnapToListWellFoundedOrder<Val>($SortWrappers.ListWellFoundedOrder<Val>To$Snap x)))
    :pattern (($SortWrappers.ListWellFoundedOrder<Val>To$Snap x))
    :qid |$Snap.$SnapToListWellFoundedOrder<Val>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.ListWellFoundedOrder<Val>To$Snap($SortWrappers.$SnapToListWellFoundedOrder<Val> x)))
    :pattern (($SortWrappers.$SnapToListWellFoundedOrder<Val> x))
    :qid |$Snap.ListWellFoundedOrder<Val>To$SnapToListWellFoundedOrder<Val>|
    )))
(declare-fun $SortWrappers.WellFoundedOrder<List<Val>>To$Snap (WellFoundedOrder<List<Val>>) $Snap)
(declare-fun $SortWrappers.$SnapToWellFoundedOrder<List<Val>> ($Snap) WellFoundedOrder<List<Val>>)
(assert (forall ((x WellFoundedOrder<List<Val>>)) (!
    (= x ($SortWrappers.$SnapToWellFoundedOrder<List<Val>>($SortWrappers.WellFoundedOrder<List<Val>>To$Snap x)))
    :pattern (($SortWrappers.WellFoundedOrder<List<Val>>To$Snap x))
    :qid |$Snap.$SnapToWellFoundedOrder<List<Val>>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.WellFoundedOrder<List<Val>>To$Snap($SortWrappers.$SnapToWellFoundedOrder<List<Val>> x)))
    :pattern (($SortWrappers.$SnapToWellFoundedOrder<List<Val>> x))
    :qid |$Snap.WellFoundedOrder<List<Val>>To$SnapToWellFoundedOrder<List<Val>>|
    )))
(declare-fun $SortWrappers.List<Val>To$Snap (List<Val>) $Snap)
(declare-fun $SortWrappers.$SnapToList<Val> ($Snap) List<Val>)
(assert (forall ((x List<Val>)) (!
    (= x ($SortWrappers.$SnapToList<Val>($SortWrappers.List<Val>To$Snap x)))
    :pattern (($SortWrappers.List<Val>To$Snap x))
    :qid |$Snap.$SnapToList<Val>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.List<Val>To$Snap($SortWrappers.$SnapToList<Val> x)))
    :pattern (($SortWrappers.$SnapToList<Val> x))
    :qid |$Snap.List<Val>To$SnapToList<Val>|
    )))
(declare-fun $SortWrappers.ValTo$Snap (Val) $Snap)
(declare-fun $SortWrappers.$SnapToVal ($Snap) Val)
(assert (forall ((x Val)) (!
    (= x ($SortWrappers.$SnapToVal($SortWrappers.ValTo$Snap x)))
    :pattern (($SortWrappers.ValTo$Snap x))
    :qid |$Snap.$SnapToValTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.ValTo$Snap($SortWrappers.$SnapToVal x)))
    :pattern (($SortWrappers.$SnapToVal x))
    :qid |$Snap.ValTo$SnapToVal|
    )))
; ////////// Symbols
(declare-fun decreasing<Bool> (List<Val> List<Val>) Bool)
(declare-fun bounded<Bool> (List<Val>) Bool)
(declare-const Nil<List<Val>> List<Val>)
(declare-fun Cons<List<Val>> (Val List<Val>) List<Val>)
(declare-fun get_List_value<Val> (List<Val>) Val)
(declare-fun get_List_tail<List<Val>> (List<Val>) List<Val>)
(declare-fun List_tag<Int> (List<Val>) Int)
; Declaring symbols related to program functions (from program analysis)
(declare-fun lenBad ($Snap List<Val> Val) Int)
(declare-fun lenBad%limited ($Snap List<Val> Val) Int)
(declare-fun lenBad%stateless (List<Val> Val) Bool)
(declare-fun lenBad%precondition ($Snap List<Val> Val) Bool)
(declare-fun len ($Snap List<Val>) Int)
(declare-fun len%limited ($Snap List<Val>) Int)
(declare-fun len%stateless (List<Val>) Bool)
(declare-fun len%precondition ($Snap List<Val>) Bool)
(declare-fun len2 ($Snap List<Val>) Int)
(declare-fun len2%limited ($Snap List<Val>) Int)
(declare-fun len2%stateless (List<Val>) Bool)
(declare-fun len2%precondition ($Snap List<Val>) Bool)
(declare-fun lenBad2 ($Snap List<Val>) Int)
(declare-fun lenBad2%limited ($Snap List<Val>) Int)
(declare-fun lenBad2%stateless (List<Val>) Bool)
(declare-fun lenBad2%precondition ($Snap List<Val>) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
(assert (forall ((value Val) (tail List<Val>)) (!
  (= value (get_List_value<Val> (Cons<List<Val>> value tail)))
  :pattern ((Cons<List<Val>> value tail))
  )))
(assert (forall ((value Val) (tail List<Val>)) (!
  (= tail (get_List_tail<List<Val>> (Cons<List<Val>> value tail)))
  :pattern ((Cons<List<Val>> value tail))
  )))
(assert (= (List_tag<Int> (as Nil<List<Val>>  List<Val>)) 1))
(assert (forall ((value Val) (tail List<Val>)) (!
  (= (List_tag<Int> (Cons<List<Val>> value tail)) 0)
  :pattern ((Cons<List<Val>> value tail))
  )))
(assert (forall ((t List<Val>)) (!
  (or
    (= t (as Nil<List<Val>>  List<Val>))
    (= t (Cons<List<Val>> (get_List_value<Val> t) (get_List_tail<List<Val>> t))))
  :pattern ((List_tag<Int> t))
  :pattern ((get_List_value<Val> t))
  :pattern ((get_List_tail<List<Val>> t))
  )))
(assert true)
(assert (forall ((tail_0 List<Val>) (value Val)) (!
  (decreasing<Bool> tail_0 (Cons<List<Val>> value tail_0))
  :pattern ((Cons<List<Val>> value tail_0))
  )))
(assert (forall ((v1 List<Val>) (v2 List<Val>) (v3 List<Val>)) (!
  (=>
    (and (decreasing<Bool> v1 v2) (decreasing<Bool> v2 v3))
    (decreasing<Bool> v1 v3))
  :pattern ((decreasing<Bool> v1 v2) (decreasing<Bool> v2 v3))
  )))
(assert (forall ((x List<Val>)) (!
  (bounded<Bool> x)
  :pattern ((bounded<Bool> x))
  )))
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ---------- FUNCTION lenBad----------
(declare-fun l@0@00 () List<Val>)
(declare-fun v@1@00 () Val)
(declare-fun result@2@00 () Int)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(declare-const $t@9@00 $Snap)
(assert (= $t@9@00 $Snap.unit))
; [eval] result >= 0
(assert (>= result@2@00 0))
(pop) ; 1
(assert (forall ((s@$ $Snap) (l@0@00 List<Val>) (v@1@00 Val)) (!
  (= (lenBad%limited s@$ l@0@00 v@1@00) (lenBad s@$ l@0@00 v@1@00))
  :pattern ((lenBad s@$ l@0@00 v@1@00))
  :qid |quant-u-26332|)))
(assert (forall ((s@$ $Snap) (l@0@00 List<Val>) (v@1@00 Val)) (!
  (lenBad%stateless l@0@00 v@1@00)
  :pattern ((lenBad%limited s@$ l@0@00 v@1@00))
  :qid |quant-u-26333|)))
(assert (forall ((s@$ $Snap) (l@0@00 List<Val>) (v@1@00 Val)) (!
  (let ((result@2@00 (lenBad%limited s@$ l@0@00 v@1@00))) (=>
    (lenBad%precondition s@$ l@0@00 v@1@00)
    (>= result@2@00 0)))
  :pattern ((lenBad%limited s@$ l@0@00 v@1@00))
  :qid |quant-u-26340|)))
(assert (forall ((s@$ $Snap) (l@0@00 List<Val>) (v@1@00 Val)) (!
  (let ((result@2@00 (lenBad%limited s@$ l@0@00 v@1@00))) true)
  :pattern ((lenBad%limited s@$ l@0@00 v@1@00))
  :qid |quant-u-26341|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] lenBad((Cons(v, (Nil(): List[Val])): List[Val]), v)
; [eval] (Cons(v, (Nil(): List[Val])): List[Val])
; [eval] (Nil(): List[Val])
(set-option :timeout 0)
(push) ; 2
(assert (lenBad%precondition $Snap.unit (Cons<List<Val>> v@1@00 (as Nil<List<Val>>  List<Val>)) v@1@00))
(pop) ; 2
; Joined path conditions
(assert (lenBad%precondition $Snap.unit (Cons<List<Val>> v@1@00 (as Nil<List<Val>>  List<Val>)) v@1@00))
(assert (=
  result@2@00
  (lenBad $Snap.unit (Cons<List<Val>> v@1@00 (as Nil<List<Val>>  List<Val>)) v@1@00)))
; [eval] result >= 0
(push) ; 2
(assert (not (>= result@2@00 0)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (>= result@2@00 0))
(pop) ; 1
(assert (forall ((s@$ $Snap) (l@0@00 List<Val>) (v@1@00 Val)) (!
  (=>
    (lenBad%precondition s@$ l@0@00 v@1@00)
    (=
      (lenBad s@$ l@0@00 v@1@00)
      (lenBad%limited $Snap.unit (Cons<List<Val>> v@1@00 (as Nil<List<Val>>  List<Val>)) v@1@00)))
  :pattern ((lenBad s@$ l@0@00 v@1@00))
  :qid |quant-u-26342|)))
(assert (forall ((s@$ $Snap) (l@0@00 List<Val>) (v@1@00 Val)) (!
  (=>
    (lenBad%precondition s@$ l@0@00 v@1@00)
    (lenBad%precondition $Snap.unit (Cons<List<Val>> v@1@00 (as Nil<List<Val>>  List<Val>)) v@1@00))
  :pattern ((lenBad s@$ l@0@00 v@1@00))
  :qid |quant-u-26343|)))
; ---------- FUNCTION len----------
(declare-fun l@3@00 () List<Val>)
(declare-fun result@4@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(declare-const $t@10@00 $Snap)
(assert (= $t@10@00 $Snap.unit))
; [eval] result >= 0
(assert (>= result@4@00 0))
(pop) ; 1
(assert (forall ((s@$ $Snap) (l@3@00 List<Val>)) (!
  (= (len%limited s@$ l@3@00) (len s@$ l@3@00))
  :pattern ((len s@$ l@3@00))
  :qid |quant-u-26334|)))
(assert (forall ((s@$ $Snap) (l@3@00 List<Val>)) (!
  (len%stateless l@3@00)
  :pattern ((len%limited s@$ l@3@00))
  :qid |quant-u-26335|)))
(assert (forall ((s@$ $Snap) (l@3@00 List<Val>)) (!
  (let ((result@4@00 (len%limited s@$ l@3@00))) (=>
    (len%precondition s@$ l@3@00)
    (>= result@4@00 0)))
  :pattern ((len%limited s@$ l@3@00))
  :qid |quant-u-26344|)))
(assert (forall ((s@$ $Snap) (l@3@00 List<Val>)) (!
  (let ((result@4@00 (len%limited s@$ l@3@00))) true)
  :pattern ((len%limited s@$ l@3@00))
  :qid |quant-u-26345|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] ((List_tag(l): Int) == 1 ? 0 : 1 + len((get_List_tail(l): List[Val])))
; [eval] (List_tag(l): Int) == 1
; [eval] (List_tag(l): Int)
(set-option :timeout 0)
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= (List_tag<Int> l@3@00) 1))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= (List_tag<Int> l@3@00) 1)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | List_tag[Int](l@3@00) == 1 | live]
; [else-branch: 0 | List_tag[Int](l@3@00) != 1 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 0 | List_tag[Int](l@3@00) == 1]
(assert (= (List_tag<Int> l@3@00) 1))
(pop) ; 3
(push) ; 3
; [else-branch: 0 | List_tag[Int](l@3@00) != 1]
(assert (not (= (List_tag<Int> l@3@00) 1)))
; [eval] 1 + len((get_List_tail(l): List[Val]))
; [eval] len((get_List_tail(l): List[Val]))
; [eval] (get_List_tail(l): List[Val])
(push) ; 4
(assert (len%precondition $Snap.unit (get_List_tail<List<Val>> l@3@00)))
(pop) ; 4
; Joined path conditions
(assert (len%precondition $Snap.unit (get_List_tail<List<Val>> l@3@00)))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=>
  (not (= (List_tag<Int> l@3@00) 1))
  (and
    (not (= (List_tag<Int> l@3@00) 1))
    (len%precondition $Snap.unit (get_List_tail<List<Val>> l@3@00)))))
(assert (or (not (= (List_tag<Int> l@3@00) 1)) (= (List_tag<Int> l@3@00) 1)))
(assert (=
  result@4@00
  (ite
    (= (List_tag<Int> l@3@00) 1)
    0
    (+ 1 (len $Snap.unit (get_List_tail<List<Val>> l@3@00))))))
; [eval] result >= 0
(push) ; 2
(assert (not (>= result@4@00 0)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (>= result@4@00 0))
(pop) ; 1
(assert (forall ((s@$ $Snap) (l@3@00 List<Val>)) (!
  (=>
    (len%precondition s@$ l@3@00)
    (=
      (len s@$ l@3@00)
      (ite
        (= (List_tag<Int> l@3@00) 1)
        0
        (+ 1 (len%limited $Snap.unit (get_List_tail<List<Val>> l@3@00))))))
  :pattern ((len s@$ l@3@00))
  :qid |quant-u-26346|)))
(assert (forall ((s@$ $Snap) (l@3@00 List<Val>)) (!
  (=>
    (len%precondition s@$ l@3@00)
    (ite
      (= (List_tag<Int> l@3@00) 1)
      true
      (len%precondition $Snap.unit (get_List_tail<List<Val>> l@3@00))))
  :pattern ((len s@$ l@3@00))
  :qid |quant-u-26347|)))
; ---------- FUNCTION len2----------
(declare-fun l@5@00 () List<Val>)
(declare-fun result@6@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(declare-const $t@11@00 $Snap)
(assert (= $t@11@00 $Snap.unit))
; [eval] result >= 0
(assert (>= result@6@00 0))
(pop) ; 1
(assert (forall ((s@$ $Snap) (l@5@00 List<Val>)) (!
  (= (len2%limited s@$ l@5@00) (len2 s@$ l@5@00))
  :pattern ((len2 s@$ l@5@00))
  :qid |quant-u-26336|)))
(assert (forall ((s@$ $Snap) (l@5@00 List<Val>)) (!
  (len2%stateless l@5@00)
  :pattern ((len2%limited s@$ l@5@00))
  :qid |quant-u-26337|)))
(assert (forall ((s@$ $Snap) (l@5@00 List<Val>)) (!
  (let ((result@6@00 (len2%limited s@$ l@5@00))) (=>
    (len2%precondition s@$ l@5@00)
    (>= result@6@00 0)))
  :pattern ((len2%limited s@$ l@5@00))
  :qid |quant-u-26348|)))
(assert (forall ((s@$ $Snap) (l@5@00 List<Val>)) (!
  (let ((result@6@00 (len2%limited s@$ l@5@00))) true)
  :pattern ((len2%limited s@$ l@5@00))
  :qid |quant-u-26349|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] ((List_tag(l): Int) == 1 ? 0 : ((List_tag((get_List_tail(l): List[Val])): Int) == 1 ? 1 : 2 + len2((get_List_tail((get_List_tail(l): List[Val])): List[Val]))))
; [eval] (List_tag(l): Int) == 1
; [eval] (List_tag(l): Int)
(set-option :timeout 0)
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= (List_tag<Int> l@5@00) 1))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= (List_tag<Int> l@5@00) 1)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1 | List_tag[Int](l@5@00) == 1 | live]
; [else-branch: 1 | List_tag[Int](l@5@00) != 1 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 1 | List_tag[Int](l@5@00) == 1]
(assert (= (List_tag<Int> l@5@00) 1))
(pop) ; 3
(push) ; 3
; [else-branch: 1 | List_tag[Int](l@5@00) != 1]
(assert (not (= (List_tag<Int> l@5@00) 1)))
; [eval] ((List_tag((get_List_tail(l): List[Val])): Int) == 1 ? 1 : 2 + len2((get_List_tail((get_List_tail(l): List[Val])): List[Val])))
; [eval] (List_tag((get_List_tail(l): List[Val])): Int) == 1
; [eval] (List_tag((get_List_tail(l): List[Val])): Int)
; [eval] (get_List_tail(l): List[Val])
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= (List_tag<Int> (get_List_tail<List<Val>> l@5@00)) 1))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (List_tag<Int> (get_List_tail<List<Val>> l@5@00)) 1)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 2 | List_tag[Int](get_List_tail[List[Val]](l@5@00)) == 1 | live]
; [else-branch: 2 | List_tag[Int](get_List_tail[List[Val]](l@5@00)) != 1 | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 2 | List_tag[Int](get_List_tail[List[Val]](l@5@00)) == 1]
(assert (= (List_tag<Int> (get_List_tail<List<Val>> l@5@00)) 1))
(pop) ; 5
(push) ; 5
; [else-branch: 2 | List_tag[Int](get_List_tail[List[Val]](l@5@00)) != 1]
(assert (not (= (List_tag<Int> (get_List_tail<List<Val>> l@5@00)) 1)))
; [eval] 2 + len2((get_List_tail((get_List_tail(l): List[Val])): List[Val]))
; [eval] len2((get_List_tail((get_List_tail(l): List[Val])): List[Val]))
; [eval] (get_List_tail((get_List_tail(l): List[Val])): List[Val])
; [eval] (get_List_tail(l): List[Val])
(push) ; 6
(assert (len2%precondition $Snap.unit (get_List_tail<List<Val>> (get_List_tail<List<Val>> l@5@00))))
(pop) ; 6
; Joined path conditions
(assert (len2%precondition $Snap.unit (get_List_tail<List<Val>> (get_List_tail<List<Val>> l@5@00))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (not (= (List_tag<Int> (get_List_tail<List<Val>> l@5@00)) 1))
  (and
    (not (= (List_tag<Int> (get_List_tail<List<Val>> l@5@00)) 1))
    (len2%precondition $Snap.unit (get_List_tail<List<Val>> (get_List_tail<List<Val>> l@5@00))))))
(assert (or
  (not (= (List_tag<Int> (get_List_tail<List<Val>> l@5@00)) 1))
  (= (List_tag<Int> (get_List_tail<List<Val>> l@5@00)) 1)))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=>
  (not (= (List_tag<Int> l@5@00) 1))
  (and
    (not (= (List_tag<Int> l@5@00) 1))
    (=>
      (not (= (List_tag<Int> (get_List_tail<List<Val>> l@5@00)) 1))
      (and
        (not (= (List_tag<Int> (get_List_tail<List<Val>> l@5@00)) 1))
        (len2%precondition $Snap.unit (get_List_tail<List<Val>> (get_List_tail<List<Val>> l@5@00)))))
    (or
      (not (= (List_tag<Int> (get_List_tail<List<Val>> l@5@00)) 1))
      (= (List_tag<Int> (get_List_tail<List<Val>> l@5@00)) 1)))))
(assert (or (not (= (List_tag<Int> l@5@00) 1)) (= (List_tag<Int> l@5@00) 1)))
(assert (=
  result@6@00
  (ite
    (= (List_tag<Int> l@5@00) 1)
    0
    (ite
      (= (List_tag<Int> (get_List_tail<List<Val>> l@5@00)) 1)
      1
      (+
        2
        (len2 $Snap.unit (get_List_tail<List<Val>> (get_List_tail<List<Val>> l@5@00))))))))
; [eval] result >= 0
(push) ; 2
(assert (not (>= result@6@00 0)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (>= result@6@00 0))
(pop) ; 1
(assert (forall ((s@$ $Snap) (l@5@00 List<Val>)) (!
  (=>
    (len2%precondition s@$ l@5@00)
    (=
      (len2 s@$ l@5@00)
      (ite
        (= (List_tag<Int> l@5@00) 1)
        0
        (ite
          (= (List_tag<Int> (get_List_tail<List<Val>> l@5@00)) 1)
          1
          (+
            2
            (len2%limited $Snap.unit (get_List_tail<List<Val>> (get_List_tail<List<Val>> l@5@00))))))))
  :pattern ((len2 s@$ l@5@00))
  :qid |quant-u-26350|)))
(assert (forall ((s@$ $Snap) (l@5@00 List<Val>)) (!
  (=>
    (len2%precondition s@$ l@5@00)
    (ite
      (= (List_tag<Int> l@5@00) 1)
      true
      (ite
        (= (List_tag<Int> (get_List_tail<List<Val>> l@5@00)) 1)
        true
        (len2%precondition $Snap.unit (get_List_tail<List<Val>> (get_List_tail<List<Val>> l@5@00))))))
  :pattern ((len2 s@$ l@5@00))
  :qid |quant-u-26351|)))
; ---------- FUNCTION lenBad2----------
(declare-fun l@7@00 () List<Val>)
(declare-fun result@8@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(declare-const $t@12@00 $Snap)
(assert (= $t@12@00 $Snap.unit))
; [eval] result >= 0
(assert (>= result@8@00 0))
(pop) ; 1
(assert (forall ((s@$ $Snap) (l@7@00 List<Val>)) (!
  (= (lenBad2%limited s@$ l@7@00) (lenBad2 s@$ l@7@00))
  :pattern ((lenBad2 s@$ l@7@00))
  :qid |quant-u-26338|)))
(assert (forall ((s@$ $Snap) (l@7@00 List<Val>)) (!
  (lenBad2%stateless l@7@00)
  :pattern ((lenBad2%limited s@$ l@7@00))
  :qid |quant-u-26339|)))
(assert (forall ((s@$ $Snap) (l@7@00 List<Val>)) (!
  (let ((result@8@00 (lenBad2%limited s@$ l@7@00))) (=>
    (lenBad2%precondition s@$ l@7@00)
    (>= result@8@00 0)))
  :pattern ((lenBad2%limited s@$ l@7@00))
  :qid |quant-u-26352|)))
(assert (forall ((s@$ $Snap) (l@7@00 List<Val>)) (!
  (let ((result@8@00 (lenBad2%limited s@$ l@7@00))) true)
  :pattern ((lenBad2%limited s@$ l@7@00))
  :qid |quant-u-26353|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] 1 + lenBad2(l)
; [eval] lenBad2(l)
(set-option :timeout 0)
(push) ; 2
(assert (lenBad2%precondition $Snap.unit l@7@00))
(pop) ; 2
; Joined path conditions
(assert (lenBad2%precondition $Snap.unit l@7@00))
(assert (= result@8@00 (+ 1 (lenBad2 $Snap.unit l@7@00))))
; [eval] result >= 0
(push) ; 2
(assert (not (>= result@8@00 0)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (>= result@8@00 0))
(pop) ; 1
(assert (forall ((s@$ $Snap) (l@7@00 List<Val>)) (!
  (=>
    (lenBad2%precondition s@$ l@7@00)
    (= (lenBad2 s@$ l@7@00) (+ 1 (lenBad2%limited $Snap.unit l@7@00))))
  :pattern ((lenBad2 s@$ l@7@00))
  :qid |quant-u-26354|)))
(assert (forall ((s@$ $Snap) (l@7@00 List<Val>)) (!
  (=> (lenBad2%precondition s@$ l@7@00) (lenBad2%precondition $Snap.unit l@7@00))
  :pattern ((lenBad2 s@$ l@7@00))
  :qid |quant-u-26355|)))
