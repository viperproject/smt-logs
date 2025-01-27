(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-27 03:05:33
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
(declare-sort Set<Bool> 0)
(declare-sort Set<$Snap> 0)
(declare-sort $PSF<P> 0)
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
(declare-fun $SortWrappers.Set<Bool>To$Snap (Set<Bool>) $Snap)
(declare-fun $SortWrappers.$SnapToSet<Bool> ($Snap) Set<Bool>)
(assert (forall ((x Set<Bool>)) (!
    (= x ($SortWrappers.$SnapToSet<Bool>($SortWrappers.Set<Bool>To$Snap x)))
    :pattern (($SortWrappers.Set<Bool>To$Snap x))
    :qid |$Snap.$SnapToSet<Bool>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Set<Bool>To$Snap($SortWrappers.$SnapToSet<Bool> x)))
    :pattern (($SortWrappers.$SnapToSet<Bool> x))
    :qid |$Snap.Set<Bool>To$SnapToSet<Bool>|
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
(declare-fun $SortWrappers.$PSF<P>To$Snap ($PSF<P>) $Snap)
(declare-fun $SortWrappers.$SnapTo$PSF<P> ($Snap) $PSF<P>)
(assert (forall ((x $PSF<P>)) (!
    (= x ($SortWrappers.$SnapTo$PSF<P>($SortWrappers.$PSF<P>To$Snap x)))
    :pattern (($SortWrappers.$PSF<P>To$Snap x))
    :qid |$Snap.$SnapTo$PSF<P>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$PSF<P>To$Snap($SortWrappers.$SnapTo$PSF<P> x)))
    :pattern (($SortWrappers.$SnapTo$PSF<P> x))
    :qid |$Snap.$PSF<P>To$SnapTo$PSF<P>|
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
(declare-fun Set_card (Set<Bool>) Int)
(declare-const Set_empty Set<Bool>)
(declare-fun Set_in (Bool Set<Bool>) Bool)
(declare-fun Set_singleton (Bool) Set<Bool>)
(declare-fun Set_unionone (Set<Bool> Bool) Set<Bool>)
(declare-fun Set_union (Set<Bool> Set<Bool>) Set<Bool>)
(declare-fun Set_intersection (Set<Bool> Set<Bool>) Set<Bool>)
(declare-fun Set_difference (Set<Bool> Set<Bool>) Set<Bool>)
(declare-fun Set_subset (Set<Bool> Set<Bool>) Bool)
(declare-fun Set_equal (Set<Bool> Set<Bool>) Bool)
(declare-fun Set_skolem_diff (Set<Bool> Set<Bool>) Bool)
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
; /predicate_snap_functions_declarations.smt2 [P: Snap]
(declare-fun $PSF.domain_P ($PSF<P>) Set<$Snap>)
(declare-fun $PSF.lookup_P ($PSF<P> $Snap) $Snap)
(declare-fun $PSF.after_P ($PSF<P> $PSF<P>) Bool)
(declare-fun $PSF.loc_P ($Snap $Snap) Bool)
(declare-fun $PSF.perm_P ($PPM $Snap) $Perm)
(declare-const $psfTOP_P $PSF<P>)
; Declaring symbols related to program functions (from program analysis)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun P%trigger ($Snap $Ref Bool) Bool)
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
(assert (forall ((s Set<Bool>)) (!
  (<= 0 (Set_card s))
  :pattern ((Set_card s))
  )))
(assert (forall ((o Bool)) (!
  (not (Set_in o (as Set_empty  Set<Bool>)))
  :pattern ((Set_in o (as Set_empty  Set<Bool>)))
  )))
(assert (forall ((s Set<Bool>)) (!
  (and
    (=> (= (Set_card s) 0) (= s (as Set_empty  Set<Bool>)))
    (=> (not (= (Set_card s) 0)) (exists ((x Bool))  (Set_in x s))))
  :pattern ((Set_card s))
  )))
(assert (forall ((r Bool)) (!
  (Set_in r (Set_singleton r))
  :pattern ((Set_singleton r))
  )))
(assert (forall ((r Bool) (o Bool)) (!
  (= (Set_in o (Set_singleton r)) (= r o))
  :pattern ((Set_in o (Set_singleton r)))
  )))
(assert (forall ((r Bool)) (!
  (= (Set_card (Set_singleton r)) 1)
  :pattern ((Set_card (Set_singleton r)))
  )))
(assert (forall ((a Set<Bool>) (x Bool) (o Bool)) (!
  (= (Set_in o (Set_unionone a x)) (or (= o x) (Set_in o a)))
  :pattern ((Set_in o (Set_unionone a x)))
  )))
(assert (forall ((a Set<Bool>) (x Bool)) (!
  (Set_in x (Set_unionone a x))
  :pattern ((Set_unionone a x))
  )))
(assert (forall ((a Set<Bool>) (x Bool) (y Bool)) (!
  (=> (Set_in y a) (Set_in y (Set_unionone a x)))
  :pattern ((Set_unionone a x) (Set_in y a))
  )))
(assert (forall ((a Set<Bool>) (x Bool)) (!
  (=> (Set_in x a) (= (Set_card (Set_unionone a x)) (Set_card a)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<Bool>) (x Bool)) (!
  (=> (not (Set_in x a)) (= (Set_card (Set_unionone a x)) (+ (Set_card a) 1)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>) (o Bool)) (!
  (= (Set_in o (Set_union a b)) (or (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_union a b)))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>) (y Bool)) (!
  (=> (Set_in y a) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y a))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>) (y Bool)) (!
  (=> (Set_in y b) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y b))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>) (o Bool)) (!
  (= (Set_in o (Set_intersection a b)) (and (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_intersection a b)))
  :pattern ((Set_intersection a b) (Set_in o a))
  :pattern ((Set_intersection a b) (Set_in o b))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>)) (!
  (= (Set_union (Set_union a b) b) (Set_union a b))
  :pattern ((Set_union (Set_union a b) b))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>)) (!
  (= (Set_union a (Set_union a b)) (Set_union a b))
  :pattern ((Set_union a (Set_union a b)))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>)) (!
  (= (Set_intersection (Set_intersection a b) b) (Set_intersection a b))
  :pattern ((Set_intersection (Set_intersection a b) b))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>)) (!
  (= (Set_intersection a (Set_intersection a b)) (Set_intersection a b))
  :pattern ((Set_intersection a (Set_intersection a b)))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>)) (!
  (=
    (+ (Set_card (Set_union a b)) (Set_card (Set_intersection a b)))
    (+ (Set_card a) (Set_card b)))
  :pattern ((Set_card (Set_union a b)))
  :pattern ((Set_card (Set_intersection a b)))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>) (o Bool)) (!
  (= (Set_in o (Set_difference a b)) (and (Set_in o a) (not (Set_in o b))))
  :pattern ((Set_in o (Set_difference a b)))
  :pattern ((Set_difference a b) (Set_in o a))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>) (y Bool)) (!
  (=> (Set_in y b) (not (Set_in y (Set_difference a b))))
  :pattern ((Set_difference a b) (Set_in y b))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>)) (!
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
(assert (forall ((a Set<Bool>) (b Set<Bool>)) (!
  (=
    (Set_subset a b)
    (forall ((o Bool)) (!
      (=> (Set_in o a) (Set_in o b))
      :pattern ((Set_in o a))
      :pattern ((Set_in o b))
      )))
  :pattern ((Set_subset a b))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>)) (!
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
(assert (forall ((a Set<Bool>) (b Set<Bool>)) (!
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
; /predicate_snap_functions_axioms.smt2 [P: Snap]
(assert (forall ((vs $PSF<P>) (ws $PSF<P>)) (!
    (=>
      (and
        (Set_equal ($PSF.domain_P vs) ($PSF.domain_P ws))
        (forall ((x $Snap)) (!
          (=>
            (Set_in x ($PSF.domain_P vs))
            (= ($PSF.lookup_P vs x) ($PSF.lookup_P ws x)))
          :pattern (($PSF.lookup_P vs x) ($PSF.lookup_P ws x))
          :qid |qp.$PSF<P>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$PSF<P>To$Snap vs)
              ($SortWrappers.$PSF<P>To$Snap ws)
              )
    :qid |qp.$PSF<P>-eq-outer|
    )))
(assert (forall ((s $Snap) (pm $PPM)) (!
    ($Perm.isValidVar ($PSF.perm_P pm s))
    :pattern (($PSF.perm_P pm s)))))
(assert (forall ((s $Snap) (f $Snap)) (!
    (= ($PSF.loc_P f s) true)
    :pattern (($PSF.loc_P f s)))))
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
; ---------- test1 ----------
(declare-const x@0@01 $Ref)
(declare-const xs@1@01 Set<$Ref>)
(declare-const b@2@01 Bool)
(declare-const x@3@01 $Ref)
(declare-const xs@4@01 Set<$Ref>)
(declare-const b@5@01 Bool)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@6@01 $Snap)
(assert (= $t@6@01 ($Snap.combine ($Snap.first $t@6@01) ($Snap.second $t@6@01))))
(declare-const y@7@01 $Ref)
(push) ; 2
; [eval] (y in xs)
(assert (Set_in y@7@01 xs@4@01))
(pop) ; 2
(declare-fun inv@8@01 ($Ref Bool) $Ref)
(declare-fun img@9@01 ($Ref Bool) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((y1@7@01 $Ref) (y2@7@01 $Ref)) (!
  (=>
    (and (Set_in y1@7@01 xs@4@01) (Set_in y2@7@01 xs@4@01) (= y1@7@01 y2@7@01))
    (= y1@7@01 y2@7@01))
  
  :qid |P-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((y@7@01 $Ref)) (!
  (=>
    (Set_in y@7@01 xs@4@01)
    (and (= (inv@8@01 y@7@01 b@5@01) y@7@01) (img@9@01 y@7@01 b@5@01)))
  :pattern ((Set_in y@7@01 xs@4@01))
  :pattern ((inv@8@01 y@7@01 b@5@01))
  :pattern ((img@9@01 y@7@01 b@5@01))
  :qid |quant-u-24542|)))
(assert (forall ((x $Ref) (b Bool)) (!
  (=>
    (and (img@9@01 x b) (Set_in (inv@8@01 x b) xs@4@01))
    (and (= (inv@8@01 x b) x) (= b@5@01 b)))
  :pattern ((inv@8@01 x b))
  :qid |P-fctOfInv|)))
; Permissions are non-negative
(assert (= ($Snap.second $t@6@01) $Snap.unit))
; [eval] (x in xs)
(assert (Set_in x@3@01 xs@4@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not b@5@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not b@5@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | b@5@01 | live]
; [else-branch: 0 | !(b@5@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 0 | b@5@01]
(assert b@5@01)
(declare-const $t@10@01 $Snap)
(assert (= $t@10@01 ($Snap.combine ($Snap.first $t@10@01) ($Snap.second $t@10@01))))
(assert (not (= x@3@01 $Ref.null)))
(assert (= ($Snap.second $t@10@01) $Snap.unit))
; [eval] x.f == 0
(assert (= ($SortWrappers.$SnapToInt ($Snap.first $t@10@01)) 0))
(pop) ; 3
(push) ; 3
; [else-branch: 0 | !(b@5@01)]
(assert (not b@5@01))
(declare-const $t@11@01 $Snap)
(assert (= $t@11@01 ($Snap.combine ($Snap.first $t@11@01) ($Snap.second $t@11@01))))
(assert (not (= x@3@01 $Ref.null)))
(assert (= ($Snap.second $t@11@01) $Snap.unit))
(assert ($SortWrappers.$SnapToBool ($Snap.first $t@11@01)))
(pop) ; 3
(pop) ; 2
(push) ; 2
; [exec]
; unfold acc(P(x, b), write)
; Precomputing data for removing quantified permissions
(define-fun pTaken@12@01 ((x $Ref) (b Bool)) $Perm
  (ite
    (and (= x x@3@01) (= b b@5@01))
    ($Perm.min
      (ite
        (and (img@9@01 x b) (Set_in (inv@8@01 x b) xs@4@01))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((x $Ref) (b Bool)) (!
  (=
    (-
      (ite
        (and (img@9@01 x b) (Set_in (inv@8@01 x b) xs@4@01))
        $Perm.Write
        $Perm.No)
      (pTaken@12@01 x b))
    $Perm.No)
  
  :qid |quant-u-24544|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((x $Ref) (b Bool)) (!
  (= (pTaken@12@01 x b) $Perm.No)
  
  :qid |quant-u-24545|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((x $Ref) (b Bool)) (!
  (=>
    (and (= x x@3@01) (= b b@5@01))
    (= (- $Perm.Write (pTaken@12@01 x b)) $Perm.No))
  
  :qid |quant-u-24546|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@13@01 $PSF<P>)
(declare-const s@14@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and (img@9@01 x@3@01 b@5@01) (Set_in (inv@8@01 x@3@01 b@5@01) xs@4@01))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap x@3@01)
          ($SortWrappers.BoolTo$Snap b@5@01))
        $Snap.unit))
    (=
      ($PSF.lookup_P (as sm@13@01  $PSF<P>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap x@3@01)
        ($SortWrappers.BoolTo$Snap b@5@01)))
      ($PSF.lookup_P ($SortWrappers.$SnapTo$PSF<P> ($Snap.first $t@6@01)) ($Snap.combine
        ($SortWrappers.$RefTo$Snap x@3@01)
        ($SortWrappers.BoolTo$Snap b@5@01)))))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not b@5@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not b@5@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1 | b@5@01 | live]
; [else-branch: 1 | !(b@5@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 1 | b@5@01]
(assert b@5@01)
(assert (not (= x@3@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (P%trigger ($PSF.lookup_P (as sm@13@01  $PSF<P>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap x@3@01)
  ($SortWrappers.BoolTo$Snap b@5@01))) x@3@01 b@5@01))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not b@5@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 2 | b@5@01 | live]
; [else-branch: 2 | !(b@5@01) | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 2 | b@5@01]
; [exec]
; x.f := 0
(push) ; 5
(set-option :timeout 10)
(assert (not (not b@5@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 3 | b@5@01 | live]
; [else-branch: 3 | !(b@5@01) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 3 | b@5@01]
; [eval] x.f == 0
(pop) ; 5
(pop) ; 4
; [eval] !b
; [then-branch: 4 | !(b@5@01) | dead]
; [else-branch: 4 | b@5@01 | live]
(push) ; 4
; [else-branch: 4 | b@5@01]
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 1 | !(b@5@01)]
(assert (not b@5@01))
(assert (not (= x@3@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (P%trigger ($PSF.lookup_P (as sm@13@01  $PSF<P>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap x@3@01)
  ($SortWrappers.BoolTo$Snap b@5@01))) x@3@01 b@5@01))
; [then-branch: 5 | b@5@01 | dead]
; [else-branch: 5 | !(b@5@01) | live]
(set-option :timeout 0)
(push) ; 4
; [else-branch: 5 | !(b@5@01)]
(pop) ; 4
; [eval] !b
(push) ; 4
(set-option :timeout 10)
(assert (not b@5@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 6 | !(b@5@01) | live]
; [else-branch: 6 | b@5@01 | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 6 | !(b@5@01)]
; [exec]
; x.g := true
; [then-branch: 7 | b@5@01 | dead]
; [else-branch: 7 | !(b@5@01) | live]
(push) ; 5
; [else-branch: 7 | !(b@5@01)]
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test2 ----------
(declare-const x@15@01 $Ref)
(declare-const xs@16@01 Set<$Ref>)
(declare-const b@17@01 Bool)
(declare-const x@18@01 $Ref)
(declare-const xs@19@01 Set<$Ref>)
(declare-const b@20@01 Bool)
(push) ; 1
(declare-const $t@21@01 $Snap)
(assert (= $t@21@01 ($Snap.combine ($Snap.first $t@21@01) ($Snap.second $t@21@01))))
(declare-const y@22@01 $Ref)
(push) ; 2
; [eval] (y in xs)
(assert (Set_in y@22@01 xs@19@01))
(pop) ; 2
(declare-fun inv@23@01 ($Ref Bool) $Ref)
(declare-fun img@24@01 ($Ref Bool) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((y1@22@01 $Ref) (y2@22@01 $Ref)) (!
  (=>
    (and
      (Set_in y1@22@01 xs@19@01)
      (Set_in y2@22@01 xs@19@01)
      (= y1@22@01 y2@22@01))
    (= y1@22@01 y2@22@01))
  
  :qid |P-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((y@22@01 $Ref)) (!
  (=>
    (Set_in y@22@01 xs@19@01)
    (and (= (inv@23@01 y@22@01 b@20@01) y@22@01) (img@24@01 y@22@01 b@20@01)))
  :pattern ((Set_in y@22@01 xs@19@01))
  :pattern ((inv@23@01 y@22@01 b@20@01))
  :pattern ((img@24@01 y@22@01 b@20@01))
  :qid |quant-u-24548|)))
(assert (forall ((x $Ref) (b Bool)) (!
  (=>
    (and (img@24@01 x b) (Set_in (inv@23@01 x b) xs@19@01))
    (and (= (inv@23@01 x b) x) (= b@20@01 b)))
  :pattern ((inv@23@01 x b))
  :qid |P-fctOfInv|)))
; Permissions are non-negative
(assert (= ($Snap.second $t@21@01) $Snap.unit))
; [eval] (x in xs)
(assert (Set_in x@18@01 xs@19@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@25@01 $Snap)
(assert (= $t@25@01 ($Snap.combine ($Snap.first $t@25@01) ($Snap.second $t@25@01))))
(declare-const sm@26@01 $PSF<P>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_P (as sm@26@01  $PSF<P>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap x@18@01)
    ($SortWrappers.BoolTo$Snap b@20@01)))
  ($Snap.first $t@25@01)))
(assert (= ($Snap.second $t@25@01) $Snap.unit))
; [eval] (unfolding acc(P(x, b), write) in (b ? x.f == 0 : x.g))
(push) ; 3
; Precomputing data for removing quantified permissions
(define-fun pTaken@27@01 ((x $Ref) (b Bool)) $Perm
  (ite
    (and (= x x@18@01) (= b b@20@01))
    ($Perm.min
      (ite (and (= x x@18@01) (= b b@20@01)) $Perm.Write $Perm.No)
      $Perm.Write)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@27@01 x@18@01 b@20@01)) $Perm.No)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref) (b Bool)) (!
  (=>
    (and (= x x@18@01) (= b b@20@01))
    (= (- $Perm.Write (pTaken@27@01 x b)) $Perm.No))
  
  :qid |quant-u-24551|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@28@01 $PSF<P>)
(declare-const s@29@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(assert (and
  (not
    (=
      ($Snap.combine
        ($SortWrappers.$RefTo$Snap x@18@01)
        ($SortWrappers.BoolTo$Snap b@20@01))
      $Snap.unit))
  (=
    ($PSF.lookup_P (as sm@28@01  $PSF<P>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap x@18@01)
      ($SortWrappers.BoolTo$Snap b@20@01)))
    ($PSF.lookup_P (as sm@26@01  $PSF<P>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap x@18@01)
      ($SortWrappers.BoolTo$Snap b@20@01))))))
(assert (P%trigger ($PSF.lookup_P (as sm@28@01  $PSF<P>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap x@18@01)
  ($SortWrappers.BoolTo$Snap b@20@01))) x@18@01 b@20@01))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not b@20@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not b@20@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 8 | b@20@01 | live]
; [else-branch: 8 | !(b@20@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 8 | b@20@01]
(assert b@20@01)
(assert (not (= x@18@01 $Ref.null)))
; [eval] (b ? x.f == 0 : x.g)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not b@20@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 9 | b@20@01 | live]
; [else-branch: 9 | !(b@20@01) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 9 | b@20@01]
; [eval] x.f == 0
(pop) ; 6
(pop) ; 5
; Joined path conditions
(pop) ; 4
(push) ; 4
; [else-branch: 8 | !(b@20@01)]
(assert (not b@20@01))
(assert (not (= x@18@01 $Ref.null)))
; [eval] (b ? x.f == 0 : x.g)
(push) ; 5
; [then-branch: 10 | b@20@01 | dead]
; [else-branch: 10 | !(b@20@01) | live]
(push) ; 6
; [else-branch: 10 | !(b@20@01)]
(pop) ; 6
(pop) ; 5
; Joined path conditions
(pop) ; 4
(pop) ; 3
(declare-const joined_unfolding@30@01 Bool)
(assert (=>
  b@20@01
  (=
    (as joined_unfolding@30@01  Bool)
    (=
      ($SortWrappers.$SnapToInt ($PSF.lookup_P (as sm@28@01  $PSF<P>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap x@18@01)
        ($SortWrappers.BoolTo$Snap b@20@01))))
      0))))
(assert (=>
  (not b@20@01)
  (=
    (as joined_unfolding@30@01  Bool)
    ($SortWrappers.$SnapToBool ($PSF.lookup_P (as sm@28@01  $PSF<P>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap x@18@01)
      ($SortWrappers.BoolTo$Snap b@20@01)))))))
; Joined path conditions
(assert (and
  (not
    (=
      ($Snap.combine
        ($SortWrappers.$RefTo$Snap x@18@01)
        ($SortWrappers.BoolTo$Snap b@20@01))
      $Snap.unit))
  (=
    ($PSF.lookup_P (as sm@28@01  $PSF<P>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap x@18@01)
      ($SortWrappers.BoolTo$Snap b@20@01)))
    ($PSF.lookup_P (as sm@26@01  $PSF<P>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap x@18@01)
      ($SortWrappers.BoolTo$Snap b@20@01))))
  (P%trigger ($PSF.lookup_P (as sm@28@01  $PSF<P>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap x@18@01)
    ($SortWrappers.BoolTo$Snap b@20@01))) x@18@01 b@20@01)))
(assert (=> b@20@01 (and b@20@01 (not (= x@18@01 $Ref.null)))))
; Joined path conditions
(assert (and
  (not
    (=
      ($Snap.combine
        ($SortWrappers.$RefTo$Snap x@18@01)
        ($SortWrappers.BoolTo$Snap b@20@01))
      $Snap.unit))
  (=
    ($PSF.lookup_P (as sm@28@01  $PSF<P>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap x@18@01)
      ($SortWrappers.BoolTo$Snap b@20@01)))
    ($PSF.lookup_P (as sm@26@01  $PSF<P>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap x@18@01)
      ($SortWrappers.BoolTo$Snap b@20@01))))
  (P%trigger ($PSF.lookup_P (as sm@28@01  $PSF<P>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap x@18@01)
    ($SortWrappers.BoolTo$Snap b@20@01))) x@18@01 b@20@01)))
(assert (=> (not b@20@01) (and (not b@20@01) (not (= x@18@01 $Ref.null)))))
(assert (or (not b@20@01) b@20@01))
(assert (as joined_unfolding@30@01  Bool))
(pop) ; 2
(push) ; 2
; [exec]
; unfold acc(P(x, b), write)
; Precomputing data for removing quantified permissions
(define-fun pTaken@31@01 ((x $Ref) (b Bool)) $Perm
  (ite
    (and (= x x@18@01) (= b b@20@01))
    ($Perm.min
      (ite
        (and (img@24@01 x b) (Set_in (inv@23@01 x b) xs@19@01))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((x $Ref) (b Bool)) (!
  (=
    (-
      (ite
        (and (img@24@01 x b) (Set_in (inv@23@01 x b) xs@19@01))
        $Perm.Write
        $Perm.No)
      (pTaken@31@01 x b))
    $Perm.No)
  
  :qid |quant-u-24553|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((x $Ref) (b Bool)) (!
  (= (pTaken@31@01 x b) $Perm.No)
  
  :qid |quant-u-24554|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((x $Ref) (b Bool)) (!
  (=>
    (and (= x x@18@01) (= b b@20@01))
    (= (- $Perm.Write (pTaken@31@01 x b)) $Perm.No))
  
  :qid |quant-u-24555|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@32@01 $PSF<P>)
(declare-const s@33@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and (img@24@01 x@18@01 b@20@01) (Set_in (inv@23@01 x@18@01 b@20@01) xs@19@01))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap x@18@01)
          ($SortWrappers.BoolTo$Snap b@20@01))
        $Snap.unit))
    (=
      ($PSF.lookup_P (as sm@32@01  $PSF<P>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap x@18@01)
        ($SortWrappers.BoolTo$Snap b@20@01)))
      ($PSF.lookup_P ($SortWrappers.$SnapTo$PSF<P> ($Snap.first $t@21@01)) ($Snap.combine
        ($SortWrappers.$RefTo$Snap x@18@01)
        ($SortWrappers.BoolTo$Snap b@20@01)))))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not b@20@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not b@20@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 11 | b@20@01 | live]
; [else-branch: 11 | !(b@20@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 11 | b@20@01]
(assert b@20@01)
(assert (not (= x@18@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (P%trigger ($PSF.lookup_P (as sm@32@01  $PSF<P>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap x@18@01)
  ($SortWrappers.BoolTo$Snap b@20@01))) x@18@01 b@20@01))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not b@20@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 12 | b@20@01 | live]
; [else-branch: 12 | !(b@20@01) | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 12 | b@20@01]
; [exec]
; x.f := 0
; [exec]
; fold acc(P(x, b), write)
(push) ; 5
(set-option :timeout 10)
(assert (not (not b@20@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 13 | b@20@01 | live]
; [else-branch: 13 | !(b@20@01) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 13 | b@20@01]
(assert (P%trigger ($SortWrappers.IntTo$Snap 0) x@18@01 b@20@01))
(declare-const sm@34@01 $PSF<P>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_P (as sm@34@01  $PSF<P>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap x@18@01)
    ($SortWrappers.BoolTo$Snap b@20@01)))
  ($SortWrappers.IntTo$Snap 0)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@35@01 ((x $Ref) (b Bool)) $Perm
  (ite
    (and (= x x@18@01) (= b b@20@01))
    ($Perm.min
      (ite (and (= x x@18@01) (= b b@20@01)) $Perm.Write $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@36@01 ((x $Ref) (b Bool)) $Perm
  (ite
    (and (= x x@18@01) (= b b@20@01))
    ($Perm.min
      (ite
        (and (img@24@01 x b) (Set_in (inv@23@01 x b) xs@19@01))
        (- $Perm.Write (pTaken@31@01 x b))
        $Perm.No)
      (- $Perm.Write (pTaken@35@01 x b)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@35@01 x@18@01 b@20@01)) $Perm.No)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 500)
(assert (not (forall ((x $Ref) (b Bool)) (!
  (=>
    (and (= x x@18@01) (= b b@20@01))
    (= (- $Perm.Write (pTaken@35@01 x b)) $Perm.No))
  
  :qid |quant-u-24558|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (unfolding acc(P(x, b), write) in (b ? x.f == 0 : x.g))
(set-option :timeout 0)
(push) ; 6
; Precomputing data for removing quantified permissions
(define-fun pTaken@37@01 ((x $Ref) (b Bool)) $Perm
  (ite
    (and (= x x@18@01) (= b b@20@01))
    ($Perm.min
      (ite (and (= x x@18@01) (= b b@20@01)) $Perm.Write $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@38@01 ((x $Ref) (b Bool)) $Perm
  (ite
    (and (= x x@18@01) (= b b@20@01))
    ($Perm.min
      (ite
        (and (img@24@01 x b) (Set_in (inv@23@01 x b) xs@19@01))
        (- $Perm.Write (pTaken@31@01 x b))
        $Perm.No)
      (- $Perm.Write (pTaken@37@01 x b)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@37@01 x@18@01 b@20@01)) $Perm.No)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((x $Ref) (b Bool)) (!
  (=>
    (and (= x x@18@01) (= b b@20@01))
    (= (- $Perm.Write (pTaken@37@01 x b)) $Perm.No))
  
  :qid |quant-u-24561|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@39@01 $PSF<P>)
(declare-const s@40@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (and
  (not
    (=
      ($Snap.combine
        ($SortWrappers.$RefTo$Snap x@18@01)
        ($SortWrappers.BoolTo$Snap b@20@01))
      $Snap.unit))
  (=
    ($PSF.lookup_P (as sm@39@01  $PSF<P>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap x@18@01)
      ($SortWrappers.BoolTo$Snap b@20@01)))
    ($PSF.lookup_P (as sm@34@01  $PSF<P>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap x@18@01)
      ($SortWrappers.BoolTo$Snap b@20@01))))))
(assert (=>
  (ite
    (and
      (img@24@01 x@18@01 b@20@01)
      (Set_in (inv@23@01 x@18@01 b@20@01) xs@19@01))
    (< $Perm.No (- $Perm.Write (pTaken@31@01 x@18@01 b@20@01)))
    false)
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap x@18@01)
          ($SortWrappers.BoolTo$Snap b@20@01))
        $Snap.unit))
    (=
      ($PSF.lookup_P (as sm@39@01  $PSF<P>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap x@18@01)
        ($SortWrappers.BoolTo$Snap b@20@01)))
      ($PSF.lookup_P ($SortWrappers.$SnapTo$PSF<P> ($Snap.first $t@21@01)) ($Snap.combine
        ($SortWrappers.$RefTo$Snap x@18@01)
        ($SortWrappers.BoolTo$Snap b@20@01)))))))
(assert (P%trigger ($PSF.lookup_P (as sm@39@01  $PSF<P>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap x@18@01)
  ($SortWrappers.BoolTo$Snap b@20@01))) x@18@01 b@20@01))
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not b@20@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 14 | b@20@01 | live]
; [else-branch: 14 | !(b@20@01) | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 14 | b@20@01]
; [eval] (b ? x.f == 0 : x.g)
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not b@20@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 15 | b@20@01 | live]
; [else-branch: 15 | !(b@20@01) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 15 | b@20@01]
; [eval] x.f == 0
(pop) ; 9
(pop) ; 8
; Joined path conditions
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (and
  (not
    (=
      ($Snap.combine
        ($SortWrappers.$RefTo$Snap x@18@01)
        ($SortWrappers.BoolTo$Snap b@20@01))
      $Snap.unit))
  (=
    ($PSF.lookup_P (as sm@39@01  $PSF<P>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap x@18@01)
      ($SortWrappers.BoolTo$Snap b@20@01)))
    ($PSF.lookup_P (as sm@34@01  $PSF<P>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap x@18@01)
      ($SortWrappers.BoolTo$Snap b@20@01))))
  (=>
    (ite
      (and
        (img@24@01 x@18@01 b@20@01)
        (Set_in (inv@23@01 x@18@01 b@20@01) xs@19@01))
      (< $Perm.No (- $Perm.Write (pTaken@31@01 x@18@01 b@20@01)))
      false)
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap x@18@01)
            ($SortWrappers.BoolTo$Snap b@20@01))
          $Snap.unit))
      (=
        ($PSF.lookup_P (as sm@39@01  $PSF<P>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap x@18@01)
          ($SortWrappers.BoolTo$Snap b@20@01)))
        ($PSF.lookup_P ($SortWrappers.$SnapTo$PSF<P> ($Snap.first $t@21@01)) ($Snap.combine
          ($SortWrappers.$RefTo$Snap x@18@01)
          ($SortWrappers.BoolTo$Snap b@20@01))))))
  (P%trigger ($PSF.lookup_P (as sm@39@01  $PSF<P>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap x@18@01)
    ($SortWrappers.BoolTo$Snap b@20@01))) x@18@01 b@20@01)))
(push) ; 6
(assert (not (=
  ($SortWrappers.$SnapToInt ($PSF.lookup_P (as sm@39@01  $PSF<P>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap x@18@01)
    ($SortWrappers.BoolTo$Snap b@20@01))))
  0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapToInt ($PSF.lookup_P (as sm@39@01  $PSF<P>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap x@18@01)
    ($SortWrappers.BoolTo$Snap b@20@01))))
  0))
(pop) ; 5
(pop) ; 4
; [eval] !b
; [then-branch: 16 | !(b@20@01) | dead]
; [else-branch: 16 | b@20@01 | live]
(push) ; 4
; [else-branch: 16 | b@20@01]
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 11 | !(b@20@01)]
(assert (not b@20@01))
(assert (not (= x@18@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (P%trigger ($PSF.lookup_P (as sm@32@01  $PSF<P>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap x@18@01)
  ($SortWrappers.BoolTo$Snap b@20@01))) x@18@01 b@20@01))
; [then-branch: 17 | b@20@01 | dead]
; [else-branch: 17 | !(b@20@01) | live]
(set-option :timeout 0)
(push) ; 4
; [else-branch: 17 | !(b@20@01)]
(pop) ; 4
; [eval] !b
(push) ; 4
(set-option :timeout 10)
(assert (not b@20@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 18 | !(b@20@01) | live]
; [else-branch: 18 | b@20@01 | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 18 | !(b@20@01)]
; [exec]
; x.g := true
; [exec]
; fold acc(P(x, b), write)
; [then-branch: 19 | b@20@01 | dead]
; [else-branch: 19 | !(b@20@01) | live]
(push) ; 5
; [else-branch: 19 | !(b@20@01)]
(assert (P%trigger ($SortWrappers.BoolTo$Snap true) x@18@01 b@20@01))
(declare-const sm@41@01 $PSF<P>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_P (as sm@41@01  $PSF<P>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap x@18@01)
    ($SortWrappers.BoolTo$Snap b@20@01)))
  ($SortWrappers.BoolTo$Snap true)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@42@01 ((x $Ref) (b Bool)) $Perm
  (ite
    (and (= x x@18@01) (= b b@20@01))
    ($Perm.min
      (ite (and (= x x@18@01) (= b b@20@01)) $Perm.Write $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@43@01 ((x $Ref) (b Bool)) $Perm
  (ite
    (and (= x x@18@01) (= b b@20@01))
    ($Perm.min
      (ite
        (and (img@24@01 x b) (Set_in (inv@23@01 x b) xs@19@01))
        (- $Perm.Write (pTaken@31@01 x b))
        $Perm.No)
      (- $Perm.Write (pTaken@42@01 x b)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@42@01 x@18@01 b@20@01)) $Perm.No)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 500)
(assert (not (forall ((x $Ref) (b Bool)) (!
  (=>
    (and (= x x@18@01) (= b b@20@01))
    (= (- $Perm.Write (pTaken@42@01 x b)) $Perm.No))
  
  :qid |quant-u-24564|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (unfolding acc(P(x, b), write) in (b ? x.f == 0 : x.g))
(set-option :timeout 0)
(push) ; 6
; Precomputing data for removing quantified permissions
(define-fun pTaken@44@01 ((x $Ref) (b Bool)) $Perm
  (ite
    (and (= x x@18@01) (= b b@20@01))
    ($Perm.min
      (ite (and (= x x@18@01) (= b b@20@01)) $Perm.Write $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@45@01 ((x $Ref) (b Bool)) $Perm
  (ite
    (and (= x x@18@01) (= b b@20@01))
    ($Perm.min
      (ite
        (and (img@24@01 x b) (Set_in (inv@23@01 x b) xs@19@01))
        (- $Perm.Write (pTaken@31@01 x b))
        $Perm.No)
      (- $Perm.Write (pTaken@44@01 x b)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@44@01 x@18@01 b@20@01)) $Perm.No)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((x $Ref) (b Bool)) (!
  (=>
    (and (= x x@18@01) (= b b@20@01))
    (= (- $Perm.Write (pTaken@44@01 x b)) $Perm.No))
  
  :qid |quant-u-24567|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@46@01 $PSF<P>)
(declare-const s@47@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (and
  (not
    (=
      ($Snap.combine
        ($SortWrappers.$RefTo$Snap x@18@01)
        ($SortWrappers.BoolTo$Snap b@20@01))
      $Snap.unit))
  (=
    ($PSF.lookup_P (as sm@46@01  $PSF<P>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap x@18@01)
      ($SortWrappers.BoolTo$Snap b@20@01)))
    ($PSF.lookup_P (as sm@41@01  $PSF<P>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap x@18@01)
      ($SortWrappers.BoolTo$Snap b@20@01))))))
(assert (=>
  (ite
    (and
      (img@24@01 x@18@01 b@20@01)
      (Set_in (inv@23@01 x@18@01 b@20@01) xs@19@01))
    (< $Perm.No (- $Perm.Write (pTaken@31@01 x@18@01 b@20@01)))
    false)
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap x@18@01)
          ($SortWrappers.BoolTo$Snap b@20@01))
        $Snap.unit))
    (=
      ($PSF.lookup_P (as sm@46@01  $PSF<P>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap x@18@01)
        ($SortWrappers.BoolTo$Snap b@20@01)))
      ($PSF.lookup_P ($SortWrappers.$SnapTo$PSF<P> ($Snap.first $t@21@01)) ($Snap.combine
        ($SortWrappers.$RefTo$Snap x@18@01)
        ($SortWrappers.BoolTo$Snap b@20@01)))))))
(assert (P%trigger ($PSF.lookup_P (as sm@46@01  $PSF<P>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap x@18@01)
  ($SortWrappers.BoolTo$Snap b@20@01))) x@18@01 b@20@01))
; [then-branch: 20 | b@20@01 | dead]
; [else-branch: 20 | !(b@20@01) | live]
(set-option :timeout 0)
(push) ; 7
; [else-branch: 20 | !(b@20@01)]
; [eval] (b ? x.f == 0 : x.g)
(push) ; 8
; [then-branch: 21 | b@20@01 | dead]
; [else-branch: 21 | !(b@20@01) | live]
(push) ; 9
; [else-branch: 21 | !(b@20@01)]
(pop) ; 9
(pop) ; 8
; Joined path conditions
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (and
  (not
    (=
      ($Snap.combine
        ($SortWrappers.$RefTo$Snap x@18@01)
        ($SortWrappers.BoolTo$Snap b@20@01))
      $Snap.unit))
  (=
    ($PSF.lookup_P (as sm@46@01  $PSF<P>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap x@18@01)
      ($SortWrappers.BoolTo$Snap b@20@01)))
    ($PSF.lookup_P (as sm@41@01  $PSF<P>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap x@18@01)
      ($SortWrappers.BoolTo$Snap b@20@01))))
  (=>
    (ite
      (and
        (img@24@01 x@18@01 b@20@01)
        (Set_in (inv@23@01 x@18@01 b@20@01) xs@19@01))
      (< $Perm.No (- $Perm.Write (pTaken@31@01 x@18@01 b@20@01)))
      false)
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap x@18@01)
            ($SortWrappers.BoolTo$Snap b@20@01))
          $Snap.unit))
      (=
        ($PSF.lookup_P (as sm@46@01  $PSF<P>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap x@18@01)
          ($SortWrappers.BoolTo$Snap b@20@01)))
        ($PSF.lookup_P ($SortWrappers.$SnapTo$PSF<P> ($Snap.first $t@21@01)) ($Snap.combine
          ($SortWrappers.$RefTo$Snap x@18@01)
          ($SortWrappers.BoolTo$Snap b@20@01))))))
  (P%trigger ($PSF.lookup_P (as sm@46@01  $PSF<P>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap x@18@01)
    ($SortWrappers.BoolTo$Snap b@20@01))) x@18@01 b@20@01)))
(push) ; 6
(assert (not ($SortWrappers.$SnapToBool ($PSF.lookup_P (as sm@46@01  $PSF<P>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap x@18@01)
  ($SortWrappers.BoolTo$Snap b@20@01))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert ($SortWrappers.$SnapToBool ($PSF.lookup_P (as sm@46@01  $PSF<P>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap x@18@01)
  ($SortWrappers.BoolTo$Snap b@20@01)))))
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
