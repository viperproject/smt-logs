(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-26 14:37:00
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
(declare-sort Set<Int> 0)
(declare-sort Set<$Ref> 0)
(declare-sort Set<$Snap> 0)
(declare-sort Array_ 0)
(declare-sort $FVF<val> 0)
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
(declare-fun $SortWrappers.Array_To$Snap (Array_) $Snap)
(declare-fun $SortWrappers.$SnapToArray_ ($Snap) Array_)
(assert (forall ((x Array_)) (!
    (= x ($SortWrappers.$SnapToArray_($SortWrappers.Array_To$Snap x)))
    :pattern (($SortWrappers.Array_To$Snap x))
    :qid |$Snap.$SnapToArray_To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Array_To$Snap($SortWrappers.$SnapToArray_ x)))
    :pattern (($SortWrappers.$SnapToArray_ x))
    :qid |$Snap.Array_To$SnapToArray_|
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
; ////////// Symbols
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
(declare-fun loc<Ref> (Array_ Int) $Ref)
(declare-fun len<Int> (Array_) Int)
(declare-fun first<Array> ($Ref) Array_)
(declare-fun second<Int> ($Ref) Int)
; /field_value_functions_declarations.smt2 [val: Int]
(declare-fun $FVF.domain_val ($FVF<val>) Set<$Ref>)
(declare-fun $FVF.lookup_val ($FVF<val> $Ref) Int)
(declare-fun $FVF.after_val ($FVF<val> $FVF<val>) Bool)
(declare-fun $FVF.loc_val (Int $Ref) Bool)
(declare-fun $FVF.perm_val ($FPM $Ref) $Perm)
(declare-const $fvfTOP_val $FVF<val>)
; Declaring symbols related to program functions (from program analysis)
(declare-fun Contains ($Snap Array_ Int Int) Bool)
(declare-fun Contains%limited ($Snap Array_ Int Int) Bool)
(declare-fun Contains%stateless (Array_ Int Int) Bool)
(declare-fun Contains%precondition ($Snap Array_ Int Int) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
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
(assert (forall ((a Array_) (i Int)) (!
  (and (= (first<Array> (loc<Ref> a i)) a) (= (second<Int> (loc<Ref> a i)) i))
  :pattern ((loc<Ref> a i))
  :qid |prog.all_diff|)))
(assert (forall ((a Array_)) (!
  (>= (len<Int> a) 0)
  :pattern ((len<Int> a))
  :qid |prog.length_nonneg|)))
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
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ------------------------------------------------------------
; Begin function- and predicate-related preamble
; Declaring symbols related to program functions (from verification)
(declare-fun inv@5@00 ($Snap Array_ Int Int $Ref) Int)
(declare-fun img@6@00 ($Snap Array_ Int Int $Ref) Bool)
(assert (forall ((s@$ $Snap) (a@0@00 Array_) (v@1@00 Int) (before@2@00 Int)) (!
  (=
    (Contains%limited s@$ a@0@00 v@1@00 before@2@00)
    (Contains s@$ a@0@00 v@1@00 before@2@00))
  :pattern ((Contains s@$ a@0@00 v@1@00 before@2@00))
  :qid |quant-u-18815|)))
(assert (forall ((s@$ $Snap) (a@0@00 Array_) (v@1@00 Int) (before@2@00 Int)) (!
  (Contains%stateless a@0@00 v@1@00 before@2@00)
  :pattern ((Contains%limited s@$ a@0@00 v@1@00 before@2@00))
  :qid |quant-u-18816|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- Replace ----------
(declare-const a@0@01 Array_)
(declare-const left@1@01 Int)
(declare-const right@2@01 Int)
(declare-const from@3@01 Int)
(declare-const to@4@01 Int)
(declare-const a@5@01 Array_)
(declare-const left@6@01 Int)
(declare-const right@7@01 Int)
(declare-const from@8@01 Int)
(declare-const to@9@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@10@01 $Snap)
(assert (= $t@10@01 ($Snap.combine ($Snap.first $t@10@01) ($Snap.second $t@10@01))))
(assert (= ($Snap.first $t@10@01) $Snap.unit))
; [eval] 0 <= left
(assert (<= 0 left@6@01))
(assert (=
  ($Snap.second $t@10@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@10@01))
    ($Snap.second ($Snap.second $t@10@01)))))
(assert (= ($Snap.first ($Snap.second $t@10@01)) $Snap.unit))
; [eval] left < right
(assert (< left@6@01 right@7@01))
(assert (=
  ($Snap.second ($Snap.second $t@10@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@10@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@10@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@10@01))) $Snap.unit))
; [eval] right <= len(a)
; [eval] len(a)
(assert (<= right@7@01 (len<Int> a@5@01)))
(declare-const i@11@01 Int)
(push) ; 2
; [eval] left <= i && i < right
; [eval] left <= i
(push) ; 3
; [then-branch: 0 | !(left@6@01 <= i@11@01) | live]
; [else-branch: 0 | left@6@01 <= i@11@01 | live]
(push) ; 4
; [then-branch: 0 | !(left@6@01 <= i@11@01)]
(assert (not (<= left@6@01 i@11@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 0 | left@6@01 <= i@11@01]
(assert (<= left@6@01 i@11@01))
; [eval] i < right
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= left@6@01 i@11@01) (not (<= left@6@01 i@11@01))))
(assert (and (<= left@6@01 i@11@01) (< i@11@01 right@7@01)))
; [eval] loc(a, i)
(pop) ; 2
(declare-fun inv@12@01 ($Ref) Int)
(declare-fun img@13@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@11@01 Int)) (!
  (=>
    (and (<= left@6@01 i@11@01) (< i@11@01 right@7@01))
    (or (<= left@6@01 i@11@01) (not (<= left@6@01 i@11@01))))
  :pattern ((loc<Ref> a@5@01 i@11@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@11@01 Int) (i2@11@01 Int)) (!
  (=>
    (and
      (and (<= left@6@01 i1@11@01) (< i1@11@01 right@7@01))
      (and (<= left@6@01 i2@11@01) (< i2@11@01 right@7@01))
      (= (loc<Ref> a@5@01 i1@11@01) (loc<Ref> a@5@01 i2@11@01)))
    (= i1@11@01 i2@11@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@11@01 Int)) (!
  (=>
    (and (<= left@6@01 i@11@01) (< i@11@01 right@7@01))
    (and
      (= (inv@12@01 (loc<Ref> a@5@01 i@11@01)) i@11@01)
      (img@13@01 (loc<Ref> a@5@01 i@11@01))))
  :pattern ((loc<Ref> a@5@01 i@11@01))
  :qid |quant-u-18820|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@13@01 r)
      (and (<= left@6@01 (inv@12@01 r)) (< (inv@12@01 r) right@7@01)))
    (= (loc<Ref> a@5@01 (inv@12@01 r)) r))
  :pattern ((inv@12@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@11@01 Int)) (!
  (=>
    (and (<= left@6@01 i@11@01) (< i@11@01 right@7@01))
    (not (= (loc<Ref> a@5@01 i@11@01) $Ref.null)))
  :pattern ((loc<Ref> a@5@01 i@11@01))
  :qid |val-permImpliesNonNull|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@14@01 $Snap)
(assert (= $t@14@01 ($Snap.combine ($Snap.first $t@14@01) ($Snap.second $t@14@01))))
(declare-const i$0@15@01 Int)
(push) ; 3
; [eval] left <= i$0 && i$0 < right
; [eval] left <= i$0
(push) ; 4
; [then-branch: 1 | !(left@6@01 <= i$0@15@01) | live]
; [else-branch: 1 | left@6@01 <= i$0@15@01 | live]
(push) ; 5
; [then-branch: 1 | !(left@6@01 <= i$0@15@01)]
(assert (not (<= left@6@01 i$0@15@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 1 | left@6@01 <= i$0@15@01]
(assert (<= left@6@01 i$0@15@01))
; [eval] i$0 < right
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= left@6@01 i$0@15@01) (not (<= left@6@01 i$0@15@01))))
(assert (and (<= left@6@01 i$0@15@01) (< i$0@15@01 right@7@01)))
; [eval] loc(a, i$0)
(pop) ; 3
(declare-fun inv@16@01 ($Ref) Int)
(declare-fun img@17@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i$0@15@01 Int)) (!
  (=>
    (and (<= left@6@01 i$0@15@01) (< i$0@15@01 right@7@01))
    (or (<= left@6@01 i$0@15@01) (not (<= left@6@01 i$0@15@01))))
  :pattern ((loc<Ref> a@5@01 i$0@15@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i$01@15@01 Int) (i$02@15@01 Int)) (!
  (=>
    (and
      (and (<= left@6@01 i$01@15@01) (< i$01@15@01 right@7@01))
      (and (<= left@6@01 i$02@15@01) (< i$02@15@01 right@7@01))
      (= (loc<Ref> a@5@01 i$01@15@01) (loc<Ref> a@5@01 i$02@15@01)))
    (= i$01@15@01 i$02@15@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i$0@15@01 Int)) (!
  (=>
    (and (<= left@6@01 i$0@15@01) (< i$0@15@01 right@7@01))
    (and
      (= (inv@16@01 (loc<Ref> a@5@01 i$0@15@01)) i$0@15@01)
      (img@17@01 (loc<Ref> a@5@01 i$0@15@01))))
  :pattern ((loc<Ref> a@5@01 i$0@15@01))
  :qid |quant-u-18822|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@17@01 r)
      (and (<= left@6@01 (inv@16@01 r)) (< (inv@16@01 r) right@7@01)))
    (= (loc<Ref> a@5@01 (inv@16@01 r)) r))
  :pattern ((inv@16@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i$0@15@01 Int)) (!
  (=>
    (and (<= left@6@01 i$0@15@01) (< i$0@15@01 right@7@01))
    (not (= (loc<Ref> a@5@01 i$0@15@01) $Ref.null)))
  :pattern ((loc<Ref> a@5@01 i$0@15@01))
  :qid |val-permImpliesNonNull|)))
(assert (=
  ($Snap.second $t@14@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@14@01))
    ($Snap.second ($Snap.second $t@14@01)))))
(assert (= ($Snap.first ($Snap.second $t@14@01)) $Snap.unit))
(assert (= ($Snap.second ($Snap.second $t@14@01)) $Snap.unit))
; [eval] (forall i$1: Int :: { old(loc(a, i$1)) } left <= i$1 && i$1 < right ==> (old(loc(a, i$1).val == from) ? loc(a, i$1).val == to : loc(a, i$1).val == old(loc(a, i$1).val)))
(declare-const i$1@18@01 Int)
(push) ; 3
; [eval] left <= i$1 && i$1 < right ==> (old(loc(a, i$1).val == from) ? loc(a, i$1).val == to : loc(a, i$1).val == old(loc(a, i$1).val))
; [eval] left <= i$1 && i$1 < right
; [eval] left <= i$1
(push) ; 4
; [then-branch: 2 | !(left@6@01 <= i$1@18@01) | live]
; [else-branch: 2 | left@6@01 <= i$1@18@01 | live]
(push) ; 5
; [then-branch: 2 | !(left@6@01 <= i$1@18@01)]
(assert (not (<= left@6@01 i$1@18@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 2 | left@6@01 <= i$1@18@01]
(assert (<= left@6@01 i$1@18@01))
; [eval] i$1 < right
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= left@6@01 i$1@18@01) (not (<= left@6@01 i$1@18@01))))
(push) ; 4
; [then-branch: 3 | left@6@01 <= i$1@18@01 && i$1@18@01 < right@7@01 | live]
; [else-branch: 3 | !(left@6@01 <= i$1@18@01 && i$1@18@01 < right@7@01) | live]
(push) ; 5
; [then-branch: 3 | left@6@01 <= i$1@18@01 && i$1@18@01 < right@7@01]
(assert (and (<= left@6@01 i$1@18@01) (< i$1@18@01 right@7@01)))
; [eval] (old(loc(a, i$1).val == from) ? loc(a, i$1).val == to : loc(a, i$1).val == old(loc(a, i$1).val))
; [eval] old(loc(a, i$1).val == from)
; [eval] loc(a, i$1).val == from
; [eval] loc(a, i$1)
(push) ; 6
(assert (not (and
  (img@13@01 (loc<Ref> a@5@01 i$1@18@01))
  (and
    (<= left@6@01 (inv@12@01 (loc<Ref> a@5@01 i$1@18@01)))
    (< (inv@12@01 (loc<Ref> a@5@01 i$1@18@01)) right@7@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
; [then-branch: 4 | Lookup(val, Second:(Second:(Second:($t@10@01))), loc[Ref](a@5@01, i$1@18@01)) == from@8@01 | live]
; [else-branch: 4 | Lookup(val, Second:(Second:(Second:($t@10@01))), loc[Ref](a@5@01, i$1@18@01)) != from@8@01 | live]
(push) ; 7
; [then-branch: 4 | Lookup(val, Second:(Second:(Second:($t@10@01))), loc[Ref](a@5@01, i$1@18@01)) == from@8@01]
(assert (=
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$1@18@01))
  from@8@01))
; [eval] loc(a, i$1).val == to
; [eval] loc(a, i$1)
(push) ; 8
(assert (not (and
  (img@17@01 (loc<Ref> a@5@01 i$1@18@01))
  (and
    (<= left@6@01 (inv@16@01 (loc<Ref> a@5@01 i$1@18@01)))
    (< (inv@16@01 (loc<Ref> a@5@01 i$1@18@01)) right@7@01)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(push) ; 7
; [else-branch: 4 | Lookup(val, Second:(Second:(Second:($t@10@01))), loc[Ref](a@5@01, i$1@18@01)) != from@8@01]
(assert (not
  (=
    ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$1@18@01))
    from@8@01)))
; [eval] loc(a, i$1).val == old(loc(a, i$1).val)
; [eval] loc(a, i$1)
(push) ; 8
(assert (not (and
  (img@17@01 (loc<Ref> a@5@01 i$1@18@01))
  (and
    (<= left@6@01 (inv@16@01 (loc<Ref> a@5@01 i$1@18@01)))
    (< (inv@16@01 (loc<Ref> a@5@01 i$1@18@01)) right@7@01)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [eval] old(loc(a, i$1).val)
; [eval] loc(a, i$1)
(push) ; 8
(assert (not (and
  (img@13@01 (loc<Ref> a@5@01 i$1@18@01))
  (and
    (<= left@6@01 (inv@12@01 (loc<Ref> a@5@01 i$1@18@01)))
    (< (inv@12@01 (loc<Ref> a@5@01 i$1@18@01)) right@7@01)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$1@18@01))
      from@8@01))
  (=
    ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$1@18@01))
    from@8@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 3 | !(left@6@01 <= i$1@18@01 && i$1@18@01 < right@7@01)]
(assert (not (and (<= left@6@01 i$1@18@01) (< i$1@18@01 right@7@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and (<= left@6@01 i$1@18@01) (< i$1@18@01 right@7@01))
  (and
    (<= left@6@01 i$1@18@01)
    (< i$1@18@01 right@7@01)
    (or
      (not
        (=
          ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$1@18@01))
          from@8@01))
      (=
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$1@18@01))
        from@8@01)))))
; Joined path conditions
(assert (or
  (not (and (<= left@6@01 i$1@18@01) (< i$1@18@01 right@7@01)))
  (and (<= left@6@01 i$1@18@01) (< i$1@18@01 right@7@01))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i$1@18@01 Int)) (!
  (and
    (or (<= left@6@01 i$1@18@01) (not (<= left@6@01 i$1@18@01)))
    (=>
      (and (<= left@6@01 i$1@18@01) (< i$1@18@01 right@7@01))
      (and
        (<= left@6@01 i$1@18@01)
        (< i$1@18@01 right@7@01)
        (or
          (not
            (=
              ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$1@18@01))
              from@8@01))
          (=
            ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$1@18@01))
            from@8@01))))
    (or
      (not (and (<= left@6@01 i$1@18@01) (< i$1@18@01 right@7@01)))
      (and (<= left@6@01 i$1@18@01) (< i$1@18@01 right@7@01))))
  :pattern ((loc<Ref> a@5@01 i$1@18@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/parallel-array-replace/parallel-array-replace.vpr@16@12@16@33-aux|)))
(assert (forall ((i$1@18@01 Int)) (!
  (=>
    (and (<= left@6@01 i$1@18@01) (< i$1@18@01 right@7@01))
    (ite
      (=
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$1@18@01))
        from@8@01)
      (=
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@14@01)) (loc<Ref> a@5@01 i$1@18@01))
        to@9@01)
      (=
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@14@01)) (loc<Ref> a@5@01 i$1@18@01))
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$1@18@01)))))
  :pattern ((loc<Ref> a@5@01 i$1@18@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/parallel-array-replace/parallel-array-replace.vpr@16@12@16@33|)))
(pop) ; 2
(push) ; 2
; [eval] right - left <= 1
; [eval] right - left
(push) ; 3
(set-option :timeout 10)
(assert (not (not (<= (- right@7@01 left@6@01) 1))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (<= (- right@7@01 left@6@01) 1)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 5 | right@7@01 - left@6@01 <= 1 | live]
; [else-branch: 5 | !(right@7@01 - left@6@01 <= 1) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 5 | right@7@01 - left@6@01 <= 1]
(assert (<= (- right@7@01 left@6@01) 1))
; [eval] loc(a, left).val == from
; [eval] loc(a, left)
(push) ; 4
(assert (not (and
  (img@13@01 (loc<Ref> a@5@01 left@6@01))
  (and
    (<= left@6@01 (inv@12@01 (loc<Ref> a@5@01 left@6@01)))
    (< (inv@12@01 (loc<Ref> a@5@01 left@6@01)) right@7@01)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (not
  (=
    ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 left@6@01))
    from@8@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 left@6@01))
  from@8@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 6 | Lookup(val, Second:(Second:(Second:($t@10@01))), loc[Ref](a@5@01, left@6@01)) == from@8@01 | live]
; [else-branch: 6 | Lookup(val, Second:(Second:(Second:($t@10@01))), loc[Ref](a@5@01, left@6@01)) != from@8@01 | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 6 | Lookup(val, Second:(Second:(Second:($t@10@01))), loc[Ref](a@5@01, left@6@01)) == from@8@01]
(assert (=
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 left@6@01))
  from@8@01))
; [exec]
; loc(a, left).val := to
; [eval] loc(a, left)
; Precomputing data for removing quantified permissions
(define-fun pTaken@19@01 ((r $Ref)) $Perm
  (ite
    (= r (loc<Ref> a@5@01 left@6@01))
    ($Perm.min
      (ite
        (and
          (img@13@01 r)
          (and (<= left@6@01 (inv@12@01 r)) (< (inv@12@01 r) right@7@01)))
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
(push) ; 5
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@13@01 r)
          (and (<= left@6@01 (inv@12@01 r)) (< (inv@12@01 r) right@7@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@19@01 r))
    $Perm.No)
  
  :qid |quant-u-18824|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@5@01 left@6@01))
    (= (- $Perm.Write (pTaken@19@01 r)) $Perm.No))
  
  :qid |quant-u-18825|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@20@01 $FVF<val>)
; Definitional axioms for singleton-FVF's value
(assert (=
  ($FVF.lookup_val (as sm@20@01  $FVF<val>) (loc<Ref> a@5@01 left@6@01))
  to@9@01))
(declare-const i$0@21@01 Int)
(set-option :timeout 0)
(push) ; 5
; [eval] left <= i$0 && i$0 < right
; [eval] left <= i$0
(push) ; 6
; [then-branch: 7 | !(left@6@01 <= i$0@21@01) | live]
; [else-branch: 7 | left@6@01 <= i$0@21@01 | live]
(push) ; 7
; [then-branch: 7 | !(left@6@01 <= i$0@21@01)]
(assert (not (<= left@6@01 i$0@21@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 7 | left@6@01 <= i$0@21@01]
(assert (<= left@6@01 i$0@21@01))
; [eval] i$0 < right
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or (<= left@6@01 i$0@21@01) (not (<= left@6@01 i$0@21@01))))
(assert (and (<= left@6@01 i$0@21@01) (< i$0@21@01 right@7@01)))
; [eval] loc(a, i$0)
(pop) ; 5
(declare-fun inv@22@01 ($Ref) Int)
(declare-fun img@23@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i$0@21@01 Int)) (!
  (=>
    (and (<= left@6@01 i$0@21@01) (< i$0@21@01 right@7@01))
    (or (<= left@6@01 i$0@21@01) (not (<= left@6@01 i$0@21@01))))
  :pattern ((loc<Ref> a@5@01 i$0@21@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 5
(assert (not (forall ((i$01@21@01 Int) (i$02@21@01 Int)) (!
  (=>
    (and
      (and (<= left@6@01 i$01@21@01) (< i$01@21@01 right@7@01))
      (and (<= left@6@01 i$02@21@01) (< i$02@21@01 right@7@01))
      (= (loc<Ref> a@5@01 i$01@21@01) (loc<Ref> a@5@01 i$02@21@01)))
    (= i$01@21@01 i$02@21@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i$0@21@01 Int)) (!
  (=>
    (and (<= left@6@01 i$0@21@01) (< i$0@21@01 right@7@01))
    (and
      (= (inv@22@01 (loc<Ref> a@5@01 i$0@21@01)) i$0@21@01)
      (img@23@01 (loc<Ref> a@5@01 i$0@21@01))))
  :pattern ((loc<Ref> a@5@01 i$0@21@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@23@01 r)
      (and (<= left@6@01 (inv@22@01 r)) (< (inv@22@01 r) right@7@01)))
    (= (loc<Ref> a@5@01 (inv@22@01 r)) r))
  :pattern ((inv@22@01 r))
  :qid |val-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@24@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= left@6@01 (inv@22@01 r)) (< (inv@22@01 r) right@7@01))
      (img@23@01 r)
      (= r (loc<Ref> a@5@01 (inv@22@01 r))))
    ($Perm.min
      (ite (= r (loc<Ref> a@5@01 left@6@01)) $Perm.Write $Perm.No)
      $Perm.Write)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 500)
(assert (not (=
  (-
    (ite
      (= (loc<Ref> a@5@01 left@6@01) (loc<Ref> a@5@01 left@6@01))
      $Perm.Write
      $Perm.No)
    (pTaken@24@01 (loc<Ref> a@5@01 left@6@01)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= left@6@01 (inv@22@01 r)) (< (inv@22@01 r) right@7@01))
      (img@23@01 r)
      (= r (loc<Ref> a@5@01 (inv@22@01 r))))
    (= (- $Perm.Write (pTaken@24@01 r)) $Perm.No))
  
  :qid |quant-u-18829|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall i$1: Int :: { old(loc(a, i$1)) } left <= i$1 && i$1 < right ==> (old(loc(a, i$1).val == from) ? loc(a, i$1).val == to : loc(a, i$1).val == old(loc(a, i$1).val)))
(declare-const i$1@25@01 Int)
(set-option :timeout 0)
(push) ; 5
; [eval] left <= i$1 && i$1 < right ==> (old(loc(a, i$1).val == from) ? loc(a, i$1).val == to : loc(a, i$1).val == old(loc(a, i$1).val))
; [eval] left <= i$1 && i$1 < right
; [eval] left <= i$1
(push) ; 6
; [then-branch: 8 | !(left@6@01 <= i$1@25@01) | live]
; [else-branch: 8 | left@6@01 <= i$1@25@01 | live]
(push) ; 7
; [then-branch: 8 | !(left@6@01 <= i$1@25@01)]
(assert (not (<= left@6@01 i$1@25@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 8 | left@6@01 <= i$1@25@01]
(assert (<= left@6@01 i$1@25@01))
; [eval] i$1 < right
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or (<= left@6@01 i$1@25@01) (not (<= left@6@01 i$1@25@01))))
(push) ; 6
; [then-branch: 9 | left@6@01 <= i$1@25@01 && i$1@25@01 < right@7@01 | live]
; [else-branch: 9 | !(left@6@01 <= i$1@25@01 && i$1@25@01 < right@7@01) | live]
(push) ; 7
; [then-branch: 9 | left@6@01 <= i$1@25@01 && i$1@25@01 < right@7@01]
(assert (and (<= left@6@01 i$1@25@01) (< i$1@25@01 right@7@01)))
; [eval] (old(loc(a, i$1).val == from) ? loc(a, i$1).val == to : loc(a, i$1).val == old(loc(a, i$1).val))
; [eval] old(loc(a, i$1).val == from)
; [eval] loc(a, i$1).val == from
; [eval] loc(a, i$1)
(push) ; 8
(assert (not (and
  (img@13@01 (loc<Ref> a@5@01 i$1@25@01))
  (and
    (<= left@6@01 (inv@12@01 (loc<Ref> a@5@01 i$1@25@01)))
    (< (inv@12@01 (loc<Ref> a@5@01 i$1@25@01)) right@7@01)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
; [then-branch: 10 | Lookup(val, Second:(Second:(Second:($t@10@01))), loc[Ref](a@5@01, i$1@25@01)) == from@8@01 | live]
; [else-branch: 10 | Lookup(val, Second:(Second:(Second:($t@10@01))), loc[Ref](a@5@01, i$1@25@01)) != from@8@01 | live]
(push) ; 9
; [then-branch: 10 | Lookup(val, Second:(Second:(Second:($t@10@01))), loc[Ref](a@5@01, i$1@25@01)) == from@8@01]
(assert (=
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$1@25@01))
  from@8@01))
; [eval] loc(a, i$1).val == to
; [eval] loc(a, i$1)
(push) ; 10
(assert (not (= (loc<Ref> a@5@01 i$1@25@01) (loc<Ref> a@5@01 left@6@01))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
(push) ; 9
; [else-branch: 10 | Lookup(val, Second:(Second:(Second:($t@10@01))), loc[Ref](a@5@01, i$1@25@01)) != from@8@01]
(assert (not
  (=
    ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$1@25@01))
    from@8@01)))
; [eval] loc(a, i$1).val == old(loc(a, i$1).val)
; [eval] loc(a, i$1)
(push) ; 10
(assert (not (= (loc<Ref> a@5@01 i$1@25@01) (loc<Ref> a@5@01 left@6@01))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [eval] old(loc(a, i$1).val)
; [eval] loc(a, i$1)
(push) ; 10
(assert (not (and
  (img@13@01 (loc<Ref> a@5@01 i$1@25@01))
  (and
    (<= left@6@01 (inv@12@01 (loc<Ref> a@5@01 i$1@25@01)))
    (< (inv@12@01 (loc<Ref> a@5@01 i$1@25@01)) right@7@01)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$1@25@01))
      from@8@01))
  (=
    ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$1@25@01))
    from@8@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 9 | !(left@6@01 <= i$1@25@01 && i$1@25@01 < right@7@01)]
(assert (not (and (<= left@6@01 i$1@25@01) (< i$1@25@01 right@7@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  (and (<= left@6@01 i$1@25@01) (< i$1@25@01 right@7@01))
  (and
    (<= left@6@01 i$1@25@01)
    (< i$1@25@01 right@7@01)
    (or
      (not
        (=
          ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$1@25@01))
          from@8@01))
      (=
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$1@25@01))
        from@8@01)))))
; Joined path conditions
(assert (or
  (not (and (<= left@6@01 i$1@25@01) (< i$1@25@01 right@7@01)))
  (and (<= left@6@01 i$1@25@01) (< i$1@25@01 right@7@01))))
(pop) ; 5
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i$1@25@01 Int)) (!
  (and
    (or (<= left@6@01 i$1@25@01) (not (<= left@6@01 i$1@25@01)))
    (=>
      (and (<= left@6@01 i$1@25@01) (< i$1@25@01 right@7@01))
      (and
        (<= left@6@01 i$1@25@01)
        (< i$1@25@01 right@7@01)
        (or
          (not
            (=
              ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$1@25@01))
              from@8@01))
          (=
            ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$1@25@01))
            from@8@01))))
    (or
      (not (and (<= left@6@01 i$1@25@01) (< i$1@25@01 right@7@01)))
      (and (<= left@6@01 i$1@25@01) (< i$1@25@01 right@7@01))))
  :pattern ((loc<Ref> a@5@01 i$1@25@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/parallel-array-replace/parallel-array-replace.vpr@16@12@16@33-aux|)))
(push) ; 5
(assert (not (forall ((i$1@25@01 Int)) (!
  (=>
    (and (<= left@6@01 i$1@25@01) (< i$1@25@01 right@7@01))
    (ite
      (=
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$1@25@01))
        from@8@01)
      (=
        ($FVF.lookup_val (as sm@20@01  $FVF<val>) (loc<Ref> a@5@01 i$1@25@01))
        to@9@01)
      (=
        ($FVF.lookup_val (as sm@20@01  $FVF<val>) (loc<Ref> a@5@01 i$1@25@01))
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$1@25@01)))))
  :pattern ((loc<Ref> a@5@01 i$1@25@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/parallel-array-replace/parallel-array-replace.vpr@16@12@16@33|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i$1@25@01 Int)) (!
  (=>
    (and (<= left@6@01 i$1@25@01) (< i$1@25@01 right@7@01))
    (ite
      (=
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$1@25@01))
        from@8@01)
      (=
        ($FVF.lookup_val (as sm@20@01  $FVF<val>) (loc<Ref> a@5@01 i$1@25@01))
        to@9@01)
      (=
        ($FVF.lookup_val (as sm@20@01  $FVF<val>) (loc<Ref> a@5@01 i$1@25@01))
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$1@25@01)))))
  :pattern ((loc<Ref> a@5@01 i$1@25@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/parallel-array-replace/parallel-array-replace.vpr@16@12@16@33|)))
(pop) ; 4
(push) ; 4
; [else-branch: 6 | Lookup(val, Second:(Second:(Second:($t@10@01))), loc[Ref](a@5@01, left@6@01)) != from@8@01]
(assert (not
  (=
    ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 left@6@01))
    from@8@01)))
(pop) ; 4
; [eval] !(loc(a, left).val == from)
; [eval] loc(a, left).val == from
; [eval] loc(a, left)
(push) ; 4
(assert (not (and
  (img@13@01 (loc<Ref> a@5@01 left@6@01))
  (and
    (<= left@6@01 (inv@12@01 (loc<Ref> a@5@01 left@6@01)))
    (< (inv@12@01 (loc<Ref> a@5@01 left@6@01)) right@7@01)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 left@6@01))
  from@8@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not
  (=
    ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 left@6@01))
    from@8@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 11 | Lookup(val, Second:(Second:(Second:($t@10@01))), loc[Ref](a@5@01, left@6@01)) != from@8@01 | live]
; [else-branch: 11 | Lookup(val, Second:(Second:(Second:($t@10@01))), loc[Ref](a@5@01, left@6@01)) == from@8@01 | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 11 | Lookup(val, Second:(Second:(Second:($t@10@01))), loc[Ref](a@5@01, left@6@01)) != from@8@01]
(assert (not
  (=
    ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 left@6@01))
    from@8@01)))
(declare-const i$0@26@01 Int)
(push) ; 5
; [eval] left <= i$0 && i$0 < right
; [eval] left <= i$0
(push) ; 6
; [then-branch: 12 | !(left@6@01 <= i$0@26@01) | live]
; [else-branch: 12 | left@6@01 <= i$0@26@01 | live]
(push) ; 7
; [then-branch: 12 | !(left@6@01 <= i$0@26@01)]
(assert (not (<= left@6@01 i$0@26@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 12 | left@6@01 <= i$0@26@01]
(assert (<= left@6@01 i$0@26@01))
; [eval] i$0 < right
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or (<= left@6@01 i$0@26@01) (not (<= left@6@01 i$0@26@01))))
(assert (and (<= left@6@01 i$0@26@01) (< i$0@26@01 right@7@01)))
; [eval] loc(a, i$0)
(pop) ; 5
(declare-fun inv@27@01 ($Ref) Int)
(declare-fun img@28@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i$0@26@01 Int)) (!
  (=>
    (and (<= left@6@01 i$0@26@01) (< i$0@26@01 right@7@01))
    (or (<= left@6@01 i$0@26@01) (not (<= left@6@01 i$0@26@01))))
  :pattern ((loc<Ref> a@5@01 i$0@26@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 5
(assert (not (forall ((i$01@26@01 Int) (i$02@26@01 Int)) (!
  (=>
    (and
      (and (<= left@6@01 i$01@26@01) (< i$01@26@01 right@7@01))
      (and (<= left@6@01 i$02@26@01) (< i$02@26@01 right@7@01))
      (= (loc<Ref> a@5@01 i$01@26@01) (loc<Ref> a@5@01 i$02@26@01)))
    (= i$01@26@01 i$02@26@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i$0@26@01 Int)) (!
  (=>
    (and (<= left@6@01 i$0@26@01) (< i$0@26@01 right@7@01))
    (and
      (= (inv@27@01 (loc<Ref> a@5@01 i$0@26@01)) i$0@26@01)
      (img@28@01 (loc<Ref> a@5@01 i$0@26@01))))
  :pattern ((loc<Ref> a@5@01 i$0@26@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@28@01 r)
      (and (<= left@6@01 (inv@27@01 r)) (< (inv@27@01 r) right@7@01)))
    (= (loc<Ref> a@5@01 (inv@27@01 r)) r))
  :pattern ((inv@27@01 r))
  :qid |val-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@29@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= left@6@01 (inv@27@01 r)) (< (inv@27@01 r) right@7@01))
      (img@28@01 r)
      (= r (loc<Ref> a@5@01 (inv@27@01 r))))
    ($Perm.min
      (ite
        (and
          (img@13@01 r)
          (and (<= left@6@01 (inv@12@01 r)) (< (inv@12@01 r) right@7@01)))
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
(push) ; 5
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@13@01 r)
          (and (<= left@6@01 (inv@12@01 r)) (< (inv@12@01 r) right@7@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@29@01 r))
    $Perm.No)
  
  :qid |quant-u-18832|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= left@6@01 (inv@27@01 r)) (< (inv@27@01 r) right@7@01))
      (img@28@01 r)
      (= r (loc<Ref> a@5@01 (inv@27@01 r))))
    (= (- $Perm.Write (pTaken@29@01 r)) $Perm.No))
  
  :qid |quant-u-18833|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall i$1: Int :: { old(loc(a, i$1)) } left <= i$1 && i$1 < right ==> (old(loc(a, i$1).val == from) ? loc(a, i$1).val == to : loc(a, i$1).val == old(loc(a, i$1).val)))
(declare-const i$1@30@01 Int)
(set-option :timeout 0)
(push) ; 5
; [eval] left <= i$1 && i$1 < right ==> (old(loc(a, i$1).val == from) ? loc(a, i$1).val == to : loc(a, i$1).val == old(loc(a, i$1).val))
; [eval] left <= i$1 && i$1 < right
; [eval] left <= i$1
(push) ; 6
; [then-branch: 13 | !(left@6@01 <= i$1@30@01) | live]
; [else-branch: 13 | left@6@01 <= i$1@30@01 | live]
(push) ; 7
; [then-branch: 13 | !(left@6@01 <= i$1@30@01)]
(assert (not (<= left@6@01 i$1@30@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 13 | left@6@01 <= i$1@30@01]
(assert (<= left@6@01 i$1@30@01))
; [eval] i$1 < right
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or (<= left@6@01 i$1@30@01) (not (<= left@6@01 i$1@30@01))))
(push) ; 6
; [then-branch: 14 | left@6@01 <= i$1@30@01 && i$1@30@01 < right@7@01 | live]
; [else-branch: 14 | !(left@6@01 <= i$1@30@01 && i$1@30@01 < right@7@01) | live]
(push) ; 7
; [then-branch: 14 | left@6@01 <= i$1@30@01 && i$1@30@01 < right@7@01]
(assert (and (<= left@6@01 i$1@30@01) (< i$1@30@01 right@7@01)))
; [eval] (old(loc(a, i$1).val == from) ? loc(a, i$1).val == to : loc(a, i$1).val == old(loc(a, i$1).val))
; [eval] old(loc(a, i$1).val == from)
; [eval] loc(a, i$1).val == from
; [eval] loc(a, i$1)
(push) ; 8
(assert (not (and
  (img@13@01 (loc<Ref> a@5@01 i$1@30@01))
  (and
    (<= left@6@01 (inv@12@01 (loc<Ref> a@5@01 i$1@30@01)))
    (< (inv@12@01 (loc<Ref> a@5@01 i$1@30@01)) right@7@01)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
; [then-branch: 15 | Lookup(val, Second:(Second:(Second:($t@10@01))), loc[Ref](a@5@01, i$1@30@01)) == from@8@01 | live]
; [else-branch: 15 | Lookup(val, Second:(Second:(Second:($t@10@01))), loc[Ref](a@5@01, i$1@30@01)) != from@8@01 | live]
(push) ; 9
; [then-branch: 15 | Lookup(val, Second:(Second:(Second:($t@10@01))), loc[Ref](a@5@01, i$1@30@01)) == from@8@01]
(assert (=
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$1@30@01))
  from@8@01))
; [eval] loc(a, i$1).val == to
; [eval] loc(a, i$1)
(push) ; 10
(assert (not (and
  (img@13@01 (loc<Ref> a@5@01 i$1@30@01))
  (and
    (<= left@6@01 (inv@12@01 (loc<Ref> a@5@01 i$1@30@01)))
    (< (inv@12@01 (loc<Ref> a@5@01 i$1@30@01)) right@7@01)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
(push) ; 9
; [else-branch: 15 | Lookup(val, Second:(Second:(Second:($t@10@01))), loc[Ref](a@5@01, i$1@30@01)) != from@8@01]
(assert (not
  (=
    ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$1@30@01))
    from@8@01)))
; [eval] loc(a, i$1).val == old(loc(a, i$1).val)
; [eval] loc(a, i$1)
(push) ; 10
(assert (not (and
  (img@13@01 (loc<Ref> a@5@01 i$1@30@01))
  (and
    (<= left@6@01 (inv@12@01 (loc<Ref> a@5@01 i$1@30@01)))
    (< (inv@12@01 (loc<Ref> a@5@01 i$1@30@01)) right@7@01)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [eval] old(loc(a, i$1).val)
; [eval] loc(a, i$1)
(push) ; 10
(assert (not (and
  (img@13@01 (loc<Ref> a@5@01 i$1@30@01))
  (and
    (<= left@6@01 (inv@12@01 (loc<Ref> a@5@01 i$1@30@01)))
    (< (inv@12@01 (loc<Ref> a@5@01 i$1@30@01)) right@7@01)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$1@30@01))
      from@8@01))
  (=
    ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$1@30@01))
    from@8@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 14 | !(left@6@01 <= i$1@30@01 && i$1@30@01 < right@7@01)]
(assert (not (and (<= left@6@01 i$1@30@01) (< i$1@30@01 right@7@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  (and (<= left@6@01 i$1@30@01) (< i$1@30@01 right@7@01))
  (and
    (<= left@6@01 i$1@30@01)
    (< i$1@30@01 right@7@01)
    (or
      (not
        (=
          ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$1@30@01))
          from@8@01))
      (=
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$1@30@01))
        from@8@01)))))
; Joined path conditions
(assert (or
  (not (and (<= left@6@01 i$1@30@01) (< i$1@30@01 right@7@01)))
  (and (<= left@6@01 i$1@30@01) (< i$1@30@01 right@7@01))))
(pop) ; 5
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i$1@30@01 Int)) (!
  (and
    (or (<= left@6@01 i$1@30@01) (not (<= left@6@01 i$1@30@01)))
    (=>
      (and (<= left@6@01 i$1@30@01) (< i$1@30@01 right@7@01))
      (and
        (<= left@6@01 i$1@30@01)
        (< i$1@30@01 right@7@01)
        (or
          (not
            (=
              ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$1@30@01))
              from@8@01))
          (=
            ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$1@30@01))
            from@8@01))))
    (or
      (not (and (<= left@6@01 i$1@30@01) (< i$1@30@01 right@7@01)))
      (and (<= left@6@01 i$1@30@01) (< i$1@30@01 right@7@01))))
  :pattern ((loc<Ref> a@5@01 i$1@30@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/parallel-array-replace/parallel-array-replace.vpr@16@12@16@33-aux|)))
(push) ; 5
(assert (not (forall ((i$1@30@01 Int)) (!
  (=>
    (and (<= left@6@01 i$1@30@01) (< i$1@30@01 right@7@01))
    (ite
      (=
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$1@30@01))
        from@8@01)
      (=
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$1@30@01))
        to@9@01)
      true))
  :pattern ((loc<Ref> a@5@01 i$1@30@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/parallel-array-replace/parallel-array-replace.vpr@16@12@16@33|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i$1@30@01 Int)) (!
  (=>
    (and (<= left@6@01 i$1@30@01) (< i$1@30@01 right@7@01))
    (ite
      (=
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$1@30@01))
        from@8@01)
      (=
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$1@30@01))
        to@9@01)
      true))
  :pattern ((loc<Ref> a@5@01 i$1@30@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/parallel-array-replace/parallel-array-replace.vpr@16@12@16@33|)))
(pop) ; 4
(push) ; 4
; [else-branch: 11 | Lookup(val, Second:(Second:(Second:($t@10@01))), loc[Ref](a@5@01, left@6@01)) == from@8@01]
(assert (=
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 left@6@01))
  from@8@01))
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 5 | !(right@7@01 - left@6@01 <= 1)]
(assert (not (<= (- right@7@01 left@6@01) 1)))
(pop) ; 3
; [eval] !(right - left <= 1)
; [eval] right - left <= 1
; [eval] right - left
(push) ; 3
(set-option :timeout 10)
(assert (not (<= (- right@7@01 left@6@01) 1)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (<= (- right@7@01 left@6@01) 1))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 16 | !(right@7@01 - left@6@01 <= 1) | live]
; [else-branch: 16 | right@7@01 - left@6@01 <= 1 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 16 | !(right@7@01 - left@6@01 <= 1)]
(assert (not (<= (- right@7@01 left@6@01) 1)))
; [exec]
; var mid: Int
(declare-const mid@31@01 Int)
; [exec]
; mid := left + (right - left) \ 2
; [eval] left + (right - left) \ 2
; [eval] (right - left) \ 2
; [eval] right - left
(declare-const mid@32@01 Int)
(assert (= mid@32@01 (+ left@6@01 (div (- right@7@01 left@6@01) 2))))
; [exec]
; exhale 0 <= left && (left < mid && mid <= len(a))
; [eval] 0 <= left
; [eval] left < mid
(push) ; 4
(assert (not (< left@6@01 mid@32@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< left@6@01 mid@32@01))
; [eval] mid <= len(a)
; [eval] len(a)
(push) ; 4
(assert (not (<= mid@32@01 (len<Int> a@5@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (<= mid@32@01 (len<Int> a@5@01)))
; [exec]
; exhale (forall i$2: Int ::left <= i$2 && i$2 < mid ==>
;     acc(loc(a, i$2).val, write))
(declare-const i$2@33@01 Int)
(push) ; 4
; [eval] left <= i$2 && i$2 < mid
; [eval] left <= i$2
(push) ; 5
; [then-branch: 17 | !(left@6@01 <= i$2@33@01) | live]
; [else-branch: 17 | left@6@01 <= i$2@33@01 | live]
(push) ; 6
; [then-branch: 17 | !(left@6@01 <= i$2@33@01)]
(assert (not (<= left@6@01 i$2@33@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 17 | left@6@01 <= i$2@33@01]
(assert (<= left@6@01 i$2@33@01))
; [eval] i$2 < mid
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= left@6@01 i$2@33@01) (not (<= left@6@01 i$2@33@01))))
(assert (and (<= left@6@01 i$2@33@01) (< i$2@33@01 mid@32@01)))
; [eval] loc(a, i$2)
(pop) ; 4
(declare-fun inv@34@01 ($Ref) Int)
(declare-fun img@35@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i$2@33@01 Int)) (!
  (=>
    (and (<= left@6@01 i$2@33@01) (< i$2@33@01 mid@32@01))
    (or (<= left@6@01 i$2@33@01) (not (<= left@6@01 i$2@33@01))))
  :pattern ((loc<Ref> a@5@01 i$2@33@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i$21@33@01 Int) (i$22@33@01 Int)) (!
  (=>
    (and
      (and (<= left@6@01 i$21@33@01) (< i$21@33@01 mid@32@01))
      (and (<= left@6@01 i$22@33@01) (< i$22@33@01 mid@32@01))
      (= (loc<Ref> a@5@01 i$21@33@01) (loc<Ref> a@5@01 i$22@33@01)))
    (= i$21@33@01 i$22@33@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i$2@33@01 Int)) (!
  (=>
    (and (<= left@6@01 i$2@33@01) (< i$2@33@01 mid@32@01))
    (and
      (= (inv@34@01 (loc<Ref> a@5@01 i$2@33@01)) i$2@33@01)
      (img@35@01 (loc<Ref> a@5@01 i$2@33@01))))
  :pattern ((loc<Ref> a@5@01 i$2@33@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@35@01 r)
      (and (<= left@6@01 (inv@34@01 r)) (< (inv@34@01 r) mid@32@01)))
    (= (loc<Ref> a@5@01 (inv@34@01 r)) r))
  :pattern ((inv@34@01 r))
  :qid |val-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@36@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= left@6@01 (inv@34@01 r)) (< (inv@34@01 r) mid@32@01))
      (img@35@01 r)
      (= r (loc<Ref> a@5@01 (inv@34@01 r))))
    ($Perm.min
      (ite
        (and
          (img@13@01 r)
          (and (<= left@6@01 (inv@12@01 r)) (< (inv@12@01 r) right@7@01)))
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
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@13@01 r)
          (and (<= left@6@01 (inv@12@01 r)) (< (inv@12@01 r) right@7@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@36@01 r))
    $Perm.No)
  
  :qid |quant-u-18836|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@36@01 r) $Perm.No)
  
  :qid |quant-u-18837|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= left@6@01 (inv@34@01 r)) (< (inv@34@01 r) mid@32@01))
      (img@35@01 r)
      (= r (loc<Ref> a@5@01 (inv@34@01 r))))
    (= (- $Perm.Write (pTaken@36@01 r)) $Perm.No))
  
  :qid |quant-u-18838|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; exhale 0 <= mid && (mid < right && right <= len(a))
; [eval] 0 <= mid
(set-option :timeout 0)
(push) ; 4
(assert (not (<= 0 mid@32@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 mid@32@01))
; [eval] mid < right
(push) ; 4
(assert (not (< mid@32@01 right@7@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< mid@32@01 right@7@01))
; [eval] right <= len(a)
; [eval] len(a)
; [exec]
; exhale (forall i$3: Int ::mid <= i$3 && i$3 < right ==>
;     acc(loc(a, i$3).val, write))
(declare-const i$3@37@01 Int)
(push) ; 4
; [eval] mid <= i$3 && i$3 < right
; [eval] mid <= i$3
(push) ; 5
; [then-branch: 18 | !(mid@32@01 <= i$3@37@01) | live]
; [else-branch: 18 | mid@32@01 <= i$3@37@01 | live]
(push) ; 6
; [then-branch: 18 | !(mid@32@01 <= i$3@37@01)]
(assert (not (<= mid@32@01 i$3@37@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 18 | mid@32@01 <= i$3@37@01]
(assert (<= mid@32@01 i$3@37@01))
; [eval] i$3 < right
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= mid@32@01 i$3@37@01) (not (<= mid@32@01 i$3@37@01))))
(assert (and (<= mid@32@01 i$3@37@01) (< i$3@37@01 right@7@01)))
; [eval] loc(a, i$3)
(pop) ; 4
(declare-fun inv@38@01 ($Ref) Int)
(declare-fun img@39@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i$3@37@01 Int)) (!
  (=>
    (and (<= mid@32@01 i$3@37@01) (< i$3@37@01 right@7@01))
    (or (<= mid@32@01 i$3@37@01) (not (<= mid@32@01 i$3@37@01))))
  :pattern ((loc<Ref> a@5@01 i$3@37@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i$31@37@01 Int) (i$32@37@01 Int)) (!
  (=>
    (and
      (and (<= mid@32@01 i$31@37@01) (< i$31@37@01 right@7@01))
      (and (<= mid@32@01 i$32@37@01) (< i$32@37@01 right@7@01))
      (= (loc<Ref> a@5@01 i$31@37@01) (loc<Ref> a@5@01 i$32@37@01)))
    (= i$31@37@01 i$32@37@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i$3@37@01 Int)) (!
  (=>
    (and (<= mid@32@01 i$3@37@01) (< i$3@37@01 right@7@01))
    (and
      (= (inv@38@01 (loc<Ref> a@5@01 i$3@37@01)) i$3@37@01)
      (img@39@01 (loc<Ref> a@5@01 i$3@37@01))))
  :pattern ((loc<Ref> a@5@01 i$3@37@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@39@01 r)
      (and (<= mid@32@01 (inv@38@01 r)) (< (inv@38@01 r) right@7@01)))
    (= (loc<Ref> a@5@01 (inv@38@01 r)) r))
  :pattern ((inv@38@01 r))
  :qid |val-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@40@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= mid@32@01 (inv@38@01 r)) (< (inv@38@01 r) right@7@01))
      (img@39@01 r)
      (= r (loc<Ref> a@5@01 (inv@38@01 r))))
    ($Perm.min
      (ite
        (and
          (img@13@01 r)
          (and (<= left@6@01 (inv@12@01 r)) (< (inv@12@01 r) right@7@01)))
        (- $Perm.Write (pTaken@36@01 r))
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
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@13@01 r)
          (and (<= left@6@01 (inv@12@01 r)) (< (inv@12@01 r) right@7@01)))
        (- $Perm.Write (pTaken@36@01 r))
        $Perm.No)
      (pTaken@40@01 r))
    $Perm.No)
  
  :qid |quant-u-18841|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= mid@32@01 (inv@38@01 r)) (< (inv@38@01 r) right@7@01))
      (img@39@01 r)
      (= r (loc<Ref> a@5@01 (inv@38@01 r))))
    (= (- $Perm.Write (pTaken@40@01 r)) $Perm.No))
  
  :qid |quant-u-18842|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; inhale (forall i$4: Int ::left <= i$4 && i$4 < mid ==>
;     acc(loc(a, i$4).val, write)) &&
;   true
(declare-const $t@41@01 $Snap)
(assert (= $t@41@01 ($Snap.combine ($Snap.first $t@41@01) ($Snap.second $t@41@01))))
(declare-const i$4@42@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] left <= i$4 && i$4 < mid
; [eval] left <= i$4
(push) ; 5
; [then-branch: 19 | !(left@6@01 <= i$4@42@01) | live]
; [else-branch: 19 | left@6@01 <= i$4@42@01 | live]
(push) ; 6
; [then-branch: 19 | !(left@6@01 <= i$4@42@01)]
(assert (not (<= left@6@01 i$4@42@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 19 | left@6@01 <= i$4@42@01]
(assert (<= left@6@01 i$4@42@01))
; [eval] i$4 < mid
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= left@6@01 i$4@42@01) (not (<= left@6@01 i$4@42@01))))
(assert (and (<= left@6@01 i$4@42@01) (< i$4@42@01 mid@32@01)))
; [eval] loc(a, i$4)
(pop) ; 4
(declare-fun inv@43@01 ($Ref) Int)
(declare-fun img@44@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i$4@42@01 Int)) (!
  (=>
    (and (<= left@6@01 i$4@42@01) (< i$4@42@01 mid@32@01))
    (or (<= left@6@01 i$4@42@01) (not (<= left@6@01 i$4@42@01))))
  :pattern ((loc<Ref> a@5@01 i$4@42@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i$41@42@01 Int) (i$42@42@01 Int)) (!
  (=>
    (and
      (and (<= left@6@01 i$41@42@01) (< i$41@42@01 mid@32@01))
      (and (<= left@6@01 i$42@42@01) (< i$42@42@01 mid@32@01))
      (= (loc<Ref> a@5@01 i$41@42@01) (loc<Ref> a@5@01 i$42@42@01)))
    (= i$41@42@01 i$42@42@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i$4@42@01 Int)) (!
  (=>
    (and (<= left@6@01 i$4@42@01) (< i$4@42@01 mid@32@01))
    (and
      (= (inv@43@01 (loc<Ref> a@5@01 i$4@42@01)) i$4@42@01)
      (img@44@01 (loc<Ref> a@5@01 i$4@42@01))))
  :pattern ((loc<Ref> a@5@01 i$4@42@01))
  :qid |quant-u-18844|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@44@01 r)
      (and (<= left@6@01 (inv@43@01 r)) (< (inv@43@01 r) mid@32@01)))
    (= (loc<Ref> a@5@01 (inv@43@01 r)) r))
  :pattern ((inv@43@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i$4@42@01 Int)) (!
  (=>
    (and (<= left@6@01 i$4@42@01) (< i$4@42@01 mid@32@01))
    (not (= (loc<Ref> a@5@01 i$4@42@01) $Ref.null)))
  :pattern ((loc<Ref> a@5@01 i$4@42@01))
  :qid |val-permImpliesNonNull|)))
(assert (= ($Snap.second $t@41@01) $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall i$5: Int ::
;     { old(loc(a, i$5)) }
;     left <= i$5 && i$5 < mid ==>
;     (old(loc(a, i$5).val == from) ?
;       loc(a, i$5).val == to :
;       loc(a, i$5).val == old(loc(a, i$5).val)))
(declare-const $t@45@01 $Snap)
(assert (= $t@45@01 $Snap.unit))
; [eval] (forall i$5: Int :: { old(loc(a, i$5)) } left <= i$5 && i$5 < mid ==> (old(loc(a, i$5).val == from) ? loc(a, i$5).val == to : loc(a, i$5).val == old(loc(a, i$5).val)))
(declare-const i$5@46@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] left <= i$5 && i$5 < mid ==> (old(loc(a, i$5).val == from) ? loc(a, i$5).val == to : loc(a, i$5).val == old(loc(a, i$5).val))
; [eval] left <= i$5 && i$5 < mid
; [eval] left <= i$5
(push) ; 5
; [then-branch: 20 | !(left@6@01 <= i$5@46@01) | live]
; [else-branch: 20 | left@6@01 <= i$5@46@01 | live]
(push) ; 6
; [then-branch: 20 | !(left@6@01 <= i$5@46@01)]
(assert (not (<= left@6@01 i$5@46@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 20 | left@6@01 <= i$5@46@01]
(assert (<= left@6@01 i$5@46@01))
; [eval] i$5 < mid
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= left@6@01 i$5@46@01) (not (<= left@6@01 i$5@46@01))))
(push) ; 5
; [then-branch: 21 | left@6@01 <= i$5@46@01 && i$5@46@01 < mid@32@01 | live]
; [else-branch: 21 | !(left@6@01 <= i$5@46@01 && i$5@46@01 < mid@32@01) | live]
(push) ; 6
; [then-branch: 21 | left@6@01 <= i$5@46@01 && i$5@46@01 < mid@32@01]
(assert (and (<= left@6@01 i$5@46@01) (< i$5@46@01 mid@32@01)))
; [eval] (old(loc(a, i$5).val == from) ? loc(a, i$5).val == to : loc(a, i$5).val == old(loc(a, i$5).val))
; [eval] old(loc(a, i$5).val == from)
; [eval] loc(a, i$5).val == from
; [eval] loc(a, i$5)
(push) ; 7
(assert (not (and
  (img@13@01 (loc<Ref> a@5@01 i$5@46@01))
  (and
    (<= left@6@01 (inv@12@01 (loc<Ref> a@5@01 i$5@46@01)))
    (< (inv@12@01 (loc<Ref> a@5@01 i$5@46@01)) right@7@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
; [then-branch: 22 | Lookup(val, Second:(Second:(Second:($t@10@01))), loc[Ref](a@5@01, i$5@46@01)) == from@8@01 | live]
; [else-branch: 22 | Lookup(val, Second:(Second:(Second:($t@10@01))), loc[Ref](a@5@01, i$5@46@01)) != from@8@01 | live]
(push) ; 8
; [then-branch: 22 | Lookup(val, Second:(Second:(Second:($t@10@01))), loc[Ref](a@5@01, i$5@46@01)) == from@8@01]
(assert (=
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$5@46@01))
  from@8@01))
; [eval] loc(a, i$5).val == to
; [eval] loc(a, i$5)
(push) ; 9
(assert (not (and
  (img@44@01 (loc<Ref> a@5@01 i$5@46@01))
  (and
    (<= left@6@01 (inv@43@01 (loc<Ref> a@5@01 i$5@46@01)))
    (< (inv@43@01 (loc<Ref> a@5@01 i$5@46@01)) mid@32@01)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
(push) ; 8
; [else-branch: 22 | Lookup(val, Second:(Second:(Second:($t@10@01))), loc[Ref](a@5@01, i$5@46@01)) != from@8@01]
(assert (not
  (=
    ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$5@46@01))
    from@8@01)))
; [eval] loc(a, i$5).val == old(loc(a, i$5).val)
; [eval] loc(a, i$5)
(push) ; 9
(assert (not (and
  (img@44@01 (loc<Ref> a@5@01 i$5@46@01))
  (and
    (<= left@6@01 (inv@43@01 (loc<Ref> a@5@01 i$5@46@01)))
    (< (inv@43@01 (loc<Ref> a@5@01 i$5@46@01)) mid@32@01)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] old(loc(a, i$5).val)
; [eval] loc(a, i$5)
(push) ; 9
(assert (not (and
  (img@13@01 (loc<Ref> a@5@01 i$5@46@01))
  (and
    (<= left@6@01 (inv@12@01 (loc<Ref> a@5@01 i$5@46@01)))
    (< (inv@12@01 (loc<Ref> a@5@01 i$5@46@01)) right@7@01)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$5@46@01))
      from@8@01))
  (=
    ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$5@46@01))
    from@8@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 21 | !(left@6@01 <= i$5@46@01 && i$5@46@01 < mid@32@01)]
(assert (not (and (<= left@6@01 i$5@46@01) (< i$5@46@01 mid@32@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and (<= left@6@01 i$5@46@01) (< i$5@46@01 mid@32@01))
  (and
    (<= left@6@01 i$5@46@01)
    (< i$5@46@01 mid@32@01)
    (or
      (not
        (=
          ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$5@46@01))
          from@8@01))
      (=
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$5@46@01))
        from@8@01)))))
; Joined path conditions
(assert (or
  (not (and (<= left@6@01 i$5@46@01) (< i$5@46@01 mid@32@01)))
  (and (<= left@6@01 i$5@46@01) (< i$5@46@01 mid@32@01))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i$5@46@01 Int)) (!
  (and
    (or (<= left@6@01 i$5@46@01) (not (<= left@6@01 i$5@46@01)))
    (=>
      (and (<= left@6@01 i$5@46@01) (< i$5@46@01 mid@32@01))
      (and
        (<= left@6@01 i$5@46@01)
        (< i$5@46@01 mid@32@01)
        (or
          (not
            (=
              ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$5@46@01))
              from@8@01))
          (=
            ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$5@46@01))
            from@8@01))))
    (or
      (not (and (<= left@6@01 i$5@46@01) (< i$5@46@01 mid@32@01)))
      (and (<= left@6@01 i$5@46@01) (< i$5@46@01 mid@32@01))))
  :pattern ((loc<Ref> a@5@01 i$5@46@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/parallel-array-replace/parallel-array-replace.vpr@35@12@35@31-aux|)))
(assert (forall ((i$5@46@01 Int)) (!
  (=>
    (and (<= left@6@01 i$5@46@01) (< i$5@46@01 mid@32@01))
    (ite
      (=
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$5@46@01))
        from@8@01)
      (=
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@41@01)) (loc<Ref> a@5@01 i$5@46@01))
        to@9@01)
      (=
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@41@01)) (loc<Ref> a@5@01 i$5@46@01))
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$5@46@01)))))
  :pattern ((loc<Ref> a@5@01 i$5@46@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/parallel-array-replace/parallel-array-replace.vpr@35@12@35@31|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall i$6: Int ::mid <= i$6 && i$6 < right ==>
;     acc(loc(a, i$6).val, write)) &&
;   true
(declare-const $t@47@01 $Snap)
(assert (= $t@47@01 ($Snap.combine ($Snap.first $t@47@01) ($Snap.second $t@47@01))))
(declare-const i$6@48@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] mid <= i$6 && i$6 < right
; [eval] mid <= i$6
(push) ; 5
; [then-branch: 23 | !(mid@32@01 <= i$6@48@01) | live]
; [else-branch: 23 | mid@32@01 <= i$6@48@01 | live]
(push) ; 6
; [then-branch: 23 | !(mid@32@01 <= i$6@48@01)]
(assert (not (<= mid@32@01 i$6@48@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 23 | mid@32@01 <= i$6@48@01]
(assert (<= mid@32@01 i$6@48@01))
; [eval] i$6 < right
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= mid@32@01 i$6@48@01) (not (<= mid@32@01 i$6@48@01))))
(assert (and (<= mid@32@01 i$6@48@01) (< i$6@48@01 right@7@01)))
; [eval] loc(a, i$6)
(pop) ; 4
(declare-fun inv@49@01 ($Ref) Int)
(declare-fun img@50@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i$6@48@01 Int)) (!
  (=>
    (and (<= mid@32@01 i$6@48@01) (< i$6@48@01 right@7@01))
    (or (<= mid@32@01 i$6@48@01) (not (<= mid@32@01 i$6@48@01))))
  :pattern ((loc<Ref> a@5@01 i$6@48@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i$61@48@01 Int) (i$62@48@01 Int)) (!
  (=>
    (and
      (and (<= mid@32@01 i$61@48@01) (< i$61@48@01 right@7@01))
      (and (<= mid@32@01 i$62@48@01) (< i$62@48@01 right@7@01))
      (= (loc<Ref> a@5@01 i$61@48@01) (loc<Ref> a@5@01 i$62@48@01)))
    (= i$61@48@01 i$62@48@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i$6@48@01 Int)) (!
  (=>
    (and (<= mid@32@01 i$6@48@01) (< i$6@48@01 right@7@01))
    (and
      (= (inv@49@01 (loc<Ref> a@5@01 i$6@48@01)) i$6@48@01)
      (img@50@01 (loc<Ref> a@5@01 i$6@48@01))))
  :pattern ((loc<Ref> a@5@01 i$6@48@01))
  :qid |quant-u-18846|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@50@01 r)
      (and (<= mid@32@01 (inv@49@01 r)) (< (inv@49@01 r) right@7@01)))
    (= (loc<Ref> a@5@01 (inv@49@01 r)) r))
  :pattern ((inv@49@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i$6@48@01 Int)) (!
  (=>
    (and (<= mid@32@01 i$6@48@01) (< i$6@48@01 right@7@01))
    (not (= (loc<Ref> a@5@01 i$6@48@01) $Ref.null)))
  :pattern ((loc<Ref> a@5@01 i$6@48@01))
  :qid |val-permImpliesNonNull|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (loc<Ref> a@5@01 i$6@48@01) (loc<Ref> a@5@01 i$4@42@01))
    (=
      (and
        (img@50@01 r)
        (and (<= mid@32@01 (inv@49@01 r)) (< (inv@49@01 r) right@7@01)))
      (and
        (img@44@01 r)
        (and (<= left@6@01 (inv@43@01 r)) (< (inv@43@01 r) mid@32@01)))))
  
  :qid |quant-u-18847|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (= ($Snap.second $t@47@01) $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall i$7: Int ::
;     { old(loc(a, i$7)) }
;     mid <= i$7 && i$7 < right ==>
;     (old(loc(a, i$7).val == from) ?
;       loc(a, i$7).val == to :
;       loc(a, i$7).val == old(loc(a, i$7).val)))
(declare-const $t@51@01 $Snap)
(assert (= $t@51@01 $Snap.unit))
; [eval] (forall i$7: Int :: { old(loc(a, i$7)) } mid <= i$7 && i$7 < right ==> (old(loc(a, i$7).val == from) ? loc(a, i$7).val == to : loc(a, i$7).val == old(loc(a, i$7).val)))
(declare-const i$7@52@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] mid <= i$7 && i$7 < right ==> (old(loc(a, i$7).val == from) ? loc(a, i$7).val == to : loc(a, i$7).val == old(loc(a, i$7).val))
; [eval] mid <= i$7 && i$7 < right
; [eval] mid <= i$7
(push) ; 5
; [then-branch: 24 | !(mid@32@01 <= i$7@52@01) | live]
; [else-branch: 24 | mid@32@01 <= i$7@52@01 | live]
(push) ; 6
; [then-branch: 24 | !(mid@32@01 <= i$7@52@01)]
(assert (not (<= mid@32@01 i$7@52@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 24 | mid@32@01 <= i$7@52@01]
(assert (<= mid@32@01 i$7@52@01))
; [eval] i$7 < right
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= mid@32@01 i$7@52@01) (not (<= mid@32@01 i$7@52@01))))
(push) ; 5
; [then-branch: 25 | mid@32@01 <= i$7@52@01 && i$7@52@01 < right@7@01 | live]
; [else-branch: 25 | !(mid@32@01 <= i$7@52@01 && i$7@52@01 < right@7@01) | live]
(push) ; 6
; [then-branch: 25 | mid@32@01 <= i$7@52@01 && i$7@52@01 < right@7@01]
(assert (and (<= mid@32@01 i$7@52@01) (< i$7@52@01 right@7@01)))
; [eval] (old(loc(a, i$7).val == from) ? loc(a, i$7).val == to : loc(a, i$7).val == old(loc(a, i$7).val))
; [eval] old(loc(a, i$7).val == from)
; [eval] loc(a, i$7).val == from
; [eval] loc(a, i$7)
(push) ; 7
(assert (not (and
  (img@13@01 (loc<Ref> a@5@01 i$7@52@01))
  (and
    (<= left@6@01 (inv@12@01 (loc<Ref> a@5@01 i$7@52@01)))
    (< (inv@12@01 (loc<Ref> a@5@01 i$7@52@01)) right@7@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
; [then-branch: 26 | Lookup(val, Second:(Second:(Second:($t@10@01))), loc[Ref](a@5@01, i$7@52@01)) == from@8@01 | live]
; [else-branch: 26 | Lookup(val, Second:(Second:(Second:($t@10@01))), loc[Ref](a@5@01, i$7@52@01)) != from@8@01 | live]
(push) ; 8
; [then-branch: 26 | Lookup(val, Second:(Second:(Second:($t@10@01))), loc[Ref](a@5@01, i$7@52@01)) == from@8@01]
(assert (=
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$7@52@01))
  from@8@01))
; [eval] loc(a, i$7).val == to
; [eval] loc(a, i$7)
(declare-const sm@53@01 $FVF<val>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@44@01 r)
      (and (<= left@6@01 (inv@43@01 r)) (< (inv@43@01 r) mid@32@01)))
    (=
      ($FVF.lookup_val (as sm@53@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@41@01)) r)))
  :pattern (($FVF.lookup_val (as sm@53@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@41@01)) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@50@01 r)
      (and (<= mid@32@01 (inv@49@01 r)) (< (inv@49@01 r) right@7@01)))
    (=
      ($FVF.lookup_val (as sm@53@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@47@01)) r)))
  :pattern (($FVF.lookup_val (as sm@53@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@47@01)) r))
  :qid |qp.fvfValDef1|)))
(declare-const pm@54@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@54@01  $FPM) r)
    (+
      (ite
        (and
          (img@44@01 r)
          (and (<= left@6@01 (inv@43@01 r)) (< (inv@43@01 r) mid@32@01)))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@50@01 r)
          (and (<= mid@32@01 (inv@49@01 r)) (< (inv@49@01 r) right@7@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@54@01  $FPM) r))
  :qid |qp.resPrmSumDef2|)))
(push) ; 9
(assert (not (< $Perm.No ($FVF.perm_val (as pm@54@01  $FPM) (loc<Ref> a@5@01 i$7@52@01)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
(push) ; 8
; [else-branch: 26 | Lookup(val, Second:(Second:(Second:($t@10@01))), loc[Ref](a@5@01, i$7@52@01)) != from@8@01]
(assert (not
  (=
    ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$7@52@01))
    from@8@01)))
; [eval] loc(a, i$7).val == old(loc(a, i$7).val)
; [eval] loc(a, i$7)
(declare-const sm@55@01 $FVF<val>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@44@01 r)
      (and (<= left@6@01 (inv@43@01 r)) (< (inv@43@01 r) mid@32@01)))
    (=
      ($FVF.lookup_val (as sm@55@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@41@01)) r)))
  :pattern (($FVF.lookup_val (as sm@55@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@41@01)) r))
  :qid |qp.fvfValDef3|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@50@01 r)
      (and (<= mid@32@01 (inv@49@01 r)) (< (inv@49@01 r) right@7@01)))
    (=
      ($FVF.lookup_val (as sm@55@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@47@01)) r)))
  :pattern (($FVF.lookup_val (as sm@55@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@47@01)) r))
  :qid |qp.fvfValDef4|)))
(declare-const pm@56@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@56@01  $FPM) r)
    (+
      (ite
        (and
          (img@44@01 r)
          (and (<= left@6@01 (inv@43@01 r)) (< (inv@43@01 r) mid@32@01)))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@50@01 r)
          (and (<= mid@32@01 (inv@49@01 r)) (< (inv@49@01 r) right@7@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@56@01  $FPM) r))
  :qid |qp.resPrmSumDef5|)))
(push) ; 9
(assert (not (< $Perm.No ($FVF.perm_val (as pm@56@01  $FPM) (loc<Ref> a@5@01 i$7@52@01)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] old(loc(a, i$7).val)
; [eval] loc(a, i$7)
(push) ; 9
(assert (not (and
  (img@13@01 (loc<Ref> a@5@01 i$7@52@01))
  (and
    (<= left@6@01 (inv@12@01 (loc<Ref> a@5@01 i$7@52@01)))
    (< (inv@12@01 (loc<Ref> a@5@01 i$7@52@01)) right@7@01)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@44@01 r)
      (and (<= left@6@01 (inv@43@01 r)) (< (inv@43@01 r) mid@32@01)))
    (=
      ($FVF.lookup_val (as sm@53@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@41@01)) r)))
  :pattern (($FVF.lookup_val (as sm@53@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@41@01)) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@50@01 r)
      (and (<= mid@32@01 (inv@49@01 r)) (< (inv@49@01 r) right@7@01)))
    (=
      ($FVF.lookup_val (as sm@53@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@47@01)) r)))
  :pattern (($FVF.lookup_val (as sm@53@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@47@01)) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@54@01  $FPM) r)
    (+
      (ite
        (and
          (img@44@01 r)
          (and (<= left@6@01 (inv@43@01 r)) (< (inv@43@01 r) mid@32@01)))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@50@01 r)
          (and (<= mid@32@01 (inv@49@01 r)) (< (inv@49@01 r) right@7@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@54@01  $FPM) r))
  :qid |qp.resPrmSumDef2|)))
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@44@01 r)
      (and (<= left@6@01 (inv@43@01 r)) (< (inv@43@01 r) mid@32@01)))
    (=
      ($FVF.lookup_val (as sm@55@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@41@01)) r)))
  :pattern (($FVF.lookup_val (as sm@55@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@41@01)) r))
  :qid |qp.fvfValDef3|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@50@01 r)
      (and (<= mid@32@01 (inv@49@01 r)) (< (inv@49@01 r) right@7@01)))
    (=
      ($FVF.lookup_val (as sm@55@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@47@01)) r)))
  :pattern (($FVF.lookup_val (as sm@55@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@47@01)) r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@56@01  $FPM) r)
    (+
      (ite
        (and
          (img@44@01 r)
          (and (<= left@6@01 (inv@43@01 r)) (< (inv@43@01 r) mid@32@01)))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@50@01 r)
          (and (<= mid@32@01 (inv@49@01 r)) (< (inv@49@01 r) right@7@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@56@01  $FPM) r))
  :qid |qp.resPrmSumDef5|)))
(assert (or
  (not
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$7@52@01))
      from@8@01))
  (=
    ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$7@52@01))
    from@8@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 25 | !(mid@32@01 <= i$7@52@01 && i$7@52@01 < right@7@01)]
(assert (not (and (<= mid@32@01 i$7@52@01) (< i$7@52@01 right@7@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@44@01 r)
      (and (<= left@6@01 (inv@43@01 r)) (< (inv@43@01 r) mid@32@01)))
    (=
      ($FVF.lookup_val (as sm@53@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@41@01)) r)))
  :pattern (($FVF.lookup_val (as sm@53@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@41@01)) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@50@01 r)
      (and (<= mid@32@01 (inv@49@01 r)) (< (inv@49@01 r) right@7@01)))
    (=
      ($FVF.lookup_val (as sm@53@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@47@01)) r)))
  :pattern (($FVF.lookup_val (as sm@53@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@47@01)) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@54@01  $FPM) r)
    (+
      (ite
        (and
          (img@44@01 r)
          (and (<= left@6@01 (inv@43@01 r)) (< (inv@43@01 r) mid@32@01)))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@50@01 r)
          (and (<= mid@32@01 (inv@49@01 r)) (< (inv@49@01 r) right@7@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@54@01  $FPM) r))
  :qid |qp.resPrmSumDef2|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@44@01 r)
      (and (<= left@6@01 (inv@43@01 r)) (< (inv@43@01 r) mid@32@01)))
    (=
      ($FVF.lookup_val (as sm@55@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@41@01)) r)))
  :pattern (($FVF.lookup_val (as sm@55@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@41@01)) r))
  :qid |qp.fvfValDef3|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@50@01 r)
      (and (<= mid@32@01 (inv@49@01 r)) (< (inv@49@01 r) right@7@01)))
    (=
      ($FVF.lookup_val (as sm@55@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@47@01)) r)))
  :pattern (($FVF.lookup_val (as sm@55@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@47@01)) r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@56@01  $FPM) r)
    (+
      (ite
        (and
          (img@44@01 r)
          (and (<= left@6@01 (inv@43@01 r)) (< (inv@43@01 r) mid@32@01)))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@50@01 r)
          (and (<= mid@32@01 (inv@49@01 r)) (< (inv@49@01 r) right@7@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@56@01  $FPM) r))
  :qid |qp.resPrmSumDef5|)))
(assert (=>
  (and (<= mid@32@01 i$7@52@01) (< i$7@52@01 right@7@01))
  (and
    (<= mid@32@01 i$7@52@01)
    (< i$7@52@01 right@7@01)
    (or
      (not
        (=
          ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$7@52@01))
          from@8@01))
      (=
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$7@52@01))
        from@8@01)))))
; Joined path conditions
(assert (or
  (not (and (<= mid@32@01 i$7@52@01) (< i$7@52@01 right@7@01)))
  (and (<= mid@32@01 i$7@52@01) (< i$7@52@01 right@7@01))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@44@01 r)
      (and (<= left@6@01 (inv@43@01 r)) (< (inv@43@01 r) mid@32@01)))
    (=
      ($FVF.lookup_val (as sm@53@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@41@01)) r)))
  :pattern (($FVF.lookup_val (as sm@53@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@41@01)) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@50@01 r)
      (and (<= mid@32@01 (inv@49@01 r)) (< (inv@49@01 r) right@7@01)))
    (=
      ($FVF.lookup_val (as sm@53@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@47@01)) r)))
  :pattern (($FVF.lookup_val (as sm@53@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@47@01)) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@54@01  $FPM) r)
    (+
      (ite
        (and
          (img@44@01 r)
          (and (<= left@6@01 (inv@43@01 r)) (< (inv@43@01 r) mid@32@01)))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@50@01 r)
          (and (<= mid@32@01 (inv@49@01 r)) (< (inv@49@01 r) right@7@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@54@01  $FPM) r))
  :qid |qp.resPrmSumDef2|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@44@01 r)
      (and (<= left@6@01 (inv@43@01 r)) (< (inv@43@01 r) mid@32@01)))
    (=
      ($FVF.lookup_val (as sm@55@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@41@01)) r)))
  :pattern (($FVF.lookup_val (as sm@55@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@41@01)) r))
  :qid |qp.fvfValDef3|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@50@01 r)
      (and (<= mid@32@01 (inv@49@01 r)) (< (inv@49@01 r) right@7@01)))
    (=
      ($FVF.lookup_val (as sm@55@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@47@01)) r)))
  :pattern (($FVF.lookup_val (as sm@55@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@47@01)) r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@56@01  $FPM) r)
    (+
      (ite
        (and
          (img@44@01 r)
          (and (<= left@6@01 (inv@43@01 r)) (< (inv@43@01 r) mid@32@01)))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@50@01 r)
          (and (<= mid@32@01 (inv@49@01 r)) (< (inv@49@01 r) right@7@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@56@01  $FPM) r))
  :qid |qp.resPrmSumDef5|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i$7@52@01 Int)) (!
  (and
    (or (<= mid@32@01 i$7@52@01) (not (<= mid@32@01 i$7@52@01)))
    (=>
      (and (<= mid@32@01 i$7@52@01) (< i$7@52@01 right@7@01))
      (and
        (<= mid@32@01 i$7@52@01)
        (< i$7@52@01 right@7@01)
        (or
          (not
            (=
              ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$7@52@01))
              from@8@01))
          (=
            ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$7@52@01))
            from@8@01))))
    (or
      (not (and (<= mid@32@01 i$7@52@01) (< i$7@52@01 right@7@01)))
      (and (<= mid@32@01 i$7@52@01) (< i$7@52@01 right@7@01))))
  :pattern ((loc<Ref> a@5@01 i$7@52@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/parallel-array-replace/parallel-array-replace.vpr@39@12@39@32-aux|)))
(assert (forall ((i$7@52@01 Int)) (!
  (=>
    (and (<= mid@32@01 i$7@52@01) (< i$7@52@01 right@7@01))
    (ite
      (=
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$7@52@01))
        from@8@01)
      (=
        ($FVF.lookup_val (as sm@53@01  $FVF<val>) (loc<Ref> a@5@01 i$7@52@01))
        to@9@01)
      (=
        ($FVF.lookup_val (as sm@55@01  $FVF<val>) (loc<Ref> a@5@01 i$7@52@01))
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$7@52@01)))))
  :pattern ((loc<Ref> a@5@01 i$7@52@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/parallel-array-replace/parallel-array-replace.vpr@39@12@39@32|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
(declare-const i$0@57@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] left <= i$0 && i$0 < right
; [eval] left <= i$0
(push) ; 5
; [then-branch: 27 | !(left@6@01 <= i$0@57@01) | live]
; [else-branch: 27 | left@6@01 <= i$0@57@01 | live]
(push) ; 6
; [then-branch: 27 | !(left@6@01 <= i$0@57@01)]
(assert (not (<= left@6@01 i$0@57@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 27 | left@6@01 <= i$0@57@01]
(assert (<= left@6@01 i$0@57@01))
; [eval] i$0 < right
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= left@6@01 i$0@57@01) (not (<= left@6@01 i$0@57@01))))
(assert (and (<= left@6@01 i$0@57@01) (< i$0@57@01 right@7@01)))
; [eval] loc(a, i$0)
(pop) ; 4
(declare-fun inv@58@01 ($Ref) Int)
(declare-fun img@59@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i$0@57@01 Int)) (!
  (=>
    (and (<= left@6@01 i$0@57@01) (< i$0@57@01 right@7@01))
    (or (<= left@6@01 i$0@57@01) (not (<= left@6@01 i$0@57@01))))
  :pattern ((loc<Ref> a@5@01 i$0@57@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i$01@57@01 Int) (i$02@57@01 Int)) (!
  (=>
    (and
      (and (<= left@6@01 i$01@57@01) (< i$01@57@01 right@7@01))
      (and (<= left@6@01 i$02@57@01) (< i$02@57@01 right@7@01))
      (= (loc<Ref> a@5@01 i$01@57@01) (loc<Ref> a@5@01 i$02@57@01)))
    (= i$01@57@01 i$02@57@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i$0@57@01 Int)) (!
  (=>
    (and (<= left@6@01 i$0@57@01) (< i$0@57@01 right@7@01))
    (and
      (= (inv@58@01 (loc<Ref> a@5@01 i$0@57@01)) i$0@57@01)
      (img@59@01 (loc<Ref> a@5@01 i$0@57@01))))
  :pattern ((loc<Ref> a@5@01 i$0@57@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@59@01 r)
      (and (<= left@6@01 (inv@58@01 r)) (< (inv@58@01 r) right@7@01)))
    (= (loc<Ref> a@5@01 (inv@58@01 r)) r))
  :pattern ((inv@58@01 r))
  :qid |val-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@60@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= left@6@01 (inv@58@01 r)) (< (inv@58@01 r) right@7@01))
      (img@59@01 r)
      (= r (loc<Ref> a@5@01 (inv@58@01 r))))
    ($Perm.min
      (ite
        (and
          (img@44@01 r)
          (and (<= left@6@01 (inv@43@01 r)) (< (inv@43@01 r) mid@32@01)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@61@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= left@6@01 (inv@58@01 r)) (< (inv@58@01 r) right@7@01))
      (img@59@01 r)
      (= r (loc<Ref> a@5@01 (inv@58@01 r))))
    ($Perm.min
      (ite
        (and
          (img@50@01 r)
          (and (<= mid@32@01 (inv@49@01 r)) (< (inv@49@01 r) right@7@01)))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@60@01 r)))
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
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@44@01 r)
          (and (<= left@6@01 (inv@43@01 r)) (< (inv@43@01 r) mid@32@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@60@01 r))
    $Perm.No)
  
  :qid |quant-u-18850|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= left@6@01 (inv@58@01 r)) (< (inv@58@01 r) right@7@01))
      (img@59@01 r)
      (= r (loc<Ref> a@5@01 (inv@58@01 r))))
    (= (- $Perm.Write (pTaken@60@01 r)) $Perm.No))
  
  :qid |quant-u-18851|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@50@01 r)
          (and (<= mid@32@01 (inv@49@01 r)) (< (inv@49@01 r) right@7@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@61@01 r))
    $Perm.No)
  
  :qid |quant-u-18852|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= left@6@01 (inv@58@01 r)) (< (inv@58@01 r) right@7@01))
      (img@59@01 r)
      (= r (loc<Ref> a@5@01 (inv@58@01 r))))
    (= (- (- $Perm.Write (pTaken@60@01 r)) (pTaken@61@01 r)) $Perm.No))
  
  :qid |quant-u-18853|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall i$1: Int :: { old(loc(a, i$1)) } left <= i$1 && i$1 < right ==> (old(loc(a, i$1).val == from) ? loc(a, i$1).val == to : loc(a, i$1).val == old(loc(a, i$1).val)))
(declare-const i$1@62@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] left <= i$1 && i$1 < right ==> (old(loc(a, i$1).val == from) ? loc(a, i$1).val == to : loc(a, i$1).val == old(loc(a, i$1).val))
; [eval] left <= i$1 && i$1 < right
; [eval] left <= i$1
(push) ; 5
; [then-branch: 28 | !(left@6@01 <= i$1@62@01) | live]
; [else-branch: 28 | left@6@01 <= i$1@62@01 | live]
(push) ; 6
; [then-branch: 28 | !(left@6@01 <= i$1@62@01)]
(assert (not (<= left@6@01 i$1@62@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 28 | left@6@01 <= i$1@62@01]
(assert (<= left@6@01 i$1@62@01))
; [eval] i$1 < right
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= left@6@01 i$1@62@01) (not (<= left@6@01 i$1@62@01))))
(push) ; 5
; [then-branch: 29 | left@6@01 <= i$1@62@01 && i$1@62@01 < right@7@01 | live]
; [else-branch: 29 | !(left@6@01 <= i$1@62@01 && i$1@62@01 < right@7@01) | live]
(push) ; 6
; [then-branch: 29 | left@6@01 <= i$1@62@01 && i$1@62@01 < right@7@01]
(assert (and (<= left@6@01 i$1@62@01) (< i$1@62@01 right@7@01)))
; [eval] (old(loc(a, i$1).val == from) ? loc(a, i$1).val == to : loc(a, i$1).val == old(loc(a, i$1).val))
; [eval] old(loc(a, i$1).val == from)
; [eval] loc(a, i$1).val == from
; [eval] loc(a, i$1)
(push) ; 7
(assert (not (and
  (img@13@01 (loc<Ref> a@5@01 i$1@62@01))
  (and
    (<= left@6@01 (inv@12@01 (loc<Ref> a@5@01 i$1@62@01)))
    (< (inv@12@01 (loc<Ref> a@5@01 i$1@62@01)) right@7@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
; [then-branch: 30 | Lookup(val, Second:(Second:(Second:($t@10@01))), loc[Ref](a@5@01, i$1@62@01)) == from@8@01 | live]
; [else-branch: 30 | Lookup(val, Second:(Second:(Second:($t@10@01))), loc[Ref](a@5@01, i$1@62@01)) != from@8@01 | live]
(push) ; 8
; [then-branch: 30 | Lookup(val, Second:(Second:(Second:($t@10@01))), loc[Ref](a@5@01, i$1@62@01)) == from@8@01]
(assert (=
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$1@62@01))
  from@8@01))
; [eval] loc(a, i$1).val == to
; [eval] loc(a, i$1)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@44@01 r)
        (and (<= left@6@01 (inv@43@01 r)) (< (inv@43@01 r) mid@32@01)))
      (=
        ($FVF.lookup_val (as sm@55@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@41@01)) r)))
    :pattern (($FVF.lookup_val (as sm@55@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@41@01)) r))
    :qid |qp.fvfValDef3|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@50@01 r)
        (and (<= mid@32@01 (inv@49@01 r)) (< (inv@49@01 r) right@7@01)))
      (=
        ($FVF.lookup_val (as sm@55@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@47@01)) r)))
    :pattern (($FVF.lookup_val (as sm@55@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@47@01)) r))
    :qid |qp.fvfValDef4|))))
(push) ; 9
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@44@01 (loc<Ref> a@5@01 i$1@62@01))
        (and
          (<= left@6@01 (inv@43@01 (loc<Ref> a@5@01 i$1@62@01)))
          (< (inv@43@01 (loc<Ref> a@5@01 i$1@62@01)) mid@32@01)))
      $Perm.Write
      $Perm.No)
    (ite
      (and
        (img@50@01 (loc<Ref> a@5@01 i$1@62@01))
        (and
          (<= mid@32@01 (inv@49@01 (loc<Ref> a@5@01 i$1@62@01)))
          (< (inv@49@01 (loc<Ref> a@5@01 i$1@62@01)) right@7@01)))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
(push) ; 8
; [else-branch: 30 | Lookup(val, Second:(Second:(Second:($t@10@01))), loc[Ref](a@5@01, i$1@62@01)) != from@8@01]
(assert (not
  (=
    ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$1@62@01))
    from@8@01)))
; [eval] loc(a, i$1).val == old(loc(a, i$1).val)
; [eval] loc(a, i$1)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@44@01 r)
        (and (<= left@6@01 (inv@43@01 r)) (< (inv@43@01 r) mid@32@01)))
      (=
        ($FVF.lookup_val (as sm@55@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@41@01)) r)))
    :pattern (($FVF.lookup_val (as sm@55@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@41@01)) r))
    :qid |qp.fvfValDef3|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@50@01 r)
        (and (<= mid@32@01 (inv@49@01 r)) (< (inv@49@01 r) right@7@01)))
      (=
        ($FVF.lookup_val (as sm@55@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@47@01)) r)))
    :pattern (($FVF.lookup_val (as sm@55@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@47@01)) r))
    :qid |qp.fvfValDef4|))))
(push) ; 9
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@44@01 (loc<Ref> a@5@01 i$1@62@01))
        (and
          (<= left@6@01 (inv@43@01 (loc<Ref> a@5@01 i$1@62@01)))
          (< (inv@43@01 (loc<Ref> a@5@01 i$1@62@01)) mid@32@01)))
      $Perm.Write
      $Perm.No)
    (ite
      (and
        (img@50@01 (loc<Ref> a@5@01 i$1@62@01))
        (and
          (<= mid@32@01 (inv@49@01 (loc<Ref> a@5@01 i$1@62@01)))
          (< (inv@49@01 (loc<Ref> a@5@01 i$1@62@01)) right@7@01)))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] old(loc(a, i$1).val)
; [eval] loc(a, i$1)
(push) ; 9
(assert (not (and
  (img@13@01 (loc<Ref> a@5@01 i$1@62@01))
  (and
    (<= left@6@01 (inv@12@01 (loc<Ref> a@5@01 i$1@62@01)))
    (< (inv@12@01 (loc<Ref> a@5@01 i$1@62@01)) right@7@01)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@44@01 r)
      (and (<= left@6@01 (inv@43@01 r)) (< (inv@43@01 r) mid@32@01)))
    (=
      ($FVF.lookup_val (as sm@55@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@41@01)) r)))
  :pattern (($FVF.lookup_val (as sm@55@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@41@01)) r))
  :qid |qp.fvfValDef3|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@50@01 r)
      (and (<= mid@32@01 (inv@49@01 r)) (< (inv@49@01 r) right@7@01)))
    (=
      ($FVF.lookup_val (as sm@55@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@47@01)) r)))
  :pattern (($FVF.lookup_val (as sm@55@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@47@01)) r))
  :qid |qp.fvfValDef4|)))
; Joined path conditions
(assert (or
  (not
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$1@62@01))
      from@8@01))
  (=
    ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$1@62@01))
    from@8@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 29 | !(left@6@01 <= i$1@62@01 && i$1@62@01 < right@7@01)]
(assert (not (and (<= left@6@01 i$1@62@01) (< i$1@62@01 right@7@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@44@01 r)
      (and (<= left@6@01 (inv@43@01 r)) (< (inv@43@01 r) mid@32@01)))
    (=
      ($FVF.lookup_val (as sm@55@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@41@01)) r)))
  :pattern (($FVF.lookup_val (as sm@55@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@41@01)) r))
  :qid |qp.fvfValDef3|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@50@01 r)
      (and (<= mid@32@01 (inv@49@01 r)) (< (inv@49@01 r) right@7@01)))
    (=
      ($FVF.lookup_val (as sm@55@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@47@01)) r)))
  :pattern (($FVF.lookup_val (as sm@55@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@47@01)) r))
  :qid |qp.fvfValDef4|)))
(assert (=>
  (and (<= left@6@01 i$1@62@01) (< i$1@62@01 right@7@01))
  (and
    (<= left@6@01 i$1@62@01)
    (< i$1@62@01 right@7@01)
    (or
      (not
        (=
          ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$1@62@01))
          from@8@01))
      (=
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$1@62@01))
        from@8@01)))))
; Joined path conditions
(assert (or
  (not (and (<= left@6@01 i$1@62@01) (< i$1@62@01 right@7@01)))
  (and (<= left@6@01 i$1@62@01) (< i$1@62@01 right@7@01))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@44@01 r)
      (and (<= left@6@01 (inv@43@01 r)) (< (inv@43@01 r) mid@32@01)))
    (=
      ($FVF.lookup_val (as sm@55@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@41@01)) r)))
  :pattern (($FVF.lookup_val (as sm@55@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@41@01)) r))
  :qid |qp.fvfValDef3|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@50@01 r)
      (and (<= mid@32@01 (inv@49@01 r)) (< (inv@49@01 r) right@7@01)))
    (=
      ($FVF.lookup_val (as sm@55@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@47@01)) r)))
  :pattern (($FVF.lookup_val (as sm@55@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@47@01)) r))
  :qid |qp.fvfValDef4|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i$1@62@01 Int)) (!
  (and
    (or (<= left@6@01 i$1@62@01) (not (<= left@6@01 i$1@62@01)))
    (=>
      (and (<= left@6@01 i$1@62@01) (< i$1@62@01 right@7@01))
      (and
        (<= left@6@01 i$1@62@01)
        (< i$1@62@01 right@7@01)
        (or
          (not
            (=
              ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$1@62@01))
              from@8@01))
          (=
            ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$1@62@01))
            from@8@01))))
    (or
      (not (and (<= left@6@01 i$1@62@01) (< i$1@62@01 right@7@01)))
      (and (<= left@6@01 i$1@62@01) (< i$1@62@01 right@7@01))))
  :pattern ((loc<Ref> a@5@01 i$1@62@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/parallel-array-replace/parallel-array-replace.vpr@16@12@16@33-aux|)))
(push) ; 4
(assert (not (forall ((i$1@62@01 Int)) (!
  (=>
    (and (<= left@6@01 i$1@62@01) (< i$1@62@01 right@7@01))
    (ite
      (=
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$1@62@01))
        from@8@01)
      (=
        ($FVF.lookup_val (as sm@55@01  $FVF<val>) (loc<Ref> a@5@01 i$1@62@01))
        to@9@01)
      (=
        ($FVF.lookup_val (as sm@55@01  $FVF<val>) (loc<Ref> a@5@01 i$1@62@01))
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$1@62@01)))))
  :pattern ((loc<Ref> a@5@01 i$1@62@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/parallel-array-replace/parallel-array-replace.vpr@16@12@16@33|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i$1@62@01 Int)) (!
  (=>
    (and (<= left@6@01 i$1@62@01) (< i$1@62@01 right@7@01))
    (ite
      (=
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$1@62@01))
        from@8@01)
      (=
        ($FVF.lookup_val (as sm@55@01  $FVF<val>) (loc<Ref> a@5@01 i$1@62@01))
        to@9@01)
      (=
        ($FVF.lookup_val (as sm@55@01  $FVF<val>) (loc<Ref> a@5@01 i$1@62@01))
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second $t@10@01)))) (loc<Ref> a@5@01 i$1@62@01)))))
  :pattern ((loc<Ref> a@5@01 i$1@62@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/parallel-array-replace/parallel-array-replace.vpr@16@12@16@33|)))
(pop) ; 3
(push) ; 3
; [else-branch: 16 | right@7@01 - left@6@01 <= 1]
(assert (<= (- right@7@01 left@6@01) 1))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- Client ----------
(declare-const a@63@01 Array_)
(declare-const a@64@01 Array_)
(push) ; 1
(declare-const $t@65@01 $Snap)
(assert (= $t@65@01 ($Snap.combine ($Snap.first $t@65@01) ($Snap.second $t@65@01))))
(assert (= ($Snap.first $t@65@01) $Snap.unit))
; [eval] 1 < len(a)
; [eval] len(a)
(assert (< 1 (len<Int> a@64@01)))
(assert (=
  ($Snap.second $t@65@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@65@01))
    ($Snap.second ($Snap.second $t@65@01)))))
(declare-const i@66@01 Int)
(push) ; 2
; [eval] 0 <= i && i < len(a)
; [eval] 0 <= i
(push) ; 3
; [then-branch: 31 | !(0 <= i@66@01) | live]
; [else-branch: 31 | 0 <= i@66@01 | live]
(push) ; 4
; [then-branch: 31 | !(0 <= i@66@01)]
(assert (not (<= 0 i@66@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 31 | 0 <= i@66@01]
(assert (<= 0 i@66@01))
; [eval] i < len(a)
; [eval] len(a)
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@66@01) (not (<= 0 i@66@01))))
(assert (and (<= 0 i@66@01) (< i@66@01 (len<Int> a@64@01))))
; [eval] loc(a, i)
(pop) ; 2
(declare-fun inv@67@01 ($Ref) Int)
(declare-fun img@68@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@66@01 Int)) (!
  (=>
    (and (<= 0 i@66@01) (< i@66@01 (len<Int> a@64@01)))
    (or (<= 0 i@66@01) (not (<= 0 i@66@01))))
  :pattern ((loc<Ref> a@64@01 i@66@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@66@01 Int) (i2@66@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@66@01) (< i1@66@01 (len<Int> a@64@01)))
      (and (<= 0 i2@66@01) (< i2@66@01 (len<Int> a@64@01)))
      (= (loc<Ref> a@64@01 i1@66@01) (loc<Ref> a@64@01 i2@66@01)))
    (= i1@66@01 i2@66@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@66@01 Int)) (!
  (=>
    (and (<= 0 i@66@01) (< i@66@01 (len<Int> a@64@01)))
    (and
      (= (inv@67@01 (loc<Ref> a@64@01 i@66@01)) i@66@01)
      (img@68@01 (loc<Ref> a@64@01 i@66@01))))
  :pattern ((loc<Ref> a@64@01 i@66@01))
  :qid |quant-u-18855|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@68@01 r)
      (and (<= 0 (inv@67@01 r)) (< (inv@67@01 r) (len<Int> a@64@01))))
    (= (loc<Ref> a@64@01 (inv@67@01 r)) r))
  :pattern ((inv@67@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@66@01 Int)) (!
  (=>
    (and (<= 0 i@66@01) (< i@66@01 (len<Int> a@64@01)))
    (not (= (loc<Ref> a@64@01 i@66@01) $Ref.null)))
  :pattern ((loc<Ref> a@64@01 i@66@01))
  :qid |val-permImpliesNonNull|)))
(assert (= ($Snap.second ($Snap.second $t@65@01)) $Snap.unit))
; [eval] Contains(a, 5, 1)
(push) ; 2
; [eval] 0 <= before
; [eval] before <= len(a)
; [eval] len(a)
(push) ; 3
(assert (not (<= 1 (len<Int> a@64@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 1 (len<Int> a@64@01)))
(declare-const i@69@01 Int)
(push) ; 3
; [eval] 0 <= i && i < before
; [eval] 0 <= i
(push) ; 4
; [then-branch: 32 | !(0 <= i@69@01) | live]
; [else-branch: 32 | 0 <= i@69@01 | live]
(push) ; 5
; [then-branch: 32 | !(0 <= i@69@01)]
(assert (not (<= 0 i@69@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 32 | 0 <= i@69@01]
(assert (<= 0 i@69@01))
; [eval] i < before
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@69@01) (not (<= 0 i@69@01))))
(assert (and (<= 0 i@69@01) (< i@69@01 1)))
; [eval] loc(a, i)
(pop) ; 3
(declare-fun inv@70@01 ($Ref) Int)
(declare-fun img@71@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@69@01 Int)) (!
  (=>
    (and (<= 0 i@69@01) (< i@69@01 1))
    (or (<= 0 i@69@01) (not (<= 0 i@69@01))))
  :pattern ((loc<Ref> a@64@01 i@69@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@69@01 Int) (i2@69@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@69@01) (< i1@69@01 1))
      (and (<= 0 i2@69@01) (< i2@69@01 1))
      (= (loc<Ref> a@64@01 i1@69@01) (loc<Ref> a@64@01 i2@69@01)))
    (= i1@69@01 i2@69@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@69@01 Int)) (!
  (=>
    (and (<= 0 i@69@01) (< i@69@01 1))
    (and
      (= (inv@70@01 (loc<Ref> a@64@01 i@69@01)) i@69@01)
      (img@71@01 (loc<Ref> a@64@01 i@69@01))))
  :pattern ((loc<Ref> a@64@01 i@69@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@71@01 r) (and (<= 0 (inv@70@01 r)) (< (inv@70@01 r) 1)))
    (= (loc<Ref> a@64@01 (inv@70@01 r)) r))
  :pattern ((inv@70@01 r))
  :qid |val-fctOfInv|)))
(push) ; 3
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@70@01 r)) (< (inv@70@01 r) 1))
      (img@71@01 r)
      (= r (loc<Ref> a@64@01 (inv@70@01 r))))
    (>
      (ite
        (and
          (img@68@01 r)
          (and (<= 0 (inv@67@01 r)) (< (inv@67@01 r) (len<Int> a@64@01))))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-18857|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@72@01 $FVF<val>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_val (as sm@72@01  $FVF<val>)))
      (and (and (<= 0 (inv@70@01 r)) (< (inv@70@01 r) 1)) (img@71@01 r)))
    (=>
      (and (and (<= 0 (inv@70@01 r)) (< (inv@70@01 r) 1)) (img@71@01 r))
      (Set_in r ($FVF.domain_val (as sm@72@01  $FVF<val>)))))
  :pattern ((Set_in r ($FVF.domain_val (as sm@72@01  $FVF<val>))))
  :qid |qp.fvfDomDef7|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@70@01 r)) (< (inv@70@01 r) 1)) (img@71@01 r))
      (and
        (img@68@01 r)
        (and (<= 0 (inv@67@01 r)) (< (inv@67@01 r) (len<Int> a@64@01)))))
    (=
      ($FVF.lookup_val (as sm@72@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second $t@65@01))) r)))
  :pattern (($FVF.lookup_val (as sm@72@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second $t@65@01))) r))
  :qid |qp.fvfValDef6|)))
(assert (Contains%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<val>To$Snap (as sm@72@01  $FVF<val>)))) a@64@01 5 1))
(pop) ; 2
; Joined path conditions
(assert (forall ((i@69@01 Int)) (!
  (=>
    (and (<= 0 i@69@01) (< i@69@01 1))
    (and
      (= (inv@70@01 (loc<Ref> a@64@01 i@69@01)) i@69@01)
      (img@71@01 (loc<Ref> a@64@01 i@69@01))))
  :pattern ((loc<Ref> a@64@01 i@69@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@71@01 r) (and (<= 0 (inv@70@01 r)) (< (inv@70@01 r) 1)))
    (= (loc<Ref> a@64@01 (inv@70@01 r)) r))
  :pattern ((inv@70@01 r))
  :qid |val-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_val (as sm@72@01  $FVF<val>)))
      (and (and (<= 0 (inv@70@01 r)) (< (inv@70@01 r) 1)) (img@71@01 r)))
    (=>
      (and (and (<= 0 (inv@70@01 r)) (< (inv@70@01 r) 1)) (img@71@01 r))
      (Set_in r ($FVF.domain_val (as sm@72@01  $FVF<val>)))))
  :pattern ((Set_in r ($FVF.domain_val (as sm@72@01  $FVF<val>))))
  :qid |qp.fvfDomDef7|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@70@01 r)) (< (inv@70@01 r) 1)) (img@71@01 r))
      (and
        (img@68@01 r)
        (and (<= 0 (inv@67@01 r)) (< (inv@67@01 r) (len<Int> a@64@01)))))
    (=
      ($FVF.lookup_val (as sm@72@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second $t@65@01))) r)))
  :pattern (($FVF.lookup_val (as sm@72@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second $t@65@01))) r))
  :qid |qp.fvfValDef6|)))
(assert (and
  (<= 1 (len<Int> a@64@01))
  (forall ((i@69@01 Int)) (!
    (=>
      (and (<= 0 i@69@01) (< i@69@01 1))
      (or (<= 0 i@69@01) (not (<= 0 i@69@01))))
    :pattern ((loc<Ref> a@64@01 i@69@01))
    :qid |val-aux|))
  (Contains%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<val>To$Snap (as sm@72@01  $FVF<val>)))) a@64@01 5 1)))
(assert (Contains ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<val>To$Snap (as sm@72@01  $FVF<val>)))) a@64@01 5 1))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; Replace(a, 1, len(a), 5, 7)
; [eval] len(a)
; [eval] 0 <= left
; [eval] left < right
; [eval] right <= len(a)
; [eval] len(a)
(declare-const i@73@01 Int)
(push) ; 3
; [eval] left <= i && i < right
; [eval] left <= i
(push) ; 4
; [then-branch: 33 | !(1 <= i@73@01) | live]
; [else-branch: 33 | 1 <= i@73@01 | live]
(push) ; 5
; [then-branch: 33 | !(1 <= i@73@01)]
(assert (not (<= 1 i@73@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 33 | 1 <= i@73@01]
(assert (<= 1 i@73@01))
; [eval] i < right
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 1 i@73@01) (not (<= 1 i@73@01))))
(assert (and (<= 1 i@73@01) (< i@73@01 (len<Int> a@64@01))))
; [eval] loc(a, i)
(pop) ; 3
(declare-fun inv@74@01 ($Ref) Int)
(declare-fun img@75@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@73@01 Int)) (!
  (=>
    (and (<= 1 i@73@01) (< i@73@01 (len<Int> a@64@01)))
    (or (<= 1 i@73@01) (not (<= 1 i@73@01))))
  :pattern ((loc<Ref> a@64@01 i@73@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@73@01 Int) (i2@73@01 Int)) (!
  (=>
    (and
      (and (<= 1 i1@73@01) (< i1@73@01 (len<Int> a@64@01)))
      (and (<= 1 i2@73@01) (< i2@73@01 (len<Int> a@64@01)))
      (= (loc<Ref> a@64@01 i1@73@01) (loc<Ref> a@64@01 i2@73@01)))
    (= i1@73@01 i2@73@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@73@01 Int)) (!
  (=>
    (and (<= 1 i@73@01) (< i@73@01 (len<Int> a@64@01)))
    (and
      (= (inv@74@01 (loc<Ref> a@64@01 i@73@01)) i@73@01)
      (img@75@01 (loc<Ref> a@64@01 i@73@01))))
  :pattern ((loc<Ref> a@64@01 i@73@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@75@01 r)
      (and (<= 1 (inv@74@01 r)) (< (inv@74@01 r) (len<Int> a@64@01))))
    (= (loc<Ref> a@64@01 (inv@74@01 r)) r))
  :pattern ((inv@74@01 r))
  :qid |val-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@76@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 1 (inv@74@01 r)) (< (inv@74@01 r) (len<Int> a@64@01)))
      (img@75@01 r)
      (= r (loc<Ref> a@64@01 (inv@74@01 r))))
    ($Perm.min
      (ite
        (and
          (img@68@01 r)
          (and (<= 0 (inv@67@01 r)) (< (inv@67@01 r) (len<Int> a@64@01))))
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
          (img@68@01 r)
          (and (<= 0 (inv@67@01 r)) (< (inv@67@01 r) (len<Int> a@64@01))))
        $Perm.Write
        $Perm.No)
      (pTaken@76@01 r))
    $Perm.No)
  
  :qid |quant-u-18860|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@76@01 r) $Perm.No)
  
  :qid |quant-u-18861|))))
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
      (and (<= 1 (inv@74@01 r)) (< (inv@74@01 r) (len<Int> a@64@01)))
      (img@75@01 r)
      (= r (loc<Ref> a@64@01 (inv@74@01 r))))
    (= (- $Perm.Write (pTaken@76@01 r)) $Perm.No))
  
  :qid |quant-u-18862|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const $t@77@01 $Snap)
(assert (= $t@77@01 ($Snap.combine ($Snap.first $t@77@01) ($Snap.second $t@77@01))))
(declare-const i$0@78@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] left <= i$0 && i$0 < right
; [eval] left <= i$0
(push) ; 4
; [then-branch: 34 | !(1 <= i$0@78@01) | live]
; [else-branch: 34 | 1 <= i$0@78@01 | live]
(push) ; 5
; [then-branch: 34 | !(1 <= i$0@78@01)]
(assert (not (<= 1 i$0@78@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 34 | 1 <= i$0@78@01]
(assert (<= 1 i$0@78@01))
; [eval] i$0 < right
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 1 i$0@78@01) (not (<= 1 i$0@78@01))))
(assert (and (<= 1 i$0@78@01) (< i$0@78@01 (len<Int> a@64@01))))
; [eval] loc(a, i$0)
(pop) ; 3
(declare-fun inv@79@01 ($Ref) Int)
(declare-fun img@80@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i$0@78@01 Int)) (!
  (=>
    (and (<= 1 i$0@78@01) (< i$0@78@01 (len<Int> a@64@01)))
    (or (<= 1 i$0@78@01) (not (<= 1 i$0@78@01))))
  :pattern ((loc<Ref> a@64@01 i$0@78@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i$01@78@01 Int) (i$02@78@01 Int)) (!
  (=>
    (and
      (and (<= 1 i$01@78@01) (< i$01@78@01 (len<Int> a@64@01)))
      (and (<= 1 i$02@78@01) (< i$02@78@01 (len<Int> a@64@01)))
      (= (loc<Ref> a@64@01 i$01@78@01) (loc<Ref> a@64@01 i$02@78@01)))
    (= i$01@78@01 i$02@78@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i$0@78@01 Int)) (!
  (=>
    (and (<= 1 i$0@78@01) (< i$0@78@01 (len<Int> a@64@01)))
    (and
      (= (inv@79@01 (loc<Ref> a@64@01 i$0@78@01)) i$0@78@01)
      (img@80@01 (loc<Ref> a@64@01 i$0@78@01))))
  :pattern ((loc<Ref> a@64@01 i$0@78@01))
  :qid |quant-u-18864|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@80@01 r)
      (and (<= 1 (inv@79@01 r)) (< (inv@79@01 r) (len<Int> a@64@01))))
    (= (loc<Ref> a@64@01 (inv@79@01 r)) r))
  :pattern ((inv@79@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i$0@78@01 Int)) (!
  (=>
    (and (<= 1 i$0@78@01) (< i$0@78@01 (len<Int> a@64@01)))
    (not (= (loc<Ref> a@64@01 i$0@78@01) $Ref.null)))
  :pattern ((loc<Ref> a@64@01 i$0@78@01))
  :qid |val-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (loc<Ref> a@64@01 i$0@78@01) (loc<Ref> a@64@01 i@66@01))
    (=
      (and
        (img@80@01 r)
        (and (<= 1 (inv@79@01 r)) (< (inv@79@01 r) (len<Int> a@64@01))))
      (and
        (img@68@01 r)
        (and (<= 0 (inv@67@01 r)) (< (inv@67@01 r) (len<Int> a@64@01))))))
  
  :qid |quant-u-18865|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second $t@77@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@77@01))
    ($Snap.second ($Snap.second $t@77@01)))))
(assert (= ($Snap.first ($Snap.second $t@77@01)) $Snap.unit))
(assert (= ($Snap.second ($Snap.second $t@77@01)) $Snap.unit))
; [eval] (forall i$1: Int :: { old(loc(a, i$1)) } left <= i$1 && i$1 < right ==> (old(loc(a, i$1).val == from) ? loc(a, i$1).val == to : loc(a, i$1).val == old(loc(a, i$1).val)))
(declare-const i$1@81@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] left <= i$1 && i$1 < right ==> (old(loc(a, i$1).val == from) ? loc(a, i$1).val == to : loc(a, i$1).val == old(loc(a, i$1).val))
; [eval] left <= i$1 && i$1 < right
; [eval] left <= i$1
(push) ; 4
; [then-branch: 35 | !(1 <= i$1@81@01) | live]
; [else-branch: 35 | 1 <= i$1@81@01 | live]
(push) ; 5
; [then-branch: 35 | !(1 <= i$1@81@01)]
(assert (not (<= 1 i$1@81@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 35 | 1 <= i$1@81@01]
(assert (<= 1 i$1@81@01))
; [eval] i$1 < right
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 1 i$1@81@01) (not (<= 1 i$1@81@01))))
(push) ; 4
; [then-branch: 36 | 1 <= i$1@81@01 && i$1@81@01 < len[Int](a@64@01) | live]
; [else-branch: 36 | !(1 <= i$1@81@01 && i$1@81@01 < len[Int](a@64@01)) | live]
(push) ; 5
; [then-branch: 36 | 1 <= i$1@81@01 && i$1@81@01 < len[Int](a@64@01)]
(assert (and (<= 1 i$1@81@01) (< i$1@81@01 (len<Int> a@64@01))))
; [eval] (old(loc(a, i$1).val == from) ? loc(a, i$1).val == to : loc(a, i$1).val == old(loc(a, i$1).val))
; [eval] old(loc(a, i$1).val == from)
; [eval] loc(a, i$1).val == from
; [eval] loc(a, i$1)
(push) ; 6
(assert (not (and
  (img@68@01 (loc<Ref> a@64@01 i$1@81@01))
  (and
    (<= 0 (inv@67@01 (loc<Ref> a@64@01 i$1@81@01)))
    (< (inv@67@01 (loc<Ref> a@64@01 i$1@81@01)) (len<Int> a@64@01))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
; [then-branch: 37 | Lookup(val, First:(Second:($t@65@01)), loc[Ref](a@64@01, i$1@81@01)) == 5 | live]
; [else-branch: 37 | Lookup(val, First:(Second:($t@65@01)), loc[Ref](a@64@01, i$1@81@01)) != 5 | live]
(push) ; 7
; [then-branch: 37 | Lookup(val, First:(Second:($t@65@01)), loc[Ref](a@64@01, i$1@81@01)) == 5]
(assert (=
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second $t@65@01))) (loc<Ref> a@64@01 i$1@81@01))
  5))
; [eval] loc(a, i$1).val == to
; [eval] loc(a, i$1)
(declare-const sm@82@01 $FVF<val>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@68@01 r)
        (and (<= 0 (inv@67@01 r)) (< (inv@67@01 r) (len<Int> a@64@01))))
      (< $Perm.No (- $Perm.Write (pTaken@76@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@82@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second $t@65@01))) r)))
  :pattern (($FVF.lookup_val (as sm@82@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second $t@65@01))) r))
  :qid |qp.fvfValDef8|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@80@01 r)
      (and (<= 1 (inv@79@01 r)) (< (inv@79@01 r) (len<Int> a@64@01))))
    (=
      ($FVF.lookup_val (as sm@82@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@77@01)) r)))
  :pattern (($FVF.lookup_val (as sm@82@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@77@01)) r))
  :qid |qp.fvfValDef9|)))
(declare-const pm@83@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@83@01  $FPM) r)
    (+
      (ite
        (and
          (img@68@01 r)
          (and (<= 0 (inv@67@01 r)) (< (inv@67@01 r) (len<Int> a@64@01))))
        (- $Perm.Write (pTaken@76@01 r))
        $Perm.No)
      (ite
        (and
          (img@80@01 r)
          (and (<= 1 (inv@79@01 r)) (< (inv@79@01 r) (len<Int> a@64@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@83@01  $FPM) r))
  :qid |qp.resPrmSumDef10|)))
(push) ; 8
(assert (not (< $Perm.No ($FVF.perm_val (as pm@83@01  $FPM) (loc<Ref> a@64@01 i$1@81@01)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(push) ; 7
; [else-branch: 37 | Lookup(val, First:(Second:($t@65@01)), loc[Ref](a@64@01, i$1@81@01)) != 5]
(assert (not
  (=
    ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second $t@65@01))) (loc<Ref> a@64@01 i$1@81@01))
    5)))
; [eval] loc(a, i$1).val == old(loc(a, i$1).val)
; [eval] loc(a, i$1)
(declare-const sm@84@01 $FVF<val>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@68@01 r)
        (and (<= 0 (inv@67@01 r)) (< (inv@67@01 r) (len<Int> a@64@01))))
      (< $Perm.No (- $Perm.Write (pTaken@76@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@84@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second $t@65@01))) r)))
  :pattern (($FVF.lookup_val (as sm@84@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second $t@65@01))) r))
  :qid |qp.fvfValDef11|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@80@01 r)
      (and (<= 1 (inv@79@01 r)) (< (inv@79@01 r) (len<Int> a@64@01))))
    (=
      ($FVF.lookup_val (as sm@84@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@77@01)) r)))
  :pattern (($FVF.lookup_val (as sm@84@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@77@01)) r))
  :qid |qp.fvfValDef12|)))
(declare-const pm@85@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@85@01  $FPM) r)
    (+
      (ite
        (and
          (img@68@01 r)
          (and (<= 0 (inv@67@01 r)) (< (inv@67@01 r) (len<Int> a@64@01))))
        (- $Perm.Write (pTaken@76@01 r))
        $Perm.No)
      (ite
        (and
          (img@80@01 r)
          (and (<= 1 (inv@79@01 r)) (< (inv@79@01 r) (len<Int> a@64@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@85@01  $FPM) r))
  :qid |qp.resPrmSumDef13|)))
(push) ; 8
(assert (not (< $Perm.No ($FVF.perm_val (as pm@85@01  $FPM) (loc<Ref> a@64@01 i$1@81@01)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [eval] old(loc(a, i$1).val)
; [eval] loc(a, i$1)
(push) ; 8
(assert (not (and
  (img@68@01 (loc<Ref> a@64@01 i$1@81@01))
  (and
    (<= 0 (inv@67@01 (loc<Ref> a@64@01 i$1@81@01)))
    (< (inv@67@01 (loc<Ref> a@64@01 i$1@81@01)) (len<Int> a@64@01))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@68@01 r)
        (and (<= 0 (inv@67@01 r)) (< (inv@67@01 r) (len<Int> a@64@01))))
      (< $Perm.No (- $Perm.Write (pTaken@76@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@82@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second $t@65@01))) r)))
  :pattern (($FVF.lookup_val (as sm@82@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second $t@65@01))) r))
  :qid |qp.fvfValDef8|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@80@01 r)
      (and (<= 1 (inv@79@01 r)) (< (inv@79@01 r) (len<Int> a@64@01))))
    (=
      ($FVF.lookup_val (as sm@82@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@77@01)) r)))
  :pattern (($FVF.lookup_val (as sm@82@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@77@01)) r))
  :qid |qp.fvfValDef9|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@83@01  $FPM) r)
    (+
      (ite
        (and
          (img@68@01 r)
          (and (<= 0 (inv@67@01 r)) (< (inv@67@01 r) (len<Int> a@64@01))))
        (- $Perm.Write (pTaken@76@01 r))
        $Perm.No)
      (ite
        (and
          (img@80@01 r)
          (and (<= 1 (inv@79@01 r)) (< (inv@79@01 r) (len<Int> a@64@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@83@01  $FPM) r))
  :qid |qp.resPrmSumDef10|)))
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@68@01 r)
        (and (<= 0 (inv@67@01 r)) (< (inv@67@01 r) (len<Int> a@64@01))))
      (< $Perm.No (- $Perm.Write (pTaken@76@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@84@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second $t@65@01))) r)))
  :pattern (($FVF.lookup_val (as sm@84@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second $t@65@01))) r))
  :qid |qp.fvfValDef11|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@80@01 r)
      (and (<= 1 (inv@79@01 r)) (< (inv@79@01 r) (len<Int> a@64@01))))
    (=
      ($FVF.lookup_val (as sm@84@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@77@01)) r)))
  :pattern (($FVF.lookup_val (as sm@84@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@77@01)) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@85@01  $FPM) r)
    (+
      (ite
        (and
          (img@68@01 r)
          (and (<= 0 (inv@67@01 r)) (< (inv@67@01 r) (len<Int> a@64@01))))
        (- $Perm.Write (pTaken@76@01 r))
        $Perm.No)
      (ite
        (and
          (img@80@01 r)
          (and (<= 1 (inv@79@01 r)) (< (inv@79@01 r) (len<Int> a@64@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@85@01  $FPM) r))
  :qid |qp.resPrmSumDef13|)))
(assert (or
  (not
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second $t@65@01))) (loc<Ref> a@64@01 i$1@81@01))
      5))
  (=
    ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second $t@65@01))) (loc<Ref> a@64@01 i$1@81@01))
    5)))
(pop) ; 5
(push) ; 5
; [else-branch: 36 | !(1 <= i$1@81@01 && i$1@81@01 < len[Int](a@64@01))]
(assert (not (and (<= 1 i$1@81@01) (< i$1@81@01 (len<Int> a@64@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@68@01 r)
        (and (<= 0 (inv@67@01 r)) (< (inv@67@01 r) (len<Int> a@64@01))))
      (< $Perm.No (- $Perm.Write (pTaken@76@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@82@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second $t@65@01))) r)))
  :pattern (($FVF.lookup_val (as sm@82@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second $t@65@01))) r))
  :qid |qp.fvfValDef8|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@80@01 r)
      (and (<= 1 (inv@79@01 r)) (< (inv@79@01 r) (len<Int> a@64@01))))
    (=
      ($FVF.lookup_val (as sm@82@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@77@01)) r)))
  :pattern (($FVF.lookup_val (as sm@82@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@77@01)) r))
  :qid |qp.fvfValDef9|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@83@01  $FPM) r)
    (+
      (ite
        (and
          (img@68@01 r)
          (and (<= 0 (inv@67@01 r)) (< (inv@67@01 r) (len<Int> a@64@01))))
        (- $Perm.Write (pTaken@76@01 r))
        $Perm.No)
      (ite
        (and
          (img@80@01 r)
          (and (<= 1 (inv@79@01 r)) (< (inv@79@01 r) (len<Int> a@64@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@83@01  $FPM) r))
  :qid |qp.resPrmSumDef10|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@68@01 r)
        (and (<= 0 (inv@67@01 r)) (< (inv@67@01 r) (len<Int> a@64@01))))
      (< $Perm.No (- $Perm.Write (pTaken@76@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@84@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second $t@65@01))) r)))
  :pattern (($FVF.lookup_val (as sm@84@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second $t@65@01))) r))
  :qid |qp.fvfValDef11|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@80@01 r)
      (and (<= 1 (inv@79@01 r)) (< (inv@79@01 r) (len<Int> a@64@01))))
    (=
      ($FVF.lookup_val (as sm@84@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@77@01)) r)))
  :pattern (($FVF.lookup_val (as sm@84@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@77@01)) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@85@01  $FPM) r)
    (+
      (ite
        (and
          (img@68@01 r)
          (and (<= 0 (inv@67@01 r)) (< (inv@67@01 r) (len<Int> a@64@01))))
        (- $Perm.Write (pTaken@76@01 r))
        $Perm.No)
      (ite
        (and
          (img@80@01 r)
          (and (<= 1 (inv@79@01 r)) (< (inv@79@01 r) (len<Int> a@64@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@85@01  $FPM) r))
  :qid |qp.resPrmSumDef13|)))
(assert (=>
  (and (<= 1 i$1@81@01) (< i$1@81@01 (len<Int> a@64@01)))
  (and
    (<= 1 i$1@81@01)
    (< i$1@81@01 (len<Int> a@64@01))
    (or
      (not
        (=
          ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second $t@65@01))) (loc<Ref> a@64@01 i$1@81@01))
          5))
      (=
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second $t@65@01))) (loc<Ref> a@64@01 i$1@81@01))
        5)))))
; Joined path conditions
(assert (or
  (not (and (<= 1 i$1@81@01) (< i$1@81@01 (len<Int> a@64@01))))
  (and (<= 1 i$1@81@01) (< i$1@81@01 (len<Int> a@64@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@68@01 r)
        (and (<= 0 (inv@67@01 r)) (< (inv@67@01 r) (len<Int> a@64@01))))
      (< $Perm.No (- $Perm.Write (pTaken@76@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@82@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second $t@65@01))) r)))
  :pattern (($FVF.lookup_val (as sm@82@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second $t@65@01))) r))
  :qid |qp.fvfValDef8|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@80@01 r)
      (and (<= 1 (inv@79@01 r)) (< (inv@79@01 r) (len<Int> a@64@01))))
    (=
      ($FVF.lookup_val (as sm@82@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@77@01)) r)))
  :pattern (($FVF.lookup_val (as sm@82@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@77@01)) r))
  :qid |qp.fvfValDef9|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@83@01  $FPM) r)
    (+
      (ite
        (and
          (img@68@01 r)
          (and (<= 0 (inv@67@01 r)) (< (inv@67@01 r) (len<Int> a@64@01))))
        (- $Perm.Write (pTaken@76@01 r))
        $Perm.No)
      (ite
        (and
          (img@80@01 r)
          (and (<= 1 (inv@79@01 r)) (< (inv@79@01 r) (len<Int> a@64@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@83@01  $FPM) r))
  :qid |qp.resPrmSumDef10|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@68@01 r)
        (and (<= 0 (inv@67@01 r)) (< (inv@67@01 r) (len<Int> a@64@01))))
      (< $Perm.No (- $Perm.Write (pTaken@76@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@84@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second $t@65@01))) r)))
  :pattern (($FVF.lookup_val (as sm@84@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second $t@65@01))) r))
  :qid |qp.fvfValDef11|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@80@01 r)
      (and (<= 1 (inv@79@01 r)) (< (inv@79@01 r) (len<Int> a@64@01))))
    (=
      ($FVF.lookup_val (as sm@84@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@77@01)) r)))
  :pattern (($FVF.lookup_val (as sm@84@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@77@01)) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@85@01  $FPM) r)
    (+
      (ite
        (and
          (img@68@01 r)
          (and (<= 0 (inv@67@01 r)) (< (inv@67@01 r) (len<Int> a@64@01))))
        (- $Perm.Write (pTaken@76@01 r))
        $Perm.No)
      (ite
        (and
          (img@80@01 r)
          (and (<= 1 (inv@79@01 r)) (< (inv@79@01 r) (len<Int> a@64@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@85@01  $FPM) r))
  :qid |qp.resPrmSumDef13|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i$1@81@01 Int)) (!
  (and
    (or (<= 1 i$1@81@01) (not (<= 1 i$1@81@01)))
    (=>
      (and (<= 1 i$1@81@01) (< i$1@81@01 (len<Int> a@64@01)))
      (and
        (<= 1 i$1@81@01)
        (< i$1@81@01 (len<Int> a@64@01))
        (or
          (not
            (=
              ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second $t@65@01))) (loc<Ref> a@64@01 i$1@81@01))
              5))
          (=
            ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second $t@65@01))) (loc<Ref> a@64@01 i$1@81@01))
            5))))
    (or
      (not (and (<= 1 i$1@81@01) (< i$1@81@01 (len<Int> a@64@01))))
      (and (<= 1 i$1@81@01) (< i$1@81@01 (len<Int> a@64@01)))))
  :pattern ((loc<Ref> a@64@01 i$1@81@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/parallel-array-replace/parallel-array-replace.vpr@16@12@16@33-aux|)))
(assert (forall ((i$1@81@01 Int)) (!
  (=>
    (and (<= 1 i$1@81@01) (< i$1@81@01 (len<Int> a@64@01)))
    (ite
      (=
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second $t@65@01))) (loc<Ref> a@64@01 i$1@81@01))
        5)
      (=
        ($FVF.lookup_val (as sm@82@01  $FVF<val>) (loc<Ref> a@64@01 i$1@81@01))
        7)
      (=
        ($FVF.lookup_val (as sm@84@01  $FVF<val>) (loc<Ref> a@64@01 i$1@81@01))
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second $t@65@01))) (loc<Ref> a@64@01 i$1@81@01)))))
  :pattern ((loc<Ref> a@64@01 i$1@81@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/parallel-array-replace/parallel-array-replace.vpr@16@12@16@33|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; assert Contains(a, 5, 1)
; [eval] Contains(a, 5, 1)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= before
; [eval] before <= len(a)
; [eval] len(a)
(declare-const i@86@01 Int)
(push) ; 4
; [eval] 0 <= i && i < before
; [eval] 0 <= i
(push) ; 5
; [then-branch: 38 | !(0 <= i@86@01) | live]
; [else-branch: 38 | 0 <= i@86@01 | live]
(push) ; 6
; [then-branch: 38 | !(0 <= i@86@01)]
(assert (not (<= 0 i@86@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 38 | 0 <= i@86@01]
(assert (<= 0 i@86@01))
; [eval] i < before
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@86@01) (not (<= 0 i@86@01))))
(assert (and (<= 0 i@86@01) (< i@86@01 1)))
; [eval] loc(a, i)
(pop) ; 4
(declare-fun inv@87@01 ($Ref) Int)
(declare-fun img@88@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@86@01 Int)) (!
  (=>
    (and (<= 0 i@86@01) (< i@86@01 1))
    (or (<= 0 i@86@01) (not (<= 0 i@86@01))))
  :pattern ((loc<Ref> a@64@01 i@86@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@86@01 Int) (i2@86@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@86@01) (< i1@86@01 1))
      (and (<= 0 i2@86@01) (< i2@86@01 1))
      (= (loc<Ref> a@64@01 i1@86@01) (loc<Ref> a@64@01 i2@86@01)))
    (= i1@86@01 i2@86@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@86@01 Int)) (!
  (=>
    (and (<= 0 i@86@01) (< i@86@01 1))
    (and
      (= (inv@87@01 (loc<Ref> a@64@01 i@86@01)) i@86@01)
      (img@88@01 (loc<Ref> a@64@01 i@86@01))))
  :pattern ((loc<Ref> a@64@01 i@86@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@88@01 r) (and (<= 0 (inv@87@01 r)) (< (inv@87@01 r) 1)))
    (= (loc<Ref> a@64@01 (inv@87@01 r)) r))
  :pattern ((inv@87@01 r))
  :qid |val-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@87@01 r)) (< (inv@87@01 r) 1))
      (img@88@01 r)
      (= r (loc<Ref> a@64@01 (inv@87@01 r))))
    (>
      (+
        (ite
          (and
            (img@68@01 r)
            (and (<= 0 (inv@67@01 r)) (< (inv@67@01 r) (len<Int> a@64@01))))
          (- $Perm.Write (pTaken@76@01 r))
          $Perm.No)
        (ite
          (and
            (img@80@01 r)
            (and (<= 1 (inv@79@01 r)) (< (inv@79@01 r) (len<Int> a@64@01))))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-18867|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@89@01 $FVF<val>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_val (as sm@89@01  $FVF<val>)))
      (and (and (<= 0 (inv@87@01 r)) (< (inv@87@01 r) 1)) (img@88@01 r)))
    (=>
      (and (and (<= 0 (inv@87@01 r)) (< (inv@87@01 r) 1)) (img@88@01 r))
      (Set_in r ($FVF.domain_val (as sm@89@01  $FVF<val>)))))
  :pattern ((Set_in r ($FVF.domain_val (as sm@89@01  $FVF<val>))))
  :qid |qp.fvfDomDef16|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@87@01 r)) (< (inv@87@01 r) 1)) (img@88@01 r))
      (ite
        (and
          (img@68@01 r)
          (and (<= 0 (inv@67@01 r)) (< (inv@67@01 r) (len<Int> a@64@01))))
        (< $Perm.No (- $Perm.Write (pTaken@76@01 r)))
        false))
    (=
      ($FVF.lookup_val (as sm@89@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second $t@65@01))) r)))
  :pattern (($FVF.lookup_val (as sm@89@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second $t@65@01))) r))
  :qid |qp.fvfValDef14|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@87@01 r)) (< (inv@87@01 r) 1)) (img@88@01 r))
      (and
        (img@80@01 r)
        (and (<= 1 (inv@79@01 r)) (< (inv@79@01 r) (len<Int> a@64@01)))))
    (=
      ($FVF.lookup_val (as sm@89@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@77@01)) r)))
  :pattern (($FVF.lookup_val (as sm@89@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@77@01)) r))
  :qid |qp.fvfValDef15|)))
(assert (Contains%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<val>To$Snap (as sm@89@01  $FVF<val>)))) a@64@01 5 1))
(pop) ; 3
; Joined path conditions
(assert (forall ((i@86@01 Int)) (!
  (=>
    (and (<= 0 i@86@01) (< i@86@01 1))
    (and
      (= (inv@87@01 (loc<Ref> a@64@01 i@86@01)) i@86@01)
      (img@88@01 (loc<Ref> a@64@01 i@86@01))))
  :pattern ((loc<Ref> a@64@01 i@86@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@88@01 r) (and (<= 0 (inv@87@01 r)) (< (inv@87@01 r) 1)))
    (= (loc<Ref> a@64@01 (inv@87@01 r)) r))
  :pattern ((inv@87@01 r))
  :qid |val-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_val (as sm@89@01  $FVF<val>)))
      (and (and (<= 0 (inv@87@01 r)) (< (inv@87@01 r) 1)) (img@88@01 r)))
    (=>
      (and (and (<= 0 (inv@87@01 r)) (< (inv@87@01 r) 1)) (img@88@01 r))
      (Set_in r ($FVF.domain_val (as sm@89@01  $FVF<val>)))))
  :pattern ((Set_in r ($FVF.domain_val (as sm@89@01  $FVF<val>))))
  :qid |qp.fvfDomDef16|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@87@01 r)) (< (inv@87@01 r) 1)) (img@88@01 r))
      (ite
        (and
          (img@68@01 r)
          (and (<= 0 (inv@67@01 r)) (< (inv@67@01 r) (len<Int> a@64@01))))
        (< $Perm.No (- $Perm.Write (pTaken@76@01 r)))
        false))
    (=
      ($FVF.lookup_val (as sm@89@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second $t@65@01))) r)))
  :pattern (($FVF.lookup_val (as sm@89@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second $t@65@01))) r))
  :qid |qp.fvfValDef14|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@87@01 r)) (< (inv@87@01 r) 1)) (img@88@01 r))
      (and
        (img@80@01 r)
        (and (<= 1 (inv@79@01 r)) (< (inv@79@01 r) (len<Int> a@64@01)))))
    (=
      ($FVF.lookup_val (as sm@89@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@77@01)) r)))
  :pattern (($FVF.lookup_val (as sm@89@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@77@01)) r))
  :qid |qp.fvfValDef15|)))
(assert (and
  (forall ((i@86@01 Int)) (!
    (=>
      (and (<= 0 i@86@01) (< i@86@01 1))
      (or (<= 0 i@86@01) (not (<= 0 i@86@01))))
    :pattern ((loc<Ref> a@64@01 i@86@01))
    :qid |val-aux|))
  (Contains%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<val>To$Snap (as sm@89@01  $FVF<val>)))) a@64@01 5 1)))
(push) ; 3
(assert (not (Contains ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<val>To$Snap (as sm@89@01  $FVF<val>)))) a@64@01 5 1)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Contains ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<val>To$Snap (as sm@89@01  $FVF<val>)))) a@64@01 5 1))
(pop) ; 2
(pop) ; 1
