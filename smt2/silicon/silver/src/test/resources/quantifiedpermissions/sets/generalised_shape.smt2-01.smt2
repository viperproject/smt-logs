(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-26 19:30:56
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
; ------------------------------------------------------------
; Begin function- and predicate-related preamble
; Declaring symbols related to program functions (from verification)
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- test05 ----------
(declare-const xs@0@01 Set<$Ref>)
(declare-const ys@1@01 Set<$Ref>)
(declare-const x1@2@01 $Ref)
(declare-const x2@3@01 $Ref)
(declare-const xs@4@01 Set<$Ref>)
(declare-const ys@5@01 Set<$Ref>)
(declare-const x1@6@01 $Ref)
(declare-const x2@7@01 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const x@8@01 $Ref)
(push) ; 2
; [eval] (x in xs) && !((x in ys))
; [eval] (x in xs)
(push) ; 3
; [then-branch: 0 | !(x@8@01 in xs@4@01) | live]
; [else-branch: 0 | x@8@01 in xs@4@01 | live]
(push) ; 4
; [then-branch: 0 | !(x@8@01 in xs@4@01)]
(assert (not (Set_in x@8@01 xs@4@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 0 | x@8@01 in xs@4@01]
(assert (Set_in x@8@01 xs@4@01))
; [eval] !((x in ys))
; [eval] (x in ys)
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (Set_in x@8@01 xs@4@01) (not (Set_in x@8@01 xs@4@01))))
(assert (and (Set_in x@8@01 xs@4@01) (not (Set_in x@8@01 ys@5@01))))
(pop) ; 2
(declare-const $t@9@01 $FVF<f>)
(declare-fun inv@10@01 ($Ref) $Ref)
(declare-fun img@11@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((x@8@01 $Ref)) (!
  (=>
    (and (Set_in x@8@01 xs@4@01) (not (Set_in x@8@01 ys@5@01)))
    (or (Set_in x@8@01 xs@4@01) (not (Set_in x@8@01 xs@4@01))))
  :pattern ((Set_in x@8@01 xs@4@01))
  :pattern ((Set_in x@8@01 ys@5@01))
  :pattern ((inv@10@01 x@8@01))
  :pattern ((img@11@01 x@8@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@8@01 $Ref) (x2@8@01 $Ref)) (!
  (=>
    (and
      (and (Set_in x1@8@01 xs@4@01) (not (Set_in x1@8@01 ys@5@01)))
      (and (Set_in x2@8@01 xs@4@01) (not (Set_in x2@8@01 ys@5@01)))
      (= x1@8@01 x2@8@01))
    (= x1@8@01 x2@8@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@8@01 $Ref)) (!
  (=>
    (and (Set_in x@8@01 xs@4@01) (not (Set_in x@8@01 ys@5@01)))
    (and (= (inv@10@01 x@8@01) x@8@01) (img@11@01 x@8@01)))
  :pattern ((Set_in x@8@01 xs@4@01))
  :pattern ((Set_in x@8@01 ys@5@01))
  :pattern ((inv@10@01 x@8@01))
  :pattern ((img@11@01 x@8@01))
  :qid |quant-u-5921|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@11@01 r)
      (and (Set_in (inv@10@01 r) xs@4@01) (not (Set_in (inv@10@01 r) ys@5@01))))
    (= (inv@10@01 r) r))
  :pattern ((inv@10@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@8@01 $Ref)) (!
  (=>
    (and (Set_in x@8@01 xs@4@01) (not (Set_in x@8@01 ys@5@01)))
    (not (= x@8@01 $Ref.null)))
  :pattern ((Set_in x@8@01 xs@4@01))
  :pattern ((Set_in x@8@01 ys@5@01))
  :pattern ((inv@10@01 x@8@01))
  :pattern ((img@11@01 x@8@01))
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
(declare-const a@12@01 Int)
; [exec]
; inhale (x1 in xs)
(declare-const $t@13@01 $Snap)
(assert (= $t@13@01 $Snap.unit))
; [eval] (x1 in xs)
(assert (Set_in x1@6@01 xs@4@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (x2 in xs)
(declare-const $t@14@01 $Snap)
(assert (= $t@14@01 $Snap.unit))
; [eval] (x2 in xs)
(assert (Set_in x2@7@01 xs@4@01))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale !((x1 in ys))
(declare-const $t@15@01 $Snap)
(assert (= $t@15@01 $Snap.unit))
; [eval] !((x1 in ys))
; [eval] (x1 in ys)
(assert (not (Set_in x1@6@01 ys@5@01)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale x1 != null
(declare-const $t@16@01 $Snap)
(assert (= $t@16@01 $Snap.unit))
; [eval] x1 != null
(assert (not (= x1@6@01 $Ref.null)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale x2 != null
(declare-const $t@17@01 $Snap)
(assert (= $t@17@01 $Snap.unit))
; [eval] x2 != null
(assert (not (= x2@7@01 $Ref.null)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; a := x1.f
(set-option :timeout 0)
(push) ; 3
(assert (not (and
  (img@11@01 x1@6@01)
  (and
    (Set_in (inv@10@01 x1@6@01) xs@4@01)
    (not (Set_in (inv@10@01 x1@6@01) ys@5@01))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const a@18@01 Int)
(assert (= a@18@01 ($FVF.lookup_f $t@9@01 x1@6@01)))
; [exec]
; a := x2.f
(push) ; 3
(assert (not (and
  (img@11@01 x2@7@01)
  (and
    (Set_in (inv@10@01 x2@7@01) xs@4@01)
    (not (Set_in (inv@10@01 x2@7@01) ys@5@01))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1
; ---------- test07 ----------
(declare-const xs@19@01 Set<$Ref>)
(declare-const y1@20@01 $Ref)
(declare-const xs@21@01 Set<$Ref>)
(declare-const y1@22@01 $Ref)
(push) ; 1
(declare-const $t@23@01 $Snap)
(assert (= $t@23@01 ($Snap.combine ($Snap.first $t@23@01) ($Snap.second $t@23@01))))
(declare-const x@24@01 $Ref)
(push) ; 2
; [eval] (x in xs)
(assert (Set_in x@24@01 xs@21@01))
(pop) ; 2
(declare-fun inv@25@01 ($Ref) $Ref)
(declare-fun img@26@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@24@01 $Ref) (x2@24@01 $Ref)) (!
  (=>
    (and
      (Set_in x1@24@01 xs@21@01)
      (Set_in x2@24@01 xs@21@01)
      (= x1@24@01 x2@24@01))
    (= x1@24@01 x2@24@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@24@01 $Ref)) (!
  (=>
    (Set_in x@24@01 xs@21@01)
    (and (= (inv@25@01 x@24@01) x@24@01) (img@26@01 x@24@01)))
  :pattern ((Set_in x@24@01 xs@21@01))
  :pattern ((inv@25@01 x@24@01))
  :pattern ((img@26@01 x@24@01))
  :qid |quant-u-5923|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@26@01 r) (Set_in (inv@25@01 r) xs@21@01)) (= (inv@25@01 r) r))
  :pattern ((inv@25@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@24@01 $Ref)) (!
  (=> (Set_in x@24@01 xs@21@01) (not (= x@24@01 $Ref.null)))
  :pattern ((Set_in x@24@01 xs@21@01))
  :pattern ((inv@25@01 x@24@01))
  :pattern ((img@26@01 x@24@01))
  :qid |f-permImpliesNonNull|)))
(assert (=
  ($Snap.second $t@23@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@23@01))
    ($Snap.second ($Snap.second $t@23@01)))))
(declare-const x@27@01 $Ref)
(push) ; 2
; [eval] (x in xs) && x.f != 0
; [eval] (x in xs)
(push) ; 3
; [then-branch: 1 | !(x@27@01 in xs@21@01) | live]
; [else-branch: 1 | x@27@01 in xs@21@01 | live]
(push) ; 4
; [then-branch: 1 | !(x@27@01 in xs@21@01)]
(assert (not (Set_in x@27@01 xs@21@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 1 | x@27@01 in xs@21@01]
(assert (Set_in x@27@01 xs@21@01))
; [eval] x.f != 0
(push) ; 5
(assert (not (and (img@26@01 x@27@01) (Set_in (inv@25@01 x@27@01) xs@21@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (Set_in x@27@01 xs@21@01) (not (Set_in x@27@01 xs@21@01))))
(assert (and
  (Set_in x@27@01 xs@21@01)
  (not
    (=
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@23@01)) x@27@01)
      0))))
(pop) ; 2
(declare-fun inv@28@01 ($Ref) $Ref)
(declare-fun img@29@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((x@27@01 $Ref)) (!
  (=>
    (and
      (Set_in x@27@01 xs@21@01)
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@23@01)) x@27@01)
          0)))
    (or (Set_in x@27@01 xs@21@01) (not (Set_in x@27@01 xs@21@01))))
  :pattern ((Set_in x@27@01 xs@21@01))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@23@01)) x@27@01))
  :pattern ((inv@28@01 x@27@01))
  :pattern ((img@29@01 x@27@01))
  :qid |g-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@27@01 $Ref) (x2@27@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in x1@27@01 xs@21@01)
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@23@01)) x1@27@01)
            0)))
      (and
        (Set_in x2@27@01 xs@21@01)
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@23@01)) x2@27@01)
            0)))
      (= x1@27@01 x2@27@01))
    (= x1@27@01 x2@27@01))
  
  :qid |g-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@27@01 $Ref)) (!
  (=>
    (and
      (Set_in x@27@01 xs@21@01)
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@23@01)) x@27@01)
          0)))
    (and (= (inv@28@01 x@27@01) x@27@01) (img@29@01 x@27@01)))
  :pattern ((Set_in x@27@01 xs@21@01))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@23@01)) x@27@01))
  :pattern ((inv@28@01 x@27@01))
  :pattern ((img@29@01 x@27@01))
  :qid |quant-u-5925|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@29@01 r)
      (and
        (Set_in (inv@28@01 r) xs@21@01)
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@23@01)) (inv@28@01 r))
            0))))
    (= (inv@28@01 r) r))
  :pattern ((inv@28@01 r))
  :qid |g-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@27@01 $Ref)) (!
  (=>
    (and
      (Set_in x@27@01 xs@21@01)
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@23@01)) x@27@01)
          0)))
    (not (= x@27@01 $Ref.null)))
  :pattern ((Set_in x@27@01 xs@21@01))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@23@01)) x@27@01))
  :pattern ((inv@28@01 x@27@01))
  :pattern ((img@29@01 x@27@01))
  :qid |g-permImpliesNonNull|)))
(assert (= ($Snap.second ($Snap.second $t@23@01)) $Snap.unit))
; [eval] (y1 in xs)
(assert (Set_in y1@22@01 xs@21@01))
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
(declare-const a@30@01 Int)
; [exec]
; var r: Ref
(declare-const r@31@01 $Ref)
; [exec]
; a := y1.f
(push) ; 3
(assert (not (and (img@26@01 y1@22@01) (Set_in (inv@25@01 y1@22@01) xs@21@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const a@32@01 Int)
(assert (=
  a@32@01
  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@23@01)) y1@22@01)))
; [exec]
; r := y1.g
(push) ; 3
(assert (not (and
  (img@29@01 y1@22@01)
  (and
    (Set_in (inv@28@01 y1@22@01) xs@21@01)
    (not
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@23@01)) (inv@28@01 y1@22@01))
        0))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1
; ---------- test12 ----------
(declare-const x1@33@01 $Ref)
(declare-const x1@34@01 $Ref)
(push) ; 1
(declare-const $t@35@01 $Ref)
(declare-const sm@36@01 $FVF<g>)
; Definitional axioms for singleton-SM's value
(assert (= ($FVF.lookup_g (as sm@36@01  $FVF<g>) x1@34@01) $t@35@01))
(assert (not (= x1@34@01 $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@37@01 $Snap)
(assert (= $t@37@01 ($Snap.combine ($Snap.first $t@37@01) ($Snap.second $t@37@01))))
(declare-const x@38@01 $Ref)
(push) ; 3
; [eval] (x in Set(x1))
; [eval] Set(x1)
(assert (Set_in x@38@01 (Set_singleton x1@34@01)))
(pop) ; 3
(declare-fun inv@39@01 ($Ref) $Ref)
(declare-fun img@40@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@38@01 $Ref) (x2@38@01 $Ref)) (!
  (=>
    (and
      (Set_in x1@38@01 (Set_singleton x1@34@01))
      (Set_in x2@38@01 (Set_singleton x1@34@01))
      (= x1@38@01 x2@38@01))
    (= x1@38@01 x2@38@01))
  
  :qid |g-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@38@01 $Ref)) (!
  (=>
    (Set_in x@38@01 (Set_singleton x1@34@01))
    (and (= (inv@39@01 x@38@01) x@38@01) (img@40@01 x@38@01)))
  :pattern ((Set_in x@38@01 (Set_singleton x1@34@01)))
  :pattern ((inv@39@01 x@38@01))
  :pattern ((img@40@01 x@38@01))
  :qid |quant-u-5927|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@40@01 r) (Set_in (inv@39@01 r) (Set_singleton x1@34@01)))
    (= (inv@39@01 r) r))
  :pattern ((inv@39@01 r))
  :qid |g-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@38@01 $Ref)) (!
  (=> (Set_in x@38@01 (Set_singleton x1@34@01)) (not (= x@38@01 $Ref.null)))
  :pattern ((Set_in x@38@01 (Set_singleton x1@34@01)))
  :pattern ((inv@39@01 x@38@01))
  :pattern ((img@40@01 x@38@01))
  :qid |g-permImpliesNonNull|)))
(declare-const sm@41@01 $FVF<g>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_g (as sm@41@01  $FVF<g>) x1@34@01)
  ($SortWrappers.$SnapTo$Ref ($Snap.second $t@37@01))))
(pop) ; 2
(push) ; 2
(declare-const x@42@01 $Ref)
(push) ; 3
; [eval] (x in Set(x1))
; [eval] Set(x1)
(assert (Set_in x@42@01 (Set_singleton x1@34@01)))
(pop) ; 3
(declare-fun inv@43@01 ($Ref) $Ref)
(declare-fun img@44@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@42@01 $Ref) (x2@42@01 $Ref)) (!
  (=>
    (and
      (Set_in x1@42@01 (Set_singleton x1@34@01))
      (Set_in x2@42@01 (Set_singleton x1@34@01))
      (= x1@42@01 x2@42@01))
    (= x1@42@01 x2@42@01))
  
  :qid |g-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@42@01 $Ref)) (!
  (=>
    (Set_in x@42@01 (Set_singleton x1@34@01))
    (and (= (inv@43@01 x@42@01) x@42@01) (img@44@01 x@42@01)))
  :pattern ((Set_in x@42@01 (Set_singleton x1@34@01)))
  :pattern ((inv@43@01 x@42@01))
  :pattern ((img@44@01 x@42@01))
  :qid |g-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@44@01 r) (Set_in (inv@43@01 r) (Set_singleton x1@34@01)))
    (= (inv@43@01 r) r))
  :pattern ((inv@43@01 r))
  :qid |g-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@45@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@43@01 r) (Set_singleton x1@34@01))
      (img@44@01 r)
      (= r (inv@43@01 r)))
    ($Perm.min (ite (= r x1@34@01) $Perm.Write $Perm.No) $Perm.Write)
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
(assert (not (= (- $Perm.Write (pTaken@45@01 x1@34@01)) $Perm.No)))
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
      (Set_in (inv@43@01 r) (Set_singleton x1@34@01))
      (img@44@01 r)
      (= r (inv@43@01 r)))
    (= (- $Perm.Write (pTaken@45@01 r)) $Perm.No))
  
  :qid |quant-u-5931|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
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
  (=> (= r x1@34@01) false)
  
  :qid |quant-u-5932|))))
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
  (=> (= r x1@34@01) false)
  
  :qid |quant-u-5933|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- test14 ----------
(declare-const x1@46@01 $Ref)
(declare-const x1@47@01 $Ref)
(push) ; 1
(declare-const $t@48@01 $Snap)
(assert (= $t@48@01 ($Snap.combine ($Snap.first $t@48@01) ($Snap.second $t@48@01))))
(declare-const sm@49@01 $FVF<g>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_g (as sm@49@01  $FVF<g>) x1@47@01)
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@48@01))))
(assert (not (= x1@47@01 $Ref.null)))
(declare-const sm@50@01 $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (as sm@50@01  $FVF<f>) ($FVF.lookup_g (as sm@49@01  $FVF<g>) x1@47@01))
  ($SortWrappers.$SnapToInt ($Snap.second $t@48@01))))
(assert (<=
  $Perm.No
  (ite
    (=
      ($FVF.lookup_g (as sm@49@01  $FVF<g>) x1@47@01)
      ($FVF.lookup_g (as sm@49@01  $FVF<g>) x1@47@01))
    $Perm.Write
    $Perm.No)))
(assert (<=
  (ite
    (=
      ($FVF.lookup_g (as sm@49@01  $FVF<g>) x1@47@01)
      ($FVF.lookup_g (as sm@49@01  $FVF<g>) x1@47@01))
    $Perm.Write
    $Perm.No)
  $Perm.Write))
(assert (=>
  (=
    ($FVF.lookup_g (as sm@49@01  $FVF<g>) x1@47@01)
    ($FVF.lookup_g (as sm@49@01  $FVF<g>) x1@47@01))
  (not (= ($FVF.lookup_g (as sm@49@01  $FVF<g>) x1@47@01) $Ref.null))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@51@01 $Snap)
(assert (= $t@51@01 ($Snap.combine ($Snap.first $t@51@01) ($Snap.second $t@51@01))))
(declare-const x@52@01 $Ref)
(push) ; 3
; [eval] (x in Set(x1))
; [eval] Set(x1)
(assert (Set_in x@52@01 (Set_singleton x1@47@01)))
(pop) ; 3
(declare-fun inv@53@01 ($Ref) $Ref)
(declare-fun img@54@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@52@01 $Ref) (x2@52@01 $Ref)) (!
  (=>
    (and
      (Set_in x1@52@01 (Set_singleton x1@47@01))
      (Set_in x2@52@01 (Set_singleton x1@47@01))
      (= x1@52@01 x2@52@01))
    (= x1@52@01 x2@52@01))
  
  :qid |g-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@52@01 $Ref)) (!
  (=>
    (Set_in x@52@01 (Set_singleton x1@47@01))
    (and (= (inv@53@01 x@52@01) x@52@01) (img@54@01 x@52@01)))
  :pattern ((Set_in x@52@01 (Set_singleton x1@47@01)))
  :pattern ((inv@53@01 x@52@01))
  :pattern ((img@54@01 x@52@01))
  :qid |quant-u-5935|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@54@01 r) (Set_in (inv@53@01 r) (Set_singleton x1@47@01)))
    (= (inv@53@01 r) r))
  :pattern ((inv@53@01 r))
  :qid |g-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@52@01 $Ref)) (!
  (=> (Set_in x@52@01 (Set_singleton x1@47@01)) (not (= x@52@01 $Ref.null)))
  :pattern ((Set_in x@52@01 (Set_singleton x1@47@01)))
  :pattern ((inv@53@01 x@52@01))
  :pattern ((img@54@01 x@52@01))
  :qid |g-permImpliesNonNull|)))
(declare-const x@55@01 $Ref)
(push) ; 3
; [eval] (x in Set(x1))
; [eval] Set(x1)
(assert (Set_in x@55@01 (Set_singleton x1@47@01)))
(push) ; 4
(assert (not (and (img@54@01 x@55@01) (Set_in (inv@53@01 x@55@01) (Set_singleton x1@47@01)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@56@01 ($Ref) $Ref)
(declare-fun img@57@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@55@01 $Ref) (x2@55@01 $Ref)) (!
  (=>
    (and
      (Set_in x1@55@01 (Set_singleton x1@47@01))
      (Set_in x2@55@01 (Set_singleton x1@47@01))
      (=
        ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@51@01)) x1@55@01)
        ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@51@01)) x2@55@01)))
    (= x1@55@01 x2@55@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@55@01 $Ref)) (!
  (=>
    (Set_in x@55@01 (Set_singleton x1@47@01))
    (and
      (=
        (inv@56@01 ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@51@01)) x@55@01))
        x@55@01)
      (img@57@01 ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@51@01)) x@55@01))))
  :pattern (($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@51@01)) x@55@01))
  :qid |quant-u-5937|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@57@01 r) (Set_in (inv@56@01 r) (Set_singleton x1@47@01)))
    (=
      ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@51@01)) (inv@56@01 r))
      r))
  :pattern ((inv@56@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@55@01 $Ref)) (!
  (=>
    (Set_in x@55@01 (Set_singleton x1@47@01))
    (not
      (=
        ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@51@01)) x@55@01)
        $Ref.null)))
  :pattern (($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@51@01)) x@55@01))
  :qid |f-permImpliesNonNull|)))
(pop) ; 2
(push) ; 2
(declare-const x@58@01 $Ref)
(push) ; 3
; [eval] (x in Set(x1))
; [eval] Set(x1)
(assert (Set_in x@58@01 (Set_singleton x1@47@01)))
(pop) ; 3
(declare-fun inv@59@01 ($Ref) $Ref)
(declare-fun img@60@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@58@01 $Ref) (x2@58@01 $Ref)) (!
  (=>
    (and
      (Set_in x1@58@01 (Set_singleton x1@47@01))
      (Set_in x2@58@01 (Set_singleton x1@47@01))
      (= x1@58@01 x2@58@01))
    (= x1@58@01 x2@58@01))
  
  :qid |g-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@58@01 $Ref)) (!
  (=>
    (Set_in x@58@01 (Set_singleton x1@47@01))
    (and (= (inv@59@01 x@58@01) x@58@01) (img@60@01 x@58@01)))
  :pattern ((Set_in x@58@01 (Set_singleton x1@47@01)))
  :pattern ((inv@59@01 x@58@01))
  :pattern ((img@60@01 x@58@01))
  :qid |g-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) (Set_singleton x1@47@01)))
    (= (inv@59@01 r) r))
  :pattern ((inv@59@01 r))
  :qid |g-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@61@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@59@01 r) (Set_singleton x1@47@01))
      (img@60@01 r)
      (= r (inv@59@01 r)))
    ($Perm.min (ite (= r x1@47@01) $Perm.Write $Perm.No) $Perm.Write)
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
(assert (not (= (- $Perm.Write (pTaken@61@01 x1@47@01)) $Perm.No)))
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
      (Set_in (inv@59@01 r) (Set_singleton x1@47@01))
      (img@60@01 r)
      (= r (inv@59@01 r)))
    (= (- $Perm.Write (pTaken@61@01 r)) $Perm.No))
  
  :qid |quant-u-5941|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const x@62@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (x in Set(x1))
; [eval] Set(x1)
(assert (Set_in x@62@01 (Set_singleton x1@47@01)))
(push) ; 4
(assert (not (= x@62@01 x1@47@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@63@01 ($Ref) $Ref)
(declare-fun img@64@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@62@01 $Ref) (x2@62@01 $Ref)) (!
  (=>
    (and
      (Set_in x1@62@01 (Set_singleton x1@47@01))
      (Set_in x2@62@01 (Set_singleton x1@47@01))
      (=
        ($FVF.lookup_g (as sm@49@01  $FVF<g>) x1@62@01)
        ($FVF.lookup_g (as sm@49@01  $FVF<g>) x2@62@01)))
    (= x1@62@01 x2@62@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@62@01 $Ref)) (!
  (=>
    (Set_in x@62@01 (Set_singleton x1@47@01))
    (and
      (= (inv@63@01 ($FVF.lookup_g (as sm@49@01  $FVF<g>) x@62@01)) x@62@01)
      (img@64@01 ($FVF.lookup_g (as sm@49@01  $FVF<g>) x@62@01))))
  :pattern (($FVF.lookup_g (as sm@49@01  $FVF<g>) x@62@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@64@01 r) (Set_in (inv@63@01 r) (Set_singleton x1@47@01)))
    (= ($FVF.lookup_g (as sm@49@01  $FVF<g>) (inv@63@01 r)) r))
  :pattern ((inv@63@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@65@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@63@01 r) (Set_singleton x1@47@01))
      (img@64@01 r)
      (= r ($FVF.lookup_g (as sm@49@01  $FVF<g>) (inv@63@01 r))))
    ($Perm.min
      (ite
        (= r ($FVF.lookup_g (as sm@49@01  $FVF<g>) x1@47@01))
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
(assert (not (=
  (-
    (ite
      (=
        ($FVF.lookup_g (as sm@49@01  $FVF<g>) x1@47@01)
        ($FVF.lookup_g (as sm@49@01  $FVF<g>) x1@47@01))
      $Perm.Write
      $Perm.No)
    (pTaken@65@01 ($FVF.lookup_g (as sm@49@01  $FVF<g>) x1@47@01)))
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
    (and
      (Set_in (inv@63@01 r) (Set_singleton x1@47@01))
      (img@64@01 r)
      (= r ($FVF.lookup_g (as sm@49@01  $FVF<g>) (inv@63@01 r))))
    (= (- $Perm.Write (pTaken@65@01 r)) $Perm.No))
  
  :qid |quant-u-5945|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- test13 ----------
(declare-const x1@66@01 $Ref)
(declare-const x1@67@01 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@68@01 $Snap)
(assert (= $t@68@01 ($Snap.combine ($Snap.first $t@68@01) ($Snap.second $t@68@01))))
(assert (not (= x1@67@01 $Ref.null)))
(declare-const sm@69@01 $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (as sm@69@01  $FVF<f>) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@68@01)))
  ($SortWrappers.$SnapToInt ($Snap.second $t@68@01))))
(assert (<=
  $Perm.No
  (ite
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first $t@68@01))
      ($SortWrappers.$SnapTo$Ref ($Snap.first $t@68@01)))
    $Perm.Write
    $Perm.No)))
(assert (<=
  (ite
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first $t@68@01))
      ($SortWrappers.$SnapTo$Ref ($Snap.first $t@68@01)))
    $Perm.Write
    $Perm.No)
  $Perm.Write))
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first $t@68@01))
    ($SortWrappers.$SnapTo$Ref ($Snap.first $t@68@01)))
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@68@01)) $Ref.null))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const x@70@01 $Ref)
(push) ; 3
; [eval] (x in Set(x1))
; [eval] Set(x1)
(assert (Set_in x@70@01 (Set_singleton x1@67@01)))
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
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test10 ----------
(declare-const x1@71@01 $Ref)
(declare-const x2@72@01 $Ref)
(declare-const x1@73@01 $Ref)
(declare-const x2@74@01 $Ref)
(push) ; 1
(declare-const $t@75@01 $Snap)
(assert (= $t@75@01 ($Snap.combine ($Snap.first $t@75@01) ($Snap.second $t@75@01))))
(declare-const sm@76@01 $FVF<g>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_g (as sm@76@01  $FVF<g>) x1@73@01)
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@75@01))))
(assert (not (= x1@73@01 $Ref.null)))
(assert (=
  ($Snap.second $t@75@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@75@01))
    ($Snap.second ($Snap.second $t@75@01)))))
(declare-const $k@77@01 $Perm)
(assert ($Perm.isReadVar $k@77@01))
(declare-const sm@78@01 $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (as sm@78@01  $FVF<f>) ($FVF.lookup_g (as sm@76@01  $FVF<g>) x1@73@01))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@75@01)))))
(assert (<=
  $Perm.No
  (ite
    (=
      ($FVF.lookup_g (as sm@76@01  $FVF<g>) x1@73@01)
      ($FVF.lookup_g (as sm@76@01  $FVF<g>) x1@73@01))
    $k@77@01
    $Perm.No)))
(assert (<=
  (ite
    (=
      ($FVF.lookup_g (as sm@76@01  $FVF<g>) x1@73@01)
      ($FVF.lookup_g (as sm@76@01  $FVF<g>) x1@73@01))
    $k@77@01
    $Perm.No)
  $Perm.Write))
(assert (=>
  (ite
    (=
      ($FVF.lookup_g (as sm@76@01  $FVF<g>) x1@73@01)
      ($FVF.lookup_g (as sm@76@01  $FVF<g>) x1@73@01))
    (< $Perm.No $k@77@01)
    false)
  (not (= ($FVF.lookup_g (as sm@76@01  $FVF<g>) x1@73@01) $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second $t@75@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@75@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@75@01))))))
(declare-const sm@79@01 $FVF<g>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_g (as sm@79@01  $FVF<g>) x2@74@01)
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@75@01))))))
(push) ; 2
(set-option :timeout 10)
(assert (not (= x2@74@01 x1@73@01)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (not (= x2@74@01 $Ref.null)))
(declare-const sm@80@01 $FVF<g>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r x1@73@01)
    (=
      ($FVF.lookup_g (as sm@80@01  $FVF<g>) r)
      ($FVF.lookup_g (as sm@76@01  $FVF<g>) r)))
  :pattern (($FVF.lookup_g (as sm@80@01  $FVF<g>) r))
  :pattern (($FVF.lookup_g (as sm@76@01  $FVF<g>) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x2@74@01)
    (=
      ($FVF.lookup_g (as sm@80@01  $FVF<g>) r)
      ($FVF.lookup_g (as sm@79@01  $FVF<g>) r)))
  :pattern (($FVF.lookup_g (as sm@80@01  $FVF<g>) r))
  :pattern (($FVF.lookup_g (as sm@79@01  $FVF<g>) r))
  :qid |qp.fvfValDef1|)))
(declare-const pm@81@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_g (as pm@81@01  $FPM) r)
    (+
      (ite (= r x1@73@01) $Perm.Write $Perm.No)
      (ite (= r x2@74@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_g (as pm@81@01  $FPM) r))
  :qid |qp.resPrmSumDef2|)))
(set-option :timeout 0)
(push) ; 2
(assert (not (< $Perm.No ($FVF.perm_g (as pm@81@01  $FPM) x2@74@01))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(declare-const $k@82@01 $Perm)
(assert ($Perm.isReadVar $k@82@01))
(declare-const sm@83@01 $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (as sm@83@01  $FVF<f>) ($FVF.lookup_g (as sm@80@01  $FVF<g>) x2@74@01))
  ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second $t@75@01))))))
(push) ; 2
(set-option :timeout 10)
(assert (not (and
  (and
    (=
      ($FVF.lookup_g (as sm@80@01  $FVF<g>) x2@74@01)
      ($FVF.lookup_g (as sm@80@01  $FVF<g>) x2@74@01))
    (=
      ($FVF.lookup_g (as sm@76@01  $FVF<g>) x1@73@01)
      ($FVF.lookup_g (as sm@76@01  $FVF<g>) x1@73@01)))
  (=
    ($FVF.lookup_g (as sm@80@01  $FVF<g>) x2@74@01)
    ($FVF.lookup_g (as sm@76@01  $FVF<g>) x1@73@01)))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<=
  $Perm.No
  (ite
    (=
      ($FVF.lookup_g (as sm@80@01  $FVF<g>) x2@74@01)
      ($FVF.lookup_g (as sm@80@01  $FVF<g>) x2@74@01))
    $k@82@01
    $Perm.No)))
(assert (<=
  (ite
    (=
      ($FVF.lookup_g (as sm@80@01  $FVF<g>) x2@74@01)
      ($FVF.lookup_g (as sm@80@01  $FVF<g>) x2@74@01))
    $k@82@01
    $Perm.No)
  $Perm.Write))
(assert (=>
  (ite
    (=
      ($FVF.lookup_g (as sm@80@01  $FVF<g>) x2@74@01)
      ($FVF.lookup_g (as sm@80@01  $FVF<g>) x2@74@01))
    (< $Perm.No $k@82@01)
    false)
  (not (= ($FVF.lookup_g (as sm@80@01  $FVF<g>) x2@74@01) $Ref.null))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@84@01 $Snap)
(assert (= $t@84@01 ($Snap.combine ($Snap.first $t@84@01) ($Snap.second $t@84@01))))
(declare-const x@85@01 $Ref)
(push) ; 3
; [eval] (x in Set(x1, x2))
; [eval] Set(x1, x2)
(assert (Set_in x@85@01 (Set_unionone (Set_singleton x1@73@01) x2@74@01)))
(declare-const $k@86@01 $Perm)
(assert ($Perm.isReadVar $k@86@01))
(pop) ; 3
(declare-fun inv@87@01 ($Ref) $Ref)
(declare-fun img@88@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@86@01))
; Nested auxiliary terms: non-globals
(push) ; 3
(assert (not (forall ((x@85@01 $Ref)) (!
  (=>
    (Set_in x@85@01 (Set_unionone (Set_singleton x1@73@01) x2@74@01))
    (or (= $k@86@01 $Perm.No) (< $Perm.No $k@86@01)))
  
  :qid |quant-u-5946|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@85@01 $Ref) (x2@85@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in x1@85@01 (Set_unionone (Set_singleton x1@73@01) x2@74@01))
        (< $Perm.No $k@86@01))
      (and
        (Set_in x2@85@01 (Set_unionone (Set_singleton x1@73@01) x2@74@01))
        (< $Perm.No $k@86@01))
      (= x1@85@01 x2@85@01))
    (= x1@85@01 x2@85@01))
  
  :qid |g-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@85@01 $Ref)) (!
  (=>
    (and
      (Set_in x@85@01 (Set_unionone (Set_singleton x1@73@01) x2@74@01))
      (< $Perm.No $k@86@01))
    (and (= (inv@87@01 x@85@01) x@85@01) (img@88@01 x@85@01)))
  :pattern ((Set_in x@85@01 (Set_unionone (Set_singleton x1@73@01) x2@74@01)))
  :pattern ((inv@87@01 x@85@01))
  :pattern ((img@88@01 x@85@01))
  :qid |quant-u-5947|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@88@01 r)
      (and
        (Set_in (inv@87@01 r) (Set_unionone (Set_singleton x1@73@01) x2@74@01))
        (< $Perm.No $k@86@01)))
    (= (inv@87@01 r) r))
  :pattern ((inv@87@01 r))
  :qid |g-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((x@85@01 $Ref)) (!
  (<= $Perm.No $k@86@01)
  :pattern ((Set_in x@85@01 (Set_unionone (Set_singleton x1@73@01) x2@74@01)))
  :pattern ((inv@87@01 x@85@01))
  :pattern ((img@88@01 x@85@01))
  :qid |g-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((x@85@01 $Ref)) (!
  (<= $k@86@01 $Perm.Write)
  :pattern ((Set_in x@85@01 (Set_unionone (Set_singleton x1@73@01) x2@74@01)))
  :pattern ((inv@87@01 x@85@01))
  :pattern ((img@88@01 x@85@01))
  :qid |g-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((x@85@01 $Ref)) (!
  (=>
    (and
      (Set_in x@85@01 (Set_unionone (Set_singleton x1@73@01) x2@74@01))
      (< $Perm.No $k@86@01))
    (not (= x@85@01 $Ref.null)))
  :pattern ((Set_in x@85@01 (Set_unionone (Set_singleton x1@73@01) x2@74@01)))
  :pattern ((inv@87@01 x@85@01))
  :pattern ((img@88@01 x@85@01))
  :qid |g-permImpliesNonNull|)))
(declare-const x@89@01 $Ref)
(push) ; 3
; [eval] (x in Set(x1, x2))
; [eval] Set(x1, x2)
(assert (Set_in x@89@01 (Set_unionone (Set_singleton x1@73@01) x2@74@01)))
(push) ; 4
(assert (not (ite
  (and
    (img@88@01 x@89@01)
    (Set_in (inv@87@01 x@89@01) (Set_unionone (Set_singleton x1@73@01) x2@74@01)))
  (< $Perm.No $k@86@01)
  false)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const $k@90@01 $Perm)
(assert ($Perm.isReadVar $k@90@01))
(pop) ; 3
(declare-fun inv@91@01 ($Ref) $Ref)
(declare-fun img@92@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@90@01))
; Nested auxiliary terms: non-globals
(push) ; 3
(assert (not (forall ((x@89@01 $Ref)) (!
  (=>
    (Set_in x@89@01 (Set_unionone (Set_singleton x1@73@01) x2@74@01))
    (or (= $k@90@01 $Perm.No) (< $Perm.No $k@90@01)))
  
  :qid |quant-u-5948|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@89@01 $Ref) (x2@89@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in x1@89@01 (Set_unionone (Set_singleton x1@73@01) x2@74@01))
        (< $Perm.No $k@90@01))
      (and
        (Set_in x2@89@01 (Set_unionone (Set_singleton x1@73@01) x2@74@01))
        (< $Perm.No $k@90@01))
      (=
        ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@84@01)) x1@89@01)
        ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@84@01)) x2@89@01)))
    (= x1@89@01 x2@89@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1
; ---------- test15 ----------
(declare-const x1@93@01 $Ref)
(declare-const x2@94@01 $Ref)
(declare-const x1@95@01 $Ref)
(declare-const x2@96@01 $Ref)
(push) ; 1
(declare-const $t@97@01 $Snap)
(assert (= $t@97@01 ($Snap.combine ($Snap.first $t@97@01) ($Snap.second $t@97@01))))
(declare-const sm@98@01 $FVF<g>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_g (as sm@98@01  $FVF<g>) x1@95@01)
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@97@01))))
(assert (not (= x1@95@01 $Ref.null)))
(assert (=
  ($Snap.second $t@97@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@97@01))
    ($Snap.second ($Snap.second $t@97@01)))))
(declare-const sm@99@01 $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (as sm@99@01  $FVF<f>) ($FVF.lookup_g (as sm@98@01  $FVF<g>) x1@95@01))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@97@01)))))
(assert (<=
  $Perm.No
  (ite
    (=
      ($FVF.lookup_g (as sm@98@01  $FVF<g>) x1@95@01)
      ($FVF.lookup_g (as sm@98@01  $FVF<g>) x1@95@01))
    (/ (to_real 2) (to_real 3))
    $Perm.No)))
(assert (<=
  (ite
    (=
      ($FVF.lookup_g (as sm@98@01  $FVF<g>) x1@95@01)
      ($FVF.lookup_g (as sm@98@01  $FVF<g>) x1@95@01))
    (/ (to_real 2) (to_real 3))
    $Perm.No)
  $Perm.Write))
(assert (=>
  (=
    ($FVF.lookup_g (as sm@98@01  $FVF<g>) x1@95@01)
    ($FVF.lookup_g (as sm@98@01  $FVF<g>) x1@95@01))
  (not (= ($FVF.lookup_g (as sm@98@01  $FVF<g>) x1@95@01) $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second $t@97@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@97@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))
(declare-const sm@100@01 $FVF<g>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_g (as sm@100@01  $FVF<g>) x2@96@01)
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@97@01))))))
(push) ; 2
(set-option :timeout 10)
(assert (not (= x2@96@01 x1@95@01)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (not (= x2@96@01 $Ref.null)))
(declare-const sm@101@01 $FVF<g>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r x1@95@01)
    (=
      ($FVF.lookup_g (as sm@101@01  $FVF<g>) r)
      ($FVF.lookup_g (as sm@98@01  $FVF<g>) r)))
  :pattern (($FVF.lookup_g (as sm@101@01  $FVF<g>) r))
  :pattern (($FVF.lookup_g (as sm@98@01  $FVF<g>) r))
  :qid |qp.fvfValDef3|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x2@96@01)
    (=
      ($FVF.lookup_g (as sm@101@01  $FVF<g>) r)
      ($FVF.lookup_g (as sm@100@01  $FVF<g>) r)))
  :pattern (($FVF.lookup_g (as sm@101@01  $FVF<g>) r))
  :pattern (($FVF.lookup_g (as sm@100@01  $FVF<g>) r))
  :qid |qp.fvfValDef4|)))
(declare-const pm@102@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_g (as pm@102@01  $FPM) r)
    (+
      (ite (= r x1@95@01) $Perm.Write $Perm.No)
      (ite (= r x2@96@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_g (as pm@102@01  $FPM) r))
  :qid |qp.resPrmSumDef5|)))
(set-option :timeout 0)
(push) ; 2
(assert (not (< $Perm.No ($FVF.perm_g (as pm@102@01  $FPM) x2@96@01))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(declare-const sm@103@01 $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (as sm@103@01  $FVF<f>) ($FVF.lookup_g (as sm@101@01  $FVF<g>) x2@96@01))
  ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))
(push) ; 2
(set-option :timeout 10)
(assert (not (and
  (and
    (=
      ($FVF.lookup_g (as sm@101@01  $FVF<g>) x2@96@01)
      ($FVF.lookup_g (as sm@101@01  $FVF<g>) x2@96@01))
    (=
      ($FVF.lookup_g (as sm@98@01  $FVF<g>) x1@95@01)
      ($FVF.lookup_g (as sm@98@01  $FVF<g>) x1@95@01)))
  (=
    ($FVF.lookup_g (as sm@101@01  $FVF<g>) x2@96@01)
    ($FVF.lookup_g (as sm@98@01  $FVF<g>) x1@95@01)))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<=
  $Perm.No
  (ite
    (=
      ($FVF.lookup_g (as sm@101@01  $FVF<g>) x2@96@01)
      ($FVF.lookup_g (as sm@101@01  $FVF<g>) x2@96@01))
    (/ (to_real 2) (to_real 3))
    $Perm.No)))
(assert (<=
  (ite
    (=
      ($FVF.lookup_g (as sm@101@01  $FVF<g>) x2@96@01)
      ($FVF.lookup_g (as sm@101@01  $FVF<g>) x2@96@01))
    (/ (to_real 2) (to_real 3))
    $Perm.No)
  $Perm.Write))
(assert (=>
  (=
    ($FVF.lookup_g (as sm@101@01  $FVF<g>) x2@96@01)
    ($FVF.lookup_g (as sm@101@01  $FVF<g>) x2@96@01))
  (not (= ($FVF.lookup_g (as sm@101@01  $FVF<g>) x2@96@01) $Ref.null))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@104@01 $Snap)
(assert (= $t@104@01 ($Snap.combine ($Snap.first $t@104@01) ($Snap.second $t@104@01))))
(declare-const x@105@01 $Ref)
(push) ; 3
; [eval] (x in Set(x1, x2))
; [eval] Set(x1, x2)
(assert (Set_in x@105@01 (Set_unionone (Set_singleton x1@95@01) x2@96@01)))
(declare-const $k@106@01 $Perm)
(assert ($Perm.isReadVar $k@106@01))
(pop) ; 3
(declare-fun inv@107@01 ($Ref) $Ref)
(declare-fun img@108@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@106@01))
; Nested auxiliary terms: non-globals
(push) ; 3
(assert (not (forall ((x@105@01 $Ref)) (!
  (=>
    (Set_in x@105@01 (Set_unionone (Set_singleton x1@95@01) x2@96@01))
    (or (= $k@106@01 $Perm.No) (< $Perm.No $k@106@01)))
  
  :qid |quant-u-5949|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@105@01 $Ref) (x2@105@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in x1@105@01 (Set_unionone (Set_singleton x1@95@01) x2@96@01))
        (< $Perm.No $k@106@01))
      (and
        (Set_in x2@105@01 (Set_unionone (Set_singleton x1@95@01) x2@96@01))
        (< $Perm.No $k@106@01))
      (= x1@105@01 x2@105@01))
    (= x1@105@01 x2@105@01))
  
  :qid |g-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@105@01 $Ref)) (!
  (=>
    (and
      (Set_in x@105@01 (Set_unionone (Set_singleton x1@95@01) x2@96@01))
      (< $Perm.No $k@106@01))
    (and (= (inv@107@01 x@105@01) x@105@01) (img@108@01 x@105@01)))
  :pattern ((Set_in x@105@01 (Set_unionone (Set_singleton x1@95@01) x2@96@01)))
  :pattern ((inv@107@01 x@105@01))
  :pattern ((img@108@01 x@105@01))
  :qid |quant-u-5950|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@108@01 r)
      (and
        (Set_in (inv@107@01 r) (Set_unionone (Set_singleton x1@95@01) x2@96@01))
        (< $Perm.No $k@106@01)))
    (= (inv@107@01 r) r))
  :pattern ((inv@107@01 r))
  :qid |g-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((x@105@01 $Ref)) (!
  (<= $Perm.No $k@106@01)
  :pattern ((Set_in x@105@01 (Set_unionone (Set_singleton x1@95@01) x2@96@01)))
  :pattern ((inv@107@01 x@105@01))
  :pattern ((img@108@01 x@105@01))
  :qid |g-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((x@105@01 $Ref)) (!
  (<= $k@106@01 $Perm.Write)
  :pattern ((Set_in x@105@01 (Set_unionone (Set_singleton x1@95@01) x2@96@01)))
  :pattern ((inv@107@01 x@105@01))
  :pattern ((img@108@01 x@105@01))
  :qid |g-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((x@105@01 $Ref)) (!
  (=>
    (and
      (Set_in x@105@01 (Set_unionone (Set_singleton x1@95@01) x2@96@01))
      (< $Perm.No $k@106@01))
    (not (= x@105@01 $Ref.null)))
  :pattern ((Set_in x@105@01 (Set_unionone (Set_singleton x1@95@01) x2@96@01)))
  :pattern ((inv@107@01 x@105@01))
  :pattern ((img@108@01 x@105@01))
  :qid |g-permImpliesNonNull|)))
(assert (=
  ($Snap.second $t@104@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@104@01))
    ($Snap.second ($Snap.second $t@104@01)))))
(assert (= ($Snap.first ($Snap.second $t@104@01)) $Snap.unit))
; [eval] x1.g != x2.g
(push) ; 3
(assert (not (ite
  (and
    (img@108@01 x1@95@01)
    (Set_in (inv@107@01 x1@95@01) (Set_unionone (Set_singleton x1@95@01) x2@96@01)))
  (< $Perm.No $k@106@01)
  false)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (ite
  (and
    (img@108@01 x2@96@01)
    (Set_in (inv@107@01 x2@96@01) (Set_unionone (Set_singleton x1@95@01) x2@96@01)))
  (< $Perm.No $k@106@01)
  false)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not
  (=
    ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@104@01)) x1@95@01)
    ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@104@01)) x2@96@01))))
(declare-const x@109@01 $Ref)
(push) ; 3
; [eval] (x in Set(x1, x2))
; [eval] Set(x1, x2)
(assert (Set_in x@109@01 (Set_unionone (Set_singleton x1@95@01) x2@96@01)))
(push) ; 4
(assert (not (ite
  (and
    (img@108@01 x@109@01)
    (Set_in (inv@107@01 x@109@01) (Set_unionone (Set_singleton x1@95@01) x2@96@01)))
  (< $Perm.No $k@106@01)
  false)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const $k@110@01 $Perm)
(assert ($Perm.isReadVar $k@110@01))
(pop) ; 3
(declare-fun inv@111@01 ($Ref) $Ref)
(declare-fun img@112@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@110@01))
; Nested auxiliary terms: non-globals
(push) ; 3
(assert (not (forall ((x@109@01 $Ref)) (!
  (=>
    (Set_in x@109@01 (Set_unionone (Set_singleton x1@95@01) x2@96@01))
    (or (= $k@110@01 $Perm.No) (< $Perm.No $k@110@01)))
  
  :qid |quant-u-5951|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@109@01 $Ref) (x2@109@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in x1@109@01 (Set_unionone (Set_singleton x1@95@01) x2@96@01))
        (< $Perm.No $k@110@01))
      (and
        (Set_in x2@109@01 (Set_unionone (Set_singleton x1@95@01) x2@96@01))
        (< $Perm.No $k@110@01))
      (=
        ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@104@01)) x1@109@01)
        ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@104@01)) x2@109@01)))
    (= x1@109@01 x2@109@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@109@01 $Ref)) (!
  (=>
    (and
      (Set_in x@109@01 (Set_unionone (Set_singleton x1@95@01) x2@96@01))
      (< $Perm.No $k@110@01))
    (and
      (=
        (inv@111@01 ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@104@01)) x@109@01))
        x@109@01)
      (img@112@01 ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@104@01)) x@109@01))))
  :pattern (($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@104@01)) x@109@01))
  :qid |quant-u-5952|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@112@01 r)
      (and
        (Set_in (inv@111@01 r) (Set_unionone (Set_singleton x1@95@01) x2@96@01))
        (< $Perm.No $k@110@01)))
    (=
      ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@104@01)) (inv@111@01 r))
      r))
  :pattern ((inv@111@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((x@109@01 $Ref)) (!
  (<= $Perm.No $k@110@01)
  :pattern (($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@104@01)) x@109@01))
  :qid |f-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((x@109@01 $Ref)) (!
  (<= $k@110@01 $Perm.Write)
  :pattern (($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@104@01)) x@109@01))
  :qid |f-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((x@109@01 $Ref)) (!
  (=>
    (and
      (Set_in x@109@01 (Set_unionone (Set_singleton x1@95@01) x2@96@01))
      (< $Perm.No $k@110@01))
    (not
      (=
        ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@104@01)) x@109@01)
        $Ref.null)))
  :pattern (($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@104@01)) x@109@01))
  :qid |f-permImpliesNonNull|)))
(pop) ; 2
(push) ; 2
(declare-const x@113@01 $Ref)
(push) ; 3
; [eval] (x in Set(x1, x2))
; [eval] Set(x1, x2)
(assert (Set_in x@113@01 (Set_unionone (Set_singleton x1@95@01) x2@96@01)))
(declare-const $k@114@01 $Perm)
(assert ($Perm.isReadVar $k@114@01))
(pop) ; 3
(declare-fun inv@115@01 ($Ref) $Ref)
(declare-fun img@116@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@114@01))
; Nested auxiliary terms: non-globals
(push) ; 3
(assert (not (forall ((x@113@01 $Ref)) (!
  (=>
    (Set_in x@113@01 (Set_unionone (Set_singleton x1@95@01) x2@96@01))
    (or (= $k@114@01 $Perm.No) (< $Perm.No $k@114@01)))
  
  :qid |quant-u-5953|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@113@01 $Ref) (x2@113@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in x1@113@01 (Set_unionone (Set_singleton x1@95@01) x2@96@01))
        (< $Perm.No $k@114@01))
      (and
        (Set_in x2@113@01 (Set_unionone (Set_singleton x1@95@01) x2@96@01))
        (< $Perm.No $k@114@01))
      (= x1@113@01 x2@113@01))
    (= x1@113@01 x2@113@01))
  
  :qid |g-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@113@01 $Ref)) (!
  (=>
    (and
      (Set_in x@113@01 (Set_unionone (Set_singleton x1@95@01) x2@96@01))
      (< $Perm.No $k@114@01))
    (and (= (inv@115@01 x@113@01) x@113@01) (img@116@01 x@113@01)))
  :pattern ((Set_in x@113@01 (Set_unionone (Set_singleton x1@95@01) x2@96@01)))
  :pattern ((inv@115@01 x@113@01))
  :pattern ((img@116@01 x@113@01))
  :qid |g-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@116@01 r)
      (and
        (Set_in (inv@115@01 r) (Set_unionone (Set_singleton x1@95@01) x2@96@01))
        (< $Perm.No $k@114@01)))
    (= (inv@115@01 r) r))
  :pattern ((inv@115@01 r))
  :qid |g-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@117@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@115@01 r) (Set_unionone (Set_singleton x1@95@01) x2@96@01))
      (img@116@01 r)
      (= r (inv@115@01 r)))
    ($Perm.min (ite (= r x1@95@01) $Perm.Write $Perm.No) $k@114@01)
    $Perm.No))
(define-fun pTaken@118@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@115@01 r) (Set_unionone (Set_singleton x1@95@01) x2@96@01))
      (img@116@01 r)
      (= r (inv@115@01 r)))
    ($Perm.min
      (ite (= r x2@96@01) $Perm.Write $Perm.No)
      (- $k@114@01 (pTaken@117@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Constrain original permissions $k@114@01
(assert (<
  (ite
    (and
      (Set_in (inv@115@01 x1@95@01) (Set_unionone (Set_singleton x1@95@01) x2@96@01))
      (img@116@01 x1@95@01)
      (= x1@95@01 (inv@115@01 x1@95@01)))
    $k@114@01
    $Perm.No)
  $Perm.Write))
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@115@01 r) (Set_unionone (Set_singleton x1@95@01) x2@96@01))
      (img@116@01 r)
      (= r (inv@115@01 r)))
    (= (- $k@114@01 (pTaken@117@01 r)) $Perm.No))
  
  :qid |quant-u-5956|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Constrain original permissions $k@114@01
(assert (<
  (ite
    (and
      (Set_in (inv@115@01 x2@96@01) (Set_unionone (Set_singleton x1@95@01) x2@96@01))
      (img@116@01 x2@96@01)
      (= x2@96@01 (inv@115@01 x2@96@01)))
    $k@114@01
    $Perm.No)
  $Perm.Write))
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@115@01 r) (Set_unionone (Set_singleton x1@95@01) x2@96@01))
      (img@116@01 r)
      (= r (inv@115@01 r)))
    (= (- (- $k@114@01 (pTaken@117@01 r)) (pTaken@118@01 r)) $Perm.No))
  
  :qid |quant-u-5958|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] x1.g != x2.g
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r x1@95@01)
      (=
        ($FVF.lookup_g (as sm@101@01  $FVF<g>) r)
        ($FVF.lookup_g (as sm@98@01  $FVF<g>) r)))
    :pattern (($FVF.lookup_g (as sm@101@01  $FVF<g>) r))
    :pattern (($FVF.lookup_g (as sm@98@01  $FVF<g>) r))
    :qid |qp.fvfValDef3|))
  (forall ((r $Ref)) (!
    (=>
      (= r x2@96@01)
      (=
        ($FVF.lookup_g (as sm@101@01  $FVF<g>) r)
        ($FVF.lookup_g (as sm@100@01  $FVF<g>) r)))
    :pattern (($FVF.lookup_g (as sm@101@01  $FVF<g>) r))
    :pattern (($FVF.lookup_g (as sm@100@01  $FVF<g>) r))
    :qid |qp.fvfValDef4|))))
(set-option :timeout 0)
(push) ; 3
(assert (not (< $Perm.No (+ $Perm.Write (ite (= x1@95@01 x2@96@01) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r x1@95@01)
      (=
        ($FVF.lookup_g (as sm@101@01  $FVF<g>) r)
        ($FVF.lookup_g (as sm@98@01  $FVF<g>) r)))
    :pattern (($FVF.lookup_g (as sm@101@01  $FVF<g>) r))
    :pattern (($FVF.lookup_g (as sm@98@01  $FVF<g>) r))
    :qid |qp.fvfValDef3|))
  (forall ((r $Ref)) (!
    (=>
      (= r x2@96@01)
      (=
        ($FVF.lookup_g (as sm@101@01  $FVF<g>) r)
        ($FVF.lookup_g (as sm@100@01  $FVF<g>) r)))
    :pattern (($FVF.lookup_g (as sm@101@01  $FVF<g>) r))
    :pattern (($FVF.lookup_g (as sm@100@01  $FVF<g>) r))
    :qid |qp.fvfValDef4|))))
(push) ; 3
(assert (not (< $Perm.No (+ (ite (= x2@96@01 x1@95@01) $Perm.Write $Perm.No) $Perm.Write))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (not
  (=
    ($FVF.lookup_g (as sm@101@01  $FVF<g>) x1@95@01)
    ($FVF.lookup_g (as sm@101@01  $FVF<g>) x2@96@01)))))
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
(assert (not (and
  (and
    (=
      ($FVF.lookup_g (as sm@98@01  $FVF<g>) x1@95@01)
      ($FVF.lookup_g (as sm@98@01  $FVF<g>) x1@95@01))
    (=
      ($FVF.lookup_g (as sm@101@01  $FVF<g>) x2@96@01)
      ($FVF.lookup_g (as sm@101@01  $FVF<g>) x2@96@01)))
  (=
    ($FVF.lookup_g (as sm@98@01  $FVF<g>) x1@95@01)
    ($FVF.lookup_g (as sm@101@01  $FVF<g>) x2@96@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= x1@95@01 x2@96@01)))
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
    (ite
      (=
        ($FVF.lookup_g (as sm@98@01  $FVF<g>) x1@95@01)
        ($FVF.lookup_g (as sm@98@01  $FVF<g>) x1@95@01))
      (/ (to_real 2) (to_real 3))
      $Perm.No)
    (ite
      (=
        ($FVF.lookup_g (as sm@101@01  $FVF<g>) x2@96@01)
        ($FVF.lookup_g (as sm@101@01  $FVF<g>) x2@96@01))
      (/ (to_real 2) (to_real 3))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite
      (=
        ($FVF.lookup_g (as sm@101@01  $FVF<g>) x2@96@01)
        ($FVF.lookup_g (as sm@101@01  $FVF<g>) x2@96@01))
      (/ (to_real 2) (to_real 3))
      $Perm.No)
    (ite
      (=
        ($FVF.lookup_g (as sm@98@01  $FVF<g>) x1@95@01)
        ($FVF.lookup_g (as sm@98@01  $FVF<g>) x1@95@01))
      (/ (to_real 2) (to_real 3))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($FVF.lookup_g (as sm@98@01  $FVF<g>) x1@95@01)
    ($FVF.lookup_g (as sm@100@01  $FVF<g>) x2@96@01)))))
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
    ($FVF.lookup_g (as sm@100@01  $FVF<g>) x2@96@01)
    ($FVF.lookup_g (as sm@98@01  $FVF<g>) x1@95@01)))))
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
    (=
      ($FVF.lookup_g (as sm@98@01  $FVF<g>) x1@95@01)
      ($FVF.lookup_g (as sm@98@01  $FVF<g>) x1@95@01))
    (=
      ($FVF.lookup_g (as sm@101@01  $FVF<g>) x2@96@01)
      ($FVF.lookup_g (as sm@101@01  $FVF<g>) x2@96@01)))
  (not
    (=
      ($FVF.lookup_f (as sm@99@01  $FVF<f>) ($FVF.lookup_g (as sm@98@01  $FVF<g>) x1@95@01))
      ($FVF.lookup_f (as sm@103@01  $FVF<f>) ($FVF.lookup_g (as sm@101@01  $FVF<g>) x2@96@01)))))))
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
    (=
      ($FVF.lookup_g (as sm@101@01  $FVF<g>) x2@96@01)
      ($FVF.lookup_g (as sm@101@01  $FVF<g>) x2@96@01))
    (=
      ($FVF.lookup_g (as sm@98@01  $FVF<g>) x1@95@01)
      ($FVF.lookup_g (as sm@98@01  $FVF<g>) x1@95@01)))
  (not
    (=
      ($FVF.lookup_f (as sm@103@01  $FVF<f>) ($FVF.lookup_g (as sm@101@01  $FVF<g>) x2@96@01))
      ($FVF.lookup_f (as sm@99@01  $FVF<f>) ($FVF.lookup_g (as sm@98@01  $FVF<g>) x1@95@01)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (and
  (and (not (= x1@95@01 x2@96@01)) (not (= x2@96@01 x1@95@01)))
  (and
    (not
      (=
        ($FVF.lookup_g (as sm@98@01  $FVF<g>) x1@95@01)
        ($FVF.lookup_g (as sm@101@01  $FVF<g>) x2@96@01)))
    (not
      (=
        ($FVF.lookup_g (as sm@101@01  $FVF<g>) x2@96@01)
        ($FVF.lookup_g (as sm@98@01  $FVF<g>) x1@95@01))))))
(declare-const sm@119@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r ($FVF.lookup_g (as sm@98@01  $FVF<g>) x1@95@01))
    (=
      ($FVF.lookup_f (as sm@119@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@99@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@119@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@99@01  $FVF<f>) r))
  :qid |qp.fvfValDef8|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r ($FVF.lookup_g (as sm@101@01  $FVF<g>) x2@96@01))
    (=
      ($FVF.lookup_f (as sm@119@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@103@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@119@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@103@01  $FVF<f>) r))
  :qid |qp.fvfValDef9|)))
(declare-const pm@120@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@120@01  $FPM) r)
    (+
      (ite
        (= r ($FVF.lookup_g (as sm@98@01  $FVF<g>) x1@95@01))
        (/ (to_real 2) (to_real 3))
        $Perm.No)
      (ite
        (= r ($FVF.lookup_g (as sm@101@01  $FVF<g>) x2@96@01))
        (/ (to_real 2) (to_real 3))
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@120@01  $FPM) r))
  :qid |qp.resPrmSumDef10|)))
(assert (<=
  ($FVF.perm_f (as pm@120@01  $FPM) ($FVF.lookup_g (as sm@98@01  $FVF<g>) x1@95@01))
  $Perm.Write))
(assert (<=
  ($FVF.perm_f (as pm@120@01  $FPM) ($FVF.lookup_g (as sm@101@01  $FVF<g>) x2@96@01))
  $Perm.Write))
; Definitional axioms for snapshot map values
(assert (<= ($FVF.perm_g (as pm@102@01  $FPM) x1@95@01) $Perm.Write))
(assert (<= ($FVF.perm_g (as pm@102@01  $FPM) x2@96@01) $Perm.Write))
; [eval] x1.g != x2.g
(declare-const sm@121@01 $FVF<g>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r x2@96@01)
    (=
      ($FVF.lookup_g (as sm@121@01  $FVF<g>) r)
      ($FVF.lookup_g (as sm@100@01  $FVF<g>) r)))
  :pattern (($FVF.lookup_g (as sm@121@01  $FVF<g>) r))
  :pattern (($FVF.lookup_g (as sm@100@01  $FVF<g>) r))
  :qid |qp.fvfValDef11|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x1@95@01)
    (=
      ($FVF.lookup_g (as sm@121@01  $FVF<g>) r)
      ($FVF.lookup_g (as sm@98@01  $FVF<g>) r)))
  :pattern (($FVF.lookup_g (as sm@121@01  $FVF<g>) r))
  :pattern (($FVF.lookup_g (as sm@98@01  $FVF<g>) r))
  :qid |qp.fvfValDef12|)))
(declare-const pm@122@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_g (as pm@122@01  $FPM) r)
    (+
      (ite (= r x2@96@01) $Perm.Write $Perm.No)
      (ite (= r x1@95@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_g (as pm@122@01  $FPM) r))
  :qid |qp.resPrmSumDef13|)))
(set-option :timeout 0)
(push) ; 3
(assert (not (< $Perm.No ($FVF.perm_g (as pm@122@01  $FPM) x1@95@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r x2@96@01)
      (=
        ($FVF.lookup_g (as sm@121@01  $FVF<g>) r)
        ($FVF.lookup_g (as sm@100@01  $FVF<g>) r)))
    :pattern (($FVF.lookup_g (as sm@121@01  $FVF<g>) r))
    :pattern (($FVF.lookup_g (as sm@100@01  $FVF<g>) r))
    :qid |qp.fvfValDef11|))
  (forall ((r $Ref)) (!
    (=>
      (= r x1@95@01)
      (=
        ($FVF.lookup_g (as sm@121@01  $FVF<g>) r)
        ($FVF.lookup_g (as sm@98@01  $FVF<g>) r)))
    :pattern (($FVF.lookup_g (as sm@121@01  $FVF<g>) r))
    :pattern (($FVF.lookup_g (as sm@98@01  $FVF<g>) r))
    :qid |qp.fvfValDef12|))))
(push) ; 3
(assert (not (< $Perm.No (+ $Perm.Write (ite (= x2@96@01 x1@95@01) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (not
  (=
    ($FVF.lookup_g (as sm@121@01  $FVF<g>) x1@95@01)
    ($FVF.lookup_g (as sm@121@01  $FVF<g>) x2@96@01)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not
  (=
    ($FVF.lookup_g (as sm@121@01  $FVF<g>) x1@95@01)
    ($FVF.lookup_g (as sm@121@01  $FVF<g>) x2@96@01))))
(declare-const x@123@01 $Ref)
(push) ; 3
; [eval] (x in Set(x1, x2))
; [eval] Set(x1, x2)
(assert (Set_in x@123@01 (Set_unionone (Set_singleton x1@95@01) x2@96@01)))
(declare-const $k@124@01 $Perm)
(assert ($Perm.isReadVar $k@124@01))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r x1@95@01)
      (=
        ($FVF.lookup_g (as sm@101@01  $FVF<g>) r)
        ($FVF.lookup_g (as sm@98@01  $FVF<g>) r)))
    :pattern (($FVF.lookup_g (as sm@101@01  $FVF<g>) r))
    :pattern (($FVF.lookup_g (as sm@98@01  $FVF<g>) r))
    :qid |qp.fvfValDef3|))
  (forall ((r $Ref)) (!
    (=>
      (= r x2@96@01)
      (=
        ($FVF.lookup_g (as sm@101@01  $FVF<g>) r)
        ($FVF.lookup_g (as sm@100@01  $FVF<g>) r)))
    :pattern (($FVF.lookup_g (as sm@101@01  $FVF<g>) r))
    :pattern (($FVF.lookup_g (as sm@100@01  $FVF<g>) r))
    :qid |qp.fvfValDef4|))))
(push) ; 4
(assert (not (<
  $Perm.No
  (+
    (ite (= x@123@01 x1@95@01) $Perm.Write $Perm.No)
    (ite (= x@123@01 x2@96@01) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@125@01 ($Ref) $Ref)
(declare-fun img@126@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@124@01))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x1@95@01)
    (=
      ($FVF.lookup_g (as sm@101@01  $FVF<g>) r)
      ($FVF.lookup_g (as sm@98@01  $FVF<g>) r)))
  :pattern (($FVF.lookup_g (as sm@101@01  $FVF<g>) r))
  :pattern (($FVF.lookup_g (as sm@98@01  $FVF<g>) r))
  :qid |qp.fvfValDef3|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x2@96@01)
    (=
      ($FVF.lookup_g (as sm@101@01  $FVF<g>) r)
      ($FVF.lookup_g (as sm@100@01  $FVF<g>) r)))
  :pattern (($FVF.lookup_g (as sm@101@01  $FVF<g>) r))
  :pattern (($FVF.lookup_g (as sm@100@01  $FVF<g>) r))
  :qid |qp.fvfValDef4|)))
; Nested auxiliary terms: non-globals
(push) ; 3
(assert (not (forall ((x@123@01 $Ref)) (!
  (=>
    (Set_in x@123@01 (Set_unionone (Set_singleton x1@95@01) x2@96@01))
    (or (= $k@124@01 $Perm.No) (< $Perm.No $k@124@01)))
  
  :qid |quant-u-5959|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@123@01 $Ref) (x2@123@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in x1@123@01 (Set_unionone (Set_singleton x1@95@01) x2@96@01))
        (< $Perm.No $k@124@01))
      (and
        (Set_in x2@123@01 (Set_unionone (Set_singleton x1@95@01) x2@96@01))
        (< $Perm.No $k@124@01))
      (=
        ($FVF.lookup_g (as sm@101@01  $FVF<g>) x1@123@01)
        ($FVF.lookup_g (as sm@101@01  $FVF<g>) x2@123@01)))
    (= x1@123@01 x2@123@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@123@01 $Ref)) (!
  (=>
    (and
      (Set_in x@123@01 (Set_unionone (Set_singleton x1@95@01) x2@96@01))
      (< $Perm.No $k@124@01))
    (and
      (= (inv@125@01 ($FVF.lookup_g (as sm@101@01  $FVF<g>) x@123@01)) x@123@01)
      (img@126@01 ($FVF.lookup_g (as sm@101@01  $FVF<g>) x@123@01))))
  :pattern (($FVF.lookup_g (as sm@101@01  $FVF<g>) x@123@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@126@01 r)
      (and
        (Set_in (inv@125@01 r) (Set_unionone (Set_singleton x1@95@01) x2@96@01))
        (< $Perm.No $k@124@01)))
    (= ($FVF.lookup_g (as sm@101@01  $FVF<g>) (inv@125@01 r)) r))
  :pattern ((inv@125@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@127@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@125@01 r) (Set_unionone (Set_singleton x1@95@01) x2@96@01))
      (img@126@01 r)
      (= r ($FVF.lookup_g (as sm@101@01  $FVF<g>) (inv@125@01 r))))
    ($Perm.min
      (ite
        (= r ($FVF.lookup_g (as sm@101@01  $FVF<g>) x2@96@01))
        (/ (to_real 2) (to_real 3))
        $Perm.No)
      $k@124@01)
    $Perm.No))
(define-fun pTaken@128@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@125@01 r) (Set_unionone (Set_singleton x1@95@01) x2@96@01))
      (img@126@01 r)
      (= r ($FVF.lookup_g (as sm@101@01  $FVF<g>) (inv@125@01 r))))
    ($Perm.min
      (ite
        (= r ($FVF.lookup_g (as sm@98@01  $FVF<g>) x1@95@01))
        (/ (to_real 2) (to_real 3))
        $Perm.No)
      (- $k@124@01 (pTaken@127@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Constrain original permissions $k@124@01
(assert (=>
  (not
    (=
      (ite
        (=
          ($FVF.lookup_g (as sm@101@01  $FVF<g>) x2@96@01)
          ($FVF.lookup_g (as sm@101@01  $FVF<g>) x2@96@01))
        (/ (to_real 2) (to_real 3))
        $Perm.No)
      $Perm.No))
  (ite
    (=
      ($FVF.lookup_g (as sm@101@01  $FVF<g>) x2@96@01)
      ($FVF.lookup_g (as sm@101@01  $FVF<g>) x2@96@01))
    (<
      (ite
        (and
          (Set_in (inv@125@01 ($FVF.lookup_g (as sm@101@01  $FVF<g>) x2@96@01)) (Set_unionone (Set_singleton x1@95@01) x2@96@01))
          (img@126@01 ($FVF.lookup_g (as sm@101@01  $FVF<g>) x2@96@01))
          (=
            ($FVF.lookup_g (as sm@101@01  $FVF<g>) x2@96@01)
            ($FVF.lookup_g (as sm@101@01  $FVF<g>) (inv@125@01 ($FVF.lookup_g (as sm@101@01  $FVF<g>) x2@96@01)))))
        $k@124@01
        $Perm.No)
      (/ (to_real 2) (to_real 3)))
    (<
      (ite
        (and
          (Set_in (inv@125@01 ($FVF.lookup_g (as sm@101@01  $FVF<g>) x2@96@01)) (Set_unionone (Set_singleton x1@95@01) x2@96@01))
          (img@126@01 ($FVF.lookup_g (as sm@101@01  $FVF<g>) x2@96@01))
          (=
            ($FVF.lookup_g (as sm@101@01  $FVF<g>) x2@96@01)
            ($FVF.lookup_g (as sm@101@01  $FVF<g>) (inv@125@01 ($FVF.lookup_g (as sm@101@01  $FVF<g>) x2@96@01)))))
        $k@124@01
        $Perm.No)
      $Perm.No))))
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@125@01 r) (Set_unionone (Set_singleton x1@95@01) x2@96@01))
      (img@126@01 r)
      (= r ($FVF.lookup_g (as sm@101@01  $FVF<g>) (inv@125@01 r))))
    (= (- $k@124@01 (pTaken@127@01 r)) $Perm.No))
  
  :qid |quant-u-5962|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Constrain original permissions $k@124@01
(assert (=>
  (not
    (=
      (ite
        (=
          ($FVF.lookup_g (as sm@98@01  $FVF<g>) x1@95@01)
          ($FVF.lookup_g (as sm@98@01  $FVF<g>) x1@95@01))
        (/ (to_real 2) (to_real 3))
        $Perm.No)
      $Perm.No))
  (ite
    (=
      ($FVF.lookup_g (as sm@98@01  $FVF<g>) x1@95@01)
      ($FVF.lookup_g (as sm@98@01  $FVF<g>) x1@95@01))
    (<
      (ite
        (and
          (Set_in (inv@125@01 ($FVF.lookup_g (as sm@98@01  $FVF<g>) x1@95@01)) (Set_unionone (Set_singleton x1@95@01) x2@96@01))
          (img@126@01 ($FVF.lookup_g (as sm@98@01  $FVF<g>) x1@95@01))
          (=
            ($FVF.lookup_g (as sm@98@01  $FVF<g>) x1@95@01)
            ($FVF.lookup_g (as sm@101@01  $FVF<g>) (inv@125@01 ($FVF.lookup_g (as sm@98@01  $FVF<g>) x1@95@01)))))
        $k@124@01
        $Perm.No)
      (/ (to_real 2) (to_real 3)))
    (<
      (ite
        (and
          (Set_in (inv@125@01 ($FVF.lookup_g (as sm@98@01  $FVF<g>) x1@95@01)) (Set_unionone (Set_singleton x1@95@01) x2@96@01))
          (img@126@01 ($FVF.lookup_g (as sm@98@01  $FVF<g>) x1@95@01))
          (=
            ($FVF.lookup_g (as sm@98@01  $FVF<g>) x1@95@01)
            ($FVF.lookup_g (as sm@101@01  $FVF<g>) (inv@125@01 ($FVF.lookup_g (as sm@98@01  $FVF<g>) x1@95@01)))))
        $k@124@01
        $Perm.No)
      $Perm.No))))
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@125@01 r) (Set_unionone (Set_singleton x1@95@01) x2@96@01))
      (img@126@01 r)
      (= r ($FVF.lookup_g (as sm@101@01  $FVF<g>) (inv@125@01 r))))
    (= (- (- $k@124@01 (pTaken@127@01 r)) (pTaken@128@01 r)) $Perm.No))
  
  :qid |quant-u-5964|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- test11 ----------
(declare-const x1@129@01 $Ref)
(declare-const x2@130@01 $Ref)
(declare-const x3@131@01 $Ref)
(declare-const x4@132@01 $Ref)
(declare-const x5@133@01 $Ref)
(declare-const x6@134@01 $Ref)
(declare-const x1@135@01 $Ref)
(declare-const x2@136@01 $Ref)
(declare-const x3@137@01 $Ref)
(declare-const x4@138@01 $Ref)
(declare-const x5@139@01 $Ref)
(declare-const x6@140@01 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@141@01 $Snap)
(assert (= $t@141@01 ($Snap.combine ($Snap.first $t@141@01) ($Snap.second $t@141@01))))
(declare-const sm@142@01 $FVF<g>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_g (as sm@142@01  $FVF<g>) x1@135@01)
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@141@01))))
(assert (not (= x1@135@01 $Ref.null)))
(assert (=
  ($Snap.second $t@141@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@141@01))
    ($Snap.second ($Snap.second $t@141@01)))))
(declare-const sm@143@01 $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (as sm@143@01  $FVF<f>) ($FVF.lookup_g (as sm@142@01  $FVF<g>) x1@135@01))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@141@01)))))
(assert (<=
  $Perm.No
  (ite
    (=
      ($FVF.lookup_g (as sm@142@01  $FVF<g>) x1@135@01)
      ($FVF.lookup_g (as sm@142@01  $FVF<g>) x1@135@01))
    $Perm.Write
    $Perm.No)))
(assert (<=
  (ite
    (=
      ($FVF.lookup_g (as sm@142@01  $FVF<g>) x1@135@01)
      ($FVF.lookup_g (as sm@142@01  $FVF<g>) x1@135@01))
    $Perm.Write
    $Perm.No)
  $Perm.Write))
(assert (=>
  (=
    ($FVF.lookup_g (as sm@142@01  $FVF<g>) x1@135@01)
    ($FVF.lookup_g (as sm@142@01  $FVF<g>) x1@135@01))
  (not (= ($FVF.lookup_g (as sm@142@01  $FVF<g>) x1@135@01) $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second $t@141@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@141@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@141@01))))))
(declare-const sm@144@01 $FVF<g>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_g (as sm@144@01  $FVF<g>) x2@136@01)
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@141@01))))))
(push) ; 2
(set-option :timeout 10)
(assert (not (= x2@136@01 x1@135@01)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (not (= x2@136@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@141@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@141@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@141@01)))))))
(declare-const sm@145@01 $FVF<g>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r x1@135@01)
    (=
      ($FVF.lookup_g (as sm@145@01  $FVF<g>) r)
      ($FVF.lookup_g (as sm@142@01  $FVF<g>) r)))
  :pattern (($FVF.lookup_g (as sm@145@01  $FVF<g>) r))
  :pattern (($FVF.lookup_g (as sm@142@01  $FVF<g>) r))
  :qid |qp.fvfValDef16|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x2@136@01)
    (=
      ($FVF.lookup_g (as sm@145@01  $FVF<g>) r)
      ($FVF.lookup_g (as sm@144@01  $FVF<g>) r)))
  :pattern (($FVF.lookup_g (as sm@145@01  $FVF<g>) r))
  :pattern (($FVF.lookup_g (as sm@144@01  $FVF<g>) r))
  :qid |qp.fvfValDef17|)))
(declare-const pm@146@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_g (as pm@146@01  $FPM) r)
    (+
      (ite (= r x1@135@01) $Perm.Write $Perm.No)
      (ite (= r x2@136@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_g (as pm@146@01  $FPM) r))
  :qid |qp.resPrmSumDef18|)))
(set-option :timeout 0)
(push) ; 2
(assert (not (< $Perm.No ($FVF.perm_g (as pm@146@01  $FPM) x2@136@01))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(declare-const sm@147@01 $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (as sm@147@01  $FVF<f>) ($FVF.lookup_g (as sm@145@01  $FVF<g>) x2@136@01))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@141@01)))))))
(push) ; 2
(set-option :timeout 10)
(assert (not (and
  (and
    (=
      ($FVF.lookup_g (as sm@145@01  $FVF<g>) x2@136@01)
      ($FVF.lookup_g (as sm@145@01  $FVF<g>) x2@136@01))
    (=
      ($FVF.lookup_g (as sm@142@01  $FVF<g>) x1@135@01)
      ($FVF.lookup_g (as sm@142@01  $FVF<g>) x1@135@01)))
  (=
    ($FVF.lookup_g (as sm@145@01  $FVF<g>) x2@136@01)
    ($FVF.lookup_g (as sm@142@01  $FVF<g>) x1@135@01)))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<=
  $Perm.No
  (ite
    (=
      ($FVF.lookup_g (as sm@145@01  $FVF<g>) x2@136@01)
      ($FVF.lookup_g (as sm@145@01  $FVF<g>) x2@136@01))
    $Perm.Write
    $Perm.No)))
(assert (<=
  (ite
    (=
      ($FVF.lookup_g (as sm@145@01  $FVF<g>) x2@136@01)
      ($FVF.lookup_g (as sm@145@01  $FVF<g>) x2@136@01))
    $Perm.Write
    $Perm.No)
  $Perm.Write))
(assert (=>
  (=
    ($FVF.lookup_g (as sm@145@01  $FVF<g>) x2@136@01)
    ($FVF.lookup_g (as sm@145@01  $FVF<g>) x2@136@01))
  (not (= ($FVF.lookup_g (as sm@145@01  $FVF<g>) x2@136@01) $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@141@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@141@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@141@01))))))))
(declare-const sm@148@01 $FVF<g>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_g (as sm@148@01  $FVF<g>) x3@137@01)
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@141@01))))))))
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (= x3@137@01 x2@136@01)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (= x3@137@01 x1@135@01)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (not (= x3@137@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@141@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@141@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@141@01)))))))))
(declare-const sm@149@01 $FVF<g>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r x1@135@01)
    (=
      ($FVF.lookup_g (as sm@149@01  $FVF<g>) r)
      ($FVF.lookup_g (as sm@142@01  $FVF<g>) r)))
  :pattern (($FVF.lookup_g (as sm@149@01  $FVF<g>) r))
  :pattern (($FVF.lookup_g (as sm@142@01  $FVF<g>) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x2@136@01)
    (=
      ($FVF.lookup_g (as sm@149@01  $FVF<g>) r)
      ($FVF.lookup_g (as sm@144@01  $FVF<g>) r)))
  :pattern (($FVF.lookup_g (as sm@149@01  $FVF<g>) r))
  :pattern (($FVF.lookup_g (as sm@144@01  $FVF<g>) r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x3@137@01)
    (=
      ($FVF.lookup_g (as sm@149@01  $FVF<g>) r)
      ($FVF.lookup_g (as sm@148@01  $FVF<g>) r)))
  :pattern (($FVF.lookup_g (as sm@149@01  $FVF<g>) r))
  :pattern (($FVF.lookup_g (as sm@148@01  $FVF<g>) r))
  :qid |qp.fvfValDef21|)))
(declare-const pm@150@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_g (as pm@150@01  $FPM) r)
    (+
      (+
        (ite (= r x1@135@01) $Perm.Write $Perm.No)
        (ite (= r x2@136@01) $Perm.Write $Perm.No))
      (ite (= r x3@137@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_g (as pm@150@01  $FPM) r))
  :qid |qp.resPrmSumDef22|)))
(set-option :timeout 0)
(push) ; 2
(assert (not (< $Perm.No ($FVF.perm_g (as pm@150@01  $FPM) x3@137@01))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(declare-const sm@151@01 $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (as sm@151@01  $FVF<f>) ($FVF.lookup_g (as sm@149@01  $FVF<g>) x3@137@01))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@141@01)))))))))
(push) ; 2
(set-option :timeout 10)
(assert (not (and
  (and
    (=
      ($FVF.lookup_g (as sm@149@01  $FVF<g>) x3@137@01)
      ($FVF.lookup_g (as sm@149@01  $FVF<g>) x3@137@01))
    (=
      ($FVF.lookup_g (as sm@145@01  $FVF<g>) x2@136@01)
      ($FVF.lookup_g (as sm@145@01  $FVF<g>) x2@136@01)))
  (=
    ($FVF.lookup_g (as sm@149@01  $FVF<g>) x3@137@01)
    ($FVF.lookup_g (as sm@145@01  $FVF<g>) x2@136@01)))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (and
  (and
    (=
      ($FVF.lookup_g (as sm@149@01  $FVF<g>) x3@137@01)
      ($FVF.lookup_g (as sm@149@01  $FVF<g>) x3@137@01))
    (=
      ($FVF.lookup_g (as sm@142@01  $FVF<g>) x1@135@01)
      ($FVF.lookup_g (as sm@142@01  $FVF<g>) x1@135@01)))
  (=
    ($FVF.lookup_g (as sm@149@01  $FVF<g>) x3@137@01)
    ($FVF.lookup_g (as sm@142@01  $FVF<g>) x1@135@01)))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<=
  $Perm.No
  (ite
    (=
      ($FVF.lookup_g (as sm@149@01  $FVF<g>) x3@137@01)
      ($FVF.lookup_g (as sm@149@01  $FVF<g>) x3@137@01))
    $Perm.Write
    $Perm.No)))
(assert (<=
  (ite
    (=
      ($FVF.lookup_g (as sm@149@01  $FVF<g>) x3@137@01)
      ($FVF.lookup_g (as sm@149@01  $FVF<g>) x3@137@01))
    $Perm.Write
    $Perm.No)
  $Perm.Write))
(assert (=>
  (=
    ($FVF.lookup_g (as sm@149@01  $FVF<g>) x3@137@01)
    ($FVF.lookup_g (as sm@149@01  $FVF<g>) x3@137@01))
  (not (= ($FVF.lookup_g (as sm@149@01  $FVF<g>) x3@137@01) $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@141@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@141@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@141@01))))))))))
(declare-const sm@152@01 $FVF<g>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_g (as sm@152@01  $FVF<g>) x4@138@01)
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@141@01))))))))))
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (= x4@138@01 x3@137@01)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (= x4@138@01 x2@136@01)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (= x4@138@01 x1@135@01)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (not (= x4@138@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@141@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@141@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@141@01)))))))))))
(declare-const sm@153@01 $FVF<g>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r x1@135@01)
    (=
      ($FVF.lookup_g (as sm@153@01  $FVF<g>) r)
      ($FVF.lookup_g (as sm@142@01  $FVF<g>) r)))
  :pattern (($FVF.lookup_g (as sm@153@01  $FVF<g>) r))
  :pattern (($FVF.lookup_g (as sm@142@01  $FVF<g>) r))
  :qid |qp.fvfValDef23|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x2@136@01)
    (=
      ($FVF.lookup_g (as sm@153@01  $FVF<g>) r)
      ($FVF.lookup_g (as sm@144@01  $FVF<g>) r)))
  :pattern (($FVF.lookup_g (as sm@153@01  $FVF<g>) r))
  :pattern (($FVF.lookup_g (as sm@144@01  $FVF<g>) r))
  :qid |qp.fvfValDef24|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x3@137@01)
    (=
      ($FVF.lookup_g (as sm@153@01  $FVF<g>) r)
      ($FVF.lookup_g (as sm@148@01  $FVF<g>) r)))
  :pattern (($FVF.lookup_g (as sm@153@01  $FVF<g>) r))
  :pattern (($FVF.lookup_g (as sm@148@01  $FVF<g>) r))
  :qid |qp.fvfValDef25|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x4@138@01)
    (=
      ($FVF.lookup_g (as sm@153@01  $FVF<g>) r)
      ($FVF.lookup_g (as sm@152@01  $FVF<g>) r)))
  :pattern (($FVF.lookup_g (as sm@153@01  $FVF<g>) r))
  :pattern (($FVF.lookup_g (as sm@152@01  $FVF<g>) r))
  :qid |qp.fvfValDef26|)))
(declare-const pm@154@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_g (as pm@154@01  $FPM) r)
    (+
      (+
        (+
          (ite (= r x1@135@01) $Perm.Write $Perm.No)
          (ite (= r x2@136@01) $Perm.Write $Perm.No))
        (ite (= r x3@137@01) $Perm.Write $Perm.No))
      (ite (= r x4@138@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_g (as pm@154@01  $FPM) r))
  :qid |qp.resPrmSumDef27|)))
(set-option :timeout 0)
(push) ; 2
(assert (not (< $Perm.No ($FVF.perm_g (as pm@154@01  $FPM) x4@138@01))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(declare-const sm@155@01 $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (as sm@155@01  $FVF<f>) ($FVF.lookup_g (as sm@153@01  $FVF<g>) x4@138@01))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@141@01)))))))))))
(push) ; 2
(set-option :timeout 10)
(assert (not (and
  (and
    (=
      ($FVF.lookup_g (as sm@153@01  $FVF<g>) x4@138@01)
      ($FVF.lookup_g (as sm@153@01  $FVF<g>) x4@138@01))
    (=
      ($FVF.lookup_g (as sm@149@01  $FVF<g>) x3@137@01)
      ($FVF.lookup_g (as sm@149@01  $FVF<g>) x3@137@01)))
  (=
    ($FVF.lookup_g (as sm@153@01  $FVF<g>) x4@138@01)
    ($FVF.lookup_g (as sm@149@01  $FVF<g>) x3@137@01)))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (and
  (and
    (=
      ($FVF.lookup_g (as sm@153@01  $FVF<g>) x4@138@01)
      ($FVF.lookup_g (as sm@153@01  $FVF<g>) x4@138@01))
    (=
      ($FVF.lookup_g (as sm@145@01  $FVF<g>) x2@136@01)
      ($FVF.lookup_g (as sm@145@01  $FVF<g>) x2@136@01)))
  (=
    ($FVF.lookup_g (as sm@153@01  $FVF<g>) x4@138@01)
    ($FVF.lookup_g (as sm@145@01  $FVF<g>) x2@136@01)))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (and
  (and
    (=
      ($FVF.lookup_g (as sm@153@01  $FVF<g>) x4@138@01)
      ($FVF.lookup_g (as sm@153@01  $FVF<g>) x4@138@01))
    (=
      ($FVF.lookup_g (as sm@142@01  $FVF<g>) x1@135@01)
      ($FVF.lookup_g (as sm@142@01  $FVF<g>) x1@135@01)))
  (=
    ($FVF.lookup_g (as sm@153@01  $FVF<g>) x4@138@01)
    ($FVF.lookup_g (as sm@142@01  $FVF<g>) x1@135@01)))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<=
  $Perm.No
  (ite
    (=
      ($FVF.lookup_g (as sm@153@01  $FVF<g>) x4@138@01)
      ($FVF.lookup_g (as sm@153@01  $FVF<g>) x4@138@01))
    $Perm.Write
    $Perm.No)))
(assert (<=
  (ite
    (=
      ($FVF.lookup_g (as sm@153@01  $FVF<g>) x4@138@01)
      ($FVF.lookup_g (as sm@153@01  $FVF<g>) x4@138@01))
    $Perm.Write
    $Perm.No)
  $Perm.Write))
(assert (=>
  (=
    ($FVF.lookup_g (as sm@153@01  $FVF<g>) x4@138@01)
    ($FVF.lookup_g (as sm@153@01  $FVF<g>) x4@138@01))
  (not (= ($FVF.lookup_g (as sm@153@01  $FVF<g>) x4@138@01) $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@141@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@141@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@141@01))))))))))))
(declare-const sm@156@01 $FVF<g>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_g (as sm@156@01  $FVF<g>) x5@139@01)
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@141@01))))))))))))
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (= x5@139@01 x4@138@01)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (= x5@139@01 x3@137@01)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (= x5@139@01 x2@136@01)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (= x5@139@01 x1@135@01)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (not (= x5@139@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@141@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@141@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@141@01)))))))))))))
(declare-const sm@157@01 $FVF<g>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r x1@135@01)
    (=
      ($FVF.lookup_g (as sm@157@01  $FVF<g>) r)
      ($FVF.lookup_g (as sm@142@01  $FVF<g>) r)))
  :pattern (($FVF.lookup_g (as sm@157@01  $FVF<g>) r))
  :pattern (($FVF.lookup_g (as sm@142@01  $FVF<g>) r))
  :qid |qp.fvfValDef28|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x2@136@01)
    (=
      ($FVF.lookup_g (as sm@157@01  $FVF<g>) r)
      ($FVF.lookup_g (as sm@144@01  $FVF<g>) r)))
  :pattern (($FVF.lookup_g (as sm@157@01  $FVF<g>) r))
  :pattern (($FVF.lookup_g (as sm@144@01  $FVF<g>) r))
  :qid |qp.fvfValDef29|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x3@137@01)
    (=
      ($FVF.lookup_g (as sm@157@01  $FVF<g>) r)
      ($FVF.lookup_g (as sm@148@01  $FVF<g>) r)))
  :pattern (($FVF.lookup_g (as sm@157@01  $FVF<g>) r))
  :pattern (($FVF.lookup_g (as sm@148@01  $FVF<g>) r))
  :qid |qp.fvfValDef30|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x4@138@01)
    (=
      ($FVF.lookup_g (as sm@157@01  $FVF<g>) r)
      ($FVF.lookup_g (as sm@152@01  $FVF<g>) r)))
  :pattern (($FVF.lookup_g (as sm@157@01  $FVF<g>) r))
  :pattern (($FVF.lookup_g (as sm@152@01  $FVF<g>) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x5@139@01)
    (=
      ($FVF.lookup_g (as sm@157@01  $FVF<g>) r)
      ($FVF.lookup_g (as sm@156@01  $FVF<g>) r)))
  :pattern (($FVF.lookup_g (as sm@157@01  $FVF<g>) r))
  :pattern (($FVF.lookup_g (as sm@156@01  $FVF<g>) r))
  :qid |qp.fvfValDef32|)))
(declare-const pm@158@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_g (as pm@158@01  $FPM) r)
    (+
      (+
        (+
          (+
            (ite (= r x1@135@01) $Perm.Write $Perm.No)
            (ite (= r x2@136@01) $Perm.Write $Perm.No))
          (ite (= r x3@137@01) $Perm.Write $Perm.No))
        (ite (= r x4@138@01) $Perm.Write $Perm.No))
      (ite (= r x5@139@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_g (as pm@158@01  $FPM) r))
  :qid |qp.resPrmSumDef33|)))
(set-option :timeout 0)
(push) ; 2
(assert (not (< $Perm.No ($FVF.perm_g (as pm@158@01  $FPM) x5@139@01))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(declare-const sm@159@01 $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (as sm@159@01  $FVF<f>) ($FVF.lookup_g (as sm@157@01  $FVF<g>) x5@139@01))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@141@01)))))))))))))
(push) ; 2
(set-option :timeout 10)
(assert (not (and
  (and
    (=
      ($FVF.lookup_g (as sm@157@01  $FVF<g>) x5@139@01)
      ($FVF.lookup_g (as sm@157@01  $FVF<g>) x5@139@01))
    (=
      ($FVF.lookup_g (as sm@153@01  $FVF<g>) x4@138@01)
      ($FVF.lookup_g (as sm@153@01  $FVF<g>) x4@138@01)))
  (=
    ($FVF.lookup_g (as sm@157@01  $FVF<g>) x5@139@01)
    ($FVF.lookup_g (as sm@153@01  $FVF<g>) x4@138@01)))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (and
  (and
    (=
      ($FVF.lookup_g (as sm@157@01  $FVF<g>) x5@139@01)
      ($FVF.lookup_g (as sm@157@01  $FVF<g>) x5@139@01))
    (=
      ($FVF.lookup_g (as sm@149@01  $FVF<g>) x3@137@01)
      ($FVF.lookup_g (as sm@149@01  $FVF<g>) x3@137@01)))
  (=
    ($FVF.lookup_g (as sm@157@01  $FVF<g>) x5@139@01)
    ($FVF.lookup_g (as sm@149@01  $FVF<g>) x3@137@01)))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (and
  (and
    (=
      ($FVF.lookup_g (as sm@157@01  $FVF<g>) x5@139@01)
      ($FVF.lookup_g (as sm@157@01  $FVF<g>) x5@139@01))
    (=
      ($FVF.lookup_g (as sm@145@01  $FVF<g>) x2@136@01)
      ($FVF.lookup_g (as sm@145@01  $FVF<g>) x2@136@01)))
  (=
    ($FVF.lookup_g (as sm@157@01  $FVF<g>) x5@139@01)
    ($FVF.lookup_g (as sm@145@01  $FVF<g>) x2@136@01)))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (and
  (and
    (=
      ($FVF.lookup_g (as sm@157@01  $FVF<g>) x5@139@01)
      ($FVF.lookup_g (as sm@157@01  $FVF<g>) x5@139@01))
    (=
      ($FVF.lookup_g (as sm@142@01  $FVF<g>) x1@135@01)
      ($FVF.lookup_g (as sm@142@01  $FVF<g>) x1@135@01)))
  (=
    ($FVF.lookup_g (as sm@157@01  $FVF<g>) x5@139@01)
    ($FVF.lookup_g (as sm@142@01  $FVF<g>) x1@135@01)))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<=
  $Perm.No
  (ite
    (=
      ($FVF.lookup_g (as sm@157@01  $FVF<g>) x5@139@01)
      ($FVF.lookup_g (as sm@157@01  $FVF<g>) x5@139@01))
    $Perm.Write
    $Perm.No)))
(assert (<=
  (ite
    (=
      ($FVF.lookup_g (as sm@157@01  $FVF<g>) x5@139@01)
      ($FVF.lookup_g (as sm@157@01  $FVF<g>) x5@139@01))
    $Perm.Write
    $Perm.No)
  $Perm.Write))
(assert (=>
  (=
    ($FVF.lookup_g (as sm@157@01  $FVF<g>) x5@139@01)
    ($FVF.lookup_g (as sm@157@01  $FVF<g>) x5@139@01))
  (not (= ($FVF.lookup_g (as sm@157@01  $FVF<g>) x5@139@01) $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@141@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@141@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@141@01))))))))))))))
(declare-const sm@160@01 $FVF<g>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_g (as sm@160@01  $FVF<g>) x6@140@01)
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@141@01))))))))))))))
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (= x6@140@01 x5@139@01)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (= x6@140@01 x4@138@01)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (= x6@140@01 x3@137@01)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (= x6@140@01 x2@136@01)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (= x6@140@01 x1@135@01)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (not (= x6@140@01 $Ref.null)))
(declare-const sm@161@01 $FVF<g>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r x1@135@01)
    (=
      ($FVF.lookup_g (as sm@161@01  $FVF<g>) r)
      ($FVF.lookup_g (as sm@142@01  $FVF<g>) r)))
  :pattern (($FVF.lookup_g (as sm@161@01  $FVF<g>) r))
  :pattern (($FVF.lookup_g (as sm@142@01  $FVF<g>) r))
  :qid |qp.fvfValDef34|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x2@136@01)
    (=
      ($FVF.lookup_g (as sm@161@01  $FVF<g>) r)
      ($FVF.lookup_g (as sm@144@01  $FVF<g>) r)))
  :pattern (($FVF.lookup_g (as sm@161@01  $FVF<g>) r))
  :pattern (($FVF.lookup_g (as sm@144@01  $FVF<g>) r))
  :qid |qp.fvfValDef35|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x3@137@01)
    (=
      ($FVF.lookup_g (as sm@161@01  $FVF<g>) r)
      ($FVF.lookup_g (as sm@148@01  $FVF<g>) r)))
  :pattern (($FVF.lookup_g (as sm@161@01  $FVF<g>) r))
  :pattern (($FVF.lookup_g (as sm@148@01  $FVF<g>) r))
  :qid |qp.fvfValDef36|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x4@138@01)
    (=
      ($FVF.lookup_g (as sm@161@01  $FVF<g>) r)
      ($FVF.lookup_g (as sm@152@01  $FVF<g>) r)))
  :pattern (($FVF.lookup_g (as sm@161@01  $FVF<g>) r))
  :pattern (($FVF.lookup_g (as sm@152@01  $FVF<g>) r))
  :qid |qp.fvfValDef37|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x5@139@01)
    (=
      ($FVF.lookup_g (as sm@161@01  $FVF<g>) r)
      ($FVF.lookup_g (as sm@156@01  $FVF<g>) r)))
  :pattern (($FVF.lookup_g (as sm@161@01  $FVF<g>) r))
  :pattern (($FVF.lookup_g (as sm@156@01  $FVF<g>) r))
  :qid |qp.fvfValDef38|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x6@140@01)
    (=
      ($FVF.lookup_g (as sm@161@01  $FVF<g>) r)
      ($FVF.lookup_g (as sm@160@01  $FVF<g>) r)))
  :pattern (($FVF.lookup_g (as sm@161@01  $FVF<g>) r))
  :pattern (($FVF.lookup_g (as sm@160@01  $FVF<g>) r))
  :qid |qp.fvfValDef39|)))
(declare-const pm@162@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_g (as pm@162@01  $FPM) r)
    (+
      (+
        (+
          (+
            (+
              (ite (= r x1@135@01) $Perm.Write $Perm.No)
              (ite (= r x2@136@01) $Perm.Write $Perm.No))
            (ite (= r x3@137@01) $Perm.Write $Perm.No))
          (ite (= r x4@138@01) $Perm.Write $Perm.No))
        (ite (= r x5@139@01) $Perm.Write $Perm.No))
      (ite (= r x6@140@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_g (as pm@162@01  $FPM) r))
  :qid |qp.resPrmSumDef40|)))
(set-option :timeout 0)
(push) ; 2
(assert (not (< $Perm.No ($FVF.perm_g (as pm@162@01  $FPM) x6@140@01))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(declare-const sm@163@01 $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (as sm@163@01  $FVF<f>) ($FVF.lookup_g (as sm@161@01  $FVF<g>) x6@140@01))
  ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@141@01))))))))))))))
(push) ; 2
(set-option :timeout 10)
(assert (not (and
  (and
    (=
      ($FVF.lookup_g (as sm@161@01  $FVF<g>) x6@140@01)
      ($FVF.lookup_g (as sm@161@01  $FVF<g>) x6@140@01))
    (=
      ($FVF.lookup_g (as sm@157@01  $FVF<g>) x5@139@01)
      ($FVF.lookup_g (as sm@157@01  $FVF<g>) x5@139@01)))
  (=
    ($FVF.lookup_g (as sm@161@01  $FVF<g>) x6@140@01)
    ($FVF.lookup_g (as sm@157@01  $FVF<g>) x5@139@01)))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (and
  (and
    (=
      ($FVF.lookup_g (as sm@161@01  $FVF<g>) x6@140@01)
      ($FVF.lookup_g (as sm@161@01  $FVF<g>) x6@140@01))
    (=
      ($FVF.lookup_g (as sm@153@01  $FVF<g>) x4@138@01)
      ($FVF.lookup_g (as sm@153@01  $FVF<g>) x4@138@01)))
  (=
    ($FVF.lookup_g (as sm@161@01  $FVF<g>) x6@140@01)
    ($FVF.lookup_g (as sm@153@01  $FVF<g>) x4@138@01)))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (and
  (and
    (=
      ($FVF.lookup_g (as sm@161@01  $FVF<g>) x6@140@01)
      ($FVF.lookup_g (as sm@161@01  $FVF<g>) x6@140@01))
    (=
      ($FVF.lookup_g (as sm@149@01  $FVF<g>) x3@137@01)
      ($FVF.lookup_g (as sm@149@01  $FVF<g>) x3@137@01)))
  (=
    ($FVF.lookup_g (as sm@161@01  $FVF<g>) x6@140@01)
    ($FVF.lookup_g (as sm@149@01  $FVF<g>) x3@137@01)))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (and
  (and
    (=
      ($FVF.lookup_g (as sm@161@01  $FVF<g>) x6@140@01)
      ($FVF.lookup_g (as sm@161@01  $FVF<g>) x6@140@01))
    (=
      ($FVF.lookup_g (as sm@145@01  $FVF<g>) x2@136@01)
      ($FVF.lookup_g (as sm@145@01  $FVF<g>) x2@136@01)))
  (=
    ($FVF.lookup_g (as sm@161@01  $FVF<g>) x6@140@01)
    ($FVF.lookup_g (as sm@145@01  $FVF<g>) x2@136@01)))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (and
  (and
    (=
      ($FVF.lookup_g (as sm@161@01  $FVF<g>) x6@140@01)
      ($FVF.lookup_g (as sm@161@01  $FVF<g>) x6@140@01))
    (=
      ($FVF.lookup_g (as sm@142@01  $FVF<g>) x1@135@01)
      ($FVF.lookup_g (as sm@142@01  $FVF<g>) x1@135@01)))
  (=
    ($FVF.lookup_g (as sm@161@01  $FVF<g>) x6@140@01)
    ($FVF.lookup_g (as sm@142@01  $FVF<g>) x1@135@01)))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<=
  $Perm.No
  (ite
    (=
      ($FVF.lookup_g (as sm@161@01  $FVF<g>) x6@140@01)
      ($FVF.lookup_g (as sm@161@01  $FVF<g>) x6@140@01))
    $Perm.Write
    $Perm.No)))
(assert (<=
  (ite
    (=
      ($FVF.lookup_g (as sm@161@01  $FVF<g>) x6@140@01)
      ($FVF.lookup_g (as sm@161@01  $FVF<g>) x6@140@01))
    $Perm.Write
    $Perm.No)
  $Perm.Write))
(assert (=>
  (=
    ($FVF.lookup_g (as sm@161@01  $FVF<g>) x6@140@01)
    ($FVF.lookup_g (as sm@161@01  $FVF<g>) x6@140@01))
  (not (= ($FVF.lookup_g (as sm@161@01  $FVF<g>) x6@140@01) $Ref.null))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; test10(x1, x6)
; Precomputing data for removing quantified permissions
(define-fun pTaken@164@01 ((r $Ref)) $Perm
  (ite
    (= r x1@135@01)
    ($Perm.min (ite (= r x1@135@01) $Perm.Write $Perm.No) $Perm.Write)
    $Perm.No))
(define-fun pTaken@165@01 ((r $Ref)) $Perm
  (ite
    (= r x1@135@01)
    ($Perm.min
      (ite (= r x2@136@01) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@164@01 r)))
    $Perm.No))
(define-fun pTaken@166@01 ((r $Ref)) $Perm
  (ite
    (= r x1@135@01)
    ($Perm.min
      (ite (= r x3@137@01) $Perm.Write $Perm.No)
      (- (- $Perm.Write (pTaken@164@01 r)) (pTaken@165@01 r)))
    $Perm.No))
(define-fun pTaken@167@01 ((r $Ref)) $Perm
  (ite
    (= r x1@135@01)
    ($Perm.min
      (ite (= r x4@138@01) $Perm.Write $Perm.No)
      (-
        (- (- $Perm.Write (pTaken@164@01 r)) (pTaken@165@01 r))
        (pTaken@166@01 r)))
    $Perm.No))
(define-fun pTaken@168@01 ((r $Ref)) $Perm
  (ite
    (= r x1@135@01)
    ($Perm.min
      (ite (= r x5@139@01) $Perm.Write $Perm.No)
      (-
        (-
          (- (- $Perm.Write (pTaken@164@01 r)) (pTaken@165@01 r))
          (pTaken@166@01 r))
        (pTaken@167@01 r)))
    $Perm.No))
(define-fun pTaken@169@01 ((r $Ref)) $Perm
  (ite
    (= r x1@135@01)
    ($Perm.min
      (ite (= r x6@140@01) $Perm.Write $Perm.No)
      (-
        (-
          (-
            (- (- $Perm.Write (pTaken@164@01 r)) (pTaken@165@01 r))
            (pTaken@166@01 r))
          (pTaken@167@01 r))
        (pTaken@168@01 r)))
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
(assert (not (= (- $Perm.Write (pTaken@164@01 x1@135@01)) $Perm.No)))
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
  (=> (= r x1@135@01) (= (- $Perm.Write (pTaken@164@01 r)) $Perm.No))
  
  :qid |quant-u-5967|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r x1@135@01)
      (=
        ($FVF.lookup_g (as sm@161@01  $FVF<g>) r)
        ($FVF.lookup_g (as sm@142@01  $FVF<g>) r)))
    :pattern (($FVF.lookup_g (as sm@161@01  $FVF<g>) r))
    :pattern (($FVF.lookup_g (as sm@142@01  $FVF<g>) r))
    :qid |qp.fvfValDef34|))
  (forall ((r $Ref)) (!
    (=>
      (= r x2@136@01)
      (=
        ($FVF.lookup_g (as sm@161@01  $FVF<g>) r)
        ($FVF.lookup_g (as sm@144@01  $FVF<g>) r)))
    :pattern (($FVF.lookup_g (as sm@161@01  $FVF<g>) r))
    :pattern (($FVF.lookup_g (as sm@144@01  $FVF<g>) r))
    :qid |qp.fvfValDef35|))
  (forall ((r $Ref)) (!
    (=>
      (= r x3@137@01)
      (=
        ($FVF.lookup_g (as sm@161@01  $FVF<g>) r)
        ($FVF.lookup_g (as sm@148@01  $FVF<g>) r)))
    :pattern (($FVF.lookup_g (as sm@161@01  $FVF<g>) r))
    :pattern (($FVF.lookup_g (as sm@148@01  $FVF<g>) r))
    :qid |qp.fvfValDef36|))
  (forall ((r $Ref)) (!
    (=>
      (= r x4@138@01)
      (=
        ($FVF.lookup_g (as sm@161@01  $FVF<g>) r)
        ($FVF.lookup_g (as sm@152@01  $FVF<g>) r)))
    :pattern (($FVF.lookup_g (as sm@161@01  $FVF<g>) r))
    :pattern (($FVF.lookup_g (as sm@152@01  $FVF<g>) r))
    :qid |qp.fvfValDef37|))
  (forall ((r $Ref)) (!
    (=>
      (= r x5@139@01)
      (=
        ($FVF.lookup_g (as sm@161@01  $FVF<g>) r)
        ($FVF.lookup_g (as sm@156@01  $FVF<g>) r)))
    :pattern (($FVF.lookup_g (as sm@161@01  $FVF<g>) r))
    :pattern (($FVF.lookup_g (as sm@156@01  $FVF<g>) r))
    :qid |qp.fvfValDef38|))
  (forall ((r $Ref)) (!
    (=>
      (= r x6@140@01)
      (=
        ($FVF.lookup_g (as sm@161@01  $FVF<g>) r)
        ($FVF.lookup_g (as sm@160@01  $FVF<g>) r)))
    :pattern (($FVF.lookup_g (as sm@161@01  $FVF<g>) r))
    :pattern (($FVF.lookup_g (as sm@160@01  $FVF<g>) r))
    :qid |qp.fvfValDef39|))))
(set-option :timeout 0)
(push) ; 3
(assert (not (<
  $Perm.No
  (+
    (+
      (+
        (+
          (+ $Perm.Write (ite (= x1@135@01 x2@136@01) $Perm.Write $Perm.No))
          (ite (= x1@135@01 x3@137@01) $Perm.Write $Perm.No))
        (ite (= x1@135@01 x4@138@01) $Perm.Write $Perm.No))
      (ite (= x1@135@01 x5@139@01) $Perm.Write $Perm.No))
    (ite (= x1@135@01 x6@140@01) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const $k@170@01 $Perm)
(assert ($Perm.isReadVar $k@170@01))
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($FVF.lookup_g (as sm@161@01  $FVF<g>) x6@140@01)
  ($FVF.lookup_g (as sm@161@01  $FVF<g>) x1@135@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($FVF.lookup_g (as sm@157@01  $FVF<g>) x5@139@01)
  ($FVF.lookup_g (as sm@161@01  $FVF<g>) x1@135@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($FVF.lookup_g (as sm@153@01  $FVF<g>) x4@138@01)
  ($FVF.lookup_g (as sm@161@01  $FVF<g>) x1@135@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($FVF.lookup_g (as sm@149@01  $FVF<g>) x3@137@01)
  ($FVF.lookup_g (as sm@161@01  $FVF<g>) x1@135@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($FVF.lookup_g (as sm@145@01  $FVF<g>) x2@136@01)
  ($FVF.lookup_g (as sm@161@01  $FVF<g>) x1@135@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($FVF.lookup_g (as sm@142@01  $FVF<g>) x1@135@01)
  ($FVF.lookup_g (as sm@161@01  $FVF<g>) x1@135@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@171@01 ((r $Ref)) $Perm
  (ite
    (= r ($FVF.lookup_g (as sm@161@01  $FVF<g>) x1@135@01))
    ($Perm.min
      (ite
        (= r ($FVF.lookup_g (as sm@142@01  $FVF<g>) x1@135@01))
        $Perm.Write
        $Perm.No)
      $k@170@01)
    $Perm.No))
(define-fun pTaken@172@01 ((r $Ref)) $Perm
  (ite
    (= r ($FVF.lookup_g (as sm@161@01  $FVF<g>) x1@135@01))
    ($Perm.min
      (ite
        (= r ($FVF.lookup_g (as sm@161@01  $FVF<g>) x6@140@01))
        $Perm.Write
        $Perm.No)
      (- $k@170@01 (pTaken@171@01 r)))
    $Perm.No))
(define-fun pTaken@173@01 ((r $Ref)) $Perm
  (ite
    (= r ($FVF.lookup_g (as sm@161@01  $FVF<g>) x1@135@01))
    ($Perm.min
      (ite
        (= r ($FVF.lookup_g (as sm@157@01  $FVF<g>) x5@139@01))
        $Perm.Write
        $Perm.No)
      (- (- $k@170@01 (pTaken@171@01 r)) (pTaken@172@01 r)))
    $Perm.No))
(define-fun pTaken@174@01 ((r $Ref)) $Perm
  (ite
    (= r ($FVF.lookup_g (as sm@161@01  $FVF<g>) x1@135@01))
    ($Perm.min
      (ite
        (= r ($FVF.lookup_g (as sm@153@01  $FVF<g>) x4@138@01))
        $Perm.Write
        $Perm.No)
      (- (- (- $k@170@01 (pTaken@171@01 r)) (pTaken@172@01 r)) (pTaken@173@01 r)))
    $Perm.No))
(define-fun pTaken@175@01 ((r $Ref)) $Perm
  (ite
    (= r ($FVF.lookup_g (as sm@161@01  $FVF<g>) x1@135@01))
    ($Perm.min
      (ite
        (= r ($FVF.lookup_g (as sm@149@01  $FVF<g>) x3@137@01))
        $Perm.Write
        $Perm.No)
      (-
        (-
          (- (- $k@170@01 (pTaken@171@01 r)) (pTaken@172@01 r))
          (pTaken@173@01 r))
        (pTaken@174@01 r)))
    $Perm.No))
(define-fun pTaken@176@01 ((r $Ref)) $Perm
  (ite
    (= r ($FVF.lookup_g (as sm@161@01  $FVF<g>) x1@135@01))
    ($Perm.min
      (ite
        (= r ($FVF.lookup_g (as sm@145@01  $FVF<g>) x2@136@01))
        $Perm.Write
        $Perm.No)
      (-
        (-
          (-
            (- (- $k@170@01 (pTaken@171@01 r)) (pTaken@172@01 r))
            (pTaken@173@01 r))
          (pTaken@174@01 r))
        (pTaken@175@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Constrain original permissions $k@170@01
(assert (=>
  (not
    (=
      (ite
        (=
          ($FVF.lookup_g (as sm@142@01  $FVF<g>) x1@135@01)
          ($FVF.lookup_g (as sm@142@01  $FVF<g>) x1@135@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  (ite
    (=
      ($FVF.lookup_g (as sm@142@01  $FVF<g>) x1@135@01)
      ($FVF.lookup_g (as sm@142@01  $FVF<g>) x1@135@01))
    (<
      (ite
        (=
          ($FVF.lookup_g (as sm@142@01  $FVF<g>) x1@135@01)
          ($FVF.lookup_g (as sm@161@01  $FVF<g>) x1@135@01))
        $k@170@01
        $Perm.No)
      $Perm.Write)
    (<
      (ite
        (=
          ($FVF.lookup_g (as sm@142@01  $FVF<g>) x1@135@01)
          ($FVF.lookup_g (as sm@161@01  $FVF<g>) x1@135@01))
        $k@170@01
        $Perm.No)
      $Perm.No))))
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (= r ($FVF.lookup_g (as sm@161@01  $FVF<g>) x1@135@01))
    (= (- $k@170@01 (pTaken@171@01 r)) $Perm.No))
  
  :qid |quant-u-5970|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; Precomputing data for removing quantified permissions
(define-fun pTaken@177@01 ((r $Ref)) $Perm
  (ite
    (= r x6@140@01)
    ($Perm.min (ite (= r x6@140@01) $Perm.Write $Perm.No) $Perm.Write)
    $Perm.No))
(define-fun pTaken@178@01 ((r $Ref)) $Perm
  (ite
    (= r x6@140@01)
    ($Perm.min
      (ite (= r x2@136@01) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@177@01 r)))
    $Perm.No))
(define-fun pTaken@179@01 ((r $Ref)) $Perm
  (ite
    (= r x6@140@01)
    ($Perm.min
      (ite (= r x3@137@01) $Perm.Write $Perm.No)
      (- (- $Perm.Write (pTaken@177@01 r)) (pTaken@178@01 r)))
    $Perm.No))
(define-fun pTaken@180@01 ((r $Ref)) $Perm
  (ite
    (= r x6@140@01)
    ($Perm.min
      (ite (= r x4@138@01) $Perm.Write $Perm.No)
      (-
        (- (- $Perm.Write (pTaken@177@01 r)) (pTaken@178@01 r))
        (pTaken@179@01 r)))
    $Perm.No))
(define-fun pTaken@181@01 ((r $Ref)) $Perm
  (ite
    (= r x6@140@01)
    ($Perm.min
      (ite (= r x5@139@01) $Perm.Write $Perm.No)
      (-
        (-
          (- (- $Perm.Write (pTaken@177@01 r)) (pTaken@178@01 r))
          (pTaken@179@01 r))
        (pTaken@180@01 r)))
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
(assert (not (= (- $Perm.Write (pTaken@177@01 x6@140@01)) $Perm.No)))
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
  (=> (= r x6@140@01) (= (- $Perm.Write (pTaken@177@01 r)) $Perm.No))
  
  :qid |quant-u-5973|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r x1@135@01)
      (=
        ($FVF.lookup_g (as sm@161@01  $FVF<g>) r)
        ($FVF.lookup_g (as sm@142@01  $FVF<g>) r)))
    :pattern (($FVF.lookup_g (as sm@161@01  $FVF<g>) r))
    :pattern (($FVF.lookup_g (as sm@142@01  $FVF<g>) r))
    :qid |qp.fvfValDef34|))
  (forall ((r $Ref)) (!
    (=>
      (= r x2@136@01)
      (=
        ($FVF.lookup_g (as sm@161@01  $FVF<g>) r)
        ($FVF.lookup_g (as sm@144@01  $FVF<g>) r)))
    :pattern (($FVF.lookup_g (as sm@161@01  $FVF<g>) r))
    :pattern (($FVF.lookup_g (as sm@144@01  $FVF<g>) r))
    :qid |qp.fvfValDef35|))
  (forall ((r $Ref)) (!
    (=>
      (= r x3@137@01)
      (=
        ($FVF.lookup_g (as sm@161@01  $FVF<g>) r)
        ($FVF.lookup_g (as sm@148@01  $FVF<g>) r)))
    :pattern (($FVF.lookup_g (as sm@161@01  $FVF<g>) r))
    :pattern (($FVF.lookup_g (as sm@148@01  $FVF<g>) r))
    :qid |qp.fvfValDef36|))
  (forall ((r $Ref)) (!
    (=>
      (= r x4@138@01)
      (=
        ($FVF.lookup_g (as sm@161@01  $FVF<g>) r)
        ($FVF.lookup_g (as sm@152@01  $FVF<g>) r)))
    :pattern (($FVF.lookup_g (as sm@161@01  $FVF<g>) r))
    :pattern (($FVF.lookup_g (as sm@152@01  $FVF<g>) r))
    :qid |qp.fvfValDef37|))
  (forall ((r $Ref)) (!
    (=>
      (= r x5@139@01)
      (=
        ($FVF.lookup_g (as sm@161@01  $FVF<g>) r)
        ($FVF.lookup_g (as sm@156@01  $FVF<g>) r)))
    :pattern (($FVF.lookup_g (as sm@161@01  $FVF<g>) r))
    :pattern (($FVF.lookup_g (as sm@156@01  $FVF<g>) r))
    :qid |qp.fvfValDef38|))
  (forall ((r $Ref)) (!
    (=>
      (= r x6@140@01)
      (=
        ($FVF.lookup_g (as sm@161@01  $FVF<g>) r)
        ($FVF.lookup_g (as sm@160@01  $FVF<g>) r)))
    :pattern (($FVF.lookup_g (as sm@161@01  $FVF<g>) r))
    :pattern (($FVF.lookup_g (as sm@160@01  $FVF<g>) r))
    :qid |qp.fvfValDef39|))))
(set-option :timeout 0)
(push) ; 3
(assert (not (<
  $Perm.No
  (+
    (+
      (+
        (+
          (+
            (ite (= x6@140@01 x1@135@01) $Perm.Write $Perm.No)
            (ite (= x6@140@01 x2@136@01) $Perm.Write $Perm.No))
          (ite (= x6@140@01 x3@137@01) $Perm.Write $Perm.No))
        (ite (= x6@140@01 x4@138@01) $Perm.Write $Perm.No))
      (ite (= x6@140@01 x5@139@01) $Perm.Write $Perm.No))
    $Perm.Write))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const $k@182@01 $Perm)
(assert ($Perm.isReadVar $k@182@01))
; Precomputing data for removing quantified permissions
(define-fun pTaken@183@01 ((r $Ref)) $Perm
  (ite
    (= r ($FVF.lookup_g (as sm@161@01  $FVF<g>) x6@140@01))
    ($Perm.min
      (ite
        (= r ($FVF.lookup_g (as sm@161@01  $FVF<g>) x6@140@01))
        $Perm.Write
        $Perm.No)
      $k@182@01)
    $Perm.No))
(define-fun pTaken@184@01 ((r $Ref)) $Perm
  (ite
    (= r ($FVF.lookup_g (as sm@161@01  $FVF<g>) x6@140@01))
    ($Perm.min
      (ite
        (= r ($FVF.lookup_g (as sm@142@01  $FVF<g>) x1@135@01))
        (- $Perm.Write (pTaken@171@01 r))
        $Perm.No)
      (- $k@182@01 (pTaken@183@01 r)))
    $Perm.No))
(define-fun pTaken@185@01 ((r $Ref)) $Perm
  (ite
    (= r ($FVF.lookup_g (as sm@161@01  $FVF<g>) x6@140@01))
    ($Perm.min
      (ite
        (= r ($FVF.lookup_g (as sm@157@01  $FVF<g>) x5@139@01))
        $Perm.Write
        $Perm.No)
      (- (- $k@182@01 (pTaken@183@01 r)) (pTaken@184@01 r)))
    $Perm.No))
(define-fun pTaken@186@01 ((r $Ref)) $Perm
  (ite
    (= r ($FVF.lookup_g (as sm@161@01  $FVF<g>) x6@140@01))
    ($Perm.min
      (ite
        (= r ($FVF.lookup_g (as sm@153@01  $FVF<g>) x4@138@01))
        $Perm.Write
        $Perm.No)
      (- (- (- $k@182@01 (pTaken@183@01 r)) (pTaken@184@01 r)) (pTaken@185@01 r)))
    $Perm.No))
(define-fun pTaken@187@01 ((r $Ref)) $Perm
  (ite
    (= r ($FVF.lookup_g (as sm@161@01  $FVF<g>) x6@140@01))
    ($Perm.min
      (ite
        (= r ($FVF.lookup_g (as sm@149@01  $FVF<g>) x3@137@01))
        $Perm.Write
        $Perm.No)
      (-
        (-
          (- (- $k@182@01 (pTaken@183@01 r)) (pTaken@184@01 r))
          (pTaken@185@01 r))
        (pTaken@186@01 r)))
    $Perm.No))
(define-fun pTaken@188@01 ((r $Ref)) $Perm
  (ite
    (= r ($FVF.lookup_g (as sm@161@01  $FVF<g>) x6@140@01))
    ($Perm.min
      (ite
        (= r ($FVF.lookup_g (as sm@145@01  $FVF<g>) x2@136@01))
        $Perm.Write
        $Perm.No)
      (-
        (-
          (-
            (- (- $k@182@01 (pTaken@183@01 r)) (pTaken@184@01 r))
            (pTaken@185@01 r))
          (pTaken@186@01 r))
        (pTaken@187@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Constrain original permissions $k@182@01
(assert (=>
  (not
    (=
      (ite
        (=
          ($FVF.lookup_g (as sm@161@01  $FVF<g>) x6@140@01)
          ($FVF.lookup_g (as sm@161@01  $FVF<g>) x6@140@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  (ite
    (=
      ($FVF.lookup_g (as sm@161@01  $FVF<g>) x6@140@01)
      ($FVF.lookup_g (as sm@161@01  $FVF<g>) x6@140@01))
    (<
      (ite
        (=
          ($FVF.lookup_g (as sm@161@01  $FVF<g>) x6@140@01)
          ($FVF.lookup_g (as sm@161@01  $FVF<g>) x6@140@01))
        $k@182@01
        $Perm.No)
      $Perm.Write)
    (<
      (ite
        (=
          ($FVF.lookup_g (as sm@161@01  $FVF<g>) x6@140@01)
          ($FVF.lookup_g (as sm@161@01  $FVF<g>) x6@140@01))
        $k@182@01
        $Perm.No)
      $Perm.No))))
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (= r ($FVF.lookup_g (as sm@161@01  $FVF<g>) x6@140@01))
    (= (- $k@182@01 (pTaken@183@01 r)) $Perm.No))
  
  :qid |quant-u-5976|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const $t@189@01 $Snap)
(assert (= $t@189@01 ($Snap.combine ($Snap.first $t@189@01) ($Snap.second $t@189@01))))
(declare-const x@190@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (x in Set(x1, x2))
; [eval] Set(x1, x2)
(assert (Set_in x@190@01 (Set_unionone (Set_singleton x1@135@01) x6@140@01)))
(declare-const $k@191@01 $Perm)
(assert ($Perm.isReadVar $k@191@01))
(pop) ; 3
(declare-fun inv@192@01 ($Ref) $Ref)
(declare-fun img@193@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@191@01))
; Nested auxiliary terms: non-globals
(push) ; 3
(assert (not (forall ((x@190@01 $Ref)) (!
  (=>
    (Set_in x@190@01 (Set_unionone (Set_singleton x1@135@01) x6@140@01))
    (or (= $k@191@01 $Perm.No) (< $Perm.No $k@191@01)))
  
  :qid |quant-u-5977|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@190@01 $Ref) (x2@190@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in x1@190@01 (Set_unionone (Set_singleton x1@135@01) x6@140@01))
        (< $Perm.No $k@191@01))
      (and
        (Set_in x2@190@01 (Set_unionone (Set_singleton x1@135@01) x6@140@01))
        (< $Perm.No $k@191@01))
      (= x1@190@01 x2@190@01))
    (= x1@190@01 x2@190@01))
  
  :qid |g-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@190@01 $Ref)) (!
  (=>
    (and
      (Set_in x@190@01 (Set_unionone (Set_singleton x1@135@01) x6@140@01))
      (< $Perm.No $k@191@01))
    (and (= (inv@192@01 x@190@01) x@190@01) (img@193@01 x@190@01)))
  :pattern ((Set_in x@190@01 (Set_unionone (Set_singleton x1@135@01) x6@140@01)))
  :pattern ((inv@192@01 x@190@01))
  :pattern ((img@193@01 x@190@01))
  :qid |quant-u-5978|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@193@01 r)
      (and
        (Set_in (inv@192@01 r) (Set_unionone (Set_singleton x1@135@01) x6@140@01))
        (< $Perm.No $k@191@01)))
    (= (inv@192@01 r) r))
  :pattern ((inv@192@01 r))
  :qid |g-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((x@190@01 $Ref)) (!
  (<= $Perm.No $k@191@01)
  :pattern ((Set_in x@190@01 (Set_unionone (Set_singleton x1@135@01) x6@140@01)))
  :pattern ((inv@192@01 x@190@01))
  :pattern ((img@193@01 x@190@01))
  :qid |g-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((x@190@01 $Ref)) (!
  (<= $k@191@01 $Perm.Write)
  :pattern ((Set_in x@190@01 (Set_unionone (Set_singleton x1@135@01) x6@140@01)))
  :pattern ((inv@192@01 x@190@01))
  :pattern ((img@193@01 x@190@01))
  :qid |g-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((x@190@01 $Ref)) (!
  (=>
    (and
      (Set_in x@190@01 (Set_unionone (Set_singleton x1@135@01) x6@140@01))
      (< $Perm.No $k@191@01))
    (not (= x@190@01 $Ref.null)))
  :pattern ((Set_in x@190@01 (Set_unionone (Set_singleton x1@135@01) x6@140@01)))
  :pattern ((inv@192@01 x@190@01))
  :pattern ((img@193@01 x@190@01))
  :qid |g-permImpliesNonNull|)))
(declare-const x@194@01 $Ref)
(push) ; 3
; [eval] (x in Set(x1, x2))
; [eval] Set(x1, x2)
(assert (Set_in x@194@01 (Set_unionone (Set_singleton x1@135@01) x6@140@01)))
(declare-const sm@195@01 $FVF<g>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r x2@136@01)
    (=
      ($FVF.lookup_g (as sm@195@01  $FVF<g>) r)
      ($FVF.lookup_g (as sm@144@01  $FVF<g>) r)))
  :pattern (($FVF.lookup_g (as sm@195@01  $FVF<g>) r))
  :pattern (($FVF.lookup_g (as sm@144@01  $FVF<g>) r))
  :qid |qp.fvfValDef43|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x3@137@01)
    (=
      ($FVF.lookup_g (as sm@195@01  $FVF<g>) r)
      ($FVF.lookup_g (as sm@148@01  $FVF<g>) r)))
  :pattern (($FVF.lookup_g (as sm@195@01  $FVF<g>) r))
  :pattern (($FVF.lookup_g (as sm@148@01  $FVF<g>) r))
  :qid |qp.fvfValDef44|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x4@138@01)
    (=
      ($FVF.lookup_g (as sm@195@01  $FVF<g>) r)
      ($FVF.lookup_g (as sm@152@01  $FVF<g>) r)))
  :pattern (($FVF.lookup_g (as sm@195@01  $FVF<g>) r))
  :pattern (($FVF.lookup_g (as sm@152@01  $FVF<g>) r))
  :qid |qp.fvfValDef45|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x5@139@01)
    (=
      ($FVF.lookup_g (as sm@195@01  $FVF<g>) r)
      ($FVF.lookup_g (as sm@156@01  $FVF<g>) r)))
  :pattern (($FVF.lookup_g (as sm@195@01  $FVF<g>) r))
  :pattern (($FVF.lookup_g (as sm@156@01  $FVF<g>) r))
  :qid |qp.fvfValDef46|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@193@01 r)
        (Set_in (inv@192@01 r) (Set_unionone (Set_singleton x1@135@01) x6@140@01)))
      (< $Perm.No $k@191@01)
      false)
    (=
      ($FVF.lookup_g (as sm@195@01  $FVF<g>) r)
      ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@189@01)) r)))
  :pattern (($FVF.lookup_g (as sm@195@01  $FVF<g>) r))
  :pattern (($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@189@01)) r))
  :qid |qp.fvfValDef47|)))
(declare-const pm@196@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_g (as pm@196@01  $FPM) r)
    (+
      (+
        (+
          (+
            (ite (= r x2@136@01) $Perm.Write $Perm.No)
            (ite (= r x3@137@01) $Perm.Write $Perm.No))
          (ite (= r x4@138@01) $Perm.Write $Perm.No))
        (ite (= r x5@139@01) $Perm.Write $Perm.No))
      (ite
        (and
          (img@193@01 r)
          (Set_in (inv@192@01 r) (Set_unionone (Set_singleton x1@135@01) x6@140@01)))
        $k@191@01
        $Perm.No)))
  :pattern (($FVF.perm_g (as pm@196@01  $FPM) r))
  :qid |qp.resPrmSumDef48|)))
(push) ; 4
(assert (not (< $Perm.No ($FVF.perm_g (as pm@196@01  $FPM) x@194@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const $k@197@01 $Perm)
(assert ($Perm.isReadVar $k@197@01))
(pop) ; 3
(declare-fun inv@198@01 ($Ref) $Ref)
(declare-fun img@199@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert (forall ((r $Ref)) (!
  (=>
    (= r x2@136@01)
    (=
      ($FVF.lookup_g (as sm@195@01  $FVF<g>) r)
      ($FVF.lookup_g (as sm@144@01  $FVF<g>) r)))
  :pattern (($FVF.lookup_g (as sm@195@01  $FVF<g>) r))
  :pattern (($FVF.lookup_g (as sm@144@01  $FVF<g>) r))
  :qid |qp.fvfValDef43|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x3@137@01)
    (=
      ($FVF.lookup_g (as sm@195@01  $FVF<g>) r)
      ($FVF.lookup_g (as sm@148@01  $FVF<g>) r)))
  :pattern (($FVF.lookup_g (as sm@195@01  $FVF<g>) r))
  :pattern (($FVF.lookup_g (as sm@148@01  $FVF<g>) r))
  :qid |qp.fvfValDef44|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x4@138@01)
    (=
      ($FVF.lookup_g (as sm@195@01  $FVF<g>) r)
      ($FVF.lookup_g (as sm@152@01  $FVF<g>) r)))
  :pattern (($FVF.lookup_g (as sm@195@01  $FVF<g>) r))
  :pattern (($FVF.lookup_g (as sm@152@01  $FVF<g>) r))
  :qid |qp.fvfValDef45|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x5@139@01)
    (=
      ($FVF.lookup_g (as sm@195@01  $FVF<g>) r)
      ($FVF.lookup_g (as sm@156@01  $FVF<g>) r)))
  :pattern (($FVF.lookup_g (as sm@195@01  $FVF<g>) r))
  :pattern (($FVF.lookup_g (as sm@156@01  $FVF<g>) r))
  :qid |qp.fvfValDef46|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@193@01 r)
        (Set_in (inv@192@01 r) (Set_unionone (Set_singleton x1@135@01) x6@140@01)))
      (< $Perm.No $k@191@01)
      false)
    (=
      ($FVF.lookup_g (as sm@195@01  $FVF<g>) r)
      ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@189@01)) r)))
  :pattern (($FVF.lookup_g (as sm@195@01  $FVF<g>) r))
  :pattern (($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@189@01)) r))
  :qid |qp.fvfValDef47|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_g (as pm@196@01  $FPM) r)
    (+
      (+
        (+
          (+
            (ite (= r x2@136@01) $Perm.Write $Perm.No)
            (ite (= r x3@137@01) $Perm.Write $Perm.No))
          (ite (= r x4@138@01) $Perm.Write $Perm.No))
        (ite (= r x5@139@01) $Perm.Write $Perm.No))
      (ite
        (and
          (img@193@01 r)
          (Set_in (inv@192@01 r) (Set_unionone (Set_singleton x1@135@01) x6@140@01)))
        $k@191@01
        $Perm.No)))
  :pattern (($FVF.perm_g (as pm@196@01  $FPM) r))
  :qid |qp.resPrmSumDef48|)))
(assert ($Perm.isReadVar $k@197@01))
; Nested auxiliary terms: non-globals
(push) ; 3
(assert (not (forall ((x@194@01 $Ref)) (!
  (=>
    (Set_in x@194@01 (Set_unionone (Set_singleton x1@135@01) x6@140@01))
    (or (= $k@197@01 $Perm.No) (< $Perm.No $k@197@01)))
  
  :qid |quant-u-5979|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@194@01 $Ref) (x2@194@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in x1@194@01 (Set_unionone (Set_singleton x1@135@01) x6@140@01))
        (< $Perm.No $k@197@01))
      (and
        (Set_in x2@194@01 (Set_unionone (Set_singleton x1@135@01) x6@140@01))
        (< $Perm.No $k@197@01))
      (=
        ($FVF.lookup_g (as sm@195@01  $FVF<g>) x1@194@01)
        ($FVF.lookup_g (as sm@195@01  $FVF<g>) x2@194@01)))
    (= x1@194@01 x2@194@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1
; ---------- test06 ----------
(declare-const xs@200@01 Set<$Ref>)
(declare-const y1@201@01 $Ref)
(declare-const y2@202@01 $Ref)
(declare-const y3@203@01 $Ref)
(declare-const xs@204@01 Set<$Ref>)
(declare-const y1@205@01 $Ref)
(declare-const y2@206@01 $Ref)
(declare-const y3@207@01 $Ref)
(push) ; 1
(declare-const $t@208@01 $Snap)
(assert (= $t@208@01 ($Snap.combine ($Snap.first $t@208@01) ($Snap.second $t@208@01))))
(declare-const x@209@01 $Ref)
(push) ; 2
; [eval] (x in xs)
(assert (Set_in x@209@01 xs@204@01))
(pop) ; 2
(declare-fun inv@210@01 ($Ref) $Ref)
(declare-fun img@211@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@209@01 $Ref) (x2@209@01 $Ref)) (!
  (=>
    (and
      (Set_in x1@209@01 xs@204@01)
      (Set_in x2@209@01 xs@204@01)
      (= x1@209@01 x2@209@01))
    (= x1@209@01 x2@209@01))
  
  :qid |g-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@209@01 $Ref)) (!
  (=>
    (Set_in x@209@01 xs@204@01)
    (and (= (inv@210@01 x@209@01) x@209@01) (img@211@01 x@209@01)))
  :pattern ((Set_in x@209@01 xs@204@01))
  :pattern ((inv@210@01 x@209@01))
  :pattern ((img@211@01 x@209@01))
  :qid |quant-u-5981|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@211@01 r) (Set_in (inv@210@01 r) xs@204@01))
    (= (inv@210@01 r) r))
  :pattern ((inv@210@01 r))
  :qid |g-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@209@01 $Ref)) (!
  (=> (Set_in x@209@01 xs@204@01) (not (= x@209@01 $Ref.null)))
  :pattern ((Set_in x@209@01 xs@204@01))
  :pattern ((inv@210@01 x@209@01))
  :pattern ((img@211@01 x@209@01))
  :qid |g-permImpliesNonNull|)))
(assert (=
  ($Snap.second $t@208@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@208@01))
    ($Snap.second ($Snap.second $t@208@01)))))
(assert (= ($Snap.first ($Snap.second $t@208@01)) $Snap.unit))
; [eval] (forall x1: Ref, x2: Ref :: { (x1 in xs), (x2 in xs) } (x1 in xs) && ((x2 in xs) && x1 != x2) ==> x1.g != x2.g)
(declare-const x1@212@01 $Ref)
(declare-const x2@213@01 $Ref)
(push) ; 2
; [eval] (x1 in xs) && ((x2 in xs) && x1 != x2) ==> x1.g != x2.g
; [eval] (x1 in xs) && ((x2 in xs) && x1 != x2)
; [eval] (x1 in xs)
(push) ; 3
; [then-branch: 2 | !(x1@212@01 in xs@204@01) | live]
; [else-branch: 2 | x1@212@01 in xs@204@01 | live]
(push) ; 4
; [then-branch: 2 | !(x1@212@01 in xs@204@01)]
(assert (not (Set_in x1@212@01 xs@204@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 2 | x1@212@01 in xs@204@01]
(assert (Set_in x1@212@01 xs@204@01))
; [eval] (x2 in xs)
(push) ; 5
; [then-branch: 3 | !(x2@213@01 in xs@204@01) | live]
; [else-branch: 3 | x2@213@01 in xs@204@01 | live]
(push) ; 6
; [then-branch: 3 | !(x2@213@01 in xs@204@01)]
(assert (not (Set_in x2@213@01 xs@204@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 3 | x2@213@01 in xs@204@01]
(assert (Set_in x2@213@01 xs@204@01))
; [eval] x1 != x2
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (Set_in x2@213@01 xs@204@01) (not (Set_in x2@213@01 xs@204@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in x1@212@01 xs@204@01)
  (and
    (Set_in x1@212@01 xs@204@01)
    (or (Set_in x2@213@01 xs@204@01) (not (Set_in x2@213@01 xs@204@01))))))
(assert (or (Set_in x1@212@01 xs@204@01) (not (Set_in x1@212@01 xs@204@01))))
(push) ; 3
; [then-branch: 4 | x1@212@01 in xs@204@01 && x2@213@01 in xs@204@01 && x1@212@01 != x2@213@01 | live]
; [else-branch: 4 | !(x1@212@01 in xs@204@01 && x2@213@01 in xs@204@01 && x1@212@01 != x2@213@01) | live]
(push) ; 4
; [then-branch: 4 | x1@212@01 in xs@204@01 && x2@213@01 in xs@204@01 && x1@212@01 != x2@213@01]
(assert (and
  (Set_in x1@212@01 xs@204@01)
  (and (Set_in x2@213@01 xs@204@01) (not (= x1@212@01 x2@213@01)))))
; [eval] x1.g != x2.g
(push) ; 5
(assert (not (and (img@211@01 x1@212@01) (Set_in (inv@210@01 x1@212@01) xs@204@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (and (img@211@01 x2@213@01) (Set_in (inv@210@01 x2@213@01) xs@204@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 4 | !(x1@212@01 in xs@204@01 && x2@213@01 in xs@204@01 && x1@212@01 != x2@213@01)]
(assert (not
  (and
    (Set_in x1@212@01 xs@204@01)
    (and (Set_in x2@213@01 xs@204@01) (not (= x1@212@01 x2@213@01))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (Set_in x1@212@01 xs@204@01)
    (and (Set_in x2@213@01 xs@204@01) (not (= x1@212@01 x2@213@01))))
  (and
    (Set_in x1@212@01 xs@204@01)
    (Set_in x2@213@01 xs@204@01)
    (not (= x1@212@01 x2@213@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in x1@212@01 xs@204@01)
      (and (Set_in x2@213@01 xs@204@01) (not (= x1@212@01 x2@213@01)))))
  (and
    (Set_in x1@212@01 xs@204@01)
    (and (Set_in x2@213@01 xs@204@01) (not (= x1@212@01 x2@213@01))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x1@212@01 $Ref) (x2@213@01 $Ref)) (!
  (and
    (=>
      (Set_in x1@212@01 xs@204@01)
      (and
        (Set_in x1@212@01 xs@204@01)
        (or (Set_in x2@213@01 xs@204@01) (not (Set_in x2@213@01 xs@204@01)))))
    (or (Set_in x1@212@01 xs@204@01) (not (Set_in x1@212@01 xs@204@01)))
    (=>
      (and
        (Set_in x1@212@01 xs@204@01)
        (and (Set_in x2@213@01 xs@204@01) (not (= x1@212@01 x2@213@01))))
      (and
        (Set_in x1@212@01 xs@204@01)
        (Set_in x2@213@01 xs@204@01)
        (not (= x1@212@01 x2@213@01))))
    (or
      (not
        (and
          (Set_in x1@212@01 xs@204@01)
          (and (Set_in x2@213@01 xs@204@01) (not (= x1@212@01 x2@213@01)))))
      (and
        (Set_in x1@212@01 xs@204@01)
        (and (Set_in x2@213@01 xs@204@01) (not (= x1@212@01 x2@213@01))))))
  :pattern ((Set_in x1@212@01 xs@204@01) (Set_in x2@213@01 xs@204@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/generalised_shape.vpr@85@12@85@88-aux|)))
(assert (forall ((x1@212@01 $Ref) (x2@213@01 $Ref)) (!
  (=>
    (and
      (Set_in x1@212@01 xs@204@01)
      (and (Set_in x2@213@01 xs@204@01) (not (= x1@212@01 x2@213@01))))
    (not
      (=
        ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@208@01)) x1@212@01)
        ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@208@01)) x2@213@01))))
  :pattern ((Set_in x1@212@01 xs@204@01) (Set_in x2@213@01 xs@204@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/generalised_shape.vpr@85@12@85@88|)))
(assert (=
  ($Snap.second ($Snap.second $t@208@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@208@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@208@01))))))
(declare-const x@214@01 $Ref)
(push) ; 2
; [eval] (x in xs)
(assert (Set_in x@214@01 xs@204@01))
(push) ; 3
(assert (not (and (img@211@01 x@214@01) (Set_in (inv@210@01 x@214@01) xs@204@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@215@01 ($Ref) $Ref)
(declare-fun img@216@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@214@01 $Ref) (x2@214@01 $Ref)) (!
  (=>
    (and
      (Set_in x1@214@01 xs@204@01)
      (Set_in x2@214@01 xs@204@01)
      (=
        ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@208@01)) x1@214@01)
        ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@208@01)) x2@214@01)))
    (= x1@214@01 x2@214@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@214@01 $Ref)) (!
  (=>
    (Set_in x@214@01 xs@204@01)
    (and
      (=
        (inv@215@01 ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@208@01)) x@214@01))
        x@214@01)
      (img@216@01 ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@208@01)) x@214@01))))
  :pattern (($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@208@01)) x@214@01))
  :qid |quant-u-5983|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@216@01 r) (Set_in (inv@215@01 r) xs@204@01))
    (=
      ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@208@01)) (inv@215@01 r))
      r))
  :pattern ((inv@215@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@214@01 $Ref)) (!
  (=>
    (Set_in x@214@01 xs@204@01)
    (not
      (=
        ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@208@01)) x@214@01)
        $Ref.null)))
  :pattern (($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@208@01)) x@214@01))
  :qid |f-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@208@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@208@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@208@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@208@01))))
  $Snap.unit))
; [eval] (y1 in xs)
(assert (Set_in y1@205@01 xs@204@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@208@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@208@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@208@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@208@01)))))
  $Snap.unit))
; [eval] (y2 in xs)
(assert (Set_in y2@206@01 xs@204@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@208@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@208@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@208@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@208@01))))))
  $Snap.unit))
; [eval] (y3 in xs)
(assert (Set_in y3@207@01 xs@204@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@208@01))))))
  $Snap.unit))
; [eval] y1 != y2
(assert (not (= y1@205@01 y2@206@01)))
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
(declare-const a@217@01 Int)
; [exec]
; inhale y1.g != null
(declare-const $t@218@01 $Snap)
(assert (= $t@218@01 $Snap.unit))
; [eval] y1.g != null
(push) ; 3
(assert (not (and (img@211@01 y1@205@01) (Set_in (inv@210@01 y1@205@01) xs@204@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not
  (=
    ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@208@01)) y1@205@01)
    $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale y2.g != null
(declare-const $t@219@01 $Snap)
(assert (= $t@219@01 $Snap.unit))
; [eval] y2.g != null
(set-option :timeout 0)
(push) ; 3
(assert (not (and (img@211@01 y2@206@01) (Set_in (inv@210@01 y2@206@01) xs@204@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not
  (=
    ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@208@01)) y2@206@01)
    $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; a := y1.g.f
(set-option :timeout 0)
(push) ; 3
(assert (not (and (img@211@01 y1@205@01) (Set_in (inv@210@01 y1@205@01) xs@204@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (and
  (img@216@01 ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@208@01)) y1@205@01))
  (Set_in (inv@215@01 ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@208@01)) y1@205@01)) xs@204@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const a@220@01 Int)
(assert (=
  a@220@01
  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@208@01)))) ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@208@01)) y1@205@01))))
; [exec]
; assert y1.g != y2.g
; [eval] y1.g != y2.g
(push) ; 3
(assert (not (and (img@211@01 y1@205@01) (Set_in (inv@210@01 y1@205@01) xs@204@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (and (img@211@01 y2@206@01) (Set_in (inv@210@01 y2@206@01) xs@204@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (not
  (=
    ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@208@01)) y1@205@01)
    ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@208@01)) y2@206@01)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not
  (=
    ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@208@01)) y1@205@01)
    ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@208@01)) y2@206@01))))
; [exec]
; assert y1.g != y3.g || y2.g != y3.g
; [eval] y1.g != y3.g || y2.g != y3.g
; [eval] y1.g != y3.g
(push) ; 3
(assert (not (and (img@211@01 y1@205@01) (Set_in (inv@210@01 y1@205@01) xs@204@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (and (img@211@01 y3@207@01) (Set_in (inv@210@01 y3@207@01) xs@204@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
; [then-branch: 5 | Lookup(g, First:($t@208@01), y1@205@01) != Lookup(g, First:($t@208@01), y3@207@01) | live]
; [else-branch: 5 | Lookup(g, First:($t@208@01), y1@205@01) == Lookup(g, First:($t@208@01), y3@207@01) | live]
(push) ; 4
; [then-branch: 5 | Lookup(g, First:($t@208@01), y1@205@01) != Lookup(g, First:($t@208@01), y3@207@01)]
(assert (not
  (=
    ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@208@01)) y1@205@01)
    ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@208@01)) y3@207@01))))
(pop) ; 4
(push) ; 4
; [else-branch: 5 | Lookup(g, First:($t@208@01), y1@205@01) == Lookup(g, First:($t@208@01), y3@207@01)]
(assert (=
  ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@208@01)) y1@205@01)
  ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@208@01)) y3@207@01)))
; [eval] y2.g != y3.g
(push) ; 5
(assert (not (and (img@211@01 y2@206@01) (Set_in (inv@210@01 y2@206@01) xs@204@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (and (img@211@01 y3@207@01) (Set_in (inv@210@01 y3@207@01) xs@204@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or
  (=
    ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@208@01)) y1@205@01)
    ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@208@01)) y3@207@01))
  (not
    (=
      ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@208@01)) y1@205@01)
      ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@208@01)) y3@207@01)))))
(push) ; 3
(assert (not (or
  (not
    (=
      ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@208@01)) y1@205@01)
      ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@208@01)) y3@207@01)))
  (not
    (=
      ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@208@01)) y2@206@01)
      ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@208@01)) y3@207@01))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (or
  (not
    (=
      ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@208@01)) y1@205@01)
      ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@208@01)) y3@207@01)))
  (not
    (=
      ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@208@01)) y2@206@01)
      ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@208@01)) y3@207@01)))))
; [exec]
; assert y1.g != y3.g && y2.g != y3.g
; [eval] y1.g != y3.g
(push) ; 3
(assert (not (and (img@211@01 y1@205@01) (Set_in (inv@210@01 y1@205@01) xs@204@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (and (img@211@01 y3@207@01) (Set_in (inv@210@01 y3@207@01) xs@204@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (not
  (=
    ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@208@01)) y1@205@01)
    ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@208@01)) y3@207@01)))))
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
(declare-const sm@221@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@216@01 r) (Set_in (inv@215@01 r) xs@204@01))
    (=
      ($FVF.lookup_f (as sm@221@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@208@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@221@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@208@01)))) r))
  :qid |qp.fvfValDef49|)))
(declare-const pm@222@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@222@01  $FPM) r)
    (ite
      (and (img@216@01 r) (Set_in (inv@215@01 r) xs@204@01))
      $Perm.Write
      $Perm.No))
  :pattern (($FVF.perm_f (as pm@222@01  $FPM) r))
  :qid |qp.resPrmSumDef50|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@222@01  $FPM) r) $Perm.Write)
  :pattern ((inv@215@01 r))
  :qid |qp-fld-prm-bnd|)))
(declare-const sm@223@01 $FVF<g>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@211@01 r) (Set_in (inv@210@01 r) xs@204@01))
    (=
      ($FVF.lookup_g (as sm@223@01  $FVF<g>) r)
      ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@208@01)) r)))
  :pattern (($FVF.lookup_g (as sm@223@01  $FVF<g>) r))
  :pattern (($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@208@01)) r))
  :qid |qp.fvfValDef51|)))
(declare-const pm@224@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_g (as pm@224@01  $FPM) r)
    (ite
      (and (img@211@01 r) (Set_in (inv@210@01 r) xs@204@01))
      $Perm.Write
      $Perm.No))
  :pattern (($FVF.perm_g (as pm@224@01  $FPM) r))
  :qid |qp.resPrmSumDef52|)))
; Assume upper permission bound for field g
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_g (as pm@224@01  $FPM) r) $Perm.Write)
  :pattern ((inv@210@01 r))
  :qid |qp-fld-prm-bnd|)))
; [eval] y1.g != y3.g
(set-option :timeout 0)
(push) ; 3
(assert (not (and (img@211@01 y1@205@01) (Set_in (inv@210@01 y1@205@01) xs@204@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (and (img@211@01 y3@207@01) (Set_in (inv@210@01 y3@207@01) xs@204@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (not
  (=
    ($FVF.lookup_g (as sm@223@01  $FVF<g>) y1@205@01)
    ($FVF.lookup_g (as sm@223@01  $FVF<g>) y3@207@01)))))
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
(declare-const sm@225@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@216@01 r) (Set_in (inv@215@01 r) xs@204@01))
    (=
      ($FVF.lookup_f (as sm@225@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@208@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@225@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@208@01)))) r))
  :qid |qp.fvfValDef53|)))
(declare-const pm@226@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@226@01  $FPM) r)
    (ite
      (and (img@216@01 r) (Set_in (inv@215@01 r) xs@204@01))
      $Perm.Write
      $Perm.No))
  :pattern (($FVF.perm_f (as pm@226@01  $FPM) r))
  :qid |qp.resPrmSumDef54|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@226@01  $FPM) r) $Perm.Write)
  :pattern ((inv@215@01 r))
  :qid |qp-fld-prm-bnd|)))
(declare-const sm@227@01 $FVF<g>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@211@01 r) (Set_in (inv@210@01 r) xs@204@01))
    (=
      ($FVF.lookup_g (as sm@227@01  $FVF<g>) r)
      ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@208@01)) r)))
  :pattern (($FVF.lookup_g (as sm@227@01  $FVF<g>) r))
  :pattern (($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@208@01)) r))
  :qid |qp.fvfValDef55|)))
(declare-const pm@228@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_g (as pm@228@01  $FPM) r)
    (ite
      (and (img@211@01 r) (Set_in (inv@210@01 r) xs@204@01))
      $Perm.Write
      $Perm.No))
  :pattern (($FVF.perm_g (as pm@228@01  $FPM) r))
  :qid |qp.resPrmSumDef56|)))
; Assume upper permission bound for field g
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_g (as pm@228@01  $FPM) r) $Perm.Write)
  :pattern ((inv@210@01 r))
  :qid |qp-fld-prm-bnd|)))
; [eval] y1.g != y3.g
(set-option :timeout 0)
(push) ; 3
(assert (not (and (img@211@01 y1@205@01) (Set_in (inv@210@01 y1@205@01) xs@204@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (and (img@211@01 y3@207@01) (Set_in (inv@210@01 y3@207@01) xs@204@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (not
  (=
    ($FVF.lookup_g (as sm@227@01  $FVF<g>) y1@205@01)
    ($FVF.lookup_g (as sm@227@01  $FVF<g>) y3@207@01)))))
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
; Assume upper permission bound for field f
; Definitional axioms for snapshot map values
; Assume upper permission bound for field g
; [eval] y1.g != y3.g
(set-option :timeout 0)
(push) ; 3
(assert (not (and (img@211@01 y1@205@01) (Set_in (inv@210@01 y1@205@01) xs@204@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (and (img@211@01 y3@207@01) (Set_in (inv@210@01 y3@207@01) xs@204@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (not
  (=
    ($FVF.lookup_g (as sm@227@01  $FVF<g>) y1@205@01)
    ($FVF.lookup_g (as sm@227@01  $FVF<g>) y3@207@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1
; ---------- test01 ----------
(declare-const xs@229@01 Set<$Ref>)
(declare-const ys@230@01 Set<$Ref>)
(declare-const x@231@01 $Ref)
(declare-const xs@232@01 Set<$Ref>)
(declare-const ys@233@01 Set<$Ref>)
(declare-const x@234@01 $Ref)
(push) ; 1
(declare-const $t@235@01 $Snap)
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
(declare-const a@236@01 Int)
; [exec]
; unfold acc(P(xs, ys), write)
(assert (= $t@235@01 ($Snap.combine ($Snap.first $t@235@01) ($Snap.second $t@235@01))))
(declare-const x@237@01 $Ref)
(push) ; 3
; [eval] (x in xs) && !((x in ys))
; [eval] (x in xs)
(push) ; 4
; [then-branch: 6 | !(x@237@01 in xs@232@01) | live]
; [else-branch: 6 | x@237@01 in xs@232@01 | live]
(push) ; 5
; [then-branch: 6 | !(x@237@01 in xs@232@01)]
(assert (not (Set_in x@237@01 xs@232@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 6 | x@237@01 in xs@232@01]
(assert (Set_in x@237@01 xs@232@01))
; [eval] !((x in ys))
; [eval] (x in ys)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (Set_in x@237@01 xs@232@01) (not (Set_in x@237@01 xs@232@01))))
(assert (and (Set_in x@237@01 xs@232@01) (not (Set_in x@237@01 ys@233@01))))
(pop) ; 3
(declare-fun inv@238@01 ($Ref) $Ref)
(declare-fun img@239@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((x@237@01 $Ref)) (!
  (=>
    (and (Set_in x@237@01 xs@232@01) (not (Set_in x@237@01 ys@233@01)))
    (or (Set_in x@237@01 xs@232@01) (not (Set_in x@237@01 xs@232@01))))
  :pattern ((Set_in x@237@01 xs@232@01))
  :pattern ((Set_in x@237@01 ys@233@01))
  :pattern ((inv@238@01 x@237@01))
  :pattern ((img@239@01 x@237@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@237@01 $Ref) (x2@237@01 $Ref)) (!
  (=>
    (and
      (and (Set_in x1@237@01 xs@232@01) (not (Set_in x1@237@01 ys@233@01)))
      (and (Set_in x2@237@01 xs@232@01) (not (Set_in x2@237@01 ys@233@01)))
      (= x1@237@01 x2@237@01))
    (= x1@237@01 x2@237@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@237@01 $Ref)) (!
  (=>
    (and (Set_in x@237@01 xs@232@01) (not (Set_in x@237@01 ys@233@01)))
    (and (= (inv@238@01 x@237@01) x@237@01) (img@239@01 x@237@01)))
  :pattern ((Set_in x@237@01 xs@232@01))
  :pattern ((Set_in x@237@01 ys@233@01))
  :pattern ((inv@238@01 x@237@01))
  :pattern ((img@239@01 x@237@01))
  :qid |quant-u-5985|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@239@01 r)
      (and
        (Set_in (inv@238@01 r) xs@232@01)
        (not (Set_in (inv@238@01 r) ys@233@01))))
    (= (inv@238@01 r) r))
  :pattern ((inv@238@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@237@01 $Ref)) (!
  (=>
    (and (Set_in x@237@01 xs@232@01) (not (Set_in x@237@01 ys@233@01)))
    (not (= x@237@01 $Ref.null)))
  :pattern ((Set_in x@237@01 xs@232@01))
  :pattern ((Set_in x@237@01 ys@233@01))
  :pattern ((inv@238@01 x@237@01))
  :pattern ((img@239@01 x@237@01))
  :qid |f-permImpliesNonNull|)))
(assert (=
  ($Snap.second $t@235@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@235@01))
    ($Snap.second ($Snap.second $t@235@01)))))
(declare-const x@240@01 $Ref)
(push) ; 3
; [eval] (x in xs) && (!((x in ys)) && x.f != 0)
; [eval] (x in xs)
(push) ; 4
; [then-branch: 7 | !(x@240@01 in xs@232@01) | live]
; [else-branch: 7 | x@240@01 in xs@232@01 | live]
(push) ; 5
; [then-branch: 7 | !(x@240@01 in xs@232@01)]
(assert (not (Set_in x@240@01 xs@232@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 7 | x@240@01 in xs@232@01]
(assert (Set_in x@240@01 xs@232@01))
; [eval] !((x in ys))
; [eval] (x in ys)
(push) ; 6
; [then-branch: 8 | x@240@01 in ys@233@01 | live]
; [else-branch: 8 | !(x@240@01 in ys@233@01) | live]
(push) ; 7
; [then-branch: 8 | x@240@01 in ys@233@01]
(assert (Set_in x@240@01 ys@233@01))
(pop) ; 7
(push) ; 7
; [else-branch: 8 | !(x@240@01 in ys@233@01)]
(assert (not (Set_in x@240@01 ys@233@01)))
; [eval] x.f != 0
(push) ; 8
(assert (not (and
  (img@239@01 x@240@01)
  (and
    (Set_in (inv@238@01 x@240@01) xs@232@01)
    (not (Set_in (inv@238@01 x@240@01) ys@233@01))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or (not (Set_in x@240@01 ys@233@01)) (Set_in x@240@01 ys@233@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in x@240@01 xs@232@01)
  (and
    (Set_in x@240@01 xs@232@01)
    (or (not (Set_in x@240@01 ys@233@01)) (Set_in x@240@01 ys@233@01)))))
(assert (or (Set_in x@240@01 xs@232@01) (not (Set_in x@240@01 xs@232@01))))
(assert (and
  (Set_in x@240@01 xs@232@01)
  (and
    (not (Set_in x@240@01 ys@233@01))
    (not
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x@240@01)
        0)))))
(pop) ; 3
(declare-fun inv@241@01 ($Ref) $Ref)
(declare-fun img@242@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((x@240@01 $Ref)) (!
  (=>
    (and
      (Set_in x@240@01 xs@232@01)
      (and
        (not (Set_in x@240@01 ys@233@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x@240@01)
            0))))
    (and
      (=>
        (Set_in x@240@01 xs@232@01)
        (and
          (Set_in x@240@01 xs@232@01)
          (or (not (Set_in x@240@01 ys@233@01)) (Set_in x@240@01 ys@233@01))))
      (or (Set_in x@240@01 xs@232@01) (not (Set_in x@240@01 xs@232@01)))))
  :pattern ((Set_in x@240@01 xs@232@01))
  :pattern ((Set_in x@240@01 ys@233@01))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x@240@01))
  :pattern ((inv@241@01 x@240@01))
  :pattern ((img@242@01 x@240@01))
  :qid |g-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@240@01 $Ref) (x2@240@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in x1@240@01 xs@232@01)
        (and
          (not (Set_in x1@240@01 ys@233@01))
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@240@01)
              0))))
      (and
        (Set_in x2@240@01 xs@232@01)
        (and
          (not (Set_in x2@240@01 ys@233@01))
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@240@01)
              0))))
      (= x1@240@01 x2@240@01))
    (= x1@240@01 x2@240@01))
  
  :qid |g-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@240@01 $Ref)) (!
  (=>
    (and
      (Set_in x@240@01 xs@232@01)
      (and
        (not (Set_in x@240@01 ys@233@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x@240@01)
            0))))
    (and (= (inv@241@01 x@240@01) x@240@01) (img@242@01 x@240@01)))
  :pattern ((Set_in x@240@01 xs@232@01))
  :pattern ((Set_in x@240@01 ys@233@01))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x@240@01))
  :pattern ((inv@241@01 x@240@01))
  :pattern ((img@242@01 x@240@01))
  :qid |quant-u-5987|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@242@01 r)
      (and
        (Set_in (inv@241@01 r) xs@232@01)
        (and
          (not (Set_in (inv@241@01 r) ys@233@01))
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) (inv@241@01 r))
              0)))))
    (= (inv@241@01 r) r))
  :pattern ((inv@241@01 r))
  :qid |g-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@240@01 $Ref)) (!
  (=>
    (and
      (Set_in x@240@01 xs@232@01)
      (and
        (not (Set_in x@240@01 ys@233@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x@240@01)
            0))))
    (not (= x@240@01 $Ref.null)))
  :pattern ((Set_in x@240@01 xs@232@01))
  :pattern ((Set_in x@240@01 ys@233@01))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x@240@01))
  :pattern ((inv@241@01 x@240@01))
  :pattern ((img@242@01 x@240@01))
  :qid |g-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second $t@235@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@235@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@235@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@235@01))) $Snap.unit))
; [eval] (forall x1: Ref, x2: Ref :: { (x1 in xs), (x2 in xs) } { (x1 in xs), (x2 in ys) } { (x1 in xs), (x2.g in xs) } { (x1 in ys), (x2 in xs) } { (x1 in ys), (x2 in ys) } { (x1 in ys), (x2.g in xs) } { (x1.g in xs), (x2 in xs) } { (x1.g in xs), (x2 in ys) } { (x1.g in xs), (x2.g in xs) } (x1 in xs) && (!((x1 in ys)) && (x1.f != 0 && (!((x1.g in xs)) && ((x2 in xs) && (!((x2 in ys)) && (x2.f != 0 && (!((x2.g in xs)) && x1 != x2))))))) ==> x1.g != x2.g)
(declare-const x1@243@01 $Ref)
(declare-const x2@244@01 $Ref)
(push) ; 3
; [eval] (x1 in xs) && (!((x1 in ys)) && (x1.f != 0 && (!((x1.g in xs)) && ((x2 in xs) && (!((x2 in ys)) && (x2.f != 0 && (!((x2.g in xs)) && x1 != x2))))))) ==> x1.g != x2.g
; [eval] (x1 in xs) && (!((x1 in ys)) && (x1.f != 0 && (!((x1.g in xs)) && ((x2 in xs) && (!((x2 in ys)) && (x2.f != 0 && (!((x2.g in xs)) && x1 != x2)))))))
; [eval] (x1 in xs)
(push) ; 4
; [then-branch: 9 | !(x1@243@01 in xs@232@01) | live]
; [else-branch: 9 | x1@243@01 in xs@232@01 | live]
(push) ; 5
; [then-branch: 9 | !(x1@243@01 in xs@232@01)]
(assert (not (Set_in x1@243@01 xs@232@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 9 | x1@243@01 in xs@232@01]
(assert (Set_in x1@243@01 xs@232@01))
; [eval] !((x1 in ys))
; [eval] (x1 in ys)
(push) ; 6
; [then-branch: 10 | x1@243@01 in ys@233@01 | live]
; [else-branch: 10 | !(x1@243@01 in ys@233@01) | live]
(push) ; 7
; [then-branch: 10 | x1@243@01 in ys@233@01]
(assert (Set_in x1@243@01 ys@233@01))
(pop) ; 7
(push) ; 7
; [else-branch: 10 | !(x1@243@01 in ys@233@01)]
(assert (not (Set_in x1@243@01 ys@233@01)))
; [eval] x1.f != 0
(push) ; 8
(assert (not (and
  (img@239@01 x1@243@01)
  (and
    (Set_in (inv@238@01 x1@243@01) xs@232@01)
    (not (Set_in (inv@238@01 x1@243@01) ys@233@01))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
; [then-branch: 11 | Lookup(f, First:($t@235@01), x1@243@01) == 0 | live]
; [else-branch: 11 | Lookup(f, First:($t@235@01), x1@243@01) != 0 | live]
(push) ; 9
; [then-branch: 11 | Lookup(f, First:($t@235@01), x1@243@01) == 0]
(assert (=
  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
  0))
(pop) ; 9
(push) ; 9
; [else-branch: 11 | Lookup(f, First:($t@235@01), x1@243@01) != 0]
(assert (not
  (=
    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
    0)))
; [eval] !((x1.g in xs))
; [eval] (x1.g in xs)
(push) ; 10
(assert (not (and
  (img@242@01 x1@243@01)
  (and
    (Set_in (inv@241@01 x1@243@01) xs@232@01)
    (and
      (not (Set_in (inv@241@01 x1@243@01) ys@233@01))
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) (inv@241@01 x1@243@01))
          0)))))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(push) ; 10
; [then-branch: 12 | Lookup(g, First:(Second:($t@235@01)), x1@243@01) in xs@232@01 | live]
; [else-branch: 12 | !(Lookup(g, First:(Second:($t@235@01)), x1@243@01) in xs@232@01) | live]
(push) ; 11
; [then-branch: 12 | Lookup(g, First:(Second:($t@235@01)), x1@243@01) in xs@232@01]
(assert (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
(pop) ; 11
(push) ; 11
; [else-branch: 12 | !(Lookup(g, First:(Second:($t@235@01)), x1@243@01) in xs@232@01)]
(assert (not
  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01)))
; [eval] (x2 in xs)
(push) ; 12
; [then-branch: 13 | !(x2@244@01 in xs@232@01) | live]
; [else-branch: 13 | x2@244@01 in xs@232@01 | live]
(push) ; 13
; [then-branch: 13 | !(x2@244@01 in xs@232@01)]
(assert (not (Set_in x2@244@01 xs@232@01)))
(pop) ; 13
(push) ; 13
; [else-branch: 13 | x2@244@01 in xs@232@01]
(assert (Set_in x2@244@01 xs@232@01))
; [eval] !((x2 in ys))
; [eval] (x2 in ys)
(push) ; 14
; [then-branch: 14 | x2@244@01 in ys@233@01 | live]
; [else-branch: 14 | !(x2@244@01 in ys@233@01) | live]
(push) ; 15
; [then-branch: 14 | x2@244@01 in ys@233@01]
(assert (Set_in x2@244@01 ys@233@01))
(pop) ; 15
(push) ; 15
; [else-branch: 14 | !(x2@244@01 in ys@233@01)]
(assert (not (Set_in x2@244@01 ys@233@01)))
; [eval] x2.f != 0
(push) ; 16
(assert (not (and
  (img@239@01 x2@244@01)
  (and
    (Set_in (inv@238@01 x2@244@01) xs@232@01)
    (not (Set_in (inv@238@01 x2@244@01) ys@233@01))))))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(push) ; 16
; [then-branch: 15 | Lookup(f, First:($t@235@01), x2@244@01) == 0 | live]
; [else-branch: 15 | Lookup(f, First:($t@235@01), x2@244@01) != 0 | live]
(push) ; 17
; [then-branch: 15 | Lookup(f, First:($t@235@01), x2@244@01) == 0]
(assert (=
  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
  0))
(pop) ; 17
(push) ; 17
; [else-branch: 15 | Lookup(f, First:($t@235@01), x2@244@01) != 0]
(assert (not
  (=
    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
    0)))
; [eval] !((x2.g in xs))
; [eval] (x2.g in xs)
(push) ; 18
(assert (not (and
  (img@242@01 x2@244@01)
  (and
    (Set_in (inv@241@01 x2@244@01) xs@232@01)
    (and
      (not (Set_in (inv@241@01 x2@244@01) ys@233@01))
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) (inv@241@01 x2@244@01))
          0)))))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(push) ; 18
; [then-branch: 16 | Lookup(g, First:(Second:($t@235@01)), x2@244@01) in xs@232@01 | live]
; [else-branch: 16 | !(Lookup(g, First:(Second:($t@235@01)), x2@244@01) in xs@232@01) | live]
(push) ; 19
; [then-branch: 16 | Lookup(g, First:(Second:($t@235@01)), x2@244@01) in xs@232@01]
(assert (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
(pop) ; 19
(push) ; 19
; [else-branch: 16 | !(Lookup(g, First:(Second:($t@235@01)), x2@244@01) in xs@232@01)]
(assert (not
  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01)))
; [eval] x1 != x2
(pop) ; 19
(pop) ; 18
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01)))
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(assert (=>
  (not
    (=
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
      0))
  (and
    (not
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
        0))
    (or
      (not
        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01)))))
(assert (or
  (not
    (=
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
      0))
  (=
    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
    0)))
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (=>
  (not (Set_in x2@244@01 ys@233@01))
  (and
    (not (Set_in x2@244@01 ys@233@01))
    (=>
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
          0))
      (and
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
            0))
        (or
          (not
            (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))))
    (or
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
          0))
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
        0)))))
(assert (or (not (Set_in x2@244@01 ys@233@01)) (Set_in x2@244@01 ys@233@01)))
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in x2@244@01 xs@232@01)
  (and
    (Set_in x2@244@01 xs@232@01)
    (=>
      (not (Set_in x2@244@01 ys@233@01))
      (and
        (not (Set_in x2@244@01 ys@233@01))
        (=>
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
              0))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                0))
            (or
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
              (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))))
        (or
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
              0))
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
            0))))
    (or (not (Set_in x2@244@01 ys@233@01)) (Set_in x2@244@01 ys@233@01)))))
(assert (or (Set_in x2@244@01 xs@232@01) (not (Set_in x2@244@01 xs@232@01))))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (=>
  (not
    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
  (and
    (not
      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
    (=>
      (Set_in x2@244@01 xs@232@01)
      (and
        (Set_in x2@244@01 xs@232@01)
        (=>
          (not (Set_in x2@244@01 ys@233@01))
          (and
            (not (Set_in x2@244@01 ys@233@01))
            (=>
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                  0))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                    0))
                (or
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))))
            (or
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                  0))
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                0))))
        (or (not (Set_in x2@244@01 ys@233@01)) (Set_in x2@244@01 ys@233@01))))
    (or (Set_in x2@244@01 xs@232@01) (not (Set_in x2@244@01 xs@232@01))))))
(assert (or
  (not
    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01)))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (not
    (=
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
      0))
  (and
    (not
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
        0))
    (=>
      (not
        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
      (and
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
        (=>
          (Set_in x2@244@01 xs@232@01)
          (and
            (Set_in x2@244@01 xs@232@01)
            (=>
              (not (Set_in x2@244@01 ys@233@01))
              (and
                (not (Set_in x2@244@01 ys@233@01))
                (=>
                  (not
                    (=
                      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                      0))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                        0))
                    (or
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))))
                (or
                  (not
                    (=
                      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                      0))
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                    0))))
            (or (not (Set_in x2@244@01 ys@233@01)) (Set_in x2@244@01 ys@233@01))))
        (or (Set_in x2@244@01 xs@232@01) (not (Set_in x2@244@01 xs@232@01)))))
    (or
      (not
        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01)))))
(assert (or
  (not
    (=
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
      0))
  (=
    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
    0)))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (not (Set_in x1@243@01 ys@233@01))
  (and
    (not (Set_in x1@243@01 ys@233@01))
    (=>
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
          0))
      (and
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
            0))
        (=>
          (not
            (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
          (and
            (not
              (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
            (=>
              (Set_in x2@244@01 xs@232@01)
              (and
                (Set_in x2@244@01 xs@232@01)
                (=>
                  (not (Set_in x2@244@01 ys@233@01))
                  (and
                    (not (Set_in x2@244@01 ys@233@01))
                    (=>
                      (not
                        (=
                          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                          0))
                      (and
                        (not
                          (=
                            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                            0))
                        (or
                          (not
                            (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
                          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))))
                    (or
                      (not
                        (=
                          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                          0))
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                        0))))
                (or
                  (not (Set_in x2@244@01 ys@233@01))
                  (Set_in x2@244@01 ys@233@01))))
            (or (Set_in x2@244@01 xs@232@01) (not (Set_in x2@244@01 xs@232@01)))))
        (or
          (not
            (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))))
    (or
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
          0))
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
        0)))))
(assert (or (not (Set_in x1@243@01 ys@233@01)) (Set_in x1@243@01 ys@233@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in x1@243@01 xs@232@01)
  (and
    (Set_in x1@243@01 xs@232@01)
    (=>
      (not (Set_in x1@243@01 ys@233@01))
      (and
        (not (Set_in x1@243@01 ys@233@01))
        (=>
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
              0))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                0))
            (=>
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
              (and
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
                (=>
                  (Set_in x2@244@01 xs@232@01)
                  (and
                    (Set_in x2@244@01 xs@232@01)
                    (=>
                      (not (Set_in x2@244@01 ys@233@01))
                      (and
                        (not (Set_in x2@244@01 ys@233@01))
                        (=>
                          (not
                            (=
                              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                              0))
                          (and
                            (not
                              (=
                                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                                0))
                            (or
                              (not
                                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
                              (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))))
                        (or
                          (not
                            (=
                              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                              0))
                          (=
                            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                            0))))
                    (or
                      (not (Set_in x2@244@01 ys@233@01))
                      (Set_in x2@244@01 ys@233@01))))
                (or
                  (Set_in x2@244@01 xs@232@01)
                  (not (Set_in x2@244@01 xs@232@01)))))
            (or
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
              (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))))
        (or
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
              0))
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
            0))))
    (or (not (Set_in x1@243@01 ys@233@01)) (Set_in x1@243@01 ys@233@01)))))
(assert (or (Set_in x1@243@01 xs@232@01) (not (Set_in x1@243@01 xs@232@01))))
(push) ; 4
; [then-branch: 17 | x1@243@01 in xs@232@01 && !(x1@243@01 in ys@233@01) && Lookup(f, First:($t@235@01), x1@243@01) != 0 && !(Lookup(g, First:(Second:($t@235@01)), x1@243@01) in xs@232@01) && x2@244@01 in xs@232@01 && !(x2@244@01 in ys@233@01) && Lookup(f, First:($t@235@01), x2@244@01) != 0 && !(Lookup(g, First:(Second:($t@235@01)), x2@244@01) in xs@232@01) && x1@243@01 != x2@244@01 | live]
; [else-branch: 17 | !(x1@243@01 in xs@232@01 && !(x1@243@01 in ys@233@01) && Lookup(f, First:($t@235@01), x1@243@01) != 0 && !(Lookup(g, First:(Second:($t@235@01)), x1@243@01) in xs@232@01) && x2@244@01 in xs@232@01 && !(x2@244@01 in ys@233@01) && Lookup(f, First:($t@235@01), x2@244@01) != 0 && !(Lookup(g, First:(Second:($t@235@01)), x2@244@01) in xs@232@01) && x1@243@01 != x2@244@01) | live]
(push) ; 5
; [then-branch: 17 | x1@243@01 in xs@232@01 && !(x1@243@01 in ys@233@01) && Lookup(f, First:($t@235@01), x1@243@01) != 0 && !(Lookup(g, First:(Second:($t@235@01)), x1@243@01) in xs@232@01) && x2@244@01 in xs@232@01 && !(x2@244@01 in ys@233@01) && Lookup(f, First:($t@235@01), x2@244@01) != 0 && !(Lookup(g, First:(Second:($t@235@01)), x2@244@01) in xs@232@01) && x1@243@01 != x2@244@01]
(assert (and
  (Set_in x1@243@01 xs@232@01)
  (and
    (not (Set_in x1@243@01 ys@233@01))
    (and
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
          0))
      (and
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
        (and
          (Set_in x2@244@01 xs@232@01)
          (and
            (not (Set_in x2@244@01 ys@233@01))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                  0))
              (and
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
                (not (= x1@243@01 x2@244@01)))))))))))
; [eval] x1.g != x2.g
(push) ; 6
(assert (not (and
  (img@242@01 x1@243@01)
  (and
    (Set_in (inv@241@01 x1@243@01) xs@232@01)
    (and
      (not (Set_in (inv@241@01 x1@243@01) ys@233@01))
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) (inv@241@01 x1@243@01))
          0)))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (and
  (img@242@01 x2@244@01)
  (and
    (Set_in (inv@241@01 x2@244@01) xs@232@01)
    (and
      (not (Set_in (inv@241@01 x2@244@01) ys@233@01))
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) (inv@241@01 x2@244@01))
          0)))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 17 | !(x1@243@01 in xs@232@01 && !(x1@243@01 in ys@233@01) && Lookup(f, First:($t@235@01), x1@243@01) != 0 && !(Lookup(g, First:(Second:($t@235@01)), x1@243@01) in xs@232@01) && x2@244@01 in xs@232@01 && !(x2@244@01 in ys@233@01) && Lookup(f, First:($t@235@01), x2@244@01) != 0 && !(Lookup(g, First:(Second:($t@235@01)), x2@244@01) in xs@232@01) && x1@243@01 != x2@244@01)]
(assert (not
  (and
    (Set_in x1@243@01 xs@232@01)
    (and
      (not (Set_in x1@243@01 ys@233@01))
      (and
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
            0))
        (and
          (not
            (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
          (and
            (Set_in x2@244@01 xs@232@01)
            (and
              (not (Set_in x2@244@01 ys@233@01))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                    0))
                (and
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
                  (not (= x1@243@01 x2@244@01))))))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (Set_in x1@243@01 xs@232@01)
    (and
      (not (Set_in x1@243@01 ys@233@01))
      (and
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
            0))
        (and
          (not
            (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
          (and
            (Set_in x2@244@01 xs@232@01)
            (and
              (not (Set_in x2@244@01 ys@233@01))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                    0))
                (and
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
                  (not (= x1@243@01 x2@244@01))))))))))
  (and
    (Set_in x1@243@01 xs@232@01)
    (not (Set_in x1@243@01 ys@233@01))
    (not
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
        0))
    (not
      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
    (Set_in x2@244@01 xs@232@01)
    (not (Set_in x2@244@01 ys@233@01))
    (not
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
        0))
    (not
      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
    (not (= x1@243@01 x2@244@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in x1@243@01 xs@232@01)
      (and
        (not (Set_in x1@243@01 ys@233@01))
        (and
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
              0))
          (and
            (not
              (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
            (and
              (Set_in x2@244@01 xs@232@01)
              (and
                (not (Set_in x2@244@01 ys@233@01))
                (and
                  (not
                    (=
                      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                      0))
                  (and
                    (not
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
                    (not (= x1@243@01 x2@244@01)))))))))))
  (and
    (Set_in x1@243@01 xs@232@01)
    (and
      (not (Set_in x1@243@01 ys@233@01))
      (and
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
            0))
        (and
          (not
            (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
          (and
            (Set_in x2@244@01 xs@232@01)
            (and
              (not (Set_in x2@244@01 ys@233@01))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                    0))
                (and
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
                  (not (= x1@243@01 x2@244@01))))))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x1@243@01 $Ref) (x2@244@01 $Ref)) (!
  (and
    (=>
      (Set_in x1@243@01 xs@232@01)
      (and
        (Set_in x1@243@01 xs@232@01)
        (=>
          (not (Set_in x1@243@01 ys@233@01))
          (and
            (not (Set_in x1@243@01 ys@233@01))
            (=>
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                  0))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                    0))
                (=>
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
                  (and
                    (not
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
                    (=>
                      (Set_in x2@244@01 xs@232@01)
                      (and
                        (Set_in x2@244@01 xs@232@01)
                        (=>
                          (not (Set_in x2@244@01 ys@233@01))
                          (and
                            (not (Set_in x2@244@01 ys@233@01))
                            (=>
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                                  0))
                              (and
                                (not
                                  (=
                                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                                    0))
                                (or
                                  (not
                                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
                                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))))
                            (or
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                                  0))
                              (=
                                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                                0))))
                        (or
                          (not (Set_in x2@244@01 ys@233@01))
                          (Set_in x2@244@01 ys@233@01))))
                    (or
                      (Set_in x2@244@01 xs@232@01)
                      (not (Set_in x2@244@01 xs@232@01)))))
                (or
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))))
            (or
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                  0))
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                0))))
        (or (not (Set_in x1@243@01 ys@233@01)) (Set_in x1@243@01 ys@233@01))))
    (or (Set_in x1@243@01 xs@232@01) (not (Set_in x1@243@01 xs@232@01)))
    (=>
      (and
        (Set_in x1@243@01 xs@232@01)
        (and
          (not (Set_in x1@243@01 ys@233@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
              (and
                (Set_in x2@244@01 xs@232@01)
                (and
                  (not (Set_in x2@244@01 ys@233@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
                      (not (= x1@243@01 x2@244@01))))))))))
      (and
        (Set_in x1@243@01 xs@232@01)
        (not (Set_in x1@243@01 ys@233@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
        (Set_in x2@244@01 xs@232@01)
        (not (Set_in x2@244@01 ys@233@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
        (not (= x1@243@01 x2@244@01))))
    (or
      (not
        (and
          (Set_in x1@243@01 xs@232@01)
          (and
            (not (Set_in x1@243@01 ys@233@01))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                  0))
              (and
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
                (and
                  (Set_in x2@244@01 xs@232@01)
                  (and
                    (not (Set_in x2@244@01 ys@233@01))
                    (and
                      (not
                        (=
                          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                          0))
                      (and
                        (not
                          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
                        (not (= x1@243@01 x2@244@01)))))))))))
      (and
        (Set_in x1@243@01 xs@232@01)
        (and
          (not (Set_in x1@243@01 ys@233@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
              (and
                (Set_in x2@244@01 xs@232@01)
                (and
                  (not (Set_in x2@244@01 ys@233@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
                      (not (= x1@243@01 x2@244@01))))))))))))
  :pattern ((Set_in x1@243@01 xs@232@01) (Set_in x2@244@01 xs@232@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/generalised_shape.vpr@119@7@121@92-aux|)))
(assert (forall ((x1@243@01 $Ref) (x2@244@01 $Ref)) (!
  (and
    (=>
      (Set_in x1@243@01 xs@232@01)
      (and
        (Set_in x1@243@01 xs@232@01)
        (=>
          (not (Set_in x1@243@01 ys@233@01))
          (and
            (not (Set_in x1@243@01 ys@233@01))
            (=>
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                  0))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                    0))
                (=>
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
                  (and
                    (not
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
                    (=>
                      (Set_in x2@244@01 xs@232@01)
                      (and
                        (Set_in x2@244@01 xs@232@01)
                        (=>
                          (not (Set_in x2@244@01 ys@233@01))
                          (and
                            (not (Set_in x2@244@01 ys@233@01))
                            (=>
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                                  0))
                              (and
                                (not
                                  (=
                                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                                    0))
                                (or
                                  (not
                                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
                                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))))
                            (or
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                                  0))
                              (=
                                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                                0))))
                        (or
                          (not (Set_in x2@244@01 ys@233@01))
                          (Set_in x2@244@01 ys@233@01))))
                    (or
                      (Set_in x2@244@01 xs@232@01)
                      (not (Set_in x2@244@01 xs@232@01)))))
                (or
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))))
            (or
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                  0))
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                0))))
        (or (not (Set_in x1@243@01 ys@233@01)) (Set_in x1@243@01 ys@233@01))))
    (or (Set_in x1@243@01 xs@232@01) (not (Set_in x1@243@01 xs@232@01)))
    (=>
      (and
        (Set_in x1@243@01 xs@232@01)
        (and
          (not (Set_in x1@243@01 ys@233@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
              (and
                (Set_in x2@244@01 xs@232@01)
                (and
                  (not (Set_in x2@244@01 ys@233@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
                      (not (= x1@243@01 x2@244@01))))))))))
      (and
        (Set_in x1@243@01 xs@232@01)
        (not (Set_in x1@243@01 ys@233@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
        (Set_in x2@244@01 xs@232@01)
        (not (Set_in x2@244@01 ys@233@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
        (not (= x1@243@01 x2@244@01))))
    (or
      (not
        (and
          (Set_in x1@243@01 xs@232@01)
          (and
            (not (Set_in x1@243@01 ys@233@01))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                  0))
              (and
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
                (and
                  (Set_in x2@244@01 xs@232@01)
                  (and
                    (not (Set_in x2@244@01 ys@233@01))
                    (and
                      (not
                        (=
                          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                          0))
                      (and
                        (not
                          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
                        (not (= x1@243@01 x2@244@01)))))))))))
      (and
        (Set_in x1@243@01 xs@232@01)
        (and
          (not (Set_in x1@243@01 ys@233@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
              (and
                (Set_in x2@244@01 xs@232@01)
                (and
                  (not (Set_in x2@244@01 ys@233@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
                      (not (= x1@243@01 x2@244@01))))))))))))
  :pattern ((Set_in x1@243@01 xs@232@01) (Set_in x2@244@01 ys@233@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/generalised_shape.vpr@119@7@121@92-aux|)))
(assert (forall ((x1@243@01 $Ref) (x2@244@01 $Ref)) (!
  (and
    (=>
      (Set_in x1@243@01 xs@232@01)
      (and
        (Set_in x1@243@01 xs@232@01)
        (=>
          (not (Set_in x1@243@01 ys@233@01))
          (and
            (not (Set_in x1@243@01 ys@233@01))
            (=>
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                  0))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                    0))
                (=>
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
                  (and
                    (not
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
                    (=>
                      (Set_in x2@244@01 xs@232@01)
                      (and
                        (Set_in x2@244@01 xs@232@01)
                        (=>
                          (not (Set_in x2@244@01 ys@233@01))
                          (and
                            (not (Set_in x2@244@01 ys@233@01))
                            (=>
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                                  0))
                              (and
                                (not
                                  (=
                                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                                    0))
                                (or
                                  (not
                                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
                                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))))
                            (or
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                                  0))
                              (=
                                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                                0))))
                        (or
                          (not (Set_in x2@244@01 ys@233@01))
                          (Set_in x2@244@01 ys@233@01))))
                    (or
                      (Set_in x2@244@01 xs@232@01)
                      (not (Set_in x2@244@01 xs@232@01)))))
                (or
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))))
            (or
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                  0))
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                0))))
        (or (not (Set_in x1@243@01 ys@233@01)) (Set_in x1@243@01 ys@233@01))))
    (or (Set_in x1@243@01 xs@232@01) (not (Set_in x1@243@01 xs@232@01)))
    (=>
      (and
        (Set_in x1@243@01 xs@232@01)
        (and
          (not (Set_in x1@243@01 ys@233@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
              (and
                (Set_in x2@244@01 xs@232@01)
                (and
                  (not (Set_in x2@244@01 ys@233@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
                      (not (= x1@243@01 x2@244@01))))))))))
      (and
        (Set_in x1@243@01 xs@232@01)
        (not (Set_in x1@243@01 ys@233@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
        (Set_in x2@244@01 xs@232@01)
        (not (Set_in x2@244@01 ys@233@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
        (not (= x1@243@01 x2@244@01))))
    (or
      (not
        (and
          (Set_in x1@243@01 xs@232@01)
          (and
            (not (Set_in x1@243@01 ys@233@01))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                  0))
              (and
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
                (and
                  (Set_in x2@244@01 xs@232@01)
                  (and
                    (not (Set_in x2@244@01 ys@233@01))
                    (and
                      (not
                        (=
                          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                          0))
                      (and
                        (not
                          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
                        (not (= x1@243@01 x2@244@01)))))))))))
      (and
        (Set_in x1@243@01 xs@232@01)
        (and
          (not (Set_in x1@243@01 ys@233@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
              (and
                (Set_in x2@244@01 xs@232@01)
                (and
                  (not (Set_in x2@244@01 ys@233@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
                      (not (= x1@243@01 x2@244@01))))))))))))
  :pattern ((Set_in x1@243@01 xs@232@01) (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/generalised_shape.vpr@119@7@121@92-aux|)))
(assert (forall ((x1@243@01 $Ref) (x2@244@01 $Ref)) (!
  (and
    (=>
      (Set_in x1@243@01 xs@232@01)
      (and
        (Set_in x1@243@01 xs@232@01)
        (=>
          (not (Set_in x1@243@01 ys@233@01))
          (and
            (not (Set_in x1@243@01 ys@233@01))
            (=>
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                  0))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                    0))
                (=>
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
                  (and
                    (not
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
                    (=>
                      (Set_in x2@244@01 xs@232@01)
                      (and
                        (Set_in x2@244@01 xs@232@01)
                        (=>
                          (not (Set_in x2@244@01 ys@233@01))
                          (and
                            (not (Set_in x2@244@01 ys@233@01))
                            (=>
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                                  0))
                              (and
                                (not
                                  (=
                                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                                    0))
                                (or
                                  (not
                                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
                                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))))
                            (or
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                                  0))
                              (=
                                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                                0))))
                        (or
                          (not (Set_in x2@244@01 ys@233@01))
                          (Set_in x2@244@01 ys@233@01))))
                    (or
                      (Set_in x2@244@01 xs@232@01)
                      (not (Set_in x2@244@01 xs@232@01)))))
                (or
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))))
            (or
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                  0))
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                0))))
        (or (not (Set_in x1@243@01 ys@233@01)) (Set_in x1@243@01 ys@233@01))))
    (or (Set_in x1@243@01 xs@232@01) (not (Set_in x1@243@01 xs@232@01)))
    (=>
      (and
        (Set_in x1@243@01 xs@232@01)
        (and
          (not (Set_in x1@243@01 ys@233@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
              (and
                (Set_in x2@244@01 xs@232@01)
                (and
                  (not (Set_in x2@244@01 ys@233@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
                      (not (= x1@243@01 x2@244@01))))))))))
      (and
        (Set_in x1@243@01 xs@232@01)
        (not (Set_in x1@243@01 ys@233@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
        (Set_in x2@244@01 xs@232@01)
        (not (Set_in x2@244@01 ys@233@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
        (not (= x1@243@01 x2@244@01))))
    (or
      (not
        (and
          (Set_in x1@243@01 xs@232@01)
          (and
            (not (Set_in x1@243@01 ys@233@01))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                  0))
              (and
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
                (and
                  (Set_in x2@244@01 xs@232@01)
                  (and
                    (not (Set_in x2@244@01 ys@233@01))
                    (and
                      (not
                        (=
                          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                          0))
                      (and
                        (not
                          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
                        (not (= x1@243@01 x2@244@01)))))))))))
      (and
        (Set_in x1@243@01 xs@232@01)
        (and
          (not (Set_in x1@243@01 ys@233@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
              (and
                (Set_in x2@244@01 xs@232@01)
                (and
                  (not (Set_in x2@244@01 ys@233@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
                      (not (= x1@243@01 x2@244@01))))))))))))
  :pattern ((Set_in x1@243@01 ys@233@01) (Set_in x2@244@01 xs@232@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/generalised_shape.vpr@119@7@121@92-aux|)))
(assert (forall ((x1@243@01 $Ref) (x2@244@01 $Ref)) (!
  (and
    (=>
      (Set_in x1@243@01 xs@232@01)
      (and
        (Set_in x1@243@01 xs@232@01)
        (=>
          (not (Set_in x1@243@01 ys@233@01))
          (and
            (not (Set_in x1@243@01 ys@233@01))
            (=>
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                  0))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                    0))
                (=>
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
                  (and
                    (not
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
                    (=>
                      (Set_in x2@244@01 xs@232@01)
                      (and
                        (Set_in x2@244@01 xs@232@01)
                        (=>
                          (not (Set_in x2@244@01 ys@233@01))
                          (and
                            (not (Set_in x2@244@01 ys@233@01))
                            (=>
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                                  0))
                              (and
                                (not
                                  (=
                                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                                    0))
                                (or
                                  (not
                                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
                                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))))
                            (or
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                                  0))
                              (=
                                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                                0))))
                        (or
                          (not (Set_in x2@244@01 ys@233@01))
                          (Set_in x2@244@01 ys@233@01))))
                    (or
                      (Set_in x2@244@01 xs@232@01)
                      (not (Set_in x2@244@01 xs@232@01)))))
                (or
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))))
            (or
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                  0))
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                0))))
        (or (not (Set_in x1@243@01 ys@233@01)) (Set_in x1@243@01 ys@233@01))))
    (or (Set_in x1@243@01 xs@232@01) (not (Set_in x1@243@01 xs@232@01)))
    (=>
      (and
        (Set_in x1@243@01 xs@232@01)
        (and
          (not (Set_in x1@243@01 ys@233@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
              (and
                (Set_in x2@244@01 xs@232@01)
                (and
                  (not (Set_in x2@244@01 ys@233@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
                      (not (= x1@243@01 x2@244@01))))))))))
      (and
        (Set_in x1@243@01 xs@232@01)
        (not (Set_in x1@243@01 ys@233@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
        (Set_in x2@244@01 xs@232@01)
        (not (Set_in x2@244@01 ys@233@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
        (not (= x1@243@01 x2@244@01))))
    (or
      (not
        (and
          (Set_in x1@243@01 xs@232@01)
          (and
            (not (Set_in x1@243@01 ys@233@01))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                  0))
              (and
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
                (and
                  (Set_in x2@244@01 xs@232@01)
                  (and
                    (not (Set_in x2@244@01 ys@233@01))
                    (and
                      (not
                        (=
                          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                          0))
                      (and
                        (not
                          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
                        (not (= x1@243@01 x2@244@01)))))))))))
      (and
        (Set_in x1@243@01 xs@232@01)
        (and
          (not (Set_in x1@243@01 ys@233@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
              (and
                (Set_in x2@244@01 xs@232@01)
                (and
                  (not (Set_in x2@244@01 ys@233@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
                      (not (= x1@243@01 x2@244@01))))))))))))
  :pattern ((Set_in x1@243@01 ys@233@01) (Set_in x2@244@01 ys@233@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/generalised_shape.vpr@119@7@121@92-aux|)))
(assert (forall ((x1@243@01 $Ref) (x2@244@01 $Ref)) (!
  (and
    (=>
      (Set_in x1@243@01 xs@232@01)
      (and
        (Set_in x1@243@01 xs@232@01)
        (=>
          (not (Set_in x1@243@01 ys@233@01))
          (and
            (not (Set_in x1@243@01 ys@233@01))
            (=>
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                  0))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                    0))
                (=>
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
                  (and
                    (not
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
                    (=>
                      (Set_in x2@244@01 xs@232@01)
                      (and
                        (Set_in x2@244@01 xs@232@01)
                        (=>
                          (not (Set_in x2@244@01 ys@233@01))
                          (and
                            (not (Set_in x2@244@01 ys@233@01))
                            (=>
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                                  0))
                              (and
                                (not
                                  (=
                                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                                    0))
                                (or
                                  (not
                                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
                                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))))
                            (or
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                                  0))
                              (=
                                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                                0))))
                        (or
                          (not (Set_in x2@244@01 ys@233@01))
                          (Set_in x2@244@01 ys@233@01))))
                    (or
                      (Set_in x2@244@01 xs@232@01)
                      (not (Set_in x2@244@01 xs@232@01)))))
                (or
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))))
            (or
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                  0))
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                0))))
        (or (not (Set_in x1@243@01 ys@233@01)) (Set_in x1@243@01 ys@233@01))))
    (or (Set_in x1@243@01 xs@232@01) (not (Set_in x1@243@01 xs@232@01)))
    (=>
      (and
        (Set_in x1@243@01 xs@232@01)
        (and
          (not (Set_in x1@243@01 ys@233@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
              (and
                (Set_in x2@244@01 xs@232@01)
                (and
                  (not (Set_in x2@244@01 ys@233@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
                      (not (= x1@243@01 x2@244@01))))))))))
      (and
        (Set_in x1@243@01 xs@232@01)
        (not (Set_in x1@243@01 ys@233@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
        (Set_in x2@244@01 xs@232@01)
        (not (Set_in x2@244@01 ys@233@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
        (not (= x1@243@01 x2@244@01))))
    (or
      (not
        (and
          (Set_in x1@243@01 xs@232@01)
          (and
            (not (Set_in x1@243@01 ys@233@01))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                  0))
              (and
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
                (and
                  (Set_in x2@244@01 xs@232@01)
                  (and
                    (not (Set_in x2@244@01 ys@233@01))
                    (and
                      (not
                        (=
                          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                          0))
                      (and
                        (not
                          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
                        (not (= x1@243@01 x2@244@01)))))))))))
      (and
        (Set_in x1@243@01 xs@232@01)
        (and
          (not (Set_in x1@243@01 ys@233@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
              (and
                (Set_in x2@244@01 xs@232@01)
                (and
                  (not (Set_in x2@244@01 ys@233@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
                      (not (= x1@243@01 x2@244@01))))))))))))
  :pattern ((Set_in x1@243@01 ys@233@01) (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/generalised_shape.vpr@119@7@121@92-aux|)))
(assert (forall ((x1@243@01 $Ref) (x2@244@01 $Ref)) (!
  (and
    (=>
      (Set_in x1@243@01 xs@232@01)
      (and
        (Set_in x1@243@01 xs@232@01)
        (=>
          (not (Set_in x1@243@01 ys@233@01))
          (and
            (not (Set_in x1@243@01 ys@233@01))
            (=>
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                  0))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                    0))
                (=>
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
                  (and
                    (not
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
                    (=>
                      (Set_in x2@244@01 xs@232@01)
                      (and
                        (Set_in x2@244@01 xs@232@01)
                        (=>
                          (not (Set_in x2@244@01 ys@233@01))
                          (and
                            (not (Set_in x2@244@01 ys@233@01))
                            (=>
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                                  0))
                              (and
                                (not
                                  (=
                                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                                    0))
                                (or
                                  (not
                                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
                                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))))
                            (or
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                                  0))
                              (=
                                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                                0))))
                        (or
                          (not (Set_in x2@244@01 ys@233@01))
                          (Set_in x2@244@01 ys@233@01))))
                    (or
                      (Set_in x2@244@01 xs@232@01)
                      (not (Set_in x2@244@01 xs@232@01)))))
                (or
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))))
            (or
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                  0))
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                0))))
        (or (not (Set_in x1@243@01 ys@233@01)) (Set_in x1@243@01 ys@233@01))))
    (or (Set_in x1@243@01 xs@232@01) (not (Set_in x1@243@01 xs@232@01)))
    (=>
      (and
        (Set_in x1@243@01 xs@232@01)
        (and
          (not (Set_in x1@243@01 ys@233@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
              (and
                (Set_in x2@244@01 xs@232@01)
                (and
                  (not (Set_in x2@244@01 ys@233@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
                      (not (= x1@243@01 x2@244@01))))))))))
      (and
        (Set_in x1@243@01 xs@232@01)
        (not (Set_in x1@243@01 ys@233@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
        (Set_in x2@244@01 xs@232@01)
        (not (Set_in x2@244@01 ys@233@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
        (not (= x1@243@01 x2@244@01))))
    (or
      (not
        (and
          (Set_in x1@243@01 xs@232@01)
          (and
            (not (Set_in x1@243@01 ys@233@01))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                  0))
              (and
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
                (and
                  (Set_in x2@244@01 xs@232@01)
                  (and
                    (not (Set_in x2@244@01 ys@233@01))
                    (and
                      (not
                        (=
                          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                          0))
                      (and
                        (not
                          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
                        (not (= x1@243@01 x2@244@01)))))))))))
      (and
        (Set_in x1@243@01 xs@232@01)
        (and
          (not (Set_in x1@243@01 ys@233@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
              (and
                (Set_in x2@244@01 xs@232@01)
                (and
                  (not (Set_in x2@244@01 ys@233@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
                      (not (= x1@243@01 x2@244@01))))))))))))
  :pattern ((Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01) (Set_in x2@244@01 xs@232@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/generalised_shape.vpr@119@7@121@92-aux|)))
(assert (forall ((x1@243@01 $Ref) (x2@244@01 $Ref)) (!
  (and
    (=>
      (Set_in x1@243@01 xs@232@01)
      (and
        (Set_in x1@243@01 xs@232@01)
        (=>
          (not (Set_in x1@243@01 ys@233@01))
          (and
            (not (Set_in x1@243@01 ys@233@01))
            (=>
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                  0))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                    0))
                (=>
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
                  (and
                    (not
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
                    (=>
                      (Set_in x2@244@01 xs@232@01)
                      (and
                        (Set_in x2@244@01 xs@232@01)
                        (=>
                          (not (Set_in x2@244@01 ys@233@01))
                          (and
                            (not (Set_in x2@244@01 ys@233@01))
                            (=>
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                                  0))
                              (and
                                (not
                                  (=
                                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                                    0))
                                (or
                                  (not
                                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
                                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))))
                            (or
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                                  0))
                              (=
                                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                                0))))
                        (or
                          (not (Set_in x2@244@01 ys@233@01))
                          (Set_in x2@244@01 ys@233@01))))
                    (or
                      (Set_in x2@244@01 xs@232@01)
                      (not (Set_in x2@244@01 xs@232@01)))))
                (or
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))))
            (or
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                  0))
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                0))))
        (or (not (Set_in x1@243@01 ys@233@01)) (Set_in x1@243@01 ys@233@01))))
    (or (Set_in x1@243@01 xs@232@01) (not (Set_in x1@243@01 xs@232@01)))
    (=>
      (and
        (Set_in x1@243@01 xs@232@01)
        (and
          (not (Set_in x1@243@01 ys@233@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
              (and
                (Set_in x2@244@01 xs@232@01)
                (and
                  (not (Set_in x2@244@01 ys@233@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
                      (not (= x1@243@01 x2@244@01))))))))))
      (and
        (Set_in x1@243@01 xs@232@01)
        (not (Set_in x1@243@01 ys@233@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
        (Set_in x2@244@01 xs@232@01)
        (not (Set_in x2@244@01 ys@233@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
        (not (= x1@243@01 x2@244@01))))
    (or
      (not
        (and
          (Set_in x1@243@01 xs@232@01)
          (and
            (not (Set_in x1@243@01 ys@233@01))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                  0))
              (and
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
                (and
                  (Set_in x2@244@01 xs@232@01)
                  (and
                    (not (Set_in x2@244@01 ys@233@01))
                    (and
                      (not
                        (=
                          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                          0))
                      (and
                        (not
                          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
                        (not (= x1@243@01 x2@244@01)))))))))))
      (and
        (Set_in x1@243@01 xs@232@01)
        (and
          (not (Set_in x1@243@01 ys@233@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
              (and
                (Set_in x2@244@01 xs@232@01)
                (and
                  (not (Set_in x2@244@01 ys@233@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
                      (not (= x1@243@01 x2@244@01))))))))))))
  :pattern ((Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01) (Set_in x2@244@01 ys@233@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/generalised_shape.vpr@119@7@121@92-aux|)))
(assert (forall ((x1@243@01 $Ref) (x2@244@01 $Ref)) (!
  (and
    (=>
      (Set_in x1@243@01 xs@232@01)
      (and
        (Set_in x1@243@01 xs@232@01)
        (=>
          (not (Set_in x1@243@01 ys@233@01))
          (and
            (not (Set_in x1@243@01 ys@233@01))
            (=>
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                  0))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                    0))
                (=>
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
                  (and
                    (not
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
                    (=>
                      (Set_in x2@244@01 xs@232@01)
                      (and
                        (Set_in x2@244@01 xs@232@01)
                        (=>
                          (not (Set_in x2@244@01 ys@233@01))
                          (and
                            (not (Set_in x2@244@01 ys@233@01))
                            (=>
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                                  0))
                              (and
                                (not
                                  (=
                                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                                    0))
                                (or
                                  (not
                                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
                                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))))
                            (or
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                                  0))
                              (=
                                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                                0))))
                        (or
                          (not (Set_in x2@244@01 ys@233@01))
                          (Set_in x2@244@01 ys@233@01))))
                    (or
                      (Set_in x2@244@01 xs@232@01)
                      (not (Set_in x2@244@01 xs@232@01)))))
                (or
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))))
            (or
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                  0))
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                0))))
        (or (not (Set_in x1@243@01 ys@233@01)) (Set_in x1@243@01 ys@233@01))))
    (or (Set_in x1@243@01 xs@232@01) (not (Set_in x1@243@01 xs@232@01)))
    (=>
      (and
        (Set_in x1@243@01 xs@232@01)
        (and
          (not (Set_in x1@243@01 ys@233@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
              (and
                (Set_in x2@244@01 xs@232@01)
                (and
                  (not (Set_in x2@244@01 ys@233@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
                      (not (= x1@243@01 x2@244@01))))))))))
      (and
        (Set_in x1@243@01 xs@232@01)
        (not (Set_in x1@243@01 ys@233@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
        (Set_in x2@244@01 xs@232@01)
        (not (Set_in x2@244@01 ys@233@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
        (not (= x1@243@01 x2@244@01))))
    (or
      (not
        (and
          (Set_in x1@243@01 xs@232@01)
          (and
            (not (Set_in x1@243@01 ys@233@01))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                  0))
              (and
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
                (and
                  (Set_in x2@244@01 xs@232@01)
                  (and
                    (not (Set_in x2@244@01 ys@233@01))
                    (and
                      (not
                        (=
                          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                          0))
                      (and
                        (not
                          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
                        (not (= x1@243@01 x2@244@01)))))))))))
      (and
        (Set_in x1@243@01 xs@232@01)
        (and
          (not (Set_in x1@243@01 ys@233@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
              (and
                (Set_in x2@244@01 xs@232@01)
                (and
                  (not (Set_in x2@244@01 ys@233@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
                      (not (= x1@243@01 x2@244@01))))))))))))
  :pattern ((Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01) (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/generalised_shape.vpr@119@7@121@92-aux|)))
(assert (forall ((x1@243@01 $Ref) (x2@244@01 $Ref)) (!
  (=>
    (and
      (Set_in x1@243@01 xs@232@01)
      (and
        (not (Set_in x1@243@01 ys@233@01))
        (and
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@243@01)
              0))
          (and
            (not
              (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01))
            (and
              (Set_in x2@244@01 xs@232@01)
              (and
                (not (Set_in x2@244@01 ys@233@01))
                (and
                  (not
                    (=
                      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@244@01)
                      0))
                  (and
                    (not
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
                    (not (= x1@243@01 x2@244@01))))))))))
    (not
      (=
        ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01)
        ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01))))
  :pattern ((Set_in x1@243@01 xs@232@01) (Set_in x2@244@01 xs@232@01))
  :pattern ((Set_in x1@243@01 xs@232@01) (Set_in x2@244@01 ys@233@01))
  :pattern ((Set_in x1@243@01 xs@232@01) (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
  :pattern ((Set_in x1@243@01 ys@233@01) (Set_in x2@244@01 xs@232@01))
  :pattern ((Set_in x1@243@01 ys@233@01) (Set_in x2@244@01 ys@233@01))
  :pattern ((Set_in x1@243@01 ys@233@01) (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
  :pattern ((Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01) (Set_in x2@244@01 xs@232@01))
  :pattern ((Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01) (Set_in x2@244@01 ys@233@01))
  :pattern ((Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@243@01) xs@232@01) (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@244@01) xs@232@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/generalised_shape.vpr@119@7@121@92|)))
(declare-const x@245@01 $Ref)
(push) ; 3
; [eval] (x in xs) && (!((x in ys)) && (x.f != 0 && !((x.g in xs))))
; [eval] (x in xs)
(push) ; 4
; [then-branch: 18 | !(x@245@01 in xs@232@01) | live]
; [else-branch: 18 | x@245@01 in xs@232@01 | live]
(push) ; 5
; [then-branch: 18 | !(x@245@01 in xs@232@01)]
(assert (not (Set_in x@245@01 xs@232@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 18 | x@245@01 in xs@232@01]
(assert (Set_in x@245@01 xs@232@01))
; [eval] !((x in ys))
; [eval] (x in ys)
(push) ; 6
; [then-branch: 19 | x@245@01 in ys@233@01 | live]
; [else-branch: 19 | !(x@245@01 in ys@233@01) | live]
(push) ; 7
; [then-branch: 19 | x@245@01 in ys@233@01]
(assert (Set_in x@245@01 ys@233@01))
(pop) ; 7
(push) ; 7
; [else-branch: 19 | !(x@245@01 in ys@233@01)]
(assert (not (Set_in x@245@01 ys@233@01)))
; [eval] x.f != 0
(push) ; 8
(assert (not (and
  (img@239@01 x@245@01)
  (and
    (Set_in (inv@238@01 x@245@01) xs@232@01)
    (not (Set_in (inv@238@01 x@245@01) ys@233@01))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
; [then-branch: 20 | Lookup(f, First:($t@235@01), x@245@01) == 0 | live]
; [else-branch: 20 | Lookup(f, First:($t@235@01), x@245@01) != 0 | live]
(push) ; 9
; [then-branch: 20 | Lookup(f, First:($t@235@01), x@245@01) == 0]
(assert (=
  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x@245@01)
  0))
(pop) ; 9
(push) ; 9
; [else-branch: 20 | Lookup(f, First:($t@235@01), x@245@01) != 0]
(assert (not
  (=
    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x@245@01)
    0)))
; [eval] !((x.g in xs))
; [eval] (x.g in xs)
(push) ; 10
(assert (not (and
  (img@242@01 x@245@01)
  (and
    (Set_in (inv@241@01 x@245@01) xs@232@01)
    (and
      (not (Set_in (inv@241@01 x@245@01) ys@233@01))
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) (inv@241@01 x@245@01))
          0)))))))
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
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x@245@01)
      0))
  (=
    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x@245@01)
    0)))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (not (Set_in x@245@01 ys@233@01))
  (and
    (not (Set_in x@245@01 ys@233@01))
    (or
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x@245@01)
          0))
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x@245@01)
        0)))))
(assert (or (not (Set_in x@245@01 ys@233@01)) (Set_in x@245@01 ys@233@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in x@245@01 xs@232@01)
  (and
    (Set_in x@245@01 xs@232@01)
    (=>
      (not (Set_in x@245@01 ys@233@01))
      (and
        (not (Set_in x@245@01 ys@233@01))
        (or
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x@245@01)
              0))
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x@245@01)
            0))))
    (or (not (Set_in x@245@01 ys@233@01)) (Set_in x@245@01 ys@233@01)))))
(assert (or (Set_in x@245@01 xs@232@01) (not (Set_in x@245@01 xs@232@01))))
(assert (and
  (Set_in x@245@01 xs@232@01)
  (and
    (not (Set_in x@245@01 ys@233@01))
    (and
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x@245@01)
          0))
      (not
        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x@245@01) xs@232@01))))))
(push) ; 4
(assert (not (and
  (img@242@01 x@245@01)
  (and
    (Set_in (inv@241@01 x@245@01) xs@232@01)
    (and
      (not (Set_in (inv@241@01 x@245@01) ys@233@01))
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) (inv@241@01 x@245@01))
          0)))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@246@01 ($Ref) $Ref)
(declare-fun img@247@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((x@245@01 $Ref)) (!
  (=>
    (and
      (Set_in x@245@01 xs@232@01)
      (and
        (not (Set_in x@245@01 ys@233@01))
        (and
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x@245@01)
              0))
          (not
            (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x@245@01) xs@232@01)))))
    (and
      (=>
        (Set_in x@245@01 xs@232@01)
        (and
          (Set_in x@245@01 xs@232@01)
          (=>
            (not (Set_in x@245@01 ys@233@01))
            (and
              (not (Set_in x@245@01 ys@233@01))
              (or
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x@245@01)
                    0))
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x@245@01)
                  0))))
          (or (not (Set_in x@245@01 ys@233@01)) (Set_in x@245@01 ys@233@01))))
      (or (Set_in x@245@01 xs@232@01) (not (Set_in x@245@01 xs@232@01)))))
  :pattern (($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x@245@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@245@01 $Ref) (x2@245@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in x1@245@01 xs@232@01)
        (and
          (not (Set_in x1@245@01 ys@233@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x1@245@01)
                0))
            (not
              (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@245@01) xs@232@01)))))
      (and
        (Set_in x2@245@01 xs@232@01)
        (and
          (not (Set_in x2@245@01 ys@233@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x2@245@01)
                0))
            (not
              (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@245@01) xs@232@01)))))
      (=
        ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x1@245@01)
        ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x2@245@01)))
    (= x1@245@01 x2@245@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@245@01 $Ref)) (!
  (=>
    (and
      (Set_in x@245@01 xs@232@01)
      (and
        (not (Set_in x@245@01 ys@233@01))
        (and
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x@245@01)
              0))
          (not
            (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x@245@01) xs@232@01)))))
    (and
      (=
        (inv@246@01 ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x@245@01))
        x@245@01)
      (img@247@01 ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x@245@01))))
  :pattern (($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x@245@01))
  :qid |quant-u-5989|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@247@01 r)
      (and
        (Set_in (inv@246@01 r) xs@232@01)
        (and
          (not (Set_in (inv@246@01 r) ys@233@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) (inv@246@01 r))
                0))
            (not
              (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) (inv@246@01 r)) xs@232@01))))))
    (=
      ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) (inv@246@01 r))
      r))
  :pattern ((inv@246@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@245@01 $Ref)) (!
  (=>
    (and
      (Set_in x@245@01 xs@232@01)
      (and
        (not (Set_in x@245@01 ys@233@01))
        (and
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) x@245@01)
              0))
          (not
            (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x@245@01) xs@232@01)))))
    (not
      (=
        ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x@245@01)
        $Ref.null)))
  :pattern (($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x@245@01))
  :qid |f-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (=
      ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) x@245@01)
      x@237@01)
    (=
      (and
        (img@247@01 r)
        (and
          (Set_in (inv@246@01 r) xs@232@01)
          (and
            (not (Set_in (inv@246@01 r) ys@233@01))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) (inv@246@01 r))
                  0))
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) (inv@246@01 r)) xs@232@01))))))
      (and
        (img@239@01 r)
        (and
          (Set_in (inv@238@01 r) xs@232@01)
          (not (Set_in (inv@238@01 r) ys@233@01))))))
  
  :qid |quant-u-5990|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (P%trigger $t@235@01 xs@232@01 ys@233@01))
; [exec]
; inhale (x in xs)
(declare-const $t@248@01 $Snap)
(assert (= $t@248@01 $Snap.unit))
; [eval] (x in xs)
(assert (Set_in x@234@01 xs@232@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale x != null
(declare-const $t@249@01 $Snap)
(assert (= $t@249@01 $Snap.unit))
; [eval] x != null
(assert (not (= x@234@01 $Ref.null)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; a := x.f
(declare-const sm@250@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@239@01 r)
      (and
        (Set_in (inv@238@01 r) xs@232@01)
        (not (Set_in (inv@238@01 r) ys@233@01))))
    (=
      ($FVF.lookup_f (as sm@250@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) r)))
  :pattern (($FVF.lookup_f (as sm@250@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) r))
  :qid |qp.fvfValDef57|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@247@01 r)
      (and
        (Set_in (inv@246@01 r) xs@232@01)
        (and
          (not (Set_in (inv@246@01 r) ys@233@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) (inv@246@01 r))
                0))
            (not
              (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) (inv@246@01 r)) xs@232@01))))))
    (=
      ($FVF.lookup_f (as sm@250@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second $t@235@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@250@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second $t@235@01)))) r))
  :qid |qp.fvfValDef58|)))
(declare-const pm@251@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@251@01  $FPM) r)
    (+
      (ite
        (and
          (img@239@01 r)
          (and
            (Set_in (inv@238@01 r) xs@232@01)
            (not (Set_in (inv@238@01 r) ys@233@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@247@01 r)
          (and
            (Set_in (inv@246@01 r) xs@232@01)
            (and
              (not (Set_in (inv@246@01 r) ys@233@01))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@235@01)) (inv@246@01 r))
                    0))
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@235@01))) (inv@246@01 r)) xs@232@01))))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@251@01  $FPM) r))
  :qid |qp.resPrmSumDef59|)))
(set-option :timeout 0)
(push) ; 3
(assert (not (< $Perm.No ($FVF.perm_f (as pm@251@01  $FPM) x@234@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1
; ---------- test02 ----------
(declare-const xs@252@01 Set<$Ref>)
(declare-const ys@253@01 Set<$Ref>)
(declare-const x@254@01 $Ref)
(declare-const xs@255@01 Set<$Ref>)
(declare-const ys@256@01 Set<$Ref>)
(declare-const x@257@01 $Ref)
(push) ; 1
(declare-const $t@258@01 $Snap)
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
(declare-const a@259@01 Int)
; [exec]
; var b: Ref
(declare-const b@260@01 $Ref)
; [exec]
; unfold acc(P(xs, ys), write)
(assert (= $t@258@01 ($Snap.combine ($Snap.first $t@258@01) ($Snap.second $t@258@01))))
(declare-const x@261@01 $Ref)
(push) ; 3
; [eval] (x in xs) && !((x in ys))
; [eval] (x in xs)
(push) ; 4
; [then-branch: 21 | !(x@261@01 in xs@255@01) | live]
; [else-branch: 21 | x@261@01 in xs@255@01 | live]
(push) ; 5
; [then-branch: 21 | !(x@261@01 in xs@255@01)]
(assert (not (Set_in x@261@01 xs@255@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 21 | x@261@01 in xs@255@01]
(assert (Set_in x@261@01 xs@255@01))
; [eval] !((x in ys))
; [eval] (x in ys)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (Set_in x@261@01 xs@255@01) (not (Set_in x@261@01 xs@255@01))))
(assert (and (Set_in x@261@01 xs@255@01) (not (Set_in x@261@01 ys@256@01))))
(pop) ; 3
(declare-fun inv@262@01 ($Ref) $Ref)
(declare-fun img@263@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((x@261@01 $Ref)) (!
  (=>
    (and (Set_in x@261@01 xs@255@01) (not (Set_in x@261@01 ys@256@01)))
    (or (Set_in x@261@01 xs@255@01) (not (Set_in x@261@01 xs@255@01))))
  :pattern ((Set_in x@261@01 xs@255@01))
  :pattern ((Set_in x@261@01 ys@256@01))
  :pattern ((inv@262@01 x@261@01))
  :pattern ((img@263@01 x@261@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@261@01 $Ref) (x2@261@01 $Ref)) (!
  (=>
    (and
      (and (Set_in x1@261@01 xs@255@01) (not (Set_in x1@261@01 ys@256@01)))
      (and (Set_in x2@261@01 xs@255@01) (not (Set_in x2@261@01 ys@256@01)))
      (= x1@261@01 x2@261@01))
    (= x1@261@01 x2@261@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@261@01 $Ref)) (!
  (=>
    (and (Set_in x@261@01 xs@255@01) (not (Set_in x@261@01 ys@256@01)))
    (and (= (inv@262@01 x@261@01) x@261@01) (img@263@01 x@261@01)))
  :pattern ((Set_in x@261@01 xs@255@01))
  :pattern ((Set_in x@261@01 ys@256@01))
  :pattern ((inv@262@01 x@261@01))
  :pattern ((img@263@01 x@261@01))
  :qid |quant-u-5992|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@263@01 r)
      (and
        (Set_in (inv@262@01 r) xs@255@01)
        (not (Set_in (inv@262@01 r) ys@256@01))))
    (= (inv@262@01 r) r))
  :pattern ((inv@262@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@261@01 $Ref)) (!
  (=>
    (and (Set_in x@261@01 xs@255@01) (not (Set_in x@261@01 ys@256@01)))
    (not (= x@261@01 $Ref.null)))
  :pattern ((Set_in x@261@01 xs@255@01))
  :pattern ((Set_in x@261@01 ys@256@01))
  :pattern ((inv@262@01 x@261@01))
  :pattern ((img@263@01 x@261@01))
  :qid |f-permImpliesNonNull|)))
(assert (=
  ($Snap.second $t@258@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@258@01))
    ($Snap.second ($Snap.second $t@258@01)))))
(declare-const x@264@01 $Ref)
(push) ; 3
; [eval] (x in xs) && (!((x in ys)) && x.f != 0)
; [eval] (x in xs)
(push) ; 4
; [then-branch: 22 | !(x@264@01 in xs@255@01) | live]
; [else-branch: 22 | x@264@01 in xs@255@01 | live]
(push) ; 5
; [then-branch: 22 | !(x@264@01 in xs@255@01)]
(assert (not (Set_in x@264@01 xs@255@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 22 | x@264@01 in xs@255@01]
(assert (Set_in x@264@01 xs@255@01))
; [eval] !((x in ys))
; [eval] (x in ys)
(push) ; 6
; [then-branch: 23 | x@264@01 in ys@256@01 | live]
; [else-branch: 23 | !(x@264@01 in ys@256@01) | live]
(push) ; 7
; [then-branch: 23 | x@264@01 in ys@256@01]
(assert (Set_in x@264@01 ys@256@01))
(pop) ; 7
(push) ; 7
; [else-branch: 23 | !(x@264@01 in ys@256@01)]
(assert (not (Set_in x@264@01 ys@256@01)))
; [eval] x.f != 0
(push) ; 8
(assert (not (and
  (img@263@01 x@264@01)
  (and
    (Set_in (inv@262@01 x@264@01) xs@255@01)
    (not (Set_in (inv@262@01 x@264@01) ys@256@01))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or (not (Set_in x@264@01 ys@256@01)) (Set_in x@264@01 ys@256@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in x@264@01 xs@255@01)
  (and
    (Set_in x@264@01 xs@255@01)
    (or (not (Set_in x@264@01 ys@256@01)) (Set_in x@264@01 ys@256@01)))))
(assert (or (Set_in x@264@01 xs@255@01) (not (Set_in x@264@01 xs@255@01))))
(assert (and
  (Set_in x@264@01 xs@255@01)
  (and
    (not (Set_in x@264@01 ys@256@01))
    (not
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x@264@01)
        0)))))
(pop) ; 3
(declare-fun inv@265@01 ($Ref) $Ref)
(declare-fun img@266@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((x@264@01 $Ref)) (!
  (=>
    (and
      (Set_in x@264@01 xs@255@01)
      (and
        (not (Set_in x@264@01 ys@256@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x@264@01)
            0))))
    (and
      (=>
        (Set_in x@264@01 xs@255@01)
        (and
          (Set_in x@264@01 xs@255@01)
          (or (not (Set_in x@264@01 ys@256@01)) (Set_in x@264@01 ys@256@01))))
      (or (Set_in x@264@01 xs@255@01) (not (Set_in x@264@01 xs@255@01)))))
  :pattern ((Set_in x@264@01 xs@255@01))
  :pattern ((Set_in x@264@01 ys@256@01))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x@264@01))
  :pattern ((inv@265@01 x@264@01))
  :pattern ((img@266@01 x@264@01))
  :qid |g-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@264@01 $Ref) (x2@264@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in x1@264@01 xs@255@01)
        (and
          (not (Set_in x1@264@01 ys@256@01))
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@264@01)
              0))))
      (and
        (Set_in x2@264@01 xs@255@01)
        (and
          (not (Set_in x2@264@01 ys@256@01))
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@264@01)
              0))))
      (= x1@264@01 x2@264@01))
    (= x1@264@01 x2@264@01))
  
  :qid |g-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@264@01 $Ref)) (!
  (=>
    (and
      (Set_in x@264@01 xs@255@01)
      (and
        (not (Set_in x@264@01 ys@256@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x@264@01)
            0))))
    (and (= (inv@265@01 x@264@01) x@264@01) (img@266@01 x@264@01)))
  :pattern ((Set_in x@264@01 xs@255@01))
  :pattern ((Set_in x@264@01 ys@256@01))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x@264@01))
  :pattern ((inv@265@01 x@264@01))
  :pattern ((img@266@01 x@264@01))
  :qid |quant-u-5994|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@266@01 r)
      (and
        (Set_in (inv@265@01 r) xs@255@01)
        (and
          (not (Set_in (inv@265@01 r) ys@256@01))
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) (inv@265@01 r))
              0)))))
    (= (inv@265@01 r) r))
  :pattern ((inv@265@01 r))
  :qid |g-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@264@01 $Ref)) (!
  (=>
    (and
      (Set_in x@264@01 xs@255@01)
      (and
        (not (Set_in x@264@01 ys@256@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x@264@01)
            0))))
    (not (= x@264@01 $Ref.null)))
  :pattern ((Set_in x@264@01 xs@255@01))
  :pattern ((Set_in x@264@01 ys@256@01))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x@264@01))
  :pattern ((inv@265@01 x@264@01))
  :pattern ((img@266@01 x@264@01))
  :qid |g-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second $t@258@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@258@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@258@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@258@01))) $Snap.unit))
; [eval] (forall x1: Ref, x2: Ref :: { (x1 in xs), (x2 in xs) } { (x1 in xs), (x2 in ys) } { (x1 in xs), (x2.g in xs) } { (x1 in ys), (x2 in xs) } { (x1 in ys), (x2 in ys) } { (x1 in ys), (x2.g in xs) } { (x1.g in xs), (x2 in xs) } { (x1.g in xs), (x2 in ys) } { (x1.g in xs), (x2.g in xs) } (x1 in xs) && (!((x1 in ys)) && (x1.f != 0 && (!((x1.g in xs)) && ((x2 in xs) && (!((x2 in ys)) && (x2.f != 0 && (!((x2.g in xs)) && x1 != x2))))))) ==> x1.g != x2.g)
(declare-const x1@267@01 $Ref)
(declare-const x2@268@01 $Ref)
(push) ; 3
; [eval] (x1 in xs) && (!((x1 in ys)) && (x1.f != 0 && (!((x1.g in xs)) && ((x2 in xs) && (!((x2 in ys)) && (x2.f != 0 && (!((x2.g in xs)) && x1 != x2))))))) ==> x1.g != x2.g
; [eval] (x1 in xs) && (!((x1 in ys)) && (x1.f != 0 && (!((x1.g in xs)) && ((x2 in xs) && (!((x2 in ys)) && (x2.f != 0 && (!((x2.g in xs)) && x1 != x2)))))))
; [eval] (x1 in xs)
(push) ; 4
; [then-branch: 24 | !(x1@267@01 in xs@255@01) | live]
; [else-branch: 24 | x1@267@01 in xs@255@01 | live]
(push) ; 5
; [then-branch: 24 | !(x1@267@01 in xs@255@01)]
(assert (not (Set_in x1@267@01 xs@255@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 24 | x1@267@01 in xs@255@01]
(assert (Set_in x1@267@01 xs@255@01))
; [eval] !((x1 in ys))
; [eval] (x1 in ys)
(push) ; 6
; [then-branch: 25 | x1@267@01 in ys@256@01 | live]
; [else-branch: 25 | !(x1@267@01 in ys@256@01) | live]
(push) ; 7
; [then-branch: 25 | x1@267@01 in ys@256@01]
(assert (Set_in x1@267@01 ys@256@01))
(pop) ; 7
(push) ; 7
; [else-branch: 25 | !(x1@267@01 in ys@256@01)]
(assert (not (Set_in x1@267@01 ys@256@01)))
; [eval] x1.f != 0
(push) ; 8
(assert (not (and
  (img@263@01 x1@267@01)
  (and
    (Set_in (inv@262@01 x1@267@01) xs@255@01)
    (not (Set_in (inv@262@01 x1@267@01) ys@256@01))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
; [then-branch: 26 | Lookup(f, First:($t@258@01), x1@267@01) == 0 | live]
; [else-branch: 26 | Lookup(f, First:($t@258@01), x1@267@01) != 0 | live]
(push) ; 9
; [then-branch: 26 | Lookup(f, First:($t@258@01), x1@267@01) == 0]
(assert (=
  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
  0))
(pop) ; 9
(push) ; 9
; [else-branch: 26 | Lookup(f, First:($t@258@01), x1@267@01) != 0]
(assert (not
  (=
    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
    0)))
; [eval] !((x1.g in xs))
; [eval] (x1.g in xs)
(push) ; 10
(assert (not (and
  (img@266@01 x1@267@01)
  (and
    (Set_in (inv@265@01 x1@267@01) xs@255@01)
    (and
      (not (Set_in (inv@265@01 x1@267@01) ys@256@01))
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) (inv@265@01 x1@267@01))
          0)))))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(push) ; 10
; [then-branch: 27 | Lookup(g, First:(Second:($t@258@01)), x1@267@01) in xs@255@01 | live]
; [else-branch: 27 | !(Lookup(g, First:(Second:($t@258@01)), x1@267@01) in xs@255@01) | live]
(push) ; 11
; [then-branch: 27 | Lookup(g, First:(Second:($t@258@01)), x1@267@01) in xs@255@01]
(assert (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
(pop) ; 11
(push) ; 11
; [else-branch: 27 | !(Lookup(g, First:(Second:($t@258@01)), x1@267@01) in xs@255@01)]
(assert (not
  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01)))
; [eval] (x2 in xs)
(push) ; 12
; [then-branch: 28 | !(x2@268@01 in xs@255@01) | live]
; [else-branch: 28 | x2@268@01 in xs@255@01 | live]
(push) ; 13
; [then-branch: 28 | !(x2@268@01 in xs@255@01)]
(assert (not (Set_in x2@268@01 xs@255@01)))
(pop) ; 13
(push) ; 13
; [else-branch: 28 | x2@268@01 in xs@255@01]
(assert (Set_in x2@268@01 xs@255@01))
; [eval] !((x2 in ys))
; [eval] (x2 in ys)
(push) ; 14
; [then-branch: 29 | x2@268@01 in ys@256@01 | live]
; [else-branch: 29 | !(x2@268@01 in ys@256@01) | live]
(push) ; 15
; [then-branch: 29 | x2@268@01 in ys@256@01]
(assert (Set_in x2@268@01 ys@256@01))
(pop) ; 15
(push) ; 15
; [else-branch: 29 | !(x2@268@01 in ys@256@01)]
(assert (not (Set_in x2@268@01 ys@256@01)))
; [eval] x2.f != 0
(push) ; 16
(assert (not (and
  (img@263@01 x2@268@01)
  (and
    (Set_in (inv@262@01 x2@268@01) xs@255@01)
    (not (Set_in (inv@262@01 x2@268@01) ys@256@01))))))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(push) ; 16
; [then-branch: 30 | Lookup(f, First:($t@258@01), x2@268@01) == 0 | live]
; [else-branch: 30 | Lookup(f, First:($t@258@01), x2@268@01) != 0 | live]
(push) ; 17
; [then-branch: 30 | Lookup(f, First:($t@258@01), x2@268@01) == 0]
(assert (=
  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
  0))
(pop) ; 17
(push) ; 17
; [else-branch: 30 | Lookup(f, First:($t@258@01), x2@268@01) != 0]
(assert (not
  (=
    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
    0)))
; [eval] !((x2.g in xs))
; [eval] (x2.g in xs)
(push) ; 18
(assert (not (and
  (img@266@01 x2@268@01)
  (and
    (Set_in (inv@265@01 x2@268@01) xs@255@01)
    (and
      (not (Set_in (inv@265@01 x2@268@01) ys@256@01))
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) (inv@265@01 x2@268@01))
          0)))))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(push) ; 18
; [then-branch: 31 | Lookup(g, First:(Second:($t@258@01)), x2@268@01) in xs@255@01 | live]
; [else-branch: 31 | !(Lookup(g, First:(Second:($t@258@01)), x2@268@01) in xs@255@01) | live]
(push) ; 19
; [then-branch: 31 | Lookup(g, First:(Second:($t@258@01)), x2@268@01) in xs@255@01]
(assert (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
(pop) ; 19
(push) ; 19
; [else-branch: 31 | !(Lookup(g, First:(Second:($t@258@01)), x2@268@01) in xs@255@01)]
(assert (not
  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01)))
; [eval] x1 != x2
(pop) ; 19
(pop) ; 18
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01)))
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(assert (=>
  (not
    (=
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
      0))
  (and
    (not
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
        0))
    (or
      (not
        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01)))))
(assert (or
  (not
    (=
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
      0))
  (=
    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
    0)))
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (=>
  (not (Set_in x2@268@01 ys@256@01))
  (and
    (not (Set_in x2@268@01 ys@256@01))
    (=>
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
          0))
      (and
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
            0))
        (or
          (not
            (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))))
    (or
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
          0))
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
        0)))))
(assert (or (not (Set_in x2@268@01 ys@256@01)) (Set_in x2@268@01 ys@256@01)))
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in x2@268@01 xs@255@01)
  (and
    (Set_in x2@268@01 xs@255@01)
    (=>
      (not (Set_in x2@268@01 ys@256@01))
      (and
        (not (Set_in x2@268@01 ys@256@01))
        (=>
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
              0))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                0))
            (or
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
              (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))))
        (or
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
              0))
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
            0))))
    (or (not (Set_in x2@268@01 ys@256@01)) (Set_in x2@268@01 ys@256@01)))))
(assert (or (Set_in x2@268@01 xs@255@01) (not (Set_in x2@268@01 xs@255@01))))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (=>
  (not
    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
  (and
    (not
      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
    (=>
      (Set_in x2@268@01 xs@255@01)
      (and
        (Set_in x2@268@01 xs@255@01)
        (=>
          (not (Set_in x2@268@01 ys@256@01))
          (and
            (not (Set_in x2@268@01 ys@256@01))
            (=>
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                  0))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                    0))
                (or
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))))
            (or
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                  0))
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                0))))
        (or (not (Set_in x2@268@01 ys@256@01)) (Set_in x2@268@01 ys@256@01))))
    (or (Set_in x2@268@01 xs@255@01) (not (Set_in x2@268@01 xs@255@01))))))
(assert (or
  (not
    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01)))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (not
    (=
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
      0))
  (and
    (not
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
        0))
    (=>
      (not
        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
      (and
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
        (=>
          (Set_in x2@268@01 xs@255@01)
          (and
            (Set_in x2@268@01 xs@255@01)
            (=>
              (not (Set_in x2@268@01 ys@256@01))
              (and
                (not (Set_in x2@268@01 ys@256@01))
                (=>
                  (not
                    (=
                      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                      0))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                        0))
                    (or
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))))
                (or
                  (not
                    (=
                      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                      0))
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                    0))))
            (or (not (Set_in x2@268@01 ys@256@01)) (Set_in x2@268@01 ys@256@01))))
        (or (Set_in x2@268@01 xs@255@01) (not (Set_in x2@268@01 xs@255@01)))))
    (or
      (not
        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01)))))
(assert (or
  (not
    (=
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
      0))
  (=
    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
    0)))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (not (Set_in x1@267@01 ys@256@01))
  (and
    (not (Set_in x1@267@01 ys@256@01))
    (=>
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
          0))
      (and
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
            0))
        (=>
          (not
            (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
          (and
            (not
              (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
            (=>
              (Set_in x2@268@01 xs@255@01)
              (and
                (Set_in x2@268@01 xs@255@01)
                (=>
                  (not (Set_in x2@268@01 ys@256@01))
                  (and
                    (not (Set_in x2@268@01 ys@256@01))
                    (=>
                      (not
                        (=
                          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                          0))
                      (and
                        (not
                          (=
                            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                            0))
                        (or
                          (not
                            (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
                          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))))
                    (or
                      (not
                        (=
                          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                          0))
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                        0))))
                (or
                  (not (Set_in x2@268@01 ys@256@01))
                  (Set_in x2@268@01 ys@256@01))))
            (or (Set_in x2@268@01 xs@255@01) (not (Set_in x2@268@01 xs@255@01)))))
        (or
          (not
            (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))))
    (or
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
          0))
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
        0)))))
(assert (or (not (Set_in x1@267@01 ys@256@01)) (Set_in x1@267@01 ys@256@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in x1@267@01 xs@255@01)
  (and
    (Set_in x1@267@01 xs@255@01)
    (=>
      (not (Set_in x1@267@01 ys@256@01))
      (and
        (not (Set_in x1@267@01 ys@256@01))
        (=>
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
              0))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                0))
            (=>
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
              (and
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
                (=>
                  (Set_in x2@268@01 xs@255@01)
                  (and
                    (Set_in x2@268@01 xs@255@01)
                    (=>
                      (not (Set_in x2@268@01 ys@256@01))
                      (and
                        (not (Set_in x2@268@01 ys@256@01))
                        (=>
                          (not
                            (=
                              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                              0))
                          (and
                            (not
                              (=
                                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                                0))
                            (or
                              (not
                                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
                              (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))))
                        (or
                          (not
                            (=
                              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                              0))
                          (=
                            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                            0))))
                    (or
                      (not (Set_in x2@268@01 ys@256@01))
                      (Set_in x2@268@01 ys@256@01))))
                (or
                  (Set_in x2@268@01 xs@255@01)
                  (not (Set_in x2@268@01 xs@255@01)))))
            (or
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
              (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))))
        (or
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
              0))
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
            0))))
    (or (not (Set_in x1@267@01 ys@256@01)) (Set_in x1@267@01 ys@256@01)))))
(assert (or (Set_in x1@267@01 xs@255@01) (not (Set_in x1@267@01 xs@255@01))))
(push) ; 4
; [then-branch: 32 | x1@267@01 in xs@255@01 && !(x1@267@01 in ys@256@01) && Lookup(f, First:($t@258@01), x1@267@01) != 0 && !(Lookup(g, First:(Second:($t@258@01)), x1@267@01) in xs@255@01) && x2@268@01 in xs@255@01 && !(x2@268@01 in ys@256@01) && Lookup(f, First:($t@258@01), x2@268@01) != 0 && !(Lookup(g, First:(Second:($t@258@01)), x2@268@01) in xs@255@01) && x1@267@01 != x2@268@01 | live]
; [else-branch: 32 | !(x1@267@01 in xs@255@01 && !(x1@267@01 in ys@256@01) && Lookup(f, First:($t@258@01), x1@267@01) != 0 && !(Lookup(g, First:(Second:($t@258@01)), x1@267@01) in xs@255@01) && x2@268@01 in xs@255@01 && !(x2@268@01 in ys@256@01) && Lookup(f, First:($t@258@01), x2@268@01) != 0 && !(Lookup(g, First:(Second:($t@258@01)), x2@268@01) in xs@255@01) && x1@267@01 != x2@268@01) | live]
(push) ; 5
; [then-branch: 32 | x1@267@01 in xs@255@01 && !(x1@267@01 in ys@256@01) && Lookup(f, First:($t@258@01), x1@267@01) != 0 && !(Lookup(g, First:(Second:($t@258@01)), x1@267@01) in xs@255@01) && x2@268@01 in xs@255@01 && !(x2@268@01 in ys@256@01) && Lookup(f, First:($t@258@01), x2@268@01) != 0 && !(Lookup(g, First:(Second:($t@258@01)), x2@268@01) in xs@255@01) && x1@267@01 != x2@268@01]
(assert (and
  (Set_in x1@267@01 xs@255@01)
  (and
    (not (Set_in x1@267@01 ys@256@01))
    (and
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
          0))
      (and
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
        (and
          (Set_in x2@268@01 xs@255@01)
          (and
            (not (Set_in x2@268@01 ys@256@01))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                  0))
              (and
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
                (not (= x1@267@01 x2@268@01)))))))))))
; [eval] x1.g != x2.g
(push) ; 6
(assert (not (and
  (img@266@01 x1@267@01)
  (and
    (Set_in (inv@265@01 x1@267@01) xs@255@01)
    (and
      (not (Set_in (inv@265@01 x1@267@01) ys@256@01))
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) (inv@265@01 x1@267@01))
          0)))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (and
  (img@266@01 x2@268@01)
  (and
    (Set_in (inv@265@01 x2@268@01) xs@255@01)
    (and
      (not (Set_in (inv@265@01 x2@268@01) ys@256@01))
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) (inv@265@01 x2@268@01))
          0)))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 32 | !(x1@267@01 in xs@255@01 && !(x1@267@01 in ys@256@01) && Lookup(f, First:($t@258@01), x1@267@01) != 0 && !(Lookup(g, First:(Second:($t@258@01)), x1@267@01) in xs@255@01) && x2@268@01 in xs@255@01 && !(x2@268@01 in ys@256@01) && Lookup(f, First:($t@258@01), x2@268@01) != 0 && !(Lookup(g, First:(Second:($t@258@01)), x2@268@01) in xs@255@01) && x1@267@01 != x2@268@01)]
(assert (not
  (and
    (Set_in x1@267@01 xs@255@01)
    (and
      (not (Set_in x1@267@01 ys@256@01))
      (and
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
            0))
        (and
          (not
            (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
          (and
            (Set_in x2@268@01 xs@255@01)
            (and
              (not (Set_in x2@268@01 ys@256@01))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                    0))
                (and
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
                  (not (= x1@267@01 x2@268@01))))))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (Set_in x1@267@01 xs@255@01)
    (and
      (not (Set_in x1@267@01 ys@256@01))
      (and
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
            0))
        (and
          (not
            (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
          (and
            (Set_in x2@268@01 xs@255@01)
            (and
              (not (Set_in x2@268@01 ys@256@01))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                    0))
                (and
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
                  (not (= x1@267@01 x2@268@01))))))))))
  (and
    (Set_in x1@267@01 xs@255@01)
    (not (Set_in x1@267@01 ys@256@01))
    (not
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
        0))
    (not
      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
    (Set_in x2@268@01 xs@255@01)
    (not (Set_in x2@268@01 ys@256@01))
    (not
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
        0))
    (not
      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
    (not (= x1@267@01 x2@268@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in x1@267@01 xs@255@01)
      (and
        (not (Set_in x1@267@01 ys@256@01))
        (and
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
              0))
          (and
            (not
              (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
            (and
              (Set_in x2@268@01 xs@255@01)
              (and
                (not (Set_in x2@268@01 ys@256@01))
                (and
                  (not
                    (=
                      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                      0))
                  (and
                    (not
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
                    (not (= x1@267@01 x2@268@01)))))))))))
  (and
    (Set_in x1@267@01 xs@255@01)
    (and
      (not (Set_in x1@267@01 ys@256@01))
      (and
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
            0))
        (and
          (not
            (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
          (and
            (Set_in x2@268@01 xs@255@01)
            (and
              (not (Set_in x2@268@01 ys@256@01))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                    0))
                (and
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
                  (not (= x1@267@01 x2@268@01))))))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x1@267@01 $Ref) (x2@268@01 $Ref)) (!
  (and
    (=>
      (Set_in x1@267@01 xs@255@01)
      (and
        (Set_in x1@267@01 xs@255@01)
        (=>
          (not (Set_in x1@267@01 ys@256@01))
          (and
            (not (Set_in x1@267@01 ys@256@01))
            (=>
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                  0))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                    0))
                (=>
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
                  (and
                    (not
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
                    (=>
                      (Set_in x2@268@01 xs@255@01)
                      (and
                        (Set_in x2@268@01 xs@255@01)
                        (=>
                          (not (Set_in x2@268@01 ys@256@01))
                          (and
                            (not (Set_in x2@268@01 ys@256@01))
                            (=>
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                                  0))
                              (and
                                (not
                                  (=
                                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                                    0))
                                (or
                                  (not
                                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
                                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))))
                            (or
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                                  0))
                              (=
                                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                                0))))
                        (or
                          (not (Set_in x2@268@01 ys@256@01))
                          (Set_in x2@268@01 ys@256@01))))
                    (or
                      (Set_in x2@268@01 xs@255@01)
                      (not (Set_in x2@268@01 xs@255@01)))))
                (or
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))))
            (or
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                  0))
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                0))))
        (or (not (Set_in x1@267@01 ys@256@01)) (Set_in x1@267@01 ys@256@01))))
    (or (Set_in x1@267@01 xs@255@01) (not (Set_in x1@267@01 xs@255@01)))
    (=>
      (and
        (Set_in x1@267@01 xs@255@01)
        (and
          (not (Set_in x1@267@01 ys@256@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
              (and
                (Set_in x2@268@01 xs@255@01)
                (and
                  (not (Set_in x2@268@01 ys@256@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
                      (not (= x1@267@01 x2@268@01))))))))))
      (and
        (Set_in x1@267@01 xs@255@01)
        (not (Set_in x1@267@01 ys@256@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
        (Set_in x2@268@01 xs@255@01)
        (not (Set_in x2@268@01 ys@256@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
        (not (= x1@267@01 x2@268@01))))
    (or
      (not
        (and
          (Set_in x1@267@01 xs@255@01)
          (and
            (not (Set_in x1@267@01 ys@256@01))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                  0))
              (and
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
                (and
                  (Set_in x2@268@01 xs@255@01)
                  (and
                    (not (Set_in x2@268@01 ys@256@01))
                    (and
                      (not
                        (=
                          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                          0))
                      (and
                        (not
                          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
                        (not (= x1@267@01 x2@268@01)))))))))))
      (and
        (Set_in x1@267@01 xs@255@01)
        (and
          (not (Set_in x1@267@01 ys@256@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
              (and
                (Set_in x2@268@01 xs@255@01)
                (and
                  (not (Set_in x2@268@01 ys@256@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
                      (not (= x1@267@01 x2@268@01))))))))))))
  :pattern ((Set_in x1@267@01 xs@255@01) (Set_in x2@268@01 xs@255@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/generalised_shape.vpr@119@7@121@92-aux|)))
(assert (forall ((x1@267@01 $Ref) (x2@268@01 $Ref)) (!
  (and
    (=>
      (Set_in x1@267@01 xs@255@01)
      (and
        (Set_in x1@267@01 xs@255@01)
        (=>
          (not (Set_in x1@267@01 ys@256@01))
          (and
            (not (Set_in x1@267@01 ys@256@01))
            (=>
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                  0))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                    0))
                (=>
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
                  (and
                    (not
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
                    (=>
                      (Set_in x2@268@01 xs@255@01)
                      (and
                        (Set_in x2@268@01 xs@255@01)
                        (=>
                          (not (Set_in x2@268@01 ys@256@01))
                          (and
                            (not (Set_in x2@268@01 ys@256@01))
                            (=>
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                                  0))
                              (and
                                (not
                                  (=
                                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                                    0))
                                (or
                                  (not
                                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
                                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))))
                            (or
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                                  0))
                              (=
                                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                                0))))
                        (or
                          (not (Set_in x2@268@01 ys@256@01))
                          (Set_in x2@268@01 ys@256@01))))
                    (or
                      (Set_in x2@268@01 xs@255@01)
                      (not (Set_in x2@268@01 xs@255@01)))))
                (or
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))))
            (or
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                  0))
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                0))))
        (or (not (Set_in x1@267@01 ys@256@01)) (Set_in x1@267@01 ys@256@01))))
    (or (Set_in x1@267@01 xs@255@01) (not (Set_in x1@267@01 xs@255@01)))
    (=>
      (and
        (Set_in x1@267@01 xs@255@01)
        (and
          (not (Set_in x1@267@01 ys@256@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
              (and
                (Set_in x2@268@01 xs@255@01)
                (and
                  (not (Set_in x2@268@01 ys@256@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
                      (not (= x1@267@01 x2@268@01))))))))))
      (and
        (Set_in x1@267@01 xs@255@01)
        (not (Set_in x1@267@01 ys@256@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
        (Set_in x2@268@01 xs@255@01)
        (not (Set_in x2@268@01 ys@256@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
        (not (= x1@267@01 x2@268@01))))
    (or
      (not
        (and
          (Set_in x1@267@01 xs@255@01)
          (and
            (not (Set_in x1@267@01 ys@256@01))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                  0))
              (and
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
                (and
                  (Set_in x2@268@01 xs@255@01)
                  (and
                    (not (Set_in x2@268@01 ys@256@01))
                    (and
                      (not
                        (=
                          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                          0))
                      (and
                        (not
                          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
                        (not (= x1@267@01 x2@268@01)))))))))))
      (and
        (Set_in x1@267@01 xs@255@01)
        (and
          (not (Set_in x1@267@01 ys@256@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
              (and
                (Set_in x2@268@01 xs@255@01)
                (and
                  (not (Set_in x2@268@01 ys@256@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
                      (not (= x1@267@01 x2@268@01))))))))))))
  :pattern ((Set_in x1@267@01 xs@255@01) (Set_in x2@268@01 ys@256@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/generalised_shape.vpr@119@7@121@92-aux|)))
(assert (forall ((x1@267@01 $Ref) (x2@268@01 $Ref)) (!
  (and
    (=>
      (Set_in x1@267@01 xs@255@01)
      (and
        (Set_in x1@267@01 xs@255@01)
        (=>
          (not (Set_in x1@267@01 ys@256@01))
          (and
            (not (Set_in x1@267@01 ys@256@01))
            (=>
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                  0))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                    0))
                (=>
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
                  (and
                    (not
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
                    (=>
                      (Set_in x2@268@01 xs@255@01)
                      (and
                        (Set_in x2@268@01 xs@255@01)
                        (=>
                          (not (Set_in x2@268@01 ys@256@01))
                          (and
                            (not (Set_in x2@268@01 ys@256@01))
                            (=>
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                                  0))
                              (and
                                (not
                                  (=
                                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                                    0))
                                (or
                                  (not
                                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
                                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))))
                            (or
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                                  0))
                              (=
                                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                                0))))
                        (or
                          (not (Set_in x2@268@01 ys@256@01))
                          (Set_in x2@268@01 ys@256@01))))
                    (or
                      (Set_in x2@268@01 xs@255@01)
                      (not (Set_in x2@268@01 xs@255@01)))))
                (or
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))))
            (or
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                  0))
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                0))))
        (or (not (Set_in x1@267@01 ys@256@01)) (Set_in x1@267@01 ys@256@01))))
    (or (Set_in x1@267@01 xs@255@01) (not (Set_in x1@267@01 xs@255@01)))
    (=>
      (and
        (Set_in x1@267@01 xs@255@01)
        (and
          (not (Set_in x1@267@01 ys@256@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
              (and
                (Set_in x2@268@01 xs@255@01)
                (and
                  (not (Set_in x2@268@01 ys@256@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
                      (not (= x1@267@01 x2@268@01))))))))))
      (and
        (Set_in x1@267@01 xs@255@01)
        (not (Set_in x1@267@01 ys@256@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
        (Set_in x2@268@01 xs@255@01)
        (not (Set_in x2@268@01 ys@256@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
        (not (= x1@267@01 x2@268@01))))
    (or
      (not
        (and
          (Set_in x1@267@01 xs@255@01)
          (and
            (not (Set_in x1@267@01 ys@256@01))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                  0))
              (and
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
                (and
                  (Set_in x2@268@01 xs@255@01)
                  (and
                    (not (Set_in x2@268@01 ys@256@01))
                    (and
                      (not
                        (=
                          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                          0))
                      (and
                        (not
                          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
                        (not (= x1@267@01 x2@268@01)))))))))))
      (and
        (Set_in x1@267@01 xs@255@01)
        (and
          (not (Set_in x1@267@01 ys@256@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
              (and
                (Set_in x2@268@01 xs@255@01)
                (and
                  (not (Set_in x2@268@01 ys@256@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
                      (not (= x1@267@01 x2@268@01))))))))))))
  :pattern ((Set_in x1@267@01 xs@255@01) (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/generalised_shape.vpr@119@7@121@92-aux|)))
(assert (forall ((x1@267@01 $Ref) (x2@268@01 $Ref)) (!
  (and
    (=>
      (Set_in x1@267@01 xs@255@01)
      (and
        (Set_in x1@267@01 xs@255@01)
        (=>
          (not (Set_in x1@267@01 ys@256@01))
          (and
            (not (Set_in x1@267@01 ys@256@01))
            (=>
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                  0))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                    0))
                (=>
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
                  (and
                    (not
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
                    (=>
                      (Set_in x2@268@01 xs@255@01)
                      (and
                        (Set_in x2@268@01 xs@255@01)
                        (=>
                          (not (Set_in x2@268@01 ys@256@01))
                          (and
                            (not (Set_in x2@268@01 ys@256@01))
                            (=>
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                                  0))
                              (and
                                (not
                                  (=
                                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                                    0))
                                (or
                                  (not
                                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
                                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))))
                            (or
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                                  0))
                              (=
                                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                                0))))
                        (or
                          (not (Set_in x2@268@01 ys@256@01))
                          (Set_in x2@268@01 ys@256@01))))
                    (or
                      (Set_in x2@268@01 xs@255@01)
                      (not (Set_in x2@268@01 xs@255@01)))))
                (or
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))))
            (or
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                  0))
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                0))))
        (or (not (Set_in x1@267@01 ys@256@01)) (Set_in x1@267@01 ys@256@01))))
    (or (Set_in x1@267@01 xs@255@01) (not (Set_in x1@267@01 xs@255@01)))
    (=>
      (and
        (Set_in x1@267@01 xs@255@01)
        (and
          (not (Set_in x1@267@01 ys@256@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
              (and
                (Set_in x2@268@01 xs@255@01)
                (and
                  (not (Set_in x2@268@01 ys@256@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
                      (not (= x1@267@01 x2@268@01))))))))))
      (and
        (Set_in x1@267@01 xs@255@01)
        (not (Set_in x1@267@01 ys@256@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
        (Set_in x2@268@01 xs@255@01)
        (not (Set_in x2@268@01 ys@256@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
        (not (= x1@267@01 x2@268@01))))
    (or
      (not
        (and
          (Set_in x1@267@01 xs@255@01)
          (and
            (not (Set_in x1@267@01 ys@256@01))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                  0))
              (and
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
                (and
                  (Set_in x2@268@01 xs@255@01)
                  (and
                    (not (Set_in x2@268@01 ys@256@01))
                    (and
                      (not
                        (=
                          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                          0))
                      (and
                        (not
                          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
                        (not (= x1@267@01 x2@268@01)))))))))))
      (and
        (Set_in x1@267@01 xs@255@01)
        (and
          (not (Set_in x1@267@01 ys@256@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
              (and
                (Set_in x2@268@01 xs@255@01)
                (and
                  (not (Set_in x2@268@01 ys@256@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
                      (not (= x1@267@01 x2@268@01))))))))))))
  :pattern ((Set_in x1@267@01 ys@256@01) (Set_in x2@268@01 xs@255@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/generalised_shape.vpr@119@7@121@92-aux|)))
(assert (forall ((x1@267@01 $Ref) (x2@268@01 $Ref)) (!
  (and
    (=>
      (Set_in x1@267@01 xs@255@01)
      (and
        (Set_in x1@267@01 xs@255@01)
        (=>
          (not (Set_in x1@267@01 ys@256@01))
          (and
            (not (Set_in x1@267@01 ys@256@01))
            (=>
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                  0))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                    0))
                (=>
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
                  (and
                    (not
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
                    (=>
                      (Set_in x2@268@01 xs@255@01)
                      (and
                        (Set_in x2@268@01 xs@255@01)
                        (=>
                          (not (Set_in x2@268@01 ys@256@01))
                          (and
                            (not (Set_in x2@268@01 ys@256@01))
                            (=>
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                                  0))
                              (and
                                (not
                                  (=
                                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                                    0))
                                (or
                                  (not
                                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
                                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))))
                            (or
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                                  0))
                              (=
                                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                                0))))
                        (or
                          (not (Set_in x2@268@01 ys@256@01))
                          (Set_in x2@268@01 ys@256@01))))
                    (or
                      (Set_in x2@268@01 xs@255@01)
                      (not (Set_in x2@268@01 xs@255@01)))))
                (or
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))))
            (or
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                  0))
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                0))))
        (or (not (Set_in x1@267@01 ys@256@01)) (Set_in x1@267@01 ys@256@01))))
    (or (Set_in x1@267@01 xs@255@01) (not (Set_in x1@267@01 xs@255@01)))
    (=>
      (and
        (Set_in x1@267@01 xs@255@01)
        (and
          (not (Set_in x1@267@01 ys@256@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
              (and
                (Set_in x2@268@01 xs@255@01)
                (and
                  (not (Set_in x2@268@01 ys@256@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
                      (not (= x1@267@01 x2@268@01))))))))))
      (and
        (Set_in x1@267@01 xs@255@01)
        (not (Set_in x1@267@01 ys@256@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
        (Set_in x2@268@01 xs@255@01)
        (not (Set_in x2@268@01 ys@256@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
        (not (= x1@267@01 x2@268@01))))
    (or
      (not
        (and
          (Set_in x1@267@01 xs@255@01)
          (and
            (not (Set_in x1@267@01 ys@256@01))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                  0))
              (and
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
                (and
                  (Set_in x2@268@01 xs@255@01)
                  (and
                    (not (Set_in x2@268@01 ys@256@01))
                    (and
                      (not
                        (=
                          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                          0))
                      (and
                        (not
                          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
                        (not (= x1@267@01 x2@268@01)))))))))))
      (and
        (Set_in x1@267@01 xs@255@01)
        (and
          (not (Set_in x1@267@01 ys@256@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
              (and
                (Set_in x2@268@01 xs@255@01)
                (and
                  (not (Set_in x2@268@01 ys@256@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
                      (not (= x1@267@01 x2@268@01))))))))))))
  :pattern ((Set_in x1@267@01 ys@256@01) (Set_in x2@268@01 ys@256@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/generalised_shape.vpr@119@7@121@92-aux|)))
(assert (forall ((x1@267@01 $Ref) (x2@268@01 $Ref)) (!
  (and
    (=>
      (Set_in x1@267@01 xs@255@01)
      (and
        (Set_in x1@267@01 xs@255@01)
        (=>
          (not (Set_in x1@267@01 ys@256@01))
          (and
            (not (Set_in x1@267@01 ys@256@01))
            (=>
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                  0))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                    0))
                (=>
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
                  (and
                    (not
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
                    (=>
                      (Set_in x2@268@01 xs@255@01)
                      (and
                        (Set_in x2@268@01 xs@255@01)
                        (=>
                          (not (Set_in x2@268@01 ys@256@01))
                          (and
                            (not (Set_in x2@268@01 ys@256@01))
                            (=>
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                                  0))
                              (and
                                (not
                                  (=
                                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                                    0))
                                (or
                                  (not
                                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
                                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))))
                            (or
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                                  0))
                              (=
                                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                                0))))
                        (or
                          (not (Set_in x2@268@01 ys@256@01))
                          (Set_in x2@268@01 ys@256@01))))
                    (or
                      (Set_in x2@268@01 xs@255@01)
                      (not (Set_in x2@268@01 xs@255@01)))))
                (or
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))))
            (or
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                  0))
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                0))))
        (or (not (Set_in x1@267@01 ys@256@01)) (Set_in x1@267@01 ys@256@01))))
    (or (Set_in x1@267@01 xs@255@01) (not (Set_in x1@267@01 xs@255@01)))
    (=>
      (and
        (Set_in x1@267@01 xs@255@01)
        (and
          (not (Set_in x1@267@01 ys@256@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
              (and
                (Set_in x2@268@01 xs@255@01)
                (and
                  (not (Set_in x2@268@01 ys@256@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
                      (not (= x1@267@01 x2@268@01))))))))))
      (and
        (Set_in x1@267@01 xs@255@01)
        (not (Set_in x1@267@01 ys@256@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
        (Set_in x2@268@01 xs@255@01)
        (not (Set_in x2@268@01 ys@256@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
        (not (= x1@267@01 x2@268@01))))
    (or
      (not
        (and
          (Set_in x1@267@01 xs@255@01)
          (and
            (not (Set_in x1@267@01 ys@256@01))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                  0))
              (and
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
                (and
                  (Set_in x2@268@01 xs@255@01)
                  (and
                    (not (Set_in x2@268@01 ys@256@01))
                    (and
                      (not
                        (=
                          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                          0))
                      (and
                        (not
                          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
                        (not (= x1@267@01 x2@268@01)))))))))))
      (and
        (Set_in x1@267@01 xs@255@01)
        (and
          (not (Set_in x1@267@01 ys@256@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
              (and
                (Set_in x2@268@01 xs@255@01)
                (and
                  (not (Set_in x2@268@01 ys@256@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
                      (not (= x1@267@01 x2@268@01))))))))))))
  :pattern ((Set_in x1@267@01 ys@256@01) (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/generalised_shape.vpr@119@7@121@92-aux|)))
(assert (forall ((x1@267@01 $Ref) (x2@268@01 $Ref)) (!
  (and
    (=>
      (Set_in x1@267@01 xs@255@01)
      (and
        (Set_in x1@267@01 xs@255@01)
        (=>
          (not (Set_in x1@267@01 ys@256@01))
          (and
            (not (Set_in x1@267@01 ys@256@01))
            (=>
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                  0))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                    0))
                (=>
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
                  (and
                    (not
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
                    (=>
                      (Set_in x2@268@01 xs@255@01)
                      (and
                        (Set_in x2@268@01 xs@255@01)
                        (=>
                          (not (Set_in x2@268@01 ys@256@01))
                          (and
                            (not (Set_in x2@268@01 ys@256@01))
                            (=>
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                                  0))
                              (and
                                (not
                                  (=
                                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                                    0))
                                (or
                                  (not
                                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
                                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))))
                            (or
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                                  0))
                              (=
                                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                                0))))
                        (or
                          (not (Set_in x2@268@01 ys@256@01))
                          (Set_in x2@268@01 ys@256@01))))
                    (or
                      (Set_in x2@268@01 xs@255@01)
                      (not (Set_in x2@268@01 xs@255@01)))))
                (or
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))))
            (or
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                  0))
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                0))))
        (or (not (Set_in x1@267@01 ys@256@01)) (Set_in x1@267@01 ys@256@01))))
    (or (Set_in x1@267@01 xs@255@01) (not (Set_in x1@267@01 xs@255@01)))
    (=>
      (and
        (Set_in x1@267@01 xs@255@01)
        (and
          (not (Set_in x1@267@01 ys@256@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
              (and
                (Set_in x2@268@01 xs@255@01)
                (and
                  (not (Set_in x2@268@01 ys@256@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
                      (not (= x1@267@01 x2@268@01))))))))))
      (and
        (Set_in x1@267@01 xs@255@01)
        (not (Set_in x1@267@01 ys@256@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
        (Set_in x2@268@01 xs@255@01)
        (not (Set_in x2@268@01 ys@256@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
        (not (= x1@267@01 x2@268@01))))
    (or
      (not
        (and
          (Set_in x1@267@01 xs@255@01)
          (and
            (not (Set_in x1@267@01 ys@256@01))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                  0))
              (and
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
                (and
                  (Set_in x2@268@01 xs@255@01)
                  (and
                    (not (Set_in x2@268@01 ys@256@01))
                    (and
                      (not
                        (=
                          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                          0))
                      (and
                        (not
                          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
                        (not (= x1@267@01 x2@268@01)))))))))))
      (and
        (Set_in x1@267@01 xs@255@01)
        (and
          (not (Set_in x1@267@01 ys@256@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
              (and
                (Set_in x2@268@01 xs@255@01)
                (and
                  (not (Set_in x2@268@01 ys@256@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
                      (not (= x1@267@01 x2@268@01))))))))))))
  :pattern ((Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01) (Set_in x2@268@01 xs@255@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/generalised_shape.vpr@119@7@121@92-aux|)))
(assert (forall ((x1@267@01 $Ref) (x2@268@01 $Ref)) (!
  (and
    (=>
      (Set_in x1@267@01 xs@255@01)
      (and
        (Set_in x1@267@01 xs@255@01)
        (=>
          (not (Set_in x1@267@01 ys@256@01))
          (and
            (not (Set_in x1@267@01 ys@256@01))
            (=>
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                  0))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                    0))
                (=>
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
                  (and
                    (not
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
                    (=>
                      (Set_in x2@268@01 xs@255@01)
                      (and
                        (Set_in x2@268@01 xs@255@01)
                        (=>
                          (not (Set_in x2@268@01 ys@256@01))
                          (and
                            (not (Set_in x2@268@01 ys@256@01))
                            (=>
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                                  0))
                              (and
                                (not
                                  (=
                                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                                    0))
                                (or
                                  (not
                                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
                                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))))
                            (or
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                                  0))
                              (=
                                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                                0))))
                        (or
                          (not (Set_in x2@268@01 ys@256@01))
                          (Set_in x2@268@01 ys@256@01))))
                    (or
                      (Set_in x2@268@01 xs@255@01)
                      (not (Set_in x2@268@01 xs@255@01)))))
                (or
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))))
            (or
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                  0))
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                0))))
        (or (not (Set_in x1@267@01 ys@256@01)) (Set_in x1@267@01 ys@256@01))))
    (or (Set_in x1@267@01 xs@255@01) (not (Set_in x1@267@01 xs@255@01)))
    (=>
      (and
        (Set_in x1@267@01 xs@255@01)
        (and
          (not (Set_in x1@267@01 ys@256@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
              (and
                (Set_in x2@268@01 xs@255@01)
                (and
                  (not (Set_in x2@268@01 ys@256@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
                      (not (= x1@267@01 x2@268@01))))))))))
      (and
        (Set_in x1@267@01 xs@255@01)
        (not (Set_in x1@267@01 ys@256@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
        (Set_in x2@268@01 xs@255@01)
        (not (Set_in x2@268@01 ys@256@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
        (not (= x1@267@01 x2@268@01))))
    (or
      (not
        (and
          (Set_in x1@267@01 xs@255@01)
          (and
            (not (Set_in x1@267@01 ys@256@01))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                  0))
              (and
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
                (and
                  (Set_in x2@268@01 xs@255@01)
                  (and
                    (not (Set_in x2@268@01 ys@256@01))
                    (and
                      (not
                        (=
                          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                          0))
                      (and
                        (not
                          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
                        (not (= x1@267@01 x2@268@01)))))))))))
      (and
        (Set_in x1@267@01 xs@255@01)
        (and
          (not (Set_in x1@267@01 ys@256@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
              (and
                (Set_in x2@268@01 xs@255@01)
                (and
                  (not (Set_in x2@268@01 ys@256@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
                      (not (= x1@267@01 x2@268@01))))))))))))
  :pattern ((Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01) (Set_in x2@268@01 ys@256@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/generalised_shape.vpr@119@7@121@92-aux|)))
(assert (forall ((x1@267@01 $Ref) (x2@268@01 $Ref)) (!
  (and
    (=>
      (Set_in x1@267@01 xs@255@01)
      (and
        (Set_in x1@267@01 xs@255@01)
        (=>
          (not (Set_in x1@267@01 ys@256@01))
          (and
            (not (Set_in x1@267@01 ys@256@01))
            (=>
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                  0))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                    0))
                (=>
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
                  (and
                    (not
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
                    (=>
                      (Set_in x2@268@01 xs@255@01)
                      (and
                        (Set_in x2@268@01 xs@255@01)
                        (=>
                          (not (Set_in x2@268@01 ys@256@01))
                          (and
                            (not (Set_in x2@268@01 ys@256@01))
                            (=>
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                                  0))
                              (and
                                (not
                                  (=
                                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                                    0))
                                (or
                                  (not
                                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
                                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))))
                            (or
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                                  0))
                              (=
                                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                                0))))
                        (or
                          (not (Set_in x2@268@01 ys@256@01))
                          (Set_in x2@268@01 ys@256@01))))
                    (or
                      (Set_in x2@268@01 xs@255@01)
                      (not (Set_in x2@268@01 xs@255@01)))))
                (or
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))))
            (or
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                  0))
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                0))))
        (or (not (Set_in x1@267@01 ys@256@01)) (Set_in x1@267@01 ys@256@01))))
    (or (Set_in x1@267@01 xs@255@01) (not (Set_in x1@267@01 xs@255@01)))
    (=>
      (and
        (Set_in x1@267@01 xs@255@01)
        (and
          (not (Set_in x1@267@01 ys@256@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
              (and
                (Set_in x2@268@01 xs@255@01)
                (and
                  (not (Set_in x2@268@01 ys@256@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
                      (not (= x1@267@01 x2@268@01))))))))))
      (and
        (Set_in x1@267@01 xs@255@01)
        (not (Set_in x1@267@01 ys@256@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
        (Set_in x2@268@01 xs@255@01)
        (not (Set_in x2@268@01 ys@256@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
        (not (= x1@267@01 x2@268@01))))
    (or
      (not
        (and
          (Set_in x1@267@01 xs@255@01)
          (and
            (not (Set_in x1@267@01 ys@256@01))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                  0))
              (and
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
                (and
                  (Set_in x2@268@01 xs@255@01)
                  (and
                    (not (Set_in x2@268@01 ys@256@01))
                    (and
                      (not
                        (=
                          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                          0))
                      (and
                        (not
                          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
                        (not (= x1@267@01 x2@268@01)))))))))))
      (and
        (Set_in x1@267@01 xs@255@01)
        (and
          (not (Set_in x1@267@01 ys@256@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
              (and
                (Set_in x2@268@01 xs@255@01)
                (and
                  (not (Set_in x2@268@01 ys@256@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
                      (not (= x1@267@01 x2@268@01))))))))))))
  :pattern ((Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01) (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/generalised_shape.vpr@119@7@121@92-aux|)))
(assert (forall ((x1@267@01 $Ref) (x2@268@01 $Ref)) (!
  (=>
    (and
      (Set_in x1@267@01 xs@255@01)
      (and
        (not (Set_in x1@267@01 ys@256@01))
        (and
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@267@01)
              0))
          (and
            (not
              (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01))
            (and
              (Set_in x2@268@01 xs@255@01)
              (and
                (not (Set_in x2@268@01 ys@256@01))
                (and
                  (not
                    (=
                      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@268@01)
                      0))
                  (and
                    (not
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
                    (not (= x1@267@01 x2@268@01))))))))))
    (not
      (=
        ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01)
        ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01))))
  :pattern ((Set_in x1@267@01 xs@255@01) (Set_in x2@268@01 xs@255@01))
  :pattern ((Set_in x1@267@01 xs@255@01) (Set_in x2@268@01 ys@256@01))
  :pattern ((Set_in x1@267@01 xs@255@01) (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
  :pattern ((Set_in x1@267@01 ys@256@01) (Set_in x2@268@01 xs@255@01))
  :pattern ((Set_in x1@267@01 ys@256@01) (Set_in x2@268@01 ys@256@01))
  :pattern ((Set_in x1@267@01 ys@256@01) (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
  :pattern ((Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01) (Set_in x2@268@01 xs@255@01))
  :pattern ((Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01) (Set_in x2@268@01 ys@256@01))
  :pattern ((Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@267@01) xs@255@01) (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@268@01) xs@255@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/generalised_shape.vpr@119@7@121@92|)))
(declare-const x@269@01 $Ref)
(push) ; 3
; [eval] (x in xs) && (!((x in ys)) && (x.f != 0 && !((x.g in xs))))
; [eval] (x in xs)
(push) ; 4
; [then-branch: 33 | !(x@269@01 in xs@255@01) | live]
; [else-branch: 33 | x@269@01 in xs@255@01 | live]
(push) ; 5
; [then-branch: 33 | !(x@269@01 in xs@255@01)]
(assert (not (Set_in x@269@01 xs@255@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 33 | x@269@01 in xs@255@01]
(assert (Set_in x@269@01 xs@255@01))
; [eval] !((x in ys))
; [eval] (x in ys)
(push) ; 6
; [then-branch: 34 | x@269@01 in ys@256@01 | live]
; [else-branch: 34 | !(x@269@01 in ys@256@01) | live]
(push) ; 7
; [then-branch: 34 | x@269@01 in ys@256@01]
(assert (Set_in x@269@01 ys@256@01))
(pop) ; 7
(push) ; 7
; [else-branch: 34 | !(x@269@01 in ys@256@01)]
(assert (not (Set_in x@269@01 ys@256@01)))
; [eval] x.f != 0
(push) ; 8
(assert (not (and
  (img@263@01 x@269@01)
  (and
    (Set_in (inv@262@01 x@269@01) xs@255@01)
    (not (Set_in (inv@262@01 x@269@01) ys@256@01))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
; [then-branch: 35 | Lookup(f, First:($t@258@01), x@269@01) == 0 | live]
; [else-branch: 35 | Lookup(f, First:($t@258@01), x@269@01) != 0 | live]
(push) ; 9
; [then-branch: 35 | Lookup(f, First:($t@258@01), x@269@01) == 0]
(assert (=
  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x@269@01)
  0))
(pop) ; 9
(push) ; 9
; [else-branch: 35 | Lookup(f, First:($t@258@01), x@269@01) != 0]
(assert (not
  (=
    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x@269@01)
    0)))
; [eval] !((x.g in xs))
; [eval] (x.g in xs)
(push) ; 10
(assert (not (and
  (img@266@01 x@269@01)
  (and
    (Set_in (inv@265@01 x@269@01) xs@255@01)
    (and
      (not (Set_in (inv@265@01 x@269@01) ys@256@01))
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) (inv@265@01 x@269@01))
          0)))))))
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
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x@269@01)
      0))
  (=
    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x@269@01)
    0)))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (not (Set_in x@269@01 ys@256@01))
  (and
    (not (Set_in x@269@01 ys@256@01))
    (or
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x@269@01)
          0))
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x@269@01)
        0)))))
(assert (or (not (Set_in x@269@01 ys@256@01)) (Set_in x@269@01 ys@256@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in x@269@01 xs@255@01)
  (and
    (Set_in x@269@01 xs@255@01)
    (=>
      (not (Set_in x@269@01 ys@256@01))
      (and
        (not (Set_in x@269@01 ys@256@01))
        (or
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x@269@01)
              0))
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x@269@01)
            0))))
    (or (not (Set_in x@269@01 ys@256@01)) (Set_in x@269@01 ys@256@01)))))
(assert (or (Set_in x@269@01 xs@255@01) (not (Set_in x@269@01 xs@255@01))))
(assert (and
  (Set_in x@269@01 xs@255@01)
  (and
    (not (Set_in x@269@01 ys@256@01))
    (and
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x@269@01)
          0))
      (not
        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x@269@01) xs@255@01))))))
(push) ; 4
(assert (not (and
  (img@266@01 x@269@01)
  (and
    (Set_in (inv@265@01 x@269@01) xs@255@01)
    (and
      (not (Set_in (inv@265@01 x@269@01) ys@256@01))
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) (inv@265@01 x@269@01))
          0)))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@270@01 ($Ref) $Ref)
(declare-fun img@271@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((x@269@01 $Ref)) (!
  (=>
    (and
      (Set_in x@269@01 xs@255@01)
      (and
        (not (Set_in x@269@01 ys@256@01))
        (and
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x@269@01)
              0))
          (not
            (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x@269@01) xs@255@01)))))
    (and
      (=>
        (Set_in x@269@01 xs@255@01)
        (and
          (Set_in x@269@01 xs@255@01)
          (=>
            (not (Set_in x@269@01 ys@256@01))
            (and
              (not (Set_in x@269@01 ys@256@01))
              (or
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x@269@01)
                    0))
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x@269@01)
                  0))))
          (or (not (Set_in x@269@01 ys@256@01)) (Set_in x@269@01 ys@256@01))))
      (or (Set_in x@269@01 xs@255@01) (not (Set_in x@269@01 xs@255@01)))))
  :pattern (($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x@269@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@269@01 $Ref) (x2@269@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in x1@269@01 xs@255@01)
        (and
          (not (Set_in x1@269@01 ys@256@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x1@269@01)
                0))
            (not
              (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@269@01) xs@255@01)))))
      (and
        (Set_in x2@269@01 xs@255@01)
        (and
          (not (Set_in x2@269@01 ys@256@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x2@269@01)
                0))
            (not
              (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@269@01) xs@255@01)))))
      (=
        ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x1@269@01)
        ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x2@269@01)))
    (= x1@269@01 x2@269@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@269@01 $Ref)) (!
  (=>
    (and
      (Set_in x@269@01 xs@255@01)
      (and
        (not (Set_in x@269@01 ys@256@01))
        (and
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x@269@01)
              0))
          (not
            (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x@269@01) xs@255@01)))))
    (and
      (=
        (inv@270@01 ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x@269@01))
        x@269@01)
      (img@271@01 ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x@269@01))))
  :pattern (($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x@269@01))
  :qid |quant-u-5996|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@271@01 r)
      (and
        (Set_in (inv@270@01 r) xs@255@01)
        (and
          (not (Set_in (inv@270@01 r) ys@256@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) (inv@270@01 r))
                0))
            (not
              (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) (inv@270@01 r)) xs@255@01))))))
    (=
      ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) (inv@270@01 r))
      r))
  :pattern ((inv@270@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@269@01 $Ref)) (!
  (=>
    (and
      (Set_in x@269@01 xs@255@01)
      (and
        (not (Set_in x@269@01 ys@256@01))
        (and
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) x@269@01)
              0))
          (not
            (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x@269@01) xs@255@01)))))
    (not
      (=
        ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x@269@01)
        $Ref.null)))
  :pattern (($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x@269@01))
  :qid |f-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (=
      ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) x@269@01)
      x@261@01)
    (=
      (and
        (img@271@01 r)
        (and
          (Set_in (inv@270@01 r) xs@255@01)
          (and
            (not (Set_in (inv@270@01 r) ys@256@01))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) (inv@270@01 r))
                  0))
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) (inv@270@01 r)) xs@255@01))))))
      (and
        (img@263@01 r)
        (and
          (Set_in (inv@262@01 r) xs@255@01)
          (not (Set_in (inv@262@01 r) ys@256@01))))))
  
  :qid |quant-u-5997|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (P%trigger $t@258@01 xs@255@01 ys@256@01))
; [exec]
; inhale (x in xs)
(declare-const $t@272@01 $Snap)
(assert (= $t@272@01 $Snap.unit))
; [eval] (x in xs)
(assert (Set_in x@257@01 xs@255@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale !((x in ys))
(declare-const $t@273@01 $Snap)
(assert (= $t@273@01 $Snap.unit))
; [eval] !((x in ys))
; [eval] (x in ys)
(assert (not (Set_in x@257@01 ys@256@01)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale x != null
(declare-const $t@274@01 $Snap)
(assert (= $t@274@01 $Snap.unit))
; [eval] x != null
(assert (not (= x@257@01 $Ref.null)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; a := x.f
(declare-const sm@275@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@263@01 r)
      (and
        (Set_in (inv@262@01 r) xs@255@01)
        (not (Set_in (inv@262@01 r) ys@256@01))))
    (=
      ($FVF.lookup_f (as sm@275@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) r)))
  :pattern (($FVF.lookup_f (as sm@275@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) r))
  :qid |qp.fvfValDef60|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@271@01 r)
      (and
        (Set_in (inv@270@01 r) xs@255@01)
        (and
          (not (Set_in (inv@270@01 r) ys@256@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) (inv@270@01 r))
                0))
            (not
              (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) (inv@270@01 r)) xs@255@01))))))
    (=
      ($FVF.lookup_f (as sm@275@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second $t@258@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@275@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second $t@258@01)))) r))
  :qid |qp.fvfValDef61|)))
(declare-const pm@276@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@276@01  $FPM) r)
    (+
      (ite
        (and
          (img@263@01 r)
          (and
            (Set_in (inv@262@01 r) xs@255@01)
            (not (Set_in (inv@262@01 r) ys@256@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@271@01 r)
          (and
            (Set_in (inv@270@01 r) xs@255@01)
            (and
              (not (Set_in (inv@270@01 r) ys@256@01))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) (inv@270@01 r))
                    0))
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@258@01))) (inv@270@01 r)) xs@255@01))))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@276@01  $FPM) r))
  :qid |qp.resPrmSumDef62|)))
(set-option :timeout 0)
(push) ; 3
(assert (not (< $Perm.No ($FVF.perm_f (as pm@276@01  $FPM) x@257@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const a@277@01 Int)
(assert (= a@277@01 ($FVF.lookup_f (as sm@275@01  $FVF<f>) x@257@01)))
; [exec]
; b := x.g
(push) ; 3
(assert (not (and
  (img@266@01 x@257@01)
  (and
    (Set_in (inv@265@01 x@257@01) xs@255@01)
    (and
      (not (Set_in (inv@265@01 x@257@01) ys@256@01))
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@258@01)) (inv@265@01 x@257@01))
          0)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1
; ---------- test03 ----------
(declare-const xs@278@01 Set<$Ref>)
(declare-const ys@279@01 Set<$Ref>)
(declare-const x@280@01 $Ref)
(declare-const xs@281@01 Set<$Ref>)
(declare-const ys@282@01 Set<$Ref>)
(declare-const x@283@01 $Ref)
(push) ; 1
(declare-const $t@284@01 $Snap)
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
(declare-const a@285@01 Int)
; [exec]
; var b: Ref
(declare-const b@286@01 $Ref)
; [exec]
; unfold acc(P(xs, ys), write)
(assert (= $t@284@01 ($Snap.combine ($Snap.first $t@284@01) ($Snap.second $t@284@01))))
(declare-const x@287@01 $Ref)
(push) ; 3
; [eval] (x in xs) && !((x in ys))
; [eval] (x in xs)
(push) ; 4
; [then-branch: 36 | !(x@287@01 in xs@281@01) | live]
; [else-branch: 36 | x@287@01 in xs@281@01 | live]
(push) ; 5
; [then-branch: 36 | !(x@287@01 in xs@281@01)]
(assert (not (Set_in x@287@01 xs@281@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 36 | x@287@01 in xs@281@01]
(assert (Set_in x@287@01 xs@281@01))
; [eval] !((x in ys))
; [eval] (x in ys)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (Set_in x@287@01 xs@281@01) (not (Set_in x@287@01 xs@281@01))))
(assert (and (Set_in x@287@01 xs@281@01) (not (Set_in x@287@01 ys@282@01))))
(pop) ; 3
(declare-fun inv@288@01 ($Ref) $Ref)
(declare-fun img@289@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((x@287@01 $Ref)) (!
  (=>
    (and (Set_in x@287@01 xs@281@01) (not (Set_in x@287@01 ys@282@01)))
    (or (Set_in x@287@01 xs@281@01) (not (Set_in x@287@01 xs@281@01))))
  :pattern ((Set_in x@287@01 xs@281@01))
  :pattern ((Set_in x@287@01 ys@282@01))
  :pattern ((inv@288@01 x@287@01))
  :pattern ((img@289@01 x@287@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@287@01 $Ref) (x2@287@01 $Ref)) (!
  (=>
    (and
      (and (Set_in x1@287@01 xs@281@01) (not (Set_in x1@287@01 ys@282@01)))
      (and (Set_in x2@287@01 xs@281@01) (not (Set_in x2@287@01 ys@282@01)))
      (= x1@287@01 x2@287@01))
    (= x1@287@01 x2@287@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@287@01 $Ref)) (!
  (=>
    (and (Set_in x@287@01 xs@281@01) (not (Set_in x@287@01 ys@282@01)))
    (and (= (inv@288@01 x@287@01) x@287@01) (img@289@01 x@287@01)))
  :pattern ((Set_in x@287@01 xs@281@01))
  :pattern ((Set_in x@287@01 ys@282@01))
  :pattern ((inv@288@01 x@287@01))
  :pattern ((img@289@01 x@287@01))
  :qid |quant-u-5999|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@289@01 r)
      (and
        (Set_in (inv@288@01 r) xs@281@01)
        (not (Set_in (inv@288@01 r) ys@282@01))))
    (= (inv@288@01 r) r))
  :pattern ((inv@288@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@287@01 $Ref)) (!
  (=>
    (and (Set_in x@287@01 xs@281@01) (not (Set_in x@287@01 ys@282@01)))
    (not (= x@287@01 $Ref.null)))
  :pattern ((Set_in x@287@01 xs@281@01))
  :pattern ((Set_in x@287@01 ys@282@01))
  :pattern ((inv@288@01 x@287@01))
  :pattern ((img@289@01 x@287@01))
  :qid |f-permImpliesNonNull|)))
(assert (=
  ($Snap.second $t@284@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@284@01))
    ($Snap.second ($Snap.second $t@284@01)))))
(declare-const x@290@01 $Ref)
(push) ; 3
; [eval] (x in xs) && (!((x in ys)) && x.f != 0)
; [eval] (x in xs)
(push) ; 4
; [then-branch: 37 | !(x@290@01 in xs@281@01) | live]
; [else-branch: 37 | x@290@01 in xs@281@01 | live]
(push) ; 5
; [then-branch: 37 | !(x@290@01 in xs@281@01)]
(assert (not (Set_in x@290@01 xs@281@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 37 | x@290@01 in xs@281@01]
(assert (Set_in x@290@01 xs@281@01))
; [eval] !((x in ys))
; [eval] (x in ys)
(push) ; 6
; [then-branch: 38 | x@290@01 in ys@282@01 | live]
; [else-branch: 38 | !(x@290@01 in ys@282@01) | live]
(push) ; 7
; [then-branch: 38 | x@290@01 in ys@282@01]
(assert (Set_in x@290@01 ys@282@01))
(pop) ; 7
(push) ; 7
; [else-branch: 38 | !(x@290@01 in ys@282@01)]
(assert (not (Set_in x@290@01 ys@282@01)))
; [eval] x.f != 0
(push) ; 8
(assert (not (and
  (img@289@01 x@290@01)
  (and
    (Set_in (inv@288@01 x@290@01) xs@281@01)
    (not (Set_in (inv@288@01 x@290@01) ys@282@01))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or (not (Set_in x@290@01 ys@282@01)) (Set_in x@290@01 ys@282@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in x@290@01 xs@281@01)
  (and
    (Set_in x@290@01 xs@281@01)
    (or (not (Set_in x@290@01 ys@282@01)) (Set_in x@290@01 ys@282@01)))))
(assert (or (Set_in x@290@01 xs@281@01) (not (Set_in x@290@01 xs@281@01))))
(assert (and
  (Set_in x@290@01 xs@281@01)
  (and
    (not (Set_in x@290@01 ys@282@01))
    (not
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x@290@01)
        0)))))
(pop) ; 3
(declare-fun inv@291@01 ($Ref) $Ref)
(declare-fun img@292@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((x@290@01 $Ref)) (!
  (=>
    (and
      (Set_in x@290@01 xs@281@01)
      (and
        (not (Set_in x@290@01 ys@282@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x@290@01)
            0))))
    (and
      (=>
        (Set_in x@290@01 xs@281@01)
        (and
          (Set_in x@290@01 xs@281@01)
          (or (not (Set_in x@290@01 ys@282@01)) (Set_in x@290@01 ys@282@01))))
      (or (Set_in x@290@01 xs@281@01) (not (Set_in x@290@01 xs@281@01)))))
  :pattern ((Set_in x@290@01 xs@281@01))
  :pattern ((Set_in x@290@01 ys@282@01))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x@290@01))
  :pattern ((inv@291@01 x@290@01))
  :pattern ((img@292@01 x@290@01))
  :qid |g-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@290@01 $Ref) (x2@290@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in x1@290@01 xs@281@01)
        (and
          (not (Set_in x1@290@01 ys@282@01))
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@290@01)
              0))))
      (and
        (Set_in x2@290@01 xs@281@01)
        (and
          (not (Set_in x2@290@01 ys@282@01))
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@290@01)
              0))))
      (= x1@290@01 x2@290@01))
    (= x1@290@01 x2@290@01))
  
  :qid |g-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@290@01 $Ref)) (!
  (=>
    (and
      (Set_in x@290@01 xs@281@01)
      (and
        (not (Set_in x@290@01 ys@282@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x@290@01)
            0))))
    (and (= (inv@291@01 x@290@01) x@290@01) (img@292@01 x@290@01)))
  :pattern ((Set_in x@290@01 xs@281@01))
  :pattern ((Set_in x@290@01 ys@282@01))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x@290@01))
  :pattern ((inv@291@01 x@290@01))
  :pattern ((img@292@01 x@290@01))
  :qid |quant-u-6001|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@292@01 r)
      (and
        (Set_in (inv@291@01 r) xs@281@01)
        (and
          (not (Set_in (inv@291@01 r) ys@282@01))
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) (inv@291@01 r))
              0)))))
    (= (inv@291@01 r) r))
  :pattern ((inv@291@01 r))
  :qid |g-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@290@01 $Ref)) (!
  (=>
    (and
      (Set_in x@290@01 xs@281@01)
      (and
        (not (Set_in x@290@01 ys@282@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x@290@01)
            0))))
    (not (= x@290@01 $Ref.null)))
  :pattern ((Set_in x@290@01 xs@281@01))
  :pattern ((Set_in x@290@01 ys@282@01))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x@290@01))
  :pattern ((inv@291@01 x@290@01))
  :pattern ((img@292@01 x@290@01))
  :qid |g-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second $t@284@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@284@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@284@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@284@01))) $Snap.unit))
; [eval] (forall x1: Ref, x2: Ref :: { (x1 in xs), (x2 in xs) } { (x1 in xs), (x2 in ys) } { (x1 in xs), (x2.g in xs) } { (x1 in ys), (x2 in xs) } { (x1 in ys), (x2 in ys) } { (x1 in ys), (x2.g in xs) } { (x1.g in xs), (x2 in xs) } { (x1.g in xs), (x2 in ys) } { (x1.g in xs), (x2.g in xs) } (x1 in xs) && (!((x1 in ys)) && (x1.f != 0 && (!((x1.g in xs)) && ((x2 in xs) && (!((x2 in ys)) && (x2.f != 0 && (!((x2.g in xs)) && x1 != x2))))))) ==> x1.g != x2.g)
(declare-const x1@293@01 $Ref)
(declare-const x2@294@01 $Ref)
(push) ; 3
; [eval] (x1 in xs) && (!((x1 in ys)) && (x1.f != 0 && (!((x1.g in xs)) && ((x2 in xs) && (!((x2 in ys)) && (x2.f != 0 && (!((x2.g in xs)) && x1 != x2))))))) ==> x1.g != x2.g
; [eval] (x1 in xs) && (!((x1 in ys)) && (x1.f != 0 && (!((x1.g in xs)) && ((x2 in xs) && (!((x2 in ys)) && (x2.f != 0 && (!((x2.g in xs)) && x1 != x2)))))))
; [eval] (x1 in xs)
(push) ; 4
; [then-branch: 39 | !(x1@293@01 in xs@281@01) | live]
; [else-branch: 39 | x1@293@01 in xs@281@01 | live]
(push) ; 5
; [then-branch: 39 | !(x1@293@01 in xs@281@01)]
(assert (not (Set_in x1@293@01 xs@281@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 39 | x1@293@01 in xs@281@01]
(assert (Set_in x1@293@01 xs@281@01))
; [eval] !((x1 in ys))
; [eval] (x1 in ys)
(push) ; 6
; [then-branch: 40 | x1@293@01 in ys@282@01 | live]
; [else-branch: 40 | !(x1@293@01 in ys@282@01) | live]
(push) ; 7
; [then-branch: 40 | x1@293@01 in ys@282@01]
(assert (Set_in x1@293@01 ys@282@01))
(pop) ; 7
(push) ; 7
; [else-branch: 40 | !(x1@293@01 in ys@282@01)]
(assert (not (Set_in x1@293@01 ys@282@01)))
; [eval] x1.f != 0
(push) ; 8
(assert (not (and
  (img@289@01 x1@293@01)
  (and
    (Set_in (inv@288@01 x1@293@01) xs@281@01)
    (not (Set_in (inv@288@01 x1@293@01) ys@282@01))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
; [then-branch: 41 | Lookup(f, First:($t@284@01), x1@293@01) == 0 | live]
; [else-branch: 41 | Lookup(f, First:($t@284@01), x1@293@01) != 0 | live]
(push) ; 9
; [then-branch: 41 | Lookup(f, First:($t@284@01), x1@293@01) == 0]
(assert (=
  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
  0))
(pop) ; 9
(push) ; 9
; [else-branch: 41 | Lookup(f, First:($t@284@01), x1@293@01) != 0]
(assert (not
  (=
    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
    0)))
; [eval] !((x1.g in xs))
; [eval] (x1.g in xs)
(push) ; 10
(assert (not (and
  (img@292@01 x1@293@01)
  (and
    (Set_in (inv@291@01 x1@293@01) xs@281@01)
    (and
      (not (Set_in (inv@291@01 x1@293@01) ys@282@01))
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) (inv@291@01 x1@293@01))
          0)))))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(push) ; 10
; [then-branch: 42 | Lookup(g, First:(Second:($t@284@01)), x1@293@01) in xs@281@01 | live]
; [else-branch: 42 | !(Lookup(g, First:(Second:($t@284@01)), x1@293@01) in xs@281@01) | live]
(push) ; 11
; [then-branch: 42 | Lookup(g, First:(Second:($t@284@01)), x1@293@01) in xs@281@01]
(assert (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
(pop) ; 11
(push) ; 11
; [else-branch: 42 | !(Lookup(g, First:(Second:($t@284@01)), x1@293@01) in xs@281@01)]
(assert (not
  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01)))
; [eval] (x2 in xs)
(push) ; 12
; [then-branch: 43 | !(x2@294@01 in xs@281@01) | live]
; [else-branch: 43 | x2@294@01 in xs@281@01 | live]
(push) ; 13
; [then-branch: 43 | !(x2@294@01 in xs@281@01)]
(assert (not (Set_in x2@294@01 xs@281@01)))
(pop) ; 13
(push) ; 13
; [else-branch: 43 | x2@294@01 in xs@281@01]
(assert (Set_in x2@294@01 xs@281@01))
; [eval] !((x2 in ys))
; [eval] (x2 in ys)
(push) ; 14
; [then-branch: 44 | x2@294@01 in ys@282@01 | live]
; [else-branch: 44 | !(x2@294@01 in ys@282@01) | live]
(push) ; 15
; [then-branch: 44 | x2@294@01 in ys@282@01]
(assert (Set_in x2@294@01 ys@282@01))
(pop) ; 15
(push) ; 15
; [else-branch: 44 | !(x2@294@01 in ys@282@01)]
(assert (not (Set_in x2@294@01 ys@282@01)))
; [eval] x2.f != 0
(push) ; 16
(assert (not (and
  (img@289@01 x2@294@01)
  (and
    (Set_in (inv@288@01 x2@294@01) xs@281@01)
    (not (Set_in (inv@288@01 x2@294@01) ys@282@01))))))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(push) ; 16
; [then-branch: 45 | Lookup(f, First:($t@284@01), x2@294@01) == 0 | live]
; [else-branch: 45 | Lookup(f, First:($t@284@01), x2@294@01) != 0 | live]
(push) ; 17
; [then-branch: 45 | Lookup(f, First:($t@284@01), x2@294@01) == 0]
(assert (=
  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
  0))
(pop) ; 17
(push) ; 17
; [else-branch: 45 | Lookup(f, First:($t@284@01), x2@294@01) != 0]
(assert (not
  (=
    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
    0)))
; [eval] !((x2.g in xs))
; [eval] (x2.g in xs)
(push) ; 18
(assert (not (and
  (img@292@01 x2@294@01)
  (and
    (Set_in (inv@291@01 x2@294@01) xs@281@01)
    (and
      (not (Set_in (inv@291@01 x2@294@01) ys@282@01))
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) (inv@291@01 x2@294@01))
          0)))))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(push) ; 18
; [then-branch: 46 | Lookup(g, First:(Second:($t@284@01)), x2@294@01) in xs@281@01 | live]
; [else-branch: 46 | !(Lookup(g, First:(Second:($t@284@01)), x2@294@01) in xs@281@01) | live]
(push) ; 19
; [then-branch: 46 | Lookup(g, First:(Second:($t@284@01)), x2@294@01) in xs@281@01]
(assert (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
(pop) ; 19
(push) ; 19
; [else-branch: 46 | !(Lookup(g, First:(Second:($t@284@01)), x2@294@01) in xs@281@01)]
(assert (not
  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01)))
; [eval] x1 != x2
(pop) ; 19
(pop) ; 18
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01)))
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(assert (=>
  (not
    (=
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
      0))
  (and
    (not
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
        0))
    (or
      (not
        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01)))))
(assert (or
  (not
    (=
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
      0))
  (=
    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
    0)))
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (=>
  (not (Set_in x2@294@01 ys@282@01))
  (and
    (not (Set_in x2@294@01 ys@282@01))
    (=>
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
          0))
      (and
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
            0))
        (or
          (not
            (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))))
    (or
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
          0))
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
        0)))))
(assert (or (not (Set_in x2@294@01 ys@282@01)) (Set_in x2@294@01 ys@282@01)))
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in x2@294@01 xs@281@01)
  (and
    (Set_in x2@294@01 xs@281@01)
    (=>
      (not (Set_in x2@294@01 ys@282@01))
      (and
        (not (Set_in x2@294@01 ys@282@01))
        (=>
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
              0))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                0))
            (or
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
              (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))))
        (or
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
              0))
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
            0))))
    (or (not (Set_in x2@294@01 ys@282@01)) (Set_in x2@294@01 ys@282@01)))))
(assert (or (Set_in x2@294@01 xs@281@01) (not (Set_in x2@294@01 xs@281@01))))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (=>
  (not
    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
  (and
    (not
      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
    (=>
      (Set_in x2@294@01 xs@281@01)
      (and
        (Set_in x2@294@01 xs@281@01)
        (=>
          (not (Set_in x2@294@01 ys@282@01))
          (and
            (not (Set_in x2@294@01 ys@282@01))
            (=>
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                  0))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                    0))
                (or
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))))
            (or
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                  0))
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                0))))
        (or (not (Set_in x2@294@01 ys@282@01)) (Set_in x2@294@01 ys@282@01))))
    (or (Set_in x2@294@01 xs@281@01) (not (Set_in x2@294@01 xs@281@01))))))
(assert (or
  (not
    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01)))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (not
    (=
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
      0))
  (and
    (not
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
        0))
    (=>
      (not
        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
      (and
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
        (=>
          (Set_in x2@294@01 xs@281@01)
          (and
            (Set_in x2@294@01 xs@281@01)
            (=>
              (not (Set_in x2@294@01 ys@282@01))
              (and
                (not (Set_in x2@294@01 ys@282@01))
                (=>
                  (not
                    (=
                      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                      0))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                        0))
                    (or
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))))
                (or
                  (not
                    (=
                      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                      0))
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                    0))))
            (or (not (Set_in x2@294@01 ys@282@01)) (Set_in x2@294@01 ys@282@01))))
        (or (Set_in x2@294@01 xs@281@01) (not (Set_in x2@294@01 xs@281@01)))))
    (or
      (not
        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01)))))
(assert (or
  (not
    (=
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
      0))
  (=
    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
    0)))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (not (Set_in x1@293@01 ys@282@01))
  (and
    (not (Set_in x1@293@01 ys@282@01))
    (=>
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
          0))
      (and
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
            0))
        (=>
          (not
            (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
          (and
            (not
              (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
            (=>
              (Set_in x2@294@01 xs@281@01)
              (and
                (Set_in x2@294@01 xs@281@01)
                (=>
                  (not (Set_in x2@294@01 ys@282@01))
                  (and
                    (not (Set_in x2@294@01 ys@282@01))
                    (=>
                      (not
                        (=
                          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                          0))
                      (and
                        (not
                          (=
                            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                            0))
                        (or
                          (not
                            (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
                          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))))
                    (or
                      (not
                        (=
                          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                          0))
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                        0))))
                (or
                  (not (Set_in x2@294@01 ys@282@01))
                  (Set_in x2@294@01 ys@282@01))))
            (or (Set_in x2@294@01 xs@281@01) (not (Set_in x2@294@01 xs@281@01)))))
        (or
          (not
            (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))))
    (or
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
          0))
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
        0)))))
(assert (or (not (Set_in x1@293@01 ys@282@01)) (Set_in x1@293@01 ys@282@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in x1@293@01 xs@281@01)
  (and
    (Set_in x1@293@01 xs@281@01)
    (=>
      (not (Set_in x1@293@01 ys@282@01))
      (and
        (not (Set_in x1@293@01 ys@282@01))
        (=>
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
              0))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                0))
            (=>
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
              (and
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
                (=>
                  (Set_in x2@294@01 xs@281@01)
                  (and
                    (Set_in x2@294@01 xs@281@01)
                    (=>
                      (not (Set_in x2@294@01 ys@282@01))
                      (and
                        (not (Set_in x2@294@01 ys@282@01))
                        (=>
                          (not
                            (=
                              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                              0))
                          (and
                            (not
                              (=
                                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                                0))
                            (or
                              (not
                                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
                              (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))))
                        (or
                          (not
                            (=
                              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                              0))
                          (=
                            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                            0))))
                    (or
                      (not (Set_in x2@294@01 ys@282@01))
                      (Set_in x2@294@01 ys@282@01))))
                (or
                  (Set_in x2@294@01 xs@281@01)
                  (not (Set_in x2@294@01 xs@281@01)))))
            (or
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
              (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))))
        (or
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
              0))
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
            0))))
    (or (not (Set_in x1@293@01 ys@282@01)) (Set_in x1@293@01 ys@282@01)))))
(assert (or (Set_in x1@293@01 xs@281@01) (not (Set_in x1@293@01 xs@281@01))))
(push) ; 4
; [then-branch: 47 | x1@293@01 in xs@281@01 && !(x1@293@01 in ys@282@01) && Lookup(f, First:($t@284@01), x1@293@01) != 0 && !(Lookup(g, First:(Second:($t@284@01)), x1@293@01) in xs@281@01) && x2@294@01 in xs@281@01 && !(x2@294@01 in ys@282@01) && Lookup(f, First:($t@284@01), x2@294@01) != 0 && !(Lookup(g, First:(Second:($t@284@01)), x2@294@01) in xs@281@01) && x1@293@01 != x2@294@01 | live]
; [else-branch: 47 | !(x1@293@01 in xs@281@01 && !(x1@293@01 in ys@282@01) && Lookup(f, First:($t@284@01), x1@293@01) != 0 && !(Lookup(g, First:(Second:($t@284@01)), x1@293@01) in xs@281@01) && x2@294@01 in xs@281@01 && !(x2@294@01 in ys@282@01) && Lookup(f, First:($t@284@01), x2@294@01) != 0 && !(Lookup(g, First:(Second:($t@284@01)), x2@294@01) in xs@281@01) && x1@293@01 != x2@294@01) | live]
(push) ; 5
; [then-branch: 47 | x1@293@01 in xs@281@01 && !(x1@293@01 in ys@282@01) && Lookup(f, First:($t@284@01), x1@293@01) != 0 && !(Lookup(g, First:(Second:($t@284@01)), x1@293@01) in xs@281@01) && x2@294@01 in xs@281@01 && !(x2@294@01 in ys@282@01) && Lookup(f, First:($t@284@01), x2@294@01) != 0 && !(Lookup(g, First:(Second:($t@284@01)), x2@294@01) in xs@281@01) && x1@293@01 != x2@294@01]
(assert (and
  (Set_in x1@293@01 xs@281@01)
  (and
    (not (Set_in x1@293@01 ys@282@01))
    (and
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
          0))
      (and
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
        (and
          (Set_in x2@294@01 xs@281@01)
          (and
            (not (Set_in x2@294@01 ys@282@01))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                  0))
              (and
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
                (not (= x1@293@01 x2@294@01)))))))))))
; [eval] x1.g != x2.g
(push) ; 6
(assert (not (and
  (img@292@01 x1@293@01)
  (and
    (Set_in (inv@291@01 x1@293@01) xs@281@01)
    (and
      (not (Set_in (inv@291@01 x1@293@01) ys@282@01))
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) (inv@291@01 x1@293@01))
          0)))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (and
  (img@292@01 x2@294@01)
  (and
    (Set_in (inv@291@01 x2@294@01) xs@281@01)
    (and
      (not (Set_in (inv@291@01 x2@294@01) ys@282@01))
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) (inv@291@01 x2@294@01))
          0)))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 47 | !(x1@293@01 in xs@281@01 && !(x1@293@01 in ys@282@01) && Lookup(f, First:($t@284@01), x1@293@01) != 0 && !(Lookup(g, First:(Second:($t@284@01)), x1@293@01) in xs@281@01) && x2@294@01 in xs@281@01 && !(x2@294@01 in ys@282@01) && Lookup(f, First:($t@284@01), x2@294@01) != 0 && !(Lookup(g, First:(Second:($t@284@01)), x2@294@01) in xs@281@01) && x1@293@01 != x2@294@01)]
(assert (not
  (and
    (Set_in x1@293@01 xs@281@01)
    (and
      (not (Set_in x1@293@01 ys@282@01))
      (and
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
            0))
        (and
          (not
            (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
          (and
            (Set_in x2@294@01 xs@281@01)
            (and
              (not (Set_in x2@294@01 ys@282@01))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                    0))
                (and
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
                  (not (= x1@293@01 x2@294@01))))))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (Set_in x1@293@01 xs@281@01)
    (and
      (not (Set_in x1@293@01 ys@282@01))
      (and
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
            0))
        (and
          (not
            (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
          (and
            (Set_in x2@294@01 xs@281@01)
            (and
              (not (Set_in x2@294@01 ys@282@01))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                    0))
                (and
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
                  (not (= x1@293@01 x2@294@01))))))))))
  (and
    (Set_in x1@293@01 xs@281@01)
    (not (Set_in x1@293@01 ys@282@01))
    (not
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
        0))
    (not
      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
    (Set_in x2@294@01 xs@281@01)
    (not (Set_in x2@294@01 ys@282@01))
    (not
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
        0))
    (not
      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
    (not (= x1@293@01 x2@294@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in x1@293@01 xs@281@01)
      (and
        (not (Set_in x1@293@01 ys@282@01))
        (and
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
              0))
          (and
            (not
              (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
            (and
              (Set_in x2@294@01 xs@281@01)
              (and
                (not (Set_in x2@294@01 ys@282@01))
                (and
                  (not
                    (=
                      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                      0))
                  (and
                    (not
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
                    (not (= x1@293@01 x2@294@01)))))))))))
  (and
    (Set_in x1@293@01 xs@281@01)
    (and
      (not (Set_in x1@293@01 ys@282@01))
      (and
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
            0))
        (and
          (not
            (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
          (and
            (Set_in x2@294@01 xs@281@01)
            (and
              (not (Set_in x2@294@01 ys@282@01))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                    0))
                (and
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
                  (not (= x1@293@01 x2@294@01))))))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x1@293@01 $Ref) (x2@294@01 $Ref)) (!
  (and
    (=>
      (Set_in x1@293@01 xs@281@01)
      (and
        (Set_in x1@293@01 xs@281@01)
        (=>
          (not (Set_in x1@293@01 ys@282@01))
          (and
            (not (Set_in x1@293@01 ys@282@01))
            (=>
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                  0))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                    0))
                (=>
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
                  (and
                    (not
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
                    (=>
                      (Set_in x2@294@01 xs@281@01)
                      (and
                        (Set_in x2@294@01 xs@281@01)
                        (=>
                          (not (Set_in x2@294@01 ys@282@01))
                          (and
                            (not (Set_in x2@294@01 ys@282@01))
                            (=>
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                                  0))
                              (and
                                (not
                                  (=
                                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                                    0))
                                (or
                                  (not
                                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
                                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))))
                            (or
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                                  0))
                              (=
                                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                                0))))
                        (or
                          (not (Set_in x2@294@01 ys@282@01))
                          (Set_in x2@294@01 ys@282@01))))
                    (or
                      (Set_in x2@294@01 xs@281@01)
                      (not (Set_in x2@294@01 xs@281@01)))))
                (or
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))))
            (or
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                  0))
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                0))))
        (or (not (Set_in x1@293@01 ys@282@01)) (Set_in x1@293@01 ys@282@01))))
    (or (Set_in x1@293@01 xs@281@01) (not (Set_in x1@293@01 xs@281@01)))
    (=>
      (and
        (Set_in x1@293@01 xs@281@01)
        (and
          (not (Set_in x1@293@01 ys@282@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
              (and
                (Set_in x2@294@01 xs@281@01)
                (and
                  (not (Set_in x2@294@01 ys@282@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
                      (not (= x1@293@01 x2@294@01))))))))))
      (and
        (Set_in x1@293@01 xs@281@01)
        (not (Set_in x1@293@01 ys@282@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
        (Set_in x2@294@01 xs@281@01)
        (not (Set_in x2@294@01 ys@282@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
        (not (= x1@293@01 x2@294@01))))
    (or
      (not
        (and
          (Set_in x1@293@01 xs@281@01)
          (and
            (not (Set_in x1@293@01 ys@282@01))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                  0))
              (and
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
                (and
                  (Set_in x2@294@01 xs@281@01)
                  (and
                    (not (Set_in x2@294@01 ys@282@01))
                    (and
                      (not
                        (=
                          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                          0))
                      (and
                        (not
                          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
                        (not (= x1@293@01 x2@294@01)))))))))))
      (and
        (Set_in x1@293@01 xs@281@01)
        (and
          (not (Set_in x1@293@01 ys@282@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
              (and
                (Set_in x2@294@01 xs@281@01)
                (and
                  (not (Set_in x2@294@01 ys@282@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
                      (not (= x1@293@01 x2@294@01))))))))))))
  :pattern ((Set_in x1@293@01 xs@281@01) (Set_in x2@294@01 xs@281@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/generalised_shape.vpr@119@7@121@92-aux|)))
(assert (forall ((x1@293@01 $Ref) (x2@294@01 $Ref)) (!
  (and
    (=>
      (Set_in x1@293@01 xs@281@01)
      (and
        (Set_in x1@293@01 xs@281@01)
        (=>
          (not (Set_in x1@293@01 ys@282@01))
          (and
            (not (Set_in x1@293@01 ys@282@01))
            (=>
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                  0))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                    0))
                (=>
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
                  (and
                    (not
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
                    (=>
                      (Set_in x2@294@01 xs@281@01)
                      (and
                        (Set_in x2@294@01 xs@281@01)
                        (=>
                          (not (Set_in x2@294@01 ys@282@01))
                          (and
                            (not (Set_in x2@294@01 ys@282@01))
                            (=>
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                                  0))
                              (and
                                (not
                                  (=
                                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                                    0))
                                (or
                                  (not
                                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
                                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))))
                            (or
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                                  0))
                              (=
                                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                                0))))
                        (or
                          (not (Set_in x2@294@01 ys@282@01))
                          (Set_in x2@294@01 ys@282@01))))
                    (or
                      (Set_in x2@294@01 xs@281@01)
                      (not (Set_in x2@294@01 xs@281@01)))))
                (or
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))))
            (or
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                  0))
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                0))))
        (or (not (Set_in x1@293@01 ys@282@01)) (Set_in x1@293@01 ys@282@01))))
    (or (Set_in x1@293@01 xs@281@01) (not (Set_in x1@293@01 xs@281@01)))
    (=>
      (and
        (Set_in x1@293@01 xs@281@01)
        (and
          (not (Set_in x1@293@01 ys@282@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
              (and
                (Set_in x2@294@01 xs@281@01)
                (and
                  (not (Set_in x2@294@01 ys@282@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
                      (not (= x1@293@01 x2@294@01))))))))))
      (and
        (Set_in x1@293@01 xs@281@01)
        (not (Set_in x1@293@01 ys@282@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
        (Set_in x2@294@01 xs@281@01)
        (not (Set_in x2@294@01 ys@282@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
        (not (= x1@293@01 x2@294@01))))
    (or
      (not
        (and
          (Set_in x1@293@01 xs@281@01)
          (and
            (not (Set_in x1@293@01 ys@282@01))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                  0))
              (and
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
                (and
                  (Set_in x2@294@01 xs@281@01)
                  (and
                    (not (Set_in x2@294@01 ys@282@01))
                    (and
                      (not
                        (=
                          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                          0))
                      (and
                        (not
                          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
                        (not (= x1@293@01 x2@294@01)))))))))))
      (and
        (Set_in x1@293@01 xs@281@01)
        (and
          (not (Set_in x1@293@01 ys@282@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
              (and
                (Set_in x2@294@01 xs@281@01)
                (and
                  (not (Set_in x2@294@01 ys@282@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
                      (not (= x1@293@01 x2@294@01))))))))))))
  :pattern ((Set_in x1@293@01 xs@281@01) (Set_in x2@294@01 ys@282@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/generalised_shape.vpr@119@7@121@92-aux|)))
(assert (forall ((x1@293@01 $Ref) (x2@294@01 $Ref)) (!
  (and
    (=>
      (Set_in x1@293@01 xs@281@01)
      (and
        (Set_in x1@293@01 xs@281@01)
        (=>
          (not (Set_in x1@293@01 ys@282@01))
          (and
            (not (Set_in x1@293@01 ys@282@01))
            (=>
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                  0))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                    0))
                (=>
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
                  (and
                    (not
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
                    (=>
                      (Set_in x2@294@01 xs@281@01)
                      (and
                        (Set_in x2@294@01 xs@281@01)
                        (=>
                          (not (Set_in x2@294@01 ys@282@01))
                          (and
                            (not (Set_in x2@294@01 ys@282@01))
                            (=>
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                                  0))
                              (and
                                (not
                                  (=
                                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                                    0))
                                (or
                                  (not
                                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
                                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))))
                            (or
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                                  0))
                              (=
                                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                                0))))
                        (or
                          (not (Set_in x2@294@01 ys@282@01))
                          (Set_in x2@294@01 ys@282@01))))
                    (or
                      (Set_in x2@294@01 xs@281@01)
                      (not (Set_in x2@294@01 xs@281@01)))))
                (or
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))))
            (or
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                  0))
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                0))))
        (or (not (Set_in x1@293@01 ys@282@01)) (Set_in x1@293@01 ys@282@01))))
    (or (Set_in x1@293@01 xs@281@01) (not (Set_in x1@293@01 xs@281@01)))
    (=>
      (and
        (Set_in x1@293@01 xs@281@01)
        (and
          (not (Set_in x1@293@01 ys@282@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
              (and
                (Set_in x2@294@01 xs@281@01)
                (and
                  (not (Set_in x2@294@01 ys@282@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
                      (not (= x1@293@01 x2@294@01))))))))))
      (and
        (Set_in x1@293@01 xs@281@01)
        (not (Set_in x1@293@01 ys@282@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
        (Set_in x2@294@01 xs@281@01)
        (not (Set_in x2@294@01 ys@282@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
        (not (= x1@293@01 x2@294@01))))
    (or
      (not
        (and
          (Set_in x1@293@01 xs@281@01)
          (and
            (not (Set_in x1@293@01 ys@282@01))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                  0))
              (and
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
                (and
                  (Set_in x2@294@01 xs@281@01)
                  (and
                    (not (Set_in x2@294@01 ys@282@01))
                    (and
                      (not
                        (=
                          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                          0))
                      (and
                        (not
                          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
                        (not (= x1@293@01 x2@294@01)))))))))))
      (and
        (Set_in x1@293@01 xs@281@01)
        (and
          (not (Set_in x1@293@01 ys@282@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
              (and
                (Set_in x2@294@01 xs@281@01)
                (and
                  (not (Set_in x2@294@01 ys@282@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
                      (not (= x1@293@01 x2@294@01))))))))))))
  :pattern ((Set_in x1@293@01 xs@281@01) (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/generalised_shape.vpr@119@7@121@92-aux|)))
(assert (forall ((x1@293@01 $Ref) (x2@294@01 $Ref)) (!
  (and
    (=>
      (Set_in x1@293@01 xs@281@01)
      (and
        (Set_in x1@293@01 xs@281@01)
        (=>
          (not (Set_in x1@293@01 ys@282@01))
          (and
            (not (Set_in x1@293@01 ys@282@01))
            (=>
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                  0))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                    0))
                (=>
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
                  (and
                    (not
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
                    (=>
                      (Set_in x2@294@01 xs@281@01)
                      (and
                        (Set_in x2@294@01 xs@281@01)
                        (=>
                          (not (Set_in x2@294@01 ys@282@01))
                          (and
                            (not (Set_in x2@294@01 ys@282@01))
                            (=>
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                                  0))
                              (and
                                (not
                                  (=
                                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                                    0))
                                (or
                                  (not
                                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
                                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))))
                            (or
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                                  0))
                              (=
                                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                                0))))
                        (or
                          (not (Set_in x2@294@01 ys@282@01))
                          (Set_in x2@294@01 ys@282@01))))
                    (or
                      (Set_in x2@294@01 xs@281@01)
                      (not (Set_in x2@294@01 xs@281@01)))))
                (or
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))))
            (or
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                  0))
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                0))))
        (or (not (Set_in x1@293@01 ys@282@01)) (Set_in x1@293@01 ys@282@01))))
    (or (Set_in x1@293@01 xs@281@01) (not (Set_in x1@293@01 xs@281@01)))
    (=>
      (and
        (Set_in x1@293@01 xs@281@01)
        (and
          (not (Set_in x1@293@01 ys@282@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
              (and
                (Set_in x2@294@01 xs@281@01)
                (and
                  (not (Set_in x2@294@01 ys@282@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
                      (not (= x1@293@01 x2@294@01))))))))))
      (and
        (Set_in x1@293@01 xs@281@01)
        (not (Set_in x1@293@01 ys@282@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
        (Set_in x2@294@01 xs@281@01)
        (not (Set_in x2@294@01 ys@282@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
        (not (= x1@293@01 x2@294@01))))
    (or
      (not
        (and
          (Set_in x1@293@01 xs@281@01)
          (and
            (not (Set_in x1@293@01 ys@282@01))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                  0))
              (and
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
                (and
                  (Set_in x2@294@01 xs@281@01)
                  (and
                    (not (Set_in x2@294@01 ys@282@01))
                    (and
                      (not
                        (=
                          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                          0))
                      (and
                        (not
                          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
                        (not (= x1@293@01 x2@294@01)))))))))))
      (and
        (Set_in x1@293@01 xs@281@01)
        (and
          (not (Set_in x1@293@01 ys@282@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
              (and
                (Set_in x2@294@01 xs@281@01)
                (and
                  (not (Set_in x2@294@01 ys@282@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
                      (not (= x1@293@01 x2@294@01))))))))))))
  :pattern ((Set_in x1@293@01 ys@282@01) (Set_in x2@294@01 xs@281@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/generalised_shape.vpr@119@7@121@92-aux|)))
(assert (forall ((x1@293@01 $Ref) (x2@294@01 $Ref)) (!
  (and
    (=>
      (Set_in x1@293@01 xs@281@01)
      (and
        (Set_in x1@293@01 xs@281@01)
        (=>
          (not (Set_in x1@293@01 ys@282@01))
          (and
            (not (Set_in x1@293@01 ys@282@01))
            (=>
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                  0))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                    0))
                (=>
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
                  (and
                    (not
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
                    (=>
                      (Set_in x2@294@01 xs@281@01)
                      (and
                        (Set_in x2@294@01 xs@281@01)
                        (=>
                          (not (Set_in x2@294@01 ys@282@01))
                          (and
                            (not (Set_in x2@294@01 ys@282@01))
                            (=>
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                                  0))
                              (and
                                (not
                                  (=
                                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                                    0))
                                (or
                                  (not
                                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
                                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))))
                            (or
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                                  0))
                              (=
                                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                                0))))
                        (or
                          (not (Set_in x2@294@01 ys@282@01))
                          (Set_in x2@294@01 ys@282@01))))
                    (or
                      (Set_in x2@294@01 xs@281@01)
                      (not (Set_in x2@294@01 xs@281@01)))))
                (or
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))))
            (or
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                  0))
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                0))))
        (or (not (Set_in x1@293@01 ys@282@01)) (Set_in x1@293@01 ys@282@01))))
    (or (Set_in x1@293@01 xs@281@01) (not (Set_in x1@293@01 xs@281@01)))
    (=>
      (and
        (Set_in x1@293@01 xs@281@01)
        (and
          (not (Set_in x1@293@01 ys@282@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
              (and
                (Set_in x2@294@01 xs@281@01)
                (and
                  (not (Set_in x2@294@01 ys@282@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
                      (not (= x1@293@01 x2@294@01))))))))))
      (and
        (Set_in x1@293@01 xs@281@01)
        (not (Set_in x1@293@01 ys@282@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
        (Set_in x2@294@01 xs@281@01)
        (not (Set_in x2@294@01 ys@282@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
        (not (= x1@293@01 x2@294@01))))
    (or
      (not
        (and
          (Set_in x1@293@01 xs@281@01)
          (and
            (not (Set_in x1@293@01 ys@282@01))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                  0))
              (and
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
                (and
                  (Set_in x2@294@01 xs@281@01)
                  (and
                    (not (Set_in x2@294@01 ys@282@01))
                    (and
                      (not
                        (=
                          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                          0))
                      (and
                        (not
                          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
                        (not (= x1@293@01 x2@294@01)))))))))))
      (and
        (Set_in x1@293@01 xs@281@01)
        (and
          (not (Set_in x1@293@01 ys@282@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
              (and
                (Set_in x2@294@01 xs@281@01)
                (and
                  (not (Set_in x2@294@01 ys@282@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
                      (not (= x1@293@01 x2@294@01))))))))))))
  :pattern ((Set_in x1@293@01 ys@282@01) (Set_in x2@294@01 ys@282@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/generalised_shape.vpr@119@7@121@92-aux|)))
(assert (forall ((x1@293@01 $Ref) (x2@294@01 $Ref)) (!
  (and
    (=>
      (Set_in x1@293@01 xs@281@01)
      (and
        (Set_in x1@293@01 xs@281@01)
        (=>
          (not (Set_in x1@293@01 ys@282@01))
          (and
            (not (Set_in x1@293@01 ys@282@01))
            (=>
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                  0))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                    0))
                (=>
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
                  (and
                    (not
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
                    (=>
                      (Set_in x2@294@01 xs@281@01)
                      (and
                        (Set_in x2@294@01 xs@281@01)
                        (=>
                          (not (Set_in x2@294@01 ys@282@01))
                          (and
                            (not (Set_in x2@294@01 ys@282@01))
                            (=>
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                                  0))
                              (and
                                (not
                                  (=
                                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                                    0))
                                (or
                                  (not
                                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
                                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))))
                            (or
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                                  0))
                              (=
                                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                                0))))
                        (or
                          (not (Set_in x2@294@01 ys@282@01))
                          (Set_in x2@294@01 ys@282@01))))
                    (or
                      (Set_in x2@294@01 xs@281@01)
                      (not (Set_in x2@294@01 xs@281@01)))))
                (or
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))))
            (or
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                  0))
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                0))))
        (or (not (Set_in x1@293@01 ys@282@01)) (Set_in x1@293@01 ys@282@01))))
    (or (Set_in x1@293@01 xs@281@01) (not (Set_in x1@293@01 xs@281@01)))
    (=>
      (and
        (Set_in x1@293@01 xs@281@01)
        (and
          (not (Set_in x1@293@01 ys@282@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
              (and
                (Set_in x2@294@01 xs@281@01)
                (and
                  (not (Set_in x2@294@01 ys@282@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
                      (not (= x1@293@01 x2@294@01))))))))))
      (and
        (Set_in x1@293@01 xs@281@01)
        (not (Set_in x1@293@01 ys@282@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
        (Set_in x2@294@01 xs@281@01)
        (not (Set_in x2@294@01 ys@282@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
        (not (= x1@293@01 x2@294@01))))
    (or
      (not
        (and
          (Set_in x1@293@01 xs@281@01)
          (and
            (not (Set_in x1@293@01 ys@282@01))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                  0))
              (and
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
                (and
                  (Set_in x2@294@01 xs@281@01)
                  (and
                    (not (Set_in x2@294@01 ys@282@01))
                    (and
                      (not
                        (=
                          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                          0))
                      (and
                        (not
                          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
                        (not (= x1@293@01 x2@294@01)))))))))))
      (and
        (Set_in x1@293@01 xs@281@01)
        (and
          (not (Set_in x1@293@01 ys@282@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
              (and
                (Set_in x2@294@01 xs@281@01)
                (and
                  (not (Set_in x2@294@01 ys@282@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
                      (not (= x1@293@01 x2@294@01))))))))))))
  :pattern ((Set_in x1@293@01 ys@282@01) (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/generalised_shape.vpr@119@7@121@92-aux|)))
(assert (forall ((x1@293@01 $Ref) (x2@294@01 $Ref)) (!
  (and
    (=>
      (Set_in x1@293@01 xs@281@01)
      (and
        (Set_in x1@293@01 xs@281@01)
        (=>
          (not (Set_in x1@293@01 ys@282@01))
          (and
            (not (Set_in x1@293@01 ys@282@01))
            (=>
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                  0))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                    0))
                (=>
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
                  (and
                    (not
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
                    (=>
                      (Set_in x2@294@01 xs@281@01)
                      (and
                        (Set_in x2@294@01 xs@281@01)
                        (=>
                          (not (Set_in x2@294@01 ys@282@01))
                          (and
                            (not (Set_in x2@294@01 ys@282@01))
                            (=>
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                                  0))
                              (and
                                (not
                                  (=
                                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                                    0))
                                (or
                                  (not
                                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
                                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))))
                            (or
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                                  0))
                              (=
                                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                                0))))
                        (or
                          (not (Set_in x2@294@01 ys@282@01))
                          (Set_in x2@294@01 ys@282@01))))
                    (or
                      (Set_in x2@294@01 xs@281@01)
                      (not (Set_in x2@294@01 xs@281@01)))))
                (or
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))))
            (or
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                  0))
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                0))))
        (or (not (Set_in x1@293@01 ys@282@01)) (Set_in x1@293@01 ys@282@01))))
    (or (Set_in x1@293@01 xs@281@01) (not (Set_in x1@293@01 xs@281@01)))
    (=>
      (and
        (Set_in x1@293@01 xs@281@01)
        (and
          (not (Set_in x1@293@01 ys@282@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
              (and
                (Set_in x2@294@01 xs@281@01)
                (and
                  (not (Set_in x2@294@01 ys@282@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
                      (not (= x1@293@01 x2@294@01))))))))))
      (and
        (Set_in x1@293@01 xs@281@01)
        (not (Set_in x1@293@01 ys@282@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
        (Set_in x2@294@01 xs@281@01)
        (not (Set_in x2@294@01 ys@282@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
        (not (= x1@293@01 x2@294@01))))
    (or
      (not
        (and
          (Set_in x1@293@01 xs@281@01)
          (and
            (not (Set_in x1@293@01 ys@282@01))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                  0))
              (and
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
                (and
                  (Set_in x2@294@01 xs@281@01)
                  (and
                    (not (Set_in x2@294@01 ys@282@01))
                    (and
                      (not
                        (=
                          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                          0))
                      (and
                        (not
                          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
                        (not (= x1@293@01 x2@294@01)))))))))))
      (and
        (Set_in x1@293@01 xs@281@01)
        (and
          (not (Set_in x1@293@01 ys@282@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
              (and
                (Set_in x2@294@01 xs@281@01)
                (and
                  (not (Set_in x2@294@01 ys@282@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
                      (not (= x1@293@01 x2@294@01))))))))))))
  :pattern ((Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01) (Set_in x2@294@01 xs@281@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/generalised_shape.vpr@119@7@121@92-aux|)))
(assert (forall ((x1@293@01 $Ref) (x2@294@01 $Ref)) (!
  (and
    (=>
      (Set_in x1@293@01 xs@281@01)
      (and
        (Set_in x1@293@01 xs@281@01)
        (=>
          (not (Set_in x1@293@01 ys@282@01))
          (and
            (not (Set_in x1@293@01 ys@282@01))
            (=>
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                  0))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                    0))
                (=>
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
                  (and
                    (not
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
                    (=>
                      (Set_in x2@294@01 xs@281@01)
                      (and
                        (Set_in x2@294@01 xs@281@01)
                        (=>
                          (not (Set_in x2@294@01 ys@282@01))
                          (and
                            (not (Set_in x2@294@01 ys@282@01))
                            (=>
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                                  0))
                              (and
                                (not
                                  (=
                                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                                    0))
                                (or
                                  (not
                                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
                                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))))
                            (or
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                                  0))
                              (=
                                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                                0))))
                        (or
                          (not (Set_in x2@294@01 ys@282@01))
                          (Set_in x2@294@01 ys@282@01))))
                    (or
                      (Set_in x2@294@01 xs@281@01)
                      (not (Set_in x2@294@01 xs@281@01)))))
                (or
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))))
            (or
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                  0))
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                0))))
        (or (not (Set_in x1@293@01 ys@282@01)) (Set_in x1@293@01 ys@282@01))))
    (or (Set_in x1@293@01 xs@281@01) (not (Set_in x1@293@01 xs@281@01)))
    (=>
      (and
        (Set_in x1@293@01 xs@281@01)
        (and
          (not (Set_in x1@293@01 ys@282@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
              (and
                (Set_in x2@294@01 xs@281@01)
                (and
                  (not (Set_in x2@294@01 ys@282@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
                      (not (= x1@293@01 x2@294@01))))))))))
      (and
        (Set_in x1@293@01 xs@281@01)
        (not (Set_in x1@293@01 ys@282@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
        (Set_in x2@294@01 xs@281@01)
        (not (Set_in x2@294@01 ys@282@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
        (not (= x1@293@01 x2@294@01))))
    (or
      (not
        (and
          (Set_in x1@293@01 xs@281@01)
          (and
            (not (Set_in x1@293@01 ys@282@01))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                  0))
              (and
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
                (and
                  (Set_in x2@294@01 xs@281@01)
                  (and
                    (not (Set_in x2@294@01 ys@282@01))
                    (and
                      (not
                        (=
                          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                          0))
                      (and
                        (not
                          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
                        (not (= x1@293@01 x2@294@01)))))))))))
      (and
        (Set_in x1@293@01 xs@281@01)
        (and
          (not (Set_in x1@293@01 ys@282@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
              (and
                (Set_in x2@294@01 xs@281@01)
                (and
                  (not (Set_in x2@294@01 ys@282@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
                      (not (= x1@293@01 x2@294@01))))))))))))
  :pattern ((Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01) (Set_in x2@294@01 ys@282@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/generalised_shape.vpr@119@7@121@92-aux|)))
(assert (forall ((x1@293@01 $Ref) (x2@294@01 $Ref)) (!
  (and
    (=>
      (Set_in x1@293@01 xs@281@01)
      (and
        (Set_in x1@293@01 xs@281@01)
        (=>
          (not (Set_in x1@293@01 ys@282@01))
          (and
            (not (Set_in x1@293@01 ys@282@01))
            (=>
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                  0))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                    0))
                (=>
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
                  (and
                    (not
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
                    (=>
                      (Set_in x2@294@01 xs@281@01)
                      (and
                        (Set_in x2@294@01 xs@281@01)
                        (=>
                          (not (Set_in x2@294@01 ys@282@01))
                          (and
                            (not (Set_in x2@294@01 ys@282@01))
                            (=>
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                                  0))
                              (and
                                (not
                                  (=
                                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                                    0))
                                (or
                                  (not
                                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
                                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))))
                            (or
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                                  0))
                              (=
                                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                                0))))
                        (or
                          (not (Set_in x2@294@01 ys@282@01))
                          (Set_in x2@294@01 ys@282@01))))
                    (or
                      (Set_in x2@294@01 xs@281@01)
                      (not (Set_in x2@294@01 xs@281@01)))))
                (or
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))))
            (or
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                  0))
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                0))))
        (or (not (Set_in x1@293@01 ys@282@01)) (Set_in x1@293@01 ys@282@01))))
    (or (Set_in x1@293@01 xs@281@01) (not (Set_in x1@293@01 xs@281@01)))
    (=>
      (and
        (Set_in x1@293@01 xs@281@01)
        (and
          (not (Set_in x1@293@01 ys@282@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
              (and
                (Set_in x2@294@01 xs@281@01)
                (and
                  (not (Set_in x2@294@01 ys@282@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
                      (not (= x1@293@01 x2@294@01))))))))))
      (and
        (Set_in x1@293@01 xs@281@01)
        (not (Set_in x1@293@01 ys@282@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
        (Set_in x2@294@01 xs@281@01)
        (not (Set_in x2@294@01 ys@282@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
        (not (= x1@293@01 x2@294@01))))
    (or
      (not
        (and
          (Set_in x1@293@01 xs@281@01)
          (and
            (not (Set_in x1@293@01 ys@282@01))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                  0))
              (and
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
                (and
                  (Set_in x2@294@01 xs@281@01)
                  (and
                    (not (Set_in x2@294@01 ys@282@01))
                    (and
                      (not
                        (=
                          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                          0))
                      (and
                        (not
                          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
                        (not (= x1@293@01 x2@294@01)))))))))))
      (and
        (Set_in x1@293@01 xs@281@01)
        (and
          (not (Set_in x1@293@01 ys@282@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
              (and
                (Set_in x2@294@01 xs@281@01)
                (and
                  (not (Set_in x2@294@01 ys@282@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
                      (not (= x1@293@01 x2@294@01))))))))))))
  :pattern ((Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01) (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/generalised_shape.vpr@119@7@121@92-aux|)))
(assert (forall ((x1@293@01 $Ref) (x2@294@01 $Ref)) (!
  (=>
    (and
      (Set_in x1@293@01 xs@281@01)
      (and
        (not (Set_in x1@293@01 ys@282@01))
        (and
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@293@01)
              0))
          (and
            (not
              (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01))
            (and
              (Set_in x2@294@01 xs@281@01)
              (and
                (not (Set_in x2@294@01 ys@282@01))
                (and
                  (not
                    (=
                      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@294@01)
                      0))
                  (and
                    (not
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
                    (not (= x1@293@01 x2@294@01))))))))))
    (not
      (=
        ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01)
        ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01))))
  :pattern ((Set_in x1@293@01 xs@281@01) (Set_in x2@294@01 xs@281@01))
  :pattern ((Set_in x1@293@01 xs@281@01) (Set_in x2@294@01 ys@282@01))
  :pattern ((Set_in x1@293@01 xs@281@01) (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
  :pattern ((Set_in x1@293@01 ys@282@01) (Set_in x2@294@01 xs@281@01))
  :pattern ((Set_in x1@293@01 ys@282@01) (Set_in x2@294@01 ys@282@01))
  :pattern ((Set_in x1@293@01 ys@282@01) (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
  :pattern ((Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01) (Set_in x2@294@01 xs@281@01))
  :pattern ((Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01) (Set_in x2@294@01 ys@282@01))
  :pattern ((Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@293@01) xs@281@01) (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@294@01) xs@281@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/generalised_shape.vpr@119@7@121@92|)))
(declare-const x@295@01 $Ref)
(push) ; 3
; [eval] (x in xs) && (!((x in ys)) && (x.f != 0 && !((x.g in xs))))
; [eval] (x in xs)
(push) ; 4
; [then-branch: 48 | !(x@295@01 in xs@281@01) | live]
; [else-branch: 48 | x@295@01 in xs@281@01 | live]
(push) ; 5
; [then-branch: 48 | !(x@295@01 in xs@281@01)]
(assert (not (Set_in x@295@01 xs@281@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 48 | x@295@01 in xs@281@01]
(assert (Set_in x@295@01 xs@281@01))
; [eval] !((x in ys))
; [eval] (x in ys)
(push) ; 6
; [then-branch: 49 | x@295@01 in ys@282@01 | live]
; [else-branch: 49 | !(x@295@01 in ys@282@01) | live]
(push) ; 7
; [then-branch: 49 | x@295@01 in ys@282@01]
(assert (Set_in x@295@01 ys@282@01))
(pop) ; 7
(push) ; 7
; [else-branch: 49 | !(x@295@01 in ys@282@01)]
(assert (not (Set_in x@295@01 ys@282@01)))
; [eval] x.f != 0
(push) ; 8
(assert (not (and
  (img@289@01 x@295@01)
  (and
    (Set_in (inv@288@01 x@295@01) xs@281@01)
    (not (Set_in (inv@288@01 x@295@01) ys@282@01))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
; [then-branch: 50 | Lookup(f, First:($t@284@01), x@295@01) == 0 | live]
; [else-branch: 50 | Lookup(f, First:($t@284@01), x@295@01) != 0 | live]
(push) ; 9
; [then-branch: 50 | Lookup(f, First:($t@284@01), x@295@01) == 0]
(assert (=
  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x@295@01)
  0))
(pop) ; 9
(push) ; 9
; [else-branch: 50 | Lookup(f, First:($t@284@01), x@295@01) != 0]
(assert (not
  (=
    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x@295@01)
    0)))
; [eval] !((x.g in xs))
; [eval] (x.g in xs)
(push) ; 10
(assert (not (and
  (img@292@01 x@295@01)
  (and
    (Set_in (inv@291@01 x@295@01) xs@281@01)
    (and
      (not (Set_in (inv@291@01 x@295@01) ys@282@01))
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) (inv@291@01 x@295@01))
          0)))))))
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
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x@295@01)
      0))
  (=
    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x@295@01)
    0)))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (not (Set_in x@295@01 ys@282@01))
  (and
    (not (Set_in x@295@01 ys@282@01))
    (or
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x@295@01)
          0))
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x@295@01)
        0)))))
(assert (or (not (Set_in x@295@01 ys@282@01)) (Set_in x@295@01 ys@282@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in x@295@01 xs@281@01)
  (and
    (Set_in x@295@01 xs@281@01)
    (=>
      (not (Set_in x@295@01 ys@282@01))
      (and
        (not (Set_in x@295@01 ys@282@01))
        (or
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x@295@01)
              0))
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x@295@01)
            0))))
    (or (not (Set_in x@295@01 ys@282@01)) (Set_in x@295@01 ys@282@01)))))
(assert (or (Set_in x@295@01 xs@281@01) (not (Set_in x@295@01 xs@281@01))))
(assert (and
  (Set_in x@295@01 xs@281@01)
  (and
    (not (Set_in x@295@01 ys@282@01))
    (and
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x@295@01)
          0))
      (not
        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x@295@01) xs@281@01))))))
(push) ; 4
(assert (not (and
  (img@292@01 x@295@01)
  (and
    (Set_in (inv@291@01 x@295@01) xs@281@01)
    (and
      (not (Set_in (inv@291@01 x@295@01) ys@282@01))
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) (inv@291@01 x@295@01))
          0)))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@296@01 ($Ref) $Ref)
(declare-fun img@297@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((x@295@01 $Ref)) (!
  (=>
    (and
      (Set_in x@295@01 xs@281@01)
      (and
        (not (Set_in x@295@01 ys@282@01))
        (and
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x@295@01)
              0))
          (not
            (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x@295@01) xs@281@01)))))
    (and
      (=>
        (Set_in x@295@01 xs@281@01)
        (and
          (Set_in x@295@01 xs@281@01)
          (=>
            (not (Set_in x@295@01 ys@282@01))
            (and
              (not (Set_in x@295@01 ys@282@01))
              (or
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x@295@01)
                    0))
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x@295@01)
                  0))))
          (or (not (Set_in x@295@01 ys@282@01)) (Set_in x@295@01 ys@282@01))))
      (or (Set_in x@295@01 xs@281@01) (not (Set_in x@295@01 xs@281@01)))))
  :pattern (($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x@295@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@295@01 $Ref) (x2@295@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in x1@295@01 xs@281@01)
        (and
          (not (Set_in x1@295@01 ys@282@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x1@295@01)
                0))
            (not
              (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@295@01) xs@281@01)))))
      (and
        (Set_in x2@295@01 xs@281@01)
        (and
          (not (Set_in x2@295@01 ys@282@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x2@295@01)
                0))
            (not
              (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@295@01) xs@281@01)))))
      (=
        ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x1@295@01)
        ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x2@295@01)))
    (= x1@295@01 x2@295@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@295@01 $Ref)) (!
  (=>
    (and
      (Set_in x@295@01 xs@281@01)
      (and
        (not (Set_in x@295@01 ys@282@01))
        (and
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x@295@01)
              0))
          (not
            (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x@295@01) xs@281@01)))))
    (and
      (=
        (inv@296@01 ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x@295@01))
        x@295@01)
      (img@297@01 ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x@295@01))))
  :pattern (($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x@295@01))
  :qid |quant-u-6003|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@297@01 r)
      (and
        (Set_in (inv@296@01 r) xs@281@01)
        (and
          (not (Set_in (inv@296@01 r) ys@282@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) (inv@296@01 r))
                0))
            (not
              (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) (inv@296@01 r)) xs@281@01))))))
    (=
      ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) (inv@296@01 r))
      r))
  :pattern ((inv@296@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@295@01 $Ref)) (!
  (=>
    (and
      (Set_in x@295@01 xs@281@01)
      (and
        (not (Set_in x@295@01 ys@282@01))
        (and
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) x@295@01)
              0))
          (not
            (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x@295@01) xs@281@01)))))
    (not
      (=
        ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x@295@01)
        $Ref.null)))
  :pattern (($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x@295@01))
  :qid |f-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (=
      ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x@295@01)
      x@287@01)
    (=
      (and
        (img@297@01 r)
        (and
          (Set_in (inv@296@01 r) xs@281@01)
          (and
            (not (Set_in (inv@296@01 r) ys@282@01))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) (inv@296@01 r))
                  0))
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) (inv@296@01 r)) xs@281@01))))))
      (and
        (img@289@01 r)
        (and
          (Set_in (inv@288@01 r) xs@281@01)
          (not (Set_in (inv@288@01 r) ys@282@01))))))
  
  :qid |quant-u-6004|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (P%trigger $t@284@01 xs@281@01 ys@282@01))
; [exec]
; inhale (x in xs)
(declare-const $t@298@01 $Snap)
(assert (= $t@298@01 $Snap.unit))
; [eval] (x in xs)
(assert (Set_in x@283@01 xs@281@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale !((x in ys))
(declare-const $t@299@01 $Snap)
(assert (= $t@299@01 $Snap.unit))
; [eval] !((x in ys))
; [eval] (x in ys)
(assert (not (Set_in x@283@01 ys@282@01)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale x != null
(declare-const $t@300@01 $Snap)
(assert (= $t@300@01 $Snap.unit))
; [eval] x != null
(assert (not (= x@283@01 $Ref.null)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; a := x.f
(declare-const sm@301@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@289@01 r)
      (and
        (Set_in (inv@288@01 r) xs@281@01)
        (not (Set_in (inv@288@01 r) ys@282@01))))
    (=
      ($FVF.lookup_f (as sm@301@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) r)))
  :pattern (($FVF.lookup_f (as sm@301@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) r))
  :qid |qp.fvfValDef63|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@297@01 r)
      (and
        (Set_in (inv@296@01 r) xs@281@01)
        (and
          (not (Set_in (inv@296@01 r) ys@282@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) (inv@296@01 r))
                0))
            (not
              (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) (inv@296@01 r)) xs@281@01))))))
    (=
      ($FVF.lookup_f (as sm@301@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second $t@284@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@301@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second $t@284@01)))) r))
  :qid |qp.fvfValDef64|)))
(declare-const pm@302@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@302@01  $FPM) r)
    (+
      (ite
        (and
          (img@289@01 r)
          (and
            (Set_in (inv@288@01 r) xs@281@01)
            (not (Set_in (inv@288@01 r) ys@282@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@297@01 r)
          (and
            (Set_in (inv@296@01 r) xs@281@01)
            (and
              (not (Set_in (inv@296@01 r) ys@282@01))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) (inv@296@01 r))
                    0))
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) (inv@296@01 r)) xs@281@01))))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@302@01  $FPM) r))
  :qid |qp.resPrmSumDef65|)))
(set-option :timeout 0)
(push) ; 3
(assert (not (< $Perm.No ($FVF.perm_f (as pm@302@01  $FPM) x@283@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const a@303@01 Int)
(assert (= a@303@01 ($FVF.lookup_f (as sm@301@01  $FVF<f>) x@283@01)))
; [exec]
; inhale a != 0
(declare-const $t@304@01 $Snap)
(assert (= $t@304@01 $Snap.unit))
; [eval] a != 0
(assert (not (= a@303@01 0)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; b := x.g
(set-option :timeout 0)
(push) ; 3
(assert (not (and
  (img@292@01 x@283@01)
  (and
    (Set_in (inv@291@01 x@283@01) xs@281@01)
    (and
      (not (Set_in (inv@291@01 x@283@01) ys@282@01))
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) (inv@291@01 x@283@01))
          0)))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const b@305@01 $Ref)
(assert (=
  b@305@01
  ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x@283@01)))
; [exec]
; a := x.g.f
(push) ; 3
(assert (not (and
  (img@292@01 x@283@01)
  (and
    (Set_in (inv@291@01 x@283@01) xs@281@01)
    (and
      (not (Set_in (inv@291@01 x@283@01) ys@282@01))
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) (inv@291@01 x@283@01))
          0)))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@289@01 r)
        (and
          (Set_in (inv@288@01 r) xs@281@01)
          (not (Set_in (inv@288@01 r) ys@282@01))))
      (=
        ($FVF.lookup_f (as sm@301@01  $FVF<f>) r)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) r)))
    :pattern (($FVF.lookup_f (as sm@301@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) r))
    :qid |qp.fvfValDef63|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@297@01 r)
        (and
          (Set_in (inv@296@01 r) xs@281@01)
          (and
            (not (Set_in (inv@296@01 r) ys@282@01))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) (inv@296@01 r))
                  0))
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) (inv@296@01 r)) xs@281@01))))))
      (=
        ($FVF.lookup_f (as sm@301@01  $FVF<f>) r)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second $t@284@01)))) r)))
    :pattern (($FVF.lookup_f (as sm@301@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second $t@284@01)))) r))
    :qid |qp.fvfValDef64|))))
(push) ; 3
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@289@01 ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x@283@01))
        (and
          (Set_in (inv@288@01 ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x@283@01)) xs@281@01)
          (not
            (Set_in (inv@288@01 ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x@283@01)) ys@282@01))))
      $Perm.Write
      $Perm.No)
    (ite
      (and
        (img@297@01 ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x@283@01))
        (and
          (Set_in (inv@296@01 ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x@283@01)) xs@281@01)
          (and
            (not
              (Set_in (inv@296@01 ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x@283@01)) ys@282@01))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@284@01)) (inv@296@01 ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x@283@01)))
                  0))
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) (inv@296@01 ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@284@01))) x@283@01))) xs@281@01))))))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1
; ---------- test04 ----------
(declare-const xs@306@01 Set<$Ref>)
(declare-const ys@307@01 Set<$Ref>)
(declare-const x@308@01 $Ref)
(declare-const xs@309@01 Set<$Ref>)
(declare-const ys@310@01 Set<$Ref>)
(declare-const x@311@01 $Ref)
(push) ; 1
(declare-const $t@312@01 $Snap)
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
(declare-const a@313@01 Int)
; [exec]
; var b: Ref
(declare-const b@314@01 $Ref)
; [exec]
; unfold acc(P(xs, ys), write)
(assert (= $t@312@01 ($Snap.combine ($Snap.first $t@312@01) ($Snap.second $t@312@01))))
(declare-const x@315@01 $Ref)
(push) ; 3
; [eval] (x in xs) && !((x in ys))
; [eval] (x in xs)
(push) ; 4
; [then-branch: 51 | !(x@315@01 in xs@309@01) | live]
; [else-branch: 51 | x@315@01 in xs@309@01 | live]
(push) ; 5
; [then-branch: 51 | !(x@315@01 in xs@309@01)]
(assert (not (Set_in x@315@01 xs@309@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 51 | x@315@01 in xs@309@01]
(assert (Set_in x@315@01 xs@309@01))
; [eval] !((x in ys))
; [eval] (x in ys)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (Set_in x@315@01 xs@309@01) (not (Set_in x@315@01 xs@309@01))))
(assert (and (Set_in x@315@01 xs@309@01) (not (Set_in x@315@01 ys@310@01))))
(pop) ; 3
(declare-fun inv@316@01 ($Ref) $Ref)
(declare-fun img@317@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((x@315@01 $Ref)) (!
  (=>
    (and (Set_in x@315@01 xs@309@01) (not (Set_in x@315@01 ys@310@01)))
    (or (Set_in x@315@01 xs@309@01) (not (Set_in x@315@01 xs@309@01))))
  :pattern ((Set_in x@315@01 xs@309@01))
  :pattern ((Set_in x@315@01 ys@310@01))
  :pattern ((inv@316@01 x@315@01))
  :pattern ((img@317@01 x@315@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@315@01 $Ref) (x2@315@01 $Ref)) (!
  (=>
    (and
      (and (Set_in x1@315@01 xs@309@01) (not (Set_in x1@315@01 ys@310@01)))
      (and (Set_in x2@315@01 xs@309@01) (not (Set_in x2@315@01 ys@310@01)))
      (= x1@315@01 x2@315@01))
    (= x1@315@01 x2@315@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@315@01 $Ref)) (!
  (=>
    (and (Set_in x@315@01 xs@309@01) (not (Set_in x@315@01 ys@310@01)))
    (and (= (inv@316@01 x@315@01) x@315@01) (img@317@01 x@315@01)))
  :pattern ((Set_in x@315@01 xs@309@01))
  :pattern ((Set_in x@315@01 ys@310@01))
  :pattern ((inv@316@01 x@315@01))
  :pattern ((img@317@01 x@315@01))
  :qid |quant-u-6006|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@317@01 r)
      (and
        (Set_in (inv@316@01 r) xs@309@01)
        (not (Set_in (inv@316@01 r) ys@310@01))))
    (= (inv@316@01 r) r))
  :pattern ((inv@316@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@315@01 $Ref)) (!
  (=>
    (and (Set_in x@315@01 xs@309@01) (not (Set_in x@315@01 ys@310@01)))
    (not (= x@315@01 $Ref.null)))
  :pattern ((Set_in x@315@01 xs@309@01))
  :pattern ((Set_in x@315@01 ys@310@01))
  :pattern ((inv@316@01 x@315@01))
  :pattern ((img@317@01 x@315@01))
  :qid |f-permImpliesNonNull|)))
(assert (=
  ($Snap.second $t@312@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@312@01))
    ($Snap.second ($Snap.second $t@312@01)))))
(declare-const x@318@01 $Ref)
(push) ; 3
; [eval] (x in xs) && (!((x in ys)) && x.f != 0)
; [eval] (x in xs)
(push) ; 4
; [then-branch: 52 | !(x@318@01 in xs@309@01) | live]
; [else-branch: 52 | x@318@01 in xs@309@01 | live]
(push) ; 5
; [then-branch: 52 | !(x@318@01 in xs@309@01)]
(assert (not (Set_in x@318@01 xs@309@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 52 | x@318@01 in xs@309@01]
(assert (Set_in x@318@01 xs@309@01))
; [eval] !((x in ys))
; [eval] (x in ys)
(push) ; 6
; [then-branch: 53 | x@318@01 in ys@310@01 | live]
; [else-branch: 53 | !(x@318@01 in ys@310@01) | live]
(push) ; 7
; [then-branch: 53 | x@318@01 in ys@310@01]
(assert (Set_in x@318@01 ys@310@01))
(pop) ; 7
(push) ; 7
; [else-branch: 53 | !(x@318@01 in ys@310@01)]
(assert (not (Set_in x@318@01 ys@310@01)))
; [eval] x.f != 0
(push) ; 8
(assert (not (and
  (img@317@01 x@318@01)
  (and
    (Set_in (inv@316@01 x@318@01) xs@309@01)
    (not (Set_in (inv@316@01 x@318@01) ys@310@01))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or (not (Set_in x@318@01 ys@310@01)) (Set_in x@318@01 ys@310@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in x@318@01 xs@309@01)
  (and
    (Set_in x@318@01 xs@309@01)
    (or (not (Set_in x@318@01 ys@310@01)) (Set_in x@318@01 ys@310@01)))))
(assert (or (Set_in x@318@01 xs@309@01) (not (Set_in x@318@01 xs@309@01))))
(assert (and
  (Set_in x@318@01 xs@309@01)
  (and
    (not (Set_in x@318@01 ys@310@01))
    (not
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x@318@01)
        0)))))
(pop) ; 3
(declare-fun inv@319@01 ($Ref) $Ref)
(declare-fun img@320@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((x@318@01 $Ref)) (!
  (=>
    (and
      (Set_in x@318@01 xs@309@01)
      (and
        (not (Set_in x@318@01 ys@310@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x@318@01)
            0))))
    (and
      (=>
        (Set_in x@318@01 xs@309@01)
        (and
          (Set_in x@318@01 xs@309@01)
          (or (not (Set_in x@318@01 ys@310@01)) (Set_in x@318@01 ys@310@01))))
      (or (Set_in x@318@01 xs@309@01) (not (Set_in x@318@01 xs@309@01)))))
  :pattern ((Set_in x@318@01 xs@309@01))
  :pattern ((Set_in x@318@01 ys@310@01))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x@318@01))
  :pattern ((inv@319@01 x@318@01))
  :pattern ((img@320@01 x@318@01))
  :qid |g-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@318@01 $Ref) (x2@318@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in x1@318@01 xs@309@01)
        (and
          (not (Set_in x1@318@01 ys@310@01))
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@318@01)
              0))))
      (and
        (Set_in x2@318@01 xs@309@01)
        (and
          (not (Set_in x2@318@01 ys@310@01))
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@318@01)
              0))))
      (= x1@318@01 x2@318@01))
    (= x1@318@01 x2@318@01))
  
  :qid |g-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@318@01 $Ref)) (!
  (=>
    (and
      (Set_in x@318@01 xs@309@01)
      (and
        (not (Set_in x@318@01 ys@310@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x@318@01)
            0))))
    (and (= (inv@319@01 x@318@01) x@318@01) (img@320@01 x@318@01)))
  :pattern ((Set_in x@318@01 xs@309@01))
  :pattern ((Set_in x@318@01 ys@310@01))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x@318@01))
  :pattern ((inv@319@01 x@318@01))
  :pattern ((img@320@01 x@318@01))
  :qid |quant-u-6008|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@320@01 r)
      (and
        (Set_in (inv@319@01 r) xs@309@01)
        (and
          (not (Set_in (inv@319@01 r) ys@310@01))
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) (inv@319@01 r))
              0)))))
    (= (inv@319@01 r) r))
  :pattern ((inv@319@01 r))
  :qid |g-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@318@01 $Ref)) (!
  (=>
    (and
      (Set_in x@318@01 xs@309@01)
      (and
        (not (Set_in x@318@01 ys@310@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x@318@01)
            0))))
    (not (= x@318@01 $Ref.null)))
  :pattern ((Set_in x@318@01 xs@309@01))
  :pattern ((Set_in x@318@01 ys@310@01))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x@318@01))
  :pattern ((inv@319@01 x@318@01))
  :pattern ((img@320@01 x@318@01))
  :qid |g-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second $t@312@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@312@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@312@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@312@01))) $Snap.unit))
; [eval] (forall x1: Ref, x2: Ref :: { (x1 in xs), (x2 in xs) } { (x1 in xs), (x2 in ys) } { (x1 in xs), (x2.g in xs) } { (x1 in ys), (x2 in xs) } { (x1 in ys), (x2 in ys) } { (x1 in ys), (x2.g in xs) } { (x1.g in xs), (x2 in xs) } { (x1.g in xs), (x2 in ys) } { (x1.g in xs), (x2.g in xs) } (x1 in xs) && (!((x1 in ys)) && (x1.f != 0 && (!((x1.g in xs)) && ((x2 in xs) && (!((x2 in ys)) && (x2.f != 0 && (!((x2.g in xs)) && x1 != x2))))))) ==> x1.g != x2.g)
(declare-const x1@321@01 $Ref)
(declare-const x2@322@01 $Ref)
(push) ; 3
; [eval] (x1 in xs) && (!((x1 in ys)) && (x1.f != 0 && (!((x1.g in xs)) && ((x2 in xs) && (!((x2 in ys)) && (x2.f != 0 && (!((x2.g in xs)) && x1 != x2))))))) ==> x1.g != x2.g
; [eval] (x1 in xs) && (!((x1 in ys)) && (x1.f != 0 && (!((x1.g in xs)) && ((x2 in xs) && (!((x2 in ys)) && (x2.f != 0 && (!((x2.g in xs)) && x1 != x2)))))))
; [eval] (x1 in xs)
(push) ; 4
; [then-branch: 54 | !(x1@321@01 in xs@309@01) | live]
; [else-branch: 54 | x1@321@01 in xs@309@01 | live]
(push) ; 5
; [then-branch: 54 | !(x1@321@01 in xs@309@01)]
(assert (not (Set_in x1@321@01 xs@309@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 54 | x1@321@01 in xs@309@01]
(assert (Set_in x1@321@01 xs@309@01))
; [eval] !((x1 in ys))
; [eval] (x1 in ys)
(push) ; 6
; [then-branch: 55 | x1@321@01 in ys@310@01 | live]
; [else-branch: 55 | !(x1@321@01 in ys@310@01) | live]
(push) ; 7
; [then-branch: 55 | x1@321@01 in ys@310@01]
(assert (Set_in x1@321@01 ys@310@01))
(pop) ; 7
(push) ; 7
; [else-branch: 55 | !(x1@321@01 in ys@310@01)]
(assert (not (Set_in x1@321@01 ys@310@01)))
; [eval] x1.f != 0
(push) ; 8
(assert (not (and
  (img@317@01 x1@321@01)
  (and
    (Set_in (inv@316@01 x1@321@01) xs@309@01)
    (not (Set_in (inv@316@01 x1@321@01) ys@310@01))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
; [then-branch: 56 | Lookup(f, First:($t@312@01), x1@321@01) == 0 | live]
; [else-branch: 56 | Lookup(f, First:($t@312@01), x1@321@01) != 0 | live]
(push) ; 9
; [then-branch: 56 | Lookup(f, First:($t@312@01), x1@321@01) == 0]
(assert (=
  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
  0))
(pop) ; 9
(push) ; 9
; [else-branch: 56 | Lookup(f, First:($t@312@01), x1@321@01) != 0]
(assert (not
  (=
    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
    0)))
; [eval] !((x1.g in xs))
; [eval] (x1.g in xs)
(push) ; 10
(assert (not (and
  (img@320@01 x1@321@01)
  (and
    (Set_in (inv@319@01 x1@321@01) xs@309@01)
    (and
      (not (Set_in (inv@319@01 x1@321@01) ys@310@01))
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) (inv@319@01 x1@321@01))
          0)))))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(push) ; 10
; [then-branch: 57 | Lookup(g, First:(Second:($t@312@01)), x1@321@01) in xs@309@01 | live]
; [else-branch: 57 | !(Lookup(g, First:(Second:($t@312@01)), x1@321@01) in xs@309@01) | live]
(push) ; 11
; [then-branch: 57 | Lookup(g, First:(Second:($t@312@01)), x1@321@01) in xs@309@01]
(assert (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
(pop) ; 11
(push) ; 11
; [else-branch: 57 | !(Lookup(g, First:(Second:($t@312@01)), x1@321@01) in xs@309@01)]
(assert (not
  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01)))
; [eval] (x2 in xs)
(push) ; 12
; [then-branch: 58 | !(x2@322@01 in xs@309@01) | live]
; [else-branch: 58 | x2@322@01 in xs@309@01 | live]
(push) ; 13
; [then-branch: 58 | !(x2@322@01 in xs@309@01)]
(assert (not (Set_in x2@322@01 xs@309@01)))
(pop) ; 13
(push) ; 13
; [else-branch: 58 | x2@322@01 in xs@309@01]
(assert (Set_in x2@322@01 xs@309@01))
; [eval] !((x2 in ys))
; [eval] (x2 in ys)
(push) ; 14
; [then-branch: 59 | x2@322@01 in ys@310@01 | live]
; [else-branch: 59 | !(x2@322@01 in ys@310@01) | live]
(push) ; 15
; [then-branch: 59 | x2@322@01 in ys@310@01]
(assert (Set_in x2@322@01 ys@310@01))
(pop) ; 15
(push) ; 15
; [else-branch: 59 | !(x2@322@01 in ys@310@01)]
(assert (not (Set_in x2@322@01 ys@310@01)))
; [eval] x2.f != 0
(push) ; 16
(assert (not (and
  (img@317@01 x2@322@01)
  (and
    (Set_in (inv@316@01 x2@322@01) xs@309@01)
    (not (Set_in (inv@316@01 x2@322@01) ys@310@01))))))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(push) ; 16
; [then-branch: 60 | Lookup(f, First:($t@312@01), x2@322@01) == 0 | live]
; [else-branch: 60 | Lookup(f, First:($t@312@01), x2@322@01) != 0 | live]
(push) ; 17
; [then-branch: 60 | Lookup(f, First:($t@312@01), x2@322@01) == 0]
(assert (=
  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
  0))
(pop) ; 17
(push) ; 17
; [else-branch: 60 | Lookup(f, First:($t@312@01), x2@322@01) != 0]
(assert (not
  (=
    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
    0)))
; [eval] !((x2.g in xs))
; [eval] (x2.g in xs)
(push) ; 18
(assert (not (and
  (img@320@01 x2@322@01)
  (and
    (Set_in (inv@319@01 x2@322@01) xs@309@01)
    (and
      (not (Set_in (inv@319@01 x2@322@01) ys@310@01))
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) (inv@319@01 x2@322@01))
          0)))))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(push) ; 18
; [then-branch: 61 | Lookup(g, First:(Second:($t@312@01)), x2@322@01) in xs@309@01 | live]
; [else-branch: 61 | !(Lookup(g, First:(Second:($t@312@01)), x2@322@01) in xs@309@01) | live]
(push) ; 19
; [then-branch: 61 | Lookup(g, First:(Second:($t@312@01)), x2@322@01) in xs@309@01]
(assert (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
(pop) ; 19
(push) ; 19
; [else-branch: 61 | !(Lookup(g, First:(Second:($t@312@01)), x2@322@01) in xs@309@01)]
(assert (not
  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01)))
; [eval] x1 != x2
(pop) ; 19
(pop) ; 18
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01)))
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(assert (=>
  (not
    (=
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
      0))
  (and
    (not
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
        0))
    (or
      (not
        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01)))))
(assert (or
  (not
    (=
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
      0))
  (=
    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
    0)))
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (=>
  (not (Set_in x2@322@01 ys@310@01))
  (and
    (not (Set_in x2@322@01 ys@310@01))
    (=>
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
          0))
      (and
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
            0))
        (or
          (not
            (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))))
    (or
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
          0))
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
        0)))))
(assert (or (not (Set_in x2@322@01 ys@310@01)) (Set_in x2@322@01 ys@310@01)))
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in x2@322@01 xs@309@01)
  (and
    (Set_in x2@322@01 xs@309@01)
    (=>
      (not (Set_in x2@322@01 ys@310@01))
      (and
        (not (Set_in x2@322@01 ys@310@01))
        (=>
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
              0))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                0))
            (or
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
              (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))))
        (or
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
              0))
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
            0))))
    (or (not (Set_in x2@322@01 ys@310@01)) (Set_in x2@322@01 ys@310@01)))))
(assert (or (Set_in x2@322@01 xs@309@01) (not (Set_in x2@322@01 xs@309@01))))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (=>
  (not
    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
  (and
    (not
      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
    (=>
      (Set_in x2@322@01 xs@309@01)
      (and
        (Set_in x2@322@01 xs@309@01)
        (=>
          (not (Set_in x2@322@01 ys@310@01))
          (and
            (not (Set_in x2@322@01 ys@310@01))
            (=>
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                  0))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                    0))
                (or
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))))
            (or
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                  0))
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                0))))
        (or (not (Set_in x2@322@01 ys@310@01)) (Set_in x2@322@01 ys@310@01))))
    (or (Set_in x2@322@01 xs@309@01) (not (Set_in x2@322@01 xs@309@01))))))
(assert (or
  (not
    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01)))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (not
    (=
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
      0))
  (and
    (not
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
        0))
    (=>
      (not
        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
      (and
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
        (=>
          (Set_in x2@322@01 xs@309@01)
          (and
            (Set_in x2@322@01 xs@309@01)
            (=>
              (not (Set_in x2@322@01 ys@310@01))
              (and
                (not (Set_in x2@322@01 ys@310@01))
                (=>
                  (not
                    (=
                      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                      0))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                        0))
                    (or
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))))
                (or
                  (not
                    (=
                      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                      0))
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                    0))))
            (or (not (Set_in x2@322@01 ys@310@01)) (Set_in x2@322@01 ys@310@01))))
        (or (Set_in x2@322@01 xs@309@01) (not (Set_in x2@322@01 xs@309@01)))))
    (or
      (not
        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01)))))
(assert (or
  (not
    (=
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
      0))
  (=
    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
    0)))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (not (Set_in x1@321@01 ys@310@01))
  (and
    (not (Set_in x1@321@01 ys@310@01))
    (=>
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
          0))
      (and
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
            0))
        (=>
          (not
            (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
          (and
            (not
              (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
            (=>
              (Set_in x2@322@01 xs@309@01)
              (and
                (Set_in x2@322@01 xs@309@01)
                (=>
                  (not (Set_in x2@322@01 ys@310@01))
                  (and
                    (not (Set_in x2@322@01 ys@310@01))
                    (=>
                      (not
                        (=
                          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                          0))
                      (and
                        (not
                          (=
                            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                            0))
                        (or
                          (not
                            (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
                          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))))
                    (or
                      (not
                        (=
                          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                          0))
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                        0))))
                (or
                  (not (Set_in x2@322@01 ys@310@01))
                  (Set_in x2@322@01 ys@310@01))))
            (or (Set_in x2@322@01 xs@309@01) (not (Set_in x2@322@01 xs@309@01)))))
        (or
          (not
            (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))))
    (or
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
          0))
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
        0)))))
(assert (or (not (Set_in x1@321@01 ys@310@01)) (Set_in x1@321@01 ys@310@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in x1@321@01 xs@309@01)
  (and
    (Set_in x1@321@01 xs@309@01)
    (=>
      (not (Set_in x1@321@01 ys@310@01))
      (and
        (not (Set_in x1@321@01 ys@310@01))
        (=>
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
              0))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                0))
            (=>
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
              (and
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
                (=>
                  (Set_in x2@322@01 xs@309@01)
                  (and
                    (Set_in x2@322@01 xs@309@01)
                    (=>
                      (not (Set_in x2@322@01 ys@310@01))
                      (and
                        (not (Set_in x2@322@01 ys@310@01))
                        (=>
                          (not
                            (=
                              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                              0))
                          (and
                            (not
                              (=
                                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                                0))
                            (or
                              (not
                                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
                              (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))))
                        (or
                          (not
                            (=
                              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                              0))
                          (=
                            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                            0))))
                    (or
                      (not (Set_in x2@322@01 ys@310@01))
                      (Set_in x2@322@01 ys@310@01))))
                (or
                  (Set_in x2@322@01 xs@309@01)
                  (not (Set_in x2@322@01 xs@309@01)))))
            (or
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
              (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))))
        (or
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
              0))
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
            0))))
    (or (not (Set_in x1@321@01 ys@310@01)) (Set_in x1@321@01 ys@310@01)))))
(assert (or (Set_in x1@321@01 xs@309@01) (not (Set_in x1@321@01 xs@309@01))))
(push) ; 4
; [then-branch: 62 | x1@321@01 in xs@309@01 && !(x1@321@01 in ys@310@01) && Lookup(f, First:($t@312@01), x1@321@01) != 0 && !(Lookup(g, First:(Second:($t@312@01)), x1@321@01) in xs@309@01) && x2@322@01 in xs@309@01 && !(x2@322@01 in ys@310@01) && Lookup(f, First:($t@312@01), x2@322@01) != 0 && !(Lookup(g, First:(Second:($t@312@01)), x2@322@01) in xs@309@01) && x1@321@01 != x2@322@01 | live]
; [else-branch: 62 | !(x1@321@01 in xs@309@01 && !(x1@321@01 in ys@310@01) && Lookup(f, First:($t@312@01), x1@321@01) != 0 && !(Lookup(g, First:(Second:($t@312@01)), x1@321@01) in xs@309@01) && x2@322@01 in xs@309@01 && !(x2@322@01 in ys@310@01) && Lookup(f, First:($t@312@01), x2@322@01) != 0 && !(Lookup(g, First:(Second:($t@312@01)), x2@322@01) in xs@309@01) && x1@321@01 != x2@322@01) | live]
(push) ; 5
; [then-branch: 62 | x1@321@01 in xs@309@01 && !(x1@321@01 in ys@310@01) && Lookup(f, First:($t@312@01), x1@321@01) != 0 && !(Lookup(g, First:(Second:($t@312@01)), x1@321@01) in xs@309@01) && x2@322@01 in xs@309@01 && !(x2@322@01 in ys@310@01) && Lookup(f, First:($t@312@01), x2@322@01) != 0 && !(Lookup(g, First:(Second:($t@312@01)), x2@322@01) in xs@309@01) && x1@321@01 != x2@322@01]
(assert (and
  (Set_in x1@321@01 xs@309@01)
  (and
    (not (Set_in x1@321@01 ys@310@01))
    (and
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
          0))
      (and
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
        (and
          (Set_in x2@322@01 xs@309@01)
          (and
            (not (Set_in x2@322@01 ys@310@01))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                  0))
              (and
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
                (not (= x1@321@01 x2@322@01)))))))))))
; [eval] x1.g != x2.g
(push) ; 6
(assert (not (and
  (img@320@01 x1@321@01)
  (and
    (Set_in (inv@319@01 x1@321@01) xs@309@01)
    (and
      (not (Set_in (inv@319@01 x1@321@01) ys@310@01))
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) (inv@319@01 x1@321@01))
          0)))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (and
  (img@320@01 x2@322@01)
  (and
    (Set_in (inv@319@01 x2@322@01) xs@309@01)
    (and
      (not (Set_in (inv@319@01 x2@322@01) ys@310@01))
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) (inv@319@01 x2@322@01))
          0)))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 62 | !(x1@321@01 in xs@309@01 && !(x1@321@01 in ys@310@01) && Lookup(f, First:($t@312@01), x1@321@01) != 0 && !(Lookup(g, First:(Second:($t@312@01)), x1@321@01) in xs@309@01) && x2@322@01 in xs@309@01 && !(x2@322@01 in ys@310@01) && Lookup(f, First:($t@312@01), x2@322@01) != 0 && !(Lookup(g, First:(Second:($t@312@01)), x2@322@01) in xs@309@01) && x1@321@01 != x2@322@01)]
(assert (not
  (and
    (Set_in x1@321@01 xs@309@01)
    (and
      (not (Set_in x1@321@01 ys@310@01))
      (and
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
            0))
        (and
          (not
            (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
          (and
            (Set_in x2@322@01 xs@309@01)
            (and
              (not (Set_in x2@322@01 ys@310@01))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                    0))
                (and
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
                  (not (= x1@321@01 x2@322@01))))))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (Set_in x1@321@01 xs@309@01)
    (and
      (not (Set_in x1@321@01 ys@310@01))
      (and
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
            0))
        (and
          (not
            (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
          (and
            (Set_in x2@322@01 xs@309@01)
            (and
              (not (Set_in x2@322@01 ys@310@01))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                    0))
                (and
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
                  (not (= x1@321@01 x2@322@01))))))))))
  (and
    (Set_in x1@321@01 xs@309@01)
    (not (Set_in x1@321@01 ys@310@01))
    (not
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
        0))
    (not
      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
    (Set_in x2@322@01 xs@309@01)
    (not (Set_in x2@322@01 ys@310@01))
    (not
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
        0))
    (not
      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
    (not (= x1@321@01 x2@322@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in x1@321@01 xs@309@01)
      (and
        (not (Set_in x1@321@01 ys@310@01))
        (and
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
              0))
          (and
            (not
              (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
            (and
              (Set_in x2@322@01 xs@309@01)
              (and
                (not (Set_in x2@322@01 ys@310@01))
                (and
                  (not
                    (=
                      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                      0))
                  (and
                    (not
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
                    (not (= x1@321@01 x2@322@01)))))))))))
  (and
    (Set_in x1@321@01 xs@309@01)
    (and
      (not (Set_in x1@321@01 ys@310@01))
      (and
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
            0))
        (and
          (not
            (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
          (and
            (Set_in x2@322@01 xs@309@01)
            (and
              (not (Set_in x2@322@01 ys@310@01))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                    0))
                (and
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
                  (not (= x1@321@01 x2@322@01))))))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x1@321@01 $Ref) (x2@322@01 $Ref)) (!
  (and
    (=>
      (Set_in x1@321@01 xs@309@01)
      (and
        (Set_in x1@321@01 xs@309@01)
        (=>
          (not (Set_in x1@321@01 ys@310@01))
          (and
            (not (Set_in x1@321@01 ys@310@01))
            (=>
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                  0))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                    0))
                (=>
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
                  (and
                    (not
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
                    (=>
                      (Set_in x2@322@01 xs@309@01)
                      (and
                        (Set_in x2@322@01 xs@309@01)
                        (=>
                          (not (Set_in x2@322@01 ys@310@01))
                          (and
                            (not (Set_in x2@322@01 ys@310@01))
                            (=>
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                                  0))
                              (and
                                (not
                                  (=
                                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                                    0))
                                (or
                                  (not
                                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
                                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))))
                            (or
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                                  0))
                              (=
                                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                                0))))
                        (or
                          (not (Set_in x2@322@01 ys@310@01))
                          (Set_in x2@322@01 ys@310@01))))
                    (or
                      (Set_in x2@322@01 xs@309@01)
                      (not (Set_in x2@322@01 xs@309@01)))))
                (or
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))))
            (or
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                  0))
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                0))))
        (or (not (Set_in x1@321@01 ys@310@01)) (Set_in x1@321@01 ys@310@01))))
    (or (Set_in x1@321@01 xs@309@01) (not (Set_in x1@321@01 xs@309@01)))
    (=>
      (and
        (Set_in x1@321@01 xs@309@01)
        (and
          (not (Set_in x1@321@01 ys@310@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
              (and
                (Set_in x2@322@01 xs@309@01)
                (and
                  (not (Set_in x2@322@01 ys@310@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
                      (not (= x1@321@01 x2@322@01))))))))))
      (and
        (Set_in x1@321@01 xs@309@01)
        (not (Set_in x1@321@01 ys@310@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
        (Set_in x2@322@01 xs@309@01)
        (not (Set_in x2@322@01 ys@310@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
        (not (= x1@321@01 x2@322@01))))
    (or
      (not
        (and
          (Set_in x1@321@01 xs@309@01)
          (and
            (not (Set_in x1@321@01 ys@310@01))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                  0))
              (and
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
                (and
                  (Set_in x2@322@01 xs@309@01)
                  (and
                    (not (Set_in x2@322@01 ys@310@01))
                    (and
                      (not
                        (=
                          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                          0))
                      (and
                        (not
                          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
                        (not (= x1@321@01 x2@322@01)))))))))))
      (and
        (Set_in x1@321@01 xs@309@01)
        (and
          (not (Set_in x1@321@01 ys@310@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
              (and
                (Set_in x2@322@01 xs@309@01)
                (and
                  (not (Set_in x2@322@01 ys@310@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
                      (not (= x1@321@01 x2@322@01))))))))))))
  :pattern ((Set_in x1@321@01 xs@309@01) (Set_in x2@322@01 xs@309@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/generalised_shape.vpr@119@7@121@92-aux|)))
(assert (forall ((x1@321@01 $Ref) (x2@322@01 $Ref)) (!
  (and
    (=>
      (Set_in x1@321@01 xs@309@01)
      (and
        (Set_in x1@321@01 xs@309@01)
        (=>
          (not (Set_in x1@321@01 ys@310@01))
          (and
            (not (Set_in x1@321@01 ys@310@01))
            (=>
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                  0))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                    0))
                (=>
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
                  (and
                    (not
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
                    (=>
                      (Set_in x2@322@01 xs@309@01)
                      (and
                        (Set_in x2@322@01 xs@309@01)
                        (=>
                          (not (Set_in x2@322@01 ys@310@01))
                          (and
                            (not (Set_in x2@322@01 ys@310@01))
                            (=>
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                                  0))
                              (and
                                (not
                                  (=
                                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                                    0))
                                (or
                                  (not
                                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
                                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))))
                            (or
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                                  0))
                              (=
                                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                                0))))
                        (or
                          (not (Set_in x2@322@01 ys@310@01))
                          (Set_in x2@322@01 ys@310@01))))
                    (or
                      (Set_in x2@322@01 xs@309@01)
                      (not (Set_in x2@322@01 xs@309@01)))))
                (or
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))))
            (or
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                  0))
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                0))))
        (or (not (Set_in x1@321@01 ys@310@01)) (Set_in x1@321@01 ys@310@01))))
    (or (Set_in x1@321@01 xs@309@01) (not (Set_in x1@321@01 xs@309@01)))
    (=>
      (and
        (Set_in x1@321@01 xs@309@01)
        (and
          (not (Set_in x1@321@01 ys@310@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
              (and
                (Set_in x2@322@01 xs@309@01)
                (and
                  (not (Set_in x2@322@01 ys@310@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
                      (not (= x1@321@01 x2@322@01))))))))))
      (and
        (Set_in x1@321@01 xs@309@01)
        (not (Set_in x1@321@01 ys@310@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
        (Set_in x2@322@01 xs@309@01)
        (not (Set_in x2@322@01 ys@310@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
        (not (= x1@321@01 x2@322@01))))
    (or
      (not
        (and
          (Set_in x1@321@01 xs@309@01)
          (and
            (not (Set_in x1@321@01 ys@310@01))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                  0))
              (and
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
                (and
                  (Set_in x2@322@01 xs@309@01)
                  (and
                    (not (Set_in x2@322@01 ys@310@01))
                    (and
                      (not
                        (=
                          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                          0))
                      (and
                        (not
                          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
                        (not (= x1@321@01 x2@322@01)))))))))))
      (and
        (Set_in x1@321@01 xs@309@01)
        (and
          (not (Set_in x1@321@01 ys@310@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
              (and
                (Set_in x2@322@01 xs@309@01)
                (and
                  (not (Set_in x2@322@01 ys@310@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
                      (not (= x1@321@01 x2@322@01))))))))))))
  :pattern ((Set_in x1@321@01 xs@309@01) (Set_in x2@322@01 ys@310@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/generalised_shape.vpr@119@7@121@92-aux|)))
(assert (forall ((x1@321@01 $Ref) (x2@322@01 $Ref)) (!
  (and
    (=>
      (Set_in x1@321@01 xs@309@01)
      (and
        (Set_in x1@321@01 xs@309@01)
        (=>
          (not (Set_in x1@321@01 ys@310@01))
          (and
            (not (Set_in x1@321@01 ys@310@01))
            (=>
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                  0))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                    0))
                (=>
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
                  (and
                    (not
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
                    (=>
                      (Set_in x2@322@01 xs@309@01)
                      (and
                        (Set_in x2@322@01 xs@309@01)
                        (=>
                          (not (Set_in x2@322@01 ys@310@01))
                          (and
                            (not (Set_in x2@322@01 ys@310@01))
                            (=>
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                                  0))
                              (and
                                (not
                                  (=
                                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                                    0))
                                (or
                                  (not
                                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
                                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))))
                            (or
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                                  0))
                              (=
                                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                                0))))
                        (or
                          (not (Set_in x2@322@01 ys@310@01))
                          (Set_in x2@322@01 ys@310@01))))
                    (or
                      (Set_in x2@322@01 xs@309@01)
                      (not (Set_in x2@322@01 xs@309@01)))))
                (or
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))))
            (or
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                  0))
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                0))))
        (or (not (Set_in x1@321@01 ys@310@01)) (Set_in x1@321@01 ys@310@01))))
    (or (Set_in x1@321@01 xs@309@01) (not (Set_in x1@321@01 xs@309@01)))
    (=>
      (and
        (Set_in x1@321@01 xs@309@01)
        (and
          (not (Set_in x1@321@01 ys@310@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
              (and
                (Set_in x2@322@01 xs@309@01)
                (and
                  (not (Set_in x2@322@01 ys@310@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
                      (not (= x1@321@01 x2@322@01))))))))))
      (and
        (Set_in x1@321@01 xs@309@01)
        (not (Set_in x1@321@01 ys@310@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
        (Set_in x2@322@01 xs@309@01)
        (not (Set_in x2@322@01 ys@310@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
        (not (= x1@321@01 x2@322@01))))
    (or
      (not
        (and
          (Set_in x1@321@01 xs@309@01)
          (and
            (not (Set_in x1@321@01 ys@310@01))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                  0))
              (and
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
                (and
                  (Set_in x2@322@01 xs@309@01)
                  (and
                    (not (Set_in x2@322@01 ys@310@01))
                    (and
                      (not
                        (=
                          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                          0))
                      (and
                        (not
                          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
                        (not (= x1@321@01 x2@322@01)))))))))))
      (and
        (Set_in x1@321@01 xs@309@01)
        (and
          (not (Set_in x1@321@01 ys@310@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
              (and
                (Set_in x2@322@01 xs@309@01)
                (and
                  (not (Set_in x2@322@01 ys@310@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
                      (not (= x1@321@01 x2@322@01))))))))))))
  :pattern ((Set_in x1@321@01 xs@309@01) (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/generalised_shape.vpr@119@7@121@92-aux|)))
(assert (forall ((x1@321@01 $Ref) (x2@322@01 $Ref)) (!
  (and
    (=>
      (Set_in x1@321@01 xs@309@01)
      (and
        (Set_in x1@321@01 xs@309@01)
        (=>
          (not (Set_in x1@321@01 ys@310@01))
          (and
            (not (Set_in x1@321@01 ys@310@01))
            (=>
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                  0))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                    0))
                (=>
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
                  (and
                    (not
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
                    (=>
                      (Set_in x2@322@01 xs@309@01)
                      (and
                        (Set_in x2@322@01 xs@309@01)
                        (=>
                          (not (Set_in x2@322@01 ys@310@01))
                          (and
                            (not (Set_in x2@322@01 ys@310@01))
                            (=>
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                                  0))
                              (and
                                (not
                                  (=
                                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                                    0))
                                (or
                                  (not
                                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
                                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))))
                            (or
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                                  0))
                              (=
                                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                                0))))
                        (or
                          (not (Set_in x2@322@01 ys@310@01))
                          (Set_in x2@322@01 ys@310@01))))
                    (or
                      (Set_in x2@322@01 xs@309@01)
                      (not (Set_in x2@322@01 xs@309@01)))))
                (or
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))))
            (or
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                  0))
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                0))))
        (or (not (Set_in x1@321@01 ys@310@01)) (Set_in x1@321@01 ys@310@01))))
    (or (Set_in x1@321@01 xs@309@01) (not (Set_in x1@321@01 xs@309@01)))
    (=>
      (and
        (Set_in x1@321@01 xs@309@01)
        (and
          (not (Set_in x1@321@01 ys@310@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
              (and
                (Set_in x2@322@01 xs@309@01)
                (and
                  (not (Set_in x2@322@01 ys@310@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
                      (not (= x1@321@01 x2@322@01))))))))))
      (and
        (Set_in x1@321@01 xs@309@01)
        (not (Set_in x1@321@01 ys@310@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
        (Set_in x2@322@01 xs@309@01)
        (not (Set_in x2@322@01 ys@310@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
        (not (= x1@321@01 x2@322@01))))
    (or
      (not
        (and
          (Set_in x1@321@01 xs@309@01)
          (and
            (not (Set_in x1@321@01 ys@310@01))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                  0))
              (and
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
                (and
                  (Set_in x2@322@01 xs@309@01)
                  (and
                    (not (Set_in x2@322@01 ys@310@01))
                    (and
                      (not
                        (=
                          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                          0))
                      (and
                        (not
                          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
                        (not (= x1@321@01 x2@322@01)))))))))))
      (and
        (Set_in x1@321@01 xs@309@01)
        (and
          (not (Set_in x1@321@01 ys@310@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
              (and
                (Set_in x2@322@01 xs@309@01)
                (and
                  (not (Set_in x2@322@01 ys@310@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
                      (not (= x1@321@01 x2@322@01))))))))))))
  :pattern ((Set_in x1@321@01 ys@310@01) (Set_in x2@322@01 xs@309@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/generalised_shape.vpr@119@7@121@92-aux|)))
(assert (forall ((x1@321@01 $Ref) (x2@322@01 $Ref)) (!
  (and
    (=>
      (Set_in x1@321@01 xs@309@01)
      (and
        (Set_in x1@321@01 xs@309@01)
        (=>
          (not (Set_in x1@321@01 ys@310@01))
          (and
            (not (Set_in x1@321@01 ys@310@01))
            (=>
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                  0))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                    0))
                (=>
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
                  (and
                    (not
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
                    (=>
                      (Set_in x2@322@01 xs@309@01)
                      (and
                        (Set_in x2@322@01 xs@309@01)
                        (=>
                          (not (Set_in x2@322@01 ys@310@01))
                          (and
                            (not (Set_in x2@322@01 ys@310@01))
                            (=>
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                                  0))
                              (and
                                (not
                                  (=
                                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                                    0))
                                (or
                                  (not
                                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
                                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))))
                            (or
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                                  0))
                              (=
                                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                                0))))
                        (or
                          (not (Set_in x2@322@01 ys@310@01))
                          (Set_in x2@322@01 ys@310@01))))
                    (or
                      (Set_in x2@322@01 xs@309@01)
                      (not (Set_in x2@322@01 xs@309@01)))))
                (or
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))))
            (or
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                  0))
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                0))))
        (or (not (Set_in x1@321@01 ys@310@01)) (Set_in x1@321@01 ys@310@01))))
    (or (Set_in x1@321@01 xs@309@01) (not (Set_in x1@321@01 xs@309@01)))
    (=>
      (and
        (Set_in x1@321@01 xs@309@01)
        (and
          (not (Set_in x1@321@01 ys@310@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
              (and
                (Set_in x2@322@01 xs@309@01)
                (and
                  (not (Set_in x2@322@01 ys@310@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
                      (not (= x1@321@01 x2@322@01))))))))))
      (and
        (Set_in x1@321@01 xs@309@01)
        (not (Set_in x1@321@01 ys@310@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
        (Set_in x2@322@01 xs@309@01)
        (not (Set_in x2@322@01 ys@310@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
        (not (= x1@321@01 x2@322@01))))
    (or
      (not
        (and
          (Set_in x1@321@01 xs@309@01)
          (and
            (not (Set_in x1@321@01 ys@310@01))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                  0))
              (and
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
                (and
                  (Set_in x2@322@01 xs@309@01)
                  (and
                    (not (Set_in x2@322@01 ys@310@01))
                    (and
                      (not
                        (=
                          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                          0))
                      (and
                        (not
                          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
                        (not (= x1@321@01 x2@322@01)))))))))))
      (and
        (Set_in x1@321@01 xs@309@01)
        (and
          (not (Set_in x1@321@01 ys@310@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
              (and
                (Set_in x2@322@01 xs@309@01)
                (and
                  (not (Set_in x2@322@01 ys@310@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
                      (not (= x1@321@01 x2@322@01))))))))))))
  :pattern ((Set_in x1@321@01 ys@310@01) (Set_in x2@322@01 ys@310@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/generalised_shape.vpr@119@7@121@92-aux|)))
(assert (forall ((x1@321@01 $Ref) (x2@322@01 $Ref)) (!
  (and
    (=>
      (Set_in x1@321@01 xs@309@01)
      (and
        (Set_in x1@321@01 xs@309@01)
        (=>
          (not (Set_in x1@321@01 ys@310@01))
          (and
            (not (Set_in x1@321@01 ys@310@01))
            (=>
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                  0))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                    0))
                (=>
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
                  (and
                    (not
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
                    (=>
                      (Set_in x2@322@01 xs@309@01)
                      (and
                        (Set_in x2@322@01 xs@309@01)
                        (=>
                          (not (Set_in x2@322@01 ys@310@01))
                          (and
                            (not (Set_in x2@322@01 ys@310@01))
                            (=>
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                                  0))
                              (and
                                (not
                                  (=
                                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                                    0))
                                (or
                                  (not
                                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
                                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))))
                            (or
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                                  0))
                              (=
                                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                                0))))
                        (or
                          (not (Set_in x2@322@01 ys@310@01))
                          (Set_in x2@322@01 ys@310@01))))
                    (or
                      (Set_in x2@322@01 xs@309@01)
                      (not (Set_in x2@322@01 xs@309@01)))))
                (or
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))))
            (or
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                  0))
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                0))))
        (or (not (Set_in x1@321@01 ys@310@01)) (Set_in x1@321@01 ys@310@01))))
    (or (Set_in x1@321@01 xs@309@01) (not (Set_in x1@321@01 xs@309@01)))
    (=>
      (and
        (Set_in x1@321@01 xs@309@01)
        (and
          (not (Set_in x1@321@01 ys@310@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
              (and
                (Set_in x2@322@01 xs@309@01)
                (and
                  (not (Set_in x2@322@01 ys@310@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
                      (not (= x1@321@01 x2@322@01))))))))))
      (and
        (Set_in x1@321@01 xs@309@01)
        (not (Set_in x1@321@01 ys@310@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
        (Set_in x2@322@01 xs@309@01)
        (not (Set_in x2@322@01 ys@310@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
        (not (= x1@321@01 x2@322@01))))
    (or
      (not
        (and
          (Set_in x1@321@01 xs@309@01)
          (and
            (not (Set_in x1@321@01 ys@310@01))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                  0))
              (and
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
                (and
                  (Set_in x2@322@01 xs@309@01)
                  (and
                    (not (Set_in x2@322@01 ys@310@01))
                    (and
                      (not
                        (=
                          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                          0))
                      (and
                        (not
                          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
                        (not (= x1@321@01 x2@322@01)))))))))))
      (and
        (Set_in x1@321@01 xs@309@01)
        (and
          (not (Set_in x1@321@01 ys@310@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
              (and
                (Set_in x2@322@01 xs@309@01)
                (and
                  (not (Set_in x2@322@01 ys@310@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
                      (not (= x1@321@01 x2@322@01))))))))))))
  :pattern ((Set_in x1@321@01 ys@310@01) (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/generalised_shape.vpr@119@7@121@92-aux|)))
(assert (forall ((x1@321@01 $Ref) (x2@322@01 $Ref)) (!
  (and
    (=>
      (Set_in x1@321@01 xs@309@01)
      (and
        (Set_in x1@321@01 xs@309@01)
        (=>
          (not (Set_in x1@321@01 ys@310@01))
          (and
            (not (Set_in x1@321@01 ys@310@01))
            (=>
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                  0))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                    0))
                (=>
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
                  (and
                    (not
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
                    (=>
                      (Set_in x2@322@01 xs@309@01)
                      (and
                        (Set_in x2@322@01 xs@309@01)
                        (=>
                          (not (Set_in x2@322@01 ys@310@01))
                          (and
                            (not (Set_in x2@322@01 ys@310@01))
                            (=>
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                                  0))
                              (and
                                (not
                                  (=
                                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                                    0))
                                (or
                                  (not
                                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
                                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))))
                            (or
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                                  0))
                              (=
                                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                                0))))
                        (or
                          (not (Set_in x2@322@01 ys@310@01))
                          (Set_in x2@322@01 ys@310@01))))
                    (or
                      (Set_in x2@322@01 xs@309@01)
                      (not (Set_in x2@322@01 xs@309@01)))))
                (or
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))))
            (or
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                  0))
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                0))))
        (or (not (Set_in x1@321@01 ys@310@01)) (Set_in x1@321@01 ys@310@01))))
    (or (Set_in x1@321@01 xs@309@01) (not (Set_in x1@321@01 xs@309@01)))
    (=>
      (and
        (Set_in x1@321@01 xs@309@01)
        (and
          (not (Set_in x1@321@01 ys@310@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
              (and
                (Set_in x2@322@01 xs@309@01)
                (and
                  (not (Set_in x2@322@01 ys@310@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
                      (not (= x1@321@01 x2@322@01))))))))))
      (and
        (Set_in x1@321@01 xs@309@01)
        (not (Set_in x1@321@01 ys@310@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
        (Set_in x2@322@01 xs@309@01)
        (not (Set_in x2@322@01 ys@310@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
        (not (= x1@321@01 x2@322@01))))
    (or
      (not
        (and
          (Set_in x1@321@01 xs@309@01)
          (and
            (not (Set_in x1@321@01 ys@310@01))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                  0))
              (and
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
                (and
                  (Set_in x2@322@01 xs@309@01)
                  (and
                    (not (Set_in x2@322@01 ys@310@01))
                    (and
                      (not
                        (=
                          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                          0))
                      (and
                        (not
                          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
                        (not (= x1@321@01 x2@322@01)))))))))))
      (and
        (Set_in x1@321@01 xs@309@01)
        (and
          (not (Set_in x1@321@01 ys@310@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
              (and
                (Set_in x2@322@01 xs@309@01)
                (and
                  (not (Set_in x2@322@01 ys@310@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
                      (not (= x1@321@01 x2@322@01))))))))))))
  :pattern ((Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01) (Set_in x2@322@01 xs@309@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/generalised_shape.vpr@119@7@121@92-aux|)))
(assert (forall ((x1@321@01 $Ref) (x2@322@01 $Ref)) (!
  (and
    (=>
      (Set_in x1@321@01 xs@309@01)
      (and
        (Set_in x1@321@01 xs@309@01)
        (=>
          (not (Set_in x1@321@01 ys@310@01))
          (and
            (not (Set_in x1@321@01 ys@310@01))
            (=>
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                  0))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                    0))
                (=>
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
                  (and
                    (not
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
                    (=>
                      (Set_in x2@322@01 xs@309@01)
                      (and
                        (Set_in x2@322@01 xs@309@01)
                        (=>
                          (not (Set_in x2@322@01 ys@310@01))
                          (and
                            (not (Set_in x2@322@01 ys@310@01))
                            (=>
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                                  0))
                              (and
                                (not
                                  (=
                                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                                    0))
                                (or
                                  (not
                                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
                                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))))
                            (or
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                                  0))
                              (=
                                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                                0))))
                        (or
                          (not (Set_in x2@322@01 ys@310@01))
                          (Set_in x2@322@01 ys@310@01))))
                    (or
                      (Set_in x2@322@01 xs@309@01)
                      (not (Set_in x2@322@01 xs@309@01)))))
                (or
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))))
            (or
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                  0))
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                0))))
        (or (not (Set_in x1@321@01 ys@310@01)) (Set_in x1@321@01 ys@310@01))))
    (or (Set_in x1@321@01 xs@309@01) (not (Set_in x1@321@01 xs@309@01)))
    (=>
      (and
        (Set_in x1@321@01 xs@309@01)
        (and
          (not (Set_in x1@321@01 ys@310@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
              (and
                (Set_in x2@322@01 xs@309@01)
                (and
                  (not (Set_in x2@322@01 ys@310@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
                      (not (= x1@321@01 x2@322@01))))))))))
      (and
        (Set_in x1@321@01 xs@309@01)
        (not (Set_in x1@321@01 ys@310@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
        (Set_in x2@322@01 xs@309@01)
        (not (Set_in x2@322@01 ys@310@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
        (not (= x1@321@01 x2@322@01))))
    (or
      (not
        (and
          (Set_in x1@321@01 xs@309@01)
          (and
            (not (Set_in x1@321@01 ys@310@01))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                  0))
              (and
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
                (and
                  (Set_in x2@322@01 xs@309@01)
                  (and
                    (not (Set_in x2@322@01 ys@310@01))
                    (and
                      (not
                        (=
                          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                          0))
                      (and
                        (not
                          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
                        (not (= x1@321@01 x2@322@01)))))))))))
      (and
        (Set_in x1@321@01 xs@309@01)
        (and
          (not (Set_in x1@321@01 ys@310@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
              (and
                (Set_in x2@322@01 xs@309@01)
                (and
                  (not (Set_in x2@322@01 ys@310@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
                      (not (= x1@321@01 x2@322@01))))))))))))
  :pattern ((Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01) (Set_in x2@322@01 ys@310@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/generalised_shape.vpr@119@7@121@92-aux|)))
(assert (forall ((x1@321@01 $Ref) (x2@322@01 $Ref)) (!
  (and
    (=>
      (Set_in x1@321@01 xs@309@01)
      (and
        (Set_in x1@321@01 xs@309@01)
        (=>
          (not (Set_in x1@321@01 ys@310@01))
          (and
            (not (Set_in x1@321@01 ys@310@01))
            (=>
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                  0))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                    0))
                (=>
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
                  (and
                    (not
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
                    (=>
                      (Set_in x2@322@01 xs@309@01)
                      (and
                        (Set_in x2@322@01 xs@309@01)
                        (=>
                          (not (Set_in x2@322@01 ys@310@01))
                          (and
                            (not (Set_in x2@322@01 ys@310@01))
                            (=>
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                                  0))
                              (and
                                (not
                                  (=
                                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                                    0))
                                (or
                                  (not
                                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
                                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))))
                            (or
                              (not
                                (=
                                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                                  0))
                              (=
                                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                                0))))
                        (or
                          (not (Set_in x2@322@01 ys@310@01))
                          (Set_in x2@322@01 ys@310@01))))
                    (or
                      (Set_in x2@322@01 xs@309@01)
                      (not (Set_in x2@322@01 xs@309@01)))))
                (or
                  (not
                    (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))))
            (or
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                  0))
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                0))))
        (or (not (Set_in x1@321@01 ys@310@01)) (Set_in x1@321@01 ys@310@01))))
    (or (Set_in x1@321@01 xs@309@01) (not (Set_in x1@321@01 xs@309@01)))
    (=>
      (and
        (Set_in x1@321@01 xs@309@01)
        (and
          (not (Set_in x1@321@01 ys@310@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
              (and
                (Set_in x2@322@01 xs@309@01)
                (and
                  (not (Set_in x2@322@01 ys@310@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
                      (not (= x1@321@01 x2@322@01))))))))))
      (and
        (Set_in x1@321@01 xs@309@01)
        (not (Set_in x1@321@01 ys@310@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
        (Set_in x2@322@01 xs@309@01)
        (not (Set_in x2@322@01 ys@310@01))
        (not
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
            0))
        (not
          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
        (not (= x1@321@01 x2@322@01))))
    (or
      (not
        (and
          (Set_in x1@321@01 xs@309@01)
          (and
            (not (Set_in x1@321@01 ys@310@01))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                  0))
              (and
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
                (and
                  (Set_in x2@322@01 xs@309@01)
                  (and
                    (not (Set_in x2@322@01 ys@310@01))
                    (and
                      (not
                        (=
                          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                          0))
                      (and
                        (not
                          (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
                        (not (= x1@321@01 x2@322@01)))))))))))
      (and
        (Set_in x1@321@01 xs@309@01)
        (and
          (not (Set_in x1@321@01 ys@310@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
                0))
            (and
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
              (and
                (Set_in x2@322@01 xs@309@01)
                (and
                  (not (Set_in x2@322@01 ys@310@01))
                  (and
                    (not
                      (=
                        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                        0))
                    (and
                      (not
                        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
                      (not (= x1@321@01 x2@322@01))))))))))))
  :pattern ((Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01) (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/generalised_shape.vpr@119@7@121@92-aux|)))
(assert (forall ((x1@321@01 $Ref) (x2@322@01 $Ref)) (!
  (=>
    (and
      (Set_in x1@321@01 xs@309@01)
      (and
        (not (Set_in x1@321@01 ys@310@01))
        (and
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@321@01)
              0))
          (and
            (not
              (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01))
            (and
              (Set_in x2@322@01 xs@309@01)
              (and
                (not (Set_in x2@322@01 ys@310@01))
                (and
                  (not
                    (=
                      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@322@01)
                      0))
                  (and
                    (not
                      (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
                    (not (= x1@321@01 x2@322@01))))))))))
    (not
      (=
        ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01)
        ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01))))
  :pattern ((Set_in x1@321@01 xs@309@01) (Set_in x2@322@01 xs@309@01))
  :pattern ((Set_in x1@321@01 xs@309@01) (Set_in x2@322@01 ys@310@01))
  :pattern ((Set_in x1@321@01 xs@309@01) (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
  :pattern ((Set_in x1@321@01 ys@310@01) (Set_in x2@322@01 xs@309@01))
  :pattern ((Set_in x1@321@01 ys@310@01) (Set_in x2@322@01 ys@310@01))
  :pattern ((Set_in x1@321@01 ys@310@01) (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
  :pattern ((Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01) (Set_in x2@322@01 xs@309@01))
  :pattern ((Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01) (Set_in x2@322@01 ys@310@01))
  :pattern ((Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@321@01) xs@309@01) (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@322@01) xs@309@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/sets/generalised_shape.vpr@119@7@121@92|)))
(declare-const x@323@01 $Ref)
(push) ; 3
; [eval] (x in xs) && (!((x in ys)) && (x.f != 0 && !((x.g in xs))))
; [eval] (x in xs)
(push) ; 4
; [then-branch: 63 | !(x@323@01 in xs@309@01) | live]
; [else-branch: 63 | x@323@01 in xs@309@01 | live]
(push) ; 5
; [then-branch: 63 | !(x@323@01 in xs@309@01)]
(assert (not (Set_in x@323@01 xs@309@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 63 | x@323@01 in xs@309@01]
(assert (Set_in x@323@01 xs@309@01))
; [eval] !((x in ys))
; [eval] (x in ys)
(push) ; 6
; [then-branch: 64 | x@323@01 in ys@310@01 | live]
; [else-branch: 64 | !(x@323@01 in ys@310@01) | live]
(push) ; 7
; [then-branch: 64 | x@323@01 in ys@310@01]
(assert (Set_in x@323@01 ys@310@01))
(pop) ; 7
(push) ; 7
; [else-branch: 64 | !(x@323@01 in ys@310@01)]
(assert (not (Set_in x@323@01 ys@310@01)))
; [eval] x.f != 0
(push) ; 8
(assert (not (and
  (img@317@01 x@323@01)
  (and
    (Set_in (inv@316@01 x@323@01) xs@309@01)
    (not (Set_in (inv@316@01 x@323@01) ys@310@01))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
; [then-branch: 65 | Lookup(f, First:($t@312@01), x@323@01) == 0 | live]
; [else-branch: 65 | Lookup(f, First:($t@312@01), x@323@01) != 0 | live]
(push) ; 9
; [then-branch: 65 | Lookup(f, First:($t@312@01), x@323@01) == 0]
(assert (=
  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x@323@01)
  0))
(pop) ; 9
(push) ; 9
; [else-branch: 65 | Lookup(f, First:($t@312@01), x@323@01) != 0]
(assert (not
  (=
    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x@323@01)
    0)))
; [eval] !((x.g in xs))
; [eval] (x.g in xs)
(push) ; 10
(assert (not (and
  (img@320@01 x@323@01)
  (and
    (Set_in (inv@319@01 x@323@01) xs@309@01)
    (and
      (not (Set_in (inv@319@01 x@323@01) ys@310@01))
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) (inv@319@01 x@323@01))
          0)))))))
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
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x@323@01)
      0))
  (=
    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x@323@01)
    0)))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (not (Set_in x@323@01 ys@310@01))
  (and
    (not (Set_in x@323@01 ys@310@01))
    (or
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x@323@01)
          0))
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x@323@01)
        0)))))
(assert (or (not (Set_in x@323@01 ys@310@01)) (Set_in x@323@01 ys@310@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in x@323@01 xs@309@01)
  (and
    (Set_in x@323@01 xs@309@01)
    (=>
      (not (Set_in x@323@01 ys@310@01))
      (and
        (not (Set_in x@323@01 ys@310@01))
        (or
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x@323@01)
              0))
          (=
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x@323@01)
            0))))
    (or (not (Set_in x@323@01 ys@310@01)) (Set_in x@323@01 ys@310@01)))))
(assert (or (Set_in x@323@01 xs@309@01) (not (Set_in x@323@01 xs@309@01))))
(assert (and
  (Set_in x@323@01 xs@309@01)
  (and
    (not (Set_in x@323@01 ys@310@01))
    (and
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x@323@01)
          0))
      (not
        (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x@323@01) xs@309@01))))))
(push) ; 4
(assert (not (and
  (img@320@01 x@323@01)
  (and
    (Set_in (inv@319@01 x@323@01) xs@309@01)
    (and
      (not (Set_in (inv@319@01 x@323@01) ys@310@01))
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) (inv@319@01 x@323@01))
          0)))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@324@01 ($Ref) $Ref)
(declare-fun img@325@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((x@323@01 $Ref)) (!
  (=>
    (and
      (Set_in x@323@01 xs@309@01)
      (and
        (not (Set_in x@323@01 ys@310@01))
        (and
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x@323@01)
              0))
          (not
            (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x@323@01) xs@309@01)))))
    (and
      (=>
        (Set_in x@323@01 xs@309@01)
        (and
          (Set_in x@323@01 xs@309@01)
          (=>
            (not (Set_in x@323@01 ys@310@01))
            (and
              (not (Set_in x@323@01 ys@310@01))
              (or
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x@323@01)
                    0))
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x@323@01)
                  0))))
          (or (not (Set_in x@323@01 ys@310@01)) (Set_in x@323@01 ys@310@01))))
      (or (Set_in x@323@01 xs@309@01) (not (Set_in x@323@01 xs@309@01)))))
  :pattern (($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x@323@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@323@01 $Ref) (x2@323@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in x1@323@01 xs@309@01)
        (and
          (not (Set_in x1@323@01 ys@310@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x1@323@01)
                0))
            (not
              (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@323@01) xs@309@01)))))
      (and
        (Set_in x2@323@01 xs@309@01)
        (and
          (not (Set_in x2@323@01 ys@310@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x2@323@01)
                0))
            (not
              (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@323@01) xs@309@01)))))
      (=
        ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x1@323@01)
        ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x2@323@01)))
    (= x1@323@01 x2@323@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@323@01 $Ref)) (!
  (=>
    (and
      (Set_in x@323@01 xs@309@01)
      (and
        (not (Set_in x@323@01 ys@310@01))
        (and
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x@323@01)
              0))
          (not
            (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x@323@01) xs@309@01)))))
    (and
      (=
        (inv@324@01 ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x@323@01))
        x@323@01)
      (img@325@01 ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x@323@01))))
  :pattern (($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x@323@01))
  :qid |quant-u-6010|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@325@01 r)
      (and
        (Set_in (inv@324@01 r) xs@309@01)
        (and
          (not (Set_in (inv@324@01 r) ys@310@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) (inv@324@01 r))
                0))
            (not
              (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) (inv@324@01 r)) xs@309@01))))))
    (=
      ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) (inv@324@01 r))
      r))
  :pattern ((inv@324@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@323@01 $Ref)) (!
  (=>
    (and
      (Set_in x@323@01 xs@309@01)
      (and
        (not (Set_in x@323@01 ys@310@01))
        (and
          (not
            (=
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) x@323@01)
              0))
          (not
            (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x@323@01) xs@309@01)))))
    (not
      (=
        ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x@323@01)
        $Ref.null)))
  :pattern (($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x@323@01))
  :qid |f-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (=
      ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x@323@01)
      x@315@01)
    (=
      (and
        (img@325@01 r)
        (and
          (Set_in (inv@324@01 r) xs@309@01)
          (and
            (not (Set_in (inv@324@01 r) ys@310@01))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) (inv@324@01 r))
                  0))
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) (inv@324@01 r)) xs@309@01))))))
      (and
        (img@317@01 r)
        (and
          (Set_in (inv@316@01 r) xs@309@01)
          (not (Set_in (inv@316@01 r) ys@310@01))))))
  
  :qid |quant-u-6011|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (P%trigger $t@312@01 xs@309@01 ys@310@01))
; [exec]
; inhale (x in xs)
(declare-const $t@326@01 $Snap)
(assert (= $t@326@01 $Snap.unit))
; [eval] (x in xs)
(assert (Set_in x@311@01 xs@309@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale !((x in ys))
(declare-const $t@327@01 $Snap)
(assert (= $t@327@01 $Snap.unit))
; [eval] !((x in ys))
; [eval] (x in ys)
(assert (not (Set_in x@311@01 ys@310@01)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale x != null
(declare-const $t@328@01 $Snap)
(assert (= $t@328@01 $Snap.unit))
; [eval] x != null
(assert (not (= x@311@01 $Ref.null)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; a := x.f
(declare-const sm@329@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@317@01 r)
      (and
        (Set_in (inv@316@01 r) xs@309@01)
        (not (Set_in (inv@316@01 r) ys@310@01))))
    (=
      ($FVF.lookup_f (as sm@329@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) r)))
  :pattern (($FVF.lookup_f (as sm@329@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) r))
  :qid |qp.fvfValDef66|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@325@01 r)
      (and
        (Set_in (inv@324@01 r) xs@309@01)
        (and
          (not (Set_in (inv@324@01 r) ys@310@01))
          (and
            (not
              (=
                ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) (inv@324@01 r))
                0))
            (not
              (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) (inv@324@01 r)) xs@309@01))))))
    (=
      ($FVF.lookup_f (as sm@329@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second $t@312@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@329@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second $t@312@01)))) r))
  :qid |qp.fvfValDef67|)))
(declare-const pm@330@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@330@01  $FPM) r)
    (+
      (ite
        (and
          (img@317@01 r)
          (and
            (Set_in (inv@316@01 r) xs@309@01)
            (not (Set_in (inv@316@01 r) ys@310@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@325@01 r)
          (and
            (Set_in (inv@324@01 r) xs@309@01)
            (and
              (not (Set_in (inv@324@01 r) ys@310@01))
              (and
                (not
                  (=
                    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) (inv@324@01 r))
                    0))
                (not
                  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) (inv@324@01 r)) xs@309@01))))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@330@01  $FPM) r))
  :qid |qp.resPrmSumDef68|)))
(set-option :timeout 0)
(push) ; 3
(assert (not (< $Perm.No ($FVF.perm_f (as pm@330@01  $FPM) x@311@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const a@331@01 Int)
(assert (= a@331@01 ($FVF.lookup_f (as sm@329@01  $FVF<f>) x@311@01)))
; [exec]
; inhale a != 0
(declare-const $t@332@01 $Snap)
(assert (= $t@332@01 $Snap.unit))
; [eval] a != 0
(assert (not (= a@331@01 0)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; b := x.g
(set-option :timeout 0)
(push) ; 3
(assert (not (and
  (img@320@01 x@311@01)
  (and
    (Set_in (inv@319@01 x@311@01) xs@309@01)
    (and
      (not (Set_in (inv@319@01 x@311@01) ys@310@01))
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) (inv@319@01 x@311@01))
          0)))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const b@333@01 $Ref)
(assert (=
  b@333@01
  ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x@311@01)))
; [exec]
; inhale !((x.g in xs))
(declare-const $t@334@01 $Snap)
(assert (= $t@334@01 $Snap.unit))
; [eval] !((x.g in xs))
; [eval] (x.g in xs)
(push) ; 3
(assert (not (and
  (img@320@01 x@311@01)
  (and
    (Set_in (inv@319@01 x@311@01) xs@309@01)
    (and
      (not (Set_in (inv@319@01 x@311@01) ys@310@01))
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) (inv@319@01 x@311@01))
          0)))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not
  (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x@311@01) xs@309@01)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale x.g != null
(declare-const $t@335@01 $Snap)
(assert (= $t@335@01 $Snap.unit))
; [eval] x.g != null
(set-option :timeout 0)
(push) ; 3
(assert (not (and
  (img@320@01 x@311@01)
  (and
    (Set_in (inv@319@01 x@311@01) xs@309@01)
    (and
      (not (Set_in (inv@319@01 x@311@01) ys@310@01))
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) (inv@319@01 x@311@01))
          0)))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not
  (=
    ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x@311@01)
    $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; a := x.g.f
(set-option :timeout 0)
(push) ; 3
(assert (not (and
  (img@320@01 x@311@01)
  (and
    (Set_in (inv@319@01 x@311@01) xs@309@01)
    (and
      (not (Set_in (inv@319@01 x@311@01) ys@310@01))
      (not
        (=
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) (inv@319@01 x@311@01))
          0)))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@317@01 r)
        (and
          (Set_in (inv@316@01 r) xs@309@01)
          (not (Set_in (inv@316@01 r) ys@310@01))))
      (=
        ($FVF.lookup_f (as sm@329@01  $FVF<f>) r)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) r)))
    :pattern (($FVF.lookup_f (as sm@329@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) r))
    :qid |qp.fvfValDef66|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@325@01 r)
        (and
          (Set_in (inv@324@01 r) xs@309@01)
          (and
            (not (Set_in (inv@324@01 r) ys@310@01))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) (inv@324@01 r))
                  0))
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) (inv@324@01 r)) xs@309@01))))))
      (=
        ($FVF.lookup_f (as sm@329@01  $FVF<f>) r)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second $t@312@01)))) r)))
    :pattern (($FVF.lookup_f (as sm@329@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second $t@312@01)))) r))
    :qid |qp.fvfValDef67|))))
(push) ; 3
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@317@01 ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x@311@01))
        (and
          (Set_in (inv@316@01 ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x@311@01)) xs@309@01)
          (not
            (Set_in (inv@316@01 ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x@311@01)) ys@310@01))))
      $Perm.Write
      $Perm.No)
    (ite
      (and
        (img@325@01 ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x@311@01))
        (and
          (Set_in (inv@324@01 ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x@311@01)) xs@309@01)
          (and
            (not
              (Set_in (inv@324@01 ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x@311@01)) ys@310@01))
            (and
              (not
                (=
                  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@312@01)) (inv@324@01 ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x@311@01)))
                  0))
              (not
                (Set_in ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) (inv@324@01 ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x@311@01))) xs@309@01))))))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const a@336@01 Int)
(assert (=
  a@336@01
  ($FVF.lookup_f (as sm@329@01  $FVF<f>) ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first ($Snap.second $t@312@01))) x@311@01))))
(pop) ; 2
(pop) ; 1
