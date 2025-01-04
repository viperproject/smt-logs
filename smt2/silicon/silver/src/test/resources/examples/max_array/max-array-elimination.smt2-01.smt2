(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-04 00:30:31
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
(declare-sort IArray 0)
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
(declare-fun $SortWrappers.IArrayTo$Snap (IArray) $Snap)
(declare-fun $SortWrappers.$SnapToIArray ($Snap) IArray)
(assert (forall ((x IArray)) (!
    (= x ($SortWrappers.$SnapToIArray($SortWrappers.IArrayTo$Snap x)))
    :pattern (($SortWrappers.IArrayTo$Snap x))
    :qid |$Snap.$SnapToIArrayTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.IArrayTo$Snap($SortWrappers.$SnapToIArray x)))
    :pattern (($SortWrappers.$SnapToIArray x))
    :qid |$Snap.IArrayTo$SnapToIArray|
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
(declare-fun loc<Ref> (IArray Int) $Ref)
(declare-fun len<Int> (IArray) Int)
(declare-fun first<IArray> ($Ref) IArray)
(declare-fun second<Int> ($Ref) Int)
; /field_value_functions_declarations.smt2 [val: Int]
(declare-fun $FVF.domain_val ($FVF<val>) Set<$Ref>)
(declare-fun $FVF.lookup_val ($FVF<val> $Ref) Int)
(declare-fun $FVF.after_val ($FVF<val> $FVF<val>) Bool)
(declare-fun $FVF.loc_val (Int $Ref) Bool)
(declare-fun $FVF.perm_val ($FPM $Ref) $Perm)
(declare-const $fvfTOP_val $FVF<val>)
; Declaring symbols related to program functions (from program analysis)
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
(assert (forall ((a IArray) (i Int)) (!
  (and (= (first<IArray> (loc<Ref> a i)) a) (= (second<Int> (loc<Ref> a i)) i))
  :pattern ((loc<Ref> a i))
  :qid |prog.all_diff|)))
(assert (forall ((a IArray)) (!
  (>= (len<Int> a) 0)
  :pattern ((len<Int> a))
  :qid |prog.len_nonneg|)))
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
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- max ----------
(declare-const a@0@01 IArray)
(declare-const x@1@01 Int)
(declare-const a@2@01 IArray)
(declare-const x@3@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const j@4@01 Int)
(push) ; 2
; [eval] 0 <= j && j < len(a)
; [eval] 0 <= j
(push) ; 3
; [then-branch: 0 | !(0 <= j@4@01) | live]
; [else-branch: 0 | 0 <= j@4@01 | live]
(push) ; 4
; [then-branch: 0 | !(0 <= j@4@01)]
(assert (not (<= 0 j@4@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 0 | 0 <= j@4@01]
(assert (<= 0 j@4@01))
; [eval] j < len(a)
; [eval] len(a)
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j@4@01) (not (<= 0 j@4@01))))
(assert (and (<= 0 j@4@01) (< j@4@01 (len<Int> a@2@01))))
; [eval] loc(a, j)
(pop) ; 2
(declare-const $t@5@01 $FVF<val>)
(declare-fun inv@6@01 ($Ref) Int)
(declare-fun img@7@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@4@01 Int)) (!
  (=>
    (and (<= 0 j@4@01) (< j@4@01 (len<Int> a@2@01)))
    (or (<= 0 j@4@01) (not (<= 0 j@4@01))))
  :pattern ((loc<Ref> a@2@01 j@4@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((j1@4@01 Int) (j2@4@01 Int)) (!
  (=>
    (and
      (and (<= 0 j1@4@01) (< j1@4@01 (len<Int> a@2@01)))
      (and (<= 0 j2@4@01) (< j2@4@01 (len<Int> a@2@01)))
      (= (loc<Ref> a@2@01 j1@4@01) (loc<Ref> a@2@01 j2@4@01)))
    (= j1@4@01 j2@4@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@4@01 Int)) (!
  (=>
    (and (<= 0 j@4@01) (< j@4@01 (len<Int> a@2@01)))
    (and
      (= (inv@6@01 (loc<Ref> a@2@01 j@4@01)) j@4@01)
      (img@7@01 (loc<Ref> a@2@01 j@4@01))))
  :pattern ((loc<Ref> a@2@01 j@4@01))
  :qid |quant-u-18574|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@7@01 r)
      (and (<= 0 (inv@6@01 r)) (< (inv@6@01 r) (len<Int> a@2@01))))
    (= (loc<Ref> a@2@01 (inv@6@01 r)) r))
  :pattern ((inv@6@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((j@4@01 Int)) (!
  (=>
    (and (<= 0 j@4@01) (< j@4@01 (len<Int> a@2@01)))
    (not (= (loc<Ref> a@2@01 j@4@01) $Ref.null)))
  :pattern ((loc<Ref> a@2@01 j@4@01))
  :qid |val-permImpliesNonNull|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@8@01 $Snap)
(assert (= $t@8@01 ($Snap.combine ($Snap.first $t@8@01) ($Snap.second $t@8@01))))
(declare-const j$0@9@01 Int)
(push) ; 3
; [eval] 0 <= j$0 && j$0 < len(a)
; [eval] 0 <= j$0
(push) ; 4
; [then-branch: 1 | !(0 <= j$0@9@01) | live]
; [else-branch: 1 | 0 <= j$0@9@01 | live]
(push) ; 5
; [then-branch: 1 | !(0 <= j$0@9@01)]
(assert (not (<= 0 j$0@9@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 1 | 0 <= j$0@9@01]
(assert (<= 0 j$0@9@01))
; [eval] j$0 < len(a)
; [eval] len(a)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j$0@9@01) (not (<= 0 j$0@9@01))))
(assert (and (<= 0 j$0@9@01) (< j$0@9@01 (len<Int> a@2@01))))
; [eval] loc(a, j$0)
(pop) ; 3
(declare-fun inv@10@01 ($Ref) Int)
(declare-fun img@11@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j$0@9@01 Int)) (!
  (=>
    (and (<= 0 j$0@9@01) (< j$0@9@01 (len<Int> a@2@01)))
    (or (<= 0 j$0@9@01) (not (<= 0 j$0@9@01))))
  :pattern ((loc<Ref> a@2@01 j$0@9@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j$01@9@01 Int) (j$02@9@01 Int)) (!
  (=>
    (and
      (and (<= 0 j$01@9@01) (< j$01@9@01 (len<Int> a@2@01)))
      (and (<= 0 j$02@9@01) (< j$02@9@01 (len<Int> a@2@01)))
      (= (loc<Ref> a@2@01 j$01@9@01) (loc<Ref> a@2@01 j$02@9@01)))
    (= j$01@9@01 j$02@9@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j$0@9@01 Int)) (!
  (=>
    (and (<= 0 j$0@9@01) (< j$0@9@01 (len<Int> a@2@01)))
    (and
      (= (inv@10@01 (loc<Ref> a@2@01 j$0@9@01)) j$0@9@01)
      (img@11@01 (loc<Ref> a@2@01 j$0@9@01))))
  :pattern ((loc<Ref> a@2@01 j$0@9@01))
  :qid |quant-u-18576|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@11@01 r)
      (and (<= 0 (inv@10@01 r)) (< (inv@10@01 r) (len<Int> a@2@01))))
    (= (loc<Ref> a@2@01 (inv@10@01 r)) r))
  :pattern ((inv@10@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((j$0@9@01 Int)) (!
  (=>
    (and (<= 0 j$0@9@01) (< j$0@9@01 (len<Int> a@2@01)))
    (not (= (loc<Ref> a@2@01 j$0@9@01) $Ref.null)))
  :pattern ((loc<Ref> a@2@01 j$0@9@01))
  :qid |val-permImpliesNonNull|)))
(assert (=
  ($Snap.second $t@8@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@8@01))
    ($Snap.second ($Snap.second $t@8@01)))))
(assert (= ($Snap.first ($Snap.second $t@8@01)) $Snap.unit))
; [eval] (forall j$1: Int :: { old(loc(a, j$1)) } 0 <= j$1 && j$1 < len(a) ==> loc(a, j$1).val == old(loc(a, j$1).val))
(declare-const j$1@12@01 Int)
(push) ; 3
; [eval] 0 <= j$1 && j$1 < len(a) ==> loc(a, j$1).val == old(loc(a, j$1).val)
; [eval] 0 <= j$1 && j$1 < len(a)
; [eval] 0 <= j$1
(push) ; 4
; [then-branch: 2 | !(0 <= j$1@12@01) | live]
; [else-branch: 2 | 0 <= j$1@12@01 | live]
(push) ; 5
; [then-branch: 2 | !(0 <= j$1@12@01)]
(assert (not (<= 0 j$1@12@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 2 | 0 <= j$1@12@01]
(assert (<= 0 j$1@12@01))
; [eval] j$1 < len(a)
; [eval] len(a)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j$1@12@01) (not (<= 0 j$1@12@01))))
(push) ; 4
; [then-branch: 3 | 0 <= j$1@12@01 && j$1@12@01 < len[Int](a@2@01) | live]
; [else-branch: 3 | !(0 <= j$1@12@01 && j$1@12@01 < len[Int](a@2@01)) | live]
(push) ; 5
; [then-branch: 3 | 0 <= j$1@12@01 && j$1@12@01 < len[Int](a@2@01)]
(assert (and (<= 0 j$1@12@01) (< j$1@12@01 (len<Int> a@2@01))))
; [eval] loc(a, j$1).val == old(loc(a, j$1).val)
; [eval] loc(a, j$1)
(push) ; 6
(assert (not (and
  (img@11@01 (loc<Ref> a@2@01 j$1@12@01))
  (and
    (<= 0 (inv@10@01 (loc<Ref> a@2@01 j$1@12@01)))
    (< (inv@10@01 (loc<Ref> a@2@01 j$1@12@01)) (len<Int> a@2@01))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] old(loc(a, j$1).val)
; [eval] loc(a, j$1)
(push) ; 6
(assert (not (and
  (img@7@01 (loc<Ref> a@2@01 j$1@12@01))
  (and
    (<= 0 (inv@6@01 (loc<Ref> a@2@01 j$1@12@01)))
    (< (inv@6@01 (loc<Ref> a@2@01 j$1@12@01)) (len<Int> a@2@01))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 3 | !(0 <= j$1@12@01 && j$1@12@01 < len[Int](a@2@01))]
(assert (not (and (<= 0 j$1@12@01) (< j$1@12@01 (len<Int> a@2@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (not (and (<= 0 j$1@12@01) (< j$1@12@01 (len<Int> a@2@01))))
  (and (<= 0 j$1@12@01) (< j$1@12@01 (len<Int> a@2@01)))))
; [eval] old(loc(a, j$1))
; [eval] loc(a, j$1)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j$1@12@01 Int)) (!
  (and
    (or (<= 0 j$1@12@01) (not (<= 0 j$1@12@01)))
    (or
      (not (and (<= 0 j$1@12@01) (< j$1@12@01 (len<Int> a@2@01))))
      (and (<= 0 j$1@12@01) (< j$1@12@01 (len<Int> a@2@01)))))
  :pattern ((loc<Ref> a@2@01 j$1@12@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@14@25@14@37-aux|)))
(assert (forall ((j$1@12@01 Int)) (!
  (=>
    (and (<= 0 j$1@12@01) (< j$1@12@01 (len<Int> a@2@01)))
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@8@01)) (loc<Ref> a@2@01 j$1@12@01))
      ($FVF.lookup_val $t@5@01 (loc<Ref> a@2@01 j$1@12@01))))
  :pattern ((loc<Ref> a@2@01 j$1@12@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@14@25@14@37|)))
(assert (=
  ($Snap.second ($Snap.second $t@8@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@8@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@8@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@8@01))) $Snap.unit))
; [eval] (len(a) == 0 ? x == -1 : 0 <= x && x < len(a))
; [eval] len(a) == 0
; [eval] len(a)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= (len<Int> a@2@01) 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (len<Int> a@2@01) 0)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 4 | len[Int](a@2@01) == 0 | live]
; [else-branch: 4 | len[Int](a@2@01) != 0 | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 4 | len[Int](a@2@01) == 0]
(assert (= (len<Int> a@2@01) 0))
; [eval] x == -1
; [eval] -1
(pop) ; 4
(push) ; 4
; [else-branch: 4 | len[Int](a@2@01) != 0]
(assert (not (= (len<Int> a@2@01) 0)))
; [eval] 0 <= x && x < len(a)
; [eval] 0 <= x
(push) ; 5
; [then-branch: 5 | !(0 <= x@3@01) | live]
; [else-branch: 5 | 0 <= x@3@01 | live]
(push) ; 6
; [then-branch: 5 | !(0 <= x@3@01)]
(assert (not (<= 0 x@3@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 5 | 0 <= x@3@01]
(assert (<= 0 x@3@01))
; [eval] x < len(a)
; [eval] len(a)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 x@3@01) (not (<= 0 x@3@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (not (= (len<Int> a@2@01) 0))
  (and (not (= (len<Int> a@2@01) 0)) (or (<= 0 x@3@01) (not (<= 0 x@3@01))))))
(assert (or (not (= (len<Int> a@2@01) 0)) (= (len<Int> a@2@01) 0)))
(assert (ite
  (= (len<Int> a@2@01) 0)
  (= x@3@01 (- 0 1))
  (and (<= 0 x@3@01) (< x@3@01 (len<Int> a@2@01)))))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@8@01))) $Snap.unit))
; [eval] (forall j$2: Int :: { loc(a, j$2) } 0 <= j$2 && j$2 < len(a) ==> loc(a, j$2).val <= loc(a, x).val)
(declare-const j$2@13@01 Int)
(push) ; 3
; [eval] 0 <= j$2 && j$2 < len(a) ==> loc(a, j$2).val <= loc(a, x).val
; [eval] 0 <= j$2 && j$2 < len(a)
; [eval] 0 <= j$2
(push) ; 4
; [then-branch: 6 | !(0 <= j$2@13@01) | live]
; [else-branch: 6 | 0 <= j$2@13@01 | live]
(push) ; 5
; [then-branch: 6 | !(0 <= j$2@13@01)]
(assert (not (<= 0 j$2@13@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 6 | 0 <= j$2@13@01]
(assert (<= 0 j$2@13@01))
; [eval] j$2 < len(a)
; [eval] len(a)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j$2@13@01) (not (<= 0 j$2@13@01))))
(push) ; 4
; [then-branch: 7 | 0 <= j$2@13@01 && j$2@13@01 < len[Int](a@2@01) | live]
; [else-branch: 7 | !(0 <= j$2@13@01 && j$2@13@01 < len[Int](a@2@01)) | live]
(push) ; 5
; [then-branch: 7 | 0 <= j$2@13@01 && j$2@13@01 < len[Int](a@2@01)]
(assert (and (<= 0 j$2@13@01) (< j$2@13@01 (len<Int> a@2@01))))
; [eval] loc(a, j$2).val <= loc(a, x).val
; [eval] loc(a, j$2)
(push) ; 6
(assert (not (and
  (img@11@01 (loc<Ref> a@2@01 j$2@13@01))
  (and
    (<= 0 (inv@10@01 (loc<Ref> a@2@01 j$2@13@01)))
    (< (inv@10@01 (loc<Ref> a@2@01 j$2@13@01)) (len<Int> a@2@01))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] loc(a, x)
(push) ; 6
(assert (not (and
  (img@11@01 (loc<Ref> a@2@01 x@3@01))
  (and
    (<= 0 (inv@10@01 (loc<Ref> a@2@01 x@3@01)))
    (< (inv@10@01 (loc<Ref> a@2@01 x@3@01)) (len<Int> a@2@01))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 7 | !(0 <= j$2@13@01 && j$2@13@01 < len[Int](a@2@01))]
(assert (not (and (<= 0 j$2@13@01) (< j$2@13@01 (len<Int> a@2@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (not (and (<= 0 j$2@13@01) (< j$2@13@01 (len<Int> a@2@01))))
  (and (<= 0 j$2@13@01) (< j$2@13@01 (len<Int> a@2@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j$2@13@01 Int)) (!
  (and
    (or (<= 0 j$2@13@01) (not (<= 0 j$2@13@01)))
    (or
      (not (and (<= 0 j$2@13@01) (< j$2@13@01 (len<Int> a@2@01))))
      (and (<= 0 j$2@13@01) (< j$2@13@01 (len<Int> a@2@01)))))
  :pattern ((loc<Ref> a@2@01 j$2@13@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@16@12@16@32-aux|)))
(assert (forall ((j$2@13@01 Int)) (!
  (=>
    (and (<= 0 j$2@13@01) (< j$2@13@01 (len<Int> a@2@01)))
    (<=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@8@01)) (loc<Ref> a@2@01 j$2@13@01))
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@8@01)) (loc<Ref> a@2@01 x@3@01))))
  :pattern ((loc<Ref> a@2@01 j$2@13@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@16@12@16@32|)))
(pop) ; 2
(push) ; 2
; [eval] len(a) == 0
; [eval] len(a)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= (len<Int> a@2@01) 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= (len<Int> a@2@01) 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 8 | len[Int](a@2@01) == 0 | live]
; [else-branch: 8 | len[Int](a@2@01) != 0 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 8 | len[Int](a@2@01) == 0]
(assert (= (len<Int> a@2@01) 0))
; [exec]
; x := -1
; [eval] -1
(declare-const j$0@14@01 Int)
(push) ; 4
; [eval] 0 <= j$0 && j$0 < len(a)
; [eval] 0 <= j$0
(push) ; 5
; [then-branch: 9 | !(0 <= j$0@14@01) | live]
; [else-branch: 9 | 0 <= j$0@14@01 | live]
(push) ; 6
; [then-branch: 9 | !(0 <= j$0@14@01)]
(assert (not (<= 0 j$0@14@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 9 | 0 <= j$0@14@01]
(assert (<= 0 j$0@14@01))
; [eval] j$0 < len(a)
; [eval] len(a)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j$0@14@01) (not (<= 0 j$0@14@01))))
(assert (and (<= 0 j$0@14@01) (< j$0@14@01 (len<Int> a@2@01))))
; [eval] loc(a, j$0)
(pop) ; 4
(declare-fun inv@15@01 ($Ref) Int)
(declare-fun img@16@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j$0@14@01 Int)) (!
  (=>
    (and (<= 0 j$0@14@01) (< j$0@14@01 (len<Int> a@2@01)))
    (or (<= 0 j$0@14@01) (not (<= 0 j$0@14@01))))
  :pattern ((loc<Ref> a@2@01 j$0@14@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((j$01@14@01 Int) (j$02@14@01 Int)) (!
  (=>
    (and
      (and (<= 0 j$01@14@01) (< j$01@14@01 (len<Int> a@2@01)))
      (and (<= 0 j$02@14@01) (< j$02@14@01 (len<Int> a@2@01)))
      (= (loc<Ref> a@2@01 j$01@14@01) (loc<Ref> a@2@01 j$02@14@01)))
    (= j$01@14@01 j$02@14@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j$0@14@01 Int)) (!
  (=>
    (and (<= 0 j$0@14@01) (< j$0@14@01 (len<Int> a@2@01)))
    (and
      (= (inv@15@01 (loc<Ref> a@2@01 j$0@14@01)) j$0@14@01)
      (img@16@01 (loc<Ref> a@2@01 j$0@14@01))))
  :pattern ((loc<Ref> a@2@01 j$0@14@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@16@01 r)
      (and (<= 0 (inv@15@01 r)) (< (inv@15@01 r) (len<Int> a@2@01))))
    (= (loc<Ref> a@2@01 (inv@15@01 r)) r))
  :pattern ((inv@15@01 r))
  :qid |val-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@17@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@15@01 r)) (< (inv@15@01 r) (len<Int> a@2@01)))
      (img@16@01 r)
      (= r (loc<Ref> a@2@01 (inv@15@01 r))))
    ($Perm.min
      (ite
        (and
          (img@7@01 r)
          (and (<= 0 (inv@6@01 r)) (< (inv@6@01 r) (len<Int> a@2@01))))
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
          (img@7@01 r)
          (and (<= 0 (inv@6@01 r)) (< (inv@6@01 r) (len<Int> a@2@01))))
        $Perm.Write
        $Perm.No)
      (pTaken@17@01 r))
    $Perm.No)
  
  :qid |quant-u-18579|))))
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
      (and (<= 0 (inv@15@01 r)) (< (inv@15@01 r) (len<Int> a@2@01)))
      (img@16@01 r)
      (= r (loc<Ref> a@2@01 (inv@15@01 r))))
    (= (- $Perm.Write (pTaken@17@01 r)) $Perm.No))
  
  :qid |quant-u-18580|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall j$1: Int :: { old(loc(a, j$1)) } 0 <= j$1 && j$1 < len(a) ==> loc(a, j$1).val == old(loc(a, j$1).val))
(declare-const j$1@18@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] 0 <= j$1 && j$1 < len(a) ==> loc(a, j$1).val == old(loc(a, j$1).val)
; [eval] 0 <= j$1 && j$1 < len(a)
; [eval] 0 <= j$1
(push) ; 5
; [then-branch: 10 | !(0 <= j$1@18@01) | live]
; [else-branch: 10 | 0 <= j$1@18@01 | live]
(push) ; 6
; [then-branch: 10 | !(0 <= j$1@18@01)]
(assert (not (<= 0 j$1@18@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 10 | 0 <= j$1@18@01]
(assert (<= 0 j$1@18@01))
; [eval] j$1 < len(a)
; [eval] len(a)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j$1@18@01) (not (<= 0 j$1@18@01))))
(push) ; 5
; [then-branch: 11 | 0 <= j$1@18@01 && j$1@18@01 < len[Int](a@2@01) | live]
; [else-branch: 11 | !(0 <= j$1@18@01 && j$1@18@01 < len[Int](a@2@01)) | live]
(push) ; 6
; [then-branch: 11 | 0 <= j$1@18@01 && j$1@18@01 < len[Int](a@2@01)]
(assert (and (<= 0 j$1@18@01) (< j$1@18@01 (len<Int> a@2@01))))
; [eval] loc(a, j$1).val == old(loc(a, j$1).val)
; [eval] loc(a, j$1)
(push) ; 7
(assert (not (and
  (img@7@01 (loc<Ref> a@2@01 j$1@18@01))
  (and
    (<= 0 (inv@6@01 (loc<Ref> a@2@01 j$1@18@01)))
    (< (inv@6@01 (loc<Ref> a@2@01 j$1@18@01)) (len<Int> a@2@01))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] old(loc(a, j$1).val)
; [eval] loc(a, j$1)
(push) ; 7
(assert (not (and
  (img@7@01 (loc<Ref> a@2@01 j$1@18@01))
  (and
    (<= 0 (inv@6@01 (loc<Ref> a@2@01 j$1@18@01)))
    (< (inv@6@01 (loc<Ref> a@2@01 j$1@18@01)) (len<Int> a@2@01))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 11 | !(0 <= j$1@18@01 && j$1@18@01 < len[Int](a@2@01))]
(assert (not (and (<= 0 j$1@18@01) (< j$1@18@01 (len<Int> a@2@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (not (and (<= 0 j$1@18@01) (< j$1@18@01 (len<Int> a@2@01))))
  (and (<= 0 j$1@18@01) (< j$1@18@01 (len<Int> a@2@01)))))
; [eval] old(loc(a, j$1))
; [eval] loc(a, j$1)
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j$1@18@01 Int)) (!
  (and
    (or (<= 0 j$1@18@01) (not (<= 0 j$1@18@01)))
    (or
      (not (and (<= 0 j$1@18@01) (< j$1@18@01 (len<Int> a@2@01))))
      (and (<= 0 j$1@18@01) (< j$1@18@01 (len<Int> a@2@01)))))
  :pattern ((loc<Ref> a@2@01 j$1@18@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@14@25@14@37-aux|)))
; [eval] (len(a) == 0 ? x == -1 : 0 <= x && x < len(a))
; [eval] len(a) == 0
; [eval] len(a)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= (len<Int> a@2@01) 0))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 12 | len[Int](a@2@01) == 0 | live]
; [else-branch: 12 | len[Int](a@2@01) != 0 | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 12 | len[Int](a@2@01) == 0]
; [eval] x == -1
; [eval] -1
(pop) ; 5
(pop) ; 4
; Joined path conditions
; [eval] (forall j$2: Int :: { loc(a, j$2) } 0 <= j$2 && j$2 < len(a) ==> loc(a, j$2).val <= loc(a, x).val)
(declare-const j$2@19@01 Int)
(push) ; 4
; [eval] 0 <= j$2 && j$2 < len(a) ==> loc(a, j$2).val <= loc(a, x).val
; [eval] 0 <= j$2 && j$2 < len(a)
; [eval] 0 <= j$2
(push) ; 5
; [then-branch: 13 | !(0 <= j$2@19@01) | live]
; [else-branch: 13 | 0 <= j$2@19@01 | live]
(push) ; 6
; [then-branch: 13 | !(0 <= j$2@19@01)]
(assert (not (<= 0 j$2@19@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 13 | 0 <= j$2@19@01]
(assert (<= 0 j$2@19@01))
; [eval] j$2 < len(a)
; [eval] len(a)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j$2@19@01) (not (<= 0 j$2@19@01))))
(push) ; 5
; [then-branch: 14 | 0 <= j$2@19@01 && j$2@19@01 < len[Int](a@2@01) | live]
; [else-branch: 14 | !(0 <= j$2@19@01 && j$2@19@01 < len[Int](a@2@01)) | live]
(push) ; 6
; [then-branch: 14 | 0 <= j$2@19@01 && j$2@19@01 < len[Int](a@2@01)]
(assert (and (<= 0 j$2@19@01) (< j$2@19@01 (len<Int> a@2@01))))
; [eval] loc(a, j$2).val <= loc(a, x).val
; [eval] loc(a, j$2)
(push) ; 7
(assert (not (and
  (img@7@01 (loc<Ref> a@2@01 j$2@19@01))
  (and
    (<= 0 (inv@6@01 (loc<Ref> a@2@01 j$2@19@01)))
    (< (inv@6@01 (loc<Ref> a@2@01 j$2@19@01)) (len<Int> a@2@01))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] loc(a, x)
(push) ; 7
(assert (not (and
  (img@7@01 (loc<Ref> a@2@01 (- 0 1)))
  (and
    (<= 0 (inv@6@01 (loc<Ref> a@2@01 (- 0 1))))
    (< (inv@6@01 (loc<Ref> a@2@01 (- 0 1))) (len<Int> a@2@01))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 14 | !(0 <= j$2@19@01 && j$2@19@01 < len[Int](a@2@01))]
(assert (not (and (<= 0 j$2@19@01) (< j$2@19@01 (len<Int> a@2@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (not (and (<= 0 j$2@19@01) (< j$2@19@01 (len<Int> a@2@01))))
  (and (<= 0 j$2@19@01) (< j$2@19@01 (len<Int> a@2@01)))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j$2@19@01 Int)) (!
  (and
    (or (<= 0 j$2@19@01) (not (<= 0 j$2@19@01)))
    (or
      (not (and (<= 0 j$2@19@01) (< j$2@19@01 (len<Int> a@2@01))))
      (and (<= 0 j$2@19@01) (< j$2@19@01 (len<Int> a@2@01)))))
  :pattern ((loc<Ref> a@2@01 j$2@19@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@16@12@16@32-aux|)))
(push) ; 4
(assert (not (forall ((j$2@19@01 Int)) (!
  (=>
    (and (<= 0 j$2@19@01) (< j$2@19@01 (len<Int> a@2@01)))
    (<=
      ($FVF.lookup_val $t@5@01 (loc<Ref> a@2@01 j$2@19@01))
      ($FVF.lookup_val $t@5@01 (loc<Ref> a@2@01 (- 0 1)))))
  :pattern ((loc<Ref> a@2@01 j$2@19@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@16@12@16@32|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((j$2@19@01 Int)) (!
  (=>
    (and (<= 0 j$2@19@01) (< j$2@19@01 (len<Int> a@2@01)))
    (<=
      ($FVF.lookup_val $t@5@01 (loc<Ref> a@2@01 j$2@19@01))
      ($FVF.lookup_val $t@5@01 (loc<Ref> a@2@01 (- 0 1)))))
  :pattern ((loc<Ref> a@2@01 j$2@19@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@16@12@16@32|)))
(pop) ; 3
(push) ; 3
; [else-branch: 8 | len[Int](a@2@01) != 0]
(assert (not (= (len<Int> a@2@01) 0)))
(pop) ; 3
; [eval] !(len(a) == 0)
; [eval] len(a) == 0
; [eval] len(a)
(push) ; 3
(set-option :timeout 10)
(assert (not (= (len<Int> a@2@01) 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= (len<Int> a@2@01) 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 15 | len[Int](a@2@01) != 0 | live]
; [else-branch: 15 | len[Int](a@2@01) == 0 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 15 | len[Int](a@2@01) != 0]
(assert (not (= (len<Int> a@2@01) 0)))
; [exec]
; var y: Int
(declare-const y@20@01 Int)
; [exec]
; x := 0
; [exec]
; y := len(a) - 1
; [eval] len(a) - 1
; [eval] len(a)
(declare-const y@21@01 Int)
(assert (= y@21@01 (- (len<Int> a@2@01) 1)))
(declare-const x@22@01 Int)
(declare-const y@23@01 Int)
(push) ; 4
; Loop head block: Check well-definedness of invariant
(declare-const $t@24@01 $Snap)
(assert (= $t@24@01 ($Snap.combine ($Snap.first $t@24@01) ($Snap.second $t@24@01))))
(declare-const j$3@25@01 Int)
(push) ; 5
; [eval] 0 <= j$3 && j$3 < len(a)
; [eval] 0 <= j$3
(push) ; 6
; [then-branch: 16 | !(0 <= j$3@25@01) | live]
; [else-branch: 16 | 0 <= j$3@25@01 | live]
(push) ; 7
; [then-branch: 16 | !(0 <= j$3@25@01)]
(assert (not (<= 0 j$3@25@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 16 | 0 <= j$3@25@01]
(assert (<= 0 j$3@25@01))
; [eval] j$3 < len(a)
; [eval] len(a)
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j$3@25@01) (not (<= 0 j$3@25@01))))
(assert (and (<= 0 j$3@25@01) (< j$3@25@01 (len<Int> a@2@01))))
; [eval] loc(a, j$3)
(pop) ; 5
(declare-fun inv@26@01 ($Ref) Int)
(declare-fun img@27@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j$3@25@01 Int)) (!
  (=>
    (and (<= 0 j$3@25@01) (< j$3@25@01 (len<Int> a@2@01)))
    (or (<= 0 j$3@25@01) (not (<= 0 j$3@25@01))))
  :pattern ((loc<Ref> a@2@01 j$3@25@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 5
(assert (not (forall ((j$31@25@01 Int) (j$32@25@01 Int)) (!
  (=>
    (and
      (and (<= 0 j$31@25@01) (< j$31@25@01 (len<Int> a@2@01)))
      (and (<= 0 j$32@25@01) (< j$32@25@01 (len<Int> a@2@01)))
      (= (loc<Ref> a@2@01 j$31@25@01) (loc<Ref> a@2@01 j$32@25@01)))
    (= j$31@25@01 j$32@25@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j$3@25@01 Int)) (!
  (=>
    (and (<= 0 j$3@25@01) (< j$3@25@01 (len<Int> a@2@01)))
    (and
      (= (inv@26@01 (loc<Ref> a@2@01 j$3@25@01)) j$3@25@01)
      (img@27@01 (loc<Ref> a@2@01 j$3@25@01))))
  :pattern ((loc<Ref> a@2@01 j$3@25@01))
  :qid |quant-u-18582|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@27@01 r)
      (and (<= 0 (inv@26@01 r)) (< (inv@26@01 r) (len<Int> a@2@01))))
    (= (loc<Ref> a@2@01 (inv@26@01 r)) r))
  :pattern ((inv@26@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((j$3@25@01 Int)) (!
  (=>
    (and (<= 0 j$3@25@01) (< j$3@25@01 (len<Int> a@2@01)))
    (not (= (loc<Ref> a@2@01 j$3@25@01) $Ref.null)))
  :pattern ((loc<Ref> a@2@01 j$3@25@01))
  :qid |val-permImpliesNonNull|)))
(assert (=
  ($Snap.second $t@24@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@24@01))
    ($Snap.second ($Snap.second $t@24@01)))))
(assert (= ($Snap.first ($Snap.second $t@24@01)) $Snap.unit))
; [eval] (forall j$4: Int :: { old(loc(a, j$4)) } 0 <= j$4 && j$4 < len(a) ==> loc(a, j$4).val == old(loc(a, j$4).val))
(declare-const j$4@28@01 Int)
(push) ; 5
; [eval] 0 <= j$4 && j$4 < len(a) ==> loc(a, j$4).val == old(loc(a, j$4).val)
; [eval] 0 <= j$4 && j$4 < len(a)
; [eval] 0 <= j$4
(push) ; 6
; [then-branch: 17 | !(0 <= j$4@28@01) | live]
; [else-branch: 17 | 0 <= j$4@28@01 | live]
(push) ; 7
; [then-branch: 17 | !(0 <= j$4@28@01)]
(assert (not (<= 0 j$4@28@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 17 | 0 <= j$4@28@01]
(assert (<= 0 j$4@28@01))
; [eval] j$4 < len(a)
; [eval] len(a)
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j$4@28@01) (not (<= 0 j$4@28@01))))
(push) ; 6
; [then-branch: 18 | 0 <= j$4@28@01 && j$4@28@01 < len[Int](a@2@01) | live]
; [else-branch: 18 | !(0 <= j$4@28@01 && j$4@28@01 < len[Int](a@2@01)) | live]
(push) ; 7
; [then-branch: 18 | 0 <= j$4@28@01 && j$4@28@01 < len[Int](a@2@01)]
(assert (and (<= 0 j$4@28@01) (< j$4@28@01 (len<Int> a@2@01))))
; [eval] loc(a, j$4).val == old(loc(a, j$4).val)
; [eval] loc(a, j$4)
(push) ; 8
(assert (not (and
  (img@27@01 (loc<Ref> a@2@01 j$4@28@01))
  (and
    (<= 0 (inv@26@01 (loc<Ref> a@2@01 j$4@28@01)))
    (< (inv@26@01 (loc<Ref> a@2@01 j$4@28@01)) (len<Int> a@2@01))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [eval] old(loc(a, j$4).val)
; [eval] loc(a, j$4)
(push) ; 8
(assert (not (and
  (img@7@01 (loc<Ref> a@2@01 j$4@28@01))
  (and
    (<= 0 (inv@6@01 (loc<Ref> a@2@01 j$4@28@01)))
    (< (inv@6@01 (loc<Ref> a@2@01 j$4@28@01)) (len<Int> a@2@01))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(push) ; 7
; [else-branch: 18 | !(0 <= j$4@28@01 && j$4@28@01 < len[Int](a@2@01))]
(assert (not (and (<= 0 j$4@28@01) (< j$4@28@01 (len<Int> a@2@01)))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (not (and (<= 0 j$4@28@01) (< j$4@28@01 (len<Int> a@2@01))))
  (and (<= 0 j$4@28@01) (< j$4@28@01 (len<Int> a@2@01)))))
; [eval] old(loc(a, j$4))
; [eval] loc(a, j$4)
(pop) ; 5
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j$4@28@01 Int)) (!
  (and
    (or (<= 0 j$4@28@01) (not (<= 0 j$4@28@01)))
    (or
      (not (and (<= 0 j$4@28@01) (< j$4@28@01 (len<Int> a@2@01))))
      (and (<= 0 j$4@28@01) (< j$4@28@01 (len<Int> a@2@01)))))
  :pattern ((loc<Ref> a@2@01 j$4@28@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@26@30@26@42-aux|)))
(assert (forall ((j$4@28@01 Int)) (!
  (=>
    (and (<= 0 j$4@28@01) (< j$4@28@01 (len<Int> a@2@01)))
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 j$4@28@01))
      ($FVF.lookup_val $t@5@01 (loc<Ref> a@2@01 j$4@28@01))))
  :pattern ((loc<Ref> a@2@01 j$4@28@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@26@30@26@42|)))
(assert (=
  ($Snap.second ($Snap.second $t@24@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@24@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@24@01))) $Snap.unit))
; [eval] 0 <= x
(assert (<= 0 x@22@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@24@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@24@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@24@01))))
  $Snap.unit))
; [eval] x <= y
(assert (<= x@22@01 y@23@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))
  $Snap.unit))
; [eval] y < len(a)
; [eval] len(a)
(assert (< y@23@01 (len<Int> a@2@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))
  $Snap.unit))
; [eval] (forall i: Int :: { loc(a, i) } 0 <= i && i < x || y < i && i < len(a) ==> loc(a, i).val < loc(a, x).val) || (forall i: Int :: { loc(a, i) } 0 <= i && i < x || y < i && i < len(a) ==> loc(a, i).val <= loc(a, y).val)
; [eval] (forall i: Int :: { loc(a, i) } 0 <= i && i < x || y < i && i < len(a) ==> loc(a, i).val < loc(a, x).val)
(declare-const i@29@01 Int)
(push) ; 5
; [eval] 0 <= i && i < x || y < i && i < len(a) ==> loc(a, i).val < loc(a, x).val
; [eval] 0 <= i && i < x || y < i && i < len(a)
; [eval] 0 <= i && i < x
; [eval] 0 <= i
(push) ; 6
; [then-branch: 19 | !(0 <= i@29@01) | live]
; [else-branch: 19 | 0 <= i@29@01 | live]
(push) ; 7
; [then-branch: 19 | !(0 <= i@29@01)]
(assert (not (<= 0 i@29@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 19 | 0 <= i@29@01]
(assert (<= 0 i@29@01))
; [eval] i < x
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@29@01) (not (<= 0 i@29@01))))
(push) ; 6
; [then-branch: 20 | 0 <= i@29@01 && i@29@01 < x@22@01 | live]
; [else-branch: 20 | !(0 <= i@29@01 && i@29@01 < x@22@01) | live]
(push) ; 7
; [then-branch: 20 | 0 <= i@29@01 && i@29@01 < x@22@01]
(assert (and (<= 0 i@29@01) (< i@29@01 x@22@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 20 | !(0 <= i@29@01 && i@29@01 < x@22@01)]
(assert (not (and (<= 0 i@29@01) (< i@29@01 x@22@01))))
; [eval] y < i && i < len(a)
; [eval] y < i
(push) ; 8
; [then-branch: 21 | !(y@23@01 < i@29@01) | live]
; [else-branch: 21 | y@23@01 < i@29@01 | live]
(push) ; 9
; [then-branch: 21 | !(y@23@01 < i@29@01)]
(assert (not (< y@23@01 i@29@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 21 | y@23@01 < i@29@01]
(assert (< y@23@01 i@29@01))
; [eval] i < len(a)
; [eval] len(a)
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or (< y@23@01 i@29@01) (not (< y@23@01 i@29@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (not (and (<= 0 i@29@01) (< i@29@01 x@22@01)))
  (and
    (not (and (<= 0 i@29@01) (< i@29@01 x@22@01)))
    (or (< y@23@01 i@29@01) (not (< y@23@01 i@29@01))))))
(assert (or
  (not (and (<= 0 i@29@01) (< i@29@01 x@22@01)))
  (and (<= 0 i@29@01) (< i@29@01 x@22@01))))
(push) ; 6
; [then-branch: 22 | 0 <= i@29@01 && i@29@01 < x@22@01 || y@23@01 < i@29@01 && i@29@01 < len[Int](a@2@01) | live]
; [else-branch: 22 | !(0 <= i@29@01 && i@29@01 < x@22@01 || y@23@01 < i@29@01 && i@29@01 < len[Int](a@2@01)) | live]
(push) ; 7
; [then-branch: 22 | 0 <= i@29@01 && i@29@01 < x@22@01 || y@23@01 < i@29@01 && i@29@01 < len[Int](a@2@01)]
(assert (or
  (and (<= 0 i@29@01) (< i@29@01 x@22@01))
  (and (< y@23@01 i@29@01) (< i@29@01 (len<Int> a@2@01)))))
; [eval] loc(a, i).val < loc(a, x).val
; [eval] loc(a, i)
(push) ; 8
(assert (not (and
  (img@27@01 (loc<Ref> a@2@01 i@29@01))
  (and
    (<= 0 (inv@26@01 (loc<Ref> a@2@01 i@29@01)))
    (< (inv@26@01 (loc<Ref> a@2@01 i@29@01)) (len<Int> a@2@01))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [eval] loc(a, x)
(push) ; 8
(assert (not (and
  (img@27@01 (loc<Ref> a@2@01 x@22@01))
  (and
    (<= 0 (inv@26@01 (loc<Ref> a@2@01 x@22@01)))
    (< (inv@26@01 (loc<Ref> a@2@01 x@22@01)) (len<Int> a@2@01))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(push) ; 7
; [else-branch: 22 | !(0 <= i@29@01 && i@29@01 < x@22@01 || y@23@01 < i@29@01 && i@29@01 < len[Int](a@2@01))]
(assert (not
  (or
    (and (<= 0 i@29@01) (< i@29@01 x@22@01))
    (and (< y@23@01 i@29@01) (< i@29@01 (len<Int> a@2@01))))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (or
      (and (<= 0 i@29@01) (< i@29@01 x@22@01))
      (and (< y@23@01 i@29@01) (< i@29@01 (len<Int> a@2@01)))))
  (or
    (and (<= 0 i@29@01) (< i@29@01 x@22@01))
    (and (< y@23@01 i@29@01) (< i@29@01 (len<Int> a@2@01))))))
(pop) ; 5
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@29@01 Int)) (!
  (and
    (or (<= 0 i@29@01) (not (<= 0 i@29@01)))
    (=>
      (not (and (<= 0 i@29@01) (< i@29@01 x@22@01)))
      (and
        (not (and (<= 0 i@29@01) (< i@29@01 x@22@01)))
        (or (< y@23@01 i@29@01) (not (< y@23@01 i@29@01)))))
    (or
      (not (and (<= 0 i@29@01) (< i@29@01 x@22@01)))
      (and (<= 0 i@29@01) (< i@29@01 x@22@01)))
    (or
      (not
        (or
          (and (<= 0 i@29@01) (< i@29@01 x@22@01))
          (and (< y@23@01 i@29@01) (< i@29@01 (len<Int> a@2@01)))))
      (or
        (and (<= 0 i@29@01) (< i@29@01 x@22@01))
        (and (< y@23@01 i@29@01) (< i@29@01 (len<Int> a@2@01))))))
  :pattern ((loc<Ref> a@2@01 i@29@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@28@21@30@56-aux|)))
(push) ; 5
; [then-branch: 23 | QA i@29@01 :: 0 <= i@29@01 && i@29@01 < x@22@01 || y@23@01 < i@29@01 && i@29@01 < len[Int](a@2@01) ==> Lookup(val, First:($t@24@01), loc[Ref](a@2@01, i@29@01)) < Lookup(val, First:($t@24@01), loc[Ref](a@2@01, x@22@01)) | live]
; [else-branch: 23 | !(QA i@29@01 :: 0 <= i@29@01 && i@29@01 < x@22@01 || y@23@01 < i@29@01 && i@29@01 < len[Int](a@2@01) ==> Lookup(val, First:($t@24@01), loc[Ref](a@2@01, i@29@01)) < Lookup(val, First:($t@24@01), loc[Ref](a@2@01, x@22@01))) | live]
(push) ; 6
; [then-branch: 23 | QA i@29@01 :: 0 <= i@29@01 && i@29@01 < x@22@01 || y@23@01 < i@29@01 && i@29@01 < len[Int](a@2@01) ==> Lookup(val, First:($t@24@01), loc[Ref](a@2@01, i@29@01)) < Lookup(val, First:($t@24@01), loc[Ref](a@2@01, x@22@01))]
(assert (forall ((i@29@01 Int)) (!
  (=>
    (or
      (and (<= 0 i@29@01) (< i@29@01 x@22@01))
      (and (< y@23@01 i@29@01) (< i@29@01 (len<Int> a@2@01))))
    (<
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 i@29@01))
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 x@22@01))))
  :pattern ((loc<Ref> a@2@01 i@29@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@28@21@30@56|)))
(pop) ; 6
(push) ; 6
; [else-branch: 23 | !(QA i@29@01 :: 0 <= i@29@01 && i@29@01 < x@22@01 || y@23@01 < i@29@01 && i@29@01 < len[Int](a@2@01) ==> Lookup(val, First:($t@24@01), loc[Ref](a@2@01, i@29@01)) < Lookup(val, First:($t@24@01), loc[Ref](a@2@01, x@22@01)))]
(assert (not
  (forall ((i@29@01 Int)) (!
    (=>
      (or
        (and (<= 0 i@29@01) (< i@29@01 x@22@01))
        (and (< y@23@01 i@29@01) (< i@29@01 (len<Int> a@2@01))))
      (<
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 i@29@01))
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 x@22@01))))
    :pattern ((loc<Ref> a@2@01 i@29@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@28@21@30@56|))))
; [eval] (forall i: Int :: { loc(a, i) } 0 <= i && i < x || y < i && i < len(a) ==> loc(a, i).val <= loc(a, y).val)
(declare-const i@30@01 Int)
(push) ; 7
; [eval] 0 <= i && i < x || y < i && i < len(a) ==> loc(a, i).val <= loc(a, y).val
; [eval] 0 <= i && i < x || y < i && i < len(a)
; [eval] 0 <= i && i < x
; [eval] 0 <= i
(push) ; 8
; [then-branch: 24 | !(0 <= i@30@01) | live]
; [else-branch: 24 | 0 <= i@30@01 | live]
(push) ; 9
; [then-branch: 24 | !(0 <= i@30@01)]
(assert (not (<= 0 i@30@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 24 | 0 <= i@30@01]
(assert (<= 0 i@30@01))
; [eval] i < x
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@30@01) (not (<= 0 i@30@01))))
(push) ; 8
; [then-branch: 25 | 0 <= i@30@01 && i@30@01 < x@22@01 | live]
; [else-branch: 25 | !(0 <= i@30@01 && i@30@01 < x@22@01) | live]
(push) ; 9
; [then-branch: 25 | 0 <= i@30@01 && i@30@01 < x@22@01]
(assert (and (<= 0 i@30@01) (< i@30@01 x@22@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 25 | !(0 <= i@30@01 && i@30@01 < x@22@01)]
(assert (not (and (<= 0 i@30@01) (< i@30@01 x@22@01))))
; [eval] y < i && i < len(a)
; [eval] y < i
(push) ; 10
; [then-branch: 26 | !(y@23@01 < i@30@01) | live]
; [else-branch: 26 | y@23@01 < i@30@01 | live]
(push) ; 11
; [then-branch: 26 | !(y@23@01 < i@30@01)]
(assert (not (< y@23@01 i@30@01)))
(pop) ; 11
(push) ; 11
; [else-branch: 26 | y@23@01 < i@30@01]
(assert (< y@23@01 i@30@01))
; [eval] i < len(a)
; [eval] len(a)
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (< y@23@01 i@30@01) (not (< y@23@01 i@30@01))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (not (and (<= 0 i@30@01) (< i@30@01 x@22@01)))
  (and
    (not (and (<= 0 i@30@01) (< i@30@01 x@22@01)))
    (or (< y@23@01 i@30@01) (not (< y@23@01 i@30@01))))))
(assert (or
  (not (and (<= 0 i@30@01) (< i@30@01 x@22@01)))
  (and (<= 0 i@30@01) (< i@30@01 x@22@01))))
(push) ; 8
; [then-branch: 27 | 0 <= i@30@01 && i@30@01 < x@22@01 || y@23@01 < i@30@01 && i@30@01 < len[Int](a@2@01) | live]
; [else-branch: 27 | !(0 <= i@30@01 && i@30@01 < x@22@01 || y@23@01 < i@30@01 && i@30@01 < len[Int](a@2@01)) | live]
(push) ; 9
; [then-branch: 27 | 0 <= i@30@01 && i@30@01 < x@22@01 || y@23@01 < i@30@01 && i@30@01 < len[Int](a@2@01)]
(assert (or
  (and (<= 0 i@30@01) (< i@30@01 x@22@01))
  (and (< y@23@01 i@30@01) (< i@30@01 (len<Int> a@2@01)))))
; [eval] loc(a, i).val <= loc(a, y).val
; [eval] loc(a, i)
(push) ; 10
(assert (not (and
  (img@27@01 (loc<Ref> a@2@01 i@30@01))
  (and
    (<= 0 (inv@26@01 (loc<Ref> a@2@01 i@30@01)))
    (< (inv@26@01 (loc<Ref> a@2@01 i@30@01)) (len<Int> a@2@01))))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [eval] loc(a, y)
(push) ; 10
(assert (not (and
  (img@27@01 (loc<Ref> a@2@01 y@23@01))
  (and
    (<= 0 (inv@26@01 (loc<Ref> a@2@01 y@23@01)))
    (< (inv@26@01 (loc<Ref> a@2@01 y@23@01)) (len<Int> a@2@01))))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
(push) ; 9
; [else-branch: 27 | !(0 <= i@30@01 && i@30@01 < x@22@01 || y@23@01 < i@30@01 && i@30@01 < len[Int](a@2@01))]
(assert (not
  (or
    (and (<= 0 i@30@01) (< i@30@01 x@22@01))
    (and (< y@23@01 i@30@01) (< i@30@01 (len<Int> a@2@01))))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (or
      (and (<= 0 i@30@01) (< i@30@01 x@22@01))
      (and (< y@23@01 i@30@01) (< i@30@01 (len<Int> a@2@01)))))
  (or
    (and (<= 0 i@30@01) (< i@30@01 x@22@01))
    (and (< y@23@01 i@30@01) (< i@30@01 (len<Int> a@2@01))))))
(pop) ; 7
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@30@01 Int)) (!
  (and
    (or (<= 0 i@30@01) (not (<= 0 i@30@01)))
    (=>
      (not (and (<= 0 i@30@01) (< i@30@01 x@22@01)))
      (and
        (not (and (<= 0 i@30@01) (< i@30@01 x@22@01)))
        (or (< y@23@01 i@30@01) (not (< y@23@01 i@30@01)))))
    (or
      (not (and (<= 0 i@30@01) (< i@30@01 x@22@01)))
      (and (<= 0 i@30@01) (< i@30@01 x@22@01)))
    (or
      (not
        (or
          (and (<= 0 i@30@01) (< i@30@01 x@22@01))
          (and (< y@23@01 i@30@01) (< i@30@01 (len<Int> a@2@01)))))
      (or
        (and (<= 0 i@30@01) (< i@30@01 x@22@01))
        (and (< y@23@01 i@30@01) (< i@30@01 (len<Int> a@2@01))))))
  :pattern ((loc<Ref> a@2@01 i@30@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@31@21@33@57-aux|)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (not
    (forall ((i@29@01 Int)) (!
      (=>
        (or
          (and (<= 0 i@29@01) (< i@29@01 x@22@01))
          (and (< y@23@01 i@29@01) (< i@29@01 (len<Int> a@2@01))))
        (<
          ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 i@29@01))
          ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 x@22@01))))
      :pattern ((loc<Ref> a@2@01 i@29@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@28@21@30@56|)))
  (and
    (not
      (forall ((i@29@01 Int)) (!
        (=>
          (or
            (and (<= 0 i@29@01) (< i@29@01 x@22@01))
            (and (< y@23@01 i@29@01) (< i@29@01 (len<Int> a@2@01))))
          (<
            ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 i@29@01))
            ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 x@22@01))))
        :pattern ((loc<Ref> a@2@01 i@29@01))
        :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@28@21@30@56|)))
    (forall ((i@30@01 Int)) (!
      (and
        (or (<= 0 i@30@01) (not (<= 0 i@30@01)))
        (=>
          (not (and (<= 0 i@30@01) (< i@30@01 x@22@01)))
          (and
            (not (and (<= 0 i@30@01) (< i@30@01 x@22@01)))
            (or (< y@23@01 i@30@01) (not (< y@23@01 i@30@01)))))
        (or
          (not (and (<= 0 i@30@01) (< i@30@01 x@22@01)))
          (and (<= 0 i@30@01) (< i@30@01 x@22@01)))
        (or
          (not
            (or
              (and (<= 0 i@30@01) (< i@30@01 x@22@01))
              (and (< y@23@01 i@30@01) (< i@30@01 (len<Int> a@2@01)))))
          (or
            (and (<= 0 i@30@01) (< i@30@01 x@22@01))
            (and (< y@23@01 i@30@01) (< i@30@01 (len<Int> a@2@01))))))
      :pattern ((loc<Ref> a@2@01 i@30@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@31@21@33@57-aux|)))))
(assert (or
  (not
    (forall ((i@29@01 Int)) (!
      (=>
        (or
          (and (<= 0 i@29@01) (< i@29@01 x@22@01))
          (and (< y@23@01 i@29@01) (< i@29@01 (len<Int> a@2@01))))
        (<
          ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 i@29@01))
          ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 x@22@01))))
      :pattern ((loc<Ref> a@2@01 i@29@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@28@21@30@56|)))
  (forall ((i@29@01 Int)) (!
    (=>
      (or
        (and (<= 0 i@29@01) (< i@29@01 x@22@01))
        (and (< y@23@01 i@29@01) (< i@29@01 (len<Int> a@2@01))))
      (<
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 i@29@01))
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 x@22@01))))
    :pattern ((loc<Ref> a@2@01 i@29@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@28@21@30@56|))))
(assert (or
  (forall ((i@29@01 Int)) (!
    (=>
      (or
        (and (<= 0 i@29@01) (< i@29@01 x@22@01))
        (and (< y@23@01 i@29@01) (< i@29@01 (len<Int> a@2@01))))
      (<
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 i@29@01))
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 x@22@01))))
    :pattern ((loc<Ref> a@2@01 i@29@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@28@21@30@56|))
  (forall ((i@30@01 Int)) (!
    (=>
      (or
        (and (<= 0 i@30@01) (< i@30@01 x@22@01))
        (and (< y@23@01 i@30@01) (< i@30@01 (len<Int> a@2@01))))
      (<=
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 i@30@01))
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 y@23@01))))
    :pattern ((loc<Ref> a@2@01 i@30@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@31@21@33@57|))))
(pop) ; 4
(push) ; 4
; Loop head block: Establish invariant
(declare-const j$3@31@01 Int)
(push) ; 5
; [eval] 0 <= j$3 && j$3 < len(a)
; [eval] 0 <= j$3
(push) ; 6
; [then-branch: 28 | !(0 <= j$3@31@01) | live]
; [else-branch: 28 | 0 <= j$3@31@01 | live]
(push) ; 7
; [then-branch: 28 | !(0 <= j$3@31@01)]
(assert (not (<= 0 j$3@31@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 28 | 0 <= j$3@31@01]
(assert (<= 0 j$3@31@01))
; [eval] j$3 < len(a)
; [eval] len(a)
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j$3@31@01) (not (<= 0 j$3@31@01))))
(assert (and (<= 0 j$3@31@01) (< j$3@31@01 (len<Int> a@2@01))))
; [eval] loc(a, j$3)
(pop) ; 5
(declare-fun inv@32@01 ($Ref) Int)
(declare-fun img@33@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j$3@31@01 Int)) (!
  (=>
    (and (<= 0 j$3@31@01) (< j$3@31@01 (len<Int> a@2@01)))
    (or (<= 0 j$3@31@01) (not (<= 0 j$3@31@01))))
  :pattern ((loc<Ref> a@2@01 j$3@31@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 5
(assert (not (forall ((j$31@31@01 Int) (j$32@31@01 Int)) (!
  (=>
    (and
      (and (<= 0 j$31@31@01) (< j$31@31@01 (len<Int> a@2@01)))
      (and (<= 0 j$32@31@01) (< j$32@31@01 (len<Int> a@2@01)))
      (= (loc<Ref> a@2@01 j$31@31@01) (loc<Ref> a@2@01 j$32@31@01)))
    (= j$31@31@01 j$32@31@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j$3@31@01 Int)) (!
  (=>
    (and (<= 0 j$3@31@01) (< j$3@31@01 (len<Int> a@2@01)))
    (and
      (= (inv@32@01 (loc<Ref> a@2@01 j$3@31@01)) j$3@31@01)
      (img@33@01 (loc<Ref> a@2@01 j$3@31@01))))
  :pattern ((loc<Ref> a@2@01 j$3@31@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@33@01 r)
      (and (<= 0 (inv@32@01 r)) (< (inv@32@01 r) (len<Int> a@2@01))))
    (= (loc<Ref> a@2@01 (inv@32@01 r)) r))
  :pattern ((inv@32@01 r))
  :qid |val-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@34@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@32@01 r)) (< (inv@32@01 r) (len<Int> a@2@01)))
      (img@33@01 r)
      (= r (loc<Ref> a@2@01 (inv@32@01 r))))
    ($Perm.min
      (ite
        (and
          (img@7@01 r)
          (and (<= 0 (inv@6@01 r)) (< (inv@6@01 r) (len<Int> a@2@01))))
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
          (img@7@01 r)
          (and (<= 0 (inv@6@01 r)) (< (inv@6@01 r) (len<Int> a@2@01))))
        $Perm.Write
        $Perm.No)
      (pTaken@34@01 r))
    $Perm.No)
  
  :qid |quant-u-18585|))))
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
      (and (<= 0 (inv@32@01 r)) (< (inv@32@01 r) (len<Int> a@2@01)))
      (img@33@01 r)
      (= r (loc<Ref> a@2@01 (inv@32@01 r))))
    (= (- $Perm.Write (pTaken@34@01 r)) $Perm.No))
  
  :qid |quant-u-18586|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall j$4: Int :: { old(loc(a, j$4)) } 0 <= j$4 && j$4 < len(a) ==> loc(a, j$4).val == old(loc(a, j$4).val))
(declare-const j$4@35@01 Int)
(set-option :timeout 0)
(push) ; 5
; [eval] 0 <= j$4 && j$4 < len(a) ==> loc(a, j$4).val == old(loc(a, j$4).val)
; [eval] 0 <= j$4 && j$4 < len(a)
; [eval] 0 <= j$4
(push) ; 6
; [then-branch: 29 | !(0 <= j$4@35@01) | live]
; [else-branch: 29 | 0 <= j$4@35@01 | live]
(push) ; 7
; [then-branch: 29 | !(0 <= j$4@35@01)]
(assert (not (<= 0 j$4@35@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 29 | 0 <= j$4@35@01]
(assert (<= 0 j$4@35@01))
; [eval] j$4 < len(a)
; [eval] len(a)
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j$4@35@01) (not (<= 0 j$4@35@01))))
(push) ; 6
; [then-branch: 30 | 0 <= j$4@35@01 && j$4@35@01 < len[Int](a@2@01) | live]
; [else-branch: 30 | !(0 <= j$4@35@01 && j$4@35@01 < len[Int](a@2@01)) | live]
(push) ; 7
; [then-branch: 30 | 0 <= j$4@35@01 && j$4@35@01 < len[Int](a@2@01)]
(assert (and (<= 0 j$4@35@01) (< j$4@35@01 (len<Int> a@2@01))))
; [eval] loc(a, j$4).val == old(loc(a, j$4).val)
; [eval] loc(a, j$4)
(push) ; 8
(assert (not (and
  (img@7@01 (loc<Ref> a@2@01 j$4@35@01))
  (and
    (<= 0 (inv@6@01 (loc<Ref> a@2@01 j$4@35@01)))
    (< (inv@6@01 (loc<Ref> a@2@01 j$4@35@01)) (len<Int> a@2@01))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [eval] old(loc(a, j$4).val)
; [eval] loc(a, j$4)
(push) ; 8
(assert (not (and
  (img@7@01 (loc<Ref> a@2@01 j$4@35@01))
  (and
    (<= 0 (inv@6@01 (loc<Ref> a@2@01 j$4@35@01)))
    (< (inv@6@01 (loc<Ref> a@2@01 j$4@35@01)) (len<Int> a@2@01))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(push) ; 7
; [else-branch: 30 | !(0 <= j$4@35@01 && j$4@35@01 < len[Int](a@2@01))]
(assert (not (and (<= 0 j$4@35@01) (< j$4@35@01 (len<Int> a@2@01)))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (not (and (<= 0 j$4@35@01) (< j$4@35@01 (len<Int> a@2@01))))
  (and (<= 0 j$4@35@01) (< j$4@35@01 (len<Int> a@2@01)))))
; [eval] old(loc(a, j$4))
; [eval] loc(a, j$4)
(pop) ; 5
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j$4@35@01 Int)) (!
  (and
    (or (<= 0 j$4@35@01) (not (<= 0 j$4@35@01)))
    (or
      (not (and (<= 0 j$4@35@01) (< j$4@35@01 (len<Int> a@2@01))))
      (and (<= 0 j$4@35@01) (< j$4@35@01 (len<Int> a@2@01)))))
  :pattern ((loc<Ref> a@2@01 j$4@35@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@26@30@26@42-aux|)))
; [eval] 0 <= x
; [eval] x <= y
(push) ; 5
(assert (not (<= 0 y@21@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 y@21@01))
; [eval] y < len(a)
; [eval] len(a)
(push) ; 5
(assert (not (< y@21@01 (len<Int> a@2@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (< y@21@01 (len<Int> a@2@01)))
; [eval] (forall i: Int :: { loc(a, i) } 0 <= i && i < x || y < i && i < len(a) ==> loc(a, i).val < loc(a, x).val) || (forall i: Int :: { loc(a, i) } 0 <= i && i < x || y < i && i < len(a) ==> loc(a, i).val <= loc(a, y).val)
; [eval] (forall i: Int :: { loc(a, i) } 0 <= i && i < x || y < i && i < len(a) ==> loc(a, i).val < loc(a, x).val)
(declare-const i@36@01 Int)
(push) ; 5
; [eval] 0 <= i && i < x || y < i && i < len(a) ==> loc(a, i).val < loc(a, x).val
; [eval] 0 <= i && i < x || y < i && i < len(a)
; [eval] 0 <= i && i < x
; [eval] 0 <= i
(push) ; 6
; [then-branch: 31 | !(0 <= i@36@01) | live]
; [else-branch: 31 | 0 <= i@36@01 | live]
(push) ; 7
; [then-branch: 31 | !(0 <= i@36@01)]
(assert (not (<= 0 i@36@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 31 | 0 <= i@36@01]
(assert (<= 0 i@36@01))
; [eval] i < x
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@36@01) (not (<= 0 i@36@01))))
(push) ; 6
; [then-branch: 32 | 0 <= i@36@01 && i@36@01 < 0 | live]
; [else-branch: 32 | !(0 <= i@36@01 && i@36@01 < 0) | live]
(push) ; 7
; [then-branch: 32 | 0 <= i@36@01 && i@36@01 < 0]
(assert (and (<= 0 i@36@01) (< i@36@01 0)))
(pop) ; 7
(push) ; 7
; [else-branch: 32 | !(0 <= i@36@01 && i@36@01 < 0)]
(assert (not (and (<= 0 i@36@01) (< i@36@01 0))))
; [eval] y < i && i < len(a)
; [eval] y < i
(push) ; 8
; [then-branch: 33 | !(y@21@01 < i@36@01) | live]
; [else-branch: 33 | y@21@01 < i@36@01 | live]
(push) ; 9
; [then-branch: 33 | !(y@21@01 < i@36@01)]
(assert (not (< y@21@01 i@36@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 33 | y@21@01 < i@36@01]
(assert (< y@21@01 i@36@01))
; [eval] i < len(a)
; [eval] len(a)
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or (< y@21@01 i@36@01) (not (< y@21@01 i@36@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (not (and (<= 0 i@36@01) (< i@36@01 0)))
  (and
    (not (and (<= 0 i@36@01) (< i@36@01 0)))
    (or (< y@21@01 i@36@01) (not (< y@21@01 i@36@01))))))
(assert (or (not (and (<= 0 i@36@01) (< i@36@01 0))) (and (<= 0 i@36@01) (< i@36@01 0))))
(push) ; 6
; [then-branch: 34 | 0 <= i@36@01 && i@36@01 < 0 || y@21@01 < i@36@01 && i@36@01 < len[Int](a@2@01) | live]
; [else-branch: 34 | !(0 <= i@36@01 && i@36@01 < 0 || y@21@01 < i@36@01 && i@36@01 < len[Int](a@2@01)) | live]
(push) ; 7
; [then-branch: 34 | 0 <= i@36@01 && i@36@01 < 0 || y@21@01 < i@36@01 && i@36@01 < len[Int](a@2@01)]
(assert (or
  (and (<= 0 i@36@01) (< i@36@01 0))
  (and (< y@21@01 i@36@01) (< i@36@01 (len<Int> a@2@01)))))
; [eval] loc(a, i).val < loc(a, x).val
; [eval] loc(a, i)
(push) ; 8
(assert (not (and
  (img@7@01 (loc<Ref> a@2@01 i@36@01))
  (and
    (<= 0 (inv@6@01 (loc<Ref> a@2@01 i@36@01)))
    (< (inv@6@01 (loc<Ref> a@2@01 i@36@01)) (len<Int> a@2@01))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [eval] loc(a, x)
(push) ; 8
(assert (not (and
  (img@7@01 (loc<Ref> a@2@01 0))
  (and
    (<= 0 (inv@6@01 (loc<Ref> a@2@01 0)))
    (< (inv@6@01 (loc<Ref> a@2@01 0)) (len<Int> a@2@01))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(push) ; 7
; [else-branch: 34 | !(0 <= i@36@01 && i@36@01 < 0 || y@21@01 < i@36@01 && i@36@01 < len[Int](a@2@01))]
(assert (not
  (or
    (and (<= 0 i@36@01) (< i@36@01 0))
    (and (< y@21@01 i@36@01) (< i@36@01 (len<Int> a@2@01))))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (or
      (and (<= 0 i@36@01) (< i@36@01 0))
      (and (< y@21@01 i@36@01) (< i@36@01 (len<Int> a@2@01)))))
  (or
    (and (<= 0 i@36@01) (< i@36@01 0))
    (and (< y@21@01 i@36@01) (< i@36@01 (len<Int> a@2@01))))))
(pop) ; 5
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@36@01 Int)) (!
  (and
    (or (<= 0 i@36@01) (not (<= 0 i@36@01)))
    (=>
      (not (and (<= 0 i@36@01) (< i@36@01 0)))
      (and
        (not (and (<= 0 i@36@01) (< i@36@01 0)))
        (or (< y@21@01 i@36@01) (not (< y@21@01 i@36@01)))))
    (or
      (not (and (<= 0 i@36@01) (< i@36@01 0)))
      (and (<= 0 i@36@01) (< i@36@01 0)))
    (or
      (not
        (or
          (and (<= 0 i@36@01) (< i@36@01 0))
          (and (< y@21@01 i@36@01) (< i@36@01 (len<Int> a@2@01)))))
      (or
        (and (<= 0 i@36@01) (< i@36@01 0))
        (and (< y@21@01 i@36@01) (< i@36@01 (len<Int> a@2@01))))))
  :pattern ((loc<Ref> a@2@01 i@36@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@28@21@30@56-aux|)))
(push) ; 5
; [then-branch: 35 | QA i@36@01 :: 0 <= i@36@01 && i@36@01 < 0 || y@21@01 < i@36@01 && i@36@01 < len[Int](a@2@01) ==> Lookup(val, $t@5@01, loc[Ref](a@2@01, i@36@01)) < Lookup(val, $t@5@01, loc[Ref](a@2@01, 0)) | live]
; [else-branch: 35 | !(QA i@36@01 :: 0 <= i@36@01 && i@36@01 < 0 || y@21@01 < i@36@01 && i@36@01 < len[Int](a@2@01) ==> Lookup(val, $t@5@01, loc[Ref](a@2@01, i@36@01)) < Lookup(val, $t@5@01, loc[Ref](a@2@01, 0))) | live]
(push) ; 6
; [then-branch: 35 | QA i@36@01 :: 0 <= i@36@01 && i@36@01 < 0 || y@21@01 < i@36@01 && i@36@01 < len[Int](a@2@01) ==> Lookup(val, $t@5@01, loc[Ref](a@2@01, i@36@01)) < Lookup(val, $t@5@01, loc[Ref](a@2@01, 0))]
(assert (forall ((i@36@01 Int)) (!
  (=>
    (or
      (and (<= 0 i@36@01) (< i@36@01 0))
      (and (< y@21@01 i@36@01) (< i@36@01 (len<Int> a@2@01))))
    (<
      ($FVF.lookup_val $t@5@01 (loc<Ref> a@2@01 i@36@01))
      ($FVF.lookup_val $t@5@01 (loc<Ref> a@2@01 0))))
  :pattern ((loc<Ref> a@2@01 i@36@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@28@21@30@56|)))
(pop) ; 6
(push) ; 6
; [else-branch: 35 | !(QA i@36@01 :: 0 <= i@36@01 && i@36@01 < 0 || y@21@01 < i@36@01 && i@36@01 < len[Int](a@2@01) ==> Lookup(val, $t@5@01, loc[Ref](a@2@01, i@36@01)) < Lookup(val, $t@5@01, loc[Ref](a@2@01, 0)))]
(assert (not
  (forall ((i@36@01 Int)) (!
    (=>
      (or
        (and (<= 0 i@36@01) (< i@36@01 0))
        (and (< y@21@01 i@36@01) (< i@36@01 (len<Int> a@2@01))))
      (<
        ($FVF.lookup_val $t@5@01 (loc<Ref> a@2@01 i@36@01))
        ($FVF.lookup_val $t@5@01 (loc<Ref> a@2@01 0))))
    :pattern ((loc<Ref> a@2@01 i@36@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@28@21@30@56|))))
; [eval] (forall i: Int :: { loc(a, i) } 0 <= i && i < x || y < i && i < len(a) ==> loc(a, i).val <= loc(a, y).val)
(declare-const i@37@01 Int)
(push) ; 7
; [eval] 0 <= i && i < x || y < i && i < len(a) ==> loc(a, i).val <= loc(a, y).val
; [eval] 0 <= i && i < x || y < i && i < len(a)
; [eval] 0 <= i && i < x
; [eval] 0 <= i
(push) ; 8
; [then-branch: 36 | !(0 <= i@37@01) | live]
; [else-branch: 36 | 0 <= i@37@01 | live]
(push) ; 9
; [then-branch: 36 | !(0 <= i@37@01)]
(assert (not (<= 0 i@37@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 36 | 0 <= i@37@01]
(assert (<= 0 i@37@01))
; [eval] i < x
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@37@01) (not (<= 0 i@37@01))))
(push) ; 8
; [then-branch: 37 | 0 <= i@37@01 && i@37@01 < 0 | live]
; [else-branch: 37 | !(0 <= i@37@01 && i@37@01 < 0) | live]
(push) ; 9
; [then-branch: 37 | 0 <= i@37@01 && i@37@01 < 0]
(assert (and (<= 0 i@37@01) (< i@37@01 0)))
(pop) ; 9
(push) ; 9
; [else-branch: 37 | !(0 <= i@37@01 && i@37@01 < 0)]
(assert (not (and (<= 0 i@37@01) (< i@37@01 0))))
; [eval] y < i && i < len(a)
; [eval] y < i
(push) ; 10
; [then-branch: 38 | !(y@21@01 < i@37@01) | live]
; [else-branch: 38 | y@21@01 < i@37@01 | live]
(push) ; 11
; [then-branch: 38 | !(y@21@01 < i@37@01)]
(assert (not (< y@21@01 i@37@01)))
(pop) ; 11
(push) ; 11
; [else-branch: 38 | y@21@01 < i@37@01]
(assert (< y@21@01 i@37@01))
; [eval] i < len(a)
; [eval] len(a)
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (< y@21@01 i@37@01) (not (< y@21@01 i@37@01))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (not (and (<= 0 i@37@01) (< i@37@01 0)))
  (and
    (not (and (<= 0 i@37@01) (< i@37@01 0)))
    (or (< y@21@01 i@37@01) (not (< y@21@01 i@37@01))))))
(assert (or (not (and (<= 0 i@37@01) (< i@37@01 0))) (and (<= 0 i@37@01) (< i@37@01 0))))
(push) ; 8
; [then-branch: 39 | 0 <= i@37@01 && i@37@01 < 0 || y@21@01 < i@37@01 && i@37@01 < len[Int](a@2@01) | live]
; [else-branch: 39 | !(0 <= i@37@01 && i@37@01 < 0 || y@21@01 < i@37@01 && i@37@01 < len[Int](a@2@01)) | live]
(push) ; 9
; [then-branch: 39 | 0 <= i@37@01 && i@37@01 < 0 || y@21@01 < i@37@01 && i@37@01 < len[Int](a@2@01)]
(assert (or
  (and (<= 0 i@37@01) (< i@37@01 0))
  (and (< y@21@01 i@37@01) (< i@37@01 (len<Int> a@2@01)))))
; [eval] loc(a, i).val <= loc(a, y).val
; [eval] loc(a, i)
(push) ; 10
(assert (not (and
  (img@7@01 (loc<Ref> a@2@01 i@37@01))
  (and
    (<= 0 (inv@6@01 (loc<Ref> a@2@01 i@37@01)))
    (< (inv@6@01 (loc<Ref> a@2@01 i@37@01)) (len<Int> a@2@01))))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [eval] loc(a, y)
(push) ; 10
(assert (not (and
  (img@7@01 (loc<Ref> a@2@01 y@21@01))
  (and
    (<= 0 (inv@6@01 (loc<Ref> a@2@01 y@21@01)))
    (< (inv@6@01 (loc<Ref> a@2@01 y@21@01)) (len<Int> a@2@01))))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
(push) ; 9
; [else-branch: 39 | !(0 <= i@37@01 && i@37@01 < 0 || y@21@01 < i@37@01 && i@37@01 < len[Int](a@2@01))]
(assert (not
  (or
    (and (<= 0 i@37@01) (< i@37@01 0))
    (and (< y@21@01 i@37@01) (< i@37@01 (len<Int> a@2@01))))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (or
      (and (<= 0 i@37@01) (< i@37@01 0))
      (and (< y@21@01 i@37@01) (< i@37@01 (len<Int> a@2@01)))))
  (or
    (and (<= 0 i@37@01) (< i@37@01 0))
    (and (< y@21@01 i@37@01) (< i@37@01 (len<Int> a@2@01))))))
(pop) ; 7
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@37@01 Int)) (!
  (and
    (or (<= 0 i@37@01) (not (<= 0 i@37@01)))
    (=>
      (not (and (<= 0 i@37@01) (< i@37@01 0)))
      (and
        (not (and (<= 0 i@37@01) (< i@37@01 0)))
        (or (< y@21@01 i@37@01) (not (< y@21@01 i@37@01)))))
    (or
      (not (and (<= 0 i@37@01) (< i@37@01 0)))
      (and (<= 0 i@37@01) (< i@37@01 0)))
    (or
      (not
        (or
          (and (<= 0 i@37@01) (< i@37@01 0))
          (and (< y@21@01 i@37@01) (< i@37@01 (len<Int> a@2@01)))))
      (or
        (and (<= 0 i@37@01) (< i@37@01 0))
        (and (< y@21@01 i@37@01) (< i@37@01 (len<Int> a@2@01))))))
  :pattern ((loc<Ref> a@2@01 i@37@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@31@21@33@57-aux|)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (not
    (forall ((i@36@01 Int)) (!
      (=>
        (or
          (and (<= 0 i@36@01) (< i@36@01 0))
          (and (< y@21@01 i@36@01) (< i@36@01 (len<Int> a@2@01))))
        (<
          ($FVF.lookup_val $t@5@01 (loc<Ref> a@2@01 i@36@01))
          ($FVF.lookup_val $t@5@01 (loc<Ref> a@2@01 0))))
      :pattern ((loc<Ref> a@2@01 i@36@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@28@21@30@56|)))
  (and
    (not
      (forall ((i@36@01 Int)) (!
        (=>
          (or
            (and (<= 0 i@36@01) (< i@36@01 0))
            (and (< y@21@01 i@36@01) (< i@36@01 (len<Int> a@2@01))))
          (<
            ($FVF.lookup_val $t@5@01 (loc<Ref> a@2@01 i@36@01))
            ($FVF.lookup_val $t@5@01 (loc<Ref> a@2@01 0))))
        :pattern ((loc<Ref> a@2@01 i@36@01))
        :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@28@21@30@56|)))
    (forall ((i@37@01 Int)) (!
      (and
        (or (<= 0 i@37@01) (not (<= 0 i@37@01)))
        (=>
          (not (and (<= 0 i@37@01) (< i@37@01 0)))
          (and
            (not (and (<= 0 i@37@01) (< i@37@01 0)))
            (or (< y@21@01 i@37@01) (not (< y@21@01 i@37@01)))))
        (or
          (not (and (<= 0 i@37@01) (< i@37@01 0)))
          (and (<= 0 i@37@01) (< i@37@01 0)))
        (or
          (not
            (or
              (and (<= 0 i@37@01) (< i@37@01 0))
              (and (< y@21@01 i@37@01) (< i@37@01 (len<Int> a@2@01)))))
          (or
            (and (<= 0 i@37@01) (< i@37@01 0))
            (and (< y@21@01 i@37@01) (< i@37@01 (len<Int> a@2@01))))))
      :pattern ((loc<Ref> a@2@01 i@37@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@31@21@33@57-aux|)))))
(assert (or
  (not
    (forall ((i@36@01 Int)) (!
      (=>
        (or
          (and (<= 0 i@36@01) (< i@36@01 0))
          (and (< y@21@01 i@36@01) (< i@36@01 (len<Int> a@2@01))))
        (<
          ($FVF.lookup_val $t@5@01 (loc<Ref> a@2@01 i@36@01))
          ($FVF.lookup_val $t@5@01 (loc<Ref> a@2@01 0))))
      :pattern ((loc<Ref> a@2@01 i@36@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@28@21@30@56|)))
  (forall ((i@36@01 Int)) (!
    (=>
      (or
        (and (<= 0 i@36@01) (< i@36@01 0))
        (and (< y@21@01 i@36@01) (< i@36@01 (len<Int> a@2@01))))
      (<
        ($FVF.lookup_val $t@5@01 (loc<Ref> a@2@01 i@36@01))
        ($FVF.lookup_val $t@5@01 (loc<Ref> a@2@01 0))))
    :pattern ((loc<Ref> a@2@01 i@36@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@28@21@30@56|))))
(push) ; 5
(assert (not (or
  (forall ((i@36@01 Int)) (!
    (=>
      (or
        (and (<= 0 i@36@01) (< i@36@01 0))
        (and (< y@21@01 i@36@01) (< i@36@01 (len<Int> a@2@01))))
      (<
        ($FVF.lookup_val $t@5@01 (loc<Ref> a@2@01 i@36@01))
        ($FVF.lookup_val $t@5@01 (loc<Ref> a@2@01 0))))
    :pattern ((loc<Ref> a@2@01 i@36@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@28@21@30@56|))
  (forall ((i@37@01 Int)) (!
    (=>
      (or
        (and (<= 0 i@37@01) (< i@37@01 0))
        (and (< y@21@01 i@37@01) (< i@37@01 (len<Int> a@2@01))))
      (<=
        ($FVF.lookup_val $t@5@01 (loc<Ref> a@2@01 i@37@01))
        ($FVF.lookup_val $t@5@01 (loc<Ref> a@2@01 y@21@01))))
    :pattern ((loc<Ref> a@2@01 i@37@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@31@21@33@57|)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (or
  (forall ((i@36@01 Int)) (!
    (=>
      (or
        (and (<= 0 i@36@01) (< i@36@01 0))
        (and (< y@21@01 i@36@01) (< i@36@01 (len<Int> a@2@01))))
      (<
        ($FVF.lookup_val $t@5@01 (loc<Ref> a@2@01 i@36@01))
        ($FVF.lookup_val $t@5@01 (loc<Ref> a@2@01 0))))
    :pattern ((loc<Ref> a@2@01 i@36@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@28@21@30@56|))
  (forall ((i@37@01 Int)) (!
    (=>
      (or
        (and (<= 0 i@37@01) (< i@37@01 0))
        (and (< y@21@01 i@37@01) (< i@37@01 (len<Int> a@2@01))))
      (<=
        ($FVF.lookup_val $t@5@01 (loc<Ref> a@2@01 i@37@01))
        ($FVF.lookup_val $t@5@01 (loc<Ref> a@2@01 y@21@01))))
    :pattern ((loc<Ref> a@2@01 i@37@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@31@21@33@57|))))
; Loop head block: Execute statements of loop head block (in invariant state)
(push) ; 5
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@27@01 r)
      (and (<= 0 (inv@26@01 r)) (< (inv@26@01 r) (len<Int> a@2@01))))
    (= (loc<Ref> a@2@01 (inv@26@01 r)) r))
  :pattern ((inv@26@01 r))
  :qid |val-fctOfInv|)))
(assert (forall ((j$3@25@01 Int)) (!
  (=>
    (and (<= 0 j$3@25@01) (< j$3@25@01 (len<Int> a@2@01)))
    (and
      (= (inv@26@01 (loc<Ref> a@2@01 j$3@25@01)) j$3@25@01)
      (img@27@01 (loc<Ref> a@2@01 j$3@25@01))))
  :pattern ((loc<Ref> a@2@01 j$3@25@01))
  :qid |quant-u-18582|)))
(assert (forall ((j$3@25@01 Int)) (!
  (=>
    (and (<= 0 j$3@25@01) (< j$3@25@01 (len<Int> a@2@01)))
    (not (= (loc<Ref> a@2@01 j$3@25@01) $Ref.null)))
  :pattern ((loc<Ref> a@2@01 j$3@25@01))
  :qid |val-permImpliesNonNull|)))
(assert (=
  ($Snap.second $t@24@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@24@01))
    ($Snap.second ($Snap.second $t@24@01)))))
(assert (= ($Snap.first ($Snap.second $t@24@01)) $Snap.unit))
(assert (forall ((j$4@28@01 Int)) (!
  (and
    (or (<= 0 j$4@28@01) (not (<= 0 j$4@28@01)))
    (or
      (not (and (<= 0 j$4@28@01) (< j$4@28@01 (len<Int> a@2@01))))
      (and (<= 0 j$4@28@01) (< j$4@28@01 (len<Int> a@2@01)))))
  :pattern ((loc<Ref> a@2@01 j$4@28@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@26@30@26@42-aux|)))
(assert (forall ((j$4@28@01 Int)) (!
  (=>
    (and (<= 0 j$4@28@01) (< j$4@28@01 (len<Int> a@2@01)))
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 j$4@28@01))
      ($FVF.lookup_val $t@5@01 (loc<Ref> a@2@01 j$4@28@01))))
  :pattern ((loc<Ref> a@2@01 j$4@28@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@26@30@26@42|)))
(assert (=
  ($Snap.second ($Snap.second $t@24@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@24@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@24@01))) $Snap.unit))
(assert (<= 0 x@22@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@24@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@24@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@24@01))))
  $Snap.unit))
(assert (<= x@22@01 y@23@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))
  $Snap.unit))
(assert (< y@23@01 (len<Int> a@2@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))
  $Snap.unit))
(assert (forall ((i@29@01 Int)) (!
  (and
    (or (<= 0 i@29@01) (not (<= 0 i@29@01)))
    (=>
      (not (and (<= 0 i@29@01) (< i@29@01 x@22@01)))
      (and
        (not (and (<= 0 i@29@01) (< i@29@01 x@22@01)))
        (or (< y@23@01 i@29@01) (not (< y@23@01 i@29@01)))))
    (or
      (not (and (<= 0 i@29@01) (< i@29@01 x@22@01)))
      (and (<= 0 i@29@01) (< i@29@01 x@22@01)))
    (or
      (not
        (or
          (and (<= 0 i@29@01) (< i@29@01 x@22@01))
          (and (< y@23@01 i@29@01) (< i@29@01 (len<Int> a@2@01)))))
      (or
        (and (<= 0 i@29@01) (< i@29@01 x@22@01))
        (and (< y@23@01 i@29@01) (< i@29@01 (len<Int> a@2@01))))))
  :pattern ((loc<Ref> a@2@01 i@29@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@28@21@30@56-aux|)))
(assert (=>
  (not
    (forall ((i@29@01 Int)) (!
      (=>
        (or
          (and (<= 0 i@29@01) (< i@29@01 x@22@01))
          (and (< y@23@01 i@29@01) (< i@29@01 (len<Int> a@2@01))))
        (<
          ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 i@29@01))
          ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 x@22@01))))
      :pattern ((loc<Ref> a@2@01 i@29@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@28@21@30@56|)))
  (and
    (not
      (forall ((i@29@01 Int)) (!
        (=>
          (or
            (and (<= 0 i@29@01) (< i@29@01 x@22@01))
            (and (< y@23@01 i@29@01) (< i@29@01 (len<Int> a@2@01))))
          (<
            ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 i@29@01))
            ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 x@22@01))))
        :pattern ((loc<Ref> a@2@01 i@29@01))
        :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@28@21@30@56|)))
    (forall ((i@30@01 Int)) (!
      (and
        (or (<= 0 i@30@01) (not (<= 0 i@30@01)))
        (=>
          (not (and (<= 0 i@30@01) (< i@30@01 x@22@01)))
          (and
            (not (and (<= 0 i@30@01) (< i@30@01 x@22@01)))
            (or (< y@23@01 i@30@01) (not (< y@23@01 i@30@01)))))
        (or
          (not (and (<= 0 i@30@01) (< i@30@01 x@22@01)))
          (and (<= 0 i@30@01) (< i@30@01 x@22@01)))
        (or
          (not
            (or
              (and (<= 0 i@30@01) (< i@30@01 x@22@01))
              (and (< y@23@01 i@30@01) (< i@30@01 (len<Int> a@2@01)))))
          (or
            (and (<= 0 i@30@01) (< i@30@01 x@22@01))
            (and (< y@23@01 i@30@01) (< i@30@01 (len<Int> a@2@01))))))
      :pattern ((loc<Ref> a@2@01 i@30@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@31@21@33@57-aux|)))))
(assert (or
  (not
    (forall ((i@29@01 Int)) (!
      (=>
        (or
          (and (<= 0 i@29@01) (< i@29@01 x@22@01))
          (and (< y@23@01 i@29@01) (< i@29@01 (len<Int> a@2@01))))
        (<
          ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 i@29@01))
          ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 x@22@01))))
      :pattern ((loc<Ref> a@2@01 i@29@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@28@21@30@56|)))
  (forall ((i@29@01 Int)) (!
    (=>
      (or
        (and (<= 0 i@29@01) (< i@29@01 x@22@01))
        (and (< y@23@01 i@29@01) (< i@29@01 (len<Int> a@2@01))))
      (<
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 i@29@01))
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 x@22@01))))
    :pattern ((loc<Ref> a@2@01 i@29@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@28@21@30@56|))))
(assert (or
  (forall ((i@29@01 Int)) (!
    (=>
      (or
        (and (<= 0 i@29@01) (< i@29@01 x@22@01))
        (and (< y@23@01 i@29@01) (< i@29@01 (len<Int> a@2@01))))
      (<
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 i@29@01))
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 x@22@01))))
    :pattern ((loc<Ref> a@2@01 i@29@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@28@21@30@56|))
  (forall ((i@30@01 Int)) (!
    (=>
      (or
        (and (<= 0 i@30@01) (< i@30@01 x@22@01))
        (and (< y@23@01 i@30@01) (< i@30@01 (len<Int> a@2@01))))
      (<=
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 i@30@01))
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 y@23@01))))
    :pattern ((loc<Ref> a@2@01 i@30@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@31@21@33@57|))))
(assert (= $t@24@01 ($Snap.combine ($Snap.first $t@24@01) ($Snap.second $t@24@01))))
(assert (forall ((j$3@25@01 Int)) (!
  (=>
    (and (<= 0 j$3@25@01) (< j$3@25@01 (len<Int> a@2@01)))
    (or (<= 0 j$3@25@01) (not (<= 0 j$3@25@01))))
  :pattern ((loc<Ref> a@2@01 j$3@25@01))
  :qid |val-aux|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 10)
(check-sat)
; unknown
; Loop head block: Check well-definedness of edge conditions
(set-option :timeout 0)
(push) ; 6
; [eval] x != y
(pop) ; 6
(push) ; 6
; [eval] !(x != y)
; [eval] x != y
(pop) ; 6
; Loop head block: Follow loop-internal edges
; [eval] x != y
(push) ; 6
(set-option :timeout 10)
(assert (not (= x@22@01 y@23@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not (= x@22@01 y@23@01))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 40 | x@22@01 != y@23@01 | live]
; [else-branch: 40 | x@22@01 == y@23@01 | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 40 | x@22@01 != y@23@01]
(assert (not (= x@22@01 y@23@01)))
; [eval] loc(a, x).val <= loc(a, y).val
; [eval] loc(a, x)
(push) ; 7
(assert (not (and
  (img@27@01 (loc<Ref> a@2@01 x@22@01))
  (and
    (<= 0 (inv@26@01 (loc<Ref> a@2@01 x@22@01)))
    (< (inv@26@01 (loc<Ref> a@2@01 x@22@01)) (len<Int> a@2@01))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] loc(a, y)
(push) ; 7
(assert (not (and
  (img@27@01 (loc<Ref> a@2@01 y@23@01))
  (and
    (<= 0 (inv@26@01 (loc<Ref> a@2@01 y@23@01)))
    (< (inv@26@01 (loc<Ref> a@2@01 y@23@01)) (len<Int> a@2@01))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(set-option :timeout 10)
(assert (not (not
  (<=
    ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 x@22@01))
    ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 y@23@01))))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (<=
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 x@22@01))
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 y@23@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 41 | Lookup(val, First:($t@24@01), loc[Ref](a@2@01, x@22@01)) <= Lookup(val, First:($t@24@01), loc[Ref](a@2@01, y@23@01)) | live]
; [else-branch: 41 | !(Lookup(val, First:($t@24@01), loc[Ref](a@2@01, x@22@01)) <= Lookup(val, First:($t@24@01), loc[Ref](a@2@01, y@23@01))) | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 41 | Lookup(val, First:($t@24@01), loc[Ref](a@2@01, x@22@01)) <= Lookup(val, First:($t@24@01), loc[Ref](a@2@01, y@23@01))]
(assert (<=
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 x@22@01))
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 y@23@01))))
; [exec]
; x := x + 1
; [eval] x + 1
(declare-const x@38@01 Int)
(assert (= x@38@01 (+ x@22@01 1)))
; Loop head block: Re-establish invariant
(declare-const j$3@39@01 Int)
(push) ; 8
; [eval] 0 <= j$3 && j$3 < len(a)
; [eval] 0 <= j$3
(push) ; 9
; [then-branch: 42 | !(0 <= j$3@39@01) | live]
; [else-branch: 42 | 0 <= j$3@39@01 | live]
(push) ; 10
; [then-branch: 42 | !(0 <= j$3@39@01)]
(assert (not (<= 0 j$3@39@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 42 | 0 <= j$3@39@01]
(assert (<= 0 j$3@39@01))
; [eval] j$3 < len(a)
; [eval] len(a)
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j$3@39@01) (not (<= 0 j$3@39@01))))
(assert (and (<= 0 j$3@39@01) (< j$3@39@01 (len<Int> a@2@01))))
; [eval] loc(a, j$3)
(pop) ; 8
(declare-fun inv@40@01 ($Ref) Int)
(declare-fun img@41@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j$3@39@01 Int)) (!
  (=>
    (and (<= 0 j$3@39@01) (< j$3@39@01 (len<Int> a@2@01)))
    (or (<= 0 j$3@39@01) (not (<= 0 j$3@39@01))))
  :pattern ((loc<Ref> a@2@01 j$3@39@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 8
(assert (not (forall ((j$31@39@01 Int) (j$32@39@01 Int)) (!
  (=>
    (and
      (and (<= 0 j$31@39@01) (< j$31@39@01 (len<Int> a@2@01)))
      (and (<= 0 j$32@39@01) (< j$32@39@01 (len<Int> a@2@01)))
      (= (loc<Ref> a@2@01 j$31@39@01) (loc<Ref> a@2@01 j$32@39@01)))
    (= j$31@39@01 j$32@39@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j$3@39@01 Int)) (!
  (=>
    (and (<= 0 j$3@39@01) (< j$3@39@01 (len<Int> a@2@01)))
    (and
      (= (inv@40@01 (loc<Ref> a@2@01 j$3@39@01)) j$3@39@01)
      (img@41@01 (loc<Ref> a@2@01 j$3@39@01))))
  :pattern ((loc<Ref> a@2@01 j$3@39@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@41@01 r)
      (and (<= 0 (inv@40@01 r)) (< (inv@40@01 r) (len<Int> a@2@01))))
    (= (loc<Ref> a@2@01 (inv@40@01 r)) r))
  :pattern ((inv@40@01 r))
  :qid |val-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@42@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@40@01 r)) (< (inv@40@01 r) (len<Int> a@2@01)))
      (img@41@01 r)
      (= r (loc<Ref> a@2@01 (inv@40@01 r))))
    ($Perm.min
      (ite
        (and
          (img@27@01 r)
          (and (<= 0 (inv@26@01 r)) (< (inv@26@01 r) (len<Int> a@2@01))))
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
(push) ; 8
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@27@01 r)
          (and (<= 0 (inv@26@01 r)) (< (inv@26@01 r) (len<Int> a@2@01))))
        $Perm.Write
        $Perm.No)
      (pTaken@42@01 r))
    $Perm.No)
  
  :qid |quant-u-18589|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@40@01 r)) (< (inv@40@01 r) (len<Int> a@2@01)))
      (img@41@01 r)
      (= r (loc<Ref> a@2@01 (inv@40@01 r))))
    (= (- $Perm.Write (pTaken@42@01 r)) $Perm.No))
  
  :qid |quant-u-18590|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall j$4: Int :: { old(loc(a, j$4)) } 0 <= j$4 && j$4 < len(a) ==> loc(a, j$4).val == old(loc(a, j$4).val))
(declare-const j$4@43@01 Int)
(set-option :timeout 0)
(push) ; 8
; [eval] 0 <= j$4 && j$4 < len(a) ==> loc(a, j$4).val == old(loc(a, j$4).val)
; [eval] 0 <= j$4 && j$4 < len(a)
; [eval] 0 <= j$4
(push) ; 9
; [then-branch: 43 | !(0 <= j$4@43@01) | live]
; [else-branch: 43 | 0 <= j$4@43@01 | live]
(push) ; 10
; [then-branch: 43 | !(0 <= j$4@43@01)]
(assert (not (<= 0 j$4@43@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 43 | 0 <= j$4@43@01]
(assert (<= 0 j$4@43@01))
; [eval] j$4 < len(a)
; [eval] len(a)
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j$4@43@01) (not (<= 0 j$4@43@01))))
(push) ; 9
; [then-branch: 44 | 0 <= j$4@43@01 && j$4@43@01 < len[Int](a@2@01) | live]
; [else-branch: 44 | !(0 <= j$4@43@01 && j$4@43@01 < len[Int](a@2@01)) | live]
(push) ; 10
; [then-branch: 44 | 0 <= j$4@43@01 && j$4@43@01 < len[Int](a@2@01)]
(assert (and (<= 0 j$4@43@01) (< j$4@43@01 (len<Int> a@2@01))))
; [eval] loc(a, j$4).val == old(loc(a, j$4).val)
; [eval] loc(a, j$4)
(push) ; 11
(assert (not (and
  (img@27@01 (loc<Ref> a@2@01 j$4@43@01))
  (and
    (<= 0 (inv@26@01 (loc<Ref> a@2@01 j$4@43@01)))
    (< (inv@26@01 (loc<Ref> a@2@01 j$4@43@01)) (len<Int> a@2@01))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [eval] old(loc(a, j$4).val)
; [eval] loc(a, j$4)
(push) ; 11
(assert (not (and
  (img@7@01 (loc<Ref> a@2@01 j$4@43@01))
  (and
    (<= 0 (inv@6@01 (loc<Ref> a@2@01 j$4@43@01)))
    (< (inv@6@01 (loc<Ref> a@2@01 j$4@43@01)) (len<Int> a@2@01))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(pop) ; 10
(push) ; 10
; [else-branch: 44 | !(0 <= j$4@43@01 && j$4@43@01 < len[Int](a@2@01))]
(assert (not (and (<= 0 j$4@43@01) (< j$4@43@01 (len<Int> a@2@01)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (not (and (<= 0 j$4@43@01) (< j$4@43@01 (len<Int> a@2@01))))
  (and (<= 0 j$4@43@01) (< j$4@43@01 (len<Int> a@2@01)))))
; [eval] old(loc(a, j$4))
; [eval] loc(a, j$4)
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j$4@43@01 Int)) (!
  (and
    (or (<= 0 j$4@43@01) (not (<= 0 j$4@43@01)))
    (or
      (not (and (<= 0 j$4@43@01) (< j$4@43@01 (len<Int> a@2@01))))
      (and (<= 0 j$4@43@01) (< j$4@43@01 (len<Int> a@2@01)))))
  :pattern ((loc<Ref> a@2@01 j$4@43@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@26@30@26@42-aux|)))
(push) ; 8
(assert (not (forall ((j$4@43@01 Int)) (!
  (=>
    (and (<= 0 j$4@43@01) (< j$4@43@01 (len<Int> a@2@01)))
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 j$4@43@01))
      ($FVF.lookup_val $t@5@01 (loc<Ref> a@2@01 j$4@43@01))))
  :pattern ((loc<Ref> a@2@01 j$4@43@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@26@30@26@42|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (forall ((j$4@43@01 Int)) (!
  (=>
    (and (<= 0 j$4@43@01) (< j$4@43@01 (len<Int> a@2@01)))
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 j$4@43@01))
      ($FVF.lookup_val $t@5@01 (loc<Ref> a@2@01 j$4@43@01))))
  :pattern ((loc<Ref> a@2@01 j$4@43@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@26@30@26@42|)))
; [eval] 0 <= x
(push) ; 8
(assert (not (<= 0 x@38@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 x@38@01))
; [eval] x <= y
(push) ; 8
(assert (not (<= x@38@01 y@23@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (<= x@38@01 y@23@01))
; [eval] y < len(a)
; [eval] len(a)
; [eval] (forall i: Int :: { loc(a, i) } 0 <= i && i < x || y < i && i < len(a) ==> loc(a, i).val < loc(a, x).val) || (forall i: Int :: { loc(a, i) } 0 <= i && i < x || y < i && i < len(a) ==> loc(a, i).val <= loc(a, y).val)
; [eval] (forall i: Int :: { loc(a, i) } 0 <= i && i < x || y < i && i < len(a) ==> loc(a, i).val < loc(a, x).val)
(declare-const i@44@01 Int)
(push) ; 8
; [eval] 0 <= i && i < x || y < i && i < len(a) ==> loc(a, i).val < loc(a, x).val
; [eval] 0 <= i && i < x || y < i && i < len(a)
; [eval] 0 <= i && i < x
; [eval] 0 <= i
(push) ; 9
; [then-branch: 45 | !(0 <= i@44@01) | live]
; [else-branch: 45 | 0 <= i@44@01 | live]
(push) ; 10
; [then-branch: 45 | !(0 <= i@44@01)]
(assert (not (<= 0 i@44@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 45 | 0 <= i@44@01]
(assert (<= 0 i@44@01))
; [eval] i < x
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@44@01) (not (<= 0 i@44@01))))
(push) ; 9
; [then-branch: 46 | 0 <= i@44@01 && i@44@01 < x@38@01 | live]
; [else-branch: 46 | !(0 <= i@44@01 && i@44@01 < x@38@01) | live]
(push) ; 10
; [then-branch: 46 | 0 <= i@44@01 && i@44@01 < x@38@01]
(assert (and (<= 0 i@44@01) (< i@44@01 x@38@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 46 | !(0 <= i@44@01 && i@44@01 < x@38@01)]
(assert (not (and (<= 0 i@44@01) (< i@44@01 x@38@01))))
; [eval] y < i && i < len(a)
; [eval] y < i
(push) ; 11
; [then-branch: 47 | !(y@23@01 < i@44@01) | live]
; [else-branch: 47 | y@23@01 < i@44@01 | live]
(push) ; 12
; [then-branch: 47 | !(y@23@01 < i@44@01)]
(assert (not (< y@23@01 i@44@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 47 | y@23@01 < i@44@01]
(assert (< y@23@01 i@44@01))
; [eval] i < len(a)
; [eval] len(a)
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (< y@23@01 i@44@01) (not (< y@23@01 i@44@01))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (not (and (<= 0 i@44@01) (< i@44@01 x@38@01)))
  (and
    (not (and (<= 0 i@44@01) (< i@44@01 x@38@01)))
    (or (< y@23@01 i@44@01) (not (< y@23@01 i@44@01))))))
(assert (or
  (not (and (<= 0 i@44@01) (< i@44@01 x@38@01)))
  (and (<= 0 i@44@01) (< i@44@01 x@38@01))))
(push) ; 9
; [then-branch: 48 | 0 <= i@44@01 && i@44@01 < x@38@01 || y@23@01 < i@44@01 && i@44@01 < len[Int](a@2@01) | live]
; [else-branch: 48 | !(0 <= i@44@01 && i@44@01 < x@38@01 || y@23@01 < i@44@01 && i@44@01 < len[Int](a@2@01)) | live]
(push) ; 10
; [then-branch: 48 | 0 <= i@44@01 && i@44@01 < x@38@01 || y@23@01 < i@44@01 && i@44@01 < len[Int](a@2@01)]
(assert (or
  (and (<= 0 i@44@01) (< i@44@01 x@38@01))
  (and (< y@23@01 i@44@01) (< i@44@01 (len<Int> a@2@01)))))
; [eval] loc(a, i).val < loc(a, x).val
; [eval] loc(a, i)
(push) ; 11
(assert (not (and
  (img@27@01 (loc<Ref> a@2@01 i@44@01))
  (and
    (<= 0 (inv@26@01 (loc<Ref> a@2@01 i@44@01)))
    (< (inv@26@01 (loc<Ref> a@2@01 i@44@01)) (len<Int> a@2@01))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [eval] loc(a, x)
(push) ; 11
(assert (not (and
  (img@27@01 (loc<Ref> a@2@01 x@38@01))
  (and
    (<= 0 (inv@26@01 (loc<Ref> a@2@01 x@38@01)))
    (< (inv@26@01 (loc<Ref> a@2@01 x@38@01)) (len<Int> a@2@01))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(pop) ; 10
(push) ; 10
; [else-branch: 48 | !(0 <= i@44@01 && i@44@01 < x@38@01 || y@23@01 < i@44@01 && i@44@01 < len[Int](a@2@01))]
(assert (not
  (or
    (and (<= 0 i@44@01) (< i@44@01 x@38@01))
    (and (< y@23@01 i@44@01) (< i@44@01 (len<Int> a@2@01))))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (or
      (and (<= 0 i@44@01) (< i@44@01 x@38@01))
      (and (< y@23@01 i@44@01) (< i@44@01 (len<Int> a@2@01)))))
  (or
    (and (<= 0 i@44@01) (< i@44@01 x@38@01))
    (and (< y@23@01 i@44@01) (< i@44@01 (len<Int> a@2@01))))))
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@44@01 Int)) (!
  (and
    (or (<= 0 i@44@01) (not (<= 0 i@44@01)))
    (=>
      (not (and (<= 0 i@44@01) (< i@44@01 x@38@01)))
      (and
        (not (and (<= 0 i@44@01) (< i@44@01 x@38@01)))
        (or (< y@23@01 i@44@01) (not (< y@23@01 i@44@01)))))
    (or
      (not (and (<= 0 i@44@01) (< i@44@01 x@38@01)))
      (and (<= 0 i@44@01) (< i@44@01 x@38@01)))
    (or
      (not
        (or
          (and (<= 0 i@44@01) (< i@44@01 x@38@01))
          (and (< y@23@01 i@44@01) (< i@44@01 (len<Int> a@2@01)))))
      (or
        (and (<= 0 i@44@01) (< i@44@01 x@38@01))
        (and (< y@23@01 i@44@01) (< i@44@01 (len<Int> a@2@01))))))
  :pattern ((loc<Ref> a@2@01 i@44@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@28@21@30@56-aux|)))
(push) ; 8
; [then-branch: 49 | QA i@44@01 :: 0 <= i@44@01 && i@44@01 < x@38@01 || y@23@01 < i@44@01 && i@44@01 < len[Int](a@2@01) ==> Lookup(val, First:($t@24@01), loc[Ref](a@2@01, i@44@01)) < Lookup(val, First:($t@24@01), loc[Ref](a@2@01, x@38@01)) | live]
; [else-branch: 49 | !(QA i@44@01 :: 0 <= i@44@01 && i@44@01 < x@38@01 || y@23@01 < i@44@01 && i@44@01 < len[Int](a@2@01) ==> Lookup(val, First:($t@24@01), loc[Ref](a@2@01, i@44@01)) < Lookup(val, First:($t@24@01), loc[Ref](a@2@01, x@38@01))) | live]
(push) ; 9
; [then-branch: 49 | QA i@44@01 :: 0 <= i@44@01 && i@44@01 < x@38@01 || y@23@01 < i@44@01 && i@44@01 < len[Int](a@2@01) ==> Lookup(val, First:($t@24@01), loc[Ref](a@2@01, i@44@01)) < Lookup(val, First:($t@24@01), loc[Ref](a@2@01, x@38@01))]
(assert (forall ((i@44@01 Int)) (!
  (=>
    (or
      (and (<= 0 i@44@01) (< i@44@01 x@38@01))
      (and (< y@23@01 i@44@01) (< i@44@01 (len<Int> a@2@01))))
    (<
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 i@44@01))
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 x@38@01))))
  :pattern ((loc<Ref> a@2@01 i@44@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@28@21@30@56|)))
(pop) ; 9
(push) ; 9
; [else-branch: 49 | !(QA i@44@01 :: 0 <= i@44@01 && i@44@01 < x@38@01 || y@23@01 < i@44@01 && i@44@01 < len[Int](a@2@01) ==> Lookup(val, First:($t@24@01), loc[Ref](a@2@01, i@44@01)) < Lookup(val, First:($t@24@01), loc[Ref](a@2@01, x@38@01)))]
(assert (not
  (forall ((i@44@01 Int)) (!
    (=>
      (or
        (and (<= 0 i@44@01) (< i@44@01 x@38@01))
        (and (< y@23@01 i@44@01) (< i@44@01 (len<Int> a@2@01))))
      (<
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 i@44@01))
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 x@38@01))))
    :pattern ((loc<Ref> a@2@01 i@44@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@28@21@30@56|))))
; [eval] (forall i: Int :: { loc(a, i) } 0 <= i && i < x || y < i && i < len(a) ==> loc(a, i).val <= loc(a, y).val)
(declare-const i@45@01 Int)
(push) ; 10
; [eval] 0 <= i && i < x || y < i && i < len(a) ==> loc(a, i).val <= loc(a, y).val
; [eval] 0 <= i && i < x || y < i && i < len(a)
; [eval] 0 <= i && i < x
; [eval] 0 <= i
(push) ; 11
; [then-branch: 50 | !(0 <= i@45@01) | live]
; [else-branch: 50 | 0 <= i@45@01 | live]
(push) ; 12
; [then-branch: 50 | !(0 <= i@45@01)]
(assert (not (<= 0 i@45@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 50 | 0 <= i@45@01]
(assert (<= 0 i@45@01))
; [eval] i < x
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@45@01) (not (<= 0 i@45@01))))
(push) ; 11
; [then-branch: 51 | 0 <= i@45@01 && i@45@01 < x@38@01 | live]
; [else-branch: 51 | !(0 <= i@45@01 && i@45@01 < x@38@01) | live]
(push) ; 12
; [then-branch: 51 | 0 <= i@45@01 && i@45@01 < x@38@01]
(assert (and (<= 0 i@45@01) (< i@45@01 x@38@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 51 | !(0 <= i@45@01 && i@45@01 < x@38@01)]
(assert (not (and (<= 0 i@45@01) (< i@45@01 x@38@01))))
; [eval] y < i && i < len(a)
; [eval] y < i
(push) ; 13
; [then-branch: 52 | !(y@23@01 < i@45@01) | live]
; [else-branch: 52 | y@23@01 < i@45@01 | live]
(push) ; 14
; [then-branch: 52 | !(y@23@01 < i@45@01)]
(assert (not (< y@23@01 i@45@01)))
(pop) ; 14
(push) ; 14
; [else-branch: 52 | y@23@01 < i@45@01]
(assert (< y@23@01 i@45@01))
; [eval] i < len(a)
; [eval] len(a)
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(assert (or (< y@23@01 i@45@01) (not (< y@23@01 i@45@01))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (=>
  (not (and (<= 0 i@45@01) (< i@45@01 x@38@01)))
  (and
    (not (and (<= 0 i@45@01) (< i@45@01 x@38@01)))
    (or (< y@23@01 i@45@01) (not (< y@23@01 i@45@01))))))
(assert (or
  (not (and (<= 0 i@45@01) (< i@45@01 x@38@01)))
  (and (<= 0 i@45@01) (< i@45@01 x@38@01))))
(push) ; 11
; [then-branch: 53 | 0 <= i@45@01 && i@45@01 < x@38@01 || y@23@01 < i@45@01 && i@45@01 < len[Int](a@2@01) | live]
; [else-branch: 53 | !(0 <= i@45@01 && i@45@01 < x@38@01 || y@23@01 < i@45@01 && i@45@01 < len[Int](a@2@01)) | live]
(push) ; 12
; [then-branch: 53 | 0 <= i@45@01 && i@45@01 < x@38@01 || y@23@01 < i@45@01 && i@45@01 < len[Int](a@2@01)]
(assert (or
  (and (<= 0 i@45@01) (< i@45@01 x@38@01))
  (and (< y@23@01 i@45@01) (< i@45@01 (len<Int> a@2@01)))))
; [eval] loc(a, i).val <= loc(a, y).val
; [eval] loc(a, i)
(push) ; 13
(assert (not (and
  (img@27@01 (loc<Ref> a@2@01 i@45@01))
  (and
    (<= 0 (inv@26@01 (loc<Ref> a@2@01 i@45@01)))
    (< (inv@26@01 (loc<Ref> a@2@01 i@45@01)) (len<Int> a@2@01))))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [eval] loc(a, y)
(push) ; 13
(assert (not (and
  (img@27@01 (loc<Ref> a@2@01 y@23@01))
  (and
    (<= 0 (inv@26@01 (loc<Ref> a@2@01 y@23@01)))
    (< (inv@26@01 (loc<Ref> a@2@01 y@23@01)) (len<Int> a@2@01))))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(pop) ; 12
(push) ; 12
; [else-branch: 53 | !(0 <= i@45@01 && i@45@01 < x@38@01 || y@23@01 < i@45@01 && i@45@01 < len[Int](a@2@01))]
(assert (not
  (or
    (and (<= 0 i@45@01) (< i@45@01 x@38@01))
    (and (< y@23@01 i@45@01) (< i@45@01 (len<Int> a@2@01))))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (or
      (and (<= 0 i@45@01) (< i@45@01 x@38@01))
      (and (< y@23@01 i@45@01) (< i@45@01 (len<Int> a@2@01)))))
  (or
    (and (<= 0 i@45@01) (< i@45@01 x@38@01))
    (and (< y@23@01 i@45@01) (< i@45@01 (len<Int> a@2@01))))))
(pop) ; 10
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@45@01 Int)) (!
  (and
    (or (<= 0 i@45@01) (not (<= 0 i@45@01)))
    (=>
      (not (and (<= 0 i@45@01) (< i@45@01 x@38@01)))
      (and
        (not (and (<= 0 i@45@01) (< i@45@01 x@38@01)))
        (or (< y@23@01 i@45@01) (not (< y@23@01 i@45@01)))))
    (or
      (not (and (<= 0 i@45@01) (< i@45@01 x@38@01)))
      (and (<= 0 i@45@01) (< i@45@01 x@38@01)))
    (or
      (not
        (or
          (and (<= 0 i@45@01) (< i@45@01 x@38@01))
          (and (< y@23@01 i@45@01) (< i@45@01 (len<Int> a@2@01)))))
      (or
        (and (<= 0 i@45@01) (< i@45@01 x@38@01))
        (and (< y@23@01 i@45@01) (< i@45@01 (len<Int> a@2@01))))))
  :pattern ((loc<Ref> a@2@01 i@45@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@31@21@33@57-aux|)))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (not
    (forall ((i@44@01 Int)) (!
      (=>
        (or
          (and (<= 0 i@44@01) (< i@44@01 x@38@01))
          (and (< y@23@01 i@44@01) (< i@44@01 (len<Int> a@2@01))))
        (<
          ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 i@44@01))
          ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 x@38@01))))
      :pattern ((loc<Ref> a@2@01 i@44@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@28@21@30@56|)))
  (and
    (not
      (forall ((i@44@01 Int)) (!
        (=>
          (or
            (and (<= 0 i@44@01) (< i@44@01 x@38@01))
            (and (< y@23@01 i@44@01) (< i@44@01 (len<Int> a@2@01))))
          (<
            ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 i@44@01))
            ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 x@38@01))))
        :pattern ((loc<Ref> a@2@01 i@44@01))
        :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@28@21@30@56|)))
    (forall ((i@45@01 Int)) (!
      (and
        (or (<= 0 i@45@01) (not (<= 0 i@45@01)))
        (=>
          (not (and (<= 0 i@45@01) (< i@45@01 x@38@01)))
          (and
            (not (and (<= 0 i@45@01) (< i@45@01 x@38@01)))
            (or (< y@23@01 i@45@01) (not (< y@23@01 i@45@01)))))
        (or
          (not (and (<= 0 i@45@01) (< i@45@01 x@38@01)))
          (and (<= 0 i@45@01) (< i@45@01 x@38@01)))
        (or
          (not
            (or
              (and (<= 0 i@45@01) (< i@45@01 x@38@01))
              (and (< y@23@01 i@45@01) (< i@45@01 (len<Int> a@2@01)))))
          (or
            (and (<= 0 i@45@01) (< i@45@01 x@38@01))
            (and (< y@23@01 i@45@01) (< i@45@01 (len<Int> a@2@01))))))
      :pattern ((loc<Ref> a@2@01 i@45@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@31@21@33@57-aux|)))))
(assert (or
  (not
    (forall ((i@44@01 Int)) (!
      (=>
        (or
          (and (<= 0 i@44@01) (< i@44@01 x@38@01))
          (and (< y@23@01 i@44@01) (< i@44@01 (len<Int> a@2@01))))
        (<
          ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 i@44@01))
          ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 x@38@01))))
      :pattern ((loc<Ref> a@2@01 i@44@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@28@21@30@56|)))
  (forall ((i@44@01 Int)) (!
    (=>
      (or
        (and (<= 0 i@44@01) (< i@44@01 x@38@01))
        (and (< y@23@01 i@44@01) (< i@44@01 (len<Int> a@2@01))))
      (<
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 i@44@01))
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 x@38@01))))
    :pattern ((loc<Ref> a@2@01 i@44@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@28@21@30@56|))))
(push) ; 8
(assert (not (or
  (forall ((i@44@01 Int)) (!
    (=>
      (or
        (and (<= 0 i@44@01) (< i@44@01 x@38@01))
        (and (< y@23@01 i@44@01) (< i@44@01 (len<Int> a@2@01))))
      (<
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 i@44@01))
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 x@38@01))))
    :pattern ((loc<Ref> a@2@01 i@44@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@28@21@30@56|))
  (forall ((i@45@01 Int)) (!
    (=>
      (or
        (and (<= 0 i@45@01) (< i@45@01 x@38@01))
        (and (< y@23@01 i@45@01) (< i@45@01 (len<Int> a@2@01))))
      (<=
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 i@45@01))
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 y@23@01))))
    :pattern ((loc<Ref> a@2@01 i@45@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@31@21@33@57|)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (or
  (forall ((i@44@01 Int)) (!
    (=>
      (or
        (and (<= 0 i@44@01) (< i@44@01 x@38@01))
        (and (< y@23@01 i@44@01) (< i@44@01 (len<Int> a@2@01))))
      (<
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 i@44@01))
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 x@38@01))))
    :pattern ((loc<Ref> a@2@01 i@44@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@28@21@30@56|))
  (forall ((i@45@01 Int)) (!
    (=>
      (or
        (and (<= 0 i@45@01) (< i@45@01 x@38@01))
        (and (< y@23@01 i@45@01) (< i@45@01 (len<Int> a@2@01))))
      (<=
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 i@45@01))
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 y@23@01))))
    :pattern ((loc<Ref> a@2@01 i@45@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@31@21@33@57|))))
(pop) ; 7
(push) ; 7
; [else-branch: 41 | !(Lookup(val, First:($t@24@01), loc[Ref](a@2@01, x@22@01)) <= Lookup(val, First:($t@24@01), loc[Ref](a@2@01, y@23@01)))]
(assert (not
  (<=
    ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 x@22@01))
    ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 y@23@01)))))
(pop) ; 7
; [eval] !(loc(a, x).val <= loc(a, y).val)
; [eval] loc(a, x).val <= loc(a, y).val
; [eval] loc(a, x)
(push) ; 7
(assert (not (and
  (img@27@01 (loc<Ref> a@2@01 x@22@01))
  (and
    (<= 0 (inv@26@01 (loc<Ref> a@2@01 x@22@01)))
    (< (inv@26@01 (loc<Ref> a@2@01 x@22@01)) (len<Int> a@2@01))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] loc(a, y)
(push) ; 7
(assert (not (and
  (img@27@01 (loc<Ref> a@2@01 y@23@01))
  (and
    (<= 0 (inv@26@01 (loc<Ref> a@2@01 y@23@01)))
    (< (inv@26@01 (loc<Ref> a@2@01 y@23@01)) (len<Int> a@2@01))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(set-option :timeout 10)
(assert (not (<=
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 x@22@01))
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 y@23@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not
  (<=
    ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 x@22@01))
    ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 y@23@01))))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 54 | !(Lookup(val, First:($t@24@01), loc[Ref](a@2@01, x@22@01)) <= Lookup(val, First:($t@24@01), loc[Ref](a@2@01, y@23@01))) | live]
; [else-branch: 54 | Lookup(val, First:($t@24@01), loc[Ref](a@2@01, x@22@01)) <= Lookup(val, First:($t@24@01), loc[Ref](a@2@01, y@23@01)) | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 54 | !(Lookup(val, First:($t@24@01), loc[Ref](a@2@01, x@22@01)) <= Lookup(val, First:($t@24@01), loc[Ref](a@2@01, y@23@01)))]
(assert (not
  (<=
    ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 x@22@01))
    ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 y@23@01)))))
; [exec]
; y := y - 1
; [eval] y - 1
(declare-const y@46@01 Int)
(assert (= y@46@01 (- y@23@01 1)))
; Loop head block: Re-establish invariant
(declare-const j$3@47@01 Int)
(push) ; 8
; [eval] 0 <= j$3 && j$3 < len(a)
; [eval] 0 <= j$3
(push) ; 9
; [then-branch: 55 | !(0 <= j$3@47@01) | live]
; [else-branch: 55 | 0 <= j$3@47@01 | live]
(push) ; 10
; [then-branch: 55 | !(0 <= j$3@47@01)]
(assert (not (<= 0 j$3@47@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 55 | 0 <= j$3@47@01]
(assert (<= 0 j$3@47@01))
; [eval] j$3 < len(a)
; [eval] len(a)
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j$3@47@01) (not (<= 0 j$3@47@01))))
(assert (and (<= 0 j$3@47@01) (< j$3@47@01 (len<Int> a@2@01))))
; [eval] loc(a, j$3)
(pop) ; 8
(declare-fun inv@48@01 ($Ref) Int)
(declare-fun img@49@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j$3@47@01 Int)) (!
  (=>
    (and (<= 0 j$3@47@01) (< j$3@47@01 (len<Int> a@2@01)))
    (or (<= 0 j$3@47@01) (not (<= 0 j$3@47@01))))
  :pattern ((loc<Ref> a@2@01 j$3@47@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 8
(assert (not (forall ((j$31@47@01 Int) (j$32@47@01 Int)) (!
  (=>
    (and
      (and (<= 0 j$31@47@01) (< j$31@47@01 (len<Int> a@2@01)))
      (and (<= 0 j$32@47@01) (< j$32@47@01 (len<Int> a@2@01)))
      (= (loc<Ref> a@2@01 j$31@47@01) (loc<Ref> a@2@01 j$32@47@01)))
    (= j$31@47@01 j$32@47@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j$3@47@01 Int)) (!
  (=>
    (and (<= 0 j$3@47@01) (< j$3@47@01 (len<Int> a@2@01)))
    (and
      (= (inv@48@01 (loc<Ref> a@2@01 j$3@47@01)) j$3@47@01)
      (img@49@01 (loc<Ref> a@2@01 j$3@47@01))))
  :pattern ((loc<Ref> a@2@01 j$3@47@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@49@01 r)
      (and (<= 0 (inv@48@01 r)) (< (inv@48@01 r) (len<Int> a@2@01))))
    (= (loc<Ref> a@2@01 (inv@48@01 r)) r))
  :pattern ((inv@48@01 r))
  :qid |val-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@50@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@48@01 r)) (< (inv@48@01 r) (len<Int> a@2@01)))
      (img@49@01 r)
      (= r (loc<Ref> a@2@01 (inv@48@01 r))))
    ($Perm.min
      (ite
        (and
          (img@27@01 r)
          (and (<= 0 (inv@26@01 r)) (< (inv@26@01 r) (len<Int> a@2@01))))
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
(push) ; 8
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@27@01 r)
          (and (<= 0 (inv@26@01 r)) (< (inv@26@01 r) (len<Int> a@2@01))))
        $Perm.Write
        $Perm.No)
      (pTaken@50@01 r))
    $Perm.No)
  
  :qid |quant-u-18593|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@48@01 r)) (< (inv@48@01 r) (len<Int> a@2@01)))
      (img@49@01 r)
      (= r (loc<Ref> a@2@01 (inv@48@01 r))))
    (= (- $Perm.Write (pTaken@50@01 r)) $Perm.No))
  
  :qid |quant-u-18594|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall j$4: Int :: { old(loc(a, j$4)) } 0 <= j$4 && j$4 < len(a) ==> loc(a, j$4).val == old(loc(a, j$4).val))
(declare-const j$4@51@01 Int)
(set-option :timeout 0)
(push) ; 8
; [eval] 0 <= j$4 && j$4 < len(a) ==> loc(a, j$4).val == old(loc(a, j$4).val)
; [eval] 0 <= j$4 && j$4 < len(a)
; [eval] 0 <= j$4
(push) ; 9
; [then-branch: 56 | !(0 <= j$4@51@01) | live]
; [else-branch: 56 | 0 <= j$4@51@01 | live]
(push) ; 10
; [then-branch: 56 | !(0 <= j$4@51@01)]
(assert (not (<= 0 j$4@51@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 56 | 0 <= j$4@51@01]
(assert (<= 0 j$4@51@01))
; [eval] j$4 < len(a)
; [eval] len(a)
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j$4@51@01) (not (<= 0 j$4@51@01))))
(push) ; 9
; [then-branch: 57 | 0 <= j$4@51@01 && j$4@51@01 < len[Int](a@2@01) | live]
; [else-branch: 57 | !(0 <= j$4@51@01 && j$4@51@01 < len[Int](a@2@01)) | live]
(push) ; 10
; [then-branch: 57 | 0 <= j$4@51@01 && j$4@51@01 < len[Int](a@2@01)]
(assert (and (<= 0 j$4@51@01) (< j$4@51@01 (len<Int> a@2@01))))
; [eval] loc(a, j$4).val == old(loc(a, j$4).val)
; [eval] loc(a, j$4)
(push) ; 11
(assert (not (and
  (img@27@01 (loc<Ref> a@2@01 j$4@51@01))
  (and
    (<= 0 (inv@26@01 (loc<Ref> a@2@01 j$4@51@01)))
    (< (inv@26@01 (loc<Ref> a@2@01 j$4@51@01)) (len<Int> a@2@01))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [eval] old(loc(a, j$4).val)
; [eval] loc(a, j$4)
(push) ; 11
(assert (not (and
  (img@7@01 (loc<Ref> a@2@01 j$4@51@01))
  (and
    (<= 0 (inv@6@01 (loc<Ref> a@2@01 j$4@51@01)))
    (< (inv@6@01 (loc<Ref> a@2@01 j$4@51@01)) (len<Int> a@2@01))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(pop) ; 10
(push) ; 10
; [else-branch: 57 | !(0 <= j$4@51@01 && j$4@51@01 < len[Int](a@2@01))]
(assert (not (and (<= 0 j$4@51@01) (< j$4@51@01 (len<Int> a@2@01)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (not (and (<= 0 j$4@51@01) (< j$4@51@01 (len<Int> a@2@01))))
  (and (<= 0 j$4@51@01) (< j$4@51@01 (len<Int> a@2@01)))))
; [eval] old(loc(a, j$4))
; [eval] loc(a, j$4)
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j$4@51@01 Int)) (!
  (and
    (or (<= 0 j$4@51@01) (not (<= 0 j$4@51@01)))
    (or
      (not (and (<= 0 j$4@51@01) (< j$4@51@01 (len<Int> a@2@01))))
      (and (<= 0 j$4@51@01) (< j$4@51@01 (len<Int> a@2@01)))))
  :pattern ((loc<Ref> a@2@01 j$4@51@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@26@30@26@42-aux|)))
(push) ; 8
(assert (not (forall ((j$4@51@01 Int)) (!
  (=>
    (and (<= 0 j$4@51@01) (< j$4@51@01 (len<Int> a@2@01)))
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 j$4@51@01))
      ($FVF.lookup_val $t@5@01 (loc<Ref> a@2@01 j$4@51@01))))
  :pattern ((loc<Ref> a@2@01 j$4@51@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@26@30@26@42|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (forall ((j$4@51@01 Int)) (!
  (=>
    (and (<= 0 j$4@51@01) (< j$4@51@01 (len<Int> a@2@01)))
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 j$4@51@01))
      ($FVF.lookup_val $t@5@01 (loc<Ref> a@2@01 j$4@51@01))))
  :pattern ((loc<Ref> a@2@01 j$4@51@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@26@30@26@42|)))
; [eval] 0 <= x
; [eval] x <= y
(push) ; 8
(assert (not (<= x@22@01 y@46@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (<= x@22@01 y@46@01))
; [eval] y < len(a)
; [eval] len(a)
(push) ; 8
(assert (not (< y@46@01 (len<Int> a@2@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (< y@46@01 (len<Int> a@2@01)))
; [eval] (forall i: Int :: { loc(a, i) } 0 <= i && i < x || y < i && i < len(a) ==> loc(a, i).val < loc(a, x).val) || (forall i: Int :: { loc(a, i) } 0 <= i && i < x || y < i && i < len(a) ==> loc(a, i).val <= loc(a, y).val)
; [eval] (forall i: Int :: { loc(a, i) } 0 <= i && i < x || y < i && i < len(a) ==> loc(a, i).val < loc(a, x).val)
(declare-const i@52@01 Int)
(push) ; 8
; [eval] 0 <= i && i < x || y < i && i < len(a) ==> loc(a, i).val < loc(a, x).val
; [eval] 0 <= i && i < x || y < i && i < len(a)
; [eval] 0 <= i && i < x
; [eval] 0 <= i
(push) ; 9
; [then-branch: 58 | !(0 <= i@52@01) | live]
; [else-branch: 58 | 0 <= i@52@01 | live]
(push) ; 10
; [then-branch: 58 | !(0 <= i@52@01)]
(assert (not (<= 0 i@52@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 58 | 0 <= i@52@01]
(assert (<= 0 i@52@01))
; [eval] i < x
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@52@01) (not (<= 0 i@52@01))))
(push) ; 9
; [then-branch: 59 | 0 <= i@52@01 && i@52@01 < x@22@01 | live]
; [else-branch: 59 | !(0 <= i@52@01 && i@52@01 < x@22@01) | live]
(push) ; 10
; [then-branch: 59 | 0 <= i@52@01 && i@52@01 < x@22@01]
(assert (and (<= 0 i@52@01) (< i@52@01 x@22@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 59 | !(0 <= i@52@01 && i@52@01 < x@22@01)]
(assert (not (and (<= 0 i@52@01) (< i@52@01 x@22@01))))
; [eval] y < i && i < len(a)
; [eval] y < i
(push) ; 11
; [then-branch: 60 | !(y@46@01 < i@52@01) | live]
; [else-branch: 60 | y@46@01 < i@52@01 | live]
(push) ; 12
; [then-branch: 60 | !(y@46@01 < i@52@01)]
(assert (not (< y@46@01 i@52@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 60 | y@46@01 < i@52@01]
(assert (< y@46@01 i@52@01))
; [eval] i < len(a)
; [eval] len(a)
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (< y@46@01 i@52@01) (not (< y@46@01 i@52@01))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (not (and (<= 0 i@52@01) (< i@52@01 x@22@01)))
  (and
    (not (and (<= 0 i@52@01) (< i@52@01 x@22@01)))
    (or (< y@46@01 i@52@01) (not (< y@46@01 i@52@01))))))
(assert (or
  (not (and (<= 0 i@52@01) (< i@52@01 x@22@01)))
  (and (<= 0 i@52@01) (< i@52@01 x@22@01))))
(push) ; 9
; [then-branch: 61 | 0 <= i@52@01 && i@52@01 < x@22@01 || y@46@01 < i@52@01 && i@52@01 < len[Int](a@2@01) | live]
; [else-branch: 61 | !(0 <= i@52@01 && i@52@01 < x@22@01 || y@46@01 < i@52@01 && i@52@01 < len[Int](a@2@01)) | live]
(push) ; 10
; [then-branch: 61 | 0 <= i@52@01 && i@52@01 < x@22@01 || y@46@01 < i@52@01 && i@52@01 < len[Int](a@2@01)]
(assert (or
  (and (<= 0 i@52@01) (< i@52@01 x@22@01))
  (and (< y@46@01 i@52@01) (< i@52@01 (len<Int> a@2@01)))))
; [eval] loc(a, i).val < loc(a, x).val
; [eval] loc(a, i)
(push) ; 11
(assert (not (and
  (img@27@01 (loc<Ref> a@2@01 i@52@01))
  (and
    (<= 0 (inv@26@01 (loc<Ref> a@2@01 i@52@01)))
    (< (inv@26@01 (loc<Ref> a@2@01 i@52@01)) (len<Int> a@2@01))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [eval] loc(a, x)
(push) ; 11
(assert (not (and
  (img@27@01 (loc<Ref> a@2@01 x@22@01))
  (and
    (<= 0 (inv@26@01 (loc<Ref> a@2@01 x@22@01)))
    (< (inv@26@01 (loc<Ref> a@2@01 x@22@01)) (len<Int> a@2@01))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(pop) ; 10
(push) ; 10
; [else-branch: 61 | !(0 <= i@52@01 && i@52@01 < x@22@01 || y@46@01 < i@52@01 && i@52@01 < len[Int](a@2@01))]
(assert (not
  (or
    (and (<= 0 i@52@01) (< i@52@01 x@22@01))
    (and (< y@46@01 i@52@01) (< i@52@01 (len<Int> a@2@01))))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (or
      (and (<= 0 i@52@01) (< i@52@01 x@22@01))
      (and (< y@46@01 i@52@01) (< i@52@01 (len<Int> a@2@01)))))
  (or
    (and (<= 0 i@52@01) (< i@52@01 x@22@01))
    (and (< y@46@01 i@52@01) (< i@52@01 (len<Int> a@2@01))))))
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@52@01 Int)) (!
  (and
    (or (<= 0 i@52@01) (not (<= 0 i@52@01)))
    (=>
      (not (and (<= 0 i@52@01) (< i@52@01 x@22@01)))
      (and
        (not (and (<= 0 i@52@01) (< i@52@01 x@22@01)))
        (or (< y@46@01 i@52@01) (not (< y@46@01 i@52@01)))))
    (or
      (not (and (<= 0 i@52@01) (< i@52@01 x@22@01)))
      (and (<= 0 i@52@01) (< i@52@01 x@22@01)))
    (or
      (not
        (or
          (and (<= 0 i@52@01) (< i@52@01 x@22@01))
          (and (< y@46@01 i@52@01) (< i@52@01 (len<Int> a@2@01)))))
      (or
        (and (<= 0 i@52@01) (< i@52@01 x@22@01))
        (and (< y@46@01 i@52@01) (< i@52@01 (len<Int> a@2@01))))))
  :pattern ((loc<Ref> a@2@01 i@52@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@28@21@30@56-aux|)))
(push) ; 8
; [then-branch: 62 | QA i@52@01 :: 0 <= i@52@01 && i@52@01 < x@22@01 || y@46@01 < i@52@01 && i@52@01 < len[Int](a@2@01) ==> Lookup(val, First:($t@24@01), loc[Ref](a@2@01, i@52@01)) < Lookup(val, First:($t@24@01), loc[Ref](a@2@01, x@22@01)) | live]
; [else-branch: 62 | !(QA i@52@01 :: 0 <= i@52@01 && i@52@01 < x@22@01 || y@46@01 < i@52@01 && i@52@01 < len[Int](a@2@01) ==> Lookup(val, First:($t@24@01), loc[Ref](a@2@01, i@52@01)) < Lookup(val, First:($t@24@01), loc[Ref](a@2@01, x@22@01))) | live]
(push) ; 9
; [then-branch: 62 | QA i@52@01 :: 0 <= i@52@01 && i@52@01 < x@22@01 || y@46@01 < i@52@01 && i@52@01 < len[Int](a@2@01) ==> Lookup(val, First:($t@24@01), loc[Ref](a@2@01, i@52@01)) < Lookup(val, First:($t@24@01), loc[Ref](a@2@01, x@22@01))]
(assert (forall ((i@52@01 Int)) (!
  (=>
    (or
      (and (<= 0 i@52@01) (< i@52@01 x@22@01))
      (and (< y@46@01 i@52@01) (< i@52@01 (len<Int> a@2@01))))
    (<
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 i@52@01))
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 x@22@01))))
  :pattern ((loc<Ref> a@2@01 i@52@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@28@21@30@56|)))
(pop) ; 9
(push) ; 9
; [else-branch: 62 | !(QA i@52@01 :: 0 <= i@52@01 && i@52@01 < x@22@01 || y@46@01 < i@52@01 && i@52@01 < len[Int](a@2@01) ==> Lookup(val, First:($t@24@01), loc[Ref](a@2@01, i@52@01)) < Lookup(val, First:($t@24@01), loc[Ref](a@2@01, x@22@01)))]
(assert (not
  (forall ((i@52@01 Int)) (!
    (=>
      (or
        (and (<= 0 i@52@01) (< i@52@01 x@22@01))
        (and (< y@46@01 i@52@01) (< i@52@01 (len<Int> a@2@01))))
      (<
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 i@52@01))
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 x@22@01))))
    :pattern ((loc<Ref> a@2@01 i@52@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@28@21@30@56|))))
; [eval] (forall i: Int :: { loc(a, i) } 0 <= i && i < x || y < i && i < len(a) ==> loc(a, i).val <= loc(a, y).val)
(declare-const i@53@01 Int)
(push) ; 10
; [eval] 0 <= i && i < x || y < i && i < len(a) ==> loc(a, i).val <= loc(a, y).val
; [eval] 0 <= i && i < x || y < i && i < len(a)
; [eval] 0 <= i && i < x
; [eval] 0 <= i
(push) ; 11
; [then-branch: 63 | !(0 <= i@53@01) | live]
; [else-branch: 63 | 0 <= i@53@01 | live]
(push) ; 12
; [then-branch: 63 | !(0 <= i@53@01)]
(assert (not (<= 0 i@53@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 63 | 0 <= i@53@01]
(assert (<= 0 i@53@01))
; [eval] i < x
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@53@01) (not (<= 0 i@53@01))))
(push) ; 11
; [then-branch: 64 | 0 <= i@53@01 && i@53@01 < x@22@01 | live]
; [else-branch: 64 | !(0 <= i@53@01 && i@53@01 < x@22@01) | live]
(push) ; 12
; [then-branch: 64 | 0 <= i@53@01 && i@53@01 < x@22@01]
(assert (and (<= 0 i@53@01) (< i@53@01 x@22@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 64 | !(0 <= i@53@01 && i@53@01 < x@22@01)]
(assert (not (and (<= 0 i@53@01) (< i@53@01 x@22@01))))
; [eval] y < i && i < len(a)
; [eval] y < i
(push) ; 13
; [then-branch: 65 | !(y@46@01 < i@53@01) | live]
; [else-branch: 65 | y@46@01 < i@53@01 | live]
(push) ; 14
; [then-branch: 65 | !(y@46@01 < i@53@01)]
(assert (not (< y@46@01 i@53@01)))
(pop) ; 14
(push) ; 14
; [else-branch: 65 | y@46@01 < i@53@01]
(assert (< y@46@01 i@53@01))
; [eval] i < len(a)
; [eval] len(a)
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(assert (or (< y@46@01 i@53@01) (not (< y@46@01 i@53@01))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (=>
  (not (and (<= 0 i@53@01) (< i@53@01 x@22@01)))
  (and
    (not (and (<= 0 i@53@01) (< i@53@01 x@22@01)))
    (or (< y@46@01 i@53@01) (not (< y@46@01 i@53@01))))))
(assert (or
  (not (and (<= 0 i@53@01) (< i@53@01 x@22@01)))
  (and (<= 0 i@53@01) (< i@53@01 x@22@01))))
(push) ; 11
; [then-branch: 66 | 0 <= i@53@01 && i@53@01 < x@22@01 || y@46@01 < i@53@01 && i@53@01 < len[Int](a@2@01) | live]
; [else-branch: 66 | !(0 <= i@53@01 && i@53@01 < x@22@01 || y@46@01 < i@53@01 && i@53@01 < len[Int](a@2@01)) | live]
(push) ; 12
; [then-branch: 66 | 0 <= i@53@01 && i@53@01 < x@22@01 || y@46@01 < i@53@01 && i@53@01 < len[Int](a@2@01)]
(assert (or
  (and (<= 0 i@53@01) (< i@53@01 x@22@01))
  (and (< y@46@01 i@53@01) (< i@53@01 (len<Int> a@2@01)))))
; [eval] loc(a, i).val <= loc(a, y).val
; [eval] loc(a, i)
(push) ; 13
(assert (not (and
  (img@27@01 (loc<Ref> a@2@01 i@53@01))
  (and
    (<= 0 (inv@26@01 (loc<Ref> a@2@01 i@53@01)))
    (< (inv@26@01 (loc<Ref> a@2@01 i@53@01)) (len<Int> a@2@01))))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [eval] loc(a, y)
(push) ; 13
(assert (not (and
  (img@27@01 (loc<Ref> a@2@01 y@46@01))
  (and
    (<= 0 (inv@26@01 (loc<Ref> a@2@01 y@46@01)))
    (< (inv@26@01 (loc<Ref> a@2@01 y@46@01)) (len<Int> a@2@01))))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(pop) ; 12
(push) ; 12
; [else-branch: 66 | !(0 <= i@53@01 && i@53@01 < x@22@01 || y@46@01 < i@53@01 && i@53@01 < len[Int](a@2@01))]
(assert (not
  (or
    (and (<= 0 i@53@01) (< i@53@01 x@22@01))
    (and (< y@46@01 i@53@01) (< i@53@01 (len<Int> a@2@01))))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (or
      (and (<= 0 i@53@01) (< i@53@01 x@22@01))
      (and (< y@46@01 i@53@01) (< i@53@01 (len<Int> a@2@01)))))
  (or
    (and (<= 0 i@53@01) (< i@53@01 x@22@01))
    (and (< y@46@01 i@53@01) (< i@53@01 (len<Int> a@2@01))))))
(pop) ; 10
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@53@01 Int)) (!
  (and
    (or (<= 0 i@53@01) (not (<= 0 i@53@01)))
    (=>
      (not (and (<= 0 i@53@01) (< i@53@01 x@22@01)))
      (and
        (not (and (<= 0 i@53@01) (< i@53@01 x@22@01)))
        (or (< y@46@01 i@53@01) (not (< y@46@01 i@53@01)))))
    (or
      (not (and (<= 0 i@53@01) (< i@53@01 x@22@01)))
      (and (<= 0 i@53@01) (< i@53@01 x@22@01)))
    (or
      (not
        (or
          (and (<= 0 i@53@01) (< i@53@01 x@22@01))
          (and (< y@46@01 i@53@01) (< i@53@01 (len<Int> a@2@01)))))
      (or
        (and (<= 0 i@53@01) (< i@53@01 x@22@01))
        (and (< y@46@01 i@53@01) (< i@53@01 (len<Int> a@2@01))))))
  :pattern ((loc<Ref> a@2@01 i@53@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@31@21@33@57-aux|)))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (not
    (forall ((i@52@01 Int)) (!
      (=>
        (or
          (and (<= 0 i@52@01) (< i@52@01 x@22@01))
          (and (< y@46@01 i@52@01) (< i@52@01 (len<Int> a@2@01))))
        (<
          ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 i@52@01))
          ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 x@22@01))))
      :pattern ((loc<Ref> a@2@01 i@52@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@28@21@30@56|)))
  (and
    (not
      (forall ((i@52@01 Int)) (!
        (=>
          (or
            (and (<= 0 i@52@01) (< i@52@01 x@22@01))
            (and (< y@46@01 i@52@01) (< i@52@01 (len<Int> a@2@01))))
          (<
            ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 i@52@01))
            ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 x@22@01))))
        :pattern ((loc<Ref> a@2@01 i@52@01))
        :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@28@21@30@56|)))
    (forall ((i@53@01 Int)) (!
      (and
        (or (<= 0 i@53@01) (not (<= 0 i@53@01)))
        (=>
          (not (and (<= 0 i@53@01) (< i@53@01 x@22@01)))
          (and
            (not (and (<= 0 i@53@01) (< i@53@01 x@22@01)))
            (or (< y@46@01 i@53@01) (not (< y@46@01 i@53@01)))))
        (or
          (not (and (<= 0 i@53@01) (< i@53@01 x@22@01)))
          (and (<= 0 i@53@01) (< i@53@01 x@22@01)))
        (or
          (not
            (or
              (and (<= 0 i@53@01) (< i@53@01 x@22@01))
              (and (< y@46@01 i@53@01) (< i@53@01 (len<Int> a@2@01)))))
          (or
            (and (<= 0 i@53@01) (< i@53@01 x@22@01))
            (and (< y@46@01 i@53@01) (< i@53@01 (len<Int> a@2@01))))))
      :pattern ((loc<Ref> a@2@01 i@53@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@31@21@33@57-aux|)))))
(assert (or
  (not
    (forall ((i@52@01 Int)) (!
      (=>
        (or
          (and (<= 0 i@52@01) (< i@52@01 x@22@01))
          (and (< y@46@01 i@52@01) (< i@52@01 (len<Int> a@2@01))))
        (<
          ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 i@52@01))
          ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 x@22@01))))
      :pattern ((loc<Ref> a@2@01 i@52@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@28@21@30@56|)))
  (forall ((i@52@01 Int)) (!
    (=>
      (or
        (and (<= 0 i@52@01) (< i@52@01 x@22@01))
        (and (< y@46@01 i@52@01) (< i@52@01 (len<Int> a@2@01))))
      (<
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 i@52@01))
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 x@22@01))))
    :pattern ((loc<Ref> a@2@01 i@52@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@28@21@30@56|))))
(push) ; 8
(assert (not (or
  (forall ((i@52@01 Int)) (!
    (=>
      (or
        (and (<= 0 i@52@01) (< i@52@01 x@22@01))
        (and (< y@46@01 i@52@01) (< i@52@01 (len<Int> a@2@01))))
      (<
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 i@52@01))
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 x@22@01))))
    :pattern ((loc<Ref> a@2@01 i@52@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@28@21@30@56|))
  (forall ((i@53@01 Int)) (!
    (=>
      (or
        (and (<= 0 i@53@01) (< i@53@01 x@22@01))
        (and (< y@46@01 i@53@01) (< i@53@01 (len<Int> a@2@01))))
      (<=
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 i@53@01))
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 y@46@01))))
    :pattern ((loc<Ref> a@2@01 i@53@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@31@21@33@57|)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (or
  (forall ((i@52@01 Int)) (!
    (=>
      (or
        (and (<= 0 i@52@01) (< i@52@01 x@22@01))
        (and (< y@46@01 i@52@01) (< i@52@01 (len<Int> a@2@01))))
      (<
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 i@52@01))
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 x@22@01))))
    :pattern ((loc<Ref> a@2@01 i@52@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@28@21@30@56|))
  (forall ((i@53@01 Int)) (!
    (=>
      (or
        (and (<= 0 i@53@01) (< i@53@01 x@22@01))
        (and (< y@46@01 i@53@01) (< i@53@01 (len<Int> a@2@01))))
      (<=
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 i@53@01))
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 y@46@01))))
    :pattern ((loc<Ref> a@2@01 i@53@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@31@21@33@57|))))
(pop) ; 7
(push) ; 7
; [else-branch: 54 | Lookup(val, First:($t@24@01), loc[Ref](a@2@01, x@22@01)) <= Lookup(val, First:($t@24@01), loc[Ref](a@2@01, y@23@01))]
(assert (<=
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 x@22@01))
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 y@23@01))))
(pop) ; 7
(pop) ; 6
(push) ; 6
; [else-branch: 40 | x@22@01 == y@23@01]
(assert (= x@22@01 y@23@01))
(pop) ; 6
; [eval] !(x != y)
; [eval] x != y
(push) ; 6
(set-option :timeout 10)
(assert (not (not (= x@22@01 y@23@01))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= x@22@01 y@23@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 67 | x@22@01 == y@23@01 | live]
; [else-branch: 67 | x@22@01 != y@23@01 | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 67 | x@22@01 == y@23@01]
(assert (= x@22@01 y@23@01))
(declare-const j$0@54@01 Int)
(push) ; 7
; [eval] 0 <= j$0 && j$0 < len(a)
; [eval] 0 <= j$0
(push) ; 8
; [then-branch: 68 | !(0 <= j$0@54@01) | live]
; [else-branch: 68 | 0 <= j$0@54@01 | live]
(push) ; 9
; [then-branch: 68 | !(0 <= j$0@54@01)]
(assert (not (<= 0 j$0@54@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 68 | 0 <= j$0@54@01]
(assert (<= 0 j$0@54@01))
; [eval] j$0 < len(a)
; [eval] len(a)
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j$0@54@01) (not (<= 0 j$0@54@01))))
(assert (and (<= 0 j$0@54@01) (< j$0@54@01 (len<Int> a@2@01))))
; [eval] loc(a, j$0)
(pop) ; 7
(declare-fun inv@55@01 ($Ref) Int)
(declare-fun img@56@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j$0@54@01 Int)) (!
  (=>
    (and (<= 0 j$0@54@01) (< j$0@54@01 (len<Int> a@2@01)))
    (or (<= 0 j$0@54@01) (not (<= 0 j$0@54@01))))
  :pattern ((loc<Ref> a@2@01 j$0@54@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((j$01@54@01 Int) (j$02@54@01 Int)) (!
  (=>
    (and
      (and (<= 0 j$01@54@01) (< j$01@54@01 (len<Int> a@2@01)))
      (and (<= 0 j$02@54@01) (< j$02@54@01 (len<Int> a@2@01)))
      (= (loc<Ref> a@2@01 j$01@54@01) (loc<Ref> a@2@01 j$02@54@01)))
    (= j$01@54@01 j$02@54@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j$0@54@01 Int)) (!
  (=>
    (and (<= 0 j$0@54@01) (< j$0@54@01 (len<Int> a@2@01)))
    (and
      (= (inv@55@01 (loc<Ref> a@2@01 j$0@54@01)) j$0@54@01)
      (img@56@01 (loc<Ref> a@2@01 j$0@54@01))))
  :pattern ((loc<Ref> a@2@01 j$0@54@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@56@01 r)
      (and (<= 0 (inv@55@01 r)) (< (inv@55@01 r) (len<Int> a@2@01))))
    (= (loc<Ref> a@2@01 (inv@55@01 r)) r))
  :pattern ((inv@55@01 r))
  :qid |val-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@57@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@55@01 r)) (< (inv@55@01 r) (len<Int> a@2@01)))
      (img@56@01 r)
      (= r (loc<Ref> a@2@01 (inv@55@01 r))))
    ($Perm.min
      (ite
        (and
          (img@27@01 r)
          (and (<= 0 (inv@26@01 r)) (< (inv@26@01 r) (len<Int> a@2@01))))
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
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@27@01 r)
          (and (<= 0 (inv@26@01 r)) (< (inv@26@01 r) (len<Int> a@2@01))))
        $Perm.Write
        $Perm.No)
      (pTaken@57@01 r))
    $Perm.No)
  
  :qid |quant-u-18597|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@55@01 r)) (< (inv@55@01 r) (len<Int> a@2@01)))
      (img@56@01 r)
      (= r (loc<Ref> a@2@01 (inv@55@01 r))))
    (= (- $Perm.Write (pTaken@57@01 r)) $Perm.No))
  
  :qid |quant-u-18598|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall j$1: Int :: { old(loc(a, j$1)) } 0 <= j$1 && j$1 < len(a) ==> loc(a, j$1).val == old(loc(a, j$1).val))
(declare-const j$1@58@01 Int)
(set-option :timeout 0)
(push) ; 7
; [eval] 0 <= j$1 && j$1 < len(a) ==> loc(a, j$1).val == old(loc(a, j$1).val)
; [eval] 0 <= j$1 && j$1 < len(a)
; [eval] 0 <= j$1
(push) ; 8
; [then-branch: 69 | !(0 <= j$1@58@01) | live]
; [else-branch: 69 | 0 <= j$1@58@01 | live]
(push) ; 9
; [then-branch: 69 | !(0 <= j$1@58@01)]
(assert (not (<= 0 j$1@58@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 69 | 0 <= j$1@58@01]
(assert (<= 0 j$1@58@01))
; [eval] j$1 < len(a)
; [eval] len(a)
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j$1@58@01) (not (<= 0 j$1@58@01))))
(push) ; 8
; [then-branch: 70 | 0 <= j$1@58@01 && j$1@58@01 < len[Int](a@2@01) | live]
; [else-branch: 70 | !(0 <= j$1@58@01 && j$1@58@01 < len[Int](a@2@01)) | live]
(push) ; 9
; [then-branch: 70 | 0 <= j$1@58@01 && j$1@58@01 < len[Int](a@2@01)]
(assert (and (<= 0 j$1@58@01) (< j$1@58@01 (len<Int> a@2@01))))
; [eval] loc(a, j$1).val == old(loc(a, j$1).val)
; [eval] loc(a, j$1)
(push) ; 10
(assert (not (and
  (img@27@01 (loc<Ref> a@2@01 j$1@58@01))
  (and
    (<= 0 (inv@26@01 (loc<Ref> a@2@01 j$1@58@01)))
    (< (inv@26@01 (loc<Ref> a@2@01 j$1@58@01)) (len<Int> a@2@01))))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [eval] old(loc(a, j$1).val)
; [eval] loc(a, j$1)
(push) ; 10
(assert (not (and
  (img@7@01 (loc<Ref> a@2@01 j$1@58@01))
  (and
    (<= 0 (inv@6@01 (loc<Ref> a@2@01 j$1@58@01)))
    (< (inv@6@01 (loc<Ref> a@2@01 j$1@58@01)) (len<Int> a@2@01))))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
(push) ; 9
; [else-branch: 70 | !(0 <= j$1@58@01 && j$1@58@01 < len[Int](a@2@01))]
(assert (not (and (<= 0 j$1@58@01) (< j$1@58@01 (len<Int> a@2@01)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or
  (not (and (<= 0 j$1@58@01) (< j$1@58@01 (len<Int> a@2@01))))
  (and (<= 0 j$1@58@01) (< j$1@58@01 (len<Int> a@2@01)))))
; [eval] old(loc(a, j$1))
; [eval] loc(a, j$1)
(pop) ; 7
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j$1@58@01 Int)) (!
  (and
    (or (<= 0 j$1@58@01) (not (<= 0 j$1@58@01)))
    (or
      (not (and (<= 0 j$1@58@01) (< j$1@58@01 (len<Int> a@2@01))))
      (and (<= 0 j$1@58@01) (< j$1@58@01 (len<Int> a@2@01)))))
  :pattern ((loc<Ref> a@2@01 j$1@58@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@14@25@14@37-aux|)))
(push) ; 7
(assert (not (forall ((j$1@58@01 Int)) (!
  (=>
    (and (<= 0 j$1@58@01) (< j$1@58@01 (len<Int> a@2@01)))
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 j$1@58@01))
      ($FVF.lookup_val $t@5@01 (loc<Ref> a@2@01 j$1@58@01))))
  :pattern ((loc<Ref> a@2@01 j$1@58@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@14@25@14@37|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (forall ((j$1@58@01 Int)) (!
  (=>
    (and (<= 0 j$1@58@01) (< j$1@58@01 (len<Int> a@2@01)))
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 j$1@58@01))
      ($FVF.lookup_val $t@5@01 (loc<Ref> a@2@01 j$1@58@01))))
  :pattern ((loc<Ref> a@2@01 j$1@58@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@14@25@14@37|)))
; [eval] (len(a) == 0 ? x == -1 : 0 <= x && x < len(a))
; [eval] len(a) == 0
; [eval] len(a)
(push) ; 7
; [then-branch: 71 | len[Int](a@2@01) == 0 | dead]
; [else-branch: 71 | len[Int](a@2@01) != 0 | live]
(push) ; 8
; [else-branch: 71 | len[Int](a@2@01) != 0]
; [eval] 0 <= x && x < len(a)
; [eval] 0 <= x
(push) ; 9
; [then-branch: 72 | !(0 <= x@22@01) | live]
; [else-branch: 72 | 0 <= x@22@01 | live]
(push) ; 10
; [then-branch: 72 | !(0 <= x@22@01)]
(assert (not (<= 0 x@22@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 72 | 0 <= x@22@01]
; [eval] x < len(a)
; [eval] len(a)
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 x@22@01) (not (<= 0 x@22@01))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=> (not (= (len<Int> a@2@01) 0)) (or (<= 0 x@22@01) (not (<= 0 x@22@01)))))
(push) ; 7
(assert (not (and (<= 0 x@22@01) (< x@22@01 (len<Int> a@2@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and (<= 0 x@22@01) (< x@22@01 (len<Int> a@2@01))))
; [eval] (forall j$2: Int :: { loc(a, j$2) } 0 <= j$2 && j$2 < len(a) ==> loc(a, j$2).val <= loc(a, x).val)
(declare-const j$2@59@01 Int)
(push) ; 7
; [eval] 0 <= j$2 && j$2 < len(a) ==> loc(a, j$2).val <= loc(a, x).val
; [eval] 0 <= j$2 && j$2 < len(a)
; [eval] 0 <= j$2
(push) ; 8
; [then-branch: 73 | !(0 <= j$2@59@01) | live]
; [else-branch: 73 | 0 <= j$2@59@01 | live]
(push) ; 9
; [then-branch: 73 | !(0 <= j$2@59@01)]
(assert (not (<= 0 j$2@59@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 73 | 0 <= j$2@59@01]
(assert (<= 0 j$2@59@01))
; [eval] j$2 < len(a)
; [eval] len(a)
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j$2@59@01) (not (<= 0 j$2@59@01))))
(push) ; 8
; [then-branch: 74 | 0 <= j$2@59@01 && j$2@59@01 < len[Int](a@2@01) | live]
; [else-branch: 74 | !(0 <= j$2@59@01 && j$2@59@01 < len[Int](a@2@01)) | live]
(push) ; 9
; [then-branch: 74 | 0 <= j$2@59@01 && j$2@59@01 < len[Int](a@2@01)]
(assert (and (<= 0 j$2@59@01) (< j$2@59@01 (len<Int> a@2@01))))
; [eval] loc(a, j$2).val <= loc(a, x).val
; [eval] loc(a, j$2)
(push) ; 10
(assert (not (and
  (img@27@01 (loc<Ref> a@2@01 j$2@59@01))
  (and
    (<= 0 (inv@26@01 (loc<Ref> a@2@01 j$2@59@01)))
    (< (inv@26@01 (loc<Ref> a@2@01 j$2@59@01)) (len<Int> a@2@01))))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [eval] loc(a, x)
(push) ; 10
(assert (not (and
  (img@27@01 (loc<Ref> a@2@01 x@22@01))
  (and
    (<= 0 (inv@26@01 (loc<Ref> a@2@01 x@22@01)))
    (< (inv@26@01 (loc<Ref> a@2@01 x@22@01)) (len<Int> a@2@01))))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
(push) ; 9
; [else-branch: 74 | !(0 <= j$2@59@01 && j$2@59@01 < len[Int](a@2@01))]
(assert (not (and (<= 0 j$2@59@01) (< j$2@59@01 (len<Int> a@2@01)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or
  (not (and (<= 0 j$2@59@01) (< j$2@59@01 (len<Int> a@2@01))))
  (and (<= 0 j$2@59@01) (< j$2@59@01 (len<Int> a@2@01)))))
(pop) ; 7
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j$2@59@01 Int)) (!
  (and
    (or (<= 0 j$2@59@01) (not (<= 0 j$2@59@01)))
    (or
      (not (and (<= 0 j$2@59@01) (< j$2@59@01 (len<Int> a@2@01))))
      (and (<= 0 j$2@59@01) (< j$2@59@01 (len<Int> a@2@01)))))
  :pattern ((loc<Ref> a@2@01 j$2@59@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@16@12@16@32-aux|)))
(push) ; 7
(assert (not (forall ((j$2@59@01 Int)) (!
  (=>
    (and (<= 0 j$2@59@01) (< j$2@59@01 (len<Int> a@2@01)))
    (<=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 j$2@59@01))
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 x@22@01))))
  :pattern ((loc<Ref> a@2@01 j$2@59@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@16@12@16@32|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (forall ((j$2@59@01 Int)) (!
  (=>
    (and (<= 0 j$2@59@01) (< j$2@59@01 (len<Int> a@2@01)))
    (<=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 j$2@59@01))
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@24@01)) (loc<Ref> a@2@01 x@22@01))))
  :pattern ((loc<Ref> a@2@01 j$2@59@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@16@12@16@32|)))
(pop) ; 6
(push) ; 6
; [else-branch: 67 | x@22@01 != y@23@01]
(assert (not (= x@22@01 y@23@01)))
(pop) ; 6
(pop) ; 5
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 15 | len[Int](a@2@01) == 0]
(assert (= (len<Int> a@2@01) 0))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- client ----------
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; var a: IArray
(declare-const a@60@01 IArray)
; [exec]
; var x: Int
(declare-const x@61@01 Int)
; [exec]
; inhale len(a) == 3
(declare-const $t@62@01 $Snap)
(assert (= $t@62@01 $Snap.unit))
; [eval] len(a) == 3
; [eval] len(a)
(assert (= (len<Int> a@60@01) 3))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall j: Int ::0 <= j && j < len(a) ==> acc(loc(a, j).val, write))
(declare-const j@63@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= j && j < len(a)
; [eval] 0 <= j
(push) ; 4
; [then-branch: 75 | !(0 <= j@63@01) | live]
; [else-branch: 75 | 0 <= j@63@01 | live]
(push) ; 5
; [then-branch: 75 | !(0 <= j@63@01)]
(assert (not (<= 0 j@63@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 75 | 0 <= j@63@01]
(assert (<= 0 j@63@01))
; [eval] j < len(a)
; [eval] len(a)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j@63@01) (not (<= 0 j@63@01))))
(assert (and (<= 0 j@63@01) (< j@63@01 (len<Int> a@60@01))))
; [eval] loc(a, j)
(pop) ; 3
(declare-const $t@64@01 $FVF<val>)
(declare-fun inv@65@01 ($Ref) Int)
(declare-fun img@66@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@63@01 Int)) (!
  (=>
    (and (<= 0 j@63@01) (< j@63@01 (len<Int> a@60@01)))
    (or (<= 0 j@63@01) (not (<= 0 j@63@01))))
  :pattern ((loc<Ref> a@60@01 j@63@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@63@01 Int) (j2@63@01 Int)) (!
  (=>
    (and
      (and (<= 0 j1@63@01) (< j1@63@01 (len<Int> a@60@01)))
      (and (<= 0 j2@63@01) (< j2@63@01 (len<Int> a@60@01)))
      (= (loc<Ref> a@60@01 j1@63@01) (loc<Ref> a@60@01 j2@63@01)))
    (= j1@63@01 j2@63@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@63@01 Int)) (!
  (=>
    (and (<= 0 j@63@01) (< j@63@01 (len<Int> a@60@01)))
    (and
      (= (inv@65@01 (loc<Ref> a@60@01 j@63@01)) j@63@01)
      (img@66@01 (loc<Ref> a@60@01 j@63@01))))
  :pattern ((loc<Ref> a@60@01 j@63@01))
  :qid |quant-u-18600|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@66@01 r)
      (and (<= 0 (inv@65@01 r)) (< (inv@65@01 r) (len<Int> a@60@01))))
    (= (loc<Ref> a@60@01 (inv@65@01 r)) r))
  :pattern ((inv@65@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((j@63@01 Int)) (!
  (=>
    (and (<= 0 j@63@01) (< j@63@01 (len<Int> a@60@01)))
    (not (= (loc<Ref> a@60@01 j@63@01) $Ref.null)))
  :pattern ((loc<Ref> a@60@01 j@63@01))
  :qid |val-permImpliesNonNull|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall i: Int ::
;     { loc(a, i) }
;     0 <= i && i < len(a) ==> loc(a, i).val == i)
(declare-const $t@67@01 $Snap)
(assert (= $t@67@01 $Snap.unit))
; [eval] (forall i: Int :: { loc(a, i) } 0 <= i && i < len(a) ==> loc(a, i).val == i)
(declare-const i@68@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= i && i < len(a) ==> loc(a, i).val == i
; [eval] 0 <= i && i < len(a)
; [eval] 0 <= i
(push) ; 4
; [then-branch: 76 | !(0 <= i@68@01) | live]
; [else-branch: 76 | 0 <= i@68@01 | live]
(push) ; 5
; [then-branch: 76 | !(0 <= i@68@01)]
(assert (not (<= 0 i@68@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 76 | 0 <= i@68@01]
(assert (<= 0 i@68@01))
; [eval] i < len(a)
; [eval] len(a)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@68@01) (not (<= 0 i@68@01))))
(push) ; 4
; [then-branch: 77 | 0 <= i@68@01 && i@68@01 < len[Int](a@60@01) | live]
; [else-branch: 77 | !(0 <= i@68@01 && i@68@01 < len[Int](a@60@01)) | live]
(push) ; 5
; [then-branch: 77 | 0 <= i@68@01 && i@68@01 < len[Int](a@60@01)]
(assert (and (<= 0 i@68@01) (< i@68@01 (len<Int> a@60@01))))
; [eval] loc(a, i).val == i
; [eval] loc(a, i)
(push) ; 6
(assert (not (and
  (img@66@01 (loc<Ref> a@60@01 i@68@01))
  (and
    (<= 0 (inv@65@01 (loc<Ref> a@60@01 i@68@01)))
    (< (inv@65@01 (loc<Ref> a@60@01 i@68@01)) (len<Int> a@60@01))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 77 | !(0 <= i@68@01 && i@68@01 < len[Int](a@60@01))]
(assert (not (and (<= 0 i@68@01) (< i@68@01 (len<Int> a@60@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (not (and (<= 0 i@68@01) (< i@68@01 (len<Int> a@60@01))))
  (and (<= 0 i@68@01) (< i@68@01 (len<Int> a@60@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@68@01 Int)) (!
  (and
    (or (<= 0 i@68@01) (not (<= 0 i@68@01)))
    (or
      (not (and (<= 0 i@68@01) (< i@68@01 (len<Int> a@60@01))))
      (and (<= 0 i@68@01) (< i@68@01 (len<Int> a@60@01)))))
  :pattern ((loc<Ref> a@60@01 i@68@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@48@10@48@70-aux|)))
(assert (forall ((i@68@01 Int)) (!
  (=>
    (and (<= 0 i@68@01) (< i@68@01 (len<Int> a@60@01)))
    (= ($FVF.lookup_val $t@64@01 (loc<Ref> a@60@01 i@68@01)) i@68@01))
  :pattern ((loc<Ref> a@60@01 i@68@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@48@10@48@70|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; x := max(a)
(declare-const j@69@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= j && j < len(a)
; [eval] 0 <= j
(push) ; 4
; [then-branch: 78 | !(0 <= j@69@01) | live]
; [else-branch: 78 | 0 <= j@69@01 | live]
(push) ; 5
; [then-branch: 78 | !(0 <= j@69@01)]
(assert (not (<= 0 j@69@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 78 | 0 <= j@69@01]
(assert (<= 0 j@69@01))
; [eval] j < len(a)
; [eval] len(a)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j@69@01) (not (<= 0 j@69@01))))
(assert (and (<= 0 j@69@01) (< j@69@01 (len<Int> a@60@01))))
; [eval] loc(a, j)
(pop) ; 3
(declare-fun inv@70@01 ($Ref) Int)
(declare-fun img@71@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@69@01 Int)) (!
  (=>
    (and (<= 0 j@69@01) (< j@69@01 (len<Int> a@60@01)))
    (or (<= 0 j@69@01) (not (<= 0 j@69@01))))
  :pattern ((loc<Ref> a@60@01 j@69@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@69@01 Int) (j2@69@01 Int)) (!
  (=>
    (and
      (and (<= 0 j1@69@01) (< j1@69@01 (len<Int> a@60@01)))
      (and (<= 0 j2@69@01) (< j2@69@01 (len<Int> a@60@01)))
      (= (loc<Ref> a@60@01 j1@69@01) (loc<Ref> a@60@01 j2@69@01)))
    (= j1@69@01 j2@69@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@69@01 Int)) (!
  (=>
    (and (<= 0 j@69@01) (< j@69@01 (len<Int> a@60@01)))
    (and
      (= (inv@70@01 (loc<Ref> a@60@01 j@69@01)) j@69@01)
      (img@71@01 (loc<Ref> a@60@01 j@69@01))))
  :pattern ((loc<Ref> a@60@01 j@69@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@71@01 r)
      (and (<= 0 (inv@70@01 r)) (< (inv@70@01 r) (len<Int> a@60@01))))
    (= (loc<Ref> a@60@01 (inv@70@01 r)) r))
  :pattern ((inv@70@01 r))
  :qid |val-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@72@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@70@01 r)) (< (inv@70@01 r) (len<Int> a@60@01)))
      (img@71@01 r)
      (= r (loc<Ref> a@60@01 (inv@70@01 r))))
    ($Perm.min
      (ite
        (and
          (img@66@01 r)
          (and (<= 0 (inv@65@01 r)) (< (inv@65@01 r) (len<Int> a@60@01))))
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
          (img@66@01 r)
          (and (<= 0 (inv@65@01 r)) (< (inv@65@01 r) (len<Int> a@60@01))))
        $Perm.Write
        $Perm.No)
      (pTaken@72@01 r))
    $Perm.No)
  
  :qid |quant-u-18603|))))
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
      (and (<= 0 (inv@70@01 r)) (< (inv@70@01 r) (len<Int> a@60@01)))
      (img@71@01 r)
      (= r (loc<Ref> a@60@01 (inv@70@01 r))))
    (= (- $Perm.Write (pTaken@72@01 r)) $Perm.No))
  
  :qid |quant-u-18604|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const x@73@01 Int)
(declare-const $t@74@01 $Snap)
(assert (= $t@74@01 ($Snap.combine ($Snap.first $t@74@01) ($Snap.second $t@74@01))))
(declare-const j$0@75@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= j$0 && j$0 < len(a)
; [eval] 0 <= j$0
(push) ; 4
; [then-branch: 79 | !(0 <= j$0@75@01) | live]
; [else-branch: 79 | 0 <= j$0@75@01 | live]
(push) ; 5
; [then-branch: 79 | !(0 <= j$0@75@01)]
(assert (not (<= 0 j$0@75@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 79 | 0 <= j$0@75@01]
(assert (<= 0 j$0@75@01))
; [eval] j$0 < len(a)
; [eval] len(a)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j$0@75@01) (not (<= 0 j$0@75@01))))
(assert (and (<= 0 j$0@75@01) (< j$0@75@01 (len<Int> a@60@01))))
; [eval] loc(a, j$0)
(pop) ; 3
(declare-fun inv@76@01 ($Ref) Int)
(declare-fun img@77@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j$0@75@01 Int)) (!
  (=>
    (and (<= 0 j$0@75@01) (< j$0@75@01 (len<Int> a@60@01)))
    (or (<= 0 j$0@75@01) (not (<= 0 j$0@75@01))))
  :pattern ((loc<Ref> a@60@01 j$0@75@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j$01@75@01 Int) (j$02@75@01 Int)) (!
  (=>
    (and
      (and (<= 0 j$01@75@01) (< j$01@75@01 (len<Int> a@60@01)))
      (and (<= 0 j$02@75@01) (< j$02@75@01 (len<Int> a@60@01)))
      (= (loc<Ref> a@60@01 j$01@75@01) (loc<Ref> a@60@01 j$02@75@01)))
    (= j$01@75@01 j$02@75@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j$0@75@01 Int)) (!
  (=>
    (and (<= 0 j$0@75@01) (< j$0@75@01 (len<Int> a@60@01)))
    (and
      (= (inv@76@01 (loc<Ref> a@60@01 j$0@75@01)) j$0@75@01)
      (img@77@01 (loc<Ref> a@60@01 j$0@75@01))))
  :pattern ((loc<Ref> a@60@01 j$0@75@01))
  :qid |quant-u-18606|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@77@01 r)
      (and (<= 0 (inv@76@01 r)) (< (inv@76@01 r) (len<Int> a@60@01))))
    (= (loc<Ref> a@60@01 (inv@76@01 r)) r))
  :pattern ((inv@76@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((j$0@75@01 Int)) (!
  (=>
    (and (<= 0 j$0@75@01) (< j$0@75@01 (len<Int> a@60@01)))
    (not (= (loc<Ref> a@60@01 j$0@75@01) $Ref.null)))
  :pattern ((loc<Ref> a@60@01 j$0@75@01))
  :qid |val-permImpliesNonNull|)))
(assert (=
  ($Snap.second $t@74@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@74@01))
    ($Snap.second ($Snap.second $t@74@01)))))
(assert (= ($Snap.first ($Snap.second $t@74@01)) $Snap.unit))
; [eval] (forall j$1: Int :: { old(loc(a, j$1)) } 0 <= j$1 && j$1 < len(a) ==> loc(a, j$1).val == old(loc(a, j$1).val))
(declare-const j$1@78@01 Int)
(push) ; 3
; [eval] 0 <= j$1 && j$1 < len(a) ==> loc(a, j$1).val == old(loc(a, j$1).val)
; [eval] 0 <= j$1 && j$1 < len(a)
; [eval] 0 <= j$1
(push) ; 4
; [then-branch: 80 | !(0 <= j$1@78@01) | live]
; [else-branch: 80 | 0 <= j$1@78@01 | live]
(push) ; 5
; [then-branch: 80 | !(0 <= j$1@78@01)]
(assert (not (<= 0 j$1@78@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 80 | 0 <= j$1@78@01]
(assert (<= 0 j$1@78@01))
; [eval] j$1 < len(a)
; [eval] len(a)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j$1@78@01) (not (<= 0 j$1@78@01))))
(push) ; 4
; [then-branch: 81 | 0 <= j$1@78@01 && j$1@78@01 < len[Int](a@60@01) | live]
; [else-branch: 81 | !(0 <= j$1@78@01 && j$1@78@01 < len[Int](a@60@01)) | live]
(push) ; 5
; [then-branch: 81 | 0 <= j$1@78@01 && j$1@78@01 < len[Int](a@60@01)]
(assert (and (<= 0 j$1@78@01) (< j$1@78@01 (len<Int> a@60@01))))
; [eval] loc(a, j$1).val == old(loc(a, j$1).val)
; [eval] loc(a, j$1)
(push) ; 6
(assert (not (and
  (img@77@01 (loc<Ref> a@60@01 j$1@78@01))
  (and
    (<= 0 (inv@76@01 (loc<Ref> a@60@01 j$1@78@01)))
    (< (inv@76@01 (loc<Ref> a@60@01 j$1@78@01)) (len<Int> a@60@01))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] old(loc(a, j$1).val)
; [eval] loc(a, j$1)
(push) ; 6
(assert (not (and
  (img@66@01 (loc<Ref> a@60@01 j$1@78@01))
  (and
    (<= 0 (inv@65@01 (loc<Ref> a@60@01 j$1@78@01)))
    (< (inv@65@01 (loc<Ref> a@60@01 j$1@78@01)) (len<Int> a@60@01))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 81 | !(0 <= j$1@78@01 && j$1@78@01 < len[Int](a@60@01))]
(assert (not (and (<= 0 j$1@78@01) (< j$1@78@01 (len<Int> a@60@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (not (and (<= 0 j$1@78@01) (< j$1@78@01 (len<Int> a@60@01))))
  (and (<= 0 j$1@78@01) (< j$1@78@01 (len<Int> a@60@01)))))
; [eval] old(loc(a, j$1))
; [eval] loc(a, j$1)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j$1@78@01 Int)) (!
  (and
    (or (<= 0 j$1@78@01) (not (<= 0 j$1@78@01)))
    (or
      (not (and (<= 0 j$1@78@01) (< j$1@78@01 (len<Int> a@60@01))))
      (and (<= 0 j$1@78@01) (< j$1@78@01 (len<Int> a@60@01)))))
  :pattern ((loc<Ref> a@60@01 j$1@78@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@14@25@14@37-aux|)))
(assert (forall ((j$1@78@01 Int)) (!
  (=>
    (and (<= 0 j$1@78@01) (< j$1@78@01 (len<Int> a@60@01)))
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@74@01)) (loc<Ref> a@60@01 j$1@78@01))
      ($FVF.lookup_val $t@64@01 (loc<Ref> a@60@01 j$1@78@01))))
  :pattern ((loc<Ref> a@60@01 j$1@78@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@14@25@14@37|)))
(assert (=
  ($Snap.second ($Snap.second $t@74@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@74@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@74@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@74@01))) $Snap.unit))
; [eval] (len(a) == 0 ? x == -1 : 0 <= x && x < len(a))
; [eval] len(a) == 0
; [eval] len(a)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= (len<Int> a@60@01) 0))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 82 | len[Int](a@60@01) == 0 | dead]
; [else-branch: 82 | len[Int](a@60@01) != 0 | live]
(set-option :timeout 0)
(push) ; 4
; [else-branch: 82 | len[Int](a@60@01) != 0]
(assert (not (= (len<Int> a@60@01) 0)))
; [eval] 0 <= x && x < len(a)
; [eval] 0 <= x
(push) ; 5
; [then-branch: 83 | !(0 <= x@73@01) | live]
; [else-branch: 83 | 0 <= x@73@01 | live]
(push) ; 6
; [then-branch: 83 | !(0 <= x@73@01)]
(assert (not (<= 0 x@73@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 83 | 0 <= x@73@01]
(assert (<= 0 x@73@01))
; [eval] x < len(a)
; [eval] len(a)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 x@73@01) (not (<= 0 x@73@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (not (= (len<Int> a@60@01) 0))
  (and (not (= (len<Int> a@60@01) 0)) (or (<= 0 x@73@01) (not (<= 0 x@73@01))))))
(assert (not (= (len<Int> a@60@01) 0)))
(assert (and (<= 0 x@73@01) (< x@73@01 (len<Int> a@60@01))))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@74@01))) $Snap.unit))
; [eval] (forall j$2: Int :: { loc(a, j$2) } 0 <= j$2 && j$2 < len(a) ==> loc(a, j$2).val <= loc(a, x).val)
(declare-const j$2@79@01 Int)
(push) ; 3
; [eval] 0 <= j$2 && j$2 < len(a) ==> loc(a, j$2).val <= loc(a, x).val
; [eval] 0 <= j$2 && j$2 < len(a)
; [eval] 0 <= j$2
(push) ; 4
; [then-branch: 84 | !(0 <= j$2@79@01) | live]
; [else-branch: 84 | 0 <= j$2@79@01 | live]
(push) ; 5
; [then-branch: 84 | !(0 <= j$2@79@01)]
(assert (not (<= 0 j$2@79@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 84 | 0 <= j$2@79@01]
(assert (<= 0 j$2@79@01))
; [eval] j$2 < len(a)
; [eval] len(a)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j$2@79@01) (not (<= 0 j$2@79@01))))
(push) ; 4
; [then-branch: 85 | 0 <= j$2@79@01 && j$2@79@01 < len[Int](a@60@01) | live]
; [else-branch: 85 | !(0 <= j$2@79@01 && j$2@79@01 < len[Int](a@60@01)) | live]
(push) ; 5
; [then-branch: 85 | 0 <= j$2@79@01 && j$2@79@01 < len[Int](a@60@01)]
(assert (and (<= 0 j$2@79@01) (< j$2@79@01 (len<Int> a@60@01))))
; [eval] loc(a, j$2).val <= loc(a, x).val
; [eval] loc(a, j$2)
(push) ; 6
(assert (not (and
  (img@77@01 (loc<Ref> a@60@01 j$2@79@01))
  (and
    (<= 0 (inv@76@01 (loc<Ref> a@60@01 j$2@79@01)))
    (< (inv@76@01 (loc<Ref> a@60@01 j$2@79@01)) (len<Int> a@60@01))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] loc(a, x)
(push) ; 6
(assert (not (and
  (img@77@01 (loc<Ref> a@60@01 x@73@01))
  (and
    (<= 0 (inv@76@01 (loc<Ref> a@60@01 x@73@01)))
    (< (inv@76@01 (loc<Ref> a@60@01 x@73@01)) (len<Int> a@60@01))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 85 | !(0 <= j$2@79@01 && j$2@79@01 < len[Int](a@60@01))]
(assert (not (and (<= 0 j$2@79@01) (< j$2@79@01 (len<Int> a@60@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (not (and (<= 0 j$2@79@01) (< j$2@79@01 (len<Int> a@60@01))))
  (and (<= 0 j$2@79@01) (< j$2@79@01 (len<Int> a@60@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j$2@79@01 Int)) (!
  (and
    (or (<= 0 j$2@79@01) (not (<= 0 j$2@79@01)))
    (or
      (not (and (<= 0 j$2@79@01) (< j$2@79@01 (len<Int> a@60@01))))
      (and (<= 0 j$2@79@01) (< j$2@79@01 (len<Int> a@60@01)))))
  :pattern ((loc<Ref> a@60@01 j$2@79@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@16@12@16@32-aux|)))
(assert (forall ((j$2@79@01 Int)) (!
  (=>
    (and (<= 0 j$2@79@01) (< j$2@79@01 (len<Int> a@60@01)))
    (<=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@74@01)) (loc<Ref> a@60@01 j$2@79@01))
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@74@01)) (loc<Ref> a@60@01 x@73@01))))
  :pattern ((loc<Ref> a@60@01 j$2@79@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/max_array/max-array-elimination.vpr@16@12@16@32|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; assert loc(a, 0).val <= x
; [eval] loc(a, 0).val <= x
; [eval] loc(a, 0)
(set-option :timeout 0)
(push) ; 3
(assert (not (and
  (img@77@01 (loc<Ref> a@60@01 0))
  (and
    (<= 0 (inv@76@01 (loc<Ref> a@60@01 0)))
    (< (inv@76@01 (loc<Ref> a@60@01 0)) (len<Int> a@60@01))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (<=
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@74@01)) (loc<Ref> a@60@01 0))
  x@73@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<=
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@74@01)) (loc<Ref> a@60@01 0))
  x@73@01))
; [exec]
; assert x == loc(a, len(a) - 1).val
; [eval] x == loc(a, len(a) - 1).val
; [eval] loc(a, len(a) - 1)
; [eval] len(a) - 1
; [eval] len(a)
(push) ; 3
(assert (not (and
  (img@77@01 (loc<Ref> a@60@01 (- (len<Int> a@60@01) 1)))
  (and
    (<= 0 (inv@76@01 (loc<Ref> a@60@01 (- (len<Int> a@60@01) 1))))
    (<
      (inv@76@01 (loc<Ref> a@60@01 (- (len<Int> a@60@01) 1)))
      (len<Int> a@60@01))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (=
  x@73@01
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@74@01)) (loc<Ref> a@60@01 (-
    (len<Int> a@60@01)
    1))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  x@73@01
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@74@01)) (loc<Ref> a@60@01 (-
    (len<Int> a@60@01)
    1)))))
; [exec]
; assert x == 2
; [eval] x == 2
(push) ; 3
(assert (not (= x@73@01 2)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (= x@73@01 2))
; [exec]
; assert loc(a, 1).val < x
; [eval] loc(a, 1).val < x
; [eval] loc(a, 1)
(push) ; 3
(assert (not (and
  (img@77@01 (loc<Ref> a@60@01 1))
  (and
    (<= 0 (inv@76@01 (loc<Ref> a@60@01 1)))
    (< (inv@76@01 (loc<Ref> a@60@01 1)) (len<Int> a@60@01))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (<
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@74@01)) (loc<Ref> a@60@01 1))
  x@73@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<
  ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first $t@74@01)) (loc<Ref> a@60@01 1))
  x@73@01))
(pop) ; 2
(pop) ; 1
