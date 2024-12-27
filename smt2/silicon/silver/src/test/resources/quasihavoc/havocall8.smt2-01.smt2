(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-27 01:52:28
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
(declare-sort Set<$Snap> 0)
(declare-sort $PSF<Pred> 0)
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
(declare-fun $SortWrappers.$PSF<Pred>To$Snap ($PSF<Pred>) $Snap)
(declare-fun $SortWrappers.$SnapTo$PSF<Pred> ($Snap) $PSF<Pred>)
(assert (forall ((x $PSF<Pred>)) (!
    (= x ($SortWrappers.$SnapTo$PSF<Pred>($SortWrappers.$PSF<Pred>To$Snap x)))
    :pattern (($SortWrappers.$PSF<Pred>To$Snap x))
    :qid |$Snap.$SnapTo$PSF<Pred>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$PSF<Pred>To$Snap($SortWrappers.$SnapTo$PSF<Pred> x)))
    :pattern (($SortWrappers.$SnapTo$PSF<Pred> x))
    :qid |$Snap.$PSF<Pred>To$SnapTo$PSF<Pred>|
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
; /predicate_snap_functions_declarations.smt2 [Pred: Snap]
(declare-fun $PSF.domain_Pred ($PSF<Pred>) Set<$Snap>)
(declare-fun $PSF.lookup_Pred ($PSF<Pred> $Snap) $Snap)
(declare-fun $PSF.after_Pred ($PSF<Pred> $PSF<Pred>) Bool)
(declare-fun $PSF.loc_Pred ($Snap $Snap) Bool)
(declare-fun $PSF.perm_Pred ($PPM $Snap) $Perm)
(declare-const $psfTOP_Pred $PSF<Pred>)
; Declaring symbols related to program functions (from program analysis)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun Pred%trigger ($Snap $Ref Int) Bool)
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
; /predicate_snap_functions_axioms.smt2 [Pred: Snap]
(assert (forall ((vs $PSF<Pred>) (ws $PSF<Pred>)) (!
    (=>
      (and
        (Set_equal ($PSF.domain_Pred vs) ($PSF.domain_Pred ws))
        (forall ((x $Snap)) (!
          (=>
            (Set_in x ($PSF.domain_Pred vs))
            (= ($PSF.lookup_Pred vs x) ($PSF.lookup_Pred ws x)))
          :pattern (($PSF.lookup_Pred vs x) ($PSF.lookup_Pred ws x))
          :qid |qp.$PSF<Pred>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$PSF<Pred>To$Snap vs)
              ($SortWrappers.$PSF<Pred>To$Snap ws)
              )
    :qid |qp.$PSF<Pred>-eq-outer|
    )))
(assert (forall ((s $Snap) (pm $PPM)) (!
    ($Perm.isValidVar ($PSF.perm_Pred pm s))
    :pattern (($PSF.perm_Pred pm s)))))
(assert (forall ((s $Snap) (f $Snap)) (!
    (= ($PSF.loc_Pred f s) true)
    :pattern (($PSF.loc_Pred f s)))))
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
; ---------- foo ----------
(declare-const as@0@01 Set<$Ref>)
(declare-const bs@1@01 Set<$Ref>)
(declare-const x@2@01 $Ref)
(declare-const y@3@01 $Ref)
(declare-const as@4@01 Set<$Ref>)
(declare-const bs@5@01 Set<$Ref>)
(declare-const x@6@01 $Ref)
(declare-const y@7@01 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@8@01 $Snap)
(assert (= $t@8@01 ($Snap.combine ($Snap.first $t@8@01) ($Snap.second $t@8@01))))
(declare-const a@9@01 $Ref)
(push) ; 2
; [eval] (a in as)
(assert (Set_in a@9@01 as@4@01))
(pop) ; 2
(declare-fun inv@10@01 ($Ref Int) $Ref)
(declare-fun img@11@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((a1@9@01 $Ref) (a2@9@01 $Ref)) (!
  (=>
    (and (Set_in a1@9@01 as@4@01) (Set_in a2@9@01 as@4@01) (= a1@9@01 a2@9@01))
    (= a1@9@01 a2@9@01))
  
  :qid |Pred-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((a@9@01 $Ref)) (!
  (=>
    (Set_in a@9@01 as@4@01)
    (and (= (inv@10@01 a@9@01 3) a@9@01) (img@11@01 a@9@01 3)))
  :pattern ((Set_in a@9@01 as@4@01))
  :pattern ((inv@10@01 a@9@01 3))
  :pattern ((img@11@01 a@9@01 3))
  :qid |quant-u-13332|)))
(assert (forall ((x $Ref) (i Int)) (!
  (=>
    (and (img@11@01 x i) (Set_in (inv@10@01 x i) as@4@01))
    (and (= (inv@10@01 x i) x) (= 3 i)))
  :pattern ((inv@10@01 x i))
  :qid |Pred-fctOfInv|)))
; Permissions are non-negative
(assert (=
  ($Snap.second $t@8@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@8@01))
    ($Snap.second ($Snap.second $t@8@01)))))
(declare-const b@12@01 $Ref)
(push) ; 2
; [eval] (b in bs)
(assert (Set_in b@12@01 bs@5@01))
(pop) ; 2
(declare-fun inv@13@01 ($Ref Int) $Ref)
(declare-fun img@14@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((b1@12@01 $Ref) (b2@12@01 $Ref)) (!
  (=>
    (and
      (Set_in b1@12@01 bs@5@01)
      (Set_in b2@12@01 bs@5@01)
      (= b1@12@01 b2@12@01))
    (= b1@12@01 b2@12@01))
  
  :qid |Pred-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((b@12@01 $Ref)) (!
  (=>
    (Set_in b@12@01 bs@5@01)
    (and (= (inv@13@01 b@12@01 3) b@12@01) (img@14@01 b@12@01 3)))
  :pattern ((Set_in b@12@01 bs@5@01))
  :pattern ((inv@13@01 b@12@01 3))
  :pattern ((img@14@01 b@12@01 3))
  :qid |quant-u-13334|)))
(assert (forall ((x $Ref) (i Int)) (!
  (=>
    (and (img@14@01 x i) (Set_in (inv@13@01 x i) bs@5@01))
    (and (= (inv@13@01 x i) x) (= 3 i)))
  :pattern ((inv@13@01 x i))
  :qid |Pred-fctOfInv|)))
; Permissions are non-negative
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((x $Ref) (i Int)) (!
  (and
    (= b@12@01 a@9@01)
    (=
      (and (img@14@01 x i) (Set_in (inv@13@01 x i) bs@5@01))
      (and (img@11@01 x i) (Set_in (inv@10@01 x i) as@4@01))))
  
  :qid |quant-u-13335|))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second $t@8@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@8@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@8@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@8@01))) $Snap.unit))
; [eval] (x in as)
(assert (Set_in x@6@01 as@4@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@8@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@8@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@8@01)))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@8@01)))) $Snap.unit))
; [eval] !((x in bs))
; [eval] (x in bs)
(assert (not (Set_in x@6@01 bs@5@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@8@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@8@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@8@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@8@01)))))
  $Snap.unit))
; [eval] (y in bs)
(assert (Set_in y@7@01 bs@5@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@8@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@8@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@8@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@8@01))))))
  $Snap.unit))
; [eval] (unfolding acc(Pred(x, 3), write) in x.f == 42)
(set-option :timeout 0)
(push) ; 2
; Precomputing data for removing quantified permissions
(define-fun pTaken@15@01 ((x $Ref) (i Int)) $Perm
  (ite
    (and (= x x@6@01) (= i 3))
    ($Perm.min
      (ite
        (and (img@11@01 x i) (Set_in (inv@10@01 x i) as@4@01))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@16@01 ((x $Ref) (i Int)) $Perm
  (ite
    (and (= x x@6@01) (= i 3))
    ($Perm.min
      (ite
        (and (img@14@01 x i) (Set_in (inv@13@01 x i) bs@5@01))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@15@01 x i)))
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
(assert (not (forall ((x $Ref) (i Int)) (!
  (=
    (-
      (ite
        (and (img@11@01 x i) (Set_in (inv@10@01 x i) as@4@01))
        $Perm.Write
        $Perm.No)
      (pTaken@15@01 x i))
    $Perm.No)
  
  :qid |quant-u-13337|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((x $Ref) (i Int)) (!
  (= (pTaken@15@01 x i) $Perm.No)
  
  :qid |quant-u-13338|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((x $Ref) (i Int)) (!
  (=> (and (= x x@6@01) (= i 3)) (= (- $Perm.Write (pTaken@15@01 x i)) $Perm.No))
  
  :qid |quant-u-13339|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@17@01 $PSF<Pred>)
(declare-const s@18@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and (img@11@01 x@6@01 3) (Set_in (inv@10@01 x@6@01 3) as@4@01))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap x@6@01)
          ($SortWrappers.IntTo$Snap 3))
        $Snap.unit))
    (=
      ($PSF.lookup_Pred (as sm@17@01  $PSF<Pred>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap x@6@01)
        ($SortWrappers.IntTo$Snap 3)))
      ($PSF.lookup_Pred ($SortWrappers.$SnapTo$PSF<Pred> ($Snap.first $t@8@01)) ($Snap.combine
        ($SortWrappers.$RefTo$Snap x@6@01)
        ($SortWrappers.IntTo$Snap 3)))))))
(assert (=>
  (and (img@14@01 x@6@01 3) (Set_in (inv@13@01 x@6@01 3) bs@5@01))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap x@6@01)
          ($SortWrappers.IntTo$Snap 3))
        $Snap.unit))
    (=
      ($PSF.lookup_Pred (as sm@17@01  $PSF<Pred>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap x@6@01)
        ($SortWrappers.IntTo$Snap 3)))
      ($PSF.lookup_Pred ($SortWrappers.$SnapTo$PSF<Pred> ($Snap.first ($Snap.second $t@8@01))) ($Snap.combine
        ($SortWrappers.$RefTo$Snap x@6@01)
        ($SortWrappers.IntTo$Snap 3)))))))
(assert (Pred%trigger ($PSF.lookup_Pred (as sm@17@01  $PSF<Pred>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap x@6@01)
  ($SortWrappers.IntTo$Snap 3))) x@6@01 3))
(assert (=
  ($PSF.lookup_Pred (as sm@17@01  $PSF<Pred>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap x@6@01)
    ($SortWrappers.IntTo$Snap 3)))
  ($Snap.combine
    ($Snap.first ($PSF.lookup_Pred (as sm@17@01  $PSF<Pred>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap x@6@01)
      ($SortWrappers.IntTo$Snap 3))))
    ($Snap.second ($PSF.lookup_Pred (as sm@17@01  $PSF<Pred>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap x@6@01)
      ($SortWrappers.IntTo$Snap 3)))))))
(assert (not (= x@6@01 $Ref.null)))
(assert (=
  ($Snap.second ($PSF.lookup_Pred (as sm@17@01  $PSF<Pred>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap x@6@01)
    ($SortWrappers.IntTo$Snap 3))))
  $Snap.unit))
; [eval] x.f >= i
(assert (>=
  ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_Pred (as sm@17@01  $PSF<Pred>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap x@6@01)
    ($SortWrappers.IntTo$Snap 3)))))
  3))
; [eval] x.f == 42
(pop) ; 2
; Joined path conditions
(assert (and
  (=>
    (and (img@11@01 x@6@01 3) (Set_in (inv@10@01 x@6@01 3) as@4@01))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap x@6@01)
            ($SortWrappers.IntTo$Snap 3))
          $Snap.unit))
      (=
        ($PSF.lookup_Pred (as sm@17@01  $PSF<Pred>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap x@6@01)
          ($SortWrappers.IntTo$Snap 3)))
        ($PSF.lookup_Pred ($SortWrappers.$SnapTo$PSF<Pred> ($Snap.first $t@8@01)) ($Snap.combine
          ($SortWrappers.$RefTo$Snap x@6@01)
          ($SortWrappers.IntTo$Snap 3))))))
  (=>
    (and (img@14@01 x@6@01 3) (Set_in (inv@13@01 x@6@01 3) bs@5@01))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap x@6@01)
            ($SortWrappers.IntTo$Snap 3))
          $Snap.unit))
      (=
        ($PSF.lookup_Pred (as sm@17@01  $PSF<Pred>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap x@6@01)
          ($SortWrappers.IntTo$Snap 3)))
        ($PSF.lookup_Pred ($SortWrappers.$SnapTo$PSF<Pred> ($Snap.first ($Snap.second $t@8@01))) ($Snap.combine
          ($SortWrappers.$RefTo$Snap x@6@01)
          ($SortWrappers.IntTo$Snap 3))))))
  (Pred%trigger ($PSF.lookup_Pred (as sm@17@01  $PSF<Pred>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap x@6@01)
    ($SortWrappers.IntTo$Snap 3))) x@6@01 3)
  (=
    ($PSF.lookup_Pred (as sm@17@01  $PSF<Pred>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap x@6@01)
      ($SortWrappers.IntTo$Snap 3)))
    ($Snap.combine
      ($Snap.first ($PSF.lookup_Pred (as sm@17@01  $PSF<Pred>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap x@6@01)
        ($SortWrappers.IntTo$Snap 3))))
      ($Snap.second ($PSF.lookup_Pred (as sm@17@01  $PSF<Pred>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap x@6@01)
        ($SortWrappers.IntTo$Snap 3))))))
  (not (= x@6@01 $Ref.null))
  (=
    ($Snap.second ($PSF.lookup_Pred (as sm@17@01  $PSF<Pred>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap x@6@01)
      ($SortWrappers.IntTo$Snap 3))))
    $Snap.unit)
  (>=
    ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_Pred (as sm@17@01  $PSF<Pred>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap x@6@01)
      ($SortWrappers.IntTo$Snap 3)))))
    3)))
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_Pred (as sm@17@01  $PSF<Pred>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap x@6@01)
    ($SortWrappers.IntTo$Snap 3)))))
  42))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@8@01))))))
  $Snap.unit))
; [eval] (unfolding acc(Pred(y, 3), write) in y.f == 42)
(set-option :timeout 0)
(push) ; 2
; Precomputing data for removing quantified permissions
(define-fun pTaken@19@01 ((x $Ref) (i Int)) $Perm
  (ite
    (and (= x y@7@01) (= i 3))
    ($Perm.min
      (ite
        (and (img@11@01 x i) (Set_in (inv@10@01 x i) as@4@01))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@20@01 ((x $Ref) (i Int)) $Perm
  (ite
    (and (= x y@7@01) (= i 3))
    ($Perm.min
      (ite
        (and (img@14@01 x i) (Set_in (inv@13@01 x i) bs@5@01))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@19@01 x i)))
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
(assert (not (forall ((x $Ref) (i Int)) (!
  (=
    (-
      (ite
        (and (img@11@01 x i) (Set_in (inv@10@01 x i) as@4@01))
        $Perm.Write
        $Perm.No)
      (pTaken@19@01 x i))
    $Perm.No)
  
  :qid |quant-u-13341|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((x $Ref) (i Int)) (!
  (= (pTaken@19@01 x i) $Perm.No)
  
  :qid |quant-u-13342|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((x $Ref) (i Int)) (!
  (=> (and (= x y@7@01) (= i 3)) (= (- $Perm.Write (pTaken@19@01 x i)) $Perm.No))
  
  :qid |quant-u-13343|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((x $Ref) (i Int)) (!
  (=
    (-
      (ite
        (and (img@14@01 x i) (Set_in (inv@13@01 x i) bs@5@01))
        $Perm.Write
        $Perm.No)
      (pTaken@20@01 x i))
    $Perm.No)
  
  :qid |quant-u-13344|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((x $Ref) (i Int)) (!
  (= (pTaken@20@01 x i) $Perm.No)
  
  :qid |quant-u-13345|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((x $Ref) (i Int)) (!
  (=>
    (and (= x y@7@01) (= i 3))
    (= (- (- $Perm.Write (pTaken@19@01 x i)) (pTaken@20@01 x i)) $Perm.No))
  
  :qid |quant-u-13346|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and (img@11@01 y@7@01 3) (Set_in (inv@10@01 y@7@01 3) as@4@01))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap y@7@01)
          ($SortWrappers.IntTo$Snap 3))
        $Snap.unit))
    (=
      ($PSF.lookup_Pred (as sm@17@01  $PSF<Pred>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap y@7@01)
        ($SortWrappers.IntTo$Snap 3)))
      ($PSF.lookup_Pred ($SortWrappers.$SnapTo$PSF<Pred> ($Snap.first $t@8@01)) ($Snap.combine
        ($SortWrappers.$RefTo$Snap y@7@01)
        ($SortWrappers.IntTo$Snap 3)))))))
(assert (=>
  (and (img@14@01 y@7@01 3) (Set_in (inv@13@01 y@7@01 3) bs@5@01))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap y@7@01)
          ($SortWrappers.IntTo$Snap 3))
        $Snap.unit))
    (=
      ($PSF.lookup_Pred (as sm@17@01  $PSF<Pred>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap y@7@01)
        ($SortWrappers.IntTo$Snap 3)))
      ($PSF.lookup_Pred ($SortWrappers.$SnapTo$PSF<Pred> ($Snap.first ($Snap.second $t@8@01))) ($Snap.combine
        ($SortWrappers.$RefTo$Snap y@7@01)
        ($SortWrappers.IntTo$Snap 3)))))))
(assert (Pred%trigger ($PSF.lookup_Pred (as sm@17@01  $PSF<Pred>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap y@7@01)
  ($SortWrappers.IntTo$Snap 3))) y@7@01 3))
(assert (=
  ($PSF.lookup_Pred (as sm@17@01  $PSF<Pred>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap y@7@01)
    ($SortWrappers.IntTo$Snap 3)))
  ($Snap.combine
    ($Snap.first ($PSF.lookup_Pred (as sm@17@01  $PSF<Pred>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap y@7@01)
      ($SortWrappers.IntTo$Snap 3))))
    ($Snap.second ($PSF.lookup_Pred (as sm@17@01  $PSF<Pred>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap y@7@01)
      ($SortWrappers.IntTo$Snap 3)))))))
(assert (not (= y@7@01 $Ref.null)))
(assert (=
  ($Snap.second ($PSF.lookup_Pred (as sm@17@01  $PSF<Pred>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap y@7@01)
    ($SortWrappers.IntTo$Snap 3))))
  $Snap.unit))
; [eval] x.f >= i
(assert (>=
  ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_Pred (as sm@17@01  $PSF<Pred>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap y@7@01)
    ($SortWrappers.IntTo$Snap 3)))))
  3))
; [eval] y.f == 42
(pop) ; 2
; Joined path conditions
(assert (and
  (=>
    (and (img@11@01 y@7@01 3) (Set_in (inv@10@01 y@7@01 3) as@4@01))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap y@7@01)
            ($SortWrappers.IntTo$Snap 3))
          $Snap.unit))
      (=
        ($PSF.lookup_Pred (as sm@17@01  $PSF<Pred>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap y@7@01)
          ($SortWrappers.IntTo$Snap 3)))
        ($PSF.lookup_Pred ($SortWrappers.$SnapTo$PSF<Pred> ($Snap.first $t@8@01)) ($Snap.combine
          ($SortWrappers.$RefTo$Snap y@7@01)
          ($SortWrappers.IntTo$Snap 3))))))
  (=>
    (and (img@14@01 y@7@01 3) (Set_in (inv@13@01 y@7@01 3) bs@5@01))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap y@7@01)
            ($SortWrappers.IntTo$Snap 3))
          $Snap.unit))
      (=
        ($PSF.lookup_Pred (as sm@17@01  $PSF<Pred>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap y@7@01)
          ($SortWrappers.IntTo$Snap 3)))
        ($PSF.lookup_Pred ($SortWrappers.$SnapTo$PSF<Pred> ($Snap.first ($Snap.second $t@8@01))) ($Snap.combine
          ($SortWrappers.$RefTo$Snap y@7@01)
          ($SortWrappers.IntTo$Snap 3))))))
  (Pred%trigger ($PSF.lookup_Pred (as sm@17@01  $PSF<Pred>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap y@7@01)
    ($SortWrappers.IntTo$Snap 3))) y@7@01 3)
  (=
    ($PSF.lookup_Pred (as sm@17@01  $PSF<Pred>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap y@7@01)
      ($SortWrappers.IntTo$Snap 3)))
    ($Snap.combine
      ($Snap.first ($PSF.lookup_Pred (as sm@17@01  $PSF<Pred>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap y@7@01)
        ($SortWrappers.IntTo$Snap 3))))
      ($Snap.second ($PSF.lookup_Pred (as sm@17@01  $PSF<Pred>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap y@7@01)
        ($SortWrappers.IntTo$Snap 3))))))
  (not (= y@7@01 $Ref.null))
  (=
    ($Snap.second ($PSF.lookup_Pred (as sm@17@01  $PSF<Pred>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap y@7@01)
      ($SortWrappers.IntTo$Snap 3))))
    $Snap.unit)
  (>=
    ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_Pred (as sm@17@01  $PSF<Pred>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap y@7@01)
      ($SortWrappers.IntTo$Snap 3)))))
    3)))
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_Pred (as sm@17@01  $PSF<Pred>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap y@7@01)
    ($SortWrappers.IntTo$Snap 3)))))
  42))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; quasihavocall z: Ref :: (z in bs) ==> Pred(z, 3)
(declare-const z@21@01 $Ref)
(push) ; 3
; [eval] (z in bs)
(assert (Set_in z@21@01 bs@5@01))
(pop) ; 3
; Check havocall receiver injectivity
(push) ; 3
(assert (not (forall ((z1@21@01 $Ref) (z2@21@01 $Ref)) (!
  (=>
    (and
      (Set_in z1@21@01 bs@5@01)
      (Set_in z2@21@01 bs@5@01)
      (= z1@21@01 z2@21@01))
    (= z1@21@01 z2@21@01))
  
  :qid |Pred-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-fun inv@22@01 ($Ref Int) $Ref)
(declare-fun img@23@01 ($Ref Int) Bool)
; Definitional axioms for havocall inverse functions
(assert (forall ((z@21@01 $Ref)) (!
  (=>
    (Set_in z@21@01 bs@5@01)
    (and (= (inv@22@01 z@21@01 3) z@21@01) (img@23@01 z@21@01 3)))
  :pattern ((Set_in z@21@01 bs@5@01))
  :pattern ((inv@22@01 z@21@01 3))
  :pattern ((img@23@01 z@21@01 3))
  :qid |Pred-invOfFct|)))
(assert (forall ((x $Ref) (i Int)) (!
  (=>
    (and (img@23@01 x i) (Set_in (inv@22@01 x i) bs@5@01))
    (and (= (inv@22@01 x i) x) (= 3 i)))
  :pattern ((inv@22@01 x i))
  :qid |Pred-fctOfInv|)))
(declare-const sm@24@01 $PSF<Pred>)
; axiomatized snapshot map after havoc
(assert (forall ((s@$ $Snap)) (!
  (=>
    (not
      (and
        (Set_in (inv@22@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)) ($SortWrappers.$SnapToInt ($Snap.second s@$))) bs@5@01)
        (img@23@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)) ($SortWrappers.$SnapToInt ($Snap.second s@$)))))
    (=
      ($PSF.lookup_Pred ($SortWrappers.$SnapTo$PSF<Pred> ($Snap.first $t@8@01)) s@$)
      ($PSF.lookup_Pred (as sm@24@01  $PSF<Pred>) s@$)))
  :pattern (($PSF.lookup_Pred (as sm@24@01  $PSF<Pred>) s@$))
  :pattern (($PSF.lookup_Pred ($SortWrappers.$SnapTo$PSF<Pred> ($Snap.first $t@8@01)) s@$))
  :qid |qp.smValDef0|)))
(declare-const sm@25@01 $PSF<Pred>)
; axiomatized snapshot map after havoc
(assert (forall ((s@$ $Snap)) (!
  (=>
    (not
      (and
        (Set_in (inv@22@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)) ($SortWrappers.$SnapToInt ($Snap.second s@$))) bs@5@01)
        (img@23@01 ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)) ($SortWrappers.$SnapToInt ($Snap.second s@$)))))
    (=
      ($PSF.lookup_Pred ($SortWrappers.$SnapTo$PSF<Pred> ($Snap.first ($Snap.second $t@8@01))) s@$)
      ($PSF.lookup_Pred (as sm@25@01  $PSF<Pred>) s@$)))
  :pattern (($PSF.lookup_Pred (as sm@25@01  $PSF<Pred>) s@$))
  :pattern (($PSF.lookup_Pred ($SortWrappers.$SnapTo$PSF<Pred> ($Snap.first ($Snap.second $t@8@01))) s@$))
  :qid |qp.smValDef1|)))
; [exec]
; unfold acc(Pred(x, 3), write)
; Precomputing data for removing quantified permissions
(define-fun pTaken@26@01 ((x $Ref) (i Int)) $Perm
  (ite
    (and (= x x@6@01) (= i 3))
    ($Perm.min
      (ite
        (and (img@14@01 x i) (Set_in (inv@13@01 x i) bs@5@01))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@27@01 ((x $Ref) (i Int)) $Perm
  (ite
    (and (= x x@6@01) (= i 3))
    ($Perm.min
      (ite
        (and (img@11@01 x i) (Set_in (inv@10@01 x i) as@4@01))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@26@01 x i)))
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
(assert (not (forall ((x $Ref) (i Int)) (!
  (=
    (-
      (ite
        (and (img@14@01 x i) (Set_in (inv@13@01 x i) bs@5@01))
        $Perm.Write
        $Perm.No)
      (pTaken@26@01 x i))
    $Perm.No)
  
  :qid |quant-u-13348|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((x $Ref) (i Int)) (!
  (= (pTaken@26@01 x i) $Perm.No)
  
  :qid |quant-u-13349|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((x $Ref) (i Int)) (!
  (=> (and (= x x@6@01) (= i 3)) (= (- $Perm.Write (pTaken@26@01 x i)) $Perm.No))
  
  :qid |quant-u-13350|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((x $Ref) (i Int)) (!
  (=
    (-
      (ite
        (and (img@11@01 x i) (Set_in (inv@10@01 x i) as@4@01))
        $Perm.Write
        $Perm.No)
      (pTaken@27@01 x i))
    $Perm.No)
  
  :qid |quant-u-13351|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((x $Ref) (i Int)) (!
  (= (pTaken@27@01 x i) $Perm.No)
  
  :qid |quant-u-13352|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((x $Ref) (i Int)) (!
  (=>
    (and (= x x@6@01) (= i 3))
    (= (- (- $Perm.Write (pTaken@26@01 x i)) (pTaken@27@01 x i)) $Perm.No))
  
  :qid |quant-u-13353|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@28@01 $PSF<Pred>)
(declare-const s@29@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and (img@14@01 x@6@01 3) (Set_in (inv@13@01 x@6@01 3) bs@5@01))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap x@6@01)
          ($SortWrappers.IntTo$Snap 3))
        $Snap.unit))
    (=
      ($PSF.lookup_Pred (as sm@28@01  $PSF<Pred>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap x@6@01)
        ($SortWrappers.IntTo$Snap 3)))
      ($PSF.lookup_Pred (as sm@25@01  $PSF<Pred>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap x@6@01)
        ($SortWrappers.IntTo$Snap 3)))))))
(assert (=>
  (and (img@11@01 x@6@01 3) (Set_in (inv@10@01 x@6@01 3) as@4@01))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap x@6@01)
          ($SortWrappers.IntTo$Snap 3))
        $Snap.unit))
    (=
      ($PSF.lookup_Pred (as sm@28@01  $PSF<Pred>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap x@6@01)
        ($SortWrappers.IntTo$Snap 3)))
      ($PSF.lookup_Pred (as sm@24@01  $PSF<Pred>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap x@6@01)
        ($SortWrappers.IntTo$Snap 3)))))))
(assert (=
  ($PSF.lookup_Pred (as sm@28@01  $PSF<Pred>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap x@6@01)
    ($SortWrappers.IntTo$Snap 3)))
  ($Snap.combine
    ($Snap.first ($PSF.lookup_Pred (as sm@28@01  $PSF<Pred>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap x@6@01)
      ($SortWrappers.IntTo$Snap 3))))
    ($Snap.second ($PSF.lookup_Pred (as sm@28@01  $PSF<Pred>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap x@6@01)
      ($SortWrappers.IntTo$Snap 3)))))))
(assert (=
  ($Snap.second ($PSF.lookup_Pred (as sm@28@01  $PSF<Pred>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap x@6@01)
    ($SortWrappers.IntTo$Snap 3))))
  $Snap.unit))
; [eval] x.f >= i
(assert (>=
  ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_Pred (as sm@28@01  $PSF<Pred>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap x@6@01)
    ($SortWrappers.IntTo$Snap 3)))))
  3))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (Pred%trigger ($PSF.lookup_Pred (as sm@28@01  $PSF<Pred>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap x@6@01)
  ($SortWrappers.IntTo$Snap 3))) x@6@01 3))
; [exec]
; assert x.f == 42
; [eval] x.f == 42
(set-option :timeout 0)
(push) ; 3
(assert (not (=
  ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_Pred (as sm@28@01  $PSF<Pred>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap x@6@01)
    ($SortWrappers.IntTo$Snap 3)))))
  42)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_Pred (as sm@28@01  $PSF<Pred>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap x@6@01)
    ($SortWrappers.IntTo$Snap 3)))))
  42))
; [exec]
; unfold acc(Pred(y, 3), write)
; Precomputing data for removing quantified permissions
(define-fun pTaken@30@01 ((x $Ref) (i Int)) $Perm
  (ite
    (and (= x y@7@01) (= i 3))
    ($Perm.min
      (ite
        (and (img@11@01 x i) (Set_in (inv@10@01 x i) as@4@01))
        (- $Perm.Write (pTaken@27@01 x i))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@31@01 ((x $Ref) (i Int)) $Perm
  (ite
    (and (= x y@7@01) (= i 3))
    ($Perm.min
      (ite
        (and (img@14@01 x i) (Set_in (inv@13@01 x i) bs@5@01))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@30@01 x i)))
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
(assert (not (forall ((x $Ref) (i Int)) (!
  (=
    (-
      (ite
        (and (img@11@01 x i) (Set_in (inv@10@01 x i) as@4@01))
        (- $Perm.Write (pTaken@27@01 x i))
        $Perm.No)
      (pTaken@30@01 x i))
    $Perm.No)
  
  :qid |quant-u-13355|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((x $Ref) (i Int)) (!
  (= (pTaken@30@01 x i) $Perm.No)
  
  :qid |quant-u-13356|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((x $Ref) (i Int)) (!
  (=> (and (= x y@7@01) (= i 3)) (= (- $Perm.Write (pTaken@30@01 x i)) $Perm.No))
  
  :qid |quant-u-13357|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((x $Ref) (i Int)) (!
  (=
    (-
      (ite
        (and (img@14@01 x i) (Set_in (inv@13@01 x i) bs@5@01))
        $Perm.Write
        $Perm.No)
      (pTaken@31@01 x i))
    $Perm.No)
  
  :qid |quant-u-13358|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((x $Ref) (i Int)) (!
  (= (pTaken@31@01 x i) $Perm.No)
  
  :qid |quant-u-13359|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((x $Ref) (i Int)) (!
  (=>
    (and (= x y@7@01) (= i 3))
    (= (- (- $Perm.Write (pTaken@30@01 x i)) (pTaken@31@01 x i)) $Perm.No))
  
  :qid |quant-u-13360|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@32@01 $PSF<Pred>)
(declare-const s@33@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (ite
    (and (img@11@01 y@7@01 3) (Set_in (inv@10@01 y@7@01 3) as@4@01))
    (< $Perm.No (- $Perm.Write (pTaken@27@01 y@7@01 3)))
    false)
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap y@7@01)
          ($SortWrappers.IntTo$Snap 3))
        $Snap.unit))
    (=
      ($PSF.lookup_Pred (as sm@32@01  $PSF<Pred>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap y@7@01)
        ($SortWrappers.IntTo$Snap 3)))
      ($PSF.lookup_Pred (as sm@24@01  $PSF<Pred>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap y@7@01)
        ($SortWrappers.IntTo$Snap 3)))))))
(assert (=>
  (and (img@14@01 y@7@01 3) (Set_in (inv@13@01 y@7@01 3) bs@5@01))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap y@7@01)
          ($SortWrappers.IntTo$Snap 3))
        $Snap.unit))
    (=
      ($PSF.lookup_Pred (as sm@32@01  $PSF<Pred>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap y@7@01)
        ($SortWrappers.IntTo$Snap 3)))
      ($PSF.lookup_Pred (as sm@25@01  $PSF<Pred>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap y@7@01)
        ($SortWrappers.IntTo$Snap 3)))))))
(assert (=
  ($PSF.lookup_Pred (as sm@32@01  $PSF<Pred>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap y@7@01)
    ($SortWrappers.IntTo$Snap 3)))
  ($Snap.combine
    ($Snap.first ($PSF.lookup_Pred (as sm@32@01  $PSF<Pred>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap y@7@01)
      ($SortWrappers.IntTo$Snap 3))))
    ($Snap.second ($PSF.lookup_Pred (as sm@32@01  $PSF<Pred>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap y@7@01)
      ($SortWrappers.IntTo$Snap 3)))))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= x@6@01 y@7@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($PSF.lookup_Pred (as sm@32@01  $PSF<Pred>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap y@7@01)
    ($SortWrappers.IntTo$Snap 3))))
  $Snap.unit))
; [eval] x.f >= i
(assert (>=
  ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_Pred (as sm@32@01  $PSF<Pred>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap y@7@01)
    ($SortWrappers.IntTo$Snap 3)))))
  3))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (Pred%trigger ($PSF.lookup_Pred (as sm@32@01  $PSF<Pred>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap y@7@01)
  ($SortWrappers.IntTo$Snap 3))) y@7@01 3))
; [exec]
; assert y.f == 42
; [eval] y.f == 42
(set-option :timeout 0)
(push) ; 3
(assert (not (=
  ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_Pred (as sm@32@01  $PSF<Pred>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap y@7@01)
    ($SortWrappers.IntTo$Snap 3)))))
  42)))
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
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((x $Ref) (i Int)) (!
  (and
    (= b@12@01 a@9@01)
    (=
      (and (img@14@01 x i) (Set_in (inv@13@01 x i) bs@5@01))
      (and (img@11@01 x i) (Set_in (inv@10@01 x i) as@4@01))))
  
  :qid |quant-u-13361|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= y@7@01 x@6@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_Pred (as sm@28@01  $PSF<Pred>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap x@6@01)
      ($SortWrappers.IntTo$Snap 3)))))
    ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_Pred (as sm@32@01  $PSF<Pred>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap y@7@01)
      ($SortWrappers.IntTo$Snap 3)))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_Pred (as sm@32@01  $PSF<Pred>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap y@7@01)
      ($SortWrappers.IntTo$Snap 3)))))
    ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_Pred (as sm@28@01  $PSF<Pred>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap x@6@01)
      ($SortWrappers.IntTo$Snap 3)))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (and (not (= x@6@01 y@7@01)) (not (= y@7@01 x@6@01))))
; [eval] y.f == 42
(set-option :timeout 0)
(push) ; 3
(assert (not (=
  ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_Pred (as sm@32@01  $PSF<Pred>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap y@7@01)
    ($SortWrappers.IntTo$Snap 3)))))
  42)))
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
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((x $Ref) (i Int)) (!
  (and
    (= b@12@01 a@9@01)
    (=
      (and (img@14@01 x i) (Set_in (inv@13@01 x i) bs@5@01))
      (and (img@11@01 x i) (Set_in (inv@10@01 x i) as@4@01))))
  
  :qid |quant-u-13362|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= y@7@01 x@6@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_Pred (as sm@28@01  $PSF<Pred>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap x@6@01)
      ($SortWrappers.IntTo$Snap 3)))))
    ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_Pred (as sm@32@01  $PSF<Pred>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap y@7@01)
      ($SortWrappers.IntTo$Snap 3)))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_Pred (as sm@32@01  $PSF<Pred>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap y@7@01)
      ($SortWrappers.IntTo$Snap 3)))))
    ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_Pred (as sm@28@01  $PSF<Pred>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap x@6@01)
      ($SortWrappers.IntTo$Snap 3)))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (and (not (= x@6@01 y@7@01)) (not (= y@7@01 x@6@01))))
; [eval] y.f == 42
(set-option :timeout 0)
(push) ; 3
(assert (not (=
  ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_Pred (as sm@32@01  $PSF<Pred>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap y@7@01)
    ($SortWrappers.IntTo$Snap 3)))))
  42)))
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
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((x $Ref) (i Int)) (!
  (and
    (= b@12@01 a@9@01)
    (=
      (and (img@14@01 x i) (Set_in (inv@13@01 x i) bs@5@01))
      (and (img@11@01 x i) (Set_in (inv@10@01 x i) as@4@01))))
  
  :qid |quant-u-13363|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= y@7@01 x@6@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_Pred (as sm@28@01  $PSF<Pred>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap x@6@01)
      ($SortWrappers.IntTo$Snap 3)))))
    ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_Pred (as sm@32@01  $PSF<Pred>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap y@7@01)
      ($SortWrappers.IntTo$Snap 3)))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_Pred (as sm@32@01  $PSF<Pred>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap y@7@01)
      ($SortWrappers.IntTo$Snap 3)))))
    ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_Pred (as sm@28@01  $PSF<Pred>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap x@6@01)
      ($SortWrappers.IntTo$Snap 3)))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (and (not (= x@6@01 y@7@01)) (not (= y@7@01 x@6@01))))
; [eval] y.f == 42
(set-option :timeout 0)
(push) ; 3
(assert (not (=
  ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_Pred (as sm@32@01  $PSF<Pred>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap y@7@01)
    ($SortWrappers.IntTo$Snap 3)))))
  42)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1