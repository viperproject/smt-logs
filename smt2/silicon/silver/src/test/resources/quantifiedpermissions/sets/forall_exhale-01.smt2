(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-13 17:36:08
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
; ---------- t1 ----------
(declare-const xs@0@01 Set<$Ref>)
(declare-const xs@1@01 Set<$Ref>)
(set-option :timeout 0)
(push) ; 1
(declare-const y@2@01 $Ref)
(push) ; 2
; [eval] (y in xs)
(assert (Set_in y@2@01 xs@1@01))
(pop) ; 2
(declare-const $t@3@01 $FVF<f>)
(declare-fun inv@4@01 ($Ref) $Ref)
(declare-fun img@5@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((y1@2@01 $Ref) (y2@2@01 $Ref)) (!
  (=>
    (and (Set_in y1@2@01 xs@1@01) (Set_in y2@2@01 xs@1@01) (= y1@2@01 y2@2@01))
    (= y1@2@01 y2@2@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((y@2@01 $Ref)) (!
  (=>
    (Set_in y@2@01 xs@1@01)
    (and (= (inv@4@01 y@2@01) y@2@01) (img@5@01 y@2@01)))
  :pattern ((Set_in y@2@01 xs@1@01))
  :pattern ((inv@4@01 y@2@01))
  :pattern ((img@5@01 y@2@01))
  :qid |quant-u-5313|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@5@01 r) (Set_in (inv@4@01 r) xs@1@01)) (= (inv@4@01 r) r))
  :pattern ((inv@4@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((y@2@01 $Ref)) (!
  (=> (Set_in y@2@01 xs@1@01) (not (= y@2@01 $Ref.null)))
  :pattern ((Set_in y@2@01 xs@1@01))
  :pattern ((inv@4@01 y@2@01))
  :pattern ((img@5@01 y@2@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; exhale (forall z: Ref ::(z in xs) ==> acc(z.f, write))
(declare-const z@6@01 $Ref)
(push) ; 3
; [eval] (z in xs)
(assert (Set_in z@6@01 xs@1@01))
(pop) ; 3
(declare-fun inv@7@01 ($Ref) $Ref)
(declare-fun img@8@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((z1@6@01 $Ref) (z2@6@01 $Ref)) (!
  (=>
    (and (Set_in z1@6@01 xs@1@01) (Set_in z2@6@01 xs@1@01) (= z1@6@01 z2@6@01))
    (= z1@6@01 z2@6@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@6@01 $Ref)) (!
  (=>
    (Set_in z@6@01 xs@1@01)
    (and (= (inv@7@01 z@6@01) z@6@01) (img@8@01 z@6@01)))
  :pattern ((Set_in z@6@01 xs@1@01))
  :pattern ((inv@7@01 z@6@01))
  :pattern ((img@8@01 z@6@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@8@01 r) (Set_in (inv@7@01 r) xs@1@01)) (= (inv@7@01 r) r))
  :pattern ((inv@7@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@9@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@7@01 r) xs@1@01) (img@8@01 r) (= r (inv@7@01 r)))
    ($Perm.min
      (ite (and (img@5@01 r) (Set_in (inv@4@01 r) xs@1@01)) $Perm.Write $Perm.No)
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
      (ite (and (img@5@01 r) (Set_in (inv@4@01 r) xs@1@01)) $Perm.Write $Perm.No)
      (pTaken@9@01 r))
    $Perm.No)
  
  :qid |quant-u-5316|))))
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
    (and (Set_in (inv@7@01 r) xs@1@01) (img@8@01 r) (= r (inv@7@01 r)))
    (= (- $Perm.Write (pTaken@9@01 r)) $Perm.No))
  
  :qid |quant-u-5317|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; exhale (forall w: Ref ::(w in xs) ==> acc(w.f, write))
(declare-const w@10@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (w in xs)
(assert (Set_in w@10@01 xs@1@01))
(pop) ; 3
(declare-fun inv@11@01 ($Ref) $Ref)
(declare-fun img@12@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((w1@10@01 $Ref) (w2@10@01 $Ref)) (!
  (=>
    (and
      (Set_in w1@10@01 xs@1@01)
      (Set_in w2@10@01 xs@1@01)
      (= w1@10@01 w2@10@01))
    (= w1@10@01 w2@10@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((w@10@01 $Ref)) (!
  (=>
    (Set_in w@10@01 xs@1@01)
    (and (= (inv@11@01 w@10@01) w@10@01) (img@12@01 w@10@01)))
  :pattern ((Set_in w@10@01 xs@1@01))
  :pattern ((inv@11@01 w@10@01))
  :pattern ((img@12@01 w@10@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@12@01 r) (Set_in (inv@11@01 r) xs@1@01)) (= (inv@11@01 r) r))
  :pattern ((inv@11@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 3
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@11@01 r) xs@1@01) (img@12@01 r) (= r (inv@11@01 r)))
    false)
  
  :qid |quant-u-5319|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const w@13@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (w in xs)
(assert (Set_in w@13@01 xs@1@01))
(pop) ; 3
(declare-fun inv@14@01 ($Ref) $Ref)
(declare-fun img@15@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((w1@13@01 $Ref) (w2@13@01 $Ref)) (!
  (=>
    (and
      (Set_in w1@13@01 xs@1@01)
      (Set_in w2@13@01 xs@1@01)
      (= w1@13@01 w2@13@01))
    (= w1@13@01 w2@13@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((w@13@01 $Ref)) (!
  (=>
    (Set_in w@13@01 xs@1@01)
    (and (= (inv@14@01 w@13@01) w@13@01) (img@15@01 w@13@01)))
  :pattern ((Set_in w@13@01 xs@1@01))
  :pattern ((inv@14@01 w@13@01))
  :pattern ((img@15@01 w@13@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@15@01 r) (Set_in (inv@14@01 r) xs@1@01)) (= (inv@14@01 r) r))
  :pattern ((inv@14@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 3
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@14@01 r) xs@1@01) (img@15@01 r) (= r (inv@14@01 r)))
    false)
  
  :qid |quant-u-5321|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- t2 ----------
(declare-const zs@16@01 Set<$Ref>)
(declare-const ys@17@01 Set<$Ref>)
(declare-const zs@18@01 Set<$Ref>)
(declare-const ys@19@01 Set<$Ref>)
(push) ; 1
(declare-const $t@20@01 $Snap)
(assert (= $t@20@01 ($Snap.combine ($Snap.first $t@20@01) ($Snap.second $t@20@01))))
(declare-const x@21@01 $Ref)
(push) ; 2
; [eval] (x in zs)
(assert (Set_in x@21@01 zs@18@01))
(pop) ; 2
(declare-fun inv@22@01 ($Ref) $Ref)
(declare-fun img@23@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@21@01 $Ref) (x2@21@01 $Ref)) (!
  (=>
    (and
      (Set_in x1@21@01 zs@18@01)
      (Set_in x2@21@01 zs@18@01)
      (= x1@21@01 x2@21@01))
    (= x1@21@01 x2@21@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@21@01 $Ref)) (!
  (=>
    (Set_in x@21@01 zs@18@01)
    (and (= (inv@22@01 x@21@01) x@21@01) (img@23@01 x@21@01)))
  :pattern ((Set_in x@21@01 zs@18@01))
  :pattern ((inv@22@01 x@21@01))
  :pattern ((img@23@01 x@21@01))
  :qid |quant-u-5323|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@23@01 r) (Set_in (inv@22@01 r) zs@18@01)) (= (inv@22@01 r) r))
  :pattern ((inv@22@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@21@01 $Ref)) (!
  (=> (Set_in x@21@01 zs@18@01) (not (= x@21@01 $Ref.null)))
  :pattern ((Set_in x@21@01 zs@18@01))
  :pattern ((inv@22@01 x@21@01))
  :pattern ((img@23@01 x@21@01))
  :qid |f-permImpliesNonNull|)))
(assert (= ($Snap.second $t@20@01) $Snap.unit))
; [eval] (ys subset zs)
(assert (Set_subset ys@19@01 zs@18@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; exhale (forall u: Ref ::(u in ys) ==> acc(u.f, write))
(declare-const u@24@01 $Ref)
(push) ; 3
; [eval] (u in ys)
(assert (Set_in u@24@01 ys@19@01))
(pop) ; 3
(declare-fun inv@25@01 ($Ref) $Ref)
(declare-fun img@26@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((u1@24@01 $Ref) (u2@24@01 $Ref)) (!
  (=>
    (and
      (Set_in u1@24@01 ys@19@01)
      (Set_in u2@24@01 ys@19@01)
      (= u1@24@01 u2@24@01))
    (= u1@24@01 u2@24@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((u@24@01 $Ref)) (!
  (=>
    (Set_in u@24@01 ys@19@01)
    (and (= (inv@25@01 u@24@01) u@24@01) (img@26@01 u@24@01)))
  :pattern ((Set_in u@24@01 ys@19@01))
  :pattern ((inv@25@01 u@24@01))
  :pattern ((img@26@01 u@24@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@26@01 r) (Set_in (inv@25@01 r) ys@19@01)) (= (inv@25@01 r) r))
  :pattern ((inv@25@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@27@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@25@01 r) ys@19@01) (img@26@01 r) (= r (inv@25@01 r)))
    ($Perm.min
      (ite
        (and (img@23@01 r) (Set_in (inv@22@01 r) zs@18@01))
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
        (and (img@23@01 r) (Set_in (inv@22@01 r) zs@18@01))
        $Perm.Write
        $Perm.No)
      (pTaken@27@01 r))
    $Perm.No)
  
  :qid |quant-u-5326|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@27@01 r) $Perm.No)
  
  :qid |quant-u-5327|))))
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
    (and (Set_in (inv@25@01 r) ys@19@01) (img@26@01 r) (= r (inv@25@01 r)))
    (= (- $Perm.Write (pTaken@27@01 r)) $Perm.No))
  
  :qid |quant-u-5328|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; exhale (forall q: Ref ::(q in zs) ==> acc(q.f, write))
(declare-const q@28@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (q in zs)
(assert (Set_in q@28@01 zs@18@01))
(pop) ; 3
(declare-fun inv@29@01 ($Ref) $Ref)
(declare-fun img@30@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((q1@28@01 $Ref) (q2@28@01 $Ref)) (!
  (=>
    (and
      (Set_in q1@28@01 zs@18@01)
      (Set_in q2@28@01 zs@18@01)
      (= q1@28@01 q2@28@01))
    (= q1@28@01 q2@28@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((q@28@01 $Ref)) (!
  (=>
    (Set_in q@28@01 zs@18@01)
    (and (= (inv@29@01 q@28@01) q@28@01) (img@30@01 q@28@01)))
  :pattern ((Set_in q@28@01 zs@18@01))
  :pattern ((inv@29@01 q@28@01))
  :pattern ((img@30@01 q@28@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@30@01 r) (Set_in (inv@29@01 r) zs@18@01)) (= (inv@29@01 r) r))
  :pattern ((inv@29@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@31@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@29@01 r) zs@18@01) (img@30@01 r) (= r (inv@29@01 r)))
    ($Perm.min
      (ite
        (and (img@23@01 r) (Set_in (inv@22@01 r) zs@18@01))
        (- $Perm.Write (pTaken@27@01 r))
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
        (and (img@23@01 r) (Set_in (inv@22@01 r) zs@18@01))
        (- $Perm.Write (pTaken@27@01 r))
        $Perm.No)
      (pTaken@31@01 r))
    $Perm.No)
  
  :qid |quant-u-5331|))))
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
    (and (Set_in (inv@29@01 r) zs@18@01) (img@30@01 r) (= r (inv@29@01 r)))
    (= (- $Perm.Write (pTaken@31@01 r)) $Perm.No))
  
  :qid |quant-u-5332|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 3
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@29@01 r) zs@18@01) (img@30@01 r) (= r (inv@29@01 r)))
    (= (- $Perm.Write (pTaken@31@01 r)) $Perm.No))
  
  :qid |quant-u-5332|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const sm@32@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@23@01 r) (Set_in (inv@22@01 r) zs@18@01))
      (< $Perm.No (- $Perm.Write (pTaken@27@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@32@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@20@01)) r)))
  :pattern (($FVF.lookup_f (as sm@32@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@20@01)) r))
  :qid |qp.fvfValDef0|)))
(declare-const pm@33@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@33@01  $FPM) r)
    (ite
      (and (img@23@01 r) (Set_in (inv@22@01 r) zs@18@01))
      (- $Perm.Write (pTaken@27@01 r))
      $Perm.No))
  :pattern (($FVF.perm_f (as pm@33@01  $FPM) r))
  :qid |qp.resPrmSumDef1|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@33@01  $FPM) r) $Perm.Write)
  :pattern ((inv@22@01 r))
  :qid |qp-fld-prm-bnd|)))
(declare-const q@34@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (q in zs)
(assert (Set_in q@34@01 zs@18@01))
(pop) ; 3
(declare-fun inv@35@01 ($Ref) $Ref)
(declare-fun img@36@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((q1@34@01 $Ref) (q2@34@01 $Ref)) (!
  (=>
    (and
      (Set_in q1@34@01 zs@18@01)
      (Set_in q2@34@01 zs@18@01)
      (= q1@34@01 q2@34@01))
    (= q1@34@01 q2@34@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((q@34@01 $Ref)) (!
  (=>
    (Set_in q@34@01 zs@18@01)
    (and (= (inv@35@01 q@34@01) q@34@01) (img@36@01 q@34@01)))
  :pattern ((Set_in q@34@01 zs@18@01))
  :pattern ((inv@35@01 q@34@01))
  :pattern ((img@36@01 q@34@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@36@01 r) (Set_in (inv@35@01 r) zs@18@01)) (= (inv@35@01 r) r))
  :pattern ((inv@35@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@37@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@35@01 r) zs@18@01) (img@36@01 r) (= r (inv@35@01 r)))
    ($Perm.min
      (ite
        (and (img@23@01 r) (Set_in (inv@22@01 r) zs@18@01))
        (- $Perm.Write (pTaken@27@01 r))
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
        (and (img@23@01 r) (Set_in (inv@22@01 r) zs@18@01))
        (- $Perm.Write (pTaken@27@01 r))
        $Perm.No)
      (pTaken@37@01 r))
    $Perm.No)
  
  :qid |quant-u-5335|))))
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
    (and (Set_in (inv@35@01 r) zs@18@01) (img@36@01 r) (= r (inv@35@01 r)))
    (= (- $Perm.Write (pTaken@37@01 r)) $Perm.No))
  
  :qid |quant-u-5336|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 3
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@35@01 r) zs@18@01) (img@36@01 r) (= r (inv@35@01 r)))
    (= (- $Perm.Write (pTaken@37@01 r)) $Perm.No))
  
  :qid |quant-u-5336|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- t3 ----------
(declare-const xs@38@01 Set<$Ref>)
(declare-const ys@39@01 Set<$Ref>)
(declare-const zs@40@01 Set<$Ref>)
(declare-const xs@41@01 Set<$Ref>)
(declare-const ys@42@01 Set<$Ref>)
(declare-const zs@43@01 Set<$Ref>)
(push) ; 1
(declare-const $t@44@01 $Snap)
(assert (= $t@44@01 ($Snap.combine ($Snap.first $t@44@01) ($Snap.second $t@44@01))))
(declare-const x@45@01 $Ref)
(push) ; 2
; [eval] (x in xs)
(assert (Set_in x@45@01 xs@41@01))
(pop) ; 2
(declare-fun inv@46@01 ($Ref) $Ref)
(declare-fun img@47@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@45@01 $Ref) (x2@45@01 $Ref)) (!
  (=>
    (and
      (Set_in x1@45@01 xs@41@01)
      (Set_in x2@45@01 xs@41@01)
      (= x1@45@01 x2@45@01))
    (= x1@45@01 x2@45@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@45@01 $Ref)) (!
  (=>
    (Set_in x@45@01 xs@41@01)
    (and (= (inv@46@01 x@45@01) x@45@01) (img@47@01 x@45@01)))
  :pattern ((Set_in x@45@01 xs@41@01))
  :pattern ((inv@46@01 x@45@01))
  :pattern ((img@47@01 x@45@01))
  :qid |quant-u-5338|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@47@01 r) (Set_in (inv@46@01 r) xs@41@01)) (= (inv@46@01 r) r))
  :pattern ((inv@46@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@45@01 $Ref)) (!
  (=> (Set_in x@45@01 xs@41@01) (not (= x@45@01 $Ref.null)))
  :pattern ((Set_in x@45@01 xs@41@01))
  :pattern ((inv@46@01 x@45@01))
  :pattern ((img@47@01 x@45@01))
  :qid |f-permImpliesNonNull|)))
(assert (=
  ($Snap.second $t@44@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@44@01))
    ($Snap.second ($Snap.second $t@44@01)))))
(declare-const y@48@01 $Ref)
(push) ; 2
; [eval] (y in ys)
(assert (Set_in y@48@01 ys@42@01))
(pop) ; 2
(declare-fun inv@49@01 ($Ref) $Ref)
(declare-fun img@50@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((y1@48@01 $Ref) (y2@48@01 $Ref)) (!
  (=>
    (and
      (Set_in y1@48@01 ys@42@01)
      (Set_in y2@48@01 ys@42@01)
      (= y1@48@01 y2@48@01))
    (= y1@48@01 y2@48@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((y@48@01 $Ref)) (!
  (=>
    (Set_in y@48@01 ys@42@01)
    (and (= (inv@49@01 y@48@01) y@48@01) (img@50@01 y@48@01)))
  :pattern ((Set_in y@48@01 ys@42@01))
  :pattern ((inv@49@01 y@48@01))
  :pattern ((img@50@01 y@48@01))
  :qid |quant-u-5340|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@50@01 r) (Set_in (inv@49@01 r) ys@42@01)) (= (inv@49@01 r) r))
  :pattern ((inv@49@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((y@48@01 $Ref)) (!
  (=> (Set_in y@48@01 ys@42@01) (not (= y@48@01 $Ref.null)))
  :pattern ((Set_in y@48@01 ys@42@01))
  :pattern ((inv@49@01 y@48@01))
  :pattern ((img@50@01 y@48@01))
  :qid |f-permImpliesNonNull|)))
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= y@48@01 x@45@01)
    (=
      (and (img@50@01 r) (Set_in (inv@49@01 r) ys@42@01))
      (and (img@47@01 r) (Set_in (inv@46@01 r) xs@41@01))))
  
  :qid |quant-u-5341|))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (= ($Snap.second ($Snap.second $t@44@01)) $Snap.unit))
; [eval] (zs subset (xs union ys))
; [eval] (xs union ys)
(assert (Set_subset zs@43@01 (Set_union xs@41@01 ys@42@01)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; exhale (forall z: Ref ::(z in zs) ==> acc(z.f, write))
(declare-const z@51@01 $Ref)
(push) ; 3
; [eval] (z in zs)
(assert (Set_in z@51@01 zs@43@01))
(pop) ; 3
(declare-fun inv@52@01 ($Ref) $Ref)
(declare-fun img@53@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((z1@51@01 $Ref) (z2@51@01 $Ref)) (!
  (=>
    (and
      (Set_in z1@51@01 zs@43@01)
      (Set_in z2@51@01 zs@43@01)
      (= z1@51@01 z2@51@01))
    (= z1@51@01 z2@51@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@51@01 $Ref)) (!
  (=>
    (Set_in z@51@01 zs@43@01)
    (and (= (inv@52@01 z@51@01) z@51@01) (img@53@01 z@51@01)))
  :pattern ((Set_in z@51@01 zs@43@01))
  :pattern ((inv@52@01 z@51@01))
  :pattern ((img@53@01 z@51@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@53@01 r) (Set_in (inv@52@01 r) zs@43@01)) (= (inv@52@01 r) r))
  :pattern ((inv@52@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@54@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@52@01 r) zs@43@01) (img@53@01 r) (= r (inv@52@01 r)))
    ($Perm.min
      (ite
        (and (img@47@01 r) (Set_in (inv@46@01 r) xs@41@01))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@55@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@52@01 r) zs@43@01) (img@53@01 r) (= r (inv@52@01 r)))
    ($Perm.min
      (ite
        (and (img@50@01 r) (Set_in (inv@49@01 r) ys@42@01))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@54@01 r)))
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
        (and (img@47@01 r) (Set_in (inv@46@01 r) xs@41@01))
        $Perm.Write
        $Perm.No)
      (pTaken@54@01 r))
    $Perm.No)
  
  :qid |quant-u-5344|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@54@01 r) $Perm.No)
  
  :qid |quant-u-5345|))))
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
    (and (Set_in (inv@52@01 r) zs@43@01) (img@53@01 r) (= r (inv@52@01 r)))
    (= (- $Perm.Write (pTaken@54@01 r)) $Perm.No))
  
  :qid |quant-u-5346|))))
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
        (and (img@50@01 r) (Set_in (inv@49@01 r) ys@42@01))
        $Perm.Write
        $Perm.No)
      (pTaken@55@01 r))
    $Perm.No)
  
  :qid |quant-u-5347|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@55@01 r) $Perm.No)
  
  :qid |quant-u-5348|))))
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
    (and (Set_in (inv@52@01 r) zs@43@01) (img@53@01 r) (= r (inv@52@01 r)))
    (= (- (- $Perm.Write (pTaken@54@01 r)) (pTaken@55@01 r)) $Perm.No))
  
  :qid |quant-u-5349|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; exhale (forall a: Ref ::(a in ys) ==> acc(a.f, write))
(declare-const a@56@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (a in ys)
(assert (Set_in a@56@01 ys@42@01))
(pop) ; 3
(declare-fun inv@57@01 ($Ref) $Ref)
(declare-fun img@58@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((a1@56@01 $Ref) (a2@56@01 $Ref)) (!
  (=>
    (and
      (Set_in a1@56@01 ys@42@01)
      (Set_in a2@56@01 ys@42@01)
      (= a1@56@01 a2@56@01))
    (= a1@56@01 a2@56@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((a@56@01 $Ref)) (!
  (=>
    (Set_in a@56@01 ys@42@01)
    (and (= (inv@57@01 a@56@01) a@56@01) (img@58@01 a@56@01)))
  :pattern ((Set_in a@56@01 ys@42@01))
  :pattern ((inv@57@01 a@56@01))
  :pattern ((img@58@01 a@56@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@58@01 r) (Set_in (inv@57@01 r) ys@42@01)) (= (inv@57@01 r) r))
  :pattern ((inv@57@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@59@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@57@01 r) ys@42@01) (img@58@01 r) (= r (inv@57@01 r)))
    ($Perm.min
      (ite
        (and (img@50@01 r) (Set_in (inv@49@01 r) ys@42@01))
        (- $Perm.Write (pTaken@55@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@60@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@57@01 r) ys@42@01) (img@58@01 r) (= r (inv@57@01 r)))
    ($Perm.min
      (ite
        (and (img@47@01 r) (Set_in (inv@46@01 r) xs@41@01))
        (- $Perm.Write (pTaken@54@01 r))
        $Perm.No)
      (- $Perm.Write (pTaken@59@01 r)))
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
        (and (img@50@01 r) (Set_in (inv@49@01 r) ys@42@01))
        (- $Perm.Write (pTaken@55@01 r))
        $Perm.No)
      (pTaken@59@01 r))
    $Perm.No)
  
  :qid |quant-u-5352|))))
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
    (and (Set_in (inv@57@01 r) ys@42@01) (img@58@01 r) (= r (inv@57@01 r)))
    (= (- $Perm.Write (pTaken@59@01 r)) $Perm.No))
  
  :qid |quant-u-5353|))))
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
        (and (img@47@01 r) (Set_in (inv@46@01 r) xs@41@01))
        (- $Perm.Write (pTaken@54@01 r))
        $Perm.No)
      (pTaken@60@01 r))
    $Perm.No)
  
  :qid |quant-u-5354|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@60@01 r) $Perm.No)
  
  :qid |quant-u-5355|))))
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
    (and (Set_in (inv@57@01 r) ys@42@01) (img@58@01 r) (= r (inv@57@01 r)))
    (= (- (- $Perm.Write (pTaken@59@01 r)) (pTaken@60@01 r)) $Perm.No))
  
  :qid |quant-u-5356|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 3
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@57@01 r) ys@42@01) (img@58@01 r) (= r (inv@57@01 r)))
    (= (- (- $Perm.Write (pTaken@59@01 r)) (pTaken@60@01 r)) $Perm.No))
  
  :qid |quant-u-5356|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= y@48@01 x@45@01)
    (=
      (and (img@50@01 r) (Set_in (inv@49@01 r) ys@42@01))
      (and (img@47@01 r) (Set_in (inv@46@01 r) xs@41@01))))
  
  :qid |quant-u-5357|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@61@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@50@01 r) (Set_in (inv@49@01 r) ys@42@01))
      (< $Perm.No (- $Perm.Write (pTaken@55@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second $t@44@01))) r)))
  :pattern (($FVF.lookup_f (as sm@61@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second $t@44@01))) r))
  :qid |qp.fvfValDef2|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@47@01 r) (Set_in (inv@46@01 r) xs@41@01))
      (< $Perm.No (- $Perm.Write (pTaken@54@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@44@01)) r)))
  :pattern (($FVF.lookup_f (as sm@61@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@44@01)) r))
  :qid |qp.fvfValDef3|)))
(declare-const pm@62@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@62@01  $FPM) r)
    (+
      (ite
        (and (img@50@01 r) (Set_in (inv@49@01 r) ys@42@01))
        (- $Perm.Write (pTaken@55@01 r))
        $Perm.No)
      (ite
        (and (img@47@01 r) (Set_in (inv@46@01 r) xs@41@01))
        (- $Perm.Write (pTaken@54@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@62@01  $FPM) r))
  :qid |qp.resPrmSumDef4|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@62@01  $FPM) r) $Perm.Write)
  :pattern ((inv@49@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@62@01  $FPM) r) $Perm.Write)
  :pattern ((inv@46@01 r))
  :qid |qp-fld-prm-bnd|)))
(declare-const a@63@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (a in ys)
(assert (Set_in a@63@01 ys@42@01))
(pop) ; 3
(declare-fun inv@64@01 ($Ref) $Ref)
(declare-fun img@65@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((a1@63@01 $Ref) (a2@63@01 $Ref)) (!
  (=>
    (and
      (Set_in a1@63@01 ys@42@01)
      (Set_in a2@63@01 ys@42@01)
      (= a1@63@01 a2@63@01))
    (= a1@63@01 a2@63@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((a@63@01 $Ref)) (!
  (=>
    (Set_in a@63@01 ys@42@01)
    (and (= (inv@64@01 a@63@01) a@63@01) (img@65@01 a@63@01)))
  :pattern ((Set_in a@63@01 ys@42@01))
  :pattern ((inv@64@01 a@63@01))
  :pattern ((img@65@01 a@63@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@65@01 r) (Set_in (inv@64@01 r) ys@42@01)) (= (inv@64@01 r) r))
  :pattern ((inv@64@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@66@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@64@01 r) ys@42@01) (img@65@01 r) (= r (inv@64@01 r)))
    ($Perm.min
      (ite
        (and (img@47@01 r) (Set_in (inv@46@01 r) xs@41@01))
        (- $Perm.Write (pTaken@54@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@67@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@64@01 r) ys@42@01) (img@65@01 r) (= r (inv@64@01 r)))
    ($Perm.min
      (ite
        (and (img@50@01 r) (Set_in (inv@49@01 r) ys@42@01))
        (- $Perm.Write (pTaken@55@01 r))
        $Perm.No)
      (- $Perm.Write (pTaken@66@01 r)))
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
        (and (img@47@01 r) (Set_in (inv@46@01 r) xs@41@01))
        (- $Perm.Write (pTaken@54@01 r))
        $Perm.No)
      (pTaken@66@01 r))
    $Perm.No)
  
  :qid |quant-u-5360|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@66@01 r) $Perm.No)
  
  :qid |quant-u-5361|))))
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
    (and (Set_in (inv@64@01 r) ys@42@01) (img@65@01 r) (= r (inv@64@01 r)))
    (= (- $Perm.Write (pTaken@66@01 r)) $Perm.No))
  
  :qid |quant-u-5362|))))
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
        (and (img@50@01 r) (Set_in (inv@49@01 r) ys@42@01))
        (- $Perm.Write (pTaken@55@01 r))
        $Perm.No)
      (pTaken@67@01 r))
    $Perm.No)
  
  :qid |quant-u-5363|))))
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
    (and (Set_in (inv@64@01 r) ys@42@01) (img@65@01 r) (= r (inv@64@01 r)))
    (= (- (- $Perm.Write (pTaken@66@01 r)) (pTaken@67@01 r)) $Perm.No))
  
  :qid |quant-u-5364|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 3
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@64@01 r) ys@42@01) (img@65@01 r) (= r (inv@64@01 r)))
    (= (- (- $Perm.Write (pTaken@66@01 r)) (pTaken@67@01 r)) $Perm.No))
  
  :qid |quant-u-5364|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- t4 ----------
(declare-const xs@68@01 Set<$Ref>)
(declare-const ys@69@01 Set<$Ref>)
(declare-const zs@70@01 Set<$Ref>)
(declare-const xs@71@01 Set<$Ref>)
(declare-const ys@72@01 Set<$Ref>)
(declare-const zs@73@01 Set<$Ref>)
(push) ; 1
(declare-const $t@74@01 $Snap)
(assert (= $t@74@01 ($Snap.combine ($Snap.first $t@74@01) ($Snap.second $t@74@01))))
(declare-const x@75@01 $Ref)
(push) ; 2
; [eval] (x in xs)
(assert (Set_in x@75@01 xs@71@01))
(pop) ; 2
(declare-fun inv@76@01 ($Ref) $Ref)
(declare-fun img@77@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@75@01 $Ref) (x2@75@01 $Ref)) (!
  (=>
    (and
      (Set_in x1@75@01 xs@71@01)
      (Set_in x2@75@01 xs@71@01)
      (= x1@75@01 x2@75@01))
    (= x1@75@01 x2@75@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@75@01 $Ref)) (!
  (=>
    (Set_in x@75@01 xs@71@01)
    (and (= (inv@76@01 x@75@01) x@75@01) (img@77@01 x@75@01)))
  :pattern ((Set_in x@75@01 xs@71@01))
  :pattern ((inv@76@01 x@75@01))
  :pattern ((img@77@01 x@75@01))
  :qid |quant-u-5366|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@77@01 r) (Set_in (inv@76@01 r) xs@71@01)) (= (inv@76@01 r) r))
  :pattern ((inv@76@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@75@01 $Ref)) (!
  (=> (Set_in x@75@01 xs@71@01) (not (= x@75@01 $Ref.null)))
  :pattern ((Set_in x@75@01 xs@71@01))
  :pattern ((inv@76@01 x@75@01))
  :pattern ((img@77@01 x@75@01))
  :qid |f-permImpliesNonNull|)))
(assert (=
  ($Snap.second $t@74@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@74@01))
    ($Snap.second ($Snap.second $t@74@01)))))
(declare-const y@78@01 $Ref)
(push) ; 2
; [eval] (y in ys)
(assert (Set_in y@78@01 ys@72@01))
(pop) ; 2
(declare-fun inv@79@01 ($Ref) $Ref)
(declare-fun img@80@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((y1@78@01 $Ref) (y2@78@01 $Ref)) (!
  (=>
    (and
      (Set_in y1@78@01 ys@72@01)
      (Set_in y2@78@01 ys@72@01)
      (= y1@78@01 y2@78@01))
    (= y1@78@01 y2@78@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((y@78@01 $Ref)) (!
  (=>
    (Set_in y@78@01 ys@72@01)
    (and (= (inv@79@01 y@78@01) y@78@01) (img@80@01 y@78@01)))
  :pattern ((Set_in y@78@01 ys@72@01))
  :pattern ((inv@79@01 y@78@01))
  :pattern ((img@80@01 y@78@01))
  :qid |quant-u-5368|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@80@01 r) (Set_in (inv@79@01 r) ys@72@01)) (= (inv@79@01 r) r))
  :pattern ((inv@79@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((y@78@01 $Ref)) (!
  (=> (Set_in y@78@01 ys@72@01) (not (= y@78@01 $Ref.null)))
  :pattern ((Set_in y@78@01 ys@72@01))
  :pattern ((inv@79@01 y@78@01))
  :pattern ((img@80@01 y@78@01))
  :qid |f-permImpliesNonNull|)))
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= y@78@01 x@75@01)
    (=
      (and (img@80@01 r) (Set_in (inv@79@01 r) ys@72@01))
      (and (img@77@01 r) (Set_in (inv@76@01 r) xs@71@01))))
  
  :qid |quant-u-5369|))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (= ($Snap.second ($Snap.second $t@74@01)) $Snap.unit))
; [eval] (zs subset (xs union ys))
; [eval] (xs union ys)
(assert (Set_subset zs@73@01 (Set_union xs@71@01 ys@72@01)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; exhale (forall z: Ref ::(z in zs) ==> acc(z.f, write))
(declare-const z@81@01 $Ref)
(push) ; 3
; [eval] (z in zs)
(assert (Set_in z@81@01 zs@73@01))
(pop) ; 3
(declare-fun inv@82@01 ($Ref) $Ref)
(declare-fun img@83@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((z1@81@01 $Ref) (z2@81@01 $Ref)) (!
  (=>
    (and
      (Set_in z1@81@01 zs@73@01)
      (Set_in z2@81@01 zs@73@01)
      (= z1@81@01 z2@81@01))
    (= z1@81@01 z2@81@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@81@01 $Ref)) (!
  (=>
    (Set_in z@81@01 zs@73@01)
    (and (= (inv@82@01 z@81@01) z@81@01) (img@83@01 z@81@01)))
  :pattern ((Set_in z@81@01 zs@73@01))
  :pattern ((inv@82@01 z@81@01))
  :pattern ((img@83@01 z@81@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@83@01 r) (Set_in (inv@82@01 r) zs@73@01)) (= (inv@82@01 r) r))
  :pattern ((inv@82@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@84@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@82@01 r) zs@73@01) (img@83@01 r) (= r (inv@82@01 r)))
    ($Perm.min
      (ite
        (and (img@77@01 r) (Set_in (inv@76@01 r) xs@71@01))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@85@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@82@01 r) zs@73@01) (img@83@01 r) (= r (inv@82@01 r)))
    ($Perm.min
      (ite
        (and (img@80@01 r) (Set_in (inv@79@01 r) ys@72@01))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@84@01 r)))
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
        (and (img@77@01 r) (Set_in (inv@76@01 r) xs@71@01))
        $Perm.Write
        $Perm.No)
      (pTaken@84@01 r))
    $Perm.No)
  
  :qid |quant-u-5372|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@84@01 r) $Perm.No)
  
  :qid |quant-u-5373|))))
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
    (and (Set_in (inv@82@01 r) zs@73@01) (img@83@01 r) (= r (inv@82@01 r)))
    (= (- $Perm.Write (pTaken@84@01 r)) $Perm.No))
  
  :qid |quant-u-5374|))))
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
        (and (img@80@01 r) (Set_in (inv@79@01 r) ys@72@01))
        $Perm.Write
        $Perm.No)
      (pTaken@85@01 r))
    $Perm.No)
  
  :qid |quant-u-5375|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@85@01 r) $Perm.No)
  
  :qid |quant-u-5376|))))
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
    (and (Set_in (inv@82@01 r) zs@73@01) (img@83@01 r) (= r (inv@82@01 r)))
    (= (- (- $Perm.Write (pTaken@84@01 r)) (pTaken@85@01 r)) $Perm.No))
  
  :qid |quant-u-5377|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; exhale (forall b: Ref ::(b in (xs setminus zs)) ==> acc(b.f, write))
(declare-const b@86@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (b in (xs setminus zs))
; [eval] (xs setminus zs)
(assert (Set_in b@86@01 (Set_difference xs@71@01 zs@73@01)))
(pop) ; 3
(declare-fun inv@87@01 ($Ref) $Ref)
(declare-fun img@88@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((b1@86@01 $Ref) (b2@86@01 $Ref)) (!
  (=>
    (and
      (Set_in b1@86@01 (Set_difference xs@71@01 zs@73@01))
      (Set_in b2@86@01 (Set_difference xs@71@01 zs@73@01))
      (= b1@86@01 b2@86@01))
    (= b1@86@01 b2@86@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((b@86@01 $Ref)) (!
  (=>
    (Set_in b@86@01 (Set_difference xs@71@01 zs@73@01))
    (and (= (inv@87@01 b@86@01) b@86@01) (img@88@01 b@86@01)))
  :pattern ((Set_in b@86@01 (Set_difference xs@71@01 zs@73@01)))
  :pattern ((inv@87@01 b@86@01))
  :pattern ((img@88@01 b@86@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@88@01 r) (Set_in (inv@87@01 r) (Set_difference xs@71@01 zs@73@01)))
    (= (inv@87@01 r) r))
  :pattern ((inv@87@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@89@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@87@01 r) (Set_difference xs@71@01 zs@73@01))
      (img@88@01 r)
      (= r (inv@87@01 r)))
    ($Perm.min
      (ite
        (and (img@80@01 r) (Set_in (inv@79@01 r) ys@72@01))
        (- $Perm.Write (pTaken@85@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@90@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@87@01 r) (Set_difference xs@71@01 zs@73@01))
      (img@88@01 r)
      (= r (inv@87@01 r)))
    ($Perm.min
      (ite
        (and (img@77@01 r) (Set_in (inv@76@01 r) xs@71@01))
        (- $Perm.Write (pTaken@84@01 r))
        $Perm.No)
      (- $Perm.Write (pTaken@89@01 r)))
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
        (and (img@80@01 r) (Set_in (inv@79@01 r) ys@72@01))
        (- $Perm.Write (pTaken@85@01 r))
        $Perm.No)
      (pTaken@89@01 r))
    $Perm.No)
  
  :qid |quant-u-5380|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@89@01 r) $Perm.No)
  
  :qid |quant-u-5381|))))
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
      (Set_in (inv@87@01 r) (Set_difference xs@71@01 zs@73@01))
      (img@88@01 r)
      (= r (inv@87@01 r)))
    (= (- $Perm.Write (pTaken@89@01 r)) $Perm.No))
  
  :qid |quant-u-5382|))))
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
        (and (img@77@01 r) (Set_in (inv@76@01 r) xs@71@01))
        (- $Perm.Write (pTaken@84@01 r))
        $Perm.No)
      (pTaken@90@01 r))
    $Perm.No)
  
  :qid |quant-u-5383|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@90@01 r) $Perm.No)
  
  :qid |quant-u-5384|))))
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
      (Set_in (inv@87@01 r) (Set_difference xs@71@01 zs@73@01))
      (img@88@01 r)
      (= r (inv@87@01 r)))
    (= (- (- $Perm.Write (pTaken@89@01 r)) (pTaken@90@01 r)) $Perm.No))
  
  :qid |quant-u-5385|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; exhale (forall c: Ref ::(c in (ys setminus xs)) ==> acc(c.f, write))
(declare-const c@91@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (c in (ys setminus xs))
; [eval] (ys setminus xs)
(assert (Set_in c@91@01 (Set_difference ys@72@01 xs@71@01)))
(pop) ; 3
(declare-fun inv@92@01 ($Ref) $Ref)
(declare-fun img@93@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((c1@91@01 $Ref) (c2@91@01 $Ref)) (!
  (=>
    (and
      (Set_in c1@91@01 (Set_difference ys@72@01 xs@71@01))
      (Set_in c2@91@01 (Set_difference ys@72@01 xs@71@01))
      (= c1@91@01 c2@91@01))
    (= c1@91@01 c2@91@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((c@91@01 $Ref)) (!
  (=>
    (Set_in c@91@01 (Set_difference ys@72@01 xs@71@01))
    (and (= (inv@92@01 c@91@01) c@91@01) (img@93@01 c@91@01)))
  :pattern ((Set_in c@91@01 (Set_difference ys@72@01 xs@71@01)))
  :pattern ((inv@92@01 c@91@01))
  :pattern ((img@93@01 c@91@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@93@01 r) (Set_in (inv@92@01 r) (Set_difference ys@72@01 xs@71@01)))
    (= (inv@92@01 r) r))
  :pattern ((inv@92@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@94@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@92@01 r) (Set_difference ys@72@01 xs@71@01))
      (img@93@01 r)
      (= r (inv@92@01 r)))
    ($Perm.min
      (ite
        (and (img@77@01 r) (Set_in (inv@76@01 r) xs@71@01))
        (- (- $Perm.Write (pTaken@84@01 r)) (pTaken@90@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@95@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@92@01 r) (Set_difference ys@72@01 xs@71@01))
      (img@93@01 r)
      (= r (inv@92@01 r)))
    ($Perm.min
      (ite
        (and (img@80@01 r) (Set_in (inv@79@01 r) ys@72@01))
        (- (- $Perm.Write (pTaken@85@01 r)) (pTaken@89@01 r))
        $Perm.No)
      (- $Perm.Write (pTaken@94@01 r)))
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
        (and (img@77@01 r) (Set_in (inv@76@01 r) xs@71@01))
        (- (- $Perm.Write (pTaken@84@01 r)) (pTaken@90@01 r))
        $Perm.No)
      (pTaken@94@01 r))
    $Perm.No)
  
  :qid |quant-u-5388|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@94@01 r) $Perm.No)
  
  :qid |quant-u-5389|))))
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
      (Set_in (inv@92@01 r) (Set_difference ys@72@01 xs@71@01))
      (img@93@01 r)
      (= r (inv@92@01 r)))
    (= (- $Perm.Write (pTaken@94@01 r)) $Perm.No))
  
  :qid |quant-u-5390|))))
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
        (and (img@80@01 r) (Set_in (inv@79@01 r) ys@72@01))
        (- (- $Perm.Write (pTaken@85@01 r)) (pTaken@89@01 r))
        $Perm.No)
      (pTaken@95@01 r))
    $Perm.No)
  
  :qid |quant-u-5391|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@95@01 r) $Perm.No)
  
  :qid |quant-u-5392|))))
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
      (Set_in (inv@92@01 r) (Set_difference ys@72@01 xs@71@01))
      (img@93@01 r)
      (= r (inv@92@01 r)))
    (= (- (- $Perm.Write (pTaken@94@01 r)) (pTaken@95@01 r)) $Perm.No))
  
  :qid |quant-u-5393|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 3
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@92@01 r) (Set_difference ys@72@01 xs@71@01))
      (img@93@01 r)
      (= r (inv@92@01 r)))
    (= (- (- $Perm.Write (pTaken@94@01 r)) (pTaken@95@01 r)) $Perm.No))
  
  :qid |quant-u-5393|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= x@75@01 y@78@01)
    (=
      (and (img@77@01 r) (Set_in (inv@76@01 r) xs@71@01))
      (and (img@80@01 r) (Set_in (inv@79@01 r) ys@72@01))))
  
  :qid |quant-u-5394|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@96@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@77@01 r) (Set_in (inv@76@01 r) xs@71@01))
      (< $Perm.No (- (- $Perm.Write (pTaken@84@01 r)) (pTaken@90@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@96@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@74@01)) r)))
  :pattern (($FVF.lookup_f (as sm@96@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@74@01)) r))
  :qid |qp.fvfValDef5|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@80@01 r) (Set_in (inv@79@01 r) ys@72@01))
      (< $Perm.No (- (- $Perm.Write (pTaken@85@01 r)) (pTaken@89@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@96@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second $t@74@01))) r)))
  :pattern (($FVF.lookup_f (as sm@96@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second $t@74@01))) r))
  :qid |qp.fvfValDef6|)))
(declare-const pm@97@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@97@01  $FPM) r)
    (+
      (ite
        (and (img@77@01 r) (Set_in (inv@76@01 r) xs@71@01))
        (- (- $Perm.Write (pTaken@84@01 r)) (pTaken@90@01 r))
        $Perm.No)
      (ite
        (and (img@80@01 r) (Set_in (inv@79@01 r) ys@72@01))
        (- (- $Perm.Write (pTaken@85@01 r)) (pTaken@89@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@97@01  $FPM) r))
  :qid |qp.resPrmSumDef7|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@97@01  $FPM) r) $Perm.Write)
  :pattern ((inv@76@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@97@01  $FPM) r) $Perm.Write)
  :pattern ((inv@79@01 r))
  :qid |qp-fld-prm-bnd|)))
(declare-const c@98@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (c in (ys setminus xs))
; [eval] (ys setminus xs)
(assert (Set_in c@98@01 (Set_difference ys@72@01 xs@71@01)))
(pop) ; 3
(declare-fun inv@99@01 ($Ref) $Ref)
(declare-fun img@100@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((c1@98@01 $Ref) (c2@98@01 $Ref)) (!
  (=>
    (and
      (Set_in c1@98@01 (Set_difference ys@72@01 xs@71@01))
      (Set_in c2@98@01 (Set_difference ys@72@01 xs@71@01))
      (= c1@98@01 c2@98@01))
    (= c1@98@01 c2@98@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((c@98@01 $Ref)) (!
  (=>
    (Set_in c@98@01 (Set_difference ys@72@01 xs@71@01))
    (and (= (inv@99@01 c@98@01) c@98@01) (img@100@01 c@98@01)))
  :pattern ((Set_in c@98@01 (Set_difference ys@72@01 xs@71@01)))
  :pattern ((inv@99@01 c@98@01))
  :pattern ((img@100@01 c@98@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@100@01 r)
      (Set_in (inv@99@01 r) (Set_difference ys@72@01 xs@71@01)))
    (= (inv@99@01 r) r))
  :pattern ((inv@99@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@101@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@99@01 r) (Set_difference ys@72@01 xs@71@01))
      (img@100@01 r)
      (= r (inv@99@01 r)))
    ($Perm.min
      (ite
        (and (img@80@01 r) (Set_in (inv@79@01 r) ys@72@01))
        (- (- $Perm.Write (pTaken@85@01 r)) (pTaken@89@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@102@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@99@01 r) (Set_difference ys@72@01 xs@71@01))
      (img@100@01 r)
      (= r (inv@99@01 r)))
    ($Perm.min
      (ite
        (and (img@77@01 r) (Set_in (inv@76@01 r) xs@71@01))
        (- (- $Perm.Write (pTaken@84@01 r)) (pTaken@90@01 r))
        $Perm.No)
      (- $Perm.Write (pTaken@101@01 r)))
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
        (and (img@80@01 r) (Set_in (inv@79@01 r) ys@72@01))
        (- (- $Perm.Write (pTaken@85@01 r)) (pTaken@89@01 r))
        $Perm.No)
      (pTaken@101@01 r))
    $Perm.No)
  
  :qid |quant-u-5397|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@101@01 r) $Perm.No)
  
  :qid |quant-u-5398|))))
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
      (Set_in (inv@99@01 r) (Set_difference ys@72@01 xs@71@01))
      (img@100@01 r)
      (= r (inv@99@01 r)))
    (= (- $Perm.Write (pTaken@101@01 r)) $Perm.No))
  
  :qid |quant-u-5399|))))
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
        (and (img@77@01 r) (Set_in (inv@76@01 r) xs@71@01))
        (- (- $Perm.Write (pTaken@84@01 r)) (pTaken@90@01 r))
        $Perm.No)
      (pTaken@102@01 r))
    $Perm.No)
  
  :qid |quant-u-5400|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@102@01 r) $Perm.No)
  
  :qid |quant-u-5401|))))
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
      (Set_in (inv@99@01 r) (Set_difference ys@72@01 xs@71@01))
      (img@100@01 r)
      (= r (inv@99@01 r)))
    (= (- (- $Perm.Write (pTaken@101@01 r)) (pTaken@102@01 r)) $Perm.No))
  
  :qid |quant-u-5402|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 3
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@99@01 r) (Set_difference ys@72@01 xs@71@01))
      (img@100@01 r)
      (= r (inv@99@01 r)))
    (= (- (- $Perm.Write (pTaken@101@01 r)) (pTaken@102@01 r)) $Perm.No))
  
  :qid |quant-u-5402|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- t5 ----------
(declare-const xs@103@01 Set<$Ref>)
(declare-const ys@104@01 Set<$Ref>)
(declare-const xs@105@01 Set<$Ref>)
(declare-const ys@106@01 Set<$Ref>)
(push) ; 1
(declare-const $t@107@01 $Snap)
(assert (= $t@107@01 ($Snap.combine ($Snap.first $t@107@01) ($Snap.second $t@107@01))))
(declare-const x@108@01 $Ref)
(push) ; 2
; [eval] (x in xs)
(assert (Set_in x@108@01 xs@105@01))
(pop) ; 2
(declare-fun inv@109@01 ($Ref) $Ref)
(declare-fun img@110@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@108@01 $Ref) (x2@108@01 $Ref)) (!
  (=>
    (and
      (Set_in x1@108@01 xs@105@01)
      (Set_in x2@108@01 xs@105@01)
      (= x1@108@01 x2@108@01))
    (= x1@108@01 x2@108@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@108@01 $Ref)) (!
  (=>
    (Set_in x@108@01 xs@105@01)
    (and (= (inv@109@01 x@108@01) x@108@01) (img@110@01 x@108@01)))
  :pattern ((Set_in x@108@01 xs@105@01))
  :pattern ((inv@109@01 x@108@01))
  :pattern ((img@110@01 x@108@01))
  :qid |quant-u-5404|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@110@01 r) (Set_in (inv@109@01 r) xs@105@01))
    (= (inv@109@01 r) r))
  :pattern ((inv@109@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@108@01 $Ref)) (!
  (=> (Set_in x@108@01 xs@105@01) (not (= x@108@01 $Ref.null)))
  :pattern ((Set_in x@108@01 xs@105@01))
  :pattern ((inv@109@01 x@108@01))
  :pattern ((img@110@01 x@108@01))
  :qid |f-permImpliesNonNull|)))
(declare-const y@111@01 $Ref)
(push) ; 2
; [eval] (y in ys)
(assert (Set_in y@111@01 ys@106@01))
(pop) ; 2
(declare-fun inv@112@01 ($Ref) $Ref)
(declare-fun img@113@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((y1@111@01 $Ref) (y2@111@01 $Ref)) (!
  (=>
    (and
      (Set_in y1@111@01 ys@106@01)
      (Set_in y2@111@01 ys@106@01)
      (= y1@111@01 y2@111@01))
    (= y1@111@01 y2@111@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((y@111@01 $Ref)) (!
  (=>
    (Set_in y@111@01 ys@106@01)
    (and (= (inv@112@01 y@111@01) y@111@01) (img@113@01 y@111@01)))
  :pattern ((Set_in y@111@01 ys@106@01))
  :pattern ((inv@112@01 y@111@01))
  :pattern ((img@113@01 y@111@01))
  :qid |quant-u-5406|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@113@01 r) (Set_in (inv@112@01 r) ys@106@01))
    (= (inv@112@01 r) r))
  :pattern ((inv@112@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((y@111@01 $Ref)) (!
  (=> (Set_in y@111@01 ys@106@01) (not (= y@111@01 $Ref.null)))
  :pattern ((Set_in y@111@01 ys@106@01))
  :pattern ((inv@112@01 y@111@01))
  :pattern ((img@113@01 y@111@01))
  :qid |f-permImpliesNonNull|)))
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= y@111@01 x@108@01)
    (=
      (and (img@113@01 r) (Set_in (inv@112@01 r) ys@106@01))
      (and (img@110@01 r) (Set_in (inv@109@01 r) xs@105@01))))
  
  :qid |quant-u-5407|))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; exhale (forall z: Ref ::(z in (xs intersection ys)) ==> acc(z.f, write))
(declare-const z@114@01 $Ref)
(push) ; 3
; [eval] (z in (xs intersection ys))
; [eval] (xs intersection ys)
(assert (Set_in z@114@01 (Set_intersection xs@105@01 ys@106@01)))
(pop) ; 3
(declare-fun inv@115@01 ($Ref) $Ref)
(declare-fun img@116@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((z1@114@01 $Ref) (z2@114@01 $Ref)) (!
  (=>
    (and
      (Set_in z1@114@01 (Set_intersection xs@105@01 ys@106@01))
      (Set_in z2@114@01 (Set_intersection xs@105@01 ys@106@01))
      (= z1@114@01 z2@114@01))
    (= z1@114@01 z2@114@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@114@01 $Ref)) (!
  (=>
    (Set_in z@114@01 (Set_intersection xs@105@01 ys@106@01))
    (and (= (inv@115@01 z@114@01) z@114@01) (img@116@01 z@114@01)))
  :pattern ((Set_in z@114@01 (Set_intersection xs@105@01 ys@106@01)))
  :pattern ((inv@115@01 z@114@01))
  :pattern ((img@116@01 z@114@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@116@01 r)
      (Set_in (inv@115@01 r) (Set_intersection xs@105@01 ys@106@01)))
    (= (inv@115@01 r) r))
  :pattern ((inv@115@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@117@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@115@01 r) (Set_intersection xs@105@01 ys@106@01))
      (img@116@01 r)
      (= r (inv@115@01 r)))
    ($Perm.min
      (ite
        (and (img@110@01 r) (Set_in (inv@109@01 r) xs@105@01))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@118@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@115@01 r) (Set_intersection xs@105@01 ys@106@01))
      (img@116@01 r)
      (= r (inv@115@01 r)))
    ($Perm.min
      (ite
        (and (img@113@01 r) (Set_in (inv@112@01 r) ys@106@01))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@117@01 r)))
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
        (and (img@110@01 r) (Set_in (inv@109@01 r) xs@105@01))
        $Perm.Write
        $Perm.No)
      (pTaken@117@01 r))
    $Perm.No)
  
  :qid |quant-u-5410|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@117@01 r) $Perm.No)
  
  :qid |quant-u-5411|))))
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
      (Set_in (inv@115@01 r) (Set_intersection xs@105@01 ys@106@01))
      (img@116@01 r)
      (= r (inv@115@01 r)))
    (= (- $Perm.Write (pTaken@117@01 r)) $Perm.No))
  
  :qid |quant-u-5412|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; exhale (forall a: Ref ::(a in (xs setminus (xs intersection ys))) ==>
;     acc(a.f, write))
(declare-const a@119@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (a in (xs setminus (xs intersection ys)))
; [eval] (xs setminus (xs intersection ys))
; [eval] (xs intersection ys)
(assert (Set_in a@119@01 (Set_difference xs@105@01 (Set_intersection xs@105@01 ys@106@01))))
(pop) ; 3
(declare-fun inv@120@01 ($Ref) $Ref)
(declare-fun img@121@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((a1@119@01 $Ref) (a2@119@01 $Ref)) (!
  (=>
    (and
      (Set_in a1@119@01 (Set_difference xs@105@01 (Set_intersection xs@105@01 ys@106@01)))
      (Set_in a2@119@01 (Set_difference xs@105@01 (Set_intersection xs@105@01 ys@106@01)))
      (= a1@119@01 a2@119@01))
    (= a1@119@01 a2@119@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((a@119@01 $Ref)) (!
  (=>
    (Set_in a@119@01 (Set_difference xs@105@01 (Set_intersection xs@105@01 ys@106@01)))
    (and (= (inv@120@01 a@119@01) a@119@01) (img@121@01 a@119@01)))
  :pattern ((Set_in a@119@01 (Set_difference xs@105@01 (Set_intersection xs@105@01 ys@106@01))))
  :pattern ((inv@120@01 a@119@01))
  :pattern ((img@121@01 a@119@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@121@01 r)
      (Set_in (inv@120@01 r) (Set_difference xs@105@01 (Set_intersection xs@105@01 ys@106@01))))
    (= (inv@120@01 r) r))
  :pattern ((inv@120@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@122@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@120@01 r) (Set_difference xs@105@01 (Set_intersection xs@105@01 ys@106@01)))
      (img@121@01 r)
      (= r (inv@120@01 r)))
    ($Perm.min
      (ite
        (and (img@113@01 r) (Set_in (inv@112@01 r) ys@106@01))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@123@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@120@01 r) (Set_difference xs@105@01 (Set_intersection xs@105@01 ys@106@01)))
      (img@121@01 r)
      (= r (inv@120@01 r)))
    ($Perm.min
      (ite
        (and (img@110@01 r) (Set_in (inv@109@01 r) xs@105@01))
        (- $Perm.Write (pTaken@117@01 r))
        $Perm.No)
      (- $Perm.Write (pTaken@122@01 r)))
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
        (and (img@113@01 r) (Set_in (inv@112@01 r) ys@106@01))
        $Perm.Write
        $Perm.No)
      (pTaken@122@01 r))
    $Perm.No)
  
  :qid |quant-u-5415|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@122@01 r) $Perm.No)
  
  :qid |quant-u-5416|))))
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
      (Set_in (inv@120@01 r) (Set_difference xs@105@01 (Set_intersection xs@105@01 ys@106@01)))
      (img@121@01 r)
      (= r (inv@120@01 r)))
    (= (- $Perm.Write (pTaken@122@01 r)) $Perm.No))
  
  :qid |quant-u-5417|))))
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
        (and (img@110@01 r) (Set_in (inv@109@01 r) xs@105@01))
        (- $Perm.Write (pTaken@117@01 r))
        $Perm.No)
      (pTaken@123@01 r))
    $Perm.No)
  
  :qid |quant-u-5418|))))
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
      (Set_in (inv@120@01 r) (Set_difference xs@105@01 (Set_intersection xs@105@01 ys@106@01)))
      (img@121@01 r)
      (= r (inv@120@01 r)))
    (= (- (- $Perm.Write (pTaken@122@01 r)) (pTaken@123@01 r)) $Perm.No))
  
  :qid |quant-u-5419|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; exhale (forall b: Ref ::(b in (ys setminus (ys intersection xs))) ==>
;     acc(b.f, write))
(declare-const b@124@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (b in (ys setminus (ys intersection xs)))
; [eval] (ys setminus (ys intersection xs))
; [eval] (ys intersection xs)
(assert (Set_in b@124@01 (Set_difference ys@106@01 (Set_intersection ys@106@01 xs@105@01))))
(pop) ; 3
(declare-fun inv@125@01 ($Ref) $Ref)
(declare-fun img@126@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((b1@124@01 $Ref) (b2@124@01 $Ref)) (!
  (=>
    (and
      (Set_in b1@124@01 (Set_difference ys@106@01 (Set_intersection ys@106@01 xs@105@01)))
      (Set_in b2@124@01 (Set_difference ys@106@01 (Set_intersection ys@106@01 xs@105@01)))
      (= b1@124@01 b2@124@01))
    (= b1@124@01 b2@124@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((b@124@01 $Ref)) (!
  (=>
    (Set_in b@124@01 (Set_difference ys@106@01 (Set_intersection ys@106@01 xs@105@01)))
    (and (= (inv@125@01 b@124@01) b@124@01) (img@126@01 b@124@01)))
  :pattern ((Set_in b@124@01 (Set_difference ys@106@01 (Set_intersection ys@106@01 xs@105@01))))
  :pattern ((inv@125@01 b@124@01))
  :pattern ((img@126@01 b@124@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@126@01 r)
      (Set_in (inv@125@01 r) (Set_difference ys@106@01 (Set_intersection ys@106@01 xs@105@01))))
    (= (inv@125@01 r) r))
  :pattern ((inv@125@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@127@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@125@01 r) (Set_difference ys@106@01 (Set_intersection ys@106@01 xs@105@01)))
      (img@126@01 r)
      (= r (inv@125@01 r)))
    ($Perm.min
      (ite
        (and (img@113@01 r) (Set_in (inv@112@01 r) ys@106@01))
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
        (and (img@113@01 r) (Set_in (inv@112@01 r) ys@106@01))
        $Perm.Write
        $Perm.No)
      (pTaken@127@01 r))
    $Perm.No)
  
  :qid |quant-u-5422|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@127@01 r) $Perm.No)
  
  :qid |quant-u-5423|))))
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
      (Set_in (inv@125@01 r) (Set_difference ys@106@01 (Set_intersection ys@106@01 xs@105@01)))
      (img@126@01 r)
      (= r (inv@125@01 r)))
    (= (- $Perm.Write (pTaken@127@01 r)) $Perm.No))
  
  :qid |quant-u-5424|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- t6 ----------
(declare-const xs@128@01 Set<$Ref>)
(declare-const ys@129@01 Set<$Ref>)
(declare-const xs@130@01 Set<$Ref>)
(declare-const ys@131@01 Set<$Ref>)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@132@01 $Snap)
(assert (= $t@132@01 ($Snap.combine ($Snap.first $t@132@01) ($Snap.second $t@132@01))))
(declare-const x@133@01 $Ref)
(push) ; 2
; [eval] (x in xs)
(assert (Set_in x@133@01 xs@130@01))
(pop) ; 2
(declare-fun inv@134@01 ($Ref) $Ref)
(declare-fun img@135@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@133@01 $Ref) (x2@133@01 $Ref)) (!
  (=>
    (and
      (Set_in x1@133@01 xs@130@01)
      (Set_in x2@133@01 xs@130@01)
      (= x1@133@01 x2@133@01))
    (= x1@133@01 x2@133@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@133@01 $Ref)) (!
  (=>
    (Set_in x@133@01 xs@130@01)
    (and (= (inv@134@01 x@133@01) x@133@01) (img@135@01 x@133@01)))
  :pattern ((Set_in x@133@01 xs@130@01))
  :pattern ((inv@134@01 x@133@01))
  :pattern ((img@135@01 x@133@01))
  :qid |quant-u-5426|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@135@01 r) (Set_in (inv@134@01 r) xs@130@01))
    (= (inv@134@01 r) r))
  :pattern ((inv@134@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@133@01 $Ref)) (!
  (=> (Set_in x@133@01 xs@130@01) (not (= x@133@01 $Ref.null)))
  :pattern ((Set_in x@133@01 xs@130@01))
  :pattern ((inv@134@01 x@133@01))
  :pattern ((img@135@01 x@133@01))
  :qid |f-permImpliesNonNull|)))
(declare-const y@136@01 $Ref)
(push) ; 2
; [eval] (y in ys)
(assert (Set_in y@136@01 ys@131@01))
(pop) ; 2
(declare-fun inv@137@01 ($Ref) $Ref)
(declare-fun img@138@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((y1@136@01 $Ref) (y2@136@01 $Ref)) (!
  (=>
    (and
      (Set_in y1@136@01 ys@131@01)
      (Set_in y2@136@01 ys@131@01)
      (= y1@136@01 y2@136@01))
    (= y1@136@01 y2@136@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((y@136@01 $Ref)) (!
  (=>
    (Set_in y@136@01 ys@131@01)
    (and (= (inv@137@01 y@136@01) y@136@01) (img@138@01 y@136@01)))
  :pattern ((Set_in y@136@01 ys@131@01))
  :pattern ((inv@137@01 y@136@01))
  :pattern ((img@138@01 y@136@01))
  :qid |quant-u-5428|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@138@01 r) (Set_in (inv@137@01 r) ys@131@01))
    (= (inv@137@01 r) r))
  :pattern ((inv@137@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((y@136@01 $Ref)) (!
  (=> (Set_in y@136@01 ys@131@01) (not (= y@136@01 $Ref.null)))
  :pattern ((Set_in y@136@01 ys@131@01))
  :pattern ((inv@137@01 y@136@01))
  :pattern ((img@138@01 y@136@01))
  :qid |f-permImpliesNonNull|)))
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= y@136@01 x@133@01)
    (=
      (and (img@138@01 r) (Set_in (inv@137@01 r) ys@131@01))
      (and (img@135@01 r) (Set_in (inv@134@01 r) xs@130@01))))
  
  :qid |quant-u-5429|))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; exhale (forall z: Ref ::(z in (xs intersection ys)) ==> acc(z.f, write))
(declare-const z@139@01 $Ref)
(push) ; 3
; [eval] (z in (xs intersection ys))
; [eval] (xs intersection ys)
(assert (Set_in z@139@01 (Set_intersection xs@130@01 ys@131@01)))
(pop) ; 3
(declare-fun inv@140@01 ($Ref) $Ref)
(declare-fun img@141@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((z1@139@01 $Ref) (z2@139@01 $Ref)) (!
  (=>
    (and
      (Set_in z1@139@01 (Set_intersection xs@130@01 ys@131@01))
      (Set_in z2@139@01 (Set_intersection xs@130@01 ys@131@01))
      (= z1@139@01 z2@139@01))
    (= z1@139@01 z2@139@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@139@01 $Ref)) (!
  (=>
    (Set_in z@139@01 (Set_intersection xs@130@01 ys@131@01))
    (and (= (inv@140@01 z@139@01) z@139@01) (img@141@01 z@139@01)))
  :pattern ((Set_in z@139@01 (Set_intersection xs@130@01 ys@131@01)))
  :pattern ((inv@140@01 z@139@01))
  :pattern ((img@141@01 z@139@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@141@01 r)
      (Set_in (inv@140@01 r) (Set_intersection xs@130@01 ys@131@01)))
    (= (inv@140@01 r) r))
  :pattern ((inv@140@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@142@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@140@01 r) (Set_intersection xs@130@01 ys@131@01))
      (img@141@01 r)
      (= r (inv@140@01 r)))
    ($Perm.min
      (ite
        (and (img@135@01 r) (Set_in (inv@134@01 r) xs@130@01))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@143@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@140@01 r) (Set_intersection xs@130@01 ys@131@01))
      (img@141@01 r)
      (= r (inv@140@01 r)))
    ($Perm.min
      (ite
        (and (img@138@01 r) (Set_in (inv@137@01 r) ys@131@01))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (- $Perm.Write (pTaken@142@01 r)))
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
        (and (img@135@01 r) (Set_in (inv@134@01 r) xs@130@01))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (pTaken@142@01 r))
    $Perm.No)
  
  :qid |quant-u-5432|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@142@01 r) $Perm.No)
  
  :qid |quant-u-5433|))))
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
      (Set_in (inv@140@01 r) (Set_intersection xs@130@01 ys@131@01))
      (img@141@01 r)
      (= r (inv@140@01 r)))
    (= (- $Perm.Write (pTaken@142@01 r)) $Perm.No))
  
  :qid |quant-u-5434|))))
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
        (and (img@138@01 r) (Set_in (inv@137@01 r) ys@131@01))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (pTaken@143@01 r))
    $Perm.No)
  
  :qid |quant-u-5435|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@143@01 r) $Perm.No)
  
  :qid |quant-u-5436|))))
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
      (Set_in (inv@140@01 r) (Set_intersection xs@130@01 ys@131@01))
      (img@141@01 r)
      (= r (inv@140@01 r)))
    (= (- (- $Perm.Write (pTaken@142@01 r)) (pTaken@143@01 r)) $Perm.No))
  
  :qid |quant-u-5437|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- t7 ----------
(declare-const xs@144@01 Set<$Ref>)
(declare-const xs@145@01 Set<$Ref>)
(set-option :timeout 0)
(push) ; 1
(declare-const x@146@01 $Ref)
(push) ; 2
; [eval] (x in xs)
(assert (Set_in x@146@01 xs@145@01))
(pop) ; 2
(declare-const $t@147@01 $FVF<f>)
(declare-fun inv@148@01 ($Ref) $Ref)
(declare-fun img@149@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@146@01 $Ref) (x2@146@01 $Ref)) (!
  (=>
    (and
      (Set_in x1@146@01 xs@145@01)
      (Set_in x2@146@01 xs@145@01)
      (= x1@146@01 x2@146@01))
    (= x1@146@01 x2@146@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@146@01 $Ref)) (!
  (=>
    (Set_in x@146@01 xs@145@01)
    (and (= (inv@148@01 x@146@01) x@146@01) (img@149@01 x@146@01)))
  :pattern ((Set_in x@146@01 xs@145@01))
  :pattern ((inv@148@01 x@146@01))
  :pattern ((img@149@01 x@146@01))
  :qid |quant-u-5439|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@149@01 r) (Set_in (inv@148@01 r) xs@145@01))
    (= (inv@148@01 r) r))
  :pattern ((inv@148@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@146@01 $Ref)) (!
  (=> (Set_in x@146@01 xs@145@01) (not (= x@146@01 $Ref.null)))
  :pattern ((Set_in x@146@01 xs@145@01))
  :pattern ((inv@148@01 x@146@01))
  :pattern ((img@149@01 x@146@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const y@150@01 $Ref)
(push) ; 3
; [eval] (y in xs)
(assert (Set_in y@150@01 xs@145@01))
(pop) ; 3
(declare-const $t@151@01 $FVF<f>)
(declare-fun inv@152@01 ($Ref) $Ref)
(declare-fun img@153@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((y1@150@01 $Ref) (y2@150@01 $Ref)) (!
  (=>
    (and
      (Set_in y1@150@01 xs@145@01)
      (Set_in y2@150@01 xs@145@01)
      (= y1@150@01 y2@150@01))
    (= y1@150@01 y2@150@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((y@150@01 $Ref)) (!
  (=>
    (Set_in y@150@01 xs@145@01)
    (and (= (inv@152@01 y@150@01) y@150@01) (img@153@01 y@150@01)))
  :pattern ((Set_in y@150@01 xs@145@01))
  :pattern ((inv@152@01 y@150@01))
  :pattern ((img@153@01 y@150@01))
  :qid |quant-u-5441|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@153@01 r) (Set_in (inv@152@01 r) xs@145@01))
    (= (inv@152@01 r) r))
  :pattern ((inv@152@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((y@150@01 $Ref)) (!
  (=> (Set_in y@150@01 xs@145@01) (not (= y@150@01 $Ref.null)))
  :pattern ((Set_in y@150@01 xs@145@01))
  :pattern ((inv@152@01 y@150@01))
  :pattern ((img@153@01 y@150@01))
  :qid |f-permImpliesNonNull|)))
(pop) ; 2
(push) ; 2
(declare-const y@154@01 $Ref)
(push) ; 3
; [eval] (y in xs)
(assert (Set_in y@154@01 xs@145@01))
(pop) ; 3
(declare-fun inv@155@01 ($Ref) $Ref)
(declare-fun img@156@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((y1@154@01 $Ref) (y2@154@01 $Ref)) (!
  (=>
    (and
      (Set_in y1@154@01 xs@145@01)
      (Set_in y2@154@01 xs@145@01)
      (= y1@154@01 y2@154@01))
    (= y1@154@01 y2@154@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((y@154@01 $Ref)) (!
  (=>
    (Set_in y@154@01 xs@145@01)
    (and (= (inv@155@01 y@154@01) y@154@01) (img@156@01 y@154@01)))
  :pattern ((Set_in y@154@01 xs@145@01))
  :pattern ((inv@155@01 y@154@01))
  :pattern ((img@156@01 y@154@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@156@01 r) (Set_in (inv@155@01 r) xs@145@01))
    (= (inv@155@01 r) r))
  :pattern ((inv@155@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@157@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@155@01 r) xs@145@01) (img@156@01 r) (= r (inv@155@01 r)))
    ($Perm.min
      (ite
        (and (img@149@01 r) (Set_in (inv@148@01 r) xs@145@01))
        (/ (to_real 1) (to_real 3))
        $Perm.No)
      (/ (to_real 1) (to_real 3)))
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
        (and (img@149@01 r) (Set_in (inv@148@01 r) xs@145@01))
        (/ (to_real 1) (to_real 3))
        $Perm.No)
      (pTaken@157@01 r))
    $Perm.No)
  
  :qid |quant-u-5444|))))
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
    (and (Set_in (inv@155@01 r) xs@145@01) (img@156@01 r) (= r (inv@155@01 r)))
    (= (- (/ (to_real 1) (to_real 3)) (pTaken@157@01 r)) $Perm.No))
  
  :qid |quant-u-5445|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
