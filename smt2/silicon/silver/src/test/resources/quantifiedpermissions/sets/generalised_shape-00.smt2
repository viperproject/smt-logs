(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-08 21:15:10
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
(declare-sort $FVF<g> 0)
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
(declare-fun $SortWrappers.$FVF<g>To$Snap ($FVF<g>) $Snap)
(declare-fun $SortWrappers.$SnapTo$FVF<g> ($Snap) $FVF<g>)
(assert (forall ((x $FVF<g>)) (!
    (= x ($SortWrappers.$SnapTo$FVF<g>($SortWrappers.$FVF<g>To$Snap x)))
    :pattern (($SortWrappers.$FVF<g>To$Snap x))
    :qid |$Snap.$SnapTo$FVF<g>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$FVF<g>To$Snap($SortWrappers.$SnapTo$FVF<g> x)))
    :pattern (($SortWrappers.$SnapTo$FVF<g> x))
    :qid |$Snap.$FVF<g>To$SnapTo$FVF<g>|
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
; /field_value_functions_declarations.smt2 [g: Ref]
(declare-fun $FVF.domain_g ($FVF<g>) Set<$Ref>)
(declare-fun $FVF.lookup_g ($FVF<g> $Ref) $Ref)
(declare-fun $FVF.after_g ($FVF<g> $FVF<g>) Bool)
(declare-fun $FVF.loc_g ($Ref $Ref) Bool)
(declare-fun $FVF.perm_g ($FPM $Ref) $Perm)
(declare-const $fvfTOP_g $FVF<g>)
; Declaring symbols related to program functions (from program analysis)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun P%trigger ($Snap Set<$Ref> Set<$Ref>) Bool)
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
; /field_value_functions_axioms.smt2 [g: Ref]
(assert (forall ((vs $FVF<g>) (ws $FVF<g>)) (!
    (=>
      (and
        (Set_equal ($FVF.domain_g vs) ($FVF.domain_g ws))
        (forall ((x $Ref)) (!
          (=>
            (Set_in x ($FVF.domain_g vs))
            (= ($FVF.lookup_g vs x) ($FVF.lookup_g ws x)))
          :pattern (($FVF.lookup_g vs x) ($FVF.lookup_g ws x))
          :qid |qp.$FVF<g>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$FVF<g>To$Snap vs)
              ($SortWrappers.$FVF<g>To$Snap ws)
              )
    :qid |qp.$FVF<g>-eq-outer|
    )))
(assert (forall ((r $Ref) (pm $FPM)) (!
    ($Perm.isValidVar ($FVF.perm_g pm r))
    :pattern (($FVF.perm_g pm r)))))
(assert (forall ((r $Ref) (f $Ref)) (!
    (= ($FVF.loc_g f r) true)
    :pattern (($FVF.loc_g f r)))))
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ---------- P ----------
(declare-const xs@0@00 Set<$Ref>)
(declare-const ys@1@00 Set<$Ref>)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@2@00 $Snap)
(assert (= $t@2@00 ($Snap.combine ($Snap.first $t@2@00) ($Snap.second $t@2@00))))
(declare-const x@3@00 $Ref)
(push) ; 2
; [eval] (x in xs) && !((x in ys))
; [eval] (x in xs)
(push) ; 3
; [then-branch: 0 | !(x@3@00 in xs@0@00) | live]
; [else-branch: 0 | x@3@00 in xs@0@00 | live]
(push) ; 4
; [then-branch: 0 | !(x@3@00 in xs@0@00)]
(assert (not (Set_in x@3@00 xs@0@00)))
(pop) ; 4
(push) ; 4
; [else-branch: 0 | x@3@00 in xs@0@00]
(assert (Set_in x@3@00 xs@0@00))
; [eval] !((x in ys))
; [eval] (x in ys)
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (Set_in x@3@00 xs@0@00) (not (Set_in x@3@00 xs@0@00))))
(assert (and (Set_in x@3@00 xs@0@00) (not (Set_in x@3@00 ys@1@00))))
(pop) ; 2
(declare-fun inv@4@00 ($Ref) $Ref)
(declare-fun img@5@00 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((x@3@00 $Ref)) (!
  (=>
    (and (Set_in x@3@00 xs@0@00) (not (Set_in x@3@00 ys@1@00)))
    (or (Set_in x@3@00 xs@0@00) (not (Set_in x@3@00 xs@0@00))))
  :pattern ((Set_in x@3@00 xs@0@00))
  :pattern ((Set_in x@3@00 ys@1@00))
  :pattern ((inv@4@00 x@3@00))
  :pattern ((img@5@00 x@3@00))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@3@00 $Ref) (x2@3@00 $Ref)) (!
  (=>
    (and
      (and (Set_in x1@3@00 xs@0@00) (not (Set_in x1@3@00 ys@1@00)))
      (and (Set_in x2@3@00 xs@0@00) (not (Set_in x2@3@00 ys@1@00)))
      (= x1@3@00 x2@3@00))
    (= x1@3@00 x2@3@00))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@3@00 $Ref)) (!
  (=>
    (and (Set_in x@3@00 xs@0@00) (not (Set_in x@3@00 ys@1@00)))
    (and (= (inv@4@00 x@3@00) x@3@00) (img@5@00 x@3@00)))
  :pattern ((Set_in x@3@00 xs@0@00))
  :pattern ((Set_in x@3@00 ys@1@00))
  :pattern ((inv@4@00 x@3@00))
  :pattern ((img@5@00 x@3@00))
  :qid |quant-u-5875|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@5@00 r)
      (and (Set_in (inv@4@00 r) xs@0@00) (not (Set_in (inv@4@00 r) ys@1@00))))
    (= (inv@4@00 r) r))
  :pattern ((inv@4@00 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@3@00 $Ref)) (!
  (=>
    (and (Set_in x@3@00 xs@0@00) (not (Set_in x@3@00 ys@1@00)))
    (not (= x@3@00 $Ref.null)))
  :pattern ((Set_in x@3@00 xs@0@00))
  :pattern ((Set_in x@3@00 ys@1@00))
  :pattern ((inv@4@00 x@3@00))
  :pattern ((img@5@00 x@3@00))
  :qid |f-permImpliesNonNull|)))
(assert (=
  ($Snap.second $t@2@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@2@00))
    ($Snap.second ($Snap.second $t@2@00)))))
(declare-const x@6@00 $Ref)
(push) ; 2
; [eval] (x in xs) && (!((x in ys)) && x.f != 0)
; [eval] (x in xs)
(push) ; 3
; [then-branch: 1 | !(x@6@00 in xs@0@00) | live]
; [else-branch: 1 | x@6@00 in xs@0@00 | live]
(push) ; 4
; [then-branch: 1 | !(x@6@00 in xs@0@00)]
(assert (not (Set_in x@6@00 xs@0@00)))
(pop) ; 4
(push) ; 4
; [else-branch: 1 | x@6@00 in xs@0@00]
(assert (Set_in x@6@00 xs@0@00))
; [eval] !((x in ys))
; [eval] (x in ys)
(push) ; 5
; [then-branch: 2 | x@6@00 in ys@1@00 | live]
; [else-branch: 2 | !(x@6@00 in ys@1@00) | live]
(push) ; 6
; [then-branch: 2 | x@6@00 in ys@1@00]
(assert (Set_in x@6@00 ys@1@00))
(pop) ; 6
(push) ; 6
; [else-branch: 2 | !(x@6@00 in ys@1@00)]
(assert (not (Set_in x@6@00 ys@1@00)))
; [eval] x.f != 0
(push) ; 7
(assert (not (and
  (img@5@00 x@6@00)
  (and
    (Set_in (inv@4@00 x@6@00) xs@0@00)
    (not (Set_in (inv@4@00 x@6@00) ys@1@00))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (not (Set_in x@6@00 ys@1@00)) (Set_in x@6@00 ys@1@00)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in x@6@00 xs@0@00)
  (and
    (Set_in x@6@00 xs@0@00)
    (or (not (Set_in x@6@00 ys@1@00)) (Set_in x@6@00 ys@1@00)))))
(assert (or (Set_in x@6@00 xs@0@00) (not (Set_in x@6@00 xs@0@00))))
(assert (and
  (Set_in x@6@00 xs@0@00)
  (and
    (not (Set_in x@6@00 ys@1@00))
    (not
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x@6@00)
        0)))))
(pop) ; 2
(declare-fun inv@7@00 ($Ref) $Ref)
(declare-fun img@8@00 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((x@6@00 $Ref)) (!
  (=>
    (and
      (Set_in x@6@00 xs@0@00)
      (and
        (not (Set_in x@6@00 ys@1@00))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x@6@00)
            0))))
    (and
      (=>
        (Set_in x@6@00 xs@0@00)
        (and
          (Set_in x@6@00 xs@0@00)
          (or (not (Set_in x@6@00 ys@1@00)) (Set_in x@6@00 ys@1@00))))
      (or (Set_in x@6@00 xs@0@00) (not (Set_in x@6@00 xs@0@00)))))
  :pattern ((Set_in x@6@00 xs@0@00))
  :pattern ((Set_in x@6@00 ys@1@00))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x@6@00))
  :pattern ((inv@7@00 x@6@00))
  :pattern ((img@8@00 x@6@00))
  :qid |g-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@6@00 $Ref) (x2@6@00 $Ref)) (!
  (=>
    (and
      (and
        (Set_in x1@6@00 xs@0@00)
        (and
          (not (Set_in x1@6@00 ys@1@00))
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@6@00)
              0))))
      (and
        (Set_in x2@6@00 xs@0@00)
        (and
          (not (Set_in x2@6@00 ys@1@00))
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@6@00)
              0))))
      (= x1@6@00 x2@6@00))
    (= x1@6@00 x2@6@00))
  
  :qid |g-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@6@00 $Ref)) (!
  (=>
    (and
      (Set_in x@6@00 xs@0@00)
      (and
        (not (Set_in x@6@00 ys@1@00))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x@6@00)
            0))))
    (and (= (inv@7@00 x@6@00) x@6@00) (img@8@00 x@6@00)))
  :pattern ((Set_in x@6@00 xs@0@00))
  :pattern ((Set_in x@6@00 ys@1@00))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x@6@00))
  :pattern ((inv@7@00 x@6@00))
  :pattern ((img@8@00 x@6@00))
  :qid |quant-u-5877|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@8@00 r)
      (and
        (Set_in (inv@7@00 r) xs@0@00)
        (and
          (not (Set_in (inv@7@00 r) ys@1@00))
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) (inv@7@00 r))
              0)))))
    (= (inv@7@00 r) r))
  :pattern ((inv@7@00 r))
  :qid |g-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@6@00 $Ref)) (!
  (=>
    (and
      (Set_in x@6@00 xs@0@00)
      (and
        (not (Set_in x@6@00 ys@1@00))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x@6@00)
            0))))
    (not (= x@6@00 $Ref.null)))
  :pattern ((Set_in x@6@00 xs@0@00))
  :pattern ((Set_in x@6@00 ys@1@00))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x@6@00))
  :pattern ((inv@7@00 x@6@00))
  :pattern ((img@8@00 x@6@00))
  :qid |g-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second $t@2@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@2@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@2@00))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@2@00))) $Snap.unit))
; [eval] (forall x1: Ref, x2: Ref :: { (x1 in xs), (x2 in xs) } { (x1 in xs), (x2 in ys) } { (x1 in xs), (x2.g in xs) } { (x1 in ys), (x2 in xs) } { (x1 in ys), (x2 in ys) } { (x1 in ys), (x2.g in xs) } { (x1.g in xs), (x2 in xs) } { (x1.g in xs), (x2 in ys) } { (x1.g in xs), (x2.g in xs) } (x1 in xs) && (!((x1 in ys)) && (x1.f != 0 && (!((x1.g in xs)) && ((x2 in xs) && (!((x2 in ys)) && (x2.f != 0 && (!((x2.g in xs)) && x1 != x2))))))) ==> x1.g != x2.g)
(declare-const x1@9@00 $Ref)
(declare-const x2@10@00 $Ref)
(push) ; 2
; [eval] (x1 in xs) && (!((x1 in ys)) && (x1.f != 0 && (!((x1.g in xs)) && ((x2 in xs) && (!((x2 in ys)) && (x2.f != 0 && (!((x2.g in xs)) && x1 != x2))))))) ==> x1.g != x2.g
; [eval] (x1 in xs) && (!((x1 in ys)) && (x1.f != 0 && (!((x1.g in xs)) && ((x2 in xs) && (!((x2 in ys)) && (x2.f != 0 && (!((x2.g in xs)) && x1 != x2)))))))
; [eval] (x1 in xs)
(push) ; 3
; [then-branch: 3 | !(x1@9@00 in xs@0@00) | live]
; [else-branch: 3 | x1@9@00 in xs@0@00 | live]
(push) ; 4
; [then-branch: 3 | !(x1@9@00 in xs@0@00)]
(assert (not (Set_in x1@9@00 xs@0@00)))
(pop) ; 4
(push) ; 4
; [else-branch: 3 | x1@9@00 in xs@0@00]
(assert (Set_in x1@9@00 xs@0@00))
; [eval] !((x1 in ys))
; [eval] (x1 in ys)
(push) ; 5
; [then-branch: 4 | x1@9@00 in ys@1@00 | live]
; [else-branch: 4 | !(x1@9@00 in ys@1@00) | live]
(push) ; 6
; [then-branch: 4 | x1@9@00 in ys@1@00]
(assert (Set_in x1@9@00 ys@1@00))
(pop) ; 6
(push) ; 6
; [else-branch: 4 | !(x1@9@00 in ys@1@00)]
(assert (not (Set_in x1@9@00 ys@1@00)))
; [eval] x1.f != 0
(push) ; 7
(assert (not (and
  (img@5@00 x1@9@00)
  (and
    (Set_in (inv@4@00 x1@9@00) xs@0@00)
    (not (Set_in (inv@4@00 x1@9@00) ys@1@00))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
; [then-branch: 5 | Lookup(f, First:($t@2@00), x1@9@00) == 0 | live]
; [else-branch: 5 | Lookup(f, First:($t@2@00), x1@9@00) != 0 | live]
(push) ; 8
; [then-branch: 5 | Lookup(f, First:($t@2@00), x1@9@00) == 0]
(assert (=
  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
  0))
(pop) ; 8
(push) ; 8
; [else-branch: 5 | Lookup(f, First:($t@2@00), x1@9@00) != 0]
(assert (not
  (=
    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
    0)))
; [eval] !((x1.g in xs))
; [eval] (x1.g in xs)
(push) ; 9
(assert (not (and
  (img@8@00 x1@9@00)
  (and
    (Set_in (inv@7@00 x1@9@00) xs@0@00)
    (and
      (not (Set_in (inv@7@00 x1@9@00) ys@1@00))
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) (inv@7@00 x1@9@00))
          0)))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
; [then-branch: 6 | Lookup(g, First:(Second:($t@2@00)), x1@9@00) in xs@0@00 | live]
; [else-branch: 6 | !(Lookup(g, First:(Second:($t@2@00)), x1@9@00) in xs@0@00) | live]
(push) ; 10
; [then-branch: 6 | Lookup(g, First:(Second:($t@2@00)), x1@9@00) in xs@0@00]
(assert (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
(pop) ; 10
(push) ; 10
; [else-branch: 6 | !(Lookup(g, First:(Second:($t@2@00)), x1@9@00) in xs@0@00)]
(assert (not
  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00)))
; [eval] (x2 in xs)
(push) ; 11
; [then-branch: 7 | !(x2@10@00 in xs@0@00) | live]
; [else-branch: 7 | x2@10@00 in xs@0@00 | live]
(push) ; 12
; [then-branch: 7 | !(x2@10@00 in xs@0@00)]
(assert (not (Set_in x2@10@00 xs@0@00)))
(pop) ; 12
(push) ; 12
; [else-branch: 7 | x2@10@00 in xs@0@00]
(assert (Set_in x2@10@00 xs@0@00))
; [eval] !((x2 in ys))
; [eval] (x2 in ys)
(push) ; 13
; [then-branch: 8 | x2@10@00 in ys@1@00 | live]
; [else-branch: 8 | !(x2@10@00 in ys@1@00) | live]
(push) ; 14
; [then-branch: 8 | x2@10@00 in ys@1@00]
(assert (Set_in x2@10@00 ys@1@00))
(pop) ; 14
(push) ; 14
; [else-branch: 8 | !(x2@10@00 in ys@1@00)]
(assert (not (Set_in x2@10@00 ys@1@00)))
; [eval] x2.f != 0
(push) ; 15
(assert (not (and
  (img@5@00 x2@10@00)
  (and
    (Set_in (inv@4@00 x2@10@00) xs@0@00)
    (not (Set_in (inv@4@00 x2@10@00) ys@1@00))))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(push) ; 15
; [then-branch: 9 | Lookup(f, First:($t@2@00), x2@10@00) == 0 | live]
; [else-branch: 9 | Lookup(f, First:($t@2@00), x2@10@00) != 0 | live]
(push) ; 16
; [then-branch: 9 | Lookup(f, First:($t@2@00), x2@10@00) == 0]
(assert (=
  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
  0))
(pop) ; 16
(push) ; 16
; [else-branch: 9 | Lookup(f, First:($t@2@00), x2@10@00) != 0]
(assert (not
  (=
    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
    0)))
; [eval] !((x2.g in xs))
; [eval] (x2.g in xs)
(push) ; 17
(assert (not (and
  (img@8@00 x2@10@00)
  (and
    (Set_in (inv@7@00 x2@10@00) xs@0@00)
    (and
      (not (Set_in (inv@7@00 x2@10@00) ys@1@00))
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) (inv@7@00 x2@10@00))
          0)))))))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(push) ; 17
; [then-branch: 10 | Lookup(g, First:(Second:($t@2@00)), x2@10@00) in xs@0@00 | live]
; [else-branch: 10 | !(Lookup(g, First:(Second:($t@2@00)), x2@10@00) in xs@0@00) | live]
(push) ; 18
; [then-branch: 10 | Lookup(g, First:(Second:($t@2@00)), x2@10@00) in xs@0@00]
(assert (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
(pop) ; 18
(push) ; 18
; [else-branch: 10 | !(Lookup(g, First:(Second:($t@2@00)), x2@10@00) in xs@0@00)]
(assert (not
  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00)))
; [eval] x1 != x2
(pop) ; 18
(pop) ; 17
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00)))
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
(assert (=>
  (not
    (=
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
      0))
  (and
    (not
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
        0))
    (or
      (not
        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00)))))
(assert (or
  (not
    (=
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
      0))
  (=
    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
    0)))
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(assert (=>
  (not (Set_in x2@10@00 ys@1@00))
  (and
    (not (Set_in x2@10@00 ys@1@00))
    (=>
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
          0))
      (and
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
            0))
        (or
          (not
            (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))))
    (or
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
          0))
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
        0)))))
(assert (or (not (Set_in x2@10@00 ys@1@00)) (Set_in x2@10@00 ys@1@00)))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in x2@10@00 xs@0@00)
  (and
    (Set_in x2@10@00 xs@0@00)
    (=>
      (not (Set_in x2@10@00 ys@1@00))
      (and
        (not (Set_in x2@10@00 ys@1@00))
        (=>
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
              0))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                0))
            (or
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
              (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))))
        (or
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
              0))
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
            0))))
    (or (not (Set_in x2@10@00 ys@1@00)) (Set_in x2@10@00 ys@1@00)))))
(assert (or (Set_in x2@10@00 xs@0@00) (not (Set_in x2@10@00 xs@0@00))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (not
    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
  (and
    (not
      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
    (=>
      (Set_in x2@10@00 xs@0@00)
      (and
        (Set_in x2@10@00 xs@0@00)
        (=>
          (not (Set_in x2@10@00 ys@1@00))
          (and
            (not (Set_in x2@10@00 ys@1@00))
            (=>
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                  0))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                    0))
                (or
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))))
            (or
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                  0))
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                0))))
        (or (not (Set_in x2@10@00 ys@1@00)) (Set_in x2@10@00 ys@1@00))))
    (or (Set_in x2@10@00 xs@0@00) (not (Set_in x2@10@00 xs@0@00))))))
(assert (or
  (not
    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00)))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (not
    (=
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
      0))
  (and
    (not
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
        0))
    (=>
      (not
        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
      (and
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
        (=>
          (Set_in x2@10@00 xs@0@00)
          (and
            (Set_in x2@10@00 xs@0@00)
            (=>
              (not (Set_in x2@10@00 ys@1@00))
              (and
                (not (Set_in x2@10@00 ys@1@00))
                (=>
                  (not
                    (=
                      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                      0))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                        0))
                    (or
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))))
                (or
                  (not
                    (=
                      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                      0))
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                    0))))
            (or (not (Set_in x2@10@00 ys@1@00)) (Set_in x2@10@00 ys@1@00))))
        (or (Set_in x2@10@00 xs@0@00) (not (Set_in x2@10@00 xs@0@00)))))
    (or
      (not
        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00)))))
(assert (or
  (not
    (=
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
      0))
  (=
    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
    0)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (not (Set_in x1@9@00 ys@1@00))
  (and
    (not (Set_in x1@9@00 ys@1@00))
    (=>
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
          0))
      (and
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
            0))
        (=>
          (not
            (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
          (and
            (not
              (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
            (=>
              (Set_in x2@10@00 xs@0@00)
              (and
                (Set_in x2@10@00 xs@0@00)
                (=>
                  (not (Set_in x2@10@00 ys@1@00))
                  (and
                    (not (Set_in x2@10@00 ys@1@00))
                    (=>
                      (not
                        (=
                          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                          0))
                      (and
                        (not
                          (=
                            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                            0))
                        (or
                          (not
                            (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
                          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))))
                    (or
                      (not
                        (=
                          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                          0))
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                        0))))
                (or (not (Set_in x2@10@00 ys@1@00)) (Set_in x2@10@00 ys@1@00))))
            (or (Set_in x2@10@00 xs@0@00) (not (Set_in x2@10@00 xs@0@00)))))
        (or
          (not
            (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))))
    (or
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
          0))
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
        0)))))
(assert (or (not (Set_in x1@9@00 ys@1@00)) (Set_in x1@9@00 ys@1@00)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in x1@9@00 xs@0@00)
  (and
    (Set_in x1@9@00 xs@0@00)
    (=>
      (not (Set_in x1@9@00 ys@1@00))
      (and
        (not (Set_in x1@9@00 ys@1@00))
        (=>
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
              0))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                0))
            (=>
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
              (and
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
                (=>
                  (Set_in x2@10@00 xs@0@00)
                  (and
                    (Set_in x2@10@00 xs@0@00)
                    (=>
                      (not (Set_in x2@10@00 ys@1@00))
                      (and
                        (not (Set_in x2@10@00 ys@1@00))
                        (=>
                          (not
                            (=
                              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                              0))
                          (and
                            (not
                              (=
                                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                                0))
                            (or
                              (not
                                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
                              (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))))
                        (or
                          (not
                            (=
                              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                              0))
                          (=
                            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                            0))))
                    (or
                      (not (Set_in x2@10@00 ys@1@00))
                      (Set_in x2@10@00 ys@1@00))))
                (or (Set_in x2@10@00 xs@0@00) (not (Set_in x2@10@00 xs@0@00)))))
            (or
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
              (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))))
        (or
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
              0))
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
            0))))
    (or (not (Set_in x1@9@00 ys@1@00)) (Set_in x1@9@00 ys@1@00)))))
(assert (or (Set_in x1@9@00 xs@0@00) (not (Set_in x1@9@00 xs@0@00))))
(push) ; 3
; [then-branch: 11 | x1@9@00 in xs@0@00 && !(x1@9@00 in ys@1@00) && Lookup(f, First:($t@2@00), x1@9@00) != 0 && !(Lookup(g, First:(Second:($t@2@00)), x1@9@00) in xs@0@00) && x2@10@00 in xs@0@00 && !(x2@10@00 in ys@1@00) && Lookup(f, First:($t@2@00), x2@10@00) != 0 && !(Lookup(g, First:(Second:($t@2@00)), x2@10@00) in xs@0@00) && x1@9@00 != x2@10@00 | live]
; [else-branch: 11 | !(x1@9@00 in xs@0@00 && !(x1@9@00 in ys@1@00) && Lookup(f, First:($t@2@00), x1@9@00) != 0 && !(Lookup(g, First:(Second:($t@2@00)), x1@9@00) in xs@0@00) && x2@10@00 in xs@0@00 && !(x2@10@00 in ys@1@00) && Lookup(f, First:($t@2@00), x2@10@00) != 0 && !(Lookup(g, First:(Second:($t@2@00)), x2@10@00) in xs@0@00) && x1@9@00 != x2@10@00) | live]
(push) ; 4
; [then-branch: 11 | x1@9@00 in xs@0@00 && !(x1@9@00 in ys@1@00) && Lookup(f, First:($t@2@00), x1@9@00) != 0 && !(Lookup(g, First:(Second:($t@2@00)), x1@9@00) in xs@0@00) && x2@10@00 in xs@0@00 && !(x2@10@00 in ys@1@00) && Lookup(f, First:($t@2@00), x2@10@00) != 0 && !(Lookup(g, First:(Second:($t@2@00)), x2@10@00) in xs@0@00) && x1@9@00 != x2@10@00]
(assert (and
  (Set_in x1@9@00 xs@0@00)
  (and
    (not (Set_in x1@9@00 ys@1@00))
    (and
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
          0))
      (and
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
        (and
          (Set_in x2@10@00 xs@0@00)
          (and
            (not (Set_in x2@10@00 ys@1@00))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                  0))
              (and
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
                (not (= x1@9@00 x2@10@00)))))))))))
; [eval] x1.g != x2.g
(push) ; 5
(assert (not (and
  (img@8@00 x1@9@00)
  (and
    (Set_in (inv@7@00 x1@9@00) xs@0@00)
    (and
      (not (Set_in (inv@7@00 x1@9@00) ys@1@00))
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) (inv@7@00 x1@9@00))
          0)))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (and
  (img@8@00 x2@10@00)
  (and
    (Set_in (inv@7@00 x2@10@00) xs@0@00)
    (and
      (not (Set_in (inv@7@00 x2@10@00) ys@1@00))
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) (inv@7@00 x2@10@00))
          0)))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 11 | !(x1@9@00 in xs@0@00 && !(x1@9@00 in ys@1@00) && Lookup(f, First:($t@2@00), x1@9@00) != 0 && !(Lookup(g, First:(Second:($t@2@00)), x1@9@00) in xs@0@00) && x2@10@00 in xs@0@00 && !(x2@10@00 in ys@1@00) && Lookup(f, First:($t@2@00), x2@10@00) != 0 && !(Lookup(g, First:(Second:($t@2@00)), x2@10@00) in xs@0@00) && x1@9@00 != x2@10@00)]
(assert (not
  (and
    (Set_in x1@9@00 xs@0@00)
    (and
      (not (Set_in x1@9@00 ys@1@00))
      (and
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
            0))
        (and
          (not
            (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
          (and
            (Set_in x2@10@00 xs@0@00)
            (and
              (not (Set_in x2@10@00 ys@1@00))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                    0))
                (and
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
                  (not (= x1@9@00 x2@10@00))))))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (Set_in x1@9@00 xs@0@00)
    (and
      (not (Set_in x1@9@00 ys@1@00))
      (and
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
            0))
        (and
          (not
            (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
          (and
            (Set_in x2@10@00 xs@0@00)
            (and
              (not (Set_in x2@10@00 ys@1@00))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                    0))
                (and
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
                  (not (= x1@9@00 x2@10@00))))))))))
  (and
    (Set_in x1@9@00 xs@0@00)
    (not (Set_in x1@9@00 ys@1@00))
    (not
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
        0))
    (not
      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
    (Set_in x2@10@00 xs@0@00)
    (not (Set_in x2@10@00 ys@1@00))
    (not
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
        0))
    (not
      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
    (not (= x1@9@00 x2@10@00)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in x1@9@00 xs@0@00)
      (and
        (not (Set_in x1@9@00 ys@1@00))
        (and
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
              0))
          (and
            (not
              (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
            (and
              (Set_in x2@10@00 xs@0@00)
              (and
                (not (Set_in x2@10@00 ys@1@00))
                (and
                  (not
                    (=
                      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                      0))
                  (and
                    (not
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
                    (not (= x1@9@00 x2@10@00)))))))))))
  (and
    (Set_in x1@9@00 xs@0@00)
    (and
      (not (Set_in x1@9@00 ys@1@00))
      (and
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
            0))
        (and
          (not
            (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
          (and
            (Set_in x2@10@00 xs@0@00)
            (and
              (not (Set_in x2@10@00 ys@1@00))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                    0))
                (and
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
                  (not (= x1@9@00 x2@10@00))))))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x1@9@00 $Ref) (x2@10@00 $Ref)) (!
  (and
    (=>
      (Set_in x1@9@00 xs@0@00)
      (and
        (Set_in x1@9@00 xs@0@00)
        (=>
          (not (Set_in x1@9@00 ys@1@00))
          (and
            (not (Set_in x1@9@00 ys@1@00))
            (=>
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                  0))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                    0))
                (=>
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
                  (and
                    (not
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
                    (=>
                      (Set_in x2@10@00 xs@0@00)
                      (and
                        (Set_in x2@10@00 xs@0@00)
                        (=>
                          (not (Set_in x2@10@00 ys@1@00))
                          (and
                            (not (Set_in x2@10@00 ys@1@00))
                            (=>
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                                  0))
                              (and
                                (not
                                  (=
                                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                                    0))
                                (or
                                  (not
                                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
                                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))))
                            (or
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                                  0))
                              (=
                                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                                0))))
                        (or
                          (not (Set_in x2@10@00 ys@1@00))
                          (Set_in x2@10@00 ys@1@00))))
                    (or
                      (Set_in x2@10@00 xs@0@00)
                      (not (Set_in x2@10@00 xs@0@00)))))
                (or
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))))
            (or
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                  0))
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                0))))
        (or (not (Set_in x1@9@00 ys@1@00)) (Set_in x1@9@00 ys@1@00))))
    (or (Set_in x1@9@00 xs@0@00) (not (Set_in x1@9@00 xs@0@00)))
    (=>
      (and
        (Set_in x1@9@00 xs@0@00)
        (and
          (not (Set_in x1@9@00 ys@1@00))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
              (and
                (Set_in x2@10@00 xs@0@00)
                (and
                  (not (Set_in x2@10@00 ys@1@00))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
                      (not (= x1@9@00 x2@10@00))))))))))
      (and
        (Set_in x1@9@00 xs@0@00)
        (not (Set_in x1@9@00 ys@1@00))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
        (Set_in x2@10@00 xs@0@00)
        (not (Set_in x2@10@00 ys@1@00))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
        (not (= x1@9@00 x2@10@00))))
    (or
      (not
        (and
          (Set_in x1@9@00 xs@0@00)
          (and
            (not (Set_in x1@9@00 ys@1@00))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                  0))
              (and
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
                (and
                  (Set_in x2@10@00 xs@0@00)
                  (and
                    (not (Set_in x2@10@00 ys@1@00))
                    (and
                      (not
                        (=
                          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                          0))
                      (and
                        (not
                          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
                        (not (= x1@9@00 x2@10@00)))))))))))
      (and
        (Set_in x1@9@00 xs@0@00)
        (and
          (not (Set_in x1@9@00 ys@1@00))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
              (and
                (Set_in x2@10@00 xs@0@00)
                (and
                  (not (Set_in x2@10@00 ys@1@00))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
                      (not (= x1@9@00 x2@10@00))))))))))))
  :pattern ((Set_in x1@9@00 xs@0@00) (Set_in x2@10@00 xs@0@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/generalised_shape.vpr@119@7@121@92-aux|)))
(assert (forall ((x1@9@00 $Ref) (x2@10@00 $Ref)) (!
  (and
    (=>
      (Set_in x1@9@00 xs@0@00)
      (and
        (Set_in x1@9@00 xs@0@00)
        (=>
          (not (Set_in x1@9@00 ys@1@00))
          (and
            (not (Set_in x1@9@00 ys@1@00))
            (=>
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                  0))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                    0))
                (=>
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
                  (and
                    (not
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
                    (=>
                      (Set_in x2@10@00 xs@0@00)
                      (and
                        (Set_in x2@10@00 xs@0@00)
                        (=>
                          (not (Set_in x2@10@00 ys@1@00))
                          (and
                            (not (Set_in x2@10@00 ys@1@00))
                            (=>
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                                  0))
                              (and
                                (not
                                  (=
                                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                                    0))
                                (or
                                  (not
                                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
                                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))))
                            (or
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                                  0))
                              (=
                                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                                0))))
                        (or
                          (not (Set_in x2@10@00 ys@1@00))
                          (Set_in x2@10@00 ys@1@00))))
                    (or
                      (Set_in x2@10@00 xs@0@00)
                      (not (Set_in x2@10@00 xs@0@00)))))
                (or
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))))
            (or
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                  0))
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                0))))
        (or (not (Set_in x1@9@00 ys@1@00)) (Set_in x1@9@00 ys@1@00))))
    (or (Set_in x1@9@00 xs@0@00) (not (Set_in x1@9@00 xs@0@00)))
    (=>
      (and
        (Set_in x1@9@00 xs@0@00)
        (and
          (not (Set_in x1@9@00 ys@1@00))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
              (and
                (Set_in x2@10@00 xs@0@00)
                (and
                  (not (Set_in x2@10@00 ys@1@00))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
                      (not (= x1@9@00 x2@10@00))))))))))
      (and
        (Set_in x1@9@00 xs@0@00)
        (not (Set_in x1@9@00 ys@1@00))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
        (Set_in x2@10@00 xs@0@00)
        (not (Set_in x2@10@00 ys@1@00))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
        (not (= x1@9@00 x2@10@00))))
    (or
      (not
        (and
          (Set_in x1@9@00 xs@0@00)
          (and
            (not (Set_in x1@9@00 ys@1@00))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                  0))
              (and
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
                (and
                  (Set_in x2@10@00 xs@0@00)
                  (and
                    (not (Set_in x2@10@00 ys@1@00))
                    (and
                      (not
                        (=
                          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                          0))
                      (and
                        (not
                          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
                        (not (= x1@9@00 x2@10@00)))))))))))
      (and
        (Set_in x1@9@00 xs@0@00)
        (and
          (not (Set_in x1@9@00 ys@1@00))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
              (and
                (Set_in x2@10@00 xs@0@00)
                (and
                  (not (Set_in x2@10@00 ys@1@00))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
                      (not (= x1@9@00 x2@10@00))))))))))))
  :pattern ((Set_in x1@9@00 xs@0@00) (Set_in x2@10@00 ys@1@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/generalised_shape.vpr@119@7@121@92-aux|)))
(assert (forall ((x1@9@00 $Ref) (x2@10@00 $Ref)) (!
  (and
    (=>
      (Set_in x1@9@00 xs@0@00)
      (and
        (Set_in x1@9@00 xs@0@00)
        (=>
          (not (Set_in x1@9@00 ys@1@00))
          (and
            (not (Set_in x1@9@00 ys@1@00))
            (=>
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                  0))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                    0))
                (=>
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
                  (and
                    (not
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
                    (=>
                      (Set_in x2@10@00 xs@0@00)
                      (and
                        (Set_in x2@10@00 xs@0@00)
                        (=>
                          (not (Set_in x2@10@00 ys@1@00))
                          (and
                            (not (Set_in x2@10@00 ys@1@00))
                            (=>
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                                  0))
                              (and
                                (not
                                  (=
                                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                                    0))
                                (or
                                  (not
                                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
                                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))))
                            (or
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                                  0))
                              (=
                                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                                0))))
                        (or
                          (not (Set_in x2@10@00 ys@1@00))
                          (Set_in x2@10@00 ys@1@00))))
                    (or
                      (Set_in x2@10@00 xs@0@00)
                      (not (Set_in x2@10@00 xs@0@00)))))
                (or
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))))
            (or
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                  0))
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                0))))
        (or (not (Set_in x1@9@00 ys@1@00)) (Set_in x1@9@00 ys@1@00))))
    (or (Set_in x1@9@00 xs@0@00) (not (Set_in x1@9@00 xs@0@00)))
    (=>
      (and
        (Set_in x1@9@00 xs@0@00)
        (and
          (not (Set_in x1@9@00 ys@1@00))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
              (and
                (Set_in x2@10@00 xs@0@00)
                (and
                  (not (Set_in x2@10@00 ys@1@00))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
                      (not (= x1@9@00 x2@10@00))))))))))
      (and
        (Set_in x1@9@00 xs@0@00)
        (not (Set_in x1@9@00 ys@1@00))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
        (Set_in x2@10@00 xs@0@00)
        (not (Set_in x2@10@00 ys@1@00))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
        (not (= x1@9@00 x2@10@00))))
    (or
      (not
        (and
          (Set_in x1@9@00 xs@0@00)
          (and
            (not (Set_in x1@9@00 ys@1@00))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                  0))
              (and
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
                (and
                  (Set_in x2@10@00 xs@0@00)
                  (and
                    (not (Set_in x2@10@00 ys@1@00))
                    (and
                      (not
                        (=
                          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                          0))
                      (and
                        (not
                          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
                        (not (= x1@9@00 x2@10@00)))))))))))
      (and
        (Set_in x1@9@00 xs@0@00)
        (and
          (not (Set_in x1@9@00 ys@1@00))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
              (and
                (Set_in x2@10@00 xs@0@00)
                (and
                  (not (Set_in x2@10@00 ys@1@00))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
                      (not (= x1@9@00 x2@10@00))))))))))))
  :pattern ((Set_in x1@9@00 xs@0@00) (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/generalised_shape.vpr@119@7@121@92-aux|)))
(assert (forall ((x1@9@00 $Ref) (x2@10@00 $Ref)) (!
  (and
    (=>
      (Set_in x1@9@00 xs@0@00)
      (and
        (Set_in x1@9@00 xs@0@00)
        (=>
          (not (Set_in x1@9@00 ys@1@00))
          (and
            (not (Set_in x1@9@00 ys@1@00))
            (=>
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                  0))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                    0))
                (=>
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
                  (and
                    (not
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
                    (=>
                      (Set_in x2@10@00 xs@0@00)
                      (and
                        (Set_in x2@10@00 xs@0@00)
                        (=>
                          (not (Set_in x2@10@00 ys@1@00))
                          (and
                            (not (Set_in x2@10@00 ys@1@00))
                            (=>
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                                  0))
                              (and
                                (not
                                  (=
                                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                                    0))
                                (or
                                  (not
                                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
                                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))))
                            (or
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                                  0))
                              (=
                                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                                0))))
                        (or
                          (not (Set_in x2@10@00 ys@1@00))
                          (Set_in x2@10@00 ys@1@00))))
                    (or
                      (Set_in x2@10@00 xs@0@00)
                      (not (Set_in x2@10@00 xs@0@00)))))
                (or
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))))
            (or
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                  0))
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                0))))
        (or (not (Set_in x1@9@00 ys@1@00)) (Set_in x1@9@00 ys@1@00))))
    (or (Set_in x1@9@00 xs@0@00) (not (Set_in x1@9@00 xs@0@00)))
    (=>
      (and
        (Set_in x1@9@00 xs@0@00)
        (and
          (not (Set_in x1@9@00 ys@1@00))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
              (and
                (Set_in x2@10@00 xs@0@00)
                (and
                  (not (Set_in x2@10@00 ys@1@00))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
                      (not (= x1@9@00 x2@10@00))))))))))
      (and
        (Set_in x1@9@00 xs@0@00)
        (not (Set_in x1@9@00 ys@1@00))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
        (Set_in x2@10@00 xs@0@00)
        (not (Set_in x2@10@00 ys@1@00))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
        (not (= x1@9@00 x2@10@00))))
    (or
      (not
        (and
          (Set_in x1@9@00 xs@0@00)
          (and
            (not (Set_in x1@9@00 ys@1@00))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                  0))
              (and
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
                (and
                  (Set_in x2@10@00 xs@0@00)
                  (and
                    (not (Set_in x2@10@00 ys@1@00))
                    (and
                      (not
                        (=
                          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                          0))
                      (and
                        (not
                          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
                        (not (= x1@9@00 x2@10@00)))))))))))
      (and
        (Set_in x1@9@00 xs@0@00)
        (and
          (not (Set_in x1@9@00 ys@1@00))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
              (and
                (Set_in x2@10@00 xs@0@00)
                (and
                  (not (Set_in x2@10@00 ys@1@00))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
                      (not (= x1@9@00 x2@10@00))))))))))))
  :pattern ((Set_in x1@9@00 ys@1@00) (Set_in x2@10@00 xs@0@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/generalised_shape.vpr@119@7@121@92-aux|)))
(assert (forall ((x1@9@00 $Ref) (x2@10@00 $Ref)) (!
  (and
    (=>
      (Set_in x1@9@00 xs@0@00)
      (and
        (Set_in x1@9@00 xs@0@00)
        (=>
          (not (Set_in x1@9@00 ys@1@00))
          (and
            (not (Set_in x1@9@00 ys@1@00))
            (=>
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                  0))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                    0))
                (=>
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
                  (and
                    (not
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
                    (=>
                      (Set_in x2@10@00 xs@0@00)
                      (and
                        (Set_in x2@10@00 xs@0@00)
                        (=>
                          (not (Set_in x2@10@00 ys@1@00))
                          (and
                            (not (Set_in x2@10@00 ys@1@00))
                            (=>
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                                  0))
                              (and
                                (not
                                  (=
                                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                                    0))
                                (or
                                  (not
                                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
                                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))))
                            (or
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                                  0))
                              (=
                                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                                0))))
                        (or
                          (not (Set_in x2@10@00 ys@1@00))
                          (Set_in x2@10@00 ys@1@00))))
                    (or
                      (Set_in x2@10@00 xs@0@00)
                      (not (Set_in x2@10@00 xs@0@00)))))
                (or
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))))
            (or
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                  0))
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                0))))
        (or (not (Set_in x1@9@00 ys@1@00)) (Set_in x1@9@00 ys@1@00))))
    (or (Set_in x1@9@00 xs@0@00) (not (Set_in x1@9@00 xs@0@00)))
    (=>
      (and
        (Set_in x1@9@00 xs@0@00)
        (and
          (not (Set_in x1@9@00 ys@1@00))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
              (and
                (Set_in x2@10@00 xs@0@00)
                (and
                  (not (Set_in x2@10@00 ys@1@00))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
                      (not (= x1@9@00 x2@10@00))))))))))
      (and
        (Set_in x1@9@00 xs@0@00)
        (not (Set_in x1@9@00 ys@1@00))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
        (Set_in x2@10@00 xs@0@00)
        (not (Set_in x2@10@00 ys@1@00))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
        (not (= x1@9@00 x2@10@00))))
    (or
      (not
        (and
          (Set_in x1@9@00 xs@0@00)
          (and
            (not (Set_in x1@9@00 ys@1@00))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                  0))
              (and
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
                (and
                  (Set_in x2@10@00 xs@0@00)
                  (and
                    (not (Set_in x2@10@00 ys@1@00))
                    (and
                      (not
                        (=
                          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                          0))
                      (and
                        (not
                          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
                        (not (= x1@9@00 x2@10@00)))))))))))
      (and
        (Set_in x1@9@00 xs@0@00)
        (and
          (not (Set_in x1@9@00 ys@1@00))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
              (and
                (Set_in x2@10@00 xs@0@00)
                (and
                  (not (Set_in x2@10@00 ys@1@00))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
                      (not (= x1@9@00 x2@10@00))))))))))))
  :pattern ((Set_in x1@9@00 ys@1@00) (Set_in x2@10@00 ys@1@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/generalised_shape.vpr@119@7@121@92-aux|)))
(assert (forall ((x1@9@00 $Ref) (x2@10@00 $Ref)) (!
  (and
    (=>
      (Set_in x1@9@00 xs@0@00)
      (and
        (Set_in x1@9@00 xs@0@00)
        (=>
          (not (Set_in x1@9@00 ys@1@00))
          (and
            (not (Set_in x1@9@00 ys@1@00))
            (=>
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                  0))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                    0))
                (=>
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
                  (and
                    (not
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
                    (=>
                      (Set_in x2@10@00 xs@0@00)
                      (and
                        (Set_in x2@10@00 xs@0@00)
                        (=>
                          (not (Set_in x2@10@00 ys@1@00))
                          (and
                            (not (Set_in x2@10@00 ys@1@00))
                            (=>
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                                  0))
                              (and
                                (not
                                  (=
                                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                                    0))
                                (or
                                  (not
                                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
                                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))))
                            (or
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                                  0))
                              (=
                                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                                0))))
                        (or
                          (not (Set_in x2@10@00 ys@1@00))
                          (Set_in x2@10@00 ys@1@00))))
                    (or
                      (Set_in x2@10@00 xs@0@00)
                      (not (Set_in x2@10@00 xs@0@00)))))
                (or
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))))
            (or
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                  0))
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                0))))
        (or (not (Set_in x1@9@00 ys@1@00)) (Set_in x1@9@00 ys@1@00))))
    (or (Set_in x1@9@00 xs@0@00) (not (Set_in x1@9@00 xs@0@00)))
    (=>
      (and
        (Set_in x1@9@00 xs@0@00)
        (and
          (not (Set_in x1@9@00 ys@1@00))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
              (and
                (Set_in x2@10@00 xs@0@00)
                (and
                  (not (Set_in x2@10@00 ys@1@00))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
                      (not (= x1@9@00 x2@10@00))))))))))
      (and
        (Set_in x1@9@00 xs@0@00)
        (not (Set_in x1@9@00 ys@1@00))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
        (Set_in x2@10@00 xs@0@00)
        (not (Set_in x2@10@00 ys@1@00))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
        (not (= x1@9@00 x2@10@00))))
    (or
      (not
        (and
          (Set_in x1@9@00 xs@0@00)
          (and
            (not (Set_in x1@9@00 ys@1@00))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                  0))
              (and
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
                (and
                  (Set_in x2@10@00 xs@0@00)
                  (and
                    (not (Set_in x2@10@00 ys@1@00))
                    (and
                      (not
                        (=
                          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                          0))
                      (and
                        (not
                          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
                        (not (= x1@9@00 x2@10@00)))))))))))
      (and
        (Set_in x1@9@00 xs@0@00)
        (and
          (not (Set_in x1@9@00 ys@1@00))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
              (and
                (Set_in x2@10@00 xs@0@00)
                (and
                  (not (Set_in x2@10@00 ys@1@00))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
                      (not (= x1@9@00 x2@10@00))))))))))))
  :pattern ((Set_in x1@9@00 ys@1@00) (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/generalised_shape.vpr@119@7@121@92-aux|)))
(assert (forall ((x1@9@00 $Ref) (x2@10@00 $Ref)) (!
  (and
    (=>
      (Set_in x1@9@00 xs@0@00)
      (and
        (Set_in x1@9@00 xs@0@00)
        (=>
          (not (Set_in x1@9@00 ys@1@00))
          (and
            (not (Set_in x1@9@00 ys@1@00))
            (=>
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                  0))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                    0))
                (=>
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
                  (and
                    (not
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
                    (=>
                      (Set_in x2@10@00 xs@0@00)
                      (and
                        (Set_in x2@10@00 xs@0@00)
                        (=>
                          (not (Set_in x2@10@00 ys@1@00))
                          (and
                            (not (Set_in x2@10@00 ys@1@00))
                            (=>
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                                  0))
                              (and
                                (not
                                  (=
                                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                                    0))
                                (or
                                  (not
                                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
                                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))))
                            (or
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                                  0))
                              (=
                                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                                0))))
                        (or
                          (not (Set_in x2@10@00 ys@1@00))
                          (Set_in x2@10@00 ys@1@00))))
                    (or
                      (Set_in x2@10@00 xs@0@00)
                      (not (Set_in x2@10@00 xs@0@00)))))
                (or
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))))
            (or
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                  0))
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                0))))
        (or (not (Set_in x1@9@00 ys@1@00)) (Set_in x1@9@00 ys@1@00))))
    (or (Set_in x1@9@00 xs@0@00) (not (Set_in x1@9@00 xs@0@00)))
    (=>
      (and
        (Set_in x1@9@00 xs@0@00)
        (and
          (not (Set_in x1@9@00 ys@1@00))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
              (and
                (Set_in x2@10@00 xs@0@00)
                (and
                  (not (Set_in x2@10@00 ys@1@00))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
                      (not (= x1@9@00 x2@10@00))))))))))
      (and
        (Set_in x1@9@00 xs@0@00)
        (not (Set_in x1@9@00 ys@1@00))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
        (Set_in x2@10@00 xs@0@00)
        (not (Set_in x2@10@00 ys@1@00))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
        (not (= x1@9@00 x2@10@00))))
    (or
      (not
        (and
          (Set_in x1@9@00 xs@0@00)
          (and
            (not (Set_in x1@9@00 ys@1@00))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                  0))
              (and
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
                (and
                  (Set_in x2@10@00 xs@0@00)
                  (and
                    (not (Set_in x2@10@00 ys@1@00))
                    (and
                      (not
                        (=
                          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                          0))
                      (and
                        (not
                          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
                        (not (= x1@9@00 x2@10@00)))))))))))
      (and
        (Set_in x1@9@00 xs@0@00)
        (and
          (not (Set_in x1@9@00 ys@1@00))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
              (and
                (Set_in x2@10@00 xs@0@00)
                (and
                  (not (Set_in x2@10@00 ys@1@00))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
                      (not (= x1@9@00 x2@10@00))))))))))))
  :pattern ((Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00) (Set_in x2@10@00 xs@0@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/generalised_shape.vpr@119@7@121@92-aux|)))
(assert (forall ((x1@9@00 $Ref) (x2@10@00 $Ref)) (!
  (and
    (=>
      (Set_in x1@9@00 xs@0@00)
      (and
        (Set_in x1@9@00 xs@0@00)
        (=>
          (not (Set_in x1@9@00 ys@1@00))
          (and
            (not (Set_in x1@9@00 ys@1@00))
            (=>
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                  0))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                    0))
                (=>
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
                  (and
                    (not
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
                    (=>
                      (Set_in x2@10@00 xs@0@00)
                      (and
                        (Set_in x2@10@00 xs@0@00)
                        (=>
                          (not (Set_in x2@10@00 ys@1@00))
                          (and
                            (not (Set_in x2@10@00 ys@1@00))
                            (=>
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                                  0))
                              (and
                                (not
                                  (=
                                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                                    0))
                                (or
                                  (not
                                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
                                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))))
                            (or
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                                  0))
                              (=
                                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                                0))))
                        (or
                          (not (Set_in x2@10@00 ys@1@00))
                          (Set_in x2@10@00 ys@1@00))))
                    (or
                      (Set_in x2@10@00 xs@0@00)
                      (not (Set_in x2@10@00 xs@0@00)))))
                (or
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))))
            (or
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                  0))
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                0))))
        (or (not (Set_in x1@9@00 ys@1@00)) (Set_in x1@9@00 ys@1@00))))
    (or (Set_in x1@9@00 xs@0@00) (not (Set_in x1@9@00 xs@0@00)))
    (=>
      (and
        (Set_in x1@9@00 xs@0@00)
        (and
          (not (Set_in x1@9@00 ys@1@00))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
              (and
                (Set_in x2@10@00 xs@0@00)
                (and
                  (not (Set_in x2@10@00 ys@1@00))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
                      (not (= x1@9@00 x2@10@00))))))))))
      (and
        (Set_in x1@9@00 xs@0@00)
        (not (Set_in x1@9@00 ys@1@00))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
        (Set_in x2@10@00 xs@0@00)
        (not (Set_in x2@10@00 ys@1@00))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
        (not (= x1@9@00 x2@10@00))))
    (or
      (not
        (and
          (Set_in x1@9@00 xs@0@00)
          (and
            (not (Set_in x1@9@00 ys@1@00))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                  0))
              (and
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
                (and
                  (Set_in x2@10@00 xs@0@00)
                  (and
                    (not (Set_in x2@10@00 ys@1@00))
                    (and
                      (not
                        (=
                          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                          0))
                      (and
                        (not
                          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
                        (not (= x1@9@00 x2@10@00)))))))))))
      (and
        (Set_in x1@9@00 xs@0@00)
        (and
          (not (Set_in x1@9@00 ys@1@00))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
              (and
                (Set_in x2@10@00 xs@0@00)
                (and
                  (not (Set_in x2@10@00 ys@1@00))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
                      (not (= x1@9@00 x2@10@00))))))))))))
  :pattern ((Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00) (Set_in x2@10@00 ys@1@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/generalised_shape.vpr@119@7@121@92-aux|)))
(assert (forall ((x1@9@00 $Ref) (x2@10@00 $Ref)) (!
  (and
    (=>
      (Set_in x1@9@00 xs@0@00)
      (and
        (Set_in x1@9@00 xs@0@00)
        (=>
          (not (Set_in x1@9@00 ys@1@00))
          (and
            (not (Set_in x1@9@00 ys@1@00))
            (=>
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                  0))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                    0))
                (=>
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
                  (and
                    (not
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
                    (=>
                      (Set_in x2@10@00 xs@0@00)
                      (and
                        (Set_in x2@10@00 xs@0@00)
                        (=>
                          (not (Set_in x2@10@00 ys@1@00))
                          (and
                            (not (Set_in x2@10@00 ys@1@00))
                            (=>
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                                  0))
                              (and
                                (not
                                  (=
                                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                                    0))
                                (or
                                  (not
                                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
                                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))))
                            (or
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                                  0))
                              (=
                                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                                0))))
                        (or
                          (not (Set_in x2@10@00 ys@1@00))
                          (Set_in x2@10@00 ys@1@00))))
                    (or
                      (Set_in x2@10@00 xs@0@00)
                      (not (Set_in x2@10@00 xs@0@00)))))
                (or
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))))
            (or
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                  0))
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                0))))
        (or (not (Set_in x1@9@00 ys@1@00)) (Set_in x1@9@00 ys@1@00))))
    (or (Set_in x1@9@00 xs@0@00) (not (Set_in x1@9@00 xs@0@00)))
    (=>
      (and
        (Set_in x1@9@00 xs@0@00)
        (and
          (not (Set_in x1@9@00 ys@1@00))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
              (and
                (Set_in x2@10@00 xs@0@00)
                (and
                  (not (Set_in x2@10@00 ys@1@00))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
                      (not (= x1@9@00 x2@10@00))))))))))
      (and
        (Set_in x1@9@00 xs@0@00)
        (not (Set_in x1@9@00 ys@1@00))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
        (Set_in x2@10@00 xs@0@00)
        (not (Set_in x2@10@00 ys@1@00))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
        (not (= x1@9@00 x2@10@00))))
    (or
      (not
        (and
          (Set_in x1@9@00 xs@0@00)
          (and
            (not (Set_in x1@9@00 ys@1@00))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                  0))
              (and
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
                (and
                  (Set_in x2@10@00 xs@0@00)
                  (and
                    (not (Set_in x2@10@00 ys@1@00))
                    (and
                      (not
                        (=
                          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                          0))
                      (and
                        (not
                          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
                        (not (= x1@9@00 x2@10@00)))))))))))
      (and
        (Set_in x1@9@00 xs@0@00)
        (and
          (not (Set_in x1@9@00 ys@1@00))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
              (and
                (Set_in x2@10@00 xs@0@00)
                (and
                  (not (Set_in x2@10@00 ys@1@00))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
                      (not (= x1@9@00 x2@10@00))))))))))))
  :pattern ((Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00) (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/generalised_shape.vpr@119@7@121@92-aux|)))
(assert (forall ((x1@9@00 $Ref) (x2@10@00 $Ref)) (!
  (=>
    (and
      (Set_in x1@9@00 xs@0@00)
      (and
        (not (Set_in x1@9@00 ys@1@00))
        (and
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@9@00)
              0))
          (and
            (not
              (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00))
            (and
              (Set_in x2@10@00 xs@0@00)
              (and
                (not (Set_in x2@10@00 ys@1@00))
                (and
                  (not
                    (=
                      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@10@00)
                      0))
                  (and
                    (not
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
                    (not (= x1@9@00 x2@10@00))))))))))
    (not
      (=
        ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00)
        ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00))))
  :pattern ((Set_in x1@9@00 xs@0@00) (Set_in x2@10@00 xs@0@00))
  :pattern ((Set_in x1@9@00 xs@0@00) (Set_in x2@10@00 ys@1@00))
  :pattern ((Set_in x1@9@00 xs@0@00) (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
  :pattern ((Set_in x1@9@00 ys@1@00) (Set_in x2@10@00 xs@0@00))
  :pattern ((Set_in x1@9@00 ys@1@00) (Set_in x2@10@00 ys@1@00))
  :pattern ((Set_in x1@9@00 ys@1@00) (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
  :pattern ((Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00) (Set_in x2@10@00 xs@0@00))
  :pattern ((Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00) (Set_in x2@10@00 ys@1@00))
  :pattern ((Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@9@00) xs@0@00) (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@10@00) xs@0@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/generalised_shape.vpr@119@7@121@92|)))
(declare-const x@11@00 $Ref)
(push) ; 2
; [eval] (x in xs) && (!((x in ys)) && (x.f != 0 && !((x.g in xs))))
; [eval] (x in xs)
(push) ; 3
; [then-branch: 12 | !(x@11@00 in xs@0@00) | live]
; [else-branch: 12 | x@11@00 in xs@0@00 | live]
(push) ; 4
; [then-branch: 12 | !(x@11@00 in xs@0@00)]
(assert (not (Set_in x@11@00 xs@0@00)))
(pop) ; 4
(push) ; 4
; [else-branch: 12 | x@11@00 in xs@0@00]
(assert (Set_in x@11@00 xs@0@00))
; [eval] !((x in ys))
; [eval] (x in ys)
(push) ; 5
; [then-branch: 13 | x@11@00 in ys@1@00 | live]
; [else-branch: 13 | !(x@11@00 in ys@1@00) | live]
(push) ; 6
; [then-branch: 13 | x@11@00 in ys@1@00]
(assert (Set_in x@11@00 ys@1@00))
(pop) ; 6
(push) ; 6
; [else-branch: 13 | !(x@11@00 in ys@1@00)]
(assert (not (Set_in x@11@00 ys@1@00)))
; [eval] x.f != 0
(push) ; 7
(assert (not (and
  (img@5@00 x@11@00)
  (and
    (Set_in (inv@4@00 x@11@00) xs@0@00)
    (not (Set_in (inv@4@00 x@11@00) ys@1@00))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
; [then-branch: 14 | Lookup(f, First:($t@2@00), x@11@00) == 0 | live]
; [else-branch: 14 | Lookup(f, First:($t@2@00), x@11@00) != 0 | live]
(push) ; 8
; [then-branch: 14 | Lookup(f, First:($t@2@00), x@11@00) == 0]
(assert (=
  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x@11@00)
  0))
(pop) ; 8
(push) ; 8
; [else-branch: 14 | Lookup(f, First:($t@2@00), x@11@00) != 0]
(assert (not
  (=
    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x@11@00)
    0)))
; [eval] !((x.g in xs))
; [eval] (x.g in xs)
(push) ; 9
(assert (not (and
  (img@8@00 x@11@00)
  (and
    (Set_in (inv@7@00 x@11@00) xs@0@00)
    (and
      (not (Set_in (inv@7@00 x@11@00) ys@1@00))
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) (inv@7@00 x@11@00))
          0)))))))
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
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x@11@00)
      0))
  (=
    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x@11@00)
    0)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (not (Set_in x@11@00 ys@1@00))
  (and
    (not (Set_in x@11@00 ys@1@00))
    (or
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x@11@00)
          0))
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x@11@00)
        0)))))
(assert (or (not (Set_in x@11@00 ys@1@00)) (Set_in x@11@00 ys@1@00)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in x@11@00 xs@0@00)
  (and
    (Set_in x@11@00 xs@0@00)
    (=>
      (not (Set_in x@11@00 ys@1@00))
      (and
        (not (Set_in x@11@00 ys@1@00))
        (or
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x@11@00)
              0))
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x@11@00)
            0))))
    (or (not (Set_in x@11@00 ys@1@00)) (Set_in x@11@00 ys@1@00)))))
(assert (or (Set_in x@11@00 xs@0@00) (not (Set_in x@11@00 xs@0@00))))
(assert (and
  (Set_in x@11@00 xs@0@00)
  (and
    (not (Set_in x@11@00 ys@1@00))
    (and
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x@11@00)
          0))
      (not
        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x@11@00) xs@0@00))))))
(push) ; 3
(assert (not (and
  (img@8@00 x@11@00)
  (and
    (Set_in (inv@7@00 x@11@00) xs@0@00)
    (and
      (not (Set_in (inv@7@00 x@11@00) ys@1@00))
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) (inv@7@00 x@11@00))
          0)))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@12@00 ($Ref) $Ref)
(declare-fun img@13@00 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((x@11@00 $Ref)) (!
  (=>
    (and
      (Set_in x@11@00 xs@0@00)
      (and
        (not (Set_in x@11@00 ys@1@00))
        (and
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x@11@00)
              0))
          (not
            (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x@11@00) xs@0@00)))))
    (and
      (=>
        (Set_in x@11@00 xs@0@00)
        (and
          (Set_in x@11@00 xs@0@00)
          (=>
            (not (Set_in x@11@00 ys@1@00))
            (and
              (not (Set_in x@11@00 ys@1@00))
              (or
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x@11@00)
                    0))
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x@11@00)
                  0))))
          (or (not (Set_in x@11@00 ys@1@00)) (Set_in x@11@00 ys@1@00))))
      (or (Set_in x@11@00 xs@0@00) (not (Set_in x@11@00 xs@0@00)))))
  :pattern (($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x@11@00))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@11@00 $Ref) (x2@11@00 $Ref)) (!
  (=>
    (and
      (and
        (Set_in x1@11@00 xs@0@00)
        (and
          (not (Set_in x1@11@00 ys@1@00))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x1@11@00)
                0))
            (not
              (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@11@00) xs@0@00)))))
      (and
        (Set_in x2@11@00 xs@0@00)
        (and
          (not (Set_in x2@11@00 ys@1@00))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x2@11@00)
                0))
            (not
              (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@11@00) xs@0@00)))))
      (=
        ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x1@11@00)
        ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x2@11@00)))
    (= x1@11@00 x2@11@00))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@11@00 $Ref)) (!
  (=>
    (and
      (Set_in x@11@00 xs@0@00)
      (and
        (not (Set_in x@11@00 ys@1@00))
        (and
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x@11@00)
              0))
          (not
            (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x@11@00) xs@0@00)))))
    (and
      (=
        (inv@12@00 ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x@11@00))
        x@11@00)
      (img@13@00 ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x@11@00))))
  :pattern (($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x@11@00))
  :qid |quant-u-5879|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@13@00 r)
      (and
        (Set_in (inv@12@00 r) xs@0@00)
        (and
          (not (Set_in (inv@12@00 r) ys@1@00))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) (inv@12@00 r))
                0))
            (not
              (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) (inv@12@00 r)) xs@0@00))))))
    (=
      ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) (inv@12@00 r))
      r))
  :pattern ((inv@12@00 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@11@00 $Ref)) (!
  (=>
    (and
      (Set_in x@11@00 xs@0@00)
      (and
        (not (Set_in x@11@00 ys@1@00))
        (and
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) x@11@00)
              0))
          (not
            (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x@11@00) xs@0@00)))))
    (not
      (=
        ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x@11@00)
        $Ref.null)))
  :pattern (($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x@11@00))
  :qid |f-permImpliesNonNull|)))
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (=
      ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) x@11@00)
      x@3@00)
    (=
      (and
        (img@13@00 r)
        (and
          (Set_in (inv@12@00 r) xs@0@00)
          (and
            (not (Set_in (inv@12@00 r) ys@1@00))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@00)) (inv@12@00 r))
                  0))
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@2@00))) (inv@12@00 r)) xs@0@00))))))
      (and
        (img@5@00 r)
        (and (Set_in (inv@4@00 r) xs@0@00) (not (Set_in (inv@4@00 r) ys@1@00))))))
  
  :qid |quant-u-5880|))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
