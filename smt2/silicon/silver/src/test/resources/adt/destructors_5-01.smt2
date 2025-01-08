(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-08 21:27:15
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
(declare-sort List<Int> 0)
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
(declare-fun $SortWrappers.List<Int>To$Snap (List<Int>) $Snap)
(declare-fun $SortWrappers.$SnapToList<Int> ($Snap) List<Int>)
(assert (forall ((x List<Int>)) (!
    (= x ($SortWrappers.$SnapToList<Int>($SortWrappers.List<Int>To$Snap x)))
    :pattern (($SortWrappers.List<Int>To$Snap x))
    :qid |$Snap.$SnapToList<Int>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.List<Int>To$Snap($SortWrappers.$SnapToList<Int> x)))
    :pattern (($SortWrappers.$SnapToList<Int> x))
    :qid |$Snap.List<Int>To$SnapToList<Int>|
    )))
; ////////// Symbols
(declare-const Nil<List<Int>> List<Int>)
(declare-fun Cons<List<Int>> (Int List<Int>) List<Int>)
(declare-fun get_List_value<Int> (List<Int>) Int)
(declare-fun get_List_tail<List<Int>> (List<Int>) List<Int>)
(declare-fun List_tag<Int> (List<Int>) Int)
; Declaring symbols related to program functions (from program analysis)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
(assert (forall ((value Int) (tail List<Int>)) (!
  (= value (get_List_value<Int> (Cons<List<Int>> value tail)))
  :pattern ((Cons<List<Int>> value tail))
  )))
(assert (forall ((value Int) (tail List<Int>)) (!
  (= tail (get_List_tail<List<Int>> (Cons<List<Int>> value tail)))
  :pattern ((Cons<List<Int>> value tail))
  )))
(assert (= (List_tag<Int> (as Nil<List<Int>>  List<Int>)) 1))
(assert (forall ((value Int) (tail List<Int>)) (!
  (= (List_tag<Int> (Cons<List<Int>> value tail)) 0)
  :pattern ((Cons<List<Int>> value tail))
  )))
(assert (forall ((t List<Int>)) (!
  (or
    (= t (as Nil<List<Int>>  List<Int>))
    (= t (Cons<List<Int>> (get_List_value<Int> t) (get_List_tail<List<Int>> t))))
  :pattern ((List_tag<Int> t))
  :pattern ((get_List_value<Int> t))
  :pattern ((get_List_tail<List<Int>> t))
  )))
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ------------------------------------------------------------
; Begin function- and predicate-related preamble
; Declaring symbols related to program functions (from verification)
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- destructors_5a ----------
(set-option :timeout 0)
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; assert (get_List_value((Nil(): List[Int])): Int) == 1
; [eval] (get_List_value((Nil(): List[Int])): Int) == 1
; [eval] (get_List_value((Nil(): List[Int])): Int)
; [eval] (Nil(): List[Int])
(push) ; 3
(assert (not (= (get_List_value<Int> (as Nil<List<Int>>  List<Int>)) 1)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (get_List_value((Nil(): List[Int])): Int) == 1
; [eval] (get_List_value((Nil(): List[Int])): Int)
; [eval] (Nil(): List[Int])
(set-option :timeout 0)
(push) ; 3
(assert (not (= (get_List_value<Int> (as Nil<List<Int>>  List<Int>)) 1)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (get_List_value((Nil(): List[Int])): Int) == 1
; [eval] (get_List_value((Nil(): List[Int])): Int)
; [eval] (Nil(): List[Int])
(set-option :timeout 0)
(push) ; 3
(assert (not (= (get_List_value<Int> (as Nil<List<Int>>  List<Int>)) 1)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (get_List_value((Nil(): List[Int])): Int) == 1
; [eval] (get_List_value((Nil(): List[Int])): Int)
; [eval] (Nil(): List[Int])
(set-option :timeout 0)
(push) ; 3
(assert (not (= (get_List_value<Int> (as Nil<List<Int>>  List<Int>)) 1)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1
; ---------- destructors_5b ----------
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; assert (get_List_value((Cons(1, (Nil(): List[Int])): List[Int])): Int) == 2
; [eval] (get_List_value((Cons(1, (Nil(): List[Int])): List[Int])): Int) == 2
; [eval] (get_List_value((Cons(1, (Nil(): List[Int])): List[Int])): Int)
; [eval] (Cons(1, (Nil(): List[Int])): List[Int])
; [eval] (Nil(): List[Int])
(push) ; 3
(assert (not (= (get_List_value<Int> (Cons<List<Int>> 1 (as Nil<List<Int>>  List<Int>))) 2)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (get_List_value((Cons(1, (Nil(): List[Int])): List[Int])): Int) == 2
; [eval] (get_List_value((Cons(1, (Nil(): List[Int])): List[Int])): Int)
; [eval] (Cons(1, (Nil(): List[Int])): List[Int])
; [eval] (Nil(): List[Int])
(set-option :timeout 0)
(push) ; 3
(assert (not (= (get_List_value<Int> (Cons<List<Int>> 1 (as Nil<List<Int>>  List<Int>))) 2)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (get_List_value((Cons(1, (Nil(): List[Int])): List[Int])): Int) == 2
; [eval] (get_List_value((Cons(1, (Nil(): List[Int])): List[Int])): Int)
; [eval] (Cons(1, (Nil(): List[Int])): List[Int])
; [eval] (Nil(): List[Int])
(set-option :timeout 0)
(push) ; 3
(assert (not (= (get_List_value<Int> (Cons<List<Int>> 1 (as Nil<List<Int>>  List<Int>))) 2)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (get_List_value((Cons(1, (Nil(): List[Int])): List[Int])): Int) == 2
; [eval] (get_List_value((Cons(1, (Nil(): List[Int])): List[Int])): Int)
; [eval] (Cons(1, (Nil(): List[Int])): List[Int])
; [eval] (Nil(): List[Int])
(set-option :timeout 0)
(push) ; 3
(assert (not (= (get_List_value<Int> (Cons<List<Int>> 1 (as Nil<List<Int>>  List<Int>))) 2)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1
; ---------- destructors_5c ----------
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; assert (get_List_tail((Cons(1, (Cons(1, (Nil(): List[Int])): List[Int])): List[Int])): List[Int]) ==
;   (Nil(): List[Int])
; [eval] (get_List_tail((Cons(1, (Cons(1, (Nil(): List[Int])): List[Int])): List[Int])): List[Int]) == (Nil(): List[Int])
; [eval] (get_List_tail((Cons(1, (Cons(1, (Nil(): List[Int])): List[Int])): List[Int])): List[Int])
; [eval] (Cons(1, (Cons(1, (Nil(): List[Int])): List[Int])): List[Int])
; [eval] (Cons(1, (Nil(): List[Int])): List[Int])
; [eval] (Nil(): List[Int])
; [eval] (Nil(): List[Int])
(push) ; 3
(assert (not (=
  (get_List_tail<List<Int>> (Cons<List<Int>> 1 (Cons<List<Int>> 1 (as Nil<List<Int>>  List<Int>))))
  (as Nil<List<Int>>  List<Int>))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (get_List_tail((Cons(1, (Cons(1, (Nil(): List[Int])): List[Int])): List[Int])): List[Int]) == (Nil(): List[Int])
; [eval] (get_List_tail((Cons(1, (Cons(1, (Nil(): List[Int])): List[Int])): List[Int])): List[Int])
; [eval] (Cons(1, (Cons(1, (Nil(): List[Int])): List[Int])): List[Int])
; [eval] (Cons(1, (Nil(): List[Int])): List[Int])
; [eval] (Nil(): List[Int])
; [eval] (Nil(): List[Int])
(set-option :timeout 0)
(push) ; 3
(assert (not (=
  (get_List_tail<List<Int>> (Cons<List<Int>> 1 (Cons<List<Int>> 1 (as Nil<List<Int>>  List<Int>))))
  (as Nil<List<Int>>  List<Int>))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (get_List_tail((Cons(1, (Cons(1, (Nil(): List[Int])): List[Int])): List[Int])): List[Int]) == (Nil(): List[Int])
; [eval] (get_List_tail((Cons(1, (Cons(1, (Nil(): List[Int])): List[Int])): List[Int])): List[Int])
; [eval] (Cons(1, (Cons(1, (Nil(): List[Int])): List[Int])): List[Int])
; [eval] (Cons(1, (Nil(): List[Int])): List[Int])
; [eval] (Nil(): List[Int])
; [eval] (Nil(): List[Int])
(set-option :timeout 0)
(push) ; 3
(assert (not (=
  (get_List_tail<List<Int>> (Cons<List<Int>> 1 (Cons<List<Int>> 1 (as Nil<List<Int>>  List<Int>))))
  (as Nil<List<Int>>  List<Int>))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (get_List_tail((Cons(1, (Cons(1, (Nil(): List[Int])): List[Int])): List[Int])): List[Int]) == (Nil(): List[Int])
; [eval] (get_List_tail((Cons(1, (Cons(1, (Nil(): List[Int])): List[Int])): List[Int])): List[Int])
; [eval] (Cons(1, (Cons(1, (Nil(): List[Int])): List[Int])): List[Int])
; [eval] (Cons(1, (Nil(): List[Int])): List[Int])
; [eval] (Nil(): List[Int])
; [eval] (Nil(): List[Int])
(set-option :timeout 0)
(push) ; 3
(assert (not (=
  (get_List_tail<List<Int>> (Cons<List<Int>> 1 (Cons<List<Int>> 1 (as Nil<List<Int>>  List<Int>))))
  (as Nil<List<Int>>  List<Int>))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1
