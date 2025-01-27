(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-27 03:00:06
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
(declare-sort Set<$Ref> 0)
(declare-sort Set<Int> 0)
(declare-sort Set<Set<$Ref>> 0)
(declare-sort Set<$Snap> 0)
(declare-sort $FVF<val> 0)
(declare-sort $FVF<next> 0)
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
(declare-fun $SortWrappers.Set<$Ref>To$Snap (Set<$Ref>) $Snap)
(declare-fun $SortWrappers.$SnapToSet<$Ref> ($Snap) Set<$Ref>)
(assert (forall ((x Set<$Ref>)) (!
    (= x ($SortWrappers.$SnapToSet<$Ref>($SortWrappers.Set<$Ref>To$Snap x)))
    :pattern (($SortWrappers.Set<$Ref>To$Snap x))
    :qid |$Snap.$SnapToSet<$Ref>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Set<$Ref>To$Snap($SortWrappers.$SnapToSet<$Ref> x)))
    :pattern (($SortWrappers.$SnapToSet<$Ref> x))
    :qid |$Snap.Set<$Ref>To$SnapToSet<$Ref>|
    )))
(declare-fun $SortWrappers.Set<Int>To$Snap (Set<Int>) $Snap)
(declare-fun $SortWrappers.$SnapToSet<Int> ($Snap) Set<Int>)
(assert (forall ((x Set<Int>)) (!
    (= x ($SortWrappers.$SnapToSet<Int>($SortWrappers.Set<Int>To$Snap x)))
    :pattern (($SortWrappers.Set<Int>To$Snap x))
    :qid |$Snap.$SnapToSet<Int>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Set<Int>To$Snap($SortWrappers.$SnapToSet<Int> x)))
    :pattern (($SortWrappers.$SnapToSet<Int> x))
    :qid |$Snap.Set<Int>To$SnapToSet<Int>|
    )))
(declare-fun $SortWrappers.Set<Set<$Ref>>To$Snap (Set<Set<$Ref>>) $Snap)
(declare-fun $SortWrappers.$SnapToSet<Set<$Ref>> ($Snap) Set<Set<$Ref>>)
(assert (forall ((x Set<Set<$Ref>>)) (!
    (= x ($SortWrappers.$SnapToSet<Set<$Ref>>($SortWrappers.Set<Set<$Ref>>To$Snap x)))
    :pattern (($SortWrappers.Set<Set<$Ref>>To$Snap x))
    :qid |$Snap.$SnapToSet<Set<$Ref>>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Set<Set<$Ref>>To$Snap($SortWrappers.$SnapToSet<Set<$Ref>> x)))
    :pattern (($SortWrappers.$SnapToSet<Set<$Ref>> x))
    :qid |$Snap.Set<Set<$Ref>>To$SnapToSet<Set<$Ref>>|
    )))
(declare-fun $SortWrappers.Set<$Snap>To$Snap (Set<$Snap>) $Snap)
(declare-fun $SortWrappers.$SnapToSet<$Snap> ($Snap) Set<$Snap>)
(assert (forall ((x Set<$Snap>)) (!
    (= x ($SortWrappers.$SnapToSet<$Snap>($SortWrappers.Set<$Snap>To$Snap x)))
    :pattern (($SortWrappers.Set<$Snap>To$Snap x))
    :qid |$Snap.$SnapToSet<$Snap>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Set<$Snap>To$Snap($SortWrappers.$SnapToSet<$Snap> x)))
    :pattern (($SortWrappers.$SnapToSet<$Snap> x))
    :qid |$Snap.Set<$Snap>To$SnapToSet<$Snap>|
    )))
; Declaring additional sort wrappers
(declare-fun $SortWrappers.$FVF<val>To$Snap ($FVF<val>) $Snap)
(declare-fun $SortWrappers.$SnapTo$FVF<val> ($Snap) $FVF<val>)
(assert (forall ((x $FVF<val>)) (!
    (= x ($SortWrappers.$SnapTo$FVF<val>($SortWrappers.$FVF<val>To$Snap x)))
    :pattern (($SortWrappers.$FVF<val>To$Snap x))
    :qid |$Snap.$SnapTo$FVF<val>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$FVF<val>To$Snap($SortWrappers.$SnapTo$FVF<val> x)))
    :pattern (($SortWrappers.$SnapTo$FVF<val> x))
    :qid |$Snap.$FVF<val>To$SnapTo$FVF<val>|
    )))
(declare-fun $SortWrappers.$FVF<next>To$Snap ($FVF<next>) $Snap)
(declare-fun $SortWrappers.$SnapTo$FVF<next> ($Snap) $FVF<next>)
(assert (forall ((x $FVF<next>)) (!
    (= x ($SortWrappers.$SnapTo$FVF<next>($SortWrappers.$FVF<next>To$Snap x)))
    :pattern (($SortWrappers.$FVF<next>To$Snap x))
    :qid |$Snap.$SnapTo$FVF<next>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$FVF<next>To$Snap($SortWrappers.$SnapTo$FVF<next> x)))
    :pattern (($SortWrappers.$SnapTo$FVF<next> x))
    :qid |$Snap.$FVF<next>To$SnapTo$FVF<next>|
    )))
; ////////// Symbols
(declare-fun Set_card (Set<$Ref>) Int)
(declare-const Set_empty Set<$Ref>)
(declare-fun Set_in ($Ref Set<$Ref>) Bool)
(declare-fun Set_singleton ($Ref) Set<$Ref>)
(declare-fun Set_unionone (Set<$Ref> $Ref) Set<$Ref>)
(declare-fun Set_union (Set<$Ref> Set<$Ref>) Set<$Ref>)
(declare-fun Set_intersection (Set<$Ref> Set<$Ref>) Set<$Ref>)
(declare-fun Set_difference (Set<$Ref> Set<$Ref>) Set<$Ref>)
(declare-fun Set_subset (Set<$Ref> Set<$Ref>) Bool)
(declare-fun Set_equal (Set<$Ref> Set<$Ref>) Bool)
(declare-fun Set_skolem_diff (Set<$Ref> Set<$Ref>) $Ref)
(declare-fun Set_card (Set<Int>) Int)
(declare-const Set_empty Set<Int>)
(declare-fun Set_in (Int Set<Int>) Bool)
(declare-fun Set_singleton (Int) Set<Int>)
(declare-fun Set_unionone (Set<Int> Int) Set<Int>)
(declare-fun Set_union (Set<Int> Set<Int>) Set<Int>)
(declare-fun Set_intersection (Set<Int> Set<Int>) Set<Int>)
(declare-fun Set_difference (Set<Int> Set<Int>) Set<Int>)
(declare-fun Set_subset (Set<Int> Set<Int>) Bool)
(declare-fun Set_equal (Set<Int> Set<Int>) Bool)
(declare-fun Set_skolem_diff (Set<Int> Set<Int>) Int)
(declare-fun Set_card (Set<Set<$Ref>>) Int)
(declare-const Set_empty Set<Set<$Ref>>)
(declare-fun Set_in (Set<$Ref> Set<Set<$Ref>>) Bool)
(declare-fun Set_singleton (Set<$Ref>) Set<Set<$Ref>>)
(declare-fun Set_unionone (Set<Set<$Ref>> Set<$Ref>) Set<Set<$Ref>>)
(declare-fun Set_union (Set<Set<$Ref>> Set<Set<$Ref>>) Set<Set<$Ref>>)
(declare-fun Set_intersection (Set<Set<$Ref>> Set<Set<$Ref>>) Set<Set<$Ref>>)
(declare-fun Set_difference (Set<Set<$Ref>> Set<Set<$Ref>>) Set<Set<$Ref>>)
(declare-fun Set_subset (Set<Set<$Ref>> Set<Set<$Ref>>) Bool)
(declare-fun Set_equal (Set<Set<$Ref>> Set<Set<$Ref>>) Bool)
(declare-fun Set_skolem_diff (Set<Set<$Ref>> Set<Set<$Ref>>) Set<$Ref>)
(declare-fun Set_card (Set<$Snap>) Int)
(declare-const Set_empty Set<$Snap>)
(declare-fun Set_in ($Snap Set<$Snap>) Bool)
(declare-fun Set_singleton ($Snap) Set<$Snap>)
(declare-fun Set_unionone (Set<$Snap> $Snap) Set<$Snap>)
(declare-fun Set_union (Set<$Snap> Set<$Snap>) Set<$Snap>)
(declare-fun Set_intersection (Set<$Snap> Set<$Snap>) Set<$Snap>)
(declare-fun Set_difference (Set<$Snap> Set<$Snap>) Set<$Snap>)
(declare-fun Set_subset (Set<$Snap> Set<$Snap>) Bool)
(declare-fun Set_equal (Set<$Snap> Set<$Snap>) Bool)
(declare-fun Set_skolem_diff (Set<$Snap> Set<$Snap>) $Snap)
; /field_value_functions_declarations.smt2 [val: Int]
(declare-fun $FVF.domain_val ($FVF<val>) Set<$Ref>)
(declare-fun $FVF.lookup_val ($FVF<val> $Ref) Int)
(declare-fun $FVF.after_val ($FVF<val> $FVF<val>) Bool)
(declare-fun $FVF.loc_val (Int $Ref) Bool)
(declare-fun $FVF.perm_val ($FPM $Ref) $Perm)
(declare-const $fvfTOP_val $FVF<val>)
; /field_value_functions_declarations.smt2 [next: Ref]
(declare-fun $FVF.domain_next ($FVF<next>) Set<$Ref>)
(declare-fun $FVF.lookup_next ($FVF<next> $Ref) $Ref)
(declare-fun $FVF.after_next ($FVF<next> $FVF<next>) Bool)
(declare-fun $FVF.loc_next ($Ref $Ref) Bool)
(declare-fun $FVF.perm_next ($FPM $Ref) $Perm)
(declare-const $fvfTOP_next $FVF<next>)
; Declaring symbols related to program functions (from program analysis)
(declare-fun length ($Snap $Ref) Int)
(declare-fun length%limited ($Snap $Ref) Int)
(declare-fun length%stateless ($Ref) Bool)
(declare-fun length%precondition ($Snap $Ref) Bool)
(declare-fun set ($Snap) Set<$Ref>)
(declare-fun set%limited ($Snap) Set<$Ref>)
(declare-const set%stateless Bool)
(declare-fun set%precondition ($Snap) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun List%trigger ($Snap $Ref) Bool)
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
(assert (forall ((s Set<$Ref>)) (!
  (<= 0 (Set_card s))
  :pattern ((Set_card s))
  )))
(assert (forall ((o $Ref)) (!
  (not (Set_in o (as Set_empty  Set<$Ref>)))
  :pattern ((Set_in o (as Set_empty  Set<$Ref>)))
  )))
(assert (forall ((s Set<$Ref>)) (!
  (and
    (=> (= (Set_card s) 0) (= s (as Set_empty  Set<$Ref>)))
    (=> (not (= (Set_card s) 0)) (exists ((x $Ref))  (Set_in x s))))
  :pattern ((Set_card s))
  )))
(assert (forall ((r $Ref)) (!
  (Set_in r (Set_singleton r))
  :pattern ((Set_singleton r))
  )))
(assert (forall ((r $Ref) (o $Ref)) (!
  (= (Set_in o (Set_singleton r)) (= r o))
  :pattern ((Set_in o (Set_singleton r)))
  )))
(assert (forall ((r $Ref)) (!
  (= (Set_card (Set_singleton r)) 1)
  :pattern ((Set_card (Set_singleton r)))
  )))
(assert (forall ((a Set<$Ref>) (x $Ref) (o $Ref)) (!
  (= (Set_in o (Set_unionone a x)) (or (= o x) (Set_in o a)))
  :pattern ((Set_in o (Set_unionone a x)))
  )))
(assert (forall ((a Set<$Ref>) (x $Ref)) (!
  (Set_in x (Set_unionone a x))
  :pattern ((Set_unionone a x))
  )))
(assert (forall ((a Set<$Ref>) (x $Ref) (y $Ref)) (!
  (=> (Set_in y a) (Set_in y (Set_unionone a x)))
  :pattern ((Set_unionone a x) (Set_in y a))
  )))
(assert (forall ((a Set<$Ref>) (x $Ref)) (!
  (=> (Set_in x a) (= (Set_card (Set_unionone a x)) (Set_card a)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<$Ref>) (x $Ref)) (!
  (=> (not (Set_in x a)) (= (Set_card (Set_unionone a x)) (+ (Set_card a) 1)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>) (o $Ref)) (!
  (= (Set_in o (Set_union a b)) (or (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_union a b)))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>) (y $Ref)) (!
  (=> (Set_in y a) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y a))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>) (y $Ref)) (!
  (=> (Set_in y b) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y b))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>) (o $Ref)) (!
  (= (Set_in o (Set_intersection a b)) (and (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_intersection a b)))
  :pattern ((Set_intersection a b) (Set_in o a))
  :pattern ((Set_intersection a b) (Set_in o b))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (= (Set_union (Set_union a b) b) (Set_union a b))
  :pattern ((Set_union (Set_union a b) b))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (= (Set_union a (Set_union a b)) (Set_union a b))
  :pattern ((Set_union a (Set_union a b)))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (= (Set_intersection (Set_intersection a b) b) (Set_intersection a b))
  :pattern ((Set_intersection (Set_intersection a b) b))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (= (Set_intersection a (Set_intersection a b)) (Set_intersection a b))
  :pattern ((Set_intersection a (Set_intersection a b)))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (=
    (+ (Set_card (Set_union a b)) (Set_card (Set_intersection a b)))
    (+ (Set_card a) (Set_card b)))
  :pattern ((Set_card (Set_union a b)))
  :pattern ((Set_card (Set_intersection a b)))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>) (o $Ref)) (!
  (= (Set_in o (Set_difference a b)) (and (Set_in o a) (not (Set_in o b))))
  :pattern ((Set_in o (Set_difference a b)))
  :pattern ((Set_difference a b) (Set_in o a))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>) (y $Ref)) (!
  (=> (Set_in y b) (not (Set_in y (Set_difference a b))))
  :pattern ((Set_difference a b) (Set_in y b))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (and
    (=
      (+
        (+ (Set_card (Set_difference a b)) (Set_card (Set_difference b a)))
        (Set_card (Set_intersection a b)))
      (Set_card (Set_union a b)))
    (=
      (Set_card (Set_difference a b))
      (- (Set_card a) (Set_card (Set_intersection a b)))))
  :pattern ((Set_card (Set_difference a b)))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (=
    (Set_subset a b)
    (forall ((o $Ref)) (!
      (=> (Set_in o a) (Set_in o b))
      :pattern ((Set_in o a))
      :pattern ((Set_in o b))
      )))
  :pattern ((Set_subset a b))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (or
    (and (Set_equal a b) (= a b))
    (and
      (not (Set_equal a b))
      (and
        (not (= a b))
        (and
          (= (Set_skolem_diff a b) (Set_skolem_diff b a))
          (not
            (= (Set_in (Set_skolem_diff a b) a) (Set_in (Set_skolem_diff a b) b)))))))
  :pattern ((Set_equal a b))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (=> (Set_equal a b) (= a b))
  :pattern ((Set_equal a b))
  )))
(assert (forall ((s Set<Int>)) (!
  (<= 0 (Set_card s))
  :pattern ((Set_card s))
  )))
(assert (forall ((o Int)) (!
  (not (Set_in o (as Set_empty  Set<Int>)))
  :pattern ((Set_in o (as Set_empty  Set<Int>)))
  )))
(assert (forall ((s Set<Int>)) (!
  (and
    (=> (= (Set_card s) 0) (= s (as Set_empty  Set<Int>)))
    (=> (not (= (Set_card s) 0)) (exists ((x Int))  (Set_in x s))))
  :pattern ((Set_card s))
  )))
(assert (forall ((r Int)) (!
  (Set_in r (Set_singleton r))
  :pattern ((Set_singleton r))
  )))
(assert (forall ((r Int) (o Int)) (!
  (= (Set_in o (Set_singleton r)) (= r o))
  :pattern ((Set_in o (Set_singleton r)))
  )))
(assert (forall ((r Int)) (!
  (= (Set_card (Set_singleton r)) 1)
  :pattern ((Set_card (Set_singleton r)))
  )))
(assert (forall ((a Set<Int>) (x Int) (o Int)) (!
  (= (Set_in o (Set_unionone a x)) (or (= o x) (Set_in o a)))
  :pattern ((Set_in o (Set_unionone a x)))
  )))
(assert (forall ((a Set<Int>) (x Int)) (!
  (Set_in x (Set_unionone a x))
  :pattern ((Set_unionone a x))
  )))
(assert (forall ((a Set<Int>) (x Int) (y Int)) (!
  (=> (Set_in y a) (Set_in y (Set_unionone a x)))
  :pattern ((Set_unionone a x) (Set_in y a))
  )))
(assert (forall ((a Set<Int>) (x Int)) (!
  (=> (Set_in x a) (= (Set_card (Set_unionone a x)) (Set_card a)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<Int>) (x Int)) (!
  (=> (not (Set_in x a)) (= (Set_card (Set_unionone a x)) (+ (Set_card a) 1)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>) (o Int)) (!
  (= (Set_in o (Set_union a b)) (or (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_union a b)))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>) (y Int)) (!
  (=> (Set_in y a) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y a))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>) (y Int)) (!
  (=> (Set_in y b) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y b))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>) (o Int)) (!
  (= (Set_in o (Set_intersection a b)) (and (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_intersection a b)))
  :pattern ((Set_intersection a b) (Set_in o a))
  :pattern ((Set_intersection a b) (Set_in o b))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (= (Set_union (Set_union a b) b) (Set_union a b))
  :pattern ((Set_union (Set_union a b) b))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (= (Set_union a (Set_union a b)) (Set_union a b))
  :pattern ((Set_union a (Set_union a b)))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (= (Set_intersection (Set_intersection a b) b) (Set_intersection a b))
  :pattern ((Set_intersection (Set_intersection a b) b))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (= (Set_intersection a (Set_intersection a b)) (Set_intersection a b))
  :pattern ((Set_intersection a (Set_intersection a b)))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (=
    (+ (Set_card (Set_union a b)) (Set_card (Set_intersection a b)))
    (+ (Set_card a) (Set_card b)))
  :pattern ((Set_card (Set_union a b)))
  :pattern ((Set_card (Set_intersection a b)))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>) (o Int)) (!
  (= (Set_in o (Set_difference a b)) (and (Set_in o a) (not (Set_in o b))))
  :pattern ((Set_in o (Set_difference a b)))
  :pattern ((Set_difference a b) (Set_in o a))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>) (y Int)) (!
  (=> (Set_in y b) (not (Set_in y (Set_difference a b))))
  :pattern ((Set_difference a b) (Set_in y b))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (and
    (=
      (+
        (+ (Set_card (Set_difference a b)) (Set_card (Set_difference b a)))
        (Set_card (Set_intersection a b)))
      (Set_card (Set_union a b)))
    (=
      (Set_card (Set_difference a b))
      (- (Set_card a) (Set_card (Set_intersection a b)))))
  :pattern ((Set_card (Set_difference a b)))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (=
    (Set_subset a b)
    (forall ((o Int)) (!
      (=> (Set_in o a) (Set_in o b))
      :pattern ((Set_in o a))
      :pattern ((Set_in o b))
      )))
  :pattern ((Set_subset a b))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (or
    (and (Set_equal a b) (= a b))
    (and
      (not (Set_equal a b))
      (and
        (not (= a b))
        (and
          (= (Set_skolem_diff a b) (Set_skolem_diff b a))
          (not
            (= (Set_in (Set_skolem_diff a b) a) (Set_in (Set_skolem_diff a b) b)))))))
  :pattern ((Set_equal a b))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (=> (Set_equal a b) (= a b))
  :pattern ((Set_equal a b))
  )))
(assert (forall ((s Set<Set<$Ref>>)) (!
  (<= 0 (Set_card s))
  :pattern ((Set_card s))
  )))
(assert (forall ((o Set<$Ref>)) (!
  (not (Set_in o (as Set_empty  Set<Set<$Ref>>)))
  :pattern ((Set_in o (as Set_empty  Set<Set<$Ref>>)))
  )))
(assert (forall ((s Set<Set<$Ref>>)) (!
  (and
    (=> (= (Set_card s) 0) (= s (as Set_empty  Set<Set<$Ref>>)))
    (=> (not (= (Set_card s) 0)) (exists ((x Set<$Ref>))  (Set_in x s))))
  :pattern ((Set_card s))
  )))
(assert (forall ((r Set<$Ref>)) (!
  (Set_in r (Set_singleton r))
  :pattern ((Set_singleton r))
  )))
(assert (forall ((r Set<$Ref>) (o Set<$Ref>)) (!
  (= (Set_in o (Set_singleton r)) (= r o))
  :pattern ((Set_in o (Set_singleton r)))
  )))
(assert (forall ((r Set<$Ref>)) (!
  (= (Set_card (Set_singleton r)) 1)
  :pattern ((Set_card (Set_singleton r)))
  )))
(assert (forall ((a Set<Set<$Ref>>) (x Set<$Ref>) (o Set<$Ref>)) (!
  (= (Set_in o (Set_unionone a x)) (or (= o x) (Set_in o a)))
  :pattern ((Set_in o (Set_unionone a x)))
  )))
(assert (forall ((a Set<Set<$Ref>>) (x Set<$Ref>)) (!
  (Set_in x (Set_unionone a x))
  :pattern ((Set_unionone a x))
  )))
(assert (forall ((a Set<Set<$Ref>>) (x Set<$Ref>) (y Set<$Ref>)) (!
  (=> (Set_in y a) (Set_in y (Set_unionone a x)))
  :pattern ((Set_unionone a x) (Set_in y a))
  )))
(assert (forall ((a Set<Set<$Ref>>) (x Set<$Ref>)) (!
  (=> (Set_in x a) (= (Set_card (Set_unionone a x)) (Set_card a)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<Set<$Ref>>) (x Set<$Ref>)) (!
  (=> (not (Set_in x a)) (= (Set_card (Set_unionone a x)) (+ (Set_card a) 1)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<Set<$Ref>>) (b Set<Set<$Ref>>) (o Set<$Ref>)) (!
  (= (Set_in o (Set_union a b)) (or (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_union a b)))
  )))
(assert (forall ((a Set<Set<$Ref>>) (b Set<Set<$Ref>>) (y Set<$Ref>)) (!
  (=> (Set_in y a) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y a))
  )))
(assert (forall ((a Set<Set<$Ref>>) (b Set<Set<$Ref>>) (y Set<$Ref>)) (!
  (=> (Set_in y b) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y b))
  )))
(assert (forall ((a Set<Set<$Ref>>) (b Set<Set<$Ref>>) (o Set<$Ref>)) (!
  (= (Set_in o (Set_intersection a b)) (and (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_intersection a b)))
  :pattern ((Set_intersection a b) (Set_in o a))
  :pattern ((Set_intersection a b) (Set_in o b))
  )))
(assert (forall ((a Set<Set<$Ref>>) (b Set<Set<$Ref>>)) (!
  (= (Set_union (Set_union a b) b) (Set_union a b))
  :pattern ((Set_union (Set_union a b) b))
  )))
(assert (forall ((a Set<Set<$Ref>>) (b Set<Set<$Ref>>)) (!
  (= (Set_union a (Set_union a b)) (Set_union a b))
  :pattern ((Set_union a (Set_union a b)))
  )))
(assert (forall ((a Set<Set<$Ref>>) (b Set<Set<$Ref>>)) (!
  (= (Set_intersection (Set_intersection a b) b) (Set_intersection a b))
  :pattern ((Set_intersection (Set_intersection a b) b))
  )))
(assert (forall ((a Set<Set<$Ref>>) (b Set<Set<$Ref>>)) (!
  (= (Set_intersection a (Set_intersection a b)) (Set_intersection a b))
  :pattern ((Set_intersection a (Set_intersection a b)))
  )))
(assert (forall ((a Set<Set<$Ref>>) (b Set<Set<$Ref>>)) (!
  (=
    (+ (Set_card (Set_union a b)) (Set_card (Set_intersection a b)))
    (+ (Set_card a) (Set_card b)))
  :pattern ((Set_card (Set_union a b)))
  :pattern ((Set_card (Set_intersection a b)))
  )))
(assert (forall ((a Set<Set<$Ref>>) (b Set<Set<$Ref>>) (o Set<$Ref>)) (!
  (= (Set_in o (Set_difference a b)) (and (Set_in o a) (not (Set_in o b))))
  :pattern ((Set_in o (Set_difference a b)))
  :pattern ((Set_difference a b) (Set_in o a))
  )))
(assert (forall ((a Set<Set<$Ref>>) (b Set<Set<$Ref>>) (y Set<$Ref>)) (!
  (=> (Set_in y b) (not (Set_in y (Set_difference a b))))
  :pattern ((Set_difference a b) (Set_in y b))
  )))
(assert (forall ((a Set<Set<$Ref>>) (b Set<Set<$Ref>>)) (!
  (and
    (=
      (+
        (+ (Set_card (Set_difference a b)) (Set_card (Set_difference b a)))
        (Set_card (Set_intersection a b)))
      (Set_card (Set_union a b)))
    (=
      (Set_card (Set_difference a b))
      (- (Set_card a) (Set_card (Set_intersection a b)))))
  :pattern ((Set_card (Set_difference a b)))
  )))
(assert (forall ((a Set<Set<$Ref>>) (b Set<Set<$Ref>>)) (!
  (=
    (Set_subset a b)
    (forall ((o Set<$Ref>)) (!
      (=> (Set_in o a) (Set_in o b))
      :pattern ((Set_in o a))
      :pattern ((Set_in o b))
      )))
  :pattern ((Set_subset a b))
  )))
(assert (forall ((a Set<Set<$Ref>>) (b Set<Set<$Ref>>)) (!
  (or
    (and (Set_equal a b) (= a b))
    (and
      (not (Set_equal a b))
      (and
        (not (= a b))
        (and
          (= (Set_skolem_diff a b) (Set_skolem_diff b a))
          (not
            (= (Set_in (Set_skolem_diff a b) a) (Set_in (Set_skolem_diff a b) b)))))))
  :pattern ((Set_equal a b))
  )))
(assert (forall ((a Set<Set<$Ref>>) (b Set<Set<$Ref>>)) (!
  (=> (Set_equal a b) (= a b))
  :pattern ((Set_equal a b))
  )))
(assert (forall ((s Set<$Snap>)) (!
  (<= 0 (Set_card s))
  :pattern ((Set_card s))
  )))
(assert (forall ((o $Snap)) (!
  (not (Set_in o (as Set_empty  Set<$Snap>)))
  :pattern ((Set_in o (as Set_empty  Set<$Snap>)))
  )))
(assert (forall ((s Set<$Snap>)) (!
  (and
    (=> (= (Set_card s) 0) (= s (as Set_empty  Set<$Snap>)))
    (=> (not (= (Set_card s) 0)) (exists ((x $Snap))  (Set_in x s))))
  :pattern ((Set_card s))
  )))
(assert (forall ((r $Snap)) (!
  (Set_in r (Set_singleton r))
  :pattern ((Set_singleton r))
  )))
(assert (forall ((r $Snap) (o $Snap)) (!
  (= (Set_in o (Set_singleton r)) (= r o))
  :pattern ((Set_in o (Set_singleton r)))
  )))
(assert (forall ((r $Snap)) (!
  (= (Set_card (Set_singleton r)) 1)
  :pattern ((Set_card (Set_singleton r)))
  )))
(assert (forall ((a Set<$Snap>) (x $Snap) (o $Snap)) (!
  (= (Set_in o (Set_unionone a x)) (or (= o x) (Set_in o a)))
  :pattern ((Set_in o (Set_unionone a x)))
  )))
(assert (forall ((a Set<$Snap>) (x $Snap)) (!
  (Set_in x (Set_unionone a x))
  :pattern ((Set_unionone a x))
  )))
(assert (forall ((a Set<$Snap>) (x $Snap) (y $Snap)) (!
  (=> (Set_in y a) (Set_in y (Set_unionone a x)))
  :pattern ((Set_unionone a x) (Set_in y a))
  )))
(assert (forall ((a Set<$Snap>) (x $Snap)) (!
  (=> (Set_in x a) (= (Set_card (Set_unionone a x)) (Set_card a)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<$Snap>) (x $Snap)) (!
  (=> (not (Set_in x a)) (= (Set_card (Set_unionone a x)) (+ (Set_card a) 1)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>) (o $Snap)) (!
  (= (Set_in o (Set_union a b)) (or (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_union a b)))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>) (y $Snap)) (!
  (=> (Set_in y a) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y a))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>) (y $Snap)) (!
  (=> (Set_in y b) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y b))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>) (o $Snap)) (!
  (= (Set_in o (Set_intersection a b)) (and (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_intersection a b)))
  :pattern ((Set_intersection a b) (Set_in o a))
  :pattern ((Set_intersection a b) (Set_in o b))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (= (Set_union (Set_union a b) b) (Set_union a b))
  :pattern ((Set_union (Set_union a b) b))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (= (Set_union a (Set_union a b)) (Set_union a b))
  :pattern ((Set_union a (Set_union a b)))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (= (Set_intersection (Set_intersection a b) b) (Set_intersection a b))
  :pattern ((Set_intersection (Set_intersection a b) b))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (= (Set_intersection a (Set_intersection a b)) (Set_intersection a b))
  :pattern ((Set_intersection a (Set_intersection a b)))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (=
    (+ (Set_card (Set_union a b)) (Set_card (Set_intersection a b)))
    (+ (Set_card a) (Set_card b)))
  :pattern ((Set_card (Set_union a b)))
  :pattern ((Set_card (Set_intersection a b)))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>) (o $Snap)) (!
  (= (Set_in o (Set_difference a b)) (and (Set_in o a) (not (Set_in o b))))
  :pattern ((Set_in o (Set_difference a b)))
  :pattern ((Set_difference a b) (Set_in o a))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>) (y $Snap)) (!
  (=> (Set_in y b) (not (Set_in y (Set_difference a b))))
  :pattern ((Set_difference a b) (Set_in y b))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (and
    (=
      (+
        (+ (Set_card (Set_difference a b)) (Set_card (Set_difference b a)))
        (Set_card (Set_intersection a b)))
      (Set_card (Set_union a b)))
    (=
      (Set_card (Set_difference a b))
      (- (Set_card a) (Set_card (Set_intersection a b)))))
  :pattern ((Set_card (Set_difference a b)))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (=
    (Set_subset a b)
    (forall ((o $Snap)) (!
      (=> (Set_in o a) (Set_in o b))
      :pattern ((Set_in o a))
      :pattern ((Set_in o b))
      )))
  :pattern ((Set_subset a b))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (or
    (and (Set_equal a b) (= a b))
    (and
      (not (Set_equal a b))
      (and
        (not (= a b))
        (and
          (= (Set_skolem_diff a b) (Set_skolem_diff b a))
          (not
            (= (Set_in (Set_skolem_diff a b) a) (Set_in (Set_skolem_diff a b) b)))))))
  :pattern ((Set_equal a b))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (=> (Set_equal a b) (= a b))
  :pattern ((Set_equal a b))
  )))
; /field_value_functions_axioms.smt2 [val: Int]
(assert (forall ((vs $FVF<val>) (ws $FVF<val>)) (!
    (=>
      (and
        (Set_equal ($FVF.domain_val vs) ($FVF.domain_val ws))
        (forall ((x $Ref)) (!
          (=>
            (Set_in x ($FVF.domain_val vs))
            (= ($FVF.lookup_val vs x) ($FVF.lookup_val ws x)))
          :pattern (($FVF.lookup_val vs x) ($FVF.lookup_val ws x))
          :qid |qp.$FVF<val>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$FVF<val>To$Snap vs)
              ($SortWrappers.$FVF<val>To$Snap ws)
              )
    :qid |qp.$FVF<val>-eq-outer|
    )))
(assert (forall ((r $Ref) (pm $FPM)) (!
    ($Perm.isValidVar ($FVF.perm_val pm r))
    :pattern (($FVF.perm_val pm r)))))
(assert (forall ((r $Ref) (f Int)) (!
    (= ($FVF.loc_val f r) true)
    :pattern (($FVF.loc_val f r)))))
; /field_value_functions_axioms.smt2 [next: Ref]
(assert (forall ((vs $FVF<next>) (ws $FVF<next>)) (!
    (=>
      (and
        (Set_equal ($FVF.domain_next vs) ($FVF.domain_next ws))
        (forall ((x $Ref)) (!
          (=>
            (Set_in x ($FVF.domain_next vs))
            (= ($FVF.lookup_next vs x) ($FVF.lookup_next ws x)))
          :pattern (($FVF.lookup_next vs x) ($FVF.lookup_next ws x))
          :qid |qp.$FVF<next>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$FVF<next>To$Snap vs)
              ($SortWrappers.$FVF<next>To$Snap ws)
              )
    :qid |qp.$FVF<next>-eq-outer|
    )))
(assert (forall ((r $Ref) (pm $FPM)) (!
    ($Perm.isValidVar ($FVF.perm_next pm r))
    :pattern (($FVF.perm_next pm r)))))
(assert (forall ((r $Ref) (f $Ref)) (!
    (= ($FVF.loc_next f r) true)
    :pattern (($FVF.loc_next f r)))))
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ---------- FUNCTION length----------
(declare-fun this@0@00 () $Ref)
(declare-fun result@1@00 () Int)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap) (this@0@00 $Ref)) (!
  (= (length%limited s@$ this@0@00) (length s@$ this@0@00))
  :pattern ((length s@$ this@0@00))
  :qid |quant-u-11600|)))
(assert (forall ((s@$ $Snap) (this@0@00 $Ref)) (!
  (length%stateless this@0@00)
  :pattern ((length%limited s@$ this@0@00))
  :qid |quant-u-11601|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (unfolding acc(List(this), write) in |this.nodes|)
(set-option :timeout 0)
(push) ; 2
(assert (List%trigger s@$ this@0@00))
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (not (= this@0@00 $Ref.null)))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(declare-const r@3@00 $Ref)
(push) ; 3
; [eval] (r in this.nodes)
(assert (Set_in r@3@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$))))
(pop) ; 3
(declare-fun inv@4@00 ($Snap $Ref $Ref) $Ref)
(declare-fun img@5@00 ($Snap $Ref $Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((r1@3@00 $Ref) (r2@3@00 $Ref)) (!
  (=>
    (and
      (Set_in r1@3@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$)))
      (Set_in r2@3@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$)))
      (= r1@3@00 r2@3@00))
    (= r1@3@00 r2@3@00))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@3@00 $Ref)) (!
  (=>
    (Set_in r@3@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$)))
    (and
      (= (inv@4@00 s@$ this@0@00 r@3@00) r@3@00)
      (img@5@00 s@$ this@0@00 r@3@00)))
  :pattern ((Set_in r@3@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$))))
  :pattern ((inv@4@00 s@$ this@0@00 r@3@00))
  :pattern ((img@5@00 s@$ this@0@00 r@3@00))
  :qid |quant-u-11605|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@5@00 s@$ this@0@00 r)
      (Set_in (inv@4@00 s@$ this@0@00 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$))))
    (= (inv@4@00 s@$ this@0@00 r) r))
  :pattern ((inv@4@00 s@$ this@0@00 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Permission implies non-null receiver
(assert (forall ((r@3@00 $Ref)) (!
  (=>
    (Set_in r@3@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$)))
    (not (= r@3@00 $Ref.null)))
  :pattern ((Set_in r@3@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$))))
  :pattern ((inv@4@00 s@$ this@0@00 r@3@00))
  :pattern ((img@5@00 s@$ this@0@00 r@3@00))
  :qid |val-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second s@$)))
    ($Snap.second ($Snap.second ($Snap.second s@$))))))
(declare-const r@6@00 $Ref)
(push) ; 3
; [eval] (r in this.nodes)
(assert (Set_in r@6@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$))))
(pop) ; 3
(declare-fun inv@7@00 ($Snap $Ref $Ref) $Ref)
(declare-fun img@8@00 ($Snap $Ref $Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((r1@6@00 $Ref) (r2@6@00 $Ref)) (!
  (=>
    (and
      (Set_in r1@6@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$)))
      (Set_in r2@6@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$)))
      (= r1@6@00 r2@6@00))
    (= r1@6@00 r2@6@00))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@6@00 $Ref)) (!
  (=>
    (Set_in r@6@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$)))
    (and
      (= (inv@7@00 s@$ this@0@00 r@6@00) r@6@00)
      (img@8@00 s@$ this@0@00 r@6@00)))
  :pattern ((Set_in r@6@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$))))
  :pattern ((inv@7@00 s@$ this@0@00 r@6@00))
  :pattern ((img@8@00 s@$ this@0@00 r@6@00))
  :qid |quant-u-11607|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@8@00 s@$ this@0@00 r)
      (Set_in (inv@7@00 s@$ this@0@00 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$))))
    (= (inv@7@00 s@$ this@0@00 r) r))
  :pattern ((inv@7@00 s@$ this@0@00 r))
  :qid |next-fctOfInv|)))
; Permissions are non-negative
; Permission implies non-null receiver
(assert (forall ((r@6@00 $Ref)) (!
  (=>
    (Set_in r@6@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$)))
    (not (= r@6@00 $Ref.null)))
  :pattern ((Set_in r@6@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$))))
  :pattern ((inv@7@00 s@$ this@0@00 r@6@00))
  :pattern ((img@8@00 s@$ this@0@00 r@6@00))
  :qid |next-permImpliesNonNull|)))
(declare-fun sm@9@00 ($Snap $Ref) $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@8@00 s@$ this@0@00 r)
      (Set_in (inv@7@00 s@$ this@0@00 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$))))
    (=
      ($FVF.lookup_next (sm@9@00 s@$ this@0@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second s@$)))) r)))
  :pattern (($FVF.lookup_next (sm@9@00 s@$ this@0@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second s@$)))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second s@$)))) r) r)
  :pattern (($FVF.lookup_next (sm@9@00 s@$ this@0@00) r))
  :qid |qp.fvfResTrgDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@7@00 s@$ this@0@00 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$)))
    ($FVF.loc_next ($FVF.lookup_next (sm@9@00 s@$ this@0@00) r) r))
  :pattern ((inv@7@00 s@$ this@0@00 r))
  :qid |quant-u-11608|)))
(assert (= ($Snap.second ($Snap.second ($Snap.second s@$))) $Snap.unit))
; [eval] (forall r: Ref :: { r.next } (r in this.nodes) && r.next != null ==> (r.next in this.nodes))
(declare-const r@10@00 $Ref)
(push) ; 3
; [eval] (r in this.nodes) && r.next != null ==> (r.next in this.nodes)
; [eval] (r in this.nodes) && r.next != null
; [eval] (r in this.nodes)
(push) ; 4
; [then-branch: 0 | !(r@10@00 in First:(s@$)) | live]
; [else-branch: 0 | r@10@00 in First:(s@$) | live]
(push) ; 5
; [then-branch: 0 | !(r@10@00 in First:(s@$))]
(assert (not (Set_in r@10@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$)))))
(pop) ; 5
(push) ; 5
; [else-branch: 0 | r@10@00 in First:(s@$)]
(assert (Set_in r@10@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$))))
; [eval] r.next != null
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@8@00 s@$ this@0@00 r)
        (Set_in (inv@7@00 s@$ this@0@00 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$))))
      (=
        ($FVF.lookup_next (sm@9@00 s@$ this@0@00) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second s@$)))) r)))
    :pattern (($FVF.lookup_next (sm@9@00 s@$ this@0@00) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second s@$)))) r))
    :qid |qp.fvfValDef0|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second s@$)))) r) r)
    :pattern (($FVF.lookup_next (sm@9@00 s@$ this@0@00) r))
    :qid |qp.fvfResTrgDef1|))))
(assert ($FVF.loc_next ($FVF.lookup_next (sm@9@00 s@$ this@0@00) r@10@00) r@10@00))
(push) ; 6
(assert (not (and
  (img@8@00 s@$ this@0@00 r@10@00)
  (Set_in (inv@7@00 s@$ this@0@00 r@10@00) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@8@00 s@$ this@0@00 r)
      (Set_in (inv@7@00 s@$ this@0@00 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$))))
    (=
      ($FVF.lookup_next (sm@9@00 s@$ this@0@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second s@$)))) r)))
  :pattern (($FVF.lookup_next (sm@9@00 s@$ this@0@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second s@$)))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second s@$)))) r) r)
  :pattern (($FVF.lookup_next (sm@9@00 s@$ this@0@00) r))
  :qid |qp.fvfResTrgDef1|)))
(assert (=>
  (Set_in r@10@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$)))
  (and
    (Set_in r@10@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$)))
    ($FVF.loc_next ($FVF.lookup_next (sm@9@00 s@$ this@0@00) r@10@00) r@10@00))))
(assert (or
  (Set_in r@10@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$)))
  (not (Set_in r@10@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$))))))
(push) ; 4
; [then-branch: 1 | r@10@00 in First:(s@$) && Lookup(next, sm@9@00(s@$, this@0@00), r@10@00) != Null | live]
; [else-branch: 1 | !(r@10@00 in First:(s@$) && Lookup(next, sm@9@00(s@$, this@0@00), r@10@00) != Null) | live]
(push) ; 5
; [then-branch: 1 | r@10@00 in First:(s@$) && Lookup(next, sm@9@00(s@$, this@0@00), r@10@00) != Null]
(assert (and
  (Set_in r@10@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$)))
  (not (= ($FVF.lookup_next (sm@9@00 s@$ this@0@00) r@10@00) $Ref.null))))
; [eval] (r.next in this.nodes)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@8@00 s@$ this@0@00 r)
        (Set_in (inv@7@00 s@$ this@0@00 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$))))
      (=
        ($FVF.lookup_next (sm@9@00 s@$ this@0@00) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second s@$)))) r)))
    :pattern (($FVF.lookup_next (sm@9@00 s@$ this@0@00) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second s@$)))) r))
    :qid |qp.fvfValDef0|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second s@$)))) r) r)
    :pattern (($FVF.lookup_next (sm@9@00 s@$ this@0@00) r))
    :qid |qp.fvfResTrgDef1|))))
(assert ($FVF.loc_next ($FVF.lookup_next (sm@9@00 s@$ this@0@00) r@10@00) r@10@00))
(push) ; 6
(assert (not (and
  (img@8@00 s@$ this@0@00 r@10@00)
  (Set_in (inv@7@00 s@$ this@0@00 r@10@00) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 1 | !(r@10@00 in First:(s@$) && Lookup(next, sm@9@00(s@$, this@0@00), r@10@00) != Null)]
(assert (not
  (and
    (Set_in r@10@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$)))
    (not (= ($FVF.lookup_next (sm@9@00 s@$ this@0@00) r@10@00) $Ref.null)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@8@00 s@$ this@0@00 r)
      (Set_in (inv@7@00 s@$ this@0@00 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$))))
    (=
      ($FVF.lookup_next (sm@9@00 s@$ this@0@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second s@$)))) r)))
  :pattern (($FVF.lookup_next (sm@9@00 s@$ this@0@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second s@$)))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second s@$)))) r) r)
  :pattern (($FVF.lookup_next (sm@9@00 s@$ this@0@00) r))
  :qid |qp.fvfResTrgDef1|)))
(assert (=>
  (and
    (Set_in r@10@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$)))
    (not (= ($FVF.lookup_next (sm@9@00 s@$ this@0@00) r@10@00) $Ref.null)))
  (and
    (Set_in r@10@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$)))
    (not (= ($FVF.lookup_next (sm@9@00 s@$ this@0@00) r@10@00) $Ref.null))
    ($FVF.loc_next ($FVF.lookup_next (sm@9@00 s@$ this@0@00) r@10@00) r@10@00))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in r@10@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$)))
      (not (= ($FVF.lookup_next (sm@9@00 s@$ this@0@00) r@10@00) $Ref.null))))
  (and
    (Set_in r@10@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$)))
    (not (= ($FVF.lookup_next (sm@9@00 s@$ this@0@00) r@10@00) $Ref.null)))))
; Definitional axioms for snapshot map values
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@8@00 s@$ this@0@00 r)
      (Set_in (inv@7@00 s@$ this@0@00 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$))))
    (=
      ($FVF.lookup_next (sm@9@00 s@$ this@0@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second s@$)))) r)))
  :pattern (($FVF.lookup_next (sm@9@00 s@$ this@0@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second s@$)))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second s@$)))) r) r)
  :pattern (($FVF.lookup_next (sm@9@00 s@$ this@0@00) r))
  :qid |qp.fvfResTrgDef1|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((r@10@00 $Ref)) (!
  (and
    (=>
      (Set_in r@10@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$)))
      (and
        (Set_in r@10@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$)))
        ($FVF.loc_next ($FVF.lookup_next (sm@9@00 s@$ this@0@00) r@10@00) r@10@00)))
    (or
      (Set_in r@10@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$)))
      (not (Set_in r@10@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$)))))
    (=>
      (and
        (Set_in r@10@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$)))
        (not (= ($FVF.lookup_next (sm@9@00 s@$ this@0@00) r@10@00) $Ref.null)))
      (and
        (Set_in r@10@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$)))
        (not (= ($FVF.lookup_next (sm@9@00 s@$ this@0@00) r@10@00) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (sm@9@00 s@$ this@0@00) r@10@00) r@10@00)))
    (or
      (not
        (and
          (Set_in r@10@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$)))
          (not (= ($FVF.lookup_next (sm@9@00 s@$ this@0@00) r@10@00) $Ref.null))))
      (and
        (Set_in r@10@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$)))
        (not (= ($FVF.lookup_next (sm@9@00 s@$ this@0@00) r@10@00) $Ref.null)))))
  :pattern (($FVF.loc_next ($FVF.lookup_next (sm@9@00 s@$ this@0@00) r@10@00) r@10@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0207.vpr@15@7@15@91-aux|)))
(assert (forall ((r@10@00 $Ref)) (!
  (=>
    (and
      (Set_in r@10@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$)))
      (not (= ($FVF.lookup_next (sm@9@00 s@$ this@0@00) r@10@00) $Ref.null)))
    (Set_in ($FVF.lookup_next (sm@9@00 s@$ this@0@00) r@10@00) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$))))
  :pattern (($FVF.loc_next ($FVF.lookup_next (sm@9@00 s@$ this@0@00) r@10@00) r@10@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0207.vpr@15@7@15@91|)))
; [eval] |this.nodes|
(pop) ; 2
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@5@00 s@$ this@0@00 r)
      (Set_in (inv@4@00 s@$ this@0@00 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$))))
    (= (inv@4@00 s@$ this@0@00 r) r))
  :pattern ((inv@4@00 s@$ this@0@00 r))
  :qid |val-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@8@00 s@$ this@0@00 r)
      (Set_in (inv@7@00 s@$ this@0@00 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$))))
    (= (inv@7@00 s@$ this@0@00 r) r))
  :pattern ((inv@7@00 s@$ this@0@00 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@8@00 s@$ this@0@00 r)
      (Set_in (inv@7@00 s@$ this@0@00 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$))))
    (=
      ($FVF.lookup_next (sm@9@00 s@$ this@0@00) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second s@$)))) r)))
  :pattern (($FVF.lookup_next (sm@9@00 s@$ this@0@00) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second s@$)))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second s@$)))) r) r)
  :pattern (($FVF.lookup_next (sm@9@00 s@$ this@0@00) r))
  :qid |qp.fvfResTrgDef1|)))
(assert (and
  (List%trigger s@$ this@0@00)
  (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$)))
  (not (= this@0@00 $Ref.null))
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))))
(assert (and
  (forall ((r@3@00 $Ref)) (!
    (=>
      (Set_in r@3@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$)))
      (and
        (= (inv@4@00 s@$ this@0@00 r@3@00) r@3@00)
        (img@5@00 s@$ this@0@00 r@3@00)))
    :pattern ((Set_in r@3@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$))))
    :pattern ((inv@4@00 s@$ this@0@00 r@3@00))
    :pattern ((img@5@00 s@$ this@0@00 r@3@00))
    :qid |quant-u-11605|))
  (forall ((r@3@00 $Ref)) (!
    (=>
      (Set_in r@3@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$)))
      (not (= r@3@00 $Ref.null)))
    :pattern ((Set_in r@3@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$))))
    :pattern ((inv@4@00 s@$ this@0@00 r@3@00))
    :pattern ((img@5@00 s@$ this@0@00 r@3@00))
    :qid |val-permImpliesNonNull|))
  (=
    ($Snap.second ($Snap.second s@$))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second s@$)))
      ($Snap.second ($Snap.second ($Snap.second s@$)))))))
(assert (and
  (forall ((r@6@00 $Ref)) (!
    (=>
      (Set_in r@6@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$)))
      (and
        (= (inv@7@00 s@$ this@0@00 r@6@00) r@6@00)
        (img@8@00 s@$ this@0@00 r@6@00)))
    :pattern ((Set_in r@6@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$))))
    :pattern ((inv@7@00 s@$ this@0@00 r@6@00))
    :pattern ((img@8@00 s@$ this@0@00 r@6@00))
    :qid |quant-u-11607|))
  (forall ((r@6@00 $Ref)) (!
    (=>
      (Set_in r@6@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$)))
      (not (= r@6@00 $Ref.null)))
    :pattern ((Set_in r@6@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$))))
    :pattern ((inv@7@00 s@$ this@0@00 r@6@00))
    :pattern ((img@8@00 s@$ this@0@00 r@6@00))
    :qid |next-permImpliesNonNull|))
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@7@00 s@$ this@0@00 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$)))
      ($FVF.loc_next ($FVF.lookup_next (sm@9@00 s@$ this@0@00) r) r))
    :pattern ((inv@7@00 s@$ this@0@00 r))
    :qid |quant-u-11608|))
  (= ($Snap.second ($Snap.second ($Snap.second s@$))) $Snap.unit)
  (forall ((r@10@00 $Ref)) (!
    (and
      (=>
        (Set_in r@10@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$)))
        (and
          (Set_in r@10@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$)))
          ($FVF.loc_next ($FVF.lookup_next (sm@9@00 s@$ this@0@00) r@10@00) r@10@00)))
      (or
        (Set_in r@10@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$)))
        (not (Set_in r@10@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$)))))
      (=>
        (and
          (Set_in r@10@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$)))
          (not (= ($FVF.lookup_next (sm@9@00 s@$ this@0@00) r@10@00) $Ref.null)))
        (and
          (Set_in r@10@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$)))
          (not (= ($FVF.lookup_next (sm@9@00 s@$ this@0@00) r@10@00) $Ref.null))
          ($FVF.loc_next ($FVF.lookup_next (sm@9@00 s@$ this@0@00) r@10@00) r@10@00)))
      (or
        (not
          (and
            (Set_in r@10@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$)))
            (not
              (= ($FVF.lookup_next (sm@9@00 s@$ this@0@00) r@10@00) $Ref.null))))
        (and
          (Set_in r@10@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$)))
          (not (= ($FVF.lookup_next (sm@9@00 s@$ this@0@00) r@10@00) $Ref.null)))))
    :pattern (($FVF.loc_next ($FVF.lookup_next (sm@9@00 s@$ this@0@00) r@10@00) r@10@00))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0207.vpr@15@7@15@91-aux|))
  (forall ((r@10@00 $Ref)) (!
    (=>
      (and
        (Set_in r@10@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$)))
        (not (= ($FVF.lookup_next (sm@9@00 s@$ this@0@00) r@10@00) $Ref.null)))
      (Set_in ($FVF.lookup_next (sm@9@00 s@$ this@0@00) r@10@00) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$))))
    :pattern (($FVF.loc_next ($FVF.lookup_next (sm@9@00 s@$ this@0@00) r@10@00) r@10@00))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0207.vpr@15@7@15@91|))))
(assert (= result@1@00 (Set_card ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$)))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (this@0@00 $Ref)) (!
  (and
    (forall ((r@3@00 $Ref)) (!
      (=>
        (Set_in r@3@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$)))
        (and
          (= (inv@4@00 s@$ this@0@00 r@3@00) r@3@00)
          (img@5@00 s@$ this@0@00 r@3@00)))
      :pattern ((Set_in r@3@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$))))
      :pattern ((inv@4@00 s@$ this@0@00 r@3@00))
      :pattern ((img@5@00 s@$ this@0@00 r@3@00))
      :qid |quant-u-11605|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@5@00 s@$ this@0@00 r)
          (Set_in (inv@4@00 s@$ this@0@00 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$))))
        (= (inv@4@00 s@$ this@0@00 r) r))
      :pattern ((inv@4@00 s@$ this@0@00 r))
      :qid |val-fctOfInv|))
    (forall ((r@6@00 $Ref)) (!
      (=>
        (Set_in r@6@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$)))
        (and
          (= (inv@7@00 s@$ this@0@00 r@6@00) r@6@00)
          (img@8@00 s@$ this@0@00 r@6@00)))
      :pattern ((Set_in r@6@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$))))
      :pattern ((inv@7@00 s@$ this@0@00 r@6@00))
      :pattern ((img@8@00 s@$ this@0@00 r@6@00))
      :qid |quant-u-11607|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@8@00 s@$ this@0@00 r)
          (Set_in (inv@7@00 s@$ this@0@00 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$))))
        (= (inv@7@00 s@$ this@0@00 r) r))
      :pattern ((inv@7@00 s@$ this@0@00 r))
      :qid |next-fctOfInv|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@8@00 s@$ this@0@00 r)
          (Set_in (inv@7@00 s@$ this@0@00 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$))))
        (=
          ($FVF.lookup_next (sm@9@00 s@$ this@0@00) r)
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second s@$)))) r)))
      :pattern (($FVF.lookup_next (sm@9@00 s@$ this@0@00) r))
      :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second s@$)))) r))
      :qid |qp.fvfValDef0|))
    (forall ((r $Ref)) (!
      ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second s@$)))) r) r)
      :pattern (($FVF.lookup_next (sm@9@00 s@$ this@0@00) r))
      :qid |qp.fvfResTrgDef1|))
    (=>
      (length%precondition s@$ this@0@00)
      (=
        (length s@$ this@0@00)
        (Set_card ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$))))))
  :pattern ((length s@$ this@0@00))
  :qid |quant-u-11609|)))
(assert (forall ((s@$ $Snap) (this@0@00 $Ref)) (!
  true
  :pattern ((length s@$ this@0@00))
  :qid |quant-u-11610|)))
; ---------- FUNCTION set----------
(declare-fun result@2@00 () Set<$Ref>)
; ----- Well-definedness of specifications -----
(push) ; 1
(declare-const $t@11@00 $Snap)
(assert (= $t@11@00 $Snap.unit))
; [eval] |result| == 0
; [eval] |result|
(assert (= (Set_card result@2@00) 0))
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (= (set%limited s@$) (set s@$))
  :pattern ((set s@$))
  :qid |quant-u-11602|)))
(assert (forall ((s@$ $Snap)) (!
  (as set%stateless  Bool)
  :pattern ((set%limited s@$))
  :qid |quant-u-11603|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@2@00 (set%limited s@$))) (=>
    (set%precondition s@$)
    (= (Set_card result@2@00) 0)))
  :pattern ((set%limited s@$))
  :qid |quant-u-11611|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@2@00 (set%limited s@$))) true)
  :pattern ((set%limited s@$))
  :qid |quant-u-11612|)))
; ---------- List ----------
(declare-const this@12@00 $Ref)
(push) ; 1
(declare-const $t@13@00 $Snap)
(assert (= $t@13@00 ($Snap.combine ($Snap.first $t@13@00) ($Snap.second $t@13@00))))
(assert (not (= this@12@00 $Ref.null)))
(assert (=
  ($Snap.second $t@13@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@13@00))
    ($Snap.second ($Snap.second $t@13@00)))))
(declare-const r@14@00 $Ref)
(push) ; 2
; [eval] (r in this.nodes)
(assert (Set_in r@14@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@13@00))))
(pop) ; 2
(declare-fun inv@15@00 ($Ref) $Ref)
(declare-fun img@16@00 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((r1@14@00 $Ref) (r2@14@00 $Ref)) (!
  (=>
    (and
      (Set_in r1@14@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@13@00)))
      (Set_in r2@14@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@13@00)))
      (= r1@14@00 r2@14@00))
    (= r1@14@00 r2@14@00))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@14@00 $Ref)) (!
  (=>
    (Set_in r@14@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@13@00)))
    (and (= (inv@15@00 r@14@00) r@14@00) (img@16@00 r@14@00)))
  :pattern ((Set_in r@14@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@13@00))))
  :pattern ((inv@15@00 r@14@00))
  :pattern ((img@16@00 r@14@00))
  :qid |quant-u-11614|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@16@00 r)
      (Set_in (inv@15@00 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@13@00))))
    (= (inv@15@00 r) r))
  :pattern ((inv@15@00 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((r@14@00 $Ref)) (!
  (=>
    (Set_in r@14@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@13@00)))
    (not (= r@14@00 $Ref.null)))
  :pattern ((Set_in r@14@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@13@00))))
  :pattern ((inv@15@00 r@14@00))
  :pattern ((img@16@00 r@14@00))
  :qid |val-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second $t@13@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@13@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@13@00))))))
(declare-const r@17@00 $Ref)
(push) ; 2
; [eval] (r in this.nodes)
(assert (Set_in r@17@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@13@00))))
(pop) ; 2
(declare-fun inv@18@00 ($Ref) $Ref)
(declare-fun img@19@00 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((r1@17@00 $Ref) (r2@17@00 $Ref)) (!
  (=>
    (and
      (Set_in r1@17@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@13@00)))
      (Set_in r2@17@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@13@00)))
      (= r1@17@00 r2@17@00))
    (= r1@17@00 r2@17@00))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@17@00 $Ref)) (!
  (=>
    (Set_in r@17@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@13@00)))
    (and (= (inv@18@00 r@17@00) r@17@00) (img@19@00 r@17@00)))
  :pattern ((Set_in r@17@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@13@00))))
  :pattern ((inv@18@00 r@17@00))
  :pattern ((img@19@00 r@17@00))
  :qid |quant-u-11616|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@19@00 r)
      (Set_in (inv@18@00 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@13@00))))
    (= (inv@18@00 r) r))
  :pattern ((inv@18@00 r))
  :qid |next-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((r@17@00 $Ref)) (!
  (=>
    (Set_in r@17@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@13@00)))
    (not (= r@17@00 $Ref.null)))
  :pattern ((Set_in r@17@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@13@00))))
  :pattern ((inv@18@00 r@17@00))
  :pattern ((img@19@00 r@17@00))
  :qid |next-permImpliesNonNull|)))
(declare-const sm@20@00 $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@19@00 r)
      (Set_in (inv@18@00 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@13@00))))
    (=
      ($FVF.lookup_next (as sm@20@00  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second $t@13@00)))) r)))
  :pattern (($FVF.lookup_next (as sm@20@00  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second $t@13@00)))) r))
  :qid |qp.fvfValDef2|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second $t@13@00)))) r) r)
  :pattern (($FVF.lookup_next (as sm@20@00  $FVF<next>) r))
  :qid |qp.fvfResTrgDef3|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@18@00 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@13@00)))
    ($FVF.loc_next ($FVF.lookup_next (as sm@20@00  $FVF<next>) r) r))
  :pattern ((inv@18@00 r))
  :qid |quant-u-11617|)))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@13@00))) $Snap.unit))
; [eval] (forall r: Ref :: { r.next } (r in this.nodes) && r.next != null ==> (r.next in this.nodes))
(declare-const r@21@00 $Ref)
(push) ; 2
; [eval] (r in this.nodes) && r.next != null ==> (r.next in this.nodes)
; [eval] (r in this.nodes) && r.next != null
; [eval] (r in this.nodes)
(push) ; 3
; [then-branch: 2 | !(r@21@00 in First:($t@13@00)) | live]
; [else-branch: 2 | r@21@00 in First:($t@13@00) | live]
(push) ; 4
; [then-branch: 2 | !(r@21@00 in First:($t@13@00))]
(assert (not (Set_in r@21@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@13@00)))))
(pop) ; 4
(push) ; 4
; [else-branch: 2 | r@21@00 in First:($t@13@00)]
(assert (Set_in r@21@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@13@00))))
; [eval] r.next != null
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@19@00 r)
        (Set_in (inv@18@00 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@13@00))))
      (=
        ($FVF.lookup_next (as sm@20@00  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second $t@13@00)))) r)))
    :pattern (($FVF.lookup_next (as sm@20@00  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second $t@13@00)))) r))
    :qid |qp.fvfValDef2|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second $t@13@00)))) r) r)
    :pattern (($FVF.lookup_next (as sm@20@00  $FVF<next>) r))
    :qid |qp.fvfResTrgDef3|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@20@00  $FVF<next>) r@21@00) r@21@00))
(push) ; 5
(assert (not (and
  (img@19@00 r@21@00)
  (Set_in (inv@18@00 r@21@00) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@13@00))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@19@00 r)
      (Set_in (inv@18@00 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@13@00))))
    (=
      ($FVF.lookup_next (as sm@20@00  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second $t@13@00)))) r)))
  :pattern (($FVF.lookup_next (as sm@20@00  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second $t@13@00)))) r))
  :qid |qp.fvfValDef2|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second $t@13@00)))) r) r)
  :pattern (($FVF.lookup_next (as sm@20@00  $FVF<next>) r))
  :qid |qp.fvfResTrgDef3|)))
(assert (=>
  (Set_in r@21@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@13@00)))
  (and
    (Set_in r@21@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@13@00)))
    ($FVF.loc_next ($FVF.lookup_next (as sm@20@00  $FVF<next>) r@21@00) r@21@00))))
(assert (or
  (Set_in r@21@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@13@00)))
  (not (Set_in r@21@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@13@00))))))
(push) ; 3
; [then-branch: 3 | r@21@00 in First:($t@13@00) && Lookup(next, sm@20@00, r@21@00) != Null | live]
; [else-branch: 3 | !(r@21@00 in First:($t@13@00) && Lookup(next, sm@20@00, r@21@00) != Null) | live]
(push) ; 4
; [then-branch: 3 | r@21@00 in First:($t@13@00) && Lookup(next, sm@20@00, r@21@00) != Null]
(assert (and
  (Set_in r@21@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@13@00)))
  (not (= ($FVF.lookup_next (as sm@20@00  $FVF<next>) r@21@00) $Ref.null))))
; [eval] (r.next in this.nodes)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@19@00 r)
        (Set_in (inv@18@00 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@13@00))))
      (=
        ($FVF.lookup_next (as sm@20@00  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second $t@13@00)))) r)))
    :pattern (($FVF.lookup_next (as sm@20@00  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second $t@13@00)))) r))
    :qid |qp.fvfValDef2|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second $t@13@00)))) r) r)
    :pattern (($FVF.lookup_next (as sm@20@00  $FVF<next>) r))
    :qid |qp.fvfResTrgDef3|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@20@00  $FVF<next>) r@21@00) r@21@00))
(push) ; 5
(assert (not (and
  (img@19@00 r@21@00)
  (Set_in (inv@18@00 r@21@00) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@13@00))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 3 | !(r@21@00 in First:($t@13@00) && Lookup(next, sm@20@00, r@21@00) != Null)]
(assert (not
  (and
    (Set_in r@21@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@13@00)))
    (not (= ($FVF.lookup_next (as sm@20@00  $FVF<next>) r@21@00) $Ref.null)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@19@00 r)
      (Set_in (inv@18@00 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@13@00))))
    (=
      ($FVF.lookup_next (as sm@20@00  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second $t@13@00)))) r)))
  :pattern (($FVF.lookup_next (as sm@20@00  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second $t@13@00)))) r))
  :qid |qp.fvfValDef2|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second $t@13@00)))) r) r)
  :pattern (($FVF.lookup_next (as sm@20@00  $FVF<next>) r))
  :qid |qp.fvfResTrgDef3|)))
(assert (=>
  (and
    (Set_in r@21@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@13@00)))
    (not (= ($FVF.lookup_next (as sm@20@00  $FVF<next>) r@21@00) $Ref.null)))
  (and
    (Set_in r@21@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@13@00)))
    (not (= ($FVF.lookup_next (as sm@20@00  $FVF<next>) r@21@00) $Ref.null))
    ($FVF.loc_next ($FVF.lookup_next (as sm@20@00  $FVF<next>) r@21@00) r@21@00))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in r@21@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@13@00)))
      (not (= ($FVF.lookup_next (as sm@20@00  $FVF<next>) r@21@00) $Ref.null))))
  (and
    (Set_in r@21@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@13@00)))
    (not (= ($FVF.lookup_next (as sm@20@00  $FVF<next>) r@21@00) $Ref.null)))))
; Definitional axioms for snapshot map values
(pop) ; 2
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@19@00 r)
      (Set_in (inv@18@00 r) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@13@00))))
    (=
      ($FVF.lookup_next (as sm@20@00  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second $t@13@00)))) r)))
  :pattern (($FVF.lookup_next (as sm@20@00  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second $t@13@00)))) r))
  :qid |qp.fvfValDef2|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second $t@13@00)))) r) r)
  :pattern (($FVF.lookup_next (as sm@20@00  $FVF<next>) r))
  :qid |qp.fvfResTrgDef3|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((r@21@00 $Ref)) (!
  (and
    (=>
      (Set_in r@21@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@13@00)))
      (and
        (Set_in r@21@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@13@00)))
        ($FVF.loc_next ($FVF.lookup_next (as sm@20@00  $FVF<next>) r@21@00) r@21@00)))
    (or
      (Set_in r@21@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@13@00)))
      (not
        (Set_in r@21@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@13@00)))))
    (=>
      (and
        (Set_in r@21@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@13@00)))
        (not (= ($FVF.lookup_next (as sm@20@00  $FVF<next>) r@21@00) $Ref.null)))
      (and
        (Set_in r@21@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@13@00)))
        (not (= ($FVF.lookup_next (as sm@20@00  $FVF<next>) r@21@00) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@20@00  $FVF<next>) r@21@00) r@21@00)))
    (or
      (not
        (and
          (Set_in r@21@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@13@00)))
          (not
            (= ($FVF.lookup_next (as sm@20@00  $FVF<next>) r@21@00) $Ref.null))))
      (and
        (Set_in r@21@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@13@00)))
        (not (= ($FVF.lookup_next (as sm@20@00  $FVF<next>) r@21@00) $Ref.null)))))
  :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@20@00  $FVF<next>) r@21@00) r@21@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0207.vpr@15@7@15@91-aux|)))
(assert (forall ((r@21@00 $Ref)) (!
  (=>
    (and
      (Set_in r@21@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@13@00)))
      (not (= ($FVF.lookup_next (as sm@20@00  $FVF<next>) r@21@00) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@20@00  $FVF<next>) r@21@00) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first $t@13@00))))
  :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@20@00  $FVF<next>) r@21@00) r@21@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/silicon/0207.vpr@15@7@15@91|)))
(pop) ; 1
