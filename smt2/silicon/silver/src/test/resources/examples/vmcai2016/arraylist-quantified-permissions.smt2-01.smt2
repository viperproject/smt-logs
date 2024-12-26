(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-26 19:35:43
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
(declare-sort Set<Array_> 0)
(declare-sort Set<$Ref> 0)
(declare-sort Set<$Snap> 0)
(declare-sort Array_ 0)
(declare-sort Pair<Array~_Int> 0)
(declare-sort $FVF<val> 0)
(declare-sort $FVF<elems> 0)
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
(declare-fun $SortWrappers.Set<Array_>To$Snap (Set<Array_>) $Snap)
(declare-fun $SortWrappers.$SnapToSet<Array_> ($Snap) Set<Array_>)
(assert (forall ((x Set<Array_>)) (!
    (= x ($SortWrappers.$SnapToSet<Array_>($SortWrappers.Set<Array_>To$Snap x)))
    :pattern (($SortWrappers.Set<Array_>To$Snap x))
    :qid |$Snap.$SnapToSet<Array_>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Set<Array_>To$Snap($SortWrappers.$SnapToSet<Array_> x)))
    :pattern (($SortWrappers.$SnapToSet<Array_> x))
    :qid |$Snap.Set<Array_>To$SnapToSet<Array_>|
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
(declare-fun $SortWrappers.Pair<Array~_Int>To$Snap (Pair<Array~_Int>) $Snap)
(declare-fun $SortWrappers.$SnapToPair<Array~_Int> ($Snap) Pair<Array~_Int>)
(assert (forall ((x Pair<Array~_Int>)) (!
    (= x ($SortWrappers.$SnapToPair<Array~_Int>($SortWrappers.Pair<Array~_Int>To$Snap x)))
    :pattern (($SortWrappers.Pair<Array~_Int>To$Snap x))
    :qid |$Snap.$SnapToPair<Array~_Int>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Pair<Array~_Int>To$Snap($SortWrappers.$SnapToPair<Array~_Int> x)))
    :pattern (($SortWrappers.$SnapToPair<Array~_Int> x))
    :qid |$Snap.Pair<Array~_Int>To$SnapToPair<Array~_Int>|
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
(declare-fun $SortWrappers.$FVF<elems>To$Snap ($FVF<elems>) $Snap)
(declare-fun $SortWrappers.$SnapTo$FVF<elems> ($Snap) $FVF<elems>)
(assert (forall ((x $FVF<elems>)) (!
    (= x ($SortWrappers.$SnapTo$FVF<elems>($SortWrappers.$FVF<elems>To$Snap x)))
    :pattern (($SortWrappers.$FVF<elems>To$Snap x))
    :qid |$Snap.$SnapTo$FVF<elems>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$FVF<elems>To$Snap($SortWrappers.$SnapTo$FVF<elems> x)))
    :pattern (($SortWrappers.$SnapTo$FVF<elems> x))
    :qid |$Snap.$FVF<elems>To$SnapTo$FVF<elems>|
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
(declare-fun Set_card (Set<Array_>) Int)
(declare-const Set_empty Set<Array_>)
(declare-fun Set_in (Array_ Set<Array_>) Bool)
(declare-fun Set_singleton (Array_) Set<Array_>)
(declare-fun Set_unionone (Set<Array_> Array_) Set<Array_>)
(declare-fun Set_union (Set<Array_> Set<Array_>) Set<Array_>)
(declare-fun Set_intersection (Set<Array_> Set<Array_>) Set<Array_>)
(declare-fun Set_difference (Set<Array_> Set<Array_>) Set<Array_>)
(declare-fun Set_subset (Set<Array_> Set<Array_>) Bool)
(declare-fun Set_equal (Set<Array_> Set<Array_>) Bool)
(declare-fun Set_skolem_diff (Set<Array_> Set<Array_>) Array_)
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
(declare-fun first<Array> (Pair<Array~_Int>) Array_)
(declare-fun second<Int> (Pair<Array~_Int>) Int)
(declare-fun loc<Ref> (Array_ Int) $Ref)
(declare-fun len<Int> (Array_) Int)
(declare-fun inv_loc<Pair<Array~_Int>> ($Ref) Pair<Array~_Int>)
; /field_value_functions_declarations.smt2 [val: Int]
(declare-fun $FVF.domain_val ($FVF<val>) Set<$Ref>)
(declare-fun $FVF.lookup_val ($FVF<val> $Ref) Int)
(declare-fun $FVF.after_val ($FVF<val> $FVF<val>) Bool)
(declare-fun $FVF.loc_val (Int $Ref) Bool)
(declare-fun $FVF.perm_val ($FPM $Ref) $Perm)
(declare-const $fvfTOP_val $FVF<val>)
; /field_value_functions_declarations.smt2 [elems: Array]
(declare-fun $FVF.domain_elems ($FVF<elems>) Set<$Ref>)
(declare-fun $FVF.lookup_elems ($FVF<elems> $Ref) Array_)
(declare-fun $FVF.after_elems ($FVF<elems> $FVF<elems>) Bool)
(declare-fun $FVF.loc_elems (Array_ $Ref) Bool)
(declare-fun $FVF.perm_elems ($FPM $Ref) $Perm)
(declare-const $fvfTOP_elems $FVF<elems>)
; Declaring symbols related to program functions (from program analysis)
(declare-fun length ($Snap $Ref) Int)
(declare-fun length%limited ($Snap $Ref) Int)
(declare-fun length%stateless ($Ref) Bool)
(declare-fun length%precondition ($Snap $Ref) Bool)
(declare-fun itemAt ($Snap $Ref Int) Int)
(declare-fun itemAt%limited ($Snap $Ref Int) Int)
(declare-fun itemAt%stateless ($Ref Int) Bool)
(declare-fun itemAt%precondition ($Snap $Ref Int) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun AList%trigger ($Snap $Ref) Bool)
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
(assert (forall ((s Set<Array_>)) (!
  (<= 0 (Set_card s))
  :pattern ((Set_card s))
  )))
(assert (forall ((o Array_)) (!
  (not (Set_in o (as Set_empty  Set<Array_>)))
  :pattern ((Set_in o (as Set_empty  Set<Array_>)))
  )))
(assert (forall ((s Set<Array_>)) (!
  (and
    (=> (= (Set_card s) 0) (= s (as Set_empty  Set<Array_>)))
    (=> (not (= (Set_card s) 0)) (exists ((x Array_))  (Set_in x s))))
  :pattern ((Set_card s))
  )))
(assert (forall ((r Array_)) (!
  (Set_in r (Set_singleton r))
  :pattern ((Set_singleton r))
  )))
(assert (forall ((r Array_) (o Array_)) (!
  (= (Set_in o (Set_singleton r)) (= r o))
  :pattern ((Set_in o (Set_singleton r)))
  )))
(assert (forall ((r Array_)) (!
  (= (Set_card (Set_singleton r)) 1)
  :pattern ((Set_card (Set_singleton r)))
  )))
(assert (forall ((a Set<Array_>) (x Array_) (o Array_)) (!
  (= (Set_in o (Set_unionone a x)) (or (= o x) (Set_in o a)))
  :pattern ((Set_in o (Set_unionone a x)))
  )))
(assert (forall ((a Set<Array_>) (x Array_)) (!
  (Set_in x (Set_unionone a x))
  :pattern ((Set_unionone a x))
  )))
(assert (forall ((a Set<Array_>) (x Array_) (y Array_)) (!
  (=> (Set_in y a) (Set_in y (Set_unionone a x)))
  :pattern ((Set_unionone a x) (Set_in y a))
  )))
(assert (forall ((a Set<Array_>) (x Array_)) (!
  (=> (Set_in x a) (= (Set_card (Set_unionone a x)) (Set_card a)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<Array_>) (x Array_)) (!
  (=> (not (Set_in x a)) (= (Set_card (Set_unionone a x)) (+ (Set_card a) 1)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<Array_>) (b Set<Array_>) (o Array_)) (!
  (= (Set_in o (Set_union a b)) (or (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_union a b)))
  )))
(assert (forall ((a Set<Array_>) (b Set<Array_>) (y Array_)) (!
  (=> (Set_in y a) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y a))
  )))
(assert (forall ((a Set<Array_>) (b Set<Array_>) (y Array_)) (!
  (=> (Set_in y b) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y b))
  )))
(assert (forall ((a Set<Array_>) (b Set<Array_>) (o Array_)) (!
  (= (Set_in o (Set_intersection a b)) (and (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_intersection a b)))
  :pattern ((Set_intersection a b) (Set_in o a))
  :pattern ((Set_intersection a b) (Set_in o b))
  )))
(assert (forall ((a Set<Array_>) (b Set<Array_>)) (!
  (= (Set_union (Set_union a b) b) (Set_union a b))
  :pattern ((Set_union (Set_union a b) b))
  )))
(assert (forall ((a Set<Array_>) (b Set<Array_>)) (!
  (= (Set_union a (Set_union a b)) (Set_union a b))
  :pattern ((Set_union a (Set_union a b)))
  )))
(assert (forall ((a Set<Array_>) (b Set<Array_>)) (!
  (= (Set_intersection (Set_intersection a b) b) (Set_intersection a b))
  :pattern ((Set_intersection (Set_intersection a b) b))
  )))
(assert (forall ((a Set<Array_>) (b Set<Array_>)) (!
  (= (Set_intersection a (Set_intersection a b)) (Set_intersection a b))
  :pattern ((Set_intersection a (Set_intersection a b)))
  )))
(assert (forall ((a Set<Array_>) (b Set<Array_>)) (!
  (=
    (+ (Set_card (Set_union a b)) (Set_card (Set_intersection a b)))
    (+ (Set_card a) (Set_card b)))
  :pattern ((Set_card (Set_union a b)))
  :pattern ((Set_card (Set_intersection a b)))
  )))
(assert (forall ((a Set<Array_>) (b Set<Array_>) (o Array_)) (!
  (= (Set_in o (Set_difference a b)) (and (Set_in o a) (not (Set_in o b))))
  :pattern ((Set_in o (Set_difference a b)))
  :pattern ((Set_difference a b) (Set_in o a))
  )))
(assert (forall ((a Set<Array_>) (b Set<Array_>) (y Array_)) (!
  (=> (Set_in y b) (not (Set_in y (Set_difference a b))))
  :pattern ((Set_difference a b) (Set_in y b))
  )))
(assert (forall ((a Set<Array_>) (b Set<Array_>)) (!
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
(assert (forall ((a Set<Array_>) (b Set<Array_>)) (!
  (=
    (Set_subset a b)
    (forall ((o Array_)) (!
      (=> (Set_in o a) (Set_in o b))
      :pattern ((Set_in o a))
      :pattern ((Set_in o b))
      )))
  :pattern ((Set_subset a b))
  )))
(assert (forall ((a Set<Array_>) (b Set<Array_>)) (!
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
(assert (forall ((a Set<Array_>) (b Set<Array_>)) (!
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
  (=>
    (and (<= 0 i) (< i (len<Int> a)))
    (and
      (= (first<Array> (inv_loc<Pair<Array~_Int>> (loc<Ref> a i))) a)
      (= (second<Int> (inv_loc<Pair<Array~_Int>> (loc<Ref> a i))) i)))
  :pattern ((loc<Ref> a i))
  :qid |prog.loc_injective|)))
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
; /field_value_functions_axioms.smt2 [elems: Array]
(assert (forall ((vs $FVF<elems>) (ws $FVF<elems>)) (!
    (=>
      (and
        (Set_equal ($FVF.domain_elems vs) ($FVF.domain_elems ws))
        (forall ((x $Ref)) (!
          (=>
            (Set_in x ($FVF.domain_elems vs))
            (= ($FVF.lookup_elems vs x) ($FVF.lookup_elems ws x)))
          :pattern (($FVF.lookup_elems vs x) ($FVF.lookup_elems ws x))
          :qid |qp.$FVF<elems>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$FVF<elems>To$Snap vs)
              ($SortWrappers.$FVF<elems>To$Snap ws)
              )
    :qid |qp.$FVF<elems>-eq-outer|
    )))
(assert (forall ((r $Ref) (pm $FPM)) (!
    ($Perm.isValidVar ($FVF.perm_elems pm r))
    :pattern (($FVF.perm_elems pm r)))))
(assert (forall ((r $Ref) (f Array_)) (!
    (= ($FVF.loc_elems f r) true)
    :pattern (($FVF.loc_elems f r)))))
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ------------------------------------------------------------
; Begin function- and predicate-related preamble
; Declaring symbols related to program functions (from verification)
(declare-fun inv@7@00 ($Snap $Ref $Ref) Int)
(declare-fun img@8@00 ($Snap $Ref $Ref) Bool)
(declare-fun inv@10@00 ($Snap $Ref Int $Ref) Int)
(declare-fun img@11@00 ($Snap $Ref Int $Ref) Bool)
(assert (forall ((s@$ $Snap) (this@0@00 $Ref)) (!
  (= (length%limited s@$ this@0@00) (length s@$ this@0@00))
  :pattern ((length s@$ this@0@00))
  :qid |quant-u-18687|)))
(assert (forall ((s@$ $Snap) (this@0@00 $Ref)) (!
  (length%stateless this@0@00)
  :pattern ((length%limited s@$ this@0@00))
  :qid |quant-u-18688|)))
(assert (forall ((s@$ $Snap) (this@0@00 $Ref)) (!
  (let ((result@1@00 (length%limited s@$ this@0@00))) (=>
    (length%precondition s@$ this@0@00)
    (>= result@1@00 0)))
  :pattern ((length%limited s@$ this@0@00))
  :qid |quant-u-18691|)))
(assert (forall ((s@$ $Snap) (this@0@00 $Ref)) (!
  (let ((result@1@00 (length%limited s@$ this@0@00))) true)
  :pattern ((length%limited s@$ this@0@00))
  :qid |quant-u-18692|)))
(assert (forall ((s@$ $Snap) (this@0@00 $Ref)) (!
  (and
    (forall ((i@6@00 Int)) (!
      (=>
        (and
          (<= 0 i@6@00)
          (< i@6@00 (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first s@$)))))
        (and
          (=
            (inv@7@00 s@$ this@0@00 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first s@$)) i@6@00))
            i@6@00)
          (img@8@00 s@$ this@0@00 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first s@$)) i@6@00))))
      :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first s@$)) i@6@00))
      :qid |quant-u-18694|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@8@00 s@$ this@0@00 r)
          (and
            (<= 0 (inv@7@00 s@$ this@0@00 r))
            (<
              (inv@7@00 s@$ this@0@00 r)
              (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first s@$))))))
        (=
          (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first s@$)) (inv@7@00 s@$ this@0@00 r))
          r))
      :pattern ((inv@7@00 s@$ this@0@00 r))
      :qid |val-fctOfInv|))
    (=>
      (length%precondition s@$ this@0@00)
      (=
        (length s@$ this@0@00)
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second s@$))))))
  :pattern ((length s@$ this@0@00))
  :qid |quant-u-18695|)))
(assert (forall ((s@$ $Snap) (this@0@00 $Ref)) (!
  true
  :pattern ((length s@$ this@0@00))
  :qid |quant-u-18696|)))
(assert (forall ((s@$ $Snap) (this@2@00 $Ref) (index@3@00 Int)) (!
  (= (itemAt%limited s@$ this@2@00 index@3@00) (itemAt s@$ this@2@00 index@3@00))
  :pattern ((itemAt s@$ this@2@00 index@3@00))
  :qid |quant-u-18689|)))
(assert (forall ((s@$ $Snap) (this@2@00 $Ref) (index@3@00 Int)) (!
  (itemAt%stateless this@2@00 index@3@00)
  :pattern ((itemAt%limited s@$ this@2@00 index@3@00))
  :qid |quant-u-18690|)))
(assert (forall ((s@$ $Snap) (this@2@00 $Ref) (index@3@00 Int)) (!
  (and
    (forall ((i@9@00 Int)) (!
      (=>
        (and
          (<= 0 i@9@00)
          (<
            i@9@00
            (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first s@$))))))
        (and
          (=
            (inv@10@00 s@$ this@2@00 index@3@00 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first s@$))) i@9@00))
            i@9@00)
          (img@11@00 s@$ this@2@00 index@3@00 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first s@$))) i@9@00))))
      :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first s@$))) i@9@00))
      :qid |quant-u-18698|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@11@00 s@$ this@2@00 index@3@00 r)
          (and
            (<= 0 (inv@10@00 s@$ this@2@00 index@3@00 r))
            (<
              (inv@10@00 s@$ this@2@00 index@3@00 r)
              (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first s@$)))))))
        (=
          (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first s@$))) (inv@10@00 s@$ this@2@00 index@3@00 r))
          r))
      :pattern ((inv@10@00 s@$ this@2@00 index@3@00 r))
      :qid |val-fctOfInv|))
    (=>
      (itemAt%precondition s@$ this@2@00 index@3@00)
      (=
        (itemAt s@$ this@2@00 index@3@00)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first s@$))) index@3@00)))))
  :pattern ((itemAt s@$ this@2@00 index@3@00))
  :qid |quant-u-18699|)))
(assert (forall ((s@$ $Snap) (this@2@00 $Ref) (index@3@00 Int)) (!
  true
  :pattern ((itemAt s@$ this@2@00 index@3@00))
  :qid |quant-u-18700|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- create ----------
(declare-const this@0@01 $Ref)
(declare-const this@1@01 $Ref)
(set-option :timeout 0)
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@2@01 $Snap)
(assert (= $t@2@01 ($Snap.combine ($Snap.first $t@2@01) ($Snap.second $t@2@01))))
(assert (= ($Snap.second $t@2@01) $Snap.unit))
; [eval] length(this) == 0
; [eval] length(this)
(push) ; 3
(assert (length%precondition ($Snap.first $t@2@01) this@1@01))
(pop) ; 3
; Joined path conditions
(assert (length%precondition ($Snap.first $t@2@01) this@1@01))
(assert (= (length ($Snap.first $t@2@01) this@1@01) 0))
(pop) ; 2
(push) ; 2
; [exec]
; var a: Array
(declare-const a@3@01 Array_)
; [exec]
; this := new(elems, size)
(declare-const this@4@01 $Ref)
(assert (not (= this@4@01 $Ref.null)))
(declare-const elems@5@01 Array_)
(declare-const size@6@01 Int)
(assert (not (= this@4@01 this@1@01)))
; [exec]
; inhale len(a) == 10
(declare-const $t@7@01 $Snap)
(assert (= $t@7@01 $Snap.unit))
; [eval] len(a) == 10
; [eval] len(a)
(assert (= (len<Int> a@3@01) 10))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall i: Int ::0 <= i && i < len(a) ==> acc(loc(a, i).val, write))
(declare-const i@8@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= i && i < len(a)
; [eval] 0 <= i
(push) ; 4
; [then-branch: 0 | !(0 <= i@8@01) | live]
; [else-branch: 0 | 0 <= i@8@01 | live]
(push) ; 5
; [then-branch: 0 | !(0 <= i@8@01)]
(assert (not (<= 0 i@8@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 0 | 0 <= i@8@01]
(assert (<= 0 i@8@01))
; [eval] i < len(a)
; [eval] len(a)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@8@01) (not (<= 0 i@8@01))))
(assert (and (<= 0 i@8@01) (< i@8@01 (len<Int> a@3@01))))
; [eval] loc(a, i)
(pop) ; 3
(declare-const $t@9@01 $FVF<val>)
(declare-fun inv@10@01 ($Ref) Int)
(declare-fun img@11@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@8@01 Int)) (!
  (=>
    (and (<= 0 i@8@01) (< i@8@01 (len<Int> a@3@01)))
    (or (<= 0 i@8@01) (not (<= 0 i@8@01))))
  :pattern ((loc<Ref> a@3@01 i@8@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@8@01 Int) (i2@8@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@8@01) (< i1@8@01 (len<Int> a@3@01)))
      (and (<= 0 i2@8@01) (< i2@8@01 (len<Int> a@3@01)))
      (= (loc<Ref> a@3@01 i1@8@01) (loc<Ref> a@3@01 i2@8@01)))
    (= i1@8@01 i2@8@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@8@01 Int)) (!
  (=>
    (and (<= 0 i@8@01) (< i@8@01 (len<Int> a@3@01)))
    (and
      (= (inv@10@01 (loc<Ref> a@3@01 i@8@01)) i@8@01)
      (img@11@01 (loc<Ref> a@3@01 i@8@01))))
  :pattern ((loc<Ref> a@3@01 i@8@01))
  :qid |quant-u-18704|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@11@01 r)
      (and (<= 0 (inv@10@01 r)) (< (inv@10@01 r) (len<Int> a@3@01))))
    (= (loc<Ref> a@3@01 (inv@10@01 r)) r))
  :pattern ((inv@10@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@8@01 Int)) (!
  (=>
    (and (<= 0 i@8@01) (< i@8@01 (len<Int> a@3@01)))
    (not (= (loc<Ref> a@3@01 i@8@01) $Ref.null)))
  :pattern ((loc<Ref> a@3@01 i@8@01))
  :qid |val-permImpliesNonNull|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; this.size := 0
; [exec]
; this.elems := a
; [exec]
; fold acc(AList(this), write)
; [eval] 0 <= this.size
; [eval] this.size <= len(this.elems)
; [eval] len(this.elems)
(set-option :timeout 0)
(push) ; 3
(assert (not (<= 0 (len<Int> a@3@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 (len<Int> a@3@01)))
; [eval] 0 < len(this.elems)
; [eval] len(this.elems)
(push) ; 3
(assert (not (< 0 (len<Int> a@3@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (< 0 (len<Int> a@3@01)))
(declare-const i@12@01 Int)
(push) ; 3
; [eval] 0 <= i && i < len(this.elems)
; [eval] 0 <= i
(push) ; 4
; [then-branch: 1 | !(0 <= i@12@01) | live]
; [else-branch: 1 | 0 <= i@12@01 | live]
(push) ; 5
; [then-branch: 1 | !(0 <= i@12@01)]
(assert (not (<= 0 i@12@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 1 | 0 <= i@12@01]
(assert (<= 0 i@12@01))
; [eval] i < len(this.elems)
; [eval] len(this.elems)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@12@01) (not (<= 0 i@12@01))))
(assert (and (<= 0 i@12@01) (< i@12@01 (len<Int> a@3@01))))
; [eval] loc(this.elems, i)
(pop) ; 3
(declare-fun inv@13@01 ($Ref) Int)
(declare-fun img@14@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@12@01 Int)) (!
  (=>
    (and (<= 0 i@12@01) (< i@12@01 (len<Int> a@3@01)))
    (or (<= 0 i@12@01) (not (<= 0 i@12@01))))
  :pattern ((loc<Ref> a@3@01 i@12@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@12@01 Int) (i2@12@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@12@01) (< i1@12@01 (len<Int> a@3@01)))
      (and (<= 0 i2@12@01) (< i2@12@01 (len<Int> a@3@01)))
      (= (loc<Ref> a@3@01 i1@12@01) (loc<Ref> a@3@01 i2@12@01)))
    (= i1@12@01 i2@12@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@12@01 Int)) (!
  (=>
    (and (<= 0 i@12@01) (< i@12@01 (len<Int> a@3@01)))
    (and
      (= (inv@13@01 (loc<Ref> a@3@01 i@12@01)) i@12@01)
      (img@14@01 (loc<Ref> a@3@01 i@12@01))))
  :pattern ((loc<Ref> a@3@01 i@12@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@14@01 r)
      (and (<= 0 (inv@13@01 r)) (< (inv@13@01 r) (len<Int> a@3@01))))
    (= (loc<Ref> a@3@01 (inv@13@01 r)) r))
  :pattern ((inv@13@01 r))
  :qid |val-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@15@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@13@01 r)) (< (inv@13@01 r) (len<Int> a@3@01)))
      (img@14@01 r)
      (= r (loc<Ref> a@3@01 (inv@13@01 r))))
    ($Perm.min
      (ite
        (and
          (img@11@01 r)
          (and (<= 0 (inv@10@01 r)) (< (inv@10@01 r) (len<Int> a@3@01))))
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
          (img@11@01 r)
          (and (<= 0 (inv@10@01 r)) (< (inv@10@01 r) (len<Int> a@3@01))))
        $Perm.Write
        $Perm.No)
      (pTaken@15@01 r))
    $Perm.No)
  
  :qid |quant-u-18707|))))
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
      (and (<= 0 (inv@13@01 r)) (< (inv@13@01 r) (len<Int> a@3@01)))
      (img@14@01 r)
      (= r (loc<Ref> a@3@01 (inv@13@01 r))))
    (= (- $Perm.Write (pTaken@15@01 r)) $Perm.No))
  
  :qid |quant-u-18708|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@16@01 $FVF<val>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_val (as sm@16@01  $FVF<val>)))
      (and
        (and (<= 0 (inv@13@01 r)) (< (inv@13@01 r) (len<Int> a@3@01)))
        (img@14@01 r)))
    (=>
      (and
        (and (<= 0 (inv@13@01 r)) (< (inv@13@01 r) (len<Int> a@3@01)))
        (img@14@01 r))
      (Set_in r ($FVF.domain_val (as sm@16@01  $FVF<val>)))))
  :pattern ((Set_in r ($FVF.domain_val (as sm@16@01  $FVF<val>))))
  :qid |qp.fvfDomDef1|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@13@01 r)) (< (inv@13@01 r) (len<Int> a@3@01)))
        (img@14@01 r))
      (and
        (img@11@01 r)
        (and (<= 0 (inv@10@01 r)) (< (inv@10@01 r) (len<Int> a@3@01)))))
    (= ($FVF.lookup_val (as sm@16@01  $FVF<val>) r) ($FVF.lookup_val $t@9@01 r)))
  :pattern (($FVF.lookup_val (as sm@16@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val $t@9@01 r))
  :qid |qp.fvfValDef0|)))
(assert (AList%trigger ($Snap.combine
  ($SortWrappers.Array_To$Snap a@3@01)
  ($Snap.combine
    ($SortWrappers.IntTo$Snap 0)
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($SortWrappers.$FVF<val>To$Snap (as sm@16@01  $FVF<val>))))))) this@4@01))
; [eval] length(this) == 0
; [eval] length(this)
(set-option :timeout 0)
(push) ; 3
(assert (length%precondition ($Snap.combine
  ($SortWrappers.Array_To$Snap a@3@01)
  ($Snap.combine
    ($SortWrappers.IntTo$Snap 0)
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($SortWrappers.$FVF<val>To$Snap (as sm@16@01  $FVF<val>))))))) this@4@01))
(pop) ; 3
; Joined path conditions
(assert (length%precondition ($Snap.combine
  ($SortWrappers.Array_To$Snap a@3@01)
  ($Snap.combine
    ($SortWrappers.IntTo$Snap 0)
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($SortWrappers.$FVF<val>To$Snap (as sm@16@01  $FVF<val>))))))) this@4@01))
(push) ; 3
(assert (not (=
  (length ($Snap.combine
    ($SortWrappers.Array_To$Snap a@3@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap 0)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@16@01  $FVF<val>))))))) this@4@01)
  0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  (length ($Snap.combine
    ($SortWrappers.Array_To$Snap a@3@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap 0)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@16@01  $FVF<val>))))))) this@4@01)
  0))
(pop) ; 2
(pop) ; 1
; ---------- addAtEnd ----------
(declare-const this@17@01 $Ref)
(declare-const elem@18@01 Int)
(declare-const this@19@01 $Ref)
(declare-const elem@20@01 Int)
(push) ; 1
(declare-const $t@21@01 $Snap)
(assert (= $t@21@01 ($Snap.combine ($Snap.first $t@21@01) ($Snap.second $t@21@01))))
(assert (= ($Snap.second $t@21@01) $Snap.unit))
; [eval] 0 < length(this) ==> itemAt(this, length(this) - 1) <= elem
; [eval] 0 < length(this)
; [eval] length(this)
(push) ; 2
(assert (length%precondition ($Snap.first $t@21@01) this@19@01))
(pop) ; 2
; Joined path conditions
(assert (length%precondition ($Snap.first $t@21@01) this@19@01))
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not (< 0 (length ($Snap.first $t@21@01) this@19@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< 0 (length ($Snap.first $t@21@01) this@19@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 2 | 0 < length(First:($t@21@01), this@19@01) | live]
; [else-branch: 2 | !(0 < length(First:($t@21@01), this@19@01)) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 2 | 0 < length(First:($t@21@01), this@19@01)]
(assert (< 0 (length ($Snap.first $t@21@01) this@19@01)))
; [eval] itemAt(this, length(this) - 1) <= elem
; [eval] itemAt(this, length(this) - 1)
; [eval] length(this) - 1
; [eval] length(this)
(push) ; 4
(pop) ; 4
; Joined path conditions
(push) ; 4
; [eval] 0 <= index
(push) ; 5
(assert (not (<= 0 (- (length ($Snap.first $t@21@01) this@19@01) 1))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 (- (length ($Snap.first $t@21@01) this@19@01) 1)))
; [eval] index < length(this)
; [eval] length(this)
(push) ; 5
(pop) ; 5
; Joined path conditions
(push) ; 5
(assert (not (<
  (- (length ($Snap.first $t@21@01) this@19@01) 1)
  (length ($Snap.first $t@21@01) this@19@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (<
  (- (length ($Snap.first $t@21@01) this@19@01) 1)
  (length ($Snap.first $t@21@01) this@19@01)))
(assert (itemAt%precondition ($Snap.combine
  ($Snap.first $t@21@01)
  ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 (-
  (length ($Snap.first $t@21@01) this@19@01)
  1)))
(pop) ; 4
; Joined path conditions
(assert (and
  (<= 0 (- (length ($Snap.first $t@21@01) this@19@01) 1))
  (<
    (- (length ($Snap.first $t@21@01) this@19@01) 1)
    (length ($Snap.first $t@21@01) this@19@01))
  (itemAt%precondition ($Snap.combine
    ($Snap.first $t@21@01)
    ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 (-
    (length ($Snap.first $t@21@01) this@19@01)
    1))))
(pop) ; 3
(push) ; 3
; [else-branch: 2 | !(0 < length(First:($t@21@01), this@19@01))]
(assert (not (< 0 (length ($Snap.first $t@21@01) this@19@01))))
(pop) ; 3
(pop) ; 2
; Joined path conditions
(assert (=>
  (< 0 (length ($Snap.first $t@21@01) this@19@01))
  (and
    (< 0 (length ($Snap.first $t@21@01) this@19@01))
    (<= 0 (- (length ($Snap.first $t@21@01) this@19@01) 1))
    (<
      (- (length ($Snap.first $t@21@01) this@19@01) 1)
      (length ($Snap.first $t@21@01) this@19@01))
    (itemAt%precondition ($Snap.combine
      ($Snap.first $t@21@01)
      ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 (-
      (length ($Snap.first $t@21@01) this@19@01)
      1)))))
; Joined path conditions
(assert (or
  (not (< 0 (length ($Snap.first $t@21@01) this@19@01)))
  (< 0 (length ($Snap.first $t@21@01) this@19@01))))
(assert (=>
  (< 0 (length ($Snap.first $t@21@01) this@19@01))
  (<=
    (itemAt ($Snap.combine
      ($Snap.first $t@21@01)
      ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 (-
      (length ($Snap.first $t@21@01) this@19@01)
      1))
    elem@20@01)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@22@01 $Snap)
(assert (= $t@22@01 ($Snap.combine ($Snap.first $t@22@01) ($Snap.second $t@22@01))))
(assert (=
  ($Snap.second $t@22@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@22@01))
    ($Snap.second ($Snap.second $t@22@01)))))
(assert (= ($Snap.first ($Snap.second $t@22@01)) $Snap.unit))
; [eval] length(this) == old(length(this)) + 1
; [eval] length(this)
(push) ; 3
(assert (length%precondition ($Snap.first $t@22@01) this@19@01))
(pop) ; 3
; Joined path conditions
(assert (length%precondition ($Snap.first $t@22@01) this@19@01))
; [eval] old(length(this)) + 1
; [eval] old(length(this))
; [eval] length(this)
(push) ; 3
(pop) ; 3
; Joined path conditions
(assert (=
  (length ($Snap.first $t@22@01) this@19@01)
  (+ (length ($Snap.first $t@21@01) this@19@01) 1)))
(assert (=
  ($Snap.second ($Snap.second $t@22@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@22@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@22@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@22@01))) $Snap.unit))
; [eval] itemAt(this, length(this) - 1) == elem
; [eval] itemAt(this, length(this) - 1)
; [eval] length(this) - 1
; [eval] length(this)
(push) ; 3
(pop) ; 3
; Joined path conditions
(push) ; 3
; [eval] 0 <= index
(push) ; 4
(assert (not (<= 0 (- (length ($Snap.first $t@22@01) this@19@01) 1))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 (- (length ($Snap.first $t@22@01) this@19@01) 1)))
; [eval] index < length(this)
; [eval] length(this)
(push) ; 4
(pop) ; 4
; Joined path conditions
(push) ; 4
(assert (not (<
  (- (length ($Snap.first $t@22@01) this@19@01) 1)
  (length ($Snap.first $t@22@01) this@19@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (<
  (- (length ($Snap.first $t@22@01) this@19@01) 1)
  (length ($Snap.first $t@22@01) this@19@01)))
(assert (itemAt%precondition ($Snap.combine
  ($Snap.first $t@22@01)
  ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 (-
  (length ($Snap.first $t@22@01) this@19@01)
  1)))
(pop) ; 3
; Joined path conditions
(assert (and
  (<= 0 (- (length ($Snap.first $t@22@01) this@19@01) 1))
  (<
    (- (length ($Snap.first $t@22@01) this@19@01) 1)
    (length ($Snap.first $t@22@01) this@19@01))
  (itemAt%precondition ($Snap.combine
    ($Snap.first $t@22@01)
    ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 (-
    (length ($Snap.first $t@22@01) this@19@01)
    1))))
(assert (=
  (itemAt ($Snap.combine
    ($Snap.first $t@22@01)
    ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 (-
    (length ($Snap.first $t@22@01) this@19@01)
    1))
  elem@20@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@22@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@22@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@22@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@22@01))))
  $Snap.unit))
; [eval] (forall i: Int :: { old(itemAt(this, i)) } 0 <= i && i < old(length(this)) ==> itemAt(this, i) == old(itemAt(this, i)))
(declare-const i@23@01 Int)
(push) ; 3
; [eval] 0 <= i && i < old(length(this)) ==> itemAt(this, i) == old(itemAt(this, i))
; [eval] 0 <= i && i < old(length(this))
; [eval] 0 <= i
(push) ; 4
; [then-branch: 3 | !(0 <= i@23@01) | live]
; [else-branch: 3 | 0 <= i@23@01 | live]
(push) ; 5
; [then-branch: 3 | !(0 <= i@23@01)]
(assert (not (<= 0 i@23@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 3 | 0 <= i@23@01]
(assert (<= 0 i@23@01))
; [eval] i < old(length(this))
; [eval] old(length(this))
; [eval] length(this)
(push) ; 6
(pop) ; 6
; Joined path conditions
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@23@01) (not (<= 0 i@23@01))))
(push) ; 4
; [then-branch: 4 | 0 <= i@23@01 && i@23@01 < length(First:($t@21@01), this@19@01) | live]
; [else-branch: 4 | !(0 <= i@23@01 && i@23@01 < length(First:($t@21@01), this@19@01)) | live]
(push) ; 5
; [then-branch: 4 | 0 <= i@23@01 && i@23@01 < length(First:($t@21@01), this@19@01)]
(assert (and (<= 0 i@23@01) (< i@23@01 (length ($Snap.first $t@21@01) this@19@01))))
; [eval] itemAt(this, i) == old(itemAt(this, i))
; [eval] itemAt(this, i)
(push) ; 6
; [eval] 0 <= index
; [eval] index < length(this)
; [eval] length(this)
(push) ; 7
(pop) ; 7
; Joined path conditions
(push) ; 7
(assert (not (< i@23@01 (length ($Snap.first $t@22@01) this@19@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (< i@23@01 (length ($Snap.first $t@22@01) this@19@01)))
(assert (itemAt%precondition ($Snap.combine
  ($Snap.first $t@22@01)
  ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 i@23@01))
(pop) ; 6
; Joined path conditions
(assert (and
  (< i@23@01 (length ($Snap.first $t@22@01) this@19@01))
  (itemAt%precondition ($Snap.combine
    ($Snap.first $t@22@01)
    ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 i@23@01)))
; [eval] old(itemAt(this, i))
; [eval] itemAt(this, i)
(push) ; 6
; [eval] 0 <= index
; [eval] index < length(this)
; [eval] length(this)
(push) ; 7
(pop) ; 7
; Joined path conditions
(assert (itemAt%precondition ($Snap.combine
  ($Snap.first $t@21@01)
  ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 i@23@01))
(pop) ; 6
; Joined path conditions
(assert (itemAt%precondition ($Snap.combine
  ($Snap.first $t@21@01)
  ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 i@23@01))
(pop) ; 5
(push) ; 5
; [else-branch: 4 | !(0 <= i@23@01 && i@23@01 < length(First:($t@21@01), this@19@01))]
(assert (not (and (<= 0 i@23@01) (< i@23@01 (length ($Snap.first $t@21@01) this@19@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and (<= 0 i@23@01) (< i@23@01 (length ($Snap.first $t@21@01) this@19@01)))
  (and
    (<= 0 i@23@01)
    (< i@23@01 (length ($Snap.first $t@21@01) this@19@01))
    (< i@23@01 (length ($Snap.first $t@22@01) this@19@01))
    (itemAt%precondition ($Snap.combine
      ($Snap.first $t@22@01)
      ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 i@23@01)
    (itemAt%precondition ($Snap.combine
      ($Snap.first $t@21@01)
      ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 i@23@01))))
; Joined path conditions
(assert (or
  (not
    (and (<= 0 i@23@01) (< i@23@01 (length ($Snap.first $t@21@01) this@19@01))))
  (and (<= 0 i@23@01) (< i@23@01 (length ($Snap.first $t@21@01) this@19@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@23@01 Int)) (!
  (and
    (or (<= 0 i@23@01) (not (<= 0 i@23@01)))
    (=>
      (and (<= 0 i@23@01) (< i@23@01 (length ($Snap.first $t@21@01) this@19@01)))
      (and
        (<= 0 i@23@01)
        (< i@23@01 (length ($Snap.first $t@21@01) this@19@01))
        (< i@23@01 (length ($Snap.first $t@22@01) this@19@01))
        (itemAt%precondition ($Snap.combine
          ($Snap.first $t@22@01)
          ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 i@23@01)
        (itemAt%precondition ($Snap.combine
          ($Snap.first $t@21@01)
          ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 i@23@01)))
    (or
      (not
        (and
          (<= 0 i@23@01)
          (< i@23@01 (length ($Snap.first $t@21@01) this@19@01))))
      (and (<= 0 i@23@01) (< i@23@01 (length ($Snap.first $t@21@01) this@19@01)))))
  :pattern ((itemAt%limited ($Snap.combine
    ($Snap.first $t@21@01)
    ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 i@23@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@75@11@75@103-aux|)))
(assert (forall ((i@23@01 Int)) (!
  (=>
    (and (<= 0 i@23@01) (< i@23@01 (length ($Snap.first $t@21@01) this@19@01)))
    (=
      (itemAt ($Snap.combine
        ($Snap.first $t@22@01)
        ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 i@23@01)
      (itemAt ($Snap.combine
        ($Snap.first $t@21@01)
        ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 i@23@01)))
  :pattern ((itemAt%limited ($Snap.combine
    ($Snap.first $t@21@01)
    ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 i@23@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@75@11@75@103|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@22@01))))
  $Snap.unit))
; [eval] itemAt(this, old(length(this))) == elem
; [eval] itemAt(this, old(length(this)))
; [eval] old(length(this))
; [eval] length(this)
(push) ; 3
(pop) ; 3
; Joined path conditions
(push) ; 3
; [eval] 0 <= index
(push) ; 4
(assert (not (<= 0 (length ($Snap.first $t@21@01) this@19@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 (length ($Snap.first $t@21@01) this@19@01)))
; [eval] index < length(this)
; [eval] length(this)
(push) ; 4
(pop) ; 4
; Joined path conditions
(push) ; 4
(assert (not (<
  (length ($Snap.first $t@21@01) this@19@01)
  (length ($Snap.first $t@22@01) this@19@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (<
  (length ($Snap.first $t@21@01) this@19@01)
  (length ($Snap.first $t@22@01) this@19@01)))
(assert (itemAt%precondition ($Snap.combine
  ($Snap.first $t@22@01)
  ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 (length ($Snap.first $t@21@01) this@19@01)))
(pop) ; 3
; Joined path conditions
(assert (and
  (<= 0 (length ($Snap.first $t@21@01) this@19@01))
  (<
    (length ($Snap.first $t@21@01) this@19@01)
    (length ($Snap.first $t@22@01) this@19@01))
  (itemAt%precondition ($Snap.combine
    ($Snap.first $t@22@01)
    ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 (length ($Snap.first $t@21@01) this@19@01))))
(assert (=
  (itemAt ($Snap.combine
    ($Snap.first $t@22@01)
    ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 (length ($Snap.first $t@21@01) this@19@01))
  elem@20@01))
(pop) ; 2
(push) ; 2
; [exec]
; unfold acc(AList(this), write)
(assert (=
  ($Snap.first $t@21@01)
  ($Snap.combine
    ($Snap.first ($Snap.first $t@21@01))
    ($Snap.second ($Snap.first $t@21@01)))))
(assert (not (= this@19@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.first $t@21@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first $t@21@01)))
    ($Snap.second ($Snap.second ($Snap.first $t@21@01))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.first $t@21@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@21@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@21@01)))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@21@01)))) $Snap.unit))
; [eval] 0 <= this.size
(assert (<=
  0
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@21@01))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@21@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@21@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@21@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@21@01)))))
  $Snap.unit))
; [eval] this.size <= len(this.elems)
; [eval] len(this.elems)
(assert (<=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@21@01))))
  (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@21@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@21@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@21@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@21@01))))))
  $Snap.unit))
; [eval] 0 < len(this.elems)
; [eval] len(this.elems)
(assert (<
  0
  (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))))))
(declare-const i@24@01 Int)
(push) ; 3
; [eval] 0 <= i && i < len(this.elems)
; [eval] 0 <= i
(push) ; 4
; [then-branch: 5 | !(0 <= i@24@01) | live]
; [else-branch: 5 | 0 <= i@24@01 | live]
(push) ; 5
; [then-branch: 5 | !(0 <= i@24@01)]
(assert (not (<= 0 i@24@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 5 | 0 <= i@24@01]
(assert (<= 0 i@24@01))
; [eval] i < len(this.elems)
; [eval] len(this.elems)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@24@01) (not (<= 0 i@24@01))))
(assert (and
  (<= 0 i@24@01)
  (<
    i@24@01
    (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01)))))))
; [eval] loc(this.elems, i)
(pop) ; 3
(declare-fun inv@25@01 ($Ref) Int)
(declare-fun img@26@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@24@01 Int)) (!
  (=>
    (and
      (<= 0 i@24@01)
      (<
        i@24@01
        (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))))))
    (or (<= 0 i@24@01) (not (<= 0 i@24@01))))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))) i@24@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@24@01 Int) (i2@24@01 Int)) (!
  (=>
    (and
      (and
        (<= 0 i1@24@01)
        (<
          i1@24@01
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))))))
      (and
        (<= 0 i2@24@01)
        (<
          i2@24@01
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))))))
      (=
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))) i1@24@01)
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))) i2@24@01)))
    (= i1@24@01 i2@24@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@24@01 Int)) (!
  (=>
    (and
      (<= 0 i@24@01)
      (<
        i@24@01
        (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))))))
    (and
      (=
        (inv@25@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))) i@24@01))
        i@24@01)
      (img@26@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))) i@24@01))))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))) i@24@01))
  :qid |quant-u-18710|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@26@01 r)
      (and
        (<= 0 (inv@25@01 r))
        (<
          (inv@25@01 r)
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01)))))))
    (=
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))) (inv@25@01 r))
      r))
  :pattern ((inv@25@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@24@01 Int)) (!
  (=>
    (and
      (<= 0 i@24@01)
      (<
        i@24@01
        (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))))))
    (not
      (=
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))) i@24@01)
        $Ref.null)))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))) i@24@01))
  :qid |val-permImpliesNonNull|)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (AList%trigger ($Snap.first $t@21@01) this@19@01))
; [eval] this.size == len(this.elems)
; [eval] len(this.elems)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@21@01))))
    (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@21@01))))
  (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 6 | First:(Second:(First:($t@21@01))) == len[Int](First:(First:($t@21@01))) | live]
; [else-branch: 6 | First:(Second:(First:($t@21@01))) != len[Int](First:(First:($t@21@01))) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 6 | First:(Second:(First:($t@21@01))) == len[Int](First:(First:($t@21@01)))]
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@21@01))))
  (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))))))
; [exec]
; var a: Array
(declare-const a@27@01 Array_)
; [exec]
; inhale len(a) == len(this.elems) * 2 &&
;   (forall i: Int ::0 <= i && i < len(a) ==> acc(loc(a, i).val, write))
(declare-const $t@28@01 $Snap)
(assert (= $t@28@01 ($Snap.combine ($Snap.first $t@28@01) ($Snap.second $t@28@01))))
(assert (= ($Snap.first $t@28@01) $Snap.unit))
; [eval] len(a) == len(this.elems) * 2
; [eval] len(a)
; [eval] len(this.elems) * 2
; [eval] len(this.elems)
(assert (=
  (len<Int> a@27@01)
  (*
    (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))))
    2)))
(declare-const i@29@01 Int)
(push) ; 4
; [eval] 0 <= i && i < len(a)
; [eval] 0 <= i
(push) ; 5
; [then-branch: 7 | !(0 <= i@29@01) | live]
; [else-branch: 7 | 0 <= i@29@01 | live]
(push) ; 6
; [then-branch: 7 | !(0 <= i@29@01)]
(assert (not (<= 0 i@29@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 7 | 0 <= i@29@01]
(assert (<= 0 i@29@01))
; [eval] i < len(a)
; [eval] len(a)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@29@01) (not (<= 0 i@29@01))))
(assert (and (<= 0 i@29@01) (< i@29@01 (len<Int> a@27@01))))
; [eval] loc(a, i)
(pop) ; 4
(declare-fun inv@30@01 ($Ref) Int)
(declare-fun img@31@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@29@01 Int)) (!
  (=>
    (and (<= 0 i@29@01) (< i@29@01 (len<Int> a@27@01)))
    (or (<= 0 i@29@01) (not (<= 0 i@29@01))))
  :pattern ((loc<Ref> a@27@01 i@29@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@29@01 Int) (i2@29@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@29@01) (< i1@29@01 (len<Int> a@27@01)))
      (and (<= 0 i2@29@01) (< i2@29@01 (len<Int> a@27@01)))
      (= (loc<Ref> a@27@01 i1@29@01) (loc<Ref> a@27@01 i2@29@01)))
    (= i1@29@01 i2@29@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@29@01 Int)) (!
  (=>
    (and (<= 0 i@29@01) (< i@29@01 (len<Int> a@27@01)))
    (and
      (= (inv@30@01 (loc<Ref> a@27@01 i@29@01)) i@29@01)
      (img@31@01 (loc<Ref> a@27@01 i@29@01))))
  :pattern ((loc<Ref> a@27@01 i@29@01))
  :qid |quant-u-18712|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@31@01 r)
      (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (len<Int> a@27@01))))
    (= (loc<Ref> a@27@01 (inv@30@01 r)) r))
  :pattern ((inv@30@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@29@01 Int)) (!
  (=>
    (and (<= 0 i@29@01) (< i@29@01 (len<Int> a@27@01)))
    (not (= (loc<Ref> a@27@01 i@29@01) $Ref.null)))
  :pattern ((loc<Ref> a@27@01 i@29@01))
  :qid |val-permImpliesNonNull|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (=
      (loc<Ref> a@27@01 i@29@01)
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))) i@24@01))
    (=
      (and
        (img@31@01 r)
        (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (len<Int> a@27@01))))
      (and
        (img@26@01 r)
        (and
          (<= 0 (inv@25@01 r))
          (<
            (inv@25@01 r)
            (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01)))))))))
  
  :qid |quant-u-18713|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall i: Int ::
;     { loc(a, i) }
;     { loc(this.elems, i) }
;     0 <= i && i < len(this.elems) ==>
;     loc(a, i).val == loc(this.elems, i).val)
(declare-const $t@32@01 $Snap)
(assert (= $t@32@01 $Snap.unit))
; [eval] (forall i: Int :: { loc(a, i) } { loc(this.elems, i) } 0 <= i && i < len(this.elems) ==> loc(a, i).val == loc(this.elems, i).val)
(declare-const i@33@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] 0 <= i && i < len(this.elems) ==> loc(a, i).val == loc(this.elems, i).val
; [eval] 0 <= i && i < len(this.elems)
; [eval] 0 <= i
(push) ; 5
; [then-branch: 8 | !(0 <= i@33@01) | live]
; [else-branch: 8 | 0 <= i@33@01 | live]
(push) ; 6
; [then-branch: 8 | !(0 <= i@33@01)]
(assert (not (<= 0 i@33@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 8 | 0 <= i@33@01]
(assert (<= 0 i@33@01))
; [eval] i < len(this.elems)
; [eval] len(this.elems)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@33@01) (not (<= 0 i@33@01))))
(push) ; 5
; [then-branch: 9 | 0 <= i@33@01 && i@33@01 < len[Int](First:(First:($t@21@01))) | live]
; [else-branch: 9 | !(0 <= i@33@01 && i@33@01 < len[Int](First:(First:($t@21@01)))) | live]
(push) ; 6
; [then-branch: 9 | 0 <= i@33@01 && i@33@01 < len[Int](First:(First:($t@21@01)))]
(assert (and
  (<= 0 i@33@01)
  (<
    i@33@01
    (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01)))))))
; [eval] loc(a, i).val == loc(this.elems, i).val
; [eval] loc(a, i)
(declare-const sm@34@01 $FVF<val>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@26@01 r)
      (and
        (<= 0 (inv@25@01 r))
        (<
          (inv@25@01 r)
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01)))))))
    (=
      ($FVF.lookup_val (as sm@34@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@21@01))))))) r)))
  :pattern (($FVF.lookup_val (as sm@34@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@21@01))))))) r))
  :qid |qp.fvfValDef2|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@31@01 r)
      (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (len<Int> a@27@01))))
    (=
      ($FVF.lookup_val (as sm@34@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@28@01)) r)))
  :pattern (($FVF.lookup_val (as sm@34@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@28@01)) r))
  :qid |qp.fvfValDef3|)))
(declare-const pm@35@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@35@01  $FPM) r)
    (+
      (ite
        (and
          (img@26@01 r)
          (and
            (<= 0 (inv@25@01 r))
            (<
              (inv@25@01 r)
              (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01)))))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@31@01 r)
          (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (len<Int> a@27@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@35@01  $FPM) r))
  :qid |qp.resPrmSumDef4|)))
(push) ; 7
(assert (not (< $Perm.No ($FVF.perm_val (as pm@35@01  $FPM) (loc<Ref> a@27@01 i@33@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] loc(this.elems, i)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@26@01 r)
        (and
          (<= 0 (inv@25@01 r))
          (<
            (inv@25@01 r)
            (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01)))))))
      (=
        ($FVF.lookup_val (as sm@34@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@21@01))))))) r)))
    :pattern (($FVF.lookup_val (as sm@34@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@21@01))))))) r))
    :qid |qp.fvfValDef2|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@31@01 r)
        (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (len<Int> a@27@01))))
      (=
        ($FVF.lookup_val (as sm@34@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@28@01)) r)))
    :pattern (($FVF.lookup_val (as sm@34@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@28@01)) r))
    :qid |qp.fvfValDef3|))))
(push) ; 7
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@26@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))) i@33@01))
        (and
          (<=
            0
            (inv@25@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))) i@33@01)))
          (<
            (inv@25@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))) i@33@01))
            (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01)))))))
      $Perm.Write
      $Perm.No)
    (ite
      (and
        (img@31@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))) i@33@01))
        (and
          (<=
            0
            (inv@30@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))) i@33@01)))
          (<
            (inv@30@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))) i@33@01))
            (len<Int> a@27@01))))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 9 | !(0 <= i@33@01 && i@33@01 < len[Int](First:(First:($t@21@01))))]
(assert (not
  (and
    (<= 0 i@33@01)
    (<
      i@33@01
      (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@26@01 r)
      (and
        (<= 0 (inv@25@01 r))
        (<
          (inv@25@01 r)
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01)))))))
    (=
      ($FVF.lookup_val (as sm@34@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@21@01))))))) r)))
  :pattern (($FVF.lookup_val (as sm@34@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@21@01))))))) r))
  :qid |qp.fvfValDef2|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@31@01 r)
      (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (len<Int> a@27@01))))
    (=
      ($FVF.lookup_val (as sm@34@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@28@01)) r)))
  :pattern (($FVF.lookup_val (as sm@34@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@28@01)) r))
  :qid |qp.fvfValDef3|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@35@01  $FPM) r)
    (+
      (ite
        (and
          (img@26@01 r)
          (and
            (<= 0 (inv@25@01 r))
            (<
              (inv@25@01 r)
              (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01)))))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@31@01 r)
          (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (len<Int> a@27@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@35@01  $FPM) r))
  :qid |qp.resPrmSumDef4|)))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 i@33@01)
      (<
        i@33@01
        (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01)))))))
  (and
    (<= 0 i@33@01)
    (<
      i@33@01
      (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@26@01 r)
      (and
        (<= 0 (inv@25@01 r))
        (<
          (inv@25@01 r)
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01)))))))
    (=
      ($FVF.lookup_val (as sm@34@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@21@01))))))) r)))
  :pattern (($FVF.lookup_val (as sm@34@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@21@01))))))) r))
  :qid |qp.fvfValDef2|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@31@01 r)
      (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (len<Int> a@27@01))))
    (=
      ($FVF.lookup_val (as sm@34@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@28@01)) r)))
  :pattern (($FVF.lookup_val (as sm@34@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@28@01)) r))
  :qid |qp.fvfValDef3|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@35@01  $FPM) r)
    (+
      (ite
        (and
          (img@26@01 r)
          (and
            (<= 0 (inv@25@01 r))
            (<
              (inv@25@01 r)
              (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01)))))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@31@01 r)
          (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (len<Int> a@27@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@35@01  $FPM) r))
  :qid |qp.resPrmSumDef4|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@33@01 Int)) (!
  (and
    (or (<= 0 i@33@01) (not (<= 0 i@33@01)))
    (or
      (not
        (and
          (<= 0 i@33@01)
          (<
            i@33@01
            (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01)))))))
      (and
        (<= 0 i@33@01)
        (<
          i@33@01
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))))))))
  :pattern ((loc<Ref> a@27@01 i@33@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@84@12@84@99-aux|)))
(assert (forall ((i@33@01 Int)) (!
  (and
    (or (<= 0 i@33@01) (not (<= 0 i@33@01)))
    (or
      (not
        (and
          (<= 0 i@33@01)
          (<
            i@33@01
            (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01)))))))
      (and
        (<= 0 i@33@01)
        (<
          i@33@01
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))))))))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))) i@33@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@84@12@84@99-aux|)))
(assert (forall ((i@33@01 Int)) (!
  (=>
    (and
      (<= 0 i@33@01)
      (<
        i@33@01
        (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))))))
    (=
      ($FVF.lookup_val (as sm@34@01  $FVF<val>) (loc<Ref> a@27@01 i@33@01))
      ($FVF.lookup_val (as sm@34@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))) i@33@01))))
  :pattern ((loc<Ref> a@27@01 i@33@01))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))) i@33@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@84@12@84@99|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; this.elems := a
; [exec]
; loc(this.elems, this.size).val := elem
; [eval] loc(this.elems, this.size)
; Precomputing data for removing quantified permissions
(define-fun pTaken@36@01 ((r $Ref)) $Perm
  (ite
    (=
      r
      (loc<Ref> a@27@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@21@01))))))
    ($Perm.min
      (ite
        (and
          (img@26@01 r)
          (and
            (<= 0 (inv@25@01 r))
            (<
              (inv@25@01 r)
              (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01)))))))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@37@01 ((r $Ref)) $Perm
  (ite
    (=
      r
      (loc<Ref> a@27@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@21@01))))))
    ($Perm.min
      (ite
        (and
          (img@31@01 r)
          (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (len<Int> a@27@01))))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@36@01 r)))
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
          (img@26@01 r)
          (and
            (<= 0 (inv@25@01 r))
            (<
              (inv@25@01 r)
              (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01)))))))
        $Perm.Write
        $Perm.No)
      (pTaken@36@01 r))
    $Perm.No)
  
  :qid |quant-u-18715|))))
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
  
  :qid |quant-u-18716|))))
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
    (=
      r
      (loc<Ref> a@27@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@21@01))))))
    (= (- $Perm.Write (pTaken@36@01 r)) $Perm.No))
  
  :qid |quant-u-18717|))))
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
          (img@31@01 r)
          (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (len<Int> a@27@01))))
        $Perm.Write
        $Perm.No)
      (pTaken@37@01 r))
    $Perm.No)
  
  :qid |quant-u-18718|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@37@01 r) $Perm.No)
  
  :qid |quant-u-18719|))))
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
    (=
      r
      (loc<Ref> a@27@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@21@01))))))
    (= (- (- $Perm.Write (pTaken@36@01 r)) (pTaken@37@01 r)) $Perm.No))
  
  :qid |quant-u-18720|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@38@01 $FVF<val>)
; Definitional axioms for singleton-FVF's value
(assert (=
  ($FVF.lookup_val (as sm@38@01  $FVF<val>) (loc<Ref> a@27@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@21@01))))))
  elem@20@01))
; [exec]
; this.size := this.size + 1
; [eval] this.size + 1
(declare-const size@39@01 Int)
(assert (=
  size@39@01
  (+
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@21@01))))
    1)))
; [exec]
; fold acc(AList(this), write)
; [eval] 0 <= this.size
(set-option :timeout 0)
(push) ; 4
(assert (not (<= 0 size@39@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 size@39@01))
; [eval] this.size <= len(this.elems)
; [eval] len(this.elems)
(push) ; 4
(assert (not (<= size@39@01 (len<Int> a@27@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (<= size@39@01 (len<Int> a@27@01)))
; [eval] 0 < len(this.elems)
; [eval] len(this.elems)
(push) ; 4
(assert (not (< 0 (len<Int> a@27@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< 0 (len<Int> a@27@01)))
(declare-const i@40@01 Int)
(push) ; 4
; [eval] 0 <= i && i < len(this.elems)
; [eval] 0 <= i
(push) ; 5
; [then-branch: 10 | !(0 <= i@40@01) | live]
; [else-branch: 10 | 0 <= i@40@01 | live]
(push) ; 6
; [then-branch: 10 | !(0 <= i@40@01)]
(assert (not (<= 0 i@40@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 10 | 0 <= i@40@01]
(assert (<= 0 i@40@01))
; [eval] i < len(this.elems)
; [eval] len(this.elems)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@40@01) (not (<= 0 i@40@01))))
(assert (and (<= 0 i@40@01) (< i@40@01 (len<Int> a@27@01))))
; [eval] loc(this.elems, i)
(pop) ; 4
(declare-fun inv@41@01 ($Ref) Int)
(declare-fun img@42@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@40@01 Int)) (!
  (=>
    (and (<= 0 i@40@01) (< i@40@01 (len<Int> a@27@01)))
    (or (<= 0 i@40@01) (not (<= 0 i@40@01))))
  :pattern ((loc<Ref> a@27@01 i@40@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@40@01 Int) (i2@40@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@40@01) (< i1@40@01 (len<Int> a@27@01)))
      (and (<= 0 i2@40@01) (< i2@40@01 (len<Int> a@27@01)))
      (= (loc<Ref> a@27@01 i1@40@01) (loc<Ref> a@27@01 i2@40@01)))
    (= i1@40@01 i2@40@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@40@01 Int)) (!
  (=>
    (and (<= 0 i@40@01) (< i@40@01 (len<Int> a@27@01)))
    (and
      (= (inv@41@01 (loc<Ref> a@27@01 i@40@01)) i@40@01)
      (img@42@01 (loc<Ref> a@27@01 i@40@01))))
  :pattern ((loc<Ref> a@27@01 i@40@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@42@01 r)
      (and (<= 0 (inv@41@01 r)) (< (inv@41@01 r) (len<Int> a@27@01))))
    (= (loc<Ref> a@27@01 (inv@41@01 r)) r))
  :pattern ((inv@41@01 r))
  :qid |val-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@40@01 Int)) (!
  (=
    (loc<Ref> a@27@01 i@40@01)
    (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))) i@40@01))
  
  :qid |quant-u-18722|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@43@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@41@01 r)) (< (inv@41@01 r) (len<Int> a@27@01)))
      (img@42@01 r)
      (= r (loc<Ref> a@27@01 (inv@41@01 r))))
    ($Perm.min
      (ite
        (and
          (img@31@01 r)
          (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (len<Int> a@27@01))))
        (- $Perm.Write (pTaken@37@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@44@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@41@01 r)) (< (inv@41@01 r) (len<Int> a@27@01)))
      (img@42@01 r)
      (= r (loc<Ref> a@27@01 (inv@41@01 r))))
    ($Perm.min
      (ite
        (=
          r
          (loc<Ref> a@27@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@21@01))))))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@43@01 r)))
    $Perm.No))
(define-fun pTaken@45@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@41@01 r)) (< (inv@41@01 r) (len<Int> a@27@01)))
      (img@42@01 r)
      (= r (loc<Ref> a@27@01 (inv@41@01 r))))
    ($Perm.min
      (ite
        (and
          (img@26@01 r)
          (and
            (<= 0 (inv@25@01 r))
            (<
              (inv@25@01 r)
              (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01)))))))
        $Perm.Write
        $Perm.No)
      (- (- $Perm.Write (pTaken@43@01 r)) (pTaken@44@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
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
          (img@31@01 r)
          (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (len<Int> a@27@01))))
        (- $Perm.Write (pTaken@37@01 r))
        $Perm.No)
      (pTaken@43@01 r))
    $Perm.No)
  
  :qid |quant-u-18724|))))
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
      (and (<= 0 (inv@41@01 r)) (< (inv@41@01 r) (len<Int> a@27@01)))
      (img@42@01 r)
      (= r (loc<Ref> a@27@01 (inv@41@01 r))))
    (= (- $Perm.Write (pTaken@43@01 r)) $Perm.No))
  
  :qid |quant-u-18725|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (=
  (-
    (ite
      (=
        (loc<Ref> a@27@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@21@01)))))
        (loc<Ref> a@27@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@21@01))))))
      $Perm.Write
      $Perm.No)
    (pTaken@44@01 (loc<Ref> a@27@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@21@01)))))))
  $Perm.No)))
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
      (and (<= 0 (inv@41@01 r)) (< (inv@41@01 r) (len<Int> a@27@01)))
      (img@42@01 r)
      (= r (loc<Ref> a@27@01 (inv@41@01 r))))
    (= (- (- $Perm.Write (pTaken@43@01 r)) (pTaken@44@01 r)) $Perm.No))
  
  :qid |quant-u-18727|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@46@01 $FVF<val>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_val (as sm@46@01  $FVF<val>)))
      (and
        (and (<= 0 (inv@41@01 r)) (< (inv@41@01 r) (len<Int> a@27@01)))
        (img@42@01 r)))
    (=>
      (and
        (and (<= 0 (inv@41@01 r)) (< (inv@41@01 r) (len<Int> a@27@01)))
        (img@42@01 r))
      (Set_in r ($FVF.domain_val (as sm@46@01  $FVF<val>)))))
  :pattern ((Set_in r ($FVF.domain_val (as sm@46@01  $FVF<val>))))
  :qid |qp.fvfDomDef8|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@41@01 r)) (< (inv@41@01 r) (len<Int> a@27@01)))
        (img@42@01 r))
      (=
        r
        (loc<Ref> a@27@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@21@01)))))))
    (=
      ($FVF.lookup_val (as sm@46@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@38@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@46@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@38@01  $FVF<val>) r))
  :qid |qp.fvfValDef5|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@41@01 r)) (< (inv@41@01 r) (len<Int> a@27@01)))
        (img@42@01 r))
      (ite
        (and
          (img@31@01 r)
          (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (len<Int> a@27@01))))
        (< $Perm.No (- $Perm.Write (pTaken@37@01 r)))
        false))
    (=
      ($FVF.lookup_val (as sm@46@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@28@01)) r)))
  :pattern (($FVF.lookup_val (as sm@46@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@28@01)) r))
  :qid |qp.fvfValDef6|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@41@01 r)) (< (inv@41@01 r) (len<Int> a@27@01)))
        (img@42@01 r))
      (and
        (img@26@01 r)
        (and
          (<= 0 (inv@25@01 r))
          (<
            (inv@25@01 r)
            (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))))))))
    (=
      ($FVF.lookup_val (as sm@46@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@21@01))))))) r)))
  :pattern (($FVF.lookup_val (as sm@46@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@21@01))))))) r))
  :qid |qp.fvfValDef7|)))
(assert (AList%trigger ($Snap.combine
  ($SortWrappers.Array_To$Snap a@27@01)
  ($Snap.combine
    ($SortWrappers.IntTo$Snap size@39@01)
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($SortWrappers.$FVF<val>To$Snap (as sm@46@01  $FVF<val>))))))) this@19@01))
; [eval] length(this) == old(length(this)) + 1
; [eval] length(this)
(set-option :timeout 0)
(push) ; 4
(assert (length%precondition ($Snap.combine
  ($SortWrappers.Array_To$Snap a@27@01)
  ($Snap.combine
    ($SortWrappers.IntTo$Snap size@39@01)
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($SortWrappers.$FVF<val>To$Snap (as sm@46@01  $FVF<val>))))))) this@19@01))
(pop) ; 4
; Joined path conditions
(assert (length%precondition ($Snap.combine
  ($SortWrappers.Array_To$Snap a@27@01)
  ($Snap.combine
    ($SortWrappers.IntTo$Snap size@39@01)
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($SortWrappers.$FVF<val>To$Snap (as sm@46@01  $FVF<val>))))))) this@19@01))
; [eval] old(length(this)) + 1
; [eval] old(length(this))
; [eval] length(this)
(push) ; 4
(pop) ; 4
; Joined path conditions
(push) ; 4
(assert (not (=
  (length ($Snap.combine
    ($SortWrappers.Array_To$Snap a@27@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap size@39@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@46@01  $FVF<val>))))))) this@19@01)
  (+ (length ($Snap.first $t@21@01) this@19@01) 1))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  (length ($Snap.combine
    ($SortWrappers.Array_To$Snap a@27@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap size@39@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@46@01  $FVF<val>))))))) this@19@01)
  (+ (length ($Snap.first $t@21@01) this@19@01) 1)))
; [eval] itemAt(this, length(this) - 1) == elem
; [eval] itemAt(this, length(this) - 1)
; [eval] length(this) - 1
; [eval] length(this)
(push) ; 4
(pop) ; 4
; Joined path conditions
(push) ; 4
; [eval] 0 <= index
(push) ; 5
(assert (not (<=
  0
  (-
    (length ($Snap.combine
      ($SortWrappers.Array_To$Snap a@27@01)
      ($Snap.combine
        ($SortWrappers.IntTo$Snap size@39@01)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@46@01  $FVF<val>))))))) this@19@01)
    1))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (<=
  0
  (-
    (length ($Snap.combine
      ($SortWrappers.Array_To$Snap a@27@01)
      ($Snap.combine
        ($SortWrappers.IntTo$Snap size@39@01)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@46@01  $FVF<val>))))))) this@19@01)
    1)))
; [eval] index < length(this)
; [eval] length(this)
(push) ; 5
(pop) ; 5
; Joined path conditions
(push) ; 5
(assert (not (<
  (-
    (length ($Snap.combine
      ($SortWrappers.Array_To$Snap a@27@01)
      ($Snap.combine
        ($SortWrappers.IntTo$Snap size@39@01)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@46@01  $FVF<val>))))))) this@19@01)
    1)
  (length ($Snap.combine
    ($SortWrappers.Array_To$Snap a@27@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap size@39@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@46@01  $FVF<val>))))))) this@19@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (<
  (-
    (length ($Snap.combine
      ($SortWrappers.Array_To$Snap a@27@01)
      ($Snap.combine
        ($SortWrappers.IntTo$Snap size@39@01)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@46@01  $FVF<val>))))))) this@19@01)
    1)
  (length ($Snap.combine
    ($SortWrappers.Array_To$Snap a@27@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap size@39@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@46@01  $FVF<val>))))))) this@19@01)))
(assert (itemAt%precondition ($Snap.combine
  ($Snap.combine
    ($SortWrappers.Array_To$Snap a@27@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap size@39@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@46@01  $FVF<val>)))))))
  ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 (-
  (length ($Snap.combine
    ($SortWrappers.Array_To$Snap a@27@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap size@39@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@46@01  $FVF<val>))))))) this@19@01)
  1)))
(pop) ; 4
; Joined path conditions
(assert (and
  (<=
    0
    (-
      (length ($Snap.combine
        ($SortWrappers.Array_To$Snap a@27@01)
        ($Snap.combine
          ($SortWrappers.IntTo$Snap size@39@01)
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($SortWrappers.$FVF<val>To$Snap (as sm@46@01  $FVF<val>))))))) this@19@01)
      1))
  (<
    (-
      (length ($Snap.combine
        ($SortWrappers.Array_To$Snap a@27@01)
        ($Snap.combine
          ($SortWrappers.IntTo$Snap size@39@01)
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($SortWrappers.$FVF<val>To$Snap (as sm@46@01  $FVF<val>))))))) this@19@01)
      1)
    (length ($Snap.combine
      ($SortWrappers.Array_To$Snap a@27@01)
      ($Snap.combine
        ($SortWrappers.IntTo$Snap size@39@01)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@46@01  $FVF<val>))))))) this@19@01))
  (itemAt%precondition ($Snap.combine
    ($Snap.combine
      ($SortWrappers.Array_To$Snap a@27@01)
      ($Snap.combine
        ($SortWrappers.IntTo$Snap size@39@01)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@46@01  $FVF<val>)))))))
    ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 (-
    (length ($Snap.combine
      ($SortWrappers.Array_To$Snap a@27@01)
      ($Snap.combine
        ($SortWrappers.IntTo$Snap size@39@01)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@46@01  $FVF<val>))))))) this@19@01)
    1))))
(push) ; 4
(assert (not (=
  (itemAt ($Snap.combine
    ($Snap.combine
      ($SortWrappers.Array_To$Snap a@27@01)
      ($Snap.combine
        ($SortWrappers.IntTo$Snap size@39@01)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@46@01  $FVF<val>)))))))
    ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 (-
    (length ($Snap.combine
      ($SortWrappers.Array_To$Snap a@27@01)
      ($Snap.combine
        ($SortWrappers.IntTo$Snap size@39@01)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@46@01  $FVF<val>))))))) this@19@01)
    1))
  elem@20@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  (itemAt ($Snap.combine
    ($Snap.combine
      ($SortWrappers.Array_To$Snap a@27@01)
      ($Snap.combine
        ($SortWrappers.IntTo$Snap size@39@01)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@46@01  $FVF<val>)))))))
    ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 (-
    (length ($Snap.combine
      ($SortWrappers.Array_To$Snap a@27@01)
      ($Snap.combine
        ($SortWrappers.IntTo$Snap size@39@01)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@46@01  $FVF<val>))))))) this@19@01)
    1))
  elem@20@01))
; [eval] (forall i: Int :: { old(itemAt(this, i)) } 0 <= i && i < old(length(this)) ==> itemAt(this, i) == old(itemAt(this, i)))
(declare-const i@47@01 Int)
(push) ; 4
; [eval] 0 <= i && i < old(length(this)) ==> itemAt(this, i) == old(itemAt(this, i))
; [eval] 0 <= i && i < old(length(this))
; [eval] 0 <= i
(push) ; 5
; [then-branch: 11 | !(0 <= i@47@01) | live]
; [else-branch: 11 | 0 <= i@47@01 | live]
(push) ; 6
; [then-branch: 11 | !(0 <= i@47@01)]
(assert (not (<= 0 i@47@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 11 | 0 <= i@47@01]
(assert (<= 0 i@47@01))
; [eval] i < old(length(this))
; [eval] old(length(this))
; [eval] length(this)
(push) ; 7
(pop) ; 7
; Joined path conditions
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@47@01) (not (<= 0 i@47@01))))
(push) ; 5
; [then-branch: 12 | 0 <= i@47@01 && i@47@01 < length(First:($t@21@01), this@19@01) | live]
; [else-branch: 12 | !(0 <= i@47@01 && i@47@01 < length(First:($t@21@01), this@19@01)) | live]
(push) ; 6
; [then-branch: 12 | 0 <= i@47@01 && i@47@01 < length(First:($t@21@01), this@19@01)]
(assert (and (<= 0 i@47@01) (< i@47@01 (length ($Snap.first $t@21@01) this@19@01))))
; [eval] itemAt(this, i) == old(itemAt(this, i))
; [eval] itemAt(this, i)
(push) ; 7
; [eval] 0 <= index
; [eval] index < length(this)
; [eval] length(this)
(push) ; 8
(pop) ; 8
; Joined path conditions
(push) ; 8
(assert (not (<
  i@47@01
  (length ($Snap.combine
    ($SortWrappers.Array_To$Snap a@27@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap size@39@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@46@01  $FVF<val>))))))) this@19@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (<
  i@47@01
  (length ($Snap.combine
    ($SortWrappers.Array_To$Snap a@27@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap size@39@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@46@01  $FVF<val>))))))) this@19@01)))
(assert (itemAt%precondition ($Snap.combine
  ($Snap.combine
    ($SortWrappers.Array_To$Snap a@27@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap size@39@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@46@01  $FVF<val>)))))))
  ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 i@47@01))
(pop) ; 7
; Joined path conditions
(assert (and
  (<
    i@47@01
    (length ($Snap.combine
      ($SortWrappers.Array_To$Snap a@27@01)
      ($Snap.combine
        ($SortWrappers.IntTo$Snap size@39@01)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@46@01  $FVF<val>))))))) this@19@01))
  (itemAt%precondition ($Snap.combine
    ($Snap.combine
      ($SortWrappers.Array_To$Snap a@27@01)
      ($Snap.combine
        ($SortWrappers.IntTo$Snap size@39@01)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@46@01  $FVF<val>)))))))
    ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 i@47@01)))
; [eval] old(itemAt(this, i))
; [eval] itemAt(this, i)
(push) ; 7
; [eval] 0 <= index
; [eval] index < length(this)
; [eval] length(this)
(push) ; 8
(pop) ; 8
; Joined path conditions
(assert (itemAt%precondition ($Snap.combine
  ($Snap.first $t@21@01)
  ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 i@47@01))
(pop) ; 7
; Joined path conditions
(assert (itemAt%precondition ($Snap.combine
  ($Snap.first $t@21@01)
  ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 i@47@01))
(pop) ; 6
(push) ; 6
; [else-branch: 12 | !(0 <= i@47@01 && i@47@01 < length(First:($t@21@01), this@19@01))]
(assert (not (and (<= 0 i@47@01) (< i@47@01 (length ($Snap.first $t@21@01) this@19@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and (<= 0 i@47@01) (< i@47@01 (length ($Snap.first $t@21@01) this@19@01)))
  (and
    (<= 0 i@47@01)
    (< i@47@01 (length ($Snap.first $t@21@01) this@19@01))
    (<
      i@47@01
      (length ($Snap.combine
        ($SortWrappers.Array_To$Snap a@27@01)
        ($Snap.combine
          ($SortWrappers.IntTo$Snap size@39@01)
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($SortWrappers.$FVF<val>To$Snap (as sm@46@01  $FVF<val>))))))) this@19@01))
    (itemAt%precondition ($Snap.combine
      ($Snap.combine
        ($SortWrappers.Array_To$Snap a@27@01)
        ($Snap.combine
          ($SortWrappers.IntTo$Snap size@39@01)
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($SortWrappers.$FVF<val>To$Snap (as sm@46@01  $FVF<val>)))))))
      ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 i@47@01)
    (itemAt%precondition ($Snap.combine
      ($Snap.first $t@21@01)
      ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 i@47@01))))
; Joined path conditions
(assert (or
  (not
    (and (<= 0 i@47@01) (< i@47@01 (length ($Snap.first $t@21@01) this@19@01))))
  (and (<= 0 i@47@01) (< i@47@01 (length ($Snap.first $t@21@01) this@19@01)))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@47@01 Int)) (!
  (and
    (or (<= 0 i@47@01) (not (<= 0 i@47@01)))
    (=>
      (and (<= 0 i@47@01) (< i@47@01 (length ($Snap.first $t@21@01) this@19@01)))
      (and
        (<= 0 i@47@01)
        (< i@47@01 (length ($Snap.first $t@21@01) this@19@01))
        (<
          i@47@01
          (length ($Snap.combine
            ($SortWrappers.Array_To$Snap a@27@01)
            ($Snap.combine
              ($SortWrappers.IntTo$Snap size@39@01)
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($SortWrappers.$FVF<val>To$Snap (as sm@46@01  $FVF<val>))))))) this@19@01))
        (itemAt%precondition ($Snap.combine
          ($Snap.combine
            ($SortWrappers.Array_To$Snap a@27@01)
            ($Snap.combine
              ($SortWrappers.IntTo$Snap size@39@01)
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($SortWrappers.$FVF<val>To$Snap (as sm@46@01  $FVF<val>)))))))
          ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 i@47@01)
        (itemAt%precondition ($Snap.combine
          ($Snap.first $t@21@01)
          ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 i@47@01)))
    (or
      (not
        (and
          (<= 0 i@47@01)
          (< i@47@01 (length ($Snap.first $t@21@01) this@19@01))))
      (and (<= 0 i@47@01) (< i@47@01 (length ($Snap.first $t@21@01) this@19@01)))))
  :pattern ((itemAt%limited ($Snap.combine
    ($Snap.first $t@21@01)
    ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 i@47@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@75@11@75@103-aux|)))
(assert (forall ((i@47@01 Int)) (!
  (and
    (=> (<= 0 i@47@01) (length%precondition ($Snap.first $t@21@01) this@19@01))
    (=>
      (and (<= 0 i@47@01) (< i@47@01 (length ($Snap.first $t@21@01) this@19@01)))
      (and
        (itemAt%precondition ($Snap.combine
          ($Snap.combine
            ($SortWrappers.Array_To$Snap a@27@01)
            ($Snap.combine
              ($SortWrappers.IntTo$Snap size@39@01)
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($SortWrappers.$FVF<val>To$Snap (as sm@46@01  $FVF<val>)))))))
          ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 i@47@01)
        (itemAt%precondition ($Snap.combine
          ($Snap.first $t@21@01)
          ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 i@47@01))))
  :pattern ((itemAt%limited ($Snap.combine
    ($Snap.first $t@21@01)
    ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 i@47@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@75@11@75@103_precondition|)))
(push) ; 4
(assert (not (forall ((i@47@01 Int)) (!
  (=>
    (and
      (and
        (=>
          (<= 0 i@47@01)
          (length%precondition ($Snap.first $t@21@01) this@19@01))
        (=>
          (and
            (<= 0 i@47@01)
            (< i@47@01 (length ($Snap.first $t@21@01) this@19@01)))
          (and
            (itemAt%precondition ($Snap.combine
              ($Snap.combine
                ($SortWrappers.Array_To$Snap a@27@01)
                ($Snap.combine
                  ($SortWrappers.IntTo$Snap size@39@01)
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine
                        $Snap.unit
                        ($SortWrappers.$FVF<val>To$Snap (as sm@46@01  $FVF<val>)))))))
              ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 i@47@01)
            (itemAt%precondition ($Snap.combine
              ($Snap.first $t@21@01)
              ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 i@47@01))))
      (and (<= 0 i@47@01) (< i@47@01 (length ($Snap.first $t@21@01) this@19@01))))
    (=
      (itemAt ($Snap.combine
        ($Snap.combine
          ($SortWrappers.Array_To$Snap a@27@01)
          ($Snap.combine
            ($SortWrappers.IntTo$Snap size@39@01)
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($SortWrappers.$FVF<val>To$Snap (as sm@46@01  $FVF<val>)))))))
        ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 i@47@01)
      (itemAt ($Snap.combine
        ($Snap.first $t@21@01)
        ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 i@47@01)))
  :pattern ((itemAt%limited ($Snap.combine
    ($Snap.first $t@21@01)
    ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 i@47@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@75@11@75@103|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@47@01 Int)) (!
  (=>
    (and (<= 0 i@47@01) (< i@47@01 (length ($Snap.first $t@21@01) this@19@01)))
    (=
      (itemAt ($Snap.combine
        ($Snap.combine
          ($SortWrappers.Array_To$Snap a@27@01)
          ($Snap.combine
            ($SortWrappers.IntTo$Snap size@39@01)
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($SortWrappers.$FVF<val>To$Snap (as sm@46@01  $FVF<val>)))))))
        ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 i@47@01)
      (itemAt ($Snap.combine
        ($Snap.first $t@21@01)
        ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 i@47@01)))
  :pattern ((itemAt%limited ($Snap.combine
    ($Snap.first $t@21@01)
    ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 i@47@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@75@11@75@103|)))
; [eval] itemAt(this, old(length(this))) == elem
; [eval] itemAt(this, old(length(this)))
; [eval] old(length(this))
; [eval] length(this)
(push) ; 4
(pop) ; 4
; Joined path conditions
(push) ; 4
; [eval] 0 <= index
(push) ; 5
(assert (not (<= 0 (length ($Snap.first $t@21@01) this@19@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 (length ($Snap.first $t@21@01) this@19@01)))
; [eval] index < length(this)
; [eval] length(this)
(push) ; 5
(pop) ; 5
; Joined path conditions
(push) ; 5
(assert (not (<
  (length ($Snap.first $t@21@01) this@19@01)
  (length ($Snap.combine
    ($SortWrappers.Array_To$Snap a@27@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap size@39@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@46@01  $FVF<val>))))))) this@19@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (<
  (length ($Snap.first $t@21@01) this@19@01)
  (length ($Snap.combine
    ($SortWrappers.Array_To$Snap a@27@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap size@39@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@46@01  $FVF<val>))))))) this@19@01)))
(assert (itemAt%precondition ($Snap.combine
  ($Snap.combine
    ($SortWrappers.Array_To$Snap a@27@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap size@39@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@46@01  $FVF<val>)))))))
  ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 (length ($Snap.first $t@21@01) this@19@01)))
(pop) ; 4
; Joined path conditions
(assert (and
  (<= 0 (length ($Snap.first $t@21@01) this@19@01))
  (<
    (length ($Snap.first $t@21@01) this@19@01)
    (length ($Snap.combine
      ($SortWrappers.Array_To$Snap a@27@01)
      ($Snap.combine
        ($SortWrappers.IntTo$Snap size@39@01)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@46@01  $FVF<val>))))))) this@19@01))
  (itemAt%precondition ($Snap.combine
    ($Snap.combine
      ($SortWrappers.Array_To$Snap a@27@01)
      ($Snap.combine
        ($SortWrappers.IntTo$Snap size@39@01)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@46@01  $FVF<val>)))))))
    ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 (length ($Snap.first $t@21@01) this@19@01))))
(push) ; 4
(assert (not (=
  (itemAt ($Snap.combine
    ($Snap.combine
      ($SortWrappers.Array_To$Snap a@27@01)
      ($Snap.combine
        ($SortWrappers.IntTo$Snap size@39@01)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@46@01  $FVF<val>)))))))
    ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 (length ($Snap.first $t@21@01) this@19@01))
  elem@20@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  (itemAt ($Snap.combine
    ($Snap.combine
      ($SortWrappers.Array_To$Snap a@27@01)
      ($Snap.combine
        ($SortWrappers.IntTo$Snap size@39@01)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@46@01  $FVF<val>)))))))
    ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 (length ($Snap.first $t@21@01) this@19@01))
  elem@20@01))
(pop) ; 3
(push) ; 3
; [else-branch: 6 | First:(Second:(First:($t@21@01))) != len[Int](First:(First:($t@21@01)))]
(assert (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@21@01))))
    (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01)))))))
(pop) ; 3
; [eval] !(this.size == len(this.elems))
; [eval] this.size == len(this.elems)
; [eval] len(this.elems)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@21@01))))
  (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01)))))))
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
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@21@01))))
    (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 13 | First:(Second:(First:($t@21@01))) != len[Int](First:(First:($t@21@01))) | live]
; [else-branch: 13 | First:(Second:(First:($t@21@01))) == len[Int](First:(First:($t@21@01))) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 13 | First:(Second:(First:($t@21@01))) != len[Int](First:(First:($t@21@01)))]
(assert (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@21@01))))
    (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01)))))))
; [exec]
; loc(this.elems, this.size).val := elem
; [eval] loc(this.elems, this.size)
; Precomputing data for removing quantified permissions
(define-fun pTaken@48@01 ((r $Ref)) $Perm
  (ite
    (=
      r
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))) ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@21@01))))))
    ($Perm.min
      (ite
        (and
          (img@26@01 r)
          (and
            (<= 0 (inv@25@01 r))
            (<
              (inv@25@01 r)
              (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01)))))))
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
          (img@26@01 r)
          (and
            (<= 0 (inv@25@01 r))
            (<
              (inv@25@01 r)
              (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01)))))))
        $Perm.Write
        $Perm.No)
      (pTaken@48@01 r))
    $Perm.No)
  
  :qid |quant-u-18729|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@48@01 r) $Perm.No)
  
  :qid |quant-u-18730|))))
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
    (=
      r
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))) ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@21@01))))))
    (= (- $Perm.Write (pTaken@48@01 r)) $Perm.No))
  
  :qid |quant-u-18731|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@49@01 $FVF<val>)
; Definitional axioms for singleton-FVF's value
(assert (=
  ($FVF.lookup_val (as sm@49@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))) ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@21@01))))))
  elem@20@01))
; [exec]
; this.size := this.size + 1
; [eval] this.size + 1
(declare-const size@50@01 Int)
(assert (=
  size@50@01
  (+
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@21@01))))
    1)))
; [exec]
; fold acc(AList(this), write)
; [eval] 0 <= this.size
(set-option :timeout 0)
(push) ; 4
(assert (not (<= 0 size@50@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 size@50@01))
; [eval] this.size <= len(this.elems)
; [eval] len(this.elems)
(push) ; 4
(assert (not (<=
  size@50@01
  (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01)))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (<=
  size@50@01
  (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))))))
; [eval] 0 < len(this.elems)
; [eval] len(this.elems)
(declare-const i@51@01 Int)
(push) ; 4
; [eval] 0 <= i && i < len(this.elems)
; [eval] 0 <= i
(push) ; 5
; [then-branch: 14 | !(0 <= i@51@01) | live]
; [else-branch: 14 | 0 <= i@51@01 | live]
(push) ; 6
; [then-branch: 14 | !(0 <= i@51@01)]
(assert (not (<= 0 i@51@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 14 | 0 <= i@51@01]
(assert (<= 0 i@51@01))
; [eval] i < len(this.elems)
; [eval] len(this.elems)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@51@01) (not (<= 0 i@51@01))))
(assert (and
  (<= 0 i@51@01)
  (<
    i@51@01
    (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01)))))))
; [eval] loc(this.elems, i)
(pop) ; 4
(declare-fun inv@52@01 ($Ref) Int)
(declare-fun img@53@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@51@01 Int)) (!
  (=>
    (and
      (<= 0 i@51@01)
      (<
        i@51@01
        (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))))))
    (or (<= 0 i@51@01) (not (<= 0 i@51@01))))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))) i@51@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@51@01 Int) (i2@51@01 Int)) (!
  (=>
    (and
      (and
        (<= 0 i1@51@01)
        (<
          i1@51@01
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))))))
      (and
        (<= 0 i2@51@01)
        (<
          i2@51@01
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))))))
      (=
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))) i1@51@01)
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))) i2@51@01)))
    (= i1@51@01 i2@51@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@51@01 Int)) (!
  (=>
    (and
      (<= 0 i@51@01)
      (<
        i@51@01
        (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))))))
    (and
      (=
        (inv@52@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))) i@51@01))
        i@51@01)
      (img@53@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))) i@51@01))))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))) i@51@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@53@01 r)
      (and
        (<= 0 (inv@52@01 r))
        (<
          (inv@52@01 r)
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01)))))))
    (=
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))) (inv@52@01 r))
      r))
  :pattern ((inv@52@01 r))
  :qid |val-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@54@01 ((r $Ref)) $Perm
  (ite
    (and
      (and
        (<= 0 (inv@52@01 r))
        (<
          (inv@52@01 r)
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))))))
      (img@53@01 r)
      (=
        r
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))) (inv@52@01 r))))
    ($Perm.min
      (ite
        (and
          (img@26@01 r)
          (and
            (<= 0 (inv@25@01 r))
            (<
              (inv@25@01 r)
              (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01)))))))
        (- $Perm.Write (pTaken@48@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@55@01 ((r $Ref)) $Perm
  (ite
    (and
      (and
        (<= 0 (inv@52@01 r))
        (<
          (inv@52@01 r)
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))))))
      (img@53@01 r)
      (=
        r
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))) (inv@52@01 r))))
    ($Perm.min
      (ite
        (=
          r
          (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))) ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@21@01))))))
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
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@26@01 r)
          (and
            (<= 0 (inv@25@01 r))
            (<
              (inv@25@01 r)
              (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01)))))))
        (- $Perm.Write (pTaken@48@01 r))
        $Perm.No)
      (pTaken@54@01 r))
    $Perm.No)
  
  :qid |quant-u-18734|))))
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
      (and
        (<= 0 (inv@52@01 r))
        (<
          (inv@52@01 r)
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))))))
      (img@53@01 r)
      (=
        r
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))) (inv@52@01 r))))
    (= (- $Perm.Write (pTaken@54@01 r)) $Perm.No))
  
  :qid |quant-u-18735|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (=
  (-
    (ite
      (=
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))) ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@21@01)))))
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))) ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@21@01))))))
      $Perm.Write
      $Perm.No)
    (pTaken@55@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))) ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@21@01)))))))
  $Perm.No)))
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
      (and
        (<= 0 (inv@52@01 r))
        (<
          (inv@52@01 r)
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))))))
      (img@53@01 r)
      (=
        r
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))) (inv@52@01 r))))
    (= (- (- $Perm.Write (pTaken@54@01 r)) (pTaken@55@01 r)) $Perm.No))
  
  :qid |quant-u-18737|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@56@01 $FVF<val>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_val (as sm@56@01  $FVF<val>)))
      (and
        (and
          (<= 0 (inv@52@01 r))
          (<
            (inv@52@01 r)
            (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))))))
        (img@53@01 r)))
    (=>
      (and
        (and
          (<= 0 (inv@52@01 r))
          (<
            (inv@52@01 r)
            (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))))))
        (img@53@01 r))
      (Set_in r ($FVF.domain_val (as sm@56@01  $FVF<val>)))))
  :pattern ((Set_in r ($FVF.domain_val (as sm@56@01  $FVF<val>))))
  :qid |qp.fvfDomDef11|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@52@01 r))
          (<
            (inv@52@01 r)
            (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))))))
        (img@53@01 r))
      (=
        r
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))) ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@21@01)))))))
    (=
      ($FVF.lookup_val (as sm@56@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@49@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@56@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@49@01  $FVF<val>) r))
  :qid |qp.fvfValDef9|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@52@01 r))
          (<
            (inv@52@01 r)
            (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))))))
        (img@53@01 r))
      (ite
        (and
          (img@26@01 r)
          (and
            (<= 0 (inv@25@01 r))
            (<
              (inv@25@01 r)
              (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01)))))))
        (< $Perm.No (- $Perm.Write (pTaken@48@01 r)))
        false))
    (=
      ($FVF.lookup_val (as sm@56@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@21@01))))))) r)))
  :pattern (($FVF.lookup_val (as sm@56@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@21@01))))))) r))
  :qid |qp.fvfValDef10|)))
(assert (AList%trigger ($Snap.combine
  ($Snap.first ($Snap.first $t@21@01))
  ($Snap.combine
    ($SortWrappers.IntTo$Snap size@50@01)
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($SortWrappers.$FVF<val>To$Snap (as sm@56@01  $FVF<val>))))))) this@19@01))
; [eval] length(this) == old(length(this)) + 1
; [eval] length(this)
(set-option :timeout 0)
(push) ; 4
(assert (length%precondition ($Snap.combine
  ($Snap.first ($Snap.first $t@21@01))
  ($Snap.combine
    ($SortWrappers.IntTo$Snap size@50@01)
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($SortWrappers.$FVF<val>To$Snap (as sm@56@01  $FVF<val>))))))) this@19@01))
(pop) ; 4
; Joined path conditions
(assert (length%precondition ($Snap.combine
  ($Snap.first ($Snap.first $t@21@01))
  ($Snap.combine
    ($SortWrappers.IntTo$Snap size@50@01)
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($SortWrappers.$FVF<val>To$Snap (as sm@56@01  $FVF<val>))))))) this@19@01))
; [eval] old(length(this)) + 1
; [eval] old(length(this))
; [eval] length(this)
(push) ; 4
(pop) ; 4
; Joined path conditions
(push) ; 4
(assert (not (=
  (length ($Snap.combine
    ($Snap.first ($Snap.first $t@21@01))
    ($Snap.combine
      ($SortWrappers.IntTo$Snap size@50@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@56@01  $FVF<val>))))))) this@19@01)
  (+ (length ($Snap.first $t@21@01) this@19@01) 1))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  (length ($Snap.combine
    ($Snap.first ($Snap.first $t@21@01))
    ($Snap.combine
      ($SortWrappers.IntTo$Snap size@50@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@56@01  $FVF<val>))))))) this@19@01)
  (+ (length ($Snap.first $t@21@01) this@19@01) 1)))
; [eval] itemAt(this, length(this) - 1) == elem
; [eval] itemAt(this, length(this) - 1)
; [eval] length(this) - 1
; [eval] length(this)
(push) ; 4
(pop) ; 4
; Joined path conditions
(push) ; 4
; [eval] 0 <= index
(push) ; 5
(assert (not (<=
  0
  (-
    (length ($Snap.combine
      ($Snap.first ($Snap.first $t@21@01))
      ($Snap.combine
        ($SortWrappers.IntTo$Snap size@50@01)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@56@01  $FVF<val>))))))) this@19@01)
    1))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (<=
  0
  (-
    (length ($Snap.combine
      ($Snap.first ($Snap.first $t@21@01))
      ($Snap.combine
        ($SortWrappers.IntTo$Snap size@50@01)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@56@01  $FVF<val>))))))) this@19@01)
    1)))
; [eval] index < length(this)
; [eval] length(this)
(push) ; 5
(pop) ; 5
; Joined path conditions
(push) ; 5
(assert (not (<
  (-
    (length ($Snap.combine
      ($Snap.first ($Snap.first $t@21@01))
      ($Snap.combine
        ($SortWrappers.IntTo$Snap size@50@01)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@56@01  $FVF<val>))))))) this@19@01)
    1)
  (length ($Snap.combine
    ($Snap.first ($Snap.first $t@21@01))
    ($Snap.combine
      ($SortWrappers.IntTo$Snap size@50@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@56@01  $FVF<val>))))))) this@19@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (<
  (-
    (length ($Snap.combine
      ($Snap.first ($Snap.first $t@21@01))
      ($Snap.combine
        ($SortWrappers.IntTo$Snap size@50@01)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@56@01  $FVF<val>))))))) this@19@01)
    1)
  (length ($Snap.combine
    ($Snap.first ($Snap.first $t@21@01))
    ($Snap.combine
      ($SortWrappers.IntTo$Snap size@50@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@56@01  $FVF<val>))))))) this@19@01)))
(assert (itemAt%precondition ($Snap.combine
  ($Snap.combine
    ($Snap.first ($Snap.first $t@21@01))
    ($Snap.combine
      ($SortWrappers.IntTo$Snap size@50@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@56@01  $FVF<val>)))))))
  ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 (-
  (length ($Snap.combine
    ($Snap.first ($Snap.first $t@21@01))
    ($Snap.combine
      ($SortWrappers.IntTo$Snap size@50@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@56@01  $FVF<val>))))))) this@19@01)
  1)))
(pop) ; 4
; Joined path conditions
(assert (and
  (<=
    0
    (-
      (length ($Snap.combine
        ($Snap.first ($Snap.first $t@21@01))
        ($Snap.combine
          ($SortWrappers.IntTo$Snap size@50@01)
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($SortWrappers.$FVF<val>To$Snap (as sm@56@01  $FVF<val>))))))) this@19@01)
      1))
  (<
    (-
      (length ($Snap.combine
        ($Snap.first ($Snap.first $t@21@01))
        ($Snap.combine
          ($SortWrappers.IntTo$Snap size@50@01)
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($SortWrappers.$FVF<val>To$Snap (as sm@56@01  $FVF<val>))))))) this@19@01)
      1)
    (length ($Snap.combine
      ($Snap.first ($Snap.first $t@21@01))
      ($Snap.combine
        ($SortWrappers.IntTo$Snap size@50@01)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@56@01  $FVF<val>))))))) this@19@01))
  (itemAt%precondition ($Snap.combine
    ($Snap.combine
      ($Snap.first ($Snap.first $t@21@01))
      ($Snap.combine
        ($SortWrappers.IntTo$Snap size@50@01)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@56@01  $FVF<val>)))))))
    ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 (-
    (length ($Snap.combine
      ($Snap.first ($Snap.first $t@21@01))
      ($Snap.combine
        ($SortWrappers.IntTo$Snap size@50@01)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@56@01  $FVF<val>))))))) this@19@01)
    1))))
(push) ; 4
(assert (not (=
  (itemAt ($Snap.combine
    ($Snap.combine
      ($Snap.first ($Snap.first $t@21@01))
      ($Snap.combine
        ($SortWrappers.IntTo$Snap size@50@01)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@56@01  $FVF<val>)))))))
    ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 (-
    (length ($Snap.combine
      ($Snap.first ($Snap.first $t@21@01))
      ($Snap.combine
        ($SortWrappers.IntTo$Snap size@50@01)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@56@01  $FVF<val>))))))) this@19@01)
    1))
  elem@20@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  (itemAt ($Snap.combine
    ($Snap.combine
      ($Snap.first ($Snap.first $t@21@01))
      ($Snap.combine
        ($SortWrappers.IntTo$Snap size@50@01)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@56@01  $FVF<val>)))))))
    ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 (-
    (length ($Snap.combine
      ($Snap.first ($Snap.first $t@21@01))
      ($Snap.combine
        ($SortWrappers.IntTo$Snap size@50@01)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@56@01  $FVF<val>))))))) this@19@01)
    1))
  elem@20@01))
; [eval] (forall i: Int :: { old(itemAt(this, i)) } 0 <= i && i < old(length(this)) ==> itemAt(this, i) == old(itemAt(this, i)))
(declare-const i@57@01 Int)
(push) ; 4
; [eval] 0 <= i && i < old(length(this)) ==> itemAt(this, i) == old(itemAt(this, i))
; [eval] 0 <= i && i < old(length(this))
; [eval] 0 <= i
(push) ; 5
; [then-branch: 15 | !(0 <= i@57@01) | live]
; [else-branch: 15 | 0 <= i@57@01 | live]
(push) ; 6
; [then-branch: 15 | !(0 <= i@57@01)]
(assert (not (<= 0 i@57@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 15 | 0 <= i@57@01]
(assert (<= 0 i@57@01))
; [eval] i < old(length(this))
; [eval] old(length(this))
; [eval] length(this)
(push) ; 7
(pop) ; 7
; Joined path conditions
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@57@01) (not (<= 0 i@57@01))))
(push) ; 5
; [then-branch: 16 | 0 <= i@57@01 && i@57@01 < length(First:($t@21@01), this@19@01) | live]
; [else-branch: 16 | !(0 <= i@57@01 && i@57@01 < length(First:($t@21@01), this@19@01)) | live]
(push) ; 6
; [then-branch: 16 | 0 <= i@57@01 && i@57@01 < length(First:($t@21@01), this@19@01)]
(assert (and (<= 0 i@57@01) (< i@57@01 (length ($Snap.first $t@21@01) this@19@01))))
; [eval] itemAt(this, i) == old(itemAt(this, i))
; [eval] itemAt(this, i)
(push) ; 7
; [eval] 0 <= index
; [eval] index < length(this)
; [eval] length(this)
(push) ; 8
(pop) ; 8
; Joined path conditions
(push) ; 8
(assert (not (<
  i@57@01
  (length ($Snap.combine
    ($Snap.first ($Snap.first $t@21@01))
    ($Snap.combine
      ($SortWrappers.IntTo$Snap size@50@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@56@01  $FVF<val>))))))) this@19@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (<
  i@57@01
  (length ($Snap.combine
    ($Snap.first ($Snap.first $t@21@01))
    ($Snap.combine
      ($SortWrappers.IntTo$Snap size@50@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@56@01  $FVF<val>))))))) this@19@01)))
(assert (itemAt%precondition ($Snap.combine
  ($Snap.combine
    ($Snap.first ($Snap.first $t@21@01))
    ($Snap.combine
      ($SortWrappers.IntTo$Snap size@50@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@56@01  $FVF<val>)))))))
  ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 i@57@01))
(pop) ; 7
; Joined path conditions
(assert (and
  (<
    i@57@01
    (length ($Snap.combine
      ($Snap.first ($Snap.first $t@21@01))
      ($Snap.combine
        ($SortWrappers.IntTo$Snap size@50@01)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@56@01  $FVF<val>))))))) this@19@01))
  (itemAt%precondition ($Snap.combine
    ($Snap.combine
      ($Snap.first ($Snap.first $t@21@01))
      ($Snap.combine
        ($SortWrappers.IntTo$Snap size@50@01)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@56@01  $FVF<val>)))))))
    ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 i@57@01)))
; [eval] old(itemAt(this, i))
; [eval] itemAt(this, i)
(push) ; 7
; [eval] 0 <= index
; [eval] index < length(this)
; [eval] length(this)
(push) ; 8
(pop) ; 8
; Joined path conditions
(assert (itemAt%precondition ($Snap.combine
  ($Snap.first $t@21@01)
  ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 i@57@01))
(pop) ; 7
; Joined path conditions
(assert (itemAt%precondition ($Snap.combine
  ($Snap.first $t@21@01)
  ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 i@57@01))
(pop) ; 6
(push) ; 6
; [else-branch: 16 | !(0 <= i@57@01 && i@57@01 < length(First:($t@21@01), this@19@01))]
(assert (not (and (<= 0 i@57@01) (< i@57@01 (length ($Snap.first $t@21@01) this@19@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and (<= 0 i@57@01) (< i@57@01 (length ($Snap.first $t@21@01) this@19@01)))
  (and
    (<= 0 i@57@01)
    (< i@57@01 (length ($Snap.first $t@21@01) this@19@01))
    (<
      i@57@01
      (length ($Snap.combine
        ($Snap.first ($Snap.first $t@21@01))
        ($Snap.combine
          ($SortWrappers.IntTo$Snap size@50@01)
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($SortWrappers.$FVF<val>To$Snap (as sm@56@01  $FVF<val>))))))) this@19@01))
    (itemAt%precondition ($Snap.combine
      ($Snap.combine
        ($Snap.first ($Snap.first $t@21@01))
        ($Snap.combine
          ($SortWrappers.IntTo$Snap size@50@01)
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($SortWrappers.$FVF<val>To$Snap (as sm@56@01  $FVF<val>)))))))
      ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 i@57@01)
    (itemAt%precondition ($Snap.combine
      ($Snap.first $t@21@01)
      ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 i@57@01))))
; Joined path conditions
(assert (or
  (not
    (and (<= 0 i@57@01) (< i@57@01 (length ($Snap.first $t@21@01) this@19@01))))
  (and (<= 0 i@57@01) (< i@57@01 (length ($Snap.first $t@21@01) this@19@01)))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@57@01 Int)) (!
  (and
    (or (<= 0 i@57@01) (not (<= 0 i@57@01)))
    (=>
      (and (<= 0 i@57@01) (< i@57@01 (length ($Snap.first $t@21@01) this@19@01)))
      (and
        (<= 0 i@57@01)
        (< i@57@01 (length ($Snap.first $t@21@01) this@19@01))
        (<
          i@57@01
          (length ($Snap.combine
            ($Snap.first ($Snap.first $t@21@01))
            ($Snap.combine
              ($SortWrappers.IntTo$Snap size@50@01)
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($SortWrappers.$FVF<val>To$Snap (as sm@56@01  $FVF<val>))))))) this@19@01))
        (itemAt%precondition ($Snap.combine
          ($Snap.combine
            ($Snap.first ($Snap.first $t@21@01))
            ($Snap.combine
              ($SortWrappers.IntTo$Snap size@50@01)
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($SortWrappers.$FVF<val>To$Snap (as sm@56@01  $FVF<val>)))))))
          ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 i@57@01)
        (itemAt%precondition ($Snap.combine
          ($Snap.first $t@21@01)
          ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 i@57@01)))
    (or
      (not
        (and
          (<= 0 i@57@01)
          (< i@57@01 (length ($Snap.first $t@21@01) this@19@01))))
      (and (<= 0 i@57@01) (< i@57@01 (length ($Snap.first $t@21@01) this@19@01)))))
  :pattern ((itemAt%limited ($Snap.combine
    ($Snap.first $t@21@01)
    ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 i@57@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@75@11@75@103-aux|)))
(assert (forall ((i@57@01 Int)) (!
  (and
    (=> (<= 0 i@57@01) (length%precondition ($Snap.first $t@21@01) this@19@01))
    (=>
      (and (<= 0 i@57@01) (< i@57@01 (length ($Snap.first $t@21@01) this@19@01)))
      (and
        (itemAt%precondition ($Snap.combine
          ($Snap.combine
            ($Snap.first ($Snap.first $t@21@01))
            ($Snap.combine
              ($SortWrappers.IntTo$Snap size@50@01)
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($SortWrappers.$FVF<val>To$Snap (as sm@56@01  $FVF<val>)))))))
          ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 i@57@01)
        (itemAt%precondition ($Snap.combine
          ($Snap.first $t@21@01)
          ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 i@57@01))))
  :pattern ((itemAt%limited ($Snap.combine
    ($Snap.first $t@21@01)
    ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 i@57@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@75@11@75@103_precondition|)))
(push) ; 4
(assert (not (forall ((i@57@01 Int)) (!
  (=>
    (and
      (and
        (=>
          (<= 0 i@57@01)
          (length%precondition ($Snap.first $t@21@01) this@19@01))
        (=>
          (and
            (<= 0 i@57@01)
            (< i@57@01 (length ($Snap.first $t@21@01) this@19@01)))
          (and
            (itemAt%precondition ($Snap.combine
              ($Snap.combine
                ($Snap.first ($Snap.first $t@21@01))
                ($Snap.combine
                  ($SortWrappers.IntTo$Snap size@50@01)
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine
                        $Snap.unit
                        ($SortWrappers.$FVF<val>To$Snap (as sm@56@01  $FVF<val>)))))))
              ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 i@57@01)
            (itemAt%precondition ($Snap.combine
              ($Snap.first $t@21@01)
              ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 i@57@01))))
      (and (<= 0 i@57@01) (< i@57@01 (length ($Snap.first $t@21@01) this@19@01))))
    (=
      (itemAt ($Snap.combine
        ($Snap.combine
          ($Snap.first ($Snap.first $t@21@01))
          ($Snap.combine
            ($SortWrappers.IntTo$Snap size@50@01)
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($SortWrappers.$FVF<val>To$Snap (as sm@56@01  $FVF<val>)))))))
        ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 i@57@01)
      (itemAt ($Snap.combine
        ($Snap.first $t@21@01)
        ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 i@57@01)))
  :pattern ((itemAt%limited ($Snap.combine
    ($Snap.first $t@21@01)
    ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 i@57@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@75@11@75@103|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@57@01 Int)) (!
  (=>
    (and (<= 0 i@57@01) (< i@57@01 (length ($Snap.first $t@21@01) this@19@01)))
    (=
      (itemAt ($Snap.combine
        ($Snap.combine
          ($Snap.first ($Snap.first $t@21@01))
          ($Snap.combine
            ($SortWrappers.IntTo$Snap size@50@01)
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($SortWrappers.$FVF<val>To$Snap (as sm@56@01  $FVF<val>)))))))
        ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 i@57@01)
      (itemAt ($Snap.combine
        ($Snap.first $t@21@01)
        ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 i@57@01)))
  :pattern ((itemAt%limited ($Snap.combine
    ($Snap.first $t@21@01)
    ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 i@57@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@75@11@75@103|)))
; [eval] itemAt(this, old(length(this))) == elem
; [eval] itemAt(this, old(length(this)))
; [eval] old(length(this))
; [eval] length(this)
(push) ; 4
(pop) ; 4
; Joined path conditions
(push) ; 4
; [eval] 0 <= index
(push) ; 5
(assert (not (<= 0 (length ($Snap.first $t@21@01) this@19@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 (length ($Snap.first $t@21@01) this@19@01)))
; [eval] index < length(this)
; [eval] length(this)
(push) ; 5
(pop) ; 5
; Joined path conditions
(push) ; 5
(assert (not (<
  (length ($Snap.first $t@21@01) this@19@01)
  (length ($Snap.combine
    ($Snap.first ($Snap.first $t@21@01))
    ($Snap.combine
      ($SortWrappers.IntTo$Snap size@50@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@56@01  $FVF<val>))))))) this@19@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (<
  (length ($Snap.first $t@21@01) this@19@01)
  (length ($Snap.combine
    ($Snap.first ($Snap.first $t@21@01))
    ($Snap.combine
      ($SortWrappers.IntTo$Snap size@50@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@56@01  $FVF<val>))))))) this@19@01)))
(assert (itemAt%precondition ($Snap.combine
  ($Snap.combine
    ($Snap.first ($Snap.first $t@21@01))
    ($Snap.combine
      ($SortWrappers.IntTo$Snap size@50@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@56@01  $FVF<val>)))))))
  ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 (length ($Snap.first $t@21@01) this@19@01)))
(pop) ; 4
; Joined path conditions
(assert (and
  (<= 0 (length ($Snap.first $t@21@01) this@19@01))
  (<
    (length ($Snap.first $t@21@01) this@19@01)
    (length ($Snap.combine
      ($Snap.first ($Snap.first $t@21@01))
      ($Snap.combine
        ($SortWrappers.IntTo$Snap size@50@01)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@56@01  $FVF<val>))))))) this@19@01))
  (itemAt%precondition ($Snap.combine
    ($Snap.combine
      ($Snap.first ($Snap.first $t@21@01))
      ($Snap.combine
        ($SortWrappers.IntTo$Snap size@50@01)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@56@01  $FVF<val>)))))))
    ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 (length ($Snap.first $t@21@01) this@19@01))))
(push) ; 4
(assert (not (=
  (itemAt ($Snap.combine
    ($Snap.combine
      ($Snap.first ($Snap.first $t@21@01))
      ($Snap.combine
        ($SortWrappers.IntTo$Snap size@50@01)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@56@01  $FVF<val>)))))))
    ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 (length ($Snap.first $t@21@01) this@19@01))
  elem@20@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  (itemAt ($Snap.combine
    ($Snap.combine
      ($Snap.first ($Snap.first $t@21@01))
      ($Snap.combine
        ($SortWrappers.IntTo$Snap size@50@01)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@56@01  $FVF<val>)))))))
    ($Snap.combine $Snap.unit $Snap.unit)) this@19@01 (length ($Snap.first $t@21@01) this@19@01))
  elem@20@01))
(pop) ; 3
(push) ; 3
; [else-branch: 13 | First:(Second:(First:($t@21@01))) == len[Int](First:(First:($t@21@01)))]
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@21@01))))
  (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@21@01))))))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- insert ----------
(declare-const this@58@01 $Ref)
(declare-const elem@59@01 Int)
(declare-const j@60@01 Int)
(declare-const this@61@01 $Ref)
(declare-const elem@62@01 Int)
(declare-const j@63@01 Int)
(push) ; 1
(declare-const $t@64@01 $Snap)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@65@01 $Snap)
(assert (= $t@65@01 ($Snap.combine ($Snap.first $t@65@01) ($Snap.second $t@65@01))))
(assert (=
  ($Snap.second $t@65@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@65@01))
    ($Snap.second ($Snap.second $t@65@01)))))
(assert (= ($Snap.first ($Snap.second $t@65@01)) $Snap.unit))
; [eval] 0 <= j
(assert (<= 0 j@63@01))
(assert (=
  ($Snap.second ($Snap.second $t@65@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@65@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@65@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@65@01))) $Snap.unit))
; [eval] j < length(this)
; [eval] length(this)
(push) ; 3
(assert (length%precondition ($Snap.first $t@65@01) this@61@01))
(pop) ; 3
; Joined path conditions
(assert (length%precondition ($Snap.first $t@65@01) this@61@01))
(assert (< j@63@01 (length ($Snap.first $t@65@01) this@61@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@65@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@65@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@65@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@65@01))))
  $Snap.unit))
; [eval] length(this) == old(length(this)) + 1
; [eval] length(this)
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] old(length(this)) + 1
; [eval] old(length(this))
; [eval] length(this)
(push) ; 3
(assert (length%precondition $t@64@01 this@61@01))
(pop) ; 3
; Joined path conditions
(assert (length%precondition $t@64@01 this@61@01))
(assert (= (length ($Snap.first $t@65@01) this@61@01) (+ (length $t@64@01 this@61@01) 1)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@65@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@65@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@65@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@65@01)))))
  $Snap.unit))
; [eval] (forall k: Int :: { old(itemAt(this, k)) } 0 <= k && k < j ==> itemAt(this, k) == old(itemAt(this, k)))
(declare-const k@66@01 Int)
(push) ; 3
; [eval] 0 <= k && k < j ==> itemAt(this, k) == old(itemAt(this, k))
; [eval] 0 <= k && k < j
; [eval] 0 <= k
(push) ; 4
; [then-branch: 17 | !(0 <= k@66@01) | live]
; [else-branch: 17 | 0 <= k@66@01 | live]
(push) ; 5
; [then-branch: 17 | !(0 <= k@66@01)]
(assert (not (<= 0 k@66@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 17 | 0 <= k@66@01]
(assert (<= 0 k@66@01))
; [eval] k < j
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@66@01) (not (<= 0 k@66@01))))
(push) ; 4
; [then-branch: 18 | 0 <= k@66@01 && k@66@01 < j@63@01 | live]
; [else-branch: 18 | !(0 <= k@66@01 && k@66@01 < j@63@01) | live]
(push) ; 5
; [then-branch: 18 | 0 <= k@66@01 && k@66@01 < j@63@01]
(assert (and (<= 0 k@66@01) (< k@66@01 j@63@01)))
; [eval] itemAt(this, k) == old(itemAt(this, k))
; [eval] itemAt(this, k)
(push) ; 6
; [eval] 0 <= index
; [eval] index < length(this)
; [eval] length(this)
(push) ; 7
(pop) ; 7
; Joined path conditions
(push) ; 7
(assert (not (< k@66@01 (length ($Snap.first $t@65@01) this@61@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (< k@66@01 (length ($Snap.first $t@65@01) this@61@01)))
(assert (itemAt%precondition ($Snap.combine
  ($Snap.first $t@65@01)
  ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@66@01))
(pop) ; 6
; Joined path conditions
(assert (and
  (< k@66@01 (length ($Snap.first $t@65@01) this@61@01))
  (itemAt%precondition ($Snap.combine
    ($Snap.first $t@65@01)
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@66@01)))
; [eval] old(itemAt(this, k))
; [eval] itemAt(this, k)
(push) ; 6
; [eval] 0 <= index
; [eval] index < length(this)
; [eval] length(this)
(push) ; 7
(pop) ; 7
; Joined path conditions
(push) ; 7
(assert (not (< k@66@01 (length $t@64@01 this@61@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (< k@66@01 (length $t@64@01 this@61@01)))
(assert (itemAt%precondition ($Snap.combine
  $t@64@01
  ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@66@01))
(pop) ; 6
; Joined path conditions
(assert (and
  (< k@66@01 (length $t@64@01 this@61@01))
  (itemAt%precondition ($Snap.combine
    $t@64@01
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@66@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 18 | !(0 <= k@66@01 && k@66@01 < j@63@01)]
(assert (not (and (<= 0 k@66@01) (< k@66@01 j@63@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and (<= 0 k@66@01) (< k@66@01 j@63@01))
  (and
    (<= 0 k@66@01)
    (< k@66@01 j@63@01)
    (< k@66@01 (length ($Snap.first $t@65@01) this@61@01))
    (itemAt%precondition ($Snap.combine
      ($Snap.first $t@65@01)
      ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@66@01)
    (< k@66@01 (length $t@64@01 this@61@01))
    (itemAt%precondition ($Snap.combine
      $t@64@01
      ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@66@01))))
; Joined path conditions
(assert (or
  (not (and (<= 0 k@66@01) (< k@66@01 j@63@01)))
  (and (<= 0 k@66@01) (< k@66@01 j@63@01))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@66@01 Int)) (!
  (and
    (or (<= 0 k@66@01) (not (<= 0 k@66@01)))
    (=>
      (and (<= 0 k@66@01) (< k@66@01 j@63@01))
      (and
        (<= 0 k@66@01)
        (< k@66@01 j@63@01)
        (< k@66@01 (length ($Snap.first $t@65@01) this@61@01))
        (itemAt%precondition ($Snap.combine
          ($Snap.first $t@65@01)
          ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@66@01)
        (< k@66@01 (length $t@64@01 this@61@01))
        (itemAt%precondition ($Snap.combine
          $t@64@01
          ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@66@01)))
    (or
      (not (and (<= 0 k@66@01) (< k@66@01 j@63@01)))
      (and (<= 0 k@66@01) (< k@66@01 j@63@01))))
  :pattern ((itemAt%limited ($Snap.combine
    $t@64@01
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@66@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@101@11@101@87-aux|)))
(assert (forall ((k@66@01 Int)) (!
  (=>
    (and (<= 0 k@66@01) (< k@66@01 j@63@01))
    (=
      (itemAt ($Snap.combine
        ($Snap.first $t@65@01)
        ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@66@01)
      (itemAt ($Snap.combine $t@64@01 ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@66@01)))
  :pattern ((itemAt%limited ($Snap.combine
    $t@64@01
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@66@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@101@11@101@87|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@65@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@65@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@65@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@65@01))))))
  $Snap.unit))
; [eval] itemAt(this, j) == elem
; [eval] itemAt(this, j)
(push) ; 3
; [eval] 0 <= index
; [eval] index < length(this)
; [eval] length(this)
(push) ; 4
(pop) ; 4
; Joined path conditions
(assert (itemAt%precondition ($Snap.combine
  ($Snap.first $t@65@01)
  ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 j@63@01))
(pop) ; 3
; Joined path conditions
(assert (itemAt%precondition ($Snap.combine
  ($Snap.first $t@65@01)
  ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 j@63@01))
(assert (=
  (itemAt ($Snap.combine
    ($Snap.first $t@65@01)
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 j@63@01)
  elem@62@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@65@01))))))
  $Snap.unit))
; [eval] (forall k: Int :: { itemAt(this, k) } j < k && k < length(this) ==> itemAt(this, k) == old(itemAt(this, k - 1)))
(declare-const k@67@01 Int)
(push) ; 3
; [eval] j < k && k < length(this) ==> itemAt(this, k) == old(itemAt(this, k - 1))
; [eval] j < k && k < length(this)
; [eval] j < k
(push) ; 4
; [then-branch: 19 | !(j@63@01 < k@67@01) | live]
; [else-branch: 19 | j@63@01 < k@67@01 | live]
(push) ; 5
; [then-branch: 19 | !(j@63@01 < k@67@01)]
(assert (not (< j@63@01 k@67@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 19 | j@63@01 < k@67@01]
(assert (< j@63@01 k@67@01))
; [eval] k < length(this)
; [eval] length(this)
(push) ; 6
(pop) ; 6
; Joined path conditions
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (< j@63@01 k@67@01) (not (< j@63@01 k@67@01))))
(push) ; 4
; [then-branch: 20 | j@63@01 < k@67@01 && k@67@01 < length(First:($t@65@01), this@61@01) | live]
; [else-branch: 20 | !(j@63@01 < k@67@01 && k@67@01 < length(First:($t@65@01), this@61@01)) | live]
(push) ; 5
; [then-branch: 20 | j@63@01 < k@67@01 && k@67@01 < length(First:($t@65@01), this@61@01)]
(assert (and (< j@63@01 k@67@01) (< k@67@01 (length ($Snap.first $t@65@01) this@61@01))))
; [eval] itemAt(this, k) == old(itemAt(this, k - 1))
; [eval] itemAt(this, k)
(push) ; 6
; [eval] 0 <= index
(push) ; 7
(assert (not (<= 0 k@67@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 k@67@01))
; [eval] index < length(this)
; [eval] length(this)
(push) ; 7
(pop) ; 7
; Joined path conditions
(assert (itemAt%precondition ($Snap.combine
  ($Snap.first $t@65@01)
  ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@67@01))
(pop) ; 6
; Joined path conditions
(assert (and
  (<= 0 k@67@01)
  (itemAt%precondition ($Snap.combine
    ($Snap.first $t@65@01)
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@67@01)))
; [eval] old(itemAt(this, k - 1))
; [eval] itemAt(this, k - 1)
; [eval] k - 1
(push) ; 6
; [eval] 0 <= index
(push) ; 7
(assert (not (<= 0 (- k@67@01 1))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 (- k@67@01 1)))
; [eval] index < length(this)
; [eval] length(this)
(push) ; 7
(pop) ; 7
; Joined path conditions
(push) ; 7
(assert (not (< (- k@67@01 1) (length $t@64@01 this@61@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (< (- k@67@01 1) (length $t@64@01 this@61@01)))
(assert (itemAt%precondition ($Snap.combine
  $t@64@01
  ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- k@67@01 1)))
(pop) ; 6
; Joined path conditions
(assert (and
  (<= 0 (- k@67@01 1))
  (< (- k@67@01 1) (length $t@64@01 this@61@01))
  (itemAt%precondition ($Snap.combine
    $t@64@01
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- k@67@01 1))))
(pop) ; 5
(push) ; 5
; [else-branch: 20 | !(j@63@01 < k@67@01 && k@67@01 < length(First:($t@65@01), this@61@01))]
(assert (not
  (and
    (< j@63@01 k@67@01)
    (< k@67@01 (length ($Snap.first $t@65@01) this@61@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (< j@63@01 k@67@01)
    (< k@67@01 (length ($Snap.first $t@65@01) this@61@01)))
  (and
    (< j@63@01 k@67@01)
    (< k@67@01 (length ($Snap.first $t@65@01) this@61@01))
    (<= 0 k@67@01)
    (itemAt%precondition ($Snap.combine
      ($Snap.first $t@65@01)
      ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@67@01)
    (<= 0 (- k@67@01 1))
    (< (- k@67@01 1) (length $t@64@01 this@61@01))
    (itemAt%precondition ($Snap.combine
      $t@64@01
      ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- k@67@01 1)))))
; Joined path conditions
(assert (or
  (not
    (and
      (< j@63@01 k@67@01)
      (< k@67@01 (length ($Snap.first $t@65@01) this@61@01))))
  (and
    (< j@63@01 k@67@01)
    (< k@67@01 (length ($Snap.first $t@65@01) this@61@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@67@01 Int)) (!
  (and
    (or (< j@63@01 k@67@01) (not (< j@63@01 k@67@01)))
    (=>
      (and
        (< j@63@01 k@67@01)
        (< k@67@01 (length ($Snap.first $t@65@01) this@61@01)))
      (and
        (< j@63@01 k@67@01)
        (< k@67@01 (length ($Snap.first $t@65@01) this@61@01))
        (<= 0 k@67@01)
        (itemAt%precondition ($Snap.combine
          ($Snap.first $t@65@01)
          ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@67@01)
        (<= 0 (- k@67@01 1))
        (< (- k@67@01 1) (length $t@64@01 this@61@01))
        (itemAt%precondition ($Snap.combine
          $t@64@01
          ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- k@67@01 1))))
    (or
      (not
        (and
          (< j@63@01 k@67@01)
          (< k@67@01 (length ($Snap.first $t@65@01) this@61@01))))
      (and
        (< j@63@01 k@67@01)
        (< k@67@01 (length ($Snap.first $t@65@01) this@61@01)))))
  :pattern ((itemAt%limited ($Snap.combine
    ($Snap.first $t@65@01)
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@67@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@103@11@103@101-aux|)))
(assert (forall ((k@67@01 Int)) (!
  (=>
    (and
      (< j@63@01 k@67@01)
      (< k@67@01 (length ($Snap.first $t@65@01) this@61@01)))
    (=
      (itemAt ($Snap.combine
        ($Snap.first $t@65@01)
        ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@67@01)
      (itemAt ($Snap.combine $t@64@01 ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (-
        k@67@01
        1))))
  :pattern ((itemAt%limited ($Snap.combine
    ($Snap.first $t@65@01)
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@67@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@103@11@103@101|)))
(pop) ; 2
(push) ; 2
; [exec]
; var t: Int
(declare-const t@68@01 Int)
; [exec]
; j := 0
(declare-const j@69@01 Int)
(push) ; 3
; Loop head block: Check well-definedness of invariant
(declare-const $t@70@01 $Snap)
(assert (= $t@70@01 ($Snap.combine ($Snap.first $t@70@01) ($Snap.second $t@70@01))))
(assert (=
  ($Snap.second $t@70@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@70@01))
    ($Snap.second ($Snap.second $t@70@01)))))
(assert (= ($Snap.first ($Snap.second $t@70@01)) $Snap.unit))
; [eval] 0 <= j
(assert (<= 0 j@69@01))
(assert (=
  ($Snap.second ($Snap.second $t@70@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@70@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@70@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@70@01))) $Snap.unit))
; [eval] j <= length(this)
; [eval] length(this)
(push) ; 4
(assert (length%precondition ($Snap.first $t@70@01) this@61@01))
(pop) ; 4
; Joined path conditions
(assert (length%precondition ($Snap.first $t@70@01) this@61@01))
(assert (<= j@69@01 (length ($Snap.first $t@70@01) this@61@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@70@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@70@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@70@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@70@01))))
  $Snap.unit))
; [eval] j > 0 ==> itemAt(this, j - 1) <= elem
; [eval] j > 0
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (> j@69@01 0))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (> j@69@01 0)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 21 | j@69@01 > 0 | live]
; [else-branch: 21 | !(j@69@01 > 0) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 21 | j@69@01 > 0]
(assert (> j@69@01 0))
; [eval] itemAt(this, j - 1) <= elem
; [eval] itemAt(this, j - 1)
; [eval] j - 1
(push) ; 6
; [eval] 0 <= index
(push) ; 7
(assert (not (<= 0 (- j@69@01 1))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 (- j@69@01 1)))
; [eval] index < length(this)
; [eval] length(this)
(push) ; 7
(pop) ; 7
; Joined path conditions
(push) ; 7
(assert (not (< (- j@69@01 1) (length ($Snap.first $t@70@01) this@61@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (< (- j@69@01 1) (length ($Snap.first $t@70@01) this@61@01)))
(assert (itemAt%precondition ($Snap.combine
  ($Snap.first $t@70@01)
  ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- j@69@01 1)))
(pop) ; 6
; Joined path conditions
(assert (and
  (<= 0 (- j@69@01 1))
  (< (- j@69@01 1) (length ($Snap.first $t@70@01) this@61@01))
  (itemAt%precondition ($Snap.combine
    ($Snap.first $t@70@01)
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- j@69@01 1))))
(pop) ; 5
(push) ; 5
; [else-branch: 21 | !(j@69@01 > 0)]
(assert (not (> j@69@01 0)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (> j@69@01 0)
  (and
    (> j@69@01 0)
    (<= 0 (- j@69@01 1))
    (< (- j@69@01 1) (length ($Snap.first $t@70@01) this@61@01))
    (itemAt%precondition ($Snap.combine
      ($Snap.first $t@70@01)
      ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- j@69@01 1)))))
; Joined path conditions
(assert (or (not (> j@69@01 0)) (> j@69@01 0)))
(assert (=>
  (> j@69@01 0)
  (<=
    (itemAt ($Snap.combine
      ($Snap.first $t@70@01)
      ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- j@69@01 1))
    elem@62@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@70@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@70@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@70@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@70@01)))))
  $Snap.unit))
; [eval] length(this) == old(length(this))
; [eval] length(this)
(push) ; 4
(pop) ; 4
; Joined path conditions
; [eval] old(length(this))
; [eval] length(this)
(push) ; 4
(assert (length%precondition $t@64@01 this@61@01))
(pop) ; 4
; Joined path conditions
(assert (length%precondition $t@64@01 this@61@01))
(assert (= (length ($Snap.first $t@70@01) this@61@01) (length $t@64@01 this@61@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@70@01)))))
  $Snap.unit))
; [eval] (forall k: Int :: { old(itemAt(this, k)) } 0 <= k && k < length(this) ==> itemAt(this, k) == old(itemAt(this, k)))
(declare-const k@71@01 Int)
(push) ; 4
; [eval] 0 <= k && k < length(this) ==> itemAt(this, k) == old(itemAt(this, k))
; [eval] 0 <= k && k < length(this)
; [eval] 0 <= k
(push) ; 5
; [then-branch: 22 | !(0 <= k@71@01) | live]
; [else-branch: 22 | 0 <= k@71@01 | live]
(push) ; 6
; [then-branch: 22 | !(0 <= k@71@01)]
(assert (not (<= 0 k@71@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 22 | 0 <= k@71@01]
(assert (<= 0 k@71@01))
; [eval] k < length(this)
; [eval] length(this)
(push) ; 7
(pop) ; 7
; Joined path conditions
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@71@01) (not (<= 0 k@71@01))))
(push) ; 5
; [then-branch: 23 | 0 <= k@71@01 && k@71@01 < length(First:($t@70@01), this@61@01) | live]
; [else-branch: 23 | !(0 <= k@71@01 && k@71@01 < length(First:($t@70@01), this@61@01)) | live]
(push) ; 6
; [then-branch: 23 | 0 <= k@71@01 && k@71@01 < length(First:($t@70@01), this@61@01)]
(assert (and (<= 0 k@71@01) (< k@71@01 (length ($Snap.first $t@70@01) this@61@01))))
; [eval] itemAt(this, k) == old(itemAt(this, k))
; [eval] itemAt(this, k)
(push) ; 7
; [eval] 0 <= index
; [eval] index < length(this)
; [eval] length(this)
(push) ; 8
(pop) ; 8
; Joined path conditions
(assert (itemAt%precondition ($Snap.combine
  ($Snap.first $t@70@01)
  ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@71@01))
(pop) ; 7
; Joined path conditions
(assert (itemAt%precondition ($Snap.combine
  ($Snap.first $t@70@01)
  ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@71@01))
; [eval] old(itemAt(this, k))
; [eval] itemAt(this, k)
(push) ; 7
; [eval] 0 <= index
; [eval] index < length(this)
; [eval] length(this)
(push) ; 8
(pop) ; 8
; Joined path conditions
(push) ; 8
(assert (not (< k@71@01 (length $t@64@01 this@61@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (< k@71@01 (length $t@64@01 this@61@01)))
(assert (itemAt%precondition ($Snap.combine
  $t@64@01
  ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@71@01))
(pop) ; 7
; Joined path conditions
(assert (and
  (< k@71@01 (length $t@64@01 this@61@01))
  (itemAt%precondition ($Snap.combine
    $t@64@01
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@71@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 23 | !(0 <= k@71@01 && k@71@01 < length(First:($t@70@01), this@61@01))]
(assert (not (and (<= 0 k@71@01) (< k@71@01 (length ($Snap.first $t@70@01) this@61@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and (<= 0 k@71@01) (< k@71@01 (length ($Snap.first $t@70@01) this@61@01)))
  (and
    (<= 0 k@71@01)
    (< k@71@01 (length ($Snap.first $t@70@01) this@61@01))
    (itemAt%precondition ($Snap.combine
      ($Snap.first $t@70@01)
      ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@71@01)
    (< k@71@01 (length $t@64@01 this@61@01))
    (itemAt%precondition ($Snap.combine
      $t@64@01
      ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@71@01))))
; Joined path conditions
(assert (or
  (not
    (and (<= 0 k@71@01) (< k@71@01 (length ($Snap.first $t@70@01) this@61@01))))
  (and (<= 0 k@71@01) (< k@71@01 (length ($Snap.first $t@70@01) this@61@01)))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@71@01 Int)) (!
  (and
    (or (<= 0 k@71@01) (not (<= 0 k@71@01)))
    (=>
      (and (<= 0 k@71@01) (< k@71@01 (length ($Snap.first $t@70@01) this@61@01)))
      (and
        (<= 0 k@71@01)
        (< k@71@01 (length ($Snap.first $t@70@01) this@61@01))
        (itemAt%precondition ($Snap.combine
          ($Snap.first $t@70@01)
          ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@71@01)
        (< k@71@01 (length $t@64@01 this@61@01))
        (itemAt%precondition ($Snap.combine
          $t@64@01
          ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@71@01)))
    (or
      (not
        (and
          (<= 0 k@71@01)
          (< k@71@01 (length ($Snap.first $t@70@01) this@61@01))))
      (and (<= 0 k@71@01) (< k@71@01 (length ($Snap.first $t@70@01) this@61@01)))))
  :pattern ((itemAt%limited ($Snap.combine
    $t@64@01
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@71@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@111@15@111@122-aux|)))
(assert (forall ((k@71@01 Int)) (!
  (=>
    (and (<= 0 k@71@01) (< k@71@01 (length ($Snap.first $t@70@01) this@61@01)))
    (=
      (itemAt ($Snap.combine
        ($Snap.first $t@70@01)
        ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@71@01)
      (itemAt ($Snap.combine $t@64@01 ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@71@01)))
  :pattern ((itemAt%limited ($Snap.combine
    $t@64@01
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@71@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@111@15@111@122|)))
(pop) ; 3
(push) ; 3
; Loop head block: Establish invariant
; [eval] 0 <= j
; [eval] j <= length(this)
; [eval] length(this)
(push) ; 4
(assert (length%precondition $t@64@01 this@61@01))
(pop) ; 4
; Joined path conditions
(assert (length%precondition $t@64@01 this@61@01))
(push) ; 4
(assert (not (<= 0 (length $t@64@01 this@61@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 (length $t@64@01 this@61@01)))
; [eval] j > 0 ==> itemAt(this, j - 1) <= elem
; [eval] j > 0
(push) ; 4
; [then-branch: 24 | False | dead]
; [else-branch: 24 | True | live]
(push) ; 5
; [else-branch: 24 | True]
(pop) ; 5
(pop) ; 4
; Joined path conditions
; [eval] length(this) == old(length(this))
; [eval] length(this)
(push) ; 4
(pop) ; 4
; Joined path conditions
; [eval] old(length(this))
; [eval] length(this)
(push) ; 4
(pop) ; 4
; Joined path conditions
; [eval] (forall k: Int :: { old(itemAt(this, k)) } 0 <= k && k < length(this) ==> itemAt(this, k) == old(itemAt(this, k)))
(declare-const k@72@01 Int)
(push) ; 4
; [eval] 0 <= k && k < length(this) ==> itemAt(this, k) == old(itemAt(this, k))
; [eval] 0 <= k && k < length(this)
; [eval] 0 <= k
(push) ; 5
; [then-branch: 25 | !(0 <= k@72@01) | live]
; [else-branch: 25 | 0 <= k@72@01 | live]
(push) ; 6
; [then-branch: 25 | !(0 <= k@72@01)]
(assert (not (<= 0 k@72@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 25 | 0 <= k@72@01]
(assert (<= 0 k@72@01))
; [eval] k < length(this)
; [eval] length(this)
(push) ; 7
(pop) ; 7
; Joined path conditions
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@72@01) (not (<= 0 k@72@01))))
(push) ; 5
; [then-branch: 26 | 0 <= k@72@01 && k@72@01 < length($t@64@01, this@61@01) | live]
; [else-branch: 26 | !(0 <= k@72@01 && k@72@01 < length($t@64@01, this@61@01)) | live]
(push) ; 6
; [then-branch: 26 | 0 <= k@72@01 && k@72@01 < length($t@64@01, this@61@01)]
(assert (and (<= 0 k@72@01) (< k@72@01 (length $t@64@01 this@61@01))))
; [eval] itemAt(this, k) == old(itemAt(this, k))
; [eval] itemAt(this, k)
(push) ; 7
; [eval] 0 <= index
; [eval] index < length(this)
; [eval] length(this)
(push) ; 8
(pop) ; 8
; Joined path conditions
(assert (itemAt%precondition ($Snap.combine
  $t@64@01
  ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@72@01))
(pop) ; 7
; Joined path conditions
(assert (itemAt%precondition ($Snap.combine
  $t@64@01
  ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@72@01))
; [eval] old(itemAt(this, k))
; [eval] itemAt(this, k)
(push) ; 7
; [eval] 0 <= index
; [eval] index < length(this)
; [eval] length(this)
(push) ; 8
(pop) ; 8
; Joined path conditions
(pop) ; 7
; Joined path conditions
(pop) ; 6
(push) ; 6
; [else-branch: 26 | !(0 <= k@72@01 && k@72@01 < length($t@64@01, this@61@01))]
(assert (not (and (<= 0 k@72@01) (< k@72@01 (length $t@64@01 this@61@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and (<= 0 k@72@01) (< k@72@01 (length $t@64@01 this@61@01)))
  (and
    (<= 0 k@72@01)
    (< k@72@01 (length $t@64@01 this@61@01))
    (itemAt%precondition ($Snap.combine
      $t@64@01
      ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@72@01))))
; Joined path conditions
(assert (or
  (not (and (<= 0 k@72@01) (< k@72@01 (length $t@64@01 this@61@01))))
  (and (<= 0 k@72@01) (< k@72@01 (length $t@64@01 this@61@01)))))
; [eval] old(itemAt(this, k))
; [eval] itemAt(this, k)
(push) ; 5
; [eval] 0 <= index
(push) ; 6
(assert (not (<= 0 k@72@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] 0 <= index
(set-option :timeout 0)
(push) ; 6
(assert (not (<= 0 k@72@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] 0 <= index
(set-option :timeout 0)
(push) ; 6
(assert (not (<= 0 k@72@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] 0 <= index
(set-option :timeout 0)
(push) ; 6
(assert (not (<= 0 k@72@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@72@01 Int)) (!
  (and
    (or (<= 0 k@72@01) (not (<= 0 k@72@01)))
    (=>
      (and (<= 0 k@72@01) (< k@72@01 (length $t@64@01 this@61@01)))
      (and
        (<= 0 k@72@01)
        (< k@72@01 (length $t@64@01 this@61@01))
        (itemAt%precondition ($Snap.combine
          $t@64@01
          ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@72@01)))
    (or
      (not (and (<= 0 k@72@01) (< k@72@01 (length $t@64@01 this@61@01))))
      (and (<= 0 k@72@01) (< k@72@01 (length $t@64@01 this@61@01)))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@111@15@111@122-aux|)))
; Loop head block: Execute statements of loop head block (in invariant state)
(push) ; 4
(assert (= $t@70@01 ($Snap.combine ($Snap.first $t@70@01) ($Snap.second $t@70@01))))
(assert (=
  ($Snap.second $t@70@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@70@01))
    ($Snap.second ($Snap.second $t@70@01)))))
(assert (= ($Snap.first ($Snap.second $t@70@01)) $Snap.unit))
(assert (<= 0 j@69@01))
(assert (=
  ($Snap.second ($Snap.second $t@70@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@70@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@70@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@70@01))) $Snap.unit))
(assert (length%precondition ($Snap.first $t@70@01) this@61@01))
(assert (<= j@69@01 (length ($Snap.first $t@70@01) this@61@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@70@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@70@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@70@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@70@01))))
  $Snap.unit))
(assert (=>
  (> j@69@01 0)
  (and
    (> j@69@01 0)
    (<= 0 (- j@69@01 1))
    (< (- j@69@01 1) (length ($Snap.first $t@70@01) this@61@01))
    (itemAt%precondition ($Snap.combine
      ($Snap.first $t@70@01)
      ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- j@69@01 1)))))
(assert (or (not (> j@69@01 0)) (> j@69@01 0)))
(assert (=>
  (> j@69@01 0)
  (<=
    (itemAt ($Snap.combine
      ($Snap.first $t@70@01)
      ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- j@69@01 1))
    elem@62@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@70@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@70@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@70@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@70@01)))))
  $Snap.unit))
(assert (= (length ($Snap.first $t@70@01) this@61@01) (length $t@64@01 this@61@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@70@01)))))
  $Snap.unit))
(assert (forall ((k@71@01 Int)) (!
  (and
    (or (<= 0 k@71@01) (not (<= 0 k@71@01)))
    (=>
      (and (<= 0 k@71@01) (< k@71@01 (length ($Snap.first $t@70@01) this@61@01)))
      (and
        (<= 0 k@71@01)
        (< k@71@01 (length ($Snap.first $t@70@01) this@61@01))
        (itemAt%precondition ($Snap.combine
          ($Snap.first $t@70@01)
          ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@71@01)
        (< k@71@01 (length $t@64@01 this@61@01))
        (itemAt%precondition ($Snap.combine
          $t@64@01
          ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@71@01)))
    (or
      (not
        (and
          (<= 0 k@71@01)
          (< k@71@01 (length ($Snap.first $t@70@01) this@61@01))))
      (and (<= 0 k@71@01) (< k@71@01 (length ($Snap.first $t@70@01) this@61@01)))))
  :pattern ((itemAt%limited ($Snap.combine
    $t@64@01
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@71@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@111@15@111@122-aux|)))
(assert (forall ((k@71@01 Int)) (!
  (=>
    (and (<= 0 k@71@01) (< k@71@01 (length ($Snap.first $t@70@01) this@61@01)))
    (=
      (itemAt ($Snap.combine
        ($Snap.first $t@70@01)
        ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@71@01)
      (itemAt ($Snap.combine $t@64@01 ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@71@01)))
  :pattern ((itemAt%limited ($Snap.combine
    $t@64@01
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@71@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@111@15@111@122|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 10)
(check-sat)
; unknown
; Loop head block: Check well-definedness of edge conditions
(set-option :timeout 0)
(push) ; 5
; [eval] j < length(this) && itemAt(this, j) < elem
; [eval] j < length(this)
; [eval] length(this)
(push) ; 6
(pop) ; 6
; Joined path conditions
(push) ; 6
; [then-branch: 27 | !(j@69@01 < length(First:($t@70@01), this@61@01)) | live]
; [else-branch: 27 | j@69@01 < length(First:($t@70@01), this@61@01) | live]
(push) ; 7
; [then-branch: 27 | !(j@69@01 < length(First:($t@70@01), this@61@01))]
(assert (not (< j@69@01 (length ($Snap.first $t@70@01) this@61@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 27 | j@69@01 < length(First:($t@70@01), this@61@01)]
(assert (< j@69@01 (length ($Snap.first $t@70@01) this@61@01)))
; [eval] itemAt(this, j) < elem
; [eval] itemAt(this, j)
(push) ; 8
; [eval] 0 <= index
; [eval] index < length(this)
; [eval] length(this)
(push) ; 9
(pop) ; 9
; Joined path conditions
(assert (itemAt%precondition ($Snap.combine
  ($Snap.first $t@70@01)
  ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 j@69@01))
(pop) ; 8
; Joined path conditions
(assert (itemAt%precondition ($Snap.combine
  ($Snap.first $t@70@01)
  ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 j@69@01))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< j@69@01 (length ($Snap.first $t@70@01) this@61@01))
  (and
    (< j@69@01 (length ($Snap.first $t@70@01) this@61@01))
    (itemAt%precondition ($Snap.combine
      ($Snap.first $t@70@01)
      ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 j@69@01))))
(assert (or
  (< j@69@01 (length ($Snap.first $t@70@01) this@61@01))
  (not (< j@69@01 (length ($Snap.first $t@70@01) this@61@01)))))
(pop) ; 5
(push) ; 5
; [eval] !(j < length(this) && itemAt(this, j) < elem)
; [eval] j < length(this) && itemAt(this, j) < elem
; [eval] j < length(this)
; [eval] length(this)
(push) ; 6
(pop) ; 6
; Joined path conditions
(push) ; 6
; [then-branch: 28 | !(j@69@01 < length(First:($t@70@01), this@61@01)) | live]
; [else-branch: 28 | j@69@01 < length(First:($t@70@01), this@61@01) | live]
(push) ; 7
; [then-branch: 28 | !(j@69@01 < length(First:($t@70@01), this@61@01))]
(assert (not (< j@69@01 (length ($Snap.first $t@70@01) this@61@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 28 | j@69@01 < length(First:($t@70@01), this@61@01)]
(assert (< j@69@01 (length ($Snap.first $t@70@01) this@61@01)))
; [eval] itemAt(this, j) < elem
; [eval] itemAt(this, j)
(push) ; 8
; [eval] 0 <= index
; [eval] index < length(this)
; [eval] length(this)
(push) ; 9
(pop) ; 9
; Joined path conditions
(assert (itemAt%precondition ($Snap.combine
  ($Snap.first $t@70@01)
  ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 j@69@01))
(pop) ; 8
; Joined path conditions
(assert (itemAt%precondition ($Snap.combine
  ($Snap.first $t@70@01)
  ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 j@69@01))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< j@69@01 (length ($Snap.first $t@70@01) this@61@01))
  (and
    (< j@69@01 (length ($Snap.first $t@70@01) this@61@01))
    (itemAt%precondition ($Snap.combine
      ($Snap.first $t@70@01)
      ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 j@69@01))))
(assert (or
  (< j@69@01 (length ($Snap.first $t@70@01) this@61@01))
  (not (< j@69@01 (length ($Snap.first $t@70@01) this@61@01)))))
(pop) ; 5
; Loop head block: Follow loop-internal edges
; [eval] j < length(this) && itemAt(this, j) < elem
; [eval] j < length(this)
; [eval] length(this)
(push) ; 5
(pop) ; 5
; Joined path conditions
(push) ; 5
; [then-branch: 29 | !(j@69@01 < length(First:($t@70@01), this@61@01)) | live]
; [else-branch: 29 | j@69@01 < length(First:($t@70@01), this@61@01) | live]
(push) ; 6
; [then-branch: 29 | !(j@69@01 < length(First:($t@70@01), this@61@01))]
(assert (not (< j@69@01 (length ($Snap.first $t@70@01) this@61@01))))
(pop) ; 6
(push) ; 6
; [else-branch: 29 | j@69@01 < length(First:($t@70@01), this@61@01)]
(assert (< j@69@01 (length ($Snap.first $t@70@01) this@61@01)))
; [eval] itemAt(this, j) < elem
; [eval] itemAt(this, j)
(push) ; 7
; [eval] 0 <= index
; [eval] index < length(this)
; [eval] length(this)
(push) ; 8
(pop) ; 8
; Joined path conditions
(assert (itemAt%precondition ($Snap.combine
  ($Snap.first $t@70@01)
  ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 j@69@01))
(pop) ; 7
; Joined path conditions
(assert (itemAt%precondition ($Snap.combine
  ($Snap.first $t@70@01)
  ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 j@69@01))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (< j@69@01 (length ($Snap.first $t@70@01) this@61@01))
  (and
    (< j@69@01 (length ($Snap.first $t@70@01) this@61@01))
    (itemAt%precondition ($Snap.combine
      ($Snap.first $t@70@01)
      ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 j@69@01))))
(assert (or
  (< j@69@01 (length ($Snap.first $t@70@01) this@61@01))
  (not (< j@69@01 (length ($Snap.first $t@70@01) this@61@01)))))
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (and
    (< j@69@01 (length ($Snap.first $t@70@01) this@61@01))
    (<
      (itemAt ($Snap.combine
        ($Snap.first $t@70@01)
        ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 j@69@01)
      elem@62@01)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (and
  (< j@69@01 (length ($Snap.first $t@70@01) this@61@01))
  (<
    (itemAt ($Snap.combine
      ($Snap.first $t@70@01)
      ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 j@69@01)
    elem@62@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 30 | j@69@01 < length(First:($t@70@01), this@61@01) && itemAt((First:($t@70@01), (_, _)), this@61@01, j@69@01) < elem@62@01 | live]
; [else-branch: 30 | !(j@69@01 < length(First:($t@70@01), this@61@01) && itemAt((First:($t@70@01), (_, _)), this@61@01, j@69@01) < elem@62@01) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 30 | j@69@01 < length(First:($t@70@01), this@61@01) && itemAt((First:($t@70@01), (_, _)), this@61@01, j@69@01) < elem@62@01]
(assert (and
  (< j@69@01 (length ($Snap.first $t@70@01) this@61@01))
  (<
    (itemAt ($Snap.combine
      ($Snap.first $t@70@01)
      ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 j@69@01)
    elem@62@01)))
; [exec]
; unfold acc(AList(this), write)
(assert (=
  ($Snap.first $t@70@01)
  ($Snap.combine
    ($Snap.first ($Snap.first $t@70@01))
    ($Snap.second ($Snap.first $t@70@01)))))
(assert (not (= this@61@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.first $t@70@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first $t@70@01)))
    ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.first $t@70@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@70@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01)))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@70@01)))) $Snap.unit))
; [eval] 0 <= this.size
(assert (<=
  0
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01)))))
  $Snap.unit))
; [eval] this.size <= len(this.elems)
; [eval] len(this.elems)
(assert (<=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))
  (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))
  $Snap.unit))
; [eval] 0 < len(this.elems)
; [eval] len(this.elems)
(assert (<
  0
  (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))))))
(declare-const i@73@01 Int)
(push) ; 6
; [eval] 0 <= i && i < len(this.elems)
; [eval] 0 <= i
(push) ; 7
; [then-branch: 31 | !(0 <= i@73@01) | live]
; [else-branch: 31 | 0 <= i@73@01 | live]
(push) ; 8
; [then-branch: 31 | !(0 <= i@73@01)]
(assert (not (<= 0 i@73@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 31 | 0 <= i@73@01]
(assert (<= 0 i@73@01))
; [eval] i < len(this.elems)
; [eval] len(this.elems)
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@73@01) (not (<= 0 i@73@01))))
(assert (and
  (<= 0 i@73@01)
  (<
    i@73@01
    (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
; [eval] loc(this.elems, i)
(pop) ; 6
(declare-fun inv@74@01 ($Ref) Int)
(declare-fun img@75@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@73@01 Int)) (!
  (=>
    (and
      (<= 0 i@73@01)
      (<
        i@73@01
        (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))))))
    (or (<= 0 i@73@01) (not (<= 0 i@73@01))))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@73@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 6
(assert (not (forall ((i1@73@01 Int) (i2@73@01 Int)) (!
  (=>
    (and
      (and
        (<= 0 i1@73@01)
        (<
          i1@73@01
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))))))
      (and
        (<= 0 i2@73@01)
        (<
          i2@73@01
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))))))
      (=
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i1@73@01)
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i2@73@01)))
    (= i1@73@01 i2@73@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@73@01 Int)) (!
  (=>
    (and
      (<= 0 i@73@01)
      (<
        i@73@01
        (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))))))
    (and
      (=
        (inv@74@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@73@01))
        i@73@01)
      (img@75@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@73@01))))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@73@01))
  :qid |quant-u-18739|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@75@01 r)
      (and
        (<= 0 (inv@74@01 r))
        (<
          (inv@74@01 r)
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
    (=
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) (inv@74@01 r))
      r))
  :pattern ((inv@74@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@73@01 Int)) (!
  (=>
    (and
      (<= 0 i@73@01)
      (<
        i@73@01
        (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))))))
    (not
      (=
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@73@01)
        $Ref.null)))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@73@01))
  :qid |val-permImpliesNonNull|)))
(declare-const sm@76@01 $FVF<val>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@75@01 r)
      (and
        (<= 0 (inv@74@01 r))
        (<
          (inv@74@01 r)
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
    (=
      ($FVF.lookup_val (as sm@76@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r)))
  :pattern (($FVF.lookup_val (as sm@76@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r) r)
  :pattern (($FVF.lookup_val (as sm@76@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef13|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (<= 0 (inv@74@01 r))
      (<
        (inv@74@01 r)
        (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))))))
    ($FVF.loc_val ($FVF.lookup_val (as sm@76@01  $FVF<val>) r) r))
  :pattern ((inv@74@01 r))
  :qid |quant-u-18740|)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (AList%trigger ($Snap.first $t@70@01) this@61@01))
; [exec]
; j := j + 1
; [eval] j + 1
(declare-const j@77@01 Int)
(assert (= j@77@01 (+ j@69@01 1)))
; [exec]
; fold acc(AList(this), write)
; [eval] 0 <= this.size
; [eval] this.size <= len(this.elems)
; [eval] len(this.elems)
; [eval] 0 < len(this.elems)
; [eval] len(this.elems)
(declare-const i@78@01 Int)
(set-option :timeout 0)
(push) ; 6
; [eval] 0 <= i && i < len(this.elems)
; [eval] 0 <= i
(push) ; 7
; [then-branch: 32 | !(0 <= i@78@01) | live]
; [else-branch: 32 | 0 <= i@78@01 | live]
(push) ; 8
; [then-branch: 32 | !(0 <= i@78@01)]
(assert (not (<= 0 i@78@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 32 | 0 <= i@78@01]
(assert (<= 0 i@78@01))
; [eval] i < len(this.elems)
; [eval] len(this.elems)
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@78@01) (not (<= 0 i@78@01))))
(assert (and
  (<= 0 i@78@01)
  (<
    i@78@01
    (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
; [eval] loc(this.elems, i)
(pop) ; 6
(declare-fun inv@79@01 ($Ref) Int)
(declare-fun img@80@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@78@01 Int)) (!
  (=>
    (and
      (<= 0 i@78@01)
      (<
        i@78@01
        (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))))))
    (or (<= 0 i@78@01) (not (<= 0 i@78@01))))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@78@01))
  :qid |val-aux|)))
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 6
(assert (not (forall ((i1@78@01 Int) (i2@78@01 Int)) (!
  (=>
    (and
      (and
        (and
          (<= 0 i1@78@01)
          (<
            i1@78@01
            (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))))))
        ($FVF.loc_val ($FVF.lookup_val (as sm@76@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i1@78@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i1@78@01)))
      (and
        (and
          (<= 0 i2@78@01)
          (<
            i2@78@01
            (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))))))
        ($FVF.loc_val ($FVF.lookup_val (as sm@76@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i2@78@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i2@78@01)))
      (=
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i1@78@01)
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i2@78@01)))
    (= i1@78@01 i2@78@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@78@01 Int)) (!
  (=>
    (and
      (<= 0 i@78@01)
      (<
        i@78@01
        (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))))))
    (and
      (=
        (inv@79@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@78@01))
        i@78@01)
      (img@80@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@78@01))))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@78@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@80@01 r)
      (and
        (<= 0 (inv@79@01 r))
        (<
          (inv@79@01 r)
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
    (=
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) (inv@79@01 r))
      r))
  :pattern ((inv@79@01 r))
  :qid |val-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (<= 0 (inv@79@01 r))
      (<
        (inv@79@01 r)
        (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))))))
    ($FVF.loc_val ($FVF.lookup_val (as sm@76@01  $FVF<val>) r) r))
  :pattern ((inv@79@01 r))
  :qid |quant-u-18742|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@81@01 ((r $Ref)) $Perm
  (ite
    (and
      (and
        (<= 0 (inv@79@01 r))
        (<
          (inv@79@01 r)
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))))))
      (img@80@01 r)
      (=
        r
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) (inv@79@01 r))))
    ($Perm.min
      (ite
        (and
          (img@75@01 r)
          (and
            (<= 0 (inv@74@01 r))
            (<
              (inv@74@01 r)
              (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
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
(push) ; 6
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@75@01 r)
          (and
            (<= 0 (inv@74@01 r))
            (<
              (inv@74@01 r)
              (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
        $Perm.Write
        $Perm.No)
      (pTaken@81@01 r))
    $Perm.No)
  
  :qid |quant-u-18744|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (<= 0 (inv@79@01 r))
        (<
          (inv@79@01 r)
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))))))
      (img@80@01 r)
      (=
        r
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) (inv@79@01 r))))
    (= (- $Perm.Write (pTaken@81@01 r)) $Perm.No))
  
  :qid |quant-u-18745|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@82@01 $FVF<val>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_val (as sm@82@01  $FVF<val>)))
      (and
        (and
          (<= 0 (inv@79@01 r))
          (<
            (inv@79@01 r)
            (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))))))
        (img@80@01 r)))
    (=>
      (and
        (and
          (<= 0 (inv@79@01 r))
          (<
            (inv@79@01 r)
            (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))))))
        (img@80@01 r))
      (Set_in r ($FVF.domain_val (as sm@82@01  $FVF<val>)))))
  :pattern ((Set_in r ($FVF.domain_val (as sm@82@01  $FVF<val>))))
  :qid |qp.fvfDomDef16|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@79@01 r))
          (<
            (inv@79@01 r)
            (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))))))
        (img@80@01 r))
      (and
        (img@75@01 r)
        (and
          (<= 0 (inv@74@01 r))
          (<
            (inv@74@01 r)
            (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))))))))
    (=
      ($FVF.lookup_val (as sm@82@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r)))
  :pattern (($FVF.lookup_val (as sm@82@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r))
  :qid |qp.fvfValDef14|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r) r)
  :pattern (($FVF.lookup_val (as sm@82@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef15|)))
(assert (AList%trigger ($Snap.combine
  ($Snap.first ($Snap.first $t@70@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first $t@70@01)))
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($SortWrappers.$FVF<val>To$Snap (as sm@82@01  $FVF<val>))))))) this@61@01))
; Loop head block: Re-establish invariant
; [eval] 0 <= j
(set-option :timeout 0)
(push) ; 6
(assert (not (<= 0 j@77@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 j@77@01))
; [eval] j <= length(this)
; [eval] length(this)
(push) ; 6
(assert (length%precondition ($Snap.combine
  ($Snap.first ($Snap.first $t@70@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first $t@70@01)))
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($SortWrappers.$FVF<val>To$Snap (as sm@82@01  $FVF<val>))))))) this@61@01))
(pop) ; 6
; Joined path conditions
(assert (length%precondition ($Snap.combine
  ($Snap.first ($Snap.first $t@70@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first $t@70@01)))
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($SortWrappers.$FVF<val>To$Snap (as sm@82@01  $FVF<val>))))))) this@61@01))
(push) ; 6
(assert (not (<=
  j@77@01
  (length ($Snap.combine
    ($Snap.first ($Snap.first $t@70@01))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first $t@70@01)))
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@82@01  $FVF<val>))))))) this@61@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (<=
  j@77@01
  (length ($Snap.combine
    ($Snap.first ($Snap.first $t@70@01))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first $t@70@01)))
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@82@01  $FVF<val>))))))) this@61@01)))
; [eval] j > 0 ==> itemAt(this, j - 1) <= elem
; [eval] j > 0
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not (> j@77@01 0))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (> j@77@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 33 | j@77@01 > 0 | live]
; [else-branch: 33 | !(j@77@01 > 0) | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 33 | j@77@01 > 0]
(assert (> j@77@01 0))
; [eval] itemAt(this, j - 1) <= elem
; [eval] itemAt(this, j - 1)
; [eval] j - 1
(push) ; 8
; [eval] 0 <= index
(push) ; 9
(assert (not (<= 0 (- j@77@01 1))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 (- j@77@01 1)))
; [eval] index < length(this)
; [eval] length(this)
(push) ; 9
(pop) ; 9
; Joined path conditions
(push) ; 9
(assert (not (<
  (- j@77@01 1)
  (length ($Snap.combine
    ($Snap.first ($Snap.first $t@70@01))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first $t@70@01)))
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@82@01  $FVF<val>))))))) this@61@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (<
  (- j@77@01 1)
  (length ($Snap.combine
    ($Snap.first ($Snap.first $t@70@01))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first $t@70@01)))
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@82@01  $FVF<val>))))))) this@61@01)))
(assert (itemAt%precondition ($Snap.combine
  ($Snap.combine
    ($Snap.first ($Snap.first $t@70@01))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first $t@70@01)))
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@82@01  $FVF<val>)))))))
  ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- j@77@01 1)))
(pop) ; 8
; Joined path conditions
(assert (and
  (<= 0 (- j@77@01 1))
  (<
    (- j@77@01 1)
    (length ($Snap.combine
      ($Snap.first ($Snap.first $t@70@01))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.first $t@70@01)))
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@82@01  $FVF<val>))))))) this@61@01))
  (itemAt%precondition ($Snap.combine
    ($Snap.combine
      ($Snap.first ($Snap.first $t@70@01))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.first $t@70@01)))
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@82@01  $FVF<val>)))))))
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- j@77@01 1))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  (> j@77@01 0)
  (and
    (> j@77@01 0)
    (<= 0 (- j@77@01 1))
    (<
      (- j@77@01 1)
      (length ($Snap.combine
        ($Snap.first ($Snap.first $t@70@01))
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.first $t@70@01)))
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($SortWrappers.$FVF<val>To$Snap (as sm@82@01  $FVF<val>))))))) this@61@01))
    (itemAt%precondition ($Snap.combine
      ($Snap.combine
        ($Snap.first ($Snap.first $t@70@01))
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.first $t@70@01)))
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($SortWrappers.$FVF<val>To$Snap (as sm@82@01  $FVF<val>)))))))
      ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- j@77@01 1)))))
(assert (> j@77@01 0))
(push) ; 6
(assert (not (=>
  (> j@77@01 0)
  (<=
    (itemAt ($Snap.combine
      ($Snap.combine
        ($Snap.first ($Snap.first $t@70@01))
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.first $t@70@01)))
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($SortWrappers.$FVF<val>To$Snap (as sm@82@01  $FVF<val>)))))))
      ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- j@77@01 1))
    elem@62@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (> j@77@01 0)
  (<=
    (itemAt ($Snap.combine
      ($Snap.combine
        ($Snap.first ($Snap.first $t@70@01))
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.first $t@70@01)))
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($SortWrappers.$FVF<val>To$Snap (as sm@82@01  $FVF<val>)))))))
      ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- j@77@01 1))
    elem@62@01)))
; [eval] length(this) == old(length(this))
; [eval] length(this)
(push) ; 6
(pop) ; 6
; Joined path conditions
; [eval] old(length(this))
; [eval] length(this)
(push) ; 6
(pop) ; 6
; Joined path conditions
(push) ; 6
(assert (not (=
  (length ($Snap.combine
    ($Snap.first ($Snap.first $t@70@01))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first $t@70@01)))
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@82@01  $FVF<val>))))))) this@61@01)
  (length $t@64@01 this@61@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (=
  (length ($Snap.combine
    ($Snap.first ($Snap.first $t@70@01))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first $t@70@01)))
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@82@01  $FVF<val>))))))) this@61@01)
  (length $t@64@01 this@61@01)))
; [eval] (forall k: Int :: { old(itemAt(this, k)) } 0 <= k && k < length(this) ==> itemAt(this, k) == old(itemAt(this, k)))
(declare-const k@83@01 Int)
(push) ; 6
; [eval] 0 <= k && k < length(this) ==> itemAt(this, k) == old(itemAt(this, k))
; [eval] 0 <= k && k < length(this)
; [eval] 0 <= k
(push) ; 7
; [then-branch: 34 | !(0 <= k@83@01) | live]
; [else-branch: 34 | 0 <= k@83@01 | live]
(push) ; 8
; [then-branch: 34 | !(0 <= k@83@01)]
(assert (not (<= 0 k@83@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 34 | 0 <= k@83@01]
(assert (<= 0 k@83@01))
; [eval] k < length(this)
; [eval] length(this)
(push) ; 9
(pop) ; 9
; Joined path conditions
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@83@01) (not (<= 0 k@83@01))))
(push) ; 7
; [then-branch: 35 | 0 <= k@83@01 && k@83@01 < length((First:(First:($t@70@01)), (First:(Second:(First:($t@70@01))), (_, (_, (_, sm@82@01))))), this@61@01) | live]
; [else-branch: 35 | !(0 <= k@83@01 && k@83@01 < length((First:(First:($t@70@01)), (First:(Second:(First:($t@70@01))), (_, (_, (_, sm@82@01))))), this@61@01)) | live]
(push) ; 8
; [then-branch: 35 | 0 <= k@83@01 && k@83@01 < length((First:(First:($t@70@01)), (First:(Second:(First:($t@70@01))), (_, (_, (_, sm@82@01))))), this@61@01)]
(assert (and
  (<= 0 k@83@01)
  (<
    k@83@01
    (length ($Snap.combine
      ($Snap.first ($Snap.first $t@70@01))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.first $t@70@01)))
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@82@01  $FVF<val>))))))) this@61@01))))
; [eval] itemAt(this, k) == old(itemAt(this, k))
; [eval] itemAt(this, k)
(push) ; 9
; [eval] 0 <= index
; [eval] index < length(this)
; [eval] length(this)
(push) ; 10
(pop) ; 10
; Joined path conditions
(assert (itemAt%precondition ($Snap.combine
  ($Snap.combine
    ($Snap.first ($Snap.first $t@70@01))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first $t@70@01)))
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@82@01  $FVF<val>)))))))
  ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@83@01))
(pop) ; 9
; Joined path conditions
(assert (itemAt%precondition ($Snap.combine
  ($Snap.combine
    ($Snap.first ($Snap.first $t@70@01))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first $t@70@01)))
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@82@01  $FVF<val>)))))))
  ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@83@01))
; [eval] old(itemAt(this, k))
; [eval] itemAt(this, k)
(push) ; 9
; [eval] 0 <= index
; [eval] index < length(this)
; [eval] length(this)
(push) ; 10
(pop) ; 10
; Joined path conditions
(push) ; 10
(assert (not (< k@83@01 (length $t@64@01 this@61@01))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (< k@83@01 (length $t@64@01 this@61@01)))
(assert (itemAt%precondition ($Snap.combine
  $t@64@01
  ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@83@01))
(pop) ; 9
; Joined path conditions
(assert (and
  (< k@83@01 (length $t@64@01 this@61@01))
  (itemAt%precondition ($Snap.combine
    $t@64@01
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@83@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 35 | !(0 <= k@83@01 && k@83@01 < length((First:(First:($t@70@01)), (First:(Second:(First:($t@70@01))), (_, (_, (_, sm@82@01))))), this@61@01))]
(assert (not
  (and
    (<= 0 k@83@01)
    (<
      k@83@01
      (length ($Snap.combine
        ($Snap.first ($Snap.first $t@70@01))
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.first $t@70@01)))
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($SortWrappers.$FVF<val>To$Snap (as sm@82@01  $FVF<val>))))))) this@61@01)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=>
  (and
    (<= 0 k@83@01)
    (<
      k@83@01
      (length ($Snap.combine
        ($Snap.first ($Snap.first $t@70@01))
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.first $t@70@01)))
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($SortWrappers.$FVF<val>To$Snap (as sm@82@01  $FVF<val>))))))) this@61@01)))
  (and
    (<= 0 k@83@01)
    (<
      k@83@01
      (length ($Snap.combine
        ($Snap.first ($Snap.first $t@70@01))
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.first $t@70@01)))
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($SortWrappers.$FVF<val>To$Snap (as sm@82@01  $FVF<val>))))))) this@61@01))
    (itemAt%precondition ($Snap.combine
      ($Snap.combine
        ($Snap.first ($Snap.first $t@70@01))
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.first $t@70@01)))
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($SortWrappers.$FVF<val>To$Snap (as sm@82@01  $FVF<val>)))))))
      ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@83@01)
    (< k@83@01 (length $t@64@01 this@61@01))
    (itemAt%precondition ($Snap.combine
      $t@64@01
      ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@83@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 k@83@01)
      (<
        k@83@01
        (length ($Snap.combine
          ($Snap.first ($Snap.first $t@70@01))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.first $t@70@01)))
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($SortWrappers.$FVF<val>To$Snap (as sm@82@01  $FVF<val>))))))) this@61@01))))
  (and
    (<= 0 k@83@01)
    (<
      k@83@01
      (length ($Snap.combine
        ($Snap.first ($Snap.first $t@70@01))
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.first $t@70@01)))
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($SortWrappers.$FVF<val>To$Snap (as sm@82@01  $FVF<val>))))))) this@61@01)))))
(pop) ; 6
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@83@01 Int)) (!
  (and
    (or (<= 0 k@83@01) (not (<= 0 k@83@01)))
    (=>
      (and
        (<= 0 k@83@01)
        (<
          k@83@01
          (length ($Snap.combine
            ($Snap.first ($Snap.first $t@70@01))
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.first $t@70@01)))
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($SortWrappers.$FVF<val>To$Snap (as sm@82@01  $FVF<val>))))))) this@61@01)))
      (and
        (<= 0 k@83@01)
        (<
          k@83@01
          (length ($Snap.combine
            ($Snap.first ($Snap.first $t@70@01))
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.first $t@70@01)))
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($SortWrappers.$FVF<val>To$Snap (as sm@82@01  $FVF<val>))))))) this@61@01))
        (itemAt%precondition ($Snap.combine
          ($Snap.combine
            ($Snap.first ($Snap.first $t@70@01))
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.first $t@70@01)))
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($SortWrappers.$FVF<val>To$Snap (as sm@82@01  $FVF<val>)))))))
          ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@83@01)
        (< k@83@01 (length $t@64@01 this@61@01))
        (itemAt%precondition ($Snap.combine
          $t@64@01
          ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@83@01)))
    (or
      (not
        (and
          (<= 0 k@83@01)
          (<
            k@83@01
            (length ($Snap.combine
              ($Snap.first ($Snap.first $t@70@01))
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.first $t@70@01)))
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($SortWrappers.$FVF<val>To$Snap (as sm@82@01  $FVF<val>))))))) this@61@01))))
      (and
        (<= 0 k@83@01)
        (<
          k@83@01
          (length ($Snap.combine
            ($Snap.first ($Snap.first $t@70@01))
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.first $t@70@01)))
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($SortWrappers.$FVF<val>To$Snap (as sm@82@01  $FVF<val>))))))) this@61@01)))))
  :pattern ((itemAt%limited ($Snap.combine
    $t@64@01
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@83@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@111@15@111@122-aux|)))
(assert (forall ((k@83@01 Int)) (!
  (and
    (=>
      (<= 0 k@83@01)
      (length%precondition ($Snap.combine
        ($Snap.first ($Snap.first $t@70@01))
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.first $t@70@01)))
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($SortWrappers.$FVF<val>To$Snap (as sm@82@01  $FVF<val>))))))) this@61@01))
    (=>
      (and
        (<= 0 k@83@01)
        (<
          k@83@01
          (length ($Snap.combine
            ($Snap.first ($Snap.first $t@70@01))
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.first $t@70@01)))
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($SortWrappers.$FVF<val>To$Snap (as sm@82@01  $FVF<val>))))))) this@61@01)))
      (and
        (itemAt%precondition ($Snap.combine
          ($Snap.combine
            ($Snap.first ($Snap.first $t@70@01))
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.first $t@70@01)))
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($SortWrappers.$FVF<val>To$Snap (as sm@82@01  $FVF<val>)))))))
          ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@83@01)
        (itemAt%precondition ($Snap.combine
          $t@64@01
          ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@83@01))))
  :pattern ((itemAt%limited ($Snap.combine
    $t@64@01
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@83@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@111@15@111@122_precondition|)))
(push) ; 6
(assert (not (forall ((k@83@01 Int)) (!
  (=>
    (and
      (and
        (=>
          (<= 0 k@83@01)
          (length%precondition ($Snap.combine
            ($Snap.first ($Snap.first $t@70@01))
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.first $t@70@01)))
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($SortWrappers.$FVF<val>To$Snap (as sm@82@01  $FVF<val>))))))) this@61@01))
        (=>
          (and
            (<= 0 k@83@01)
            (<
              k@83@01
              (length ($Snap.combine
                ($Snap.first ($Snap.first $t@70@01))
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.first $t@70@01)))
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine
                        $Snap.unit
                        ($SortWrappers.$FVF<val>To$Snap (as sm@82@01  $FVF<val>))))))) this@61@01)))
          (and
            (itemAt%precondition ($Snap.combine
              ($Snap.combine
                ($Snap.first ($Snap.first $t@70@01))
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.first $t@70@01)))
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine
                        $Snap.unit
                        ($SortWrappers.$FVF<val>To$Snap (as sm@82@01  $FVF<val>)))))))
              ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@83@01)
            (itemAt%precondition ($Snap.combine
              $t@64@01
              ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@83@01))))
      (and
        (<= 0 k@83@01)
        (<
          k@83@01
          (length ($Snap.combine
            ($Snap.first ($Snap.first $t@70@01))
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.first $t@70@01)))
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($SortWrappers.$FVF<val>To$Snap (as sm@82@01  $FVF<val>))))))) this@61@01))))
    (=
      (itemAt ($Snap.combine
        ($Snap.combine
          ($Snap.first ($Snap.first $t@70@01))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.first $t@70@01)))
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($SortWrappers.$FVF<val>To$Snap (as sm@82@01  $FVF<val>)))))))
        ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@83@01)
      (itemAt ($Snap.combine $t@64@01 ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@83@01)))
  :pattern ((itemAt%limited ($Snap.combine
    $t@64@01
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@83@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@111@15@111@122|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (forall ((k@83@01 Int)) (!
  (=>
    (and
      (<= 0 k@83@01)
      (<
        k@83@01
        (length ($Snap.combine
          ($Snap.first ($Snap.first $t@70@01))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.first $t@70@01)))
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($SortWrappers.$FVF<val>To$Snap (as sm@82@01  $FVF<val>))))))) this@61@01)))
    (=
      (itemAt ($Snap.combine
        ($Snap.combine
          ($Snap.first ($Snap.first $t@70@01))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.first $t@70@01)))
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($SortWrappers.$FVF<val>To$Snap (as sm@82@01  $FVF<val>)))))))
        ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@83@01)
      (itemAt ($Snap.combine $t@64@01 ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@83@01)))
  :pattern ((itemAt%limited ($Snap.combine
    $t@64@01
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@83@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@111@15@111@122|)))
(pop) ; 5
(push) ; 5
; [else-branch: 30 | !(j@69@01 < length(First:($t@70@01), this@61@01) && itemAt((First:($t@70@01), (_, _)), this@61@01, j@69@01) < elem@62@01)]
(assert (not
  (and
    (< j@69@01 (length ($Snap.first $t@70@01) this@61@01))
    (<
      (itemAt ($Snap.combine
        ($Snap.first $t@70@01)
        ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 j@69@01)
      elem@62@01))))
(pop) ; 5
; [eval] !(j < length(this) && itemAt(this, j) < elem)
; [eval] j < length(this) && itemAt(this, j) < elem
; [eval] j < length(this)
; [eval] length(this)
(push) ; 5
(pop) ; 5
; Joined path conditions
(push) ; 5
; [then-branch: 36 | !(j@69@01 < length(First:($t@70@01), this@61@01)) | live]
; [else-branch: 36 | j@69@01 < length(First:($t@70@01), this@61@01) | live]
(push) ; 6
; [then-branch: 36 | !(j@69@01 < length(First:($t@70@01), this@61@01))]
(assert (not (< j@69@01 (length ($Snap.first $t@70@01) this@61@01))))
(pop) ; 6
(push) ; 6
; [else-branch: 36 | j@69@01 < length(First:($t@70@01), this@61@01)]
(assert (< j@69@01 (length ($Snap.first $t@70@01) this@61@01)))
; [eval] itemAt(this, j) < elem
; [eval] itemAt(this, j)
(push) ; 7
; [eval] 0 <= index
; [eval] index < length(this)
; [eval] length(this)
(push) ; 8
(pop) ; 8
; Joined path conditions
(assert (itemAt%precondition ($Snap.combine
  ($Snap.first $t@70@01)
  ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 j@69@01))
(pop) ; 7
; Joined path conditions
(assert (itemAt%precondition ($Snap.combine
  ($Snap.first $t@70@01)
  ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 j@69@01))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(push) ; 5
(set-option :timeout 10)
(assert (not (and
  (< j@69@01 (length ($Snap.first $t@70@01) this@61@01))
  (<
    (itemAt ($Snap.combine
      ($Snap.first $t@70@01)
      ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 j@69@01)
    elem@62@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (and
    (< j@69@01 (length ($Snap.first $t@70@01) this@61@01))
    (<
      (itemAt ($Snap.combine
        ($Snap.first $t@70@01)
        ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 j@69@01)
      elem@62@01)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 37 | !(j@69@01 < length(First:($t@70@01), this@61@01) && itemAt((First:($t@70@01), (_, _)), this@61@01, j@69@01) < elem@62@01) | live]
; [else-branch: 37 | j@69@01 < length(First:($t@70@01), this@61@01) && itemAt((First:($t@70@01), (_, _)), this@61@01, j@69@01) < elem@62@01 | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 37 | !(j@69@01 < length(First:($t@70@01), this@61@01) && itemAt((First:($t@70@01), (_, _)), this@61@01, j@69@01) < elem@62@01)]
(assert (not
  (and
    (< j@69@01 (length ($Snap.first $t@70@01) this@61@01))
    (<
      (itemAt ($Snap.combine
        ($Snap.first $t@70@01)
        ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 j@69@01)
      elem@62@01))))
; [exec]
; unfold acc(AList(this), write)
(assert (=
  ($Snap.first $t@70@01)
  ($Snap.combine
    ($Snap.first ($Snap.first $t@70@01))
    ($Snap.second ($Snap.first $t@70@01)))))
(assert (not (= this@61@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.first $t@70@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first $t@70@01)))
    ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.first $t@70@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@70@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01)))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second ($Snap.first $t@70@01)))) $Snap.unit))
; [eval] 0 <= this.size
(assert (<=
  0
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01)))))
  $Snap.unit))
; [eval] this.size <= len(this.elems)
; [eval] len(this.elems)
(assert (<=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))
  (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))
  $Snap.unit))
; [eval] 0 < len(this.elems)
; [eval] len(this.elems)
(assert (<
  0
  (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))))))
(declare-const i@84@01 Int)
(push) ; 6
; [eval] 0 <= i && i < len(this.elems)
; [eval] 0 <= i
(push) ; 7
; [then-branch: 38 | !(0 <= i@84@01) | live]
; [else-branch: 38 | 0 <= i@84@01 | live]
(push) ; 8
; [then-branch: 38 | !(0 <= i@84@01)]
(assert (not (<= 0 i@84@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 38 | 0 <= i@84@01]
(assert (<= 0 i@84@01))
; [eval] i < len(this.elems)
; [eval] len(this.elems)
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@84@01) (not (<= 0 i@84@01))))
(assert (and
  (<= 0 i@84@01)
  (<
    i@84@01
    (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
; [eval] loc(this.elems, i)
(pop) ; 6
(declare-fun inv@85@01 ($Ref) Int)
(declare-fun img@86@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@84@01 Int)) (!
  (=>
    (and
      (<= 0 i@84@01)
      (<
        i@84@01
        (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))))))
    (or (<= 0 i@84@01) (not (<= 0 i@84@01))))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@84@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 6
(assert (not (forall ((i1@84@01 Int) (i2@84@01 Int)) (!
  (=>
    (and
      (and
        (<= 0 i1@84@01)
        (<
          i1@84@01
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))))))
      (and
        (<= 0 i2@84@01)
        (<
          i2@84@01
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))))))
      (=
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i1@84@01)
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i2@84@01)))
    (= i1@84@01 i2@84@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@84@01 Int)) (!
  (=>
    (and
      (<= 0 i@84@01)
      (<
        i@84@01
        (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))))))
    (and
      (=
        (inv@85@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@84@01))
        i@84@01)
      (img@86@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@84@01))))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@84@01))
  :qid |quant-u-18747|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@86@01 r)
      (and
        (<= 0 (inv@85@01 r))
        (<
          (inv@85@01 r)
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
    (=
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) (inv@85@01 r))
      r))
  :pattern ((inv@85@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@84@01 Int)) (!
  (=>
    (and
      (<= 0 i@84@01)
      (<
        i@84@01
        (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))))))
    (not
      (=
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@84@01)
        $Ref.null)))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@84@01))
  :qid |val-permImpliesNonNull|)))
(declare-const sm@87@01 $FVF<val>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@86@01 r)
      (and
        (<= 0 (inv@85@01 r))
        (<
          (inv@85@01 r)
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
    (=
      ($FVF.lookup_val (as sm@87@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r)))
  :pattern (($FVF.lookup_val (as sm@87@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r))
  :qid |qp.fvfValDef17|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r) r)
  :pattern (($FVF.lookup_val (as sm@87@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef18|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (<= 0 (inv@85@01 r))
      (<
        (inv@85@01 r)
        (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))))))
    ($FVF.loc_val ($FVF.lookup_val (as sm@87@01  $FVF<val>) r) r))
  :pattern ((inv@85@01 r))
  :qid |quant-u-18748|)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (AList%trigger ($Snap.first $t@70@01) this@61@01))
; [eval] this.size == len(this.elems)
; [eval] len(this.elems)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))
    (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))))))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))
  (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 39 | First:(Second:(First:($t@70@01))) == len[Int](First:(First:($t@70@01))) | live]
; [else-branch: 39 | First:(Second:(First:($t@70@01))) != len[Int](First:(First:($t@70@01))) | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 39 | First:(Second:(First:($t@70@01))) == len[Int](First:(First:($t@70@01)))]
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))
  (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))))))
; [exec]
; var a: Array
(declare-const a@88@01 Array_)
; [exec]
; inhale len(a) == len(this.elems) * 2 &&
;   (forall i: Int ::0 <= i && i < len(a) ==> acc(loc(a, i).val, write))
(declare-const $t@89@01 $Snap)
(assert (= $t@89@01 ($Snap.combine ($Snap.first $t@89@01) ($Snap.second $t@89@01))))
(assert (= ($Snap.first $t@89@01) $Snap.unit))
; [eval] len(a) == len(this.elems) * 2
; [eval] len(a)
; [eval] len(this.elems) * 2
; [eval] len(this.elems)
(assert (=
  (len<Int> a@88@01)
  (*
    (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))))
    2)))
(declare-const i@90@01 Int)
(push) ; 7
; [eval] 0 <= i && i < len(a)
; [eval] 0 <= i
(push) ; 8
; [then-branch: 40 | !(0 <= i@90@01) | live]
; [else-branch: 40 | 0 <= i@90@01 | live]
(push) ; 9
; [then-branch: 40 | !(0 <= i@90@01)]
(assert (not (<= 0 i@90@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 40 | 0 <= i@90@01]
(assert (<= 0 i@90@01))
; [eval] i < len(a)
; [eval] len(a)
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@90@01) (not (<= 0 i@90@01))))
(assert (and (<= 0 i@90@01) (< i@90@01 (len<Int> a@88@01))))
; [eval] loc(a, i)
(pop) ; 7
(declare-fun inv@91@01 ($Ref) Int)
(declare-fun img@92@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@90@01 Int)) (!
  (=>
    (and (<= 0 i@90@01) (< i@90@01 (len<Int> a@88@01)))
    (or (<= 0 i@90@01) (not (<= 0 i@90@01))))
  :pattern ((loc<Ref> a@88@01 i@90@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((i1@90@01 Int) (i2@90@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@90@01) (< i1@90@01 (len<Int> a@88@01)))
      (and (<= 0 i2@90@01) (< i2@90@01 (len<Int> a@88@01)))
      (= (loc<Ref> a@88@01 i1@90@01) (loc<Ref> a@88@01 i2@90@01)))
    (= i1@90@01 i2@90@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@90@01 Int)) (!
  (=>
    (and (<= 0 i@90@01) (< i@90@01 (len<Int> a@88@01)))
    (and
      (= (inv@91@01 (loc<Ref> a@88@01 i@90@01)) i@90@01)
      (img@92@01 (loc<Ref> a@88@01 i@90@01))))
  :pattern ((loc<Ref> a@88@01 i@90@01))
  :qid |quant-u-18750|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@92@01 r)
      (and (<= 0 (inv@91@01 r)) (< (inv@91@01 r) (len<Int> a@88@01))))
    (= (loc<Ref> a@88@01 (inv@91@01 r)) r))
  :pattern ((inv@91@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@90@01 Int)) (!
  (=>
    (and (<= 0 i@90@01) (< i@90@01 (len<Int> a@88@01)))
    (not (= (loc<Ref> a@88@01 i@90@01) $Ref.null)))
  :pattern ((loc<Ref> a@88@01 i@90@01))
  :qid |val-permImpliesNonNull|)))
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (=
      (loc<Ref> a@88@01 i@90@01)
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@84@01))
    (=
      (and
        (img@92@01 r)
        (and (<= 0 (inv@91@01 r)) (< (inv@91@01 r) (len<Int> a@88@01))))
      (and
        (img@86@01 r)
        (and
          (<= 0 (inv@85@01 r))
          (<
            (inv@85@01 r)
            (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))))
  
  :qid |quant-u-18751|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const sm@93@01 $FVF<val>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@86@01 r)
      (and
        (<= 0 (inv@85@01 r))
        (<
          (inv@85@01 r)
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
    (=
      ($FVF.lookup_val (as sm@93@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r)))
  :pattern (($FVF.lookup_val (as sm@93@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@92@01 r)
      (and (<= 0 (inv@91@01 r)) (< (inv@91@01 r) (len<Int> a@88@01))))
    (=
      ($FVF.lookup_val (as sm@93@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@89@01)) r)))
  :pattern (($FVF.lookup_val (as sm@93@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@89@01)) r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@89@01)) r) r))
  :pattern (($FVF.lookup_val (as sm@93@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef21|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (<= 0 (inv@91@01 r)) (< (inv@91@01 r) (len<Int> a@88@01)))
    ($FVF.loc_val ($FVF.lookup_val (as sm@93@01  $FVF<val>) r) r))
  :pattern ((inv@91@01 r))
  :qid |quant-u-18752|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall i: Int ::
;     { loc(a, i).val }
;     0 <= i && i < len(this.elems) ==>
;     loc(a, i).val == loc(this.elems, i).val)
(declare-const $t@94@01 $Snap)
(assert (= $t@94@01 $Snap.unit))
; [eval] (forall i: Int :: { loc(a, i).val } 0 <= i && i < len(this.elems) ==> loc(a, i).val == loc(this.elems, i).val)
(declare-const i@95@01 Int)
(set-option :timeout 0)
(push) ; 7
; [eval] 0 <= i && i < len(this.elems) ==> loc(a, i).val == loc(this.elems, i).val
; [eval] 0 <= i && i < len(this.elems)
; [eval] 0 <= i
(push) ; 8
; [then-branch: 41 | !(0 <= i@95@01) | live]
; [else-branch: 41 | 0 <= i@95@01 | live]
(push) ; 9
; [then-branch: 41 | !(0 <= i@95@01)]
(assert (not (<= 0 i@95@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 41 | 0 <= i@95@01]
(assert (<= 0 i@95@01))
; [eval] i < len(this.elems)
; [eval] len(this.elems)
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@95@01) (not (<= 0 i@95@01))))
(push) ; 8
; [then-branch: 42 | 0 <= i@95@01 && i@95@01 < len[Int](First:(First:($t@70@01))) | live]
; [else-branch: 42 | !(0 <= i@95@01 && i@95@01 < len[Int](First:(First:($t@70@01)))) | live]
(push) ; 9
; [then-branch: 42 | 0 <= i@95@01 && i@95@01 < len[Int](First:(First:($t@70@01)))]
(assert (and
  (<= 0 i@95@01)
  (<
    i@95@01
    (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
; [eval] loc(a, i).val == loc(this.elems, i).val
; [eval] loc(a, i)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@86@01 r)
        (and
          (<= 0 (inv@85@01 r))
          (<
            (inv@85@01 r)
            (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
      (=
        ($FVF.lookup_val (as sm@93@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r)))
    :pattern (($FVF.lookup_val (as sm@93@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r))
    :qid |qp.fvfValDef19|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@92@01 r)
        (and (<= 0 (inv@91@01 r)) (< (inv@91@01 r) (len<Int> a@88@01))))
      (=
        ($FVF.lookup_val (as sm@93@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@89@01)) r)))
    :pattern (($FVF.lookup_val (as sm@93@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@89@01)) r))
    :qid |qp.fvfValDef20|))
  (forall ((r $Ref)) (!
    (and
      ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r) r)
      ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@89@01)) r) r))
    :pattern (($FVF.lookup_val (as sm@93@01  $FVF<val>) r))
    :qid |qp.fvfResTrgDef21|))))
(assert ($FVF.loc_val ($FVF.lookup_val (as sm@93@01  $FVF<val>) (loc<Ref> a@88@01 i@95@01)) (loc<Ref> a@88@01 i@95@01)))
(push) ; 10
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@86@01 (loc<Ref> a@88@01 i@95@01))
        (and
          (<= 0 (inv@85@01 (loc<Ref> a@88@01 i@95@01)))
          (<
            (inv@85@01 (loc<Ref> a@88@01 i@95@01))
            (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
      $Perm.Write
      $Perm.No)
    (ite
      (and
        (img@92@01 (loc<Ref> a@88@01 i@95@01))
        (and
          (<= 0 (inv@91@01 (loc<Ref> a@88@01 i@95@01)))
          (< (inv@91@01 (loc<Ref> a@88@01 i@95@01)) (len<Int> a@88@01))))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [eval] loc(this.elems, i)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@86@01 r)
        (and
          (<= 0 (inv@85@01 r))
          (<
            (inv@85@01 r)
            (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
      (=
        ($FVF.lookup_val (as sm@93@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r)))
    :pattern (($FVF.lookup_val (as sm@93@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r))
    :qid |qp.fvfValDef19|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@92@01 r)
        (and (<= 0 (inv@91@01 r)) (< (inv@91@01 r) (len<Int> a@88@01))))
      (=
        ($FVF.lookup_val (as sm@93@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@89@01)) r)))
    :pattern (($FVF.lookup_val (as sm@93@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@89@01)) r))
    :qid |qp.fvfValDef20|))
  (forall ((r $Ref)) (!
    (and
      ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r) r)
      ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@89@01)) r) r))
    :pattern (($FVF.lookup_val (as sm@93@01  $FVF<val>) r))
    :qid |qp.fvfResTrgDef21|))))
(assert ($FVF.loc_val ($FVF.lookup_val (as sm@93@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@95@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@95@01)))
(push) ; 10
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@86@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@95@01))
        (and
          (<=
            0
            (inv@85@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@95@01)))
          (<
            (inv@85@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@95@01))
            (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
      $Perm.Write
      $Perm.No)
    (ite
      (and
        (img@92@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@95@01))
        (and
          (<=
            0
            (inv@91@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@95@01)))
          (<
            (inv@91@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@95@01))
            (len<Int> a@88@01))))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
(push) ; 9
; [else-branch: 42 | !(0 <= i@95@01 && i@95@01 < len[Int](First:(First:($t@70@01))))]
(assert (not
  (and
    (<= 0 i@95@01)
    (<
      i@95@01
      (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))))))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@86@01 r)
      (and
        (<= 0 (inv@85@01 r))
        (<
          (inv@85@01 r)
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
    (=
      ($FVF.lookup_val (as sm@93@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r)))
  :pattern (($FVF.lookup_val (as sm@93@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@92@01 r)
      (and (<= 0 (inv@91@01 r)) (< (inv@91@01 r) (len<Int> a@88@01))))
    (=
      ($FVF.lookup_val (as sm@93@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@89@01)) r)))
  :pattern (($FVF.lookup_val (as sm@93@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@89@01)) r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@89@01)) r) r))
  :pattern (($FVF.lookup_val (as sm@93@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef21|)))
(assert (=>
  (and
    (<= 0 i@95@01)
    (<
      i@95@01
      (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))))))
  (and
    (<= 0 i@95@01)
    (<
      i@95@01
      (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))
    ($FVF.loc_val ($FVF.lookup_val (as sm@93@01  $FVF<val>) (loc<Ref> a@88@01 i@95@01)) (loc<Ref> a@88@01 i@95@01))
    ($FVF.loc_val ($FVF.lookup_val (as sm@93@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@95@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@95@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 i@95@01)
      (<
        i@95@01
        (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
  (and
    (<= 0 i@95@01)
    (<
      i@95@01
      (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))))))))
; Definitional axioms for snapshot map values
(pop) ; 7
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@86@01 r)
      (and
        (<= 0 (inv@85@01 r))
        (<
          (inv@85@01 r)
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
    (=
      ($FVF.lookup_val (as sm@93@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r)))
  :pattern (($FVF.lookup_val (as sm@93@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@92@01 r)
      (and (<= 0 (inv@91@01 r)) (< (inv@91@01 r) (len<Int> a@88@01))))
    (=
      ($FVF.lookup_val (as sm@93@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@89@01)) r)))
  :pattern (($FVF.lookup_val (as sm@93@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@89@01)) r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@89@01)) r) r))
  :pattern (($FVF.lookup_val (as sm@93@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef21|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@95@01 Int)) (!
  (and
    (or (<= 0 i@95@01) (not (<= 0 i@95@01)))
    (=>
      (and
        (<= 0 i@95@01)
        (<
          i@95@01
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))))))
      (and
        (<= 0 i@95@01)
        (<
          i@95@01
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))
        ($FVF.loc_val ($FVF.lookup_val (as sm@93@01  $FVF<val>) (loc<Ref> a@88@01 i@95@01)) (loc<Ref> a@88@01 i@95@01))
        ($FVF.loc_val ($FVF.lookup_val (as sm@93@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@95@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@95@01))))
    (or
      (not
        (and
          (<= 0 i@95@01)
          (<
            i@95@01
            (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
      (and
        (<= 0 i@95@01)
        (<
          i@95@01
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))))))))
  :pattern (($FVF.loc_val ($FVF.lookup_val (as sm@93@01  $FVF<val>) (loc<Ref> a@88@01 i@95@01)) (loc<Ref> a@88@01 i@95@01)))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@123@12@123@114-aux|)))
(assert (forall ((i@95@01 Int)) (!
  (=>
    (and
      (<= 0 i@95@01)
      (<
        i@95@01
        (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))))))
    (=
      ($FVF.lookup_val (as sm@93@01  $FVF<val>) (loc<Ref> a@88@01 i@95@01))
      ($FVF.lookup_val (as sm@93@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@95@01))))
  :pattern (($FVF.loc_val ($FVF.lookup_val (as sm@93@01  $FVF<val>) (loc<Ref> a@88@01 i@95@01)) (loc<Ref> a@88@01 i@95@01)))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@123@12@123@114|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; this.elems := a
; [exec]
; t := this.size
(declare-const t@96@01 Int)
(assert (=
  t@96@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))
(declare-const t@97@01 Int)
(set-option :timeout 0)
(push) ; 7
; Loop head block: Check well-definedness of invariant
(declare-const $t@98@01 $Snap)
(assert (= $t@98@01 ($Snap.combine ($Snap.first $t@98@01) ($Snap.second $t@98@01))))
(assert (=
  ($Snap.second $t@98@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@98@01))
    ($Snap.second ($Snap.second $t@98@01)))))
(assert (=
  ($Snap.second ($Snap.second $t@98@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@98@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))
; [eval] loc(this.elems, j)
(declare-const sm@99@01 $FVF<val>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_val (as sm@99@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@98@01))))))
(assert (<=
  $Perm.No
  (ite
    (=
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01)
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
    (/ (to_real 1) (to_real 2))
    $Perm.No)))
(assert (<=
  (ite
    (=
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01)
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
    (/ (to_real 1) (to_real 2))
    $Perm.No)
  $Perm.Write))
(assert (=>
  (=
    (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01)
    (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
  (not
    (=
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01)
      $Ref.null))))
(declare-const sm@100@01 $FVF<val>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
    (=
      ($FVF.lookup_val (as sm@100@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@99@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@100@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@99@01  $FVF<val>) r))
  :qid |qp.fvfValDef22|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_val ($FVF.lookup_val (as sm@99@01  $FVF<val>) r) r)
  :pattern (($FVF.lookup_val (as sm@100@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef23|)))
(assert ($FVF.loc_val ($FVF.lookup_val (as sm@100@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@98@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@98@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@98@01))))
  $Snap.unit))
; [eval] j <= t
(assert (<= j@69@01 t@97@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))
  $Snap.unit))
; [eval] t <= this.size
(assert (<= t@97@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))
  $Snap.unit))
; [eval] this.size == old(length(this))
; [eval] old(length(this))
; [eval] length(this)
(push) ; 8
(pop) ; 8
; Joined path conditions
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))
  (length $t@64@01 this@61@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))
  $Snap.unit))
; [eval] -1 <= j
; [eval] -1
(assert (<= (- 0 1) j@69@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))))
  $Snap.unit))
; [eval] this.size < len(this.elems)
; [eval] len(this.elems)
(assert (<
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))
  (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))))))))
(declare-const i@101@01 Int)
(push) ; 8
; [eval] j < i && i <= this.size
; [eval] j < i
(push) ; 9
; [then-branch: 43 | !(j@69@01 < i@101@01) | live]
; [else-branch: 43 | j@69@01 < i@101@01 | live]
(push) ; 10
; [then-branch: 43 | !(j@69@01 < i@101@01)]
(assert (not (< j@69@01 i@101@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 43 | j@69@01 < i@101@01]
(assert (< j@69@01 i@101@01))
; [eval] i <= this.size
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (< j@69@01 i@101@01) (not (< j@69@01 i@101@01))))
(assert (and
  (< j@69@01 i@101@01)
  (<= i@101@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
; [eval] loc(this.elems, i)
(pop) ; 8
(declare-fun inv@102@01 ($Ref) Int)
(declare-fun img@103@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@101@01 Int)) (!
  (=>
    (and
      (< j@69@01 i@101@01)
      (<=
        i@101@01
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))
    (or (< j@69@01 i@101@01) (not (< j@69@01 i@101@01))))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@101@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 8
(assert (not (forall ((i1@101@01 Int) (i2@101@01 Int)) (!
  (=>
    (and
      (and
        (< j@69@01 i1@101@01)
        (<=
          i1@101@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))
      (and
        (< j@69@01 i2@101@01)
        (<=
          i2@101@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))
      (=
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i1@101@01)
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i2@101@01)))
    (= i1@101@01 i2@101@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@101@01 Int)) (!
  (=>
    (and
      (< j@69@01 i@101@01)
      (<=
        i@101@01
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))
    (and
      (=
        (inv@102@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@101@01))
        i@101@01)
      (img@103@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@101@01))))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@101@01))
  :qid |quant-u-18754|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@103@01 r)
      (and
        (< j@69@01 (inv@102@01 r))
        (<=
          (inv@102@01 r)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
    (=
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) (inv@102@01 r))
      r))
  :pattern ((inv@102@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@101@01 Int)) (!
  (=>
    (and
      (< j@69@01 i@101@01)
      (<=
        i@101@01
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))
    (not
      (=
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@101@01)
        $Ref.null)))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@101@01))
  :qid |val-permImpliesNonNull|)))
(declare-const sm@104@01 $FVF<val>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
    (=
      ($FVF.lookup_val (as sm@104@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@99@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@104@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@99@01  $FVF<val>) r))
  :qid |qp.fvfValDef24|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@103@01 r)
      (and
        (< j@69@01 (inv@102@01 r))
        (<=
          (inv@102@01 r)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
    (=
      ($FVF.lookup_val (as sm@104@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@104@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r))
  :qid |qp.fvfValDef25|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val (as sm@99@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r) r))
  :pattern (($FVF.lookup_val (as sm@104@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef26|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (< j@69@01 (inv@102@01 r))
      (<=
        (inv@102@01 r)
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))
    ($FVF.loc_val ($FVF.lookup_val (as sm@104@01  $FVF<val>) r) r))
  :pattern ((inv@102@01 r))
  :qid |quant-u-18755|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))))))
  $Snap.unit))
; [eval] (forall i: Int :: { loc(this.elems, i) } j <= i && i <= this.size ==> i < t ==> loc(this.elems, i).val == old(itemAt(this, i)))
(declare-const i@105@01 Int)
(push) ; 8
; [eval] j <= i && i <= this.size ==> i < t ==> loc(this.elems, i).val == old(itemAt(this, i))
; [eval] j <= i && i <= this.size
; [eval] j <= i
(push) ; 9
; [then-branch: 44 | !(j@69@01 <= i@105@01) | live]
; [else-branch: 44 | j@69@01 <= i@105@01 | live]
(push) ; 10
; [then-branch: 44 | !(j@69@01 <= i@105@01)]
(assert (not (<= j@69@01 i@105@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 44 | j@69@01 <= i@105@01]
(assert (<= j@69@01 i@105@01))
; [eval] i <= this.size
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (<= j@69@01 i@105@01) (not (<= j@69@01 i@105@01))))
(push) ; 9
; [then-branch: 45 | j@69@01 <= i@105@01 && i@105@01 <= First:(Second:($t@98@01)) | live]
; [else-branch: 45 | !(j@69@01 <= i@105@01 && i@105@01 <= First:(Second:($t@98@01))) | live]
(push) ; 10
; [then-branch: 45 | j@69@01 <= i@105@01 && i@105@01 <= First:(Second:($t@98@01))]
(assert (and
  (<= j@69@01 i@105@01)
  (<= i@105@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
; [eval] i < t ==> loc(this.elems, i).val == old(itemAt(this, i))
; [eval] i < t
(push) ; 11
; [then-branch: 46 | i@105@01 < t@97@01 | live]
; [else-branch: 46 | !(i@105@01 < t@97@01) | live]
(push) ; 12
; [then-branch: 46 | i@105@01 < t@97@01]
(assert (< i@105@01 t@97@01))
; [eval] loc(this.elems, i).val == old(itemAt(this, i))
; [eval] loc(this.elems, i)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (=
        r
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
      (=
        ($FVF.lookup_val (as sm@104@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@99@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@104@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@99@01  $FVF<val>) r))
    :qid |qp.fvfValDef24|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@103@01 r)
        (and
          (< j@69@01 (inv@102@01 r))
          (<=
            (inv@102@01 r)
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
      (=
        ($FVF.lookup_val (as sm@104@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r)))
    :pattern (($FVF.lookup_val (as sm@104@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r))
    :qid |qp.fvfValDef25|))
  (forall ((r $Ref)) (!
    (and
      ($FVF.loc_val ($FVF.lookup_val (as sm@99@01  $FVF<val>) r) r)
      ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r) r))
    :pattern (($FVF.lookup_val (as sm@104@01  $FVF<val>) r))
    :qid |qp.fvfResTrgDef26|))))
(assert ($FVF.loc_val ($FVF.lookup_val (as sm@104@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@105@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@105@01)))
(push) ; 13
(assert (not (<
  $Perm.No
  (+
    (ite
      (=
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@105@01)
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
      (/ (to_real 1) (to_real 2))
      $Perm.No)
    (ite
      (and
        (img@103@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@105@01))
        (and
          (<
            j@69@01
            (inv@102@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@105@01)))
          (<=
            (inv@102@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@105@01))
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [eval] old(itemAt(this, i))
; [eval] itemAt(this, i)
(push) ; 13
; [eval] 0 <= index
(push) ; 14
(assert (not (<= 0 i@105@01)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 i@105@01))
; [eval] index < length(this)
; [eval] length(this)
(push) ; 14
(pop) ; 14
; Joined path conditions
(push) ; 14
(assert (not (< i@105@01 (length $t@64@01 this@61@01))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (< i@105@01 (length $t@64@01 this@61@01)))
(assert (itemAt%precondition ($Snap.combine
  $t@64@01
  ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 i@105@01))
(pop) ; 13
; Joined path conditions
(assert (and
  (<= 0 i@105@01)
  (< i@105@01 (length $t@64@01 this@61@01))
  (itemAt%precondition ($Snap.combine
    $t@64@01
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 i@105@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 46 | !(i@105@01 < t@97@01)]
(assert (not (< i@105@01 t@97@01)))
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
    (=
      ($FVF.lookup_val (as sm@104@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@99@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@104@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@99@01  $FVF<val>) r))
  :qid |qp.fvfValDef24|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@103@01 r)
      (and
        (< j@69@01 (inv@102@01 r))
        (<=
          (inv@102@01 r)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
    (=
      ($FVF.lookup_val (as sm@104@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@104@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r))
  :qid |qp.fvfValDef25|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val (as sm@99@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r) r))
  :pattern (($FVF.lookup_val (as sm@104@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef26|)))
(assert (=>
  (< i@105@01 t@97@01)
  (and
    (< i@105@01 t@97@01)
    ($FVF.loc_val ($FVF.lookup_val (as sm@104@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@105@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@105@01))
    (<= 0 i@105@01)
    (< i@105@01 (length $t@64@01 this@61@01))
    (itemAt%precondition ($Snap.combine
      $t@64@01
      ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 i@105@01))))
; Joined path conditions
(assert (or (not (< i@105@01 t@97@01)) (< i@105@01 t@97@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 45 | !(j@69@01 <= i@105@01 && i@105@01 <= First:(Second:($t@98@01)))]
(assert (not
  (and
    (<= j@69@01 i@105@01)
    (<=
      i@105@01
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
    (=
      ($FVF.lookup_val (as sm@104@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@99@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@104@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@99@01  $FVF<val>) r))
  :qid |qp.fvfValDef24|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@103@01 r)
      (and
        (< j@69@01 (inv@102@01 r))
        (<=
          (inv@102@01 r)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
    (=
      ($FVF.lookup_val (as sm@104@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@104@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r))
  :qid |qp.fvfValDef25|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val (as sm@99@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r) r))
  :pattern (($FVF.lookup_val (as sm@104@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef26|)))
(assert (=>
  (and
    (<= j@69@01 i@105@01)
    (<=
      i@105@01
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))
  (and
    (<= j@69@01 i@105@01)
    (<=
      i@105@01
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))
    (=>
      (< i@105@01 t@97@01)
      (and
        (< i@105@01 t@97@01)
        ($FVF.loc_val ($FVF.lookup_val (as sm@104@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@105@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@105@01))
        (<= 0 i@105@01)
        (< i@105@01 (length $t@64@01 this@61@01))
        (itemAt%precondition ($Snap.combine
          $t@64@01
          ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 i@105@01)))
    (or (not (< i@105@01 t@97@01)) (< i@105@01 t@97@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= j@69@01 i@105@01)
      (<=
        i@105@01
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
  (and
    (<= j@69@01 i@105@01)
    (<=
      i@105@01
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))))
(pop) ; 8
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
    (=
      ($FVF.lookup_val (as sm@104@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@99@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@104@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@99@01  $FVF<val>) r))
  :qid |qp.fvfValDef24|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@103@01 r)
      (and
        (< j@69@01 (inv@102@01 r))
        (<=
          (inv@102@01 r)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
    (=
      ($FVF.lookup_val (as sm@104@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@104@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r))
  :qid |qp.fvfValDef25|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val (as sm@99@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r) r))
  :pattern (($FVF.lookup_val (as sm@104@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef26|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@105@01 Int)) (!
  (and
    (or (<= j@69@01 i@105@01) (not (<= j@69@01 i@105@01)))
    (=>
      (and
        (<= j@69@01 i@105@01)
        (<=
          i@105@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))
      (and
        (<= j@69@01 i@105@01)
        (<=
          i@105@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))
        (=>
          (< i@105@01 t@97@01)
          (and
            (< i@105@01 t@97@01)
            ($FVF.loc_val ($FVF.lookup_val (as sm@104@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@105@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@105@01))
            (<= 0 i@105@01)
            (< i@105@01 (length $t@64@01 this@61@01))
            (itemAt%precondition ($Snap.combine
              $t@64@01
              ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 i@105@01)))
        (or (not (< i@105@01 t@97@01)) (< i@105@01 t@97@01))))
    (or
      (not
        (and
          (<= j@69@01 i@105@01)
          (<=
            i@105@01
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
      (and
        (<= j@69@01 i@105@01)
        (<=
          i@105@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@105@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@136@15@136@137-aux|)))
(assert (forall ((i@105@01 Int)) (!
  (=>
    (and
      (and
        (<= j@69@01 i@105@01)
        (<=
          i@105@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))
      (< i@105@01 t@97@01))
    (=
      ($FVF.lookup_val (as sm@104@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@105@01))
      (itemAt ($Snap.combine $t@64@01 ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 i@105@01)))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@105@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@136@15@136@137|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))))))
  $Snap.unit))
; [eval] (forall i: Int :: { loc(this.elems, i) } j < i && i <= this.size ==> i > t ==> loc(this.elems, i).val == old(itemAt(this, i - 1)))
(declare-const i@106@01 Int)
(push) ; 8
; [eval] j < i && i <= this.size ==> i > t ==> loc(this.elems, i).val == old(itemAt(this, i - 1))
; [eval] j < i && i <= this.size
; [eval] j < i
(push) ; 9
; [then-branch: 47 | !(j@69@01 < i@106@01) | live]
; [else-branch: 47 | j@69@01 < i@106@01 | live]
(push) ; 10
; [then-branch: 47 | !(j@69@01 < i@106@01)]
(assert (not (< j@69@01 i@106@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 47 | j@69@01 < i@106@01]
(assert (< j@69@01 i@106@01))
; [eval] i <= this.size
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (< j@69@01 i@106@01) (not (< j@69@01 i@106@01))))
(push) ; 9
; [then-branch: 48 | j@69@01 < i@106@01 && i@106@01 <= First:(Second:($t@98@01)) | live]
; [else-branch: 48 | !(j@69@01 < i@106@01 && i@106@01 <= First:(Second:($t@98@01))) | live]
(push) ; 10
; [then-branch: 48 | j@69@01 < i@106@01 && i@106@01 <= First:(Second:($t@98@01))]
(assert (and
  (< j@69@01 i@106@01)
  (<= i@106@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
; [eval] i > t ==> loc(this.elems, i).val == old(itemAt(this, i - 1))
; [eval] i > t
(push) ; 11
; [then-branch: 49 | i@106@01 > t@97@01 | live]
; [else-branch: 49 | !(i@106@01 > t@97@01) | live]
(push) ; 12
; [then-branch: 49 | i@106@01 > t@97@01]
(assert (> i@106@01 t@97@01))
; [eval] loc(this.elems, i).val == old(itemAt(this, i - 1))
; [eval] loc(this.elems, i)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (=
        r
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
      (=
        ($FVF.lookup_val (as sm@104@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@99@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@104@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@99@01  $FVF<val>) r))
    :qid |qp.fvfValDef24|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@103@01 r)
        (and
          (< j@69@01 (inv@102@01 r))
          (<=
            (inv@102@01 r)
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
      (=
        ($FVF.lookup_val (as sm@104@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r)))
    :pattern (($FVF.lookup_val (as sm@104@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r))
    :qid |qp.fvfValDef25|))
  (forall ((r $Ref)) (!
    (and
      ($FVF.loc_val ($FVF.lookup_val (as sm@99@01  $FVF<val>) r) r)
      ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r) r))
    :pattern (($FVF.lookup_val (as sm@104@01  $FVF<val>) r))
    :qid |qp.fvfResTrgDef26|))))
(assert ($FVF.loc_val ($FVF.lookup_val (as sm@104@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@106@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@106@01)))
(push) ; 13
(assert (not (<
  $Perm.No
  (+
    (ite
      (=
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@106@01)
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
      (/ (to_real 1) (to_real 2))
      $Perm.No)
    (ite
      (and
        (img@103@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@106@01))
        (and
          (<
            j@69@01
            (inv@102@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@106@01)))
          (<=
            (inv@102@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@106@01))
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [eval] old(itemAt(this, i - 1))
; [eval] itemAt(this, i - 1)
; [eval] i - 1
(push) ; 13
; [eval] 0 <= index
(push) ; 14
(assert (not (<= 0 (- i@106@01 1))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 (- i@106@01 1)))
; [eval] index < length(this)
; [eval] length(this)
(push) ; 14
(pop) ; 14
; Joined path conditions
(push) ; 14
(assert (not (< (- i@106@01 1) (length $t@64@01 this@61@01))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (< (- i@106@01 1) (length $t@64@01 this@61@01)))
(assert (itemAt%precondition ($Snap.combine
  $t@64@01
  ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- i@106@01 1)))
(pop) ; 13
; Joined path conditions
(assert (and
  (<= 0 (- i@106@01 1))
  (< (- i@106@01 1) (length $t@64@01 this@61@01))
  (itemAt%precondition ($Snap.combine
    $t@64@01
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- i@106@01 1))))
(pop) ; 12
(push) ; 12
; [else-branch: 49 | !(i@106@01 > t@97@01)]
(assert (not (> i@106@01 t@97@01)))
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
    (=
      ($FVF.lookup_val (as sm@104@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@99@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@104@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@99@01  $FVF<val>) r))
  :qid |qp.fvfValDef24|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@103@01 r)
      (and
        (< j@69@01 (inv@102@01 r))
        (<=
          (inv@102@01 r)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
    (=
      ($FVF.lookup_val (as sm@104@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@104@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r))
  :qid |qp.fvfValDef25|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val (as sm@99@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r) r))
  :pattern (($FVF.lookup_val (as sm@104@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef26|)))
(assert (=>
  (> i@106@01 t@97@01)
  (and
    (> i@106@01 t@97@01)
    ($FVF.loc_val ($FVF.lookup_val (as sm@104@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@106@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@106@01))
    (<= 0 (- i@106@01 1))
    (< (- i@106@01 1) (length $t@64@01 this@61@01))
    (itemAt%precondition ($Snap.combine
      $t@64@01
      ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- i@106@01 1)))))
; Joined path conditions
(assert (or (not (> i@106@01 t@97@01)) (> i@106@01 t@97@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 48 | !(j@69@01 < i@106@01 && i@106@01 <= First:(Second:($t@98@01)))]
(assert (not
  (and
    (< j@69@01 i@106@01)
    (<=
      i@106@01
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
    (=
      ($FVF.lookup_val (as sm@104@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@99@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@104@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@99@01  $FVF<val>) r))
  :qid |qp.fvfValDef24|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@103@01 r)
      (and
        (< j@69@01 (inv@102@01 r))
        (<=
          (inv@102@01 r)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
    (=
      ($FVF.lookup_val (as sm@104@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@104@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r))
  :qid |qp.fvfValDef25|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val (as sm@99@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r) r))
  :pattern (($FVF.lookup_val (as sm@104@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef26|)))
(assert (=>
  (and
    (< j@69@01 i@106@01)
    (<=
      i@106@01
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))
  (and
    (< j@69@01 i@106@01)
    (<=
      i@106@01
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))
    (=>
      (> i@106@01 t@97@01)
      (and
        (> i@106@01 t@97@01)
        ($FVF.loc_val ($FVF.lookup_val (as sm@104@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@106@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@106@01))
        (<= 0 (- i@106@01 1))
        (< (- i@106@01 1) (length $t@64@01 this@61@01))
        (itemAt%precondition ($Snap.combine
          $t@64@01
          ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- i@106@01 1))))
    (or (not (> i@106@01 t@97@01)) (> i@106@01 t@97@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (< j@69@01 i@106@01)
      (<=
        i@106@01
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
  (and
    (< j@69@01 i@106@01)
    (<=
      i@106@01
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))))
(pop) ; 8
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
    (=
      ($FVF.lookup_val (as sm@104@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@99@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@104@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@99@01  $FVF<val>) r))
  :qid |qp.fvfValDef24|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@103@01 r)
      (and
        (< j@69@01 (inv@102@01 r))
        (<=
          (inv@102@01 r)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
    (=
      ($FVF.lookup_val (as sm@104@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@104@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r))
  :qid |qp.fvfValDef25|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val (as sm@99@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r) r))
  :pattern (($FVF.lookup_val (as sm@104@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef26|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@106@01 Int)) (!
  (and
    (or (< j@69@01 i@106@01) (not (< j@69@01 i@106@01)))
    (=>
      (and
        (< j@69@01 i@106@01)
        (<=
          i@106@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))
      (and
        (< j@69@01 i@106@01)
        (<=
          i@106@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))
        (=>
          (> i@106@01 t@97@01)
          (and
            (> i@106@01 t@97@01)
            ($FVF.loc_val ($FVF.lookup_val (as sm@104@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@106@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@106@01))
            (<= 0 (- i@106@01 1))
            (< (- i@106@01 1) (length $t@64@01 this@61@01))
            (itemAt%precondition ($Snap.combine
              $t@64@01
              ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- i@106@01 1))))
        (or (not (> i@106@01 t@97@01)) (> i@106@01 t@97@01))))
    (or
      (not
        (and
          (< j@69@01 i@106@01)
          (<=
            i@106@01
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
      (and
        (< j@69@01 i@106@01)
        (<=
          i@106@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@106@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@137@15@137@138-aux|)))
(assert (forall ((i@106@01 Int)) (!
  (=>
    (and
      (and
        (< j@69@01 i@106@01)
        (<=
          i@106@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))
      (> i@106@01 t@97@01))
    (=
      ($FVF.lookup_val (as sm@104@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@106@01))
      (itemAt ($Snap.combine $t@64@01 ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (-
        i@106@01
        1))))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@106@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@137@15@137@138|)))
(pop) ; 7
(push) ; 7
; Loop head block: Establish invariant
(push) ; 8
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [eval] loc(this.elems, j)
; Definitional axioms for snapshot map values
(assert ($FVF.loc_val ($FVF.lookup_val (as sm@93@01  $FVF<val>) (loc<Ref> a@88@01 j@69@01)) (loc<Ref> a@88@01 j@69@01)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@107@01 ((r $Ref)) $Perm
  (ite
    (= r (loc<Ref> a@88@01 j@69@01))
    ($Perm.min
      (ite
        (and
          (img@86@01 r)
          (and
            (<= 0 (inv@85@01 r))
            (<
              (inv@85@01 r)
              (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
        $Perm.Write
        $Perm.No)
      (/ (to_real 1) (to_real 2)))
    $Perm.No))
(define-fun pTaken@108@01 ((r $Ref)) $Perm
  (ite
    (= r (loc<Ref> a@88@01 j@69@01))
    ($Perm.min
      (ite
        (and
          (img@92@01 r)
          (and (<= 0 (inv@91@01 r)) (< (inv@91@01 r) (len<Int> a@88@01))))
        $Perm.Write
        $Perm.No)
      (- (/ (to_real 1) (to_real 2)) (pTaken@107@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
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
          (img@86@01 r)
          (and
            (<= 0 (inv@85@01 r))
            (<
              (inv@85@01 r)
              (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
        $Perm.Write
        $Perm.No)
      (pTaken@107@01 r))
    $Perm.No)
  
  :qid |quant-u-18757|))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@107@01 r) $Perm.No)
  
  :qid |quant-u-18758|))))
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
    (= r (loc<Ref> a@88@01 j@69@01))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@107@01 r)) $Perm.No))
  
  :qid |quant-u-18759|))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@92@01 r)
          (and (<= 0 (inv@91@01 r)) (< (inv@91@01 r) (len<Int> a@88@01))))
        $Perm.Write
        $Perm.No)
      (pTaken@108@01 r))
    $Perm.No)
  
  :qid |quant-u-18760|))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@108@01 r) $Perm.No)
  
  :qid |quant-u-18761|))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@88@01 j@69@01))
    (=
      (- (- (/ (to_real 1) (to_real 2)) (pTaken@107@01 r)) (pTaken@108@01 r))
      $Perm.No))
  
  :qid |quant-u-18762|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] j <= t
(set-option :timeout 0)
(push) ; 8
(assert (not (<= j@69@01 t@96@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (<= j@69@01 t@96@01))
; [eval] t <= this.size
(push) ; 8
(assert (not (<=
  t@96@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01)))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (<=
  t@96@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))
; [eval] this.size == old(length(this))
; [eval] old(length(this))
; [eval] length(this)
(push) ; 8
(pop) ; 8
; Joined path conditions
(push) ; 8
(assert (not (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))
  (length $t@64@01 this@61@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))
  (length $t@64@01 this@61@01)))
; [eval] -1 <= j
; [eval] -1
(push) ; 8
(assert (not (<= (- 0 1) j@69@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (<= (- 0 1) j@69@01))
; [eval] this.size < len(this.elems)
; [eval] len(this.elems)
(push) ; 8
(assert (not (<
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))
  (len<Int> a@88@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (<
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))
  (len<Int> a@88@01)))
(declare-const i@109@01 Int)
(push) ; 8
; [eval] j < i && i <= this.size
; [eval] j < i
(push) ; 9
; [then-branch: 50 | !(j@69@01 < i@109@01) | live]
; [else-branch: 50 | j@69@01 < i@109@01 | live]
(push) ; 10
; [then-branch: 50 | !(j@69@01 < i@109@01)]
(assert (not (< j@69@01 i@109@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 50 | j@69@01 < i@109@01]
(assert (< j@69@01 i@109@01))
; [eval] i <= this.size
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (< j@69@01 i@109@01) (not (< j@69@01 i@109@01))))
(assert (and
  (< j@69@01 i@109@01)
  (<=
    i@109@01
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01)))))))
; [eval] loc(this.elems, i)
(pop) ; 8
(declare-fun inv@110@01 ($Ref) Int)
(declare-fun img@111@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@109@01 Int)) (!
  (=>
    (and
      (< j@69@01 i@109@01)
      (<=
        i@109@01
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))
    (or (< j@69@01 i@109@01) (not (< j@69@01 i@109@01))))
  :pattern ((loc<Ref> a@88@01 i@109@01))
  :qid |val-aux|)))
(declare-const sm@112@01 $FVF<val>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@92@01 r)
        (and (<= 0 (inv@91@01 r)) (< (inv@91@01 r) (len<Int> a@88@01))))
      (< $Perm.No (- $Perm.Write (pTaken@108@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@112@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@89@01)) r)))
  :pattern (($FVF.lookup_val (as sm@112@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@89@01)) r))
  :qid |qp.fvfValDef27|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@86@01 r)
      (and
        (<= 0 (inv@85@01 r))
        (<
          (inv@85@01 r)
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
    (=
      ($FVF.lookup_val (as sm@112@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r)))
  :pattern (($FVF.lookup_val (as sm@112@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r))
  :qid |qp.fvfValDef28|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@89@01)) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r) r))
  :pattern (($FVF.lookup_val (as sm@112@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef29|)))
; Check receiver injectivity
(push) ; 8
(assert (not (forall ((i1@109@01 Int) (i2@109@01 Int)) (!
  (=>
    (and
      (and
        (and
          (< j@69@01 i1@109@01)
          (<=
            i1@109@01
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))
        ($FVF.loc_val ($FVF.lookup_val (as sm@112@01  $FVF<val>) (loc<Ref> a@88@01 i1@109@01)) (loc<Ref> a@88@01 i1@109@01)))
      (and
        (and
          (< j@69@01 i2@109@01)
          (<=
            i2@109@01
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))
        ($FVF.loc_val ($FVF.lookup_val (as sm@112@01  $FVF<val>) (loc<Ref> a@88@01 i2@109@01)) (loc<Ref> a@88@01 i2@109@01)))
      (= (loc<Ref> a@88@01 i1@109@01) (loc<Ref> a@88@01 i2@109@01)))
    (= i1@109@01 i2@109@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@109@01 Int)) (!
  (=>
    (and
      (< j@69@01 i@109@01)
      (<=
        i@109@01
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))
    (and
      (= (inv@110@01 (loc<Ref> a@88@01 i@109@01)) i@109@01)
      (img@111@01 (loc<Ref> a@88@01 i@109@01))))
  :pattern ((loc<Ref> a@88@01 i@109@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@111@01 r)
      (and
        (< j@69@01 (inv@110@01 r))
        (<=
          (inv@110@01 r)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01)))))))
    (= (loc<Ref> a@88@01 (inv@110@01 r)) r))
  :pattern ((inv@110@01 r))
  :qid |val-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (< j@69@01 (inv@110@01 r))
      (<=
        (inv@110@01 r)
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))
    ($FVF.loc_val ($FVF.lookup_val (as sm@112@01  $FVF<val>) r) r))
  :pattern ((inv@110@01 r))
  :qid |quant-u-18764|)))
(push) ; 8
(set-option :timeout 10)
(assert (not (forall ((i@109@01 Int)) (!
  (=
    (loc<Ref> a@88@01 i@109@01)
    (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@109@01))
  
  :qid |quant-u-18765|))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@113@01 ((r $Ref)) $Perm
  (ite
    (and
      (and
        (< j@69@01 (inv@110@01 r))
        (<=
          (inv@110@01 r)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))
      (img@111@01 r)
      (= r (loc<Ref> a@88@01 (inv@110@01 r))))
    ($Perm.min
      (ite
        (and
          (img@92@01 r)
          (and (<= 0 (inv@91@01 r)) (< (inv@91@01 r) (len<Int> a@88@01))))
        (- $Perm.Write (pTaken@108@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@114@01 ((r $Ref)) $Perm
  (ite
    (and
      (and
        (< j@69@01 (inv@110@01 r))
        (<=
          (inv@110@01 r)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))
      (img@111@01 r)
      (= r (loc<Ref> a@88@01 (inv@110@01 r))))
    ($Perm.min
      (ite
        (and
          (img@86@01 r)
          (and
            (<= 0 (inv@85@01 r))
            (<
              (inv@85@01 r)
              (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@113@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
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
          (img@92@01 r)
          (and (<= 0 (inv@91@01 r)) (< (inv@91@01 r) (len<Int> a@88@01))))
        (- $Perm.Write (pTaken@108@01 r))
        $Perm.No)
      (pTaken@113@01 r))
    $Perm.No)
  
  :qid |quant-u-18767|))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@113@01 r) $Perm.No)
  
  :qid |quant-u-18768|))))
(check-sat)
; unknown
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
      (and
        (< j@69@01 (inv@110@01 r))
        (<=
          (inv@110@01 r)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))
      (img@111@01 r)
      (= r (loc<Ref> a@88@01 (inv@110@01 r))))
    (= (- $Perm.Write (pTaken@113@01 r)) $Perm.No))
  
  :qid |quant-u-18769|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall i: Int :: { loc(this.elems, i) } j <= i && i <= this.size ==> i < t ==> loc(this.elems, i).val == old(itemAt(this, i)))
(declare-const i@115@01 Int)
(set-option :timeout 0)
(push) ; 8
; [eval] j <= i && i <= this.size ==> i < t ==> loc(this.elems, i).val == old(itemAt(this, i))
; [eval] j <= i && i <= this.size
; [eval] j <= i
(push) ; 9
; [then-branch: 51 | !(j@69@01 <= i@115@01) | live]
; [else-branch: 51 | j@69@01 <= i@115@01 | live]
(push) ; 10
; [then-branch: 51 | !(j@69@01 <= i@115@01)]
(assert (not (<= j@69@01 i@115@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 51 | j@69@01 <= i@115@01]
(assert (<= j@69@01 i@115@01))
; [eval] i <= this.size
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (<= j@69@01 i@115@01) (not (<= j@69@01 i@115@01))))
(push) ; 9
; [then-branch: 52 | j@69@01 <= i@115@01 && i@115@01 <= First:(Second:(First:($t@70@01))) | live]
; [else-branch: 52 | !(j@69@01 <= i@115@01 && i@115@01 <= First:(Second:(First:($t@70@01)))) | live]
(push) ; 10
; [then-branch: 52 | j@69@01 <= i@115@01 && i@115@01 <= First:(Second:(First:($t@70@01)))]
(assert (and
  (<= j@69@01 i@115@01)
  (<=
    i@115@01
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01)))))))
; [eval] i < t ==> loc(this.elems, i).val == old(itemAt(this, i))
; [eval] i < t
(push) ; 11
; [then-branch: 53 | i@115@01 < t@96@01 | live]
; [else-branch: 53 | !(i@115@01 < t@96@01) | live]
(push) ; 12
; [then-branch: 53 | i@115@01 < t@96@01]
(assert (< i@115@01 t@96@01))
; [eval] loc(this.elems, i).val == old(itemAt(this, i))
; [eval] loc(this.elems, i)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@86@01 r)
        (and
          (<= 0 (inv@85@01 r))
          (<
            (inv@85@01 r)
            (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
      (=
        ($FVF.lookup_val (as sm@93@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r)))
    :pattern (($FVF.lookup_val (as sm@93@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r))
    :qid |qp.fvfValDef19|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@92@01 r)
        (and (<= 0 (inv@91@01 r)) (< (inv@91@01 r) (len<Int> a@88@01))))
      (=
        ($FVF.lookup_val (as sm@93@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@89@01)) r)))
    :pattern (($FVF.lookup_val (as sm@93@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@89@01)) r))
    :qid |qp.fvfValDef20|))
  (forall ((r $Ref)) (!
    (and
      ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r) r)
      ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@89@01)) r) r))
    :pattern (($FVF.lookup_val (as sm@93@01  $FVF<val>) r))
    :qid |qp.fvfResTrgDef21|))))
(assert ($FVF.loc_val ($FVF.lookup_val (as sm@93@01  $FVF<val>) (loc<Ref> a@88@01 i@115@01)) (loc<Ref> a@88@01 i@115@01)))
(push) ; 13
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@86@01 (loc<Ref> a@88@01 i@115@01))
        (and
          (<= 0 (inv@85@01 (loc<Ref> a@88@01 i@115@01)))
          (<
            (inv@85@01 (loc<Ref> a@88@01 i@115@01))
            (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
      $Perm.Write
      $Perm.No)
    (ite
      (and
        (img@92@01 (loc<Ref> a@88@01 i@115@01))
        (and
          (<= 0 (inv@91@01 (loc<Ref> a@88@01 i@115@01)))
          (< (inv@91@01 (loc<Ref> a@88@01 i@115@01)) (len<Int> a@88@01))))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [eval] old(itemAt(this, i))
; [eval] itemAt(this, i)
(push) ; 13
; [eval] 0 <= index
(push) ; 14
(assert (not (<= 0 i@115@01)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 i@115@01))
; [eval] index < length(this)
; [eval] length(this)
(push) ; 14
(pop) ; 14
; Joined path conditions
(push) ; 14
(assert (not (< i@115@01 (length $t@64@01 this@61@01))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (< i@115@01 (length $t@64@01 this@61@01)))
(assert (itemAt%precondition ($Snap.combine
  $t@64@01
  ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 i@115@01))
(pop) ; 13
; Joined path conditions
(assert (and
  (<= 0 i@115@01)
  (< i@115@01 (length $t@64@01 this@61@01))
  (itemAt%precondition ($Snap.combine
    $t@64@01
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 i@115@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 53 | !(i@115@01 < t@96@01)]
(assert (not (< i@115@01 t@96@01)))
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@86@01 r)
      (and
        (<= 0 (inv@85@01 r))
        (<
          (inv@85@01 r)
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
    (=
      ($FVF.lookup_val (as sm@93@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r)))
  :pattern (($FVF.lookup_val (as sm@93@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@92@01 r)
      (and (<= 0 (inv@91@01 r)) (< (inv@91@01 r) (len<Int> a@88@01))))
    (=
      ($FVF.lookup_val (as sm@93@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@89@01)) r)))
  :pattern (($FVF.lookup_val (as sm@93@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@89@01)) r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@89@01)) r) r))
  :pattern (($FVF.lookup_val (as sm@93@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef21|)))
(assert (=>
  (< i@115@01 t@96@01)
  (and
    (< i@115@01 t@96@01)
    ($FVF.loc_val ($FVF.lookup_val (as sm@93@01  $FVF<val>) (loc<Ref> a@88@01 i@115@01)) (loc<Ref> a@88@01 i@115@01))
    (<= 0 i@115@01)
    (< i@115@01 (length $t@64@01 this@61@01))
    (itemAt%precondition ($Snap.combine
      $t@64@01
      ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 i@115@01))))
; Joined path conditions
(assert (or (not (< i@115@01 t@96@01)) (< i@115@01 t@96@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 52 | !(j@69@01 <= i@115@01 && i@115@01 <= First:(Second:(First:($t@70@01))))]
(assert (not
  (and
    (<= j@69@01 i@115@01)
    (<=
      i@115@01
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@86@01 r)
      (and
        (<= 0 (inv@85@01 r))
        (<
          (inv@85@01 r)
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
    (=
      ($FVF.lookup_val (as sm@93@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r)))
  :pattern (($FVF.lookup_val (as sm@93@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@92@01 r)
      (and (<= 0 (inv@91@01 r)) (< (inv@91@01 r) (len<Int> a@88@01))))
    (=
      ($FVF.lookup_val (as sm@93@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@89@01)) r)))
  :pattern (($FVF.lookup_val (as sm@93@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@89@01)) r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@89@01)) r) r))
  :pattern (($FVF.lookup_val (as sm@93@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef21|)))
(assert (=>
  (and
    (<= j@69@01 i@115@01)
    (<=
      i@115@01
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))
  (and
    (<= j@69@01 i@115@01)
    (<=
      i@115@01
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01)))))
    (=>
      (< i@115@01 t@96@01)
      (and
        (< i@115@01 t@96@01)
        ($FVF.loc_val ($FVF.lookup_val (as sm@93@01  $FVF<val>) (loc<Ref> a@88@01 i@115@01)) (loc<Ref> a@88@01 i@115@01))
        (<= 0 i@115@01)
        (< i@115@01 (length $t@64@01 this@61@01))
        (itemAt%precondition ($Snap.combine
          $t@64@01
          ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 i@115@01)))
    (or (not (< i@115@01 t@96@01)) (< i@115@01 t@96@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= j@69@01 i@115@01)
      (<=
        i@115@01
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01)))))))
  (and
    (<= j@69@01 i@115@01)
    (<=
      i@115@01
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))))
(pop) ; 8
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@86@01 r)
      (and
        (<= 0 (inv@85@01 r))
        (<
          (inv@85@01 r)
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
    (=
      ($FVF.lookup_val (as sm@93@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r)))
  :pattern (($FVF.lookup_val (as sm@93@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@92@01 r)
      (and (<= 0 (inv@91@01 r)) (< (inv@91@01 r) (len<Int> a@88@01))))
    (=
      ($FVF.lookup_val (as sm@93@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@89@01)) r)))
  :pattern (($FVF.lookup_val (as sm@93@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@89@01)) r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@89@01)) r) r))
  :pattern (($FVF.lookup_val (as sm@93@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef21|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@115@01 Int)) (!
  (and
    (or (<= j@69@01 i@115@01) (not (<= j@69@01 i@115@01)))
    (=>
      (and
        (<= j@69@01 i@115@01)
        (<=
          i@115@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))
      (and
        (<= j@69@01 i@115@01)
        (<=
          i@115@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01)))))
        (=>
          (< i@115@01 t@96@01)
          (and
            (< i@115@01 t@96@01)
            ($FVF.loc_val ($FVF.lookup_val (as sm@93@01  $FVF<val>) (loc<Ref> a@88@01 i@115@01)) (loc<Ref> a@88@01 i@115@01))
            (<= 0 i@115@01)
            (< i@115@01 (length $t@64@01 this@61@01))
            (itemAt%precondition ($Snap.combine
              $t@64@01
              ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 i@115@01)))
        (or (not (< i@115@01 t@96@01)) (< i@115@01 t@96@01))))
    (or
      (not
        (and
          (<= j@69@01 i@115@01)
          (<=
            i@115@01
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01)))))))
      (and
        (<= j@69@01 i@115@01)
        (<=
          i@115@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))))
  :pattern ((loc<Ref> a@88@01 i@115@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@136@15@136@137-aux|)))
(assert (forall ((i@115@01 Int)) (!
  (=>
    (and
      (and
        (<= j@69@01 i@115@01)
        (<=
          i@115@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))
      (< i@115@01 t@96@01))
    (itemAt%precondition ($Snap.combine
      $t@64@01
      ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 i@115@01))
  :pattern ((loc<Ref> a@88@01 i@115@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@136@15@136@137_precondition|)))
(push) ; 8
(assert (not (forall ((i@115@01 Int)) (!
  (=>
    (and
      (=>
        (and
          (and
            (<= j@69@01 i@115@01)
            (<=
              i@115@01
              ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))
          (< i@115@01 t@96@01))
        (itemAt%precondition ($Snap.combine
          $t@64@01
          ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 i@115@01))
      (and
        (and
          (<= j@69@01 i@115@01)
          (<=
            i@115@01
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))
        (< i@115@01 t@96@01)))
    (=
      ($FVF.lookup_val (as sm@93@01  $FVF<val>) (loc<Ref> a@88@01 i@115@01))
      (itemAt ($Snap.combine $t@64@01 ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 i@115@01)))
  :pattern ((loc<Ref> a@88@01 i@115@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@136@15@136@137|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@115@01 Int)) (!
  (=>
    (and
      (and
        (<= j@69@01 i@115@01)
        (<=
          i@115@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))
      (< i@115@01 t@96@01))
    (=
      ($FVF.lookup_val (as sm@93@01  $FVF<val>) (loc<Ref> a@88@01 i@115@01))
      (itemAt ($Snap.combine $t@64@01 ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 i@115@01)))
  :pattern ((loc<Ref> a@88@01 i@115@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@136@15@136@137|)))
; [eval] (forall i: Int :: { loc(this.elems, i) } j < i && i <= this.size ==> i > t ==> loc(this.elems, i).val == old(itemAt(this, i - 1)))
(declare-const i@116@01 Int)
(push) ; 8
; [eval] j < i && i <= this.size ==> i > t ==> loc(this.elems, i).val == old(itemAt(this, i - 1))
; [eval] j < i && i <= this.size
; [eval] j < i
(push) ; 9
; [then-branch: 54 | !(j@69@01 < i@116@01) | live]
; [else-branch: 54 | j@69@01 < i@116@01 | live]
(push) ; 10
; [then-branch: 54 | !(j@69@01 < i@116@01)]
(assert (not (< j@69@01 i@116@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 54 | j@69@01 < i@116@01]
(assert (< j@69@01 i@116@01))
; [eval] i <= this.size
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (< j@69@01 i@116@01) (not (< j@69@01 i@116@01))))
(push) ; 9
; [then-branch: 55 | j@69@01 < i@116@01 && i@116@01 <= First:(Second:(First:($t@70@01))) | live]
; [else-branch: 55 | !(j@69@01 < i@116@01 && i@116@01 <= First:(Second:(First:($t@70@01)))) | live]
(push) ; 10
; [then-branch: 55 | j@69@01 < i@116@01 && i@116@01 <= First:(Second:(First:($t@70@01)))]
(assert (and
  (< j@69@01 i@116@01)
  (<=
    i@116@01
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01)))))))
; [eval] i > t ==> loc(this.elems, i).val == old(itemAt(this, i - 1))
; [eval] i > t
(push) ; 11
; [then-branch: 56 | i@116@01 > t@96@01 | live]
; [else-branch: 56 | !(i@116@01 > t@96@01) | live]
(push) ; 12
; [then-branch: 56 | i@116@01 > t@96@01]
(assert (> i@116@01 t@96@01))
; [eval] loc(this.elems, i).val == old(itemAt(this, i - 1))
; [eval] loc(this.elems, i)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@86@01 r)
        (and
          (<= 0 (inv@85@01 r))
          (<
            (inv@85@01 r)
            (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
      (=
        ($FVF.lookup_val (as sm@93@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r)))
    :pattern (($FVF.lookup_val (as sm@93@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r))
    :qid |qp.fvfValDef19|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@92@01 r)
        (and (<= 0 (inv@91@01 r)) (< (inv@91@01 r) (len<Int> a@88@01))))
      (=
        ($FVF.lookup_val (as sm@93@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@89@01)) r)))
    :pattern (($FVF.lookup_val (as sm@93@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@89@01)) r))
    :qid |qp.fvfValDef20|))
  (forall ((r $Ref)) (!
    (and
      ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r) r)
      ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@89@01)) r) r))
    :pattern (($FVF.lookup_val (as sm@93@01  $FVF<val>) r))
    :qid |qp.fvfResTrgDef21|))))
(assert ($FVF.loc_val ($FVF.lookup_val (as sm@93@01  $FVF<val>) (loc<Ref> a@88@01 i@116@01)) (loc<Ref> a@88@01 i@116@01)))
(push) ; 13
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@86@01 (loc<Ref> a@88@01 i@116@01))
        (and
          (<= 0 (inv@85@01 (loc<Ref> a@88@01 i@116@01)))
          (<
            (inv@85@01 (loc<Ref> a@88@01 i@116@01))
            (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
      $Perm.Write
      $Perm.No)
    (ite
      (and
        (img@92@01 (loc<Ref> a@88@01 i@116@01))
        (and
          (<= 0 (inv@91@01 (loc<Ref> a@88@01 i@116@01)))
          (< (inv@91@01 (loc<Ref> a@88@01 i@116@01)) (len<Int> a@88@01))))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [eval] old(itemAt(this, i - 1))
; [eval] itemAt(this, i - 1)
; [eval] i - 1
(push) ; 13
; [eval] 0 <= index
(push) ; 14
(assert (not (<= 0 (- i@116@01 1))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 (- i@116@01 1)))
; [eval] index < length(this)
; [eval] length(this)
(push) ; 14
(pop) ; 14
; Joined path conditions
(push) ; 14
(assert (not (< (- i@116@01 1) (length $t@64@01 this@61@01))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (< (- i@116@01 1) (length $t@64@01 this@61@01)))
(assert (itemAt%precondition ($Snap.combine
  $t@64@01
  ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- i@116@01 1)))
(pop) ; 13
; Joined path conditions
(assert (and
  (<= 0 (- i@116@01 1))
  (< (- i@116@01 1) (length $t@64@01 this@61@01))
  (itemAt%precondition ($Snap.combine
    $t@64@01
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- i@116@01 1))))
(pop) ; 12
(push) ; 12
; [else-branch: 56 | !(i@116@01 > t@96@01)]
(assert (not (> i@116@01 t@96@01)))
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@86@01 r)
      (and
        (<= 0 (inv@85@01 r))
        (<
          (inv@85@01 r)
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
    (=
      ($FVF.lookup_val (as sm@93@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r)))
  :pattern (($FVF.lookup_val (as sm@93@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@92@01 r)
      (and (<= 0 (inv@91@01 r)) (< (inv@91@01 r) (len<Int> a@88@01))))
    (=
      ($FVF.lookup_val (as sm@93@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@89@01)) r)))
  :pattern (($FVF.lookup_val (as sm@93@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@89@01)) r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@89@01)) r) r))
  :pattern (($FVF.lookup_val (as sm@93@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef21|)))
(assert (=>
  (> i@116@01 t@96@01)
  (and
    (> i@116@01 t@96@01)
    ($FVF.loc_val ($FVF.lookup_val (as sm@93@01  $FVF<val>) (loc<Ref> a@88@01 i@116@01)) (loc<Ref> a@88@01 i@116@01))
    (<= 0 (- i@116@01 1))
    (< (- i@116@01 1) (length $t@64@01 this@61@01))
    (itemAt%precondition ($Snap.combine
      $t@64@01
      ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- i@116@01 1)))))
; Joined path conditions
(assert (or (not (> i@116@01 t@96@01)) (> i@116@01 t@96@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 55 | !(j@69@01 < i@116@01 && i@116@01 <= First:(Second:(First:($t@70@01))))]
(assert (not
  (and
    (< j@69@01 i@116@01)
    (<=
      i@116@01
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@86@01 r)
      (and
        (<= 0 (inv@85@01 r))
        (<
          (inv@85@01 r)
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
    (=
      ($FVF.lookup_val (as sm@93@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r)))
  :pattern (($FVF.lookup_val (as sm@93@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@92@01 r)
      (and (<= 0 (inv@91@01 r)) (< (inv@91@01 r) (len<Int> a@88@01))))
    (=
      ($FVF.lookup_val (as sm@93@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@89@01)) r)))
  :pattern (($FVF.lookup_val (as sm@93@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@89@01)) r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@89@01)) r) r))
  :pattern (($FVF.lookup_val (as sm@93@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef21|)))
(assert (=>
  (and
    (< j@69@01 i@116@01)
    (<=
      i@116@01
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))
  (and
    (< j@69@01 i@116@01)
    (<=
      i@116@01
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01)))))
    (=>
      (> i@116@01 t@96@01)
      (and
        (> i@116@01 t@96@01)
        ($FVF.loc_val ($FVF.lookup_val (as sm@93@01  $FVF<val>) (loc<Ref> a@88@01 i@116@01)) (loc<Ref> a@88@01 i@116@01))
        (<= 0 (- i@116@01 1))
        (< (- i@116@01 1) (length $t@64@01 this@61@01))
        (itemAt%precondition ($Snap.combine
          $t@64@01
          ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- i@116@01 1))))
    (or (not (> i@116@01 t@96@01)) (> i@116@01 t@96@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (< j@69@01 i@116@01)
      (<=
        i@116@01
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01)))))))
  (and
    (< j@69@01 i@116@01)
    (<=
      i@116@01
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))))
(pop) ; 8
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@86@01 r)
      (and
        (<= 0 (inv@85@01 r))
        (<
          (inv@85@01 r)
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
    (=
      ($FVF.lookup_val (as sm@93@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r)))
  :pattern (($FVF.lookup_val (as sm@93@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@92@01 r)
      (and (<= 0 (inv@91@01 r)) (< (inv@91@01 r) (len<Int> a@88@01))))
    (=
      ($FVF.lookup_val (as sm@93@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@89@01)) r)))
  :pattern (($FVF.lookup_val (as sm@93@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@89@01)) r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@89@01)) r) r))
  :pattern (($FVF.lookup_val (as sm@93@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef21|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@116@01 Int)) (!
  (and
    (or (< j@69@01 i@116@01) (not (< j@69@01 i@116@01)))
    (=>
      (and
        (< j@69@01 i@116@01)
        (<=
          i@116@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))
      (and
        (< j@69@01 i@116@01)
        (<=
          i@116@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01)))))
        (=>
          (> i@116@01 t@96@01)
          (and
            (> i@116@01 t@96@01)
            ($FVF.loc_val ($FVF.lookup_val (as sm@93@01  $FVF<val>) (loc<Ref> a@88@01 i@116@01)) (loc<Ref> a@88@01 i@116@01))
            (<= 0 (- i@116@01 1))
            (< (- i@116@01 1) (length $t@64@01 this@61@01))
            (itemAt%precondition ($Snap.combine
              $t@64@01
              ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- i@116@01 1))))
        (or (not (> i@116@01 t@96@01)) (> i@116@01 t@96@01))))
    (or
      (not
        (and
          (< j@69@01 i@116@01)
          (<=
            i@116@01
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01)))))))
      (and
        (< j@69@01 i@116@01)
        (<=
          i@116@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))))
  :pattern ((loc<Ref> a@88@01 i@116@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@137@15@137@138-aux|)))
(assert (forall ((i@116@01 Int)) (!
  (=>
    (and
      (and
        (< j@69@01 i@116@01)
        (<=
          i@116@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))
      (> i@116@01 t@96@01))
    (itemAt%precondition ($Snap.combine
      $t@64@01
      ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- i@116@01 1)))
  :pattern ((loc<Ref> a@88@01 i@116@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@137@15@137@138_precondition|)))
(push) ; 8
(assert (not (forall ((i@116@01 Int)) (!
  (=>
    (and
      (=>
        (and
          (and
            (< j@69@01 i@116@01)
            (<=
              i@116@01
              ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))
          (> i@116@01 t@96@01))
        (itemAt%precondition ($Snap.combine
          $t@64@01
          ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- i@116@01 1)))
      (and
        (and
          (< j@69@01 i@116@01)
          (<=
            i@116@01
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))
        (> i@116@01 t@96@01)))
    (=
      ($FVF.lookup_val (as sm@93@01  $FVF<val>) (loc<Ref> a@88@01 i@116@01))
      (itemAt ($Snap.combine $t@64@01 ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (-
        i@116@01
        1))))
  :pattern ((loc<Ref> a@88@01 i@116@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@137@15@137@138|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@116@01 Int)) (!
  (=>
    (and
      (and
        (< j@69@01 i@116@01)
        (<=
          i@116@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))
      (> i@116@01 t@96@01))
    (=
      ($FVF.lookup_val (as sm@93@01  $FVF<val>) (loc<Ref> a@88@01 i@116@01))
      (itemAt ($Snap.combine $t@64@01 ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (-
        i@116@01
        1))))
  :pattern ((loc<Ref> a@88@01 i@116@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@137@15@137@138|)))
; Loop head block: Execute statements of loop head block (in invariant state)
(push) ; 8
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@103@01 r)
      (and
        (< j@69@01 (inv@102@01 r))
        (<=
          (inv@102@01 r)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
    (=
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) (inv@102@01 r))
      r))
  :pattern ((inv@102@01 r))
  :qid |val-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
    (=
      ($FVF.lookup_val (as sm@104@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@99@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@104@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@99@01  $FVF<val>) r))
  :qid |qp.fvfValDef24|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@103@01 r)
      (and
        (< j@69@01 (inv@102@01 r))
        (<=
          (inv@102@01 r)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
    (=
      ($FVF.lookup_val (as sm@104@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@104@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r))
  :qid |qp.fvfValDef25|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val (as sm@99@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r) r))
  :pattern (($FVF.lookup_val (as sm@104@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef26|)))
(assert (forall ((i@101@01 Int)) (!
  (=>
    (and
      (< j@69@01 i@101@01)
      (<=
        i@101@01
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))
    (and
      (=
        (inv@102@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@101@01))
        i@101@01)
      (img@103@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@101@01))))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@101@01))
  :qid |quant-u-18754|)))
(assert (forall ((i@101@01 Int)) (!
  (=>
    (and
      (< j@69@01 i@101@01)
      (<=
        i@101@01
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))
    (not
      (=
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@101@01)
        $Ref.null)))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@101@01))
  :qid |val-permImpliesNonNull|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (< j@69@01 (inv@102@01 r))
      (<=
        (inv@102@01 r)
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))
    ($FVF.loc_val ($FVF.lookup_val (as sm@104@01  $FVF<val>) r) r))
  :pattern ((inv@102@01 r))
  :qid |quant-u-18755|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))))))
  $Snap.unit))
(assert (forall ((i@105@01 Int)) (!
  (and
    (or (<= j@69@01 i@105@01) (not (<= j@69@01 i@105@01)))
    (=>
      (and
        (<= j@69@01 i@105@01)
        (<=
          i@105@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))
      (and
        (<= j@69@01 i@105@01)
        (<=
          i@105@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))
        (=>
          (< i@105@01 t@97@01)
          (and
            (< i@105@01 t@97@01)
            ($FVF.loc_val ($FVF.lookup_val (as sm@104@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@105@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@105@01))
            (<= 0 i@105@01)
            (< i@105@01 (length $t@64@01 this@61@01))
            (itemAt%precondition ($Snap.combine
              $t@64@01
              ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 i@105@01)))
        (or (not (< i@105@01 t@97@01)) (< i@105@01 t@97@01))))
    (or
      (not
        (and
          (<= j@69@01 i@105@01)
          (<=
            i@105@01
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
      (and
        (<= j@69@01 i@105@01)
        (<=
          i@105@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@105@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@136@15@136@137-aux|)))
(assert (forall ((i@105@01 Int)) (!
  (=>
    (and
      (and
        (<= j@69@01 i@105@01)
        (<=
          i@105@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))
      (< i@105@01 t@97@01))
    (=
      ($FVF.lookup_val (as sm@104@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@105@01))
      (itemAt ($Snap.combine $t@64@01 ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 i@105@01)))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@105@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@136@15@136@137|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))))))
  $Snap.unit))
(assert (forall ((i@106@01 Int)) (!
  (and
    (or (< j@69@01 i@106@01) (not (< j@69@01 i@106@01)))
    (=>
      (and
        (< j@69@01 i@106@01)
        (<=
          i@106@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))
      (and
        (< j@69@01 i@106@01)
        (<=
          i@106@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))
        (=>
          (> i@106@01 t@97@01)
          (and
            (> i@106@01 t@97@01)
            ($FVF.loc_val ($FVF.lookup_val (as sm@104@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@106@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@106@01))
            (<= 0 (- i@106@01 1))
            (< (- i@106@01 1) (length $t@64@01 this@61@01))
            (itemAt%precondition ($Snap.combine
              $t@64@01
              ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- i@106@01 1))))
        (or (not (> i@106@01 t@97@01)) (> i@106@01 t@97@01))))
    (or
      (not
        (and
          (< j@69@01 i@106@01)
          (<=
            i@106@01
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
      (and
        (< j@69@01 i@106@01)
        (<=
          i@106@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@106@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@137@15@137@138-aux|)))
(assert (forall ((i@106@01 Int)) (!
  (=>
    (and
      (and
        (< j@69@01 i@106@01)
        (<=
          i@106@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))
      (> i@106@01 t@97@01))
    (=
      ($FVF.lookup_val (as sm@104@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@106@01))
      (itemAt ($Snap.combine $t@64@01 ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (-
        i@106@01
        1))))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@106@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@137@15@137@138|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
    (=
      ($FVF.lookup_val (as sm@100@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@99@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@100@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@99@01  $FVF<val>) r))
  :qid |qp.fvfValDef22|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_val ($FVF.lookup_val (as sm@99@01  $FVF<val>) r) r)
  :pattern (($FVF.lookup_val (as sm@100@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef23|)))
(assert (=
  ($FVF.lookup_val (as sm@99@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@98@01))))))
(assert (<=
  $Perm.No
  (ite
    (=
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01)
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
    (/ (to_real 1) (to_real 2))
    $Perm.No)))
(assert (<=
  (ite
    (=
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01)
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
    (/ (to_real 1) (to_real 2))
    $Perm.No)
  $Perm.Write))
(assert (=>
  (=
    (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01)
    (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
  (not
    (=
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01)
      $Ref.null))))
(assert ($FVF.loc_val ($FVF.lookup_val (as sm@100@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@98@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@98@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@98@01))))
  $Snap.unit))
(assert (<= j@69@01 t@97@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))
  $Snap.unit))
(assert (<= t@97@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))
  $Snap.unit))
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))
  (length $t@64@01 this@61@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))))
  $Snap.unit))
(assert (<
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))
  (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))))))))
(assert (forall ((i@101@01 Int)) (!
  (=>
    (and
      (< j@69@01 i@101@01)
      (<=
        i@101@01
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))
    (or (< j@69@01 i@101@01) (not (< j@69@01 i@101@01))))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@101@01))
  :qid |val-aux|)))
(assert (= $t@98@01 ($Snap.combine ($Snap.first $t@98@01) ($Snap.second $t@98@01))))
(assert (=
  ($Snap.second $t@98@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@98@01))
    ($Snap.second ($Snap.second $t@98@01)))))
(assert (=
  ($Snap.second ($Snap.second $t@98@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@98@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@98@01))))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 10)
(check-sat)
; unknown
; Loop head block: Check well-definedness of edge conditions
(set-option :timeout 0)
(push) ; 9
; [eval] t > j
(pop) ; 9
(push) ; 9
; [eval] !(t > j)
; [eval] t > j
(pop) ; 9
; Loop head block: Follow loop-internal edges
; [eval] t > j
(push) ; 9
(set-option :timeout 10)
(assert (not (not (> t@97@01 j@69@01))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (> t@97@01 j@69@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 57 | t@97@01 > j@69@01 | live]
; [else-branch: 57 | !(t@97@01 > j@69@01) | live]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 57 | t@97@01 > j@69@01]
(assert (> t@97@01 j@69@01))
; [exec]
; loc(this.elems, t).val := loc(this.elems, t - 1).val
; [eval] loc(this.elems, t)
; [eval] loc(this.elems, t - 1)
; [eval] t - 1
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (=
        r
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
      (=
        ($FVF.lookup_val (as sm@104@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@99@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@104@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@99@01  $FVF<val>) r))
    :qid |qp.fvfValDef24|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@103@01 r)
        (and
          (< j@69@01 (inv@102@01 r))
          (<=
            (inv@102@01 r)
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
      (=
        ($FVF.lookup_val (as sm@104@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r)))
    :pattern (($FVF.lookup_val (as sm@104@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r))
    :qid |qp.fvfValDef25|))
  (forall ((r $Ref)) (!
    (and
      ($FVF.loc_val ($FVF.lookup_val (as sm@99@01  $FVF<val>) r) r)
      ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r) r))
    :pattern (($FVF.lookup_val (as sm@104@01  $FVF<val>) r))
    :qid |qp.fvfResTrgDef26|))))
(assert ($FVF.loc_val ($FVF.lookup_val (as sm@104@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) (-
  t@97@01
  1))) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) (-
  t@97@01
  1))))
(push) ; 10
(assert (not (<
  $Perm.No
  (+
    (ite
      (=
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) (-
          t@97@01
          1))
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
      (/ (to_real 1) (to_real 2))
      $Perm.No)
    (ite
      (and
        (img@103@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) (-
          t@97@01
          1)))
        (and
          (<
            j@69@01
            (inv@102@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) (-
              t@97@01
              1))))
          (<=
            (inv@102@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) (-
              t@97@01
              1)))
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map values
(assert ($FVF.loc_val ($FVF.lookup_val (as sm@104@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) t@97@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) t@97@01)))
(push) ; 10
(set-option :timeout 10)
(assert (not (=
  (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01)
  (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) t@97@01))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@117@01 ((r $Ref)) $Perm
  (ite
    (= r (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) t@97@01))
    ($Perm.min
      (ite
        (and
          (img@103@01 r)
          (and
            (< j@69@01 (inv@102@01 r))
            (<=
              (inv@102@01 r)
              ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@118@01 ((r $Ref)) $Perm
  (ite
    (= r (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) t@97@01))
    ($Perm.min
      (ite
        (=
          r
          (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (- $Perm.Write (pTaken@117@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@103@01 r)
          (and
            (< j@69@01 (inv@102@01 r))
            (<=
              (inv@102@01 r)
              ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
        $Perm.Write
        $Perm.No)
      (pTaken@117@01 r))
    $Perm.No)
  
  :qid |quant-u-18771|))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@117@01 r) $Perm.No)
  
  :qid |quant-u-18772|))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) t@97@01))
    (= (- $Perm.Write (pTaken@117@01 r)) $Perm.No))
  
  :qid |quant-u-18773|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@119@01 $FVF<val>)
; Definitional axioms for singleton-FVF's value
(assert (=
  ($FVF.lookup_val (as sm@119@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) t@97@01))
  ($FVF.lookup_val (as sm@104@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) (-
    t@97@01
    1)))))
(assert ($FVF.loc_val ($FVF.lookup_val (as sm@119@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) t@97@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) t@97@01)))
; [exec]
; t := t - 1
; [eval] t - 1
(declare-const t@120@01 Int)
(assert (= t@120@01 (- t@97@01 1)))
; Loop head block: Re-establish invariant
; [eval] loc(this.elems, j)
(declare-const sm@121@01 $FVF<val>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) t@97@01))
    (=
      ($FVF.lookup_val (as sm@121@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@119@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@121@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@119@01  $FVF<val>) r))
  :qid |qp.fvfValDef30|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
    (=
      ($FVF.lookup_val (as sm@121@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@99@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@121@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@99@01  $FVF<val>) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@103@01 r)
        (and
          (< j@69@01 (inv@102@01 r))
          (<=
            (inv@102@01 r)
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
      (< $Perm.No (- $Perm.Write (pTaken@117@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@121@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@121@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r))
  :qid |qp.fvfValDef32|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val (as sm@119@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val (as sm@99@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r) r))
  :pattern (($FVF.lookup_val (as sm@121@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef33|)))
(assert ($FVF.loc_val ($FVF.lookup_val (as sm@121@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@122@01 ((r $Ref)) $Perm
  (ite
    (= r (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
    ($Perm.min
      (ite
        (=
          r
          (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (/ (to_real 1) (to_real 2)))
    $Perm.No))
(define-fun pTaken@123@01 ((r $Ref)) $Perm
  (ite
    (= r (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
    ($Perm.min
      (ite
        (=
          r
          (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) t@97@01))
        $Perm.Write
        $Perm.No)
      (- (/ (to_real 1) (to_real 2)) (pTaken@122@01 r)))
    $Perm.No))
(define-fun pTaken@124@01 ((r $Ref)) $Perm
  (ite
    (= r (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
    ($Perm.min
      (ite
        (and
          (img@103@01 r)
          (and
            (< j@69@01 (inv@102@01 r))
            (<=
              (inv@102@01 r)
              ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
        (- $Perm.Write (pTaken@117@01 r))
        $Perm.No)
      (- (- (/ (to_real 1) (to_real 2)) (pTaken@122@01 r)) (pTaken@123@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (=
  (-
    (ite
      (=
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01)
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
      (/ (to_real 1) (to_real 2))
      $Perm.No)
    (pTaken@122@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@122@01 r)) $Perm.No))
  
  :qid |quant-u-18776|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] j <= t
(set-option :timeout 0)
(push) ; 10
(assert (not (<= j@69@01 t@120@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (<= j@69@01 t@120@01))
; [eval] t <= this.size
(push) ; 10
(assert (not (<= t@120@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (<= t@120@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))
; [eval] this.size == old(length(this))
; [eval] old(length(this))
; [eval] length(this)
(push) ; 10
(pop) ; 10
; Joined path conditions
; [eval] -1 <= j
; [eval] -1
; [eval] this.size < len(this.elems)
; [eval] len(this.elems)
(declare-const i@125@01 Int)
(push) ; 10
; [eval] j < i && i <= this.size
; [eval] j < i
(push) ; 11
; [then-branch: 58 | !(j@69@01 < i@125@01) | live]
; [else-branch: 58 | j@69@01 < i@125@01 | live]
(push) ; 12
; [then-branch: 58 | !(j@69@01 < i@125@01)]
(assert (not (< j@69@01 i@125@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 58 | j@69@01 < i@125@01]
(assert (< j@69@01 i@125@01))
; [eval] i <= this.size
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (< j@69@01 i@125@01) (not (< j@69@01 i@125@01))))
(assert (and
  (< j@69@01 i@125@01)
  (<= i@125@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
; [eval] loc(this.elems, i)
(pop) ; 10
(declare-fun inv@126@01 ($Ref) Int)
(declare-fun img@127@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@125@01 Int)) (!
  (=>
    (and
      (< j@69@01 i@125@01)
      (<=
        i@125@01
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))
    (or (< j@69@01 i@125@01) (not (< j@69@01 i@125@01))))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@125@01))
  :qid |val-aux|)))
(declare-const sm@128@01 $FVF<val>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@103@01 r)
        (and
          (< j@69@01 (inv@102@01 r))
          (<=
            (inv@102@01 r)
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
      (< $Perm.No (- $Perm.Write (pTaken@117@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@128@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@128@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r))
  :qid |qp.fvfValDef34|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) t@97@01))
    (=
      ($FVF.lookup_val (as sm@128@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@119@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@128@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@119@01  $FVF<val>) r))
  :qid |qp.fvfValDef35|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r) r)
    ($FVF.loc_val ($FVF.lookup_val (as sm@119@01  $FVF<val>) r) r))
  :pattern (($FVF.lookup_val (as sm@128@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef36|)))
; Check receiver injectivity
(push) ; 10
(assert (not (forall ((i1@125@01 Int) (i2@125@01 Int)) (!
  (=>
    (and
      (and
        (and
          (< j@69@01 i1@125@01)
          (<=
            i1@125@01
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))
        ($FVF.loc_val ($FVF.lookup_val (as sm@128@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i1@125@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i1@125@01)))
      (and
        (and
          (< j@69@01 i2@125@01)
          (<=
            i2@125@01
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))
        ($FVF.loc_val ($FVF.lookup_val (as sm@128@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i2@125@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i2@125@01)))
      (=
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i1@125@01)
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i2@125@01)))
    (= i1@125@01 i2@125@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@125@01 Int)) (!
  (=>
    (and
      (< j@69@01 i@125@01)
      (<=
        i@125@01
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))
    (and
      (=
        (inv@126@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@125@01))
        i@125@01)
      (img@127@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@125@01))))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@125@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@127@01 r)
      (and
        (< j@69@01 (inv@126@01 r))
        (<=
          (inv@126@01 r)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
    (=
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) (inv@126@01 r))
      r))
  :pattern ((inv@126@01 r))
  :qid |val-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (< j@69@01 (inv@126@01 r))
      (<=
        (inv@126@01 r)
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))
    ($FVF.loc_val ($FVF.lookup_val (as sm@128@01  $FVF<val>) r) r))
  :pattern ((inv@126@01 r))
  :qid |quant-u-18778|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@129@01 ((r $Ref)) $Perm
  (ite
    (and
      (and
        (< j@69@01 (inv@126@01 r))
        (<=
          (inv@126@01 r)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))
      (img@127@01 r)
      (=
        r
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) (inv@126@01 r))))
    ($Perm.min
      (ite
        (and
          (img@103@01 r)
          (and
            (< j@69@01 (inv@102@01 r))
            (<=
              (inv@102@01 r)
              ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
        (- $Perm.Write (pTaken@117@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@130@01 ((r $Ref)) $Perm
  (ite
    (and
      (and
        (< j@69@01 (inv@126@01 r))
        (<=
          (inv@126@01 r)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))
      (img@127@01 r)
      (=
        r
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) (inv@126@01 r))))
    ($Perm.min
      (ite
        (=
          r
          (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) t@97@01))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@129@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@103@01 r)
          (and
            (< j@69@01 (inv@102@01 r))
            (<=
              (inv@102@01 r)
              ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
        (- $Perm.Write (pTaken@117@01 r))
        $Perm.No)
      (pTaken@129@01 r))
    $Perm.No)
  
  :qid |quant-u-18780|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (< j@69@01 (inv@126@01 r))
        (<=
          (inv@126@01 r)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))
      (img@127@01 r)
      (=
        r
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) (inv@126@01 r))))
    (= (- $Perm.Write (pTaken@129@01 r)) $Perm.No))
  
  :qid |quant-u-18781|))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (=
  (-
    (ite
      (=
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) t@97@01)
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) t@97@01))
      $Perm.Write
      $Perm.No)
    (pTaken@130@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) t@97@01)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (< j@69@01 (inv@126@01 r))
        (<=
          (inv@126@01 r)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))
      (img@127@01 r)
      (=
        r
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) (inv@126@01 r))))
    (= (- (- $Perm.Write (pTaken@129@01 r)) (pTaken@130@01 r)) $Perm.No))
  
  :qid |quant-u-18783|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall i: Int :: { loc(this.elems, i) } j <= i && i <= this.size ==> i < t ==> loc(this.elems, i).val == old(itemAt(this, i)))
(declare-const i@131@01 Int)
(set-option :timeout 0)
(push) ; 10
; [eval] j <= i && i <= this.size ==> i < t ==> loc(this.elems, i).val == old(itemAt(this, i))
; [eval] j <= i && i <= this.size
; [eval] j <= i
(push) ; 11
; [then-branch: 59 | !(j@69@01 <= i@131@01) | live]
; [else-branch: 59 | j@69@01 <= i@131@01 | live]
(push) ; 12
; [then-branch: 59 | !(j@69@01 <= i@131@01)]
(assert (not (<= j@69@01 i@131@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 59 | j@69@01 <= i@131@01]
(assert (<= j@69@01 i@131@01))
; [eval] i <= this.size
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (<= j@69@01 i@131@01) (not (<= j@69@01 i@131@01))))
(push) ; 11
; [then-branch: 60 | j@69@01 <= i@131@01 && i@131@01 <= First:(Second:($t@98@01)) | live]
; [else-branch: 60 | !(j@69@01 <= i@131@01 && i@131@01 <= First:(Second:($t@98@01))) | live]
(push) ; 12
; [then-branch: 60 | j@69@01 <= i@131@01 && i@131@01 <= First:(Second:($t@98@01))]
(assert (and
  (<= j@69@01 i@131@01)
  (<= i@131@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
; [eval] i < t ==> loc(this.elems, i).val == old(itemAt(this, i))
; [eval] i < t
(push) ; 13
; [then-branch: 61 | i@131@01 < t@120@01 | live]
; [else-branch: 61 | !(i@131@01 < t@120@01) | live]
(push) ; 14
; [then-branch: 61 | i@131@01 < t@120@01]
(assert (< i@131@01 t@120@01))
; [eval] loc(this.elems, i).val == old(itemAt(this, i))
; [eval] loc(this.elems, i)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (=
        r
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) t@97@01))
      (=
        ($FVF.lookup_val (as sm@121@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@119@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@121@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@119@01  $FVF<val>) r))
    :qid |qp.fvfValDef30|))
  (forall ((r $Ref)) (!
    (=>
      (=
        r
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
      (=
        ($FVF.lookup_val (as sm@121@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@99@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@121@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@99@01  $FVF<val>) r))
    :qid |qp.fvfValDef31|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@103@01 r)
          (and
            (< j@69@01 (inv@102@01 r))
            (<=
              (inv@102@01 r)
              ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
        (< $Perm.No (- $Perm.Write (pTaken@117@01 r)))
        false)
      (=
        ($FVF.lookup_val (as sm@121@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r)))
    :pattern (($FVF.lookup_val (as sm@121@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r))
    :qid |qp.fvfValDef32|))
  (forall ((r $Ref)) (!
    (and
      ($FVF.loc_val ($FVF.lookup_val (as sm@119@01  $FVF<val>) r) r)
      ($FVF.loc_val ($FVF.lookup_val (as sm@99@01  $FVF<val>) r) r)
      ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r) r))
    :pattern (($FVF.lookup_val (as sm@121@01  $FVF<val>) r))
    :qid |qp.fvfResTrgDef33|))))
(assert ($FVF.loc_val ($FVF.lookup_val (as sm@121@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@131@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@131@01)))
(push) ; 15
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (=
          (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@131@01)
          (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) t@97@01))
        $Perm.Write
        $Perm.No)
      (ite
        (=
          (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@131@01)
          (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
        (/ (to_real 1) (to_real 2))
        $Perm.No))
    (ite
      (and
        (img@103@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@131@01))
        (and
          (<
            j@69@01
            (inv@102@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@131@01)))
          (<=
            (inv@102@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@131@01))
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
      (-
        $Perm.Write
        (pTaken@117@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@131@01)))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [eval] old(itemAt(this, i))
; [eval] itemAt(this, i)
(push) ; 15
; [eval] 0 <= index
(push) ; 16
(assert (not (<= 0 i@131@01)))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 i@131@01))
; [eval] index < length(this)
; [eval] length(this)
(push) ; 16
(pop) ; 16
; Joined path conditions
(push) ; 16
(assert (not (< i@131@01 (length $t@64@01 this@61@01))))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(assert (< i@131@01 (length $t@64@01 this@61@01)))
(assert (itemAt%precondition ($Snap.combine
  $t@64@01
  ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 i@131@01))
(pop) ; 15
; Joined path conditions
(assert (and
  (<= 0 i@131@01)
  (< i@131@01 (length $t@64@01 this@61@01))
  (itemAt%precondition ($Snap.combine
    $t@64@01
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 i@131@01)))
(pop) ; 14
(push) ; 14
; [else-branch: 61 | !(i@131@01 < t@120@01)]
(assert (not (< i@131@01 t@120@01)))
(pop) ; 14
(pop) ; 13
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) t@97@01))
    (=
      ($FVF.lookup_val (as sm@121@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@119@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@121@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@119@01  $FVF<val>) r))
  :qid |qp.fvfValDef30|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
    (=
      ($FVF.lookup_val (as sm@121@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@99@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@121@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@99@01  $FVF<val>) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@103@01 r)
        (and
          (< j@69@01 (inv@102@01 r))
          (<=
            (inv@102@01 r)
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
      (< $Perm.No (- $Perm.Write (pTaken@117@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@121@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@121@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r))
  :qid |qp.fvfValDef32|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val (as sm@119@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val (as sm@99@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r) r))
  :pattern (($FVF.lookup_val (as sm@121@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef33|)))
(assert (=>
  (< i@131@01 t@120@01)
  (and
    (< i@131@01 t@120@01)
    ($FVF.loc_val ($FVF.lookup_val (as sm@121@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@131@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@131@01))
    (<= 0 i@131@01)
    (< i@131@01 (length $t@64@01 this@61@01))
    (itemAt%precondition ($Snap.combine
      $t@64@01
      ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 i@131@01))))
; Joined path conditions
(assert (or (not (< i@131@01 t@120@01)) (< i@131@01 t@120@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 60 | !(j@69@01 <= i@131@01 && i@131@01 <= First:(Second:($t@98@01)))]
(assert (not
  (and
    (<= j@69@01 i@131@01)
    (<=
      i@131@01
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) t@97@01))
    (=
      ($FVF.lookup_val (as sm@121@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@119@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@121@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@119@01  $FVF<val>) r))
  :qid |qp.fvfValDef30|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
    (=
      ($FVF.lookup_val (as sm@121@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@99@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@121@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@99@01  $FVF<val>) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@103@01 r)
        (and
          (< j@69@01 (inv@102@01 r))
          (<=
            (inv@102@01 r)
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
      (< $Perm.No (- $Perm.Write (pTaken@117@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@121@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@121@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r))
  :qid |qp.fvfValDef32|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val (as sm@119@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val (as sm@99@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r) r))
  :pattern (($FVF.lookup_val (as sm@121@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef33|)))
(assert (=>
  (and
    (<= j@69@01 i@131@01)
    (<=
      i@131@01
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))
  (and
    (<= j@69@01 i@131@01)
    (<=
      i@131@01
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))
    (=>
      (< i@131@01 t@120@01)
      (and
        (< i@131@01 t@120@01)
        ($FVF.loc_val ($FVF.lookup_val (as sm@121@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@131@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@131@01))
        (<= 0 i@131@01)
        (< i@131@01 (length $t@64@01 this@61@01))
        (itemAt%precondition ($Snap.combine
          $t@64@01
          ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 i@131@01)))
    (or (not (< i@131@01 t@120@01)) (< i@131@01 t@120@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= j@69@01 i@131@01)
      (<=
        i@131@01
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
  (and
    (<= j@69@01 i@131@01)
    (<=
      i@131@01
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))))
(pop) ; 10
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) t@97@01))
    (=
      ($FVF.lookup_val (as sm@121@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@119@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@121@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@119@01  $FVF<val>) r))
  :qid |qp.fvfValDef30|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
    (=
      ($FVF.lookup_val (as sm@121@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@99@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@121@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@99@01  $FVF<val>) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@103@01 r)
        (and
          (< j@69@01 (inv@102@01 r))
          (<=
            (inv@102@01 r)
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
      (< $Perm.No (- $Perm.Write (pTaken@117@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@121@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@121@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r))
  :qid |qp.fvfValDef32|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val (as sm@119@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val (as sm@99@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r) r))
  :pattern (($FVF.lookup_val (as sm@121@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef33|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@131@01 Int)) (!
  (and
    (or (<= j@69@01 i@131@01) (not (<= j@69@01 i@131@01)))
    (=>
      (and
        (<= j@69@01 i@131@01)
        (<=
          i@131@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))
      (and
        (<= j@69@01 i@131@01)
        (<=
          i@131@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))
        (=>
          (< i@131@01 t@120@01)
          (and
            (< i@131@01 t@120@01)
            ($FVF.loc_val ($FVF.lookup_val (as sm@121@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@131@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@131@01))
            (<= 0 i@131@01)
            (< i@131@01 (length $t@64@01 this@61@01))
            (itemAt%precondition ($Snap.combine
              $t@64@01
              ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 i@131@01)))
        (or (not (< i@131@01 t@120@01)) (< i@131@01 t@120@01))))
    (or
      (not
        (and
          (<= j@69@01 i@131@01)
          (<=
            i@131@01
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
      (and
        (<= j@69@01 i@131@01)
        (<=
          i@131@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@131@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@136@15@136@137-aux|)))
(assert (forall ((i@131@01 Int)) (!
  (=>
    (and
      (and
        (<= j@69@01 i@131@01)
        (<=
          i@131@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))
      (< i@131@01 t@120@01))
    (itemAt%precondition ($Snap.combine
      $t@64@01
      ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 i@131@01))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@131@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@136@15@136@137_precondition|)))
(push) ; 10
(assert (not (forall ((i@131@01 Int)) (!
  (=>
    (and
      (=>
        (and
          (and
            (<= j@69@01 i@131@01)
            (<=
              i@131@01
              ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))
          (< i@131@01 t@120@01))
        (itemAt%precondition ($Snap.combine
          $t@64@01
          ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 i@131@01))
      (and
        (and
          (<= j@69@01 i@131@01)
          (<=
            i@131@01
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))
        (< i@131@01 t@120@01)))
    (=
      ($FVF.lookup_val (as sm@121@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@131@01))
      (itemAt ($Snap.combine $t@64@01 ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 i@131@01)))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@131@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@136@15@136@137|))))
(check-sat)
; unsat
(pop) ; 10
; 0.01s
; (get-info :all-statistics)
(assert (forall ((i@131@01 Int)) (!
  (=>
    (and
      (and
        (<= j@69@01 i@131@01)
        (<=
          i@131@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))
      (< i@131@01 t@120@01))
    (=
      ($FVF.lookup_val (as sm@121@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@131@01))
      (itemAt ($Snap.combine $t@64@01 ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 i@131@01)))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@131@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@136@15@136@137|)))
; [eval] (forall i: Int :: { loc(this.elems, i) } j < i && i <= this.size ==> i > t ==> loc(this.elems, i).val == old(itemAt(this, i - 1)))
(declare-const i@132@01 Int)
(push) ; 10
; [eval] j < i && i <= this.size ==> i > t ==> loc(this.elems, i).val == old(itemAt(this, i - 1))
; [eval] j < i && i <= this.size
; [eval] j < i
(push) ; 11
; [then-branch: 62 | !(j@69@01 < i@132@01) | live]
; [else-branch: 62 | j@69@01 < i@132@01 | live]
(push) ; 12
; [then-branch: 62 | !(j@69@01 < i@132@01)]
(assert (not (< j@69@01 i@132@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 62 | j@69@01 < i@132@01]
(assert (< j@69@01 i@132@01))
; [eval] i <= this.size
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (< j@69@01 i@132@01) (not (< j@69@01 i@132@01))))
(push) ; 11
; [then-branch: 63 | j@69@01 < i@132@01 && i@132@01 <= First:(Second:($t@98@01)) | live]
; [else-branch: 63 | !(j@69@01 < i@132@01 && i@132@01 <= First:(Second:($t@98@01))) | live]
(push) ; 12
; [then-branch: 63 | j@69@01 < i@132@01 && i@132@01 <= First:(Second:($t@98@01))]
(assert (and
  (< j@69@01 i@132@01)
  (<= i@132@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
; [eval] i > t ==> loc(this.elems, i).val == old(itemAt(this, i - 1))
; [eval] i > t
(push) ; 13
; [then-branch: 64 | i@132@01 > t@120@01 | live]
; [else-branch: 64 | !(i@132@01 > t@120@01) | live]
(push) ; 14
; [then-branch: 64 | i@132@01 > t@120@01]
(assert (> i@132@01 t@120@01))
; [eval] loc(this.elems, i).val == old(itemAt(this, i - 1))
; [eval] loc(this.elems, i)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (=
        r
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) t@97@01))
      (=
        ($FVF.lookup_val (as sm@121@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@119@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@121@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@119@01  $FVF<val>) r))
    :qid |qp.fvfValDef30|))
  (forall ((r $Ref)) (!
    (=>
      (=
        r
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
      (=
        ($FVF.lookup_val (as sm@121@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@99@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@121@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@99@01  $FVF<val>) r))
    :qid |qp.fvfValDef31|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@103@01 r)
          (and
            (< j@69@01 (inv@102@01 r))
            (<=
              (inv@102@01 r)
              ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
        (< $Perm.No (- $Perm.Write (pTaken@117@01 r)))
        false)
      (=
        ($FVF.lookup_val (as sm@121@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r)))
    :pattern (($FVF.lookup_val (as sm@121@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r))
    :qid |qp.fvfValDef32|))
  (forall ((r $Ref)) (!
    (and
      ($FVF.loc_val ($FVF.lookup_val (as sm@119@01  $FVF<val>) r) r)
      ($FVF.loc_val ($FVF.lookup_val (as sm@99@01  $FVF<val>) r) r)
      ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r) r))
    :pattern (($FVF.lookup_val (as sm@121@01  $FVF<val>) r))
    :qid |qp.fvfResTrgDef33|))))
(assert ($FVF.loc_val ($FVF.lookup_val (as sm@121@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@132@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@132@01)))
(push) ; 15
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (=
          (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@132@01)
          (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) t@97@01))
        $Perm.Write
        $Perm.No)
      (ite
        (=
          (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@132@01)
          (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
        (/ (to_real 1) (to_real 2))
        $Perm.No))
    (ite
      (and
        (img@103@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@132@01))
        (and
          (<
            j@69@01
            (inv@102@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@132@01)))
          (<=
            (inv@102@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@132@01))
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
      (-
        $Perm.Write
        (pTaken@117@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@132@01)))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [eval] old(itemAt(this, i - 1))
; [eval] itemAt(this, i - 1)
; [eval] i - 1
(push) ; 15
; [eval] 0 <= index
(push) ; 16
(assert (not (<= 0 (- i@132@01 1))))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 (- i@132@01 1)))
; [eval] index < length(this)
; [eval] length(this)
(push) ; 16
(pop) ; 16
; Joined path conditions
(push) ; 16
(assert (not (< (- i@132@01 1) (length $t@64@01 this@61@01))))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(assert (< (- i@132@01 1) (length $t@64@01 this@61@01)))
(assert (itemAt%precondition ($Snap.combine
  $t@64@01
  ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- i@132@01 1)))
(pop) ; 15
; Joined path conditions
(assert (and
  (<= 0 (- i@132@01 1))
  (< (- i@132@01 1) (length $t@64@01 this@61@01))
  (itemAt%precondition ($Snap.combine
    $t@64@01
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- i@132@01 1))))
(pop) ; 14
(push) ; 14
; [else-branch: 64 | !(i@132@01 > t@120@01)]
(assert (not (> i@132@01 t@120@01)))
(pop) ; 14
(pop) ; 13
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) t@97@01))
    (=
      ($FVF.lookup_val (as sm@121@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@119@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@121@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@119@01  $FVF<val>) r))
  :qid |qp.fvfValDef30|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
    (=
      ($FVF.lookup_val (as sm@121@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@99@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@121@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@99@01  $FVF<val>) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@103@01 r)
        (and
          (< j@69@01 (inv@102@01 r))
          (<=
            (inv@102@01 r)
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
      (< $Perm.No (- $Perm.Write (pTaken@117@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@121@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@121@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r))
  :qid |qp.fvfValDef32|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val (as sm@119@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val (as sm@99@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r) r))
  :pattern (($FVF.lookup_val (as sm@121@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef33|)))
(assert (=>
  (> i@132@01 t@120@01)
  (and
    (> i@132@01 t@120@01)
    ($FVF.loc_val ($FVF.lookup_val (as sm@121@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@132@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@132@01))
    (<= 0 (- i@132@01 1))
    (< (- i@132@01 1) (length $t@64@01 this@61@01))
    (itemAt%precondition ($Snap.combine
      $t@64@01
      ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- i@132@01 1)))))
; Joined path conditions
(assert (or (not (> i@132@01 t@120@01)) (> i@132@01 t@120@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 63 | !(j@69@01 < i@132@01 && i@132@01 <= First:(Second:($t@98@01)))]
(assert (not
  (and
    (< j@69@01 i@132@01)
    (<=
      i@132@01
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) t@97@01))
    (=
      ($FVF.lookup_val (as sm@121@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@119@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@121@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@119@01  $FVF<val>) r))
  :qid |qp.fvfValDef30|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
    (=
      ($FVF.lookup_val (as sm@121@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@99@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@121@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@99@01  $FVF<val>) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@103@01 r)
        (and
          (< j@69@01 (inv@102@01 r))
          (<=
            (inv@102@01 r)
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
      (< $Perm.No (- $Perm.Write (pTaken@117@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@121@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@121@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r))
  :qid |qp.fvfValDef32|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val (as sm@119@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val (as sm@99@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r) r))
  :pattern (($FVF.lookup_val (as sm@121@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef33|)))
(assert (=>
  (and
    (< j@69@01 i@132@01)
    (<=
      i@132@01
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))
  (and
    (< j@69@01 i@132@01)
    (<=
      i@132@01
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))
    (=>
      (> i@132@01 t@120@01)
      (and
        (> i@132@01 t@120@01)
        ($FVF.loc_val ($FVF.lookup_val (as sm@121@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@132@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@132@01))
        (<= 0 (- i@132@01 1))
        (< (- i@132@01 1) (length $t@64@01 this@61@01))
        (itemAt%precondition ($Snap.combine
          $t@64@01
          ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- i@132@01 1))))
    (or (not (> i@132@01 t@120@01)) (> i@132@01 t@120@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (< j@69@01 i@132@01)
      (<=
        i@132@01
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
  (and
    (< j@69@01 i@132@01)
    (<=
      i@132@01
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))))
(pop) ; 10
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) t@97@01))
    (=
      ($FVF.lookup_val (as sm@121@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@119@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@121@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@119@01  $FVF<val>) r))
  :qid |qp.fvfValDef30|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
    (=
      ($FVF.lookup_val (as sm@121@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@99@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@121@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@99@01  $FVF<val>) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@103@01 r)
        (and
          (< j@69@01 (inv@102@01 r))
          (<=
            (inv@102@01 r)
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
      (< $Perm.No (- $Perm.Write (pTaken@117@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@121@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@121@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r))
  :qid |qp.fvfValDef32|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val (as sm@119@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val (as sm@99@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r) r))
  :pattern (($FVF.lookup_val (as sm@121@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef33|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@132@01 Int)) (!
  (and
    (or (< j@69@01 i@132@01) (not (< j@69@01 i@132@01)))
    (=>
      (and
        (< j@69@01 i@132@01)
        (<=
          i@132@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))
      (and
        (< j@69@01 i@132@01)
        (<=
          i@132@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))
        (=>
          (> i@132@01 t@120@01)
          (and
            (> i@132@01 t@120@01)
            ($FVF.loc_val ($FVF.lookup_val (as sm@121@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@132@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@132@01))
            (<= 0 (- i@132@01 1))
            (< (- i@132@01 1) (length $t@64@01 this@61@01))
            (itemAt%precondition ($Snap.combine
              $t@64@01
              ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- i@132@01 1))))
        (or (not (> i@132@01 t@120@01)) (> i@132@01 t@120@01))))
    (or
      (not
        (and
          (< j@69@01 i@132@01)
          (<=
            i@132@01
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
      (and
        (< j@69@01 i@132@01)
        (<=
          i@132@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@132@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@137@15@137@138-aux|)))
(assert (forall ((i@132@01 Int)) (!
  (=>
    (and
      (and
        (< j@69@01 i@132@01)
        (<=
          i@132@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))
      (> i@132@01 t@120@01))
    (itemAt%precondition ($Snap.combine
      $t@64@01
      ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- i@132@01 1)))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@132@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@137@15@137@138_precondition|)))
(push) ; 10
(assert (not (forall ((i@132@01 Int)) (!
  (=>
    (and
      (=>
        (and
          (and
            (< j@69@01 i@132@01)
            (<=
              i@132@01
              ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))
          (> i@132@01 t@120@01))
        (itemAt%precondition ($Snap.combine
          $t@64@01
          ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- i@132@01 1)))
      (and
        (and
          (< j@69@01 i@132@01)
          (<=
            i@132@01
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))
        (> i@132@01 t@120@01)))
    (=
      ($FVF.lookup_val (as sm@121@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@132@01))
      (itemAt ($Snap.combine $t@64@01 ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (-
        i@132@01
        1))))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@132@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@137@15@137@138|))))
(check-sat)
; unsat
(pop) ; 10
; 0.01s
; (get-info :all-statistics)
(assert (forall ((i@132@01 Int)) (!
  (=>
    (and
      (and
        (< j@69@01 i@132@01)
        (<=
          i@132@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))
      (> i@132@01 t@120@01))
    (=
      ($FVF.lookup_val (as sm@121@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@132@01))
      (itemAt ($Snap.combine $t@64@01 ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (-
        i@132@01
        1))))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@132@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@137@15@137@138|)))
(pop) ; 9
(push) ; 9
; [else-branch: 57 | !(t@97@01 > j@69@01)]
(assert (not (> t@97@01 j@69@01)))
(pop) ; 9
(push) ; 9
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (=
      (loc<Ref> a@88@01 i@90@01)
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@101@01))
    (=
      (and
        (img@92@01 r)
        (and (<= 0 (inv@91@01 r)) (< (inv@91@01 r) (len<Int> a@88@01))))
      (and
        (img@103@01 r)
        (and
          (< j@69@01 (inv@102@01 r))
          (<=
            (inv@102@01 r)
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))))
  
  :qid |quant-u-18784|))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (=
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@84@01)
      (loc<Ref> a@88@01 i@90@01))
    (=
      (and
        (img@86@01 r)
        (and
          (<= 0 (inv@85@01 r))
          (<
            (inv@85@01 r)
            (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
      (and
        (img@92@01 r)
        (and (<= 0 (inv@91@01 r)) (< (inv@91@01 r) (len<Int> a@88@01))))))
  
  :qid |quant-u-18785|))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (=
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@84@01)
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@101@01))
    (=
      (and
        (img@86@01 r)
        (and
          (<= 0 (inv@85@01 r))
          (<
            (inv@85@01 r)
            (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
      (and
        (img@103@01 r)
        (and
          (< j@69@01 (inv@102@01 r))
          (<=
            (inv@102@01 r)
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))))
  
  :qid |quant-u-18786|))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (= ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) a@88@01))
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))
; [eval] !(t > j)
; [eval] t > j
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (> t@97@01 j@69@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (not (> t@97@01 j@69@01))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 65 | !(t@97@01 > j@69@01) | live]
; [else-branch: 65 | t@97@01 > j@69@01 | live]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 65 | !(t@97@01 > j@69@01)]
(assert (not (> t@97@01 j@69@01)))
; [exec]
; loc(this.elems, j).val := elem
; [eval] loc(this.elems, j)
(declare-const sm@133@01 $FVF<val>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
    (=
      ($FVF.lookup_val (as sm@133@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@99@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@133@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@99@01  $FVF<val>) r))
  :qid |qp.fvfValDef37|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@103@01 r)
      (and
        (< j@69@01 (inv@102@01 r))
        (<=
          (inv@102@01 r)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
    (=
      ($FVF.lookup_val (as sm@133@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@133@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r))
  :qid |qp.fvfValDef38|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@92@01 r)
        (and (<= 0 (inv@91@01 r)) (< (inv@91@01 r) (len<Int> a@88@01))))
      (< $Perm.No (- (- $Perm.Write (pTaken@108@01 r)) (pTaken@113@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@133@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@89@01)) r)))
  :pattern (($FVF.lookup_val (as sm@133@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@89@01)) r))
  :qid |qp.fvfValDef39|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@86@01 r)
      (and
        (<= 0 (inv@85@01 r))
        (<
          (inv@85@01 r)
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
    (=
      ($FVF.lookup_val (as sm@133@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r)))
  :pattern (($FVF.lookup_val (as sm@133@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r))
  :qid |qp.fvfValDef40|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val (as sm@99@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@89@01)) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r) r))
  :pattern (($FVF.lookup_val (as sm@133@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef41|)))
(assert ($FVF.loc_val ($FVF.lookup_val (as sm@133@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@134@01 ((r $Ref)) $Perm
  (ite
    (= r (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
    ($Perm.min
      (ite
        (=
          r
          (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@135@01 ((r $Ref)) $Perm
  (ite
    (= r (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
    ($Perm.min
      (ite
        (and
          (img@103@01 r)
          (and
            (< j@69@01 (inv@102@01 r))
            (<=
              (inv@102@01 r)
              ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@134@01 r)))
    $Perm.No))
(define-fun pTaken@136@01 ((r $Ref)) $Perm
  (ite
    (= r (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
    ($Perm.min
      (ite
        (and
          (img@92@01 r)
          (and (<= 0 (inv@91@01 r)) (< (inv@91@01 r) (len<Int> a@88@01))))
        (- (- $Perm.Write (pTaken@108@01 r)) (pTaken@113@01 r))
        $Perm.No)
      (- (- $Perm.Write (pTaken@134@01 r)) (pTaken@135@01 r)))
    $Perm.No))
(define-fun pTaken@137@01 ((r $Ref)) $Perm
  (ite
    (= r (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
    ($Perm.min
      (ite
        (and
          (img@86@01 r)
          (and
            (<= 0 (inv@85@01 r))
            (<
              (inv@85@01 r)
              (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
        $Perm.Write
        $Perm.No)
      (-
        (- (- $Perm.Write (pTaken@134@01 r)) (pTaken@135@01 r))
        (pTaken@136@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (=
  (-
    (ite
      (=
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01)
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
      (/ (to_real 1) (to_real 2))
      $Perm.No)
    (pTaken@134@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
    (= (- $Perm.Write (pTaken@134@01 r)) $Perm.No))
  
  :qid |quant-u-18789|))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@103@01 r)
          (and
            (< j@69@01 (inv@102@01 r))
            (<=
              (inv@102@01 r)
              ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
        $Perm.Write
        $Perm.No)
      (pTaken@135@01 r))
    $Perm.No)
  
  :qid |quant-u-18790|))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@135@01 r) $Perm.No)
  
  :qid |quant-u-18791|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
    (= (- (- $Perm.Write (pTaken@134@01 r)) (pTaken@135@01 r)) $Perm.No))
  
  :qid |quant-u-18792|))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@92@01 r)
          (and (<= 0 (inv@91@01 r)) (< (inv@91@01 r) (len<Int> a@88@01))))
        (- (- $Perm.Write (pTaken@108@01 r)) (pTaken@113@01 r))
        $Perm.No)
      (pTaken@136@01 r))
    $Perm.No)
  
  :qid |quant-u-18793|))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@136@01 r) $Perm.No)
  
  :qid |quant-u-18794|))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
    (=
      (-
        (- (- $Perm.Write (pTaken@134@01 r)) (pTaken@135@01 r))
        (pTaken@136@01 r))
      $Perm.No))
  
  :qid |quant-u-18795|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@138@01 $FVF<val>)
; Definitional axioms for singleton-FVF's value
(assert (=
  ($FVF.lookup_val (as sm@138@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
  elem@62@01))
(assert ($FVF.loc_val ($FVF.lookup_val (as sm@138@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01)))
; [exec]
; this.size := this.size + 1
; [eval] this.size + 1
(declare-const size@139@01 Int)
(assert (=
  size@139@01
  (+ ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))) 1)))
; [exec]
; fold acc(AList(this), write)
; [eval] 0 <= this.size
(set-option :timeout 0)
(push) ; 10
(assert (not (<= 0 size@139@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 size@139@01))
; [eval] this.size <= len(this.elems)
; [eval] len(this.elems)
(push) ; 10
(assert (not (<= size@139@01 (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01))))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (<= size@139@01 (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)))))
; [eval] 0 < len(this.elems)
; [eval] len(this.elems)
(push) ; 10
(assert (not (< 0 (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01))))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (< 0 (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)))))
(declare-const i@140@01 Int)
(push) ; 10
; [eval] 0 <= i && i < len(this.elems)
; [eval] 0 <= i
(push) ; 11
; [then-branch: 66 | !(0 <= i@140@01) | live]
; [else-branch: 66 | 0 <= i@140@01 | live]
(push) ; 12
; [then-branch: 66 | !(0 <= i@140@01)]
(assert (not (<= 0 i@140@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 66 | 0 <= i@140@01]
(assert (<= 0 i@140@01))
; [eval] i < len(this.elems)
; [eval] len(this.elems)
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@140@01) (not (<= 0 i@140@01))))
(assert (and
  (<= 0 i@140@01)
  (< i@140@01 (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01))))))
; [eval] loc(this.elems, i)
(pop) ; 10
(declare-fun inv@141@01 ($Ref) Int)
(declare-fun img@142@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@140@01 Int)) (!
  (=>
    (and
      (<= 0 i@140@01)
      (<
        i@140@01
        (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)))))
    (or (<= 0 i@140@01) (not (<= 0 i@140@01))))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@140@01))
  :qid |val-aux|)))
(declare-const sm@143@01 $FVF<val>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
    (=
      ($FVF.lookup_val (as sm@143@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@138@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@143@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@138@01  $FVF<val>) r))
  :qid |qp.fvfValDef42|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@86@01 r)
      (and
        (<= 0 (inv@85@01 r))
        (<
          (inv@85@01 r)
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
    (=
      ($FVF.lookup_val (as sm@143@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r)))
  :pattern (($FVF.lookup_val (as sm@143@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r))
  :qid |qp.fvfValDef43|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@92@01 r)
        (and (<= 0 (inv@91@01 r)) (< (inv@91@01 r) (len<Int> a@88@01))))
      (<
        $Perm.No
        (-
          (- (- $Perm.Write (pTaken@108@01 r)) (pTaken@113@01 r))
          (pTaken@136@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@143@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@89@01)) r)))
  :pattern (($FVF.lookup_val (as sm@143@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@89@01)) r))
  :qid |qp.fvfValDef44|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@103@01 r)
      (and
        (< j@69@01 (inv@102@01 r))
        (<=
          (inv@102@01 r)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
    (=
      ($FVF.lookup_val (as sm@143@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@143@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r))
  :qid |qp.fvfValDef45|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val (as sm@138@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@89@01)) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r) r))
  :pattern (($FVF.lookup_val (as sm@143@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef46|)))
; Check receiver injectivity
(push) ; 10
(assert (not (forall ((i1@140@01 Int) (i2@140@01 Int)) (!
  (=>
    (and
      (and
        (and
          (<= 0 i1@140@01)
          (<
            i1@140@01
            (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)))))
        ($FVF.loc_val ($FVF.lookup_val (as sm@143@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i1@140@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i1@140@01)))
      (and
        (and
          (<= 0 i2@140@01)
          (<
            i2@140@01
            (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)))))
        ($FVF.loc_val ($FVF.lookup_val (as sm@143@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i2@140@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i2@140@01)))
      (=
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i1@140@01)
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i2@140@01)))
    (= i1@140@01 i2@140@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@140@01 Int)) (!
  (=>
    (and
      (<= 0 i@140@01)
      (<
        i@140@01
        (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)))))
    (and
      (=
        (inv@141@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@140@01))
        i@140@01)
      (img@142@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@140@01))))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@140@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@142@01 r)
      (and
        (<= 0 (inv@141@01 r))
        (<
          (inv@141@01 r)
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01))))))
    (=
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) (inv@141@01 r))
      r))
  :pattern ((inv@141@01 r))
  :qid |val-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (<= 0 (inv@141@01 r))
      (<
        (inv@141@01 r)
        (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)))))
    ($FVF.loc_val ($FVF.lookup_val (as sm@143@01  $FVF<val>) r) r))
  :pattern ((inv@141@01 r))
  :qid |quant-u-18797|)))
(push) ; 10
(set-option :timeout 10)
(assert (not (forall ((i@140@01 Int)) (!
  (=
    (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@140@01)
    (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@140@01))
  
  :qid |quant-u-18798|))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (forall ((i@140@01 Int)) (!
  (=
    (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) i@140@01)
    (loc<Ref> a@88@01 i@140@01))
  
  :qid |quant-u-18799|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@144@01 ((r $Ref)) $Perm
  (ite
    (and
      (and
        (<= 0 (inv@141@01 r))
        (<
          (inv@141@01 r)
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)))))
      (img@142@01 r)
      (=
        r
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) (inv@141@01 r))))
    ($Perm.min
      (ite
        (and
          (img@92@01 r)
          (and (<= 0 (inv@91@01 r)) (< (inv@91@01 r) (len<Int> a@88@01))))
        (-
          (- (- $Perm.Write (pTaken@108@01 r)) (pTaken@113@01 r))
          (pTaken@136@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@145@01 ((r $Ref)) $Perm
  (ite
    (and
      (and
        (<= 0 (inv@141@01 r))
        (<
          (inv@141@01 r)
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)))))
      (img@142@01 r)
      (=
        r
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) (inv@141@01 r))))
    ($Perm.min
      (ite
        (and
          (img@103@01 r)
          (and
            (< j@69@01 (inv@102@01 r))
            (<=
              (inv@102@01 r)
              ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@144@01 r)))
    $Perm.No))
(define-fun pTaken@146@01 ((r $Ref)) $Perm
  (ite
    (and
      (and
        (<= 0 (inv@141@01 r))
        (<
          (inv@141@01 r)
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)))))
      (img@142@01 r)
      (=
        r
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) (inv@141@01 r))))
    ($Perm.min
      (ite
        (=
          r
          (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
        $Perm.Write
        $Perm.No)
      (- (- $Perm.Write (pTaken@144@01 r)) (pTaken@145@01 r)))
    $Perm.No))
(define-fun pTaken@147@01 ((r $Ref)) $Perm
  (ite
    (and
      (and
        (<= 0 (inv@141@01 r))
        (<
          (inv@141@01 r)
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)))))
      (img@142@01 r)
      (=
        r
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) (inv@141@01 r))))
    ($Perm.min
      (ite
        (and
          (img@86@01 r)
          (and
            (<= 0 (inv@85@01 r))
            (<
              (inv@85@01 r)
              (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
        $Perm.Write
        $Perm.No)
      (-
        (- (- $Perm.Write (pTaken@144@01 r)) (pTaken@145@01 r))
        (pTaken@146@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@92@01 r)
          (and (<= 0 (inv@91@01 r)) (< (inv@91@01 r) (len<Int> a@88@01))))
        (-
          (- (- $Perm.Write (pTaken@108@01 r)) (pTaken@113@01 r))
          (pTaken@136@01 r))
        $Perm.No)
      (pTaken@144@01 r))
    $Perm.No)
  
  :qid |quant-u-18801|))))
(check-sat)
; unsat
(pop) ; 10
; 0.01s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (<= 0 (inv@141@01 r))
        (<
          (inv@141@01 r)
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)))))
      (img@142@01 r)
      (=
        r
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) (inv@141@01 r))))
    (= (- $Perm.Write (pTaken@144@01 r)) $Perm.No))
  
  :qid |quant-u-18802|))))
(check-sat)
; unknown
(pop) ; 10
; 0.01s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@103@01 r)
          (and
            (< j@69@01 (inv@102@01 r))
            (<=
              (inv@102@01 r)
              ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01))))))
        $Perm.Write
        $Perm.No)
      (pTaken@145@01 r))
    $Perm.No)
  
  :qid |quant-u-18803|))))
(check-sat)
; unsat
(pop) ; 10
; 0.02s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (<= 0 (inv@141@01 r))
        (<
          (inv@141@01 r)
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)))))
      (img@142@01 r)
      (=
        r
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) (inv@141@01 r))))
    (= (- (- $Perm.Write (pTaken@144@01 r)) (pTaken@145@01 r)) $Perm.No))
  
  :qid |quant-u-18804|))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (=
  (-
    (ite
      (=
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01)
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01))
      $Perm.Write
      $Perm.No)
    (pTaken@146@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (<= 0 (inv@141@01 r))
        (<
          (inv@141@01 r)
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)))))
      (img@142@01 r)
      (=
        r
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) (inv@141@01 r))))
    (=
      (-
        (- (- $Perm.Write (pTaken@144@01 r)) (pTaken@145@01 r))
        (pTaken@146@01 r))
      $Perm.No))
  
  :qid |quant-u-18806|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@148@01 $FVF<val>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_val (as sm@148@01  $FVF<val>)))
      (and
        (and
          (<= 0 (inv@141@01 r))
          (<
            (inv@141@01 r)
            (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)))))
        (img@142@01 r)))
    (=>
      (and
        (and
          (<= 0 (inv@141@01 r))
          (<
            (inv@141@01 r)
            (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)))))
        (img@142@01 r))
      (Set_in r ($FVF.domain_val (as sm@148@01  $FVF<val>)))))
  :pattern ((Set_in r ($FVF.domain_val (as sm@148@01  $FVF<val>))))
  :qid |qp.fvfDomDef52|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@141@01 r))
          (<
            (inv@141@01 r)
            (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)))))
        (img@142@01 r))
      (=
        r
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)) j@69@01)))
    (=
      ($FVF.lookup_val (as sm@148@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@138@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@148@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@138@01  $FVF<val>) r))
  :qid |qp.fvfValDef47|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@141@01 r))
          (<
            (inv@141@01 r)
            (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)))))
        (img@142@01 r))
      (and
        (img@86@01 r)
        (and
          (<= 0 (inv@85@01 r))
          (<
            (inv@85@01 r)
            (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))))))))
    (=
      ($FVF.lookup_val (as sm@148@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r)))
  :pattern (($FVF.lookup_val (as sm@148@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r))
  :qid |qp.fvfValDef48|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@141@01 r))
          (<
            (inv@141@01 r)
            (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)))))
        (img@142@01 r))
      (ite
        (and
          (img@92@01 r)
          (and (<= 0 (inv@91@01 r)) (< (inv@91@01 r) (len<Int> a@88@01))))
        (<
          $Perm.No
          (-
            (- (- $Perm.Write (pTaken@108@01 r)) (pTaken@113@01 r))
            (pTaken@136@01 r)))
        false))
    (=
      ($FVF.lookup_val (as sm@148@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@89@01)) r)))
  :pattern (($FVF.lookup_val (as sm@148@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@89@01)) r))
  :qid |qp.fvfValDef49|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@141@01 r))
          (<
            (inv@141@01 r)
            (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first $t@98@01)))))
        (img@142@01 r))
      (and
        (img@103@01 r)
        (and
          (< j@69@01 (inv@102@01 r))
          (<=
            (inv@102@01 r)
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@98@01)))))))
    (=
      ($FVF.lookup_val (as sm@148@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@148@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r))
  :qid |qp.fvfValDef50|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val (as sm@138@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second $t@89@01)) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@98@01)))))))))) r) r))
  :pattern (($FVF.lookup_val (as sm@148@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef51|)))
(assert (AList%trigger ($Snap.combine
  ($Snap.first $t@98@01)
  ($Snap.combine
    ($SortWrappers.IntTo$Snap size@139@01)
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($SortWrappers.$FVF<val>To$Snap (as sm@148@01  $FVF<val>))))))) this@61@01))
; [eval] 0 <= j
; [eval] j < length(this)
; [eval] length(this)
(set-option :timeout 0)
(push) ; 10
(assert (length%precondition ($Snap.combine
  ($Snap.first $t@98@01)
  ($Snap.combine
    ($SortWrappers.IntTo$Snap size@139@01)
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($SortWrappers.$FVF<val>To$Snap (as sm@148@01  $FVF<val>))))))) this@61@01))
(pop) ; 10
; Joined path conditions
(assert (length%precondition ($Snap.combine
  ($Snap.first $t@98@01)
  ($Snap.combine
    ($SortWrappers.IntTo$Snap size@139@01)
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($SortWrappers.$FVF<val>To$Snap (as sm@148@01  $FVF<val>))))))) this@61@01))
(push) ; 10
(assert (not (<
  j@69@01
  (length ($Snap.combine
    ($Snap.first $t@98@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap size@139@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@148@01  $FVF<val>))))))) this@61@01))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (<
  j@69@01
  (length ($Snap.combine
    ($Snap.first $t@98@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap size@139@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@148@01  $FVF<val>))))))) this@61@01)))
; [eval] length(this) == old(length(this)) + 1
; [eval] length(this)
(push) ; 10
(pop) ; 10
; Joined path conditions
; [eval] old(length(this)) + 1
; [eval] old(length(this))
; [eval] length(this)
(push) ; 10
(pop) ; 10
; Joined path conditions
(push) ; 10
(assert (not (=
  (length ($Snap.combine
    ($Snap.first $t@98@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap size@139@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@148@01  $FVF<val>))))))) this@61@01)
  (+ (length $t@64@01 this@61@01) 1))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (=
  (length ($Snap.combine
    ($Snap.first $t@98@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap size@139@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@148@01  $FVF<val>))))))) this@61@01)
  (+ (length $t@64@01 this@61@01) 1)))
; [eval] (forall k: Int :: { old(itemAt(this, k)) } 0 <= k && k < j ==> itemAt(this, k) == old(itemAt(this, k)))
(declare-const k@149@01 Int)
(push) ; 10
; [eval] 0 <= k && k < j ==> itemAt(this, k) == old(itemAt(this, k))
; [eval] 0 <= k && k < j
; [eval] 0 <= k
(push) ; 11
; [then-branch: 67 | !(0 <= k@149@01) | live]
; [else-branch: 67 | 0 <= k@149@01 | live]
(push) ; 12
; [then-branch: 67 | !(0 <= k@149@01)]
(assert (not (<= 0 k@149@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 67 | 0 <= k@149@01]
(assert (<= 0 k@149@01))
; [eval] k < j
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@149@01) (not (<= 0 k@149@01))))
(push) ; 11
; [then-branch: 68 | 0 <= k@149@01 && k@149@01 < j@69@01 | live]
; [else-branch: 68 | !(0 <= k@149@01 && k@149@01 < j@69@01) | live]
(push) ; 12
; [then-branch: 68 | 0 <= k@149@01 && k@149@01 < j@69@01]
(assert (and (<= 0 k@149@01) (< k@149@01 j@69@01)))
; [eval] itemAt(this, k) == old(itemAt(this, k))
; [eval] itemAt(this, k)
(push) ; 13
; [eval] 0 <= index
; [eval] index < length(this)
; [eval] length(this)
(push) ; 14
(pop) ; 14
; Joined path conditions
(push) ; 14
(assert (not (<
  k@149@01
  (length ($Snap.combine
    ($Snap.first $t@98@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap size@139@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@148@01  $FVF<val>))))))) this@61@01))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (<
  k@149@01
  (length ($Snap.combine
    ($Snap.first $t@98@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap size@139@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@148@01  $FVF<val>))))))) this@61@01)))
(assert (itemAt%precondition ($Snap.combine
  ($Snap.combine
    ($Snap.first $t@98@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap size@139@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@148@01  $FVF<val>)))))))
  ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@149@01))
(pop) ; 13
; Joined path conditions
(assert (and
  (<
    k@149@01
    (length ($Snap.combine
      ($Snap.first $t@98@01)
      ($Snap.combine
        ($SortWrappers.IntTo$Snap size@139@01)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@148@01  $FVF<val>))))))) this@61@01))
  (itemAt%precondition ($Snap.combine
    ($Snap.combine
      ($Snap.first $t@98@01)
      ($Snap.combine
        ($SortWrappers.IntTo$Snap size@139@01)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@148@01  $FVF<val>)))))))
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@149@01)))
; [eval] old(itemAt(this, k))
; [eval] itemAt(this, k)
(push) ; 13
; [eval] 0 <= index
; [eval] index < length(this)
; [eval] length(this)
(push) ; 14
(pop) ; 14
; Joined path conditions
(push) ; 14
(assert (not (< k@149@01 (length $t@64@01 this@61@01))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (< k@149@01 (length $t@64@01 this@61@01)))
(assert (itemAt%precondition ($Snap.combine
  $t@64@01
  ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@149@01))
(pop) ; 13
; Joined path conditions
(assert (and
  (< k@149@01 (length $t@64@01 this@61@01))
  (itemAt%precondition ($Snap.combine
    $t@64@01
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@149@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 68 | !(0 <= k@149@01 && k@149@01 < j@69@01)]
(assert (not (and (<= 0 k@149@01) (< k@149@01 j@69@01))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (=>
  (and (<= 0 k@149@01) (< k@149@01 j@69@01))
  (and
    (<= 0 k@149@01)
    (< k@149@01 j@69@01)
    (<
      k@149@01
      (length ($Snap.combine
        ($Snap.first $t@98@01)
        ($Snap.combine
          ($SortWrappers.IntTo$Snap size@139@01)
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($SortWrappers.$FVF<val>To$Snap (as sm@148@01  $FVF<val>))))))) this@61@01))
    (itemAt%precondition ($Snap.combine
      ($Snap.combine
        ($Snap.first $t@98@01)
        ($Snap.combine
          ($SortWrappers.IntTo$Snap size@139@01)
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($SortWrappers.$FVF<val>To$Snap (as sm@148@01  $FVF<val>)))))))
      ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@149@01)
    (< k@149@01 (length $t@64@01 this@61@01))
    (itemAt%precondition ($Snap.combine
      $t@64@01
      ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@149@01))))
; Joined path conditions
(assert (or
  (not (and (<= 0 k@149@01) (< k@149@01 j@69@01)))
  (and (<= 0 k@149@01) (< k@149@01 j@69@01))))
(pop) ; 10
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@149@01 Int)) (!
  (and
    (or (<= 0 k@149@01) (not (<= 0 k@149@01)))
    (=>
      (and (<= 0 k@149@01) (< k@149@01 j@69@01))
      (and
        (<= 0 k@149@01)
        (< k@149@01 j@69@01)
        (<
          k@149@01
          (length ($Snap.combine
            ($Snap.first $t@98@01)
            ($Snap.combine
              ($SortWrappers.IntTo$Snap size@139@01)
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($SortWrappers.$FVF<val>To$Snap (as sm@148@01  $FVF<val>))))))) this@61@01))
        (itemAt%precondition ($Snap.combine
          ($Snap.combine
            ($Snap.first $t@98@01)
            ($Snap.combine
              ($SortWrappers.IntTo$Snap size@139@01)
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($SortWrappers.$FVF<val>To$Snap (as sm@148@01  $FVF<val>)))))))
          ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@149@01)
        (< k@149@01 (length $t@64@01 this@61@01))
        (itemAt%precondition ($Snap.combine
          $t@64@01
          ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@149@01)))
    (or
      (not (and (<= 0 k@149@01) (< k@149@01 j@69@01)))
      (and (<= 0 k@149@01) (< k@149@01 j@69@01))))
  :pattern ((itemAt%limited ($Snap.combine
    $t@64@01
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@149@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@101@11@101@87-aux|)))
(assert (forall ((k@149@01 Int)) (!
  (=>
    (and (<= 0 k@149@01) (< k@149@01 j@69@01))
    (and
      (itemAt%precondition ($Snap.combine
        ($Snap.combine
          ($Snap.first $t@98@01)
          ($Snap.combine
            ($SortWrappers.IntTo$Snap size@139@01)
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($SortWrappers.$FVF<val>To$Snap (as sm@148@01  $FVF<val>)))))))
        ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@149@01)
      (itemAt%precondition ($Snap.combine
        $t@64@01
        ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@149@01)))
  :pattern ((itemAt%limited ($Snap.combine
    $t@64@01
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@149@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@101@11@101@87_precondition|)))
(push) ; 10
(assert (not (forall ((k@149@01 Int)) (!
  (=>
    (and
      (=>
        (and (<= 0 k@149@01) (< k@149@01 j@69@01))
        (and
          (itemAt%precondition ($Snap.combine
            ($Snap.combine
              ($Snap.first $t@98@01)
              ($Snap.combine
                ($SortWrappers.IntTo$Snap size@139@01)
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($SortWrappers.$FVF<val>To$Snap (as sm@148@01  $FVF<val>)))))))
            ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@149@01)
          (itemAt%precondition ($Snap.combine
            $t@64@01
            ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@149@01)))
      (and (<= 0 k@149@01) (< k@149@01 j@69@01)))
    (=
      (itemAt ($Snap.combine
        ($Snap.combine
          ($Snap.first $t@98@01)
          ($Snap.combine
            ($SortWrappers.IntTo$Snap size@139@01)
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($SortWrappers.$FVF<val>To$Snap (as sm@148@01  $FVF<val>)))))))
        ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@149@01)
      (itemAt ($Snap.combine $t@64@01 ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@149@01)))
  :pattern ((itemAt%limited ($Snap.combine
    $t@64@01
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@149@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@101@11@101@87|))))
(check-sat)
; unsat
(pop) ; 10
; 0.01s
; (get-info :all-statistics)
(assert (forall ((k@149@01 Int)) (!
  (=>
    (and (<= 0 k@149@01) (< k@149@01 j@69@01))
    (=
      (itemAt ($Snap.combine
        ($Snap.combine
          ($Snap.first $t@98@01)
          ($Snap.combine
            ($SortWrappers.IntTo$Snap size@139@01)
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($SortWrappers.$FVF<val>To$Snap (as sm@148@01  $FVF<val>)))))))
        ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@149@01)
      (itemAt ($Snap.combine $t@64@01 ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@149@01)))
  :pattern ((itemAt%limited ($Snap.combine
    $t@64@01
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@149@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@101@11@101@87|)))
; [eval] itemAt(this, j) == elem
; [eval] itemAt(this, j)
(push) ; 10
; [eval] 0 <= index
; [eval] index < length(this)
; [eval] length(this)
(push) ; 11
(pop) ; 11
; Joined path conditions
(assert (itemAt%precondition ($Snap.combine
  ($Snap.combine
    ($Snap.first $t@98@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap size@139@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@148@01  $FVF<val>)))))))
  ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 j@69@01))
(pop) ; 10
; Joined path conditions
(assert (itemAt%precondition ($Snap.combine
  ($Snap.combine
    ($Snap.first $t@98@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap size@139@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@148@01  $FVF<val>)))))))
  ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 j@69@01))
(push) ; 10
(assert (not (=
  (itemAt ($Snap.combine
    ($Snap.combine
      ($Snap.first $t@98@01)
      ($Snap.combine
        ($SortWrappers.IntTo$Snap size@139@01)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@148@01  $FVF<val>)))))))
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 j@69@01)
  elem@62@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (=
  (itemAt ($Snap.combine
    ($Snap.combine
      ($Snap.first $t@98@01)
      ($Snap.combine
        ($SortWrappers.IntTo$Snap size@139@01)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@148@01  $FVF<val>)))))))
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 j@69@01)
  elem@62@01))
; [eval] (forall k: Int :: { itemAt(this, k) } j < k && k < length(this) ==> itemAt(this, k) == old(itemAt(this, k - 1)))
(declare-const k@150@01 Int)
(push) ; 10
; [eval] j < k && k < length(this) ==> itemAt(this, k) == old(itemAt(this, k - 1))
; [eval] j < k && k < length(this)
; [eval] j < k
(push) ; 11
; [then-branch: 69 | !(j@69@01 < k@150@01) | live]
; [else-branch: 69 | j@69@01 < k@150@01 | live]
(push) ; 12
; [then-branch: 69 | !(j@69@01 < k@150@01)]
(assert (not (< j@69@01 k@150@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 69 | j@69@01 < k@150@01]
(assert (< j@69@01 k@150@01))
; [eval] k < length(this)
; [eval] length(this)
(push) ; 13
(pop) ; 13
; Joined path conditions
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (< j@69@01 k@150@01) (not (< j@69@01 k@150@01))))
(push) ; 11
; [then-branch: 70 | j@69@01 < k@150@01 && k@150@01 < length((First:($t@98@01), (size@139@01, (_, (_, (_, sm@148@01))))), this@61@01) | live]
; [else-branch: 70 | !(j@69@01 < k@150@01 && k@150@01 < length((First:($t@98@01), (size@139@01, (_, (_, (_, sm@148@01))))), this@61@01)) | live]
(push) ; 12
; [then-branch: 70 | j@69@01 < k@150@01 && k@150@01 < length((First:($t@98@01), (size@139@01, (_, (_, (_, sm@148@01))))), this@61@01)]
(assert (and
  (< j@69@01 k@150@01)
  (<
    k@150@01
    (length ($Snap.combine
      ($Snap.first $t@98@01)
      ($Snap.combine
        ($SortWrappers.IntTo$Snap size@139@01)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@148@01  $FVF<val>))))))) this@61@01))))
; [eval] itemAt(this, k) == old(itemAt(this, k - 1))
; [eval] itemAt(this, k)
(push) ; 13
; [eval] 0 <= index
(push) ; 14
(assert (not (<= 0 k@150@01)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 k@150@01))
; [eval] index < length(this)
; [eval] length(this)
(push) ; 14
(pop) ; 14
; Joined path conditions
(assert (itemAt%precondition ($Snap.combine
  ($Snap.combine
    ($Snap.first $t@98@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap size@139@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@148@01  $FVF<val>)))))))
  ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@150@01))
(pop) ; 13
; Joined path conditions
(assert (and
  (<= 0 k@150@01)
  (itemAt%precondition ($Snap.combine
    ($Snap.combine
      ($Snap.first $t@98@01)
      ($Snap.combine
        ($SortWrappers.IntTo$Snap size@139@01)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@148@01  $FVF<val>)))))))
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@150@01)))
; [eval] old(itemAt(this, k - 1))
; [eval] itemAt(this, k - 1)
; [eval] k - 1
(push) ; 13
; [eval] 0 <= index
(push) ; 14
(assert (not (<= 0 (- k@150@01 1))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 (- k@150@01 1)))
; [eval] index < length(this)
; [eval] length(this)
(push) ; 14
(pop) ; 14
; Joined path conditions
(push) ; 14
(assert (not (< (- k@150@01 1) (length $t@64@01 this@61@01))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (< (- k@150@01 1) (length $t@64@01 this@61@01)))
(assert (itemAt%precondition ($Snap.combine
  $t@64@01
  ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- k@150@01 1)))
(pop) ; 13
; Joined path conditions
(assert (and
  (<= 0 (- k@150@01 1))
  (< (- k@150@01 1) (length $t@64@01 this@61@01))
  (itemAt%precondition ($Snap.combine
    $t@64@01
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- k@150@01 1))))
(pop) ; 12
(push) ; 12
; [else-branch: 70 | !(j@69@01 < k@150@01 && k@150@01 < length((First:($t@98@01), (size@139@01, (_, (_, (_, sm@148@01))))), this@61@01))]
(assert (not
  (and
    (< j@69@01 k@150@01)
    (<
      k@150@01
      (length ($Snap.combine
        ($Snap.first $t@98@01)
        ($Snap.combine
          ($SortWrappers.IntTo$Snap size@139@01)
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($SortWrappers.$FVF<val>To$Snap (as sm@148@01  $FVF<val>))))))) this@61@01)))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (=>
  (and
    (< j@69@01 k@150@01)
    (<
      k@150@01
      (length ($Snap.combine
        ($Snap.first $t@98@01)
        ($Snap.combine
          ($SortWrappers.IntTo$Snap size@139@01)
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($SortWrappers.$FVF<val>To$Snap (as sm@148@01  $FVF<val>))))))) this@61@01)))
  (and
    (< j@69@01 k@150@01)
    (<
      k@150@01
      (length ($Snap.combine
        ($Snap.first $t@98@01)
        ($Snap.combine
          ($SortWrappers.IntTo$Snap size@139@01)
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($SortWrappers.$FVF<val>To$Snap (as sm@148@01  $FVF<val>))))))) this@61@01))
    (<= 0 k@150@01)
    (itemAt%precondition ($Snap.combine
      ($Snap.combine
        ($Snap.first $t@98@01)
        ($Snap.combine
          ($SortWrappers.IntTo$Snap size@139@01)
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($SortWrappers.$FVF<val>To$Snap (as sm@148@01  $FVF<val>)))))))
      ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@150@01)
    (<= 0 (- k@150@01 1))
    (< (- k@150@01 1) (length $t@64@01 this@61@01))
    (itemAt%precondition ($Snap.combine
      $t@64@01
      ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- k@150@01 1)))))
; Joined path conditions
(assert (or
  (not
    (and
      (< j@69@01 k@150@01)
      (<
        k@150@01
        (length ($Snap.combine
          ($Snap.first $t@98@01)
          ($Snap.combine
            ($SortWrappers.IntTo$Snap size@139@01)
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($SortWrappers.$FVF<val>To$Snap (as sm@148@01  $FVF<val>))))))) this@61@01))))
  (and
    (< j@69@01 k@150@01)
    (<
      k@150@01
      (length ($Snap.combine
        ($Snap.first $t@98@01)
        ($Snap.combine
          ($SortWrappers.IntTo$Snap size@139@01)
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($SortWrappers.$FVF<val>To$Snap (as sm@148@01  $FVF<val>))))))) this@61@01)))))
(pop) ; 10
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@150@01 Int)) (!
  (and
    (or (< j@69@01 k@150@01) (not (< j@69@01 k@150@01)))
    (=>
      (and
        (< j@69@01 k@150@01)
        (<
          k@150@01
          (length ($Snap.combine
            ($Snap.first $t@98@01)
            ($Snap.combine
              ($SortWrappers.IntTo$Snap size@139@01)
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($SortWrappers.$FVF<val>To$Snap (as sm@148@01  $FVF<val>))))))) this@61@01)))
      (and
        (< j@69@01 k@150@01)
        (<
          k@150@01
          (length ($Snap.combine
            ($Snap.first $t@98@01)
            ($Snap.combine
              ($SortWrappers.IntTo$Snap size@139@01)
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($SortWrappers.$FVF<val>To$Snap (as sm@148@01  $FVF<val>))))))) this@61@01))
        (<= 0 k@150@01)
        (itemAt%precondition ($Snap.combine
          ($Snap.combine
            ($Snap.first $t@98@01)
            ($Snap.combine
              ($SortWrappers.IntTo$Snap size@139@01)
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($SortWrappers.$FVF<val>To$Snap (as sm@148@01  $FVF<val>)))))))
          ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@150@01)
        (<= 0 (- k@150@01 1))
        (< (- k@150@01 1) (length $t@64@01 this@61@01))
        (itemAt%precondition ($Snap.combine
          $t@64@01
          ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- k@150@01 1))))
    (or
      (not
        (and
          (< j@69@01 k@150@01)
          (<
            k@150@01
            (length ($Snap.combine
              ($Snap.first $t@98@01)
              ($Snap.combine
                ($SortWrappers.IntTo$Snap size@139@01)
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($SortWrappers.$FVF<val>To$Snap (as sm@148@01  $FVF<val>))))))) this@61@01))))
      (and
        (< j@69@01 k@150@01)
        (<
          k@150@01
          (length ($Snap.combine
            ($Snap.first $t@98@01)
            ($Snap.combine
              ($SortWrappers.IntTo$Snap size@139@01)
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($SortWrappers.$FVF<val>To$Snap (as sm@148@01  $FVF<val>))))))) this@61@01)))))
  :pattern ((itemAt%limited ($Snap.combine
    ($Snap.combine
      ($Snap.first $t@98@01)
      ($Snap.combine
        ($SortWrappers.IntTo$Snap size@139@01)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@148@01  $FVF<val>)))))))
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@150@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@103@11@103@101-aux|)))
(assert (forall ((k@150@01 Int)) (!
  (and
    (=>
      (< j@69@01 k@150@01)
      (length%precondition ($Snap.combine
        ($Snap.first $t@98@01)
        ($Snap.combine
          ($SortWrappers.IntTo$Snap size@139@01)
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($SortWrappers.$FVF<val>To$Snap (as sm@148@01  $FVF<val>))))))) this@61@01))
    (=>
      (and
        (< j@69@01 k@150@01)
        (<
          k@150@01
          (length ($Snap.combine
            ($Snap.first $t@98@01)
            ($Snap.combine
              ($SortWrappers.IntTo$Snap size@139@01)
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($SortWrappers.$FVF<val>To$Snap (as sm@148@01  $FVF<val>))))))) this@61@01)))
      (and
        (itemAt%precondition ($Snap.combine
          ($Snap.combine
            ($Snap.first $t@98@01)
            ($Snap.combine
              ($SortWrappers.IntTo$Snap size@139@01)
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($SortWrappers.$FVF<val>To$Snap (as sm@148@01  $FVF<val>)))))))
          ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@150@01)
        (itemAt%precondition ($Snap.combine
          $t@64@01
          ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- k@150@01 1)))))
  :pattern ((itemAt%limited ($Snap.combine
    ($Snap.combine
      ($Snap.first $t@98@01)
      ($Snap.combine
        ($SortWrappers.IntTo$Snap size@139@01)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@148@01  $FVF<val>)))))))
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@150@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@103@11@103@101_precondition|)))
(push) ; 10
(assert (not (forall ((k@150@01 Int)) (!
  (=>
    (and
      (and
        (=>
          (< j@69@01 k@150@01)
          (length%precondition ($Snap.combine
            ($Snap.first $t@98@01)
            ($Snap.combine
              ($SortWrappers.IntTo$Snap size@139@01)
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($SortWrappers.$FVF<val>To$Snap (as sm@148@01  $FVF<val>))))))) this@61@01))
        (=>
          (and
            (< j@69@01 k@150@01)
            (<
              k@150@01
              (length ($Snap.combine
                ($Snap.first $t@98@01)
                ($Snap.combine
                  ($SortWrappers.IntTo$Snap size@139@01)
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine
                        $Snap.unit
                        ($SortWrappers.$FVF<val>To$Snap (as sm@148@01  $FVF<val>))))))) this@61@01)))
          (and
            (itemAt%precondition ($Snap.combine
              ($Snap.combine
                ($Snap.first $t@98@01)
                ($Snap.combine
                  ($SortWrappers.IntTo$Snap size@139@01)
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine
                        $Snap.unit
                        ($SortWrappers.$FVF<val>To$Snap (as sm@148@01  $FVF<val>)))))))
              ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@150@01)
            (itemAt%precondition ($Snap.combine
              $t@64@01
              ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- k@150@01 1)))))
      (and
        (< j@69@01 k@150@01)
        (<
          k@150@01
          (length ($Snap.combine
            ($Snap.first $t@98@01)
            ($Snap.combine
              ($SortWrappers.IntTo$Snap size@139@01)
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($SortWrappers.$FVF<val>To$Snap (as sm@148@01  $FVF<val>))))))) this@61@01))))
    (=
      (itemAt ($Snap.combine
        ($Snap.combine
          ($Snap.first $t@98@01)
          ($Snap.combine
            ($SortWrappers.IntTo$Snap size@139@01)
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($SortWrappers.$FVF<val>To$Snap (as sm@148@01  $FVF<val>)))))))
        ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@150@01)
      (itemAt ($Snap.combine $t@64@01 ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (-
        k@150@01
        1))))
  :pattern ((itemAt%limited ($Snap.combine
    ($Snap.combine
      ($Snap.first $t@98@01)
      ($Snap.combine
        ($SortWrappers.IntTo$Snap size@139@01)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@148@01  $FVF<val>)))))))
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@150@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@103@11@103@101|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (forall ((k@150@01 Int)) (!
  (=>
    (and
      (< j@69@01 k@150@01)
      (<
        k@150@01
        (length ($Snap.combine
          ($Snap.first $t@98@01)
          ($Snap.combine
            ($SortWrappers.IntTo$Snap size@139@01)
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($SortWrappers.$FVF<val>To$Snap (as sm@148@01  $FVF<val>))))))) this@61@01)))
    (=
      (itemAt ($Snap.combine
        ($Snap.combine
          ($Snap.first $t@98@01)
          ($Snap.combine
            ($SortWrappers.IntTo$Snap size@139@01)
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($SortWrappers.$FVF<val>To$Snap (as sm@148@01  $FVF<val>)))))))
        ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@150@01)
      (itemAt ($Snap.combine $t@64@01 ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (-
        k@150@01
        1))))
  :pattern ((itemAt%limited ($Snap.combine
    ($Snap.combine
      ($Snap.first $t@98@01)
      ($Snap.combine
        ($SortWrappers.IntTo$Snap size@139@01)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@148@01  $FVF<val>)))))))
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@150@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@103@11@103@101|)))
(pop) ; 9
(push) ; 9
; [else-branch: 65 | t@97@01 > j@69@01]
(assert (> t@97@01 j@69@01))
(pop) ; 9
(pop) ; 8
(pop) ; 7
(pop) ; 6
(push) ; 6
; [else-branch: 39 | First:(Second:(First:($t@70@01))) != len[Int](First:(First:($t@70@01)))]
(assert (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))
    (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
(pop) ; 6
; [eval] !(this.size == len(this.elems))
; [eval] this.size == len(this.elems)
; [eval] len(this.elems)
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))
  (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))
    (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))))))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 71 | First:(Second:(First:($t@70@01))) != len[Int](First:(First:($t@70@01))) | live]
; [else-branch: 71 | First:(Second:(First:($t@70@01))) == len[Int](First:(First:($t@70@01))) | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 71 | First:(Second:(First:($t@70@01))) != len[Int](First:(First:($t@70@01)))]
(assert (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))
    (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
; [exec]
; t := this.size
(declare-const t@151@01 Int)
(assert (=
  t@151@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))
(declare-const t@152@01 Int)
(push) ; 7
; Loop head block: Check well-definedness of invariant
(declare-const $t@153@01 $Snap)
(assert (= $t@153@01 ($Snap.combine ($Snap.first $t@153@01) ($Snap.second $t@153@01))))
(assert (=
  ($Snap.second $t@153@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@153@01))
    ($Snap.second ($Snap.second $t@153@01)))))
(assert (=
  ($Snap.second ($Snap.second $t@153@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@153@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))
; [eval] loc(this.elems, j)
(declare-const sm@154@01 $FVF<val>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_val (as sm@154@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@153@01))))))
(assert (<=
  $Perm.No
  (ite
    (=
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01)
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01))
    (/ (to_real 1) (to_real 2))
    $Perm.No)))
(assert (<=
  (ite
    (=
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01)
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01))
    (/ (to_real 1) (to_real 2))
    $Perm.No)
  $Perm.Write))
(assert (=>
  (=
    (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01)
    (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01))
  (not
    (=
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01)
      $Ref.null))))
(declare-const sm@155@01 $FVF<val>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01))
    (=
      ($FVF.lookup_val (as sm@155@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@154@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@155@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@154@01  $FVF<val>) r))
  :qid |qp.fvfValDef53|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_val ($FVF.lookup_val (as sm@154@01  $FVF<val>) r) r)
  :pattern (($FVF.lookup_val (as sm@155@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef54|)))
(assert ($FVF.loc_val ($FVF.lookup_val (as sm@155@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@153@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@153@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@153@01))))
  $Snap.unit))
; [eval] j <= t
(assert (<= j@69@01 t@152@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))
  $Snap.unit))
; [eval] t <= this.size
(assert (<= t@152@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))
  $Snap.unit))
; [eval] this.size == old(length(this))
; [eval] old(length(this))
; [eval] length(this)
(push) ; 8
(pop) ; 8
; Joined path conditions
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))
  (length $t@64@01 this@61@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))
  $Snap.unit))
; [eval] -1 <= j
; [eval] -1
(assert (<= (- 0 1) j@69@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))
  $Snap.unit))
; [eval] this.size < len(this.elems)
; [eval] len(this.elems)
(assert (<
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))
  (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))))))
(declare-const i@156@01 Int)
(push) ; 8
; [eval] j < i && i <= this.size
; [eval] j < i
(push) ; 9
; [then-branch: 72 | !(j@69@01 < i@156@01) | live]
; [else-branch: 72 | j@69@01 < i@156@01 | live]
(push) ; 10
; [then-branch: 72 | !(j@69@01 < i@156@01)]
(assert (not (< j@69@01 i@156@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 72 | j@69@01 < i@156@01]
(assert (< j@69@01 i@156@01))
; [eval] i <= this.size
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (< j@69@01 i@156@01) (not (< j@69@01 i@156@01))))
(assert (and
  (< j@69@01 i@156@01)
  (<= i@156@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
; [eval] loc(this.elems, i)
(pop) ; 8
(declare-fun inv@157@01 ($Ref) Int)
(declare-fun img@158@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@156@01 Int)) (!
  (=>
    (and
      (< j@69@01 i@156@01)
      (<=
        i@156@01
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))
    (or (< j@69@01 i@156@01) (not (< j@69@01 i@156@01))))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@156@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 8
(assert (not (forall ((i1@156@01 Int) (i2@156@01 Int)) (!
  (=>
    (and
      (and
        (< j@69@01 i1@156@01)
        (<=
          i1@156@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))
      (and
        (< j@69@01 i2@156@01)
        (<=
          i2@156@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))
      (=
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i1@156@01)
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i2@156@01)))
    (= i1@156@01 i2@156@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@156@01 Int)) (!
  (=>
    (and
      (< j@69@01 i@156@01)
      (<=
        i@156@01
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))
    (and
      (=
        (inv@157@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@156@01))
        i@156@01)
      (img@158@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@156@01))))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@156@01))
  :qid |quant-u-18808|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@158@01 r)
      (and
        (< j@69@01 (inv@157@01 r))
        (<=
          (inv@157@01 r)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
    (=
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) (inv@157@01 r))
      r))
  :pattern ((inv@157@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@156@01 Int)) (!
  (=>
    (and
      (< j@69@01 i@156@01)
      (<=
        i@156@01
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))
    (not
      (=
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@156@01)
        $Ref.null)))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@156@01))
  :qid |val-permImpliesNonNull|)))
(declare-const sm@159@01 $FVF<val>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01))
    (=
      ($FVF.lookup_val (as sm@159@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@154@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@159@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@154@01  $FVF<val>) r))
  :qid |qp.fvfValDef55|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@158@01 r)
      (and
        (< j@69@01 (inv@157@01 r))
        (<=
          (inv@157@01 r)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
    (=
      ($FVF.lookup_val (as sm@159@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@159@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
  :qid |qp.fvfValDef56|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val (as sm@154@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r) r))
  :pattern (($FVF.lookup_val (as sm@159@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef57|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (< j@69@01 (inv@157@01 r))
      (<=
        (inv@157@01 r)
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))
    ($FVF.loc_val ($FVF.lookup_val (as sm@159@01  $FVF<val>) r) r))
  :pattern ((inv@157@01 r))
  :qid |quant-u-18809|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))))
  $Snap.unit))
; [eval] (forall i: Int :: { loc(this.elems, i) } j <= i && i <= this.size ==> i < t ==> loc(this.elems, i).val == old(itemAt(this, i)))
(declare-const i@160@01 Int)
(push) ; 8
; [eval] j <= i && i <= this.size ==> i < t ==> loc(this.elems, i).val == old(itemAt(this, i))
; [eval] j <= i && i <= this.size
; [eval] j <= i
(push) ; 9
; [then-branch: 73 | !(j@69@01 <= i@160@01) | live]
; [else-branch: 73 | j@69@01 <= i@160@01 | live]
(push) ; 10
; [then-branch: 73 | !(j@69@01 <= i@160@01)]
(assert (not (<= j@69@01 i@160@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 73 | j@69@01 <= i@160@01]
(assert (<= j@69@01 i@160@01))
; [eval] i <= this.size
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (<= j@69@01 i@160@01) (not (<= j@69@01 i@160@01))))
(push) ; 9
; [then-branch: 74 | j@69@01 <= i@160@01 && i@160@01 <= First:(Second:($t@153@01)) | live]
; [else-branch: 74 | !(j@69@01 <= i@160@01 && i@160@01 <= First:(Second:($t@153@01))) | live]
(push) ; 10
; [then-branch: 74 | j@69@01 <= i@160@01 && i@160@01 <= First:(Second:($t@153@01))]
(assert (and
  (<= j@69@01 i@160@01)
  (<= i@160@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
; [eval] i < t ==> loc(this.elems, i).val == old(itemAt(this, i))
; [eval] i < t
(push) ; 11
; [then-branch: 75 | i@160@01 < t@152@01 | live]
; [else-branch: 75 | !(i@160@01 < t@152@01) | live]
(push) ; 12
; [then-branch: 75 | i@160@01 < t@152@01]
(assert (< i@160@01 t@152@01))
; [eval] loc(this.elems, i).val == old(itemAt(this, i))
; [eval] loc(this.elems, i)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (=
        r
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01))
      (=
        ($FVF.lookup_val (as sm@159@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@154@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@159@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@154@01  $FVF<val>) r))
    :qid |qp.fvfValDef55|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@158@01 r)
        (and
          (< j@69@01 (inv@157@01 r))
          (<=
            (inv@157@01 r)
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
      (=
        ($FVF.lookup_val (as sm@159@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
    :pattern (($FVF.lookup_val (as sm@159@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
    :qid |qp.fvfValDef56|))
  (forall ((r $Ref)) (!
    (and
      ($FVF.loc_val ($FVF.lookup_val (as sm@154@01  $FVF<val>) r) r)
      ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r) r))
    :pattern (($FVF.lookup_val (as sm@159@01  $FVF<val>) r))
    :qid |qp.fvfResTrgDef57|))))
(assert ($FVF.loc_val ($FVF.lookup_val (as sm@159@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@160@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@160@01)))
(push) ; 13
(assert (not (<
  $Perm.No
  (+
    (ite
      (=
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@160@01)
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01))
      (/ (to_real 1) (to_real 2))
      $Perm.No)
    (ite
      (and
        (img@158@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@160@01))
        (and
          (<
            j@69@01
            (inv@157@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@160@01)))
          (<=
            (inv@157@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@160@01))
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [eval] old(itemAt(this, i))
; [eval] itemAt(this, i)
(push) ; 13
; [eval] 0 <= index
(push) ; 14
(assert (not (<= 0 i@160@01)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 i@160@01))
; [eval] index < length(this)
; [eval] length(this)
(push) ; 14
(pop) ; 14
; Joined path conditions
(push) ; 14
(assert (not (< i@160@01 (length $t@64@01 this@61@01))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (< i@160@01 (length $t@64@01 this@61@01)))
(assert (itemAt%precondition ($Snap.combine
  $t@64@01
  ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 i@160@01))
(pop) ; 13
; Joined path conditions
(assert (and
  (<= 0 i@160@01)
  (< i@160@01 (length $t@64@01 this@61@01))
  (itemAt%precondition ($Snap.combine
    $t@64@01
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 i@160@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 75 | !(i@160@01 < t@152@01)]
(assert (not (< i@160@01 t@152@01)))
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01))
    (=
      ($FVF.lookup_val (as sm@159@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@154@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@159@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@154@01  $FVF<val>) r))
  :qid |qp.fvfValDef55|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@158@01 r)
      (and
        (< j@69@01 (inv@157@01 r))
        (<=
          (inv@157@01 r)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
    (=
      ($FVF.lookup_val (as sm@159@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@159@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
  :qid |qp.fvfValDef56|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val (as sm@154@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r) r))
  :pattern (($FVF.lookup_val (as sm@159@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef57|)))
(assert (=>
  (< i@160@01 t@152@01)
  (and
    (< i@160@01 t@152@01)
    ($FVF.loc_val ($FVF.lookup_val (as sm@159@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@160@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@160@01))
    (<= 0 i@160@01)
    (< i@160@01 (length $t@64@01 this@61@01))
    (itemAt%precondition ($Snap.combine
      $t@64@01
      ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 i@160@01))))
; Joined path conditions
(assert (or (not (< i@160@01 t@152@01)) (< i@160@01 t@152@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 74 | !(j@69@01 <= i@160@01 && i@160@01 <= First:(Second:($t@153@01)))]
(assert (not
  (and
    (<= j@69@01 i@160@01)
    (<=
      i@160@01
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01))
    (=
      ($FVF.lookup_val (as sm@159@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@154@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@159@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@154@01  $FVF<val>) r))
  :qid |qp.fvfValDef55|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@158@01 r)
      (and
        (< j@69@01 (inv@157@01 r))
        (<=
          (inv@157@01 r)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
    (=
      ($FVF.lookup_val (as sm@159@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@159@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
  :qid |qp.fvfValDef56|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val (as sm@154@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r) r))
  :pattern (($FVF.lookup_val (as sm@159@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef57|)))
(assert (=>
  (and
    (<= j@69@01 i@160@01)
    (<=
      i@160@01
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))
  (and
    (<= j@69@01 i@160@01)
    (<=
      i@160@01
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))
    (=>
      (< i@160@01 t@152@01)
      (and
        (< i@160@01 t@152@01)
        ($FVF.loc_val ($FVF.lookup_val (as sm@159@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@160@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@160@01))
        (<= 0 i@160@01)
        (< i@160@01 (length $t@64@01 this@61@01))
        (itemAt%precondition ($Snap.combine
          $t@64@01
          ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 i@160@01)))
    (or (not (< i@160@01 t@152@01)) (< i@160@01 t@152@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= j@69@01 i@160@01)
      (<=
        i@160@01
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
  (and
    (<= j@69@01 i@160@01)
    (<=
      i@160@01
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))))
(pop) ; 8
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01))
    (=
      ($FVF.lookup_val (as sm@159@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@154@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@159@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@154@01  $FVF<val>) r))
  :qid |qp.fvfValDef55|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@158@01 r)
      (and
        (< j@69@01 (inv@157@01 r))
        (<=
          (inv@157@01 r)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
    (=
      ($FVF.lookup_val (as sm@159@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@159@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
  :qid |qp.fvfValDef56|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val (as sm@154@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r) r))
  :pattern (($FVF.lookup_val (as sm@159@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef57|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@160@01 Int)) (!
  (and
    (or (<= j@69@01 i@160@01) (not (<= j@69@01 i@160@01)))
    (=>
      (and
        (<= j@69@01 i@160@01)
        (<=
          i@160@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))
      (and
        (<= j@69@01 i@160@01)
        (<=
          i@160@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))
        (=>
          (< i@160@01 t@152@01)
          (and
            (< i@160@01 t@152@01)
            ($FVF.loc_val ($FVF.lookup_val (as sm@159@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@160@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@160@01))
            (<= 0 i@160@01)
            (< i@160@01 (length $t@64@01 this@61@01))
            (itemAt%precondition ($Snap.combine
              $t@64@01
              ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 i@160@01)))
        (or (not (< i@160@01 t@152@01)) (< i@160@01 t@152@01))))
    (or
      (not
        (and
          (<= j@69@01 i@160@01)
          (<=
            i@160@01
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
      (and
        (<= j@69@01 i@160@01)
        (<=
          i@160@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@160@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@136@15@136@137-aux|)))
(assert (forall ((i@160@01 Int)) (!
  (=>
    (and
      (and
        (<= j@69@01 i@160@01)
        (<=
          i@160@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))
      (< i@160@01 t@152@01))
    (=
      ($FVF.lookup_val (as sm@159@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@160@01))
      (itemAt ($Snap.combine $t@64@01 ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 i@160@01)))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@160@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@136@15@136@137|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))))
  $Snap.unit))
; [eval] (forall i: Int :: { loc(this.elems, i) } j < i && i <= this.size ==> i > t ==> loc(this.elems, i).val == old(itemAt(this, i - 1)))
(declare-const i@161@01 Int)
(push) ; 8
; [eval] j < i && i <= this.size ==> i > t ==> loc(this.elems, i).val == old(itemAt(this, i - 1))
; [eval] j < i && i <= this.size
; [eval] j < i
(push) ; 9
; [then-branch: 76 | !(j@69@01 < i@161@01) | live]
; [else-branch: 76 | j@69@01 < i@161@01 | live]
(push) ; 10
; [then-branch: 76 | !(j@69@01 < i@161@01)]
(assert (not (< j@69@01 i@161@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 76 | j@69@01 < i@161@01]
(assert (< j@69@01 i@161@01))
; [eval] i <= this.size
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (< j@69@01 i@161@01) (not (< j@69@01 i@161@01))))
(push) ; 9
; [then-branch: 77 | j@69@01 < i@161@01 && i@161@01 <= First:(Second:($t@153@01)) | live]
; [else-branch: 77 | !(j@69@01 < i@161@01 && i@161@01 <= First:(Second:($t@153@01))) | live]
(push) ; 10
; [then-branch: 77 | j@69@01 < i@161@01 && i@161@01 <= First:(Second:($t@153@01))]
(assert (and
  (< j@69@01 i@161@01)
  (<= i@161@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
; [eval] i > t ==> loc(this.elems, i).val == old(itemAt(this, i - 1))
; [eval] i > t
(push) ; 11
; [then-branch: 78 | i@161@01 > t@152@01 | live]
; [else-branch: 78 | !(i@161@01 > t@152@01) | live]
(push) ; 12
; [then-branch: 78 | i@161@01 > t@152@01]
(assert (> i@161@01 t@152@01))
; [eval] loc(this.elems, i).val == old(itemAt(this, i - 1))
; [eval] loc(this.elems, i)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (=
        r
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01))
      (=
        ($FVF.lookup_val (as sm@159@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@154@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@159@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@154@01  $FVF<val>) r))
    :qid |qp.fvfValDef55|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@158@01 r)
        (and
          (< j@69@01 (inv@157@01 r))
          (<=
            (inv@157@01 r)
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
      (=
        ($FVF.lookup_val (as sm@159@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
    :pattern (($FVF.lookup_val (as sm@159@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
    :qid |qp.fvfValDef56|))
  (forall ((r $Ref)) (!
    (and
      ($FVF.loc_val ($FVF.lookup_val (as sm@154@01  $FVF<val>) r) r)
      ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r) r))
    :pattern (($FVF.lookup_val (as sm@159@01  $FVF<val>) r))
    :qid |qp.fvfResTrgDef57|))))
(assert ($FVF.loc_val ($FVF.lookup_val (as sm@159@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@161@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@161@01)))
(push) ; 13
(assert (not (<
  $Perm.No
  (+
    (ite
      (=
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@161@01)
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01))
      (/ (to_real 1) (to_real 2))
      $Perm.No)
    (ite
      (and
        (img@158@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@161@01))
        (and
          (<
            j@69@01
            (inv@157@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@161@01)))
          (<=
            (inv@157@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@161@01))
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [eval] old(itemAt(this, i - 1))
; [eval] itemAt(this, i - 1)
; [eval] i - 1
(push) ; 13
; [eval] 0 <= index
(push) ; 14
(assert (not (<= 0 (- i@161@01 1))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 (- i@161@01 1)))
; [eval] index < length(this)
; [eval] length(this)
(push) ; 14
(pop) ; 14
; Joined path conditions
(push) ; 14
(assert (not (< (- i@161@01 1) (length $t@64@01 this@61@01))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (< (- i@161@01 1) (length $t@64@01 this@61@01)))
(assert (itemAt%precondition ($Snap.combine
  $t@64@01
  ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- i@161@01 1)))
(pop) ; 13
; Joined path conditions
(assert (and
  (<= 0 (- i@161@01 1))
  (< (- i@161@01 1) (length $t@64@01 this@61@01))
  (itemAt%precondition ($Snap.combine
    $t@64@01
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- i@161@01 1))))
(pop) ; 12
(push) ; 12
; [else-branch: 78 | !(i@161@01 > t@152@01)]
(assert (not (> i@161@01 t@152@01)))
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01))
    (=
      ($FVF.lookup_val (as sm@159@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@154@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@159@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@154@01  $FVF<val>) r))
  :qid |qp.fvfValDef55|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@158@01 r)
      (and
        (< j@69@01 (inv@157@01 r))
        (<=
          (inv@157@01 r)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
    (=
      ($FVF.lookup_val (as sm@159@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@159@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
  :qid |qp.fvfValDef56|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val (as sm@154@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r) r))
  :pattern (($FVF.lookup_val (as sm@159@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef57|)))
(assert (=>
  (> i@161@01 t@152@01)
  (and
    (> i@161@01 t@152@01)
    ($FVF.loc_val ($FVF.lookup_val (as sm@159@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@161@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@161@01))
    (<= 0 (- i@161@01 1))
    (< (- i@161@01 1) (length $t@64@01 this@61@01))
    (itemAt%precondition ($Snap.combine
      $t@64@01
      ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- i@161@01 1)))))
; Joined path conditions
(assert (or (not (> i@161@01 t@152@01)) (> i@161@01 t@152@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 77 | !(j@69@01 < i@161@01 && i@161@01 <= First:(Second:($t@153@01)))]
(assert (not
  (and
    (< j@69@01 i@161@01)
    (<=
      i@161@01
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01))
    (=
      ($FVF.lookup_val (as sm@159@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@154@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@159@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@154@01  $FVF<val>) r))
  :qid |qp.fvfValDef55|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@158@01 r)
      (and
        (< j@69@01 (inv@157@01 r))
        (<=
          (inv@157@01 r)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
    (=
      ($FVF.lookup_val (as sm@159@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@159@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
  :qid |qp.fvfValDef56|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val (as sm@154@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r) r))
  :pattern (($FVF.lookup_val (as sm@159@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef57|)))
(assert (=>
  (and
    (< j@69@01 i@161@01)
    (<=
      i@161@01
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))
  (and
    (< j@69@01 i@161@01)
    (<=
      i@161@01
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))
    (=>
      (> i@161@01 t@152@01)
      (and
        (> i@161@01 t@152@01)
        ($FVF.loc_val ($FVF.lookup_val (as sm@159@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@161@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@161@01))
        (<= 0 (- i@161@01 1))
        (< (- i@161@01 1) (length $t@64@01 this@61@01))
        (itemAt%precondition ($Snap.combine
          $t@64@01
          ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- i@161@01 1))))
    (or (not (> i@161@01 t@152@01)) (> i@161@01 t@152@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (< j@69@01 i@161@01)
      (<=
        i@161@01
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
  (and
    (< j@69@01 i@161@01)
    (<=
      i@161@01
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))))
(pop) ; 8
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01))
    (=
      ($FVF.lookup_val (as sm@159@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@154@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@159@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@154@01  $FVF<val>) r))
  :qid |qp.fvfValDef55|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@158@01 r)
      (and
        (< j@69@01 (inv@157@01 r))
        (<=
          (inv@157@01 r)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
    (=
      ($FVF.lookup_val (as sm@159@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@159@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
  :qid |qp.fvfValDef56|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val (as sm@154@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r) r))
  :pattern (($FVF.lookup_val (as sm@159@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef57|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@161@01 Int)) (!
  (and
    (or (< j@69@01 i@161@01) (not (< j@69@01 i@161@01)))
    (=>
      (and
        (< j@69@01 i@161@01)
        (<=
          i@161@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))
      (and
        (< j@69@01 i@161@01)
        (<=
          i@161@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))
        (=>
          (> i@161@01 t@152@01)
          (and
            (> i@161@01 t@152@01)
            ($FVF.loc_val ($FVF.lookup_val (as sm@159@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@161@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@161@01))
            (<= 0 (- i@161@01 1))
            (< (- i@161@01 1) (length $t@64@01 this@61@01))
            (itemAt%precondition ($Snap.combine
              $t@64@01
              ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- i@161@01 1))))
        (or (not (> i@161@01 t@152@01)) (> i@161@01 t@152@01))))
    (or
      (not
        (and
          (< j@69@01 i@161@01)
          (<=
            i@161@01
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
      (and
        (< j@69@01 i@161@01)
        (<=
          i@161@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@161@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@137@15@137@138-aux|)))
(assert (forall ((i@161@01 Int)) (!
  (=>
    (and
      (and
        (< j@69@01 i@161@01)
        (<=
          i@161@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))
      (> i@161@01 t@152@01))
    (=
      ($FVF.lookup_val (as sm@159@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@161@01))
      (itemAt ($Snap.combine $t@64@01 ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (-
        i@161@01
        1))))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@161@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@137@15@137@138|)))
(pop) ; 7
(push) ; 7
; Loop head block: Establish invariant
(push) ; 8
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [eval] loc(this.elems, j)
; Definitional axioms for snapshot map values
(assert ($FVF.loc_val ($FVF.lookup_val (as sm@87@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) j@69@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) j@69@01)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@162@01 ((r $Ref)) $Perm
  (ite
    (=
      r
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) j@69@01))
    ($Perm.min
      (ite
        (and
          (img@86@01 r)
          (and
            (<= 0 (inv@85@01 r))
            (<
              (inv@85@01 r)
              (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
        $Perm.Write
        $Perm.No)
      (/ (to_real 1) (to_real 2)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
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
          (img@86@01 r)
          (and
            (<= 0 (inv@85@01 r))
            (<
              (inv@85@01 r)
              (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
        $Perm.Write
        $Perm.No)
      (pTaken@162@01 r))
    $Perm.No)
  
  :qid |quant-u-18811|))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@162@01 r) $Perm.No)
  
  :qid |quant-u-18812|))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (=
      r
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) j@69@01))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@162@01 r)) $Perm.No))
  
  :qid |quant-u-18813|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] j <= t
(set-option :timeout 0)
(push) ; 8
(assert (not (<= j@69@01 t@151@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (<= j@69@01 t@151@01))
; [eval] t <= this.size
(push) ; 8
(assert (not (<=
  t@151@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01)))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (<=
  t@151@01
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))
; [eval] this.size == old(length(this))
; [eval] old(length(this))
; [eval] length(this)
(push) ; 8
(pop) ; 8
; Joined path conditions
(push) ; 8
(assert (not (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))
  (length $t@64@01 this@61@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))
  (length $t@64@01 this@61@01)))
; [eval] -1 <= j
; [eval] -1
(push) ; 8
(assert (not (<= (- 0 1) j@69@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (<= (- 0 1) j@69@01))
; [eval] this.size < len(this.elems)
; [eval] len(this.elems)
(push) ; 8
(assert (not (<
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))
  (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (<
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))
  (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))))))
(declare-const i@163@01 Int)
(push) ; 8
; [eval] j < i && i <= this.size
; [eval] j < i
(push) ; 9
; [then-branch: 79 | !(j@69@01 < i@163@01) | live]
; [else-branch: 79 | j@69@01 < i@163@01 | live]
(push) ; 10
; [then-branch: 79 | !(j@69@01 < i@163@01)]
(assert (not (< j@69@01 i@163@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 79 | j@69@01 < i@163@01]
(assert (< j@69@01 i@163@01))
; [eval] i <= this.size
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (< j@69@01 i@163@01) (not (< j@69@01 i@163@01))))
(assert (and
  (< j@69@01 i@163@01)
  (<=
    i@163@01
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01)))))))
; [eval] loc(this.elems, i)
(pop) ; 8
(declare-fun inv@164@01 ($Ref) Int)
(declare-fun img@165@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@163@01 Int)) (!
  (=>
    (and
      (< j@69@01 i@163@01)
      (<=
        i@163@01
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))
    (or (< j@69@01 i@163@01) (not (< j@69@01 i@163@01))))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@163@01))
  :qid |val-aux|)))
(declare-const sm@166@01 $FVF<val>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@86@01 r)
        (and
          (<= 0 (inv@85@01 r))
          (<
            (inv@85@01 r)
            (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
      (< $Perm.No (- $Perm.Write (pTaken@162@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@166@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r)))
  :pattern (($FVF.lookup_val (as sm@166@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r))
  :qid |qp.fvfValDef58|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r) r)
  :pattern (($FVF.lookup_val (as sm@166@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef59|)))
; Check receiver injectivity
(push) ; 8
(assert (not (forall ((i1@163@01 Int) (i2@163@01 Int)) (!
  (=>
    (and
      (and
        (and
          (< j@69@01 i1@163@01)
          (<=
            i1@163@01
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))
        ($FVF.loc_val ($FVF.lookup_val (as sm@166@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i1@163@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i1@163@01)))
      (and
        (and
          (< j@69@01 i2@163@01)
          (<=
            i2@163@01
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))
        ($FVF.loc_val ($FVF.lookup_val (as sm@166@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i2@163@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i2@163@01)))
      (=
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i1@163@01)
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i2@163@01)))
    (= i1@163@01 i2@163@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@163@01 Int)) (!
  (=>
    (and
      (< j@69@01 i@163@01)
      (<=
        i@163@01
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))
    (and
      (=
        (inv@164@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@163@01))
        i@163@01)
      (img@165@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@163@01))))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@163@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@165@01 r)
      (and
        (< j@69@01 (inv@164@01 r))
        (<=
          (inv@164@01 r)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01)))))))
    (=
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) (inv@164@01 r))
      r))
  :pattern ((inv@164@01 r))
  :qid |val-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (< j@69@01 (inv@164@01 r))
      (<=
        (inv@164@01 r)
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))
    ($FVF.loc_val ($FVF.lookup_val (as sm@166@01  $FVF<val>) r) r))
  :pattern ((inv@164@01 r))
  :qid |quant-u-18815|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@167@01 ((r $Ref)) $Perm
  (ite
    (and
      (and
        (< j@69@01 (inv@164@01 r))
        (<=
          (inv@164@01 r)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))
      (img@165@01 r)
      (=
        r
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) (inv@164@01 r))))
    ($Perm.min
      (ite
        (and
          (img@86@01 r)
          (and
            (<= 0 (inv@85@01 r))
            (<
              (inv@85@01 r)
              (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
        (- $Perm.Write (pTaken@162@01 r))
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
          (img@86@01 r)
          (and
            (<= 0 (inv@85@01 r))
            (<
              (inv@85@01 r)
              (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
        (- $Perm.Write (pTaken@162@01 r))
        $Perm.No)
      (pTaken@167@01 r))
    $Perm.No)
  
  :qid |quant-u-18817|))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@167@01 r) $Perm.No)
  
  :qid |quant-u-18818|))))
(check-sat)
; unknown
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
      (and
        (< j@69@01 (inv@164@01 r))
        (<=
          (inv@164@01 r)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))
      (img@165@01 r)
      (=
        r
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) (inv@164@01 r))))
    (= (- $Perm.Write (pTaken@167@01 r)) $Perm.No))
  
  :qid |quant-u-18819|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall i: Int :: { loc(this.elems, i) } j <= i && i <= this.size ==> i < t ==> loc(this.elems, i).val == old(itemAt(this, i)))
(declare-const i@168@01 Int)
(set-option :timeout 0)
(push) ; 8
; [eval] j <= i && i <= this.size ==> i < t ==> loc(this.elems, i).val == old(itemAt(this, i))
; [eval] j <= i && i <= this.size
; [eval] j <= i
(push) ; 9
; [then-branch: 80 | !(j@69@01 <= i@168@01) | live]
; [else-branch: 80 | j@69@01 <= i@168@01 | live]
(push) ; 10
; [then-branch: 80 | !(j@69@01 <= i@168@01)]
(assert (not (<= j@69@01 i@168@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 80 | j@69@01 <= i@168@01]
(assert (<= j@69@01 i@168@01))
; [eval] i <= this.size
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (<= j@69@01 i@168@01) (not (<= j@69@01 i@168@01))))
(push) ; 9
; [then-branch: 81 | j@69@01 <= i@168@01 && i@168@01 <= First:(Second:(First:($t@70@01))) | live]
; [else-branch: 81 | !(j@69@01 <= i@168@01 && i@168@01 <= First:(Second:(First:($t@70@01)))) | live]
(push) ; 10
; [then-branch: 81 | j@69@01 <= i@168@01 && i@168@01 <= First:(Second:(First:($t@70@01)))]
(assert (and
  (<= j@69@01 i@168@01)
  (<=
    i@168@01
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01)))))))
; [eval] i < t ==> loc(this.elems, i).val == old(itemAt(this, i))
; [eval] i < t
(push) ; 11
; [then-branch: 82 | i@168@01 < t@151@01 | live]
; [else-branch: 82 | !(i@168@01 < t@151@01) | live]
(push) ; 12
; [then-branch: 82 | i@168@01 < t@151@01]
(assert (< i@168@01 t@151@01))
; [eval] loc(this.elems, i).val == old(itemAt(this, i))
; [eval] loc(this.elems, i)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@86@01 r)
        (and
          (<= 0 (inv@85@01 r))
          (<
            (inv@85@01 r)
            (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
      (=
        ($FVF.lookup_val (as sm@87@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r)))
    :pattern (($FVF.lookup_val (as sm@87@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r))
    :qid |qp.fvfValDef17|))
  (forall ((r $Ref)) (!
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r) r)
    :pattern (($FVF.lookup_val (as sm@87@01  $FVF<val>) r))
    :qid |qp.fvfResTrgDef18|))))
(assert ($FVF.loc_val ($FVF.lookup_val (as sm@87@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@168@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@168@01)))
(push) ; 13
(assert (not (and
  (img@86@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@168@01))
  (and
    (<=
      0
      (inv@85@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@168@01)))
    (<
      (inv@85@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@168@01))
      (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [eval] old(itemAt(this, i))
; [eval] itemAt(this, i)
(push) ; 13
; [eval] 0 <= index
(push) ; 14
(assert (not (<= 0 i@168@01)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 i@168@01))
; [eval] index < length(this)
; [eval] length(this)
(push) ; 14
(pop) ; 14
; Joined path conditions
(push) ; 14
(assert (not (< i@168@01 (length $t@64@01 this@61@01))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (< i@168@01 (length $t@64@01 this@61@01)))
(assert (itemAt%precondition ($Snap.combine
  $t@64@01
  ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 i@168@01))
(pop) ; 13
; Joined path conditions
(assert (and
  (<= 0 i@168@01)
  (< i@168@01 (length $t@64@01 this@61@01))
  (itemAt%precondition ($Snap.combine
    $t@64@01
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 i@168@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 82 | !(i@168@01 < t@151@01)]
(assert (not (< i@168@01 t@151@01)))
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@86@01 r)
      (and
        (<= 0 (inv@85@01 r))
        (<
          (inv@85@01 r)
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
    (=
      ($FVF.lookup_val (as sm@87@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r)))
  :pattern (($FVF.lookup_val (as sm@87@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r))
  :qid |qp.fvfValDef17|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r) r)
  :pattern (($FVF.lookup_val (as sm@87@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef18|)))
(assert (=>
  (< i@168@01 t@151@01)
  (and
    (< i@168@01 t@151@01)
    ($FVF.loc_val ($FVF.lookup_val (as sm@87@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@168@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@168@01))
    (<= 0 i@168@01)
    (< i@168@01 (length $t@64@01 this@61@01))
    (itemAt%precondition ($Snap.combine
      $t@64@01
      ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 i@168@01))))
; Joined path conditions
(assert (or (not (< i@168@01 t@151@01)) (< i@168@01 t@151@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 81 | !(j@69@01 <= i@168@01 && i@168@01 <= First:(Second:(First:($t@70@01))))]
(assert (not
  (and
    (<= j@69@01 i@168@01)
    (<=
      i@168@01
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@86@01 r)
      (and
        (<= 0 (inv@85@01 r))
        (<
          (inv@85@01 r)
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
    (=
      ($FVF.lookup_val (as sm@87@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r)))
  :pattern (($FVF.lookup_val (as sm@87@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r))
  :qid |qp.fvfValDef17|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r) r)
  :pattern (($FVF.lookup_val (as sm@87@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef18|)))
(assert (=>
  (and
    (<= j@69@01 i@168@01)
    (<=
      i@168@01
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))
  (and
    (<= j@69@01 i@168@01)
    (<=
      i@168@01
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01)))))
    (=>
      (< i@168@01 t@151@01)
      (and
        (< i@168@01 t@151@01)
        ($FVF.loc_val ($FVF.lookup_val (as sm@87@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@168@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@168@01))
        (<= 0 i@168@01)
        (< i@168@01 (length $t@64@01 this@61@01))
        (itemAt%precondition ($Snap.combine
          $t@64@01
          ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 i@168@01)))
    (or (not (< i@168@01 t@151@01)) (< i@168@01 t@151@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= j@69@01 i@168@01)
      (<=
        i@168@01
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01)))))))
  (and
    (<= j@69@01 i@168@01)
    (<=
      i@168@01
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))))
(pop) ; 8
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@86@01 r)
      (and
        (<= 0 (inv@85@01 r))
        (<
          (inv@85@01 r)
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
    (=
      ($FVF.lookup_val (as sm@87@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r)))
  :pattern (($FVF.lookup_val (as sm@87@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r))
  :qid |qp.fvfValDef17|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r) r)
  :pattern (($FVF.lookup_val (as sm@87@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef18|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@168@01 Int)) (!
  (and
    (or (<= j@69@01 i@168@01) (not (<= j@69@01 i@168@01)))
    (=>
      (and
        (<= j@69@01 i@168@01)
        (<=
          i@168@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))
      (and
        (<= j@69@01 i@168@01)
        (<=
          i@168@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01)))))
        (=>
          (< i@168@01 t@151@01)
          (and
            (< i@168@01 t@151@01)
            ($FVF.loc_val ($FVF.lookup_val (as sm@87@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@168@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@168@01))
            (<= 0 i@168@01)
            (< i@168@01 (length $t@64@01 this@61@01))
            (itemAt%precondition ($Snap.combine
              $t@64@01
              ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 i@168@01)))
        (or (not (< i@168@01 t@151@01)) (< i@168@01 t@151@01))))
    (or
      (not
        (and
          (<= j@69@01 i@168@01)
          (<=
            i@168@01
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01)))))))
      (and
        (<= j@69@01 i@168@01)
        (<=
          i@168@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@168@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@136@15@136@137-aux|)))
(assert (forall ((i@168@01 Int)) (!
  (=>
    (and
      (and
        (<= j@69@01 i@168@01)
        (<=
          i@168@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))
      (< i@168@01 t@151@01))
    (itemAt%precondition ($Snap.combine
      $t@64@01
      ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 i@168@01))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@168@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@136@15@136@137_precondition|)))
(push) ; 8
(assert (not (forall ((i@168@01 Int)) (!
  (=>
    (and
      (=>
        (and
          (and
            (<= j@69@01 i@168@01)
            (<=
              i@168@01
              ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))
          (< i@168@01 t@151@01))
        (itemAt%precondition ($Snap.combine
          $t@64@01
          ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 i@168@01))
      (and
        (and
          (<= j@69@01 i@168@01)
          (<=
            i@168@01
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))
        (< i@168@01 t@151@01)))
    (=
      ($FVF.lookup_val (as sm@87@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@168@01))
      (itemAt ($Snap.combine $t@64@01 ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 i@168@01)))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@168@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@136@15@136@137|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@168@01 Int)) (!
  (=>
    (and
      (and
        (<= j@69@01 i@168@01)
        (<=
          i@168@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))
      (< i@168@01 t@151@01))
    (=
      ($FVF.lookup_val (as sm@87@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@168@01))
      (itemAt ($Snap.combine $t@64@01 ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 i@168@01)))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@168@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@136@15@136@137|)))
; [eval] (forall i: Int :: { loc(this.elems, i) } j < i && i <= this.size ==> i > t ==> loc(this.elems, i).val == old(itemAt(this, i - 1)))
(declare-const i@169@01 Int)
(push) ; 8
; [eval] j < i && i <= this.size ==> i > t ==> loc(this.elems, i).val == old(itemAt(this, i - 1))
; [eval] j < i && i <= this.size
; [eval] j < i
(push) ; 9
; [then-branch: 83 | !(j@69@01 < i@169@01) | live]
; [else-branch: 83 | j@69@01 < i@169@01 | live]
(push) ; 10
; [then-branch: 83 | !(j@69@01 < i@169@01)]
(assert (not (< j@69@01 i@169@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 83 | j@69@01 < i@169@01]
(assert (< j@69@01 i@169@01))
; [eval] i <= this.size
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (< j@69@01 i@169@01) (not (< j@69@01 i@169@01))))
(push) ; 9
; [then-branch: 84 | j@69@01 < i@169@01 && i@169@01 <= First:(Second:(First:($t@70@01))) | live]
; [else-branch: 84 | !(j@69@01 < i@169@01 && i@169@01 <= First:(Second:(First:($t@70@01)))) | live]
(push) ; 10
; [then-branch: 84 | j@69@01 < i@169@01 && i@169@01 <= First:(Second:(First:($t@70@01)))]
(assert (and
  (< j@69@01 i@169@01)
  (<=
    i@169@01
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01)))))))
; [eval] i > t ==> loc(this.elems, i).val == old(itemAt(this, i - 1))
; [eval] i > t
(push) ; 11
; [then-branch: 85 | i@169@01 > t@151@01 | live]
; [else-branch: 85 | !(i@169@01 > t@151@01) | live]
(push) ; 12
; [then-branch: 85 | i@169@01 > t@151@01]
(assert (> i@169@01 t@151@01))
; [eval] loc(this.elems, i).val == old(itemAt(this, i - 1))
; [eval] loc(this.elems, i)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@86@01 r)
        (and
          (<= 0 (inv@85@01 r))
          (<
            (inv@85@01 r)
            (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
      (=
        ($FVF.lookup_val (as sm@87@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r)))
    :pattern (($FVF.lookup_val (as sm@87@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r))
    :qid |qp.fvfValDef17|))
  (forall ((r $Ref)) (!
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r) r)
    :pattern (($FVF.lookup_val (as sm@87@01  $FVF<val>) r))
    :qid |qp.fvfResTrgDef18|))))
(assert ($FVF.loc_val ($FVF.lookup_val (as sm@87@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@169@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@169@01)))
(push) ; 13
(assert (not (and
  (img@86@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@169@01))
  (and
    (<=
      0
      (inv@85@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@169@01)))
    (<
      (inv@85@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@169@01))
      (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [eval] old(itemAt(this, i - 1))
; [eval] itemAt(this, i - 1)
; [eval] i - 1
(push) ; 13
; [eval] 0 <= index
(push) ; 14
(assert (not (<= 0 (- i@169@01 1))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 (- i@169@01 1)))
; [eval] index < length(this)
; [eval] length(this)
(push) ; 14
(pop) ; 14
; Joined path conditions
(push) ; 14
(assert (not (< (- i@169@01 1) (length $t@64@01 this@61@01))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (< (- i@169@01 1) (length $t@64@01 this@61@01)))
(assert (itemAt%precondition ($Snap.combine
  $t@64@01
  ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- i@169@01 1)))
(pop) ; 13
; Joined path conditions
(assert (and
  (<= 0 (- i@169@01 1))
  (< (- i@169@01 1) (length $t@64@01 this@61@01))
  (itemAt%precondition ($Snap.combine
    $t@64@01
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- i@169@01 1))))
(pop) ; 12
(push) ; 12
; [else-branch: 85 | !(i@169@01 > t@151@01)]
(assert (not (> i@169@01 t@151@01)))
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@86@01 r)
      (and
        (<= 0 (inv@85@01 r))
        (<
          (inv@85@01 r)
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
    (=
      ($FVF.lookup_val (as sm@87@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r)))
  :pattern (($FVF.lookup_val (as sm@87@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r))
  :qid |qp.fvfValDef17|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r) r)
  :pattern (($FVF.lookup_val (as sm@87@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef18|)))
(assert (=>
  (> i@169@01 t@151@01)
  (and
    (> i@169@01 t@151@01)
    ($FVF.loc_val ($FVF.lookup_val (as sm@87@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@169@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@169@01))
    (<= 0 (- i@169@01 1))
    (< (- i@169@01 1) (length $t@64@01 this@61@01))
    (itemAt%precondition ($Snap.combine
      $t@64@01
      ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- i@169@01 1)))))
; Joined path conditions
(assert (or (not (> i@169@01 t@151@01)) (> i@169@01 t@151@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 84 | !(j@69@01 < i@169@01 && i@169@01 <= First:(Second:(First:($t@70@01))))]
(assert (not
  (and
    (< j@69@01 i@169@01)
    (<=
      i@169@01
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@86@01 r)
      (and
        (<= 0 (inv@85@01 r))
        (<
          (inv@85@01 r)
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
    (=
      ($FVF.lookup_val (as sm@87@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r)))
  :pattern (($FVF.lookup_val (as sm@87@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r))
  :qid |qp.fvfValDef17|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r) r)
  :pattern (($FVF.lookup_val (as sm@87@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef18|)))
(assert (=>
  (and
    (< j@69@01 i@169@01)
    (<=
      i@169@01
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))
  (and
    (< j@69@01 i@169@01)
    (<=
      i@169@01
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01)))))
    (=>
      (> i@169@01 t@151@01)
      (and
        (> i@169@01 t@151@01)
        ($FVF.loc_val ($FVF.lookup_val (as sm@87@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@169@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@169@01))
        (<= 0 (- i@169@01 1))
        (< (- i@169@01 1) (length $t@64@01 this@61@01))
        (itemAt%precondition ($Snap.combine
          $t@64@01
          ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- i@169@01 1))))
    (or (not (> i@169@01 t@151@01)) (> i@169@01 t@151@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (< j@69@01 i@169@01)
      (<=
        i@169@01
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01)))))))
  (and
    (< j@69@01 i@169@01)
    (<=
      i@169@01
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))))
(pop) ; 8
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@86@01 r)
      (and
        (<= 0 (inv@85@01 r))
        (<
          (inv@85@01 r)
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
    (=
      ($FVF.lookup_val (as sm@87@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r)))
  :pattern (($FVF.lookup_val (as sm@87@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r))
  :qid |qp.fvfValDef17|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r) r)
  :pattern (($FVF.lookup_val (as sm@87@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef18|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@169@01 Int)) (!
  (and
    (or (< j@69@01 i@169@01) (not (< j@69@01 i@169@01)))
    (=>
      (and
        (< j@69@01 i@169@01)
        (<=
          i@169@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))
      (and
        (< j@69@01 i@169@01)
        (<=
          i@169@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01)))))
        (=>
          (> i@169@01 t@151@01)
          (and
            (> i@169@01 t@151@01)
            ($FVF.loc_val ($FVF.lookup_val (as sm@87@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@169@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@169@01))
            (<= 0 (- i@169@01 1))
            (< (- i@169@01 1) (length $t@64@01 this@61@01))
            (itemAt%precondition ($Snap.combine
              $t@64@01
              ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- i@169@01 1))))
        (or (not (> i@169@01 t@151@01)) (> i@169@01 t@151@01))))
    (or
      (not
        (and
          (< j@69@01 i@169@01)
          (<=
            i@169@01
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01)))))))
      (and
        (< j@69@01 i@169@01)
        (<=
          i@169@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@169@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@137@15@137@138-aux|)))
(assert (forall ((i@169@01 Int)) (!
  (=>
    (and
      (and
        (< j@69@01 i@169@01)
        (<=
          i@169@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))
      (> i@169@01 t@151@01))
    (itemAt%precondition ($Snap.combine
      $t@64@01
      ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- i@169@01 1)))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@169@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@137@15@137@138_precondition|)))
(push) ; 8
(assert (not (forall ((i@169@01 Int)) (!
  (=>
    (and
      (=>
        (and
          (and
            (< j@69@01 i@169@01)
            (<=
              i@169@01
              ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))
          (> i@169@01 t@151@01))
        (itemAt%precondition ($Snap.combine
          $t@64@01
          ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- i@169@01 1)))
      (and
        (and
          (< j@69@01 i@169@01)
          (<=
            i@169@01
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))
        (> i@169@01 t@151@01)))
    (=
      ($FVF.lookup_val (as sm@87@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@169@01))
      (itemAt ($Snap.combine $t@64@01 ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (-
        i@169@01
        1))))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@169@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@137@15@137@138|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@169@01 Int)) (!
  (=>
    (and
      (and
        (< j@69@01 i@169@01)
        (<=
          i@169@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))
      (> i@169@01 t@151@01))
    (=
      ($FVF.lookup_val (as sm@87@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@169@01))
      (itemAt ($Snap.combine $t@64@01 ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (-
        i@169@01
        1))))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@169@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@137@15@137@138|)))
; Loop head block: Execute statements of loop head block (in invariant state)
(push) ; 8
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@158@01 r)
      (and
        (< j@69@01 (inv@157@01 r))
        (<=
          (inv@157@01 r)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
    (=
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) (inv@157@01 r))
      r))
  :pattern ((inv@157@01 r))
  :qid |val-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01))
    (=
      ($FVF.lookup_val (as sm@159@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@154@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@159@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@154@01  $FVF<val>) r))
  :qid |qp.fvfValDef55|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@158@01 r)
      (and
        (< j@69@01 (inv@157@01 r))
        (<=
          (inv@157@01 r)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
    (=
      ($FVF.lookup_val (as sm@159@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@159@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
  :qid |qp.fvfValDef56|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val (as sm@154@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r) r))
  :pattern (($FVF.lookup_val (as sm@159@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef57|)))
(assert (forall ((i@156@01 Int)) (!
  (=>
    (and
      (< j@69@01 i@156@01)
      (<=
        i@156@01
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))
    (and
      (=
        (inv@157@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@156@01))
        i@156@01)
      (img@158@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@156@01))))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@156@01))
  :qid |quant-u-18808|)))
(assert (forall ((i@156@01 Int)) (!
  (=>
    (and
      (< j@69@01 i@156@01)
      (<=
        i@156@01
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))
    (not
      (=
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@156@01)
        $Ref.null)))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@156@01))
  :qid |val-permImpliesNonNull|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (< j@69@01 (inv@157@01 r))
      (<=
        (inv@157@01 r)
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))
    ($FVF.loc_val ($FVF.lookup_val (as sm@159@01  $FVF<val>) r) r))
  :pattern ((inv@157@01 r))
  :qid |quant-u-18809|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))))
  $Snap.unit))
(assert (forall ((i@160@01 Int)) (!
  (and
    (or (<= j@69@01 i@160@01) (not (<= j@69@01 i@160@01)))
    (=>
      (and
        (<= j@69@01 i@160@01)
        (<=
          i@160@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))
      (and
        (<= j@69@01 i@160@01)
        (<=
          i@160@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))
        (=>
          (< i@160@01 t@152@01)
          (and
            (< i@160@01 t@152@01)
            ($FVF.loc_val ($FVF.lookup_val (as sm@159@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@160@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@160@01))
            (<= 0 i@160@01)
            (< i@160@01 (length $t@64@01 this@61@01))
            (itemAt%precondition ($Snap.combine
              $t@64@01
              ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 i@160@01)))
        (or (not (< i@160@01 t@152@01)) (< i@160@01 t@152@01))))
    (or
      (not
        (and
          (<= j@69@01 i@160@01)
          (<=
            i@160@01
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
      (and
        (<= j@69@01 i@160@01)
        (<=
          i@160@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@160@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@136@15@136@137-aux|)))
(assert (forall ((i@160@01 Int)) (!
  (=>
    (and
      (and
        (<= j@69@01 i@160@01)
        (<=
          i@160@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))
      (< i@160@01 t@152@01))
    (=
      ($FVF.lookup_val (as sm@159@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@160@01))
      (itemAt ($Snap.combine $t@64@01 ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 i@160@01)))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@160@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@136@15@136@137|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))))
  $Snap.unit))
(assert (forall ((i@161@01 Int)) (!
  (and
    (or (< j@69@01 i@161@01) (not (< j@69@01 i@161@01)))
    (=>
      (and
        (< j@69@01 i@161@01)
        (<=
          i@161@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))
      (and
        (< j@69@01 i@161@01)
        (<=
          i@161@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))
        (=>
          (> i@161@01 t@152@01)
          (and
            (> i@161@01 t@152@01)
            ($FVF.loc_val ($FVF.lookup_val (as sm@159@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@161@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@161@01))
            (<= 0 (- i@161@01 1))
            (< (- i@161@01 1) (length $t@64@01 this@61@01))
            (itemAt%precondition ($Snap.combine
              $t@64@01
              ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- i@161@01 1))))
        (or (not (> i@161@01 t@152@01)) (> i@161@01 t@152@01))))
    (or
      (not
        (and
          (< j@69@01 i@161@01)
          (<=
            i@161@01
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
      (and
        (< j@69@01 i@161@01)
        (<=
          i@161@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@161@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@137@15@137@138-aux|)))
(assert (forall ((i@161@01 Int)) (!
  (=>
    (and
      (and
        (< j@69@01 i@161@01)
        (<=
          i@161@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))
      (> i@161@01 t@152@01))
    (=
      ($FVF.lookup_val (as sm@159@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@161@01))
      (itemAt ($Snap.combine $t@64@01 ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (-
        i@161@01
        1))))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@161@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@137@15@137@138|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01))
    (=
      ($FVF.lookup_val (as sm@155@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@154@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@155@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@154@01  $FVF<val>) r))
  :qid |qp.fvfValDef53|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_val ($FVF.lookup_val (as sm@154@01  $FVF<val>) r) r)
  :pattern (($FVF.lookup_val (as sm@155@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef54|)))
(assert (=
  ($FVF.lookup_val (as sm@154@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@153@01))))))
(assert (<=
  $Perm.No
  (ite
    (=
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01)
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01))
    (/ (to_real 1) (to_real 2))
    $Perm.No)))
(assert (<=
  (ite
    (=
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01)
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01))
    (/ (to_real 1) (to_real 2))
    $Perm.No)
  $Perm.Write))
(assert (=>
  (=
    (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01)
    (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01))
  (not
    (=
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01)
      $Ref.null))))
(assert ($FVF.loc_val ($FVF.lookup_val (as sm@155@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@153@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@153@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@153@01))))
  $Snap.unit))
(assert (<= j@69@01 t@152@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))
  $Snap.unit))
(assert (<= t@152@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))
  $Snap.unit))
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))
  (length $t@64@01 this@61@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))
  $Snap.unit))
(assert (<
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))
  (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))))))
(assert (forall ((i@156@01 Int)) (!
  (=>
    (and
      (< j@69@01 i@156@01)
      (<=
        i@156@01
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))
    (or (< j@69@01 i@156@01) (not (< j@69@01 i@156@01))))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@156@01))
  :qid |val-aux|)))
(assert (= $t@153@01 ($Snap.combine ($Snap.first $t@153@01) ($Snap.second $t@153@01))))
(assert (=
  ($Snap.second $t@153@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@153@01))
    ($Snap.second ($Snap.second $t@153@01)))))
(assert (=
  ($Snap.second ($Snap.second $t@153@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@153@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 10)
(check-sat)
; unknown
; Loop head block: Check well-definedness of edge conditions
(set-option :timeout 0)
(push) ; 9
; [eval] t > j
(pop) ; 9
(push) ; 9
; [eval] !(t > j)
; [eval] t > j
(pop) ; 9
; Loop head block: Follow loop-internal edges
; [eval] t > j
(push) ; 9
(set-option :timeout 10)
(assert (not (not (> t@152@01 j@69@01))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (> t@152@01 j@69@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 86 | t@152@01 > j@69@01 | live]
; [else-branch: 86 | !(t@152@01 > j@69@01) | live]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 86 | t@152@01 > j@69@01]
(assert (> t@152@01 j@69@01))
; [exec]
; loc(this.elems, t).val := loc(this.elems, t - 1).val
; [eval] loc(this.elems, t)
; [eval] loc(this.elems, t - 1)
; [eval] t - 1
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (=
        r
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01))
      (=
        ($FVF.lookup_val (as sm@159@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@154@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@159@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@154@01  $FVF<val>) r))
    :qid |qp.fvfValDef55|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@158@01 r)
        (and
          (< j@69@01 (inv@157@01 r))
          (<=
            (inv@157@01 r)
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
      (=
        ($FVF.lookup_val (as sm@159@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
    :pattern (($FVF.lookup_val (as sm@159@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
    :qid |qp.fvfValDef56|))
  (forall ((r $Ref)) (!
    (and
      ($FVF.loc_val ($FVF.lookup_val (as sm@154@01  $FVF<val>) r) r)
      ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r) r))
    :pattern (($FVF.lookup_val (as sm@159@01  $FVF<val>) r))
    :qid |qp.fvfResTrgDef57|))))
(assert ($FVF.loc_val ($FVF.lookup_val (as sm@159@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) (-
  t@152@01
  1))) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) (-
  t@152@01
  1))))
(push) ; 10
(assert (not (<
  $Perm.No
  (+
    (ite
      (=
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) (-
          t@152@01
          1))
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01))
      (/ (to_real 1) (to_real 2))
      $Perm.No)
    (ite
      (and
        (img@158@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) (-
          t@152@01
          1)))
        (and
          (<
            j@69@01
            (inv@157@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) (-
              t@152@01
              1))))
          (<=
            (inv@157@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) (-
              t@152@01
              1)))
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map values
(assert ($FVF.loc_val ($FVF.lookup_val (as sm@159@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) t@152@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) t@152@01)))
(push) ; 10
(set-option :timeout 10)
(assert (not (=
  (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01)
  (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) t@152@01))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@170@01 ((r $Ref)) $Perm
  (ite
    (=
      r
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) t@152@01))
    ($Perm.min
      (ite
        (and
          (img@158@01 r)
          (and
            (< j@69@01 (inv@157@01 r))
            (<=
              (inv@157@01 r)
              ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@171@01 ((r $Ref)) $Perm
  (ite
    (=
      r
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) t@152@01))
    ($Perm.min
      (ite
        (=
          r
          (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (- $Perm.Write (pTaken@170@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@158@01 r)
          (and
            (< j@69@01 (inv@157@01 r))
            (<=
              (inv@157@01 r)
              ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
        $Perm.Write
        $Perm.No)
      (pTaken@170@01 r))
    $Perm.No)
  
  :qid |quant-u-18821|))))
(check-sat)
; unknown
(pop) ; 10
; 0.39s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@170@01 r) $Perm.No)
  
  :qid |quant-u-18822|))))
(check-sat)
; unknown
(pop) ; 10
; 0.01s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (=
      r
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) t@152@01))
    (= (- $Perm.Write (pTaken@170@01 r)) $Perm.No))
  
  :qid |quant-u-18823|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@172@01 $FVF<val>)
; Definitional axioms for singleton-FVF's value
(assert (=
  ($FVF.lookup_val (as sm@172@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) t@152@01))
  ($FVF.lookup_val (as sm@159@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) (-
    t@152@01
    1)))))
(assert ($FVF.loc_val ($FVF.lookup_val (as sm@172@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) t@152@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) t@152@01)))
; [exec]
; t := t - 1
; [eval] t - 1
(declare-const t@173@01 Int)
(assert (= t@173@01 (- t@152@01 1)))
; Loop head block: Re-establish invariant
; [eval] loc(this.elems, j)
(declare-const sm@174@01 $FVF<val>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) t@152@01))
    (=
      ($FVF.lookup_val (as sm@174@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@172@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@174@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@172@01  $FVF<val>) r))
  :qid |qp.fvfValDef60|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01))
    (=
      ($FVF.lookup_val (as sm@174@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@154@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@174@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@154@01  $FVF<val>) r))
  :qid |qp.fvfValDef61|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@158@01 r)
        (and
          (< j@69@01 (inv@157@01 r))
          (<=
            (inv@157@01 r)
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
      (< $Perm.No (- $Perm.Write (pTaken@170@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@174@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@174@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
  :qid |qp.fvfValDef62|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val (as sm@172@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val (as sm@154@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r) r))
  :pattern (($FVF.lookup_val (as sm@174@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef63|)))
(assert ($FVF.loc_val ($FVF.lookup_val (as sm@174@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@175@01 ((r $Ref)) $Perm
  (ite
    (=
      r
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01))
    ($Perm.min
      (ite
        (=
          r
          (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (/ (to_real 1) (to_real 2)))
    $Perm.No))
(define-fun pTaken@176@01 ((r $Ref)) $Perm
  (ite
    (=
      r
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01))
    ($Perm.min
      (ite
        (=
          r
          (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) t@152@01))
        $Perm.Write
        $Perm.No)
      (- (/ (to_real 1) (to_real 2)) (pTaken@175@01 r)))
    $Perm.No))
(define-fun pTaken@177@01 ((r $Ref)) $Perm
  (ite
    (=
      r
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01))
    ($Perm.min
      (ite
        (and
          (img@158@01 r)
          (and
            (< j@69@01 (inv@157@01 r))
            (<=
              (inv@157@01 r)
              ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
        (- $Perm.Write (pTaken@170@01 r))
        $Perm.No)
      (- (- (/ (to_real 1) (to_real 2)) (pTaken@175@01 r)) (pTaken@176@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (=
  (-
    (ite
      (=
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01)
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01))
      (/ (to_real 1) (to_real 2))
      $Perm.No)
    (pTaken@175@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (=
      r
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@175@01 r)) $Perm.No))
  
  :qid |quant-u-18826|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] j <= t
(set-option :timeout 0)
(push) ; 10
(assert (not (<= j@69@01 t@173@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (<= j@69@01 t@173@01))
; [eval] t <= this.size
(push) ; 10
(assert (not (<= t@173@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (<= t@173@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))
; [eval] this.size == old(length(this))
; [eval] old(length(this))
; [eval] length(this)
(push) ; 10
(pop) ; 10
; Joined path conditions
; [eval] -1 <= j
; [eval] -1
; [eval] this.size < len(this.elems)
; [eval] len(this.elems)
(declare-const i@178@01 Int)
(push) ; 10
; [eval] j < i && i <= this.size
; [eval] j < i
(push) ; 11
; [then-branch: 87 | !(j@69@01 < i@178@01) | live]
; [else-branch: 87 | j@69@01 < i@178@01 | live]
(push) ; 12
; [then-branch: 87 | !(j@69@01 < i@178@01)]
(assert (not (< j@69@01 i@178@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 87 | j@69@01 < i@178@01]
(assert (< j@69@01 i@178@01))
; [eval] i <= this.size
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (< j@69@01 i@178@01) (not (< j@69@01 i@178@01))))
(assert (and
  (< j@69@01 i@178@01)
  (<= i@178@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
; [eval] loc(this.elems, i)
(pop) ; 10
(declare-fun inv@179@01 ($Ref) Int)
(declare-fun img@180@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@178@01 Int)) (!
  (=>
    (and
      (< j@69@01 i@178@01)
      (<=
        i@178@01
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))
    (or (< j@69@01 i@178@01) (not (< j@69@01 i@178@01))))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@178@01))
  :qid |val-aux|)))
(declare-const sm@181@01 $FVF<val>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@158@01 r)
        (and
          (< j@69@01 (inv@157@01 r))
          (<=
            (inv@157@01 r)
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
      (< $Perm.No (- $Perm.Write (pTaken@170@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@181@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@181@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
  :qid |qp.fvfValDef64|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) t@152@01))
    (=
      ($FVF.lookup_val (as sm@181@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@172@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@181@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@172@01  $FVF<val>) r))
  :qid |qp.fvfValDef65|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r) r)
    ($FVF.loc_val ($FVF.lookup_val (as sm@172@01  $FVF<val>) r) r))
  :pattern (($FVF.lookup_val (as sm@181@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef66|)))
; Check receiver injectivity
(push) ; 10
(assert (not (forall ((i1@178@01 Int) (i2@178@01 Int)) (!
  (=>
    (and
      (and
        (and
          (< j@69@01 i1@178@01)
          (<=
            i1@178@01
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))
        ($FVF.loc_val ($FVF.lookup_val (as sm@181@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i1@178@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i1@178@01)))
      (and
        (and
          (< j@69@01 i2@178@01)
          (<=
            i2@178@01
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))
        ($FVF.loc_val ($FVF.lookup_val (as sm@181@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i2@178@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i2@178@01)))
      (=
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i1@178@01)
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i2@178@01)))
    (= i1@178@01 i2@178@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@178@01 Int)) (!
  (=>
    (and
      (< j@69@01 i@178@01)
      (<=
        i@178@01
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))
    (and
      (=
        (inv@179@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@178@01))
        i@178@01)
      (img@180@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@178@01))))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@178@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@180@01 r)
      (and
        (< j@69@01 (inv@179@01 r))
        (<=
          (inv@179@01 r)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
    (=
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) (inv@179@01 r))
      r))
  :pattern ((inv@179@01 r))
  :qid |val-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (< j@69@01 (inv@179@01 r))
      (<=
        (inv@179@01 r)
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))
    ($FVF.loc_val ($FVF.lookup_val (as sm@181@01  $FVF<val>) r) r))
  :pattern ((inv@179@01 r))
  :qid |quant-u-18828|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@182@01 ((r $Ref)) $Perm
  (ite
    (and
      (and
        (< j@69@01 (inv@179@01 r))
        (<=
          (inv@179@01 r)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))
      (img@180@01 r)
      (=
        r
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) (inv@179@01 r))))
    ($Perm.min
      (ite
        (and
          (img@158@01 r)
          (and
            (< j@69@01 (inv@157@01 r))
            (<=
              (inv@157@01 r)
              ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
        (- $Perm.Write (pTaken@170@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@183@01 ((r $Ref)) $Perm
  (ite
    (and
      (and
        (< j@69@01 (inv@179@01 r))
        (<=
          (inv@179@01 r)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))
      (img@180@01 r)
      (=
        r
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) (inv@179@01 r))))
    ($Perm.min
      (ite
        (=
          r
          (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) t@152@01))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@182@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@158@01 r)
          (and
            (< j@69@01 (inv@157@01 r))
            (<=
              (inv@157@01 r)
              ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
        (- $Perm.Write (pTaken@170@01 r))
        $Perm.No)
      (pTaken@182@01 r))
    $Perm.No)
  
  :qid |quant-u-18830|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (< j@69@01 (inv@179@01 r))
        (<=
          (inv@179@01 r)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))
      (img@180@01 r)
      (=
        r
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) (inv@179@01 r))))
    (= (- $Perm.Write (pTaken@182@01 r)) $Perm.No))
  
  :qid |quant-u-18831|))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (=
  (-
    (ite
      (=
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) t@152@01)
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) t@152@01))
      $Perm.Write
      $Perm.No)
    (pTaken@183@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) t@152@01)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (< j@69@01 (inv@179@01 r))
        (<=
          (inv@179@01 r)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))
      (img@180@01 r)
      (=
        r
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) (inv@179@01 r))))
    (= (- (- $Perm.Write (pTaken@182@01 r)) (pTaken@183@01 r)) $Perm.No))
  
  :qid |quant-u-18833|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall i: Int :: { loc(this.elems, i) } j <= i && i <= this.size ==> i < t ==> loc(this.elems, i).val == old(itemAt(this, i)))
(declare-const i@184@01 Int)
(set-option :timeout 0)
(push) ; 10
; [eval] j <= i && i <= this.size ==> i < t ==> loc(this.elems, i).val == old(itemAt(this, i))
; [eval] j <= i && i <= this.size
; [eval] j <= i
(push) ; 11
; [then-branch: 88 | !(j@69@01 <= i@184@01) | live]
; [else-branch: 88 | j@69@01 <= i@184@01 | live]
(push) ; 12
; [then-branch: 88 | !(j@69@01 <= i@184@01)]
(assert (not (<= j@69@01 i@184@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 88 | j@69@01 <= i@184@01]
(assert (<= j@69@01 i@184@01))
; [eval] i <= this.size
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (<= j@69@01 i@184@01) (not (<= j@69@01 i@184@01))))
(push) ; 11
; [then-branch: 89 | j@69@01 <= i@184@01 && i@184@01 <= First:(Second:($t@153@01)) | live]
; [else-branch: 89 | !(j@69@01 <= i@184@01 && i@184@01 <= First:(Second:($t@153@01))) | live]
(push) ; 12
; [then-branch: 89 | j@69@01 <= i@184@01 && i@184@01 <= First:(Second:($t@153@01))]
(assert (and
  (<= j@69@01 i@184@01)
  (<= i@184@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
; [eval] i < t ==> loc(this.elems, i).val == old(itemAt(this, i))
; [eval] i < t
(push) ; 13
; [then-branch: 90 | i@184@01 < t@173@01 | live]
; [else-branch: 90 | !(i@184@01 < t@173@01) | live]
(push) ; 14
; [then-branch: 90 | i@184@01 < t@173@01]
(assert (< i@184@01 t@173@01))
; [eval] loc(this.elems, i).val == old(itemAt(this, i))
; [eval] loc(this.elems, i)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (=
        r
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) t@152@01))
      (=
        ($FVF.lookup_val (as sm@174@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@172@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@174@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@172@01  $FVF<val>) r))
    :qid |qp.fvfValDef60|))
  (forall ((r $Ref)) (!
    (=>
      (=
        r
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01))
      (=
        ($FVF.lookup_val (as sm@174@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@154@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@174@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@154@01  $FVF<val>) r))
    :qid |qp.fvfValDef61|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@158@01 r)
          (and
            (< j@69@01 (inv@157@01 r))
            (<=
              (inv@157@01 r)
              ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
        (< $Perm.No (- $Perm.Write (pTaken@170@01 r)))
        false)
      (=
        ($FVF.lookup_val (as sm@174@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
    :pattern (($FVF.lookup_val (as sm@174@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
    :qid |qp.fvfValDef62|))
  (forall ((r $Ref)) (!
    (and
      ($FVF.loc_val ($FVF.lookup_val (as sm@172@01  $FVF<val>) r) r)
      ($FVF.loc_val ($FVF.lookup_val (as sm@154@01  $FVF<val>) r) r)
      ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r) r))
    :pattern (($FVF.lookup_val (as sm@174@01  $FVF<val>) r))
    :qid |qp.fvfResTrgDef63|))))
(assert ($FVF.loc_val ($FVF.lookup_val (as sm@174@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@184@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@184@01)))
(push) ; 15
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (=
          (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@184@01)
          (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) t@152@01))
        $Perm.Write
        $Perm.No)
      (ite
        (=
          (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@184@01)
          (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01))
        (/ (to_real 1) (to_real 2))
        $Perm.No))
    (ite
      (and
        (img@158@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@184@01))
        (and
          (<
            j@69@01
            (inv@157@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@184@01)))
          (<=
            (inv@157@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@184@01))
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
      (-
        $Perm.Write
        (pTaken@170@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@184@01)))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [eval] old(itemAt(this, i))
; [eval] itemAt(this, i)
(push) ; 15
; [eval] 0 <= index
(push) ; 16
(assert (not (<= 0 i@184@01)))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 i@184@01))
; [eval] index < length(this)
; [eval] length(this)
(push) ; 16
(pop) ; 16
; Joined path conditions
(push) ; 16
(assert (not (< i@184@01 (length $t@64@01 this@61@01))))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(assert (< i@184@01 (length $t@64@01 this@61@01)))
(assert (itemAt%precondition ($Snap.combine
  $t@64@01
  ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 i@184@01))
(pop) ; 15
; Joined path conditions
(assert (and
  (<= 0 i@184@01)
  (< i@184@01 (length $t@64@01 this@61@01))
  (itemAt%precondition ($Snap.combine
    $t@64@01
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 i@184@01)))
(pop) ; 14
(push) ; 14
; [else-branch: 90 | !(i@184@01 < t@173@01)]
(assert (not (< i@184@01 t@173@01)))
(pop) ; 14
(pop) ; 13
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) t@152@01))
    (=
      ($FVF.lookup_val (as sm@174@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@172@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@174@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@172@01  $FVF<val>) r))
  :qid |qp.fvfValDef60|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01))
    (=
      ($FVF.lookup_val (as sm@174@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@154@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@174@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@154@01  $FVF<val>) r))
  :qid |qp.fvfValDef61|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@158@01 r)
        (and
          (< j@69@01 (inv@157@01 r))
          (<=
            (inv@157@01 r)
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
      (< $Perm.No (- $Perm.Write (pTaken@170@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@174@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@174@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
  :qid |qp.fvfValDef62|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val (as sm@172@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val (as sm@154@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r) r))
  :pattern (($FVF.lookup_val (as sm@174@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef63|)))
(assert (=>
  (< i@184@01 t@173@01)
  (and
    (< i@184@01 t@173@01)
    ($FVF.loc_val ($FVF.lookup_val (as sm@174@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@184@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@184@01))
    (<= 0 i@184@01)
    (< i@184@01 (length $t@64@01 this@61@01))
    (itemAt%precondition ($Snap.combine
      $t@64@01
      ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 i@184@01))))
; Joined path conditions
(assert (or (not (< i@184@01 t@173@01)) (< i@184@01 t@173@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 89 | !(j@69@01 <= i@184@01 && i@184@01 <= First:(Second:($t@153@01)))]
(assert (not
  (and
    (<= j@69@01 i@184@01)
    (<=
      i@184@01
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) t@152@01))
    (=
      ($FVF.lookup_val (as sm@174@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@172@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@174@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@172@01  $FVF<val>) r))
  :qid |qp.fvfValDef60|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01))
    (=
      ($FVF.lookup_val (as sm@174@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@154@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@174@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@154@01  $FVF<val>) r))
  :qid |qp.fvfValDef61|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@158@01 r)
        (and
          (< j@69@01 (inv@157@01 r))
          (<=
            (inv@157@01 r)
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
      (< $Perm.No (- $Perm.Write (pTaken@170@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@174@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@174@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
  :qid |qp.fvfValDef62|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val (as sm@172@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val (as sm@154@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r) r))
  :pattern (($FVF.lookup_val (as sm@174@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef63|)))
(assert (=>
  (and
    (<= j@69@01 i@184@01)
    (<=
      i@184@01
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))
  (and
    (<= j@69@01 i@184@01)
    (<=
      i@184@01
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))
    (=>
      (< i@184@01 t@173@01)
      (and
        (< i@184@01 t@173@01)
        ($FVF.loc_val ($FVF.lookup_val (as sm@174@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@184@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@184@01))
        (<= 0 i@184@01)
        (< i@184@01 (length $t@64@01 this@61@01))
        (itemAt%precondition ($Snap.combine
          $t@64@01
          ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 i@184@01)))
    (or (not (< i@184@01 t@173@01)) (< i@184@01 t@173@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= j@69@01 i@184@01)
      (<=
        i@184@01
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
  (and
    (<= j@69@01 i@184@01)
    (<=
      i@184@01
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))))
(pop) ; 10
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) t@152@01))
    (=
      ($FVF.lookup_val (as sm@174@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@172@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@174@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@172@01  $FVF<val>) r))
  :qid |qp.fvfValDef60|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01))
    (=
      ($FVF.lookup_val (as sm@174@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@154@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@174@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@154@01  $FVF<val>) r))
  :qid |qp.fvfValDef61|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@158@01 r)
        (and
          (< j@69@01 (inv@157@01 r))
          (<=
            (inv@157@01 r)
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
      (< $Perm.No (- $Perm.Write (pTaken@170@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@174@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@174@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
  :qid |qp.fvfValDef62|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val (as sm@172@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val (as sm@154@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r) r))
  :pattern (($FVF.lookup_val (as sm@174@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef63|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@184@01 Int)) (!
  (and
    (or (<= j@69@01 i@184@01) (not (<= j@69@01 i@184@01)))
    (=>
      (and
        (<= j@69@01 i@184@01)
        (<=
          i@184@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))
      (and
        (<= j@69@01 i@184@01)
        (<=
          i@184@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))
        (=>
          (< i@184@01 t@173@01)
          (and
            (< i@184@01 t@173@01)
            ($FVF.loc_val ($FVF.lookup_val (as sm@174@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@184@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@184@01))
            (<= 0 i@184@01)
            (< i@184@01 (length $t@64@01 this@61@01))
            (itemAt%precondition ($Snap.combine
              $t@64@01
              ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 i@184@01)))
        (or (not (< i@184@01 t@173@01)) (< i@184@01 t@173@01))))
    (or
      (not
        (and
          (<= j@69@01 i@184@01)
          (<=
            i@184@01
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
      (and
        (<= j@69@01 i@184@01)
        (<=
          i@184@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@184@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@136@15@136@137-aux|)))
(assert (forall ((i@184@01 Int)) (!
  (=>
    (and
      (and
        (<= j@69@01 i@184@01)
        (<=
          i@184@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))
      (< i@184@01 t@173@01))
    (itemAt%precondition ($Snap.combine
      $t@64@01
      ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 i@184@01))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@184@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@136@15@136@137_precondition|)))
(push) ; 10
(assert (not (forall ((i@184@01 Int)) (!
  (=>
    (and
      (=>
        (and
          (and
            (<= j@69@01 i@184@01)
            (<=
              i@184@01
              ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))
          (< i@184@01 t@173@01))
        (itemAt%precondition ($Snap.combine
          $t@64@01
          ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 i@184@01))
      (and
        (and
          (<= j@69@01 i@184@01)
          (<=
            i@184@01
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))
        (< i@184@01 t@173@01)))
    (=
      ($FVF.lookup_val (as sm@174@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@184@01))
      (itemAt ($Snap.combine $t@64@01 ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 i@184@01)))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@184@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@136@15@136@137|))))
(check-sat)
; unsat
(pop) ; 10
; 0.01s
; (get-info :all-statistics)
(assert (forall ((i@184@01 Int)) (!
  (=>
    (and
      (and
        (<= j@69@01 i@184@01)
        (<=
          i@184@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))
      (< i@184@01 t@173@01))
    (=
      ($FVF.lookup_val (as sm@174@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@184@01))
      (itemAt ($Snap.combine $t@64@01 ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 i@184@01)))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@184@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@136@15@136@137|)))
; [eval] (forall i: Int :: { loc(this.elems, i) } j < i && i <= this.size ==> i > t ==> loc(this.elems, i).val == old(itemAt(this, i - 1)))
(declare-const i@185@01 Int)
(push) ; 10
; [eval] j < i && i <= this.size ==> i > t ==> loc(this.elems, i).val == old(itemAt(this, i - 1))
; [eval] j < i && i <= this.size
; [eval] j < i
(push) ; 11
; [then-branch: 91 | !(j@69@01 < i@185@01) | live]
; [else-branch: 91 | j@69@01 < i@185@01 | live]
(push) ; 12
; [then-branch: 91 | !(j@69@01 < i@185@01)]
(assert (not (< j@69@01 i@185@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 91 | j@69@01 < i@185@01]
(assert (< j@69@01 i@185@01))
; [eval] i <= this.size
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (< j@69@01 i@185@01) (not (< j@69@01 i@185@01))))
(push) ; 11
; [then-branch: 92 | j@69@01 < i@185@01 && i@185@01 <= First:(Second:($t@153@01)) | live]
; [else-branch: 92 | !(j@69@01 < i@185@01 && i@185@01 <= First:(Second:($t@153@01))) | live]
(push) ; 12
; [then-branch: 92 | j@69@01 < i@185@01 && i@185@01 <= First:(Second:($t@153@01))]
(assert (and
  (< j@69@01 i@185@01)
  (<= i@185@01 ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
; [eval] i > t ==> loc(this.elems, i).val == old(itemAt(this, i - 1))
; [eval] i > t
(push) ; 13
; [then-branch: 93 | i@185@01 > t@173@01 | live]
; [else-branch: 93 | !(i@185@01 > t@173@01) | live]
(push) ; 14
; [then-branch: 93 | i@185@01 > t@173@01]
(assert (> i@185@01 t@173@01))
; [eval] loc(this.elems, i).val == old(itemAt(this, i - 1))
; [eval] loc(this.elems, i)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (=
        r
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) t@152@01))
      (=
        ($FVF.lookup_val (as sm@174@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@172@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@174@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@172@01  $FVF<val>) r))
    :qid |qp.fvfValDef60|))
  (forall ((r $Ref)) (!
    (=>
      (=
        r
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01))
      (=
        ($FVF.lookup_val (as sm@174@01  $FVF<val>) r)
        ($FVF.lookup_val (as sm@154@01  $FVF<val>) r)))
    :pattern (($FVF.lookup_val (as sm@174@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val (as sm@154@01  $FVF<val>) r))
    :qid |qp.fvfValDef61|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@158@01 r)
          (and
            (< j@69@01 (inv@157@01 r))
            (<=
              (inv@157@01 r)
              ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
        (< $Perm.No (- $Perm.Write (pTaken@170@01 r)))
        false)
      (=
        ($FVF.lookup_val (as sm@174@01  $FVF<val>) r)
        ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
    :pattern (($FVF.lookup_val (as sm@174@01  $FVF<val>) r))
    :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
    :qid |qp.fvfValDef62|))
  (forall ((r $Ref)) (!
    (and
      ($FVF.loc_val ($FVF.lookup_val (as sm@172@01  $FVF<val>) r) r)
      ($FVF.loc_val ($FVF.lookup_val (as sm@154@01  $FVF<val>) r) r)
      ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r) r))
    :pattern (($FVF.lookup_val (as sm@174@01  $FVF<val>) r))
    :qid |qp.fvfResTrgDef63|))))
(assert ($FVF.loc_val ($FVF.lookup_val (as sm@174@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@185@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@185@01)))
(push) ; 15
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (=
          (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@185@01)
          (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) t@152@01))
        $Perm.Write
        $Perm.No)
      (ite
        (=
          (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@185@01)
          (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01))
        (/ (to_real 1) (to_real 2))
        $Perm.No))
    (ite
      (and
        (img@158@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@185@01))
        (and
          (<
            j@69@01
            (inv@157@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@185@01)))
          (<=
            (inv@157@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@185@01))
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
      (-
        $Perm.Write
        (pTaken@170@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@185@01)))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [eval] old(itemAt(this, i - 1))
; [eval] itemAt(this, i - 1)
; [eval] i - 1
(push) ; 15
; [eval] 0 <= index
(push) ; 16
(assert (not (<= 0 (- i@185@01 1))))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 (- i@185@01 1)))
; [eval] index < length(this)
; [eval] length(this)
(push) ; 16
(pop) ; 16
; Joined path conditions
(push) ; 16
(assert (not (< (- i@185@01 1) (length $t@64@01 this@61@01))))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(assert (< (- i@185@01 1) (length $t@64@01 this@61@01)))
(assert (itemAt%precondition ($Snap.combine
  $t@64@01
  ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- i@185@01 1)))
(pop) ; 15
; Joined path conditions
(assert (and
  (<= 0 (- i@185@01 1))
  (< (- i@185@01 1) (length $t@64@01 this@61@01))
  (itemAt%precondition ($Snap.combine
    $t@64@01
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- i@185@01 1))))
(pop) ; 14
(push) ; 14
; [else-branch: 93 | !(i@185@01 > t@173@01)]
(assert (not (> i@185@01 t@173@01)))
(pop) ; 14
(pop) ; 13
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) t@152@01))
    (=
      ($FVF.lookup_val (as sm@174@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@172@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@174@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@172@01  $FVF<val>) r))
  :qid |qp.fvfValDef60|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01))
    (=
      ($FVF.lookup_val (as sm@174@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@154@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@174@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@154@01  $FVF<val>) r))
  :qid |qp.fvfValDef61|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@158@01 r)
        (and
          (< j@69@01 (inv@157@01 r))
          (<=
            (inv@157@01 r)
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
      (< $Perm.No (- $Perm.Write (pTaken@170@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@174@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@174@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
  :qid |qp.fvfValDef62|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val (as sm@172@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val (as sm@154@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r) r))
  :pattern (($FVF.lookup_val (as sm@174@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef63|)))
(assert (=>
  (> i@185@01 t@173@01)
  (and
    (> i@185@01 t@173@01)
    ($FVF.loc_val ($FVF.lookup_val (as sm@174@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@185@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@185@01))
    (<= 0 (- i@185@01 1))
    (< (- i@185@01 1) (length $t@64@01 this@61@01))
    (itemAt%precondition ($Snap.combine
      $t@64@01
      ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- i@185@01 1)))))
; Joined path conditions
(assert (or (not (> i@185@01 t@173@01)) (> i@185@01 t@173@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 92 | !(j@69@01 < i@185@01 && i@185@01 <= First:(Second:($t@153@01)))]
(assert (not
  (and
    (< j@69@01 i@185@01)
    (<=
      i@185@01
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) t@152@01))
    (=
      ($FVF.lookup_val (as sm@174@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@172@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@174@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@172@01  $FVF<val>) r))
  :qid |qp.fvfValDef60|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01))
    (=
      ($FVF.lookup_val (as sm@174@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@154@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@174@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@154@01  $FVF<val>) r))
  :qid |qp.fvfValDef61|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@158@01 r)
        (and
          (< j@69@01 (inv@157@01 r))
          (<=
            (inv@157@01 r)
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
      (< $Perm.No (- $Perm.Write (pTaken@170@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@174@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@174@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
  :qid |qp.fvfValDef62|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val (as sm@172@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val (as sm@154@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r) r))
  :pattern (($FVF.lookup_val (as sm@174@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef63|)))
(assert (=>
  (and
    (< j@69@01 i@185@01)
    (<=
      i@185@01
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))
  (and
    (< j@69@01 i@185@01)
    (<=
      i@185@01
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))
    (=>
      (> i@185@01 t@173@01)
      (and
        (> i@185@01 t@173@01)
        ($FVF.loc_val ($FVF.lookup_val (as sm@174@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@185@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@185@01))
        (<= 0 (- i@185@01 1))
        (< (- i@185@01 1) (length $t@64@01 this@61@01))
        (itemAt%precondition ($Snap.combine
          $t@64@01
          ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- i@185@01 1))))
    (or (not (> i@185@01 t@173@01)) (> i@185@01 t@173@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (< j@69@01 i@185@01)
      (<=
        i@185@01
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
  (and
    (< j@69@01 i@185@01)
    (<=
      i@185@01
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))))
(pop) ; 10
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) t@152@01))
    (=
      ($FVF.lookup_val (as sm@174@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@172@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@174@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@172@01  $FVF<val>) r))
  :qid |qp.fvfValDef60|)))
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01))
    (=
      ($FVF.lookup_val (as sm@174@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@154@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@174@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@154@01  $FVF<val>) r))
  :qid |qp.fvfValDef61|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@158@01 r)
        (and
          (< j@69@01 (inv@157@01 r))
          (<=
            (inv@157@01 r)
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
      (< $Perm.No (- $Perm.Write (pTaken@170@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@174@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@174@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
  :qid |qp.fvfValDef62|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val (as sm@172@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val (as sm@154@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r) r))
  :pattern (($FVF.lookup_val (as sm@174@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef63|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@185@01 Int)) (!
  (and
    (or (< j@69@01 i@185@01) (not (< j@69@01 i@185@01)))
    (=>
      (and
        (< j@69@01 i@185@01)
        (<=
          i@185@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))
      (and
        (< j@69@01 i@185@01)
        (<=
          i@185@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))
        (=>
          (> i@185@01 t@173@01)
          (and
            (> i@185@01 t@173@01)
            ($FVF.loc_val ($FVF.lookup_val (as sm@174@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@185@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@185@01))
            (<= 0 (- i@185@01 1))
            (< (- i@185@01 1) (length $t@64@01 this@61@01))
            (itemAt%precondition ($Snap.combine
              $t@64@01
              ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- i@185@01 1))))
        (or (not (> i@185@01 t@173@01)) (> i@185@01 t@173@01))))
    (or
      (not
        (and
          (< j@69@01 i@185@01)
          (<=
            i@185@01
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
      (and
        (< j@69@01 i@185@01)
        (<=
          i@185@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@185@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@137@15@137@138-aux|)))
(assert (forall ((i@185@01 Int)) (!
  (=>
    (and
      (and
        (< j@69@01 i@185@01)
        (<=
          i@185@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))
      (> i@185@01 t@173@01))
    (itemAt%precondition ($Snap.combine
      $t@64@01
      ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- i@185@01 1)))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@185@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@137@15@137@138_precondition|)))
(push) ; 10
(assert (not (forall ((i@185@01 Int)) (!
  (=>
    (and
      (=>
        (and
          (and
            (< j@69@01 i@185@01)
            (<=
              i@185@01
              ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))
          (> i@185@01 t@173@01))
        (itemAt%precondition ($Snap.combine
          $t@64@01
          ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- i@185@01 1)))
      (and
        (and
          (< j@69@01 i@185@01)
          (<=
            i@185@01
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))
        (> i@185@01 t@173@01)))
    (=
      ($FVF.lookup_val (as sm@174@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@185@01))
      (itemAt ($Snap.combine $t@64@01 ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (-
        i@185@01
        1))))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@185@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@137@15@137@138|))))
(check-sat)
; unsat
(pop) ; 10
; 0.01s
; (get-info :all-statistics)
(assert (forall ((i@185@01 Int)) (!
  (=>
    (and
      (and
        (< j@69@01 i@185@01)
        (<=
          i@185@01
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))))
      (> i@185@01 t@173@01))
    (=
      ($FVF.lookup_val (as sm@174@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@185@01))
      (itemAt ($Snap.combine $t@64@01 ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (-
        i@185@01
        1))))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@185@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@137@15@137@138|)))
(pop) ; 9
(push) ; 9
; [else-branch: 86 | !(t@152@01 > j@69@01)]
(assert (not (> t@152@01 j@69@01)))
(pop) ; 9
(push) ; 9
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (=
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@84@01)
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@156@01))
    (=
      (and
        (img@86@01 r)
        (and
          (<= 0 (inv@85@01 r))
          (<
            (inv@85@01 r)
            (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
      (and
        (img@158@01 r)
        (and
          (< j@69@01 (inv@157@01 r))
          (<=
            (inv@157@01 r)
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))))
  
  :qid |quant-u-18834|))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01))
  ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01)))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))))
; [eval] !(t > j)
; [eval] t > j
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (> t@152@01 j@69@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (not (> t@152@01 j@69@01))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 94 | !(t@152@01 > j@69@01) | live]
; [else-branch: 94 | t@152@01 > j@69@01 | live]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 94 | !(t@152@01 > j@69@01)]
(assert (not (> t@152@01 j@69@01)))
; [exec]
; loc(this.elems, j).val := elem
; [eval] loc(this.elems, j)
(declare-const sm@186@01 $FVF<val>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01))
    (=
      ($FVF.lookup_val (as sm@186@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@154@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@186@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@154@01  $FVF<val>) r))
  :qid |qp.fvfValDef67|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@158@01 r)
      (and
        (< j@69@01 (inv@157@01 r))
        (<=
          (inv@157@01 r)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
    (=
      ($FVF.lookup_val (as sm@186@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@186@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
  :qid |qp.fvfValDef68|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@86@01 r)
        (and
          (<= 0 (inv@85@01 r))
          (<
            (inv@85@01 r)
            (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
      (< $Perm.No (- (- $Perm.Write (pTaken@162@01 r)) (pTaken@167@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@186@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r)))
  :pattern (($FVF.lookup_val (as sm@186@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r))
  :qid |qp.fvfValDef69|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val (as sm@154@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r) r))
  :pattern (($FVF.lookup_val (as sm@186@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef70|)))
(assert ($FVF.loc_val ($FVF.lookup_val (as sm@186@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@187@01 ((r $Ref)) $Perm
  (ite
    (=
      r
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01))
    ($Perm.min
      (ite
        (=
          r
          (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@188@01 ((r $Ref)) $Perm
  (ite
    (=
      r
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01))
    ($Perm.min
      (ite
        (and
          (img@158@01 r)
          (and
            (< j@69@01 (inv@157@01 r))
            (<=
              (inv@157@01 r)
              ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@187@01 r)))
    $Perm.No))
(define-fun pTaken@189@01 ((r $Ref)) $Perm
  (ite
    (=
      r
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01))
    ($Perm.min
      (ite
        (and
          (img@86@01 r)
          (and
            (<= 0 (inv@85@01 r))
            (<
              (inv@85@01 r)
              (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
        (- (- $Perm.Write (pTaken@162@01 r)) (pTaken@167@01 r))
        $Perm.No)
      (- (- $Perm.Write (pTaken@187@01 r)) (pTaken@188@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (=
  (-
    (ite
      (=
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01)
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01))
      (/ (to_real 1) (to_real 2))
      $Perm.No)
    (pTaken@187@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (=
      r
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01))
    (= (- $Perm.Write (pTaken@187@01 r)) $Perm.No))
  
  :qid |quant-u-18837|))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@158@01 r)
          (and
            (< j@69@01 (inv@157@01 r))
            (<=
              (inv@157@01 r)
              ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
        $Perm.Write
        $Perm.No)
      (pTaken@188@01 r))
    $Perm.No)
  
  :qid |quant-u-18838|))))
(check-sat)
; unknown
(pop) ; 10
; 0.50s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@188@01 r) $Perm.No)
  
  :qid |quant-u-18839|))))
(check-sat)
; unknown
(pop) ; 10
; 0.03s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (=
      r
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01))
    (= (- (- $Perm.Write (pTaken@187@01 r)) (pTaken@188@01 r)) $Perm.No))
  
  :qid |quant-u-18840|))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@86@01 r)
          (and
            (<= 0 (inv@85@01 r))
            (<
              (inv@85@01 r)
              (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
        (- (- $Perm.Write (pTaken@162@01 r)) (pTaken@167@01 r))
        $Perm.No)
      (pTaken@189@01 r))
    $Perm.No)
  
  :qid |quant-u-18841|))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@189@01 r) $Perm.No)
  
  :qid |quant-u-18842|))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (=
      r
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01))
    (=
      (-
        (- (- $Perm.Write (pTaken@187@01 r)) (pTaken@188@01 r))
        (pTaken@189@01 r))
      $Perm.No))
  
  :qid |quant-u-18843|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@190@01 $FVF<val>)
; Definitional axioms for singleton-FVF's value
(assert (=
  ($FVF.lookup_val (as sm@190@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01))
  elem@62@01))
(assert ($FVF.loc_val ($FVF.lookup_val (as sm@190@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01)))
; [exec]
; this.size := this.size + 1
; [eval] this.size + 1
(declare-const size@191@01 Int)
(assert (=
  size@191@01
  (+ ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))) 1)))
; [exec]
; fold acc(AList(this), write)
; [eval] 0 <= this.size
(set-option :timeout 0)
(push) ; 10
(assert (not (<= 0 size@191@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 size@191@01))
; [eval] this.size <= len(this.elems)
; [eval] len(this.elems)
(push) ; 10
(assert (not (<= size@191@01 (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01))))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (<= size@191@01 (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)))))
; [eval] 0 < len(this.elems)
; [eval] len(this.elems)
(push) ; 10
(assert (not (< 0 (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01))))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (< 0 (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)))))
(declare-const i@192@01 Int)
(push) ; 10
; [eval] 0 <= i && i < len(this.elems)
; [eval] 0 <= i
(push) ; 11
; [then-branch: 95 | !(0 <= i@192@01) | live]
; [else-branch: 95 | 0 <= i@192@01 | live]
(push) ; 12
; [then-branch: 95 | !(0 <= i@192@01)]
(assert (not (<= 0 i@192@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 95 | 0 <= i@192@01]
(assert (<= 0 i@192@01))
; [eval] i < len(this.elems)
; [eval] len(this.elems)
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@192@01) (not (<= 0 i@192@01))))
(assert (and
  (<= 0 i@192@01)
  (< i@192@01 (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01))))))
; [eval] loc(this.elems, i)
(pop) ; 10
(declare-fun inv@193@01 ($Ref) Int)
(declare-fun img@194@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@192@01 Int)) (!
  (=>
    (and
      (<= 0 i@192@01)
      (<
        i@192@01
        (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)))))
    (or (<= 0 i@192@01) (not (<= 0 i@192@01))))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@192@01))
  :qid |val-aux|)))
(declare-const sm@195@01 $FVF<val>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (=
      r
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01))
    (=
      ($FVF.lookup_val (as sm@195@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@190@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@195@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@190@01  $FVF<val>) r))
  :qid |qp.fvfValDef71|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@86@01 r)
        (and
          (<= 0 (inv@85@01 r))
          (<
            (inv@85@01 r)
            (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
      (<
        $Perm.No
        (-
          (- (- $Perm.Write (pTaken@162@01 r)) (pTaken@167@01 r))
          (pTaken@189@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@195@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r)))
  :pattern (($FVF.lookup_val (as sm@195@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r))
  :qid |qp.fvfValDef72|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@158@01 r)
        (and
          (< j@69@01 (inv@157@01 r))
          (<=
            (inv@157@01 r)
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
      (< $Perm.No (- $Perm.Write (pTaken@188@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@195@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@195@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
  :qid |qp.fvfValDef73|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val (as sm@190@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r) r))
  :pattern (($FVF.lookup_val (as sm@195@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef74|)))
; Check receiver injectivity
(push) ; 10
(assert (not (forall ((i1@192@01 Int) (i2@192@01 Int)) (!
  (=>
    (and
      (and
        (and
          (<= 0 i1@192@01)
          (<
            i1@192@01
            (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)))))
        ($FVF.loc_val ($FVF.lookup_val (as sm@195@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i1@192@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i1@192@01)))
      (and
        (and
          (<= 0 i2@192@01)
          (<
            i2@192@01
            (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)))))
        ($FVF.loc_val ($FVF.lookup_val (as sm@195@01  $FVF<val>) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i2@192@01)) (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i2@192@01)))
      (=
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i1@192@01)
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i2@192@01)))
    (= i1@192@01 i2@192@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@192@01 Int)) (!
  (=>
    (and
      (<= 0 i@192@01)
      (<
        i@192@01
        (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)))))
    (and
      (=
        (inv@193@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@192@01))
        i@192@01)
      (img@194@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@192@01))))
  :pattern ((loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@192@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@194@01 r)
      (and
        (<= 0 (inv@193@01 r))
        (<
          (inv@193@01 r)
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01))))))
    (=
      (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) (inv@193@01 r))
      r))
  :pattern ((inv@193@01 r))
  :qid |val-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (<= 0 (inv@193@01 r))
      (<
        (inv@193@01 r)
        (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)))))
    ($FVF.loc_val ($FVF.lookup_val (as sm@195@01  $FVF<val>) r) r))
  :pattern ((inv@193@01 r))
  :qid |quant-u-18845|)))
(push) ; 10
(set-option :timeout 10)
(assert (not (forall ((i@192@01 Int)) (!
  (=
    (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) i@192@01)
    (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))) i@192@01))
  
  :qid |quant-u-18846|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@196@01 ((r $Ref)) $Perm
  (ite
    (and
      (and
        (<= 0 (inv@193@01 r))
        (<
          (inv@193@01 r)
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)))))
      (img@194@01 r)
      (=
        r
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) (inv@193@01 r))))
    ($Perm.min
      (ite
        (and
          (img@86@01 r)
          (and
            (<= 0 (inv@85@01 r))
            (<
              (inv@85@01 r)
              (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
        (-
          (- (- $Perm.Write (pTaken@162@01 r)) (pTaken@167@01 r))
          (pTaken@189@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@197@01 ((r $Ref)) $Perm
  (ite
    (and
      (and
        (<= 0 (inv@193@01 r))
        (<
          (inv@193@01 r)
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)))))
      (img@194@01 r)
      (=
        r
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) (inv@193@01 r))))
    ($Perm.min
      (ite
        (and
          (img@158@01 r)
          (and
            (< j@69@01 (inv@157@01 r))
            (<=
              (inv@157@01 r)
              ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
        (- $Perm.Write (pTaken@188@01 r))
        $Perm.No)
      (- $Perm.Write (pTaken@196@01 r)))
    $Perm.No))
(define-fun pTaken@198@01 ((r $Ref)) $Perm
  (ite
    (and
      (and
        (<= 0 (inv@193@01 r))
        (<
          (inv@193@01 r)
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)))))
      (img@194@01 r)
      (=
        r
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) (inv@193@01 r))))
    ($Perm.min
      (ite
        (=
          r
          (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01))
        $Perm.Write
        $Perm.No)
      (- (- $Perm.Write (pTaken@196@01 r)) (pTaken@197@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@86@01 r)
          (and
            (<= 0 (inv@85@01 r))
            (<
              (inv@85@01 r)
              (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
        (-
          (- (- $Perm.Write (pTaken@162@01 r)) (pTaken@167@01 r))
          (pTaken@189@01 r))
        $Perm.No)
      (pTaken@196@01 r))
    $Perm.No)
  
  :qid |quant-u-18848|))))
(check-sat)
; unsat
(pop) ; 10
; 0.01s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (<= 0 (inv@193@01 r))
        (<
          (inv@193@01 r)
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)))))
      (img@194@01 r)
      (=
        r
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) (inv@193@01 r))))
    (= (- $Perm.Write (pTaken@196@01 r)) $Perm.No))
  
  :qid |quant-u-18849|))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@158@01 r)
          (and
            (< j@69@01 (inv@157@01 r))
            (<=
              (inv@157@01 r)
              ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
        (- $Perm.Write (pTaken@188@01 r))
        $Perm.No)
      (pTaken@197@01 r))
    $Perm.No)
  
  :qid |quant-u-18850|))))
(check-sat)
; unsat
(pop) ; 10
; 0.01s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (<= 0 (inv@193@01 r))
        (<
          (inv@193@01 r)
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)))))
      (img@194@01 r)
      (=
        r
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) (inv@193@01 r))))
    (= (- (- $Perm.Write (pTaken@196@01 r)) (pTaken@197@01 r)) $Perm.No))
  
  :qid |quant-u-18851|))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (=
  (-
    (ite
      (=
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01)
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01))
      $Perm.Write
      $Perm.No)
    (pTaken@198@01 (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 10
; 0.01s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (<= 0 (inv@193@01 r))
        (<
          (inv@193@01 r)
          (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)))))
      (img@194@01 r)
      (=
        r
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) (inv@193@01 r))))
    (=
      (-
        (- (- $Perm.Write (pTaken@196@01 r)) (pTaken@197@01 r))
        (pTaken@198@01 r))
      $Perm.No))
  
  :qid |quant-u-18853|))))
(check-sat)
; unsat
(pop) ; 10
; 0.01s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@199@01 $FVF<val>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_val (as sm@199@01  $FVF<val>)))
      (and
        (and
          (<= 0 (inv@193@01 r))
          (<
            (inv@193@01 r)
            (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)))))
        (img@194@01 r)))
    (=>
      (and
        (and
          (<= 0 (inv@193@01 r))
          (<
            (inv@193@01 r)
            (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)))))
        (img@194@01 r))
      (Set_in r ($FVF.domain_val (as sm@199@01  $FVF<val>)))))
  :pattern ((Set_in r ($FVF.domain_val (as sm@199@01  $FVF<val>))))
  :qid |qp.fvfDomDef79|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@193@01 r))
          (<
            (inv@193@01 r)
            (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)))))
        (img@194@01 r))
      (=
        r
        (loc<Ref> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)) j@69@01)))
    (=
      ($FVF.lookup_val (as sm@199@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@190@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@199@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@190@01  $FVF<val>) r))
  :qid |qp.fvfValDef75|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@193@01 r))
          (<
            (inv@193@01 r)
            (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)))))
        (img@194@01 r))
      (ite
        (and
          (img@86@01 r)
          (and
            (<= 0 (inv@85@01 r))
            (<
              (inv@85@01 r)
              (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01)))))))
        (<
          $Perm.No
          (-
            (- (- $Perm.Write (pTaken@162@01 r)) (pTaken@167@01 r))
            (pTaken@189@01 r)))
        false))
    (=
      ($FVF.lookup_val (as sm@199@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r)))
  :pattern (($FVF.lookup_val (as sm@199@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r))
  :qid |qp.fvfValDef76|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@193@01 r))
          (<
            (inv@193@01 r)
            (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first $t@153@01)))))
        (img@194@01 r))
      (ite
        (and
          (img@158@01 r)
          (and
            (< j@69@01 (inv@157@01 r))
            (<=
              (inv@157@01 r)
              ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@153@01))))))
        (< $Perm.No (- $Perm.Write (pTaken@188@01 r)))
        false))
    (=
      ($FVF.lookup_val (as sm@199@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
  :pattern (($FVF.lookup_val (as sm@199@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
  :qid |qp.fvfValDef77|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_val ($FVF.lookup_val (as sm@190@01  $FVF<val>) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first $t@70@01))))))) r) r)
    ($FVF.loc_val ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r) r))
  :pattern (($FVF.lookup_val (as sm@199@01  $FVF<val>) r))
  :qid |qp.fvfResTrgDef78|)))
(assert (AList%trigger ($Snap.combine
  ($Snap.first $t@153@01)
  ($Snap.combine
    ($SortWrappers.IntTo$Snap size@191@01)
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($SortWrappers.$FVF<val>To$Snap (as sm@199@01  $FVF<val>))))))) this@61@01))
; [eval] 0 <= j
; [eval] j < length(this)
; [eval] length(this)
(set-option :timeout 0)
(push) ; 10
(assert (length%precondition ($Snap.combine
  ($Snap.first $t@153@01)
  ($Snap.combine
    ($SortWrappers.IntTo$Snap size@191@01)
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($SortWrappers.$FVF<val>To$Snap (as sm@199@01  $FVF<val>))))))) this@61@01))
(pop) ; 10
; Joined path conditions
(assert (length%precondition ($Snap.combine
  ($Snap.first $t@153@01)
  ($Snap.combine
    ($SortWrappers.IntTo$Snap size@191@01)
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($SortWrappers.$FVF<val>To$Snap (as sm@199@01  $FVF<val>))))))) this@61@01))
(push) ; 10
(assert (not (<
  j@69@01
  (length ($Snap.combine
    ($Snap.first $t@153@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap size@191@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@199@01  $FVF<val>))))))) this@61@01))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (<
  j@69@01
  (length ($Snap.combine
    ($Snap.first $t@153@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap size@191@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@199@01  $FVF<val>))))))) this@61@01)))
; [eval] length(this) == old(length(this)) + 1
; [eval] length(this)
(push) ; 10
(pop) ; 10
; Joined path conditions
; [eval] old(length(this)) + 1
; [eval] old(length(this))
; [eval] length(this)
(push) ; 10
(pop) ; 10
; Joined path conditions
(push) ; 10
(assert (not (=
  (length ($Snap.combine
    ($Snap.first $t@153@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap size@191@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@199@01  $FVF<val>))))))) this@61@01)
  (+ (length $t@64@01 this@61@01) 1))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (=
  (length ($Snap.combine
    ($Snap.first $t@153@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap size@191@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@199@01  $FVF<val>))))))) this@61@01)
  (+ (length $t@64@01 this@61@01) 1)))
; [eval] (forall k: Int :: { old(itemAt(this, k)) } 0 <= k && k < j ==> itemAt(this, k) == old(itemAt(this, k)))
(declare-const k@200@01 Int)
(push) ; 10
; [eval] 0 <= k && k < j ==> itemAt(this, k) == old(itemAt(this, k))
; [eval] 0 <= k && k < j
; [eval] 0 <= k
(push) ; 11
; [then-branch: 96 | !(0 <= k@200@01) | live]
; [else-branch: 96 | 0 <= k@200@01 | live]
(push) ; 12
; [then-branch: 96 | !(0 <= k@200@01)]
(assert (not (<= 0 k@200@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 96 | 0 <= k@200@01]
(assert (<= 0 k@200@01))
; [eval] k < j
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@200@01) (not (<= 0 k@200@01))))
(push) ; 11
; [then-branch: 97 | 0 <= k@200@01 && k@200@01 < j@69@01 | live]
; [else-branch: 97 | !(0 <= k@200@01 && k@200@01 < j@69@01) | live]
(push) ; 12
; [then-branch: 97 | 0 <= k@200@01 && k@200@01 < j@69@01]
(assert (and (<= 0 k@200@01) (< k@200@01 j@69@01)))
; [eval] itemAt(this, k) == old(itemAt(this, k))
; [eval] itemAt(this, k)
(push) ; 13
; [eval] 0 <= index
; [eval] index < length(this)
; [eval] length(this)
(push) ; 14
(pop) ; 14
; Joined path conditions
(push) ; 14
(assert (not (<
  k@200@01
  (length ($Snap.combine
    ($Snap.first $t@153@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap size@191@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@199@01  $FVF<val>))))))) this@61@01))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (<
  k@200@01
  (length ($Snap.combine
    ($Snap.first $t@153@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap size@191@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@199@01  $FVF<val>))))))) this@61@01)))
(assert (itemAt%precondition ($Snap.combine
  ($Snap.combine
    ($Snap.first $t@153@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap size@191@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@199@01  $FVF<val>)))))))
  ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@200@01))
(pop) ; 13
; Joined path conditions
(assert (and
  (<
    k@200@01
    (length ($Snap.combine
      ($Snap.first $t@153@01)
      ($Snap.combine
        ($SortWrappers.IntTo$Snap size@191@01)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@199@01  $FVF<val>))))))) this@61@01))
  (itemAt%precondition ($Snap.combine
    ($Snap.combine
      ($Snap.first $t@153@01)
      ($Snap.combine
        ($SortWrappers.IntTo$Snap size@191@01)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@199@01  $FVF<val>)))))))
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@200@01)))
; [eval] old(itemAt(this, k))
; [eval] itemAt(this, k)
(push) ; 13
; [eval] 0 <= index
; [eval] index < length(this)
; [eval] length(this)
(push) ; 14
(pop) ; 14
; Joined path conditions
(push) ; 14
(assert (not (< k@200@01 (length $t@64@01 this@61@01))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (< k@200@01 (length $t@64@01 this@61@01)))
(assert (itemAt%precondition ($Snap.combine
  $t@64@01
  ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@200@01))
(pop) ; 13
; Joined path conditions
(assert (and
  (< k@200@01 (length $t@64@01 this@61@01))
  (itemAt%precondition ($Snap.combine
    $t@64@01
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@200@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 97 | !(0 <= k@200@01 && k@200@01 < j@69@01)]
(assert (not (and (<= 0 k@200@01) (< k@200@01 j@69@01))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (=>
  (and (<= 0 k@200@01) (< k@200@01 j@69@01))
  (and
    (<= 0 k@200@01)
    (< k@200@01 j@69@01)
    (<
      k@200@01
      (length ($Snap.combine
        ($Snap.first $t@153@01)
        ($Snap.combine
          ($SortWrappers.IntTo$Snap size@191@01)
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($SortWrappers.$FVF<val>To$Snap (as sm@199@01  $FVF<val>))))))) this@61@01))
    (itemAt%precondition ($Snap.combine
      ($Snap.combine
        ($Snap.first $t@153@01)
        ($Snap.combine
          ($SortWrappers.IntTo$Snap size@191@01)
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($SortWrappers.$FVF<val>To$Snap (as sm@199@01  $FVF<val>)))))))
      ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@200@01)
    (< k@200@01 (length $t@64@01 this@61@01))
    (itemAt%precondition ($Snap.combine
      $t@64@01
      ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@200@01))))
; Joined path conditions
(assert (or
  (not (and (<= 0 k@200@01) (< k@200@01 j@69@01)))
  (and (<= 0 k@200@01) (< k@200@01 j@69@01))))
(pop) ; 10
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@200@01 Int)) (!
  (and
    (or (<= 0 k@200@01) (not (<= 0 k@200@01)))
    (=>
      (and (<= 0 k@200@01) (< k@200@01 j@69@01))
      (and
        (<= 0 k@200@01)
        (< k@200@01 j@69@01)
        (<
          k@200@01
          (length ($Snap.combine
            ($Snap.first $t@153@01)
            ($Snap.combine
              ($SortWrappers.IntTo$Snap size@191@01)
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($SortWrappers.$FVF<val>To$Snap (as sm@199@01  $FVF<val>))))))) this@61@01))
        (itemAt%precondition ($Snap.combine
          ($Snap.combine
            ($Snap.first $t@153@01)
            ($Snap.combine
              ($SortWrappers.IntTo$Snap size@191@01)
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($SortWrappers.$FVF<val>To$Snap (as sm@199@01  $FVF<val>)))))))
          ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@200@01)
        (< k@200@01 (length $t@64@01 this@61@01))
        (itemAt%precondition ($Snap.combine
          $t@64@01
          ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@200@01)))
    (or
      (not (and (<= 0 k@200@01) (< k@200@01 j@69@01)))
      (and (<= 0 k@200@01) (< k@200@01 j@69@01))))
  :pattern ((itemAt%limited ($Snap.combine
    $t@64@01
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@200@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@101@11@101@87-aux|)))
(assert (forall ((k@200@01 Int)) (!
  (=>
    (and (<= 0 k@200@01) (< k@200@01 j@69@01))
    (and
      (itemAt%precondition ($Snap.combine
        ($Snap.combine
          ($Snap.first $t@153@01)
          ($Snap.combine
            ($SortWrappers.IntTo$Snap size@191@01)
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($SortWrappers.$FVF<val>To$Snap (as sm@199@01  $FVF<val>)))))))
        ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@200@01)
      (itemAt%precondition ($Snap.combine
        $t@64@01
        ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@200@01)))
  :pattern ((itemAt%limited ($Snap.combine
    $t@64@01
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@200@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@101@11@101@87_precondition|)))
(push) ; 10
(assert (not (forall ((k@200@01 Int)) (!
  (=>
    (and
      (=>
        (and (<= 0 k@200@01) (< k@200@01 j@69@01))
        (and
          (itemAt%precondition ($Snap.combine
            ($Snap.combine
              ($Snap.first $t@153@01)
              ($Snap.combine
                ($SortWrappers.IntTo$Snap size@191@01)
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($SortWrappers.$FVF<val>To$Snap (as sm@199@01  $FVF<val>)))))))
            ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@200@01)
          (itemAt%precondition ($Snap.combine
            $t@64@01
            ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@200@01)))
      (and (<= 0 k@200@01) (< k@200@01 j@69@01)))
    (=
      (itemAt ($Snap.combine
        ($Snap.combine
          ($Snap.first $t@153@01)
          ($Snap.combine
            ($SortWrappers.IntTo$Snap size@191@01)
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($SortWrappers.$FVF<val>To$Snap (as sm@199@01  $FVF<val>)))))))
        ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@200@01)
      (itemAt ($Snap.combine $t@64@01 ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@200@01)))
  :pattern ((itemAt%limited ($Snap.combine
    $t@64@01
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@200@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@101@11@101@87|))))
(check-sat)
; unsat
(pop) ; 10
; 0.01s
; (get-info :all-statistics)
(assert (forall ((k@200@01 Int)) (!
  (=>
    (and (<= 0 k@200@01) (< k@200@01 j@69@01))
    (=
      (itemAt ($Snap.combine
        ($Snap.combine
          ($Snap.first $t@153@01)
          ($Snap.combine
            ($SortWrappers.IntTo$Snap size@191@01)
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($SortWrappers.$FVF<val>To$Snap (as sm@199@01  $FVF<val>)))))))
        ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@200@01)
      (itemAt ($Snap.combine $t@64@01 ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@200@01)))
  :pattern ((itemAt%limited ($Snap.combine
    $t@64@01
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@200@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@101@11@101@87|)))
; [eval] itemAt(this, j) == elem
; [eval] itemAt(this, j)
(push) ; 10
; [eval] 0 <= index
; [eval] index < length(this)
; [eval] length(this)
(push) ; 11
(pop) ; 11
; Joined path conditions
(assert (itemAt%precondition ($Snap.combine
  ($Snap.combine
    ($Snap.first $t@153@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap size@191@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@199@01  $FVF<val>)))))))
  ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 j@69@01))
(pop) ; 10
; Joined path conditions
(assert (itemAt%precondition ($Snap.combine
  ($Snap.combine
    ($Snap.first $t@153@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap size@191@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@199@01  $FVF<val>)))))))
  ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 j@69@01))
(push) ; 10
(assert (not (=
  (itemAt ($Snap.combine
    ($Snap.combine
      ($Snap.first $t@153@01)
      ($Snap.combine
        ($SortWrappers.IntTo$Snap size@191@01)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@199@01  $FVF<val>)))))))
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 j@69@01)
  elem@62@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (=
  (itemAt ($Snap.combine
    ($Snap.combine
      ($Snap.first $t@153@01)
      ($Snap.combine
        ($SortWrappers.IntTo$Snap size@191@01)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@199@01  $FVF<val>)))))))
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 j@69@01)
  elem@62@01))
; [eval] (forall k: Int :: { itemAt(this, k) } j < k && k < length(this) ==> itemAt(this, k) == old(itemAt(this, k - 1)))
(declare-const k@201@01 Int)
(push) ; 10
; [eval] j < k && k < length(this) ==> itemAt(this, k) == old(itemAt(this, k - 1))
; [eval] j < k && k < length(this)
; [eval] j < k
(push) ; 11
; [then-branch: 98 | !(j@69@01 < k@201@01) | live]
; [else-branch: 98 | j@69@01 < k@201@01 | live]
(push) ; 12
; [then-branch: 98 | !(j@69@01 < k@201@01)]
(assert (not (< j@69@01 k@201@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 98 | j@69@01 < k@201@01]
(assert (< j@69@01 k@201@01))
; [eval] k < length(this)
; [eval] length(this)
(push) ; 13
(pop) ; 13
; Joined path conditions
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (< j@69@01 k@201@01) (not (< j@69@01 k@201@01))))
(push) ; 11
; [then-branch: 99 | j@69@01 < k@201@01 && k@201@01 < length((First:($t@153@01), (size@191@01, (_, (_, (_, sm@199@01))))), this@61@01) | live]
; [else-branch: 99 | !(j@69@01 < k@201@01 && k@201@01 < length((First:($t@153@01), (size@191@01, (_, (_, (_, sm@199@01))))), this@61@01)) | live]
(push) ; 12
; [then-branch: 99 | j@69@01 < k@201@01 && k@201@01 < length((First:($t@153@01), (size@191@01, (_, (_, (_, sm@199@01))))), this@61@01)]
(assert (and
  (< j@69@01 k@201@01)
  (<
    k@201@01
    (length ($Snap.combine
      ($Snap.first $t@153@01)
      ($Snap.combine
        ($SortWrappers.IntTo$Snap size@191@01)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@199@01  $FVF<val>))))))) this@61@01))))
; [eval] itemAt(this, k) == old(itemAt(this, k - 1))
; [eval] itemAt(this, k)
(push) ; 13
; [eval] 0 <= index
(push) ; 14
(assert (not (<= 0 k@201@01)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 k@201@01))
; [eval] index < length(this)
; [eval] length(this)
(push) ; 14
(pop) ; 14
; Joined path conditions
(assert (itemAt%precondition ($Snap.combine
  ($Snap.combine
    ($Snap.first $t@153@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap size@191@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<val>To$Snap (as sm@199@01  $FVF<val>)))))))
  ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@201@01))
(pop) ; 13
; Joined path conditions
(assert (and
  (<= 0 k@201@01)
  (itemAt%precondition ($Snap.combine
    ($Snap.combine
      ($Snap.first $t@153@01)
      ($Snap.combine
        ($SortWrappers.IntTo$Snap size@191@01)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@199@01  $FVF<val>)))))))
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@201@01)))
; [eval] old(itemAt(this, k - 1))
; [eval] itemAt(this, k - 1)
; [eval] k - 1
(push) ; 13
; [eval] 0 <= index
(push) ; 14
(assert (not (<= 0 (- k@201@01 1))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 (- k@201@01 1)))
; [eval] index < length(this)
; [eval] length(this)
(push) ; 14
(pop) ; 14
; Joined path conditions
(push) ; 14
(assert (not (< (- k@201@01 1) (length $t@64@01 this@61@01))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (< (- k@201@01 1) (length $t@64@01 this@61@01)))
(assert (itemAt%precondition ($Snap.combine
  $t@64@01
  ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- k@201@01 1)))
(pop) ; 13
; Joined path conditions
(assert (and
  (<= 0 (- k@201@01 1))
  (< (- k@201@01 1) (length $t@64@01 this@61@01))
  (itemAt%precondition ($Snap.combine
    $t@64@01
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- k@201@01 1))))
(pop) ; 12
(push) ; 12
; [else-branch: 99 | !(j@69@01 < k@201@01 && k@201@01 < length((First:($t@153@01), (size@191@01, (_, (_, (_, sm@199@01))))), this@61@01))]
(assert (not
  (and
    (< j@69@01 k@201@01)
    (<
      k@201@01
      (length ($Snap.combine
        ($Snap.first $t@153@01)
        ($Snap.combine
          ($SortWrappers.IntTo$Snap size@191@01)
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($SortWrappers.$FVF<val>To$Snap (as sm@199@01  $FVF<val>))))))) this@61@01)))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (=>
  (and
    (< j@69@01 k@201@01)
    (<
      k@201@01
      (length ($Snap.combine
        ($Snap.first $t@153@01)
        ($Snap.combine
          ($SortWrappers.IntTo$Snap size@191@01)
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($SortWrappers.$FVF<val>To$Snap (as sm@199@01  $FVF<val>))))))) this@61@01)))
  (and
    (< j@69@01 k@201@01)
    (<
      k@201@01
      (length ($Snap.combine
        ($Snap.first $t@153@01)
        ($Snap.combine
          ($SortWrappers.IntTo$Snap size@191@01)
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($SortWrappers.$FVF<val>To$Snap (as sm@199@01  $FVF<val>))))))) this@61@01))
    (<= 0 k@201@01)
    (itemAt%precondition ($Snap.combine
      ($Snap.combine
        ($Snap.first $t@153@01)
        ($Snap.combine
          ($SortWrappers.IntTo$Snap size@191@01)
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($SortWrappers.$FVF<val>To$Snap (as sm@199@01  $FVF<val>)))))))
      ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@201@01)
    (<= 0 (- k@201@01 1))
    (< (- k@201@01 1) (length $t@64@01 this@61@01))
    (itemAt%precondition ($Snap.combine
      $t@64@01
      ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- k@201@01 1)))))
; Joined path conditions
(assert (or
  (not
    (and
      (< j@69@01 k@201@01)
      (<
        k@201@01
        (length ($Snap.combine
          ($Snap.first $t@153@01)
          ($Snap.combine
            ($SortWrappers.IntTo$Snap size@191@01)
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($SortWrappers.$FVF<val>To$Snap (as sm@199@01  $FVF<val>))))))) this@61@01))))
  (and
    (< j@69@01 k@201@01)
    (<
      k@201@01
      (length ($Snap.combine
        ($Snap.first $t@153@01)
        ($Snap.combine
          ($SortWrappers.IntTo$Snap size@191@01)
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($SortWrappers.$FVF<val>To$Snap (as sm@199@01  $FVF<val>))))))) this@61@01)))))
(pop) ; 10
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@201@01 Int)) (!
  (and
    (or (< j@69@01 k@201@01) (not (< j@69@01 k@201@01)))
    (=>
      (and
        (< j@69@01 k@201@01)
        (<
          k@201@01
          (length ($Snap.combine
            ($Snap.first $t@153@01)
            ($Snap.combine
              ($SortWrappers.IntTo$Snap size@191@01)
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($SortWrappers.$FVF<val>To$Snap (as sm@199@01  $FVF<val>))))))) this@61@01)))
      (and
        (< j@69@01 k@201@01)
        (<
          k@201@01
          (length ($Snap.combine
            ($Snap.first $t@153@01)
            ($Snap.combine
              ($SortWrappers.IntTo$Snap size@191@01)
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($SortWrappers.$FVF<val>To$Snap (as sm@199@01  $FVF<val>))))))) this@61@01))
        (<= 0 k@201@01)
        (itemAt%precondition ($Snap.combine
          ($Snap.combine
            ($Snap.first $t@153@01)
            ($Snap.combine
              ($SortWrappers.IntTo$Snap size@191@01)
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($SortWrappers.$FVF<val>To$Snap (as sm@199@01  $FVF<val>)))))))
          ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@201@01)
        (<= 0 (- k@201@01 1))
        (< (- k@201@01 1) (length $t@64@01 this@61@01))
        (itemAt%precondition ($Snap.combine
          $t@64@01
          ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- k@201@01 1))))
    (or
      (not
        (and
          (< j@69@01 k@201@01)
          (<
            k@201@01
            (length ($Snap.combine
              ($Snap.first $t@153@01)
              ($Snap.combine
                ($SortWrappers.IntTo$Snap size@191@01)
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($SortWrappers.$FVF<val>To$Snap (as sm@199@01  $FVF<val>))))))) this@61@01))))
      (and
        (< j@69@01 k@201@01)
        (<
          k@201@01
          (length ($Snap.combine
            ($Snap.first $t@153@01)
            ($Snap.combine
              ($SortWrappers.IntTo$Snap size@191@01)
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($SortWrappers.$FVF<val>To$Snap (as sm@199@01  $FVF<val>))))))) this@61@01)))))
  :pattern ((itemAt%limited ($Snap.combine
    ($Snap.combine
      ($Snap.first $t@153@01)
      ($Snap.combine
        ($SortWrappers.IntTo$Snap size@191@01)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@199@01  $FVF<val>)))))))
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@201@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@103@11@103@101-aux|)))
(assert (forall ((k@201@01 Int)) (!
  (and
    (=>
      (< j@69@01 k@201@01)
      (length%precondition ($Snap.combine
        ($Snap.first $t@153@01)
        ($Snap.combine
          ($SortWrappers.IntTo$Snap size@191@01)
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($SortWrappers.$FVF<val>To$Snap (as sm@199@01  $FVF<val>))))))) this@61@01))
    (=>
      (and
        (< j@69@01 k@201@01)
        (<
          k@201@01
          (length ($Snap.combine
            ($Snap.first $t@153@01)
            ($Snap.combine
              ($SortWrappers.IntTo$Snap size@191@01)
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($SortWrappers.$FVF<val>To$Snap (as sm@199@01  $FVF<val>))))))) this@61@01)))
      (and
        (itemAt%precondition ($Snap.combine
          ($Snap.combine
            ($Snap.first $t@153@01)
            ($Snap.combine
              ($SortWrappers.IntTo$Snap size@191@01)
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($SortWrappers.$FVF<val>To$Snap (as sm@199@01  $FVF<val>)))))))
          ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@201@01)
        (itemAt%precondition ($Snap.combine
          $t@64@01
          ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- k@201@01 1)))))
  :pattern ((itemAt%limited ($Snap.combine
    ($Snap.combine
      ($Snap.first $t@153@01)
      ($Snap.combine
        ($SortWrappers.IntTo$Snap size@191@01)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@199@01  $FVF<val>)))))))
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@201@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@103@11@103@101_precondition|)))
(push) ; 10
(assert (not (forall ((k@201@01 Int)) (!
  (=>
    (and
      (and
        (=>
          (< j@69@01 k@201@01)
          (length%precondition ($Snap.combine
            ($Snap.first $t@153@01)
            ($Snap.combine
              ($SortWrappers.IntTo$Snap size@191@01)
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($SortWrappers.$FVF<val>To$Snap (as sm@199@01  $FVF<val>))))))) this@61@01))
        (=>
          (and
            (< j@69@01 k@201@01)
            (<
              k@201@01
              (length ($Snap.combine
                ($Snap.first $t@153@01)
                ($Snap.combine
                  ($SortWrappers.IntTo$Snap size@191@01)
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine
                        $Snap.unit
                        ($SortWrappers.$FVF<val>To$Snap (as sm@199@01  $FVF<val>))))))) this@61@01)))
          (and
            (itemAt%precondition ($Snap.combine
              ($Snap.combine
                ($Snap.first $t@153@01)
                ($Snap.combine
                  ($SortWrappers.IntTo$Snap size@191@01)
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine
                        $Snap.unit
                        ($SortWrappers.$FVF<val>To$Snap (as sm@199@01  $FVF<val>)))))))
              ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@201@01)
            (itemAt%precondition ($Snap.combine
              $t@64@01
              ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (- k@201@01 1)))))
      (and
        (< j@69@01 k@201@01)
        (<
          k@201@01
          (length ($Snap.combine
            ($Snap.first $t@153@01)
            ($Snap.combine
              ($SortWrappers.IntTo$Snap size@191@01)
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($SortWrappers.$FVF<val>To$Snap (as sm@199@01  $FVF<val>))))))) this@61@01))))
    (=
      (itemAt ($Snap.combine
        ($Snap.combine
          ($Snap.first $t@153@01)
          ($Snap.combine
            ($SortWrappers.IntTo$Snap size@191@01)
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($SortWrappers.$FVF<val>To$Snap (as sm@199@01  $FVF<val>)))))))
        ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@201@01)
      (itemAt ($Snap.combine $t@64@01 ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (-
        k@201@01
        1))))
  :pattern ((itemAt%limited ($Snap.combine
    ($Snap.combine
      ($Snap.first $t@153@01)
      ($Snap.combine
        ($SortWrappers.IntTo$Snap size@191@01)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@199@01  $FVF<val>)))))))
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@201@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@103@11@103@101|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (forall ((k@201@01 Int)) (!
  (=>
    (and
      (< j@69@01 k@201@01)
      (<
        k@201@01
        (length ($Snap.combine
          ($Snap.first $t@153@01)
          ($Snap.combine
            ($SortWrappers.IntTo$Snap size@191@01)
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($SortWrappers.$FVF<val>To$Snap (as sm@199@01  $FVF<val>))))))) this@61@01)))
    (=
      (itemAt ($Snap.combine
        ($Snap.combine
          ($Snap.first $t@153@01)
          ($Snap.combine
            ($SortWrappers.IntTo$Snap size@191@01)
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($SortWrappers.$FVF<val>To$Snap (as sm@199@01  $FVF<val>)))))))
        ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@201@01)
      (itemAt ($Snap.combine $t@64@01 ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 (-
        k@201@01
        1))))
  :pattern ((itemAt%limited ($Snap.combine
    ($Snap.combine
      ($Snap.first $t@153@01)
      ($Snap.combine
        ($SortWrappers.IntTo$Snap size@191@01)
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<val>To$Snap (as sm@199@01  $FVF<val>)))))))
    ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 k@201@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.vpr@103@11@103@101|)))
(pop) ; 9
(push) ; 9
; [else-branch: 94 | t@152@01 > j@69@01]
(assert (> t@152@01 j@69@01))
(pop) ; 9
(pop) ; 8
(pop) ; 7
(pop) ; 6
(push) ; 6
; [else-branch: 71 | First:(Second:(First:($t@70@01))) == len[Int](First:(First:($t@70@01)))]
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.first $t@70@01))))
  (len<Int> ($SortWrappers.$SnapToArray_ ($Snap.first ($Snap.first $t@70@01))))))
(pop) ; 6
(pop) ; 5
(push) ; 5
; [else-branch: 37 | j@69@01 < length(First:($t@70@01), this@61@01) && itemAt((First:($t@70@01), (_, _)), this@61@01, j@69@01) < elem@62@01]
(assert (and
  (< j@69@01 (length ($Snap.first $t@70@01) this@61@01))
  (<
    (itemAt ($Snap.combine
      ($Snap.first $t@70@01)
      ($Snap.combine $Snap.unit $Snap.unit)) this@61@01 j@69@01)
    elem@62@01)))
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1