(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-13 17:36:06
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
(declare-const x@1@01 $Ref)
(declare-const xs@2@01 Set<$Ref>)
(declare-const x@3@01 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@4@01 $Snap)
(assert (= $t@4@01 ($Snap.combine ($Snap.first $t@4@01) ($Snap.second $t@4@01))))
(declare-const y@5@01 $Ref)
(push) ; 2
; [eval] (y in xs)
(assert (Set_in y@5@01 xs@2@01))
(pop) ; 2
(declare-fun inv@6@01 ($Ref) $Ref)
(declare-fun img@7@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((y1@5@01 $Ref) (y2@5@01 $Ref)) (!
  (=>
    (and (Set_in y1@5@01 xs@2@01) (Set_in y2@5@01 xs@2@01) (= y1@5@01 y2@5@01))
    (= y1@5@01 y2@5@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((y@5@01 $Ref)) (!
  (=>
    (Set_in y@5@01 xs@2@01)
    (and (= (inv@6@01 y@5@01) y@5@01) (img@7@01 y@5@01)))
  :pattern ((Set_in y@5@01 xs@2@01))
  :pattern ((inv@6@01 y@5@01))
  :pattern ((img@7@01 y@5@01))
  :qid |quant-u-5198|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@7@01 r) (Set_in (inv@6@01 r) xs@2@01)) (= (inv@6@01 r) r))
  :pattern ((inv@6@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((y@5@01 $Ref)) (!
  (=> (Set_in y@5@01 xs@2@01) (not (= y@5@01 $Ref.null)))
  :pattern ((Set_in y@5@01 xs@2@01))
  :pattern ((inv@6@01 y@5@01))
  :pattern ((img@7@01 y@5@01))
  :qid |f-permImpliesNonNull|)))
(assert (= ($Snap.second $t@4@01) $Snap.unit))
; [eval] (x in xs)
(assert (Set_in x@3@01 xs@2@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; assert acc(x.f, write)
; Precomputing data for removing quantified permissions
(define-fun pTaken@8@01 ((r $Ref)) $Perm
  (ite
    (= r x@3@01)
    ($Perm.min
      (ite (and (img@7@01 r) (Set_in (inv@6@01 r) xs@2@01)) $Perm.Write $Perm.No)
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
      (ite (and (img@7@01 r) (Set_in (inv@6@01 r) xs@2@01)) $Perm.Write $Perm.No)
      (pTaken@8@01 r))
    $Perm.No)
  
  :qid |quant-u-5200|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@8@01 r) $Perm.No)
  
  :qid |quant-u-5201|))))
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
  (=> (= r x@3@01) (= (- $Perm.Write (pTaken@8@01 r)) $Perm.No))
  
  :qid |quant-u-5202|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; exhale (forall z: Ref ::(z in xs) ==> acc(z.f, write))
(declare-const z@9@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (z in xs)
(assert (Set_in z@9@01 xs@2@01))
(pop) ; 3
(declare-fun inv@10@01 ($Ref) $Ref)
(declare-fun img@11@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((z1@9@01 $Ref) (z2@9@01 $Ref)) (!
  (=>
    (and (Set_in z1@9@01 xs@2@01) (Set_in z2@9@01 xs@2@01) (= z1@9@01 z2@9@01))
    (= z1@9@01 z2@9@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@9@01 $Ref)) (!
  (=>
    (Set_in z@9@01 xs@2@01)
    (and (= (inv@10@01 z@9@01) z@9@01) (img@11@01 z@9@01)))
  :pattern ((Set_in z@9@01 xs@2@01))
  :pattern ((inv@10@01 z@9@01))
  :pattern ((img@11@01 z@9@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@11@01 r) (Set_in (inv@10@01 r) xs@2@01)) (= (inv@10@01 r) r))
  :pattern ((inv@10@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@12@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@10@01 r) xs@2@01) (img@11@01 r) (= r (inv@10@01 r)))
    ($Perm.min
      (ite (and (img@7@01 r) (Set_in (inv@6@01 r) xs@2@01)) $Perm.Write $Perm.No)
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
      (ite (and (img@7@01 r) (Set_in (inv@6@01 r) xs@2@01)) $Perm.Write $Perm.No)
      (pTaken@12@01 r))
    $Perm.No)
  
  :qid |quant-u-5205|))))
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
    (and (Set_in (inv@10@01 r) xs@2@01) (img@11@01 r) (= r (inv@10@01 r)))
    (= (- $Perm.Write (pTaken@12@01 r)) $Perm.No))
  
  :qid |quant-u-5206|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; assert acc(x.f, write)
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
  (=> (= r x@3@01) false)
  
  :qid |quant-u-5207|))))
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
; Precomputing data for removing quantified permissions
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 3
(assert (not (forall ((r $Ref)) (!
  (=> (= r x@3@01) false)
  
  :qid |quant-u-5208|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- t4 ----------
(declare-const x@13@01 $Ref)
(declare-const y@14@01 $Ref)
(declare-const x@15@01 $Ref)
(declare-const y@16@01 $Ref)
(push) ; 1
(declare-const $t@17@01 $Snap)
(assert (= $t@17@01 ($Snap.combine ($Snap.first $t@17@01) ($Snap.second $t@17@01))))
(declare-const sm@18@01 $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (as sm@18@01  $FVF<f>) x@15@01)
  ($SortWrappers.$SnapToInt ($Snap.first $t@17@01))))
(assert (not (= x@15@01 $Ref.null)))
(declare-const sm@19@01 $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (as sm@19@01  $FVF<f>) y@16@01)
  ($SortWrappers.$SnapToInt ($Snap.second $t@17@01))))
(push) ; 2
(set-option :timeout 10)
(assert (not (= y@16@01 x@15@01)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (not (= y@16@01 $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; exhale (forall z: Ref ::(z in Set(y)) ==> acc(z.f, write))
(declare-const z@20@01 $Ref)
(push) ; 3
; [eval] (z in Set(y))
; [eval] Set(y)
(assert (Set_in z@20@01 (Set_singleton y@16@01)))
(pop) ; 3
(declare-fun inv@21@01 ($Ref) $Ref)
(declare-fun img@22@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((z1@20@01 $Ref) (z2@20@01 $Ref)) (!
  (=>
    (and
      (Set_in z1@20@01 (Set_singleton y@16@01))
      (Set_in z2@20@01 (Set_singleton y@16@01))
      (= z1@20@01 z2@20@01))
    (= z1@20@01 z2@20@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@20@01 $Ref)) (!
  (=>
    (Set_in z@20@01 (Set_singleton y@16@01))
    (and (= (inv@21@01 z@20@01) z@20@01) (img@22@01 z@20@01)))
  :pattern ((Set_in z@20@01 (Set_singleton y@16@01)))
  :pattern ((inv@21@01 z@20@01))
  :pattern ((img@22@01 z@20@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@22@01 r) (Set_in (inv@21@01 r) (Set_singleton y@16@01)))
    (= (inv@21@01 r) r))
  :pattern ((inv@21@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@23@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@21@01 r) (Set_singleton y@16@01))
      (img@22@01 r)
      (= r (inv@21@01 r)))
    ($Perm.min (ite (= r x@15@01) $Perm.Write $Perm.No) $Perm.Write)
    $Perm.No))
(define-fun pTaken@24@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@21@01 r) (Set_singleton y@16@01))
      (img@22@01 r)
      (= r (inv@21@01 r)))
    ($Perm.min
      (ite (= r y@16@01) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@23@01 r)))
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
(assert (not (= (- $Perm.Write (pTaken@23@01 x@15@01)) $Perm.No)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@23@01 r) $Perm.No)
  
  :qid |quant-u-5212|))))
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
      (Set_in (inv@21@01 r) (Set_singleton y@16@01))
      (img@22@01 r)
      (= r (inv@21@01 r)))
    (= (- $Perm.Write (pTaken@23@01 r)) $Perm.No))
  
  :qid |quant-u-5213|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@24@01 y@16@01)) $Perm.No)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@24@01 r) $Perm.No)
  
  :qid |quant-u-5215|))))
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
      (Set_in (inv@21@01 r) (Set_singleton y@16@01))
      (img@22@01 r)
      (= r (inv@21@01 r)))
    (= (- (- $Perm.Write (pTaken@23@01 r)) (pTaken@24@01 r)) $Perm.No))
  
  :qid |quant-u-5216|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; assert acc(x.f, write)
; Precomputing data for removing quantified permissions
(define-fun pTaken@25@01 ((r $Ref)) $Perm
  (ite
    (= r x@15@01)
    ($Perm.min
      (ite (= r x@15@01) (- $Perm.Write (pTaken@23@01 r)) $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@26@01 ((r $Ref)) $Perm
  (ite
    (= r x@15@01)
    ($Perm.min
      (ite (= r y@16@01) (- $Perm.Write (pTaken@24@01 r)) $Perm.No)
      (- $Perm.Write (pTaken@25@01 r)))
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
(assert (not (= (- (- $Perm.Write (pTaken@23@01 x@15@01)) (pTaken@25@01 x@15@01)) $Perm.No)))
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
  (=> (= r x@15@01) (= (- $Perm.Write (pTaken@25@01 r)) $Perm.No))
  
  :qid |quant-u-5219|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (= (- (- $Perm.Write (pTaken@24@01 y@16@01)) (pTaken@26@01 y@16@01)) $Perm.No)))
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
    (= r x@15@01)
    (= (- (- $Perm.Write (pTaken@25@01 r)) (pTaken@26@01 r)) $Perm.No))
  
  :qid |quant-u-5221|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; assert acc(y.f, write)
; Precomputing data for removing quantified permissions
(define-fun pTaken@27@01 ((r $Ref)) $Perm
  (ite
    (= r y@16@01)
    ($Perm.min
      (ite (= r y@16@01) (- $Perm.Write (pTaken@24@01 r)) $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@28@01 ((r $Ref)) $Perm
  (ite
    (= r y@16@01)
    ($Perm.min
      (ite (= r x@15@01) (- $Perm.Write (pTaken@23@01 r)) $Perm.No)
      (- $Perm.Write (pTaken@27@01 r)))
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
(assert (not (= (- (- $Perm.Write (pTaken@24@01 y@16@01)) (pTaken@27@01 y@16@01)) $Perm.No)))
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
  (=> (= r y@16@01) (= (- $Perm.Write (pTaken@27@01 r)) $Perm.No))
  
  :qid |quant-u-5224|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (= (- (- $Perm.Write (pTaken@23@01 x@15@01)) (pTaken@28@01 x@15@01)) $Perm.No)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@28@01 r) $Perm.No)
  
  :qid |quant-u-5226|))))
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
    (= r y@16@01)
    (= (- (- $Perm.Write (pTaken@27@01 r)) (pTaken@28@01 r)) $Perm.No))
  
  :qid |quant-u-5227|))))
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
    (= r y@16@01)
    (= (- (- $Perm.Write (pTaken@27@01 r)) (pTaken@28@01 r)) $Perm.No))
  
  :qid |quant-u-5227|))))
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
(assert (not (= y@16@01 x@15@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (- $Perm.Write (pTaken@24@01 y@16@01))
    (- $Perm.Write (pTaken@23@01 x@15@01))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (- $Perm.Write (pTaken@23@01 x@15@01))
    (- $Perm.Write (pTaken@24@01 y@16@01))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write (pTaken@24@01 y@16@01)))
    (< $Perm.No (- $Perm.Write (pTaken@23@01 x@15@01))))
  (not
    (=
      ($FVF.lookup_f (as sm@19@01  $FVF<f>) y@16@01)
      ($FVF.lookup_f (as sm@18@01  $FVF<f>) x@15@01))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write (pTaken@23@01 x@15@01)))
    (< $Perm.No (- $Perm.Write (pTaken@24@01 y@16@01))))
  (not
    (=
      ($FVF.lookup_f (as sm@18@01  $FVF<f>) x@15@01)
      ($FVF.lookup_f (as sm@19@01  $FVF<f>) y@16@01))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@29@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite (= r y@16@01) (< $Perm.No (- $Perm.Write (pTaken@24@01 r))) false)
    (=
      ($FVF.lookup_f (as sm@29@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@19@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@29@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@19@01  $FVF<f>) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite (= r x@15@01) (< $Perm.No (- $Perm.Write (pTaken@23@01 r))) false)
    (=
      ($FVF.lookup_f (as sm@29@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@18@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@29@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@18@01  $FVF<f>) r))
  :qid |qp.fvfValDef1|)))
(declare-const pm@30@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@30@01  $FPM) r)
    (+
      (ite (= r y@16@01) (- $Perm.Write (pTaken@24@01 r)) $Perm.No)
      (ite (= r x@15@01) (- $Perm.Write (pTaken@23@01 r)) $Perm.No)))
  :pattern (($FVF.perm_f (as pm@30@01  $FPM) r))
  :qid |qp.resPrmSumDef2|)))
(assert (<= ($FVF.perm_f (as pm@30@01  $FPM) y@16@01) $Perm.Write))
(assert (<= ($FVF.perm_f (as pm@30@01  $FPM) x@15@01) $Perm.Write))
; Precomputing data for removing quantified permissions
(define-fun pTaken@31@01 ((r $Ref)) $Perm
  (ite
    (= r y@16@01)
    ($Perm.min
      (ite (= r y@16@01) (- $Perm.Write (pTaken@24@01 r)) $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@32@01 ((r $Ref)) $Perm
  (ite
    (= r y@16@01)
    ($Perm.min
      (ite (= r x@15@01) (- $Perm.Write (pTaken@23@01 r)) $Perm.No)
      (- $Perm.Write (pTaken@31@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (= (- (- $Perm.Write (pTaken@24@01 y@16@01)) (pTaken@31@01 y@16@01)) $Perm.No)))
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
  (=> (= r y@16@01) (= (- $Perm.Write (pTaken@31@01 r)) $Perm.No))
  
  :qid |quant-u-5230|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (= (- (- $Perm.Write (pTaken@23@01 x@15@01)) (pTaken@32@01 x@15@01)) $Perm.No)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@32@01 r) $Perm.No)
  
  :qid |quant-u-5232|))))
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
    (= r y@16@01)
    (= (- (- $Perm.Write (pTaken@31@01 r)) (pTaken@32@01 r)) $Perm.No))
  
  :qid |quant-u-5233|))))
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
    (= r y@16@01)
    (= (- (- $Perm.Write (pTaken@31@01 r)) (pTaken@32@01 r)) $Perm.No))
  
  :qid |quant-u-5233|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- t2 ----------
(declare-const x@33@01 $Ref)
(declare-const y@34@01 $Ref)
(declare-const x@35@01 $Ref)
(declare-const y@36@01 $Ref)
(push) ; 1
(declare-const $t@37@01 $Snap)
(assert (= $t@37@01 ($Snap.combine ($Snap.first $t@37@01) ($Snap.second $t@37@01))))
(declare-const sm@38@01 $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (as sm@38@01  $FVF<f>) x@35@01)
  ($SortWrappers.$SnapToInt ($Snap.first $t@37@01))))
(assert (not (= x@35@01 $Ref.null)))
(declare-const sm@39@01 $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (as sm@39@01  $FVF<f>) y@36@01)
  ($SortWrappers.$SnapToInt ($Snap.second $t@37@01))))
(push) ; 2
(set-option :timeout 10)
(assert (not (= y@36@01 x@35@01)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (not (= y@36@01 $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; exhale (forall z: Ref ::(z in Set(x, y)) ==> acc(z.f, write))
(declare-const z@40@01 $Ref)
(push) ; 3
; [eval] (z in Set(x, y))
; [eval] Set(x, y)
(assert (Set_in z@40@01 (Set_unionone (Set_singleton x@35@01) y@36@01)))
(pop) ; 3
(declare-fun inv@41@01 ($Ref) $Ref)
(declare-fun img@42@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((z1@40@01 $Ref) (z2@40@01 $Ref)) (!
  (=>
    (and
      (Set_in z1@40@01 (Set_unionone (Set_singleton x@35@01) y@36@01))
      (Set_in z2@40@01 (Set_unionone (Set_singleton x@35@01) y@36@01))
      (= z1@40@01 z2@40@01))
    (= z1@40@01 z2@40@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@40@01 $Ref)) (!
  (=>
    (Set_in z@40@01 (Set_unionone (Set_singleton x@35@01) y@36@01))
    (and (= (inv@41@01 z@40@01) z@40@01) (img@42@01 z@40@01)))
  :pattern ((Set_in z@40@01 (Set_unionone (Set_singleton x@35@01) y@36@01)))
  :pattern ((inv@41@01 z@40@01))
  :pattern ((img@42@01 z@40@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@42@01 r)
      (Set_in (inv@41@01 r) (Set_unionone (Set_singleton x@35@01) y@36@01)))
    (= (inv@41@01 r) r))
  :pattern ((inv@41@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@43@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@41@01 r) (Set_unionone (Set_singleton x@35@01) y@36@01))
      (img@42@01 r)
      (= r (inv@41@01 r)))
    ($Perm.min (ite (= r x@35@01) $Perm.Write $Perm.No) $Perm.Write)
    $Perm.No))
(define-fun pTaken@44@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@41@01 r) (Set_unionone (Set_singleton x@35@01) y@36@01))
      (img@42@01 r)
      (= r (inv@41@01 r)))
    ($Perm.min
      (ite (= r y@36@01) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@43@01 r)))
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
(assert (not (= (- $Perm.Write (pTaken@43@01 x@35@01)) $Perm.No)))
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
      (Set_in (inv@41@01 r) (Set_unionone (Set_singleton x@35@01) y@36@01))
      (img@42@01 r)
      (= r (inv@41@01 r)))
    (= (- $Perm.Write (pTaken@43@01 r)) $Perm.No))
  
  :qid |quant-u-5237|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@44@01 y@36@01)) $Perm.No)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@44@01 r) $Perm.No)
  
  :qid |quant-u-5239|))))
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
      (Set_in (inv@41@01 r) (Set_unionone (Set_singleton x@35@01) y@36@01))
      (img@42@01 r)
      (= r (inv@41@01 r)))
    (= (- (- $Perm.Write (pTaken@43@01 r)) (pTaken@44@01 r)) $Perm.No))
  
  :qid |quant-u-5240|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; assert acc(x.f, 1 / 8)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= y@36@01 x@35@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@45@01 ((r $Ref)) $Perm
  (ite
    (= r x@35@01)
    ($Perm.min
      (ite (= r y@36@01) (- $Perm.Write (pTaken@44@01 r)) $Perm.No)
      (/ (to_real 1) (to_real 8)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (= (- (- $Perm.Write (pTaken@44@01 y@36@01)) (pTaken@45@01 y@36@01)) $Perm.No)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@45@01 r) $Perm.No)
  
  :qid |quant-u-5243|))))
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
    (= r x@35@01)
    (= (- (/ (to_real 1) (to_real 8)) (pTaken@45@01 r)) $Perm.No))
  
  :qid |quant-u-5244|))))
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
    (= r x@35@01)
    (= (- (/ (to_real 1) (to_real 8)) (pTaken@45@01 r)) $Perm.No))
  
  :qid |quant-u-5244|))))
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
(declare-const sm@46@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite (= r y@36@01) (< $Perm.No (- $Perm.Write (pTaken@44@01 r))) false)
    (=
      ($FVF.lookup_f (as sm@46@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@39@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@46@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@39@01  $FVF<f>) r))
  :qid |qp.fvfValDef3|)))
(declare-const pm@47@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@47@01  $FPM) r)
    (ite (= r y@36@01) (- $Perm.Write (pTaken@44@01 r)) $Perm.No))
  :pattern (($FVF.perm_f (as pm@47@01  $FPM) r))
  :qid |qp.resPrmSumDef4|)))
(assert (<= ($FVF.perm_f (as pm@47@01  $FPM) y@36@01) $Perm.Write))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= y@36@01 x@35@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@48@01 ((r $Ref)) $Perm
  (ite
    (= r x@35@01)
    ($Perm.min
      (ite (= r y@36@01) (- $Perm.Write (pTaken@44@01 r)) $Perm.No)
      (/ (to_real 1) (to_real 8)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (= (- (- $Perm.Write (pTaken@44@01 y@36@01)) (pTaken@48@01 y@36@01)) $Perm.No)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@48@01 r) $Perm.No)
  
  :qid |quant-u-5247|))))
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
    (= r x@35@01)
    (= (- (/ (to_real 1) (to_real 8)) (pTaken@48@01 r)) $Perm.No))
  
  :qid |quant-u-5248|))))
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
    (= r x@35@01)
    (= (- (/ (to_real 1) (to_real 8)) (pTaken@48@01 r)) $Perm.No))
  
  :qid |quant-u-5248|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- t3 ----------
(declare-const xs@49@01 Set<$Ref>)
(declare-const ys@50@01 Set<$Ref>)
(declare-const x@51@01 $Ref)
(declare-const xs@52@01 Set<$Ref>)
(declare-const ys@53@01 Set<$Ref>)
(declare-const x@54@01 $Ref)
(push) ; 1
(declare-const $t@55@01 $Snap)
(assert (= $t@55@01 ($Snap.combine ($Snap.first $t@55@01) ($Snap.second $t@55@01))))
(declare-const z@56@01 $Ref)
(push) ; 2
; [eval] (z in xs)
(assert (Set_in z@56@01 xs@52@01))
(pop) ; 2
(declare-fun inv@57@01 ($Ref) $Ref)
(declare-fun img@58@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((z1@56@01 $Ref) (z2@56@01 $Ref)) (!
  (=>
    (and
      (Set_in z1@56@01 xs@52@01)
      (Set_in z2@56@01 xs@52@01)
      (= z1@56@01 z2@56@01))
    (= z1@56@01 z2@56@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@56@01 $Ref)) (!
  (=>
    (Set_in z@56@01 xs@52@01)
    (and (= (inv@57@01 z@56@01) z@56@01) (img@58@01 z@56@01)))
  :pattern ((Set_in z@56@01 xs@52@01))
  :pattern ((inv@57@01 z@56@01))
  :pattern ((img@58@01 z@56@01))
  :qid |quant-u-5250|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@58@01 r) (Set_in (inv@57@01 r) xs@52@01)) (= (inv@57@01 r) r))
  :pattern ((inv@57@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((z@56@01 $Ref)) (!
  (=> (Set_in z@56@01 xs@52@01) (not (= z@56@01 $Ref.null)))
  :pattern ((Set_in z@56@01 xs@52@01))
  :pattern ((inv@57@01 z@56@01))
  :pattern ((img@58@01 z@56@01))
  :qid |f-permImpliesNonNull|)))
(assert (=
  ($Snap.second $t@55@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@55@01))
    ($Snap.second ($Snap.second $t@55@01)))))
(declare-const y@59@01 $Ref)
(push) ; 2
; [eval] (y in ys)
(assert (Set_in y@59@01 ys@53@01))
(pop) ; 2
(declare-fun inv@60@01 ($Ref) $Ref)
(declare-fun img@61@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((y1@59@01 $Ref) (y2@59@01 $Ref)) (!
  (=>
    (and
      (Set_in y1@59@01 ys@53@01)
      (Set_in y2@59@01 ys@53@01)
      (= y1@59@01 y2@59@01))
    (= y1@59@01 y2@59@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((y@59@01 $Ref)) (!
  (=>
    (Set_in y@59@01 ys@53@01)
    (and (= (inv@60@01 y@59@01) y@59@01) (img@61@01 y@59@01)))
  :pattern ((Set_in y@59@01 ys@53@01))
  :pattern ((inv@60@01 y@59@01))
  :pattern ((img@61@01 y@59@01))
  :qid |quant-u-5252|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@61@01 r) (Set_in (inv@60@01 r) ys@53@01)) (= (inv@60@01 r) r))
  :pattern ((inv@60@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((y@59@01 $Ref)) (!
  (=> (Set_in y@59@01 ys@53@01) (not (= y@59@01 $Ref.null)))
  :pattern ((Set_in y@59@01 ys@53@01))
  :pattern ((inv@60@01 y@59@01))
  :pattern ((img@61@01 y@59@01))
  :qid |f-permImpliesNonNull|)))
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= y@59@01 z@56@01)
    (=
      (and (img@61@01 r) (Set_in (inv@60@01 r) ys@53@01))
      (and (img@58@01 r) (Set_in (inv@57@01 r) xs@52@01))))
  
  :qid |quant-u-5253|))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second $t@55@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@55@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@55@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@55@01))) $Snap.unit))
; [eval] (x in xs)
(assert (Set_in x@54@01 xs@52@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@55@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@55@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@55@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@55@01))))
  $Snap.unit))
; [eval] (x in ys)
(assert (Set_in x@54@01 ys@53@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@55@01))))
  $Snap.unit))
; [eval] x != null
(assert (not (= x@54@01 $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; assert acc(x.f, write)
; Precomputing data for removing quantified permissions
(define-fun pTaken@62@01 ((r $Ref)) $Perm
  (ite
    (= r x@54@01)
    ($Perm.min
      (ite
        (and (img@58@01 r) (Set_in (inv@57@01 r) xs@52@01))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@63@01 ((r $Ref)) $Perm
  (ite
    (= r x@54@01)
    ($Perm.min
      (ite
        (and (img@61@01 r) (Set_in (inv@60@01 r) ys@53@01))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (- $Perm.Write (pTaken@62@01 r)))
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
        (and (img@58@01 r) (Set_in (inv@57@01 r) xs@52@01))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (pTaken@62@01 r))
    $Perm.No)
  
  :qid |quant-u-5255|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@62@01 r) $Perm.No)
  
  :qid |quant-u-5256|))))
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
  (=> (= r x@54@01) (= (- $Perm.Write (pTaken@62@01 r)) $Perm.No))
  
  :qid |quant-u-5257|))))
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
        (and (img@61@01 r) (Set_in (inv@60@01 r) ys@53@01))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (pTaken@63@01 r))
    $Perm.No)
  
  :qid |quant-u-5258|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@63@01 r) $Perm.No)
  
  :qid |quant-u-5259|))))
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
    (= r x@54@01)
    (= (- (- $Perm.Write (pTaken@62@01 r)) (pTaken@63@01 r)) $Perm.No))
  
  :qid |quant-u-5260|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
