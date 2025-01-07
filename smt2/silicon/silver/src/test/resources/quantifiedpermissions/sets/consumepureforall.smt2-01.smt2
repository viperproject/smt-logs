(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-07 13:39:23
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
(declare-sort $FVF<f> 0)
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
(declare-fun $SortWrappers.$FVF<f>To$Snap ($FVF<f>) $Snap)
(declare-fun $SortWrappers.$SnapTo$FVF<f> ($Snap) $FVF<f>)
(assert (forall ((x $FVF<f>)) (!
    (= x ($SortWrappers.$SnapTo$FVF<f>($SortWrappers.$FVF<f>To$Snap x)))
    :pattern (($SortWrappers.$FVF<f>To$Snap x))
    :qid |$Snap.$SnapTo$FVF<f>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$FVF<f>To$Snap($SortWrappers.$SnapTo$FVF<f> x)))
    :pattern (($SortWrappers.$SnapTo$FVF<f> x))
    :qid |$Snap.$FVF<f>To$SnapTo$FVF<f>|
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
; /field_value_functions_declarations.smt2 [f: Int]
(declare-fun $FVF.domain_f ($FVF<f>) Set<$Ref>)
(declare-fun $FVF.lookup_f ($FVF<f> $Ref) Int)
(declare-fun $FVF.after_f ($FVF<f> $FVF<f>) Bool)
(declare-fun $FVF.loc_f (Int $Ref) Bool)
(declare-fun $FVF.perm_f ($FPM $Ref) $Perm)
(declare-const $fvfTOP_f $FVF<f>)
; Declaring symbols related to program functions (from program analysis)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
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
; /field_value_functions_axioms.smt2 [f: Int]
(assert (forall ((vs $FVF<f>) (ws $FVF<f>)) (!
    (=>
      (and
        (Set_equal ($FVF.domain_f vs) ($FVF.domain_f ws))
        (forall ((x $Ref)) (!
          (=>
            (Set_in x ($FVF.domain_f vs))
            (= ($FVF.lookup_f vs x) ($FVF.lookup_f ws x)))
          :pattern (($FVF.lookup_f vs x) ($FVF.lookup_f ws x))
          :qid |qp.$FVF<f>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$FVF<f>To$Snap vs)
              ($SortWrappers.$FVF<f>To$Snap ws)
              )
    :qid |qp.$FVF<f>-eq-outer|
    )))
(assert (forall ((r $Ref) (pm $FPM)) (!
    ($Perm.isValidVar ($FVF.perm_f pm r))
    :pattern (($FVF.perm_f pm r)))))
(assert (forall ((r $Ref) (f Int)) (!
    (= ($FVF.loc_f f r) true)
    :pattern (($FVF.loc_f f r)))))
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
; ---------- m ----------
(declare-const S@0@01 Set<$Ref>)
(declare-const b@1@01 $Ref)
(declare-const S@2@01 Set<$Ref>)
(declare-const b@3@01 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@4@01 $Snap)
(assert (= $t@4@01 ($Snap.combine ($Snap.first $t@4@01) ($Snap.second $t@4@01))))
(declare-const s@5@01 $Ref)
(push) ; 2
; [eval] (s in S)
(assert (Set_in s@5@01 S@2@01))
(pop) ; 2
(declare-fun inv@6@01 ($Ref) $Ref)
(declare-fun img@7@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((s1@5@01 $Ref) (s2@5@01 $Ref)) (!
  (=>
    (and (Set_in s1@5@01 S@2@01) (Set_in s2@5@01 S@2@01) (= s1@5@01 s2@5@01))
    (= s1@5@01 s2@5@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((s@5@01 $Ref)) (!
  (=>
    (Set_in s@5@01 S@2@01)
    (and (= (inv@6@01 s@5@01) s@5@01) (img@7@01 s@5@01)))
  :pattern ((Set_in s@5@01 S@2@01))
  :pattern ((inv@6@01 s@5@01))
  :pattern ((img@7@01 s@5@01))
  :qid |quant-u-5721|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@7@01 r) (Set_in (inv@6@01 r) S@2@01)) (= (inv@6@01 r) r))
  :pattern ((inv@6@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((s@5@01 $Ref)) (!
  (=> (Set_in s@5@01 S@2@01) (not (= s@5@01 $Ref.null)))
  :pattern ((Set_in s@5@01 S@2@01))
  :pattern ((inv@6@01 s@5@01))
  :pattern ((img@7@01 s@5@01))
  :qid |f-permImpliesNonNull|)))
(assert (=
  ($Snap.second $t@4@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@4@01))
    ($Snap.second ($Snap.second $t@4@01)))))
(assert (= ($Snap.first ($Snap.second $t@4@01)) $Snap.unit))
; [eval] (forall p: Ref :: { (p in S) } (p in S) ==> p.f > 0)
(declare-const p@8@01 $Ref)
(push) ; 2
; [eval] (p in S) ==> p.f > 0
; [eval] (p in S)
(push) ; 3
; [then-branch: 0 | p@8@01 in S@2@01 | live]
; [else-branch: 0 | !(p@8@01 in S@2@01) | live]
(push) ; 4
; [then-branch: 0 | p@8@01 in S@2@01]
(assert (Set_in p@8@01 S@2@01))
; [eval] p.f > 0
(push) ; 5
(assert (not (and (img@7@01 p@8@01) (Set_in (inv@6@01 p@8@01) S@2@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 0 | !(p@8@01 in S@2@01)]
(assert (not (Set_in p@8@01 S@2@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (not (Set_in p@8@01 S@2@01)) (Set_in p@8@01 S@2@01)))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((p@8@01 $Ref)) (!
  (or (not (Set_in p@8@01 S@2@01)) (Set_in p@8@01 S@2@01))
  :pattern ((Set_in p@8@01 S@2@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@8@11@8@45-aux|)))
(assert (forall ((p@8@01 $Ref)) (!
  (=>
    (Set_in p@8@01 S@2@01)
    (>
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) p@8@01)
      0))
  :pattern ((Set_in p@8@01 S@2@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@8@11@8@45|)))
(assert (= ($Snap.second ($Snap.second $t@4@01)) $Snap.unit))
; [eval] (b in S)
(assert (Set_in b@3@01 S@2@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@9@01 $Snap)
(assert (= $t@9@01 ($Snap.combine ($Snap.first $t@9@01) ($Snap.second $t@9@01))))
(declare-const sm@10@01 $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (as sm@10@01  $FVF<f>) b@3@01)
  ($SortWrappers.$SnapToInt ($Snap.first $t@9@01))))
(assert (not (= b@3@01 $Ref.null)))
(assert (= ($Snap.second $t@9@01) $Snap.unit))
; [eval] b.f > 0
(assert (> ($FVF.lookup_f (as sm@10@01  $FVF<f>) b@3@01) 0))
(pop) ; 2
(push) ; 2
; Precomputing data for removing quantified permissions
(define-fun pTaken@11@01 ((r $Ref)) $Perm
  (ite
    (= r b@3@01)
    ($Perm.min
      (ite (and (img@7@01 r) (Set_in (inv@6@01 r) S@2@01)) $Perm.Write $Perm.No)
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
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite (and (img@7@01 r) (Set_in (inv@6@01 r) S@2@01)) $Perm.Write $Perm.No)
      (pTaken@11@01 r))
    $Perm.No)
  
  :qid |quant-u-5723|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@11@01 r) $Perm.No)
  
  :qid |quant-u-5724|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=> (= r b@3@01) (= (- $Perm.Write (pTaken@11@01 r)) $Perm.No))
  
  :qid |quant-u-5725|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] b.f > 0
(set-option :timeout 0)
(push) ; 3
(assert (not (and (img@7@01 b@3@01) (Set_in (inv@6@01 b@3@01) S@2@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (> ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) b@3@01) 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (> ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) b@3@01) 0))
(pop) ; 2
(pop) ; 1
; ---------- m4 ----------
(declare-const S@12@01 Set<$Ref>)
(declare-const T@13@01 Set<$Ref>)
(declare-const S@14@01 Set<$Ref>)
(declare-const T@15@01 Set<$Ref>)
(push) ; 1
(declare-const $t@16@01 $Snap)
(assert (= $t@16@01 ($Snap.combine ($Snap.first $t@16@01) ($Snap.second $t@16@01))))
(declare-const s@17@01 $Ref)
(push) ; 2
; [eval] (s in S)
(assert (Set_in s@17@01 S@14@01))
(pop) ; 2
(declare-fun inv@18@01 ($Ref) $Ref)
(declare-fun img@19@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((s1@17@01 $Ref) (s2@17@01 $Ref)) (!
  (=>
    (and
      (Set_in s1@17@01 S@14@01)
      (Set_in s2@17@01 S@14@01)
      (= s1@17@01 s2@17@01))
    (= s1@17@01 s2@17@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((s@17@01 $Ref)) (!
  (=>
    (Set_in s@17@01 S@14@01)
    (and (= (inv@18@01 s@17@01) s@17@01) (img@19@01 s@17@01)))
  :pattern ((Set_in s@17@01 S@14@01))
  :pattern ((inv@18@01 s@17@01))
  :pattern ((img@19@01 s@17@01))
  :qid |quant-u-5727|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@19@01 r) (Set_in (inv@18@01 r) S@14@01)) (= (inv@18@01 r) r))
  :pattern ((inv@18@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((s@17@01 $Ref)) (!
  (=> (Set_in s@17@01 S@14@01) (not (= s@17@01 $Ref.null)))
  :pattern ((Set_in s@17@01 S@14@01))
  :pattern ((inv@18@01 s@17@01))
  :pattern ((img@19@01 s@17@01))
  :qid |f-permImpliesNonNull|)))
(assert (=
  ($Snap.second $t@16@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@16@01))
    ($Snap.second ($Snap.second $t@16@01)))))
(declare-const t@20@01 $Ref)
(push) ; 2
; [eval] (t in T)
(assert (Set_in t@20@01 T@15@01))
(pop) ; 2
(declare-fun inv@21@01 ($Ref) $Ref)
(declare-fun img@22@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((t1@20@01 $Ref) (t2@20@01 $Ref)) (!
  (=>
    (and
      (Set_in t1@20@01 T@15@01)
      (Set_in t2@20@01 T@15@01)
      (= t1@20@01 t2@20@01))
    (= t1@20@01 t2@20@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((t@20@01 $Ref)) (!
  (=>
    (Set_in t@20@01 T@15@01)
    (and (= (inv@21@01 t@20@01) t@20@01) (img@22@01 t@20@01)))
  :pattern ((Set_in t@20@01 T@15@01))
  :pattern ((inv@21@01 t@20@01))
  :pattern ((img@22@01 t@20@01))
  :qid |quant-u-5729|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@22@01 r) (Set_in (inv@21@01 r) T@15@01)) (= (inv@21@01 r) r))
  :pattern ((inv@21@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((t@20@01 $Ref)) (!
  (=> (Set_in t@20@01 T@15@01) (not (= t@20@01 $Ref.null)))
  :pattern ((Set_in t@20@01 T@15@01))
  :pattern ((inv@21@01 t@20@01))
  :pattern ((img@22@01 t@20@01))
  :qid |f-permImpliesNonNull|)))
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= t@20@01 s@17@01)
    (=
      (and (img@22@01 r) (Set_in (inv@21@01 r) T@15@01))
      (and (img@19@01 r) (Set_in (inv@18@01 r) S@14@01))))
  
  :qid |quant-u-5730|))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second $t@16@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@16@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@16@01))) $Snap.unit))
; [eval] (forall u: Ref :: { (u in S) } (u in S) ==> u.f > 0)
(declare-const u@23@01 $Ref)
(set-option :timeout 0)
(push) ; 2
; [eval] (u in S) ==> u.f > 0
; [eval] (u in S)
(push) ; 3
; [then-branch: 1 | u@23@01 in S@14@01 | live]
; [else-branch: 1 | !(u@23@01 in S@14@01) | live]
(push) ; 4
; [then-branch: 1 | u@23@01 in S@14@01]
(assert (Set_in u@23@01 S@14@01))
; [eval] u.f > 0
(declare-const sm@24@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@19@01 r) (Set_in (inv@18@01 r) S@14@01))
    (=
      ($FVF.lookup_f (as sm@24@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@16@01)) r)))
  :pattern (($FVF.lookup_f (as sm@24@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@16@01)) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@22@01 r) (Set_in (inv@21@01 r) T@15@01))
    (=
      ($FVF.lookup_f (as sm@24@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second $t@16@01))) r)))
  :pattern (($FVF.lookup_f (as sm@24@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second $t@16@01))) r))
  :qid |qp.fvfValDef1|)))
(declare-const pm@25@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@25@01  $FPM) r)
    (+
      (ite
        (and (img@19@01 r) (Set_in (inv@18@01 r) S@14@01))
        $Perm.Write
        $Perm.No)
      (ite
        (and (img@22@01 r) (Set_in (inv@21@01 r) T@15@01))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@25@01  $FPM) r))
  :qid |qp.resPrmSumDef2|)))
(push) ; 5
(assert (not (< $Perm.No ($FVF.perm_f (as pm@25@01  $FPM) u@23@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 1 | !(u@23@01 in S@14@01)]
(assert (not (Set_in u@23@01 S@14@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@19@01 r) (Set_in (inv@18@01 r) S@14@01))
    (=
      ($FVF.lookup_f (as sm@24@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@16@01)) r)))
  :pattern (($FVF.lookup_f (as sm@24@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@16@01)) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@22@01 r) (Set_in (inv@21@01 r) T@15@01))
    (=
      ($FVF.lookup_f (as sm@24@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second $t@16@01))) r)))
  :pattern (($FVF.lookup_f (as sm@24@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second $t@16@01))) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@25@01  $FPM) r)
    (+
      (ite
        (and (img@19@01 r) (Set_in (inv@18@01 r) S@14@01))
        $Perm.Write
        $Perm.No)
      (ite
        (and (img@22@01 r) (Set_in (inv@21@01 r) T@15@01))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@25@01  $FPM) r))
  :qid |qp.resPrmSumDef2|)))
; Joined path conditions
(assert (or (not (Set_in u@23@01 S@14@01)) (Set_in u@23@01 S@14@01)))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@19@01 r) (Set_in (inv@18@01 r) S@14@01))
    (=
      ($FVF.lookup_f (as sm@24@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@16@01)) r)))
  :pattern (($FVF.lookup_f (as sm@24@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@16@01)) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@22@01 r) (Set_in (inv@21@01 r) T@15@01))
    (=
      ($FVF.lookup_f (as sm@24@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second $t@16@01))) r)))
  :pattern (($FVF.lookup_f (as sm@24@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second $t@16@01))) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@25@01  $FPM) r)
    (+
      (ite
        (and (img@19@01 r) (Set_in (inv@18@01 r) S@14@01))
        $Perm.Write
        $Perm.No)
      (ite
        (and (img@22@01 r) (Set_in (inv@21@01 r) T@15@01))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@25@01  $FPM) r))
  :qid |qp.resPrmSumDef2|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((u@23@01 $Ref)) (!
  (or (not (Set_in u@23@01 S@14@01)) (Set_in u@23@01 S@14@01))
  :pattern ((Set_in u@23@01 S@14@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@18@11@18@47-aux|)))
(assert (forall ((u@23@01 $Ref)) (!
  (=>
    (Set_in u@23@01 S@14@01)
    (> ($FVF.lookup_f (as sm@24@01  $FVF<f>) u@23@01) 0))
  :pattern ((Set_in u@23@01 S@14@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@18@11@18@47|)))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@16@01))) $Snap.unit))
; [eval] (forall v: Ref :: { (v in T) } (v in T) ==> v.f > 0)
(declare-const v@26@01 $Ref)
(push) ; 2
; [eval] (v in T) ==> v.f > 0
; [eval] (v in T)
(push) ; 3
; [then-branch: 2 | v@26@01 in T@15@01 | live]
; [else-branch: 2 | !(v@26@01 in T@15@01) | live]
(push) ; 4
; [then-branch: 2 | v@26@01 in T@15@01]
(assert (Set_in v@26@01 T@15@01))
; [eval] v.f > 0
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@19@01 r) (Set_in (inv@18@01 r) S@14@01))
      (=
        ($FVF.lookup_f (as sm@24@01  $FVF<f>) r)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@16@01)) r)))
    :pattern (($FVF.lookup_f (as sm@24@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@16@01)) r))
    :qid |qp.fvfValDef0|))
  (forall ((r $Ref)) (!
    (=>
      (and (img@22@01 r) (Set_in (inv@21@01 r) T@15@01))
      (=
        ($FVF.lookup_f (as sm@24@01  $FVF<f>) r)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second $t@16@01))) r)))
    :pattern (($FVF.lookup_f (as sm@24@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second $t@16@01))) r))
    :qid |qp.fvfValDef1|))))
(push) ; 5
(assert (not (<
  $Perm.No
  (+
    (ite
      (and (img@19@01 v@26@01) (Set_in (inv@18@01 v@26@01) S@14@01))
      $Perm.Write
      $Perm.No)
    (ite
      (and (img@22@01 v@26@01) (Set_in (inv@21@01 v@26@01) T@15@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 2 | !(v@26@01 in T@15@01)]
(assert (not (Set_in v@26@01 T@15@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@19@01 r) (Set_in (inv@18@01 r) S@14@01))
    (=
      ($FVF.lookup_f (as sm@24@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@16@01)) r)))
  :pattern (($FVF.lookup_f (as sm@24@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@16@01)) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@22@01 r) (Set_in (inv@21@01 r) T@15@01))
    (=
      ($FVF.lookup_f (as sm@24@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second $t@16@01))) r)))
  :pattern (($FVF.lookup_f (as sm@24@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second $t@16@01))) r))
  :qid |qp.fvfValDef1|)))
; Joined path conditions
(assert (or (not (Set_in v@26@01 T@15@01)) (Set_in v@26@01 T@15@01)))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@19@01 r) (Set_in (inv@18@01 r) S@14@01))
    (=
      ($FVF.lookup_f (as sm@24@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@16@01)) r)))
  :pattern (($FVF.lookup_f (as sm@24@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@16@01)) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@22@01 r) (Set_in (inv@21@01 r) T@15@01))
    (=
      ($FVF.lookup_f (as sm@24@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second $t@16@01))) r)))
  :pattern (($FVF.lookup_f (as sm@24@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second $t@16@01))) r))
  :qid |qp.fvfValDef1|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((v@26@01 $Ref)) (!
  (or (not (Set_in v@26@01 T@15@01)) (Set_in v@26@01 T@15@01))
  :pattern ((Set_in v@26@01 T@15@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@19@11@19@46-aux|)))
(assert (forall ((v@26@01 $Ref)) (!
  (=>
    (Set_in v@26@01 T@15@01)
    (> ($FVF.lookup_f (as sm@24@01  $FVF<f>) v@26@01) 0))
  :pattern ((Set_in v@26@01 T@15@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@19@11@19@46|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@27@01 $Snap)
(assert (= $t@27@01 ($Snap.combine ($Snap.first $t@27@01) ($Snap.second $t@27@01))))
(declare-const x@28@01 $Ref)
(push) ; 3
; [eval] (x in (T union S))
; [eval] (T union S)
(assert (Set_in x@28@01 (Set_union T@15@01 S@14@01)))
(pop) ; 3
(declare-fun inv@29@01 ($Ref) $Ref)
(declare-fun img@30@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@28@01 $Ref) (x2@28@01 $Ref)) (!
  (=>
    (and
      (Set_in x1@28@01 (Set_union T@15@01 S@14@01))
      (Set_in x2@28@01 (Set_union T@15@01 S@14@01))
      (= x1@28@01 x2@28@01))
    (= x1@28@01 x2@28@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@28@01 $Ref)) (!
  (=>
    (Set_in x@28@01 (Set_union T@15@01 S@14@01))
    (and (= (inv@29@01 x@28@01) x@28@01) (img@30@01 x@28@01)))
  :pattern ((Set_in x@28@01 (Set_union T@15@01 S@14@01)))
  :pattern ((inv@29@01 x@28@01))
  :pattern ((img@30@01 x@28@01))
  :qid |quant-u-5732|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@30@01 r) (Set_in (inv@29@01 r) (Set_union T@15@01 S@14@01)))
    (= (inv@29@01 r) r))
  :pattern ((inv@29@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@28@01 $Ref)) (!
  (=> (Set_in x@28@01 (Set_union T@15@01 S@14@01)) (not (= x@28@01 $Ref.null)))
  :pattern ((Set_in x@28@01 (Set_union T@15@01 S@14@01)))
  :pattern ((inv@29@01 x@28@01))
  :pattern ((img@30@01 x@28@01))
  :qid |f-permImpliesNonNull|)))
(assert (= ($Snap.second $t@27@01) $Snap.unit))
; [eval] (forall y: Ref :: { (y in (T union S)) } (y in (T union S)) ==> y.f > 0)
(declare-const y@31@01 $Ref)
(push) ; 3
; [eval] (y in (T union S)) ==> y.f > 0
; [eval] (y in (T union S))
; [eval] (T union S)
(push) ; 4
; [then-branch: 3 | y@31@01 in T@15@01 ∪ S@14@01 | live]
; [else-branch: 3 | !(y@31@01 in T@15@01 ∪ S@14@01) | live]
(push) ; 5
; [then-branch: 3 | y@31@01 in T@15@01 ∪ S@14@01]
(assert (Set_in y@31@01 (Set_union T@15@01 S@14@01)))
; [eval] y.f > 0
(push) ; 6
(assert (not (and
  (img@30@01 y@31@01)
  (Set_in (inv@29@01 y@31@01) (Set_union T@15@01 S@14@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 3 | !(y@31@01 in T@15@01 ∪ S@14@01)]
(assert (not (Set_in y@31@01 (Set_union T@15@01 S@14@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (not (Set_in y@31@01 (Set_union T@15@01 S@14@01)))
  (Set_in y@31@01 (Set_union T@15@01 S@14@01))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((y@31@01 $Ref)) (!
  (or
    (not (Set_in y@31@01 (Set_union T@15@01 S@14@01)))
    (Set_in y@31@01 (Set_union T@15@01 S@14@01)))
  :pattern ((Set_in y@31@01 (Set_union T@15@01 S@14@01)))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@21@10@21@55-aux|)))
(assert (forall ((y@31@01 $Ref)) (!
  (=>
    (Set_in y@31@01 (Set_union T@15@01 S@14@01))
    (>
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@27@01)) y@31@01)
      0))
  :pattern ((Set_in y@31@01 (Set_union T@15@01 S@14@01)))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@21@10@21@55|)))
(pop) ; 2
(push) ; 2
(declare-const x@32@01 $Ref)
(push) ; 3
; [eval] (x in (T union S))
; [eval] (T union S)
(assert (Set_in x@32@01 (Set_union T@15@01 S@14@01)))
(pop) ; 3
(declare-fun inv@33@01 ($Ref) $Ref)
(declare-fun img@34@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@32@01 $Ref) (x2@32@01 $Ref)) (!
  (=>
    (and
      (Set_in x1@32@01 (Set_union T@15@01 S@14@01))
      (Set_in x2@32@01 (Set_union T@15@01 S@14@01))
      (= x1@32@01 x2@32@01))
    (= x1@32@01 x2@32@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@32@01 $Ref)) (!
  (=>
    (Set_in x@32@01 (Set_union T@15@01 S@14@01))
    (and (= (inv@33@01 x@32@01) x@32@01) (img@34@01 x@32@01)))
  :pattern ((Set_in x@32@01 (Set_union T@15@01 S@14@01)))
  :pattern ((inv@33@01 x@32@01))
  :pattern ((img@34@01 x@32@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@34@01 r) (Set_in (inv@33@01 r) (Set_union T@15@01 S@14@01)))
    (= (inv@33@01 r) r))
  :pattern ((inv@33@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@35@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@33@01 r) (Set_union T@15@01 S@14@01))
      (img@34@01 r)
      (= r (inv@33@01 r)))
    ($Perm.min
      (ite
        (and (img@19@01 r) (Set_in (inv@18@01 r) S@14@01))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@36@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@33@01 r) (Set_union T@15@01 S@14@01))
      (img@34@01 r)
      (= r (inv@33@01 r)))
    ($Perm.min
      (ite
        (and (img@22@01 r) (Set_in (inv@21@01 r) T@15@01))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@35@01 r)))
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
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@19@01 r) (Set_in (inv@18@01 r) S@14@01))
        $Perm.Write
        $Perm.No)
      (pTaken@35@01 r))
    $Perm.No)
  
  :qid |quant-u-5735|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@33@01 r) (Set_union T@15@01 S@14@01))
      (img@34@01 r)
      (= r (inv@33@01 r)))
    (= (- $Perm.Write (pTaken@35@01 r)) $Perm.No))
  
  :qid |quant-u-5736|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@22@01 r) (Set_in (inv@21@01 r) T@15@01))
        $Perm.Write
        $Perm.No)
      (pTaken@36@01 r))
    $Perm.No)
  
  :qid |quant-u-5737|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@36@01 r) $Perm.No)
  
  :qid |quant-u-5738|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@33@01 r) (Set_union T@15@01 S@14@01))
      (img@34@01 r)
      (= r (inv@33@01 r)))
    (= (- (- $Perm.Write (pTaken@35@01 r)) (pTaken@36@01 r)) $Perm.No))
  
  :qid |quant-u-5739|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall y: Ref :: { (y in (T union S)) } (y in (T union S)) ==> y.f > 0)
(declare-const y@37@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (y in (T union S)) ==> y.f > 0
; [eval] (y in (T union S))
; [eval] (T union S)
(push) ; 4
; [then-branch: 4 | y@37@01 in T@15@01 ∪ S@14@01 | live]
; [else-branch: 4 | !(y@37@01 in T@15@01 ∪ S@14@01) | live]
(push) ; 5
; [then-branch: 4 | y@37@01 in T@15@01 ∪ S@14@01]
(assert (Set_in y@37@01 (Set_union T@15@01 S@14@01)))
; [eval] y.f > 0
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@19@01 r) (Set_in (inv@18@01 r) S@14@01))
      (=
        ($FVF.lookup_f (as sm@24@01  $FVF<f>) r)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@16@01)) r)))
    :pattern (($FVF.lookup_f (as sm@24@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@16@01)) r))
    :qid |qp.fvfValDef0|))
  (forall ((r $Ref)) (!
    (=>
      (and (img@22@01 r) (Set_in (inv@21@01 r) T@15@01))
      (=
        ($FVF.lookup_f (as sm@24@01  $FVF<f>) r)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second $t@16@01))) r)))
    :pattern (($FVF.lookup_f (as sm@24@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second $t@16@01))) r))
    :qid |qp.fvfValDef1|))))
(push) ; 6
(assert (not (<
  $Perm.No
  (+
    (ite
      (and (img@19@01 y@37@01) (Set_in (inv@18@01 y@37@01) S@14@01))
      $Perm.Write
      $Perm.No)
    (ite
      (and (img@22@01 y@37@01) (Set_in (inv@21@01 y@37@01) T@15@01))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 4 | !(y@37@01 in T@15@01 ∪ S@14@01)]
(assert (not (Set_in y@37@01 (Set_union T@15@01 S@14@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@19@01 r) (Set_in (inv@18@01 r) S@14@01))
    (=
      ($FVF.lookup_f (as sm@24@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@16@01)) r)))
  :pattern (($FVF.lookup_f (as sm@24@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@16@01)) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@22@01 r) (Set_in (inv@21@01 r) T@15@01))
    (=
      ($FVF.lookup_f (as sm@24@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second $t@16@01))) r)))
  :pattern (($FVF.lookup_f (as sm@24@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second $t@16@01))) r))
  :qid |qp.fvfValDef1|)))
; Joined path conditions
(assert (or
  (not (Set_in y@37@01 (Set_union T@15@01 S@14@01)))
  (Set_in y@37@01 (Set_union T@15@01 S@14@01))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@19@01 r) (Set_in (inv@18@01 r) S@14@01))
    (=
      ($FVF.lookup_f (as sm@24@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@16@01)) r)))
  :pattern (($FVF.lookup_f (as sm@24@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@16@01)) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@22@01 r) (Set_in (inv@21@01 r) T@15@01))
    (=
      ($FVF.lookup_f (as sm@24@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second $t@16@01))) r)))
  :pattern (($FVF.lookup_f (as sm@24@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second $t@16@01))) r))
  :qid |qp.fvfValDef1|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((y@37@01 $Ref)) (!
  (or
    (not (Set_in y@37@01 (Set_union T@15@01 S@14@01)))
    (Set_in y@37@01 (Set_union T@15@01 S@14@01)))
  :pattern ((Set_in y@37@01 (Set_union T@15@01 S@14@01)))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@21@10@21@55-aux|)))
(push) ; 3
(assert (not (forall ((y@37@01 $Ref)) (!
  (=>
    (Set_in y@37@01 (Set_union T@15@01 S@14@01))
    (> ($FVF.lookup_f (as sm@24@01  $FVF<f>) y@37@01) 0))
  :pattern ((Set_in y@37@01 (Set_union T@15@01 S@14@01)))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@21@10@21@55|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((y@37@01 $Ref)) (!
  (=>
    (Set_in y@37@01 (Set_union T@15@01 S@14@01))
    (> ($FVF.lookup_f (as sm@24@01  $FVF<f>) y@37@01) 0))
  :pattern ((Set_in y@37@01 (Set_union T@15@01 S@14@01)))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@21@10@21@55|)))
(pop) ; 2
(pop) ; 1
; ---------- m2 ----------
(declare-const S@38@01 Set<$Ref>)
(declare-const b@39@01 $Ref)
(declare-const S@40@01 Set<$Ref>)
(declare-const b@41@01 $Ref)
(push) ; 1
(declare-const $t@42@01 $Snap)
(assert (= $t@42@01 ($Snap.combine ($Snap.first $t@42@01) ($Snap.second $t@42@01))))
(declare-const s@43@01 $Ref)
(push) ; 2
; [eval] (s in S)
(assert (Set_in s@43@01 S@40@01))
(pop) ; 2
(declare-fun inv@44@01 ($Ref) $Ref)
(declare-fun img@45@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((s1@43@01 $Ref) (s2@43@01 $Ref)) (!
  (=>
    (and
      (Set_in s1@43@01 S@40@01)
      (Set_in s2@43@01 S@40@01)
      (= s1@43@01 s2@43@01))
    (= s1@43@01 s2@43@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((s@43@01 $Ref)) (!
  (=>
    (Set_in s@43@01 S@40@01)
    (and (= (inv@44@01 s@43@01) s@43@01) (img@45@01 s@43@01)))
  :pattern ((Set_in s@43@01 S@40@01))
  :pattern ((inv@44@01 s@43@01))
  :pattern ((img@45@01 s@43@01))
  :qid |quant-u-5741|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@45@01 r) (Set_in (inv@44@01 r) S@40@01)) (= (inv@44@01 r) r))
  :pattern ((inv@44@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((s@43@01 $Ref)) (!
  (=> (Set_in s@43@01 S@40@01) (not (= s@43@01 $Ref.null)))
  :pattern ((Set_in s@43@01 S@40@01))
  :pattern ((inv@44@01 s@43@01))
  :pattern ((img@45@01 s@43@01))
  :qid |f-permImpliesNonNull|)))
(assert (=
  ($Snap.second $t@42@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@42@01))
    ($Snap.second ($Snap.second $t@42@01)))))
(assert (= ($Snap.first ($Snap.second $t@42@01)) $Snap.unit))
; [eval] (forall p: Ref :: { (p in S) } (p in S) ==> p.f > 0)
(declare-const p@46@01 $Ref)
(push) ; 2
; [eval] (p in S) ==> p.f > 0
; [eval] (p in S)
(push) ; 3
; [then-branch: 5 | p@46@01 in S@40@01 | live]
; [else-branch: 5 | !(p@46@01 in S@40@01) | live]
(push) ; 4
; [then-branch: 5 | p@46@01 in S@40@01]
(assert (Set_in p@46@01 S@40@01))
; [eval] p.f > 0
(push) ; 5
(assert (not (and (img@45@01 p@46@01) (Set_in (inv@44@01 p@46@01) S@40@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 5 | !(p@46@01 in S@40@01)]
(assert (not (Set_in p@46@01 S@40@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (not (Set_in p@46@01 S@40@01)) (Set_in p@46@01 S@40@01)))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((p@46@01 $Ref)) (!
  (or (not (Set_in p@46@01 S@40@01)) (Set_in p@46@01 S@40@01))
  :pattern ((Set_in p@46@01 S@40@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@29@11@29@46-aux|)))
(assert (forall ((p@46@01 $Ref)) (!
  (=>
    (Set_in p@46@01 S@40@01)
    (>
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@42@01)) p@46@01)
      0))
  :pattern ((Set_in p@46@01 S@40@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@29@11@29@46|)))
(assert (= ($Snap.second ($Snap.second $t@42@01)) $Snap.unit))
; [eval] (b in S)
(assert (Set_in b@41@01 S@40@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@47@01 $Snap)
(assert (= $t@47@01 ($Snap.combine ($Snap.first $t@47@01) ($Snap.second $t@47@01))))
(declare-const r@48@01 $Ref)
(push) ; 3
; [eval] (r in S)
(assert (Set_in r@48@01 S@40@01))
(pop) ; 3
(declare-fun inv@49@01 ($Ref) $Ref)
(declare-fun img@50@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((r1@48@01 $Ref) (r2@48@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@48@01 S@40@01)
      (Set_in r2@48@01 S@40@01)
      (= r1@48@01 r2@48@01))
    (= r1@48@01 r2@48@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@48@01 $Ref)) (!
  (=>
    (Set_in r@48@01 S@40@01)
    (and (= (inv@49@01 r@48@01) r@48@01) (img@50@01 r@48@01)))
  :pattern ((Set_in r@48@01 S@40@01))
  :pattern ((inv@49@01 r@48@01))
  :pattern ((img@50@01 r@48@01))
  :qid |quant-u-5743|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@50@01 r) (Set_in (inv@49@01 r) S@40@01)) (= (inv@49@01 r) r))
  :pattern ((inv@49@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((r@48@01 $Ref)) (!
  (=> (Set_in r@48@01 S@40@01) (not (= r@48@01 $Ref.null)))
  :pattern ((Set_in r@48@01 S@40@01))
  :pattern ((inv@49@01 r@48@01))
  :pattern ((img@50@01 r@48@01))
  :qid |f-permImpliesNonNull|)))
(assert (= ($Snap.second $t@47@01) $Snap.unit))
; [eval] (forall q: Ref :: { (q in S) } (q in S) ==> q.f > 0)
(declare-const q@51@01 $Ref)
(push) ; 3
; [eval] (q in S) ==> q.f > 0
; [eval] (q in S)
(push) ; 4
; [then-branch: 6 | q@51@01 in S@40@01 | live]
; [else-branch: 6 | !(q@51@01 in S@40@01) | live]
(push) ; 5
; [then-branch: 6 | q@51@01 in S@40@01]
(assert (Set_in q@51@01 S@40@01))
; [eval] q.f > 0
(push) ; 6
(assert (not (and (img@50@01 q@51@01) (Set_in (inv@49@01 q@51@01) S@40@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 6 | !(q@51@01 in S@40@01)]
(assert (not (Set_in q@51@01 S@40@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (not (Set_in q@51@01 S@40@01)) (Set_in q@51@01 S@40@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((q@51@01 $Ref)) (!
  (or (not (Set_in q@51@01 S@40@01)) (Set_in q@51@01 S@40@01))
  :pattern ((Set_in q@51@01 S@40@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@32@10@32@46-aux|)))
(assert (forall ((q@51@01 $Ref)) (!
  (=>
    (Set_in q@51@01 S@40@01)
    (>
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@47@01)) q@51@01)
      0))
  :pattern ((Set_in q@51@01 S@40@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@32@10@32@46|)))
(pop) ; 2
(push) ; 2
; [exec]
; b.f := 3
; Precomputing data for removing quantified permissions
(define-fun pTaken@52@01 ((r $Ref)) $Perm
  (ite
    (= r b@41@01)
    ($Perm.min
      (ite
        (and (img@45@01 r) (Set_in (inv@44@01 r) S@40@01))
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
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@45@01 r) (Set_in (inv@44@01 r) S@40@01))
        $Perm.Write
        $Perm.No)
      (pTaken@52@01 r))
    $Perm.No)
  
  :qid |quant-u-5745|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@52@01 r) $Perm.No)
  
  :qid |quant-u-5746|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=> (= r b@41@01) (= (- $Perm.Write (pTaken@52@01 r)) $Perm.No))
  
  :qid |quant-u-5747|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@53@01 $FVF<f>)
; Definitional axioms for singleton-FVF's value
(assert (= ($FVF.lookup_f (as sm@53@01  $FVF<f>) b@41@01) 3))
(declare-const r@54@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (r in S)
(assert (Set_in r@54@01 S@40@01))
(pop) ; 3
(declare-fun inv@55@01 ($Ref) $Ref)
(declare-fun img@56@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((r1@54@01 $Ref) (r2@54@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@54@01 S@40@01)
      (Set_in r2@54@01 S@40@01)
      (= r1@54@01 r2@54@01))
    (= r1@54@01 r2@54@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@54@01 $Ref)) (!
  (=>
    (Set_in r@54@01 S@40@01)
    (and (= (inv@55@01 r@54@01) r@54@01) (img@56@01 r@54@01)))
  :pattern ((Set_in r@54@01 S@40@01))
  :pattern ((inv@55@01 r@54@01))
  :pattern ((img@56@01 r@54@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@56@01 r) (Set_in (inv@55@01 r) S@40@01)) (= (inv@55@01 r) r))
  :pattern ((inv@55@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@57@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@55@01 r) S@40@01) (img@56@01 r) (= r (inv@55@01 r)))
    ($Perm.min
      (ite
        (and (img@45@01 r) (Set_in (inv@44@01 r) S@40@01))
        (- $Perm.Write (pTaken@52@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@58@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@55@01 r) S@40@01) (img@56@01 r) (= r (inv@55@01 r)))
    ($Perm.min
      (ite (= r b@41@01) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@57@01 r)))
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
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@45@01 r) (Set_in (inv@44@01 r) S@40@01))
        (- $Perm.Write (pTaken@52@01 r))
        $Perm.No)
      (pTaken@57@01 r))
    $Perm.No)
  
  :qid |quant-u-5750|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@55@01 r) S@40@01) (img@56@01 r) (= r (inv@55@01 r)))
    (= (- $Perm.Write (pTaken@57@01 r)) $Perm.No))
  
  :qid |quant-u-5751|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@58@01 b@41@01)) $Perm.No)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@55@01 r) S@40@01) (img@56@01 r) (= r (inv@55@01 r)))
    (= (- (- $Perm.Write (pTaken@57@01 r)) (pTaken@58@01 r)) $Perm.No))
  
  :qid |quant-u-5753|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall q: Ref :: { (q in S) } (q in S) ==> q.f > 0)
(declare-const q@59@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (q in S) ==> q.f > 0
; [eval] (q in S)
(push) ; 4
; [then-branch: 7 | q@59@01 in S@40@01 | live]
; [else-branch: 7 | !(q@59@01 in S@40@01) | live]
(push) ; 5
; [then-branch: 7 | q@59@01 in S@40@01]
(assert (Set_in q@59@01 S@40@01))
; [eval] q.f > 0
(declare-const sm@60@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r b@41@01)
    (=
      ($FVF.lookup_f (as sm@60@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@53@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@60@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@53@01  $FVF<f>) r))
  :qid |qp.fvfValDef3|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@45@01 r) (Set_in (inv@44@01 r) S@40@01))
      (< $Perm.No (- $Perm.Write (pTaken@52@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@60@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@42@01)) r)))
  :pattern (($FVF.lookup_f (as sm@60@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@42@01)) r))
  :qid |qp.fvfValDef4|)))
(declare-const pm@61@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@61@01  $FPM) r)
    (+
      (ite (= r b@41@01) $Perm.Write $Perm.No)
      (ite
        (and (img@45@01 r) (Set_in (inv@44@01 r) S@40@01))
        (- $Perm.Write (pTaken@52@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@61@01  $FPM) r))
  :qid |qp.resPrmSumDef5|)))
(push) ; 6
(assert (not (< $Perm.No ($FVF.perm_f (as pm@61@01  $FPM) q@59@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 7 | !(q@59@01 in S@40@01)]
(assert (not (Set_in q@59@01 S@40@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (= r b@41@01)
    (=
      ($FVF.lookup_f (as sm@60@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@53@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@60@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@53@01  $FVF<f>) r))
  :qid |qp.fvfValDef3|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@45@01 r) (Set_in (inv@44@01 r) S@40@01))
      (< $Perm.No (- $Perm.Write (pTaken@52@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@60@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@42@01)) r)))
  :pattern (($FVF.lookup_f (as sm@60@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@42@01)) r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@61@01  $FPM) r)
    (+
      (ite (= r b@41@01) $Perm.Write $Perm.No)
      (ite
        (and (img@45@01 r) (Set_in (inv@44@01 r) S@40@01))
        (- $Perm.Write (pTaken@52@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@61@01  $FPM) r))
  :qid |qp.resPrmSumDef5|)))
; Joined path conditions
(assert (or (not (Set_in q@59@01 S@40@01)) (Set_in q@59@01 S@40@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (= r b@41@01)
    (=
      ($FVF.lookup_f (as sm@60@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@53@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@60@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@53@01  $FVF<f>) r))
  :qid |qp.fvfValDef3|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@45@01 r) (Set_in (inv@44@01 r) S@40@01))
      (< $Perm.No (- $Perm.Write (pTaken@52@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@60@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@42@01)) r)))
  :pattern (($FVF.lookup_f (as sm@60@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@42@01)) r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@61@01  $FPM) r)
    (+
      (ite (= r b@41@01) $Perm.Write $Perm.No)
      (ite
        (and (img@45@01 r) (Set_in (inv@44@01 r) S@40@01))
        (- $Perm.Write (pTaken@52@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@61@01  $FPM) r))
  :qid |qp.resPrmSumDef5|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((q@59@01 $Ref)) (!
  (or (not (Set_in q@59@01 S@40@01)) (Set_in q@59@01 S@40@01))
  :pattern ((Set_in q@59@01 S@40@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@32@10@32@46-aux|)))
(push) ; 3
(assert (not (forall ((q@59@01 $Ref)) (!
  (=>
    (Set_in q@59@01 S@40@01)
    (> ($FVF.lookup_f (as sm@60@01  $FVF<f>) q@59@01) 0))
  :pattern ((Set_in q@59@01 S@40@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@32@10@32@46|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((q@59@01 $Ref)) (!
  (=>
    (Set_in q@59@01 S@40@01)
    (> ($FVF.lookup_f (as sm@60@01  $FVF<f>) q@59@01) 0))
  :pattern ((Set_in q@59@01 S@40@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@32@10@32@46|)))
(pop) ; 2
(pop) ; 1
; ---------- m13 ----------
(declare-const S@62@01 Set<$Ref>)
(declare-const b@63@01 $Ref)
(declare-const a@64@01 Int)
(declare-const S@65@01 Set<$Ref>)
(declare-const b@66@01 $Ref)
(declare-const a@67@01 Int)
(push) ; 1
(declare-const $t@68@01 $Snap)
(assert (= $t@68@01 ($Snap.combine ($Snap.first $t@68@01) ($Snap.second $t@68@01))))
(declare-const s@69@01 $Ref)
(push) ; 2
; [eval] (s in S)
(assert (Set_in s@69@01 S@65@01))
(pop) ; 2
(declare-fun inv@70@01 ($Ref) $Ref)
(declare-fun img@71@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((s1@69@01 $Ref) (s2@69@01 $Ref)) (!
  (=>
    (and
      (Set_in s1@69@01 S@65@01)
      (Set_in s2@69@01 S@65@01)
      (= s1@69@01 s2@69@01))
    (= s1@69@01 s2@69@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((s@69@01 $Ref)) (!
  (=>
    (Set_in s@69@01 S@65@01)
    (and (= (inv@70@01 s@69@01) s@69@01) (img@71@01 s@69@01)))
  :pattern ((Set_in s@69@01 S@65@01))
  :pattern ((inv@70@01 s@69@01))
  :pattern ((img@71@01 s@69@01))
  :qid |quant-u-5755|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@71@01 r) (Set_in (inv@70@01 r) S@65@01)) (= (inv@70@01 r) r))
  :pattern ((inv@70@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((s@69@01 $Ref)) (!
  (=> (Set_in s@69@01 S@65@01) (not (= s@69@01 $Ref.null)))
  :pattern ((Set_in s@69@01 S@65@01))
  :pattern ((inv@70@01 s@69@01))
  :pattern ((img@71@01 s@69@01))
  :qid |f-permImpliesNonNull|)))
(assert (=
  ($Snap.second $t@68@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@68@01))
    ($Snap.second ($Snap.second $t@68@01)))))
(assert (= ($Snap.first ($Snap.second $t@68@01)) $Snap.unit))
; [eval] S == Set(b)
; [eval] Set(b)
(assert (Set_equal S@65@01 (Set_singleton b@66@01)))
(assert (= ($Snap.second ($Snap.second $t@68@01)) $Snap.unit))
; [eval] b.f == a
(push) ; 2
(assert (not (and (img@71@01 b@66@01) (Set_in (inv@70@01 b@66@01) S@65@01))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@68@01)) b@66@01)
  a@67@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@72@01 $Snap)
(assert (= $t@72@01 ($Snap.combine ($Snap.first $t@72@01) ($Snap.second $t@72@01))))
(declare-const r@73@01 $Ref)
(push) ; 3
; [eval] (r in S)
(assert (Set_in r@73@01 S@65@01))
(pop) ; 3
(declare-fun inv@74@01 ($Ref) $Ref)
(declare-fun img@75@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((r1@73@01 $Ref) (r2@73@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@73@01 S@65@01)
      (Set_in r2@73@01 S@65@01)
      (= r1@73@01 r2@73@01))
    (= r1@73@01 r2@73@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@73@01 $Ref)) (!
  (=>
    (Set_in r@73@01 S@65@01)
    (and (= (inv@74@01 r@73@01) r@73@01) (img@75@01 r@73@01)))
  :pattern ((Set_in r@73@01 S@65@01))
  :pattern ((inv@74@01 r@73@01))
  :pattern ((img@75@01 r@73@01))
  :qid |quant-u-5757|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@75@01 r) (Set_in (inv@74@01 r) S@65@01)) (= (inv@74@01 r) r))
  :pattern ((inv@74@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((r@73@01 $Ref)) (!
  (=> (Set_in r@73@01 S@65@01) (not (= r@73@01 $Ref.null)))
  :pattern ((Set_in r@73@01 S@65@01))
  :pattern ((inv@74@01 r@73@01))
  :pattern ((img@75@01 r@73@01))
  :qid |f-permImpliesNonNull|)))
(assert (= ($Snap.second $t@72@01) $Snap.unit))
; [eval] (forall t: Ref :: { (t in S) } (t in S) ==> t.f > 2 * a)
(declare-const t@76@01 $Ref)
(push) ; 3
; [eval] (t in S) ==> t.f > 2 * a
; [eval] (t in S)
(push) ; 4
; [then-branch: 8 | t@76@01 in S@65@01 | live]
; [else-branch: 8 | !(t@76@01 in S@65@01) | live]
(push) ; 5
; [then-branch: 8 | t@76@01 in S@65@01]
(assert (Set_in t@76@01 S@65@01))
; [eval] t.f > 2 * a
(push) ; 6
(assert (not (and (img@75@01 t@76@01) (Set_in (inv@74@01 t@76@01) S@65@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] 2 * a
(pop) ; 5
(push) ; 5
; [else-branch: 8 | !(t@76@01 in S@65@01)]
(assert (not (Set_in t@76@01 S@65@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (not (Set_in t@76@01 S@65@01)) (Set_in t@76@01 S@65@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((t@76@01 $Ref)) (!
  (or (not (Set_in t@76@01 S@65@01)) (Set_in t@76@01 S@65@01))
  :pattern ((Set_in t@76@01 S@65@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@42@10@42@54-aux|)))
(assert (forall ((t@76@01 $Ref)) (!
  (=>
    (Set_in t@76@01 S@65@01)
    (>
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@72@01)) t@76@01)
      (* 2 a@67@01)))
  :pattern ((Set_in t@76@01 S@65@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@42@10@42@54|)))
(pop) ; 2
(push) ; 2
; [exec]
; b.f := 2 * a + 1
; [eval] 2 * a + 1
; [eval] 2 * a
; Precomputing data for removing quantified permissions
(define-fun pTaken@77@01 ((r $Ref)) $Perm
  (ite
    (= r b@66@01)
    ($Perm.min
      (ite
        (and (img@71@01 r) (Set_in (inv@70@01 r) S@65@01))
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
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@71@01 r) (Set_in (inv@70@01 r) S@65@01))
        $Perm.Write
        $Perm.No)
      (pTaken@77@01 r))
    $Perm.No)
  
  :qid |quant-u-5759|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=> (= r b@66@01) (= (- $Perm.Write (pTaken@77@01 r)) $Perm.No))
  
  :qid |quant-u-5760|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@78@01 $FVF<f>)
; Definitional axioms for singleton-FVF's value
(assert (= ($FVF.lookup_f (as sm@78@01  $FVF<f>) b@66@01) (+ (* 2 a@67@01) 1)))
(declare-const r@79@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (r in S)
(assert (Set_in r@79@01 S@65@01))
(pop) ; 3
(declare-fun inv@80@01 ($Ref) $Ref)
(declare-fun img@81@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((r1@79@01 $Ref) (r2@79@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@79@01 S@65@01)
      (Set_in r2@79@01 S@65@01)
      (= r1@79@01 r2@79@01))
    (= r1@79@01 r2@79@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@79@01 $Ref)) (!
  (=>
    (Set_in r@79@01 S@65@01)
    (and (= (inv@80@01 r@79@01) r@79@01) (img@81@01 r@79@01)))
  :pattern ((Set_in r@79@01 S@65@01))
  :pattern ((inv@80@01 r@79@01))
  :pattern ((img@81@01 r@79@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@81@01 r) (Set_in (inv@80@01 r) S@65@01)) (= (inv@80@01 r) r))
  :pattern ((inv@80@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@82@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@80@01 r) S@65@01) (img@81@01 r) (= r (inv@80@01 r)))
    ($Perm.min (ite (= r b@66@01) $Perm.Write $Perm.No) $Perm.Write)
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
(assert (not (= (- $Perm.Write (pTaken@82@01 b@66@01)) $Perm.No)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@80@01 r) S@65@01) (img@81@01 r) (= r (inv@80@01 r)))
    (= (- $Perm.Write (pTaken@82@01 r)) $Perm.No))
  
  :qid |quant-u-5764|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall t: Ref :: { (t in S) } (t in S) ==> t.f > 2 * a)
(declare-const t@83@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (t in S) ==> t.f > 2 * a
; [eval] (t in S)
(push) ; 4
; [then-branch: 9 | t@83@01 in S@65@01 | live]
; [else-branch: 9 | !(t@83@01 in S@65@01) | live]
(push) ; 5
; [then-branch: 9 | t@83@01 in S@65@01]
(assert (Set_in t@83@01 S@65@01))
; [eval] t.f > 2 * a
(push) ; 6
(assert (not (= t@83@01 b@66@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] 2 * a
(pop) ; 5
(push) ; 5
; [else-branch: 9 | !(t@83@01 in S@65@01)]
(assert (not (Set_in t@83@01 S@65@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (not (Set_in t@83@01 S@65@01)) (Set_in t@83@01 S@65@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((t@83@01 $Ref)) (!
  (or (not (Set_in t@83@01 S@65@01)) (Set_in t@83@01 S@65@01))
  :pattern ((Set_in t@83@01 S@65@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@42@10@42@54-aux|)))
(push) ; 3
(assert (not (forall ((t@83@01 $Ref)) (!
  (=>
    (Set_in t@83@01 S@65@01)
    (> ($FVF.lookup_f (as sm@78@01  $FVF<f>) t@83@01) (* 2 a@67@01)))
  :pattern ((Set_in t@83@01 S@65@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@42@10@42@54|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((t@83@01 $Ref)) (!
  (=>
    (Set_in t@83@01 S@65@01)
    (> ($FVF.lookup_f (as sm@78@01  $FVF<f>) t@83@01) (* 2 a@67@01)))
  :pattern ((Set_in t@83@01 S@65@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@42@10@42@54|)))
(pop) ; 2
(pop) ; 1
; ---------- m3 ----------
(declare-const S@84@01 Set<$Ref>)
(declare-const b@85@01 $Ref)
(declare-const a@86@01 Int)
(declare-const S@87@01 Set<$Ref>)
(declare-const b@88@01 $Ref)
(declare-const a@89@01 Int)
(push) ; 1
(declare-const $t@90@01 $Snap)
(assert (= $t@90@01 ($Snap.combine ($Snap.first $t@90@01) ($Snap.second $t@90@01))))
(declare-const s@91@01 $Ref)
(push) ; 2
; [eval] (s in S)
(assert (Set_in s@91@01 S@87@01))
(pop) ; 2
(declare-fun inv@92@01 ($Ref) $Ref)
(declare-fun img@93@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((s1@91@01 $Ref) (s2@91@01 $Ref)) (!
  (=>
    (and
      (Set_in s1@91@01 S@87@01)
      (Set_in s2@91@01 S@87@01)
      (= s1@91@01 s2@91@01))
    (= s1@91@01 s2@91@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((s@91@01 $Ref)) (!
  (=>
    (Set_in s@91@01 S@87@01)
    (and (= (inv@92@01 s@91@01) s@91@01) (img@93@01 s@91@01)))
  :pattern ((Set_in s@91@01 S@87@01))
  :pattern ((inv@92@01 s@91@01))
  :pattern ((img@93@01 s@91@01))
  :qid |quant-u-5766|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@93@01 r) (Set_in (inv@92@01 r) S@87@01)) (= (inv@92@01 r) r))
  :pattern ((inv@92@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((s@91@01 $Ref)) (!
  (=> (Set_in s@91@01 S@87@01) (not (= s@91@01 $Ref.null)))
  :pattern ((Set_in s@91@01 S@87@01))
  :pattern ((inv@92@01 s@91@01))
  :pattern ((img@93@01 s@91@01))
  :qid |f-permImpliesNonNull|)))
(assert (=
  ($Snap.second $t@90@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@90@01))
    ($Snap.second ($Snap.second $t@90@01)))))
(assert (= ($Snap.first ($Snap.second $t@90@01)) $Snap.unit))
; [eval] S == Set(b)
; [eval] Set(b)
(assert (Set_equal S@87@01 (Set_singleton b@88@01)))
(assert (= ($Snap.second ($Snap.second $t@90@01)) $Snap.unit))
; [eval] b.f == a
(push) ; 2
(assert (not (and (img@93@01 b@88@01) (Set_in (inv@92@01 b@88@01) S@87@01))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@90@01)) b@88@01)
  a@89@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@94@01 $Snap)
(assert (= $t@94@01 ($Snap.combine ($Snap.first $t@94@01) ($Snap.second $t@94@01))))
(declare-const r@95@01 $Ref)
(push) ; 3
; [eval] (r in S)
(assert (Set_in r@95@01 S@87@01))
(pop) ; 3
(declare-fun inv@96@01 ($Ref) $Ref)
(declare-fun img@97@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((r1@95@01 $Ref) (r2@95@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@95@01 S@87@01)
      (Set_in r2@95@01 S@87@01)
      (= r1@95@01 r2@95@01))
    (= r1@95@01 r2@95@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@95@01 $Ref)) (!
  (=>
    (Set_in r@95@01 S@87@01)
    (and (= (inv@96@01 r@95@01) r@95@01) (img@97@01 r@95@01)))
  :pattern ((Set_in r@95@01 S@87@01))
  :pattern ((inv@96@01 r@95@01))
  :pattern ((img@97@01 r@95@01))
  :qid |quant-u-5768|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@97@01 r) (Set_in (inv@96@01 r) S@87@01)) (= (inv@96@01 r) r))
  :pattern ((inv@96@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((r@95@01 $Ref)) (!
  (=> (Set_in r@95@01 S@87@01) (not (= r@95@01 $Ref.null)))
  :pattern ((Set_in r@95@01 S@87@01))
  :pattern ((inv@96@01 r@95@01))
  :pattern ((img@97@01 r@95@01))
  :qid |f-permImpliesNonNull|)))
(assert (= ($Snap.second $t@94@01) $Snap.unit))
; [eval] (forall t: Ref :: { (t in S) } (t in S) ==> t.f > 2 * a)
(declare-const t@98@01 $Ref)
(push) ; 3
; [eval] (t in S) ==> t.f > 2 * a
; [eval] (t in S)
(push) ; 4
; [then-branch: 10 | t@98@01 in S@87@01 | live]
; [else-branch: 10 | !(t@98@01 in S@87@01) | live]
(push) ; 5
; [then-branch: 10 | t@98@01 in S@87@01]
(assert (Set_in t@98@01 S@87@01))
; [eval] t.f > 2 * a
(push) ; 6
(assert (not (and (img@97@01 t@98@01) (Set_in (inv@96@01 t@98@01) S@87@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] 2 * a
(pop) ; 5
(push) ; 5
; [else-branch: 10 | !(t@98@01 in S@87@01)]
(assert (not (Set_in t@98@01 S@87@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (not (Set_in t@98@01 S@87@01)) (Set_in t@98@01 S@87@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((t@98@01 $Ref)) (!
  (or (not (Set_in t@98@01 S@87@01)) (Set_in t@98@01 S@87@01))
  :pattern ((Set_in t@98@01 S@87@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@53@10@53@54-aux|)))
(assert (forall ((t@98@01 $Ref)) (!
  (=>
    (Set_in t@98@01 S@87@01)
    (>
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@94@01)) t@98@01)
      (* 2 a@89@01)))
  :pattern ((Set_in t@98@01 S@87@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@53@10@53@54|)))
(pop) ; 2
(push) ; 2
; [exec]
; b.f := 2 * a + 1
; [eval] 2 * a + 1
; [eval] 2 * a
; Precomputing data for removing quantified permissions
(define-fun pTaken@99@01 ((r $Ref)) $Perm
  (ite
    (= r b@88@01)
    ($Perm.min
      (ite
        (and (img@93@01 r) (Set_in (inv@92@01 r) S@87@01))
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
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@93@01 r) (Set_in (inv@92@01 r) S@87@01))
        $Perm.Write
        $Perm.No)
      (pTaken@99@01 r))
    $Perm.No)
  
  :qid |quant-u-5770|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=> (= r b@88@01) (= (- $Perm.Write (pTaken@99@01 r)) $Perm.No))
  
  :qid |quant-u-5771|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@100@01 $FVF<f>)
; Definitional axioms for singleton-FVF's value
(assert (= ($FVF.lookup_f (as sm@100@01  $FVF<f>) b@88@01) (+ (* 2 a@89@01) 1)))
(declare-const r@101@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (r in S)
(assert (Set_in r@101@01 S@87@01))
(pop) ; 3
(declare-fun inv@102@01 ($Ref) $Ref)
(declare-fun img@103@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((r1@101@01 $Ref) (r2@101@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@101@01 S@87@01)
      (Set_in r2@101@01 S@87@01)
      (= r1@101@01 r2@101@01))
    (= r1@101@01 r2@101@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@101@01 $Ref)) (!
  (=>
    (Set_in r@101@01 S@87@01)
    (and (= (inv@102@01 r@101@01) r@101@01) (img@103@01 r@101@01)))
  :pattern ((Set_in r@101@01 S@87@01))
  :pattern ((inv@102@01 r@101@01))
  :pattern ((img@103@01 r@101@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@103@01 r) (Set_in (inv@102@01 r) S@87@01)) (= (inv@102@01 r) r))
  :pattern ((inv@102@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@104@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@102@01 r) S@87@01) (img@103@01 r) (= r (inv@102@01 r)))
    ($Perm.min (ite (= r b@88@01) $Perm.Write $Perm.No) $Perm.Write)
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
(assert (not (= (- $Perm.Write (pTaken@104@01 b@88@01)) $Perm.No)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@102@01 r) S@87@01) (img@103@01 r) (= r (inv@102@01 r)))
    (= (- $Perm.Write (pTaken@104@01 r)) $Perm.No))
  
  :qid |quant-u-5775|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall t: Ref :: { (t in S) } (t in S) ==> t.f > 2 * a)
(declare-const t@105@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (t in S) ==> t.f > 2 * a
; [eval] (t in S)
(push) ; 4
; [then-branch: 11 | t@105@01 in S@87@01 | live]
; [else-branch: 11 | !(t@105@01 in S@87@01) | live]
(push) ; 5
; [then-branch: 11 | t@105@01 in S@87@01]
(assert (Set_in t@105@01 S@87@01))
; [eval] t.f > 2 * a
(push) ; 6
(assert (not (= t@105@01 b@88@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] 2 * a
(pop) ; 5
(push) ; 5
; [else-branch: 11 | !(t@105@01 in S@87@01)]
(assert (not (Set_in t@105@01 S@87@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (not (Set_in t@105@01 S@87@01)) (Set_in t@105@01 S@87@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((t@105@01 $Ref)) (!
  (or (not (Set_in t@105@01 S@87@01)) (Set_in t@105@01 S@87@01))
  :pattern ((Set_in t@105@01 S@87@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@53@10@53@54-aux|)))
(push) ; 3
(assert (not (forall ((t@105@01 $Ref)) (!
  (=>
    (Set_in t@105@01 S@87@01)
    (> ($FVF.lookup_f (as sm@100@01  $FVF<f>) t@105@01) (* 2 a@89@01)))
  :pattern ((Set_in t@105@01 S@87@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@53@10@53@54|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((t@105@01 $Ref)) (!
  (=>
    (Set_in t@105@01 S@87@01)
    (> ($FVF.lookup_f (as sm@100@01  $FVF<f>) t@105@01) (* 2 a@89@01)))
  :pattern ((Set_in t@105@01 S@87@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@53@10@53@54|)))
(pop) ; 2
(pop) ; 1
; ---------- m7 ----------
(declare-const S@106@01 Set<$Ref>)
(declare-const b@107@01 $Ref)
(declare-const a@108@01 Int)
(declare-const S@109@01 Set<$Ref>)
(declare-const b@110@01 $Ref)
(declare-const a@111@01 Int)
(push) ; 1
(declare-const $t@112@01 $Snap)
(assert (= $t@112@01 ($Snap.combine ($Snap.first $t@112@01) ($Snap.second $t@112@01))))
(declare-const s@113@01 $Ref)
(push) ; 2
; [eval] (s in S)
(assert (Set_in s@113@01 S@109@01))
(pop) ; 2
(declare-fun inv@114@01 ($Ref) $Ref)
(declare-fun img@115@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((s1@113@01 $Ref) (s2@113@01 $Ref)) (!
  (=>
    (and
      (Set_in s1@113@01 S@109@01)
      (Set_in s2@113@01 S@109@01)
      (= s1@113@01 s2@113@01))
    (= s1@113@01 s2@113@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((s@113@01 $Ref)) (!
  (=>
    (Set_in s@113@01 S@109@01)
    (and (= (inv@114@01 s@113@01) s@113@01) (img@115@01 s@113@01)))
  :pattern ((Set_in s@113@01 S@109@01))
  :pattern ((inv@114@01 s@113@01))
  :pattern ((img@115@01 s@113@01))
  :qid |quant-u-5777|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@115@01 r) (Set_in (inv@114@01 r) S@109@01)) (= (inv@114@01 r) r))
  :pattern ((inv@114@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((s@113@01 $Ref)) (!
  (=> (Set_in s@113@01 S@109@01) (not (= s@113@01 $Ref.null)))
  :pattern ((Set_in s@113@01 S@109@01))
  :pattern ((inv@114@01 s@113@01))
  :pattern ((img@115@01 s@113@01))
  :qid |f-permImpliesNonNull|)))
(assert (=
  ($Snap.second $t@112@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@112@01))
    ($Snap.second ($Snap.second $t@112@01)))))
(assert (= ($Snap.first ($Snap.second $t@112@01)) $Snap.unit))
; [eval] S == Set(b)
; [eval] Set(b)
(assert (Set_equal S@109@01 (Set_singleton b@110@01)))
(assert (= ($Snap.second ($Snap.second $t@112@01)) $Snap.unit))
; [eval] b.f == a
(push) ; 2
(assert (not (and (img@115@01 b@110@01) (Set_in (inv@114@01 b@110@01) S@109@01))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@112@01)) b@110@01)
  a@111@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const r@116@01 $Ref)
(push) ; 3
; [eval] (r in S)
(assert (Set_in r@116@01 S@109@01))
(pop) ; 3
(declare-const $t@117@01 $FVF<f>)
(declare-fun inv@118@01 ($Ref) $Ref)
(declare-fun img@119@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((r1@116@01 $Ref) (r2@116@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@116@01 S@109@01)
      (Set_in r2@116@01 S@109@01)
      (= r1@116@01 r2@116@01))
    (= r1@116@01 r2@116@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@116@01 $Ref)) (!
  (=>
    (Set_in r@116@01 S@109@01)
    (and (= (inv@118@01 r@116@01) r@116@01) (img@119@01 r@116@01)))
  :pattern ((Set_in r@116@01 S@109@01))
  :pattern ((inv@118@01 r@116@01))
  :pattern ((img@119@01 r@116@01))
  :qid |quant-u-5779|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@119@01 r) (Set_in (inv@118@01 r) S@109@01)) (= (inv@118@01 r) r))
  :pattern ((inv@118@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((r@116@01 $Ref)) (!
  (=> (Set_in r@116@01 S@109@01) (not (= r@116@01 $Ref.null)))
  :pattern ((Set_in r@116@01 S@109@01))
  :pattern ((inv@118@01 r@116@01))
  :pattern ((img@119@01 r@116@01))
  :qid |f-permImpliesNonNull|)))
(pop) ; 2
(push) ; 2
; [exec]
; b.f := 2 * a
; [eval] 2 * a
; Precomputing data for removing quantified permissions
(define-fun pTaken@120@01 ((r $Ref)) $Perm
  (ite
    (= r b@110@01)
    ($Perm.min
      (ite
        (and (img@115@01 r) (Set_in (inv@114@01 r) S@109@01))
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
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@115@01 r) (Set_in (inv@114@01 r) S@109@01))
        $Perm.Write
        $Perm.No)
      (pTaken@120@01 r))
    $Perm.No)
  
  :qid |quant-u-5781|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=> (= r b@110@01) (= (- $Perm.Write (pTaken@120@01 r)) $Perm.No))
  
  :qid |quant-u-5782|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@121@01 $FVF<f>)
; Definitional axioms for singleton-FVF's value
(assert (= ($FVF.lookup_f (as sm@121@01  $FVF<f>) b@110@01) (* 2 a@111@01)))
; [exec]
; exhale (forall t: Ref :: { (t in S) } (t in S) ==> t.f > 2 * a)
; [eval] (forall t: Ref :: { (t in S) } (t in S) ==> t.f > 2 * a)
(declare-const t@122@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (t in S) ==> t.f > 2 * a
; [eval] (t in S)
(push) ; 4
; [then-branch: 12 | t@122@01 in S@109@01 | live]
; [else-branch: 12 | !(t@122@01 in S@109@01) | live]
(push) ; 5
; [then-branch: 12 | t@122@01 in S@109@01]
(assert (Set_in t@122@01 S@109@01))
; [eval] t.f > 2 * a
(push) ; 6
(assert (not (= t@122@01 b@110@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] 2 * a
(pop) ; 5
(push) ; 5
; [else-branch: 12 | !(t@122@01 in S@109@01)]
(assert (not (Set_in t@122@01 S@109@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (not (Set_in t@122@01 S@109@01)) (Set_in t@122@01 S@109@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((t@122@01 $Ref)) (!
  (or (not (Set_in t@122@01 S@109@01)) (Set_in t@122@01 S@109@01))
  :pattern ((Set_in t@122@01 S@109@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@66@13@66@55-aux|)))
(push) ; 3
(assert (not (forall ((t@122@01 $Ref)) (!
  (=>
    (Set_in t@122@01 S@109@01)
    (> ($FVF.lookup_f (as sm@121@01  $FVF<f>) t@122@01) (* 2 a@111@01)))
  :pattern ((Set_in t@122@01 S@109@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@66@13@66@55|))))
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
(declare-const sm@123@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r b@110@01)
    (=
      ($FVF.lookup_f (as sm@123@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@121@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@123@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@121@01  $FVF<f>) r))
  :qid |qp.fvfValDef6|)))
(declare-const pm@124@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@124@01  $FPM) r)
    (ite (= r b@110@01) $Perm.Write $Perm.No))
  :pattern (($FVF.perm_f (as pm@124@01  $FPM) r))
  :qid |qp.resPrmSumDef7|)))
(assert (<= ($FVF.perm_f (as pm@124@01  $FPM) b@110@01) $Perm.Write))
; [eval] (forall t: Ref :: { (t in S) } (t in S) ==> t.f > 2 * a)
(declare-const t@125@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (t in S) ==> t.f > 2 * a
; [eval] (t in S)
(push) ; 4
; [then-branch: 13 | t@125@01 in S@109@01 | live]
; [else-branch: 13 | !(t@125@01 in S@109@01) | live]
(push) ; 5
; [then-branch: 13 | t@125@01 in S@109@01]
(assert (Set_in t@125@01 S@109@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map values
; [eval] t.f > 2 * a
(set-option :timeout 0)
(push) ; 6
(assert (not (= t@125@01 b@110@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] 2 * a
(pop) ; 5
(push) ; 5
; [else-branch: 13 | !(t@125@01 in S@109@01)]
(assert (not (Set_in t@125@01 S@109@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map values
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (not (Set_in t@125@01 S@109@01)) (Set_in t@125@01 S@109@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((t@125@01 $Ref)) (!
  (or (not (Set_in t@125@01 S@109@01)) (Set_in t@125@01 S@109@01))
  :pattern ((Set_in t@125@01 S@109@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@66@13@66@55-aux|)))
(set-option :timeout 0)
(push) ; 3
(assert (not (forall ((t@125@01 $Ref)) (!
  (=>
    (Set_in t@125@01 S@109@01)
    (> ($FVF.lookup_f (as sm@123@01  $FVF<f>) t@125@01) (* 2 a@111@01)))
  :pattern ((Set_in t@125@01 S@109@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@66@13@66@55|))))
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
(declare-const sm@126@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r b@110@01)
    (=
      ($FVF.lookup_f (as sm@126@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@121@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@126@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@121@01  $FVF<f>) r))
  :qid |qp.fvfValDef8|)))
(declare-const pm@127@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@127@01  $FPM) r)
    (ite (= r b@110@01) $Perm.Write $Perm.No))
  :pattern (($FVF.perm_f (as pm@127@01  $FPM) r))
  :qid |qp.resPrmSumDef9|)))
(assert (<= ($FVF.perm_f (as pm@127@01  $FPM) b@110@01) $Perm.Write))
; [eval] (forall t: Ref :: { (t in S) } (t in S) ==> t.f > 2 * a)
(declare-const t@128@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (t in S) ==> t.f > 2 * a
; [eval] (t in S)
(push) ; 4
; [then-branch: 14 | t@128@01 in S@109@01 | live]
; [else-branch: 14 | !(t@128@01 in S@109@01) | live]
(push) ; 5
; [then-branch: 14 | t@128@01 in S@109@01]
(assert (Set_in t@128@01 S@109@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map values
; [eval] t.f > 2 * a
(set-option :timeout 0)
(push) ; 6
(assert (not (= t@128@01 b@110@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] 2 * a
(pop) ; 5
(push) ; 5
; [else-branch: 14 | !(t@128@01 in S@109@01)]
(assert (not (Set_in t@128@01 S@109@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map values
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (not (Set_in t@128@01 S@109@01)) (Set_in t@128@01 S@109@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((t@128@01 $Ref)) (!
  (or (not (Set_in t@128@01 S@109@01)) (Set_in t@128@01 S@109@01))
  :pattern ((Set_in t@128@01 S@109@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@66@13@66@55-aux|)))
(set-option :timeout 0)
(push) ; 3
(assert (not (forall ((t@128@01 $Ref)) (!
  (=>
    (Set_in t@128@01 S@109@01)
    (> ($FVF.lookup_f (as sm@126@01  $FVF<f>) t@128@01) (* 2 a@111@01)))
  :pattern ((Set_in t@128@01 S@109@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@66@13@66@55|))))
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
; Definitional axioms for snapshot map values
; [eval] (forall t: Ref :: { (t in S) } (t in S) ==> t.f > 2 * a)
(declare-const t@129@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (t in S) ==> t.f > 2 * a
; [eval] (t in S)
(push) ; 4
; [then-branch: 15 | t@129@01 in S@109@01 | live]
; [else-branch: 15 | !(t@129@01 in S@109@01) | live]
(push) ; 5
; [then-branch: 15 | t@129@01 in S@109@01]
(assert (Set_in t@129@01 S@109@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map values
; [eval] t.f > 2 * a
(set-option :timeout 0)
(push) ; 6
(assert (not (= t@129@01 b@110@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] 2 * a
(pop) ; 5
(push) ; 5
; [else-branch: 15 | !(t@129@01 in S@109@01)]
(assert (not (Set_in t@129@01 S@109@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map values
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (not (Set_in t@129@01 S@109@01)) (Set_in t@129@01 S@109@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((t@129@01 $Ref)) (!
  (or (not (Set_in t@129@01 S@109@01)) (Set_in t@129@01 S@109@01))
  :pattern ((Set_in t@129@01 S@109@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@66@13@66@55-aux|)))
(set-option :timeout 0)
(push) ; 3
(assert (not (forall ((t@129@01 $Ref)) (!
  (=>
    (Set_in t@129@01 S@109@01)
    (> ($FVF.lookup_f (as sm@126@01  $FVF<f>) t@129@01) (* 2 a@111@01)))
  :pattern ((Set_in t@129@01 S@109@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@66@13@66@55|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1
; ---------- m5 ----------
(declare-const S@130@01 Set<$Ref>)
(declare-const b@131@01 $Ref)
(declare-const S@132@01 Set<$Ref>)
(declare-const b@133@01 $Ref)
(push) ; 1
(declare-const $t@134@01 $Snap)
(assert (= $t@134@01 ($Snap.combine ($Snap.first $t@134@01) ($Snap.second $t@134@01))))
(declare-const s@135@01 $Ref)
(push) ; 2
; [eval] (s in S)
(assert (Set_in s@135@01 S@132@01))
(pop) ; 2
(declare-fun inv@136@01 ($Ref) $Ref)
(declare-fun img@137@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((s1@135@01 $Ref) (s2@135@01 $Ref)) (!
  (=>
    (and
      (Set_in s1@135@01 S@132@01)
      (Set_in s2@135@01 S@132@01)
      (= s1@135@01 s2@135@01))
    (= s1@135@01 s2@135@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((s@135@01 $Ref)) (!
  (=>
    (Set_in s@135@01 S@132@01)
    (and (= (inv@136@01 s@135@01) s@135@01) (img@137@01 s@135@01)))
  :pattern ((Set_in s@135@01 S@132@01))
  :pattern ((inv@136@01 s@135@01))
  :pattern ((img@137@01 s@135@01))
  :qid |quant-u-5784|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@137@01 r) (Set_in (inv@136@01 r) S@132@01)) (= (inv@136@01 r) r))
  :pattern ((inv@136@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((s@135@01 $Ref)) (!
  (=> (Set_in s@135@01 S@132@01) (not (= s@135@01 $Ref.null)))
  :pattern ((Set_in s@135@01 S@132@01))
  :pattern ((inv@136@01 s@135@01))
  :pattern ((img@137@01 s@135@01))
  :qid |f-permImpliesNonNull|)))
(assert (= ($Snap.second $t@134@01) $Snap.unit))
; [eval] (b in S)
(assert (Set_in b@133@01 S@132@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; inhale b.f > 0
(declare-const $t@138@01 $Snap)
(assert (= $t@138@01 $Snap.unit))
; [eval] b.f > 0
(push) ; 3
(assert (not (and (img@137@01 b@133@01) (Set_in (inv@136@01 b@133@01) S@132@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (>
  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@134@01)) b@133@01)
  0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
(pop) ; 2
(pop) ; 1
; ---------- m8 ----------
(declare-const S@139@01 Set<$Ref>)
(declare-const b@140@01 $Ref)
(declare-const a@141@01 Int)
(declare-const c@142@01 $Ref)
(declare-const S@143@01 Set<$Ref>)
(declare-const b@144@01 $Ref)
(declare-const a@145@01 Int)
(declare-const c@146@01 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@147@01 $Snap)
(assert (= $t@147@01 ($Snap.combine ($Snap.first $t@147@01) ($Snap.second $t@147@01))))
(declare-const s@148@01 $Ref)
(push) ; 2
; [eval] (s in S)
(assert (Set_in s@148@01 S@143@01))
(pop) ; 2
(declare-fun inv@149@01 ($Ref) $Ref)
(declare-fun img@150@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((s1@148@01 $Ref) (s2@148@01 $Ref)) (!
  (=>
    (and
      (Set_in s1@148@01 S@143@01)
      (Set_in s2@148@01 S@143@01)
      (= s1@148@01 s2@148@01))
    (= s1@148@01 s2@148@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((s@148@01 $Ref)) (!
  (=>
    (Set_in s@148@01 S@143@01)
    (and (= (inv@149@01 s@148@01) s@148@01) (img@150@01 s@148@01)))
  :pattern ((Set_in s@148@01 S@143@01))
  :pattern ((inv@149@01 s@148@01))
  :pattern ((img@150@01 s@148@01))
  :qid |quant-u-5786|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@150@01 r) (Set_in (inv@149@01 r) S@143@01)) (= (inv@149@01 r) r))
  :pattern ((inv@149@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((s@148@01 $Ref)) (!
  (=> (Set_in s@148@01 S@143@01) (not (= s@148@01 $Ref.null)))
  :pattern ((Set_in s@148@01 S@143@01))
  :pattern ((inv@149@01 s@148@01))
  :pattern ((img@150@01 s@148@01))
  :qid |f-permImpliesNonNull|)))
(assert (=
  ($Snap.second $t@147@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@147@01))
    ($Snap.second ($Snap.second $t@147@01)))))
(assert (= ($Snap.first ($Snap.second $t@147@01)) $Snap.unit))
; [eval] (forall s: Ref :: { (s in S) } (s in S) ==> s.f == a)
(declare-const s@151@01 $Ref)
(push) ; 2
; [eval] (s in S) ==> s.f == a
; [eval] (s in S)
(push) ; 3
; [then-branch: 16 | s@151@01 in S@143@01 | live]
; [else-branch: 16 | !(s@151@01 in S@143@01) | live]
(push) ; 4
; [then-branch: 16 | s@151@01 in S@143@01]
(assert (Set_in s@151@01 S@143@01))
; [eval] s.f == a
(push) ; 5
(assert (not (and (img@150@01 s@151@01) (Set_in (inv@149@01 s@151@01) S@143@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 16 | !(s@151@01 in S@143@01)]
(assert (not (Set_in s@151@01 S@143@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (not (Set_in s@151@01 S@143@01)) (Set_in s@151@01 S@143@01)))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((s@151@01 $Ref)) (!
  (or (not (Set_in s@151@01 S@143@01)) (Set_in s@151@01 S@143@01))
  :pattern ((Set_in s@151@01 S@143@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@78@12@78@48-aux|)))
(assert (forall ((s@151@01 $Ref)) (!
  (=>
    (Set_in s@151@01 S@143@01)
    (=
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@147@01)) s@151@01)
      a@145@01))
  :pattern ((Set_in s@151@01 S@143@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@78@12@78@48|)))
(assert (=
  ($Snap.second ($Snap.second $t@147@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@147@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@147@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@147@01))) $Snap.unit))
; [eval] (b in S)
(assert (Set_in b@144@01 S@143@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@147@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@147@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@147@01)))))))
(declare-const sm@152@01 $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (as sm@152@01  $FVF<f>) c@146@01)
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@147@01)))))))
(assert (not (= c@146@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@147@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@147@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@147@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@147@01)))))
  $Snap.unit))
; [eval] c.f < 0
(declare-const sm@153@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@150@01 r) (Set_in (inv@149@01 r) S@143@01))
    (=
      ($FVF.lookup_f (as sm@153@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@147@01)) r)))
  :pattern (($FVF.lookup_f (as sm@153@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@147@01)) r))
  :qid |qp.fvfValDef10|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r c@146@01)
    (=
      ($FVF.lookup_f (as sm@153@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@152@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@153@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@152@01  $FVF<f>) r))
  :qid |qp.fvfValDef11|)))
(declare-const pm@154@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@154@01  $FPM) r)
    (+
      (ite
        (and (img@150@01 r) (Set_in (inv@149@01 r) S@143@01))
        $Perm.Write
        $Perm.No)
      (ite (= r c@146@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@154@01  $FPM) r))
  :qid |qp.resPrmSumDef12|)))
(push) ; 2
(assert (not (< $Perm.No ($FVF.perm_f (as pm@154@01  $FPM) c@146@01))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (< ($FVF.lookup_f (as sm@153@01  $FVF<f>) c@146@01) 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@147@01)))))
  $Snap.unit))
; [eval] a > 0
(assert (> a@145@01 0))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@155@01 $Snap)
(assert (= $t@155@01 ($Snap.combine ($Snap.first $t@155@01) ($Snap.second $t@155@01))))
(declare-const r@156@01 $Ref)
(push) ; 3
; [eval] (r in S)
(assert (Set_in r@156@01 S@143@01))
(pop) ; 3
(declare-fun inv@157@01 ($Ref) $Ref)
(declare-fun img@158@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((r1@156@01 $Ref) (r2@156@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@156@01 S@143@01)
      (Set_in r2@156@01 S@143@01)
      (= r1@156@01 r2@156@01))
    (= r1@156@01 r2@156@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@156@01 $Ref)) (!
  (=>
    (Set_in r@156@01 S@143@01)
    (and (= (inv@157@01 r@156@01) r@156@01) (img@158@01 r@156@01)))
  :pattern ((Set_in r@156@01 S@143@01))
  :pattern ((inv@157@01 r@156@01))
  :pattern ((img@158@01 r@156@01))
  :qid |quant-u-5788|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@158@01 r) (Set_in (inv@157@01 r) S@143@01)) (= (inv@157@01 r) r))
  :pattern ((inv@157@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((r@156@01 $Ref)) (!
  (=> (Set_in r@156@01 S@143@01) (not (= r@156@01 $Ref.null)))
  :pattern ((Set_in r@156@01 S@143@01))
  :pattern ((inv@157@01 r@156@01))
  :pattern ((img@158@01 r@156@01))
  :qid |f-permImpliesNonNull|)))
(assert (= ($Snap.second $t@155@01) $Snap.unit))
; [eval] (forall t: Ref :: { (t in S) } (t in S) ==> t.f == (t == b ? 2 * a + 1 : a))
(declare-const t@159@01 $Ref)
(push) ; 3
; [eval] (t in S) ==> t.f == (t == b ? 2 * a + 1 : a)
; [eval] (t in S)
(push) ; 4
; [then-branch: 17 | t@159@01 in S@143@01 | live]
; [else-branch: 17 | !(t@159@01 in S@143@01) | live]
(push) ; 5
; [then-branch: 17 | t@159@01 in S@143@01]
(assert (Set_in t@159@01 S@143@01))
; [eval] t.f == (t == b ? 2 * a + 1 : a)
(push) ; 6
(assert (not (and (img@158@01 t@159@01) (Set_in (inv@157@01 t@159@01) S@143@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] (t == b ? 2 * a + 1 : a)
; [eval] t == b
(push) ; 6
; [then-branch: 18 | t@159@01 == b@144@01 | live]
; [else-branch: 18 | t@159@01 != b@144@01 | live]
(push) ; 7
; [then-branch: 18 | t@159@01 == b@144@01]
(assert (= t@159@01 b@144@01))
; [eval] 2 * a + 1
; [eval] 2 * a
(pop) ; 7
(push) ; 7
; [else-branch: 18 | t@159@01 != b@144@01]
(assert (not (= t@159@01 b@144@01)))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or (not (= t@159@01 b@144@01)) (= t@159@01 b@144@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 17 | !(t@159@01 in S@143@01)]
(assert (not (Set_in t@159@01 S@143@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (Set_in t@159@01 S@143@01)
  (and
    (Set_in t@159@01 S@143@01)
    (or (not (= t@159@01 b@144@01)) (= t@159@01 b@144@01)))))
; Joined path conditions
(assert (or (not (Set_in t@159@01 S@143@01)) (Set_in t@159@01 S@143@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((t@159@01 $Ref)) (!
  (and
    (=>
      (Set_in t@159@01 S@143@01)
      (and
        (Set_in t@159@01 S@143@01)
        (or (not (= t@159@01 b@144@01)) (= t@159@01 b@144@01))))
    (or (not (Set_in t@159@01 S@143@01)) (Set_in t@159@01 S@143@01)))
  :pattern ((Set_in t@159@01 S@143@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@84@11@84@71-aux|)))
(assert (forall ((t@159@01 $Ref)) (!
  (=>
    (Set_in t@159@01 S@143@01)
    (=
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@155@01)) t@159@01)
      (ite (= t@159@01 b@144@01) (+ (* 2 a@145@01) 1) a@145@01)))
  :pattern ((Set_in t@159@01 S@143@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@84@11@84@71|)))
(pop) ; 2
(push) ; 2
; [exec]
; b.f := 2 * a + 1
; [eval] 2 * a + 1
; [eval] 2 * a
(push) ; 3
(set-option :timeout 10)
(assert (not (= c@146@01 b@144@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@160@01 ((r $Ref)) $Perm
  (ite
    (= r b@144@01)
    ($Perm.min
      (ite
        (and (img@150@01 r) (Set_in (inv@149@01 r) S@143@01))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@161@01 ((r $Ref)) $Perm
  (ite
    (= r b@144@01)
    ($Perm.min
      (ite (= r c@146@01) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@160@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@150@01 r) (Set_in (inv@149@01 r) S@143@01))
        $Perm.Write
        $Perm.No)
      (pTaken@160@01 r))
    $Perm.No)
  
  :qid |quant-u-5790|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@160@01 r) $Perm.No)
  
  :qid |quant-u-5791|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=> (= r b@144@01) (= (- $Perm.Write (pTaken@160@01 r)) $Perm.No))
  
  :qid |quant-u-5792|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@162@01 $FVF<f>)
; Definitional axioms for singleton-FVF's value
(assert (= ($FVF.lookup_f (as sm@162@01  $FVF<f>) b@144@01) (+ (* 2 a@145@01) 1)))
(declare-const r@163@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (r in S)
(assert (Set_in r@163@01 S@143@01))
(pop) ; 3
(declare-fun inv@164@01 ($Ref) $Ref)
(declare-fun img@165@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((r1@163@01 $Ref) (r2@163@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@163@01 S@143@01)
      (Set_in r2@163@01 S@143@01)
      (= r1@163@01 r2@163@01))
    (= r1@163@01 r2@163@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@163@01 $Ref)) (!
  (=>
    (Set_in r@163@01 S@143@01)
    (and (= (inv@164@01 r@163@01) r@163@01) (img@165@01 r@163@01)))
  :pattern ((Set_in r@163@01 S@143@01))
  :pattern ((inv@164@01 r@163@01))
  :pattern ((img@165@01 r@163@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@165@01 r) (Set_in (inv@164@01 r) S@143@01)) (= (inv@164@01 r) r))
  :pattern ((inv@164@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@166@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@164@01 r) S@143@01) (img@165@01 r) (= r (inv@164@01 r)))
    ($Perm.min
      (ite
        (and (img@150@01 r) (Set_in (inv@149@01 r) S@143@01))
        (- $Perm.Write (pTaken@160@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@167@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@164@01 r) S@143@01) (img@165@01 r) (= r (inv@164@01 r)))
    ($Perm.min
      (ite (= r b@144@01) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@166@01 r)))
    $Perm.No))
(define-fun pTaken@168@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@164@01 r) S@143@01) (img@165@01 r) (= r (inv@164@01 r)))
    ($Perm.min
      (ite (= r c@146@01) $Perm.Write $Perm.No)
      (- (- $Perm.Write (pTaken@166@01 r)) (pTaken@167@01 r)))
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
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@150@01 r) (Set_in (inv@149@01 r) S@143@01))
        (- $Perm.Write (pTaken@160@01 r))
        $Perm.No)
      (pTaken@166@01 r))
    $Perm.No)
  
  :qid |quant-u-5795|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@164@01 r) S@143@01) (img@165@01 r) (= r (inv@164@01 r)))
    (= (- $Perm.Write (pTaken@166@01 r)) $Perm.No))
  
  :qid |quant-u-5796|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@167@01 b@144@01)) $Perm.No)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@164@01 r) S@143@01) (img@165@01 r) (= r (inv@164@01 r)))
    (= (- (- $Perm.Write (pTaken@166@01 r)) (pTaken@167@01 r)) $Perm.No))
  
  :qid |quant-u-5798|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall t: Ref :: { (t in S) } (t in S) ==> t.f == (t == b ? 2 * a + 1 : a))
(declare-const t@169@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (t in S) ==> t.f == (t == b ? 2 * a + 1 : a)
; [eval] (t in S)
(push) ; 4
; [then-branch: 19 | t@169@01 in S@143@01 | live]
; [else-branch: 19 | !(t@169@01 in S@143@01) | live]
(push) ; 5
; [then-branch: 19 | t@169@01 in S@143@01]
(assert (Set_in t@169@01 S@143@01))
; [eval] t.f == (t == b ? 2 * a + 1 : a)
(declare-const sm@170@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r b@144@01)
    (=
      ($FVF.lookup_f (as sm@170@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@162@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@170@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@162@01  $FVF<f>) r))
  :qid |qp.fvfValDef13|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r c@146@01)
    (=
      ($FVF.lookup_f (as sm@170@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@152@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@170@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@152@01  $FVF<f>) r))
  :qid |qp.fvfValDef14|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@150@01 r) (Set_in (inv@149@01 r) S@143@01))
      (< $Perm.No (- $Perm.Write (pTaken@160@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@170@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@147@01)) r)))
  :pattern (($FVF.lookup_f (as sm@170@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@147@01)) r))
  :qid |qp.fvfValDef15|)))
(declare-const pm@171@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@171@01  $FPM) r)
    (+
      (+
        (ite (= r b@144@01) $Perm.Write $Perm.No)
        (ite (= r c@146@01) $Perm.Write $Perm.No))
      (ite
        (and (img@150@01 r) (Set_in (inv@149@01 r) S@143@01))
        (- $Perm.Write (pTaken@160@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@171@01  $FPM) r))
  :qid |qp.resPrmSumDef16|)))
(push) ; 6
(assert (not (< $Perm.No ($FVF.perm_f (as pm@171@01  $FPM) t@169@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] (t == b ? 2 * a + 1 : a)
; [eval] t == b
(push) ; 6
; [then-branch: 20 | t@169@01 == b@144@01 | live]
; [else-branch: 20 | t@169@01 != b@144@01 | live]
(push) ; 7
; [then-branch: 20 | t@169@01 == b@144@01]
(assert (= t@169@01 b@144@01))
; [eval] 2 * a + 1
; [eval] 2 * a
(pop) ; 7
(push) ; 7
; [else-branch: 20 | t@169@01 != b@144@01]
(assert (not (= t@169@01 b@144@01)))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or (not (= t@169@01 b@144@01)) (= t@169@01 b@144@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 19 | !(t@169@01 in S@143@01)]
(assert (not (Set_in t@169@01 S@143@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (= r b@144@01)
    (=
      ($FVF.lookup_f (as sm@170@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@162@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@170@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@162@01  $FVF<f>) r))
  :qid |qp.fvfValDef13|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r c@146@01)
    (=
      ($FVF.lookup_f (as sm@170@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@152@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@170@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@152@01  $FVF<f>) r))
  :qid |qp.fvfValDef14|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@150@01 r) (Set_in (inv@149@01 r) S@143@01))
      (< $Perm.No (- $Perm.Write (pTaken@160@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@170@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@147@01)) r)))
  :pattern (($FVF.lookup_f (as sm@170@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@147@01)) r))
  :qid |qp.fvfValDef15|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@171@01  $FPM) r)
    (+
      (+
        (ite (= r b@144@01) $Perm.Write $Perm.No)
        (ite (= r c@146@01) $Perm.Write $Perm.No))
      (ite
        (and (img@150@01 r) (Set_in (inv@149@01 r) S@143@01))
        (- $Perm.Write (pTaken@160@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@171@01  $FPM) r))
  :qid |qp.resPrmSumDef16|)))
(assert (=>
  (Set_in t@169@01 S@143@01)
  (and
    (Set_in t@169@01 S@143@01)
    (or (not (= t@169@01 b@144@01)) (= t@169@01 b@144@01)))))
; Joined path conditions
(assert (or (not (Set_in t@169@01 S@143@01)) (Set_in t@169@01 S@143@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (= r b@144@01)
    (=
      ($FVF.lookup_f (as sm@170@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@162@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@170@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@162@01  $FVF<f>) r))
  :qid |qp.fvfValDef13|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r c@146@01)
    (=
      ($FVF.lookup_f (as sm@170@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@152@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@170@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@152@01  $FVF<f>) r))
  :qid |qp.fvfValDef14|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@150@01 r) (Set_in (inv@149@01 r) S@143@01))
      (< $Perm.No (- $Perm.Write (pTaken@160@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@170@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@147@01)) r)))
  :pattern (($FVF.lookup_f (as sm@170@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@147@01)) r))
  :qid |qp.fvfValDef15|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@171@01  $FPM) r)
    (+
      (+
        (ite (= r b@144@01) $Perm.Write $Perm.No)
        (ite (= r c@146@01) $Perm.Write $Perm.No))
      (ite
        (and (img@150@01 r) (Set_in (inv@149@01 r) S@143@01))
        (- $Perm.Write (pTaken@160@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@171@01  $FPM) r))
  :qid |qp.resPrmSumDef16|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((t@169@01 $Ref)) (!
  (and
    (=>
      (Set_in t@169@01 S@143@01)
      (and
        (Set_in t@169@01 S@143@01)
        (or (not (= t@169@01 b@144@01)) (= t@169@01 b@144@01))))
    (or (not (Set_in t@169@01 S@143@01)) (Set_in t@169@01 S@143@01)))
  :pattern ((Set_in t@169@01 S@143@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@84@11@84@71-aux|)))
(push) ; 3
(assert (not (forall ((t@169@01 $Ref)) (!
  (=>
    (Set_in t@169@01 S@143@01)
    (=
      ($FVF.lookup_f (as sm@170@01  $FVF<f>) t@169@01)
      (ite (= t@169@01 b@144@01) (+ (* 2 a@145@01) 1) a@145@01)))
  :pattern ((Set_in t@169@01 S@143@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@84@11@84@71|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((t@169@01 $Ref)) (!
  (=>
    (Set_in t@169@01 S@143@01)
    (=
      ($FVF.lookup_f (as sm@170@01  $FVF<f>) t@169@01)
      (ite (= t@169@01 b@144@01) (+ (* 2 a@145@01) 1) a@145@01)))
  :pattern ((Set_in t@169@01 S@143@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@84@11@84@71|)))
(pop) ; 2
(pop) ; 1
; ---------- m9 ----------
(declare-const S@172@01 Set<$Ref>)
(declare-const b@173@01 $Ref)
(declare-const a@174@01 Int)
(declare-const S@175@01 Set<$Ref>)
(declare-const b@176@01 $Ref)
(declare-const a@177@01 Int)
(push) ; 1
(declare-const $t@178@01 $Snap)
(assert (= $t@178@01 ($Snap.combine ($Snap.first $t@178@01) ($Snap.second $t@178@01))))
(declare-const s@179@01 $Ref)
(push) ; 2
; [eval] (s in S)
(assert (Set_in s@179@01 S@175@01))
(pop) ; 2
(declare-fun inv@180@01 ($Ref) $Ref)
(declare-fun img@181@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((s1@179@01 $Ref) (s2@179@01 $Ref)) (!
  (=>
    (and
      (Set_in s1@179@01 S@175@01)
      (Set_in s2@179@01 S@175@01)
      (= s1@179@01 s2@179@01))
    (= s1@179@01 s2@179@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((s@179@01 $Ref)) (!
  (=>
    (Set_in s@179@01 S@175@01)
    (and (= (inv@180@01 s@179@01) s@179@01) (img@181@01 s@179@01)))
  :pattern ((Set_in s@179@01 S@175@01))
  :pattern ((inv@180@01 s@179@01))
  :pattern ((img@181@01 s@179@01))
  :qid |quant-u-5800|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@181@01 r) (Set_in (inv@180@01 r) S@175@01)) (= (inv@180@01 r) r))
  :pattern ((inv@180@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((s@179@01 $Ref)) (!
  (=> (Set_in s@179@01 S@175@01) (not (= s@179@01 $Ref.null)))
  :pattern ((Set_in s@179@01 S@175@01))
  :pattern ((inv@180@01 s@179@01))
  :pattern ((img@181@01 s@179@01))
  :qid |f-permImpliesNonNull|)))
(assert (=
  ($Snap.second $t@178@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@178@01))
    ($Snap.second ($Snap.second $t@178@01)))))
(assert (= ($Snap.first ($Snap.second $t@178@01)) $Snap.unit))
; [eval] (forall q: Ref :: { (q in S) } (q in S) ==> q.f > a)
(declare-const q@182@01 $Ref)
(push) ; 2
; [eval] (q in S) ==> q.f > a
; [eval] (q in S)
(push) ; 3
; [then-branch: 21 | q@182@01 in S@175@01 | live]
; [else-branch: 21 | !(q@182@01 in S@175@01) | live]
(push) ; 4
; [then-branch: 21 | q@182@01 in S@175@01]
(assert (Set_in q@182@01 S@175@01))
; [eval] q.f > a
(push) ; 5
(assert (not (and (img@181@01 q@182@01) (Set_in (inv@180@01 q@182@01) S@175@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 21 | !(q@182@01 in S@175@01)]
(assert (not (Set_in q@182@01 S@175@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (not (Set_in q@182@01 S@175@01)) (Set_in q@182@01 S@175@01)))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((q@182@01 $Ref)) (!
  (or (not (Set_in q@182@01 S@175@01)) (Set_in q@182@01 S@175@01))
  :pattern ((Set_in q@182@01 S@175@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@91@11@91@46-aux|)))
(assert (forall ((q@182@01 $Ref)) (!
  (=>
    (Set_in q@182@01 S@175@01)
    (>
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@178@01)) q@182@01)
      a@177@01))
  :pattern ((Set_in q@182@01 S@175@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@91@11@91@46|)))
(assert (=
  ($Snap.second ($Snap.second $t@178@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@178@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@178@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@178@01))) $Snap.unit))
; [eval] (b in S)
(assert (Set_in b@176@01 S@175@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@178@01))) $Snap.unit))
; [eval] a > 0
(assert (> a@177@01 0))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@183@01 $Snap)
(assert (= $t@183@01 ($Snap.combine ($Snap.first $t@183@01) ($Snap.second $t@183@01))))
(declare-const r@184@01 $Ref)
(push) ; 3
; [eval] (r in S)
(assert (Set_in r@184@01 S@175@01))
(pop) ; 3
(declare-fun inv@185@01 ($Ref) $Ref)
(declare-fun img@186@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((r1@184@01 $Ref) (r2@184@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@184@01 S@175@01)
      (Set_in r2@184@01 S@175@01)
      (= r1@184@01 r2@184@01))
    (= r1@184@01 r2@184@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@184@01 $Ref)) (!
  (=>
    (Set_in r@184@01 S@175@01)
    (and (= (inv@185@01 r@184@01) r@184@01) (img@186@01 r@184@01)))
  :pattern ((Set_in r@184@01 S@175@01))
  :pattern ((inv@185@01 r@184@01))
  :pattern ((img@186@01 r@184@01))
  :qid |quant-u-5802|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@186@01 r) (Set_in (inv@185@01 r) S@175@01)) (= (inv@185@01 r) r))
  :pattern ((inv@185@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((r@184@01 $Ref)) (!
  (=> (Set_in r@184@01 S@175@01) (not (= r@184@01 $Ref.null)))
  :pattern ((Set_in r@184@01 S@175@01))
  :pattern ((inv@185@01 r@184@01))
  :pattern ((img@186@01 r@184@01))
  :qid |f-permImpliesNonNull|)))
(assert (= ($Snap.second $t@183@01) $Snap.unit))
; [eval] (forall t: Ref :: { (t in S) } (t in S) ==> t.f > a)
(declare-const t@187@01 $Ref)
(push) ; 3
; [eval] (t in S) ==> t.f > a
; [eval] (t in S)
(push) ; 4
; [then-branch: 22 | t@187@01 in S@175@01 | live]
; [else-branch: 22 | !(t@187@01 in S@175@01) | live]
(push) ; 5
; [then-branch: 22 | t@187@01 in S@175@01]
(assert (Set_in t@187@01 S@175@01))
; [eval] t.f > a
(push) ; 6
(assert (not (and (img@186@01 t@187@01) (Set_in (inv@185@01 t@187@01) S@175@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 22 | !(t@187@01 in S@175@01)]
(assert (not (Set_in t@187@01 S@175@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (not (Set_in t@187@01 S@175@01)) (Set_in t@187@01 S@175@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((t@187@01 $Ref)) (!
  (or (not (Set_in t@187@01 S@175@01)) (Set_in t@187@01 S@175@01))
  :pattern ((Set_in t@187@01 S@175@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@95@10@95@48-aux|)))
(assert (forall ((t@187@01 $Ref)) (!
  (=>
    (Set_in t@187@01 S@175@01)
    (>
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@183@01)) t@187@01)
      a@177@01))
  :pattern ((Set_in t@187@01 S@175@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@95@10@95@48|)))
(pop) ; 2
(push) ; 2
; [exec]
; b.f := 2 * a + 1
; [eval] 2 * a + 1
; [eval] 2 * a
; Precomputing data for removing quantified permissions
(define-fun pTaken@188@01 ((r $Ref)) $Perm
  (ite
    (= r b@176@01)
    ($Perm.min
      (ite
        (and (img@181@01 r) (Set_in (inv@180@01 r) S@175@01))
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
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@181@01 r) (Set_in (inv@180@01 r) S@175@01))
        $Perm.Write
        $Perm.No)
      (pTaken@188@01 r))
    $Perm.No)
  
  :qid |quant-u-5804|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@188@01 r) $Perm.No)
  
  :qid |quant-u-5805|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=> (= r b@176@01) (= (- $Perm.Write (pTaken@188@01 r)) $Perm.No))
  
  :qid |quant-u-5806|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@189@01 $FVF<f>)
; Definitional axioms for singleton-FVF's value
(assert (= ($FVF.lookup_f (as sm@189@01  $FVF<f>) b@176@01) (+ (* 2 a@177@01) 1)))
(declare-const r@190@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (r in S)
(assert (Set_in r@190@01 S@175@01))
(pop) ; 3
(declare-fun inv@191@01 ($Ref) $Ref)
(declare-fun img@192@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((r1@190@01 $Ref) (r2@190@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@190@01 S@175@01)
      (Set_in r2@190@01 S@175@01)
      (= r1@190@01 r2@190@01))
    (= r1@190@01 r2@190@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@190@01 $Ref)) (!
  (=>
    (Set_in r@190@01 S@175@01)
    (and (= (inv@191@01 r@190@01) r@190@01) (img@192@01 r@190@01)))
  :pattern ((Set_in r@190@01 S@175@01))
  :pattern ((inv@191@01 r@190@01))
  :pattern ((img@192@01 r@190@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@192@01 r) (Set_in (inv@191@01 r) S@175@01)) (= (inv@191@01 r) r))
  :pattern ((inv@191@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@193@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@191@01 r) S@175@01) (img@192@01 r) (= r (inv@191@01 r)))
    ($Perm.min
      (ite
        (and (img@181@01 r) (Set_in (inv@180@01 r) S@175@01))
        (- $Perm.Write (pTaken@188@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@194@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@191@01 r) S@175@01) (img@192@01 r) (= r (inv@191@01 r)))
    ($Perm.min
      (ite (= r b@176@01) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@193@01 r)))
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
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@181@01 r) (Set_in (inv@180@01 r) S@175@01))
        (- $Perm.Write (pTaken@188@01 r))
        $Perm.No)
      (pTaken@193@01 r))
    $Perm.No)
  
  :qid |quant-u-5809|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@191@01 r) S@175@01) (img@192@01 r) (= r (inv@191@01 r)))
    (= (- $Perm.Write (pTaken@193@01 r)) $Perm.No))
  
  :qid |quant-u-5810|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@194@01 b@176@01)) $Perm.No)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@191@01 r) S@175@01) (img@192@01 r) (= r (inv@191@01 r)))
    (= (- (- $Perm.Write (pTaken@193@01 r)) (pTaken@194@01 r)) $Perm.No))
  
  :qid |quant-u-5812|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall t: Ref :: { (t in S) } (t in S) ==> t.f > a)
(declare-const t@195@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (t in S) ==> t.f > a
; [eval] (t in S)
(push) ; 4
; [then-branch: 23 | t@195@01 in S@175@01 | live]
; [else-branch: 23 | !(t@195@01 in S@175@01) | live]
(push) ; 5
; [then-branch: 23 | t@195@01 in S@175@01]
(assert (Set_in t@195@01 S@175@01))
; [eval] t.f > a
(declare-const sm@196@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r b@176@01)
    (=
      ($FVF.lookup_f (as sm@196@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@189@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@196@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@189@01  $FVF<f>) r))
  :qid |qp.fvfValDef17|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@181@01 r) (Set_in (inv@180@01 r) S@175@01))
      (< $Perm.No (- $Perm.Write (pTaken@188@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@196@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@178@01)) r)))
  :pattern (($FVF.lookup_f (as sm@196@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@178@01)) r))
  :qid |qp.fvfValDef18|)))
(declare-const pm@197@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@197@01  $FPM) r)
    (+
      (ite (= r b@176@01) $Perm.Write $Perm.No)
      (ite
        (and (img@181@01 r) (Set_in (inv@180@01 r) S@175@01))
        (- $Perm.Write (pTaken@188@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@197@01  $FPM) r))
  :qid |qp.resPrmSumDef19|)))
(push) ; 6
(assert (not (< $Perm.No ($FVF.perm_f (as pm@197@01  $FPM) t@195@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 23 | !(t@195@01 in S@175@01)]
(assert (not (Set_in t@195@01 S@175@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (= r b@176@01)
    (=
      ($FVF.lookup_f (as sm@196@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@189@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@196@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@189@01  $FVF<f>) r))
  :qid |qp.fvfValDef17|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@181@01 r) (Set_in (inv@180@01 r) S@175@01))
      (< $Perm.No (- $Perm.Write (pTaken@188@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@196@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@178@01)) r)))
  :pattern (($FVF.lookup_f (as sm@196@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@178@01)) r))
  :qid |qp.fvfValDef18|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@197@01  $FPM) r)
    (+
      (ite (= r b@176@01) $Perm.Write $Perm.No)
      (ite
        (and (img@181@01 r) (Set_in (inv@180@01 r) S@175@01))
        (- $Perm.Write (pTaken@188@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@197@01  $FPM) r))
  :qid |qp.resPrmSumDef19|)))
; Joined path conditions
(assert (or (not (Set_in t@195@01 S@175@01)) (Set_in t@195@01 S@175@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (= r b@176@01)
    (=
      ($FVF.lookup_f (as sm@196@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@189@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@196@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@189@01  $FVF<f>) r))
  :qid |qp.fvfValDef17|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@181@01 r) (Set_in (inv@180@01 r) S@175@01))
      (< $Perm.No (- $Perm.Write (pTaken@188@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@196@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@178@01)) r)))
  :pattern (($FVF.lookup_f (as sm@196@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@178@01)) r))
  :qid |qp.fvfValDef18|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@197@01  $FPM) r)
    (+
      (ite (= r b@176@01) $Perm.Write $Perm.No)
      (ite
        (and (img@181@01 r) (Set_in (inv@180@01 r) S@175@01))
        (- $Perm.Write (pTaken@188@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@197@01  $FPM) r))
  :qid |qp.resPrmSumDef19|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((t@195@01 $Ref)) (!
  (or (not (Set_in t@195@01 S@175@01)) (Set_in t@195@01 S@175@01))
  :pattern ((Set_in t@195@01 S@175@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@95@10@95@48-aux|)))
(push) ; 3
(assert (not (forall ((t@195@01 $Ref)) (!
  (=>
    (Set_in t@195@01 S@175@01)
    (> ($FVF.lookup_f (as sm@196@01  $FVF<f>) t@195@01) a@177@01))
  :pattern ((Set_in t@195@01 S@175@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@95@10@95@48|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((t@195@01 $Ref)) (!
  (=>
    (Set_in t@195@01 S@175@01)
    (> ($FVF.lookup_f (as sm@196@01  $FVF<f>) t@195@01) a@177@01))
  :pattern ((Set_in t@195@01 S@175@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@95@10@95@48|)))
(pop) ; 2
(pop) ; 1
; ---------- m10 ----------
(declare-const S@198@01 Set<$Ref>)
(declare-const b@199@01 $Ref)
(declare-const a@200@01 Int)
(declare-const c@201@01 $Ref)
(declare-const S@202@01 Set<$Ref>)
(declare-const b@203@01 $Ref)
(declare-const a@204@01 Int)
(declare-const c@205@01 $Ref)
(push) ; 1
(declare-const $t@206@01 $Snap)
(assert (= $t@206@01 ($Snap.combine ($Snap.first $t@206@01) ($Snap.second $t@206@01))))
(declare-const s@207@01 $Ref)
(push) ; 2
; [eval] (s in S)
(assert (Set_in s@207@01 S@202@01))
(pop) ; 2
(declare-fun inv@208@01 ($Ref) $Ref)
(declare-fun img@209@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((s1@207@01 $Ref) (s2@207@01 $Ref)) (!
  (=>
    (and
      (Set_in s1@207@01 S@202@01)
      (Set_in s2@207@01 S@202@01)
      (= s1@207@01 s2@207@01))
    (= s1@207@01 s2@207@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((s@207@01 $Ref)) (!
  (=>
    (Set_in s@207@01 S@202@01)
    (and (= (inv@208@01 s@207@01) s@207@01) (img@209@01 s@207@01)))
  :pattern ((Set_in s@207@01 S@202@01))
  :pattern ((inv@208@01 s@207@01))
  :pattern ((img@209@01 s@207@01))
  :qid |quant-u-5814|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@209@01 r) (Set_in (inv@208@01 r) S@202@01)) (= (inv@208@01 r) r))
  :pattern ((inv@208@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((s@207@01 $Ref)) (!
  (=> (Set_in s@207@01 S@202@01) (not (= s@207@01 $Ref.null)))
  :pattern ((Set_in s@207@01 S@202@01))
  :pattern ((inv@208@01 s@207@01))
  :pattern ((img@209@01 s@207@01))
  :qid |f-permImpliesNonNull|)))
(assert (=
  ($Snap.second $t@206@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@206@01))
    ($Snap.second ($Snap.second $t@206@01)))))
(assert (= ($Snap.first ($Snap.second $t@206@01)) $Snap.unit))
; [eval] (forall q: Ref :: { (q in S) } (q in S) ==> q.f > a)
(declare-const q@210@01 $Ref)
(push) ; 2
; [eval] (q in S) ==> q.f > a
; [eval] (q in S)
(push) ; 3
; [then-branch: 24 | q@210@01 in S@202@01 | live]
; [else-branch: 24 | !(q@210@01 in S@202@01) | live]
(push) ; 4
; [then-branch: 24 | q@210@01 in S@202@01]
(assert (Set_in q@210@01 S@202@01))
; [eval] q.f > a
(push) ; 5
(assert (not (and (img@209@01 q@210@01) (Set_in (inv@208@01 q@210@01) S@202@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 24 | !(q@210@01 in S@202@01)]
(assert (not (Set_in q@210@01 S@202@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (not (Set_in q@210@01 S@202@01)) (Set_in q@210@01 S@202@01)))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((q@210@01 $Ref)) (!
  (or (not (Set_in q@210@01 S@202@01)) (Set_in q@210@01 S@202@01))
  :pattern ((Set_in q@210@01 S@202@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@102@11@102@46-aux|)))
(assert (forall ((q@210@01 $Ref)) (!
  (=>
    (Set_in q@210@01 S@202@01)
    (>
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@206@01)) q@210@01)
      a@204@01))
  :pattern ((Set_in q@210@01 S@202@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@102@11@102@46|)))
(assert (=
  ($Snap.second ($Snap.second $t@206@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@206@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@206@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@206@01))) $Snap.unit))
; [eval] (b in S)
(assert (Set_in b@203@01 S@202@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@206@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@206@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@206@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@206@01))))
  $Snap.unit))
; [eval] (c in S)
(assert (Set_in c@205@01 S@202@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@206@01))))
  $Snap.unit))
; [eval] a > 0
(assert (> a@204@01 0))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@211@01 $Snap)
(assert (= $t@211@01 ($Snap.combine ($Snap.first $t@211@01) ($Snap.second $t@211@01))))
(declare-const r@212@01 $Ref)
(push) ; 3
; [eval] (r in S)
(assert (Set_in r@212@01 S@202@01))
(pop) ; 3
(declare-fun inv@213@01 ($Ref) $Ref)
(declare-fun img@214@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((r1@212@01 $Ref) (r2@212@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@212@01 S@202@01)
      (Set_in r2@212@01 S@202@01)
      (= r1@212@01 r2@212@01))
    (= r1@212@01 r2@212@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@212@01 $Ref)) (!
  (=>
    (Set_in r@212@01 S@202@01)
    (and (= (inv@213@01 r@212@01) r@212@01) (img@214@01 r@212@01)))
  :pattern ((Set_in r@212@01 S@202@01))
  :pattern ((inv@213@01 r@212@01))
  :pattern ((img@214@01 r@212@01))
  :qid |quant-u-5816|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@214@01 r) (Set_in (inv@213@01 r) S@202@01)) (= (inv@213@01 r) r))
  :pattern ((inv@213@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((r@212@01 $Ref)) (!
  (=> (Set_in r@212@01 S@202@01) (not (= r@212@01 $Ref.null)))
  :pattern ((Set_in r@212@01 S@202@01))
  :pattern ((inv@213@01 r@212@01))
  :pattern ((img@214@01 r@212@01))
  :qid |f-permImpliesNonNull|)))
(assert (= ($Snap.second $t@211@01) $Snap.unit))
; [eval] (forall t: Ref :: { (t in S) } (t in S) ==> t.f > a)
(declare-const t@215@01 $Ref)
(push) ; 3
; [eval] (t in S) ==> t.f > a
; [eval] (t in S)
(push) ; 4
; [then-branch: 25 | t@215@01 in S@202@01 | live]
; [else-branch: 25 | !(t@215@01 in S@202@01) | live]
(push) ; 5
; [then-branch: 25 | t@215@01 in S@202@01]
(assert (Set_in t@215@01 S@202@01))
; [eval] t.f > a
(push) ; 6
(assert (not (and (img@214@01 t@215@01) (Set_in (inv@213@01 t@215@01) S@202@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 25 | !(t@215@01 in S@202@01)]
(assert (not (Set_in t@215@01 S@202@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (not (Set_in t@215@01 S@202@01)) (Set_in t@215@01 S@202@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((t@215@01 $Ref)) (!
  (or (not (Set_in t@215@01 S@202@01)) (Set_in t@215@01 S@202@01))
  :pattern ((Set_in t@215@01 S@202@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@107@10@107@48-aux|)))
(assert (forall ((t@215@01 $Ref)) (!
  (=>
    (Set_in t@215@01 S@202@01)
    (>
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@211@01)) t@215@01)
      a@204@01))
  :pattern ((Set_in t@215@01 S@202@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@107@10@107@48|)))
(pop) ; 2
(push) ; 2
; [exec]
; b.f := 2 * a + 1
; [eval] 2 * a + 1
; [eval] 2 * a
; Precomputing data for removing quantified permissions
(define-fun pTaken@216@01 ((r $Ref)) $Perm
  (ite
    (= r b@203@01)
    ($Perm.min
      (ite
        (and (img@209@01 r) (Set_in (inv@208@01 r) S@202@01))
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
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@209@01 r) (Set_in (inv@208@01 r) S@202@01))
        $Perm.Write
        $Perm.No)
      (pTaken@216@01 r))
    $Perm.No)
  
  :qid |quant-u-5818|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@216@01 r) $Perm.No)
  
  :qid |quant-u-5819|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=> (= r b@203@01) (= (- $Perm.Write (pTaken@216@01 r)) $Perm.No))
  
  :qid |quant-u-5820|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@217@01 $FVF<f>)
; Definitional axioms for singleton-FVF's value
(assert (= ($FVF.lookup_f (as sm@217@01  $FVF<f>) b@203@01) (+ (* 2 a@204@01) 1)))
; [exec]
; c.f := a + 1
; [eval] a + 1
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= b@203@01 c@205@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@218@01 ((r $Ref)) $Perm
  (ite
    (= r c@205@01)
    ($Perm.min
      (ite
        (and (img@209@01 r) (Set_in (inv@208@01 r) S@202@01))
        (- $Perm.Write (pTaken@216@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@219@01 ((r $Ref)) $Perm
  (ite
    (= r c@205@01)
    ($Perm.min
      (ite (= r b@203@01) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@218@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@209@01 r) (Set_in (inv@208@01 r) S@202@01))
        (- $Perm.Write (pTaken@216@01 r))
        $Perm.No)
      (pTaken@218@01 r))
    $Perm.No)
  
  :qid |quant-u-5822|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@218@01 r) $Perm.No)
  
  :qid |quant-u-5823|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=> (= r c@205@01) (= (- $Perm.Write (pTaken@218@01 r)) $Perm.No))
  
  :qid |quant-u-5824|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@219@01 b@203@01)) $Perm.No)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@219@01 r) $Perm.No)
  
  :qid |quant-u-5826|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (= r c@205@01)
    (= (- (- $Perm.Write (pTaken@218@01 r)) (pTaken@219@01 r)) $Perm.No))
  
  :qid |quant-u-5827|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@220@01 $FVF<f>)
; Definitional axioms for singleton-FVF's value
(assert (= ($FVF.lookup_f (as sm@220@01  $FVF<f>) c@205@01) (+ a@204@01 1)))
(declare-const r@221@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (r in S)
(assert (Set_in r@221@01 S@202@01))
(pop) ; 3
(declare-fun inv@222@01 ($Ref) $Ref)
(declare-fun img@223@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((r1@221@01 $Ref) (r2@221@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@221@01 S@202@01)
      (Set_in r2@221@01 S@202@01)
      (= r1@221@01 r2@221@01))
    (= r1@221@01 r2@221@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@221@01 $Ref)) (!
  (=>
    (Set_in r@221@01 S@202@01)
    (and (= (inv@222@01 r@221@01) r@221@01) (img@223@01 r@221@01)))
  :pattern ((Set_in r@221@01 S@202@01))
  :pattern ((inv@222@01 r@221@01))
  :pattern ((img@223@01 r@221@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@223@01 r) (Set_in (inv@222@01 r) S@202@01)) (= (inv@222@01 r) r))
  :pattern ((inv@222@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@224@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@222@01 r) S@202@01) (img@223@01 r) (= r (inv@222@01 r)))
    ($Perm.min
      (ite
        (and (img@209@01 r) (Set_in (inv@208@01 r) S@202@01))
        (- (- $Perm.Write (pTaken@216@01 r)) (pTaken@218@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@225@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@222@01 r) S@202@01) (img@223@01 r) (= r (inv@222@01 r)))
    ($Perm.min
      (ite (= r c@205@01) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@224@01 r)))
    $Perm.No))
(define-fun pTaken@226@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@222@01 r) S@202@01) (img@223@01 r) (= r (inv@222@01 r)))
    ($Perm.min
      (ite (= r b@203@01) (- $Perm.Write (pTaken@219@01 r)) $Perm.No)
      (- (- $Perm.Write (pTaken@224@01 r)) (pTaken@225@01 r)))
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
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@209@01 r) (Set_in (inv@208@01 r) S@202@01))
        (- (- $Perm.Write (pTaken@216@01 r)) (pTaken@218@01 r))
        $Perm.No)
      (pTaken@224@01 r))
    $Perm.No)
  
  :qid |quant-u-5830|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@222@01 r) S@202@01) (img@223@01 r) (= r (inv@222@01 r)))
    (= (- $Perm.Write (pTaken@224@01 r)) $Perm.No))
  
  :qid |quant-u-5831|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@225@01 c@205@01)) $Perm.No)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@222@01 r) S@202@01) (img@223@01 r) (= r (inv@222@01 r)))
    (= (- (- $Perm.Write (pTaken@224@01 r)) (pTaken@225@01 r)) $Perm.No))
  
  :qid |quant-u-5833|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (=
  (- (- $Perm.Write (pTaken@219@01 b@203@01)) (pTaken@226@01 b@203@01))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@222@01 r) S@202@01) (img@223@01 r) (= r (inv@222@01 r)))
    (=
      (-
        (- (- $Perm.Write (pTaken@224@01 r)) (pTaken@225@01 r))
        (pTaken@226@01 r))
      $Perm.No))
  
  :qid |quant-u-5835|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall t: Ref :: { (t in S) } (t in S) ==> t.f > a)
(declare-const t@227@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (t in S) ==> t.f > a
; [eval] (t in S)
(push) ; 4
; [then-branch: 26 | t@227@01 in S@202@01 | live]
; [else-branch: 26 | !(t@227@01 in S@202@01) | live]
(push) ; 5
; [then-branch: 26 | t@227@01 in S@202@01]
(assert (Set_in t@227@01 S@202@01))
; [eval] t.f > a
(declare-const sm@228@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r c@205@01)
    (=
      ($FVF.lookup_f (as sm@228@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@220@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@228@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@220@01  $FVF<f>) r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite (= r b@203@01) (< $Perm.No (- $Perm.Write (pTaken@219@01 r))) false)
    (=
      ($FVF.lookup_f (as sm@228@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@217@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@228@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@217@01  $FVF<f>) r))
  :qid |qp.fvfValDef21|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@209@01 r) (Set_in (inv@208@01 r) S@202@01))
      (< $Perm.No (- (- $Perm.Write (pTaken@216@01 r)) (pTaken@218@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@228@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@206@01)) r)))
  :pattern (($FVF.lookup_f (as sm@228@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@206@01)) r))
  :qid |qp.fvfValDef22|)))
(declare-const pm@229@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@229@01  $FPM) r)
    (+
      (+
        (ite (= r c@205@01) $Perm.Write $Perm.No)
        (ite (= r b@203@01) (- $Perm.Write (pTaken@219@01 r)) $Perm.No))
      (ite
        (and (img@209@01 r) (Set_in (inv@208@01 r) S@202@01))
        (- (- $Perm.Write (pTaken@216@01 r)) (pTaken@218@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@229@01  $FPM) r))
  :qid |qp.resPrmSumDef23|)))
(push) ; 6
(assert (not (< $Perm.No ($FVF.perm_f (as pm@229@01  $FPM) t@227@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 26 | !(t@227@01 in S@202@01)]
(assert (not (Set_in t@227@01 S@202@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (= r c@205@01)
    (=
      ($FVF.lookup_f (as sm@228@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@220@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@228@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@220@01  $FVF<f>) r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite (= r b@203@01) (< $Perm.No (- $Perm.Write (pTaken@219@01 r))) false)
    (=
      ($FVF.lookup_f (as sm@228@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@217@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@228@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@217@01  $FVF<f>) r))
  :qid |qp.fvfValDef21|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@209@01 r) (Set_in (inv@208@01 r) S@202@01))
      (< $Perm.No (- (- $Perm.Write (pTaken@216@01 r)) (pTaken@218@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@228@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@206@01)) r)))
  :pattern (($FVF.lookup_f (as sm@228@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@206@01)) r))
  :qid |qp.fvfValDef22|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@229@01  $FPM) r)
    (+
      (+
        (ite (= r c@205@01) $Perm.Write $Perm.No)
        (ite (= r b@203@01) (- $Perm.Write (pTaken@219@01 r)) $Perm.No))
      (ite
        (and (img@209@01 r) (Set_in (inv@208@01 r) S@202@01))
        (- (- $Perm.Write (pTaken@216@01 r)) (pTaken@218@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@229@01  $FPM) r))
  :qid |qp.resPrmSumDef23|)))
; Joined path conditions
(assert (or (not (Set_in t@227@01 S@202@01)) (Set_in t@227@01 S@202@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (= r c@205@01)
    (=
      ($FVF.lookup_f (as sm@228@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@220@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@228@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@220@01  $FVF<f>) r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite (= r b@203@01) (< $Perm.No (- $Perm.Write (pTaken@219@01 r))) false)
    (=
      ($FVF.lookup_f (as sm@228@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@217@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@228@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@217@01  $FVF<f>) r))
  :qid |qp.fvfValDef21|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@209@01 r) (Set_in (inv@208@01 r) S@202@01))
      (< $Perm.No (- (- $Perm.Write (pTaken@216@01 r)) (pTaken@218@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@228@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@206@01)) r)))
  :pattern (($FVF.lookup_f (as sm@228@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@206@01)) r))
  :qid |qp.fvfValDef22|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@229@01  $FPM) r)
    (+
      (+
        (ite (= r c@205@01) $Perm.Write $Perm.No)
        (ite (= r b@203@01) (- $Perm.Write (pTaken@219@01 r)) $Perm.No))
      (ite
        (and (img@209@01 r) (Set_in (inv@208@01 r) S@202@01))
        (- (- $Perm.Write (pTaken@216@01 r)) (pTaken@218@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@229@01  $FPM) r))
  :qid |qp.resPrmSumDef23|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((t@227@01 $Ref)) (!
  (or (not (Set_in t@227@01 S@202@01)) (Set_in t@227@01 S@202@01))
  :pattern ((Set_in t@227@01 S@202@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@107@10@107@48-aux|)))
(push) ; 3
(assert (not (forall ((t@227@01 $Ref)) (!
  (=>
    (Set_in t@227@01 S@202@01)
    (> ($FVF.lookup_f (as sm@228@01  $FVF<f>) t@227@01) a@204@01))
  :pattern ((Set_in t@227@01 S@202@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@107@10@107@48|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((t@227@01 $Ref)) (!
  (=>
    (Set_in t@227@01 S@202@01)
    (> ($FVF.lookup_f (as sm@228@01  $FVF<f>) t@227@01) a@204@01))
  :pattern ((Set_in t@227@01 S@202@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.vpr@107@10@107@48|)))
(pop) ; 2
(pop) ; 1
