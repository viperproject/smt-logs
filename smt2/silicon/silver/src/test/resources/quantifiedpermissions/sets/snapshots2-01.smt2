(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-08 21:15:06
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
(declare-fun fun ($Snap Set<$Ref> $Ref Int) Int)
(declare-fun fun%limited ($Snap Set<$Ref> $Ref Int) Int)
(declare-fun fun%stateless (Set<$Ref> $Ref Int) Bool)
(declare-fun fun%precondition ($Snap Set<$Ref> $Ref Int) Bool)
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
(declare-fun inv@5@00 ($Snap Set<$Ref> $Ref Int $Ref) $Ref)
(declare-fun img@6@00 ($Snap Set<$Ref> $Ref Int $Ref) Bool)
(declare-fun inv@8@00 ($Snap Set<$Ref> $Ref Int $Ref) $Ref)
(declare-fun img@9@00 ($Snap Set<$Ref> $Ref Int $Ref) Bool)
(declare-fun sm@10@00 ($Snap Set<$Ref> $Ref Int) $FVF<f>)
(assert (forall ((s@$ $Snap) (xs@0@00 Set<$Ref>) (x@1@00 $Ref) (n@2@00 Int)) (!
  (= (fun%limited s@$ xs@0@00 x@1@00 n@2@00) (fun s@$ xs@0@00 x@1@00 n@2@00))
  :pattern ((fun s@$ xs@0@00 x@1@00 n@2@00))
  :qid |quant-u-5526|)))
(assert (forall ((s@$ $Snap) (xs@0@00 Set<$Ref>) (x@1@00 $Ref) (n@2@00 Int)) (!
  (fun%stateless xs@0@00 x@1@00 n@2@00)
  :pattern ((fun%limited s@$ xs@0@00 x@1@00 n@2@00))
  :qid |quant-u-5527|)))
(assert (forall ((s@$ $Snap) (xs@0@00 Set<$Ref>) (x@1@00 $Ref) (n@2@00 Int)) (!
  (and
    (forall ((z@4@00 $Ref)) (!
      (=>
        (Set_in z@4@00 xs@0@00)
        (and
          (= (inv@5@00 s@$ xs@0@00 x@1@00 n@2@00 z@4@00) z@4@00)
          (img@6@00 s@$ xs@0@00 x@1@00 n@2@00 z@4@00)))
      :pattern ((Set_in z@4@00 xs@0@00))
      :pattern ((inv@5@00 s@$ xs@0@00 x@1@00 n@2@00 z@4@00))
      :pattern ((img@6@00 s@$ xs@0@00 x@1@00 n@2@00 z@4@00))
      :qid |quant-u-5529|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@6@00 s@$ xs@0@00 x@1@00 n@2@00 r)
          (Set_in (inv@5@00 s@$ xs@0@00 x@1@00 n@2@00 r) xs@0@00))
        (= (inv@5@00 s@$ xs@0@00 x@1@00 n@2@00 r) r))
      :pattern ((inv@5@00 s@$ xs@0@00 x@1@00 n@2@00 r))
      :qid |f-fctOfInv|))
    (forall ((z@7@00 $Ref)) (!
      (=>
        (Set_in z@7@00 xs@0@00)
        (and
          (= (inv@8@00 s@$ xs@0@00 x@1@00 n@2@00 z@7@00) z@7@00)
          (img@9@00 s@$ xs@0@00 x@1@00 n@2@00 z@7@00)))
      :pattern ((Set_in z@7@00 xs@0@00))
      :pattern ((inv@8@00 s@$ xs@0@00 x@1@00 n@2@00 z@7@00))
      :pattern ((img@9@00 s@$ xs@0@00 x@1@00 n@2@00 z@7@00))
      :qid |f-invOfFct|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@9@00 s@$ xs@0@00 x@1@00 n@2@00 r)
          (Set_in (inv@8@00 s@$ xs@0@00 x@1@00 n@2@00 r) xs@0@00))
        (= (inv@8@00 s@$ xs@0@00 x@1@00 n@2@00 r) r))
      :pattern ((inv@8@00 s@$ xs@0@00 x@1@00 n@2@00 r))
      :qid |f-fctOfInv|))
    (forall ((r $Ref)) (!
      (and
        (=>
          (Set_in r ($FVF.domain_f (sm@10@00 s@$ xs@0@00 x@1@00 n@2@00)))
          (and
            (Set_in (inv@8@00 s@$ xs@0@00 x@1@00 n@2@00 r) xs@0@00)
            (img@9@00 s@$ xs@0@00 x@1@00 n@2@00 r)))
        (=>
          (and
            (Set_in (inv@8@00 s@$ xs@0@00 x@1@00 n@2@00 r) xs@0@00)
            (img@9@00 s@$ xs@0@00 x@1@00 n@2@00 r))
          (Set_in r ($FVF.domain_f (sm@10@00 s@$ xs@0@00 x@1@00 n@2@00)))))
      :pattern ((Set_in r ($FVF.domain_f (sm@10@00 s@$ xs@0@00 x@1@00 n@2@00))))
      :qid |qp.fvfDomDef1|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (Set_in (inv@8@00 s@$ xs@0@00 x@1@00 n@2@00 r) xs@0@00)
            (img@9@00 s@$ xs@0@00 x@1@00 n@2@00 r))
          (and
            (img@6@00 s@$ xs@0@00 x@1@00 n@2@00 r)
            (Set_in (inv@5@00 s@$ xs@0@00 x@1@00 n@2@00 r) xs@0@00)))
        (=
          ($FVF.lookup_f (sm@10@00 s@$ xs@0@00 x@1@00 n@2@00) r)
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first s@$)) r)))
      :pattern (($FVF.lookup_f (sm@10@00 s@$ xs@0@00 x@1@00 n@2@00) r))
      :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first s@$)) r))
      :qid |qp.fvfValDef0|))
    (=>
      (fun%precondition s@$ xs@0@00 x@1@00 n@2@00)
      (=
        (fun s@$ xs@0@00 x@1@00 n@2@00)
        (ite
          (= n@2@00 0)
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first s@$)) x@1@00)
          (fun%limited ($Snap.combine
            ($SortWrappers.$FVF<f>To$Snap (sm@10@00 s@$ xs@0@00 x@1@00 n@2@00))
            ($Snap.combine $Snap.unit $Snap.unit)) xs@0@00 x@1@00 (- n@2@00 1))))))
  :pattern ((fun s@$ xs@0@00 x@1@00 n@2@00))
  :qid |quant-u-5532|)))
(assert (forall ((s@$ $Snap) (xs@0@00 Set<$Ref>) (x@1@00 $Ref) (n@2@00 Int)) (!
  (=>
    (fun%precondition s@$ xs@0@00 x@1@00 n@2@00)
    (ite
      (= n@2@00 0)
      true
      (fun%precondition ($Snap.combine
        ($SortWrappers.$FVF<f>To$Snap (sm@10@00 s@$ xs@0@00 x@1@00 n@2@00))
        ($Snap.combine $Snap.unit $Snap.unit)) xs@0@00 x@1@00 (- n@2@00 1))))
  :pattern ((fun s@$ xs@0@00 x@1@00 n@2@00))
  :qid |quant-u-5533|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- test01 ----------
(declare-const xs@0@01 Set<$Ref>)
(declare-const x@1@01 $Ref)
(declare-const n@2@01 Int)
(declare-const xs@3@01 Set<$Ref>)
(declare-const x@4@01 $Ref)
(declare-const n@5@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@6@01 $Snap)
(assert (= $t@6@01 ($Snap.combine ($Snap.first $t@6@01) ($Snap.second $t@6@01))))
(declare-const z@7@01 $Ref)
(push) ; 2
; [eval] (z in xs)
(assert (Set_in z@7@01 xs@3@01))
(pop) ; 2
(declare-fun inv@8@01 ($Ref) $Ref)
(declare-fun img@9@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((z1@7@01 $Ref) (z2@7@01 $Ref)) (!
  (=>
    (and (Set_in z1@7@01 xs@3@01) (Set_in z2@7@01 xs@3@01) (= z1@7@01 z2@7@01))
    (= z1@7@01 z2@7@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@7@01 $Ref)) (!
  (=>
    (Set_in z@7@01 xs@3@01)
    (and (= (inv@8@01 z@7@01) z@7@01) (img@9@01 z@7@01)))
  :pattern ((Set_in z@7@01 xs@3@01))
  :pattern ((inv@8@01 z@7@01))
  :pattern ((img@9@01 z@7@01))
  :qid |quant-u-5535|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@9@01 r) (Set_in (inv@8@01 r) xs@3@01)) (= (inv@8@01 r) r))
  :pattern ((inv@8@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((z@7@01 $Ref)) (!
  (=> (Set_in z@7@01 xs@3@01) (not (= z@7@01 $Ref.null)))
  :pattern ((Set_in z@7@01 xs@3@01))
  :pattern ((inv@8@01 z@7@01))
  :pattern ((img@9@01 z@7@01))
  :qid |f-permImpliesNonNull|)))
(assert (=
  ($Snap.second $t@6@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@6@01))
    ($Snap.second ($Snap.second $t@6@01)))))
(assert (= ($Snap.first ($Snap.second $t@6@01)) $Snap.unit))
; [eval] (x in xs)
(assert (Set_in x@4@01 xs@3@01))
(assert (= ($Snap.second ($Snap.second $t@6@01)) $Snap.unit))
; [eval] n >= 0
(assert (>= n@5@01 0))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; var v: Int
(declare-const v@10@01 Int)
; [exec]
; v := fun(xs, x, n)
; [eval] fun(xs, x, n)
(push) ; 3
(declare-const z@11@01 $Ref)
(push) ; 4
; [eval] (z in xs)
(assert (Set_in z@11@01 xs@3@01))
(pop) ; 4
(declare-fun inv@12@01 ($Ref) $Ref)
(declare-fun img@13@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((z1@11@01 $Ref) (z2@11@01 $Ref)) (!
  (=>
    (and
      (Set_in z1@11@01 xs@3@01)
      (Set_in z2@11@01 xs@3@01)
      (= z1@11@01 z2@11@01))
    (= z1@11@01 z2@11@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@11@01 $Ref)) (!
  (=>
    (Set_in z@11@01 xs@3@01)
    (and (= (inv@12@01 z@11@01) z@11@01) (img@13@01 z@11@01)))
  :pattern ((Set_in z@11@01 xs@3@01))
  :pattern ((inv@12@01 z@11@01))
  :pattern ((img@13@01 z@11@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@13@01 r) (Set_in (inv@12@01 r) xs@3@01)) (= (inv@12@01 r) r))
  :pattern ((inv@12@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@12@01 r) xs@3@01) (img@13@01 r) (= r (inv@12@01 r)))
    (>
      (ite (and (img@9@01 r) (Set_in (inv@8@01 r) xs@3@01)) $Perm.Write $Perm.No)
      $Perm.No))
  
  :qid |quant-u-5537|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@14@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@14@01  $FVF<f>)))
      (and (Set_in (inv@12@01 r) xs@3@01) (img@13@01 r)))
    (=>
      (and (Set_in (inv@12@01 r) xs@3@01) (img@13@01 r))
      (Set_in r ($FVF.domain_f (as sm@14@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@14@01  $FVF<f>))))
  :qid |qp.fvfDomDef1|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@12@01 r) xs@3@01) (img@13@01 r))
      (and (img@9@01 r) (Set_in (inv@8@01 r) xs@3@01)))
    (=
      ($FVF.lookup_f (as sm@14@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@6@01)) r)))
  :pattern (($FVF.lookup_f (as sm@14@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@6@01)) r))
  :qid |qp.fvfValDef0|)))
; [eval] (x in xs)
; [eval] n >= 0
(assert (fun%precondition ($Snap.combine
  ($SortWrappers.$FVF<f>To$Snap (as sm@14@01  $FVF<f>))
  ($Snap.combine $Snap.unit $Snap.unit)) xs@3@01 x@4@01 n@5@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((z@11@01 $Ref)) (!
  (=>
    (Set_in z@11@01 xs@3@01)
    (and (= (inv@12@01 z@11@01) z@11@01) (img@13@01 z@11@01)))
  :pattern ((Set_in z@11@01 xs@3@01))
  :pattern ((inv@12@01 z@11@01))
  :pattern ((img@13@01 z@11@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@13@01 r) (Set_in (inv@12@01 r) xs@3@01)) (= (inv@12@01 r) r))
  :pattern ((inv@12@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@14@01  $FVF<f>)))
      (and (Set_in (inv@12@01 r) xs@3@01) (img@13@01 r)))
    (=>
      (and (Set_in (inv@12@01 r) xs@3@01) (img@13@01 r))
      (Set_in r ($FVF.domain_f (as sm@14@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@14@01  $FVF<f>))))
  :qid |qp.fvfDomDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@12@01 r) xs@3@01) (img@13@01 r))
      (and (img@9@01 r) (Set_in (inv@8@01 r) xs@3@01)))
    (=
      ($FVF.lookup_f (as sm@14@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@6@01)) r)))
  :pattern (($FVF.lookup_f (as sm@14@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@6@01)) r))
  :qid |qp.fvfValDef0|)))
(assert (fun%precondition ($Snap.combine
  ($SortWrappers.$FVF<f>To$Snap (as sm@14@01  $FVF<f>))
  ($Snap.combine $Snap.unit $Snap.unit)) xs@3@01 x@4@01 n@5@01))
(declare-const v@15@01 Int)
(assert (=
  v@15@01
  (fun ($Snap.combine
    ($SortWrappers.$FVF<f>To$Snap (as sm@14@01  $FVF<f>))
    ($Snap.combine $Snap.unit $Snap.unit)) xs@3@01 x@4@01 n@5@01)))
; [exec]
; assert v == fun(xs, x, n)
; [eval] v == fun(xs, x, n)
; [eval] fun(xs, x, n)
(push) ; 3
(declare-const z@16@01 $Ref)
(push) ; 4
; [eval] (z in xs)
(assert (Set_in z@16@01 xs@3@01))
(pop) ; 4
(declare-fun inv@17@01 ($Ref) $Ref)
(declare-fun img@18@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((z1@16@01 $Ref) (z2@16@01 $Ref)) (!
  (=>
    (and
      (Set_in z1@16@01 xs@3@01)
      (Set_in z2@16@01 xs@3@01)
      (= z1@16@01 z2@16@01))
    (= z1@16@01 z2@16@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@16@01 $Ref)) (!
  (=>
    (Set_in z@16@01 xs@3@01)
    (and (= (inv@17@01 z@16@01) z@16@01) (img@18@01 z@16@01)))
  :pattern ((Set_in z@16@01 xs@3@01))
  :pattern ((inv@17@01 z@16@01))
  :pattern ((img@18@01 z@16@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@18@01 r) (Set_in (inv@17@01 r) xs@3@01)) (= (inv@17@01 r) r))
  :pattern ((inv@17@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@17@01 r) xs@3@01) (img@18@01 r) (= r (inv@17@01 r)))
    (>
      (ite (and (img@9@01 r) (Set_in (inv@8@01 r) xs@3@01)) $Perm.Write $Perm.No)
      $Perm.No))
  
  :qid |quant-u-5539|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@19@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@19@01  $FVF<f>)))
      (and (Set_in (inv@17@01 r) xs@3@01) (img@18@01 r)))
    (=>
      (and (Set_in (inv@17@01 r) xs@3@01) (img@18@01 r))
      (Set_in r ($FVF.domain_f (as sm@19@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@19@01  $FVF<f>))))
  :qid |qp.fvfDomDef3|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@17@01 r) xs@3@01) (img@18@01 r))
      (and (img@9@01 r) (Set_in (inv@8@01 r) xs@3@01)))
    (=
      ($FVF.lookup_f (as sm@19@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@6@01)) r)))
  :pattern (($FVF.lookup_f (as sm@19@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@6@01)) r))
  :qid |qp.fvfValDef2|)))
; [eval] (x in xs)
; [eval] n >= 0
(assert (fun%precondition ($Snap.combine
  ($SortWrappers.$FVF<f>To$Snap (as sm@19@01  $FVF<f>))
  ($Snap.combine $Snap.unit $Snap.unit)) xs@3@01 x@4@01 n@5@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((z@16@01 $Ref)) (!
  (=>
    (Set_in z@16@01 xs@3@01)
    (and (= (inv@17@01 z@16@01) z@16@01) (img@18@01 z@16@01)))
  :pattern ((Set_in z@16@01 xs@3@01))
  :pattern ((inv@17@01 z@16@01))
  :pattern ((img@18@01 z@16@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@18@01 r) (Set_in (inv@17@01 r) xs@3@01)) (= (inv@17@01 r) r))
  :pattern ((inv@17@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@19@01  $FVF<f>)))
      (and (Set_in (inv@17@01 r) xs@3@01) (img@18@01 r)))
    (=>
      (and (Set_in (inv@17@01 r) xs@3@01) (img@18@01 r))
      (Set_in r ($FVF.domain_f (as sm@19@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@19@01  $FVF<f>))))
  :qid |qp.fvfDomDef3|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@17@01 r) xs@3@01) (img@18@01 r))
      (and (img@9@01 r) (Set_in (inv@8@01 r) xs@3@01)))
    (=
      ($FVF.lookup_f (as sm@19@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@6@01)) r)))
  :pattern (($FVF.lookup_f (as sm@19@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@6@01)) r))
  :qid |qp.fvfValDef2|)))
(assert (fun%precondition ($Snap.combine
  ($SortWrappers.$FVF<f>To$Snap (as sm@19@01  $FVF<f>))
  ($Snap.combine $Snap.unit $Snap.unit)) xs@3@01 x@4@01 n@5@01))
(push) ; 3
(assert (not (=
  v@15@01
  (fun ($Snap.combine
    ($SortWrappers.$FVF<f>To$Snap (as sm@19@01  $FVF<f>))
    ($Snap.combine $Snap.unit $Snap.unit)) xs@3@01 x@4@01 n@5@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  v@15@01
  (fun ($Snap.combine
    ($SortWrappers.$FVF<f>To$Snap (as sm@19@01  $FVF<f>))
    ($Snap.combine $Snap.unit $Snap.unit)) xs@3@01 x@4@01 n@5@01)))
(pop) ; 2
(pop) ; 1
; ---------- test02 ----------
(declare-const xs@20@01 Set<$Ref>)
(declare-const x@21@01 $Ref)
(declare-const y@22@01 $Ref)
(declare-const n@23@01 Int)
(declare-const xs@24@01 Set<$Ref>)
(declare-const x@25@01 $Ref)
(declare-const y@26@01 $Ref)
(declare-const n@27@01 Int)
(push) ; 1
(declare-const $t@28@01 $Snap)
(assert (= $t@28@01 ($Snap.combine ($Snap.first $t@28@01) ($Snap.second $t@28@01))))
(declare-const z@29@01 $Ref)
(push) ; 2
; [eval] (z in xs)
(assert (Set_in z@29@01 xs@24@01))
(pop) ; 2
(declare-fun inv@30@01 ($Ref) $Ref)
(declare-fun img@31@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((z1@29@01 $Ref) (z2@29@01 $Ref)) (!
  (=>
    (and
      (Set_in z1@29@01 xs@24@01)
      (Set_in z2@29@01 xs@24@01)
      (= z1@29@01 z2@29@01))
    (= z1@29@01 z2@29@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@29@01 $Ref)) (!
  (=>
    (Set_in z@29@01 xs@24@01)
    (and (= (inv@30@01 z@29@01) z@29@01) (img@31@01 z@29@01)))
  :pattern ((Set_in z@29@01 xs@24@01))
  :pattern ((inv@30@01 z@29@01))
  :pattern ((img@31@01 z@29@01))
  :qid |quant-u-5541|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@31@01 r) (Set_in (inv@30@01 r) xs@24@01)) (= (inv@30@01 r) r))
  :pattern ((inv@30@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((z@29@01 $Ref)) (!
  (=> (Set_in z@29@01 xs@24@01) (not (= z@29@01 $Ref.null)))
  :pattern ((Set_in z@29@01 xs@24@01))
  :pattern ((inv@30@01 z@29@01))
  :pattern ((img@31@01 z@29@01))
  :qid |f-permImpliesNonNull|)))
(assert (=
  ($Snap.second $t@28@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@28@01))
    ($Snap.second ($Snap.second $t@28@01)))))
(assert (= ($Snap.first ($Snap.second $t@28@01)) $Snap.unit))
; [eval] (x in xs)
(assert (Set_in x@25@01 xs@24@01))
(assert (=
  ($Snap.second ($Snap.second $t@28@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@28@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@28@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@28@01))) $Snap.unit))
; [eval] (y in xs)
(assert (Set_in y@26@01 xs@24@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@28@01))) $Snap.unit))
; [eval] n >= 0
(assert (>= n@27@01 0))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; var v: Int
(declare-const v@32@01 Int)
; [exec]
; v := fun(xs, x, n)
; [eval] fun(xs, x, n)
(push) ; 3
(declare-const z@33@01 $Ref)
(push) ; 4
; [eval] (z in xs)
(assert (Set_in z@33@01 xs@24@01))
(pop) ; 4
(declare-fun inv@34@01 ($Ref) $Ref)
(declare-fun img@35@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((z1@33@01 $Ref) (z2@33@01 $Ref)) (!
  (=>
    (and
      (Set_in z1@33@01 xs@24@01)
      (Set_in z2@33@01 xs@24@01)
      (= z1@33@01 z2@33@01))
    (= z1@33@01 z2@33@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@33@01 $Ref)) (!
  (=>
    (Set_in z@33@01 xs@24@01)
    (and (= (inv@34@01 z@33@01) z@33@01) (img@35@01 z@33@01)))
  :pattern ((Set_in z@33@01 xs@24@01))
  :pattern ((inv@34@01 z@33@01))
  :pattern ((img@35@01 z@33@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@35@01 r) (Set_in (inv@34@01 r) xs@24@01)) (= (inv@34@01 r) r))
  :pattern ((inv@34@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@34@01 r) xs@24@01) (img@35@01 r) (= r (inv@34@01 r)))
    (>
      (ite
        (and (img@31@01 r) (Set_in (inv@30@01 r) xs@24@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-5543|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@36@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@36@01  $FVF<f>)))
      (and (Set_in (inv@34@01 r) xs@24@01) (img@35@01 r)))
    (=>
      (and (Set_in (inv@34@01 r) xs@24@01) (img@35@01 r))
      (Set_in r ($FVF.domain_f (as sm@36@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@36@01  $FVF<f>))))
  :qid |qp.fvfDomDef5|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@34@01 r) xs@24@01) (img@35@01 r))
      (and (img@31@01 r) (Set_in (inv@30@01 r) xs@24@01)))
    (=
      ($FVF.lookup_f (as sm@36@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@28@01)) r)))
  :pattern (($FVF.lookup_f (as sm@36@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@28@01)) r))
  :qid |qp.fvfValDef4|)))
; [eval] (x in xs)
; [eval] n >= 0
(assert (fun%precondition ($Snap.combine
  ($SortWrappers.$FVF<f>To$Snap (as sm@36@01  $FVF<f>))
  ($Snap.combine $Snap.unit $Snap.unit)) xs@24@01 x@25@01 n@27@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((z@33@01 $Ref)) (!
  (=>
    (Set_in z@33@01 xs@24@01)
    (and (= (inv@34@01 z@33@01) z@33@01) (img@35@01 z@33@01)))
  :pattern ((Set_in z@33@01 xs@24@01))
  :pattern ((inv@34@01 z@33@01))
  :pattern ((img@35@01 z@33@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@35@01 r) (Set_in (inv@34@01 r) xs@24@01)) (= (inv@34@01 r) r))
  :pattern ((inv@34@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@36@01  $FVF<f>)))
      (and (Set_in (inv@34@01 r) xs@24@01) (img@35@01 r)))
    (=>
      (and (Set_in (inv@34@01 r) xs@24@01) (img@35@01 r))
      (Set_in r ($FVF.domain_f (as sm@36@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@36@01  $FVF<f>))))
  :qid |qp.fvfDomDef5|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@34@01 r) xs@24@01) (img@35@01 r))
      (and (img@31@01 r) (Set_in (inv@30@01 r) xs@24@01)))
    (=
      ($FVF.lookup_f (as sm@36@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@28@01)) r)))
  :pattern (($FVF.lookup_f (as sm@36@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@28@01)) r))
  :qid |qp.fvfValDef4|)))
(assert (fun%precondition ($Snap.combine
  ($SortWrappers.$FVF<f>To$Snap (as sm@36@01  $FVF<f>))
  ($Snap.combine $Snap.unit $Snap.unit)) xs@24@01 x@25@01 n@27@01))
(declare-const v@37@01 Int)
(assert (=
  v@37@01
  (fun ($Snap.combine
    ($SortWrappers.$FVF<f>To$Snap (as sm@36@01  $FVF<f>))
    ($Snap.combine $Snap.unit $Snap.unit)) xs@24@01 x@25@01 n@27@01)))
; [exec]
; y.f := 0
; Precomputing data for removing quantified permissions
(define-fun pTaken@38@01 ((r $Ref)) $Perm
  (ite
    (= r y@26@01)
    ($Perm.min
      (ite
        (and (img@31@01 r) (Set_in (inv@30@01 r) xs@24@01))
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
        (and (img@31@01 r) (Set_in (inv@30@01 r) xs@24@01))
        $Perm.Write
        $Perm.No)
      (pTaken@38@01 r))
    $Perm.No)
  
  :qid |quant-u-5545|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@38@01 r) $Perm.No)
  
  :qid |quant-u-5546|))))
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
  (=> (= r y@26@01) (= (- $Perm.Write (pTaken@38@01 r)) $Perm.No))
  
  :qid |quant-u-5547|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@39@01 $FVF<f>)
; Definitional axioms for singleton-FVF's value
(assert (= ($FVF.lookup_f (as sm@39@01  $FVF<f>) y@26@01) 0))
; [exec]
; assert v == fun(xs, x, n)
; [eval] v == fun(xs, x, n)
; [eval] fun(xs, x, n)
(set-option :timeout 0)
(push) ; 3
(declare-const z@40@01 $Ref)
(push) ; 4
; [eval] (z in xs)
(assert (Set_in z@40@01 xs@24@01))
(pop) ; 4
(declare-fun inv@41@01 ($Ref) $Ref)
(declare-fun img@42@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((z1@40@01 $Ref) (z2@40@01 $Ref)) (!
  (=>
    (and
      (Set_in z1@40@01 xs@24@01)
      (Set_in z2@40@01 xs@24@01)
      (= z1@40@01 z2@40@01))
    (= z1@40@01 z2@40@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@40@01 $Ref)) (!
  (=>
    (Set_in z@40@01 xs@24@01)
    (and (= (inv@41@01 z@40@01) z@40@01) (img@42@01 z@40@01)))
  :pattern ((Set_in z@40@01 xs@24@01))
  :pattern ((inv@41@01 z@40@01))
  :pattern ((img@42@01 z@40@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@42@01 r) (Set_in (inv@41@01 r) xs@24@01)) (= (inv@41@01 r) r))
  :pattern ((inv@41@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@41@01 r) xs@24@01) (img@42@01 r) (= r (inv@41@01 r)))
    (>
      (+
        (ite
          (and (img@31@01 r) (Set_in (inv@30@01 r) xs@24@01))
          (- $Perm.Write (pTaken@38@01 r))
          $Perm.No)
        (ite (= r y@26@01) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-5549|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@43@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@43@01  $FVF<f>)))
      (and (Set_in (inv@41@01 r) xs@24@01) (img@42@01 r)))
    (=>
      (and (Set_in (inv@41@01 r) xs@24@01) (img@42@01 r))
      (Set_in r ($FVF.domain_f (as sm@43@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@43@01  $FVF<f>))))
  :qid |qp.fvfDomDef8|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@41@01 r) xs@24@01) (img@42@01 r)) (= r y@26@01))
    (=
      ($FVF.lookup_f (as sm@43@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@39@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@43@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@39@01  $FVF<f>) r))
  :qid |qp.fvfValDef6|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@41@01 r) xs@24@01) (img@42@01 r))
      (ite
        (and (img@31@01 r) (Set_in (inv@30@01 r) xs@24@01))
        (< $Perm.No (- $Perm.Write (pTaken@38@01 r)))
        false))
    (=
      ($FVF.lookup_f (as sm@43@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@28@01)) r)))
  :pattern (($FVF.lookup_f (as sm@43@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@28@01)) r))
  :qid |qp.fvfValDef7|)))
; [eval] (x in xs)
; [eval] n >= 0
(assert (fun%precondition ($Snap.combine
  ($SortWrappers.$FVF<f>To$Snap (as sm@43@01  $FVF<f>))
  ($Snap.combine $Snap.unit $Snap.unit)) xs@24@01 x@25@01 n@27@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((z@40@01 $Ref)) (!
  (=>
    (Set_in z@40@01 xs@24@01)
    (and (= (inv@41@01 z@40@01) z@40@01) (img@42@01 z@40@01)))
  :pattern ((Set_in z@40@01 xs@24@01))
  :pattern ((inv@41@01 z@40@01))
  :pattern ((img@42@01 z@40@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@42@01 r) (Set_in (inv@41@01 r) xs@24@01)) (= (inv@41@01 r) r))
  :pattern ((inv@41@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@43@01  $FVF<f>)))
      (and (Set_in (inv@41@01 r) xs@24@01) (img@42@01 r)))
    (=>
      (and (Set_in (inv@41@01 r) xs@24@01) (img@42@01 r))
      (Set_in r ($FVF.domain_f (as sm@43@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@43@01  $FVF<f>))))
  :qid |qp.fvfDomDef8|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@41@01 r) xs@24@01) (img@42@01 r)) (= r y@26@01))
    (=
      ($FVF.lookup_f (as sm@43@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@39@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@43@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@39@01  $FVF<f>) r))
  :qid |qp.fvfValDef6|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@41@01 r) xs@24@01) (img@42@01 r))
      (ite
        (and (img@31@01 r) (Set_in (inv@30@01 r) xs@24@01))
        (< $Perm.No (- $Perm.Write (pTaken@38@01 r)))
        false))
    (=
      ($FVF.lookup_f (as sm@43@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@28@01)) r)))
  :pattern (($FVF.lookup_f (as sm@43@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@28@01)) r))
  :qid |qp.fvfValDef7|)))
(assert (fun%precondition ($Snap.combine
  ($SortWrappers.$FVF<f>To$Snap (as sm@43@01  $FVF<f>))
  ($Snap.combine $Snap.unit $Snap.unit)) xs@24@01 x@25@01 n@27@01))
(push) ; 3
(assert (not (=
  v@37@01
  (fun ($Snap.combine
    ($SortWrappers.$FVF<f>To$Snap (as sm@43@01  $FVF<f>))
    ($Snap.combine $Snap.unit $Snap.unit)) xs@24@01 x@25@01 n@27@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const sm@44@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@26@01)
    (=
      ($FVF.lookup_f (as sm@44@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@39@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@44@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@39@01  $FVF<f>) r))
  :qid |qp.fvfValDef9|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@31@01 r) (Set_in (inv@30@01 r) xs@24@01))
      (< $Perm.No (- $Perm.Write (pTaken@38@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@44@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@28@01)) r)))
  :pattern (($FVF.lookup_f (as sm@44@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@28@01)) r))
  :qid |qp.fvfValDef10|)))
(declare-const pm@45@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@45@01  $FPM) r)
    (+
      (ite (= r y@26@01) $Perm.Write $Perm.No)
      (ite
        (and (img@31@01 r) (Set_in (inv@30@01 r) xs@24@01))
        (- $Perm.Write (pTaken@38@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@45@01  $FPM) r))
  :qid |qp.resPrmSumDef11|)))
(assert (<= ($FVF.perm_f (as pm@45@01  $FPM) y@26@01) $Perm.Write))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@45@01  $FPM) r) $Perm.Write)
  :pattern ((inv@30@01 r))
  :qid |qp-fld-prm-bnd|)))
; [eval] v == fun(xs, x, n)
; [eval] fun(xs, x, n)
(set-option :timeout 0)
(push) ; 3
(declare-const z@46@01 $Ref)
(push) ; 4
; [eval] (z in xs)
(assert (Set_in z@46@01 xs@24@01))
(pop) ; 4
(declare-fun inv@47@01 ($Ref) $Ref)
(declare-fun img@48@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((z1@46@01 $Ref) (z2@46@01 $Ref)) (!
  (=>
    (and
      (Set_in z1@46@01 xs@24@01)
      (Set_in z2@46@01 xs@24@01)
      (= z1@46@01 z2@46@01))
    (= z1@46@01 z2@46@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@46@01 $Ref)) (!
  (=>
    (Set_in z@46@01 xs@24@01)
    (and (= (inv@47@01 z@46@01) z@46@01) (img@48@01 z@46@01)))
  :pattern ((Set_in z@46@01 xs@24@01))
  :pattern ((inv@47@01 z@46@01))
  :pattern ((img@48@01 z@46@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@48@01 r) (Set_in (inv@47@01 r) xs@24@01)) (= (inv@47@01 r) r))
  :pattern ((inv@47@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@47@01 r) xs@24@01) (img@48@01 r) (= r (inv@47@01 r)))
    (>
      (+
        (ite
          (and (img@31@01 r) (Set_in (inv@30@01 r) xs@24@01))
          (- $Perm.Write (pTaken@38@01 r))
          $Perm.No)
        (ite (= r y@26@01) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-5551|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@49@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@49@01  $FVF<f>)))
      (and (Set_in (inv@47@01 r) xs@24@01) (img@48@01 r)))
    (=>
      (and (Set_in (inv@47@01 r) xs@24@01) (img@48@01 r))
      (Set_in r ($FVF.domain_f (as sm@49@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@49@01  $FVF<f>))))
  :qid |qp.fvfDomDef14|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@47@01 r) xs@24@01) (img@48@01 r))
      (ite
        (and (img@31@01 r) (Set_in (inv@30@01 r) xs@24@01))
        (< $Perm.No (- $Perm.Write (pTaken@38@01 r)))
        false))
    (=
      ($FVF.lookup_f (as sm@49@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@28@01)) r)))
  :pattern (($FVF.lookup_f (as sm@49@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@28@01)) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@47@01 r) xs@24@01) (img@48@01 r)) (= r y@26@01))
    (=
      ($FVF.lookup_f (as sm@49@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@39@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@49@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@39@01  $FVF<f>) r))
  :qid |qp.fvfValDef13|)))
; [eval] (x in xs)
; [eval] n >= 0
(assert (fun%precondition ($Snap.combine
  ($SortWrappers.$FVF<f>To$Snap (as sm@49@01  $FVF<f>))
  ($Snap.combine $Snap.unit $Snap.unit)) xs@24@01 x@25@01 n@27@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((z@46@01 $Ref)) (!
  (=>
    (Set_in z@46@01 xs@24@01)
    (and (= (inv@47@01 z@46@01) z@46@01) (img@48@01 z@46@01)))
  :pattern ((Set_in z@46@01 xs@24@01))
  :pattern ((inv@47@01 z@46@01))
  :pattern ((img@48@01 z@46@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@48@01 r) (Set_in (inv@47@01 r) xs@24@01)) (= (inv@47@01 r) r))
  :pattern ((inv@47@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@49@01  $FVF<f>)))
      (and (Set_in (inv@47@01 r) xs@24@01) (img@48@01 r)))
    (=>
      (and (Set_in (inv@47@01 r) xs@24@01) (img@48@01 r))
      (Set_in r ($FVF.domain_f (as sm@49@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@49@01  $FVF<f>))))
  :qid |qp.fvfDomDef14|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@47@01 r) xs@24@01) (img@48@01 r))
      (ite
        (and (img@31@01 r) (Set_in (inv@30@01 r) xs@24@01))
        (< $Perm.No (- $Perm.Write (pTaken@38@01 r)))
        false))
    (=
      ($FVF.lookup_f (as sm@49@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@28@01)) r)))
  :pattern (($FVF.lookup_f (as sm@49@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@28@01)) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@47@01 r) xs@24@01) (img@48@01 r)) (= r y@26@01))
    (=
      ($FVF.lookup_f (as sm@49@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@39@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@49@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@39@01  $FVF<f>) r))
  :qid |qp.fvfValDef13|)))
(assert (fun%precondition ($Snap.combine
  ($SortWrappers.$FVF<f>To$Snap (as sm@49@01  $FVF<f>))
  ($Snap.combine $Snap.unit $Snap.unit)) xs@24@01 x@25@01 n@27@01))
(push) ; 3
(assert (not (=
  v@37@01
  (fun ($Snap.combine
    ($SortWrappers.$FVF<f>To$Snap (as sm@49@01  $FVF<f>))
    ($Snap.combine $Snap.unit $Snap.unit)) xs@24@01 x@25@01 n@27@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const sm@50@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@26@01)
    (=
      ($FVF.lookup_f (as sm@50@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@39@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@50@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@39@01  $FVF<f>) r))
  :qid |qp.fvfValDef15|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@31@01 r) (Set_in (inv@30@01 r) xs@24@01))
      (< $Perm.No (- $Perm.Write (pTaken@38@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@50@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@28@01)) r)))
  :pattern (($FVF.lookup_f (as sm@50@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@28@01)) r))
  :qid |qp.fvfValDef16|)))
(declare-const pm@51@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@51@01  $FPM) r)
    (+
      (ite (= r y@26@01) $Perm.Write $Perm.No)
      (ite
        (and (img@31@01 r) (Set_in (inv@30@01 r) xs@24@01))
        (- $Perm.Write (pTaken@38@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@51@01  $FPM) r))
  :qid |qp.resPrmSumDef17|)))
(assert (<= ($FVF.perm_f (as pm@51@01  $FPM) y@26@01) $Perm.Write))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@51@01  $FPM) r) $Perm.Write)
  :pattern ((inv@30@01 r))
  :qid |qp-fld-prm-bnd|)))
; [eval] v == fun(xs, x, n)
; [eval] fun(xs, x, n)
(set-option :timeout 0)
(push) ; 3
(declare-const z@52@01 $Ref)
(push) ; 4
; [eval] (z in xs)
(assert (Set_in z@52@01 xs@24@01))
(pop) ; 4
(declare-fun inv@53@01 ($Ref) $Ref)
(declare-fun img@54@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((z1@52@01 $Ref) (z2@52@01 $Ref)) (!
  (=>
    (and
      (Set_in z1@52@01 xs@24@01)
      (Set_in z2@52@01 xs@24@01)
      (= z1@52@01 z2@52@01))
    (= z1@52@01 z2@52@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@52@01 $Ref)) (!
  (=>
    (Set_in z@52@01 xs@24@01)
    (and (= (inv@53@01 z@52@01) z@52@01) (img@54@01 z@52@01)))
  :pattern ((Set_in z@52@01 xs@24@01))
  :pattern ((inv@53@01 z@52@01))
  :pattern ((img@54@01 z@52@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@54@01 r) (Set_in (inv@53@01 r) xs@24@01)) (= (inv@53@01 r) r))
  :pattern ((inv@53@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@53@01 r) xs@24@01) (img@54@01 r) (= r (inv@53@01 r)))
    (>
      (+
        (ite
          (and (img@31@01 r) (Set_in (inv@30@01 r) xs@24@01))
          (- $Perm.Write (pTaken@38@01 r))
          $Perm.No)
        (ite (= r y@26@01) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-5553|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@55@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@55@01  $FVF<f>)))
      (and (Set_in (inv@53@01 r) xs@24@01) (img@54@01 r)))
    (=>
      (and (Set_in (inv@53@01 r) xs@24@01) (img@54@01 r))
      (Set_in r ($FVF.domain_f (as sm@55@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@55@01  $FVF<f>))))
  :qid |qp.fvfDomDef20|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@53@01 r) xs@24@01) (img@54@01 r)) (= r y@26@01))
    (=
      ($FVF.lookup_f (as sm@55@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@39@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@55@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@39@01  $FVF<f>) r))
  :qid |qp.fvfValDef18|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@53@01 r) xs@24@01) (img@54@01 r))
      (ite
        (and (img@31@01 r) (Set_in (inv@30@01 r) xs@24@01))
        (< $Perm.No (- $Perm.Write (pTaken@38@01 r)))
        false))
    (=
      ($FVF.lookup_f (as sm@55@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@28@01)) r)))
  :pattern (($FVF.lookup_f (as sm@55@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@28@01)) r))
  :qid |qp.fvfValDef19|)))
; [eval] (x in xs)
; [eval] n >= 0
(assert (fun%precondition ($Snap.combine
  ($SortWrappers.$FVF<f>To$Snap (as sm@55@01  $FVF<f>))
  ($Snap.combine $Snap.unit $Snap.unit)) xs@24@01 x@25@01 n@27@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((z@52@01 $Ref)) (!
  (=>
    (Set_in z@52@01 xs@24@01)
    (and (= (inv@53@01 z@52@01) z@52@01) (img@54@01 z@52@01)))
  :pattern ((Set_in z@52@01 xs@24@01))
  :pattern ((inv@53@01 z@52@01))
  :pattern ((img@54@01 z@52@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@54@01 r) (Set_in (inv@53@01 r) xs@24@01)) (= (inv@53@01 r) r))
  :pattern ((inv@53@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@55@01  $FVF<f>)))
      (and (Set_in (inv@53@01 r) xs@24@01) (img@54@01 r)))
    (=>
      (and (Set_in (inv@53@01 r) xs@24@01) (img@54@01 r))
      (Set_in r ($FVF.domain_f (as sm@55@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@55@01  $FVF<f>))))
  :qid |qp.fvfDomDef20|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@53@01 r) xs@24@01) (img@54@01 r)) (= r y@26@01))
    (=
      ($FVF.lookup_f (as sm@55@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@39@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@55@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@39@01  $FVF<f>) r))
  :qid |qp.fvfValDef18|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@53@01 r) xs@24@01) (img@54@01 r))
      (ite
        (and (img@31@01 r) (Set_in (inv@30@01 r) xs@24@01))
        (< $Perm.No (- $Perm.Write (pTaken@38@01 r)))
        false))
    (=
      ($FVF.lookup_f (as sm@55@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@28@01)) r)))
  :pattern (($FVF.lookup_f (as sm@55@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@28@01)) r))
  :qid |qp.fvfValDef19|)))
(assert (fun%precondition ($Snap.combine
  ($SortWrappers.$FVF<f>To$Snap (as sm@55@01  $FVF<f>))
  ($Snap.combine $Snap.unit $Snap.unit)) xs@24@01 x@25@01 n@27@01))
(push) ; 3
(assert (not (=
  v@37@01
  (fun ($Snap.combine
    ($SortWrappers.$FVF<f>To$Snap (as sm@55@01  $FVF<f>))
    ($Snap.combine $Snap.unit $Snap.unit)) xs@24@01 x@25@01 n@27@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; [eval] v == fun(xs, x, n)
; [eval] fun(xs, x, n)
(set-option :timeout 0)
(push) ; 3
(declare-const z@56@01 $Ref)
(push) ; 4
; [eval] (z in xs)
(assert (Set_in z@56@01 xs@24@01))
(pop) ; 4
(declare-fun inv@57@01 ($Ref) $Ref)
(declare-fun img@58@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((z1@56@01 $Ref) (z2@56@01 $Ref)) (!
  (=>
    (and
      (Set_in z1@56@01 xs@24@01)
      (Set_in z2@56@01 xs@24@01)
      (= z1@56@01 z2@56@01))
    (= z1@56@01 z2@56@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@56@01 $Ref)) (!
  (=>
    (Set_in z@56@01 xs@24@01)
    (and (= (inv@57@01 z@56@01) z@56@01) (img@58@01 z@56@01)))
  :pattern ((Set_in z@56@01 xs@24@01))
  :pattern ((inv@57@01 z@56@01))
  :pattern ((img@58@01 z@56@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@58@01 r) (Set_in (inv@57@01 r) xs@24@01)) (= (inv@57@01 r) r))
  :pattern ((inv@57@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@57@01 r) xs@24@01) (img@58@01 r) (= r (inv@57@01 r)))
    (>
      (+
        (ite
          (and (img@31@01 r) (Set_in (inv@30@01 r) xs@24@01))
          (- $Perm.Write (pTaken@38@01 r))
          $Perm.No)
        (ite (= r y@26@01) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-5555|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@59@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@59@01  $FVF<f>)))
      (and (Set_in (inv@57@01 r) xs@24@01) (img@58@01 r)))
    (=>
      (and (Set_in (inv@57@01 r) xs@24@01) (img@58@01 r))
      (Set_in r ($FVF.domain_f (as sm@59@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@59@01  $FVF<f>))))
  :qid |qp.fvfDomDef23|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@57@01 r) xs@24@01) (img@58@01 r))
      (ite
        (and (img@31@01 r) (Set_in (inv@30@01 r) xs@24@01))
        (< $Perm.No (- $Perm.Write (pTaken@38@01 r)))
        false))
    (=
      ($FVF.lookup_f (as sm@59@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@28@01)) r)))
  :pattern (($FVF.lookup_f (as sm@59@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@28@01)) r))
  :qid |qp.fvfValDef21|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@57@01 r) xs@24@01) (img@58@01 r)) (= r y@26@01))
    (=
      ($FVF.lookup_f (as sm@59@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@39@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@59@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@39@01  $FVF<f>) r))
  :qid |qp.fvfValDef22|)))
; [eval] (x in xs)
; [eval] n >= 0
(assert (fun%precondition ($Snap.combine
  ($SortWrappers.$FVF<f>To$Snap (as sm@59@01  $FVF<f>))
  ($Snap.combine $Snap.unit $Snap.unit)) xs@24@01 x@25@01 n@27@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((z@56@01 $Ref)) (!
  (=>
    (Set_in z@56@01 xs@24@01)
    (and (= (inv@57@01 z@56@01) z@56@01) (img@58@01 z@56@01)))
  :pattern ((Set_in z@56@01 xs@24@01))
  :pattern ((inv@57@01 z@56@01))
  :pattern ((img@58@01 z@56@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@58@01 r) (Set_in (inv@57@01 r) xs@24@01)) (= (inv@57@01 r) r))
  :pattern ((inv@57@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@59@01  $FVF<f>)))
      (and (Set_in (inv@57@01 r) xs@24@01) (img@58@01 r)))
    (=>
      (and (Set_in (inv@57@01 r) xs@24@01) (img@58@01 r))
      (Set_in r ($FVF.domain_f (as sm@59@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@59@01  $FVF<f>))))
  :qid |qp.fvfDomDef23|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@57@01 r) xs@24@01) (img@58@01 r))
      (ite
        (and (img@31@01 r) (Set_in (inv@30@01 r) xs@24@01))
        (< $Perm.No (- $Perm.Write (pTaken@38@01 r)))
        false))
    (=
      ($FVF.lookup_f (as sm@59@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@28@01)) r)))
  :pattern (($FVF.lookup_f (as sm@59@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@28@01)) r))
  :qid |qp.fvfValDef21|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@57@01 r) xs@24@01) (img@58@01 r)) (= r y@26@01))
    (=
      ($FVF.lookup_f (as sm@59@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@39@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@59@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@39@01  $FVF<f>) r))
  :qid |qp.fvfValDef22|)))
(assert (fun%precondition ($Snap.combine
  ($SortWrappers.$FVF<f>To$Snap (as sm@59@01  $FVF<f>))
  ($Snap.combine $Snap.unit $Snap.unit)) xs@24@01 x@25@01 n@27@01))
(push) ; 3
(assert (not (=
  v@37@01
  (fun ($Snap.combine
    ($SortWrappers.$FVF<f>To$Snap (as sm@59@01  $FVF<f>))
    ($Snap.combine $Snap.unit $Snap.unit)) xs@24@01 x@25@01 n@27@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1
; ---------- test05 ----------
(declare-const xs@60@01 Set<$Ref>)
(declare-const x@61@01 $Ref)
(declare-const y@62@01 $Ref)
(declare-const n@63@01 Int)
(declare-const xs@64@01 Set<$Ref>)
(declare-const x@65@01 $Ref)
(declare-const y@66@01 $Ref)
(declare-const n@67@01 Int)
(push) ; 1
(declare-const $t@68@01 $Snap)
(assert (= $t@68@01 ($Snap.combine ($Snap.first $t@68@01) ($Snap.second $t@68@01))))
(declare-const z@69@01 $Ref)
(push) ; 2
; [eval] (z in xs)
(assert (Set_in z@69@01 xs@64@01))
(pop) ; 2
(declare-fun inv@70@01 ($Ref) $Ref)
(declare-fun img@71@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((z1@69@01 $Ref) (z2@69@01 $Ref)) (!
  (=>
    (and
      (Set_in z1@69@01 xs@64@01)
      (Set_in z2@69@01 xs@64@01)
      (= z1@69@01 z2@69@01))
    (= z1@69@01 z2@69@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@69@01 $Ref)) (!
  (=>
    (Set_in z@69@01 xs@64@01)
    (and (= (inv@70@01 z@69@01) z@69@01) (img@71@01 z@69@01)))
  :pattern ((Set_in z@69@01 xs@64@01))
  :pattern ((inv@70@01 z@69@01))
  :pattern ((img@71@01 z@69@01))
  :qid |quant-u-5557|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@71@01 r) (Set_in (inv@70@01 r) xs@64@01)) (= (inv@70@01 r) r))
  :pattern ((inv@70@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((z@69@01 $Ref)) (!
  (=> (Set_in z@69@01 xs@64@01) (not (= z@69@01 $Ref.null)))
  :pattern ((Set_in z@69@01 xs@64@01))
  :pattern ((inv@70@01 z@69@01))
  :pattern ((img@71@01 z@69@01))
  :qid |f-permImpliesNonNull|)))
(assert (=
  ($Snap.second $t@68@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@68@01))
    ($Snap.second ($Snap.second $t@68@01)))))
(assert (= ($Snap.first ($Snap.second $t@68@01)) $Snap.unit))
; [eval] (x in xs)
(assert (Set_in x@65@01 xs@64@01))
(assert (=
  ($Snap.second ($Snap.second $t@68@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@68@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@68@01))) $Snap.unit))
; [eval] (y in xs)
(assert (Set_in y@66@01 xs@64@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@68@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@68@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@68@01))))
  $Snap.unit))
; [eval] x != y
(assert (not (= x@65@01 y@66@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))
  $Snap.unit))
; [eval] n >= 0
(assert (>= n@67@01 0))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; var v: Int
(declare-const v@72@01 Int)
; [exec]
; v := fun(xs, x, n)
; [eval] fun(xs, x, n)
(push) ; 3
(declare-const z@73@01 $Ref)
(push) ; 4
; [eval] (z in xs)
(assert (Set_in z@73@01 xs@64@01))
(pop) ; 4
(declare-fun inv@74@01 ($Ref) $Ref)
(declare-fun img@75@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((z1@73@01 $Ref) (z2@73@01 $Ref)) (!
  (=>
    (and
      (Set_in z1@73@01 xs@64@01)
      (Set_in z2@73@01 xs@64@01)
      (= z1@73@01 z2@73@01))
    (= z1@73@01 z2@73@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@73@01 $Ref)) (!
  (=>
    (Set_in z@73@01 xs@64@01)
    (and (= (inv@74@01 z@73@01) z@73@01) (img@75@01 z@73@01)))
  :pattern ((Set_in z@73@01 xs@64@01))
  :pattern ((inv@74@01 z@73@01))
  :pattern ((img@75@01 z@73@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@75@01 r) (Set_in (inv@74@01 r) xs@64@01)) (= (inv@74@01 r) r))
  :pattern ((inv@74@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@74@01 r) xs@64@01) (img@75@01 r) (= r (inv@74@01 r)))
    (>
      (ite
        (and (img@71@01 r) (Set_in (inv@70@01 r) xs@64@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-5559|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@76@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@76@01  $FVF<f>)))
      (and (Set_in (inv@74@01 r) xs@64@01) (img@75@01 r)))
    (=>
      (and (Set_in (inv@74@01 r) xs@64@01) (img@75@01 r))
      (Set_in r ($FVF.domain_f (as sm@76@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@76@01  $FVF<f>))))
  :qid |qp.fvfDomDef25|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@74@01 r) xs@64@01) (img@75@01 r))
      (and (img@71@01 r) (Set_in (inv@70@01 r) xs@64@01)))
    (=
      ($FVF.lookup_f (as sm@76@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@68@01)) r)))
  :pattern (($FVF.lookup_f (as sm@76@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@68@01)) r))
  :qid |qp.fvfValDef24|)))
; [eval] (x in xs)
; [eval] n >= 0
(assert (fun%precondition ($Snap.combine
  ($SortWrappers.$FVF<f>To$Snap (as sm@76@01  $FVF<f>))
  ($Snap.combine $Snap.unit $Snap.unit)) xs@64@01 x@65@01 n@67@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((z@73@01 $Ref)) (!
  (=>
    (Set_in z@73@01 xs@64@01)
    (and (= (inv@74@01 z@73@01) z@73@01) (img@75@01 z@73@01)))
  :pattern ((Set_in z@73@01 xs@64@01))
  :pattern ((inv@74@01 z@73@01))
  :pattern ((img@75@01 z@73@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@75@01 r) (Set_in (inv@74@01 r) xs@64@01)) (= (inv@74@01 r) r))
  :pattern ((inv@74@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@76@01  $FVF<f>)))
      (and (Set_in (inv@74@01 r) xs@64@01) (img@75@01 r)))
    (=>
      (and (Set_in (inv@74@01 r) xs@64@01) (img@75@01 r))
      (Set_in r ($FVF.domain_f (as sm@76@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@76@01  $FVF<f>))))
  :qid |qp.fvfDomDef25|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@74@01 r) xs@64@01) (img@75@01 r))
      (and (img@71@01 r) (Set_in (inv@70@01 r) xs@64@01)))
    (=
      ($FVF.lookup_f (as sm@76@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@68@01)) r)))
  :pattern (($FVF.lookup_f (as sm@76@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@68@01)) r))
  :qid |qp.fvfValDef24|)))
(assert (fun%precondition ($Snap.combine
  ($SortWrappers.$FVF<f>To$Snap (as sm@76@01  $FVF<f>))
  ($Snap.combine $Snap.unit $Snap.unit)) xs@64@01 x@65@01 n@67@01))
(declare-const v@77@01 Int)
(assert (=
  v@77@01
  (fun ($Snap.combine
    ($SortWrappers.$FVF<f>To$Snap (as sm@76@01  $FVF<f>))
    ($Snap.combine $Snap.unit $Snap.unit)) xs@64@01 x@65@01 n@67@01)))
; [exec]
; y.f := y.f
(push) ; 3
(assert (not (and (img@71@01 y@66@01) (Set_in (inv@70@01 y@66@01) xs@64@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@78@01 ((r $Ref)) $Perm
  (ite
    (= r y@66@01)
    ($Perm.min
      (ite
        (and (img@71@01 r) (Set_in (inv@70@01 r) xs@64@01))
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
        (and (img@71@01 r) (Set_in (inv@70@01 r) xs@64@01))
        $Perm.Write
        $Perm.No)
      (pTaken@78@01 r))
    $Perm.No)
  
  :qid |quant-u-5561|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@78@01 r) $Perm.No)
  
  :qid |quant-u-5562|))))
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
  (=> (= r y@66@01) (= (- $Perm.Write (pTaken@78@01 r)) $Perm.No))
  
  :qid |quant-u-5563|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@79@01 $FVF<f>)
; Definitional axioms for singleton-FVF's value
(assert (=
  ($FVF.lookup_f (as sm@79@01  $FVF<f>) y@66@01)
  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@68@01)) y@66@01)))
; [exec]
; assert v == fun(xs, x, n)
; [eval] v == fun(xs, x, n)
; [eval] fun(xs, x, n)
(set-option :timeout 0)
(push) ; 3
(declare-const z@80@01 $Ref)
(push) ; 4
; [eval] (z in xs)
(assert (Set_in z@80@01 xs@64@01))
(pop) ; 4
(declare-fun inv@81@01 ($Ref) $Ref)
(declare-fun img@82@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((z1@80@01 $Ref) (z2@80@01 $Ref)) (!
  (=>
    (and
      (Set_in z1@80@01 xs@64@01)
      (Set_in z2@80@01 xs@64@01)
      (= z1@80@01 z2@80@01))
    (= z1@80@01 z2@80@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@80@01 $Ref)) (!
  (=>
    (Set_in z@80@01 xs@64@01)
    (and (= (inv@81@01 z@80@01) z@80@01) (img@82@01 z@80@01)))
  :pattern ((Set_in z@80@01 xs@64@01))
  :pattern ((inv@81@01 z@80@01))
  :pattern ((img@82@01 z@80@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@82@01 r) (Set_in (inv@81@01 r) xs@64@01)) (= (inv@81@01 r) r))
  :pattern ((inv@81@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@81@01 r) xs@64@01) (img@82@01 r) (= r (inv@81@01 r)))
    (>
      (+
        (ite
          (and (img@71@01 r) (Set_in (inv@70@01 r) xs@64@01))
          (- $Perm.Write (pTaken@78@01 r))
          $Perm.No)
        (ite (= r y@66@01) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-5565|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@83@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@83@01  $FVF<f>)))
      (and (Set_in (inv@81@01 r) xs@64@01) (img@82@01 r)))
    (=>
      (and (Set_in (inv@81@01 r) xs@64@01) (img@82@01 r))
      (Set_in r ($FVF.domain_f (as sm@83@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@83@01  $FVF<f>))))
  :qid |qp.fvfDomDef28|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@81@01 r) xs@64@01) (img@82@01 r)) (= r y@66@01))
    (=
      ($FVF.lookup_f (as sm@83@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@79@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@83@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@79@01  $FVF<f>) r))
  :qid |qp.fvfValDef26|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@81@01 r) xs@64@01) (img@82@01 r))
      (ite
        (and (img@71@01 r) (Set_in (inv@70@01 r) xs@64@01))
        (< $Perm.No (- $Perm.Write (pTaken@78@01 r)))
        false))
    (=
      ($FVF.lookup_f (as sm@83@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@68@01)) r)))
  :pattern (($FVF.lookup_f (as sm@83@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@68@01)) r))
  :qid |qp.fvfValDef27|)))
; [eval] (x in xs)
; [eval] n >= 0
(assert (fun%precondition ($Snap.combine
  ($SortWrappers.$FVF<f>To$Snap (as sm@83@01  $FVF<f>))
  ($Snap.combine $Snap.unit $Snap.unit)) xs@64@01 x@65@01 n@67@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((z@80@01 $Ref)) (!
  (=>
    (Set_in z@80@01 xs@64@01)
    (and (= (inv@81@01 z@80@01) z@80@01) (img@82@01 z@80@01)))
  :pattern ((Set_in z@80@01 xs@64@01))
  :pattern ((inv@81@01 z@80@01))
  :pattern ((img@82@01 z@80@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@82@01 r) (Set_in (inv@81@01 r) xs@64@01)) (= (inv@81@01 r) r))
  :pattern ((inv@81@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@83@01  $FVF<f>)))
      (and (Set_in (inv@81@01 r) xs@64@01) (img@82@01 r)))
    (=>
      (and (Set_in (inv@81@01 r) xs@64@01) (img@82@01 r))
      (Set_in r ($FVF.domain_f (as sm@83@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@83@01  $FVF<f>))))
  :qid |qp.fvfDomDef28|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@81@01 r) xs@64@01) (img@82@01 r)) (= r y@66@01))
    (=
      ($FVF.lookup_f (as sm@83@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@79@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@83@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@79@01  $FVF<f>) r))
  :qid |qp.fvfValDef26|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@81@01 r) xs@64@01) (img@82@01 r))
      (ite
        (and (img@71@01 r) (Set_in (inv@70@01 r) xs@64@01))
        (< $Perm.No (- $Perm.Write (pTaken@78@01 r)))
        false))
    (=
      ($FVF.lookup_f (as sm@83@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@68@01)) r)))
  :pattern (($FVF.lookup_f (as sm@83@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@68@01)) r))
  :qid |qp.fvfValDef27|)))
(assert (fun%precondition ($Snap.combine
  ($SortWrappers.$FVF<f>To$Snap (as sm@83@01  $FVF<f>))
  ($Snap.combine $Snap.unit $Snap.unit)) xs@64@01 x@65@01 n@67@01))
(push) ; 3
(assert (not (=
  v@77@01
  (fun ($Snap.combine
    ($SortWrappers.$FVF<f>To$Snap (as sm@83@01  $FVF<f>))
    ($Snap.combine $Snap.unit $Snap.unit)) xs@64@01 x@65@01 n@67@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  v@77@01
  (fun ($Snap.combine
    ($SortWrappers.$FVF<f>To$Snap (as sm@83@01  $FVF<f>))
    ($Snap.combine $Snap.unit $Snap.unit)) xs@64@01 x@65@01 n@67@01)))
(pop) ; 2
(pop) ; 1
; ---------- test06 ----------
(declare-const xs@84@01 Set<$Ref>)
(declare-const x@85@01 $Ref)
(declare-const y@86@01 $Ref)
(declare-const n@87@01 Int)
(declare-const xs@88@01 Set<$Ref>)
(declare-const x@89@01 $Ref)
(declare-const y@90@01 $Ref)
(declare-const n@91@01 Int)
(push) ; 1
(declare-const $t@92@01 $Snap)
(assert (= $t@92@01 ($Snap.combine ($Snap.first $t@92@01) ($Snap.second $t@92@01))))
(declare-const z@93@01 $Ref)
(push) ; 2
; [eval] (z in xs)
(assert (Set_in z@93@01 xs@88@01))
(pop) ; 2
(declare-fun inv@94@01 ($Ref) $Ref)
(declare-fun img@95@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((z1@93@01 $Ref) (z2@93@01 $Ref)) (!
  (=>
    (and
      (Set_in z1@93@01 xs@88@01)
      (Set_in z2@93@01 xs@88@01)
      (= z1@93@01 z2@93@01))
    (= z1@93@01 z2@93@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@93@01 $Ref)) (!
  (=>
    (Set_in z@93@01 xs@88@01)
    (and (= (inv@94@01 z@93@01) z@93@01) (img@95@01 z@93@01)))
  :pattern ((Set_in z@93@01 xs@88@01))
  :pattern ((inv@94@01 z@93@01))
  :pattern ((img@95@01 z@93@01))
  :qid |quant-u-5567|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@95@01 r) (Set_in (inv@94@01 r) xs@88@01)) (= (inv@94@01 r) r))
  :pattern ((inv@94@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((z@93@01 $Ref)) (!
  (=> (Set_in z@93@01 xs@88@01) (not (= z@93@01 $Ref.null)))
  :pattern ((Set_in z@93@01 xs@88@01))
  :pattern ((inv@94@01 z@93@01))
  :pattern ((img@95@01 z@93@01))
  :qid |f-permImpliesNonNull|)))
(assert (=
  ($Snap.second $t@92@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@92@01))
    ($Snap.second ($Snap.second $t@92@01)))))
(assert (= ($Snap.first ($Snap.second $t@92@01)) $Snap.unit))
; [eval] (x in xs)
(assert (Set_in x@89@01 xs@88@01))
(assert (=
  ($Snap.second ($Snap.second $t@92@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@92@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@92@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@92@01))) $Snap.unit))
; [eval] (y in xs)
(assert (Set_in y@90@01 xs@88@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@92@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@92@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@92@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@92@01))))
  $Snap.unit))
; [eval] x != y
(assert (not (= x@89@01 y@90@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@92@01))))
  $Snap.unit))
; [eval] n >= 0
(assert (>= n@91@01 0))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; var v: Int
(declare-const v@96@01 Int)
; [exec]
; var yf: Int
(declare-const yf@97@01 Int)
; [exec]
; v := fun(xs, x, n)
; [eval] fun(xs, x, n)
(push) ; 3
(declare-const z@98@01 $Ref)
(push) ; 4
; [eval] (z in xs)
(assert (Set_in z@98@01 xs@88@01))
(pop) ; 4
(declare-fun inv@99@01 ($Ref) $Ref)
(declare-fun img@100@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((z1@98@01 $Ref) (z2@98@01 $Ref)) (!
  (=>
    (and
      (Set_in z1@98@01 xs@88@01)
      (Set_in z2@98@01 xs@88@01)
      (= z1@98@01 z2@98@01))
    (= z1@98@01 z2@98@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@98@01 $Ref)) (!
  (=>
    (Set_in z@98@01 xs@88@01)
    (and (= (inv@99@01 z@98@01) z@98@01) (img@100@01 z@98@01)))
  :pattern ((Set_in z@98@01 xs@88@01))
  :pattern ((inv@99@01 z@98@01))
  :pattern ((img@100@01 z@98@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@100@01 r) (Set_in (inv@99@01 r) xs@88@01)) (= (inv@99@01 r) r))
  :pattern ((inv@99@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@99@01 r) xs@88@01) (img@100@01 r) (= r (inv@99@01 r)))
    (>
      (ite
        (and (img@95@01 r) (Set_in (inv@94@01 r) xs@88@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-5569|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@101@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@101@01  $FVF<f>)))
      (and (Set_in (inv@99@01 r) xs@88@01) (img@100@01 r)))
    (=>
      (and (Set_in (inv@99@01 r) xs@88@01) (img@100@01 r))
      (Set_in r ($FVF.domain_f (as sm@101@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@101@01  $FVF<f>))))
  :qid |qp.fvfDomDef30|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@99@01 r) xs@88@01) (img@100@01 r))
      (and (img@95@01 r) (Set_in (inv@94@01 r) xs@88@01)))
    (=
      ($FVF.lookup_f (as sm@101@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@92@01)) r)))
  :pattern (($FVF.lookup_f (as sm@101@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@92@01)) r))
  :qid |qp.fvfValDef29|)))
; [eval] (x in xs)
; [eval] n >= 0
(assert (fun%precondition ($Snap.combine
  ($SortWrappers.$FVF<f>To$Snap (as sm@101@01  $FVF<f>))
  ($Snap.combine $Snap.unit $Snap.unit)) xs@88@01 x@89@01 n@91@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((z@98@01 $Ref)) (!
  (=>
    (Set_in z@98@01 xs@88@01)
    (and (= (inv@99@01 z@98@01) z@98@01) (img@100@01 z@98@01)))
  :pattern ((Set_in z@98@01 xs@88@01))
  :pattern ((inv@99@01 z@98@01))
  :pattern ((img@100@01 z@98@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@100@01 r) (Set_in (inv@99@01 r) xs@88@01)) (= (inv@99@01 r) r))
  :pattern ((inv@99@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@101@01  $FVF<f>)))
      (and (Set_in (inv@99@01 r) xs@88@01) (img@100@01 r)))
    (=>
      (and (Set_in (inv@99@01 r) xs@88@01) (img@100@01 r))
      (Set_in r ($FVF.domain_f (as sm@101@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@101@01  $FVF<f>))))
  :qid |qp.fvfDomDef30|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@99@01 r) xs@88@01) (img@100@01 r))
      (and (img@95@01 r) (Set_in (inv@94@01 r) xs@88@01)))
    (=
      ($FVF.lookup_f (as sm@101@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@92@01)) r)))
  :pattern (($FVF.lookup_f (as sm@101@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@92@01)) r))
  :qid |qp.fvfValDef29|)))
(assert (fun%precondition ($Snap.combine
  ($SortWrappers.$FVF<f>To$Snap (as sm@101@01  $FVF<f>))
  ($Snap.combine $Snap.unit $Snap.unit)) xs@88@01 x@89@01 n@91@01))
(declare-const v@102@01 Int)
(assert (=
  v@102@01
  (fun ($Snap.combine
    ($SortWrappers.$FVF<f>To$Snap (as sm@101@01  $FVF<f>))
    ($Snap.combine $Snap.unit $Snap.unit)) xs@88@01 x@89@01 n@91@01)))
; [exec]
; yf := y.f
(push) ; 3
(assert (not (and (img@95@01 y@90@01) (Set_in (inv@94@01 y@90@01) xs@88@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const yf@103@01 Int)
(assert (=
  yf@103@01
  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@92@01)) y@90@01)))
; [exec]
; y.f := 0
; Precomputing data for removing quantified permissions
(define-fun pTaken@104@01 ((r $Ref)) $Perm
  (ite
    (= r y@90@01)
    ($Perm.min
      (ite
        (and (img@95@01 r) (Set_in (inv@94@01 r) xs@88@01))
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
        (and (img@95@01 r) (Set_in (inv@94@01 r) xs@88@01))
        $Perm.Write
        $Perm.No)
      (pTaken@104@01 r))
    $Perm.No)
  
  :qid |quant-u-5571|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@104@01 r) $Perm.No)
  
  :qid |quant-u-5572|))))
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
  (=> (= r y@90@01) (= (- $Perm.Write (pTaken@104@01 r)) $Perm.No))
  
  :qid |quant-u-5573|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@105@01 $FVF<f>)
; Definitional axioms for singleton-FVF's value
(assert (= ($FVF.lookup_f (as sm@105@01  $FVF<f>) y@90@01) 0))
; [exec]
; y.f := yf
; Precomputing data for removing quantified permissions
(define-fun pTaken@106@01 ((r $Ref)) $Perm
  (ite
    (= r y@90@01)
    ($Perm.min (ite (= r y@90@01) $Perm.Write $Perm.No) $Perm.Write)
    $Perm.No))
(define-fun pTaken@107@01 ((r $Ref)) $Perm
  (ite
    (= r y@90@01)
    ($Perm.min
      (ite
        (and (img@95@01 r) (Set_in (inv@94@01 r) xs@88@01))
        (- $Perm.Write (pTaken@104@01 r))
        $Perm.No)
      (- $Perm.Write (pTaken@106@01 r)))
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
(assert (not (= (- $Perm.Write (pTaken@106@01 y@90@01)) $Perm.No)))
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
  (=> (= r y@90@01) (= (- $Perm.Write (pTaken@106@01 r)) $Perm.No))
  
  :qid |quant-u-5576|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@108@01 $FVF<f>)
; Definitional axioms for singleton-FVF's value
(assert (= ($FVF.lookup_f (as sm@108@01  $FVF<f>) y@90@01) yf@103@01))
; [exec]
; assert v == fun(xs, x, n)
; [eval] v == fun(xs, x, n)
; [eval] fun(xs, x, n)
(set-option :timeout 0)
(push) ; 3
(declare-const z@109@01 $Ref)
(push) ; 4
; [eval] (z in xs)
(assert (Set_in z@109@01 xs@88@01))
(pop) ; 4
(declare-fun inv@110@01 ($Ref) $Ref)
(declare-fun img@111@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((z1@109@01 $Ref) (z2@109@01 $Ref)) (!
  (=>
    (and
      (Set_in z1@109@01 xs@88@01)
      (Set_in z2@109@01 xs@88@01)
      (= z1@109@01 z2@109@01))
    (= z1@109@01 z2@109@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@109@01 $Ref)) (!
  (=>
    (Set_in z@109@01 xs@88@01)
    (and (= (inv@110@01 z@109@01) z@109@01) (img@111@01 z@109@01)))
  :pattern ((Set_in z@109@01 xs@88@01))
  :pattern ((inv@110@01 z@109@01))
  :pattern ((img@111@01 z@109@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@111@01 r) (Set_in (inv@110@01 r) xs@88@01)) (= (inv@110@01 r) r))
  :pattern ((inv@110@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@110@01 r) xs@88@01) (img@111@01 r) (= r (inv@110@01 r)))
    (>
      (+
        (ite
          (and (img@95@01 r) (Set_in (inv@94@01 r) xs@88@01))
          (- $Perm.Write (pTaken@104@01 r))
          $Perm.No)
        (ite (= r y@90@01) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-5578|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@112@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@112@01  $FVF<f>)))
      (and (Set_in (inv@110@01 r) xs@88@01) (img@111@01 r)))
    (=>
      (and (Set_in (inv@110@01 r) xs@88@01) (img@111@01 r))
      (Set_in r ($FVF.domain_f (as sm@112@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@112@01  $FVF<f>))))
  :qid |qp.fvfDomDef33|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@110@01 r) xs@88@01) (img@111@01 r)) (= r y@90@01))
    (=
      ($FVF.lookup_f (as sm@112@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@108@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@112@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@108@01  $FVF<f>) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@110@01 r) xs@88@01) (img@111@01 r))
      (ite
        (and (img@95@01 r) (Set_in (inv@94@01 r) xs@88@01))
        (< $Perm.No (- $Perm.Write (pTaken@104@01 r)))
        false))
    (=
      ($FVF.lookup_f (as sm@112@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@92@01)) r)))
  :pattern (($FVF.lookup_f (as sm@112@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@92@01)) r))
  :qid |qp.fvfValDef32|)))
; [eval] (x in xs)
; [eval] n >= 0
(assert (fun%precondition ($Snap.combine
  ($SortWrappers.$FVF<f>To$Snap (as sm@112@01  $FVF<f>))
  ($Snap.combine $Snap.unit $Snap.unit)) xs@88@01 x@89@01 n@91@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((z@109@01 $Ref)) (!
  (=>
    (Set_in z@109@01 xs@88@01)
    (and (= (inv@110@01 z@109@01) z@109@01) (img@111@01 z@109@01)))
  :pattern ((Set_in z@109@01 xs@88@01))
  :pattern ((inv@110@01 z@109@01))
  :pattern ((img@111@01 z@109@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@111@01 r) (Set_in (inv@110@01 r) xs@88@01)) (= (inv@110@01 r) r))
  :pattern ((inv@110@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@112@01  $FVF<f>)))
      (and (Set_in (inv@110@01 r) xs@88@01) (img@111@01 r)))
    (=>
      (and (Set_in (inv@110@01 r) xs@88@01) (img@111@01 r))
      (Set_in r ($FVF.domain_f (as sm@112@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@112@01  $FVF<f>))))
  :qid |qp.fvfDomDef33|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@110@01 r) xs@88@01) (img@111@01 r)) (= r y@90@01))
    (=
      ($FVF.lookup_f (as sm@112@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@108@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@112@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@108@01  $FVF<f>) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@110@01 r) xs@88@01) (img@111@01 r))
      (ite
        (and (img@95@01 r) (Set_in (inv@94@01 r) xs@88@01))
        (< $Perm.No (- $Perm.Write (pTaken@104@01 r)))
        false))
    (=
      ($FVF.lookup_f (as sm@112@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@92@01)) r)))
  :pattern (($FVF.lookup_f (as sm@112@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@92@01)) r))
  :qid |qp.fvfValDef32|)))
(assert (fun%precondition ($Snap.combine
  ($SortWrappers.$FVF<f>To$Snap (as sm@112@01  $FVF<f>))
  ($Snap.combine $Snap.unit $Snap.unit)) xs@88@01 x@89@01 n@91@01))
(push) ; 3
(assert (not (=
  v@102@01
  (fun ($Snap.combine
    ($SortWrappers.$FVF<f>To$Snap (as sm@112@01  $FVF<f>))
    ($Snap.combine $Snap.unit $Snap.unit)) xs@88@01 x@89@01 n@91@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  v@102@01
  (fun ($Snap.combine
    ($SortWrappers.$FVF<f>To$Snap (as sm@112@01  $FVF<f>))
    ($Snap.combine $Snap.unit $Snap.unit)) xs@88@01 x@89@01 n@91@01)))
(pop) ; 2
(pop) ; 1
; ---------- test07 ----------
(declare-const xs@113@01 Set<$Ref>)
(declare-const x@114@01 $Ref)
(declare-const y@115@01 $Ref)
(declare-const n@116@01 Int)
(declare-const xs@117@01 Set<$Ref>)
(declare-const x@118@01 $Ref)
(declare-const y@119@01 $Ref)
(declare-const n@120@01 Int)
(push) ; 1
(declare-const $t@121@01 $Snap)
(assert (= $t@121@01 ($Snap.combine ($Snap.first $t@121@01) ($Snap.second $t@121@01))))
(declare-const z@122@01 $Ref)
(push) ; 2
; [eval] (z in xs)
(assert (Set_in z@122@01 xs@117@01))
(pop) ; 2
(declare-fun inv@123@01 ($Ref) $Ref)
(declare-fun img@124@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((z1@122@01 $Ref) (z2@122@01 $Ref)) (!
  (=>
    (and
      (Set_in z1@122@01 xs@117@01)
      (Set_in z2@122@01 xs@117@01)
      (= z1@122@01 z2@122@01))
    (= z1@122@01 z2@122@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@122@01 $Ref)) (!
  (=>
    (Set_in z@122@01 xs@117@01)
    (and (= (inv@123@01 z@122@01) z@122@01) (img@124@01 z@122@01)))
  :pattern ((Set_in z@122@01 xs@117@01))
  :pattern ((inv@123@01 z@122@01))
  :pattern ((img@124@01 z@122@01))
  :qid |quant-u-5580|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@124@01 r) (Set_in (inv@123@01 r) xs@117@01))
    (= (inv@123@01 r) r))
  :pattern ((inv@123@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((z@122@01 $Ref)) (!
  (=> (Set_in z@122@01 xs@117@01) (not (= z@122@01 $Ref.null)))
  :pattern ((Set_in z@122@01 xs@117@01))
  :pattern ((inv@123@01 z@122@01))
  :pattern ((img@124@01 z@122@01))
  :qid |f-permImpliesNonNull|)))
(assert (=
  ($Snap.second $t@121@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@121@01))
    ($Snap.second ($Snap.second $t@121@01)))))
(assert (= ($Snap.first ($Snap.second $t@121@01)) $Snap.unit))
; [eval] (x in xs)
(assert (Set_in x@118@01 xs@117@01))
(assert (=
  ($Snap.second ($Snap.second $t@121@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@121@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@121@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@121@01))) $Snap.unit))
; [eval] (y in xs)
(assert (Set_in y@119@01 xs@117@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@121@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@121@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@121@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@121@01))))
  $Snap.unit))
; [eval] x != y
(assert (not (= x@118@01 y@119@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@121@01))))
  $Snap.unit))
; [eval] n >= 0
(assert (>= n@120@01 0))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; var v: Int
(declare-const v@125@01 Int)
; [exec]
; v := fun(xs, x, n)
; [eval] fun(xs, x, n)
(push) ; 3
(declare-const z@126@01 $Ref)
(push) ; 4
; [eval] (z in xs)
(assert (Set_in z@126@01 xs@117@01))
(pop) ; 4
(declare-fun inv@127@01 ($Ref) $Ref)
(declare-fun img@128@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((z1@126@01 $Ref) (z2@126@01 $Ref)) (!
  (=>
    (and
      (Set_in z1@126@01 xs@117@01)
      (Set_in z2@126@01 xs@117@01)
      (= z1@126@01 z2@126@01))
    (= z1@126@01 z2@126@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@126@01 $Ref)) (!
  (=>
    (Set_in z@126@01 xs@117@01)
    (and (= (inv@127@01 z@126@01) z@126@01) (img@128@01 z@126@01)))
  :pattern ((Set_in z@126@01 xs@117@01))
  :pattern ((inv@127@01 z@126@01))
  :pattern ((img@128@01 z@126@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@128@01 r) (Set_in (inv@127@01 r) xs@117@01))
    (= (inv@127@01 r) r))
  :pattern ((inv@127@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@127@01 r) xs@117@01) (img@128@01 r) (= r (inv@127@01 r)))
    (>
      (ite
        (and (img@124@01 r) (Set_in (inv@123@01 r) xs@117@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-5582|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@129@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@129@01  $FVF<f>)))
      (and (Set_in (inv@127@01 r) xs@117@01) (img@128@01 r)))
    (=>
      (and (Set_in (inv@127@01 r) xs@117@01) (img@128@01 r))
      (Set_in r ($FVF.domain_f (as sm@129@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@129@01  $FVF<f>))))
  :qid |qp.fvfDomDef35|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@127@01 r) xs@117@01) (img@128@01 r))
      (and (img@124@01 r) (Set_in (inv@123@01 r) xs@117@01)))
    (=
      ($FVF.lookup_f (as sm@129@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@121@01)) r)))
  :pattern (($FVF.lookup_f (as sm@129@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@121@01)) r))
  :qid |qp.fvfValDef34|)))
; [eval] (x in xs)
; [eval] n >= 0
(assert (fun%precondition ($Snap.combine
  ($SortWrappers.$FVF<f>To$Snap (as sm@129@01  $FVF<f>))
  ($Snap.combine $Snap.unit $Snap.unit)) xs@117@01 x@118@01 n@120@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((z@126@01 $Ref)) (!
  (=>
    (Set_in z@126@01 xs@117@01)
    (and (= (inv@127@01 z@126@01) z@126@01) (img@128@01 z@126@01)))
  :pattern ((Set_in z@126@01 xs@117@01))
  :pattern ((inv@127@01 z@126@01))
  :pattern ((img@128@01 z@126@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@128@01 r) (Set_in (inv@127@01 r) xs@117@01))
    (= (inv@127@01 r) r))
  :pattern ((inv@127@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@129@01  $FVF<f>)))
      (and (Set_in (inv@127@01 r) xs@117@01) (img@128@01 r)))
    (=>
      (and (Set_in (inv@127@01 r) xs@117@01) (img@128@01 r))
      (Set_in r ($FVF.domain_f (as sm@129@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@129@01  $FVF<f>))))
  :qid |qp.fvfDomDef35|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@127@01 r) xs@117@01) (img@128@01 r))
      (and (img@124@01 r) (Set_in (inv@123@01 r) xs@117@01)))
    (=
      ($FVF.lookup_f (as sm@129@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@121@01)) r)))
  :pattern (($FVF.lookup_f (as sm@129@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@121@01)) r))
  :qid |qp.fvfValDef34|)))
(assert (fun%precondition ($Snap.combine
  ($SortWrappers.$FVF<f>To$Snap (as sm@129@01  $FVF<f>))
  ($Snap.combine $Snap.unit $Snap.unit)) xs@117@01 x@118@01 n@120@01))
(declare-const v@130@01 Int)
(assert (=
  v@130@01
  (fun ($Snap.combine
    ($SortWrappers.$FVF<f>To$Snap (as sm@129@01  $FVF<f>))
    ($Snap.combine $Snap.unit $Snap.unit)) xs@117@01 x@118@01 n@120@01)))
; [exec]
; y.f := 0
; Precomputing data for removing quantified permissions
(define-fun pTaken@131@01 ((r $Ref)) $Perm
  (ite
    (= r y@119@01)
    ($Perm.min
      (ite
        (and (img@124@01 r) (Set_in (inv@123@01 r) xs@117@01))
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
        (and (img@124@01 r) (Set_in (inv@123@01 r) xs@117@01))
        $Perm.Write
        $Perm.No)
      (pTaken@131@01 r))
    $Perm.No)
  
  :qid |quant-u-5584|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@131@01 r) $Perm.No)
  
  :qid |quant-u-5585|))))
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
  (=> (= r y@119@01) (= (- $Perm.Write (pTaken@131@01 r)) $Perm.No))
  
  :qid |quant-u-5586|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@132@01 $FVF<f>)
; Definitional axioms for singleton-FVF's value
(assert (= ($FVF.lookup_f (as sm@132@01  $FVF<f>) y@119@01) 0))
; [exec]
; y.f := old(y.f)
; [eval] old(y.f)
(set-option :timeout 0)
(push) ; 3
(assert (not (and (img@124@01 y@119@01) (Set_in (inv@123@01 y@119@01) xs@117@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@133@01 ((r $Ref)) $Perm
  (ite
    (= r y@119@01)
    ($Perm.min (ite (= r y@119@01) $Perm.Write $Perm.No) $Perm.Write)
    $Perm.No))
(define-fun pTaken@134@01 ((r $Ref)) $Perm
  (ite
    (= r y@119@01)
    ($Perm.min
      (ite
        (and (img@124@01 r) (Set_in (inv@123@01 r) xs@117@01))
        (- $Perm.Write (pTaken@131@01 r))
        $Perm.No)
      (- $Perm.Write (pTaken@133@01 r)))
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
(assert (not (= (- $Perm.Write (pTaken@133@01 y@119@01)) $Perm.No)))
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
  (=> (= r y@119@01) (= (- $Perm.Write (pTaken@133@01 r)) $Perm.No))
  
  :qid |quant-u-5589|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@135@01 $FVF<f>)
; Definitional axioms for singleton-FVF's value
(assert (=
  ($FVF.lookup_f (as sm@135@01  $FVF<f>) y@119@01)
  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@121@01)) y@119@01)))
; [exec]
; assert v == fun(xs, x, n)
; [eval] v == fun(xs, x, n)
; [eval] fun(xs, x, n)
(set-option :timeout 0)
(push) ; 3
(declare-const z@136@01 $Ref)
(push) ; 4
; [eval] (z in xs)
(assert (Set_in z@136@01 xs@117@01))
(pop) ; 4
(declare-fun inv@137@01 ($Ref) $Ref)
(declare-fun img@138@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((z1@136@01 $Ref) (z2@136@01 $Ref)) (!
  (=>
    (and
      (Set_in z1@136@01 xs@117@01)
      (Set_in z2@136@01 xs@117@01)
      (= z1@136@01 z2@136@01))
    (= z1@136@01 z2@136@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@136@01 $Ref)) (!
  (=>
    (Set_in z@136@01 xs@117@01)
    (and (= (inv@137@01 z@136@01) z@136@01) (img@138@01 z@136@01)))
  :pattern ((Set_in z@136@01 xs@117@01))
  :pattern ((inv@137@01 z@136@01))
  :pattern ((img@138@01 z@136@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@138@01 r) (Set_in (inv@137@01 r) xs@117@01))
    (= (inv@137@01 r) r))
  :pattern ((inv@137@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@137@01 r) xs@117@01) (img@138@01 r) (= r (inv@137@01 r)))
    (>
      (+
        (ite
          (and (img@124@01 r) (Set_in (inv@123@01 r) xs@117@01))
          (- $Perm.Write (pTaken@131@01 r))
          $Perm.No)
        (ite (= r y@119@01) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-5591|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@139@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@139@01  $FVF<f>)))
      (and (Set_in (inv@137@01 r) xs@117@01) (img@138@01 r)))
    (=>
      (and (Set_in (inv@137@01 r) xs@117@01) (img@138@01 r))
      (Set_in r ($FVF.domain_f (as sm@139@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@139@01  $FVF<f>))))
  :qid |qp.fvfDomDef38|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@137@01 r) xs@117@01) (img@138@01 r)) (= r y@119@01))
    (=
      ($FVF.lookup_f (as sm@139@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@135@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@139@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@135@01  $FVF<f>) r))
  :qid |qp.fvfValDef36|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@137@01 r) xs@117@01) (img@138@01 r))
      (ite
        (and (img@124@01 r) (Set_in (inv@123@01 r) xs@117@01))
        (< $Perm.No (- $Perm.Write (pTaken@131@01 r)))
        false))
    (=
      ($FVF.lookup_f (as sm@139@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@121@01)) r)))
  :pattern (($FVF.lookup_f (as sm@139@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@121@01)) r))
  :qid |qp.fvfValDef37|)))
; [eval] (x in xs)
; [eval] n >= 0
(assert (fun%precondition ($Snap.combine
  ($SortWrappers.$FVF<f>To$Snap (as sm@139@01  $FVF<f>))
  ($Snap.combine $Snap.unit $Snap.unit)) xs@117@01 x@118@01 n@120@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((z@136@01 $Ref)) (!
  (=>
    (Set_in z@136@01 xs@117@01)
    (and (= (inv@137@01 z@136@01) z@136@01) (img@138@01 z@136@01)))
  :pattern ((Set_in z@136@01 xs@117@01))
  :pattern ((inv@137@01 z@136@01))
  :pattern ((img@138@01 z@136@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@138@01 r) (Set_in (inv@137@01 r) xs@117@01))
    (= (inv@137@01 r) r))
  :pattern ((inv@137@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@139@01  $FVF<f>)))
      (and (Set_in (inv@137@01 r) xs@117@01) (img@138@01 r)))
    (=>
      (and (Set_in (inv@137@01 r) xs@117@01) (img@138@01 r))
      (Set_in r ($FVF.domain_f (as sm@139@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@139@01  $FVF<f>))))
  :qid |qp.fvfDomDef38|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@137@01 r) xs@117@01) (img@138@01 r)) (= r y@119@01))
    (=
      ($FVF.lookup_f (as sm@139@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@135@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@139@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@135@01  $FVF<f>) r))
  :qid |qp.fvfValDef36|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@137@01 r) xs@117@01) (img@138@01 r))
      (ite
        (and (img@124@01 r) (Set_in (inv@123@01 r) xs@117@01))
        (< $Perm.No (- $Perm.Write (pTaken@131@01 r)))
        false))
    (=
      ($FVF.lookup_f (as sm@139@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@121@01)) r)))
  :pattern (($FVF.lookup_f (as sm@139@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@121@01)) r))
  :qid |qp.fvfValDef37|)))
(assert (fun%precondition ($Snap.combine
  ($SortWrappers.$FVF<f>To$Snap (as sm@139@01  $FVF<f>))
  ($Snap.combine $Snap.unit $Snap.unit)) xs@117@01 x@118@01 n@120@01))
(push) ; 3
(assert (not (=
  v@130@01
  (fun ($Snap.combine
    ($SortWrappers.$FVF<f>To$Snap (as sm@139@01  $FVF<f>))
    ($Snap.combine $Snap.unit $Snap.unit)) xs@117@01 x@118@01 n@120@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  v@130@01
  (fun ($Snap.combine
    ($SortWrappers.$FVF<f>To$Snap (as sm@139@01  $FVF<f>))
    ($Snap.combine $Snap.unit $Snap.unit)) xs@117@01 x@118@01 n@120@01)))
(pop) ; 2
(pop) ; 1
; ---------- test03 ----------
(declare-const xs@140@01 Set<$Ref>)
(declare-const x@141@01 $Ref)
(declare-const y@142@01 $Ref)
(declare-const n@143@01 Int)
(declare-const xs@144@01 Set<$Ref>)
(declare-const x@145@01 $Ref)
(declare-const y@146@01 $Ref)
(declare-const n@147@01 Int)
(push) ; 1
(declare-const $t@148@01 $Snap)
(assert (= $t@148@01 ($Snap.combine ($Snap.first $t@148@01) ($Snap.second $t@148@01))))
(declare-const z@149@01 $Ref)
(push) ; 2
; [eval] (z in xs)
(assert (Set_in z@149@01 xs@144@01))
(pop) ; 2
(declare-fun inv@150@01 ($Ref) $Ref)
(declare-fun img@151@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((z1@149@01 $Ref) (z2@149@01 $Ref)) (!
  (=>
    (and
      (Set_in z1@149@01 xs@144@01)
      (Set_in z2@149@01 xs@144@01)
      (= z1@149@01 z2@149@01))
    (= z1@149@01 z2@149@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@149@01 $Ref)) (!
  (=>
    (Set_in z@149@01 xs@144@01)
    (and (= (inv@150@01 z@149@01) z@149@01) (img@151@01 z@149@01)))
  :pattern ((Set_in z@149@01 xs@144@01))
  :pattern ((inv@150@01 z@149@01))
  :pattern ((img@151@01 z@149@01))
  :qid |quant-u-5593|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@151@01 r) (Set_in (inv@150@01 r) xs@144@01))
    (= (inv@150@01 r) r))
  :pattern ((inv@150@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((z@149@01 $Ref)) (!
  (=> (Set_in z@149@01 xs@144@01) (not (= z@149@01 $Ref.null)))
  :pattern ((Set_in z@149@01 xs@144@01))
  :pattern ((inv@150@01 z@149@01))
  :pattern ((img@151@01 z@149@01))
  :qid |f-permImpliesNonNull|)))
(assert (=
  ($Snap.second $t@148@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@148@01))
    ($Snap.second ($Snap.second $t@148@01)))))
(assert (= ($Snap.first ($Snap.second $t@148@01)) $Snap.unit))
; [eval] (x in xs)
(assert (Set_in x@145@01 xs@144@01))
(assert (=
  ($Snap.second ($Snap.second $t@148@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@148@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@148@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@148@01))) $Snap.unit))
; [eval] (y in xs)
(assert (Set_in y@146@01 xs@144@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@148@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@148@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@148@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@148@01))))
  $Snap.unit))
; [eval] x != y
(assert (not (= x@145@01 y@146@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@148@01))))
  $Snap.unit))
; [eval] n >= 0
(assert (>= n@147@01 0))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; var v: Int
(declare-const v@152@01 Int)
; [exec]
; v := fun(xs, x, 0)
; [eval] fun(xs, x, 0)
(push) ; 3
(declare-const z@153@01 $Ref)
(push) ; 4
; [eval] (z in xs)
(assert (Set_in z@153@01 xs@144@01))
(pop) ; 4
(declare-fun inv@154@01 ($Ref) $Ref)
(declare-fun img@155@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((z1@153@01 $Ref) (z2@153@01 $Ref)) (!
  (=>
    (and
      (Set_in z1@153@01 xs@144@01)
      (Set_in z2@153@01 xs@144@01)
      (= z1@153@01 z2@153@01))
    (= z1@153@01 z2@153@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@153@01 $Ref)) (!
  (=>
    (Set_in z@153@01 xs@144@01)
    (and (= (inv@154@01 z@153@01) z@153@01) (img@155@01 z@153@01)))
  :pattern ((Set_in z@153@01 xs@144@01))
  :pattern ((inv@154@01 z@153@01))
  :pattern ((img@155@01 z@153@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@155@01 r) (Set_in (inv@154@01 r) xs@144@01))
    (= (inv@154@01 r) r))
  :pattern ((inv@154@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@154@01 r) xs@144@01) (img@155@01 r) (= r (inv@154@01 r)))
    (>
      (ite
        (and (img@151@01 r) (Set_in (inv@150@01 r) xs@144@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-5595|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@156@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@156@01  $FVF<f>)))
      (and (Set_in (inv@154@01 r) xs@144@01) (img@155@01 r)))
    (=>
      (and (Set_in (inv@154@01 r) xs@144@01) (img@155@01 r))
      (Set_in r ($FVF.domain_f (as sm@156@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@156@01  $FVF<f>))))
  :qid |qp.fvfDomDef40|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@154@01 r) xs@144@01) (img@155@01 r))
      (and (img@151@01 r) (Set_in (inv@150@01 r) xs@144@01)))
    (=
      ($FVF.lookup_f (as sm@156@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@148@01)) r)))
  :pattern (($FVF.lookup_f (as sm@156@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@148@01)) r))
  :qid |qp.fvfValDef39|)))
; [eval] (x in xs)
; [eval] n >= 0
(assert (fun%precondition ($Snap.combine
  ($SortWrappers.$FVF<f>To$Snap (as sm@156@01  $FVF<f>))
  ($Snap.combine $Snap.unit $Snap.unit)) xs@144@01 x@145@01 0))
(pop) ; 3
; Joined path conditions
(assert (forall ((z@153@01 $Ref)) (!
  (=>
    (Set_in z@153@01 xs@144@01)
    (and (= (inv@154@01 z@153@01) z@153@01) (img@155@01 z@153@01)))
  :pattern ((Set_in z@153@01 xs@144@01))
  :pattern ((inv@154@01 z@153@01))
  :pattern ((img@155@01 z@153@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@155@01 r) (Set_in (inv@154@01 r) xs@144@01))
    (= (inv@154@01 r) r))
  :pattern ((inv@154@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@156@01  $FVF<f>)))
      (and (Set_in (inv@154@01 r) xs@144@01) (img@155@01 r)))
    (=>
      (and (Set_in (inv@154@01 r) xs@144@01) (img@155@01 r))
      (Set_in r ($FVF.domain_f (as sm@156@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@156@01  $FVF<f>))))
  :qid |qp.fvfDomDef40|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@154@01 r) xs@144@01) (img@155@01 r))
      (and (img@151@01 r) (Set_in (inv@150@01 r) xs@144@01)))
    (=
      ($FVF.lookup_f (as sm@156@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@148@01)) r)))
  :pattern (($FVF.lookup_f (as sm@156@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@148@01)) r))
  :qid |qp.fvfValDef39|)))
(assert (fun%precondition ($Snap.combine
  ($SortWrappers.$FVF<f>To$Snap (as sm@156@01  $FVF<f>))
  ($Snap.combine $Snap.unit $Snap.unit)) xs@144@01 x@145@01 0))
(declare-const v@157@01 Int)
(assert (=
  v@157@01
  (fun ($Snap.combine
    ($SortWrappers.$FVF<f>To$Snap (as sm@156@01  $FVF<f>))
    ($Snap.combine $Snap.unit $Snap.unit)) xs@144@01 x@145@01 0)))
; [exec]
; y.f := 0
; Precomputing data for removing quantified permissions
(define-fun pTaken@158@01 ((r $Ref)) $Perm
  (ite
    (= r y@146@01)
    ($Perm.min
      (ite
        (and (img@151@01 r) (Set_in (inv@150@01 r) xs@144@01))
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
        (and (img@151@01 r) (Set_in (inv@150@01 r) xs@144@01))
        $Perm.Write
        $Perm.No)
      (pTaken@158@01 r))
    $Perm.No)
  
  :qid |quant-u-5597|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@158@01 r) $Perm.No)
  
  :qid |quant-u-5598|))))
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
  (=> (= r y@146@01) (= (- $Perm.Write (pTaken@158@01 r)) $Perm.No))
  
  :qid |quant-u-5599|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@159@01 $FVF<f>)
; Definitional axioms for singleton-FVF's value
(assert (= ($FVF.lookup_f (as sm@159@01  $FVF<f>) y@146@01) 0))
; [exec]
; assert v == fun(xs, x, 0)
; [eval] v == fun(xs, x, 0)
; [eval] fun(xs, x, 0)
(set-option :timeout 0)
(push) ; 3
(declare-const z@160@01 $Ref)
(push) ; 4
; [eval] (z in xs)
(assert (Set_in z@160@01 xs@144@01))
(pop) ; 4
(declare-fun inv@161@01 ($Ref) $Ref)
(declare-fun img@162@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((z1@160@01 $Ref) (z2@160@01 $Ref)) (!
  (=>
    (and
      (Set_in z1@160@01 xs@144@01)
      (Set_in z2@160@01 xs@144@01)
      (= z1@160@01 z2@160@01))
    (= z1@160@01 z2@160@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@160@01 $Ref)) (!
  (=>
    (Set_in z@160@01 xs@144@01)
    (and (= (inv@161@01 z@160@01) z@160@01) (img@162@01 z@160@01)))
  :pattern ((Set_in z@160@01 xs@144@01))
  :pattern ((inv@161@01 z@160@01))
  :pattern ((img@162@01 z@160@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@162@01 r) (Set_in (inv@161@01 r) xs@144@01))
    (= (inv@161@01 r) r))
  :pattern ((inv@161@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@161@01 r) xs@144@01) (img@162@01 r) (= r (inv@161@01 r)))
    (>
      (+
        (ite
          (and (img@151@01 r) (Set_in (inv@150@01 r) xs@144@01))
          (- $Perm.Write (pTaken@158@01 r))
          $Perm.No)
        (ite (= r y@146@01) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-5601|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@163@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@163@01  $FVF<f>)))
      (and (Set_in (inv@161@01 r) xs@144@01) (img@162@01 r)))
    (=>
      (and (Set_in (inv@161@01 r) xs@144@01) (img@162@01 r))
      (Set_in r ($FVF.domain_f (as sm@163@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@163@01  $FVF<f>))))
  :qid |qp.fvfDomDef43|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@161@01 r) xs@144@01) (img@162@01 r)) (= r y@146@01))
    (=
      ($FVF.lookup_f (as sm@163@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@159@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@163@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@159@01  $FVF<f>) r))
  :qid |qp.fvfValDef41|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@161@01 r) xs@144@01) (img@162@01 r))
      (ite
        (and (img@151@01 r) (Set_in (inv@150@01 r) xs@144@01))
        (< $Perm.No (- $Perm.Write (pTaken@158@01 r)))
        false))
    (=
      ($FVF.lookup_f (as sm@163@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@148@01)) r)))
  :pattern (($FVF.lookup_f (as sm@163@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@148@01)) r))
  :qid |qp.fvfValDef42|)))
; [eval] (x in xs)
; [eval] n >= 0
(assert (fun%precondition ($Snap.combine
  ($SortWrappers.$FVF<f>To$Snap (as sm@163@01  $FVF<f>))
  ($Snap.combine $Snap.unit $Snap.unit)) xs@144@01 x@145@01 0))
(pop) ; 3
; Joined path conditions
(assert (forall ((z@160@01 $Ref)) (!
  (=>
    (Set_in z@160@01 xs@144@01)
    (and (= (inv@161@01 z@160@01) z@160@01) (img@162@01 z@160@01)))
  :pattern ((Set_in z@160@01 xs@144@01))
  :pattern ((inv@161@01 z@160@01))
  :pattern ((img@162@01 z@160@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@162@01 r) (Set_in (inv@161@01 r) xs@144@01))
    (= (inv@161@01 r) r))
  :pattern ((inv@161@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@163@01  $FVF<f>)))
      (and (Set_in (inv@161@01 r) xs@144@01) (img@162@01 r)))
    (=>
      (and (Set_in (inv@161@01 r) xs@144@01) (img@162@01 r))
      (Set_in r ($FVF.domain_f (as sm@163@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@163@01  $FVF<f>))))
  :qid |qp.fvfDomDef43|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@161@01 r) xs@144@01) (img@162@01 r)) (= r y@146@01))
    (=
      ($FVF.lookup_f (as sm@163@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@159@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@163@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@159@01  $FVF<f>) r))
  :qid |qp.fvfValDef41|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@161@01 r) xs@144@01) (img@162@01 r))
      (ite
        (and (img@151@01 r) (Set_in (inv@150@01 r) xs@144@01))
        (< $Perm.No (- $Perm.Write (pTaken@158@01 r)))
        false))
    (=
      ($FVF.lookup_f (as sm@163@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@148@01)) r)))
  :pattern (($FVF.lookup_f (as sm@163@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@148@01)) r))
  :qid |qp.fvfValDef42|)))
(assert (fun%precondition ($Snap.combine
  ($SortWrappers.$FVF<f>To$Snap (as sm@163@01  $FVF<f>))
  ($Snap.combine $Snap.unit $Snap.unit)) xs@144@01 x@145@01 0))
(push) ; 3
(assert (not (=
  v@157@01
  (fun ($Snap.combine
    ($SortWrappers.$FVF<f>To$Snap (as sm@163@01  $FVF<f>))
    ($Snap.combine $Snap.unit $Snap.unit)) xs@144@01 x@145@01 0))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  v@157@01
  (fun ($Snap.combine
    ($SortWrappers.$FVF<f>To$Snap (as sm@163@01  $FVF<f>))
    ($Snap.combine $Snap.unit $Snap.unit)) xs@144@01 x@145@01 0)))
(pop) ; 2
(pop) ; 1
; ---------- test04 ----------
(declare-const xs@164@01 Set<$Ref>)
(declare-const ys@165@01 Set<$Ref>)
(declare-const x@166@01 $Ref)
(declare-const y@167@01 $Ref)
(declare-const n@168@01 Int)
(declare-const xs@169@01 Set<$Ref>)
(declare-const ys@170@01 Set<$Ref>)
(declare-const x@171@01 $Ref)
(declare-const y@172@01 $Ref)
(declare-const n@173@01 Int)
(push) ; 1
(declare-const $t@174@01 $Snap)
(assert (= $t@174@01 ($Snap.combine ($Snap.first $t@174@01) ($Snap.second $t@174@01))))
(declare-const z@175@01 $Ref)
(push) ; 2
; [eval] (z in (xs union ys))
; [eval] (xs union ys)
(assert (Set_in z@175@01 (Set_union xs@169@01 ys@170@01)))
(pop) ; 2
(declare-fun inv@176@01 ($Ref) $Ref)
(declare-fun img@177@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((z1@175@01 $Ref) (z2@175@01 $Ref)) (!
  (=>
    (and
      (Set_in z1@175@01 (Set_union xs@169@01 ys@170@01))
      (Set_in z2@175@01 (Set_union xs@169@01 ys@170@01))
      (= z1@175@01 z2@175@01))
    (= z1@175@01 z2@175@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@175@01 $Ref)) (!
  (=>
    (Set_in z@175@01 (Set_union xs@169@01 ys@170@01))
    (and (= (inv@176@01 z@175@01) z@175@01) (img@177@01 z@175@01)))
  :pattern ((Set_in z@175@01 (Set_union xs@169@01 ys@170@01)))
  :pattern ((inv@176@01 z@175@01))
  :pattern ((img@177@01 z@175@01))
  :qid |quant-u-5603|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@177@01 r) (Set_in (inv@176@01 r) (Set_union xs@169@01 ys@170@01)))
    (= (inv@176@01 r) r))
  :pattern ((inv@176@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((z@175@01 $Ref)) (!
  (=>
    (Set_in z@175@01 (Set_union xs@169@01 ys@170@01))
    (not (= z@175@01 $Ref.null)))
  :pattern ((Set_in z@175@01 (Set_union xs@169@01 ys@170@01)))
  :pattern ((inv@176@01 z@175@01))
  :pattern ((img@177@01 z@175@01))
  :qid |f-permImpliesNonNull|)))
(assert (=
  ($Snap.second $t@174@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@174@01))
    ($Snap.second ($Snap.second $t@174@01)))))
(assert (= ($Snap.first ($Snap.second $t@174@01)) $Snap.unit))
; [eval] (x in xs)
(assert (Set_in x@171@01 xs@169@01))
(assert (=
  ($Snap.second ($Snap.second $t@174@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@174@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@174@01))) $Snap.unit))
; [eval] (y in ys)
(assert (Set_in y@172@01 ys@170@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@174@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
  $Snap.unit))
; [eval] !((x in ys))
; [eval] (x in ys)
(assert (not (Set_in x@171@01 ys@170@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))
  $Snap.unit))
; [eval] !((y in xs))
; [eval] (y in xs)
(assert (not (Set_in y@172@01 xs@169@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))
  $Snap.unit))
; [eval] x != null
(assert (not (= x@171@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))))
  $Snap.unit))
; [eval] y != null
(assert (not (= y@172@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))))
  $Snap.unit))
; [eval] n >= 0
(assert (>= n@173@01 0))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; var v: Int
(declare-const v@178@01 Int)
; [exec]
; assert (forall z: Ref ::
;     { (z in (xs union ys)) }
;     { (z in xs) }
;     (z in (xs union ys)) ==> z != null)
; [eval] (forall z: Ref :: { (z in (xs union ys)) } { (z in xs) } (z in (xs union ys)) ==> z != null)
(declare-const z@179@01 $Ref)
(push) ; 3
; [eval] (z in (xs union ys)) ==> z != null
; [eval] (z in (xs union ys))
; [eval] (xs union ys)
(push) ; 4
; [then-branch: 0 | z@179@01 in xs@169@01 ∪ ys@170@01 | live]
; [else-branch: 0 | !(z@179@01 in xs@169@01 ∪ ys@170@01) | live]
(push) ; 5
; [then-branch: 0 | z@179@01 in xs@169@01 ∪ ys@170@01]
(assert (Set_in z@179@01 (Set_union xs@169@01 ys@170@01)))
; [eval] z != null
(pop) ; 5
(push) ; 5
; [else-branch: 0 | !(z@179@01 in xs@169@01 ∪ ys@170@01)]
(assert (not (Set_in z@179@01 (Set_union xs@169@01 ys@170@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (not (Set_in z@179@01 (Set_union xs@169@01 ys@170@01)))
  (Set_in z@179@01 (Set_union xs@169@01 ys@170@01))))
; [eval] (z in xs)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((z@179@01 $Ref)) (!
  (or
    (not (Set_in z@179@01 (Set_union xs@169@01 ys@170@01)))
    (Set_in z@179@01 (Set_union xs@169@01 ys@170@01)))
  :pattern ((Set_in z@179@01 (Set_union xs@169@01 ys@170@01)))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/snapshots2.vpr@94@10@94@89-aux|)))
(assert (forall ((z@179@01 $Ref)) (!
  (or
    (not (Set_in z@179@01 (Set_union xs@169@01 ys@170@01)))
    (Set_in z@179@01 (Set_union xs@169@01 ys@170@01)))
  :pattern ((Set_in z@179@01 xs@169@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/snapshots2.vpr@94@10@94@89-aux|)))
(push) ; 3
(assert (not (forall ((z@179@01 $Ref)) (!
  (=>
    (Set_in z@179@01 (Set_union xs@169@01 ys@170@01))
    (not (= z@179@01 $Ref.null)))
  :pattern ((Set_in z@179@01 (Set_union xs@169@01 ys@170@01)))
  :pattern ((Set_in z@179@01 xs@169@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/snapshots2.vpr@94@10@94@89|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((z@179@01 $Ref)) (!
  (=>
    (Set_in z@179@01 (Set_union xs@169@01 ys@170@01))
    (not (= z@179@01 $Ref.null)))
  :pattern ((Set_in z@179@01 (Set_union xs@169@01 ys@170@01)))
  :pattern ((Set_in z@179@01 xs@169@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/snapshots2.vpr@94@10@94@89|)))
; [exec]
; v := fun(xs, x, n)
; [eval] fun(xs, x, n)
(push) ; 3
(declare-const z@180@01 $Ref)
(push) ; 4
; [eval] (z in xs)
(assert (Set_in z@180@01 xs@169@01))
(pop) ; 4
(declare-fun inv@181@01 ($Ref) $Ref)
(declare-fun img@182@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((z1@180@01 $Ref) (z2@180@01 $Ref)) (!
  (=>
    (and
      (Set_in z1@180@01 xs@169@01)
      (Set_in z2@180@01 xs@169@01)
      (= z1@180@01 z2@180@01))
    (= z1@180@01 z2@180@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@180@01 $Ref)) (!
  (=>
    (Set_in z@180@01 xs@169@01)
    (and (= (inv@181@01 z@180@01) z@180@01) (img@182@01 z@180@01)))
  :pattern ((Set_in z@180@01 xs@169@01))
  :pattern ((inv@181@01 z@180@01))
  :pattern ((img@182@01 z@180@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@182@01 r) (Set_in (inv@181@01 r) xs@169@01))
    (= (inv@181@01 r) r))
  :pattern ((inv@181@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@181@01 r) xs@169@01) (img@182@01 r) (= r (inv@181@01 r)))
    (>
      (ite
        (and
          (img@177@01 r)
          (Set_in (inv@176@01 r) (Set_union xs@169@01 ys@170@01)))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-5605|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@183@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@183@01  $FVF<f>)))
      (and (Set_in (inv@181@01 r) xs@169@01) (img@182@01 r)))
    (=>
      (and (Set_in (inv@181@01 r) xs@169@01) (img@182@01 r))
      (Set_in r ($FVF.domain_f (as sm@183@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@183@01  $FVF<f>))))
  :qid |qp.fvfDomDef45|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@181@01 r) xs@169@01) (img@182@01 r))
      (and
        (img@177@01 r)
        (Set_in (inv@176@01 r) (Set_union xs@169@01 ys@170@01))))
    (=
      ($FVF.lookup_f (as sm@183@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@174@01)) r)))
  :pattern (($FVF.lookup_f (as sm@183@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@174@01)) r))
  :qid |qp.fvfValDef44|)))
; [eval] (x in xs)
; [eval] n >= 0
(assert (fun%precondition ($Snap.combine
  ($SortWrappers.$FVF<f>To$Snap (as sm@183@01  $FVF<f>))
  ($Snap.combine $Snap.unit $Snap.unit)) xs@169@01 x@171@01 n@173@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((z@180@01 $Ref)) (!
  (=>
    (Set_in z@180@01 xs@169@01)
    (and (= (inv@181@01 z@180@01) z@180@01) (img@182@01 z@180@01)))
  :pattern ((Set_in z@180@01 xs@169@01))
  :pattern ((inv@181@01 z@180@01))
  :pattern ((img@182@01 z@180@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@182@01 r) (Set_in (inv@181@01 r) xs@169@01))
    (= (inv@181@01 r) r))
  :pattern ((inv@181@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@183@01  $FVF<f>)))
      (and (Set_in (inv@181@01 r) xs@169@01) (img@182@01 r)))
    (=>
      (and (Set_in (inv@181@01 r) xs@169@01) (img@182@01 r))
      (Set_in r ($FVF.domain_f (as sm@183@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@183@01  $FVF<f>))))
  :qid |qp.fvfDomDef45|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@181@01 r) xs@169@01) (img@182@01 r))
      (and
        (img@177@01 r)
        (Set_in (inv@176@01 r) (Set_union xs@169@01 ys@170@01))))
    (=
      ($FVF.lookup_f (as sm@183@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@174@01)) r)))
  :pattern (($FVF.lookup_f (as sm@183@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@174@01)) r))
  :qid |qp.fvfValDef44|)))
(assert (fun%precondition ($Snap.combine
  ($SortWrappers.$FVF<f>To$Snap (as sm@183@01  $FVF<f>))
  ($Snap.combine $Snap.unit $Snap.unit)) xs@169@01 x@171@01 n@173@01))
(declare-const v@184@01 Int)
(assert (=
  v@184@01
  (fun ($Snap.combine
    ($SortWrappers.$FVF<f>To$Snap (as sm@183@01  $FVF<f>))
    ($Snap.combine $Snap.unit $Snap.unit)) xs@169@01 x@171@01 n@173@01)))
; [exec]
; y.f := 0
; Precomputing data for removing quantified permissions
(define-fun pTaken@185@01 ((r $Ref)) $Perm
  (ite
    (= r y@172@01)
    ($Perm.min
      (ite
        (and
          (img@177@01 r)
          (Set_in (inv@176@01 r) (Set_union xs@169@01 ys@170@01)))
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
        (and
          (img@177@01 r)
          (Set_in (inv@176@01 r) (Set_union xs@169@01 ys@170@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@185@01 r))
    $Perm.No)
  
  :qid |quant-u-5607|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@185@01 r) $Perm.No)
  
  :qid |quant-u-5608|))))
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
  (=> (= r y@172@01) (= (- $Perm.Write (pTaken@185@01 r)) $Perm.No))
  
  :qid |quant-u-5609|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@186@01 $FVF<f>)
; Definitional axioms for singleton-FVF's value
(assert (= ($FVF.lookup_f (as sm@186@01  $FVF<f>) y@172@01) 0))
(pop) ; 2
(pop) ; 1
