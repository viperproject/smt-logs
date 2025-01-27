(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-26 23:11:07
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
(declare-fun fun2 ($Snap Set<$Ref> $Ref) Int)
(declare-fun fun2%limited ($Snap Set<$Ref> $Ref) Int)
(declare-fun fun2%stateless (Set<$Ref> $Ref) Bool)
(declare-fun fun2%precondition ($Snap Set<$Ref> $Ref) Bool)
(declare-fun fun1 ($Snap Set<$Ref> $Ref) Int)
(declare-fun fun1%limited ($Snap Set<$Ref> $Ref) Int)
(declare-fun fun1%stateless (Set<$Ref> $Ref) Bool)
(declare-fun fun1%precondition ($Snap Set<$Ref> $Ref) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun P%trigger ($Snap Set<$Ref> $Ref) Bool)
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
(declare-fun inv@7@00 ($Snap Set<$Ref> $Ref $Ref) $Ref)
(declare-fun img@8@00 ($Snap Set<$Ref> $Ref $Ref) Bool)
(declare-fun inv@10@00 ($Snap Set<$Ref> $Ref $Ref) $Ref)
(declare-fun img@11@00 ($Snap Set<$Ref> $Ref $Ref) Bool)
(assert (forall ((s@$ $Snap) (xs@0@00 Set<$Ref>) (x@1@00 $Ref)) (!
  (= (fun2%limited s@$ xs@0@00 x@1@00) (fun2 s@$ xs@0@00 x@1@00))
  :pattern ((fun2 s@$ xs@0@00 x@1@00))
  :qid |quant-u-21448|)))
(assert (forall ((s@$ $Snap) (xs@0@00 Set<$Ref>) (x@1@00 $Ref)) (!
  (fun2%stateless xs@0@00 x@1@00)
  :pattern ((fun2%limited s@$ xs@0@00 x@1@00))
  :qid |quant-u-21449|)))
(assert (forall ((s@$ $Snap) (xs@0@00 Set<$Ref>) (x@1@00 $Ref)) (!
  (and
    (forall ((z@6@00 $Ref)) (!
      (=>
        (Set_in z@6@00 xs@0@00)
        (and
          (= (inv@7@00 s@$ xs@0@00 x@1@00 z@6@00) z@6@00)
          (img@8@00 s@$ xs@0@00 x@1@00 z@6@00)))
      :pattern ((Set_in z@6@00 xs@0@00))
      :pattern ((inv@7@00 s@$ xs@0@00 x@1@00 z@6@00))
      :pattern ((img@8@00 s@$ xs@0@00 x@1@00 z@6@00))
      :qid |quant-u-21453|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@8@00 s@$ xs@0@00 x@1@00 r)
          (Set_in (inv@7@00 s@$ xs@0@00 x@1@00 r) xs@0@00))
        (= (inv@7@00 s@$ xs@0@00 x@1@00 r) r))
      :pattern ((inv@7@00 s@$ xs@0@00 x@1@00 r))
      :qid |f-fctOfInv|))
    (=>
      (fun2%precondition s@$ xs@0@00 x@1@00)
      (=
        (fun2 s@$ xs@0@00 x@1@00)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second s@$)) x@1@00))))
  :pattern ((fun2 s@$ xs@0@00 x@1@00))
  :qid |quant-u-21454|)))
(assert (forall ((s@$ $Snap) (xs@0@00 Set<$Ref>) (x@1@00 $Ref)) (!
  true
  :pattern ((fun2 s@$ xs@0@00 x@1@00))
  :qid |quant-u-21455|)))
(assert (forall ((s@$ $Snap) (xs@3@00 Set<$Ref>) (x@4@00 $Ref)) (!
  (= (fun1%limited s@$ xs@3@00 x@4@00) (fun1 s@$ xs@3@00 x@4@00))
  :pattern ((fun1 s@$ xs@3@00 x@4@00))
  :qid |quant-u-21450|)))
(assert (forall ((s@$ $Snap) (xs@3@00 Set<$Ref>) (x@4@00 $Ref)) (!
  (fun1%stateless xs@3@00 x@4@00)
  :pattern ((fun1%limited s@$ xs@3@00 x@4@00))
  :qid |quant-u-21451|)))
(assert (forall ((s@$ $Snap) (xs@3@00 Set<$Ref>) (x@4@00 $Ref)) (!
  (and
    (forall ((z@9@00 $Ref)) (!
      (=>
        (Set_in z@9@00 xs@3@00)
        (and
          (= (inv@10@00 s@$ xs@3@00 x@4@00 z@9@00) z@9@00)
          (img@11@00 s@$ xs@3@00 x@4@00 z@9@00)))
      :pattern ((Set_in z@9@00 xs@3@00))
      :pattern ((inv@10@00 s@$ xs@3@00 x@4@00 z@9@00))
      :pattern ((img@11@00 s@$ xs@3@00 x@4@00 z@9@00))
      :qid |quant-u-21457|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@11@00 s@$ xs@3@00 x@4@00 r)
          (Set_in (inv@10@00 s@$ xs@3@00 x@4@00 r) xs@3@00))
        (= (inv@10@00 s@$ xs@3@00 x@4@00 r) r))
      :pattern ((inv@10@00 s@$ xs@3@00 x@4@00 r))
      :qid |f-fctOfInv|))
    (=>
      (fun1%precondition s@$ xs@3@00 x@4@00)
      (=
        (fun1 s@$ xs@3@00 x@4@00)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second s@$)) x@4@00))))
  :pattern ((fun1 s@$ xs@3@00 x@4@00))
  :qid |quant-u-21458|)))
(assert (forall ((s@$ $Snap) (xs@3@00 Set<$Ref>) (x@4@00 $Ref)) (!
  true
  :pattern ((fun1 s@$ xs@3@00 x@4@00))
  :qid |quant-u-21459|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- test1 ----------
(declare-const xs@0@01 Set<$Ref>)
(declare-const x@1@01 $Ref)
(declare-const xs@2@01 Set<$Ref>)
(declare-const x@3@01 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@4@01 $Snap)
(assert (= $t@4@01 ($Snap.combine ($Snap.first $t@4@01) ($Snap.second $t@4@01))))
(assert (= ($Snap.first $t@4@01) $Snap.unit))
; [eval] (x in xs)
(assert (Set_in x@3@01 xs@2@01))
(declare-const z@5@01 $Ref)
(push) ; 2
; [eval] (z in xs)
(assert (Set_in z@5@01 xs@2@01))
(pop) ; 2
(declare-fun inv@6@01 ($Ref) $Ref)
(declare-fun img@7@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((z1@5@01 $Ref) (z2@5@01 $Ref)) (!
  (=>
    (and (Set_in z1@5@01 xs@2@01) (Set_in z2@5@01 xs@2@01) (= z1@5@01 z2@5@01))
    (= z1@5@01 z2@5@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@5@01 $Ref)) (!
  (=>
    (Set_in z@5@01 xs@2@01)
    (and (= (inv@6@01 z@5@01) z@5@01) (img@7@01 z@5@01)))
  :pattern ((Set_in z@5@01 xs@2@01))
  :pattern ((inv@6@01 z@5@01))
  :pattern ((img@7@01 z@5@01))
  :qid |quant-u-21463|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@7@01 r) (Set_in (inv@6@01 r) xs@2@01)) (= (inv@6@01 r) r))
  :pattern ((inv@6@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((z@5@01 $Ref)) (!
  (=> (Set_in z@5@01 xs@2@01) (not (= z@5@01 $Ref.null)))
  :pattern ((Set_in z@5@01 xs@2@01))
  :pattern ((inv@6@01 z@5@01))
  :pattern ((img@7@01 z@5@01))
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
; var a: Int
(declare-const a@8@01 Int)
; [exec]
; var b: Int
(declare-const b@9@01 Int)
; [exec]
; a := fun1(xs, x)
; [eval] fun1(xs, x)
(push) ; 3
; [eval] (x in xs)
(declare-const z@10@01 $Ref)
(push) ; 4
; [eval] (z in xs)
(assert (Set_in z@10@01 xs@2@01))
(pop) ; 4
(declare-fun inv@11@01 ($Ref) $Ref)
(declare-fun img@12@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((z1@10@01 $Ref) (z2@10@01 $Ref)) (!
  (=>
    (and
      (Set_in z1@10@01 xs@2@01)
      (Set_in z2@10@01 xs@2@01)
      (= z1@10@01 z2@10@01))
    (= z1@10@01 z2@10@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@10@01 $Ref)) (!
  (=>
    (Set_in z@10@01 xs@2@01)
    (and (= (inv@11@01 z@10@01) z@10@01) (img@12@01 z@10@01)))
  :pattern ((Set_in z@10@01 xs@2@01))
  :pattern ((inv@11@01 z@10@01))
  :pattern ((img@12@01 z@10@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@12@01 r) (Set_in (inv@11@01 r) xs@2@01)) (= (inv@11@01 r) r))
  :pattern ((inv@11@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@11@01 r) xs@2@01) (img@12@01 r) (= r (inv@11@01 r)))
    (>
      (ite (and (img@7@01 r) (Set_in (inv@6@01 r) xs@2@01)) $Perm.Write $Perm.No)
      $Perm.No))
  
  :qid |quant-u-21465|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@13@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@13@01  $FVF<f>)))
      (and (Set_in (inv@11@01 r) xs@2@01) (img@12@01 r)))
    (=>
      (and (Set_in (inv@11@01 r) xs@2@01) (img@12@01 r))
      (Set_in r ($FVF.domain_f (as sm@13@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@13@01  $FVF<f>))))
  :qid |qp.fvfDomDef1|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@11@01 r) xs@2@01) (img@12@01 r))
      (and (img@7@01 r) (Set_in (inv@6@01 r) xs@2@01)))
    (=
      ($FVF.lookup_f (as sm@13@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second $t@4@01)) r)))
  :pattern (($FVF.lookup_f (as sm@13@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second $t@4@01)) r))
  :qid |qp.fvfValDef0|)))
(assert (fun1%precondition ($Snap.combine
  $Snap.unit
  ($SortWrappers.$FVF<f>To$Snap (as sm@13@01  $FVF<f>))) xs@2@01 x@3@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((z@10@01 $Ref)) (!
  (=>
    (Set_in z@10@01 xs@2@01)
    (and (= (inv@11@01 z@10@01) z@10@01) (img@12@01 z@10@01)))
  :pattern ((Set_in z@10@01 xs@2@01))
  :pattern ((inv@11@01 z@10@01))
  :pattern ((img@12@01 z@10@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@12@01 r) (Set_in (inv@11@01 r) xs@2@01)) (= (inv@11@01 r) r))
  :pattern ((inv@11@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@13@01  $FVF<f>)))
      (and (Set_in (inv@11@01 r) xs@2@01) (img@12@01 r)))
    (=>
      (and (Set_in (inv@11@01 r) xs@2@01) (img@12@01 r))
      (Set_in r ($FVF.domain_f (as sm@13@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@13@01  $FVF<f>))))
  :qid |qp.fvfDomDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@11@01 r) xs@2@01) (img@12@01 r))
      (and (img@7@01 r) (Set_in (inv@6@01 r) xs@2@01)))
    (=
      ($FVF.lookup_f (as sm@13@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second $t@4@01)) r)))
  :pattern (($FVF.lookup_f (as sm@13@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second $t@4@01)) r))
  :qid |qp.fvfValDef0|)))
(assert (fun1%precondition ($Snap.combine
  $Snap.unit
  ($SortWrappers.$FVF<f>To$Snap (as sm@13@01  $FVF<f>))) xs@2@01 x@3@01))
(declare-const a@14@01 Int)
(assert (=
  a@14@01
  (fun1 ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<f>To$Snap (as sm@13@01  $FVF<f>))) xs@2@01 x@3@01)))
; [exec]
; assert a == fun1(xs, x)
; [eval] a == fun1(xs, x)
; [eval] fun1(xs, x)
(push) ; 3
; [eval] (x in xs)
(declare-const z@15@01 $Ref)
(push) ; 4
; [eval] (z in xs)
(assert (Set_in z@15@01 xs@2@01))
(pop) ; 4
(declare-fun inv@16@01 ($Ref) $Ref)
(declare-fun img@17@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((z1@15@01 $Ref) (z2@15@01 $Ref)) (!
  (=>
    (and
      (Set_in z1@15@01 xs@2@01)
      (Set_in z2@15@01 xs@2@01)
      (= z1@15@01 z2@15@01))
    (= z1@15@01 z2@15@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@15@01 $Ref)) (!
  (=>
    (Set_in z@15@01 xs@2@01)
    (and (= (inv@16@01 z@15@01) z@15@01) (img@17@01 z@15@01)))
  :pattern ((Set_in z@15@01 xs@2@01))
  :pattern ((inv@16@01 z@15@01))
  :pattern ((img@17@01 z@15@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@17@01 r) (Set_in (inv@16@01 r) xs@2@01)) (= (inv@16@01 r) r))
  :pattern ((inv@16@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@16@01 r) xs@2@01) (img@17@01 r) (= r (inv@16@01 r)))
    (>
      (ite (and (img@7@01 r) (Set_in (inv@6@01 r) xs@2@01)) $Perm.Write $Perm.No)
      $Perm.No))
  
  :qid |quant-u-21467|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@18@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@18@01  $FVF<f>)))
      (and (Set_in (inv@16@01 r) xs@2@01) (img@17@01 r)))
    (=>
      (and (Set_in (inv@16@01 r) xs@2@01) (img@17@01 r))
      (Set_in r ($FVF.domain_f (as sm@18@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@18@01  $FVF<f>))))
  :qid |qp.fvfDomDef3|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@16@01 r) xs@2@01) (img@17@01 r))
      (and (img@7@01 r) (Set_in (inv@6@01 r) xs@2@01)))
    (=
      ($FVF.lookup_f (as sm@18@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second $t@4@01)) r)))
  :pattern (($FVF.lookup_f (as sm@18@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second $t@4@01)) r))
  :qid |qp.fvfValDef2|)))
(assert (fun1%precondition ($Snap.combine
  $Snap.unit
  ($SortWrappers.$FVF<f>To$Snap (as sm@18@01  $FVF<f>))) xs@2@01 x@3@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((z@15@01 $Ref)) (!
  (=>
    (Set_in z@15@01 xs@2@01)
    (and (= (inv@16@01 z@15@01) z@15@01) (img@17@01 z@15@01)))
  :pattern ((Set_in z@15@01 xs@2@01))
  :pattern ((inv@16@01 z@15@01))
  :pattern ((img@17@01 z@15@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@17@01 r) (Set_in (inv@16@01 r) xs@2@01)) (= (inv@16@01 r) r))
  :pattern ((inv@16@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@18@01  $FVF<f>)))
      (and (Set_in (inv@16@01 r) xs@2@01) (img@17@01 r)))
    (=>
      (and (Set_in (inv@16@01 r) xs@2@01) (img@17@01 r))
      (Set_in r ($FVF.domain_f (as sm@18@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@18@01  $FVF<f>))))
  :qid |qp.fvfDomDef3|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@16@01 r) xs@2@01) (img@17@01 r))
      (and (img@7@01 r) (Set_in (inv@6@01 r) xs@2@01)))
    (=
      ($FVF.lookup_f (as sm@18@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second $t@4@01)) r)))
  :pattern (($FVF.lookup_f (as sm@18@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second $t@4@01)) r))
  :qid |qp.fvfValDef2|)))
(assert (fun1%precondition ($Snap.combine
  $Snap.unit
  ($SortWrappers.$FVF<f>To$Snap (as sm@18@01  $FVF<f>))) xs@2@01 x@3@01))
(push) ; 3
(assert (not (=
  a@14@01
  (fun1 ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<f>To$Snap (as sm@18@01  $FVF<f>))) xs@2@01 x@3@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  a@14@01
  (fun1 ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<f>To$Snap (as sm@18@01  $FVF<f>))) xs@2@01 x@3@01)))
; [exec]
; b := fun1(xs, x)
; [eval] fun1(xs, x)
(push) ; 3
; [eval] (x in xs)
(declare-const z@19@01 $Ref)
(push) ; 4
; [eval] (z in xs)
(assert (Set_in z@19@01 xs@2@01))
(pop) ; 4
(declare-fun inv@20@01 ($Ref) $Ref)
(declare-fun img@21@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((z1@19@01 $Ref) (z2@19@01 $Ref)) (!
  (=>
    (and
      (Set_in z1@19@01 xs@2@01)
      (Set_in z2@19@01 xs@2@01)
      (= z1@19@01 z2@19@01))
    (= z1@19@01 z2@19@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@19@01 $Ref)) (!
  (=>
    (Set_in z@19@01 xs@2@01)
    (and (= (inv@20@01 z@19@01) z@19@01) (img@21@01 z@19@01)))
  :pattern ((Set_in z@19@01 xs@2@01))
  :pattern ((inv@20@01 z@19@01))
  :pattern ((img@21@01 z@19@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@21@01 r) (Set_in (inv@20@01 r) xs@2@01)) (= (inv@20@01 r) r))
  :pattern ((inv@20@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@20@01 r) xs@2@01) (img@21@01 r) (= r (inv@20@01 r)))
    (>
      (ite (and (img@7@01 r) (Set_in (inv@6@01 r) xs@2@01)) $Perm.Write $Perm.No)
      $Perm.No))
  
  :qid |quant-u-21469|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@22@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@22@01  $FVF<f>)))
      (and (Set_in (inv@20@01 r) xs@2@01) (img@21@01 r)))
    (=>
      (and (Set_in (inv@20@01 r) xs@2@01) (img@21@01 r))
      (Set_in r ($FVF.domain_f (as sm@22@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@22@01  $FVF<f>))))
  :qid |qp.fvfDomDef5|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@20@01 r) xs@2@01) (img@21@01 r))
      (and (img@7@01 r) (Set_in (inv@6@01 r) xs@2@01)))
    (=
      ($FVF.lookup_f (as sm@22@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second $t@4@01)) r)))
  :pattern (($FVF.lookup_f (as sm@22@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second $t@4@01)) r))
  :qid |qp.fvfValDef4|)))
(assert (fun1%precondition ($Snap.combine
  $Snap.unit
  ($SortWrappers.$FVF<f>To$Snap (as sm@22@01  $FVF<f>))) xs@2@01 x@3@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((z@19@01 $Ref)) (!
  (=>
    (Set_in z@19@01 xs@2@01)
    (and (= (inv@20@01 z@19@01) z@19@01) (img@21@01 z@19@01)))
  :pattern ((Set_in z@19@01 xs@2@01))
  :pattern ((inv@20@01 z@19@01))
  :pattern ((img@21@01 z@19@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@21@01 r) (Set_in (inv@20@01 r) xs@2@01)) (= (inv@20@01 r) r))
  :pattern ((inv@20@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@22@01  $FVF<f>)))
      (and (Set_in (inv@20@01 r) xs@2@01) (img@21@01 r)))
    (=>
      (and (Set_in (inv@20@01 r) xs@2@01) (img@21@01 r))
      (Set_in r ($FVF.domain_f (as sm@22@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@22@01  $FVF<f>))))
  :qid |qp.fvfDomDef5|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@20@01 r) xs@2@01) (img@21@01 r))
      (and (img@7@01 r) (Set_in (inv@6@01 r) xs@2@01)))
    (=
      ($FVF.lookup_f (as sm@22@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second $t@4@01)) r)))
  :pattern (($FVF.lookup_f (as sm@22@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second $t@4@01)) r))
  :qid |qp.fvfValDef4|)))
(assert (fun1%precondition ($Snap.combine
  $Snap.unit
  ($SortWrappers.$FVF<f>To$Snap (as sm@22@01  $FVF<f>))) xs@2@01 x@3@01))
(declare-const b@23@01 Int)
(assert (=
  b@23@01
  (fun1 ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<f>To$Snap (as sm@22@01  $FVF<f>))) xs@2@01 x@3@01)))
; [exec]
; assert b == fun1(xs, x)
; [eval] b == fun1(xs, x)
; [eval] fun1(xs, x)
(push) ; 3
; [eval] (x in xs)
(declare-const z@24@01 $Ref)
(push) ; 4
; [eval] (z in xs)
(assert (Set_in z@24@01 xs@2@01))
(pop) ; 4
(declare-fun inv@25@01 ($Ref) $Ref)
(declare-fun img@26@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((z1@24@01 $Ref) (z2@24@01 $Ref)) (!
  (=>
    (and
      (Set_in z1@24@01 xs@2@01)
      (Set_in z2@24@01 xs@2@01)
      (= z1@24@01 z2@24@01))
    (= z1@24@01 z2@24@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@24@01 $Ref)) (!
  (=>
    (Set_in z@24@01 xs@2@01)
    (and (= (inv@25@01 z@24@01) z@24@01) (img@26@01 z@24@01)))
  :pattern ((Set_in z@24@01 xs@2@01))
  :pattern ((inv@25@01 z@24@01))
  :pattern ((img@26@01 z@24@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@26@01 r) (Set_in (inv@25@01 r) xs@2@01)) (= (inv@25@01 r) r))
  :pattern ((inv@25@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@25@01 r) xs@2@01) (img@26@01 r) (= r (inv@25@01 r)))
    (>
      (ite (and (img@7@01 r) (Set_in (inv@6@01 r) xs@2@01)) $Perm.Write $Perm.No)
      $Perm.No))
  
  :qid |quant-u-21471|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@27@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@27@01  $FVF<f>)))
      (and (Set_in (inv@25@01 r) xs@2@01) (img@26@01 r)))
    (=>
      (and (Set_in (inv@25@01 r) xs@2@01) (img@26@01 r))
      (Set_in r ($FVF.domain_f (as sm@27@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@27@01  $FVF<f>))))
  :qid |qp.fvfDomDef7|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@25@01 r) xs@2@01) (img@26@01 r))
      (and (img@7@01 r) (Set_in (inv@6@01 r) xs@2@01)))
    (=
      ($FVF.lookup_f (as sm@27@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second $t@4@01)) r)))
  :pattern (($FVF.lookup_f (as sm@27@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second $t@4@01)) r))
  :qid |qp.fvfValDef6|)))
(assert (fun1%precondition ($Snap.combine
  $Snap.unit
  ($SortWrappers.$FVF<f>To$Snap (as sm@27@01  $FVF<f>))) xs@2@01 x@3@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((z@24@01 $Ref)) (!
  (=>
    (Set_in z@24@01 xs@2@01)
    (and (= (inv@25@01 z@24@01) z@24@01) (img@26@01 z@24@01)))
  :pattern ((Set_in z@24@01 xs@2@01))
  :pattern ((inv@25@01 z@24@01))
  :pattern ((img@26@01 z@24@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@26@01 r) (Set_in (inv@25@01 r) xs@2@01)) (= (inv@25@01 r) r))
  :pattern ((inv@25@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@27@01  $FVF<f>)))
      (and (Set_in (inv@25@01 r) xs@2@01) (img@26@01 r)))
    (=>
      (and (Set_in (inv@25@01 r) xs@2@01) (img@26@01 r))
      (Set_in r ($FVF.domain_f (as sm@27@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@27@01  $FVF<f>))))
  :qid |qp.fvfDomDef7|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@25@01 r) xs@2@01) (img@26@01 r))
      (and (img@7@01 r) (Set_in (inv@6@01 r) xs@2@01)))
    (=
      ($FVF.lookup_f (as sm@27@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second $t@4@01)) r)))
  :pattern (($FVF.lookup_f (as sm@27@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second $t@4@01)) r))
  :qid |qp.fvfValDef6|)))
(assert (fun1%precondition ($Snap.combine
  $Snap.unit
  ($SortWrappers.$FVF<f>To$Snap (as sm@27@01  $FVF<f>))) xs@2@01 x@3@01))
(push) ; 3
(assert (not (=
  b@23@01
  (fun1 ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<f>To$Snap (as sm@27@01  $FVF<f>))) xs@2@01 x@3@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  b@23@01
  (fun1 ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<f>To$Snap (as sm@27@01  $FVF<f>))) xs@2@01 x@3@01)))
; [exec]
; assert a == b
; [eval] a == b
(push) ; 3
(assert (not (= a@14@01 b@23@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (= a@14@01 b@23@01))
(pop) ; 2
(pop) ; 1
; ---------- test5 ----------
(declare-const xs@28@01 Set<$Ref>)
(declare-const x@29@01 $Ref)
(declare-const y@30@01 $Ref)
(declare-const xs@31@01 Set<$Ref>)
(declare-const x@32@01 $Ref)
(declare-const y@33@01 $Ref)
(push) ; 1
(declare-const $t@34@01 $Snap)
(assert (= $t@34@01 ($Snap.combine ($Snap.first $t@34@01) ($Snap.second $t@34@01))))
(assert (= ($Snap.first $t@34@01) $Snap.unit))
; [eval] (x in xs)
(assert (Set_in x@32@01 xs@31@01))
(assert (=
  ($Snap.second $t@34@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@34@01))
    ($Snap.second ($Snap.second $t@34@01)))))
(assert (= ($Snap.first ($Snap.second $t@34@01)) $Snap.unit))
; [eval] (y in xs)
(assert (Set_in y@33@01 xs@31@01))
(assert (=
  ($Snap.second ($Snap.second $t@34@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@34@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@34@01))))))
(declare-const z@35@01 $Ref)
(push) ; 2
; [eval] (z in xs)
(assert (Set_in z@35@01 xs@31@01))
(pop) ; 2
(declare-fun inv@36@01 ($Ref) $Ref)
(declare-fun img@37@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((z1@35@01 $Ref) (z2@35@01 $Ref)) (!
  (=>
    (and
      (Set_in z1@35@01 xs@31@01)
      (Set_in z2@35@01 xs@31@01)
      (= z1@35@01 z2@35@01))
    (= z1@35@01 z2@35@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@35@01 $Ref)) (!
  (=>
    (Set_in z@35@01 xs@31@01)
    (and (= (inv@36@01 z@35@01) z@35@01) (img@37@01 z@35@01)))
  :pattern ((Set_in z@35@01 xs@31@01))
  :pattern ((inv@36@01 z@35@01))
  :pattern ((img@37@01 z@35@01))
  :qid |quant-u-21473|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@37@01 r) (Set_in (inv@36@01 r) xs@31@01)) (= (inv@36@01 r) r))
  :pattern ((inv@36@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((z@35@01 $Ref)) (!
  (=> (Set_in z@35@01 xs@31@01) (not (= z@35@01 $Ref.null)))
  :pattern ((Set_in z@35@01 xs@31@01))
  :pattern ((inv@36@01 z@35@01))
  :pattern ((img@37@01 z@35@01))
  :qid |f-permImpliesNonNull|)))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@34@01))) $Snap.unit))
; [eval] x != y
(assert (not (= x@32@01 y@33@01)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; var yf: Int
(declare-const yf@38@01 Int)
; [exec]
; yf := y.f
(push) ; 3
(assert (not (and (img@37@01 y@33@01) (Set_in (inv@36@01 y@33@01) xs@31@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const yf@39@01 Int)
(assert (=
  yf@39@01
  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@34@01)))) y@33@01)))
; [exec]
; x.f := 1
; Precomputing data for removing quantified permissions
(define-fun pTaken@40@01 ((r $Ref)) $Perm
  (ite
    (= r x@32@01)
    ($Perm.min
      (ite
        (and (img@37@01 r) (Set_in (inv@36@01 r) xs@31@01))
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
        (and (img@37@01 r) (Set_in (inv@36@01 r) xs@31@01))
        $Perm.Write
        $Perm.No)
      (pTaken@40@01 r))
    $Perm.No)
  
  :qid |quant-u-21475|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@40@01 r) $Perm.No)
  
  :qid |quant-u-21476|))))
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
  (=> (= r x@32@01) (= (- $Perm.Write (pTaken@40@01 r)) $Perm.No))
  
  :qid |quant-u-21477|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@41@01 $FVF<f>)
; Definitional axioms for singleton-FVF's value
(assert (= ($FVF.lookup_f (as sm@41@01  $FVF<f>) x@32@01) 1))
; [exec]
; assert y.f == yf
; [eval] y.f == yf
(declare-const sm@42@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@32@01)
    (=
      ($FVF.lookup_f (as sm@42@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@41@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@42@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@41@01  $FVF<f>) r))
  :qid |qp.fvfValDef8|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@37@01 r) (Set_in (inv@36@01 r) xs@31@01))
      (< $Perm.No (- $Perm.Write (pTaken@40@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@42@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@34@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@42@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@34@01)))) r))
  :qid |qp.fvfValDef9|)))
(declare-const pm@43@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@43@01  $FPM) r)
    (+
      (ite (= r x@32@01) $Perm.Write $Perm.No)
      (ite
        (and (img@37@01 r) (Set_in (inv@36@01 r) xs@31@01))
        (- $Perm.Write (pTaken@40@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@43@01  $FPM) r))
  :qid |qp.resPrmSumDef10|)))
(set-option :timeout 0)
(push) ; 3
(assert (not (< $Perm.No ($FVF.perm_f (as pm@43@01  $FPM) y@33@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (= ($FVF.lookup_f (as sm@42@01  $FVF<f>) y@33@01) yf@39@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (= ($FVF.lookup_f (as sm@42@01  $FVF<f>) y@33@01) yf@39@01))
; [exec]
; y.f := yf + 1
; [eval] yf + 1
(push) ; 3
(set-option :timeout 10)
(assert (not (= x@32@01 y@33@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@44@01 ((r $Ref)) $Perm
  (ite
    (= r y@33@01)
    ($Perm.min
      (ite
        (and (img@37@01 r) (Set_in (inv@36@01 r) xs@31@01))
        (- $Perm.Write (pTaken@40@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@45@01 ((r $Ref)) $Perm
  (ite
    (= r y@33@01)
    ($Perm.min
      (ite (= r x@32@01) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@44@01 r)))
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
        (and (img@37@01 r) (Set_in (inv@36@01 r) xs@31@01))
        (- $Perm.Write (pTaken@40@01 r))
        $Perm.No)
      (pTaken@44@01 r))
    $Perm.No)
  
  :qid |quant-u-21479|))))
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
  
  :qid |quant-u-21480|))))
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
  (=> (= r y@33@01) (= (- $Perm.Write (pTaken@44@01 r)) $Perm.No))
  
  :qid |quant-u-21481|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@46@01 $FVF<f>)
; Definitional axioms for singleton-FVF's value
(assert (= ($FVF.lookup_f (as sm@46@01  $FVF<f>) y@33@01) (+ yf@39@01 1)))
; [exec]
; exhale (forall z: Ref ::(z in xs) ==> acc(z.f, write))
(declare-const z@47@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (z in xs)
(assert (Set_in z@47@01 xs@31@01))
(pop) ; 3
(declare-fun inv@48@01 ($Ref) $Ref)
(declare-fun img@49@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((z1@47@01 $Ref) (z2@47@01 $Ref)) (!
  (=>
    (and
      (Set_in z1@47@01 xs@31@01)
      (Set_in z2@47@01 xs@31@01)
      (= z1@47@01 z2@47@01))
    (= z1@47@01 z2@47@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@47@01 $Ref)) (!
  (=>
    (Set_in z@47@01 xs@31@01)
    (and (= (inv@48@01 z@47@01) z@47@01) (img@49@01 z@47@01)))
  :pattern ((Set_in z@47@01 xs@31@01))
  :pattern ((inv@48@01 z@47@01))
  :pattern ((img@49@01 z@47@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@49@01 r) (Set_in (inv@48@01 r) xs@31@01)) (= (inv@48@01 r) r))
  :pattern ((inv@48@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@50@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@48@01 r) xs@31@01) (img@49@01 r) (= r (inv@48@01 r)))
    ($Perm.min
      (ite
        (and (img@37@01 r) (Set_in (inv@36@01 r) xs@31@01))
        (- (- $Perm.Write (pTaken@40@01 r)) (pTaken@44@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@51@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@48@01 r) xs@31@01) (img@49@01 r) (= r (inv@48@01 r)))
    ($Perm.min
      (ite (= r y@33@01) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@50@01 r)))
    $Perm.No))
(define-fun pTaken@52@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@48@01 r) xs@31@01) (img@49@01 r) (= r (inv@48@01 r)))
    ($Perm.min
      (ite (= r x@32@01) $Perm.Write $Perm.No)
      (- (- $Perm.Write (pTaken@50@01 r)) (pTaken@51@01 r)))
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
        (and (img@37@01 r) (Set_in (inv@36@01 r) xs@31@01))
        (- (- $Perm.Write (pTaken@40@01 r)) (pTaken@44@01 r))
        $Perm.No)
      (pTaken@50@01 r))
    $Perm.No)
  
  :qid |quant-u-21484|))))
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
    (and (Set_in (inv@48@01 r) xs@31@01) (img@49@01 r) (= r (inv@48@01 r)))
    (= (- $Perm.Write (pTaken@50@01 r)) $Perm.No))
  
  :qid |quant-u-21485|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@51@01 y@33@01)) $Perm.No)))
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
    (and (Set_in (inv@48@01 r) xs@31@01) (img@49@01 r) (= r (inv@48@01 r)))
    (= (- (- $Perm.Write (pTaken@50@01 r)) (pTaken@51@01 r)) $Perm.No))
  
  :qid |quant-u-21487|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@52@01 x@32@01)) $Perm.No)))
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
    (and (Set_in (inv@48@01 r) xs@31@01) (img@49@01 r) (= r (inv@48@01 r)))
    (=
      (- (- (- $Perm.Write (pTaken@50@01 r)) (pTaken@51@01 r)) (pTaken@52@01 r))
      $Perm.No))
  
  :qid |quant-u-21489|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; assert false
(set-option :timeout 0)
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 2
(pop) ; 1
; ---------- test4 ----------
(declare-const xs@53@01 Set<$Ref>)
(declare-const x@54@01 $Ref)
(declare-const y@55@01 $Ref)
(declare-const xs@56@01 Set<$Ref>)
(declare-const x@57@01 $Ref)
(declare-const y@58@01 $Ref)
(push) ; 1
(declare-const $t@59@01 $Snap)
(assert (= $t@59@01 ($Snap.combine ($Snap.first $t@59@01) ($Snap.second $t@59@01))))
(assert (= ($Snap.first $t@59@01) $Snap.unit))
; [eval] (x in xs)
(assert (Set_in x@57@01 xs@56@01))
(assert (=
  ($Snap.second $t@59@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@59@01))
    ($Snap.second ($Snap.second $t@59@01)))))
(assert (= ($Snap.first ($Snap.second $t@59@01)) $Snap.unit))
; [eval] (y in xs)
(assert (Set_in y@58@01 xs@56@01))
(assert (=
  ($Snap.second ($Snap.second $t@59@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@59@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@59@01))))))
(declare-const z@60@01 $Ref)
(push) ; 2
; [eval] (z in xs)
(assert (Set_in z@60@01 xs@56@01))
(pop) ; 2
(declare-fun inv@61@01 ($Ref) $Ref)
(declare-fun img@62@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((z1@60@01 $Ref) (z2@60@01 $Ref)) (!
  (=>
    (and
      (Set_in z1@60@01 xs@56@01)
      (Set_in z2@60@01 xs@56@01)
      (= z1@60@01 z2@60@01))
    (= z1@60@01 z2@60@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@60@01 $Ref)) (!
  (=>
    (Set_in z@60@01 xs@56@01)
    (and (= (inv@61@01 z@60@01) z@60@01) (img@62@01 z@60@01)))
  :pattern ((Set_in z@60@01 xs@56@01))
  :pattern ((inv@61@01 z@60@01))
  :pattern ((img@62@01 z@60@01))
  :qid |quant-u-21491|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@62@01 r) (Set_in (inv@61@01 r) xs@56@01)) (= (inv@61@01 r) r))
  :pattern ((inv@61@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((z@60@01 $Ref)) (!
  (=> (Set_in z@60@01 xs@56@01) (not (= z@60@01 $Ref.null)))
  :pattern ((Set_in z@60@01 xs@56@01))
  :pattern ((inv@61@01 z@60@01))
  :pattern ((img@62@01 z@60@01))
  :qid |f-permImpliesNonNull|)))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@59@01))) $Snap.unit))
; [eval] x != y
(assert (not (= x@57@01 y@58@01)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; var xf: Int
(declare-const xf@63@01 Int)
; [exec]
; var yf: Int
(declare-const yf@64@01 Int)
; [exec]
; xf := fun1(xs, x)
; [eval] fun1(xs, x)
(push) ; 3
; [eval] (x in xs)
(declare-const z@65@01 $Ref)
(push) ; 4
; [eval] (z in xs)
(assert (Set_in z@65@01 xs@56@01))
(pop) ; 4
(declare-fun inv@66@01 ($Ref) $Ref)
(declare-fun img@67@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((z1@65@01 $Ref) (z2@65@01 $Ref)) (!
  (=>
    (and
      (Set_in z1@65@01 xs@56@01)
      (Set_in z2@65@01 xs@56@01)
      (= z1@65@01 z2@65@01))
    (= z1@65@01 z2@65@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@65@01 $Ref)) (!
  (=>
    (Set_in z@65@01 xs@56@01)
    (and (= (inv@66@01 z@65@01) z@65@01) (img@67@01 z@65@01)))
  :pattern ((Set_in z@65@01 xs@56@01))
  :pattern ((inv@66@01 z@65@01))
  :pattern ((img@67@01 z@65@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@67@01 r) (Set_in (inv@66@01 r) xs@56@01)) (= (inv@66@01 r) r))
  :pattern ((inv@66@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@66@01 r) xs@56@01) (img@67@01 r) (= r (inv@66@01 r)))
    (>
      (ite
        (and (img@62@01 r) (Set_in (inv@61@01 r) xs@56@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-21493|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@68@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@68@01  $FVF<f>)))
      (and (Set_in (inv@66@01 r) xs@56@01) (img@67@01 r)))
    (=>
      (and (Set_in (inv@66@01 r) xs@56@01) (img@67@01 r))
      (Set_in r ($FVF.domain_f (as sm@68@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@68@01  $FVF<f>))))
  :qid |qp.fvfDomDef12|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@66@01 r) xs@56@01) (img@67@01 r))
      (and (img@62@01 r) (Set_in (inv@61@01 r) xs@56@01)))
    (=
      ($FVF.lookup_f (as sm@68@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@59@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@68@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@59@01)))) r))
  :qid |qp.fvfValDef11|)))
(assert (fun1%precondition ($Snap.combine
  $Snap.unit
  ($SortWrappers.$FVF<f>To$Snap (as sm@68@01  $FVF<f>))) xs@56@01 x@57@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((z@65@01 $Ref)) (!
  (=>
    (Set_in z@65@01 xs@56@01)
    (and (= (inv@66@01 z@65@01) z@65@01) (img@67@01 z@65@01)))
  :pattern ((Set_in z@65@01 xs@56@01))
  :pattern ((inv@66@01 z@65@01))
  :pattern ((img@67@01 z@65@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@67@01 r) (Set_in (inv@66@01 r) xs@56@01)) (= (inv@66@01 r) r))
  :pattern ((inv@66@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@68@01  $FVF<f>)))
      (and (Set_in (inv@66@01 r) xs@56@01) (img@67@01 r)))
    (=>
      (and (Set_in (inv@66@01 r) xs@56@01) (img@67@01 r))
      (Set_in r ($FVF.domain_f (as sm@68@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@68@01  $FVF<f>))))
  :qid |qp.fvfDomDef12|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@66@01 r) xs@56@01) (img@67@01 r))
      (and (img@62@01 r) (Set_in (inv@61@01 r) xs@56@01)))
    (=
      ($FVF.lookup_f (as sm@68@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@59@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@68@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@59@01)))) r))
  :qid |qp.fvfValDef11|)))
(assert (fun1%precondition ($Snap.combine
  $Snap.unit
  ($SortWrappers.$FVF<f>To$Snap (as sm@68@01  $FVF<f>))) xs@56@01 x@57@01))
(declare-const xf@69@01 Int)
(assert (=
  xf@69@01
  (fun1 ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<f>To$Snap (as sm@68@01  $FVF<f>))) xs@56@01 x@57@01)))
; [exec]
; yf := fun1(xs, y)
; [eval] fun1(xs, y)
(push) ; 3
; [eval] (x in xs)
(declare-const z@70@01 $Ref)
(push) ; 4
; [eval] (z in xs)
(assert (Set_in z@70@01 xs@56@01))
(pop) ; 4
(declare-fun inv@71@01 ($Ref) $Ref)
(declare-fun img@72@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((z1@70@01 $Ref) (z2@70@01 $Ref)) (!
  (=>
    (and
      (Set_in z1@70@01 xs@56@01)
      (Set_in z2@70@01 xs@56@01)
      (= z1@70@01 z2@70@01))
    (= z1@70@01 z2@70@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@70@01 $Ref)) (!
  (=>
    (Set_in z@70@01 xs@56@01)
    (and (= (inv@71@01 z@70@01) z@70@01) (img@72@01 z@70@01)))
  :pattern ((Set_in z@70@01 xs@56@01))
  :pattern ((inv@71@01 z@70@01))
  :pattern ((img@72@01 z@70@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@72@01 r) (Set_in (inv@71@01 r) xs@56@01)) (= (inv@71@01 r) r))
  :pattern ((inv@71@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@71@01 r) xs@56@01) (img@72@01 r) (= r (inv@71@01 r)))
    (>
      (ite
        (and (img@62@01 r) (Set_in (inv@61@01 r) xs@56@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-21495|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@73@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@73@01  $FVF<f>)))
      (and (Set_in (inv@71@01 r) xs@56@01) (img@72@01 r)))
    (=>
      (and (Set_in (inv@71@01 r) xs@56@01) (img@72@01 r))
      (Set_in r ($FVF.domain_f (as sm@73@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@73@01  $FVF<f>))))
  :qid |qp.fvfDomDef14|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@71@01 r) xs@56@01) (img@72@01 r))
      (and (img@62@01 r) (Set_in (inv@61@01 r) xs@56@01)))
    (=
      ($FVF.lookup_f (as sm@73@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@59@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@73@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@59@01)))) r))
  :qid |qp.fvfValDef13|)))
(assert (fun1%precondition ($Snap.combine
  $Snap.unit
  ($SortWrappers.$FVF<f>To$Snap (as sm@73@01  $FVF<f>))) xs@56@01 y@58@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((z@70@01 $Ref)) (!
  (=>
    (Set_in z@70@01 xs@56@01)
    (and (= (inv@71@01 z@70@01) z@70@01) (img@72@01 z@70@01)))
  :pattern ((Set_in z@70@01 xs@56@01))
  :pattern ((inv@71@01 z@70@01))
  :pattern ((img@72@01 z@70@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@72@01 r) (Set_in (inv@71@01 r) xs@56@01)) (= (inv@71@01 r) r))
  :pattern ((inv@71@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@73@01  $FVF<f>)))
      (and (Set_in (inv@71@01 r) xs@56@01) (img@72@01 r)))
    (=>
      (and (Set_in (inv@71@01 r) xs@56@01) (img@72@01 r))
      (Set_in r ($FVF.domain_f (as sm@73@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@73@01  $FVF<f>))))
  :qid |qp.fvfDomDef14|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@71@01 r) xs@56@01) (img@72@01 r))
      (and (img@62@01 r) (Set_in (inv@61@01 r) xs@56@01)))
    (=
      ($FVF.lookup_f (as sm@73@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@59@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@73@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@59@01)))) r))
  :qid |qp.fvfValDef13|)))
(assert (fun1%precondition ($Snap.combine
  $Snap.unit
  ($SortWrappers.$FVF<f>To$Snap (as sm@73@01  $FVF<f>))) xs@56@01 y@58@01))
(declare-const yf@74@01 Int)
(assert (=
  yf@74@01
  (fun1 ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<f>To$Snap (as sm@73@01  $FVF<f>))) xs@56@01 y@58@01)))
; [exec]
; x.f := xf + 1
; [eval] xf + 1
; Precomputing data for removing quantified permissions
(define-fun pTaken@75@01 ((r $Ref)) $Perm
  (ite
    (= r x@57@01)
    ($Perm.min
      (ite
        (and (img@62@01 r) (Set_in (inv@61@01 r) xs@56@01))
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
        (and (img@62@01 r) (Set_in (inv@61@01 r) xs@56@01))
        $Perm.Write
        $Perm.No)
      (pTaken@75@01 r))
    $Perm.No)
  
  :qid |quant-u-21497|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@75@01 r) $Perm.No)
  
  :qid |quant-u-21498|))))
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
  (=> (= r x@57@01) (= (- $Perm.Write (pTaken@75@01 r)) $Perm.No))
  
  :qid |quant-u-21499|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@76@01 $FVF<f>)
; Definitional axioms for singleton-FVF's value
(assert (= ($FVF.lookup_f (as sm@76@01  $FVF<f>) x@57@01) (+ xf@69@01 1)))
; [exec]
; assert fun1(xs, x) == xf + 1
; [eval] fun1(xs, x) == xf + 1
; [eval] fun1(xs, x)
(set-option :timeout 0)
(push) ; 3
; [eval] (x in xs)
(declare-const z@77@01 $Ref)
(push) ; 4
; [eval] (z in xs)
(assert (Set_in z@77@01 xs@56@01))
(pop) ; 4
(declare-fun inv@78@01 ($Ref) $Ref)
(declare-fun img@79@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((z1@77@01 $Ref) (z2@77@01 $Ref)) (!
  (=>
    (and
      (Set_in z1@77@01 xs@56@01)
      (Set_in z2@77@01 xs@56@01)
      (= z1@77@01 z2@77@01))
    (= z1@77@01 z2@77@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@77@01 $Ref)) (!
  (=>
    (Set_in z@77@01 xs@56@01)
    (and (= (inv@78@01 z@77@01) z@77@01) (img@79@01 z@77@01)))
  :pattern ((Set_in z@77@01 xs@56@01))
  :pattern ((inv@78@01 z@77@01))
  :pattern ((img@79@01 z@77@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@79@01 r) (Set_in (inv@78@01 r) xs@56@01)) (= (inv@78@01 r) r))
  :pattern ((inv@78@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@78@01 r) xs@56@01) (img@79@01 r) (= r (inv@78@01 r)))
    (>
      (+
        (ite
          (and (img@62@01 r) (Set_in (inv@61@01 r) xs@56@01))
          (- $Perm.Write (pTaken@75@01 r))
          $Perm.No)
        (ite (= r x@57@01) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-21501|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@80@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@80@01  $FVF<f>)))
      (and (Set_in (inv@78@01 r) xs@56@01) (img@79@01 r)))
    (=>
      (and (Set_in (inv@78@01 r) xs@56@01) (img@79@01 r))
      (Set_in r ($FVF.domain_f (as sm@80@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@80@01  $FVF<f>))))
  :qid |qp.fvfDomDef17|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@78@01 r) xs@56@01) (img@79@01 r)) (= r x@57@01))
    (=
      ($FVF.lookup_f (as sm@80@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@76@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@80@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@76@01  $FVF<f>) r))
  :qid |qp.fvfValDef15|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@78@01 r) xs@56@01) (img@79@01 r))
      (ite
        (and (img@62@01 r) (Set_in (inv@61@01 r) xs@56@01))
        (< $Perm.No (- $Perm.Write (pTaken@75@01 r)))
        false))
    (=
      ($FVF.lookup_f (as sm@80@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@59@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@80@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@59@01)))) r))
  :qid |qp.fvfValDef16|)))
(assert (fun1%precondition ($Snap.combine
  $Snap.unit
  ($SortWrappers.$FVF<f>To$Snap (as sm@80@01  $FVF<f>))) xs@56@01 x@57@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((z@77@01 $Ref)) (!
  (=>
    (Set_in z@77@01 xs@56@01)
    (and (= (inv@78@01 z@77@01) z@77@01) (img@79@01 z@77@01)))
  :pattern ((Set_in z@77@01 xs@56@01))
  :pattern ((inv@78@01 z@77@01))
  :pattern ((img@79@01 z@77@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@79@01 r) (Set_in (inv@78@01 r) xs@56@01)) (= (inv@78@01 r) r))
  :pattern ((inv@78@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@80@01  $FVF<f>)))
      (and (Set_in (inv@78@01 r) xs@56@01) (img@79@01 r)))
    (=>
      (and (Set_in (inv@78@01 r) xs@56@01) (img@79@01 r))
      (Set_in r ($FVF.domain_f (as sm@80@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@80@01  $FVF<f>))))
  :qid |qp.fvfDomDef17|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@78@01 r) xs@56@01) (img@79@01 r)) (= r x@57@01))
    (=
      ($FVF.lookup_f (as sm@80@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@76@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@80@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@76@01  $FVF<f>) r))
  :qid |qp.fvfValDef15|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@78@01 r) xs@56@01) (img@79@01 r))
      (ite
        (and (img@62@01 r) (Set_in (inv@61@01 r) xs@56@01))
        (< $Perm.No (- $Perm.Write (pTaken@75@01 r)))
        false))
    (=
      ($FVF.lookup_f (as sm@80@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@59@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@80@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@59@01)))) r))
  :qid |qp.fvfValDef16|)))
(assert (fun1%precondition ($Snap.combine
  $Snap.unit
  ($SortWrappers.$FVF<f>To$Snap (as sm@80@01  $FVF<f>))) xs@56@01 x@57@01))
; [eval] xf + 1
(push) ; 3
(assert (not (=
  (fun1 ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<f>To$Snap (as sm@80@01  $FVF<f>))) xs@56@01 x@57@01)
  (+ xf@69@01 1))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  (fun1 ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<f>To$Snap (as sm@80@01  $FVF<f>))) xs@56@01 x@57@01)
  (+ xf@69@01 1)))
; [exec]
; assert fun1(xs, y) == yf
; [eval] fun1(xs, y) == yf
; [eval] fun1(xs, y)
(push) ; 3
; [eval] (x in xs)
(declare-const z@81@01 $Ref)
(push) ; 4
; [eval] (z in xs)
(assert (Set_in z@81@01 xs@56@01))
(pop) ; 4
(declare-fun inv@82@01 ($Ref) $Ref)
(declare-fun img@83@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((z1@81@01 $Ref) (z2@81@01 $Ref)) (!
  (=>
    (and
      (Set_in z1@81@01 xs@56@01)
      (Set_in z2@81@01 xs@56@01)
      (= z1@81@01 z2@81@01))
    (= z1@81@01 z2@81@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@81@01 $Ref)) (!
  (=>
    (Set_in z@81@01 xs@56@01)
    (and (= (inv@82@01 z@81@01) z@81@01) (img@83@01 z@81@01)))
  :pattern ((Set_in z@81@01 xs@56@01))
  :pattern ((inv@82@01 z@81@01))
  :pattern ((img@83@01 z@81@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@83@01 r) (Set_in (inv@82@01 r) xs@56@01)) (= (inv@82@01 r) r))
  :pattern ((inv@82@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@82@01 r) xs@56@01) (img@83@01 r) (= r (inv@82@01 r)))
    (>
      (+
        (ite
          (and (img@62@01 r) (Set_in (inv@61@01 r) xs@56@01))
          (- $Perm.Write (pTaken@75@01 r))
          $Perm.No)
        (ite (= r x@57@01) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-21503|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@84@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@84@01  $FVF<f>)))
      (and (Set_in (inv@82@01 r) xs@56@01) (img@83@01 r)))
    (=>
      (and (Set_in (inv@82@01 r) xs@56@01) (img@83@01 r))
      (Set_in r ($FVF.domain_f (as sm@84@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@84@01  $FVF<f>))))
  :qid |qp.fvfDomDef20|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@82@01 r) xs@56@01) (img@83@01 r)) (= r x@57@01))
    (=
      ($FVF.lookup_f (as sm@84@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@76@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@84@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@76@01  $FVF<f>) r))
  :qid |qp.fvfValDef18|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@82@01 r) xs@56@01) (img@83@01 r))
      (ite
        (and (img@62@01 r) (Set_in (inv@61@01 r) xs@56@01))
        (< $Perm.No (- $Perm.Write (pTaken@75@01 r)))
        false))
    (=
      ($FVF.lookup_f (as sm@84@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@59@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@84@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@59@01)))) r))
  :qid |qp.fvfValDef19|)))
(assert (fun1%precondition ($Snap.combine
  $Snap.unit
  ($SortWrappers.$FVF<f>To$Snap (as sm@84@01  $FVF<f>))) xs@56@01 y@58@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((z@81@01 $Ref)) (!
  (=>
    (Set_in z@81@01 xs@56@01)
    (and (= (inv@82@01 z@81@01) z@81@01) (img@83@01 z@81@01)))
  :pattern ((Set_in z@81@01 xs@56@01))
  :pattern ((inv@82@01 z@81@01))
  :pattern ((img@83@01 z@81@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@83@01 r) (Set_in (inv@82@01 r) xs@56@01)) (= (inv@82@01 r) r))
  :pattern ((inv@82@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@84@01  $FVF<f>)))
      (and (Set_in (inv@82@01 r) xs@56@01) (img@83@01 r)))
    (=>
      (and (Set_in (inv@82@01 r) xs@56@01) (img@83@01 r))
      (Set_in r ($FVF.domain_f (as sm@84@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@84@01  $FVF<f>))))
  :qid |qp.fvfDomDef20|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@82@01 r) xs@56@01) (img@83@01 r)) (= r x@57@01))
    (=
      ($FVF.lookup_f (as sm@84@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@76@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@84@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@76@01  $FVF<f>) r))
  :qid |qp.fvfValDef18|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@82@01 r) xs@56@01) (img@83@01 r))
      (ite
        (and (img@62@01 r) (Set_in (inv@61@01 r) xs@56@01))
        (< $Perm.No (- $Perm.Write (pTaken@75@01 r)))
        false))
    (=
      ($FVF.lookup_f (as sm@84@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@59@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@84@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@59@01)))) r))
  :qid |qp.fvfValDef19|)))
(assert (fun1%precondition ($Snap.combine
  $Snap.unit
  ($SortWrappers.$FVF<f>To$Snap (as sm@84@01  $FVF<f>))) xs@56@01 y@58@01))
(push) ; 3
(assert (not (=
  (fun1 ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<f>To$Snap (as sm@84@01  $FVF<f>))) xs@56@01 y@58@01)
  yf@74@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  (fun1 ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<f>To$Snap (as sm@84@01  $FVF<f>))) xs@56@01 y@58@01)
  yf@74@01))
; [exec]
; y.f := yf + 1
; [eval] yf + 1
(push) ; 3
(set-option :timeout 10)
(assert (not (= x@57@01 y@58@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@85@01 ((r $Ref)) $Perm
  (ite
    (= r y@58@01)
    ($Perm.min
      (ite
        (and (img@62@01 r) (Set_in (inv@61@01 r) xs@56@01))
        (- $Perm.Write (pTaken@75@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@86@01 ((r $Ref)) $Perm
  (ite
    (= r y@58@01)
    ($Perm.min
      (ite (= r x@57@01) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@85@01 r)))
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
        (and (img@62@01 r) (Set_in (inv@61@01 r) xs@56@01))
        (- $Perm.Write (pTaken@75@01 r))
        $Perm.No)
      (pTaken@85@01 r))
    $Perm.No)
  
  :qid |quant-u-21505|))))
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
  
  :qid |quant-u-21506|))))
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
  (=> (= r y@58@01) (= (- $Perm.Write (pTaken@85@01 r)) $Perm.No))
  
  :qid |quant-u-21507|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@87@01 $FVF<f>)
; Definitional axioms for singleton-FVF's value
(assert (= ($FVF.lookup_f (as sm@87@01  $FVF<f>) y@58@01) (+ yf@74@01 1)))
; [exec]
; assert fun1(xs, x) == xf + 1
; [eval] fun1(xs, x) == xf + 1
; [eval] fun1(xs, x)
(set-option :timeout 0)
(push) ; 3
; [eval] (x in xs)
(declare-const z@88@01 $Ref)
(push) ; 4
; [eval] (z in xs)
(assert (Set_in z@88@01 xs@56@01))
(pop) ; 4
(declare-fun inv@89@01 ($Ref) $Ref)
(declare-fun img@90@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((z1@88@01 $Ref) (z2@88@01 $Ref)) (!
  (=>
    (and
      (Set_in z1@88@01 xs@56@01)
      (Set_in z2@88@01 xs@56@01)
      (= z1@88@01 z2@88@01))
    (= z1@88@01 z2@88@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@88@01 $Ref)) (!
  (=>
    (Set_in z@88@01 xs@56@01)
    (and (= (inv@89@01 z@88@01) z@88@01) (img@90@01 z@88@01)))
  :pattern ((Set_in z@88@01 xs@56@01))
  :pattern ((inv@89@01 z@88@01))
  :pattern ((img@90@01 z@88@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@90@01 r) (Set_in (inv@89@01 r) xs@56@01)) (= (inv@89@01 r) r))
  :pattern ((inv@89@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@89@01 r) xs@56@01) (img@90@01 r) (= r (inv@89@01 r)))
    (>
      (+
        (+
          (ite
            (and (img@62@01 r) (Set_in (inv@61@01 r) xs@56@01))
            (- (- $Perm.Write (pTaken@75@01 r)) (pTaken@85@01 r))
            $Perm.No)
          (ite (= r y@58@01) $Perm.Write $Perm.No))
        (ite (= r x@57@01) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-21509|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@91@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@91@01  $FVF<f>)))
      (and (Set_in (inv@89@01 r) xs@56@01) (img@90@01 r)))
    (=>
      (and (Set_in (inv@89@01 r) xs@56@01) (img@90@01 r))
      (Set_in r ($FVF.domain_f (as sm@91@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@91@01  $FVF<f>))))
  :qid |qp.fvfDomDef24|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@89@01 r) xs@56@01) (img@90@01 r)) (= r y@58@01))
    (=
      ($FVF.lookup_f (as sm@91@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@87@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@91@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@87@01  $FVF<f>) r))
  :qid |qp.fvfValDef21|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@89@01 r) xs@56@01) (img@90@01 r)) (= r x@57@01))
    (=
      ($FVF.lookup_f (as sm@91@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@76@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@91@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@76@01  $FVF<f>) r))
  :qid |qp.fvfValDef22|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@89@01 r) xs@56@01) (img@90@01 r))
      (ite
        (and (img@62@01 r) (Set_in (inv@61@01 r) xs@56@01))
        (< $Perm.No (- (- $Perm.Write (pTaken@75@01 r)) (pTaken@85@01 r)))
        false))
    (=
      ($FVF.lookup_f (as sm@91@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@59@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@91@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@59@01)))) r))
  :qid |qp.fvfValDef23|)))
(assert (fun1%precondition ($Snap.combine
  $Snap.unit
  ($SortWrappers.$FVF<f>To$Snap (as sm@91@01  $FVF<f>))) xs@56@01 x@57@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((z@88@01 $Ref)) (!
  (=>
    (Set_in z@88@01 xs@56@01)
    (and (= (inv@89@01 z@88@01) z@88@01) (img@90@01 z@88@01)))
  :pattern ((Set_in z@88@01 xs@56@01))
  :pattern ((inv@89@01 z@88@01))
  :pattern ((img@90@01 z@88@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@90@01 r) (Set_in (inv@89@01 r) xs@56@01)) (= (inv@89@01 r) r))
  :pattern ((inv@89@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@91@01  $FVF<f>)))
      (and (Set_in (inv@89@01 r) xs@56@01) (img@90@01 r)))
    (=>
      (and (Set_in (inv@89@01 r) xs@56@01) (img@90@01 r))
      (Set_in r ($FVF.domain_f (as sm@91@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@91@01  $FVF<f>))))
  :qid |qp.fvfDomDef24|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@89@01 r) xs@56@01) (img@90@01 r)) (= r y@58@01))
    (=
      ($FVF.lookup_f (as sm@91@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@87@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@91@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@87@01  $FVF<f>) r))
  :qid |qp.fvfValDef21|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@89@01 r) xs@56@01) (img@90@01 r)) (= r x@57@01))
    (=
      ($FVF.lookup_f (as sm@91@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@76@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@91@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@76@01  $FVF<f>) r))
  :qid |qp.fvfValDef22|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@89@01 r) xs@56@01) (img@90@01 r))
      (ite
        (and (img@62@01 r) (Set_in (inv@61@01 r) xs@56@01))
        (< $Perm.No (- (- $Perm.Write (pTaken@75@01 r)) (pTaken@85@01 r)))
        false))
    (=
      ($FVF.lookup_f (as sm@91@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@59@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@91@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@59@01)))) r))
  :qid |qp.fvfValDef23|)))
(assert (fun1%precondition ($Snap.combine
  $Snap.unit
  ($SortWrappers.$FVF<f>To$Snap (as sm@91@01  $FVF<f>))) xs@56@01 x@57@01))
; [eval] xf + 1
(push) ; 3
(assert (not (=
  (fun1 ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<f>To$Snap (as sm@91@01  $FVF<f>))) xs@56@01 x@57@01)
  (+ xf@69@01 1))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  (fun1 ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<f>To$Snap (as sm@91@01  $FVF<f>))) xs@56@01 x@57@01)
  (+ xf@69@01 1)))
; [exec]
; assert fun1(xs, y) == yf
; [eval] fun1(xs, y) == yf
; [eval] fun1(xs, y)
(push) ; 3
; [eval] (x in xs)
(declare-const z@92@01 $Ref)
(push) ; 4
; [eval] (z in xs)
(assert (Set_in z@92@01 xs@56@01))
(pop) ; 4
(declare-fun inv@93@01 ($Ref) $Ref)
(declare-fun img@94@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((z1@92@01 $Ref) (z2@92@01 $Ref)) (!
  (=>
    (and
      (Set_in z1@92@01 xs@56@01)
      (Set_in z2@92@01 xs@56@01)
      (= z1@92@01 z2@92@01))
    (= z1@92@01 z2@92@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@92@01 $Ref)) (!
  (=>
    (Set_in z@92@01 xs@56@01)
    (and (= (inv@93@01 z@92@01) z@92@01) (img@94@01 z@92@01)))
  :pattern ((Set_in z@92@01 xs@56@01))
  :pattern ((inv@93@01 z@92@01))
  :pattern ((img@94@01 z@92@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@94@01 r) (Set_in (inv@93@01 r) xs@56@01)) (= (inv@93@01 r) r))
  :pattern ((inv@93@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@93@01 r) xs@56@01) (img@94@01 r) (= r (inv@93@01 r)))
    (>
      (+
        (+
          (ite
            (and (img@62@01 r) (Set_in (inv@61@01 r) xs@56@01))
            (- (- $Perm.Write (pTaken@75@01 r)) (pTaken@85@01 r))
            $Perm.No)
          (ite (= r y@58@01) $Perm.Write $Perm.No))
        (ite (= r x@57@01) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-21511|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@95@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@95@01  $FVF<f>)))
      (and (Set_in (inv@93@01 r) xs@56@01) (img@94@01 r)))
    (=>
      (and (Set_in (inv@93@01 r) xs@56@01) (img@94@01 r))
      (Set_in r ($FVF.domain_f (as sm@95@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@95@01  $FVF<f>))))
  :qid |qp.fvfDomDef28|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@93@01 r) xs@56@01) (img@94@01 r)) (= r y@58@01))
    (=
      ($FVF.lookup_f (as sm@95@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@87@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@95@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@87@01  $FVF<f>) r))
  :qid |qp.fvfValDef25|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@93@01 r) xs@56@01) (img@94@01 r)) (= r x@57@01))
    (=
      ($FVF.lookup_f (as sm@95@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@76@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@95@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@76@01  $FVF<f>) r))
  :qid |qp.fvfValDef26|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@93@01 r) xs@56@01) (img@94@01 r))
      (ite
        (and (img@62@01 r) (Set_in (inv@61@01 r) xs@56@01))
        (< $Perm.No (- (- $Perm.Write (pTaken@75@01 r)) (pTaken@85@01 r)))
        false))
    (=
      ($FVF.lookup_f (as sm@95@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@59@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@95@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@59@01)))) r))
  :qid |qp.fvfValDef27|)))
(assert (fun1%precondition ($Snap.combine
  $Snap.unit
  ($SortWrappers.$FVF<f>To$Snap (as sm@95@01  $FVF<f>))) xs@56@01 y@58@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((z@92@01 $Ref)) (!
  (=>
    (Set_in z@92@01 xs@56@01)
    (and (= (inv@93@01 z@92@01) z@92@01) (img@94@01 z@92@01)))
  :pattern ((Set_in z@92@01 xs@56@01))
  :pattern ((inv@93@01 z@92@01))
  :pattern ((img@94@01 z@92@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@94@01 r) (Set_in (inv@93@01 r) xs@56@01)) (= (inv@93@01 r) r))
  :pattern ((inv@93@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@95@01  $FVF<f>)))
      (and (Set_in (inv@93@01 r) xs@56@01) (img@94@01 r)))
    (=>
      (and (Set_in (inv@93@01 r) xs@56@01) (img@94@01 r))
      (Set_in r ($FVF.domain_f (as sm@95@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@95@01  $FVF<f>))))
  :qid |qp.fvfDomDef28|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@93@01 r) xs@56@01) (img@94@01 r)) (= r y@58@01))
    (=
      ($FVF.lookup_f (as sm@95@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@87@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@95@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@87@01  $FVF<f>) r))
  :qid |qp.fvfValDef25|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@93@01 r) xs@56@01) (img@94@01 r)) (= r x@57@01))
    (=
      ($FVF.lookup_f (as sm@95@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@76@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@95@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@76@01  $FVF<f>) r))
  :qid |qp.fvfValDef26|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@93@01 r) xs@56@01) (img@94@01 r))
      (ite
        (and (img@62@01 r) (Set_in (inv@61@01 r) xs@56@01))
        (< $Perm.No (- (- $Perm.Write (pTaken@75@01 r)) (pTaken@85@01 r)))
        false))
    (=
      ($FVF.lookup_f (as sm@95@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@59@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@95@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@59@01)))) r))
  :qid |qp.fvfValDef27|)))
(assert (fun1%precondition ($Snap.combine
  $Snap.unit
  ($SortWrappers.$FVF<f>To$Snap (as sm@95@01  $FVF<f>))) xs@56@01 y@58@01))
(push) ; 3
(assert (not (=
  (fun1 ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<f>To$Snap (as sm@95@01  $FVF<f>))) xs@56@01 y@58@01)
  yf@74@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.03s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= y@58@01 x@57@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($FVF.lookup_f (as sm@87@01  $FVF<f>) y@58@01)
    ($FVF.lookup_f (as sm@76@01  $FVF<f>) x@57@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($FVF.lookup_f (as sm@76@01  $FVF<f>) x@57@01)
    ($FVF.lookup_f (as sm@87@01  $FVF<f>) y@58@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
(assert (and (not (= y@58@01 x@57@01)) (not (= x@57@01 y@58@01))))
(declare-const sm@96@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@58@01)
    (=
      ($FVF.lookup_f (as sm@96@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@87@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@96@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@87@01  $FVF<f>) r))
  :qid |qp.fvfValDef29|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@57@01)
    (=
      ($FVF.lookup_f (as sm@96@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@76@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@96@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@76@01  $FVF<f>) r))
  :qid |qp.fvfValDef30|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@62@01 r) (Set_in (inv@61@01 r) xs@56@01))
      (< $Perm.No (- (- $Perm.Write (pTaken@75@01 r)) (pTaken@85@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@96@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@59@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@96@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@59@01)))) r))
  :qid |qp.fvfValDef31|)))
(declare-const pm@97@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@97@01  $FPM) r)
    (+
      (+
        (ite (= r y@58@01) $Perm.Write $Perm.No)
        (ite (= r x@57@01) $Perm.Write $Perm.No))
      (ite
        (and (img@62@01 r) (Set_in (inv@61@01 r) xs@56@01))
        (- (- $Perm.Write (pTaken@75@01 r)) (pTaken@85@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@97@01  $FPM) r))
  :qid |qp.resPrmSumDef32|)))
(assert (<= ($FVF.perm_f (as pm@97@01  $FPM) y@58@01) $Perm.Write))
(assert (<= ($FVF.perm_f (as pm@97@01  $FPM) x@57@01) $Perm.Write))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@97@01  $FPM) r) $Perm.Write)
  :pattern ((inv@61@01 r))
  :qid |qp-fld-prm-bnd|)))
; [eval] fun1(xs, y) == yf
; [eval] fun1(xs, y)
(set-option :timeout 0)
(push) ; 3
; [eval] (x in xs)
(declare-const z@98@01 $Ref)
(push) ; 4
; [eval] (z in xs)
(assert (Set_in z@98@01 xs@56@01))
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
      (Set_in z1@98@01 xs@56@01)
      (Set_in z2@98@01 xs@56@01)
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
    (Set_in z@98@01 xs@56@01)
    (and (= (inv@99@01 z@98@01) z@98@01) (img@100@01 z@98@01)))
  :pattern ((Set_in z@98@01 xs@56@01))
  :pattern ((inv@99@01 z@98@01))
  :pattern ((img@100@01 z@98@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@100@01 r) (Set_in (inv@99@01 r) xs@56@01)) (= (inv@99@01 r) r))
  :pattern ((inv@99@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@99@01 r) xs@56@01) (img@100@01 r) (= r (inv@99@01 r)))
    (>
      (+
        (+
          (ite
            (and (img@62@01 r) (Set_in (inv@61@01 r) xs@56@01))
            (- (- $Perm.Write (pTaken@75@01 r)) (pTaken@85@01 r))
            $Perm.No)
          (ite (= r x@57@01) $Perm.Write $Perm.No))
        (ite (= r y@58@01) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-21513|))))
(check-sat)
; unsat
(pop) ; 4
; 0.01s
; (get-info :all-statistics)
(declare-const sm@101@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@101@01  $FVF<f>)))
      (and (Set_in (inv@99@01 r) xs@56@01) (img@100@01 r)))
    (=>
      (and (Set_in (inv@99@01 r) xs@56@01) (img@100@01 r))
      (Set_in r ($FVF.domain_f (as sm@101@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@101@01  $FVF<f>))))
  :qid |qp.fvfDomDef36|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@99@01 r) xs@56@01) (img@100@01 r))
      (ite
        (and (img@62@01 r) (Set_in (inv@61@01 r) xs@56@01))
        (< $Perm.No (- (- $Perm.Write (pTaken@75@01 r)) (pTaken@85@01 r)))
        false))
    (=
      ($FVF.lookup_f (as sm@101@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@59@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@101@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@59@01)))) r))
  :qid |qp.fvfValDef33|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@99@01 r) xs@56@01) (img@100@01 r)) (= r x@57@01))
    (=
      ($FVF.lookup_f (as sm@101@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@76@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@101@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@76@01  $FVF<f>) r))
  :qid |qp.fvfValDef34|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@99@01 r) xs@56@01) (img@100@01 r)) (= r y@58@01))
    (=
      ($FVF.lookup_f (as sm@101@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@87@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@101@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@87@01  $FVF<f>) r))
  :qid |qp.fvfValDef35|)))
(assert (fun1%precondition ($Snap.combine
  $Snap.unit
  ($SortWrappers.$FVF<f>To$Snap (as sm@101@01  $FVF<f>))) xs@56@01 y@58@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((z@98@01 $Ref)) (!
  (=>
    (Set_in z@98@01 xs@56@01)
    (and (= (inv@99@01 z@98@01) z@98@01) (img@100@01 z@98@01)))
  :pattern ((Set_in z@98@01 xs@56@01))
  :pattern ((inv@99@01 z@98@01))
  :pattern ((img@100@01 z@98@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@100@01 r) (Set_in (inv@99@01 r) xs@56@01)) (= (inv@99@01 r) r))
  :pattern ((inv@99@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@101@01  $FVF<f>)))
      (and (Set_in (inv@99@01 r) xs@56@01) (img@100@01 r)))
    (=>
      (and (Set_in (inv@99@01 r) xs@56@01) (img@100@01 r))
      (Set_in r ($FVF.domain_f (as sm@101@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@101@01  $FVF<f>))))
  :qid |qp.fvfDomDef36|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@99@01 r) xs@56@01) (img@100@01 r))
      (ite
        (and (img@62@01 r) (Set_in (inv@61@01 r) xs@56@01))
        (< $Perm.No (- (- $Perm.Write (pTaken@75@01 r)) (pTaken@85@01 r)))
        false))
    (=
      ($FVF.lookup_f (as sm@101@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@59@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@101@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@59@01)))) r))
  :qid |qp.fvfValDef33|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@99@01 r) xs@56@01) (img@100@01 r)) (= r x@57@01))
    (=
      ($FVF.lookup_f (as sm@101@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@76@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@101@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@76@01  $FVF<f>) r))
  :qid |qp.fvfValDef34|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@99@01 r) xs@56@01) (img@100@01 r)) (= r y@58@01))
    (=
      ($FVF.lookup_f (as sm@101@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@87@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@101@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@87@01  $FVF<f>) r))
  :qid |qp.fvfValDef35|)))
(assert (fun1%precondition ($Snap.combine
  $Snap.unit
  ($SortWrappers.$FVF<f>To$Snap (as sm@101@01  $FVF<f>))) xs@56@01 y@58@01))
(push) ; 3
(assert (not (=
  (fun1 ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<f>To$Snap (as sm@101@01  $FVF<f>))) xs@56@01 y@58@01)
  yf@74@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.03s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= y@58@01 x@57@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($FVF.lookup_f (as sm@87@01  $FVF<f>) y@58@01)
    ($FVF.lookup_f (as sm@76@01  $FVF<f>) x@57@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($FVF.lookup_f (as sm@76@01  $FVF<f>) x@57@01)
    ($FVF.lookup_f (as sm@87@01  $FVF<f>) y@58@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
(assert (and (not (= y@58@01 x@57@01)) (not (= x@57@01 y@58@01))))
(declare-const sm@102@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@58@01)
    (=
      ($FVF.lookup_f (as sm@102@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@87@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@102@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@87@01  $FVF<f>) r))
  :qid |qp.fvfValDef37|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@57@01)
    (=
      ($FVF.lookup_f (as sm@102@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@76@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@102@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@76@01  $FVF<f>) r))
  :qid |qp.fvfValDef38|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@62@01 r) (Set_in (inv@61@01 r) xs@56@01))
      (< $Perm.No (- (- $Perm.Write (pTaken@75@01 r)) (pTaken@85@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@102@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@59@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@102@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@59@01)))) r))
  :qid |qp.fvfValDef39|)))
(declare-const pm@103@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@103@01  $FPM) r)
    (+
      (+
        (ite (= r y@58@01) $Perm.Write $Perm.No)
        (ite (= r x@57@01) $Perm.Write $Perm.No))
      (ite
        (and (img@62@01 r) (Set_in (inv@61@01 r) xs@56@01))
        (- (- $Perm.Write (pTaken@75@01 r)) (pTaken@85@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@103@01  $FPM) r))
  :qid |qp.resPrmSumDef40|)))
(assert (<= ($FVF.perm_f (as pm@103@01  $FPM) y@58@01) $Perm.Write))
(assert (<= ($FVF.perm_f (as pm@103@01  $FPM) x@57@01) $Perm.Write))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@103@01  $FPM) r) $Perm.Write)
  :pattern ((inv@61@01 r))
  :qid |qp-fld-prm-bnd|)))
; [eval] fun1(xs, y) == yf
; [eval] fun1(xs, y)
(set-option :timeout 0)
(push) ; 3
; [eval] (x in xs)
(declare-const z@104@01 $Ref)
(push) ; 4
; [eval] (z in xs)
(assert (Set_in z@104@01 xs@56@01))
(pop) ; 4
(declare-fun inv@105@01 ($Ref) $Ref)
(declare-fun img@106@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((z1@104@01 $Ref) (z2@104@01 $Ref)) (!
  (=>
    (and
      (Set_in z1@104@01 xs@56@01)
      (Set_in z2@104@01 xs@56@01)
      (= z1@104@01 z2@104@01))
    (= z1@104@01 z2@104@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@104@01 $Ref)) (!
  (=>
    (Set_in z@104@01 xs@56@01)
    (and (= (inv@105@01 z@104@01) z@104@01) (img@106@01 z@104@01)))
  :pattern ((Set_in z@104@01 xs@56@01))
  :pattern ((inv@105@01 z@104@01))
  :pattern ((img@106@01 z@104@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@106@01 r) (Set_in (inv@105@01 r) xs@56@01)) (= (inv@105@01 r) r))
  :pattern ((inv@105@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@105@01 r) xs@56@01) (img@106@01 r) (= r (inv@105@01 r)))
    (>
      (+
        (+
          (ite
            (and (img@62@01 r) (Set_in (inv@61@01 r) xs@56@01))
            (- (- $Perm.Write (pTaken@75@01 r)) (pTaken@85@01 r))
            $Perm.No)
          (ite (= r y@58@01) $Perm.Write $Perm.No))
        (ite (= r x@57@01) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-21515|))))
(check-sat)
; unsat
(pop) ; 4
; 0.01s
; (get-info :all-statistics)
(declare-const sm@107@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@107@01  $FVF<f>)))
      (and (Set_in (inv@105@01 r) xs@56@01) (img@106@01 r)))
    (=>
      (and (Set_in (inv@105@01 r) xs@56@01) (img@106@01 r))
      (Set_in r ($FVF.domain_f (as sm@107@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@107@01  $FVF<f>))))
  :qid |qp.fvfDomDef44|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@105@01 r) xs@56@01) (img@106@01 r)) (= r y@58@01))
    (=
      ($FVF.lookup_f (as sm@107@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@87@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@107@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@87@01  $FVF<f>) r))
  :qid |qp.fvfValDef41|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@105@01 r) xs@56@01) (img@106@01 r)) (= r x@57@01))
    (=
      ($FVF.lookup_f (as sm@107@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@76@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@107@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@76@01  $FVF<f>) r))
  :qid |qp.fvfValDef42|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@105@01 r) xs@56@01) (img@106@01 r))
      (ite
        (and (img@62@01 r) (Set_in (inv@61@01 r) xs@56@01))
        (< $Perm.No (- (- $Perm.Write (pTaken@75@01 r)) (pTaken@85@01 r)))
        false))
    (=
      ($FVF.lookup_f (as sm@107@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@59@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@107@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@59@01)))) r))
  :qid |qp.fvfValDef43|)))
(assert (fun1%precondition ($Snap.combine
  $Snap.unit
  ($SortWrappers.$FVF<f>To$Snap (as sm@107@01  $FVF<f>))) xs@56@01 y@58@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((z@104@01 $Ref)) (!
  (=>
    (Set_in z@104@01 xs@56@01)
    (and (= (inv@105@01 z@104@01) z@104@01) (img@106@01 z@104@01)))
  :pattern ((Set_in z@104@01 xs@56@01))
  :pattern ((inv@105@01 z@104@01))
  :pattern ((img@106@01 z@104@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@106@01 r) (Set_in (inv@105@01 r) xs@56@01)) (= (inv@105@01 r) r))
  :pattern ((inv@105@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@107@01  $FVF<f>)))
      (and (Set_in (inv@105@01 r) xs@56@01) (img@106@01 r)))
    (=>
      (and (Set_in (inv@105@01 r) xs@56@01) (img@106@01 r))
      (Set_in r ($FVF.domain_f (as sm@107@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@107@01  $FVF<f>))))
  :qid |qp.fvfDomDef44|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@105@01 r) xs@56@01) (img@106@01 r)) (= r y@58@01))
    (=
      ($FVF.lookup_f (as sm@107@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@87@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@107@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@87@01  $FVF<f>) r))
  :qid |qp.fvfValDef41|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@105@01 r) xs@56@01) (img@106@01 r)) (= r x@57@01))
    (=
      ($FVF.lookup_f (as sm@107@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@76@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@107@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@76@01  $FVF<f>) r))
  :qid |qp.fvfValDef42|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@105@01 r) xs@56@01) (img@106@01 r))
      (ite
        (and (img@62@01 r) (Set_in (inv@61@01 r) xs@56@01))
        (< $Perm.No (- (- $Perm.Write (pTaken@75@01 r)) (pTaken@85@01 r)))
        false))
    (=
      ($FVF.lookup_f (as sm@107@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@59@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@107@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@59@01)))) r))
  :qid |qp.fvfValDef43|)))
(assert (fun1%precondition ($Snap.combine
  $Snap.unit
  ($SortWrappers.$FVF<f>To$Snap (as sm@107@01  $FVF<f>))) xs@56@01 y@58@01))
(push) ; 3
(assert (not (=
  (fun1 ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<f>To$Snap (as sm@107@01  $FVF<f>))) xs@56@01 y@58@01)
  yf@74@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.05s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= y@58@01 x@57@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($FVF.lookup_f (as sm@87@01  $FVF<f>) y@58@01)
    ($FVF.lookup_f (as sm@76@01  $FVF<f>) x@57@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($FVF.lookup_f (as sm@76@01  $FVF<f>) x@57@01)
    ($FVF.lookup_f (as sm@87@01  $FVF<f>) y@58@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
(assert (and (not (= y@58@01 x@57@01)) (not (= x@57@01 y@58@01))))
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; [eval] fun1(xs, y) == yf
; [eval] fun1(xs, y)
(set-option :timeout 0)
(push) ; 3
; [eval] (x in xs)
(declare-const z@108@01 $Ref)
(push) ; 4
; [eval] (z in xs)
(assert (Set_in z@108@01 xs@56@01))
(pop) ; 4
(declare-fun inv@109@01 ($Ref) $Ref)
(declare-fun img@110@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((z1@108@01 $Ref) (z2@108@01 $Ref)) (!
  (=>
    (and
      (Set_in z1@108@01 xs@56@01)
      (Set_in z2@108@01 xs@56@01)
      (= z1@108@01 z2@108@01))
    (= z1@108@01 z2@108@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@108@01 $Ref)) (!
  (=>
    (Set_in z@108@01 xs@56@01)
    (and (= (inv@109@01 z@108@01) z@108@01) (img@110@01 z@108@01)))
  :pattern ((Set_in z@108@01 xs@56@01))
  :pattern ((inv@109@01 z@108@01))
  :pattern ((img@110@01 z@108@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@110@01 r) (Set_in (inv@109@01 r) xs@56@01)) (= (inv@109@01 r) r))
  :pattern ((inv@109@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@109@01 r) xs@56@01) (img@110@01 r) (= r (inv@109@01 r)))
    (>
      (+
        (+
          (ite
            (and (img@62@01 r) (Set_in (inv@61@01 r) xs@56@01))
            (- (- $Perm.Write (pTaken@75@01 r)) (pTaken@85@01 r))
            $Perm.No)
          (ite (= r x@57@01) $Perm.Write $Perm.No))
        (ite (= r y@58@01) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-21517|))))
(check-sat)
; unsat
(pop) ; 4
; 0.01s
; (get-info :all-statistics)
(declare-const sm@111@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@111@01  $FVF<f>)))
      (and (Set_in (inv@109@01 r) xs@56@01) (img@110@01 r)))
    (=>
      (and (Set_in (inv@109@01 r) xs@56@01) (img@110@01 r))
      (Set_in r ($FVF.domain_f (as sm@111@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@111@01  $FVF<f>))))
  :qid |qp.fvfDomDef48|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@109@01 r) xs@56@01) (img@110@01 r))
      (ite
        (and (img@62@01 r) (Set_in (inv@61@01 r) xs@56@01))
        (< $Perm.No (- (- $Perm.Write (pTaken@75@01 r)) (pTaken@85@01 r)))
        false))
    (=
      ($FVF.lookup_f (as sm@111@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@59@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@111@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@59@01)))) r))
  :qid |qp.fvfValDef45|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@109@01 r) xs@56@01) (img@110@01 r)) (= r x@57@01))
    (=
      ($FVF.lookup_f (as sm@111@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@76@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@111@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@76@01  $FVF<f>) r))
  :qid |qp.fvfValDef46|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@109@01 r) xs@56@01) (img@110@01 r)) (= r y@58@01))
    (=
      ($FVF.lookup_f (as sm@111@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@87@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@111@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@87@01  $FVF<f>) r))
  :qid |qp.fvfValDef47|)))
(assert (fun1%precondition ($Snap.combine
  $Snap.unit
  ($SortWrappers.$FVF<f>To$Snap (as sm@111@01  $FVF<f>))) xs@56@01 y@58@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((z@108@01 $Ref)) (!
  (=>
    (Set_in z@108@01 xs@56@01)
    (and (= (inv@109@01 z@108@01) z@108@01) (img@110@01 z@108@01)))
  :pattern ((Set_in z@108@01 xs@56@01))
  :pattern ((inv@109@01 z@108@01))
  :pattern ((img@110@01 z@108@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@110@01 r) (Set_in (inv@109@01 r) xs@56@01)) (= (inv@109@01 r) r))
  :pattern ((inv@109@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@111@01  $FVF<f>)))
      (and (Set_in (inv@109@01 r) xs@56@01) (img@110@01 r)))
    (=>
      (and (Set_in (inv@109@01 r) xs@56@01) (img@110@01 r))
      (Set_in r ($FVF.domain_f (as sm@111@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@111@01  $FVF<f>))))
  :qid |qp.fvfDomDef48|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@109@01 r) xs@56@01) (img@110@01 r))
      (ite
        (and (img@62@01 r) (Set_in (inv@61@01 r) xs@56@01))
        (< $Perm.No (- (- $Perm.Write (pTaken@75@01 r)) (pTaken@85@01 r)))
        false))
    (=
      ($FVF.lookup_f (as sm@111@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@59@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@111@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@59@01)))) r))
  :qid |qp.fvfValDef45|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@109@01 r) xs@56@01) (img@110@01 r)) (= r x@57@01))
    (=
      ($FVF.lookup_f (as sm@111@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@76@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@111@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@76@01  $FVF<f>) r))
  :qid |qp.fvfValDef46|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (and (Set_in (inv@109@01 r) xs@56@01) (img@110@01 r)) (= r y@58@01))
    (=
      ($FVF.lookup_f (as sm@111@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@87@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@111@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@87@01  $FVF<f>) r))
  :qid |qp.fvfValDef47|)))
(assert (fun1%precondition ($Snap.combine
  $Snap.unit
  ($SortWrappers.$FVF<f>To$Snap (as sm@111@01  $FVF<f>))) xs@56@01 y@58@01))
(push) ; 3
(assert (not (=
  (fun1 ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<f>To$Snap (as sm@111@01  $FVF<f>))) xs@56@01 y@58@01)
  yf@74@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.08s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1
; ---------- test2 ----------
(declare-const xs@112@01 Set<$Ref>)
(declare-const x@113@01 $Ref)
(declare-const xs@114@01 Set<$Ref>)
(declare-const x@115@01 $Ref)
(push) ; 1
(declare-const $t@116@01 $Snap)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; var a: Int
(declare-const a@117@01 Int)
; [exec]
; var b: Int
(declare-const b@118@01 Int)
; [exec]
; a := fun2(xs, x)
; [eval] fun2(xs, x)
(push) ; 3
(assert (fun2%precondition $t@116@01 xs@114@01 x@115@01))
(pop) ; 3
; Joined path conditions
(assert (fun2%precondition $t@116@01 xs@114@01 x@115@01))
(declare-const a@119@01 Int)
(assert (= a@119@01 (fun2 $t@116@01 xs@114@01 x@115@01)))
; [exec]
; assert a == fun2(xs, x)
; [eval] a == fun2(xs, x)
; [eval] fun2(xs, x)
(push) ; 3
(pop) ; 3
; Joined path conditions
; [exec]
; unfold acc(P(xs, x), write)
(assert (= $t@116@01 ($Snap.combine ($Snap.first $t@116@01) ($Snap.second $t@116@01))))
(assert (= ($Snap.first $t@116@01) $Snap.unit))
; [eval] (x in xs)
(assert (Set_in x@115@01 xs@114@01))
(declare-const z@120@01 $Ref)
(push) ; 3
; [eval] (z in xs)
(assert (Set_in z@120@01 xs@114@01))
(pop) ; 3
(declare-fun inv@121@01 ($Ref) $Ref)
(declare-fun img@122@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((z1@120@01 $Ref) (z2@120@01 $Ref)) (!
  (=>
    (and
      (Set_in z1@120@01 xs@114@01)
      (Set_in z2@120@01 xs@114@01)
      (= z1@120@01 z2@120@01))
    (= z1@120@01 z2@120@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@120@01 $Ref)) (!
  (=>
    (Set_in z@120@01 xs@114@01)
    (and (= (inv@121@01 z@120@01) z@120@01) (img@122@01 z@120@01)))
  :pattern ((Set_in z@120@01 xs@114@01))
  :pattern ((inv@121@01 z@120@01))
  :pattern ((img@122@01 z@120@01))
  :qid |quant-u-21519|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@122@01 r) (Set_in (inv@121@01 r) xs@114@01))
    (= (inv@121@01 r) r))
  :pattern ((inv@121@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((z@120@01 $Ref)) (!
  (=> (Set_in z@120@01 xs@114@01) (not (= z@120@01 $Ref.null)))
  :pattern ((Set_in z@120@01 xs@114@01))
  :pattern ((inv@121@01 z@120@01))
  :pattern ((img@122@01 z@120@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (P%trigger $t@116@01 xs@114@01 x@115@01))
; [exec]
; fold acc(P(xs, x), write)
; [eval] (x in xs)
(declare-const z@123@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (z in xs)
(assert (Set_in z@123@01 xs@114@01))
(pop) ; 3
(declare-fun inv@124@01 ($Ref) $Ref)
(declare-fun img@125@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((z1@123@01 $Ref) (z2@123@01 $Ref)) (!
  (=>
    (and
      (Set_in z1@123@01 xs@114@01)
      (Set_in z2@123@01 xs@114@01)
      (= z1@123@01 z2@123@01))
    (= z1@123@01 z2@123@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@123@01 $Ref)) (!
  (=>
    (Set_in z@123@01 xs@114@01)
    (and (= (inv@124@01 z@123@01) z@123@01) (img@125@01 z@123@01)))
  :pattern ((Set_in z@123@01 xs@114@01))
  :pattern ((inv@124@01 z@123@01))
  :pattern ((img@125@01 z@123@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@125@01 r) (Set_in (inv@124@01 r) xs@114@01))
    (= (inv@124@01 r) r))
  :pattern ((inv@124@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@126@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@124@01 r) xs@114@01) (img@125@01 r) (= r (inv@124@01 r)))
    ($Perm.min
      (ite
        (and (img@122@01 r) (Set_in (inv@121@01 r) xs@114@01))
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
        (and (img@122@01 r) (Set_in (inv@121@01 r) xs@114@01))
        $Perm.Write
        $Perm.No)
      (pTaken@126@01 r))
    $Perm.No)
  
  :qid |quant-u-21522|))))
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
    (and (Set_in (inv@124@01 r) xs@114@01) (img@125@01 r) (= r (inv@124@01 r)))
    (= (- $Perm.Write (pTaken@126@01 r)) $Perm.No))
  
  :qid |quant-u-21523|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@127@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@127@01  $FVF<f>)))
      (and (Set_in (inv@124@01 r) xs@114@01) (img@125@01 r)))
    (=>
      (and (Set_in (inv@124@01 r) xs@114@01) (img@125@01 r))
      (Set_in r ($FVF.domain_f (as sm@127@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@127@01  $FVF<f>))))
  :qid |qp.fvfDomDef50|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@124@01 r) xs@114@01) (img@125@01 r))
      (and (img@122@01 r) (Set_in (inv@121@01 r) xs@114@01)))
    (=
      ($FVF.lookup_f (as sm@127@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second $t@116@01)) r)))
  :pattern (($FVF.lookup_f (as sm@127@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second $t@116@01)) r))
  :qid |qp.fvfValDef49|)))
(assert (P%trigger ($Snap.combine
  $Snap.unit
  ($SortWrappers.$FVF<f>To$Snap (as sm@127@01  $FVF<f>))) xs@114@01 x@115@01))
; [exec]
; b := fun2(xs, x)
; [eval] fun2(xs, x)
(set-option :timeout 0)
(push) ; 3
(assert (fun2%precondition ($Snap.combine
  $Snap.unit
  ($SortWrappers.$FVF<f>To$Snap (as sm@127@01  $FVF<f>))) xs@114@01 x@115@01))
(pop) ; 3
; Joined path conditions
(assert (fun2%precondition ($Snap.combine
  $Snap.unit
  ($SortWrappers.$FVF<f>To$Snap (as sm@127@01  $FVF<f>))) xs@114@01 x@115@01))
(declare-const b@128@01 Int)
(assert (=
  b@128@01
  (fun2 ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<f>To$Snap (as sm@127@01  $FVF<f>))) xs@114@01 x@115@01)))
; [exec]
; assert b == fun2(xs, x)
; [eval] b == fun2(xs, x)
; [eval] fun2(xs, x)
(push) ; 3
(pop) ; 3
; Joined path conditions
; [exec]
; assert a == b
; [eval] a == b
(push) ; 3
(assert (not (= a@119@01 b@128@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (= a@119@01 b@128@01))
; [exec]
; assert false
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 2
(pop) ; 1
; ---------- test3 ----------
(declare-const xs@129@01 Set<$Ref>)
(declare-const x@130@01 $Ref)
(declare-const xs@131@01 Set<$Ref>)
(declare-const x@132@01 $Ref)
(push) ; 1
(declare-const $t@133@01 $Snap)
(assert (= $t@133@01 ($Snap.combine ($Snap.first $t@133@01) ($Snap.second $t@133@01))))
(assert (= ($Snap.first $t@133@01) $Snap.unit))
; [eval] (x in xs)
(assert (Set_in x@132@01 xs@131@01))
(declare-const z@134@01 $Ref)
(push) ; 2
; [eval] (z in xs)
(assert (Set_in z@134@01 xs@131@01))
(pop) ; 2
(declare-fun inv@135@01 ($Ref) $Ref)
(declare-fun img@136@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((z1@134@01 $Ref) (z2@134@01 $Ref)) (!
  (=>
    (and
      (Set_in z1@134@01 xs@131@01)
      (Set_in z2@134@01 xs@131@01)
      (= z1@134@01 z2@134@01))
    (= z1@134@01 z2@134@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@134@01 $Ref)) (!
  (=>
    (Set_in z@134@01 xs@131@01)
    (and (= (inv@135@01 z@134@01) z@134@01) (img@136@01 z@134@01)))
  :pattern ((Set_in z@134@01 xs@131@01))
  :pattern ((inv@135@01 z@134@01))
  :pattern ((img@136@01 z@134@01))
  :qid |quant-u-21525|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@136@01 r) (Set_in (inv@135@01 r) xs@131@01))
    (= (inv@135@01 r) r))
  :pattern ((inv@135@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((z@134@01 $Ref)) (!
  (=> (Set_in z@134@01 xs@131@01) (not (= z@134@01 $Ref.null)))
  :pattern ((Set_in z@134@01 xs@131@01))
  :pattern ((inv@135@01 z@134@01))
  :pattern ((img@136@01 z@134@01))
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
; var a: Int
(declare-const a@137@01 Int)
; [exec]
; var b: Int
(declare-const b@138@01 Int)
; [exec]
; fold acc(P(xs, x), write)
; [eval] (x in xs)
(declare-const z@139@01 $Ref)
(push) ; 3
; [eval] (z in xs)
(assert (Set_in z@139@01 xs@131@01))
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
      (Set_in z1@139@01 xs@131@01)
      (Set_in z2@139@01 xs@131@01)
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
    (Set_in z@139@01 xs@131@01)
    (and (= (inv@140@01 z@139@01) z@139@01) (img@141@01 z@139@01)))
  :pattern ((Set_in z@139@01 xs@131@01))
  :pattern ((inv@140@01 z@139@01))
  :pattern ((img@141@01 z@139@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@141@01 r) (Set_in (inv@140@01 r) xs@131@01))
    (= (inv@140@01 r) r))
  :pattern ((inv@140@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@142@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@140@01 r) xs@131@01) (img@141@01 r) (= r (inv@140@01 r)))
    ($Perm.min
      (ite
        (and (img@136@01 r) (Set_in (inv@135@01 r) xs@131@01))
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
        (and (img@136@01 r) (Set_in (inv@135@01 r) xs@131@01))
        $Perm.Write
        $Perm.No)
      (pTaken@142@01 r))
    $Perm.No)
  
  :qid |quant-u-21528|))))
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
    (and (Set_in (inv@140@01 r) xs@131@01) (img@141@01 r) (= r (inv@140@01 r)))
    (= (- $Perm.Write (pTaken@142@01 r)) $Perm.No))
  
  :qid |quant-u-21529|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@143@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@143@01  $FVF<f>)))
      (and (Set_in (inv@140@01 r) xs@131@01) (img@141@01 r)))
    (=>
      (and (Set_in (inv@140@01 r) xs@131@01) (img@141@01 r))
      (Set_in r ($FVF.domain_f (as sm@143@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@143@01  $FVF<f>))))
  :qid |qp.fvfDomDef52|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@140@01 r) xs@131@01) (img@141@01 r))
      (and (img@136@01 r) (Set_in (inv@135@01 r) xs@131@01)))
    (=
      ($FVF.lookup_f (as sm@143@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second $t@133@01)) r)))
  :pattern (($FVF.lookup_f (as sm@143@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second $t@133@01)) r))
  :qid |qp.fvfValDef51|)))
(assert (P%trigger ($Snap.combine
  $Snap.unit
  ($SortWrappers.$FVF<f>To$Snap (as sm@143@01  $FVF<f>))) xs@131@01 x@132@01))
; [exec]
; a := fun2(xs, x)
; [eval] fun2(xs, x)
(set-option :timeout 0)
(push) ; 3
(assert (fun2%precondition ($Snap.combine
  $Snap.unit
  ($SortWrappers.$FVF<f>To$Snap (as sm@143@01  $FVF<f>))) xs@131@01 x@132@01))
(pop) ; 3
; Joined path conditions
(assert (fun2%precondition ($Snap.combine
  $Snap.unit
  ($SortWrappers.$FVF<f>To$Snap (as sm@143@01  $FVF<f>))) xs@131@01 x@132@01))
(declare-const a@144@01 Int)
(assert (=
  a@144@01
  (fun2 ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<f>To$Snap (as sm@143@01  $FVF<f>))) xs@131@01 x@132@01)))
; [exec]
; assert a == fun2(xs, x)
; [eval] a == fun2(xs, x)
; [eval] fun2(xs, x)
(push) ; 3
(pop) ; 3
; Joined path conditions
; [exec]
; unfold acc(P(xs, x), write)
; [eval] (x in xs)
(declare-const z@145@01 $Ref)
(push) ; 3
; [eval] (z in xs)
(assert (Set_in z@145@01 xs@131@01))
(pop) ; 3
(declare-fun inv@146@01 ($Ref) $Ref)
(declare-fun img@147@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((z1@145@01 $Ref) (z2@145@01 $Ref)) (!
  (=>
    (and
      (Set_in z1@145@01 xs@131@01)
      (Set_in z2@145@01 xs@131@01)
      (= z1@145@01 z2@145@01))
    (= z1@145@01 z2@145@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@145@01 $Ref)) (!
  (=>
    (Set_in z@145@01 xs@131@01)
    (and (= (inv@146@01 z@145@01) z@145@01) (img@147@01 z@145@01)))
  :pattern ((Set_in z@145@01 xs@131@01))
  :pattern ((inv@146@01 z@145@01))
  :pattern ((img@147@01 z@145@01))
  :qid |quant-u-21531|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@147@01 r) (Set_in (inv@146@01 r) xs@131@01))
    (= (inv@146@01 r) r))
  :pattern ((inv@146@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((z@145@01 $Ref)) (!
  (=> (Set_in z@145@01 xs@131@01) (not (= z@145@01 $Ref.null)))
  :pattern ((Set_in z@145@01 xs@131@01))
  :pattern ((inv@146@01 z@145@01))
  :pattern ((img@147@01 z@145@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
; [exec]
; fold acc(P(xs, x), write)
; [eval] (x in xs)
(declare-const z@148@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (z in xs)
(assert (Set_in z@148@01 xs@131@01))
(pop) ; 3
(declare-fun inv@149@01 ($Ref) $Ref)
(declare-fun img@150@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((z1@148@01 $Ref) (z2@148@01 $Ref)) (!
  (=>
    (and
      (Set_in z1@148@01 xs@131@01)
      (Set_in z2@148@01 xs@131@01)
      (= z1@148@01 z2@148@01))
    (= z1@148@01 z2@148@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((z@148@01 $Ref)) (!
  (=>
    (Set_in z@148@01 xs@131@01)
    (and (= (inv@149@01 z@148@01) z@148@01) (img@150@01 z@148@01)))
  :pattern ((Set_in z@148@01 xs@131@01))
  :pattern ((inv@149@01 z@148@01))
  :pattern ((img@150@01 z@148@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@150@01 r) (Set_in (inv@149@01 r) xs@131@01))
    (= (inv@149@01 r) r))
  :pattern ((inv@149@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@151@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@149@01 r) xs@131@01) (img@150@01 r) (= r (inv@149@01 r)))
    ($Perm.min
      (ite
        (and (img@147@01 r) (Set_in (inv@146@01 r) xs@131@01))
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
        (and (img@147@01 r) (Set_in (inv@146@01 r) xs@131@01))
        $Perm.Write
        $Perm.No)
      (pTaken@151@01 r))
    $Perm.No)
  
  :qid |quant-u-21534|))))
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
    (and (Set_in (inv@149@01 r) xs@131@01) (img@150@01 r) (= r (inv@149@01 r)))
    (= (- $Perm.Write (pTaken@151@01 r)) $Perm.No))
  
  :qid |quant-u-21535|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@152@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@152@01  $FVF<f>)))
      (and (Set_in (inv@149@01 r) xs@131@01) (img@150@01 r)))
    (=>
      (and (Set_in (inv@149@01 r) xs@131@01) (img@150@01 r))
      (Set_in r ($FVF.domain_f (as sm@152@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@152@01  $FVF<f>))))
  :qid |qp.fvfDomDef54|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@149@01 r) xs@131@01) (img@150@01 r))
      (and (img@147@01 r) (Set_in (inv@146@01 r) xs@131@01)))
    (=
      ($FVF.lookup_f (as sm@152@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@143@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@152@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@143@01  $FVF<f>) r))
  :qid |qp.fvfValDef53|)))
(assert (P%trigger ($Snap.combine
  $Snap.unit
  ($SortWrappers.$FVF<f>To$Snap (as sm@152@01  $FVF<f>))) xs@131@01 x@132@01))
; [exec]
; b := fun2(xs, x)
; [eval] fun2(xs, x)
(set-option :timeout 0)
(push) ; 3
(assert (fun2%precondition ($Snap.combine
  $Snap.unit
  ($SortWrappers.$FVF<f>To$Snap (as sm@152@01  $FVF<f>))) xs@131@01 x@132@01))
(pop) ; 3
; Joined path conditions
(assert (fun2%precondition ($Snap.combine
  $Snap.unit
  ($SortWrappers.$FVF<f>To$Snap (as sm@152@01  $FVF<f>))) xs@131@01 x@132@01))
(declare-const b@153@01 Int)
(assert (=
  b@153@01
  (fun2 ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<f>To$Snap (as sm@152@01  $FVF<f>))) xs@131@01 x@132@01)))
; [exec]
; assert b == fun2(xs, x)
; [eval] b == fun2(xs, x)
; [eval] fun2(xs, x)
(push) ; 3
(pop) ; 3
; Joined path conditions
; [exec]
; assert a == b
; [eval] a == b
(push) ; 3
(assert (not (= a@144@01 b@153@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (= a@144@01 b@153@01))
; [exec]
; assert false
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 2
(pop) ; 1
